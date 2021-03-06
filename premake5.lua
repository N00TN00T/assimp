-- PREMAKE FOR ASSIMP

project "assimp"
    kind "SharedLib"
    language "C++"

	targetdir ("bin/" .. output_dir .. "/%{prj.name}")
  objdir ("bin-int/" .. output_dir .. "/%{prj.name}")

	files
  {
      "code/**.h",
      "code/**.cpp",
      "include/**"
  }

  includedirs
  {
      "include/",
      "contrib/irrXML/",
      "contrib/unzip/",
      "contrib/openddlparser/include/",
      "",
      "contrib/rapidjson/include/"
  }

  defines
  {
    "ASSIMP_BUILD_NO_C4D_IMPORTER",
    "ASSIMP_BUILD_NO_IFC_IMPORTER"
  }

  links
  {
    "irrXML",
    "zip",
    "unzip",
    "openddlparser",
    "zlib",
    "poly2tri"
  }

  include "contrib/irrXML"
  include "contrib/zip"
  include "contrib/unzip"
  include "contrib/openddlparser"
  include "contrib/zlib"
  include "contrib/poly2tri"

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
