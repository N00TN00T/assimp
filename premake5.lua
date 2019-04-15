-- PREMAKE FOR ASSIMP

project "assimp"
    kind "StaticLib"
    language "C++"
    
	targetdir ("bin/" .. output_dir .. "/%{prj.name}")
  objdir ("bin-int/" .. output_dir .. "/%{prj.name}")

	files
  {
    "code/**.cpp",
    "code/**.h",
    "code/**.hpp"
  }
  
  includedirs 
  { 
    "include/",
    "include/",
    ""
  }
  
	filter "system:windows"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "on"

  filter "system:linux"
    systemversion "latest"
    cppdialect "C++17"
    staticruntime "on"
    pic "on"

  filter "system:macosx"
    systemversion "latest"
    cppdialect "C++17"
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
