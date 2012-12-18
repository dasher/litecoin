cmake_minimum_required(VERSION 2.8)

SET(CMAKE_CXX_FLAGS "-pthread -Wall -Wextra -Wformat -Wformat-security -Wno-unused-parameter -g -DUSE_IPV6 -DBOOST_SPIRIT_THREADSAFE -DUSE_UPNP=1 -DHAVE_BUILD_INFO -fno-stack-protector -fstack-protector-all -Wstack-protector -D_FORTIFY_SOURCE=2  -MMD ")

#execute_process(COMMAND "genbuild.sh" ${CMAKE_CURRENT_BINARY_DIR}/build.h WORKING_DIRECTORY "./share")

add_custom_command(OUTPUT build.h COMMAND ../share/genbuild.sh ${CMAKE_CURRENT_BINARY_DIR}/build.h DEPENDS build.h)

include_directories(${CMAKE_CURRENT_BINARY_DIR})

set_source_files_properties(${CMAKE_CURRENT_BINARY_DIR}/build.h
    PROPERTIES GENERATED TRUE
    HEADER_FILE_ONLY TRUE)

add_custom_target(run ALL DEPENDS build.h)

# Libs
# g++ -c -O2 -pthread -Wall -Wextra -Wformat -Wformat-security -Wno-unused-parameter -g -DUSE_IPV6 -DBOOST_SPIRIT_THREADSAFE -I/home/dasher/Development/litecoin/litecoin/src -I/home/dasher/Development/litecoin/litecoin/src/obj -DUSE_UPNP=1 -DHAVE_BUILD_INFO -fno-stack-protector -fstack-protector-all -Wstack-protector -D_FORTIFY_SOURCE=2  -MMD -MF obj/walletdb.d -o obj/walletdb.o walletdb.cpp

#building just a library. 
add_library(scrypt scrypt.c)
add_library(version build.h version.cpp)
add_library(checkpoints checkpoints.cpp)
add_library(netbase netbase.cpp)
add_library(addrman addrman.cpp)
add_library(crypter crypter.cpp)
add_library(key key.cpp)
add_library(db db.cpp)
add_library(init init.cpp)
add_library(irc irc.cpp)
add_library(keystore keystore.cpp)
add_library(main main.cpp)
add_library(net net.cpp)
add_library(protocol protocol.cpp)
add_library(bitcoinrpc bitcoinrpc.cpp)
add_library(rpcdump rpcdump.cpp)
add_library(rpcnet rpcnet.cpp)
add_library(rpcrawtransaction rpcrawtransaction.cpp)
add_library(sync sync.cpp)
add_library(script script.cpp)
add_library(util util.cpp)
add_library(wallet wallet.cpp)
add_library(walletdb walletdb.cpp)
add_library(noui noui.cpp)

SET(CMAKE_CXX_FLAGS "-O2 -pthread -Wall -Wextra -Wformat -Wformat-security -Wno-unused-parameter -g -DUSE_IPV6 -DBOOST_SPIRIT_THREADSAFE -DUSE_UPNP=1 -DHAVE_BUILD_INFO -fno-stack-protector -fstack-protector-all -Wstack-protector -D_FORTIFY_SOURCE=2 -Wl,-z,relro -Wl,-z,now   -Wl,-Bdynamic -l boost_system -l boost_filesystem -l boost_program_options -l boost_thread -l db_cxx -l ssl -l crypto -l miniupnpc -Wl,-Bdynamic -l z -l dl -l pthread")

#ADD_EXECUTABLE(litecoind main.cpp)
#TARGET_LINK_LIBRARIES(litecoind noui walletdb wallet util sync rpcrawtransaction rpcnet rpcdump bitcoinrpc protocol net main keystore irc init db key script crypter netbase checkpoints version scrypt $<TARGET_OBJECTS:addrman> )


# g++ -O2 -pthread -Wall -Wextra -Wformat -Wformat-security -Wno-unused-parameter -g -DUSE_IPV6 -DBOOST_SPIRIT_THREADSAFE -DUSE_UPNP=1 -DHAVE_BUILD_INFO -fno-stack-protector -fstack-protector-all -Wstack-protector -D_FORTIFY_SOURCE=2 -Wl,-z,relro -Wl,-z,now   -Wl,-Bdynamic -l boost_system -l boost_filesystem -l boost_program_options -l boost_thread -l db_cxx -l ssl -l crypto -l miniupnpc -Wl,-Bdynamic -l z -l dl -l pthread


