-- PREMAKE FOR openddlparser, ASSIMP DEPENDENCY

project "openddlparser"
    kind "SharedLib"
    language "C++"

	targetdir ("bin/" .. output_dir .. "/%{prj.name}")
  objdir ("bin-int/" .. output_dir .. "/%{prj.name}")

	files
  {
      "code/**"
  }

  includedirs
  {
      "include/"
  }

	filter "system:windows"
        systemversion "latest"
        staticruntime "on"

    filter "system:linux"
        systemversion "latest"
        staticruntime "on"
        pic "on"

    filter "system:macosx"
        systemversion "latest"
        staticruntime "on"

    filter "configurations:Debug*"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release*"
        runtime "Release"
        symbols "on"
        optimize "on"

    filter "configurations:Dist*"
        runtime "Release"
        optimize "on"
