require 'single_record_interface/version'

module SingleRecordInterface
  extend ActiveSupport::Concern
  include ActiveModel::Validations

  included do
    validate :only_one_record_allowed, on: :create

    self.attribute_names.each do |attribute_name|
      resource = self

      define_singleton_method(attribute_name) do
        resource.first.try(attribute_name)
      end
    end

    private

      def only_one_record_allowed
        errors.add(:base, 'only one record is allowed') if self.class.count > 0
      end
  end
end
