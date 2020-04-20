if(NOT TARGET ciAnimatedGif)
    get_filename_component(ciAnimatedGif_PROJECT_ROOT "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE)
    get_filename_component(CINDER_PATH "${ciAnimatedGif_PROJECT_ROOT}/../.." ABSOLUTE)
    file(GLOB SOURCE_LIST CONFIGURE_DEPENDS
            "${ciAnimatedGif_PROJECT_ROOT}/src/ciAnimatedGif.cpp"
            )
    add_library(ciAnimatedGif ${SOURCE_LIST})
    target_include_directories(ciAnimatedGif PUBLIC "${ciAnimatedGif_PROJECT_ROOT}/src" )
    target_include_directories(ciAnimatedGif SYSTEM BEFORE PUBLIC "${CINDER_PATH}/include" )
    if(NOT TARGET cinder)
        include("${CINDER_PATH}/proj/cmake/configure.cmake")
        find_package(cinder REQUIRED PATHS
                "${CINDER_PATH}/${CINDER_LIB_DIRECTORY}"
                "$ENV{CINDER_PATH}/${CINDER_LIB_DIRECTORY}")
    endif()
    target_link_libraries(ciAnimatedGif PRIVATE cinder)

endif()