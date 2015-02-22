cmake_minimum_required(VERSION 3.0)
project(Loop)

find_package(LibXml2)
if(NOT LIBXML2_FOUND)
  message(STATUS "Package libxml2 required, but not found! Won't build extension Scenario.")
  return()
endif()

set(PROJECT_SRCS
$<TARGET_OBJECTS:TimePluginLib>
${CMAKE_CURRENT_SOURCE_DIR}/source/Loop.cpp
)
file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)

include_directories("${PROJECT_SOURCE_DIR}/")
include_directories("${PROJECT_SOURCE_DIR}/..")
include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories("${PROJECT_SOURCE_DIR}/../../library/tests")

include_directories($<TARGET_PROPERTY:TimePluginLib,INTERFACE_INCLUDE_DIRECTORIES>)

include_directories("${JAMOMA_ICONV_INCLUDE_DIR}")
include_directories(${LIBXML2_INCLUDE_DIR})
if(ANDROID)
include_directories("${CMAKE_FIND_ROOT_PATH}/include")
endif()

add_jamoma_extension()

target_link_libraries(${PROJECT_NAME} ${LIBXML2_LIBRARIES})
