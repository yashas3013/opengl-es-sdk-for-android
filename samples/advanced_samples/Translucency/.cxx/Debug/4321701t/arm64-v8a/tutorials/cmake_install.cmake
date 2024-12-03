# Install script for directory: /home/yas/Projects/opengl-es-sdk-for-android/samples/tutorials

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
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/AssetLoading/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/Boids/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/FileLoading/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/FoveatedRendering/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/GraphicsSetup/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/Instancing/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/Lighting/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/Mipmapping/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/NormalMapping/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/ProjectedLights/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/SimpleCube/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/TextureCube/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/Bloom/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/EtcTexture/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/FirstNative/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/InstancedTessellation/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/IntegerLogic/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/MinMaxBlending/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/Multiview/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/OcclusionQueries/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/ShadowMapping/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/SimpleTriangle/cmake_install.cmake")
  include("/home/yas/Projects/opengl-es-sdk-for-android/samples/advanced_samples/Translucency/.cxx/Debug/4321701t/arm64-v8a/tutorials/Vbo/cmake_install.cmake")

endif()

