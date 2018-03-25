module RailsAdmin
  module Config
    module Actions
      class DeleteAll < RailsAdmin::Config::Actions::Base
        RailsAdmin::Config::Actions.register(self)

        register_instance_option :collection do
          true
        end

        register_instance_option :http_methods do
          %i[get]
        end

        register_instance_option :controller do
          proc do
            begin
              @abstract_model.model.destroy_all
              redirect_to index_path, flash: {success: "Всё удалилось"}
            rescue=> e
              redirect_to index_path, flash: {error: e.message}
            end
          end
        end

        register_instance_option :link_icon do
          'fa fa-trash'
        end
      end
    end
  end
end
