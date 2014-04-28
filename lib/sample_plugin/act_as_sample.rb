module SamplePlugin
  module ActAsSample
    extend ActiveSupport::Concern
 
    included do
    end
 
    module ClassMethods
      def act_as_sample(options = {})
        cattr_accessor :sample_text_field
        self.sample_text_field = (options[:sample_text_field] || :last_squawk).to_s

        include SamplePlugin::ActAsSample::LocalInstanceMethods
      end
    end

       module LocalInstanceMethods
      def hello(string)
        write_attribute(self.class.sample_text_field, string.say_hello)
      end
    end
  end
end
 
ActiveRecord::Base.send :include, SamplePlugin::ActAsSample