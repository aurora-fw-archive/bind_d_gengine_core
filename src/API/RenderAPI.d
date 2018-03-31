module aurorafw.gengine.core.api.renderapi;

extern (C++, AuroraFW.Gengine.API)
{
	enum RenderAPI {
		OpenGL,
		Direct3D,
		Vulkan
	}
}