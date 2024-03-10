vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO nyyakko/err_or
    REF 28e7ad7016fbbb3f60b25d3bbd26e1399936e61f
    SHA512 9d2abee9cd1342faeb5bd9d8ce786a2851a1bafb5f152dddbb6301a979a71d160369d482e39fe3917d51ef3b55025e40a5d328303172a0d58f8489c3c55fb892
    HEAD_REF master
)

vcpkg_configure_cmake(
    SOURCE_PATH "${SOURCE_PATH}"
    PREFER_NINJA
)
vcpkg_install_cmake()
vcpkg_fixup_cmake_targets()

file(REMOVE_RECURSE "${CURRENT_PACKAGES_DIR}/debug/include")

file(
    INSTALL "${SOURCE_PATH}/LICENSE.txt"
    DESTINATION "${CURRENT_PACKAGES_DIR}/share/${PORT}"
    RENAME copyright)

