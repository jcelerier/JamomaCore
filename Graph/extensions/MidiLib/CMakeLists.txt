cmake_minimum_required(VERSION 3.0)
project(MidiLib)

if(CMAKE_SYSTEM_PROCESSOR MATCHES "arm*" OR ANDROID)
  message(STATUS "We can't build this for Android / ARM for now due to lack of PortMidi.")
  return()
endif()

find_package(PortMidi)
if(NOT PORTMIDI_FOUND)
  message(STATUS "Package portmidi required, but not found! Won't build Midi extension.")
  return()
endif()

set(PROJECT_SRCS
${CMAKE_CURRENT_SOURCE_DIR}/MidiLib.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMidiFilter.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMidiFormat.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMidiInput.cpp
${CMAKE_CURRENT_SOURCE_DIR}/source/TTMidiOutput.cpp
)

file(GLOB_RECURSE PROJECT_HDRS ${CMAKE_CURRENT_SOURCE_DIR}/includes/*.h)

include_directories("${PROJECT_SOURCE_DIR}/includes")
include_directories(${PORTMIDI_INCLUDE_DIRS})

add_jamoma_extension()

target_link_libraries(${PROJECT_NAME}
					  debug ${PORTMIDI_LIBRARIES_DEBUG}
					  optimized ${PORTMIDI_LIBRARIES_DEBUG})

if(APPLE)
	addAppleFramework(CoreMIDI)
	addAppleFramework(CoreFoundation)
	addAppleFramework(CoreAudio)
	addAppleFramework(Carbon)
	target_link_libraries(${PROJECT_NAME} ${OSX_FRAMEWORKS})
endif()

