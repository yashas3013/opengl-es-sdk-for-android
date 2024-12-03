# Install script for directory: /home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "TRUE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/home/yas/Android/Sdk/ndk/25.1.8937393/toolchains/llvm/prebuilt/linux-x86_64/bin/llvm-objdump")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/common_native/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/AntiAlias/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/AstcTextures/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/AstcTexturesLowPrecision/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/ComputeParticles/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/Cube/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/EGLPreserve/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/ETCAtlasAlpha/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/ETCCompressedAlpha/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/ETCMipmap/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/ETCUncompressedAlpha/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/FFTOceanWater/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/FrameBufferObject/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/ListEGLConfigs/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/Metaballs/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/MultisampledFBO/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/OcclusionCulling/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/ProceduralGeometry/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/RotoZoom/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/Skybox/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/Template/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/Tessellation/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/ThreadSync/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/Translucency/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/advanced_samples/Triangle/cmake_install.cmake")

endif()

