project "cglm"
	kind "staticLib"
	language "C"
	cdialect "C11"
	staticruntime "on"
	tool()

	targetdir (engine_root .. "/lib/" .. outputdir)
	objdir (engine_root .. "/bin-int/" .. outputdir .. "cglm")

	files {
		"src/euler.c",
		"src/affine.c",
		"src/io.c",
		"src/quat.c",
		"src/cam.c",
		"src/vec2.c",
		"src/vec3.c",
		"src/vec4.c",
		"src/mat2.c",
		"src/mat3.c",
		"src/mat4.c",
		"src/plane.c",
		"src/frustum.c",
		"src/box.c",
		"src/project.c",
		"src/sphere.c",
		"src/ease.c",
		"src/curve.c",
		"src/bezier.c",
		"src/ray.c",
		"src/affine2d.c",
		"src/clipspace/persp_lh_zo.c",
		"src/clipspace/persp_rh_zo.c",
		"src/clipspace/persp_lh_no.c",
		"src/clipspace/persp_rh_no.c",
		"src/clipspace/ortho_lh_zo.c",
		"src/clipspace/ortho_rh_zo.c",
		"src/clipspace/ortho_lh_no.c",
		"src/clipspace/ortho_rh_no.c",
		"src/clipspace/view_lh_zo.c",
		"src/clipspace/view_rh_zo.c",
		"src/clipspace/view_lh_no.c",
		"src/clipspace/view_rh_no.c"
	}

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"
	filter "configurations:Release"
		runtime "Release"
		optimize "on"
