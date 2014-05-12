module SamplePlugin
  class Engine < ::Rails::Engine
    isolate_namespace SamplePlugin
     #ActionDispatch::Routing::RouteSet.new.add_route("sampleplugin", SamplePlugin::Engine)
    # def plugin_info(plugin_info_class)
    #   @plugin_info ||= plugin_info_class.new do
    #     # We will add configuration options here as needed.
    #     add_route("sampleplugin", SamplePlugin::Engine)
    #   end # plugin_info intializer
    # end # plugin_info
    #paths["app/controllers"] << "lib/controllers"
  end
end
