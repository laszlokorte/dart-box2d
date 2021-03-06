// Copyright 2012 Google Inc. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

/** This is a node for the DynamicTree. */

part of box2d;

class DynamicTreeNode {
  Aabb2 box = new Aabb2();

  DynamicTreeNode parent;

  DynamicTreeNode next;

  DynamicTreeNode childOne;

  DynamicTreeNode childTwo;

  /** Can contain whatever is useful to the user. */
  var userData;

  /** Used for sorting. */
  int key;

  /** Should never be constructed outside the engine. */
  DynamicTreeNode._construct();

  /** Returns true if this node is a leaf. */
  bool get isLeaf => childOne == null;

  String toString() => box.toString();
}
