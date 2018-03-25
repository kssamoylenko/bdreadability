module RailsAdmin
  module Config
    module Actions
      class TextImport < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :collection do
          true
        end

        register_instance_option :http_methods do
          %i[get]
        end

        register_instance_option :controller do
          proc do
            categoties = %w[1_basic 2_middle 3_hard]
            ret = ''
            categoties.each do | category |
              dir = Rails.root.join('tmp', 'readability_class', category)
              Dir.foreach(dir) do | site_name |
                next if site_name.in? %w[. ..]
                site = Site.find_or_create_by(name: site_name)
                subdir = Rails.root.join('tmp', 'readability_class', category, site_name, '*.txt')
                Dir.glob(subdir).each do | path |
                  text = site.texts.find_or_initialize_by(name: File.basename(path))
                  text.content = open(path).read
                  text.level = category
                  text.save!
                end
                ret += site_name
              end
            end
            redirect_to '/admin/text', flash: {success: ret}
          rescue Exception => e
            redirect_to '/admin/text', flash: {error: e.message}
          end
        end

        register_instance_option :link_icon do
          'fa fa-cloud-upload'
        end
      end
    end
  end
end
