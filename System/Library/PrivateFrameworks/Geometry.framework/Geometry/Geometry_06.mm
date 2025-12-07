uint64_t geom::vertex_placement_constraint_factory<double>::add_boundary_preservation(geom::triangle_mesh_half_edge_connectivity **a1, uint64_t a2, uint64_t a3)
{
  v96[4] = *MEMORY[0x277D85DE8];
  v4 = *a1;
  v5 = *(*a1 + 23);
  if (a2 >= ((*(*a1 + 24) - v5) >> 2) || (v6 = a2, half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v5 + 4 * a2) / 3u, *(v5 + 4 * a2) % 3u), !geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v4, half_edge_for_face_vertex)))
  {
    LOBYTE(v23) = *(a3 + 128);
    return v23;
  }

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v96[0] = &unk_286291248;
  v96[1] = &v94;
  v96[2] = &v92;
  v96[3] = v96;
  geom::vertex_placement_constraint_factory<double>::loop_edge_boundaries(a1, v6, v96);
  _ZNSt3__110__function12__value_funcIFvPKDv3_dEED2B8nn200100Ev(v96);
  v9 = v95;
  v10.f64[0] = v93.f64[0];
  v11 = vmulq_f64(v9, v9).f64[0];
  v9.f64[1] = v94.f64[0];
  v12 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v95), v92, 1), v93, v94, 1);
  v10.f64[1] = v92.f64[0];
  v13 = vmlaq_f64(vmulq_f64(v10, vnegq_f64(v94)), v92, v9);
  v14.i64[0] = *&v12.f64[0];
  v14.i64[1] = *&v13.f64[0];
  v15 = vmulq_f64(v94, v94);
  v15.f64[0] = v11 + vaddvq_f64(v15);
  v16 = vmulq_n_f64(v14, v15.f64[0]);
  if ((atomic_load_explicit(_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v84 = v15;
    v88 = v14;
    v77 = v16;
    v80 = v12;
    v75 = v13;
    geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation();
    v12 = v80;
    v15 = v84;
    v13 = v75;
    v16 = v77;
    v14 = v88;
  }

  v17 = vdupq_laneq_s64(v13, 1);
  v18 = vextq_s8(v14, v14, 8uLL);
  v19 = vmulq_laneq_f64(v15, v13, 1);
  *&v20 = vextq_s8(v16, v16, 8uLL).u64[0];
  if ((atomic_load_explicit(_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v85 = v17;
    v89 = v14.i64[0];
    v74 = v18;
    v76 = v13;
    v78 = v16;
    v81 = v12;
    v72 = v20;
    v73 = v19;
    geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation();
    v20 = v72;
    v19 = v73;
    v13 = v76;
    v16 = v78;
    v12 = v81;
    v17 = v85;
    v18 = v74;
    v14.i64[0] = v89;
  }

  v21 = *(a3 + 128);
  if (v21 == 2)
  {
    v51 = *(a3 + 16);
    v52 = *(a3 + 32);
    v53 = *(a3 + 48);
    v54 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v51), v52, 1), v53, *a3, 1);
    v53.f64[1] = *(a3 + 32);
    v51.f64[1] = *a3;
    v55 = vmlaq_f64(vmulq_f64(v53, vnegq_f64(*a3)), v52, v51);
    v56 = vmulq_f64(v54, v54);
    v54.f64[1] = v55.f64[0];
    *&v52.f64[0] = v16.i64[0];
    v52.f64[1] = v20;
    v57 = vmulq_f64(v52, v54);
    v54.f64[0] = vmulq_laneq_f64(v19, v55, 1).f64[0];
    v57.f64[0] = vaddvq_f64(v57);
    v57.f64[0] = (v54.f64[0] + v57.f64[0]) * (v54.f64[0] + v57.f64[0]);
    v58 = vmulq_f64(v55, v55);
    v59 = vmulq_f64(v52, v52);
    *&v54.f64[0] = *&vmulq_f64(v19, v19);
    *&v54.f64[1] = v58.i64[1];
    v60 = vaddq_f64(v54, vaddq_f64(vzip1q_s64(v59, v56), vextq_s8(v59, v58, 8uLL)));
    if (v57.f64[0] > *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared * vmulq_laneq_f64(v60, v60, 1).f64[0])
    {
      goto LABEL_15;
    }
  }

  else
  {
    if (v21 != 1)
    {
      if (*(a3 + 128))
      {
        goto LABEL_18;
      }

      *&v22.f64[0] = v16.i64[0];
      v22.f64[1] = v20;
      if (sqrt(vmulq_f64(v19, v19).f64[0] + vaddvq_f64(vmulq_f64(v22, v22))) <= 0.000001)
      {
        goto LABEL_18;
      }

LABEL_15:
      v29 = vmulq_f64(v13, v13);
      v30 = vmulq_f64(v12, v12).f64[0] + v29.f64[0];
      v31 = (a3 + 32 * v21);
      *v31 = v16;
      v31[1] = v19;
      v32 = *(a3 + 128);
      v33 = 2;
      if (v32 < 2)
      {
        v33 = *(a3 + 128);
      }

      *(a3 + 8 * v33 + 96) = -(v29.f64[1] + v30);
      *(a3 + 128) = v32 + 1;
      goto LABEL_18;
    }

    v25 = *(a3 + 16);
    *&v26.f64[0] = v16.i64[0];
    v26.f64[1] = v20;
    v27 = vaddq_f64(vzip1q_s64(vmulq_f64(v19, v19), vmulq_f64(v25, v25)), vpaddq_f64(vmulq_f64(v26, v26), vmulq_f64(*a3, *a3)));
    v25.f64[0] = vmulq_f64(v19, v25).f64[0];
    v28 = vaddvq_f64(vmulq_f64(v16, *a3));
    if ((v25.f64[0] + v28) * (v25.f64[0] + v28) < *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared * vmulq_laneq_f64(v27, v27, 1).f64[0])
    {
      goto LABEL_15;
    }
  }

LABEL_18:
  v34.f64[0] = v17.f64[0];
  *&v34.f64[1] = v14.i64[0];
  v36 = v94;
  v35.f64[0] = v95.f64[0];
  v14.i64[1] = *&v18.f64[0];
  v35.f64[1] = v94.f64[0];
  v37 = vmulq_f64(v18, vnegq_f64(v95));
  v38 = vmlaq_f64(vmulq_f64(v34, vnegq_f64(v94)), v14, v35);
  if ((atomic_load_explicit(_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v86 = v17;
    v90 = v38;
    v79 = v36;
    v82 = v37;
    geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation();
    v36 = v79;
    v37 = v82;
    v17 = v86;
    v38 = v90;
  }

  *&v39 = vextq_s8(v38, v38, 8uLL).u64[0];
  v40 = vmlaq_laneq_f64(v37, v17, v36, 1);
  if ((atomic_load_explicit(_ZGVZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared, memory_order_acquire) & 1) == 0)
  {
    v87 = v39;
    v91 = v38;
    v83 = v40;
    geom::internal::triangle_mesh_decimator<double>::optimize_position_for_area_and_volume_preservation();
    v40 = v83;
    v39 = v87;
    v38 = v91;
  }

  v41.f64[0] = v40.f64[0];
  *&v41.f64[1] = v38.i64[0];
  v23 = *(a3 + 128);
  if (v23 == 2)
  {
    v61 = *(a3 + 16);
    v62 = *(a3 + 32);
    v63 = *(a3 + 48);
    v64 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v61), v62, 1), v63, *a3, 1);
    v63.f64[1] = *(a3 + 32);
    v61.f64[1] = *a3;
    v65 = vmlaq_f64(vmulq_f64(v63, vnegq_f64(*a3)), v62, v61);
    *&v61.f64[0] = v38.i64[0];
    v61.f64[1] = v39;
    v66 = vmulq_f64(v61, v65);
    v63.f64[0] = vmulq_f64(v40, v64).f64[0];
    v67 = vmulq_f64(v65, v65);
    v68 = vmulq_f64(v61, v61);
    v69 = vaddq_f64(vzip2q_s64(v68, v67), vaddq_f64(vzip1q_s64(vmulq_f64(v40, v40), vmulq_f64(v64, v64)), vzip1q_s64(v68, v67)));
    if ((v66.f64[1] + v63.f64[0] + v66.f64[0]) * (v66.f64[1] + v63.f64[0] + v66.f64[0]) <= *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_sin_alpha_squared * vmulq_laneq_f64(v69, v69, 1).f64[0])
    {
      LOBYTE(v23) = 2;
      return v23;
    }
  }

  else if (v23 == 1)
  {
    v44 = *(a3 + 16);
    v45 = vmulq_f64(*a3, *a3);
    *&v46.f64[0] = v38.i64[0];
    v46.f64[1] = v39;
    v47 = vmulq_f64(v46, v46);
    v48 = vextq_s8(v47, vmulq_f64(v44, v44), 8uLL);
    v47.i64[1] = v45.i64[1];
    v49 = vaddq_f64(v48, vaddq_f64(vzip1q_s64(vmulq_f64(v40, v40), v45), v47));
    v44.f64[0] = vmulq_laneq_f64(v44, v38, 1).f64[0];
    v50 = vaddvq_f64(vmulq_f64(v41, *a3));
    if ((v44.f64[0] + v50) * (v44.f64[0] + v50) >= *&_ZZN4geom28vertex_placement_constraintsIdE14add_constraintERKDv3_ddE19k_cos_alpha_squared * vmulq_laneq_f64(v49, v49, 1).f64[0])
    {
      LOBYTE(v23) = 1;
      return v23;
    }
  }

  else
  {
    if (*(a3 + 128))
    {
      return v23;
    }

    *&v42.f64[0] = v38.i64[0];
    v42.f64[1] = v39;
    v43 = vmulq_f64(v42, v42);
    if (sqrt(v43.f64[1] + vmulq_f64(v40, v40).f64[0] + v43.f64[0]) <= 0.000001)
    {
      LOBYTE(v23) = 0;
      return v23;
    }
  }

  v70 = a3 + 32 * v23;
  *v70 = v41;
  *(v70 + 16) = vdupq_laneq_s64(v38, 1);
  v23 = *(a3 + 128);
  v71 = 2;
  if (v23 < 2)
  {
    v71 = *(a3 + 128);
  }

  *(a3 + 8 * v71 + 96) = 0;
  LOBYTE(v23) = v23 + 1;
  *(a3 + 128) = v23;
  return v23;
}

void geom::vertex_placement_constraint_factory<double>::loop_edge_boundaries(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v7 = *(*a1 + 184);
  if (a2 >= ((*(*a1 + 192) - v7) >> 2))
  {
    *v34 = -1;
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v7 + 4 * a2) / 3u, *(v7 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v6, half_edge_for_face_vertex, v34);
    v6 = *a1;
    v9 = v34[0];
  }

  __p = 0;
  v31 = 0;
  v32 = 0;
  geom::triangle_mesh_connectivity::get_incident_edges_to_vertex(v6, v9, &__p);
  v10 = __p;
  if (*__p == a2)
  {
    v10 = v31 - 4;
  }

  v11 = *v10;
  geom::triangle_mesh_connectivity::get_incident_edges_to_vertex(*a1, v34[1], &__p);
  v12 = __p;
  if (*__p == a2)
  {
    v12 = v31 - 4;
  }

  v13 = *v12;
  v14 = v34[0];
  v15 = v34[1];
  v33[17] = v34[0];
  v33[18] = v34[1];
  v29 = -1;
  v16 = 1;
  v17 = 0xFFFFFFFFLL;
  do
  {
    v18 = v16;
    v19 = *a1;
    v20 = *(*a1 + 184);
    if (v11 >= (*(*a1 + 192) - v20) >> 2)
    {
      *v34 = -1;
      v22 = -1;
    }

    else
    {
      v21 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v20 + 4 * v11) / 3u, *(v20 + 4 * v11) % 3u);
      geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v19, v21, v34);
      v22 = v34[0];
    }

    if (v22 == v14 || v34[1] == v14)
    {
      v17 = *(v34 | (4 * (v22 == v14)));
    }

    else if (v22 == v15 || v34[1] == v15)
    {
      v29 = *(v34 | (4 * (v22 == v15)));
    }

    v16 = 0;
    v11 = v13;
  }

  while ((v18 & 1) != 0);
  v33[19] = v29;
  for (i = 1; i != 4; ++i)
  {
    v24 = *(a1 + 8);
    v25 = (v24 + 32 * v17);
    v26 = v25[1];
    v17 = v33[i + 16];
    *v33 = *v25;
    *&v33[4] = v26;
    v27 = (v24 + 32 * v17);
    v28 = v27[1];
    *&v33[8] = *v27;
    *&v33[12] = v28;
    _ZNKSt3__18functionIFvPKDv3_dEEclES3_(a3, v33);
  }

  if (__p)
  {
    v31 = __p;
    operator delete(__p);
  }
}

uint64_t _ZNKSt3__18functionIFvPKDv3_dEEclES3_(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:nn200100]();
    JUMPOUT(0x24FFEA874);
  }

  return (*(*v2 + 48))(v2, &v4);
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_preservationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291248;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float64x2_t _ZNSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_preservationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EEclEOSA_(uint64_t a1, float64x2_t **a2)
{
  v2 = *a2;
  v3 = *(a1 + 8);
  v4 = vaddq_f64(vsubq_f64((*a2)[3], (*a2)[1]), v3[1]);
  *v3 = vaddq_f64(vsubq_f64((*a2)[2], **a2), *v3);
  v3[1] = v4;
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[1];
  *&v8.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v6), *v2, 1), v7, v5, 1);
  v7.f64[1] = v2->f64[0];
  v6.f64[1] = v2[2].f64[0];
  v9 = vmlaq_f64(vmulq_f64(v7, vnegq_f64(v5)), *v2, v6);
  *&v8.f64[1] = v9.i64[0];
  v10 = *(a1 + 16);
  result = vaddq_f64(v10[1], vdupq_laneq_s64(v9, 1));
  *v10 = vaddq_f64(*v10, v8);
  v10[1] = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_preservationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_preservationEjRNS_28vertex_placement_constraintsIdEEEUlPKDv3_dE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNSt3__110__function12__value_funcIFvPKDv3_dEED2B8nn200100Ev(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_optimizationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862912D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float64x2_t _ZNSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_optimizationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EEclEOSA_(uint64_t a1, float64x2_t **a2)
{
  v2 = (*a2)[2];
  v3 = (*a2)[3];
  _Q5 = **a2;
  v4 = (*a2)[1];
  v6 = vsubq_f64(v3, v4);
  _Q0 = vsubq_f64(v2, _Q5);
  v8 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v3), _Q5, 1), v4, v2, 1);
  v4.f64[1] = (*a2)->f64[0];
  v3.f64[1] = (*a2)[2].f64[0];
  v9 = vmlaq_f64(vmulq_f64(v4, vnegq_f64(v2)), _Q5, v3);
  v10 = vdupq_laneq_s64(v9, 1);
  v11 = vzip1q_s64(v10, v8);
  v8.f64[1] = v9.f64[0];
  _Q5.f64[0] = _Q0.f64[1];
  __asm { FMLA            D7, D5, V0.D[1] }

  v17 = vnegq_f64(_Q0);
  v18.f64[0] = vmuld_lane_f64(v17.f64[0], _Q0, 1);
  _Q7.f64[1] = v18.f64[0];
  v18.f64[1] = vmuld_n_f64(v6.f64[0], v6.f64[0]) + _Q0.f64[0] * _Q0.f64[0];
  v19 = vmulq_n_f64(v17, v6.f64[0]);
  _Q5.f64[0] = vmuld_lane_f64(_Q0.f64[1], _Q0, 1) + _Q0.f64[0] * _Q0.f64[0];
  v20 = *(a1 + 8);
  v21 = vaddq_f64(v20[1], v19);
  v22 = vaddq_f64(v20[2], v18);
  v23 = vaddq_f64(v20[3], vdupq_laneq_s64(v19, 1));
  v24 = vaddq_f64(v20[5], _Q5);
  v25 = vaddq_f64(v20[4], v19);
  *v20 = vaddq_f64(*v20, _Q7);
  v20[1] = v21;
  v20[2] = v22;
  v20[3] = v23;
  v20[4] = v25;
  v20[5] = v24;
  v26 = *(a1 + 16);
  v27 = vnegq_f64(v6);
  v6.f64[1] = _Q0.f64[0];
  v28 = vmlaq_f64(vmulq_f64(v11, v17), v8, v6);
  *&v9.f64[0] = *&vmlaq_laneq_f64(vmulq_f64(v9, v27), v10, _Q0, 1);
  *&v9.f64[1] = v28.i64[0];
  result = vsubq_f64(v26[1], vdupq_laneq_s64(v28, 1));
  *v26 = vsubq_f64(*v26, v9);
  v26[1] = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_optimizationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom35vertex_placement_constraint_factoryIdE25add_boundary_optimizationEjRNS_28vertex_placement_constraintsIdEEEUlPKDv3_dE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void geom::vertex_placement_constraint_factory<double>::loop_edge_triangles(geom::triangle_mesh_half_edge_connectivity **a1, unsigned int a2, uint64_t a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a2;
  v7 = *(*a1 + 23);
  v8 = (*(*a1 + 24) - v7) >> 2;
  if (v8 <= a2)
  {
    *v54 = -1;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(*a1, *(v7 + 4 * a2) / 3u, *(v7 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices(v5, half_edge_for_face_vertex, v54);
    v5 = *a1;
    v7 = *(*a1 + 23);
    v8 = (*(*a1 + 24) - v7) >> 2;
  }

  if (v8 <= v6 || (v10 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v5, *(v7 + 4 * v6) / 3u, *(v7 + 4 * v6) % 3u), !geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge(v5, v10)))
  {
    half_edge_face = -1;
    goto LABEL_9;
  }

  v11 = *(*(v5 + 23) + 4 * v6);
  v12 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex(v5, v11 / 3, v11 % 3);
  half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(v5, v12);
  if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge(v5, v12))
  {
LABEL_9:
    v15 = -1;
    goto LABEL_10;
  }

  half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin(v5, v12);
  v15 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face(v5, half_edge_twin);
LABEL_10:
  v45 = 0;
  v46 = 0;
  v47 = 0;
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(*a1, v54[0], &v45);
  v16 = v45;
  v17 = v46;
  while (v16 != v17)
  {
    v18 = *v16++;
    v19 = a1[1];
    v20 = (*(*a1 + 2) + 4 * (3 * v18));
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    v24 = (v19 + 32 * v21);
    v25 = v24[1];
    v48 = *v24;
    v49 = v25;
    v26 = (v19 + 32 * v22);
    v27 = v26[1];
    v50 = *v26;
    v51 = v27;
    v28 = (v19 + 32 * v23);
    v29 = v28[1];
    v52 = *v28;
    v53 = v29;
    _ZNKSt3__18functionIFvPKDv3_dEEclES3_(a3, &v48);
  }

  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(*a1, v54[1], &v45);
  v30 = v45;
  v31 = v46;
  if (v45 != v46)
  {
    do
    {
      v32 = *v30;
      if (*v30 != half_edge_face && v32 != v15)
      {
        v34 = a1[1];
        v35 = (*(*a1 + 2) + 4 * (3 * v32));
        v36 = *v35;
        v37 = v35[1];
        v38 = v35[2];
        v39 = (v34 + 32 * v36);
        v40 = v39[1];
        v48 = *v39;
        v49 = v40;
        v41 = (v34 + 32 * v37);
        v42 = v41[1];
        v50 = *v41;
        v51 = v42;
        v43 = (v34 + 32 * v38);
        v44 = v43[1];
        v52 = *v43;
        v53 = v44;
        _ZNKSt3__18functionIFvPKDv3_dEEclES3_(a3, &v48);
      }

      ++v30;
    }

    while (v30 != v31);
    v30 = v45;
  }

  if (v30)
  {
    v46 = v30;
    operator delete(v30);
  }
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_preservationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291358;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

double _ZNSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_preservationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EEclEOSA_(uint64_t a1, float64x2_t **a2)
{
  v2 = *a2;
  v3 = **a2;
  v4 = (*a2)[1];
  v5 = (*a2)[2];
  v6 = (*a2)[3];
  v7 = vnegq_f64(v4);
  v8 = (*a2)[4];
  v9 = (*a2)[5];
  v10 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v9), v3, 1), v4, v8, 1);
  v4.f64[1] = (*a2)->f64[0];
  v11 = vmlaq_laneq_f64(vmulq_laneq_f64(v7, v5, 1), v6, v3, 1);
  v12 = vnegq_f64(v6);
  v6.f64[1] = (*a2)[2].f64[0];
  v13 = vmlaq_f64(vmulq_f64(v6, vnegq_f64(v3)), v5, v4);
  v14 = vmlaq_laneq_f64(vmulq_laneq_f64(v12, v8, 1), v9, v5, 1);
  v9.f64[1] = (*a2)[4].f64[0];
  v15 = vaddq_f64(v13, vmlaq_f64(vmulq_f64(v9, vnegq_f64(v5)), v8, v6));
  v16 = vaddq_f64(v11, v14);
  v11.f64[1] = v13.f64[0];
  v17 = vaddq_f64(vmlaq_f64(vmulq_f64(v4, vnegq_f64(v8)), v3, v9), v15);
  *&v4.f64[0] = *&vaddq_f64(v10, v16);
  *&v4.f64[1] = v17.i64[0];
  v18 = *(a1 + 8);
  v19 = vaddq_f64(v18[1], vdupq_laneq_s64(v17, 1));
  *v18 = vaddq_f64(*v18, v4);
  v18[1] = v19;
  v19.f64[0] = vmulq_laneq_f64(v2[5], v13, 1).f64[0] + vaddvq_f64(vmulq_f64(v11, v2[4]));
  v20 = *(a1 + 16);
  result = *v20 + v19.f64[0];
  *v20 = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_preservationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_preservationEjRNS_28vertex_placement_constraintsIdEEEUlPKDv3_dE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_optimizationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE7__cloneEPNS0_6__baseISE_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862913D8;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

float64x2_t _ZNSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_optimizationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EEclEOSA_(uint64_t a1, float64x2_t **a2)
{
  v2 = *a2;
  v4 = **a2;
  v3 = (*a2)[1];
  v5 = vsubq_f64((*a2)[2], v4);
  v6 = vsubq_f64((*a2)[3], v3);
  v7 = vsubq_f64((*a2)[4], v4);
  v8 = vsubq_f64((*a2)[5], v3);
  v9 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v6), v7, 1), v8, v5, 1);
  v8.f64[1] = v7.f64[0];
  v6.f64[1] = v5.f64[0];
  result = vmlaq_f64(vmulq_f64(v8, vnegq_f64(v5)), v7, v6);
  v11 = vmulq_n_f64(vzip1q_s64(v9, result), v9.f64[0]);
  v6.f64[0] = vmuld_lane_f64(v9.f64[0], result, 1);
  v5.f64[0] = v9.f64[0];
  v5.f64[1] = result.f64[0];
  v12 = *(a1 + 8);
  v13 = vaddq_f64(v12[1], v6);
  v14 = vaddq_f64(*v12, v11);
  *v12 = v14;
  v12[1] = v13;
  *&v11.f64[0] = vdupq_laneq_s64(v11, 1).u64[0];
  v11.f64[1] = vmuld_n_f64(result.f64[0], result.f64[0]);
  v14.f64[0] = vmuld_lane_f64(result.f64[0], result, 1);
  v15 = *(a1 + 8);
  v16 = vaddq_f64(v15[3], v14);
  v15[2] = vaddq_f64(v15[2], v11);
  v15[3] = v16;
  v9.f64[0] = vmuld_lane_f64(result.f64[1], result, 1);
  v6.f64[1] = v14.f64[0];
  v17 = *(a1 + 8);
  v18 = vaddq_f64(v17[5], v9);
  v17[4] = vaddq_f64(v17[4], v6);
  v17[5] = v18;
  v19 = v2[1];
  v20 = v2[2];
  v21 = v2[3];
  *&v13.f64[0] = *&vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v19), v20, 1), v21, *v2, 1);
  v21.f64[1] = v2[2].f64[0];
  v19.f64[1] = v2->f64[0];
  v22 = vmlaq_f64(vmulq_f64(v21, vnegq_f64(*v2)), v20, v19);
  v13.f64[1] = v22.f64[0];
  v23 = vmulq_laneq_f64(v2[5], v22, 1);
  v23.f64[0] = v23.f64[0] + vaddvq_f64(vmulq_f64(v2[4], v13));
  v24 = *(a1 + 16);
  v25 = vmlaq_laneq_f64(v24[1], v23, result, 1);
  *v24 = vmlaq_n_f64(*v24, v5, v23.f64[0]);
  v24[1] = v25;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_optimizationEjRNS2_28vertex_placement_constraintsIdEEEUlPKDv3_dE_NS_9allocatorISB_EEFvSA_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom35vertex_placement_constraint_factoryIdE23add_volume_optimizationEjRNS_28vertex_placement_constraintsIdEEEUlPKDv3_dE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

BOOL geom::internal::triangle_mesh_decimator<double>::is_edge_collapse_geometrically_safe(void *a1, unsigned int a2)
{
  v99 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a1[51];
  v6 = a1[27];
  if (a2 >= ((a1[28] - v6) >> 2))
  {
    *v97 = -1;
    v9 = -1;
    v8 = -1;
  }

  else
  {
    half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), *(v6 + 4 * a2) / 3u, *(v6 + 4 * a2) % 3u);
    geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices((a1 + 4), half_edge_for_face_vertex, v97);
    v8 = v97[0];
    v9 = v97[1];
  }

  v10 = (v5 + 48 * a2);
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(a1 + 4, v8, (a1 + 63));
  v11 = a1[63];
  v12 = a1[64];
  if (v11 != v12)
  {
    v13 = a1[1];
    v14 = a1[6];
    v16 = v10[1];
    v15 = v10[2];
    v17 = (v13 + 32 * v8);
    do
    {
      v18 = (v14 + 4 * (3 * *v11));
      v19 = *v18;
      *v98 = *v18;
      *&v98[4] = *(v18 + 1);
      v20 = *&v98[4] == v8 ? 1 : 2;
      v21 = v19 == v8 ? 0 : v20;
      v22 = v21 == 2 ? 0 : v21 + 1;
      v23 = *&v98[4 * v22];
      if (v23 != v9)
      {
        v24 = (v21 - 1);
        v25 = v19 == v8 ? 2 : v24;
        v26 = *&v98[4 * v25];
        if (v26 != v9)
        {
          v27 = (v13 + 32 * v23);
          v28 = (v13 + 32 * v26);
          v29 = v27[1];
          v30 = v17[1];
          v31 = vsubq_f64(*v27, *v17);
          v32 = vsubq_f64(v29, v30);
          v33 = v28[1];
          v34 = vsubq_f64(*v28, *v17);
          v35 = vsubq_f64(v33, v30);
          v36 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v32), v34, 1), v35, v31, 1);
          v35.f64[1] = v34.f64[0];
          v32.f64[1] = v31.f64[0];
          v37 = vmulq_f64(v35, vnegq_f64(v31));
          v38 = vsubq_f64(*v27, v16);
          v39 = vsubq_f64(v29, v15);
          v40 = vsubq_f64(*v28, v16);
          v41 = vsubq_f64(v33, v15);
          v42 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v39), v40, 1), v41, v38, 1);
          v41.f64[1] = v40.f64[0];
          v39.f64[1] = v38.f64[0];
          v43 = vmulq_f64(vmlaq_f64(v37, v34, v32), vmlaq_f64(vmulq_f64(v41, vnegq_f64(v38)), v40, v39));
          if (v43.f64[1] + vmulq_f64(v36, v42).f64[0] + v43.f64[0] <= 0.0)
          {
            return 0;
          }
        }
      }

      ++v11;
    }

    while (v11 != v12);
  }

  v45 = v97[0];
  v44 = v97[1];
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(a1 + 4, v97[1], (a1 + 63));
  v46 = a1[63];
  v47 = a1[64];
  if (v46 != v47)
  {
    v48 = a1[1];
    v49 = a1[6];
    v51 = v10[1];
    v50 = v10[2];
    v52 = (v48 + 32 * v44);
    do
    {
      v53 = (v49 + 4 * (3 * *v46));
      v54 = *v53;
      *v98 = *v53;
      *&v98[4] = *(v53 + 1);
      v55 = *&v98[4] == v44 ? 1 : 2;
      v56 = v54 == v44 ? 0 : v55;
      v57 = v56 == 2 ? 0 : v56 + 1;
      v58 = *&v98[4 * v57];
      if (v58 != v45)
      {
        v59 = (v56 - 1);
        v60 = v54 == v44 ? 2 : v59;
        v61 = *&v98[4 * v60];
        if (v61 != v45)
        {
          v62 = (v48 + 32 * v58);
          v63 = (v48 + 32 * v61);
          v64 = v62[1];
          v65 = v52[1];
          v66 = vsubq_f64(*v62, *v52);
          v67 = vsubq_f64(v64, v65);
          v68 = v63[1];
          v69 = vsubq_f64(*v63, *v52);
          v70 = vsubq_f64(v68, v65);
          v71 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v67), v69, 1), v70, v66, 1);
          v70.f64[1] = v69.f64[0];
          v67.f64[1] = v66.f64[0];
          v72 = vmulq_f64(v70, vnegq_f64(v66));
          v73 = vsubq_f64(*v62, v51);
          v74 = vsubq_f64(v64, v50);
          v75 = vsubq_f64(*v63, v51);
          v76 = vsubq_f64(v68, v50);
          v77 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v74), v75, 1), v76, v73, 1);
          v76.f64[1] = v75.f64[0];
          v74.f64[1] = v73.f64[0];
          v78 = vmulq_f64(vmlaq_f64(v72, v69, v67), vmlaq_f64(vmulq_f64(v76, vnegq_f64(v73)), v75, v74));
          if (v78.f64[1] + vmulq_f64(v71, v77).f64[0] + v78.f64[0] <= 0.0)
          {
            return 0;
          }
        }
      }

      ++v46;
    }

    while (v46 != v47);
  }

  v79 = a1[45];
  v80 = *(v79 + v97[0]);
  v81 = *(v79 + v97[1]);
  if ((v80 & 0x10) != 0 && (v81 & 0x10) != 0)
  {
    return 0;
  }

  if (((a1[37] - a1[36]) & 0x3FFFFFFFCLL) == 0)
  {
    return 1;
  }

  if (v80 == 4 && v81 == 4)
  {
    v84 = a1[27];
    if (v4 < (a1[28] - v84) >> 2)
    {
      v85 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), *(v84 + 4 * v4) / 3u, *(v84 + 4 * v4) % 3u);
      if (geom::triangle_mesh_half_edge_connectivity::is_valid_half_edge((a1 + 4), v85))
      {
        v86 = *(a1[27] + 4 * v4);
        v87 = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 4), v86 / 3, v86 % 3);
        v96[0] = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face((a1 + 4), v87);
        if (geom::triangle_mesh_half_edge_connectivity::is_boundary_half_edge((a1 + 4), v87))
        {
          half_edge_face = -1;
          v89 = 1;
        }

        else
        {
          half_edge_twin = geom::triangle_mesh_half_edge_connectivity::get_half_edge_twin((a1 + 4), v87);
          half_edge_face = geom::triangle_mesh_half_edge_connectivity::get_half_edge_face((a1 + 4), half_edge_twin);
          v89 = 2;
        }

        v91 = 0;
        v96[1] = half_edge_face;
        v92 = a1[6];
        v93 = a1[45];
LABEL_55:
        v94 = 0;
        v95 = v92 + 4 * (3 * v96[v91]);
        *v98 = *v95;
        *&v98[8] = *(v95 + 8);
        while ((*(v93 + *&v98[v94]) & 8) == 0)
        {
          v94 += 4;
          if (v94 == 12)
          {
            if (++v91 != v89)
            {
              goto LABEL_55;
            }

            goto LABEL_59;
          }
        }

        return 0;
      }
    }
  }

LABEL_59:
  if ((v80 & 5) == 0)
  {
    return 1;
  }

  if ((v81 & 5) == 0)
  {
    return 1;
  }

  result = geom::triangle_mesh_atlas::edge_vertices_have_compatible_charts((a1 + 30), (a1 + 4), a2);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t geom::internal::triangle_mesh_decimator<double>::update_edge_uvs(uint64_t a1, unsigned int a2, float64x2_t *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  if (*(a1 + 5) == 1)
  {
    v5 = *(a1 + 216);
    if (a2 >= ((*(a1 + 224) - v5) >> 2))
    {
      *v16 = -1;
      v7 = 0xFFFFFFFFLL;
    }

    else
    {
      half_edge_for_face_vertex = geom::triangle_mesh_half_edge_connectivity::get_half_edge_for_face_vertex((a1 + 32), *(v5 + 4 * a2) / 3u, *(v5 + 4 * a2) % 3u);
      geom::triangle_mesh_half_edge_connectivity::get_half_edge_vertices((a1 + 32), half_edge_for_face_vertex, v16);
      v7 = v16[0];
    }

    v8 = *(a1 + 360);
    if ((*(v8 + v7) & 0xC) != 0 && (*(v8 + v16[1]) & 0xC) != 0)
    {
      return 0;
    }
  }

  memset(&v15, 0, sizeof(v15));
  v12 = 0;
  v13 = 0;
  v14 = 0;
  geom::triangle_mesh_atlas::edge_incident_wedges(a1 + 240, (a1 + 32), a2, &v15, &v12);
  memset(__p, 0, sizeof(__p));
  if (v15.__end_ != v15.__begin_)
  {
    std::vector<double>::__vallocate[abi:nn200100](__p, v15.__end_ - v15.__begin_);
  }

  v9 = 1;
  if (v12)
  {
    v13 = v12;
    operator delete(v12);
  }

  if (v15.__begin_)
  {
    v15.__end_ = v15.__begin_;
    operator delete(v15.__begin_);
  }

  return v9;
}

void geom::internal::triangle_mesh_decimator<double>::recompute_vertex_quadric(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v105 = *MEMORY[0x277D85DE8];
  geom::triangle_mesh_half_edge_connectivity::get_incident_faces_to_vertex(a1 + 4, a2, a3);
  *(a4 + 72) = 0;
  *(a4 + 56) = 0u;
  *(a4 + 40) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  v8 = *a3;
  v9 = a3[1];
  if (*a3 == v9)
  {
    v19 = 0.0;
    goto LABEL_32;
  }

  v10 = a1[6];
  v11 = a1[1];
  v12 = a1[45];
  v13 = 0.0;
  v14 = 0.0;
  v15 = *(v12 + v5) & 0xF;
  v16 = 0.0;
  v17 = 0.0;
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0uLL;
  v21 = 0uLL;
  do
  {
    v22 = 0;
    v23 = (v10 + 4 * (3 * *v8));
    v24 = *v23;
    v25 = v23[1];
    v104[0] = *v23;
    v104[1] = v25;
    v26 = v23[2];
    v104[2] = v23[2];
    v27 = -1;
    do
    {
      if (v104[v22] == v5)
      {
        v27 = v22;
      }

      ++v22;
    }

    while (v22 != 3);
    v28 = (v11 + 32 * v24);
    v29 = (v11 + 32 * v25);
    v30 = (v11 + 32 * v26);
    v32 = *v29;
    v31 = v29[1];
    v33 = v28[1];
    v34 = vsubq_f64(*v29, *v28);
    v35 = vsubq_f64(v31, v33);
    v37 = *v30;
    v36 = v30[1];
    v38 = vsubq_f64(*v30, *v28);
    v39 = vsubq_f64(v36, v33);
    v40 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v35), v38, 1), v39, v34, 1);
    v39.f64[1] = v38.f64[0];
    v35.f64[1] = v34.f64[0];
    v41 = vmlaq_f64(vmulq_f64(v39, vnegq_f64(v34)), v38, v35);
    v42 = vmulq_f64(v41, v41);
    v43 = v42.f64[1] + vmulq_f64(v40, v40).f64[0] + v42.f64[0];
    v44 = 0uLL;
    v45 = 0uLL;
    if (v43 > 0.0)
    {
      v46 = vextq_s8(v41, v41, 8uLL);
      *&v40.f64[1] = v41.i64[0];
      *v41.i64 = 1.0 / sqrt(v43);
      v45 = vmulq_f64(v46, v41);
      v44 = vmulq_n_f64(v40, *v41.i64);
    }

    v47 = vmulq_f64(v33, v45).f64[0] + vaddvq_f64(vmulq_f64(*v28, v44));
    v19 = v19 + vmuld_n_f64(*v44.i64, *v44.i64);
    v20 = vaddq_f64(vmulq_n_f64(vextq_s8(v44, v45, 8uLL), *v44.i64), v20);
    *&v48.f64[1] = v44.i64[1];
    v48.f64[0] = v47;
    v49 = vmulq_f64(v44, v48);
    v50 = vaddq_f64(v21, v49);
    *&v21.f64[0] = *&vsubq_f64(v21, v49);
    v21.f64[1] = v50.f64[1];
    v18 = vmuld_lane_f64(*v45.i64, v44, 1) + v18;
    v17 = v17 - vmuld_lane_f64(v47, v44, 1);
    v16 = vmuld_n_f64(*v45.i64, *v45.i64) + v16;
    v14 = v14 - v47 * *v45.i64;
    v13 = v47 * v47 + v13;
    if (v15)
    {
      v103[0] = *v28;
      v103[1] = v33;
      v103[2] = v32;
      v103[3] = v31;
      v103[4] = v37;
      v103[5] = v36;
      v102[0] = (*(v12 + v24) & 0xF) != 0;
      v102[1] = (*(v12 + v25) & 0xF) != 0;
      v102[2] = (*(v12 + v26) & 0xF) != 0;
      v51 = v27;
      v52 = 0uLL;
      v53 = 0.0;
      if (v102[v27] == 1)
      {
        if (v27 == 2)
        {
          v54 = 0;
        }

        else
        {
          v54 = v27 + 1;
        }

        if (v54 == 2)
        {
          LOBYTE(v55) = 0;
        }

        else
        {
          LOBYTE(v55) = v54 + 1;
        }

        if (v102[v54])
        {
          v56 = &v103[2 * v51];
          v57 = *v56;
          v58 = v56[1];
          v59 = vaddq_f64(v45, v58);
          v60 = vaddq_f64(v44, *v56);
          v61 = &v103[2 * v54];
          v62 = vsubq_f64(*v61, v57);
          v63 = vsubq_f64(v61[1], v58);
          v64 = vsubq_f64(v60, v57);
          v65 = vsubq_f64(v59, v58);
          v66.i64[0] = *&v65.f64[0];
          v66.i64[1] = v64.i64[0];
          v67 = vnegq_f64(v63);
          v63.f64[1] = v62.f64[0];
          v68 = vmlaq_f64(vmulq_f64(v66, vnegq_f64(v62)), v64, v63);
          v69 = vmlaq_laneq_f64(vmulq_laneq_f64(v67, v64, 1), v65, v62, 1);
          v70 = vmulq_f64(v68, v68);
          v71 = v70.f64[1] + vmulq_f64(v69, v69).f64[0] + v70.f64[0];
          v72 = 0uLL;
          v73 = 0uLL;
          if (v71 > 0.0)
          {
            v74 = vextq_s8(v68, v68, 8uLL);
            *&v69.f64[1] = v68.i64[0];
            *v68.i64 = 1.0 / sqrt(v71);
            v73 = vmulq_f64(v74, v68);
            v72 = vmulq_n_f64(v69, *v68.i64);
          }

          v75 = vmulq_f64(v58, v73).f64[0] + vaddvq_f64(vmulq_f64(v57, v72));
          v53 = vmuld_n_f64(*v72.i64, *v72.i64);
          v76 = vmuld_lane_f64(*&v72.i64[1], v72, 1);
          v77 = vmuld_n_f64(*v73.i64, *v73.i64);
          v78 = v75 * v75;
          v52 = vaddq_f64(vmulq_n_f64(vextq_s8(v72, v73, 8uLL), *v72.i64), 0);
          v82.f64[0] = 0.0 - v75 * *v72.i64;
          v79 = vmuld_lane_f64(*v73.i64, v72, 1) + 0.0;
          v80 = 0.0 - vmuld_lane_f64(v75, v72, 1);
          v81 = 0.0 - v75 * *v73.i64;
          v55 = v55;
          v82.f64[1] = v76;
          if ((v102[v55] & 1) == 0)
          {
            goto LABEL_28;
          }

          v83 = vextq_s8(v64, v64, 8uLL).u64[0];
          v84 = vextq_s8(v66, v66, 8uLL).u64[0];
          v85 = vdupq_laneq_s64(v64, 1);
          goto LABEL_25;
        }

        v55 = v55;
        v79 = 0.0;
        v80 = 0.0;
        v77 = 0.0;
        v81 = 0.0;
        v78 = 0.0;
        v82 = 0uLL;
        if (v102[v55] == 1)
        {
          v86 = &v103[2 * v51];
          v57 = *v86;
          v58 = v86[1];
          v87 = vaddq_f64(v45, v58);
          v64 = vsubq_f64(vaddq_f64(v44, *v86), *v86);
          v65 = vsubq_f64(v87, v58);
          v85 = vextq_s8(v64, v64, 8uLL);
          v66.i64[0] = *&v65.f64[0];
          v66.i64[1] = v64.i64[0];
          v84 = vextq_s8(v66, v66, 8uLL).u64[0];
          v52 = 0uLL;
          v53 = 0.0;
          v83 = *&v85.f64[0];
LABEL_25:
          v88 = &v103[2 * v55];
          v89 = vsubq_f64(*v88, v57);
          v90 = vsubq_f64(v88[1], v58);
          v91 = vnegq_f64(v90);
          v90.f64[1] = v89.f64[0];
          v66.i64[1] = v84;
          v64.i64[1] = v83;
          v92 = vmlaq_f64(vmulq_f64(v66, vnegq_f64(v89)), v64, v90);
          v93 = vmlaq_laneq_f64(vmulq_f64(v85, v91), v65, v89, 1);
          v94 = vmulq_f64(v92, v92);
          v95 = v94.f64[1] + vmulq_f64(v93, v93).f64[0] + v94.f64[0];
          v96 = 0uLL;
          v97 = 0uLL;
          if (v95 > 0.0)
          {
            *&v93.f64[1] = v92.i64[0];
            *v96.i64 = 1.0 / sqrt(v95);
            v97 = vmulq_f64(vextq_s8(v92, v92, 8uLL), v96);
            v96 = vmulq_n_f64(v93, *v96.i64);
          }

          v98 = vmulq_f64(v58, v97).f64[0] + vaddvq_f64(vmulq_f64(v57, v96));
          v53 = v53 + vmuld_n_f64(*v96.i64, *v96.i64);
          v52 = vaddq_f64(v52, vmulq_n_f64(vextq_s8(v96, v97, 8uLL), *v96.i64));
          *&v99.f64[1] = v96.i64[1];
          v99.f64[0] = v98;
          v100 = vmulq_f64(v96, v99);
          v101 = vaddq_f64(v82, v100);
          *&v82.f64[0] = *&vsubq_f64(v82, v100);
          v82.f64[1] = v101.f64[1];
          v79 = v79 + vmuld_lane_f64(*v97.i64, v96, 1);
          v80 = v80 - vmuld_lane_f64(v98, v96, 1);
          v77 = v77 + vmuld_n_f64(*v97.i64, *v97.i64);
          v81 = v81 - v98 * *v97.i64;
          v78 = v78 + v98 * v98;
        }
      }

      else
      {
        v79 = 0.0;
        v80 = 0.0;
        v77 = 0.0;
        v81 = 0.0;
        v78 = 0.0;
        v82 = 0uLL;
      }

LABEL_28:
      v19 = v19 + v53;
      v20 = vaddq_f64(v20, v52);
      v21 = vaddq_f64(v21, v82);
      v18 = v18 + v79;
      v17 = v17 + v80;
      v16 = v16 + v77;
      v14 = v14 + v81;
      v13 = v13 + v78;
    }

    ++v8;
  }

  while (v8 != v9);
  *(a4 + 8) = v20;
  *(a4 + 24) = v21;
  *(a4 + 40) = v18;
  *(a4 + 48) = v17;
  *(a4 + 56) = v16;
  *(a4 + 64) = v14;
  *(a4 + 72) = v13;
LABEL_32:
  *a4 = v19;
}

uint64_t geom::intersect_triangle_bbox_3<float>(int8x16_t *a1, _OWORD *a2, int32x4_t *a3)
{
  v257 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = a1[1];
  v7 = vsubq_f32(v6, *a1);
  v8 = a1[2];
  v9 = vsubq_f32(v8, *a1);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vnegq_f32(v7)), v9, vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL));
  v11 = fabsf(*&v10.i32[2]);
  v12 = v11 >= 0.00000011921;
  v13 = fabsf(*v10.i32);
  v14 = fabsf(*&v10.i32[1]);
  if (v13 >= 0.00000011921)
  {
    v12 = 1;
  }

  if (!v12 && v14 < 0.00000011921)
  {
    goto LABEL_29;
  }

  if (v13 < 0.00000011921 && v14 < 0.00000011921)
  {
    v25 = *a2;
    if (*v5.i32 != COERCE_FLOAT(*a2))
    {
      v42 = fabsf(*v5.i32);
      if (v42 == INFINITY)
      {
        if (*v5.i32 != *(a2 + 4))
        {
          goto LABEL_57;
        }
      }

      else
      {
        v44 = fabsf(*v25.i32);
        if (v44 == INFINITY || vabds_f32(*v5.i32, *v25.i32) >= (((v42 + v44) + 1.0) * 0.00000011921))
        {
          v45 = *(a2 + 4);
          if (*v5.i32 != v45)
          {
            v46 = fabsf(v45);
            if (v46 == INFINITY || vabds_f32(*v5.i32, v45) >= (((v42 + v46) + 1.0) * 0.00000011921))
            {
              goto LABEL_57;
            }
          }
        }
      }
    }

    v26 = vextq_s8(v25, v25, 4uLL).u64[0];
    v27 = vext_s8(a2[1], *&vextq_s8(*(a2 + 1), *(a2 + 1), 8uLL), 4uLL);
    v249 = 0;
    v252 = v26;
    v253 = __PAIR64__(HIDWORD(v26), v27.u32[0]);
    HIDWORD(v26) = v27.i32[1];
    v254 = v27;
    v255 = v26;
    LOBYTE(v20) = v249;
    if (v249)
    {
      v29 = v248;
      v30 = v249;
      do
      {
        v31 = v29->i64[0];
        v29 = (v29 + 8);
        v28.i64[0] = v31;
        v32 = vzip1q_s32(*a1, v28);
        v32.i32[2] = HIDWORD(v31);
        *a3++ = v32;
        --v30;
      }

      while (v30);
    }

    goto LABEL_28;
  }

  if (v11 >= 0.00000011921 || v14 >= 0.00000011921)
  {
    if (!v12)
    {
      v17 = *(a2 + 2);
      if (*&v5.i32[2] == v17)
      {
        goto LABEL_15;
      }

      v47 = fabsf(*&v5.i32[2]);
      if (v47 == INFINITY)
      {
        if (*&v5.i32[2] == *(a2 + 6))
        {
LABEL_15:
          v18 = *a2;
          v19 = a2[1];
          v249 = 0;
          v252 = v18.i64[0];
          v253 = __PAIR64__(v18.u32[1], v19);
          v18.i32[1] = DWORD1(v19);
          v254 = v19;
          v255 = v18.i64[0];
          LOBYTE(v20) = v249;
          if (v249)
          {
            v21 = v248;
            v22 = v249;
            do
            {
              v23 = v21->i64[0];
              v21 = (v21 + 8);
              v24.i64[0] = v23;
              v24.i64[1] = vextq_s8(*a1, *a1, 8uLL).u64[0];
              *a3++ = v24;
              --v22;
            }

            while (v22);
          }

          goto LABEL_28;
        }
      }

      else
      {
        v51 = fabsf(v17);
        if (v51 != INFINITY && vabds_f32(*&v5.i32[2], v17) < (((v47 + v51) + 1.0) * 0.00000011921))
        {
          goto LABEL_15;
        }

        v52 = *(a2 + 6);
        if (*&v5.i32[2] == v52)
        {
          goto LABEL_15;
        }

        v53 = fabsf(v52);
        if (v53 != INFINITY && vabds_f32(*&v5.i32[2], v52) < (((v47 + v53) + 1.0) * 0.00000011921))
        {
          goto LABEL_15;
        }
      }
    }

    goto LABEL_57;
  }

  v33 = *(a2 + 1);
  if (*&v5.i32[1] == v33)
  {
LABEL_25:
    v34 = vzip1_s32(*a2, *&vextq_s8(*a2, *a2, 8uLL));
    v35 = vzip1_s32(a2[1], *&vextq_s8(*(a2 + 1), *(a2 + 1), 8uLL));
    v252 = v34;
    v253 = __PAIR64__(v34.u32[1], v35.u32[0]);
    v249 = 0;
    v34.i32[1] = v35.i32[1];
    v254 = v35;
    v255 = v34;
    LOBYTE(v20) = v249;
    if (v249)
    {
      v37 = v248;
      v38 = v249;
      do
      {
        v39 = v37->i64[0];
        v37 = (v37 + 8);
        v36.i64[0] = v39;
        v40 = v36;
        v40.i32[1] = a1->i32[1];
        v40.i32[2] = HIDWORD(v39);
        *a3++ = v40;
        --v38;
      }

      while (v38);
    }

    goto LABEL_28;
  }

  v43 = fabsf(*&v5.i32[1]);
  if (v43 == INFINITY)
  {
    if (*&v5.i32[1] == *(a2 + 5))
    {
      goto LABEL_25;
    }
  }

  else
  {
    v48 = fabsf(v33);
    if (v48 != INFINITY && vabds_f32(*&v5.i32[1], v33) < (((v43 + v48) + 1.0) * 0.00000011921))
    {
      goto LABEL_25;
    }

    v49 = *(a2 + 5);
    if (*&v5.i32[1] == v49)
    {
      goto LABEL_25;
    }

    v50 = fabsf(v49);
    if (v50 != INFINITY && vabds_f32(*&v5.i32[1], v49) < (((v43 + v50) + 1.0) * 0.00000011921))
    {
      goto LABEL_25;
    }
  }

LABEL_57:
  v54 = a1[1];
  v54.i32[3] = 0;
  v55 = a1[2];
  v55.i32[3] = 0;
  v56 = vminnmq_f32(v54, v55);
  v57 = *a1;
  v57.i32[3] = 0;
  v56.i32[3] = 0;
  v58 = vminnmq_f32(v57, v56);
  v59 = *(a2 + 1);
  v60 = vcgtq_f32(v58, v59);
  v60.i32[3] = v60.i32[2];
  if ((vmaxvq_u32(v60) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  v61 = vmaxnmq_f32(v54, v55);
  v61.i32[3] = 0;
  v62 = vmaxnmq_f32(v57, v61);
  v63 = *a2;
  v64 = vcgtq_f32(*a2, v62);
  v64.i32[3] = v64.i32[2];
  if ((vmaxvq_u32(v64) & 0x80000000) != 0)
  {
    goto LABEL_29;
  }

  v250 = 0;
  v65 = vmulq_f32(v10, v10);
  v65.f32[0] = sqrtf(v65.f32[1] + (v65.f32[2] + v65.f32[0]));
  if (v65.f32[0] <= 0.00000011921)
  {
    goto LABEL_201;
  }

  v66 = vdivq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), vdupq_lane_s32(*v65.f32, 0));
  v67 = vaddq_f32(vaddq_f32(v6, v5), v8);
  __asm { FMOV            V1.4S, #3.0 }

  v71 = vdivq_f32(v67, _Q1);
  v72 = v63;
  v72.i32[1] = v59.i32[1];
  v73 = v63;
  v73.i32[2] = v59.i32[2];
  _Q1.i32[0] = 0;
  _Q1.i64[1] = 0;
  v75 = vsubq_f32(v59, v63).u32[0];
  v76 = vmulq_f32(v66, v75);
  v77 = v76.f32[2] + vaddv_f32(*v76.f32);
  if (fabsf(v77) > 0.00000011921)
  {
    v78 = vmulq_f32(v66, v63);
    v79 = vmulq_f32(v71, v66);
    v80 = vadd_f32(vzip1_s32(*&vextq_s8(v78, v78, 8uLL), *&vextq_s8(v79, v79, 8uLL)), vadd_f32(vzip1_s32(*v78.i8, *v79.i8), vzip2_s32(*v78.i8, *v79.i8)));
    v81 = v80.f32[1];
    v82 = -(v80.f32[0] - v80.f32[1]) / v77;
    v83 = v82 > 1.0 || v82 < 0.0;
    if (v83)
    {
      v84 = 0;
    }

    else
    {
      v84 = 1;
      v250 = 1;
      v248[0] = vmlaq_n_f32(v63, v75, v82);
    }

    v85 = vmulq_f32(v66, v72);
    v86 = -((v85.f32[2] + vaddv_f32(*v85.f32)) - v80.f32[1]) / v77;
    if (v86 >= 0.0 && v86 <= 1.0)
    {
      v88 = vmlaq_n_f32(v72, v75, v86);
      v89 = v84;
      if (v83)
      {
LABEL_75:
        v250 = ++v84;
        v248[v89] = v88;
      }

      else
      {
        v90 = v248;
        v91 = v84;
        while (1)
        {
          v92 = vsubq_f32(v88, *v90);
          v93 = vmulq_f32(v92, v92);
          if (sqrtf(v93.f32[2] + vaddv_f32(*v93.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v90;
          if (!--v91)
          {
            goto LABEL_75;
          }
        }
      }
    }

    v94 = v59;
    v94.i32[0] = v63.i32[0];
    v95 = vmulq_f32(v66, v73);
    v96 = -((v95.f32[2] + vaddv_f32(*v95.f32)) - v81) / v77;
    if (v96 >= 0.0 && v96 <= 1.0)
    {
      v98 = vmlaq_n_f32(v73, v75, v96);
      if (v84)
      {
        v99 = v84;
        v100 = v248;
        v101 = v84;
        while (1)
        {
          v102 = vsubq_f32(v98, *v100);
          v103 = vmulq_f32(v102, v102);
          if (sqrtf(v103.f32[2] + vaddv_f32(*v103.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v100;
          if (!--v101)
          {
            goto LABEL_86;
          }
        }
      }

      else
      {
        v99 = 0;
LABEL_86:
        v250 = v84 + 1;
        v248[v99] = v98;
      }
    }

    v104 = vmulq_f32(v66, v94);
    v105 = -((v104.f32[2] + vaddv_f32(*v104.f32)) - v81) / v77;
    if (v105 >= 0.0 && v105 <= 1.0)
    {
      v107 = vmlaq_n_f32(v94, v75, v105);
      if (v250)
      {
        v108 = v248;
        v109 = v250;
        while (1)
        {
          v110 = vsubq_f32(v107, *v108);
          v111 = vmulq_f32(v110, v110);
          if (sqrtf(v111.f32[2] + vaddv_f32(*v111.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v108;
          if (!--v109)
          {
            v112 = v250;
            goto LABEL_97;
          }
        }
      }

      else
      {
        v112 = 0;
LABEL_97:
        ++v250;
        v248[v112] = v107;
      }
    }
  }

  v113 = v63;
  v113.i32[0] = v59.i32[0];
  _Q1.f32[1] = v59.f32[1] - v63.f32[1];
  v114 = vmulq_f32(v66, _Q1);
  v115 = v114.f32[2] + vaddv_f32(*v114.f32);
  if (fabsf(v115) > 0.00000011921)
  {
    v116 = vmulq_f32(v66, v63);
    v117 = vmulq_f32(v71, v66);
    v118 = vadd_f32(vzip1_s32(*&vextq_s8(v116, v116, 8uLL), *&vextq_s8(v117, v117, 8uLL)), vadd_f32(vzip1_s32(*v116.i8, *v117.i8), vzip2_s32(*v116.i8, *v117.i8)));
    v119 = v118.f32[1];
    v120 = -(v118.f32[0] - v118.f32[1]) / v115;
    if (v120 >= 0.0 && v120 <= 1.0)
    {
      v122 = vmlaq_n_f32(v63, _Q1, v120);
      if (v250)
      {
        v123 = v248;
        v124 = v250;
        while (1)
        {
          v125 = vsubq_f32(v122, *v123);
          v126 = vmulq_f32(v125, v125);
          if (sqrtf(v126.f32[2] + vaddv_f32(*v126.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v123;
          if (!--v124)
          {
            v127 = v250;
            goto LABEL_109;
          }
        }
      }

      else
      {
        v127 = 0;
LABEL_109:
        ++v250;
        v248[v127] = v122;
      }
    }

    v128 = vmulq_f32(v66, v113);
    v129 = -((v128.f32[2] + vaddv_f32(*v128.f32)) - v118.f32[1]) / v115;
    if (v129 >= 0.0 && v129 <= 1.0)
    {
      v131 = vmlaq_n_f32(v113, _Q1, v129);
      if (v250)
      {
        v132 = v248;
        v133 = v250;
        while (1)
        {
          v134 = vsubq_f32(v131, *v132);
          v135 = vmulq_f32(v134, v134);
          if (sqrtf(v135.f32[2] + vaddv_f32(*v135.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v132;
          if (!--v133)
          {
            v136 = v250;
            goto LABEL_120;
          }
        }
      }

      else
      {
        v136 = 0;
LABEL_120:
        ++v250;
        v248[v136] = v131;
      }
    }

    v137 = v59;
    v137.i32[1] = v63.i32[1];
    v138 = vmulq_f32(v66, v73);
    v139 = -((v138.f32[2] + vaddv_f32(*v138.f32)) - v119) / v115;
    if (v139 >= 0.0 && v139 <= 1.0)
    {
      v141 = vmlaq_n_f32(v73, _Q1, v139);
      if (v250)
      {
        v142 = v248;
        v143 = v250;
        while (1)
        {
          v144 = vsubq_f32(v141, *v142);
          v145 = vmulq_f32(v144, v144);
          if (sqrtf(v145.f32[2] + vaddv_f32(*v145.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v142;
          if (!--v143)
          {
            v146 = v250;
            goto LABEL_131;
          }
        }
      }

      else
      {
        v146 = 0;
LABEL_131:
        ++v250;
        v248[v146] = v141;
      }
    }

    v147 = vmulq_f32(v66, v137);
    v148 = -((v147.f32[2] + vaddv_f32(*v147.f32)) - v119) / v115;
    if (v148 >= 0.0 && v148 <= 1.0)
    {
      v150 = vmlaq_n_f32(v137, _Q1, v148);
      if (v250)
      {
        v151 = v248;
        v152 = v250;
        while (1)
        {
          v153 = vsubq_f32(v150, *v151);
          v154 = vmulq_f32(v153, v153);
          if (sqrtf(v154.f32[2] + vaddv_f32(*v154.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v151;
          if (!--v152)
          {
            v155 = v250;
            goto LABEL_142;
          }
        }
      }

      else
      {
        v155 = 0;
LABEL_142:
        ++v250;
        v248[v155] = v150;
      }
    }
  }

  v156.i64[0] = 0;
  v156.i32[3] = 0;
  v156.f32[2] = v59.f32[2] - v63.f32[2];
  v157 = vmulq_f32(v66, v156);
  v158 = v157.f32[2] + vaddv_f32(*v157.f32);
  if (fabsf(v158) > 0.00000011921)
  {
    v159 = vmulq_f32(v66, v63);
    v160 = vmulq_f32(v71, v66);
    v161 = vadd_f32(vzip1_s32(*&vextq_s8(v159, v159, 8uLL), *&vextq_s8(v160, v160, 8uLL)), vadd_f32(vzip1_s32(*v159.i8, *v160.i8), vzip2_s32(*v159.i8, *v160.i8)));
    v162 = v161.f32[1];
    v163 = -(v161.f32[0] - v161.f32[1]) / v158;
    if (v163 >= 0.0 && v163 <= 1.0)
    {
      v165 = vmlaq_n_f32(v63, v156, v163);
      if (v250)
      {
        v166 = v248;
        v167 = v250;
        while (1)
        {
          v168 = vsubq_f32(v165, *v166);
          v169 = vmulq_f32(v168, v168);
          if (sqrtf(v169.f32[2] + vaddv_f32(*v169.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v166;
          if (!--v167)
          {
            v170 = v250;
            goto LABEL_154;
          }
        }
      }

      else
      {
        v170 = 0;
LABEL_154:
        ++v250;
        v248[v170] = v165;
      }
    }

    v171 = vmulq_f32(v66, v113);
    v172 = -((v171.f32[2] + vaddv_f32(*v171.f32)) - v161.f32[1]) / v158;
    if (v172 >= 0.0 && v172 <= 1.0)
    {
      v174 = vmlaq_n_f32(v113, v156, v172);
      if (v250)
      {
        v175 = v248;
        v176 = v250;
        while (1)
        {
          v177 = vsubq_f32(v174, *v175);
          v178 = vmulq_f32(v177, v177);
          if (sqrtf(v178.f32[2] + vaddv_f32(*v178.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v175;
          if (!--v176)
          {
            v179 = v250;
            goto LABEL_165;
          }
        }
      }

      else
      {
        v179 = 0;
LABEL_165:
        ++v250;
        v248[v179] = v174;
      }
    }

    v59.i32[2] = v63.i32[2];
    v180 = vmulq_f32(v66, v72);
    v181 = -((v180.f32[2] + vaddv_f32(*v180.f32)) - v161.f32[1]) / v158;
    if (v181 >= 0.0 && v181 <= 1.0)
    {
      v183 = vmlaq_n_f32(v72, v156, v181);
      if (v250)
      {
        v184 = v248;
        v185 = v250;
        while (1)
        {
          v186 = vsubq_f32(v183, *v184);
          v187 = vmulq_f32(v186, v186);
          if (sqrtf(v187.f32[2] + vaddv_f32(*v187.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v184;
          if (!--v185)
          {
            v188 = v250;
            goto LABEL_176;
          }
        }
      }

      else
      {
        v188 = 0;
LABEL_176:
        ++v250;
        v248[v188] = v183;
      }
    }

    v189 = vmulq_f32(v66, v59);
    v190 = -((v189.f32[2] + vaddv_f32(*v189.f32)) - v162) / v158;
    if (v190 >= 0.0 && v190 <= 1.0)
    {
      v192 = vmlaq_n_f32(v59, v156, v190);
      if (v250)
      {
        v193 = v248;
        v194 = v250;
        while (1)
        {
          v195 = vsubq_f32(v192, *v193);
          v196 = vmulq_f32(v195, v195);
          if (sqrtf(v196.f32[2] + vaddv_f32(*v196.f32)) <= 0.00000011921)
          {
            break;
          }

          ++v193;
          if (!--v194)
          {
            v197 = v250;
            goto LABEL_187;
          }
        }
      }

      else
      {
        v197 = 0;
LABEL_187:
        ++v250;
        v248[v197] = v192;
      }
    }
  }

  v198 = v250;
  if (!v250)
  {
    goto LABEL_201;
  }

  v199 = 0;
  v200 = vmulq_f32(v7, v7);
  *&v201 = v200.f32[2] + vaddv_f32(*v200.f32);
  *v200.f32 = vrsqrte_f32(v201);
  *v200.f32 = vmul_f32(*v200.f32, vrsqrts_f32(v201, vmul_f32(*v200.f32, *v200.f32)));
  v202 = vmulq_n_f32(v7, vmul_f32(*v200.f32, vrsqrts_f32(v201, vmul_f32(*v200.f32, *v200.f32))).f32[0]);
  v203 = vextq_s8(vuzp1q_s32(v66, v66), v66, 0xCuLL);
  v204 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v202, v202), v202, 0xCuLL), vnegq_f32(v66)), v202, v203);
  v205 = vmulq_f32(v204, v204);
  *&v206 = v205.f32[1] + (v205.f32[2] + v205.f32[0]);
  *v205.f32 = vrsqrte_f32(v206);
  *v205.f32 = vmul_f32(*v205.f32, vrsqrts_f32(v206, vmul_f32(*v205.f32, *v205.f32)));
  v207 = vmulq_n_f32(vextq_s8(vuzp1q_s32(v204, v204), v204, 0xCuLL), vmul_f32(*v205.f32, vrsqrts_f32(v206, vmul_f32(*v205.f32, *v205.f32))).f32[0]);
  v208 = 16 * v250;
  v209 = 0uLL;
  do
  {
    v210 = v248[v199 / 0x10];
    v209 = vaddq_f32(v209, v210);
    v199 += 16;
  }

  while (v208 != v199);
  v210.f32[0] = v250;
  v211 = vsubq_f32(v248[0], vdivq_f32(v209, vdupq_lane_s32(*v210.f32, 0)));
  v212 = vmulq_f32(v211, v211);
  v212.f32[0] = sqrtf(v212.f32[2] + vaddv_f32(*v212.f32));
  v243 = v202;
  v244 = v71;
  v242 = v207;
  if (fabsf(v212.f32[0]) > 0.000005)
  {
    v213 = 0;
    v214 = vdivq_f32(v211, vdupq_lane_s32(*v212.f32, 0));
    v215 = vmlaq_f32(vmulq_f32(v203, vnegq_f32(v214)), v66, vextq_s8(vuzp1q_s32(v214, v214), v214, 0xCuLL));
    v216 = vextq_s8(vuzp1q_s32(v215, v215), v215, 0xCuLL);
    v217 = vmulq_f32(v215, v215);
    *&v218 = v217.f32[1] + (v217.f32[2] + v217.f32[0]);
    *v217.f32 = vrsqrte_f32(v218);
    *v217.f32 = vmul_f32(*v217.f32, vrsqrts_f32(v218, vmul_f32(*v217.f32, *v217.f32)));
    v219 = vmulq_n_f32(v216, vmul_f32(*v217.f32, vrsqrts_f32(v218, vmul_f32(*v217.f32, *v217.f32))).f32[0]);
    v246 = vzip1q_s32(v214, v219);
    v245 = vextq_s8(v246, v246, 8uLL).u64[0];
    v220 = vzip1_s32(*&vextq_s8(v214, v214, 8uLL), *&vextq_s8(v219, v219, 8uLL));
    do
    {
      v247 = v248[v213 / 0x10];
      v221 = vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(*v246.i8, v247.f32[0]), v245, *v247.f32, 1), v220, v247, 2);
      v222 = atan2f(v221.f32[1], v221.f32[0]);
      v223 = v247;
      v223.f32[3] = v222;
      *(&v252 + v213) = v223;
      v213 += 16;
    }

    while (v208 != v213);
    _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIfEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_fSI_E_PSG_Lb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(&v252, &v252 + 4 * v198, 126 - 2 * __clz(v198), 1);
    if (v250)
    {
      for (i = 0; i < v250; ++i)
      {
        v248[i] = *(&v252 + i);
        LODWORD(v198) = v250;
      }
    }

    else
    {
      LODWORD(v198) = 0;
    }

    v202 = v243;
    v71 = v244;
    v207 = v242;
  }

  if (v198 >= 3)
  {
    v225 = 0;
    v226 = vsubq_f32(*a1, v71);
    v227 = vmulq_f32(v202, v226);
    v228 = vmulq_f32(v207, v226);
    v229 = vsubq_f32(a1[1], v71);
    v230 = vmulq_f32(v202, v229);
    v231 = vmulq_f32(v207, v229);
    v232 = vsubq_f32(a1[2], v71);
    v233 = vmulq_f32(v202, v232);
    v234 = vmulq_f32(v207, v232);
    do
    {
      v235 = vsubq_f32(v248[v225], v71);
      v236 = vmulq_f32(v202, v235);
      v237 = vmulq_f32(v207, v235);
      v251[v225++] = vadd_f32(vzip1_s32(*&vextq_s8(v236, v236, 8uLL), *&vextq_s8(v237, v237, 8uLL)), vadd_f32(vzip1_s32(*v236.i8, *v237.i8), vzip2_s32(*v236.i8, *v237.i8)));
    }

    while (v198 != v225);
    v256 = 0;
    v250 = v256;
    v20 = v256;
    if (v256)
    {
      v238 = 0;
      do
      {
        v248[v238] = vmlaq_lane_f32(vmlaq_n_f32(v244, v243, COERCE_FLOAT(*(&v252 + v238))), v242, *(&v252 + v238), 1);
        ++v238;
      }

      while (v20 != v238);
      LOBYTE(v20) = v250;
      if (v250)
      {
        v239 = v248;
        v240 = v250;
        do
        {
          v241 = *v239++;
          *a3++ = v241;
          --v240;
        }

        while (v240);
      }
    }
  }

  else
  {
LABEL_201:
    LOBYTE(v20) = 0;
  }

LABEL_28:
  if (v20 <= 2u)
  {
LABEL_29:
    LOBYTE(v20) = 0;
  }

  return v20;
}

uint64_t geom::intersect_triangle_bbox_3<double>(int8x16_t *a1, uint64_t a2, int64x2_t *a3)
{
  v327 = *MEMORY[0x277D85DE8];
  v9 = a1[2];
  v10 = a1[3];
  v11 = *a1;
  v12 = a1[1];
  v13 = vsubq_f64(v9, *a1);
  v14 = vsubq_f64(v10, v12);
  v15 = a1[4];
  v16 = a1[5];
  v17 = vsubq_f64(v15, *a1);
  v18 = vsubq_f64(v16, v12);
  v19.f64[0] = v14.f64[0];
  *&v19.f64[1] = v13.i64[0];
  v20 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v14), v17, 1), v18, v13, 1);
  v18.f64[1] = v17.f64[0];
  v21 = vmlaq_f64(vmulq_f64(v18, vnegq_f64(v13)), v17, v19);
  v22 = fabs(v20.f64[0]);
  v23 = v22 >= 2.22044605e-16;
  v24 = fabs(*v21.i64);
  v25 = fabs(*&v21.i64[1]);
  if (v24 >= 2.22044605e-16)
  {
    v23 = 1;
  }

  if (v23 || v25 >= 2.22044605e-16)
  {
    if (v24 < 2.22044605e-16 && v25 < 2.22044605e-16)
    {
      v42 = *(a2 + 16);
      v43 = *a2;
      v44 = *(a2 + 48);
      v45 = *(a2 + 32);
      if (*v11.i64 == *a2 || ((v46 = vabdd_f64(*v11.i64, *v45.i64), vabdd_f64(*v11.i64, *v43.i64) > 2.22044605e-16) ? (v47 = *v11.i64 == *v45.i64) : (v47 = 1), !v47 ? (v48 = v46 > 2.22044605e-16) : (v48 = 0), !v48))
      {
        *&v49.f64[0] = vextq_s8(v43, v43, 8uLL).u64[0];
        v50.i64[0] = vextq_s8(v45, v45, 8uLL).u64[0];
        v51.f64[0] = v49.f64[0];
        v51.f64[1] = *(a2 + 16);
        v52.i64[0] = v50.i64[0];
        v52.i64[1] = *(a2 + 48);
        v319 = 0;
        v50.i64[1] = v42;
        v322 = v51;
        v323 = v50;
        v49.f64[1] = v44;
        v324 = v52;
        v325 = v49;
        LOBYTE(v38) = v319;
        if (v319)
        {
          v53 = &v317;
          v54 = v319;
          do
          {
            v55 = *v53++;
            *a3 = vzip1q_s64(*a1, v55);
            a3[1] = vdupq_laneq_s64(v55, 1);
            a3 += 2;
            --v54;
          }

          while (v54);
        }

        goto LABEL_45;
      }
    }

    else if (v22 < 2.22044605e-16 && v25 < 2.22044605e-16)
    {
      v56 = *(a2 + 8);
      v57 = vabdd_f64(*&v11.i64[1], v56);
      v58 = *&v11.i64[1] != v56 && v57 > 2.22044605e-16;
      if (!v58 || (v66 = *(a2 + 40), *&v11.i64[1] == v66) || vabdd_f64(*&v11.i64[1], v66) <= 2.22044605e-16)
      {
        v59 = *a2;
        v59.f64[1] = *(a2 + 16);
        v60 = *(a2 + 32);
        v61 = *(a2 + 48);
        *&v60.i64[1] = v61;
        v324 = v60;
        v60.i64[1] = *&v59.f64[1];
        v319 = 0;
        v322 = v59;
        v323 = v60;
        v59.f64[1] = v61;
        v325 = v59;
        LOBYTE(v38) = v319;
        if (v319)
        {
          v62 = &v317;
          v63 = v319;
          do
          {
            v64 = *v62++;
            v65 = *a1;
            v65.i64[0] = v64.i64[0];
            *a3 = v65;
            a3[1] = vdupq_laneq_s64(v64, 1);
            a3 += 2;
            --v63;
          }

          while (v63);
        }

        goto LABEL_45;
      }
    }

    else if (!v23)
    {
      v28 = *(a2 + 16);
      v29 = *a2;
      v30 = *(a2 + 32);
      if (*v12.i64 == v28 || ((v31 = *(a2 + 48), v34 = vabdd_f64(*v12.i64, v28) > 2.22044605e-16, v32 = vabdd_f64(*v12.i64, v31), v34) ? (_ZF = *v12.i64 == v31) : (_ZF = 1), !_ZF ? (v34 = v32 > 2.22044605e-16) : (v34 = 0), !v34))
      {
        v35.f64[0] = *a2;
        *&v35.f64[1] = vextq_s8(v29, v29, 8uLL).u64[0];
        v36.i64[0] = *(a2 + 32);
        v36.i64[1] = vextq_s8(v30, v30, 8uLL).u64[0];
        v319 = 0;
        v30.i64[1] = *&v35.f64[1];
        v322 = v35;
        v323 = v30;
        v29.i64[1] = v36.i64[1];
        v324 = v36;
        v325 = v29;
        LOBYTE(v38) = v319;
        if (v319)
        {
          v39 = &v317;
          v40 = v319;
          do
          {
            v41 = *v39++;
            v37.i64[0] = a1[1].i64[0];
            *a3 = v41;
            a3[1] = v37;
            a3 += 2;
            --v40;
          }

          while (v40);
        }

        goto LABEL_45;
      }
    }

    v67 = *(a2 + 32);
    v68 = *(a2 + 48);
    v69 = vcgtq_f64(vminnmq_f64(v11, vminnmq_f64(v9, v15)), v67);
    if (((v69.i64[0] | v69.i64[1] | vcgtq_f64(vminnmq_f64(v12.u64[0], *&vminnmq_f64(v10.u64[0], v16.u64[0])), v68).u64[0]) & 0x8000000000000000) == 0)
    {
      v71 = *a2;
      v70 = *(a2 + 16);
      v72 = vcgtq_f64(*a2, vmaxnmq_f64(v11, vmaxnmq_f64(v9, v15)));
      if (((v72.i64[0] | v72.i64[1] | vcgtq_f64(v70, vmaxnmq_f64(v12.u64[0], *&vmaxnmq_f64(v10.u64[0], v16.u64[0]))).u64[0]) & 0x8000000000000000) == 0)
      {
        v73 = vextq_s8(v21, v21, 8uLL);
        v320 = 0;
        *&v74.f64[0] = v21.i64[0];
        v74.f64[1] = v73.f64[0];
        v75 = vmulq_f64(v74, v74);
        v75.f64[0] = sqrt(v75.f64[1] + vmulq_f64(v20, v20).f64[0] + v75.f64[0]);
        if (v75.f64[0] <= 2.22044605e-16)
        {
          goto LABEL_195;
        }

        *&v20.f64[1] = v21.i64[0];
        v76 = vdivq_f64(v73, v75);
        v77 = vdivq_f64(v20, vdupq_lane_s64(*&v75.f64[0], 0));
        v78 = vextq_s8(v77, v77, 8uLL).u64[0];
        v79 = vaddq_f64(vaddq_f64(v9, v11), v15);
        __asm { FMOV            V2.2D, #3.0 }

        v83 = vdivq_f64(v79, _Q2);
        v84 = vdivq_f64(vaddq_f64(vaddq_f64(v10, v12), v16), _Q2);
        v85.i64[0] = v71.i64[0];
        v85.i64[1] = v67.i64[1];
        v86.f64[1] = v70.f64[1];
        v86.f64[0] = v68.f64[0];
        *&v313 = vextq_s8(v71, v71, 8uLL).u64[0];
        v315 = vextq_s8(v85, v85, 8uLL);
        v87.i64[0] = v67.i64[0];
        v87.i64[1] = v71.i64[1];
        v88.f64[1] = v68.f64[1];
        v88.f64[0] = v70.f64[0];
        v89 = vextq_s8(v87, v87, 8uLL);
        v90.f64[1] = 0.0;
        v5.f64[0] = 0.0;
        v91 = vmulq_f64(v76, 0).f64[0];
        v92 = v91 + vaddvq_f64(vmulq_f64(v77, COERCE_UNSIGNED_INT64(*v67.i64 - *v71.i64)));
        v93 = vmulq_f64(v83, v77);
        v94 = vmulq_f64(v77, v71);
        v95 = vmulq_f64(v84, v76);
        if (fabs(v92) > 2.22044605e-16)
        {
          v96 = v89;
          v97 = *&v78;
          v98 = v83;
          v4 = vpaddq_f64(v94, v93);
          v99 = vmulq_f64(v76, v70);
          v100 = vaddq_f64(vzip1q_s64(v99, v95), v4);
          v4.f64[0] = v100.f64[1];
          v100.f64[0] = -(v100.f64[0] - v100.f64[1]) / v92;
          v101 = v84;
          v102 = v100.f64[0] > 1.0 || v100.f64[0] < 0.0;
          if (v102)
          {
            v103 = 0;
          }

          else
          {
            v103 = 1;
            v320 = 1;
            v90.f64[0] = *v67.i64 - *v71.i64;
            v84 = vmlaq_n_f64(v71, v90, v100.f64[0]);
            v317 = v84;
            v318 = vmlaq_n_f64(v70, 0, v100.f64[0]);
          }

          v105 = vmulq_f64(v77, v85);
          v84.f64[0] = -(*v99.i64 + vaddvq_f64(v105) - v100.f64[1]) / v92;
          if (v84.f64[0] >= 0.0 && v84.f64[0] <= 1.0)
          {
            v107 = vmlaq_f64(v70, v5, v84);
            *&v108.f64[0] = v71.i64[0];
            *&v108.f64[1] = v315.i64[0];
            v100 = vmlaq_n_f64(v108, COERCE_UNSIGNED_INT64(*v67.i64 - *v71.i64), v84.f64[0]);
            v109 = v103;
            if (v102)
            {
LABEL_69:
              v320 = ++v103;
              v114 = &v317 + 2 * v109;
              *v114 = v100;
              v114[1] = v107;
            }

            else
            {
              v110 = &v317;
              v111 = v103;
              while (1)
              {
                v112 = vsubq_f64(v100, *v110);
                v113 = vsubq_f64(v107, v110[1]);
                if (sqrt(vmulq_f64(v113, v113).f64[0] + vaddvq_f64(vmulq_f64(v112, v112))) <= 2.22044605e-16)
                {
                  break;
                }

                v110 += 2;
                if (!--v111)
                {
                  goto LABEL_69;
                }
              }
            }
          }

          v100.f64[0] = -(vmulq_f64(v76, v68).f64[0] + vaddvq_f64(v94) - v4.f64[0]) / v92;
          v115 = v100.f64[0] < 0.0 || v100.f64[0] > 1.0;
          v84 = v101;
          if (!v115)
          {
            v105 = vmlaq_f64(v86, v5, v100);
            *&v116.f64[0] = v71.i64[0];
            v116.f64[1] = v313;
            v117 = vmlaq_n_f64(v116, COERCE_UNSIGNED_INT64(*v67.i64 - *v71.i64), v100.f64[0]);
            if (v103)
            {
              v118 = v103;
              v119 = &v317;
              v120 = v103;
              while (1)
              {
                v121 = vsubq_f64(v117, *v119);
                v122 = vsubq_f64(v105, v119[1]);
                if (sqrt(vmulq_f64(v122, v122).f64[0] + vaddvq_f64(vmulq_f64(v121, v121))) <= 2.22044605e-16)
                {
                  break;
                }

                v119 += 2;
                if (!--v120)
                {
                  goto LABEL_80;
                }
              }
            }

            else
            {
              v118 = 0;
LABEL_80:
              v320 = v103 + 1;
              v123 = &v317 + 2 * v118;
              *v123 = v117;
              v123[1] = v105;
            }
          }

          *&v124.f64[0] = v71.i64[0];
          *&v124.f64[1] = v315.i64[0];
          *&v125.f64[0] = v77.i64[0];
          *&v78 = v97;
          v125.f64[1] = v97;
          v105.f64[0] = -(vmulq_f64(v76, v86).f64[0] + vaddvq_f64(vmulq_f64(v125, v124)) - v4.f64[0]) / v92;
          v126 = v105.f64[0] < 0.0 || v105.f64[0] > 1.0;
          v83 = v98;
          v89 = v96;
          if (!v126)
          {
            v3 = vmlaq_f64(v86, v5, v105);
            *&v127.f64[0] = v71.i64[0];
            *&v127.f64[1] = v315.i64[0];
            v4 = vmlaq_n_f64(v127, COERCE_UNSIGNED_INT64(*v67.i64 - *v71.i64), v105.f64[0]);
            if (v320)
            {
              v128 = &v317;
              v129 = v320;
              while (1)
              {
                v130 = vsubq_f64(v4, *v128);
                v131 = vsubq_f64(v3, v128[1]);
                if (sqrt(vmulq_f64(v131, v131).f64[0] + vaddvq_f64(vmulq_f64(v130, v130))) <= 2.22044605e-16)
                {
                  break;
                }

                v128 += 2;
                if (!--v129)
                {
                  v132 = v320;
                  goto LABEL_91;
                }
              }
            }

            else
            {
              v132 = 0;
LABEL_91:
              ++v320;
              v133 = &v317 + 2 * v132;
              *v133 = v4;
              v133[1] = v3;
            }
          }
        }

        v134.f64[0] = 0.0;
        v134.f64[1] = *&v67.i64[1] - *&v71.i64[1];
        v135 = v91 + vaddvq_f64(vmulq_f64(v77, v134));
        if (fabs(v135) > 2.22044605e-16)
        {
          v136 = *&v78;
          v137 = vmulq_f64(v76, v70);
          v138 = vaddq_f64(vzip1q_s64(v137, v95), vpaddq_f64(v94, v93));
          v139 = v138.f64[1];
          v140 = -(v138.f64[0] - v138.f64[1]) / v135;
          if (v140 >= 0.0 && v140 <= 1.0)
          {
            v4 = vmlaq_n_f64(v70, 0, v140);
            v142 = vmlaq_n_f64(v71, v134, v140);
            if (v320)
            {
              v143 = &v317;
              v144 = v320;
              while (1)
              {
                v145 = vsubq_f64(v142, *v143);
                v146 = vsubq_f64(v4, v143[1]);
                if (sqrt(vmulq_f64(v146, v146).f64[0] + vaddvq_f64(vmulq_f64(v145, v145))) <= 2.22044605e-16)
                {
                  break;
                }

                v143 += 2;
                if (!--v144)
                {
                  v147 = v320;
                  goto LABEL_103;
                }
              }
            }

            else
            {
              v147 = 0;
LABEL_103:
              ++v320;
              v148 = &v317 + 2 * v147;
              *v148 = v142;
              v148[1] = v4;
            }
          }

          v4.f64[0] = -(*v137.i64 + vaddvq_f64(vmulq_f64(v77, v87)) - v139) / v135;
          v149 = v4.f64[0] < 0.0 || v4.f64[0] > 1.0;
          *&v78 = v136;
          if (!v149)
          {
            v150.f64[0] = 0.0;
            v150.f64[1] = *&v67.i64[1] - *&v71.i64[1];
            v151 = vmlaq_f64(v88, v5, v4);
            *&v152.f64[0] = v67.i64[0];
            v152.f64[1] = v89.f64[0];
            v153 = vmlaq_n_f64(v152, v150, v4.f64[0]);
            if (v320)
            {
              v154 = &v317;
              v155 = v320;
              while (1)
              {
                v156 = vsubq_f64(v153, *v154);
                v157 = vsubq_f64(v151, v154[1]);
                if (sqrt(vmulq_f64(v157, v157).f64[0] + vaddvq_f64(vmulq_f64(v156, v156))) <= 2.22044605e-16)
                {
                  break;
                }

                v154 += 2;
                if (!--v155)
                {
                  v158 = v320;
                  goto LABEL_114;
                }
              }
            }

            else
            {
              v158 = 0;
LABEL_114:
              ++v320;
              v159 = &v317 + 2 * v158;
              *v159 = v153;
              v159[1] = v151;
            }
          }

          v3.f64[0] = -(vmulq_f64(v76, v68).f64[0] + vaddvq_f64(v94) - v139) / v135;
          if (v3.f64[0] >= 0.0 && v3.f64[0] <= 1.0)
          {
            v161.f64[0] = 0.0;
            v161.f64[1] = *&v67.i64[1] - *&v71.i64[1];
            v162 = vmlaq_f64(v86, v5, v3);
            *&v163.f64[0] = v71.i64[0];
            v163.f64[1] = v313;
            v164 = vmlaq_n_f64(v163, v161, v3.f64[0]);
            if (v320)
            {
              v165 = &v317;
              v166 = v320;
              while (1)
              {
                v167 = vsubq_f64(v164, *v165);
                v168 = vsubq_f64(v162, v165[1]);
                if (sqrt(vmulq_f64(v168, v168).f64[0] + vaddvq_f64(vmulq_f64(v167, v167))) <= 2.22044605e-16)
                {
                  break;
                }

                v165 += 2;
                if (!--v166)
                {
                  v169 = v320;
                  goto LABEL_125;
                }
              }
            }

            else
            {
              v169 = 0;
LABEL_125:
              ++v320;
              v170 = &v317 + 2 * v169;
              *v170 = v164;
              v170[1] = v162;
            }
          }

          *&v171.f64[0] = v67.i64[0];
          v171.f64[1] = v89.f64[0];
          *&v172.f64[0] = v77.i64[0];
          v172.f64[1] = v136;
          v6.f64[0] = -(vmulq_f64(v76, v68).f64[0] + vaddvq_f64(vmulq_f64(v172, v171)) - v139) / v135;
          if (v6.f64[0] >= 0.0 && v6.f64[0] <= 1.0)
          {
            v174 = vmlaq_f64(v68, v5, v6);
            v5.f64[1] = *&v67.i64[1] - *&v71.i64[1];
            *&v175.f64[0] = v67.i64[0];
            v175.f64[1] = v89.f64[0];
            v176 = vmlaq_n_f64(v175, v5, v6.f64[0]);
            if (v320)
            {
              v177 = &v317;
              v178 = v320;
              while (1)
              {
                v179 = vsubq_f64(v176, *v177);
                v180 = vsubq_f64(v174, v177[1]);
                if (sqrt(vmulq_f64(v180, v180).f64[0] + vaddvq_f64(vmulq_f64(v179, v179))) <= 2.22044605e-16)
                {
                  break;
                }

                v177 += 2;
                if (!--v178)
                {
                  v181 = v320;
                  goto LABEL_136;
                }
              }
            }

            else
            {
              v181 = 0;
LABEL_136:
              ++v320;
              v182 = &v317 + 2 * v181;
              *v182 = v176;
              v182[1] = v174;
            }
          }
        }

        v68.f64[0] = v68.f64[0] - v70.f64[0];
        v183 = 0uLL;
        v184 = vmulq_f64(v77, 0);
        v185 = vmulq_f64(v76, v68).f64[0] + vaddvq_f64(v184);
        if (fabs(v185) > 2.22044605e-16)
        {
          v186 = vpaddq_f64(v94, v93);
          v187 = vmulq_f64(v76, v70);
          v184 = vzip1q_s64(v187, v95);
          v188 = vaddq_f64(v184, v186);
          v189 = v188.f64[1];
          v190 = -(v188.f64[0] - v188.f64[1]) / v185;
          if (v190 >= 0.0 && v190 <= 1.0)
          {
            v192 = vmlaq_n_f64(v70, v68, v190);
            v193 = vmlaq_n_f64(v71, 0, v190);
            if (v320)
            {
              v194 = &v317;
              v195 = v320;
              while (1)
              {
                v196 = vsubq_f64(v193, *v194);
                v197 = vsubq_f64(v192, v194[1]);
                v184 = vmulq_f64(v196, v196);
                if (sqrt(vmulq_f64(v197, v197).f64[0] + vaddvq_f64(v184)) <= 2.22044605e-16)
                {
                  break;
                }

                v194 += 2;
                if (!--v195)
                {
                  v198 = v320;
                  goto LABEL_148;
                }
              }
            }

            else
            {
              v198 = 0;
LABEL_148:
              ++v320;
              v199 = &v317 + 2 * v198;
              *v199 = v193;
              v199[1] = v192;
            }
          }

          v200 = vextq_s8(v67, v67, 8uLL).u64[0];
          v183.f64[0] = -(*v187.i64 + vaddvq_f64(vmulq_f64(v77, v87)) - v189) / v185;
          if (v183.f64[0] >= 0.0 && v183.f64[0] <= 1.0)
          {
            v202 = vmlaq_f64(v88, v68, v183);
            v87.i64[1] = *&v89.f64[0];
            v203 = vmlaq_n_f64(v87, 0, v183.f64[0]);
            if (v320)
            {
              v204 = &v317;
              v205 = v320;
              while (1)
              {
                v206 = vsubq_f64(v203, *v204);
                v207 = vsubq_f64(v202, v204[1]);
                v184 = vmulq_f64(v206, v206);
                if (sqrt(vmulq_f64(v207, v207).f64[0] + vaddvq_f64(v184)) <= 2.22044605e-16)
                {
                  break;
                }

                v204 += 2;
                if (!--v205)
                {
                  v208 = v320;
                  goto LABEL_159;
                }
              }
            }

            else
            {
              v208 = 0;
LABEL_159:
              ++v320;
              v209 = &v317 + 2 * v208;
              *v209 = v203;
              v209[1] = v202;
            }
          }

          v89.f64[0] = -(*v187.i64 + vaddvq_f64(vmulq_f64(v77, v85)) - v189) / v185;
          if (v89.f64[0] >= 0.0 && v89.f64[0] <= 1.0)
          {
            v211 = vmlaq_f64(v70, v68, v89);
            *&v184.f64[1] = v315.i64[1];
            v85.i64[1] = v315.i64[0];
            v212 = vmlaq_n_f64(v85, 0, v89.f64[0]);
            if (v320)
            {
              v213 = &v317;
              v214 = v320;
              while (1)
              {
                v215 = vsubq_f64(v212, *v213);
                v216 = vsubq_f64(v211, v213[1]);
                v184 = vmulq_f64(v215, v215);
                if (sqrt(vmulq_f64(v216, v216).f64[0] + vaddvq_f64(v184)) <= 2.22044605e-16)
                {
                  break;
                }

                v213 += 2;
                if (!--v214)
                {
                  v217 = v320;
                  goto LABEL_170;
                }
              }
            }

            else
            {
              v217 = 0;
LABEL_170:
              ++v320;
              v218 = &v317 + 2 * v217;
              *v218 = v212;
              v218[1] = v211;
            }
          }

          *&v219.f64[0] = v67.i64[0];
          *&v219.f64[1] = v200;
          *&v220.f64[0] = v77.i64[0];
          *&v220.f64[1] = v78;
          v221 = vmulq_f64(v220, v219);
          v222 = vmulq_f64(v76, v88);
          v222.f64[0] = -(v222.f64[0] + vaddvq_f64(v221) - v189) / v185;
          if (v222.f64[0] >= 0.0 && v222.f64[0] <= 1.0)
          {
            v224 = vmlaq_f64(v88, v68, v222);
            v67.i64[1] = v200;
            v225 = vmlaq_n_f64(v67, 0, v222.f64[0]);
            if (v320)
            {
              v226 = &v317;
              v227 = v320;
              while (1)
              {
                v228 = vsubq_f64(v225, *v226);
                v229 = vsubq_f64(v224, v226[1]);
                v184 = vmulq_f64(v228, v228);
                if (sqrt(vmulq_f64(v229, v229).f64[0] + vaddvq_f64(v184)) <= 2.22044605e-16)
                {
                  break;
                }

                v226 += 2;
                if (!--v227)
                {
                  v230 = v320;
                  goto LABEL_181;
                }
              }
            }

            else
            {
              v230 = 0;
LABEL_181:
              ++v320;
              v231 = &v317 + 2 * v230;
              *v231 = v225;
              v231[1] = v224;
            }
          }
        }

        v232 = v320;
        if (!v320)
        {
          goto LABEL_195;
        }

        v233 = 0;
        v234 = vmulq_f64(v14, v14);
        v234.f64[0] = sqrt(v234.f64[0] + vaddvq_f64(vmulq_f64(v13, v13)));
        v13.i64[1] = vextq_s8(v13, v13, 8uLL).u64[0];
        v234.f64[0] = 1.0 / v234.f64[0];
        v235 = vmulq_f64(v14, v234);
        v236 = vmulq_n_f64(v13, v234.f64[0]);
        v234.f64[0] = v235.f64[0];
        *&v234.f64[1] = v236.i64[0];
        v237.i64[0] = *&v76.f64[0];
        v237.i64[1] = v77.i64[0];
        v238 = vmlaq_f64(vmulq_f64(v234, vnegq_f64(v77)), v236, v237);
        v239 = vmlaq_laneq_f64(vmulq_laneq_f64(vnegq_f64(v76), v236, 1), v235, v77, 1);
        v240 = vmulq_f64(v238, v238);
        v184.f64[0] = 1.0 / sqrt(v240.f64[1] + vmulq_f64(v239, v239).f64[0] + v240.f64[0]);
        v239.f64[1] = v238.f64[0];
        v241 = vmulq_n_f64(v239, v184.f64[0]);
        v303 = vextq_s8(v236, v236, 8uLL).u64[0];
        v304 = vextq_s8(v83, v83, 8uLL).u64[0];
        v242 = vextq_s8(v237, v237, 8uLL).u64[0];
        v243 = vdupq_laneq_s64(v77, 1);
        v244 = vmulq_laneq_f64(v184, v238, 1);
        v305 = vextq_s8(v241, v241, 8uLL).u64[0];
        v245 = 32 * v320;
        v246 = 0uLL;
        v247 = 0uLL;
        do
        {
          v248 = *(&v317 + v233);
          v247 = vaddq_f64(v247, *(&v317 + v233 + 16));
          v246 = vaddq_f64(v246, v248);
          v233 += 32;
        }

        while (v245 != v233);
        v248.f64[0] = v320;
        v249 = vdivq_f64(v246, vdupq_lane_s64(*&v248.f64[0], 0));
        v250 = vsubq_f64(v318, vdivq_f64(v247, v248));
        v251 = vsubq_f64(v317, v249);
        v252 = vmulq_f64(v251, v251);
        v252.f64[0] = sqrt(vmulq_f64(v250, v250).f64[0] + vaddvq_f64(v252));
        v308 = v236;
        v309 = v235;
        v306 = v244;
        v307 = v241;
        if (fabs(v252.f64[0]) > 1.0e-10)
        {
          v253 = 0;
          v251.i64[1] = vextq_s8(v251, v251, 8uLL).u64[0];
          v254 = vdivq_f64(v251, vdupq_lane_s64(*&v252.f64[0], 0));
          v255 = vdivq_f64(v250, v252);
          v256.f64[0] = v255.f64[0];
          v256.f64[1] = v254.f64[0];
          v237.i64[1] = v242;
          v77.i64[1] = v78;
          v257 = vmlaq_f64(vmulq_f64(v237, vnegq_f64(v254)), v77, v256);
          v258 = vmlaq_laneq_f64(vmulq_f64(v243, vnegq_f64(v255)), v76, v254, 1);
          v259 = vmulq_f64(v257, v257);
          v260 = vmulq_f64(v258, v258).f64[0];
          v258.f64[1] = v257.f64[0];
          v259.f64[0] = 1.0 / sqrt(v259.f64[1] + v260 + v259.f64[0]);
          v261 = vmulq_n_f64(v258, v259.f64[0]);
          v311 = vzip2q_s64(v254, v261);
          v312 = vzip1q_s64(v254, v261);
          v310 = vzip1q_s64(v255, vmulq_laneq_f64(v259, v257, 1));
          do
          {
            v314 = *(&v317 + v253 + 16);
            v316 = *(&v317 + v253);
            v262 = vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(v312, v316.f64[0]), v311, v316, 1), v310, *&v314);
            v263 = atan2(v262.f64[1], v262.f64[0]);
            *&v264.f64[0] = v314;
            v264.f64[1] = v263;
            v265 = (&v322 + v253);
            *v265 = v316;
            v265[1] = v264;
            v253 += 32;
          }

          while (v245 != v253);
          _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIdEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_dSI_E_PSG_Lb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(&v322, &v322.f64[4 * v232], 126 - 2 * __clz(v232), 1);
          if (v320)
          {
            for (i = 0; i < v320; ++i)
            {
              v267 = &v322 + 2 * i;
              v268 = *v267;
              v269 = v267[1];
              v270 = &v317 + 2 * i;
              *v270 = v268;
              v270[1] = v269;
              LODWORD(v232) = v320;
            }
          }

          else
          {
            LODWORD(v232) = 0;
          }

          v236 = v308;
          v235 = v309;
          v244 = v306;
          v241 = v307;
        }

        if (v232 >= 3)
        {
          v271 = 0;
          v272 = vsubq_f64(*a1, v83);
          v273 = vsubq_f64(a1[1], v84);
          v274 = vmulq_f64(v235, v273);
          v275 = vmulq_f64(v236, v272);
          v276 = vmulq_f64(v244, v273);
          v277 = vmulq_f64(v241, v272);
          v278 = vsubq_f64(a1[2], v83);
          v279 = vsubq_f64(a1[3], v84);
          v280 = vmulq_f64(v235, v279);
          v281 = vmulq_f64(v236, v278);
          v282 = vmulq_f64(v244, v279);
          v283 = vmulq_f64(v241, v278);
          v284 = vsubq_f64(a1[4], v83);
          v285 = vsubq_f64(a1[5], v84);
          v286 = vmulq_f64(v235, v285);
          v287 = vmulq_f64(v236, v284);
          v288 = vmulq_f64(v244, v285);
          v289 = vmulq_f64(v241, v284);
          do
          {
            v290 = &v317 + 2 * v271;
            v291 = vsubq_f64(*v290, v83);
            v292 = vsubq_f64(v290[1], v84);
            v321[v271++] = vaddq_f64(vzip1q_s64(vmulq_f64(v235, v292), vmulq_f64(v244, v292)), vpaddq_f64(vmulq_f64(v236, v291), vmulq_f64(v241, v291)));
          }

          while (v232 != v271);
          v326 = 0;
          v38 = v326;
          v320 = v326;
          if (v326)
          {
            v293 = 0;
            *&v296.f64[0] = v307.i64[0];
            *&v294.f64[0] = v308.i64[0];
            *&v294.f64[1] = v303;
            *&v295.f64[0] = v83.i64[0];
            *&v295.f64[1] = v304;
            *&v296.f64[1] = v305;
            do
            {
              v297 = *(&v322 + v293);
              v298 = &v317 + 2 * v293;
              *v298 = vmlaq_laneq_f64(vmlaq_n_f64(v295, v294, v297.f64[0]), v296, v297, 1);
              v298[1] = vmlaq_laneq_f64(vmlaq_f64(v84, v309, v297), v306, v297, 1);
              ++v293;
            }

            while (v38 != v293);
            LOBYTE(v38) = v320;
            if (v320)
            {
              v299 = &v317;
              v300 = v320;
              do
              {
                v301 = *v299;
                v302 = v299[1];
                v299 += 2;
                *a3 = v301;
                a3[1] = v302;
                a3 += 2;
                --v300;
              }

              while (v300);
            }
          }
        }

        else
        {
LABEL_195:
          LOBYTE(v38) = 0;
        }

LABEL_45:
        if (v38 > 2u)
        {
          return v38;
        }
      }
    }
  }

  LOBYTE(v38) = 0;
  return v38;
}

uint64_t geom_intersect_triangle_bbox_3f(int32x4_t *a1, int8x16_t a2, int8x16_t a3, int8x16_t a4, __n128 a5, __n128 a6)
{
  v6 = 0;
  v14 = *MEMORY[0x277D85DE8];
  v12[0] = a2;
  v12[1] = a3;
  v12[2] = a4;
  v13[0] = a5;
  v13[1] = a6;
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  v8 = vnegq_f32(v7);
  do
  {
    v9 = v13[v6];
    v9.i32[3] = 0;
    v8.i32[3] = 0;
    v8 = vminnmq_f32(v9, v8);
    v7.i32[3] = 0;
    v7 = vmaxnmq_f32(v9, v7);
    ++v6;
  }

  while (v6 != 2);
  v11[0] = v8;
  v11[1] = v7;
  return geom::intersect_triangle_bbox_3<float>(v12, v11, a1);
}

uint64_t geom_intersect_triangle_bbox_3d(int8x16_t *a1, float64x2_t *a2, int64x2_t *a3)
{
  v3 = 0;
  v17 = *MEMORY[0x277D85DE8];
  v4 = a1[3];
  v15[2] = a1[2];
  v15[3] = v4;
  v5 = a1[5];
  v15[4] = a1[4];
  v15[5] = v5;
  v6 = a1[1];
  v15[0] = *a1;
  v15[1] = v6;
  v8 = a2[1];
  v16[0] = *a2;
  v16[1] = v8;
  v10 = a2[3];
  v7 = vdupq_n_s64(0x7FF0000000000000uLL);
  v8.f64[0] = INFINITY;
  v16[2] = a2[2];
  v16[3] = v10;
  v9 = vdupq_n_s64(0xFFF0000000000000);
  v10.f64[0] = -INFINITY;
  do
  {
    v11 = v16[v3];
    v12 = v16[v3 + 1];
    v7 = vminnmq_f64(v11, v7);
    v8 = vminnmq_f64(v12, *&v8.f64[0]);
    v9 = vmaxnmq_f64(v11, v9);
    v10 = vmaxnmq_f64(v12, *&v10.f64[0]);
    v3 += 2;
  }

  while (v3 != 4);
  v14[0] = v7;
  v14[1] = v8;
  v14[2] = v9;
  v14[3] = v10;
  return geom::intersect_triangle_bbox_3<double>(v15, v14, a3);
}

void geom::anonymous namespace::clip_2d_triangle_with_polygon<float>(unsigned int a1, uint64_t a2, float32x2_t *a3, float32x2_t a4, float32x2_t a5, float32x2_t a6)
{
  v8 = 1;
  a3[9].i8[0] = 1;
  *a3 = a4;
  v9 = vsub_f32(a5, a4);
  if (sqrtf(vaddv_f32(vmul_f32(v9, v9))) > 0.00000011921)
  {
    v8 = 2;
    a3[9].i8[0] = 2;
    a3[1] = a5;
  }

  v10 = a3;
  v11 = v8;
  while (1)
  {
    v12 = vsub_f32(a6, *v10);
    if (sqrtf(vaddv_f32(vmul_f32(v12, v12))) <= 0.00000011921)
    {
      break;
    }

    ++v10;
    if (!--v11)
    {
      a3[9].i8[0] = v8 + 1;
      a3[v8] = a6;
      break;
    }
  }

  if (a1)
  {
    v13 = 0;
    v14 = a1;
    do
    {
      v65 = a3[9].u8[0];
      if (v65)
      {
        for (i = 0; i < v65; ++i)
        {
          v64[i] = a3[i];
          v16 = v65;
        }

        a3[9].i8[0] = 0;
        v17 = v13 + 1;
        if (v13 + 1 == v14)
        {
          v18 = 0;
        }

        else
        {
          v18 = (v13 + 1);
        }

        if (v16)
        {
          v19 = 0;
          while (1)
          {
            v20 = v64[v19];
            v21 = _simd_orient_pf2(*(a2 + 8 * v13), *(a2 + 8 * v18), v20);
            v22 = v64[(v19 + v16 - 1) % v16];
            v23 = _simd_orient_pf2(*(a2 + 8 * v13), *(a2 + 8 * v18), v22);
            if (v21 >= 0.0)
            {
              break;
            }

            if (v23 >= 0.0)
            {
              v24 = *(a2 + 8 * v13);
              v25 = vsub_f32(*(a2 + 8 * v18), v24);
              v26 = vsub_f32(v22, v20);
              v27 = (-v26.f32[1] * v25.f32[0]) + (v26.f32[0] * v25.f32[1]);
              if (fabsf(v27) > 0.00000011921)
              {
                v28 = vsub_f32(v24, v20);
                v20 = vmla_n_f32(v20, v26, ((v28.f32[0] * v25.f32[1]) - (v28.f32[1] * v25.f32[0])) / v27);
                v29 = a3[9].u8[0];
                v30 = a3;
                v31 = v29;
                if (a3[9].i8[0])
                {
                  while (1)
                  {
                    v32 = vsub_f32(v20, *v30);
                    if (sqrtf(vaddv_f32(vmul_f32(v32, v32))) <= 0.00000011921)
                    {
                      goto LABEL_69;
                    }

                    ++v30;
                    if (!--v31)
                    {
                      LOBYTE(v33) = a3[9].i8[0];
                      goto LABEL_68;
                    }
                  }
                }

                LOBYTE(v33) = a3[9].i8[0];
                goto LABEL_68;
              }

              v33 = a3[9].u8[0];
              v47 = a3;
              v48 = a3[9].u8[0];
              if (a3[9].i8[0])
              {
                while (1)
                {
                  v49 = vsub_f32(v22, *v47);
                  if (sqrtf(vaddv_f32(vmul_f32(v49, v49))) <= 0.00000011921)
                  {
                    break;
                  }

                  ++v47;
                  if (!--v48)
                  {
                    v50 = a3[9].u8[0];
                    goto LABEL_47;
                  }
                }

                if (a3[9].i8[0])
                {
LABEL_58:
                  v29 = v33;
                  v58 = a3;
                  v59 = v33;
                  while (1)
                  {
                    v60 = vsub_f32(v20, *v58);
                    if (sqrtf(vaddv_f32(vmul_f32(v60, v60))) <= 0.00000011921)
                    {
                      goto LABEL_69;
                    }

                    ++v58;
                    if (!--v59)
                    {
                      goto LABEL_68;
                    }
                  }
                }
              }

              else
              {
                v50 = 0;
LABEL_47:
                a3[9].i8[0] = v33 + 1;
                a3[v50] = v22;
                v33 = a3[9].u8[0];
                if (a3[9].i8[0])
                {
                  goto LABEL_58;
                }
              }

LABEL_67:
              v29 = 0;
LABEL_68:
              a3[9].i8[0] = v33 + 1;
              a3[v29] = v20;
            }

LABEL_69:
            if (++v19 == v16)
            {
              goto LABEL_72;
            }
          }

          if (v23 >= 0.0)
          {
            LOBYTE(v33) = a3[9].i8[0];
            v44 = a3;
            v45 = v33;
            if (v33)
            {
              while (1)
              {
                v46 = vsub_f32(v20, *v44);
                if (sqrtf(vaddv_f32(vmul_f32(v46, v46))) <= 0.00000011921)
                {
                  goto LABEL_69;
                }

                ++v44;
                if (!--v45)
                {
                  v29 = a3[9].u8[0];
                  goto LABEL_68;
                }
              }
            }
          }

          else
          {
            v34 = *(a2 + 8 * v13);
            v35 = vsub_f32(*(a2 + 8 * v18), v34);
            v36 = vsub_f32(v22, v20);
            v37 = (-v36.f32[1] * v35.f32[0]) + (v36.f32[0] * v35.f32[1]);
            if (fabsf(v37) <= 0.00000011921)
            {
              v33 = a3[9].u8[0];
              v51 = a3;
              v52 = a3[9].u8[0];
              if (a3[9].i8[0])
              {
                while (1)
                {
                  v53 = vsub_f32(v22, *v51);
                  if (sqrtf(vaddv_f32(vmul_f32(v53, v53))) <= 0.00000011921)
                  {
                    break;
                  }

                  ++v51;
                  if (!--v52)
                  {
                    v54 = a3[9].u8[0];
                    goto LABEL_50;
                  }
                }

                if (a3[9].i8[0])
                {
LABEL_63:
                  v29 = v33;
                  v61 = a3;
                  v62 = v33;
                  while (1)
                  {
                    v63 = vsub_f32(v20, *v61);
                    if (sqrtf(vaddv_f32(vmul_f32(v63, v63))) <= 0.00000011921)
                    {
                      goto LABEL_69;
                    }

                    ++v61;
                    if (!--v62)
                    {
                      goto LABEL_68;
                    }
                  }
                }
              }

              else
              {
                v54 = 0;
LABEL_50:
                a3[9].i8[0] = v33 + 1;
                a3[v54] = v22;
                v33 = a3[9].u8[0];
                if (a3[9].i8[0])
                {
                  goto LABEL_63;
                }
              }
            }

            else
            {
              v38 = vsub_f32(v34, v20);
              v39 = vmla_n_f32(v20, v36, ((v38.f32[0] * v35.f32[1]) - (v38.f32[1] * v35.f32[0])) / v37);
              v33 = a3[9].u8[0];
              v40 = a3;
              v41 = a3[9].u8[0];
              if (a3[9].i8[0])
              {
                while (1)
                {
                  v42 = vsub_f32(v39, *v40);
                  if (sqrtf(vaddv_f32(vmul_f32(v42, v42))) <= 0.00000011921)
                  {
                    break;
                  }

                  ++v40;
                  if (!--v41)
                  {
                    v43 = a3[9].u8[0];
                    goto LABEL_44;
                  }
                }

                if (a3[9].i8[0])
                {
LABEL_53:
                  v29 = v33;
                  v55 = a3;
                  v56 = v33;
                  while (1)
                  {
                    v57 = vsub_f32(v20, *v55);
                    if (sqrtf(vaddv_f32(vmul_f32(v57, v57))) <= 0.00000011921)
                    {
                      goto LABEL_69;
                    }

                    ++v55;
                    if (!--v56)
                    {
                      goto LABEL_68;
                    }
                  }
                }
              }

              else
              {
                v43 = 0;
LABEL_44:
                a3[9].i8[0] = v33 + 1;
                a3[v43] = v39;
                v33 = a3[9].u8[0];
                if (a3[9].i8[0])
                {
                  goto LABEL_53;
                }
              }
            }
          }

          goto LABEL_67;
        }
      }

      else
      {
        v17 = v13 + 1;
      }

LABEL_72:
      v13 = v17;
    }

    while (v17 != v14);
  }
}

uint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIfEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_fSI_E_PSG_Lb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(uint64_t result, float *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (*(a2 - 1) < *(v8 + 12))
        {
          v71 = *v8;
          goto LABEL_113;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v74 = *(v8 + 28);
      v75 = *(v8 + 12);
      v76 = *(v8 + 44);
      if (v74 >= v75)
      {
        if (v76 < v74)
        {
          v123 = *(v8 + 16);
          v124 = *(v8 + 32);
          *(v8 + 16) = v124;
          *(v8 + 32) = v123;
          v76 = *(&v123 + 3);
          if (*(&v124 + 3) < v75)
          {
            v125 = *v8;
            *v8 = v124;
            *(v8 + 16) = v125;
          }
        }
      }

      else
      {
        v77 = *v8;
        LODWORD(v78) = HIDWORD(*v8);
        if (v76 < v74)
        {
          *v8 = *(v8 + 32);
          goto LABEL_190;
        }

        *v8 = *(v8 + 16);
        *(v8 + 16) = v77;
        if (v76 < v78)
        {
          *(v8 + 16) = *(v8 + 32);
LABEL_190:
          *(v8 + 32) = v77;
          v76 = v78;
        }
      }

      if (*(a2 - 1) >= v76)
      {
        return result;
      }

      v135 = *(v8 + 32);
      *(v8 + 32) = *(a2 - 1);
      *(a2 - 1) = v135;
      if (*(v8 + 44) >= *(v8 + 28))
      {
        return result;
      }

      v137 = *(v8 + 16);
      v136 = *(v8 + 32);
      *(v8 + 16) = v136;
      *(v8 + 32) = v137;
      v138 = *(&v136 + 3);
      goto LABEL_204;
    }

    if (v9 == 5)
    {
      v65 = *(v8 + 28);
      v66 = *(v8 + 12);
      v67 = *(v8 + 44);
      if (v65 < v66)
      {
        v68 = *v8;
        LODWORD(v69) = HIDWORD(*v8);
        if (v67 < v65)
        {
          v70 = *(v8 + 32);
          *v8 = v70;
          *(v8 + 32) = v68;
          v66 = *(&v70 + 3);
          goto LABEL_196;
        }

        v133 = *(v8 + 16);
        *v8 = v133;
        *(v8 + 16) = v68;
        v66 = *(&v133 + 3);
        if (v67 < v69)
        {
          v134 = *(v8 + 32);
          *(v8 + 16) = v134;
          *(v8 + 32) = v68;
          v65 = *(&v134 + 3);
          goto LABEL_196;
        }

        v65 = v69;
LABEL_195:
        v69 = v67;
        goto LABEL_196;
      }

      if (v67 >= v65)
      {
        goto LABEL_195;
      }

      v118 = *(v8 + 16);
      v119 = *(v8 + 32);
      *(v8 + 16) = v119;
      *(v8 + 32) = v118;
      v65 = *(&v119 + 3);
      v69 = *(&v118 + 3);
      if (*(&v119 + 3) < v66)
      {
        v120 = *v8;
        *v8 = v119;
        *(v8 + 16) = v120;
        v66 = *(&v119 + 3);
        v65 = *(&v120 + 3);
      }

LABEL_196:
      v139 = *(v8 + 60);
      if (v139 < v69)
      {
        v141 = *(v8 + 32);
        v140 = *(v8 + 48);
        *(v8 + 32) = v140;
        *(v8 + 48) = v141;
        v139 = *(&v141 + 3);
        if (*(&v140 + 3) < v65)
        {
          v142 = *(v8 + 16);
          *(v8 + 16) = v140;
          *(v8 + 32) = v142;
          if (*(&v140 + 3) < v66)
          {
            v143 = *v8;
            *v8 = v140;
            *(v8 + 16) = v143;
          }
        }
      }

      if (*(a2 - 1) >= v139)
      {
        return result;
      }

      v144 = *(v8 + 48);
      *(v8 + 48) = *(a2 - 1);
      *(a2 - 1) = v144;
      if (*(v8 + 60) >= *(v8 + 44))
      {
        return result;
      }

      v145 = *(v8 + 32);
      v136 = *(v8 + 48);
      *(v8 + 32) = v136;
      *(v8 + 48) = v145;
      v138 = *(&v136 + 3);
      if (*(&v136 + 3) >= *(v8 + 28))
      {
        return result;
      }

      v146 = *(v8 + 16);
      *(v8 + 16) = v136;
      *(v8 + 32) = v146;
LABEL_204:
      if (v138 < *(v8 + 12))
      {
        v147 = *v8;
        *v8 = v136;
        *(v8 + 16) = v147;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v79 = (v8 + 16);
      v81 = v8 == a2 || v79 == a2;
      if (a4)
      {
        if (!v81)
        {
          v82 = 0;
          v83 = v8;
          do
          {
            v84 = v83[7];
            v85 = v83[3];
            v83 = v79;
            if (v84 < v85)
            {
              v86 = *v79;
              LODWORD(v87) = HIDWORD(*v79);
              v88 = v82;
              while (1)
              {
                *(v8 + v88 + 16) = *(v8 + v88);
                if (!v88)
                {
                  break;
                }

                v89 = *(v8 + v88 - 4);
                v88 -= 16;
                if (v87 >= v89)
                {
                  v90 = (v8 + v88 + 16);
                  goto LABEL_133;
                }
              }

              v90 = v8;
LABEL_133:
              *v90 = v86;
            }

            v79 = v83 + 4;
            v82 += 16;
          }

          while (v83 + 4 != a2);
        }
      }

      else if (!v81)
      {
        do
        {
          v126 = *(v7 + 28);
          v127 = *(v7 + 12);
          v7 = v79;
          if (v126 < v127)
          {
            v128 = *v79;
            LODWORD(v129) = HIDWORD(*v79);
            v130 = v79;
            do
            {
              v131 = v130;
              v132 = *(v130 - 1);
              v130 -= 4;
              *v131 = v132;
            }

            while (v129 < *(v131 - 5));
            *v130 = v128;
          }

          v79 = (v7 + 16);
        }

        while ((v7 + 16) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return result;
      }

      v91 = (v9 - 2) >> 1;
      v92 = v91;
      do
      {
        v93 = v92;
        if (v91 >= v92)
        {
          v94 = (2 * v92) | 1;
          v95 = v8 + 16 * v94;
          if (2 * v93 + 2 < v9 && *(v95 + 12) < *(v95 + 28))
          {
            v95 += 16;
            v94 = 2 * v93 + 2;
          }

          v96 = v8 + 16 * v93;
          if (*(v95 + 12) >= *(v96 + 12))
          {
            v97 = *v96;
            LODWORD(v98) = HIDWORD(*v96);
            do
            {
              v99 = v96;
              v96 = v95;
              *v99 = *v95;
              if (v91 < v94)
              {
                break;
              }

              v100 = 2 * v94;
              v94 = (2 * v94) | 1;
              v95 = v8 + 16 * v94;
              v101 = v100 + 2;
              if (v101 < v9 && *(v95 + 12) < *(v95 + 28))
              {
                v95 += 16;
                v94 = v101;
              }
            }

            while (*(v95 + 12) >= v98);
            *v96 = v97;
          }
        }

        v92 = v93 - 1;
      }

      while (v93);
      while (2)
      {
        v102 = 0;
        v103 = *v8;
        v104 = v8;
        do
        {
          v105 = &v104[v102];
          v106 = v105 + 4;
          v107 = (2 * v102) | 1;
          v102 = 2 * v102 + 2;
          if (v102 >= v9)
          {
            v102 = v107;
          }

          else
          {
            v108 = v105[7];
            v109 = v105[11];
            v110 = v105 + 8;
            if (v108 >= v109)
            {
              v102 = v107;
            }

            else
            {
              v106 = v110;
            }
          }

          *v104 = *v106;
          v104 = v106;
        }

        while (v102 <= ((v9 - 2) >> 1));
        a2 -= 4;
        if (v106 == a2)
        {
LABEL_164:
          *v106 = v103;
        }

        else
        {
          *v106 = *a2;
          *a2 = v103;
          v111 = (v106 - v8 + 16) >> 4;
          v112 = v111 < 2;
          v113 = v111 - 2;
          if (!v112)
          {
            v114 = v113 >> 1;
            v115 = (v8 + 16 * v114);
            if (v115[3] < v106[3])
            {
              v103 = *v106;
              LODWORD(v116) = HIDWORD(*v106);
              do
              {
                v117 = v106;
                v106 = v115;
                *v117 = *v115;
                if (!v114)
                {
                  break;
                }

                v114 = (v114 - 1) >> 1;
                v115 = (v8 + 16 * v114);
              }

              while (v115[3] < v116);
              goto LABEL_164;
            }
          }
        }

        v112 = v9-- <= 2;
        if (v112)
        {
          return result;
        }

        continue;
      }
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = *(v10 + 12);
      if (v12 >= *(v8 + 12))
      {
        if (v11 < v12)
        {
          v16 = *v10;
          *v10 = *(a2 - 1);
          *(a2 - 1) = v16;
          if (*(v10 + 12) < *(v8 + 12))
          {
            v17 = *v8;
            *v8 = *v10;
            *v10 = v17;
          }
        }
      }

      else
      {
        v13 = *v8;
        if (v11 < v12)
        {
          *v8 = *(a2 - 1);
          goto LABEL_27;
        }

        *v8 = *v10;
        *v10 = v13;
        if (*(a2 - 1) < *(&v13 + 3))
        {
          *v10 = *(a2 - 1);
LABEL_27:
          *(a2 - 1) = v13;
        }
      }

      v20 = (v10 - 16);
      v21 = *(v10 - 4);
      v22 = *(a2 - 5);
      if (v21 >= *(v8 + 28))
      {
        if (v22 < v21)
        {
          v24 = *v20;
          *v20 = *(a2 - 2);
          *(a2 - 2) = v24;
          if (*(v10 - 4) < *(v8 + 28))
          {
            v25 = *(v8 + 16);
            *(v8 + 16) = *v20;
            *v20 = v25;
          }
        }
      }

      else
      {
        v23 = *(v8 + 16);
        if (v22 < v21)
        {
          *(v8 + 16) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v8 + 16) = *v20;
        *v20 = v23;
        if (*(a2 - 5) < *(&v23 + 3))
        {
          *v20 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v23;
        }
      }

      v26 = (v10 + 16);
      v27 = *(v10 + 28);
      v28 = *(a2 - 9);
      if (v27 >= *(v8 + 44))
      {
        if (v28 < v27)
        {
          v30 = *v26;
          *v26 = *(a2 - 3);
          *(a2 - 3) = v30;
          if (*(v10 + 28) < *(v8 + 44))
          {
            v31 = *(v8 + 32);
            *(v8 + 32) = *v26;
            *v26 = v31;
          }
        }
      }

      else
      {
        v29 = *(v8 + 32);
        if (v28 < v27)
        {
          *(v8 + 32) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v8 + 32) = *v26;
        *v26 = v29;
        if (*(a2 - 9) < *(&v29 + 3))
        {
          *v26 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v29;
        }
      }

      v32 = *(v10 + 12);
      v33 = *(v10 - 4);
      v34 = *(v10 + 28);
      if (v32 >= v33)
      {
        v35 = *v10;
        if (v34 >= v32)
        {
          goto LABEL_58;
        }

        v36 = *v26;
        *v10 = *v26;
        *v26 = v35;
        if (*(&v36 + 3) < v33)
        {
          v35 = *v20;
          *v20 = v36;
          *v10 = v35;
          goto LABEL_58;
        }
      }

      else
      {
        v35 = *v20;
        if (v34 < v32)
        {
          *v20 = *v26;
          *v26 = v35;
          v35 = *v10;
LABEL_58:
          v37 = *v8;
          *v8 = v35;
          *v10 = v37;
          goto LABEL_59;
        }

        *v20 = *v10;
        *v10 = v35;
        if (v34 >= *(&v35 + 3))
        {
          goto LABEL_58;
        }

        v36 = *v26;
        *v10 = *v26;
        *v26 = v35;
      }

      v35 = v36;
      goto LABEL_58;
    }

    v14 = *(v8 + 12);
    if (v14 >= *(v10 + 12))
    {
      if (v11 < v14)
      {
        v18 = *v8;
        *v8 = *(a2 - 1);
        *(a2 - 1) = v18;
        if (*(v8 + 12) < *(v10 + 12))
        {
          v19 = *v10;
          *v10 = *v8;
          *v8 = v19;
        }
      }

      goto LABEL_59;
    }

    v15 = *v10;
    if (v11 < v14)
    {
      *v10 = *(a2 - 1);
LABEL_36:
      *(a2 - 1) = v15;
      goto LABEL_59;
    }

    *v10 = *v8;
    *v8 = v15;
    if (*(a2 - 1) < *(&v15 + 3))
    {
      *v8 = *(a2 - 1);
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v38 = *v8;
LABEL_62:
      v39 = 0;
      do
      {
        v40 = *(v8 + v39 + 28);
        v39 += 16;
      }

      while (v40 < *(&v38 + 3));
      v41 = v8 + v39;
      v42 = a2;
      if (v39 == 16)
      {
        v45 = a2;
        while (v41 < v45)
        {
          v43 = v45 - 4;
          v46 = *(v45 - 1);
          v45 -= 4;
          if (v46 < *(&v38 + 3))
          {
            goto LABEL_72;
          }
        }

        v43 = v45;
      }

      else
      {
        do
        {
          v43 = v42 - 4;
          v44 = *(v42 - 1);
          v42 -= 4;
        }

        while (v44 >= *(&v38 + 3));
      }

LABEL_72:
      if (v41 >= v43)
      {
        v52 = v41 - 16;
      }

      else
      {
        v47 = v41;
        v48 = v43;
        do
        {
          v49 = *v47;
          *v47 = *v48;
          *v48 = v49;
          do
          {
            v50 = *(v47 + 28);
            v47 += 16;
          }

          while (v50 < *(&v38 + 3));
          do
          {
            v51 = *(v48 - 1);
            v48 -= 4;
          }

          while (v51 >= *(&v38 + 3));
        }

        while (v47 < v48);
        v52 = v47 - 16;
      }

      if (v52 != v8)
      {
        *v8 = *v52;
      }

      *v52 = v38;
      if (v41 < v43)
      {
        goto LABEL_85;
      }

      v53 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIfEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_fSI_E_PSG_EEbT1_SM_T0_(v8, v52);
      v8 = v52 + 16;
      result = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIfEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_fSI_E_PSG_EEbT1_SM_T0_((v52 + 16), a2);
      if (result)
      {
        a2 = v52;
        if (v53)
        {
          return result;
        }

        goto LABEL_2;
      }

      if (!v53)
      {
LABEL_85:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIfEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_fSI_E_PSG_Lb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(v7, v52, a3, a4 & 1);
        a4 = 0;
        v8 = v52 + 16;
      }
    }

    else
    {
      v38 = *v8;
      if (*(v8 - 4) < *(v8 + 12))
      {
        goto LABEL_62;
      }

      if (*(&v38 + 3) >= *(a2 - 1))
      {
        v56 = v8 + 16;
        do
        {
          v8 = v56;
          if (v56 >= a2)
          {
            break;
          }

          v57 = *(v56 + 12);
          v56 += 16;
        }

        while (*(&v38 + 3) >= v57);
      }

      else
      {
        v54 = v8;
        do
        {
          v8 = v54 + 16;
          v55 = *(v54 + 28);
          v54 += 16;
        }

        while (*(&v38 + 3) >= v55);
      }

      v58 = a2;
      if (v8 < a2)
      {
        v59 = a2;
        do
        {
          v58 = v59 - 4;
          v60 = *(v59 - 1);
          v59 -= 4;
        }

        while (*(&v38 + 3) < v60);
      }

      while (v8 < v58)
      {
        v61 = *v8;
        *v8 = *v58;
        *v58 = v61;
        do
        {
          v62 = *(v8 + 28);
          v8 += 16;
        }

        while (*(&v38 + 3) >= v62);
        do
        {
          v63 = *(v58 - 1);
          v58 -= 4;
        }

        while (*(&v38 + 3) < v63);
      }

      v64 = (v8 - 16);
      if (v8 - 16 != v7)
      {
        *v7 = *v64;
      }

      a4 = 0;
      *v64 = v38;
    }
  }

  v72 = *(v8 + 28);
  v73 = *(a2 - 1);
  if (v72 < *(v8 + 12))
  {
    v71 = *v8;
    if (v73 >= v72)
    {
      *v8 = *(v8 + 16);
      *(v8 + 16) = v71;
      if (*(a2 - 1) >= *(&v71 + 3))
      {
        return result;
      }

      *(v8 + 16) = *(a2 - 1);
    }

    else
    {
LABEL_113:
      *v8 = *(a2 - 1);
    }

    *(a2 - 1) = v71;
    return result;
  }

  if (v73 < v72)
  {
    v121 = *(v8 + 16);
    *(v8 + 16) = *(a2 - 1);
    *(a2 - 1) = v121;
    if (*(v8 + 28) < *(v8 + 12))
    {
      v122 = *v8;
      *v8 = *(v8 + 16);
      *(v8 + 16) = v122;
    }
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIfEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_fSI_E_PSG_EEbT1_SM_T0_(float *a1, char *a2)
{
  v2 = (a2 - a1) >> 4;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v10 = a1[7];
      v11 = *(a2 - 1);
      if (v10 >= a1[3])
      {
        if (v11 < v10)
        {
          v21 = *(a1 + 1);
          *(a1 + 1) = *(a2 - 1);
          *(a2 - 1) = v21;
          if (a1[7] < a1[3])
          {
            v22 = *a1;
            *a1 = *(a1 + 1);
            *(a1 + 1) = v22;
          }
        }

        return 1;
      }

      v3 = *a1;
      if (v11 >= v10)
      {
        *a1 = *(a1 + 1);
        *(a1 + 1) = v3;
        if (*(a2 - 1) >= *(&v3 + 3))
        {
          return 1;
        }

        *(a1 + 1) = *(a2 - 1);
        goto LABEL_15;
      }

LABEL_14:
      *a1 = *(a2 - 1);
LABEL_15:
      *(a2 - 1) = v3;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1[7];
      v5 = a1[3];
      v6 = a1[11];
      if (v4 >= v5)
      {
        if (v6 < v4)
        {
          v26 = *(a1 + 1);
          v27 = *(a1 + 2);
          *(a1 + 1) = v27;
          *(a1 + 2) = v26;
          v4 = *(&v27 + 3);
          v8 = *(&v26 + 3);
          if (*(&v27 + 3) < v5)
          {
            v28 = *a1;
            *a1 = v27;
            *(a1 + 1) = v28;
            v5 = *(&v27 + 3);
            v4 = *(&v28 + 3);
          }

          goto LABEL_61;
        }
      }

      else
      {
        v7 = *a1;
        LODWORD(v8) = HIDWORD(*a1);
        if (v6 < v4)
        {
          v9 = *(a1 + 2);
          *a1 = v9;
          *(a1 + 2) = v7;
          v5 = *(&v9 + 3);
          goto LABEL_61;
        }

        v41 = *(a1 + 1);
        *a1 = v41;
        *(a1 + 1) = v7;
        v5 = *(&v41 + 3);
        if (v6 < v8)
        {
          v42 = *(a1 + 2);
          *(a1 + 1) = v42;
          *(a1 + 2) = v7;
          v4 = *(&v42 + 3);
          goto LABEL_61;
        }

        v4 = v8;
      }

      v8 = v6;
LABEL_61:
      v48 = a1[15];
      if (v48 < v8)
      {
        v50 = *(a1 + 2);
        v49 = *(a1 + 3);
        *(a1 + 2) = v49;
        *(a1 + 3) = v50;
        v48 = *(&v50 + 3);
        if (*(&v49 + 3) < v4)
        {
          v51 = *(a1 + 1);
          *(a1 + 1) = v49;
          *(a1 + 2) = v51;
          if (*(&v49 + 3) < v5)
          {
            v52 = *a1;
            *a1 = v49;
            *(a1 + 1) = v52;
          }
        }
      }

      if (*(a2 - 1) >= v48)
      {
        return 1;
      }

      v53 = *(a1 + 3);
      *(a1 + 3) = *(a2 - 1);
      *(a2 - 1) = v53;
      if (a1[15] >= a1[11])
      {
        return 1;
      }

      v54 = *(a1 + 2);
      v44 = *(a1 + 3);
      *(a1 + 2) = v44;
      *(a1 + 3) = v54;
      v46 = *(&v44 + 3);
      if (*(&v44 + 3) >= a1[7])
      {
        return 1;
      }

      v55 = *(a1 + 1);
      *(a1 + 1) = v44;
      *(a1 + 2) = v55;
      goto LABEL_69;
    }

    v16 = a1[7];
    v17 = a1[3];
    v18 = a1[11];
    if (v16 >= v17)
    {
      if (v18 < v16)
      {
        v29 = *(a1 + 1);
        v30 = *(a1 + 2);
        *(a1 + 1) = v30;
        *(a1 + 2) = v29;
        v18 = *(&v29 + 3);
        if (*(&v30 + 3) < v17)
        {
          v31 = *a1;
          *a1 = v30;
          *(a1 + 1) = v31;
        }
      }

      goto LABEL_55;
    }

    v19 = *a1;
    LODWORD(v20) = HIDWORD(*a1);
    if (v18 >= v16)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v19;
      if (v18 >= v20)
      {
        goto LABEL_55;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v19;
    v18 = v20;
LABEL_55:
    if (*(a2 - 1) >= v18)
    {
      return 1;
    }

    v43 = *(a1 + 2);
    *(a1 + 2) = *(a2 - 1);
    *(a2 - 1) = v43;
    if (a1[11] >= a1[7])
    {
      return 1;
    }

    v45 = *(a1 + 1);
    v44 = *(a1 + 2);
    *(a1 + 1) = v44;
    *(a1 + 2) = v45;
    v46 = *(&v44 + 3);
LABEL_69:
    if (v46 < a1[3])
    {
      v56 = *a1;
      *a1 = v44;
      *(a1 + 1) = v56;
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 1) < a1[3])
    {
      v3 = *a1;
      goto LABEL_14;
    }

    return 1;
  }

LABEL_16:
  v12 = a1[7];
  v13 = a1[3];
  v14 = a1[11];
  if (v12 >= v13)
  {
    if (v14 < v12)
    {
      v24 = *(a1 + 1);
      v23 = *(a1 + 2);
      *(a1 + 1) = v23;
      *(a1 + 2) = v24;
      if (*(&v23 + 3) < v13)
      {
        v25 = *a1;
        *a1 = v23;
        *(a1 + 1) = v25;
      }
    }
  }

  else
  {
    v15 = *a1;
    if (v14 >= v12)
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v15;
      if (v14 >= *(&v15 + 3))
      {
        goto LABEL_39;
      }

      *(a1 + 1) = *(a1 + 2);
    }

    else
    {
      *a1 = *(a1 + 2);
    }

    *(a1 + 2) = v15;
  }

LABEL_39:
  v32 = a1 + 12;
  if (a1 + 12 == a2)
  {
    return 1;
  }

  v33 = 0;
  v34 = 0;
  v35 = a1 + 8;
  while (1)
  {
    if (v32[3] < v35[3])
    {
      v36 = *v32;
      LODWORD(v37) = HIDWORD(*v32);
      v38 = v33;
      while (1)
      {
        *(a1 + v38 + 48) = *(a1 + v38 + 32);
        if (v38 == -32)
        {
          break;
        }

        v39 = *(a1 + v38 + 28);
        v38 -= 16;
        if (v37 >= v39)
        {
          v40 = (a1 + v38 + 48);
          goto LABEL_47;
        }
      }

      v40 = a1;
LABEL_47:
      *v40 = v36;
      if (++v34 == 8)
      {
        return v32 + 4 == a2;
      }
    }

    v35 = v32;
    v33 += 16;
    v32 += 4;
    if (v32 == a2)
    {
      return 1;
    }
  }
}

void geom::anonymous namespace::clip_2d_triangle_with_polygon<double>(unsigned int a1, uint64_t a2, float64x2_t *a3, float64x2_t a4, float64x2_t a5, float64x2_t a6)
{
  v68 = *MEMORY[0x277D85DE8];
  v8 = 1;
  LOBYTE(a3[9].f64[0]) = 1;
  *a3 = a4;
  v9 = vsubq_f64(a5, a4);
  if (sqrt(vaddvq_f64(vmulq_f64(v9, v9))) > 2.22044605e-16)
  {
    v8 = 2;
    LOBYTE(a3[9].f64[0]) = 2;
    a3[1] = a5;
  }

  v10 = a3;
  v11 = v8;
  while (1)
  {
    v12 = vsubq_f64(a6, *v10);
    if (sqrt(vaddvq_f64(vmulq_f64(v12, v12))) <= 2.22044605e-16)
    {
      break;
    }

    ++v10;
    if (!--v11)
    {
      LOBYTE(a3[9].f64[0]) = v8 + 1;
      a3[v8] = a6;
      break;
    }
  }

  if (a1)
  {
    v13 = 0;
    v14 = a1;
    v63 = a1;
    do
    {
      v67 = LOBYTE(a3[9].f64[0]);
      if (v67)
      {
        for (i = 0; i < v67; ++i)
        {
          v66[i] = a3[i];
          v16 = v67;
        }

        LOBYTE(a3[9].f64[0]) = 0;
        v17 = v13 + 1;
        if (v13 + 1 == v14)
        {
          v18 = 0;
        }

        else
        {
          v18 = (v13 + 1);
        }

        if (v16)
        {
          v19 = 0;
          while (1)
          {
            v65 = v66[v19];
            v20 = _simd_orient_pd2(*(a2 + 16 * v13), *(a2 + 16 * v18), v65);
            v64 = v66[(v19 + v16 - 1) % v16];
            v21 = _simd_orient_pd2(*(a2 + 16 * v13), *(a2 + 16 * v18), v64);
            if (v20 >= 0.0)
            {
              break;
            }

            v22 = v65;
            if (v21 >= 0.0)
            {
              v23 = *(a2 + 16 * v13);
              v24 = vsubq_f64(*(a2 + 16 * v18), v23);
              v25 = vsubq_f64(v64, v65);
              v26 = -v25.f64[1] * v24.f64[0] + v25.f64[0] * v24.f64[1];
              if (fabs(v26) > 2.22044605e-16)
              {
                v27 = vsubq_f64(v23, v65);
                v22 = vmlaq_n_f64(v65, v25, (v27.f64[0] * v24.f64[1] - v27.f64[1] * v24.f64[0]) / v26);
                v28 = LOBYTE(a3[9].f64[0]);
                v29 = a3;
                v30 = v28;
                if (LOBYTE(a3[9].f64[0]))
                {
                  while (1)
                  {
                    v31 = vsubq_f64(v22, *v29);
                    if (sqrt(vaddvq_f64(vmulq_f64(v31, v31))) <= 2.22044605e-16)
                    {
                      goto LABEL_69;
                    }

                    ++v29;
                    if (!--v30)
                    {
                      LOBYTE(v32) = LOBYTE(a3[9].f64[0]);
                      goto LABEL_68;
                    }
                  }
                }

                LOBYTE(v32) = LOBYTE(a3[9].f64[0]);
                goto LABEL_68;
              }

              v32 = LOBYTE(a3[9].f64[0]);
              v46 = a3;
              v47 = LOBYTE(a3[9].f64[0]);
              if (LOBYTE(a3[9].f64[0]))
              {
                while (1)
                {
                  v48 = vsubq_f64(v64, *v46);
                  if (sqrt(vaddvq_f64(vmulq_f64(v48, v48))) <= 2.22044605e-16)
                  {
                    break;
                  }

                  ++v46;
                  if (!--v47)
                  {
                    v49 = LOBYTE(a3[9].f64[0]);
                    goto LABEL_47;
                  }
                }

                if (LOBYTE(a3[9].f64[0]))
                {
LABEL_58:
                  v28 = v32;
                  v57 = a3;
                  v58 = v32;
                  while (1)
                  {
                    v59 = vsubq_f64(v65, *v57);
                    if (sqrt(vaddvq_f64(vmulq_f64(v59, v59))) <= 2.22044605e-16)
                    {
                      goto LABEL_69;
                    }

                    ++v57;
                    if (!--v58)
                    {
                      goto LABEL_68;
                    }
                  }
                }
              }

              else
              {
                v49 = 0;
LABEL_47:
                LOBYTE(a3[9].f64[0]) = v32 + 1;
                a3[v49] = v64;
                v32 = LOBYTE(a3[9].f64[0]);
                if (LOBYTE(a3[9].f64[0]))
                {
                  goto LABEL_58;
                }
              }

LABEL_67:
              v28 = 0;
LABEL_68:
              LOBYTE(a3[9].f64[0]) = v32 + 1;
              a3[v28] = v22;
            }

LABEL_69:
            if (++v19 == v16)
            {
              v14 = v63;
              goto LABEL_72;
            }
          }

          if (v21 >= 0.0)
          {
            LOBYTE(v32) = LOBYTE(a3[9].f64[0]);
            v43 = a3;
            v44 = v32;
            v22 = v65;
            if (v32)
            {
              while (1)
              {
                v45 = vsubq_f64(v65, *v43);
                if (sqrt(vaddvq_f64(vmulq_f64(v45, v45))) <= 2.22044605e-16)
                {
                  goto LABEL_69;
                }

                ++v43;
                if (!--v44)
                {
                  v28 = LOBYTE(a3[9].f64[0]);
                  goto LABEL_68;
                }
              }
            }
          }

          else
          {
            v33 = *(a2 + 16 * v13);
            v34 = vsubq_f64(*(a2 + 16 * v18), v33);
            v22 = v65;
            v35 = vsubq_f64(v64, v65);
            v36 = -v35.f64[1] * v34.f64[0] + v35.f64[0] * v34.f64[1];
            if (fabs(v36) <= 2.22044605e-16)
            {
              v32 = LOBYTE(a3[9].f64[0]);
              v50 = a3;
              v51 = LOBYTE(a3[9].f64[0]);
              if (LOBYTE(a3[9].f64[0]))
              {
                while (1)
                {
                  v52 = vsubq_f64(v64, *v50);
                  if (sqrt(vaddvq_f64(vmulq_f64(v52, v52))) <= 2.22044605e-16)
                  {
                    break;
                  }

                  ++v50;
                  if (!--v51)
                  {
                    v53 = LOBYTE(a3[9].f64[0]);
                    goto LABEL_50;
                  }
                }

                if (LOBYTE(a3[9].f64[0]))
                {
LABEL_63:
                  v28 = v32;
                  v60 = a3;
                  v61 = v32;
                  while (1)
                  {
                    v62 = vsubq_f64(v65, *v60);
                    if (sqrt(vaddvq_f64(vmulq_f64(v62, v62))) <= 2.22044605e-16)
                    {
                      goto LABEL_69;
                    }

                    ++v60;
                    if (!--v61)
                    {
                      goto LABEL_68;
                    }
                  }
                }
              }

              else
              {
                v53 = 0;
LABEL_50:
                LOBYTE(a3[9].f64[0]) = v32 + 1;
                a3[v53] = v64;
                v32 = LOBYTE(a3[9].f64[0]);
                if (LOBYTE(a3[9].f64[0]))
                {
                  goto LABEL_63;
                }
              }
            }

            else
            {
              v37 = vsubq_f64(v33, v65);
              v38 = vmlaq_n_f64(v65, v35, (v37.f64[0] * v34.f64[1] - v37.f64[1] * v34.f64[0]) / v36);
              v32 = LOBYTE(a3[9].f64[0]);
              v39 = a3;
              v40 = LOBYTE(a3[9].f64[0]);
              if (LOBYTE(a3[9].f64[0]))
              {
                while (1)
                {
                  v41 = vsubq_f64(v38, *v39);
                  if (sqrt(vaddvq_f64(vmulq_f64(v41, v41))) <= 2.22044605e-16)
                  {
                    break;
                  }

                  ++v39;
                  if (!--v40)
                  {
                    v42 = LOBYTE(a3[9].f64[0]);
                    goto LABEL_44;
                  }
                }

                if (LOBYTE(a3[9].f64[0]))
                {
LABEL_53:
                  v28 = v32;
                  v54 = a3;
                  v55 = v32;
                  while (1)
                  {
                    v56 = vsubq_f64(v65, *v54);
                    if (sqrt(vaddvq_f64(vmulq_f64(v56, v56))) <= 2.22044605e-16)
                    {
                      goto LABEL_69;
                    }

                    ++v54;
                    if (!--v55)
                    {
                      goto LABEL_68;
                    }
                  }
                }
              }

              else
              {
                v42 = 0;
LABEL_44:
                LOBYTE(a3[9].f64[0]) = v32 + 1;
                a3[v42] = v38;
                v32 = LOBYTE(a3[9].f64[0]);
                if (LOBYTE(a3[9].f64[0]))
                {
                  goto LABEL_53;
                }
              }
            }
          }

          goto LABEL_67;
        }
      }

      else
      {
        v17 = v13 + 1;
      }

LABEL_72:
      v13 = v17;
    }

    while (v17 != v14);
  }
}

uint64_t _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIdEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_dSI_E_PSG_Lb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(uint64_t result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 5;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        if (*(a2 - 1) >= *(v8 + 24))
        {
          return result;
        }

        v117 = *v8;
        v118 = *(v8 + 16);
        v119 = *(a2 - 1);
        *v8 = *(a2 - 2);
        *(v8 + 16) = v119;
LABEL_188:
        *(a2 - 2) = v117;
        *(a2 - 1) = v118;
        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v123 = *(v8 + 56);
      v124 = *(v8 + 24);
      v125 = *(v8 + 88);
      if (v123 >= v124)
      {
        if (v125 < v123)
        {
          v192 = *(v8 + 32);
          v191 = *(v8 + 48);
          v194 = *(v8 + 64);
          v193 = *(v8 + 80);
          *(v8 + 32) = v194;
          *(v8 + 48) = v193;
          *(v8 + 64) = v192;
          *(v8 + 80) = v191;
          v125 = *(&v191 + 1);
          if (*(&v193 + 1) < v124)
          {
            v195 = *v8;
            v196 = *(v8 + 16);
            *v8 = v194;
            *(v8 + 16) = v193;
            *(v8 + 32) = v195;
            *(v8 + 48) = v196;
          }
        }
      }

      else
      {
        v127 = *v8;
        v126 = *(v8 + 16);
        v128 = *(v8 + 24);
        if (v125 < v123)
        {
          v129 = *(v8 + 80);
          *v8 = *(v8 + 64);
          *(v8 + 16) = v129;
          goto LABEL_191;
        }

        v210 = *(v8 + 48);
        *v8 = *(v8 + 32);
        *(v8 + 16) = v210;
        *(v8 + 32) = v127;
        *(v8 + 48) = v126;
        if (v125 < v128)
        {
          v211 = *(v8 + 80);
          *(v8 + 32) = *(v8 + 64);
          *(v8 + 48) = v211;
LABEL_191:
          *(v8 + 64) = v127;
          *(v8 + 80) = v126;
          v125 = v128;
        }
      }

      if (*(a2 - 1) >= v125)
      {
        return result;
      }

      v212 = *(v8 + 64);
      v213 = *(v8 + 80);
      v214 = *(a2 - 1);
      *(v8 + 64) = *(a2 - 2);
      *(v8 + 80) = v214;
      *(a2 - 2) = v212;
      *(a2 - 1) = v213;
      if (*(v8 + 88) >= *(v8 + 56))
      {
        return result;
      }

      v216 = *(v8 + 32);
      v215 = *(v8 + 48);
      v218 = *(v8 + 64);
      v217 = *(v8 + 80);
      *(v8 + 32) = v218;
      *(v8 + 48) = v217;
      *(v8 + 64) = v216;
      *(v8 + 80) = v215;
      v219 = *(&v217 + 1);
      goto LABEL_205;
    }

    if (v9 == 5)
    {
      v110 = *(v8 + 56);
      v111 = *(v8 + 24);
      v112 = *(v8 + 88);
      if (v110 < v111)
      {
        v114 = *v8;
        v113 = *(v8 + 16);
        v115 = *(v8 + 24);
        if (v112 < v110)
        {
          v116 = *(v8 + 80);
          *v8 = *(v8 + 64);
          *(v8 + 16) = v116;
          *(v8 + 64) = v114;
          *(v8 + 80) = v113;
          v111 = *(&v116 + 1);
          goto LABEL_197;
        }

        v206 = *(v8 + 48);
        *v8 = *(v8 + 32);
        *(v8 + 16) = v206;
        *(v8 + 32) = v114;
        *(v8 + 48) = v113;
        v111 = *(&v206 + 1);
        if (v112 < v115)
        {
          v207 = *(v8 + 80);
          *(v8 + 32) = *(v8 + 64);
          *(v8 + 48) = v207;
          *(v8 + 64) = v114;
          *(v8 + 80) = v113;
          v110 = *(&v207 + 1);
          goto LABEL_197;
        }

        v110 = v115;
LABEL_196:
        v115 = v112;
        goto LABEL_197;
      }

      if (v112 >= v110)
      {
        goto LABEL_196;
      }

      v179 = *(v8 + 32);
      v180 = *(v8 + 48);
      v182 = *(v8 + 64);
      v181 = *(v8 + 80);
      *(v8 + 32) = v182;
      *(v8 + 48) = v181;
      *(v8 + 64) = v179;
      *(v8 + 80) = v180;
      v110 = *(&v181 + 1);
      v115 = *(&v180 + 1);
      if (*(&v181 + 1) < v111)
      {
        v183 = *v8;
        v184 = *(v8 + 16);
        *v8 = v182;
        *(v8 + 16) = v181;
        *(v8 + 32) = v183;
        *(v8 + 48) = v184;
        v111 = *(&v181 + 1);
        v110 = *(&v184 + 1);
      }

LABEL_197:
      v220 = *(v8 + 120);
      if (v220 < v115)
      {
        v222 = *(v8 + 64);
        v221 = *(v8 + 80);
        v224 = *(v8 + 96);
        v223 = *(v8 + 112);
        *(v8 + 64) = v224;
        *(v8 + 80) = v223;
        *(v8 + 96) = v222;
        *(v8 + 112) = v221;
        v220 = *(&v221 + 1);
        if (*(&v223 + 1) < v110)
        {
          v225 = *(v8 + 32);
          v226 = *(v8 + 48);
          *(v8 + 32) = v224;
          *(v8 + 48) = v223;
          *(v8 + 64) = v225;
          *(v8 + 80) = v226;
          if (*(&v223 + 1) < v111)
          {
            v227 = *v8;
            v228 = *(v8 + 16);
            *v8 = v224;
            *(v8 + 16) = v223;
            *(v8 + 32) = v227;
            *(v8 + 48) = v228;
          }
        }
      }

      if (*(a2 - 1) >= v220)
      {
        return result;
      }

      v229 = *(v8 + 96);
      v230 = *(v8 + 112);
      v231 = *(a2 - 1);
      *(v8 + 96) = *(a2 - 2);
      *(v8 + 112) = v231;
      *(a2 - 2) = v229;
      *(a2 - 1) = v230;
      if (*(v8 + 120) >= *(v8 + 88))
      {
        return result;
      }

      v233 = *(v8 + 64);
      v232 = *(v8 + 80);
      v218 = *(v8 + 96);
      v217 = *(v8 + 112);
      *(v8 + 64) = v218;
      *(v8 + 80) = v217;
      *(v8 + 96) = v233;
      *(v8 + 112) = v232;
      v219 = *(&v217 + 1);
      if (*(&v217 + 1) >= *(v8 + 56))
      {
        return result;
      }

      v234 = *(v8 + 32);
      v235 = *(v8 + 48);
      *(v8 + 32) = v218;
      *(v8 + 48) = v217;
      *(v8 + 64) = v234;
      *(v8 + 80) = v235;
LABEL_205:
      if (v219 < *(v8 + 24))
      {
        v236 = *v8;
        v237 = *(v8 + 16);
        *v8 = v218;
        *(v8 + 16) = v217;
        *(v8 + 32) = v236;
        *(v8 + 48) = v237;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v130 = (v8 + 32);
      v132 = v8 == a2 || v130 == a2;
      if (a4)
      {
        if (!v132)
        {
          v133 = 0;
          v134 = v8;
          do
          {
            v135 = v134[7];
            v136 = v134[3];
            v134 = v130;
            if (v135 < v136)
            {
              v137 = *v130;
              v138 = *(v130 + 1);
              v139 = v130[3];
              v140 = v133;
              while (1)
              {
                v141 = v8 + v140;
                v142 = *(v8 + v140 + 16);
                *(v141 + 32) = *(v8 + v140);
                *(v141 + 48) = v142;
                if (!v140)
                {
                  break;
                }

                v140 -= 32;
                if (v139 >= *(v141 - 8))
                {
                  v143 = (v8 + v140 + 32);
                  goto LABEL_132;
                }
              }

              v143 = v8;
LABEL_132:
              *v143 = v137;
              v143[1] = v138;
            }

            v130 = v134 + 4;
            v133 += 32;
          }

          while (v134 + 4 != a2);
        }
      }

      else if (!v132)
      {
        do
        {
          v197 = *(v7 + 56);
          v198 = *(v7 + 24);
          v7 = v130;
          if (v197 < v198)
          {
            v199 = *v130;
            v200 = *(v130 + 1);
            v201 = v130[3];
            v202 = v130;
            do
            {
              v203 = v202;
              v204 = *(v202 - 2);
              v202 -= 4;
              v205 = *(v203 - 1);
              *v203 = v204;
              *(v203 + 1) = v205;
            }

            while (v201 < *(v203 - 5));
            *v202 = v199;
            *(v202 + 1) = v200;
          }

          v130 += 4;
        }

        while ((v7 + 32) != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v144 = (v9 - 2) >> 1;
        v145 = v144;
        do
        {
          v146 = v145;
          if (v144 >= v145)
          {
            v147 = (2 * v145) | 1;
            v148 = v8 + 32 * v147;
            if (2 * v146 + 2 < v9 && *(v148 + 24) < *(v148 + 56))
            {
              v148 += 32;
              v147 = 2 * v146 + 2;
            }

            v149 = v8 + 32 * v146;
            if (*(v148 + 24) >= *(v149 + 24))
            {
              v150 = *v149;
              v151 = *(v149 + 16);
              v152 = *(v149 + 24);
              do
              {
                v153 = v149;
                v149 = v148;
                v154 = *(v148 + 16);
                *v153 = *v148;
                v153[1] = v154;
                if (v144 < v147)
                {
                  break;
                }

                v155 = 2 * v147;
                v147 = (2 * v147) | 1;
                v148 = v8 + 32 * v147;
                v156 = v155 + 2;
                if (v156 < v9 && *(v148 + 24) < *(v148 + 56))
                {
                  v148 += 32;
                  v147 = v156;
                }
              }

              while (*(v148 + 24) >= v152);
              *v149 = v150;
              *(v149 + 16) = v151;
            }
          }

          v145 = v146 - 1;
        }

        while (v146);
        do
        {
          v157 = 0;
          v159 = *v8;
          v158 = *(v8 + 16);
          v160 = v8;
          do
          {
            v161 = &v160[2 * v157];
            v162 = v161 + 4;
            v163 = (2 * v157) | 1;
            v157 = 2 * v157 + 2;
            if (v157 >= v9)
            {
              v157 = v163;
            }

            else
            {
              v164 = v161[7];
              v165 = v161[11];
              v166 = v161 + 8;
              if (v164 >= v165)
              {
                v157 = v163;
              }

              else
              {
                v162 = v166;
              }
            }

            v167 = *(v162 + 1);
            *v160 = *v162;
            v160[1] = v167;
            v160 = v162;
          }

          while (v157 <= ((v9 - 2) >> 1));
          a2 -= 4;
          if (v162 == a2)
          {
            *v162 = v159;
            *(v162 + 1) = v158;
          }

          else
          {
            v168 = *(a2 + 1);
            *v162 = *a2;
            *(v162 + 1) = v168;
            *a2 = v159;
            *(a2 + 1) = v158;
            v169 = (v162 - v8 + 32) >> 5;
            v170 = v169 < 2;
            v171 = v169 - 2;
            if (!v170)
            {
              v172 = v171 >> 1;
              v173 = v8 + 32 * v172;
              if (*(v173 + 24) < v162[3])
              {
                v174 = *v162;
                v175 = *(v162 + 1);
                v176 = v162[3];
                do
                {
                  v177 = v162;
                  v162 = v173;
                  v178 = *(v173 + 16);
                  *v177 = *v173;
                  *(v177 + 1) = v178;
                  if (!v172)
                  {
                    break;
                  }

                  v172 = (v172 - 1) >> 1;
                  v173 = v8 + 32 * v172;
                }

                while (*(v173 + 24) < v176);
                *v162 = v174;
                *(v162 + 1) = v175;
              }
            }
          }

          v170 = v9-- <= 2;
        }

        while (!v170);
      }

      return result;
    }

    v10 = v8 + 32 * (v9 >> 1);
    v11 = *(a2 - 1);
    if (v9 >= 0x81)
    {
      v12 = *(v10 + 24);
      if (v12 >= *(v8 + 24))
      {
        if (v11 < v12)
        {
          v20 = *v10;
          v21 = *(v10 + 16);
          v22 = *(a2 - 1);
          *v10 = *(a2 - 2);
          *(v10 + 16) = v22;
          *(a2 - 2) = v20;
          *(a2 - 1) = v21;
          if (*(v10 + 24) < *(v8 + 24))
          {
            v23 = *v8;
            v24 = *(v8 + 16);
            v25 = *(v10 + 16);
            *v8 = *v10;
            *(v8 + 16) = v25;
            *v10 = v23;
            *(v10 + 16) = v24;
          }
        }
      }

      else
      {
        v13 = *v8;
        v14 = *(v8 + 16);
        if (v11 < v12)
        {
          v15 = *(a2 - 1);
          *v8 = *(a2 - 2);
          *(v8 + 16) = v15;
          goto LABEL_27;
        }

        v32 = *(v10 + 16);
        *v8 = *v10;
        *(v8 + 16) = v32;
        *v10 = v13;
        *(v10 + 16) = v14;
        if (*(a2 - 1) < *(&v14 + 1))
        {
          v33 = *(a2 - 1);
          *v10 = *(a2 - 2);
          *(v10 + 16) = v33;
LABEL_27:
          *(a2 - 2) = v13;
          *(a2 - 1) = v14;
        }
      }

      v34 = (v10 - 32);
      v35 = *(v10 - 8);
      v36 = *(a2 - 5);
      if (v35 >= *(v8 + 56))
      {
        if (v36 < v35)
        {
          v40 = *v34;
          v41 = *(v10 - 16);
          v42 = *(a2 - 3);
          *v34 = *(a2 - 4);
          *(v10 - 16) = v42;
          *(a2 - 4) = v40;
          *(a2 - 3) = v41;
          if (*(v10 - 8) < *(v8 + 56))
          {
            v43 = *(v8 + 32);
            v44 = *(v8 + 48);
            v45 = *(v10 - 16);
            *(v8 + 32) = *v34;
            *(v8 + 48) = v45;
            *v34 = v43;
            *(v10 - 16) = v44;
          }
        }
      }

      else
      {
        v37 = *(v8 + 32);
        v38 = *(v8 + 48);
        if (v36 < v35)
        {
          v39 = *(a2 - 3);
          *(v8 + 32) = *(a2 - 4);
          *(v8 + 48) = v39;
          goto LABEL_39;
        }

        v48 = *(v10 - 16);
        *(v8 + 32) = *v34;
        *(v8 + 48) = v48;
        *v34 = v37;
        *(v10 - 16) = v38;
        if (*(a2 - 5) < *(&v38 + 1))
        {
          v49 = *(a2 - 3);
          *v34 = *(a2 - 4);
          *(v10 - 16) = v49;
LABEL_39:
          *(a2 - 4) = v37;
          *(a2 - 3) = v38;
        }
      }

      v50 = *(v10 + 56);
      v51 = *(a2 - 9);
      if (v50 >= *(v8 + 88))
      {
        if (v51 < v50)
        {
          v55 = *(v10 + 32);
          v56 = *(v10 + 48);
          v57 = *(a2 - 5);
          *(v10 + 32) = *(a2 - 6);
          *(v10 + 48) = v57;
          *(a2 - 6) = v55;
          *(a2 - 5) = v56;
          if (*(v10 + 56) < *(v8 + 88))
          {
            v58 = *(v8 + 64);
            v59 = *(v8 + 80);
            v60 = *(v10 + 48);
            *(v8 + 64) = *(v10 + 32);
            *(v8 + 80) = v60;
            *(v10 + 32) = v58;
            *(v10 + 48) = v59;
          }
        }
      }

      else
      {
        v52 = *(v8 + 64);
        v53 = *(v8 + 80);
        if (v51 < v50)
        {
          v54 = *(a2 - 5);
          *(v8 + 64) = *(a2 - 6);
          *(v8 + 80) = v54;
          goto LABEL_48;
        }

        v61 = *(v10 + 48);
        *(v8 + 64) = *(v10 + 32);
        *(v8 + 80) = v61;
        *(v10 + 32) = v52;
        *(v10 + 48) = v53;
        if (*(a2 - 9) < *(&v53 + 1))
        {
          v62 = *(a2 - 5);
          *(v10 + 32) = *(a2 - 6);
          *(v10 + 48) = v62;
LABEL_48:
          *(a2 - 6) = v52;
          *(a2 - 5) = v53;
        }
      }

      v63 = *(v10 + 24);
      v64 = *(v10 - 8);
      v65 = *(v10 + 56);
      if (v63 >= v64)
      {
        v67 = *v10;
        v66 = *(v10 + 16);
        if (v65 < v63)
        {
          v70 = *(v10 + 32);
          v69 = *(v10 + 48);
          *v10 = v70;
          *(v10 + 16) = v69;
          *(v10 + 32) = v67;
          *(v10 + 48) = v66;
          if (*(&v69 + 1) >= v64)
          {
            v67 = v70;
            v66 = v69;
          }

          else
          {
            v67 = *v34;
            v66 = *(v10 - 16);
            *v34 = v70;
            *(v10 - 16) = v69;
            *v10 = v67;
            *(v10 + 16) = v66;
          }
        }
      }

      else
      {
        v67 = *v34;
        v66 = *(v10 - 16);
        if (v65 >= v63)
        {
          v71 = *(v10 + 16);
          *v34 = *v10;
          *(v10 - 16) = v71;
          *v10 = v67;
          *(v10 + 16) = v66;
          if (v65 < *(&v66 + 1))
          {
            v72 = *(v10 + 32);
            v73 = *(v10 + 48);
            *v10 = v72;
            *(v10 + 16) = v73;
            *(v10 + 32) = v67;
            *(v10 + 48) = v66;
            v67 = v72;
            v66 = v73;
          }
        }

        else
        {
          v68 = *(v10 + 48);
          *v34 = *(v10 + 32);
          *(v10 - 16) = v68;
          *(v10 + 32) = v67;
          *(v10 + 48) = v66;
          v67 = *v10;
          v66 = *(v10 + 16);
        }
      }

      v74 = *v8;
      v75 = *(v8 + 16);
      *v8 = v67;
      *(v8 + 16) = v66;
      *v10 = v74;
      *(v10 + 16) = v75;
      goto LABEL_59;
    }

    v16 = *(v8 + 24);
    if (v16 >= *(v10 + 24))
    {
      if (v11 < v16)
      {
        v26 = *v8;
        v27 = *(v8 + 16);
        v28 = *(a2 - 1);
        *v8 = *(a2 - 2);
        *(v8 + 16) = v28;
        *(a2 - 2) = v26;
        *(a2 - 1) = v27;
        if (*(v8 + 24) < *(v10 + 24))
        {
          v29 = *v10;
          v30 = *(v10 + 16);
          v31 = *(v8 + 16);
          *v10 = *v8;
          *(v10 + 16) = v31;
          *v8 = v29;
          *(v8 + 16) = v30;
        }
      }

      goto LABEL_59;
    }

    v17 = *v10;
    v18 = *(v10 + 16);
    if (v11 < v16)
    {
      v19 = *(a2 - 1);
      *v10 = *(a2 - 2);
      *(v10 + 16) = v19;
LABEL_36:
      *(a2 - 2) = v17;
      *(a2 - 1) = v18;
      goto LABEL_59;
    }

    v46 = *(v8 + 16);
    *v10 = *v8;
    *(v10 + 16) = v46;
    *v8 = v17;
    *(v8 + 16) = v18;
    if (*(a2 - 1) < *(&v18 + 1))
    {
      v47 = *(a2 - 1);
      *v8 = *(a2 - 2);
      *(v8 + 16) = v47;
      goto LABEL_36;
    }

LABEL_59:
    --a3;
    if (a4)
    {
      v77 = *v8;
      v76 = *(v8 + 16);
LABEL_62:
      v78 = 0;
      do
      {
        v79 = *(v8 + v78 + 56);
        v78 += 32;
      }

      while (v79 < *(&v76 + 1));
      v80 = v8 + v78;
      v81 = a2;
      if (v78 == 32)
      {
        v84 = a2;
        while (v80 < v84)
        {
          v82 = v84 - 4;
          v85 = *(v84 - 1);
          v84 -= 4;
          if (v85 < *(&v76 + 1))
          {
            goto LABEL_72;
          }
        }

        v82 = v84;
      }

      else
      {
        do
        {
          v82 = v81 - 4;
          v83 = *(v81 - 1);
          v81 -= 4;
        }

        while (v83 >= *(&v76 + 1));
      }

LABEL_72:
      if (v80 >= v82)
      {
        v93 = v80 - 32;
      }

      else
      {
        v86 = v80;
        v87 = v82;
        do
        {
          v88 = *v86;
          v89 = *(v86 + 16);
          v90 = *(v87 + 1);
          *v86 = *v87;
          *(v86 + 16) = v90;
          *v87 = v88;
          *(v87 + 1) = v89;
          do
          {
            v91 = *(v86 + 56);
            v86 += 32;
          }

          while (v91 < *(&v76 + 1));
          do
          {
            v92 = *(v87 - 1);
            v87 -= 4;
          }

          while (v92 >= *(&v76 + 1));
        }

        while (v86 < v87);
        v93 = v86 - 32;
      }

      if (v93 != v8)
      {
        v94 = *(v93 + 16);
        *v8 = *v93;
        *(v8 + 16) = v94;
      }

      *v93 = v77;
      *(v93 + 16) = v76;
      if (v80 < v82)
      {
        goto LABEL_85;
      }

      v95 = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIdEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_dSI_E_PSG_EEbT1_SM_T0_(v8, v93);
      v8 = v93 + 32;
      result = _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIdEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_dSI_E_PSG_EEbT1_SM_T0_((v93 + 32), a2);
      if (result)
      {
        a2 = v93;
        if (!v95)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v95)
      {
LABEL_85:
        result = _ZNSt3__111__introsortINS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIdEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_dSI_E_PSG_Lb0EEEvT1_SM_T0_NS_15iterator_traitsISM_E15difference_typeEb(v7, v93, a3, a4 & 1);
        a4 = 0;
        v8 = v93 + 32;
      }
    }

    else
    {
      v77 = *v8;
      v76 = *(v8 + 16);
      if (*(v8 - 8) < *(v8 + 24))
      {
        goto LABEL_62;
      }

      if (*(&v76 + 1) >= *(a2 - 1))
      {
        v98 = v8 + 32;
        do
        {
          v8 = v98;
          if (v98 >= a2)
          {
            break;
          }

          v99 = *(v98 + 24);
          v98 += 32;
        }

        while (*(&v76 + 1) >= v99);
      }

      else
      {
        v96 = v8;
        do
        {
          v8 = v96 + 32;
          v97 = *(v96 + 56);
          v96 += 32;
        }

        while (*(&v76 + 1) >= v97);
      }

      v100 = a2;
      if (v8 < a2)
      {
        v101 = a2;
        do
        {
          v100 = v101 - 4;
          v102 = *(v101 - 1);
          v101 -= 4;
        }

        while (*(&v76 + 1) < v102);
      }

      while (v8 < v100)
      {
        v103 = *v8;
        v104 = *(v8 + 16);
        v105 = *(v100 + 1);
        *v8 = *v100;
        *(v8 + 16) = v105;
        *v100 = v103;
        *(v100 + 1) = v104;
        do
        {
          v106 = *(v8 + 56);
          v8 += 32;
        }

        while (*(&v76 + 1) >= v106);
        do
        {
          v107 = *(v100 - 1);
          v100 -= 4;
        }

        while (*(&v76 + 1) < v107);
      }

      v108 = (v8 - 32);
      if (v8 - 32 != v7)
      {
        v109 = *(v8 - 16);
        *v7 = *v108;
        *(v7 + 16) = v109;
      }

      a4 = 0;
      *v108 = v77;
      *(v8 - 16) = v76;
    }
  }

  v120 = *(v8 + 56);
  v121 = *(a2 - 1);
  if (v120 < *(v8 + 24))
  {
    v117 = *v8;
    v118 = *(v8 + 16);
    if (v121 >= v120)
    {
      v208 = *(v8 + 48);
      *v8 = *(v8 + 32);
      *(v8 + 16) = v208;
      *(v8 + 32) = v117;
      *(v8 + 48) = v118;
      if (*(a2 - 1) >= *(&v118 + 1))
      {
        return result;
      }

      v209 = *(a2 - 1);
      *(v8 + 32) = *(a2 - 2);
      *(v8 + 48) = v209;
    }

    else
    {
      v122 = *(a2 - 1);
      *v8 = *(a2 - 2);
      *(v8 + 16) = v122;
    }

    goto LABEL_188;
  }

  if (v121 < v120)
  {
    v185 = *(v8 + 32);
    v186 = *(v8 + 48);
    v187 = *(a2 - 1);
    *(v8 + 32) = *(a2 - 2);
    *(v8 + 48) = v187;
    *(a2 - 2) = v185;
    *(a2 - 1) = v186;
    if (*(v8 + 56) < *(v8 + 24))
    {
      v189 = *v8;
      v188 = *(v8 + 16);
      v190 = *(v8 + 48);
      *v8 = *(v8 + 32);
      *(v8 + 16) = v190;
      *(v8 + 32) = v189;
      *(v8 + 48) = v188;
    }
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8nn200100INS_17_ClassicAlgPolicyERZN4geom12_GLOBAL__N_131compute_plane_box_intersectionsIdEEvNS2_11vector_typeIT_Lh3EvE5valueES8_RKNS2_4bboxIS6_Lh3EEERNS3_11fixed_arrayIS6_Lh3ELh9EEEEUlRKDv4_dSI_E_PSG_EEbT1_SM_T0_(char *a1, __int128 *a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v13 = *(a1 + 7);
      v14 = *(a2 - 1);
      if (v13 >= *(a1 + 3))
      {
        if (v14 < v13)
        {
          v29 = *(a1 + 2);
          v30 = *(a1 + 3);
          v31 = *(a2 - 1);
          *(a1 + 2) = *(a2 - 2);
          *(a1 + 3) = v31;
          *(a2 - 2) = v29;
          *(a2 - 1) = v30;
          if (*(a1 + 7) < *(a1 + 3))
          {
            v33 = *a1;
            v32 = *(a1 + 1);
            v34 = *(a1 + 3);
            *a1 = *(a1 + 2);
            *(a1 + 1) = v34;
            *(a1 + 2) = v33;
            *(a1 + 3) = v32;
          }
        }

        return 1;
      }

      v3 = *a1;
      v4 = *(a1 + 1);
      if (v14 < v13)
      {
        v15 = *(a2 - 1);
        *a1 = *(a2 - 2);
        *(a1 + 1) = v15;
        goto LABEL_35;
      }

      v53 = *(a1 + 3);
      *a1 = *(a1 + 2);
      *(a1 + 1) = v53;
      *(a1 + 2) = v3;
      *(a1 + 3) = v4;
      if (*(a2 - 1) < *(&v4 + 1))
      {
        v54 = *(a2 - 1);
        *(a1 + 2) = *(a2 - 2);
        *(a1 + 3) = v54;
        goto LABEL_35;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_15;
      }

      v6 = *(a1 + 7);
      v7 = *(a1 + 3);
      v8 = *(a1 + 11);
      if (v6 >= v7)
      {
        if (v8 < v6)
        {
          v41 = *(a1 + 2);
          v42 = *(a1 + 3);
          v44 = *(a1 + 4);
          v43 = *(a1 + 5);
          *(a1 + 2) = v44;
          *(a1 + 3) = v43;
          *(a1 + 4) = v41;
          *(a1 + 5) = v42;
          v6 = *(&v43 + 1);
          v11 = *(&v42 + 1);
          if (*(&v43 + 1) < v7)
          {
            v45 = *a1;
            v46 = *(a1 + 1);
            *a1 = v44;
            *(a1 + 1) = v43;
            *(a1 + 2) = v45;
            *(a1 + 3) = v46;
            v7 = *(&v43 + 1);
            v6 = *(&v46 + 1);
          }

          goto LABEL_61;
        }
      }

      else
      {
        v10 = *a1;
        v9 = *(a1 + 1);
        v11 = *(a1 + 3);
        if (v8 < v6)
        {
          v12 = *(a1 + 5);
          *a1 = *(a1 + 4);
          *(a1 + 1) = v12;
          *(a1 + 4) = v10;
          *(a1 + 5) = v9;
          v7 = *(&v12 + 1);
          goto LABEL_61;
        }

        v68 = *(a1 + 3);
        *a1 = *(a1 + 2);
        *(a1 + 1) = v68;
        *(a1 + 2) = v10;
        *(a1 + 3) = v9;
        v7 = *(&v68 + 1);
        if (v8 < v11)
        {
          v69 = *(a1 + 5);
          *(a1 + 2) = *(a1 + 4);
          *(a1 + 3) = v69;
          *(a1 + 4) = v10;
          *(a1 + 5) = v9;
          v6 = *(&v69 + 1);
          goto LABEL_61;
        }

        v6 = v11;
      }

      v11 = v8;
LABEL_61:
      v81 = *(a1 + 15);
      if (v81 < v11)
      {
        v83 = *(a1 + 4);
        v82 = *(a1 + 5);
        v85 = *(a1 + 6);
        v84 = *(a1 + 7);
        *(a1 + 4) = v85;
        *(a1 + 5) = v84;
        *(a1 + 6) = v83;
        *(a1 + 7) = v82;
        v81 = *(&v82 + 1);
        if (*(&v84 + 1) < v6)
        {
          v86 = *(a1 + 2);
          v87 = *(a1 + 3);
          *(a1 + 2) = v85;
          *(a1 + 3) = v84;
          *(a1 + 4) = v86;
          *(a1 + 5) = v87;
          if (*(&v84 + 1) < v7)
          {
            v88 = *a1;
            v89 = *(a1 + 1);
            *a1 = v85;
            *(a1 + 1) = v84;
            *(a1 + 2) = v88;
            *(a1 + 3) = v89;
          }
        }
      }

      if (*(a2 - 1) >= v81)
      {
        return 1;
      }

      v90 = *(a1 + 6);
      v91 = *(a1 + 7);
      v92 = *(a2 - 1);
      *(a1 + 6) = *(a2 - 2);
      *(a1 + 7) = v92;
      *(a2 - 2) = v90;
      *(a2 - 1) = v91;
      if (*(a1 + 15) >= *(a1 + 11))
      {
        return 1;
      }

      v94 = *(a1 + 4);
      v93 = *(a1 + 5);
      v78 = *(a1 + 6);
      v77 = *(a1 + 7);
      *(a1 + 4) = v78;
      *(a1 + 5) = v77;
      *(a1 + 6) = v94;
      *(a1 + 7) = v93;
      v79 = *(&v77 + 1);
      if (*(&v77 + 1) >= *(a1 + 7))
      {
        return 1;
      }

      v95 = *(a1 + 2);
      v96 = *(a1 + 3);
      *(a1 + 2) = v78;
      *(a1 + 3) = v77;
      *(a1 + 4) = v95;
      *(a1 + 5) = v96;
      goto LABEL_69;
    }

    v22 = *(a1 + 7);
    v23 = *(a1 + 3);
    v24 = *(a1 + 11);
    if (v22 >= v23)
    {
      if (v24 < v22)
      {
        v48 = *(a1 + 2);
        v47 = *(a1 + 3);
        v50 = *(a1 + 4);
        v49 = *(a1 + 5);
        *(a1 + 2) = v50;
        *(a1 + 3) = v49;
        *(a1 + 4) = v48;
        *(a1 + 5) = v47;
        v24 = *(&v47 + 1);
        if (*(&v49 + 1) < v23)
        {
          v51 = *a1;
          v52 = *(a1 + 1);
          *a1 = v50;
          *(a1 + 1) = v49;
          *(a1 + 2) = v51;
          *(a1 + 3) = v52;
        }
      }

      goto LABEL_55;
    }

    v26 = *a1;
    v25 = *(a1 + 1);
    v27 = *(a1 + 3);
    if (v24 >= v22)
    {
      v70 = *(a1 + 3);
      *a1 = *(a1 + 2);
      *(a1 + 1) = v70;
      *(a1 + 2) = v26;
      *(a1 + 3) = v25;
      if (v24 >= v27)
      {
        goto LABEL_55;
      }

      v71 = *(a1 + 5);
      *(a1 + 2) = *(a1 + 4);
      *(a1 + 3) = v71;
    }

    else
    {
      v28 = *(a1 + 5);
      *a1 = *(a1 + 4);
      *(a1 + 1) = v28;
    }

    *(a1 + 4) = v26;
    *(a1 + 5) = v25;
    v24 = v27;
LABEL_55:
    if (*(a2 - 1) >= v24)
    {
      return 1;
    }

    v72 = *(a1 + 4);
    v73 = *(a1 + 5);
    v74 = *(a2 - 1);
    *(a1 + 4) = *(a2 - 2);
    *(a1 + 5) = v74;
    *(a2 - 2) = v72;
    *(a2 - 1) = v73;
    if (*(a1 + 11) >= *(a1 + 7))
    {
      return 1;
    }

    v76 = *(a1 + 2);
    v75 = *(a1 + 3);
    v78 = *(a1 + 4);
    v77 = *(a1 + 5);
    *(a1 + 2) = v78;
    *(a1 + 3) = v77;
    *(a1 + 4) = v76;
    *(a1 + 5) = v75;
    v79 = *(&v77 + 1);
LABEL_69:
    if (v79 < *(a1 + 3))
    {
      v97 = *a1;
      v98 = *(a1 + 1);
      *a1 = v78;
      *(a1 + 1) = v77;
      *(a1 + 2) = v97;
      *(a1 + 3) = v98;
    }

    return 1;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 1) < *(a1 + 3))
    {
      v3 = *a1;
      v4 = *(a1 + 1);
      v5 = *(a2 - 1);
      *a1 = *(a2 - 2);
      *(a1 + 1) = v5;
LABEL_35:
      *(a2 - 2) = v3;
      *(a2 - 1) = v4;
      return 1;
    }

    return 1;
  }

LABEL_15:
  v16 = *(a1 + 7);
  v17 = *(a1 + 3);
  v18 = *(a1 + 11);
  if (v16 >= v17)
  {
    if (v18 < v16)
    {
      v36 = *(a1 + 2);
      v35 = *(a1 + 3);
      v38 = *(a1 + 4);
      v37 = *(a1 + 5);
      *(a1 + 2) = v38;
      *(a1 + 3) = v37;
      *(a1 + 4) = v36;
      *(a1 + 5) = v35;
      if (*(&v37 + 1) < v17)
      {
        v39 = *a1;
        v40 = *(a1 + 1);
        *a1 = v38;
        *(a1 + 1) = v37;
        *(a1 + 2) = v39;
        *(a1 + 3) = v40;
      }
    }
  }

  else
  {
    v20 = *a1;
    v19 = *(a1 + 1);
    if (v18 >= v16)
    {
      v55 = *(a1 + 3);
      *a1 = *(a1 + 2);
      *(a1 + 1) = v55;
      *(a1 + 2) = v20;
      *(a1 + 3) = v19;
      if (v18 >= *(&v19 + 1))
      {
        goto LABEL_39;
      }

      v56 = *(a1 + 5);
      *(a1 + 2) = *(a1 + 4);
      *(a1 + 3) = v56;
    }

    else
    {
      v21 = *(a1 + 5);
      *a1 = *(a1 + 4);
      *(a1 + 1) = v21;
    }

    *(a1 + 4) = v20;
    *(a1 + 5) = v19;
  }

LABEL_39:
  v57 = (a1 + 96);
  if (a1 + 96 == a2)
  {
    return 1;
  }

  v58 = 0;
  v59 = 0;
  v60 = (a1 + 64);
  while (1)
  {
    if (*(v57 + 3) < *(v60 + 3))
    {
      v61 = *v57;
      v62 = v57[1];
      v63 = *(v57 + 3);
      v64 = v58;
      while (1)
      {
        v65 = &a1[v64];
        v66 = *&a1[v64 + 80];
        *(v65 + 6) = *&a1[v64 + 64];
        *(v65 + 7) = v66;
        if (v64 == -64)
        {
          break;
        }

        v64 -= 32;
        if (v63 >= *(v65 + 7))
        {
          v67 = &a1[v64 + 96];
          goto LABEL_47;
        }
      }

      v67 = a1;
LABEL_47:
      *v67 = v61;
      *(v67 + 1) = v62;
      if (++v59 == 8)
      {
        return v57 + 2 == a2;
      }
    }

    v60 = v57;
    v58 += 32;
    v57 += 2;
    if (v57 == a2)
    {
      return 1;
    }
  }
}

void geom::cluster<float>::init(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, atomic_uint *a7, int a8, float a9, int a10)
{
  v36 = 0;
  v37 = a7;
  *(a1 + 136) = 1;
  a1[9] = a2;
  a1[10] = a3;
  v15 = *(a2 + 48);
  *(a1 + 2) = *(a2 + 32);
  *(a1 + 3) = v15;
  *(a1 + 16) = a10;
  *(a1 + 17) = a9;
  v16 = (*(a2 + 4) * *(a2 + 4) * *(a2 + 4));
  __p = 0;
  v35 = 0;
  if (v16)
  {
    operator new();
  }

  block = MEMORY[0x277D85DD0];
  v39 = 0x40000000;
  v40 = ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIfE4initEPKNS_10voxel_gridIfEEPvRKNSt3__16vectorIDv3_fNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIfLh3EEEPNS_17convex_mesh_cacheIfEEjjfEUlmE_EEmmmP16dispatch_queue_sT__block_invoke;
  v41 = &__block_descriptor_tmp_0;
  v42 = 1024;
  v43 = v16;
  v44 = a1;
  p_p = &__p;
  dispatch_apply((v16 + 1023) >> 10, 0, &block);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  block = MEMORY[0x277D85DD0];
  v39 = 0x40000000;
  v40 = ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIfE4initEPKNS_10voxel_gridIfEEPvRKNSt3__16vectorIDv3_fNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIfLh3EEEPNS_17convex_mesh_cacheIfEEjjfEUlmRZNS2_4initES6_S7_SF_SJ_SN_SQ_jjfE18voxel_init_contextE_SR_EEmmmP16dispatch_queue_sRNS9_IT0_NSB_ISW_EEEET__block_invoke;
  v41 = &__block_descriptor_tmp_5;
  v42 = 1024;
  v43 = v16;
  v44 = a1;
  p_p = &__p;
  v46 = a4;
  v47 = a5;
  v48 = a6;
  v49 = &v37;
  v50 = a8;
  v51 = &v31;
  dispatch_apply((v16 + 1023) >> 10, 0, &block);
  v17 = v31;
  if (v31 == v32)
  {
    v19 = 0;
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v19 = 0;
    do
    {
      v18 += (v17[1] - *v17) >> 3;
      v19 += (v17[4] - v17[3]) >> 4;
      v17 += 12;
    }

    while (v17 != v32);
  }

  std::vector<double>::reserve(a1 + 11, v18);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(a1 + 14, v19);
  v20 = v31;
  v21 = v32;
  while (v20 != v21)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long long const*,unsigned long long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(&block, *v20, v20[1], a1 + 11);
    v22 = v20[3];
    v23 = v20[4];
    while (v22 != v23)
    {
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](a1 + 14, v22++);
    }

    v20 += 12;
  }

  v25 = v37;
  add = atomic_fetch_add(v37, 1u);
  v26 = *(v25 + 1);
  if (add >= (*(v25 + 2) - v26) >> 4)
  {
    operator new();
  }

  v27 = (v26 + 16 * add);
  v29 = *v27;
  v28 = v27[1];
  if (v28)
  {
    atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
  }

  v30 = a1[1];
  *a1 = v29;
  a1[1] = v28;
  if (v30)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v30);
    v29 = *a1;
  }

  geom::merge_convex_hulls<float>(a1[14], (a1[15] - a1[14]) >> 4, v29 + 48, (v29 + 72), *(a1 + 16), *(a1 + 17));
  geom::cluster<float>::compute_concavity(a1);
  block = &v31;
  _ZNSt3__16vectorIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS0_IDv3_fNS_9allocatorIS9_EEEERKNS0_IjNSA_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextNSA_ISQ_EEE16__destroy_vectorclB8nn200100Ev(&block);
  if (__p)
  {
    v35 = __p;
    operator delete(__p);
  }
}

const void **std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 4)
  {
    if (!(a2 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<geom::convex_mesh<float>>>>(result, a2);
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  return result;
}

void geom::merge_convex_hulls<float>(uint64_t *a1, uint64_t a2, uint64_t a3, int **a4, uint64_t a5, float a6)
{
  if (a2)
  {
    v11 = a1;
    v12 = 0;
    v13 = 16 * a2;
    v14 = 16 * a2;
    v15 = a1;
    do
    {
      v16 = *v15;
      v15 += 2;
      v12 += (*(v16 + 56) - *(v16 + 48)) >> 4;
      v14 -= 16;
    }

    while (v14);
    *(a3 + 8) = *a3;
    _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm(a3, v12);
    do
    {
      v17 = *v11;
      v11 += 2;
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__insert_with_sizeB8nn200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(a3, *(a3 + 8), *(v17 + 48), *(v17 + 56), (*(v17 + 56) - *(v17 + 48)) >> 4);
      v13 -= 16;
    }

    while (v13);
    __p[0] = 0;
    __p[1] = 0;
    v27 = 0;
    memset(&v25, 0, sizeof(v25));
    geom::convex_hull_triangulated_3<float>((*(a3 + 8) - *a3) >> 4, *a3, a4, a5, a6);
    v25.__end_ = 0;
    __p[1] = 0;
    v18 = (*(a3 + 8) - *a3) >> 4;
    __x = -1;
    std::vector<unsigned int>::resize(&v25, v18, &__x);
    v20 = *a4;
    v19 = a4[1];
    while (v20 != v19)
    {
      v21 = *v20;
      begin = v25.__begin_;
      v23 = v25.__begin_[v21];
      if (v23 == -1)
      {
        v25.__begin_[v21] = (__p[1] - __p[0]) >> 4;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(__p, (*a3 + 16 * *v20));
        v23 = begin[v21];
      }

      *v20++ = v23;
    }

    v24 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v24;
      operator delete(v24);
    }

    *a3 = *__p;
    *(a3 + 16) = v27;
    __p[1] = 0;
    v27 = 0;
    __p[0] = 0;
    if (v25.__begin_)
    {
      v25.__end_ = v25.__begin_;
      operator delete(v25.__begin_);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    *(a3 + 8) = *a3;
    a4[1] = *a4;
  }
}

uint64_t geom::cluster<float>::compute_concavity(uint64_t result)
{
  v1 = *result;
  v2 = vcgtq_f32(v1[1], v1[2]);
  v2.i32[3] = v2.i32[2];
  if ((vmaxvq_u32(v2) & 0x80000000) != 0)
  {
    v3 = v1->f32[0];
    if (v1->f32[0] <= 0.00000011921)
    {
      goto LABEL_7;
    }

    v4 = v1[3].i64[0];
    v5 = v1[3].i64[1];
    v6.i64[0] = 0x7F0000007FLL;
    v6.i64[1] = 0x7F0000007FLL;
    for (i = vnegq_f32(v6); v4 != v5; v6 = vmaxnmq_f32(v9, v6))
    {
      v8 = *v4++;
      v9 = v8;
      v9.i32[3] = 0;
      i.i32[3] = 0;
      i = vminnmq_f32(v9, i);
      v6.i32[3] = 0;
    }

    v1[1] = i;
    v1[2] = v6;
    v1 = *result;
  }

  v3 = v1->f32[0];
LABEL_7:
  if (v3 <= 0.0)
  {
    *(result + 16) = 0;
    v10 = 0.0;
  }

  else
  {
    v10 = **result - *(result + 16);
    if (v10 < 0.0)
    {
      v10 = 0.0;
    }
  }

  *(result + 24) = v10;
  *(result + 137) = 1;
  return result;
}

uint64_t geom::cluster<float>::init(__n128 *a1, unint64_t a2, unint64_t a3, uint64_t a4, __n128 *__c, __n128 *a6, unsigned __int32 a7, __n128 a8, __n128 a9, float a10)
{
  a1[4].n128_u64[1] = a2;
  a1[5].n128_u64[0] = a3;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE(&a1[5].n128_i64[1], __c);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(&a1[7]);
  a1[7] = *a6;
  a1[8].n128_u64[0] = a6[1].n128_u64[0];
  a6->n128_u64[0] = 0;
  a6->n128_u64[1] = 0;
  a6[1].n128_u64[0] = 0;
  a1[4].n128_u32[0] = a7;
  a1[4].n128_f32[1] = a10;
  a1[2] = a8;
  a1[3] = a9;
  a1[8].n128_u8[8] = 1;
  add = atomic_fetch_add(a4, 1u);
  v16 = *(a4 + 8);
  if (add >= (*(a4 + 16) - v16) >> 4)
  {
    operator new();
  }

  v17 = (v16 + 16 * add);
  v19 = *v17;
  v18 = v17[1];
  if (v18)
  {
    atomic_fetch_add_explicit((v18 + 8), 1uLL, memory_order_relaxed);
  }

  v20 = a1->n128_u64[1];
  a1->n128_u64[0] = v19;
  a1->n128_u64[1] = v18;
  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v20);
    v19 = a1->n128_u64[0];
  }

  geom::merge_convex_hulls<float>(a1[7].n128_u64[0], (a1[7].n128_u64[1] - a1[7].n128_u64[0]) >> 4, v19 + 48, (v19 + 72), a1[4].n128_u32[0], a1[4].n128_f32[1]);

  return geom::cluster<float>::compute_concavity(a1);
}

void geom::cluster<float>::merge_into(int ***a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = (a1 + 14);
  v9 = (a2 + 112);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(a1 + 14, ((*(a2 + 120) - *(a2 + 112)) >> 4) + ((a1[15] - a1[14]) >> 4));
  std::vector<double>::reserve(a1 + 11, ((*(v9 - 2) - *(v9 - 3)) >> 3) + a1[12] - a1[11]);
  v10 = *v9;
  v11 = v9[1];
  while (v10 != v11)
  {
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](v8, v10);
    v10 += 16;
  }

  v12 = *(a2 + 88);
  v13 = *(a2 + 96);
  if (v12 != v13)
  {
    do
    {
      std::vector<unsigned long long>::push_back[abi:nn200100](a1 + 11, v12++);
    }

    while (v12 != v13);
    v12 = *(a2 + 88);
  }

  *(a2 + 96) = v12;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100](v9);
  v14 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v15 = a1[1];
  *a1 = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    if (*a1)
    {
      goto LABEL_18;
    }
  }

  else if (v14)
  {
    goto LABEL_18;
  }

  add = atomic_fetch_add(a4, 1u);
  v17 = *(a4 + 8);
  if (add >= (*(a4 + 16) - v17) >> 4)
  {
    operator new();
  }

  v18 = (v17 + 16 * add);
  v20 = *v18;
  v19 = v18[1];
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = a1[1];
  *a1 = v20;
  a1[1] = v19;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    v20 = *a1;
  }

  geom::merge_convex_hulls<float>(a1[14], (a1[15] - a1[14]) >> 4, (v20 + 6), v20 + 9, *(a1 + 16), *(a1 + 17));
LABEL_18:
  a1[2] = vadd_f32(*(a2 + 16), a1[2]);
  v22 = *(a1 + 2);
  v23 = *(a1 + 3);
  v22.i32[3] = 0;
  v24 = *(a2 + 32);
  v24.i32[3] = 0;
  *(a1 + 2) = vminnmq_f32(v22, v24);
  v25 = *(a2 + 48);
  v23.i32[3] = 0;
  v25.i32[3] = 0;
  *(a1 + 3) = vmaxnmq_f32(v23, v25);
  geom::cluster<float>::compute_concavity(a1);

  geom::cluster<float>::deinit(a2, a4);
}

void geom::cluster<float>::deinit(uint64_t a1, uint64_t a2)
{
  v4 = vneg_f32(0x3F0000003FLL);
  *(a1 + 16) = v4;
  *(a1 + 24) = 2143289344;
  v5.i64[0] = 0x7F0000007FLL;
  v5.i64[1] = 0x7F0000007FLL;
  v14 = vnegq_f32(v5);
  *(a1 + 32) = v14;
  *(a1 + 48) = v5;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  v6 = *(a1 + 112);
  v7 = *(a1 + 120);
  while (v6 != v7)
  {
    v8 = *(v7 - 8);
    if (v8)
    {
      if (v8->__shared_owners_ || (std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 8), v7 - 16), v9 = *(*(a2 + 16) - 16), *(v9 + 56) = *(v9 + 48), *(v9 + 80) = *(v9 + 72), *v9 = v4, *&v10 = 0x7F0000007FLL, *(&v10 + 1) = 0x7F0000007FLL, *(v9 + 16) = v14, *(v9 + 32) = v10, v7 = *(a1 + 120), (v8 = *(v7 - 8)) != 0))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v8);
      }
    }

    v7 -= 16;
    *(a1 + 120) = v7;
    v6 = *(a1 + 112);
  }

  v11 = *(a1 + 8);
  if (v11)
  {
    if (v11->__shared_owners_)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
LABEL_13:
      std::__shared_weak_count::__release_shared[abi:nn200100](v11);
      goto LABEL_14;
    }

    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 8), a1);
    v12 = *(*(a2 + 16) - 16);
    *(v12 + 56) = *(v12 + 48);
    *(v12 + 80) = *(v12 + 72);
    *v12 = vneg_f32(0x3F0000003FLL);
    v13.i64[0] = 0x7F0000007FLL;
    v13.i64[1] = 0x7F0000007FLL;
    *(v12 + 16) = vnegq_f32(v13);
    *(v12 + 32) = v13;
    v11 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

LABEL_14:
  *(a1 + 96) = *(a1 + 88);
  *(a1 + 136) = 0;
}

void *geom::cluster<float>::convex_hull@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

BOOL geom::cluster<float>::find_implicit_surface_crossings(uint64_t a1, void *a2, int a3, uint64_t a4, uint32x4_t a5)
{
  v8 = 0;
  v9 = 0;
  v41 = *MEMORY[0x277D85DE8];
  v10 = *(a1 + 72);
  v11 = vcgeq_u32(a5, vdupq_n_s32(v10->i32[1] - 1));
  v11.i32[3] = v11.i32[2];
  v12 = vmaxvq_u32(v11);
  do
  {
    if ((v12 & 0x80000000) != 0)
    {
      v14 = 0;
    }

    else
    {
      v13 = vaddq_s32(xmmword_2500C6860[v8], a5);
      v14 = *(*a2 + v13.u32[0] + (v13.u32[1] << v10->i32[0]) + (v13.u32[2] << (2 * v10->i8[0])));
    }

    v9 |= (v14 << v8++);
  }

  while (v8 != 8);
  if (v9 - 1 < 0xFE)
  {
    v15 = 0;
    v16 = v10[1];
    v17 = vmlaq_f32(v10[2], vcvtq_f32_u32(a5), v16);
    v35 = vaddq_f32(v16, v17);
    v37 = v17;
    v18 = v40;
    do
    {
      v19 = vnegq_s32(xmmword_2500C6860[v15]);
      v19.i32[3] = 0;
      *v18 = vbslq_s8(vcltzq_s32(v19), v35, v37);
      if ((v9 >> v15))
      {
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, v18);
      }

      ++v15;
      ++v18;
    }

    while (v15 != 8);
    for (i = 0; i != 12; ++i)
    {
      v21 = &unk_2500C68E0 + 2 * i;
      v22 = *v21;
      v23 = v21[1];
      v24 = (1 << v22) & v9;
      if ((v24 != 0) != ((v9 >> v23) & 1))
      {
        v25 = v24 == 0;
        if (v24)
        {
          v26 = v22;
        }

        else
        {
          v26 = v23;
        }

        v27 = v40[v26];
        if (!v25)
        {
          v22 = v23;
        }

        v28 = v40[v22];
        v29.i64[0] = 0x3F0000003F000000;
        v29.i64[1] = 0x3F0000003F000000;
        v39 = vmulq_f32(vaddq_f32(v27, v28), v29);
        if (a3)
        {
          v30 = a3;
          do
          {
            v36 = v28;
            v38 = v27;
            geom::query_exact_winding_number_3<float>(*(a1 + 80));
            v32 = 0.5 - v31;
            if (v32 >= -0.00000011921)
            {
              v27 = v38;
              if (v32 <= 0.00000011921)
              {
                break;
              }

              v28 = v39;
            }

            else
            {
              v27 = v39;
              v28 = v36;
            }

            v33.i64[0] = 0x3F0000003F000000;
            v33.i64[1] = 0x3F0000003F000000;
            v39 = vmulq_f32(vaddq_f32(v27, v28), v33);
            --v30;
          }

          while (v30);
        }

        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, &v39);
      }
    }
  }

  return v9 != 0;
}

void geom::cluster<float>::find_explicit_surface_crossings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint32x4_t a6)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 72);
  v7 = v6[1];
  v8 = vmlaq_f32(v6[2], vcvtq_f32_u32(a6), v7);
  v14 = v8.i32[2];
  v9 = vaddq_f32(v7, v8);
  v16 = v9.i32[2];
  v13 = v8.i64[0];
  v15 = v9.i64[0];
  __p = 0;
  v11 = 0;
  v12 = 0;
  operator new();
}

float geom::cluster<float>::compute_component_volume(void *a1)
{
  memset(&v20, 0, sizeof(v20));
  std::vector<float>::reserve(&v20, (a1[15] - a1[14]) >> 4);
  v2 = a1[14];
  v3 = a1[15];
  while (v2 != v3)
  {
    v5 = *v2;
    v2 += 2;
    v4 = v5;
    LODWORD(block[0]) = 0;
    if (*v5 >= 0.0)
    {
      v6 = v4;
    }

    else
    {
      v6 = block;
    }

    std::vector<float>::push_back[abi:nn200100](&v20.__begin_, v6);
  }

  begin = v20.__begin_;
  v8 = v20.__end_ - v20.__begin_;
  if (v8 >= 2)
  {
    v9 = (v20.__end_ - v20.__begin_) >> 1;
    v21 = 2;
    if (v9 >= 3)
    {
      v10 = MEMORY[0x277D85DD0];
      for (i = 2; i < v9; v21 = i)
      {
        block[0] = v10;
        block[1] = 0x40000000;
        block[2] = ___ZN4geom26dispatch_apply_with_strideIZNS_24parallel_reduce_in_placeIfNS_11plus_equalsIfEEEEvRNSt3__16vectorIT_NS4_9allocatorIS6_EEEEmP16dispatch_queue_sT0_EUlmmE_EEmmmSC_S6__block_invoke;
        block[3] = &__block_descriptor_tmp_20;
        block[4] = 128;
        v24 = (i + v20.__end_ - v20.__begin_ - 1) / i;
        v25 = &v21;
        v26 = v8;
        v27 = &v20;
        v28 = &v22;
        dispatch_apply((v24 + 127) >> 7, 0, block);
        i = 2 * v21;
      }

      begin = v20.__begin_;
    }
  }

  _Q0 = *(a1[9] + 16);
  _S1 = vmuls_lane_f32(((a1[12] - a1[11]) >> 3) * *&_Q0, *&_Q0, 1);
  __asm { FMLA            S8, S1, V0.S[2] }

  v20.__end_ = begin;
  operator delete(begin);
  return _S8;
}

float geom::cluster<float>::compute_component_surface_area(void *a1)
{
  memset(&v13, 0, sizeof(v13));
  std::vector<float>::reserve(&v13, (a1[15] - a1[14]) >> 4);
  v2 = a1[14];
  v3 = a1[15];
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    std::vector<float>::push_back[abi:nn200100](&v13.__begin_, (v4 + 4));
  }

  begin = v13.__begin_;
  v6 = v13.__end_ - v13.__begin_;
  if (v6 >= 2)
  {
    v7 = (v13.__end_ - v13.__begin_) >> 1;
    v14 = 2;
    if (v7 >= 3)
    {
      v8 = MEMORY[0x277D85DD0];
      for (i = 2; i < v7; v14 = i)
      {
        block[0] = v8;
        block[1] = 0x40000000;
        block[2] = ___ZN4geom26dispatch_apply_with_strideIZNS_24parallel_reduce_in_placeIfNS_11plus_equalsIfEEEEvRNSt3__16vectorIT_NS4_9allocatorIS6_EEEEmP16dispatch_queue_sT0_EUlmmE_EEmmmSC_S6__block_invoke;
        block[3] = &__block_descriptor_tmp_20;
        block[4] = 128;
        v17 = (i + v13.__end_ - v13.__begin_ - 1) / i;
        v18 = &v14;
        v19 = v6;
        v20 = &v13;
        v21 = &v15;
        dispatch_apply((v17 + 127) >> 7, 0, block);
        i = 2 * v14;
      }

      begin = v13.__begin_;
    }
  }

  v10 = vmulq_f32(*(a1[9] + 16), vextq_s8(vuzp1q_s32(*(a1[9] + 16), *(a1[9] + 16)), *(a1[9] + 16), 0xCuLL));
  v11 = *begin + (((a1[12] - a1[11]) >> 3) * (v10.f32[2] + vaddv_f32(*v10.f32)));
  v13.__end_ = begin;
  operator delete(begin);
  return v11;
}

void geom::cluster<double>::init(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, atomic_uint *a7, int a8, double a9, int a10)
{
  v38 = 0;
  v39 = a7;
  *(a1 + 192) = 1;
  a1[16] = a2;
  a1[17] = a3;
  v15 = *(a2 + 96);
  v17 = *(a2 + 48);
  v16 = *(a2 + 64);
  *(a1 + 5) = *(a2 + 80);
  *(a1 + 6) = v15;
  *(a1 + 3) = v17;
  *(a1 + 4) = v16;
  *(a1 + 28) = a10;
  *(a1 + 15) = a9;
  v18 = (*(a2 + 4) * *(a2 + 4) * *(a2 + 4));
  __p = 0;
  v37 = 0;
  if (v18)
  {
    operator new();
  }

  block = MEMORY[0x277D85DD0];
  v41 = 0x40000000;
  v42 = ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIdE4initEPKNS_10voxel_gridIdEEPvRKNSt3__16vectorIDv3_dNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIdLh3EEEPNS_17convex_mesh_cacheIdEEjjdEUlmE_EEmmmP16dispatch_queue_sT__block_invoke;
  v43 = &__block_descriptor_tmp_21;
  v44 = 1024;
  v45 = v18;
  v46 = a1;
  p_p = &__p;
  dispatch_apply((v18 + 1023) >> 10, 0, &block);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  block = MEMORY[0x277D85DD0];
  v41 = 0x40000000;
  v42 = ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIdE4initEPKNS_10voxel_gridIdEEPvRKNSt3__16vectorIDv3_dNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIdLh3EEEPNS_17convex_mesh_cacheIdEEjjdEUlmRZNS2_4initES6_S7_SF_SJ_SN_SQ_jjdE18voxel_init_contextE_SR_EEmmmP16dispatch_queue_sRNS9_IT0_NSB_ISW_EEEET__block_invoke;
  v43 = &__block_descriptor_tmp_23;
  v44 = 1024;
  v45 = v18;
  v46 = a1;
  p_p = &__p;
  v48 = a4;
  v49 = a5;
  v50 = a6;
  v51 = &v39;
  v52 = a8;
  v53 = &v33;
  dispatch_apply((v18 + 1023) >> 10, 0, &block);
  v19 = v33;
  if (v33 == v34)
  {
    v21 = 0;
    v20 = 0;
  }

  else
  {
    v20 = 0;
    v21 = 0;
    do
    {
      v20 += (v19[1] - *v19) >> 3;
      v21 += (v19[4] - v19[3]) >> 4;
      v19 += 12;
    }

    while (v19 != v34);
  }

  std::vector<double>::reserve(a1 + 18, v20);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(a1 + 21, v21);
  v22 = v33;
  v23 = v34;
  while (v22 != v23)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long long const*,unsigned long long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(&block, *v22, v22[1], a1 + 18);
    v24 = v22[3];
    v25 = v22[4];
    while (v24 != v25)
    {
      std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](a1 + 21, v24++);
    }

    v22 += 12;
  }

  v27 = v39;
  add = atomic_fetch_add(v39, 1u);
  v28 = *(v27 + 1);
  if (add >= (*(v27 + 2) - v28) >> 4)
  {
    operator new();
  }

  v29 = (v28 + 16 * add);
  v31 = *v29;
  v30 = v29[1];
  if (v30)
  {
    atomic_fetch_add_explicit((v30 + 8), 1uLL, memory_order_relaxed);
  }

  v32 = a1[1];
  *a1 = v31;
  a1[1] = v30;
  if (v32)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v32);
    v31 = *a1;
  }

  geom::merge_convex_hulls<double>(a1[21], (a1[22] - a1[21]) >> 4, v31 + 80, (v31 + 104), *(a1 + 28), *(a1 + 15));
  geom::cluster<double>::compute_concavity(a1);
  block = &v33;
  _ZNSt3__16vectorIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS0_IDv3_fNS_9allocatorIS9_EEEERKNS0_IjNSA_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextNSA_ISQ_EEE16__destroy_vectorclB8nn200100Ev(&block);
  if (__p)
  {
    v37 = __p;
    operator delete(__p);
  }
}

void geom::merge_convex_hulls<double>(uint64_t *a1, uint64_t a2, uint64_t a3, int **a4, uint64_t a5, double a6)
{
  if (a2)
  {
    v11 = a1;
    v12 = 0;
    v13 = 16 * a2;
    v14 = 16 * a2;
    v15 = a1;
    do
    {
      v16 = *v15;
      v15 += 2;
      v12 += (*(v16 + 88) - *(v16 + 80)) >> 5;
      v14 -= 16;
    }

    while (v14);
    *(a3 + 8) = *a3;
    _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE7reserveEm(a3, v12);
    do
    {
      v17 = *v11;
      v11 += 2;
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE18__insert_with_sizeB8nn200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(a3, *(a3 + 8), *(v17 + 80), *(v17 + 88), (*(v17 + 88) - *(v17 + 80)) >> 5);
      v13 -= 16;
    }

    while (v13);
    __p[0] = 0;
    __p[1] = 0;
    v27 = 0;
    memset(&v25, 0, sizeof(v25));
    geom::convex_hull_triangulated_3<double>((*(a3 + 8) - *a3) >> 5, *a3, a4, a5, a6);
    v25.__end_ = 0;
    __p[1] = 0;
    v18 = (*(a3 + 8) - *a3) >> 5;
    __x = -1;
    std::vector<unsigned int>::resize(&v25, v18, &__x);
    v20 = *a4;
    v19 = a4[1];
    while (v20 != v19)
    {
      v21 = *v20;
      begin = v25.__begin_;
      v23 = v25.__begin_[v21];
      if (v23 == -1)
      {
        v25.__begin_[v21] = (__p[1] - __p[0]) >> 5;
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(__p, (*a3 + 32 * *v20));
        v23 = begin[v21];
      }

      *v20++ = v23;
    }

    v24 = *a3;
    if (*a3)
    {
      *(a3 + 8) = v24;
      operator delete(v24);
    }

    *a3 = *__p;
    *(a3 + 16) = v27;
    __p[1] = 0;
    v27 = 0;
    __p[0] = 0;
    if (v25.__begin_)
    {
      v25.__end_ = v25.__begin_;
      operator delete(v25.__begin_);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }
    }
  }

  else
  {
    *(a3 + 8) = *a3;
    a4[1] = *a4;
  }
}

uint64_t geom::cluster<double>::compute_concavity(uint64_t result)
{
  v1 = *result;
  v2 = vcgtq_f64(*(v1 + 4), *(v1 + 8));
  v3 = vcgtq_f64(*(v1 + 2), *(v1 + 6));
  if (((*&v3.f64[0] | *&v2.f64[0] | *&v3.f64[1]) & 0x8000000000000000) != 0)
  {
    v4 = *v1;
    if (*v1 <= 2.22044605e-16)
    {
      goto LABEL_10;
    }

    v5 = *(v1 + 10);
    v6 = *(v1 + 11);
    if (v6 == v5)
    {
      v3.f64[0] = -INFINITY;
      v2.f64[0] = INFINITY;
      v8 = vdupq_n_s64(0xFFF0000000000000);
      v7 = vdupq_n_s64(0x7FF0000000000000uLL);
    }

    else
    {
      v2.f64[0] = INFINITY;
      v3.f64[0] = -INFINITY;
      v7 = vdupq_n_s64(0x7FF0000000000000uLL);
      v8 = vdupq_n_s64(0xFFF0000000000000);
      do
      {
        v9 = *v5;
        v10 = v5[1];
        v5 += 2;
        v7 = vminnmq_f64(v9, v7);
        v2 = vminnmq_f64(*&v10.f64[0], *&v2.f64[0]);
        v8 = vmaxnmq_f64(v9, v8);
        v3 = vmaxnmq_f64(*&v10.f64[0], *&v3.f64[0]);
      }

      while (v5 != v6);
    }

    *(v1 + 1) = v7;
    *(v1 + 2) = v2;
    *(v1 + 3) = v8;
    *(v1 + 4) = v3;
    v1 = *result;
  }

  v4 = *v1;
LABEL_10:
  if (v4 <= 0.0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  else
  {
    v11 = **result - *(result + 16);
    if (v11 < 0.0)
    {
      v11 = 0.0;
    }

    *(result + 32) = v11;
  }

  *(result + 193) = 1;
  return result;
}

uint64_t geom::cluster<double>::init(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 *__c, uint64_t a6, __int128 *a7, int a8, double a9)
{
  a1[16] = a2;
  a1[17] = a3;
  _ZNSt3__16vectorIDv2_fNS_9allocatorIS1_EEE13__move_assignERS4_NS_17integral_constantIbLb1EEE((a1 + 18), __c);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(a1 + 21);
  *(a1 + 21) = *a6;
  a1[23] = *(a6 + 16);
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a1 + 28) = a8;
  *(a1 + 15) = a9;
  v15 = *a7;
  v16 = a7[1];
  v17 = a7[3];
  *(a1 + 5) = a7[2];
  *(a1 + 6) = v17;
  *(a1 + 3) = v15;
  *(a1 + 4) = v16;
  *(a1 + 192) = 1;
  add = atomic_fetch_add(a4, 1u);
  v19 = *(a4 + 8);
  if (add >= (*(a4 + 16) - v19) >> 4)
  {
    operator new();
  }

  v20 = (v19 + 16 * add);
  v22 = *v20;
  v21 = v20[1];
  if (v21)
  {
    atomic_fetch_add_explicit((v21 + 8), 1uLL, memory_order_relaxed);
  }

  v23 = a1[1];
  *a1 = v22;
  a1[1] = v21;
  if (v23)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v23);
    v22 = *a1;
  }

  geom::merge_convex_hulls<double>(a1[21], (a1[22] - a1[21]) >> 4, v22 + 80, (v22 + 104), *(a1 + 28), *(a1 + 15));

  return geom::cluster<double>::compute_concavity(a1);
}

void geom::cluster<double>::merge_into(int ***a1, uint64_t a2, __int128 *a3, uint64_t a4)
{
  v8 = (a1 + 21);
  v9 = (a2 + 168);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::reserve(a1 + 21, ((*(a2 + 176) - *(a2 + 168)) >> 4) + ((a1[22] - a1[21]) >> 4));
  std::vector<double>::reserve(a1 + 18, ((*(v9 - 2) - *(v9 - 3)) >> 3) + a1[19] - a1[18]);
  v10 = *v9;
  v11 = v9[1];
  while (v10 != v11)
  {
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](v8, v10);
    v10 += 16;
  }

  v12 = *(a2 + 144);
  v13 = *(a2 + 152);
  if (v12 != v13)
  {
    do
    {
      std::vector<unsigned long long>::push_back[abi:nn200100](a1 + 18, v12++);
    }

    while (v12 != v13);
    v12 = *(a2 + 144);
  }

  *(a2 + 152) = v12;
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100](v9);
  v14 = *a3;
  *a3 = 0;
  *(a3 + 1) = 0;
  v15 = a1[1];
  *a1 = v14;
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v15);
    if (*a1)
    {
      goto LABEL_18;
    }
  }

  else if (v14)
  {
    goto LABEL_18;
  }

  add = atomic_fetch_add(a4, 1u);
  v17 = *(a4 + 8);
  if (add >= (*(a4 + 16) - v17) >> 4)
  {
    operator new();
  }

  v18 = (v17 + 16 * add);
  v20 = *v18;
  v19 = v18[1];
  if (v19)
  {
    atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
  }

  v21 = a1[1];
  *a1 = v20;
  a1[1] = v19;
  if (v21)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v21);
    v20 = *a1;
  }

  geom::merge_convex_hulls<double>(a1[21], (a1[22] - a1[21]) >> 4, (v20 + 10), v20 + 13, *(a1 + 28), *(a1 + 15));
LABEL_18:
  *(a1 + 1) = vaddq_f64(*(a2 + 16), *(a1 + 1));
  v22 = vminnmq_f64(a1[8], *(a2 + 64));
  *(a1 + 3) = vminnmq_f64(*(a1 + 3), *(a2 + 48));
  *(a1 + 4) = v22;
  v23 = vmaxnmq_f64(a1[12], *(a2 + 96));
  *(a1 + 5) = vmaxnmq_f64(*(a1 + 5), *(a2 + 80));
  *(a1 + 6) = v23;
  geom::cluster<double>::compute_concavity(a1);

  geom::cluster<double>::deinit(a2, a4);
}

void geom::cluster<double>::deinit(uint64_t a1, uint64_t a2)
{
  v4 = vdupq_n_s64(0x7FF8000000000000uLL);
  v15 = v4;
  *(a1 + 16) = v4;
  *(a1 + 32) = 0x7FF8000000000000;
  v4.i64[0] = 0x7FF0000000000000;
  v14 = vdupq_n_s64(0x7FF0000000000000uLL);
  *(a1 + 48) = v14;
  *(a1 + 64) = v4;
  v4.i64[0] = 0xFFF0000000000000;
  v13 = vdupq_n_s64(0xFFF0000000000000);
  *(a1 + 80) = v13;
  *(a1 + 96) = v4;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v5 = *(a1 + 168);
  v6 = *(a1 + 176);
  while (v5 != v6)
  {
    v7 = *(v6 - 8);
    if (v7)
    {
      if (v7->__shared_owners_ || (std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 8), v6 - 16), v8 = *(*(a2 + 16) - 16), *(v8 + 88) = *(v8 + 80), *(v8 + 112) = *(v8 + 104), *&v9 = 0xFFF0000000000000, *(v8 + 64) = v9, *&v9 = 0x7FF0000000000000, *v8 = v15, *(v8 + 16) = v14, *(v8 + 32) = v9, *(v8 + 48) = v13, v6 = *(a1 + 176), (v7 = *(v6 - 8)) != 0))
      {
        std::__shared_weak_count::__release_shared[abi:nn200100](v7);
      }
    }

    v6 -= 16;
    *(a1 + 176) = v6;
    v5 = *(a1 + 168);
  }

  v10 = *(a1 + 8);
  if (v10)
  {
    if (v10->__shared_owners_)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
LABEL_13:
      std::__shared_weak_count::__release_shared[abi:nn200100](v10);
      goto LABEL_14;
    }

    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100]((a2 + 8), a1);
    v11 = *(*(a2 + 16) - 16);
    v11[5].i64[1] = v11[5].i64[0];
    v11[7].i64[0] = v11[6].i64[1];
    v12 = vdupq_n_s64(0x7FF0000000000000uLL);
    *v11 = vdupq_n_s64(0x7FF8000000000000uLL);
    v11[1] = v12;
    v12.i64[0] = 0xFFF0000000000000;
    v11[3] = vdupq_n_s64(0xFFF0000000000000);
    v11[4] = v12;
    v12.i64[0] = 0x7FF0000000000000;
    v11[2] = v12;
    v10 = *(a1 + 8);
    *a1 = 0;
    *(a1 + 8) = 0;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
  }

LABEL_14:
  *(a1 + 152) = *(a1 + 144);
  *(a1 + 192) = 0;
}

double geom::cluster<double>::evaluate(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 136);
  v3 = a2[1];
  v6[0] = *a2;
  v6[1] = v3;
  geom::query_exact_winding_number_3<double>(v2, v6);
  return 0.5 - v4;
}

BOOL geom::cluster<double>::find_implicit_surface_crossings(uint64_t a1, void *a2, int a3, uint64_t a4, uint32x4_t a5)
{
  v7 = 0;
  v8 = 0;
  v60 = *MEMORY[0x277D85DE8];
  v9 = *(a1 + 128);
  v10 = vcgeq_u32(a5, vdupq_n_s32(*(v9 + 4) - 1));
  v10.i32[3] = v10.i32[2];
  v11 = vmaxvq_u32(v10);
  do
  {
    if ((v11 & 0x80000000) != 0)
    {
      v13 = 0;
    }

    else
    {
      v12 = vaddq_s32(xmmword_2500C6860[v7], a5);
      v13 = *(*a2 + v12.u32[0] + (v12.u32[1] << *v9) + (v12.u32[2] << (2 * *v9)));
    }

    v8 |= (v13 << v7++);
  }

  while (v7 != 8);
  if (v8 - 1 < 0xFE)
  {
    v14 = 0;
    v16 = *(v9 + 16);
    v15 = *(v9 + 32);
    v17.i64[0] = a5.u32[2];
    v17.i64[1] = a5.u32[3];
    v18 = vcvtq_f64_u64(v17);
    v17.i64[0] = a5.u32[0];
    v17.i64[1] = a5.u32[1];
    v52 = vmlaq_f64(*(v9 + 48), vcvtq_f64_u64(v17), v16);
    v54 = vmlaq_f64(*(v9 + 64), v18, v15);
    v48 = vaddq_f64(v16, v52);
    v50 = vaddq_f64(v15, v54);
    v19 = v59;
    do
    {
      v20 = vnegq_s32(xmmword_2500C6860[v14]);
      v21.i64[0] = v20.i32[0];
      v21.i64[1] = v20.i32[1];
      *v19 = vbslq_s8(vcltzq_s64(v21), v48, v52);
      v19[1] = vbslq_s8(vcltzq_s64(v20.i32[2]), v50, v54);
      if ((v8 >> v14))
      {
        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, v19);
      }

      ++v14;
      v19 += 2;
    }

    while (v14 != 8);
    v22 = 0;
    __asm { FMOV            V0.2D, #0.5 }

    v47 = _Q0;
    do
    {
      v27 = &unk_2500C68E0 + 2 * v22;
      LODWORD(v28) = *v27;
      v29 = v27[1];
      v30 = (1 << v28) & v8;
      if ((v30 != 0) != ((v8 >> v29) & 1))
      {
        _ZF = v30 == 0;
        if (v30)
        {
          v32 = v28;
        }

        else
        {
          v32 = v29;
        }

        v33 = &v59[2 * v32];
        v34 = *v33;
        v35 = v33[1];
        if (_ZF)
        {
          v28 = v28;
        }

        else
        {
          v28 = v29;
        }

        v36 = &v59[2 * v28];
        v37 = *v36;
        v38 = v36[1];
        v39 = vmulq_f64(vaddq_f64(v34, *v36), v47);
        v40 = vmulq_f64(vaddq_f64(v35, v38), v47);
        v56 = v39;
        v57 = v40;
        if (a3)
        {
          v41 = a3;
          do
          {
            v49 = v38;
            v51 = v37;
            v53 = v35;
            v55 = v34;
            v42 = *(a1 + 136);
            v58[0] = v39;
            v58[1] = v40;
            geom::query_exact_winding_number_3<double>(v42, v58);
            v44 = 0.5 - v43;
            if (v44 >= -2.22044605e-16)
            {
              v35 = v53;
              v34 = v55;
              if (v44 <= 2.22044605e-16)
              {
                break;
              }

              v37 = v56;
              v38 = v57;
            }

            else
            {
              v34 = v56;
              v35 = v57;
              v38 = v49;
              v37 = v51;
            }

            v40 = vmulq_f64(vaddq_f64(v35, v38), v47);
            v39 = vmulq_f64(vaddq_f64(v34, v37), v47);
            v56 = v39;
            v57 = v40;
            --v41;
          }

          while (v41);
        }

        _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a4, &v56);
      }

      ++v22;
    }

    while (v22 != 12);
  }

  return v8 != 0;
}

void geom::cluster<double>::find_explicit_surface_crossings(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(a1 + 128);
  v7 = v6[1];
  v8 = v6[2];
  v9.i64[0] = a6.n128_u32[0];
  v9.i64[1] = a6.n128_u32[1];
  v10 = vcvtq_f64_u64(v9);
  v9.i64[0] = a6.n128_u32[2];
  v9.i64[1] = a6.n128_u32[3];
  v11 = vmlaq_f64(v6[4], vcvtq_f64_u64(v9), v8);
  v15 = vmlaq_f64(v6[3], v10, v7);
  v16 = v11;
  v17 = vaddq_f64(v7, v15);
  v18 = vaddq_f64(v8, v11);
  __p = 0;
  v13 = 0;
  v14 = 0;
  operator new();
}

double geom::cluster<double>::compute_component_volume(void *a1)
{
  __p = 0;
  v15 = 0;
  v16 = 0;
  std::vector<double>::reserve(&__p, (a1[22] - a1[21]) >> 4);
  v2 = a1[21];
  v3 = a1[22];
  while (v2 != v3)
  {
    v5 = *v2;
    v2 += 2;
    v4 = v5;
    block[0] = 0;
    if (*v5 >= 0.0)
    {
      v6 = v4;
    }

    else
    {
      v6 = block;
    }

    std::vector<double>::push_back[abi:nn200100](&__p, v6);
  }

  v7 = __p;
  v8 = (v15 - __p) >> 3;
  if (v8 >= 2)
  {
    v9 = (v15 - __p) >> 2;
    v17 = 2;
    if (v9 >= 3)
    {
      v10 = MEMORY[0x277D85DD0];
      for (i = 2; i < v9; v17 = i)
      {
        block[0] = v10;
        block[1] = 0x40000000;
        block[2] = ___ZN4geom26dispatch_apply_with_strideIZNS_24parallel_reduce_in_placeIdNS_11plus_equalsIdEEEEvRNSt3__16vectorIT_NS4_9allocatorIS6_EEEEmP16dispatch_queue_sT0_EUlmmE_EEmmmSC_S6__block_invoke;
        block[3] = &__block_descriptor_tmp_31;
        block[4] = 128;
        v20 = (i + ((v15 - __p) >> 3) - 1) / i;
        v21 = &v17;
        v22 = v8;
        p_p = &__p;
        v24 = &v18;
        dispatch_apply((v20 + 127) >> 7, 0, block);
        i = 2 * v17;
      }

      v7 = __p;
    }
  }

  v12 = *v7 + vmuld_lane_f64(((a1[19] - a1[18]) >> 3) * *(a1[16] + 16), *(a1[16] + 16), 1) * *(a1[16] + 32);
  v15 = v7;
  operator delete(v7);
  return v12;
}

double geom::cluster<double>::compute_component_surface_area(void *a1)
{
  __p = 0;
  v17 = 0;
  v18 = 0;
  std::vector<double>::reserve(&__p, (a1[22] - a1[21]) >> 4);
  v2 = a1[21];
  v3 = a1[22];
  while (v2 != v3)
  {
    v4 = *v2;
    v2 += 2;
    std::vector<double>::push_back[abi:nn200100](&__p, (v4 + 8));
  }

  v5 = __p;
  v6 = (v17 - __p) >> 3;
  if (v6 >= 2)
  {
    v7 = (v17 - __p) >> 2;
    v19 = 2;
    if (v7 >= 3)
    {
      v8 = MEMORY[0x277D85DD0];
      for (i = 2; i < v7; v19 = i)
      {
        block[0] = v8;
        block[1] = 0x40000000;
        block[2] = ___ZN4geom26dispatch_apply_with_strideIZNS_24parallel_reduce_in_placeIdNS_11plus_equalsIdEEEEvRNSt3__16vectorIT_NS4_9allocatorIS6_EEEEmP16dispatch_queue_sT0_EUlmmE_EEmmmSC_S6__block_invoke;
        block[3] = &__block_descriptor_tmp_31;
        block[4] = 128;
        v22 = (i + ((v17 - __p) >> 3) - 1) / i;
        v23 = &v19;
        v24 = v6;
        p_p = &__p;
        v26 = &v20;
        dispatch_apply((v22 + 127) >> 7, 0, block);
        i = 2 * v19;
      }

      v5 = __p;
    }
  }

  v10 = a1[16];
  v11 = v10[1];
  v12 = v10[2];
  v13 = vmulq_laneq_f64(v12, v11, 1).f64[0];
  v12.f64[1] = v10[1].f64[0];
  v14 = *v5 + ((a1[19] - a1[18]) >> 3) * (v13 + vaddvq_f64(vmulq_f64(v11, v12)));
  v17 = v5;
  operator delete(v5);
  return v14;
}

uint64_t ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIfE4initEPKNS_10voxel_gridIfEEPvRKNSt3__16vectorIDv3_fNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIfLh3EEEPNS_17convex_mesh_cacheIfEEjjfEUlmE_EEmmmP16dispatch_queue_sT__block_invoke(uint64_t result, uint64_t a2)
{
  v2 = *(result + 32);
  v3 = v2 * a2;
  v4 = v2 * a2 + v2;
  if (*(result + 40) >= v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = *(result + 40);
  }

  if (v3 < v5)
  {
    v6 = result;
    do
    {
      result = geom::query_exact_winding_number_3<float>(*(*(v6 + 48) + 80));
      *(**(v6 + 56) + v3++) = (0.5 - v7) <= 0.00000011921;
    }

    while (v5 != v3);
  }

  return result;
}

void _ZNSt3__16vectorIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS0_IDv3_fNS_9allocatorIS9_EEEERKNS0_IjNSA_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextNSA_ISQ_EEE16__destroy_vectorclB8nn200100Ev(void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 96;
        _ZNSt3__116allocator_traitsINS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEE7destroyB8nn200100ISR_Li0EEEvRSS_PT_(v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void _ZNSt3__116allocator_traitsINS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEE7destroyB8nn200100ISR_Li0EEEvRSS_PT_(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 72);
  if (v3)
  {
    *(a2 + 80) = v3;
    operator delete(v3);
  }

  v4 = *(a2 + 48);
  if (v4)
  {
    *(a2 + 56) = v4;
    operator delete(v4);
  }

  v6 = (a2 + 24);
  std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__destroy_vector::operator()[abi:nn200100](&v6);
  v5 = *a2;
  if (*a2)
  {
    *(a2 + 8) = v5;
    operator delete(v5);
  }
}

void std::__shared_ptr_emplace<geom::convex_mesh<float>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_286291458;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25305E3F0);
}

void std::allocator<geom::convex_mesh<float>>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[9];
  if (v3)
  {
    a2[10] = v3;
    operator delete(v3);
  }

  v4 = a2[6];
  if (v4)
  {
    a2[7] = v4;

    operator delete(v4);
  }
}

void _ZNSt3__16vectorIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS0_IDv3_fNS_9allocatorIS9_EEEERKNS0_IjNSA_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextNSA_ISQ_EEE6resizeEm(char **a1, unint64_t a2)
{
  v3 = a1[1];
  v4 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 5);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v6 != 0 && v5)
  {

    _ZNSt3__16vectorIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS0_IDv3_fNS_9allocatorIS9_EEEERKNS0_IjNSA_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextNSA_ISQ_EEE8__appendEm(a1, v6);
  }

  else if (!v5)
  {
    v7 = &(*a1)[96 * a2];
    while (v3 != v7)
    {
      v3 -= 96;
      _ZNSt3__116allocator_traitsINS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEE7destroyB8nn200100ISR_Li0EEEvRSS_PT_(a1, v3);
    }

    a1[1] = v7;
  }
}

void ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIfE4initEPKNS_10voxel_gridIfEEPvRKNSt3__16vectorIDv3_fNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIfLh3EEEPNS_17convex_mesh_cacheIfEEjjfEUlmRZNS2_4initES6_S7_SF_SJ_SN_SQ_jjfE18voxel_init_contextE_SR_EEmmmP16dispatch_queue_sRNS9_IT0_NSB_ISW_EEEET__block_invoke(uint64_t result, uint64_t a2, uint32x4_t a3)
{
  v3 = *(result + 32);
  v4 = v3 * a2;
  v5 = v3 * a2 + v3;
  if (*(result + 40) >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(result + 40);
  }

  if (v4 < v6)
  {
    do
    {
      _ZZN4geom7clusterIfE4initEPKNS_10voxel_gridIfEEPvRKNSt3__16vectorIDv3_fNS7_9allocatorIS9_EEEERKNS8_IjNSA_IjEEEERKNS_3bvhIfLh3EEEPNS_17convex_mesh_cacheIfEEjjfENKUlmRZNS1_4initES5_S6_SE_SI_SM_SP_jjfE18voxel_init_contextE_clEmSR_(result + 48, v4++, (**(result + 104) + 96 * a2), a3);
    }

    while (v6 != v4);
  }
}

void _ZZN4geom7clusterIfE4initEPKNS_10voxel_gridIfEEPvRKNSt3__16vectorIDv3_fNS7_9allocatorIS9_EEEERKNS8_IjNSA_IjEEEERKNS_3bvhIfLh3EEEPNS_17convex_mesh_cacheIfEEjjfENKUlmRZNS1_4initES5_S6_SE_SI_SM_SP_jjfE18voxel_init_contextE_clEmSR_(uint64_t a1, unint64_t a2, std::vector<int> *a3, uint32x4_t a4)
{
  v7 = *a1;
  v8 = *(*a1 + 72);
  v9 = v8[2];
  LODWORD(v8) = *v8;
  a4.i32[0] = v9 & a2;
  a4.i32[1] = (a2 >> v8) & v9;
  a4.i32[2] = (a2 >> (2 * v8)) & v9;
  v10 = a3 + 2;
  a3[2].__end_ = a3[2].__begin_;
  v12 = a4;
  implicit_surface_crossings = geom::cluster<float>::find_implicit_surface_crossings(v7, *(a1 + 8), *(a1 + 48), &a3[2], a4);
  if (v10->__begin_ != v10->__end_ || !implicit_surface_crossings)
  {
    geom::cluster<float>::find_explicit_surface_crossings(v7, *(a1 + 16), *(a1 + 24), *(a1 + 32), v10, v12);
  }

  v13[0] = a2;
  std::vector<unsigned long long>::push_back[abi:nn200100](&a3->__begin_, v13);
}

void _ZNSt3__16vectorIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS0_IDv3_fNS_9allocatorIS9_EEEERKNS0_IjNSA_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextNSA_ISQ_EEE8__appendEm(char **a1, unint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v5) >> 5) >= a2)
  {
    if (a2)
    {
      v10 = 96 * ((96 * a2 - 96) / 0x60) + 96;
      bzero(a1[1], v10);
      v5 += v10;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 5);
    v7 = v6 + a2;
    if (v6 + a2 > 0x2AAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 5);
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x155555555555555)
    {
      v9 = 0x2AAAAAAAAAAAAAALL;
    }

    else
    {
      v9 = v7;
    }

    v18[4] = a1;
    if (v9)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSV_m(a1, v9);
    }

    v11 = 96 * v6;
    v12 = 96 * ((96 * a2 - 96) / 0x60) + 96;
    bzero(v11, v12);
    v13 = (v11 + v12);
    v14 = a1[1];
    v15 = (v11 + *a1 - v14);
    _ZNSt3__134__uninitialized_allocator_relocateB8nn200100INS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEPSR_EEvRT_T0_SW_SW_(a1, *a1, v14, v15);
    v16 = *a1;
    *a1 = v15;
    a1[1] = v13;
    v17 = a1[2];
    a1[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    _ZNSt3__114__split_bufferIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextRNSB_ISR_EEED2Ev(v18);
  }
}

void _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSV_m(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void _ZNSt3__134__uninitialized_allocator_relocateB8nn200100INS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEPSR_EEvRT_T0_SW_SW_(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      *a4 = *v7;
      a4[2] = *(v7 + 16);
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 0;
      a4[3] = 0;
      a4[4] = 0;
      a4[5] = 0;
      *(a4 + 3) = *(v7 + 24);
      a4[5] = *(v7 + 40);
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 40) = 0;
      a4[6] = 0;
      a4[7] = 0;
      a4[8] = 0;
      *(a4 + 3) = *(v7 + 48);
      a4[8] = *(v7 + 64);
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      a4[9] = 0;
      a4[10] = 0;
      a4[11] = 0;
      *(a4 + 9) = *(v7 + 72);
      a4[11] = *(v7 + 88);
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 88) = 0;
      v7 += 96;
      a4 += 12;
    }

    while (v7 != a3);
    while (v5 != a3)
    {
      _ZNSt3__116allocator_traitsINS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEE7destroyB8nn200100ISR_Li0EEEvRSS_PT_(a1, v5);
      v5 += 96;
    }
  }
}

void **_ZNSt3__114__split_bufferIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextRNSB_ISR_EEED2Ev(void **a1)
{
  _ZNSt3__114__split_bufferIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextRNSB_ISR_EEE5clearB8nn200100Ev(a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void _ZNSt3__114__split_bufferIZN4geom7clusterIfE4initEPKNS1_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS1_3bvhIfLh3EEEPNS1_17convex_mesh_cacheIfEEjjfE18voxel_init_contextRNSB_ISR_EEE5clearB8nn200100Ev(void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    _ZNSt3__116allocator_traitsINS_9allocatorIZN4geom7clusterIfE4initEPKNS2_10voxel_gridIfEEPvRKNS_6vectorIDv3_fNS1_ISB_EEEERKNSA_IjNS1_IjEEEERKNS2_3bvhIfLh3EEEPNS2_17convex_mesh_cacheIfEEjjfE18voxel_init_contextEEE7destroyB8nn200100ISR_Li0EEEvRSS_PT_(v4, i - 96);
  }
}

void std::vector<unsigned long long>::push_back[abi:nn200100](const void **a1, uint64_t *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 8;
  }

  a1[1] = v6;
}

void **std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](void **result, uint64_t a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 3;
    if (v8 >> 3 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<geom::convex_mesh<float>>>>(result, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    *a2 = 0;
    *(a2 + 8) = 0;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::shared_ptr<geom::convex_mesh<float>>>::~__split_buffer(v16);
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
  }

  v3[1] = v6;
  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<geom::convex_mesh<float>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:nn200100]();
}

void **std::__split_buffer<std::shared_ptr<geom::convex_mesh<float>>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  while (v1 != v2)
  {
    *(a1 + 16) = v1 - 16;
    v4 = *(v1 - 8);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v4);
      v1 = *(a1 + 16);
    }

    else
    {
      v1 -= 16;
    }
  }
}

void *std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<unsigned long long const*,unsigned long long const*,std::back_insert_iterator<std::vector<unsigned long long>>>(uint64_t a1, void *a2, void *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          std::__throw_bad_array_new_length[abi:nn200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<double>>(a4, v14);
        }

        *(8 * v11) = *v5;
        v7 = (8 * v11 + 8);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = *v5;
        v7 += 8;
      }

      a4[1] = v7;
      ++v5;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

void **std::vector<std::shared_ptr<geom::convex_mesh<float>>>::push_back[abi:nn200100](void **result, __int128 *a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v8 = (v4 - *result) >> 4;
    v9 = v8 + 1;
    if ((v8 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v10 = v5 - *result;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    v18[4] = result;
    if (v11)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::shared_ptr<geom::convex_mesh<float>>>>(result, v11);
    }

    v12 = 16 * v8;
    v13 = *a2;
    *(16 * v8) = *a2;
    if (*(&v13 + 1))
    {
      atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v7 = (v12 + 16);
    v14 = result[1] - *result;
    v15 = (v12 - v14);
    memcpy((v12 - v14), *result, v14);
    v16 = *v3;
    *v3 = v15;
    v3[1] = v7;
    v17 = v3[2];
    v3[2] = 0;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::shared_ptr<geom::convex_mesh<float>>>::~__split_buffer(v18);
  }

  else
  {
    v6 = *(a2 + 1);
    *v4 = *a2;
    *(v4 + 1) = v6;
    if (v6)
    {
      atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
    }

    v7 = v4 + 16;
  }

  v3[1] = v7;
  return result;
}

char *_ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__insert_with_sizeB8nn200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 4)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 4);
    if (v12 >> 60)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 3 > v12)
    {
      v12 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 4;
    if (v15)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_fEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v15);
    }

    v33 = 16 * v16;
    v34 = 16 * a5;
    v35 = (16 * v16);
    do
    {
      v36 = *v7;
      v7 += 16;
      *v35++ = v36;
      v34 -= 16;
    }

    while (v34);
    memcpy((v33 + 16 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 16 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (16 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 4;
  if (v18 >= a5)
  {
    v29 = &__dst[16 * a5];
    v30 = (v10 - 16 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[16 * a5], __dst, v10 - v29);
    }

    v28 = 16 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[16 * a5];
    v23 = v10 + v20;
    if (&v21[-16 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -16 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 16;
        v24 += 16;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[16 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

void std::vector<std::shared_ptr<geom::convex_mesh<float>>>::__vdeallocate(uint64_t *a1)
{
  if (*a1)
  {
    std::vector<std::shared_ptr<geom::convex_mesh<float>>>::clear[abi:nn200100](a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_fNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIfLh3EEERSA_EUljE_NS8_ISM_EEFbjEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2862914A8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL _ZNSt3__110__function6__funcIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_fNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIfLh3EEERSA_EUljE_NS8_ISM_EEFbjEEclEOj(uint64_t a1, _DWORD *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = 3 * *a2;
  v4 = **(a1 + 32);
  v5 = **(a1 + 24);
  v6 = *(v5 + 16 * *(v4 + 4 * (v3 + 1)));
  v7 = *(v5 + 16 * *(v4 + 4 * (v3 + 2)));
  v13[0] = *(v5 + 16 * *(v4 + 4 * v3));
  v13[1] = v6;
  v13[2] = v7;
  v8 = geom::intersect_triangle_bbox_3<float>(v13, *(a1 + 8), v14);
  v9 = v8;
  if (v8)
  {
    v10 = v8;
    v11 = v14;
    do
    {
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(*(a1 + 16), v11++);
      --v10;
    }

    while (v10);
  }

  return v9 != 0;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_fNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIfLh3EEERSA_EUljE_NS8_ISM_EEFbjEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNSt3__16vectorIDv3_fNS3_9allocatorIS5_EEEERKNS4_IjNS6_IjEEEERKNS_3bvhIfLh3EEERS8_EUljE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_fNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIfLh3EEERSA_EUlRKNS2_4bboxIfLh3EEEE_NS8_ISQ_EEFbSP_EE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286291528;
  a2[1] = v2;
  return result;
}

BOOL _ZNSt3__110__function6__funcIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_fNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIfLh3EEERSA_EUlRKNS2_4bboxIfLh3EEEE_NS8_ISQ_EEFbSP_EEclESP_(uint64_t a1, float32x4_t *a2)
{
  v2 = *(a1 + 8);
  v3 = vcgtq_f32(*a2, v2[1]);
  v3.i32[3] = v3.i32[2];
  if ((vmaxvq_u32(v3) & 0x80000000) != 0)
  {
    return 0;
  }

  v4 = vcgtq_f32(*v2, a2[1]);
  v4.i32[3] = v4.i32[2];
  return (vmaxvq_u32(v4) & 0x80000000) == 0;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_fNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIfLh3EEERSA_EUlRKNS2_4bboxIfLh3EEEE_NS8_ISQ_EEFbSP_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom7clusterIfE31find_explicit_surface_crossingsEDv3_jRKNSt3__16vectorIDv3_fNS3_9allocatorIS5_EEEERKNS4_IjNS6_IjEEEERKNS_3bvhIfLh3EEERS8_EUlRKNS_4bboxIfLh3EEEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(geom::bbox<float,(unsigned char)3> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t ___ZN4geom26dispatch_apply_with_strideIZNS_24parallel_reduce_in_placeIfNS_11plus_equalsIfEEEEvRNSt3__16vectorIT_NS4_9allocatorIS6_EEEEmP16dispatch_queue_sT0_EUlmmE_EEmmmSC_S6__block_invoke(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  v2 = *(result + 40);
  v4 = v3 * a2;
  if (v2 >= v3 * a2 + v3)
  {
    v2 = v3 * a2 + v3;
  }

  v5 = v2 > v4;
  v6 = v2 - v4;
  if (v5)
  {
    v7 = *(result + 56);
    v8 = **(result + 48);
    v9 = v3 * v8 * a2;
    do
    {
      if ((v8 >> 1) + v9 < v7)
      {
        v10 = (**(result + 64) + 4 * v9);
        *v10 = v10[v8 >> 1] + *v10;
      }

      v9 += v8;
      --v6;
    }

    while (v6);
  }

  return result;
}

uint64_t ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIdE4initEPKNS_10voxel_gridIdEEPvRKNSt3__16vectorIDv3_dNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIdLh3EEEPNS_17convex_mesh_cacheIdEEjjdEUlmE_EEmmmP16dispatch_queue_sT__block_invoke(uint64_t result, uint64_t a2, double a3, double a4, double a5, double a6, double a7, double a8)
{
  v8 = *(result + 32);
  v9 = v8 * a2;
  v10 = v8 * a2 + v8;
  if (*(result + 40) >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = *(result + 40);
  }

  if (v9 < v11)
  {
    v12 = result;
    do
    {
      v13 = *(v12 + 48);
      v15 = *(v13 + 128);
      v14 = *(v13 + 136);
      LODWORD(v13) = *(v15 + 8);
      v16.i64[0] = v13 & v9;
      v16.i64[1] = (v9 >> *v15) & v13;
      v17 = vcvtq_f64_u64(v16);
      v16.i64[0] = (v9 >> (2 * *v15)) & v13;
      v16.i64[1] = HIDWORD(a8);
      v18 = vmlaq_f64(*(v15 + 64), vcvtq_f64_u64(v16), *(v15 + 32));
      v20[0] = vmlaq_f64(*(v15 + 48), v17, *(v15 + 16));
      v20[1] = v18;
      result = geom::query_exact_winding_number_3<double>(v14, v20);
      *(**(v12 + 56) + v9++) = 0.5 - v19 <= 2.22044605e-16;
    }

    while (v11 != v9);
  }

  return result;
}

void std::__shared_ptr_emplace<geom::convex_mesh<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2862915B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x25305E3F0);
}

void std::allocator<geom::convex_mesh<double>>::destroy[abi:nn200100](uint64_t a1, void *a2)
{
  v3 = a2[13];
  if (v3)
  {
    a2[14] = v3;
    operator delete(v3);
  }

  v4 = a2[10];
  if (v4)
  {
    a2[11] = v4;

    operator delete(v4);
  }
}

void ___ZN4geom26dispatch_apply_with_strideIZNS_7clusterIdE4initEPKNS_10voxel_gridIdEEPvRKNSt3__16vectorIDv3_dNS8_9allocatorISA_EEEERKNS9_IjNSB_IjEEEERKNS_3bvhIdLh3EEEPNS_17convex_mesh_cacheIdEEjjdEUlmRZNS2_4initES6_S7_SF_SJ_SN_SQ_jjdE18voxel_init_contextE_SR_EEmmmP16dispatch_queue_sRNS9_IT0_NSB_ISW_EEEET__block_invoke(uint64_t result, uint64_t a2, uint32x4_t a3)
{
  v3 = *(result + 32);
  v4 = v3 * a2;
  v5 = v3 * a2 + v3;
  if (*(result + 40) >= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = *(result + 40);
  }

  if (v4 < v6)
  {
    do
    {
      _ZZN4geom7clusterIdE4initEPKNS_10voxel_gridIdEEPvRKNSt3__16vectorIDv3_dNS7_9allocatorIS9_EEEERKNS8_IjNSA_IjEEEERKNS_3bvhIdLh3EEEPNS_17convex_mesh_cacheIdEEjjdENKUlmRZNS1_4initES5_S6_SE_SI_SM_SP_jjdE18voxel_init_contextE_clEmSR_(result + 48, v4++, (**(result + 104) + 96 * a2), a3);
    }

    while (v6 != v4);
  }
}

void _ZZN4geom7clusterIdE4initEPKNS_10voxel_gridIdEEPvRKNSt3__16vectorIDv3_dNS7_9allocatorIS9_EEEERKNS8_IjNSA_IjEEEERKNS_3bvhIdLh3EEEPNS_17convex_mesh_cacheIdEEjjdENKUlmRZNS1_4initES5_S6_SE_SI_SM_SP_jjdE18voxel_init_contextE_clEmSR_(uint64_t a1, unint64_t a2, std::vector<int> *a3, uint32x4_t a4)
{
  v7 = *a1;
  v8 = *(*a1 + 128);
  v9 = v8[2];
  LODWORD(v8) = *v8;
  a4.i32[0] = v9 & a2;
  a4.i32[1] = (a2 >> v8) & v9;
  a4.i32[2] = (a2 >> (2 * v8)) & v9;
  v10 = a3 + 2;
  a3[2].__end_ = a3[2].__begin_;
  v12 = a4;
  implicit_surface_crossings = geom::cluster<double>::find_implicit_surface_crossings(v7, *(a1 + 8), *(a1 + 48), &a3[2], a4);
  if (v10->__begin_ != v10->__end_ || !implicit_surface_crossings)
  {
    geom::cluster<double>::find_explicit_surface_crossings(v7, *(a1 + 16), *(a1 + 24), *(a1 + 32), v10, v12);
  }

  v13[0] = a2;
  std::vector<unsigned long long>::push_back[abi:nn200100](&a3->__begin_, v13);
}

char *_ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE18__insert_with_sizeB8nn200100INS_11__wrap_iterIPS1_EES8_EES8_NS6_IPKS1_EET_T0_l(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 5)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 5);
    if (v12 >> 59)
    {
      std::__throw_bad_array_new_length[abi:nn200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 4 > v12)
    {
      v12 = v14 >> 4;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFE0)
    {
      v15 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 5;
    if (v15)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIDv3_dEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERS6_m(a1, v15);
    }

    v36 = 32 * v16;
    v37 = 32 * a5;
    v38 = (32 * v16);
    do
    {
      v39 = *v7;
      v40 = *(v7 + 1);
      v7 += 32;
      *v38 = v39;
      v38[1] = v40;
      v38 += 2;
      v37 -= 32;
    }

    while (v37);
    memcpy((v36 + 32 * a5), v5, a1[1] - v5);
    v41 = *a1;
    v42 = v36 + 32 * a5 + a1[1] - v5;
    a1[1] = v5;
    v43 = v5 - v41;
    v44 = (v36 - (v5 - v41));
    memcpy(v44, v41, v43);
    v45 = *a1;
    *a1 = v44;
    a1[1] = v42;
    a1[2] = 0;
    if (v45)
    {
      operator delete(v45);
    }

    return (32 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 5;
  if (v18 >= a5)
  {
    v31 = &__dst[32 * a5];
    v32 = (v10 - 32 * a5);
    v33 = a1[1];
    while (v32 < v10)
    {
      v34 = *v32;
      v35 = v32[1];
      v32 += 2;
      *v33 = v34;
      v33[1] = v35;
      v33 += 2;
    }

    a1[1] = v33;
    if (v10 != v31)
    {
      memmove(&__dst[32 * a5], __dst, v10 - v31);
    }

    v30 = 32 * a5;
    v28 = v5;
    v29 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[32 * a5];
    v23 = v10 + v20;
    if (&v21[-32 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -32 * a5];
      do
      {
        v26 = (v24 - v7);
        v27 = *(v25 - v7 + 16);
        *v26 = *(v25 - v7);
        v26[1] = v27;
        v25 += 32;
        v24 += 32;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[32 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v28 = v5;
      v29 = v7;
      v30 = v10 - v5;
LABEL_29:
      memmove(v28, v29, v30);
    }
  }

  return v5;
}

__n128 _ZNKSt3__110__function6__funcIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_dNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIdLh3EEERSA_EUljE_NS8_ISM_EEFbjEE7__cloneEPNS0_6__baseISO_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286291608;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

BOOL _ZNSt3__110__function6__funcIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_dNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIdLh3EEERSA_EUljE_NS8_ISM_EEFbjEEclEOj(uint64_t a1, _DWORD *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = 3 * *a2;
  v4 = **(a1 + 32);
  v5 = **(a1 + 24);
  v6 = (v5 + 32 * *(v4 + 4 * v3));
  v8 = *v6;
  v7 = v6[1];
  v9 = (v5 + 32 * *(v4 + 4 * (v3 + 1)));
  v11 = *v9;
  v10 = v9[1];
  v12 = (v5 + 32 * *(v4 + 4 * (v3 + 2)));
  v14 = *v12;
  v13 = v12[1];
  v20[0] = v8;
  v20[1] = v7;
  v20[2] = v11;
  v20[3] = v10;
  v20[4] = v14;
  v20[5] = v13;
  v15 = geom::intersect_triangle_bbox_3<double>(v20, *(a1 + 8), v21);
  v16 = v15;
  if (v15)
  {
    v17 = v15;
    v18 = v21;
    do
    {
      _ZNSt3__16vectorIDv3_dNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(*(a1 + 16), v18);
      v18 += 2;
      --v17;
    }

    while (v17);
  }

  return v16 != 0;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_dNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIdLh3EEERSA_EUljE_NS8_ISM_EEFbjEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNSt3__16vectorIDv3_dNS3_9allocatorIS5_EEEERKNS4_IjNS6_IjEEEERKNS_3bvhIdLh3EEERS8_EUljE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_dNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIdLh3EEERSA_EUlRKNS2_4bboxIdLh3EEEE_NS8_ISQ_EEFbSP_EE7__cloneEPNS0_6__baseISS_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_286291688;
  a2[1] = v2;
  return result;
}

BOOL _ZNSt3__110__function6__funcIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_dNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIdLh3EEERSA_EUlRKNS2_4bboxIdLh3EEEE_NS8_ISQ_EEFbSP_EEclESP_(uint64_t a1, float64x2_t *a2)
{
  v2 = *(a1 + 8);
  v3 = vcgtq_f64(*a2, v2[2]);
  if (((v3.i64[0] | vcgtq_f64(a2[1], v2[3]).u64[0] | v3.i64[1]) & 0x8000000000000000) != 0)
  {
    return 0;
  }

  v4 = vcgtq_f64(*v2, a2[2]);
  return ((v4.i64[0] | vcgtq_f64(v2[1], a2[3]).u64[0] | v4.i64[1]) & 0x8000000000000000) == 0;
}

uint64_t _ZNKSt3__110__function6__funcIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNS_6vectorIDv3_dNS_9allocatorIS7_EEEERKNS6_IjNS8_IjEEEERKNS2_3bvhIdLh3EEERSA_EUlRKNS2_4bboxIdLh3EEEE_NS8_ISQ_EEFbSP_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZNK4geom7clusterIdE31find_explicit_surface_crossingsEDv3_jRKNSt3__16vectorIDv3_dNS3_9allocatorIS5_EEEERKNS4_IjNS6_IjEEEERKNS_3bvhIdLh3EEERS8_EUlRKNS_4bboxIdLh3EEEE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<BOOL ()(geom::bbox<double,(unsigned char)3> const&)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t ___ZN4geom26dispatch_apply_with_strideIZNS_24parallel_reduce_in_placeIdNS_11plus_equalsIdEEEEvRNSt3__16vectorIT_NS4_9allocatorIS6_EEEEmP16dispatch_queue_sT0_EUlmmE_EEmmmSC_S6__block_invoke(uint64_t result, uint64_t a2)
{
  v3 = *(result + 32);
  v2 = *(result + 40);
  v4 = v3 * a2;
  if (v2 >= v3 * a2 + v3)
  {
    v2 = v3 * a2 + v3;
  }

  v5 = v2 > v4;
  v6 = v2 - v4;
  if (v5)
  {
    v7 = *(result + 56);
    v8 = **(result + 48);
    v9 = v3 * v8 * a2;
    do
    {
      if ((v8 >> 1) + v9 < v7)
      {
        v10 = (**(result + 64) + 8 * v9);
        *v10 = v10[v8 >> 1] + *v10;
      }

      v9 += v8;
      --v6;
    }

    while (v6);
  }

  return result;
}

void geom::acd<float>::impl::init(uint64_t a1, float32x4_t *a2, unint64_t a3, int *a4, std::vector<unsigned int>::size_type a5, unsigned int a6, int a7, float a8)
{
  v12 = a2;
  v40 = *MEMORY[0x277D85DE8];
  v14 = 16 * a3;
  v15.i64[0] = 0x7F0000007FLL;
  v15.i64[1] = 0x7F0000007FLL;
  v16 = vnegq_f32(v15);
  if (a3)
  {
    v17 = 16 * a3;
    v18 = a2;
    do
    {
      v19 = *v18++;
      v20 = v19;
      v20.i32[3] = 0;
      v16.i32[3] = 0;
      v16 = vminnmq_f32(v20, v16);
      v15.i32[3] = 0;
      v15 = vmaxnmq_f32(v20, v15);
      v17 -= 16;
    }

    while (v17);
  }

  v35 = v16;
  v37 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v15;
  *(a1 + 328) = a7;
  *(a1 + 332) = a8;
  _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE7reserveEm((a1 + 48), a3);
  if (a3)
  {
    v22 = vaddq_f32(v35, v37);
    v23.i64[0] = 0x3F0000003F000000;
    v23.i64[1] = 0x3F0000003F000000;
    v24 = vmulq_f32(vsubq_f32(v37, v35), v23);
    v24.f32[0] = fmaxf(fmaxf(v24.f32[0], v24.f32[2]), v24.f32[1]);
    if (v24.f32[0] <= 0.00000011921)
    {
      v24.f32[0] = 1.0;
    }

    v36 = vdupq_lane_s32(*v24.f32, 0);
    v38 = vmulq_f32(v22, v23);
    do
    {
      v25 = *v12++;
      v39 = vdivq_f32(vsubq_f32(v25, v38), v36);
      _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE9push_backB8nn200100EOS1_(a1 + 48, &v39);
      v14 -= 16;
    }

    while (v14);
  }

  if (a6 >= 0x15)
  {
    v26 = 21;
  }

  else
  {
    v26 = a6;
  }

  v27 = ((1 << v26) - 1);
  *v21.i32 = 2.0 / v27;
  *(a1 + 160) = v26;
  *(a1 + 164) = 1 << v26;
  *(a1 + 168) = v27;
  __asm { FMOV            V1.4S, #-1.0 }

  *(a1 + 176) = vdupq_lane_s32(v21, 0);
  *(a1 + 192) = _Q1;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 208) = _Q0;
  std::vector<float>::reserve((a1 + 72), a5);
  if (a5)
  {
    v34 = 4 * a5;
    do
    {
      std::vector<unsigned int>::push_back[abi:nn200100]((a1 + 72), a4++);
      v34 -= 4;
    }

    while (v34);
  }

  geom::cut_directions_hierarchy<float>::init(a1 + 256, 5);
  geom::create_approximate_winding_number_3<float>((*(a1 + 56) - *(a1 + 48)) >> 4, *(a1 + 48), ((*(a1 + 80) - *(a1 + 72)) >> 2) / 3uLL, *(a1 + 72));
}

void geom::cut_directions_hierarchy<float>::init(uint64_t a1, int a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = (a1 + 24);
  *(a1 + 32) = *(a1 + 24);
  v5 = a1 + 48;
  v6 = *(a1 + 48);
    ;
  }

  *(a1 + 56) = v6;
  v8 = *a1;
  *(a1 + 8) = *a1;
  v19 = 0;
  v20 = 0uLL;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  memset(v14, 0, sizeof(v14));
  v15 = 1065353216;
  if (a2)
  {
    v9 = 0;
    do
    {
      if (v9)
      {
        geom::subdivide_triangle_mesh<float>(&v19, &v16, v14);
      }

      else
      {
        v23 = xmmword_2500C7050;
        v24[0] = unk_2500C7060;
        v24[1] = xmmword_2500C7070;
        __src = xmmword_2500C7030;
        v22 = unk_2500C7040;
        _ZNSt3__16vectorIDv3_fNS_9allocatorIS1_EEE18__assign_with_sizeB8nn200100IPKS1_S7_EEvT_T0_l(&v19, &__src, v25, 5uLL);
        __src = xmmword_2500C7220;
        v22 = unk_2500C7230;
        v23 = xmmword_2500C7240;
        std::vector<unsigned int>::__assign_with_size[abi:nn200100]<unsigned int const*,unsigned int const*>(&v16, &__src, v24, 0xCuLL);
      }

      LODWORD(__src) = (v20 - v19) >> 4;
      std::vector<unsigned int>::push_back[abi:nn200100](v4, &__src);
      geom::triangle_mesh_connectivity::make(((v20 - v19) >> 4), (v17 - v16) >> 2, &__src);
      std::vector<geom::triangle_mesh_connectivity>::push_back[abi:nn200100](v5, &__src);
      if (v29 == 1)
      {
        if (v28 == 1 && __p)
        {
          v27 = __p;
          operator delete(__p);
        }

        geom::triangle_mesh_connectivity::~triangle_mesh_connectivity(&__src);
      }

      ++v9;
    }

    while (a2 != v9);
    v8 = *a1;
  }

  if (v8)
  {
    *(a1 + 8) = v8;
    operator delete(v8);
  }

  v10 = v19;
  *a1 = v19;
  v11 = v20;
  *(a1 + 8) = v20;
  v20 = 0uLL;
  v19 = 0;
  while (v10 != v11)
  {
    v12 = vmulq_f32(*v10, *v10);
    *&v13 = v12.f32[2] + vaddv_f32(*v12.f32);
    *v12.f32 = vrsqrte_f32(v13);
    *v12.f32 = vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32)));
    *v10 = vmulq_n_f32(*v10, vmul_f32(*v12.f32, vrsqrts_f32(v13, vmul_f32(*v12.f32, *v12.f32))).f32[0]);
    ++v10;
  }

  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::~__hash_table(v14);
  if (v16)
  {
    v17 = v16;
    operator delete(v16);
  }

  if (v19)
  {
    *&v20 = v19;
    operator delete(v19);
  }
}