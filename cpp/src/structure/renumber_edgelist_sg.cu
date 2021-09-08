/*
 * Copyright (c) 2021, NVIDIA CORPORATION.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <structure/renumber_edgelist_impl.cuh>

namespace cugraph {

// SG instantiation

template std::tuple<rmm::device_uvector<int32_t>, std::vector<int32_t>>
renumber_edgelist<int32_t, int32_t, false>(
  raft::handle_t const& handle,
  std::optional<std::tuple<int32_t const*, int32_t>> optional_vertex_span,
  int32_t* edgelist_major_vertices /* [INOUT] */,
  int32_t* edgelist_minor_vertices /* [INOUT] */,
  int32_t num_edgelist_edges,
  bool do_expensive_check);

template std::tuple<rmm::device_uvector<int32_t>, std::vector<int32_t>>
renumber_edgelist<int32_t, int64_t, false>(
  raft::handle_t const& handle,
  std::optional<std::tuple<int32_t const*, int32_t>> optional_vertex_span,
  int32_t* edgelist_major_vertices /* [INOUT] */,
  int32_t* edgelist_minor_vertices /* [INOUT] */,
  int64_t num_edgelist_edges,
  bool do_expensive_check);

template std::tuple<rmm::device_uvector<int64_t>, std::vector<int64_t>>
renumber_edgelist<int64_t, int64_t, false>(
  raft::handle_t const& handle,
  std::optional<std::tuple<int64_t const*, int64_t>> optional_vertex_span,
  int64_t* edgelist_major_vertices /* [INOUT] */,
  int64_t* edgelist_minor_vertices /* [INOUT] */,
  int64_t num_edgelist_edges,
  bool do_expensive_check);

}  // namespace cugraph
