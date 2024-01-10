// SPDX-FileCopyrightText: Copyright 2023 Mikhail Svetkin
// SPDX-License-Identifier: MIT

#include "p1/m1/h1.hpp"

#include <fmt/core.h>

int main(int /*argc*/, char * /*argv*/ []) {
  fmt::print("p1 version: {}\n", p1::m1::version());
  return 0;
}
