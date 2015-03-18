require "refile"

module Refile
  module Sequel
    module Attachment
      include Refile::Attachment

      def attachment(name, raise_errors: false, **options)
        super # includes a module

        attachment_module = ancestors[1]
        attacher = "#{name}_attacher"

        attachment_module.class_eval do
          define_method(:validate) do
            super()
            if send(attacher).present?
              send(attacher).valid?
              send(attacher).errors.each do |error|
                errors.add(name, error)
              end
            end
          end

          define_method(:before_save) do
            super()
            send(attacher).store!
          end

          define_method(:after_destroy) do
            super()
            send(attacher).delete!
          end

          # Sequel::Model#update internally calls #save_changes, which saves
          # the record only if columns have changed. So, if you were to do
          # `User[23].update(avatar: new_image)`, the attachment wouldn't get
          # updated, because changing of "avatar_id" column happens only in
          # `before_save`, which doesn't get triggered. This forces each record
          # to always save itself, thus triggering all hooks.
          define_method(:save_changes) { save }
        end
      end
    end
  end
end
