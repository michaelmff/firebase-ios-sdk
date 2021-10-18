// Copyright 2021 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation

struct Heartbeat: Codable {
  enum Kind: Int, Codable, CaseIterable {
    case daily = 1
    var days: Int { rawValue }
  }

  private static let version: Int = 0

  let info: String
  let date: Date
  let version: Int

  var types: [Kind] = []

  init(info: String,
       date: Date = .init()) {
    self.info = info
    self.date = date
    version = Self.version
  }
}