# encoding: UTF-8
#
# 在Mongoid实例初始化后自动生成uuid字段。
#

require 'mongoid'
require 'uuidtools'

module ::Mongoid
  module UUIDGenerator
    extend ActiveSupport::Concern

    included do
      field :uuid, type: String
      validates_presence_of   :uuid
      validates_uniqueness_of :uuid

      after_initialize do
        self.uuid ||= UUIDTools::UUID.random_create.to_s
      end
    end

    module ClassMethods
      def uuid uuid; self.find_by(uuid: uuid) end
    end

  end
end
