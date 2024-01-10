# SPDX-FileCopyrightText: Copyright 2023 Mikhail Svetkin
# SPDX-License-Identifier: MIT

include_guard(GLOBAL)

include(GNUInstallDirs)

add_library(p1 INTERFACE)
add_library(p1::p1 ALIAS p1)
install(TARGETS p1 EXPORT p1-targets)

export(EXPORT p1-targets NAMESPACE p1::)
configure_file("cmake/p1-config.cmake" "." COPYONLY)

include(CMakePackageConfigHelpers)
write_basic_package_version_file(
  p1-config-version.cmake COMPATIBILITY SameMajorVersion
)

install(
  EXPORT p1-targets
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/p1
  NAMESPACE p1::
)

install(
  FILES cmake/p1-config.cmake
        ${CMAKE_CURRENT_BINARY_DIR}/p1-config-version.cmake
  DESTINATION ${CMAKE_INSTALL_LIBDIR}/cmake/p1
)

