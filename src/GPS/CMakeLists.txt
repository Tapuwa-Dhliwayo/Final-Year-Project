CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

if(COMMAND cmake_policy)
	cmake_policy(SET CMP0003 NEW)
endif(COMMAND cmake_policy)

find_package(gps)

set(EXECNAME gpsApp)

SET(SRCS gpsApp.cpp)

include(S{LIBGPS_INCLUDE_DIR})

add_executable(${EXECNAME} ${SRCS})

target_link_libraries(${EXECNAME} ${LIBGPS_LIBRARIES} )
