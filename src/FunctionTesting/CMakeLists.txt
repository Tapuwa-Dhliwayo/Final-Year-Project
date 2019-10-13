CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

if(COMMAND cmake_policy)
	cmake_policy(SET CMP0003 NEW)
endif(COMMAND cmake_policy)

find_package(MOOS 10)
find_package(pigpio REQUIRED)
find_package(Threads)

set(EXECNAME1 unitTests)
set(EXECNAME2 funcTests)
set(EXECNAME3 MOOSTests)
set(EXECNAME4 GPSTest)
set(EXECNAME5 IMUTest)
set(EXECNAME6 ArdTest)

set(SRCS1 unitTests.cpp ../IMU/huff.cpp)
set(SRCS2 funcTests.cpp ../IMU/IMUSensor.cpp ../IMU/huff.cpp ../IMU/clogger.cpp)
set(SRCS3 MOOSTests.cpp  ../IMU/IMUSensor.cpp ../IMU/huff.cpp ../IMU/clogger.cpp )
set(SRCS4 GPSTest.cpp )
set(SRCS5 IMUTest.cpp ../IMU/IMUSensor.cpp)
SET(SRCS6 ArdTest.cpp rs232.c)

include_directories(  ${MOOS_INCLUDE_DIRS} ${MOOS_DEPEND_INCLUDE_DIRS} ${pigpio_INCLUDE_DIRS} ) 

add_executable(${EXECNAME1} ${SRCS1})

target_link_libraries(${EXECNAME1} ${pigpio_LIBRARY} ${CMAKE_THREAD_LIBS_INIT} )

add_executable(${EXECNAME2} ${SRCS2})

target_link_libraries(${EXECNAME2} ${pigpio_LIBRARY} ${CMAKE_THREAD_LIBS_INIT})

add_executable(${EXECNAME3} ${SRCS3} )

target_link_libraries(${EXECNAME3} ${MOOS_LIBRARIES} ${MOOS_DEPEND_LIBRARIES} ${pigpio_LIBRARY} ${CMAKE_THREAD_LIBS_INIT})

add_executable(${EXECNAME4} ${SRCS4} )

target_link_libraries(${EXECNAME4} -lm -lgps )

add_executable(${EXECNAME5} ${SRCS5})

target_link_libraries(${EXECNAME5} ${pigpio_LIBRARY} ${CMAKE_THREAD_LIBS_INIT} )

add_executable(${EXECNAME6} ${SRCS6} )
