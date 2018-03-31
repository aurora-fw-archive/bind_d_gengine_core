module aurorafw.gengine.core.window;

extern (C++, AuroraFW.GEngine)
{
	struct WindowProperties {
		uint width;
		uint height;
		bool fullscreen;
		bool vsync;
		bool resizable;
		bool visible;
		bool decorated;
		bool focused;
		bool autoIconify;
		bool floating;
		bool maximized;
		int refreshRate;
		int auxBuffers;
		int samples;
		bool stereo;
		bool sRGB;
		bool doubleBuffer;
		bool swapBuffers;
		bool windowSettingsDialog;
	}
}