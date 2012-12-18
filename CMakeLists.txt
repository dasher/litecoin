cmake_minimum_required(VERSION 2.8)
project(litecoin)

set(CMAKE_BUILD_TYPE Release)

if(NOT USE_UPNP)
	set(USE_UPNP false)
endif(NOT USE_UPNP)

if(CMAKE_COMPILER_IS_GNUCXX)
    set(CMAKE_CXX_FLAGS "-O2")        ## Optimize
    set(CMAKE_EXE_LINKER_FLAGS "-s")  ## Strip binary
endif()

set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")

SET (CMAKE_RUNTIME_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/bin)
SET (CMAKE_LIBRARY_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)
SET (CMAKE_ARCHIVE_OUTPUT_DIRECTORY ${PROJECT_BINARY_DIR}/lib)

add_executable(litecoind src/main.cpp)

find_package(OpenSSL)
find_package(BerkeleyDB REQUIRED)
include_directories(${BerkeleyDB_INCLUDE_DIRS})
set(LIBS ${LIBS} ${BerkeleyDB_LIBRARIES})

find_package(Boost)
target_link_libraries(litecoind 
  ${Boost_FILESYSTEM_LIBRARY}
  ${Boost_SYSTEM_LIBRARY}
)
#find_package(Crypto)

set(CMAKE_CXX_FLAGS "-g -Wall")

#include_directories(${PROJECT_BINARY_DIR}/src) 
link_directories(${PROJECT_BINARY_DIR}/src) 
 
TARGET_LINK_LIBRARIES(litecoind noui walletdb wallet util sync rpcrawtransaction rpcnet rpcdump bitcoinrpc protocol net main keystore irc init db key script crypter netbase checkpoints version scrypt $<TARGET_OBJECTS:addrman> )

add_subdirectory(src)

SET(CMAKE_CXX_FLAGS "-O2 -pthread -Wall -Wextra -Wformat -Wformat-security -Wno-unused-parameter -g -DUSE_IPV6 -DBOOST_SPIRIT_THREADSAFE -DUSE_UPNP=1 -DHAVE_BUILD_INFO -fno-stack-protector -fstack-protector-all -Wstack-protector -D_FORTIFY_SOURCE=2 -Wl,-z,relro -Wl,-z,now   -Wl,-Bdynamic -l boost_system -l boost_filesystem -l boost_program_options -l boost_thread -l db_cxx -l ssl -l crypto -l miniupnpc -Wl,-Bdynamic -l z -l dl -l pthread")

#ADD_EXECUTABLE(litecoind src/main.cpp)
#TARGET_LINK_LIBRARIES(litecoind noui walletdb wallet util sync rpcrawtransaction rpcnet rpcdump bitcoinrpc protocol net main keystore irc init db key script crypter netbase checkpoints version scrypt $<TARGET_OBJECTS:addrman> )

