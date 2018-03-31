module aurorafw.gengine.core.api.context;

import aurorafw.gengine.core.window : WindowProperties;
import aurorafw.gengine.core.api.renderapi : RenderAPI;
import aurorafw.gengine.core.glfw : GLFWwindow;

extern (C++, AuroraFW.GEngine.API)
{
	class Context {
	public:
		static void create(WindowProperties , string );

		static void init(GLFWwindow* );
		static void destroy();

		pragma(inline, true)
		{
			static RenderAPI getRenderAPI()
			{
				return _rapi;
			}

			static uint getAPIVersion()
			{
				return _version;
			}

			static void setRenderAPI(RenderAPI api)
			{
				_rapi = api;
			}
		}

	protected:
		void _init(GLFWwindow* );
		void _destroy();

		__gshared static Context* _instance;
		__gshared static RenderAPI _rapi;
		__gshared static uint _version;
	}
}