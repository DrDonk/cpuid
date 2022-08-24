cmake_minimum_required(VERSION 3.14)
project(cpuid C)

set(CMAKE_C_STANDARD 11)

include_directories(.)
include_directories(getopt)

add_executable(cpuid
        getopt/getopt.h
        getopt/getopt_long.c
        cache.c
        cache.h
        clock.c
        clock.h
        cpuid.c
        cpuid.h
        feature.c
        feature.h
        handlers.c
        handlers.h
        main.c
        platform.h
        prefix.h
        sanity.c
        sanity.h
        state.h
        threads.c
        threads.h
        util.c
        util.h
        vendor.h
        version.c
        version.h)
