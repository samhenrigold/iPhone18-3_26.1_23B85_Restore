double boost::polygon::detail::operator+<boost::polygon::detail::robust_fpt<double>>(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  v10 = *a2;
  v11 = v4;
  v5 = boost::polygon::detail::robust_fpt<double>::operator+(&v11, &v10);
  v6 = a1[1];
  v8 = a2[1];
  v9 = v6;
  boost::polygon::detail::robust_fpt<double>::operator+(&v9, &v8);
  return v5;
}

void boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::mp_circle_formation_functor<boost::polygon::detail::site_event<int>,boost::polygon::detail::circle_event<double>>::sss(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v84 = v4;
  v80 = v5;
  v82 = v6;
  v8 = v7;
  v83 = v9;
  v109 = *MEMORY[0x277D85DE8];
  v10 = v1[2];
  v11 = *v1;
  v12 = v10 - v11;
  if (v10 > v11)
  {
    v13 = 1;
LABEL_3:
    v103[0] = v12;
    goto LABEL_6;
  }

  if (v12 < 0)
  {
    v12 = v11 - v10;
    v13 = -1;
    goto LABEL_3;
  }

  v13 = 0;
LABEL_6:
  v104 = v13;
  v14 = v2[2];
  v15 = *v2;
  v16 = v14 - v15;
  if (v14 > v15)
  {
    v17 = 1;
LABEL_8:
    v105 = v16;
    goto LABEL_11;
  }

  if (v16 < 0)
  {
    v16 = v15 - v14;
    v17 = -1;
    goto LABEL_8;
  }

  v17 = 0;
LABEL_11:
  v106 = v17;
  v18 = v3[2];
  v19 = *v3;
  v20 = v18 - v19;
  if (v18 > v19)
  {
    v21 = 1;
LABEL_13:
    v107 = v20;
    goto LABEL_16;
  }

  if (v20 < 0)
  {
    v20 = v19 - v18;
    v21 = -1;
    goto LABEL_13;
  }

  v21 = 0;
LABEL_16:
  v108 = v21;
  v22 = v1[3];
  v23 = v1[1];
  v24 = v22 - v23;
  if (v22 > v23)
  {
    v25 = 1;
LABEL_18:
    v97[0] = v24;
    goto LABEL_21;
  }

  if (v24 < 0)
  {
    v24 = v23 - v22;
    v25 = -1;
    goto LABEL_18;
  }

  v25 = 0;
LABEL_21:
  v98 = v25;
  v26 = v2[3];
  v27 = v2[1];
  v28 = v26 - v27;
  if (v26 > v27)
  {
    v29 = 1;
LABEL_23:
    v99 = v28;
    goto LABEL_26;
  }

  if (v28 < 0)
  {
    v28 = v27 - v26;
    v29 = -1;
    goto LABEL_23;
  }

  v29 = 0;
LABEL_26:
  v100 = v29;
  v30 = v3[3];
  v31 = v3[1];
  v32 = v30 - v31;
  if (v30 <= v31)
  {
    if ((v32 & 0x8000000000000000) == 0)
    {
      v33 = 0;
      goto LABEL_31;
    }

    v32 = v31 - v30;
    v33 = -1;
  }

  else
  {
    v33 = 1;
  }

  v101 = v32;
LABEL_31:
  v102 = v33;
  v34 = v22 * v11 - v23 * v10;
  if (v34 < 1)
  {
    if (v34 < 0)
    {
      v91[0] = -v34;
      if (-v34 >> 32)
      {
        v35 = -2;
      }

      else
      {
        v35 = -1;
      }
    }

    else
    {
      v35 = 0;
    }
  }

  else
  {
    v91[0] = v34;
    if (HIDWORD(v34))
    {
      v35 = 2;
    }

    else
    {
      v35 = 1;
    }
  }

  v92 = v35;
  v36 = v26 * v15 - v27 * v14;
  if (v36 < 1)
  {
    if (v36 < 0)
    {
      v93 = -v36;
      if (-v36 >> 32)
      {
        v37 = -2;
      }

      else
      {
        v37 = -1;
      }
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v93 = v36;
    if (HIDWORD(v36))
    {
      v37 = 2;
    }

    else
    {
      v37 = 1;
    }
  }

  v94 = v37;
  v38 = v30 * v19 - v31 * v18;
  if (v38 < 1)
  {
    if (v38 < 0)
    {
      v95 = -v38;
      if (-v38 >> 32)
      {
        v39 = -2;
      }

      else
      {
        v39 = -1;
      }
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v95 = v38;
    if (HIDWORD(v38))
    {
      v39 = 2;
    }

    else
    {
      v39 = 1;
    }
  }

  v40 = 0;
  v96 = v39;
  do
  {
    boost::polygon::detail::extended_int<64ul>::mul(__dst, (v103 + v40), v103 + v40);
    boost::polygon::detail::extended_int<64ul>::mul(v86, (v97 + v40), v97 + v40);
    boost::polygon::detail::extended_int<64ul>::add(__src, __dst, v86);
    memcpy(&v88[v40 / 4], __src, 0x104uLL);
    v40 += 260;
  }

  while (v40 != 780);
  v41 = 0;
  v42 = -1;
  v43 = 1;
  do
  {
    v44 = v42;
    if (v41 == 130)
    {
      v45 = 0;
    }

    else
    {
      v45 = v43;
    }

    v46 = 65 * v45;
    if (!(v41 * 4))
    {
      v44 = 2;
    }

    v47 = 65 * v44;
    boost::polygon::detail::extended_int<64ul>::mul(v86, v103 + 65 * v45, v97 + 260 * v44);
    boost::polygon::detail::extended_int<64ul>::mul(v85, v103 + v47, v97 + 4 * v46);
    boost::polygon::detail::extended_int<64ul>::dif (__dst, v86, v85);
    memcpy(&__src[v41], __dst, 0x104uLL);
    ++v42;
    v41 += 65;
    ++v43;
  }

  while (v41 != 195);
  v51 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v83, __src, v88, v48, v49, v50);
  v53 = ldexp(*&v51, v52);
  if (v80)
  {
    v54 = 0;
    v55 = -1;
    v56 = 1;
    do
    {
      v57 = v55;
      if (v54 == 130)
      {
        v58 = 0;
      }

      else
      {
        v58 = v56;
      }

      v59 = 65 * v58;
      if (!(v54 * 4))
      {
        v57 = 2;
      }

      v60 = 65 * v57;
      boost::polygon::detail::extended_int<64ul>::mul(v86, v97 + 65 * v58, v91 + 260 * v57);
      boost::polygon::detail::extended_int<64ul>::mul(v85, v97 + v60, v91 + 4 * v59);
      boost::polygon::detail::extended_int<64ul>::dif (__dst, v86, v85);
      memcpy(&__src[v54], __dst, 0x104uLL);
      ++v55;
      v54 += 65;
      ++v56;
    }

    while (v54 != 195);
    v64 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v83, __src, v88, v61, v62, v63);
    *(v8 + 8) = ldexp(*&v64, v65) / v53;
  }

  if ((v82 & 1) != 0 || v84)
  {
    v81 = v8;
    v66 = 0;
    v90[64] = 0;
    v67 = -1;
    v68 = 1;
    do
    {
      v69 = v67;
      if (v66 == 130)
      {
        v70 = 0;
      }

      else
      {
        v70 = v68;
      }

      v71 = 65 * v70;
      if (!(v66 * 4))
      {
        v69 = 2;
      }

      v72 = 65 * v69;
      boost::polygon::detail::extended_int<64ul>::mul(v86, v103 + 65 * v70, v91 + 260 * v69);
      boost::polygon::detail::extended_int<64ul>::mul(v85, v103 + v72, v91 + 4 * v71);
      boost::polygon::detail::extended_int<64ul>::dif (__dst, v86, v85);
      memcpy(&__src[v66], __dst, 0x104uLL);
      if (v84)
      {
        boost::polygon::detail::extended_int<64ul>::mul(v86, &__src[v66], v97 + v66 * 4);
        boost::polygon::detail::extended_int<64ul>::add(__dst, v90, v86);
        memcpy(v90, __dst, sizeof(v90));
      }

      ++v67;
      v66 += 65;
      ++v68;
    }

    while (v66 != 195);
    if (v82)
    {
      v76 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval3(v83, __src, v88, v73, v74, v75);
      v73 = ldexp(*&v76, v77) / v53;
      *v81 = v73;
    }

    if (v84)
    {
      v88[195] = 1;
      v88[259] = 1;
      v78 = boost::polygon::detail::robust_sqrt_expr<boost::polygon::detail::extended_int<64ul>,boost::polygon::detail::extended_exponent_fpt<double,boost::polygon::detail::extened_exponent_fpt_traits<double>>,boost::polygon::detail::type_converter_efpt>::eval4(v83, __src, v88, v73, v74, v75);
      *(v81 + 16) = ldexp(*&v78, v79) / v53;
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::comparison &,std::__wrap_iter<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *> *>>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (a4 - 2) >> 1;
    v7 = *(a2 - 8);
    v5 = (a2 - 8);
    v6 = v7;
    v8 = (result + 8 * v4);
    v9 = *v8;
    v10 = *(v7 + 32);
    v11 = *(*v8 + 32);
    v12 = *(v7 + 24) < *(*v8 + 24);
    if (v10 != v11)
    {
      v12 = v10 < v11;
    }

    if (v12)
    {
      do
      {
        *v5 = v9;
        v5 = v8;
        if (!v4)
        {
          break;
        }

        v4 = (v4 - 1) >> 1;
        v8 = (result + 8 * v4);
        v9 = *v8;
        v13 = *(*v8 + 32);
        v14 = *(v6 + 24) < *(*v8 + 24);
        if (v10 != v13)
        {
          v14 = v10 < v13;
        }
      }

      while (v14);
      *v5 = v6;
    }
  }

  return result;
}

uint64_t boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::_insert_new_edge<int,double>(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, void *a6)
{
  v12 = *a4;
  v11 = a4[1];
  v13 = a1[4];
  v14 = a1[5];
  if (v13 >= v14)
  {
    v16 = a1[3];
    v17 = (v13 - v16) >> 5;
    v18 = v17 + 1;
    if ((v17 + 1) >> 59)
    {
      std::vector<PointInt64>::__throw_length_error[abi:ne200100]();
    }

    v19 = v14 - v16;
    if (v19 >> 4 > v18)
    {
      v18 = v19 >> 4;
    }

    if (v19 >= 0x7FFFFFFFFFFFFFE0)
    {
      v20 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v18;
    }

    if (v20)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<boost::polygon::voronoi_vertex<double>>>((a1 + 3), v20);
    }

    v21 = (32 * v17);
    *v21 = v12;
    v21[1] = v11;
    v21[2] = 0;
    v21[3] = 0;
    v15 = 32 * v17 + 32;
    v22 = a1[3];
    v23 = a1[4] - v22;
    v24 = 32 * v17 - v23;
    memcpy(v21 - v23, v22, v23);
    v25 = a1[3];
    a1[3] = v24;
    a1[4] = v15;
    a1[5] = 0;
    if (v25)
    {
      operator delete(v25);
    }
  }

  else
  {
    *v13 = v12;
    v13[1] = v11;
    v15 = (v13 + 4);
    v13[2] = 0;
    v13[3] = 0;
  }

  a1[4] = v15;
  v26 = v15 - 32;
  a5[1] = v26;
  a6[1] = v26;
  v27 = boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_linear_edge<boost::polygon::detail::site_event<int>>(a1, a2, a3);
  v34 = 0u;
  v35 = 0u;
  if (boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::is_primary_edge<boost::polygon::detail::site_event<int>>(a1, a2, a3))
  {
    v28 = v27 | 2;
  }

  else
  {
    v28 = v27;
  }

  v36 = 0;
  v37 = v28;
  std::vector<boost::polygon::voronoi_edge<double>>::push_back[abi:ne200100]((a1 + 6), &v34);
  v29 = a1[7];
  *(v29 - 48) = *a1 + 24 * *(a2 + 16);
  v29 -= 48;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v37 = v28;
  std::vector<boost::polygon::voronoi_edge<double>>::push_back[abi:ne200100]((a1 + 6), &v34);
  v30 = a1[7];
  *(v30 - 6) = *a1 + 24 * *(a3 + 16);
  v30 -= 6;
  *(v29 + 16) = v30;
  v30[1] = v26;
  v30[2] = v29;
  a5[4] = v29;
  *(v29 + 24) = a5;
  v31 = a5[2];
  *(v31 + 24) = a6;
  a6[4] = v31;
  v32 = a6[2];
  *(v32 + 24) = v30;
  v30[4] = v32;
  return v29;
}

void *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,boost::polygon::detail::ordered_queue<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::event_comparison_type>::comparison &,std::__wrap_iter<std::__list_iterator<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>,void *> *>>(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  do
  {
    v4 = &a1[v3 + 1];
    v5 = (2 * v3) | 1;
    v6 = 2 * v3 + 2;
    if (v6 < a3)
    {
      v7 = v4[1];
      v8 = *(v7 + 32);
      v9 = *(*v4 + 32);
      v10 = *(v7 + 24) < *(*v4 + 24);
      if (v8 != v9)
      {
        v10 = v8 < v9;
      }

      v11 = !v10;
      if (v10)
      {
        v12 = 8;
      }

      else
      {
        v12 = 0;
      }

      v4 = (v4 + v12);
      if (!v11)
      {
        v5 = v6;
      }
    }

    *a1 = *v4;
    a1 = v4;
    v3 = v5;
  }

  while (v5 <= (a3 - 2) / 2);
  return v4;
}

BOOL boost::polygon::voronoi_diagram_traits<double>::vertex_equality_predicate_type::operator()(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if ((*a2 & 0x8000000000000000) == 0)
  {
    v3 = 0x8000000000000000 - *a2;
  }

  if (v4 >= 0)
  {
    v4 = 0x8000000000000000 - v4;
  }

  if (v3 - v4 <= 0x80)
  {
    v5 = 0;
  }

  else
  {
    v5 = -1;
  }

  if (v3 > v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v4 - v3 > 0x80;
  }

  if (v6)
  {
    return 0;
  }

  v8 = a2[1];
  v9 = a3[1];
  if (v8 >= 0)
  {
    v8 = 0x8000000000000000 - v8;
  }

  v10 = 0x8000000000000000 - v9;
  if (v9 < 0)
  {
    v10 = a3[1];
  }

  if (v8 - v10 <= 0x80)
  {
    v11 = 0;
  }

  else
  {
    v11 = -1;
  }

  if (v8 > v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v10 - v8 > 0x80;
  }

  return !v12;
}

void boost::polygon::voronoi_diagram<double,boost::polygon::voronoi_diagram_traits<double>>::remove_edge(uint64_t a1, void *a2)
{
  v2 = a2[2];
  v3 = *(v2[4] + 16);
  if (v3 != v2)
  {
    v4 = a2[1];
    v5 = *(v2[4] + 16);
    do
    {
      v5[1] = v4;
      v5 = *(v5[4] + 16);
    }

    while (v5 != v2);
  }

  v6 = v2[3];
  v7 = *(v2[2] + 24);
  v8 = *(*(a2[4] + 16) + 16);
  *(v8 + 24) = v7;
  *(v7 + 32) = v8;
  v9 = v3[2];
  *(v6 + 32) = v9;
  *(v9 + 24) = v6;
}

uint64_t boost::polygon::voronoi_builder<int,boost::polygon::detail::voronoi_ctype_traits<int>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>>::~voronoi_builder(uint64_t a1)
{
  std::__tree<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__map_value_compare<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,boost::polygon::detail::voronoi_predicates<boost::polygon::detail::voronoi_ctype_traits<int>>::node_comparison_predicate<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>>,false>,std::allocator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>>>::destroy(a1 + 128, *(a1 + 136));
  std::__list_imp<std::pair<boost::polygon::detail::circle_event<double>,std::__map_iterator<std::__tree_iterator<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,std::__tree_node<std::__value_type<boost::polygon::detail::beach_line_node_key<boost::polygon::detail::site_event<int>>,boost::polygon::detail::beach_line_node_data<void,boost::polygon::detail::circle_event<double>>>,void *> *,long>>>>::clear((a1 + 104));
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 40);
  if (v3)
  {
    *(a1 + 48) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 8);
  if (v4)
  {
    *(a1 + 16) = v4;
    operator delete(v4);
  }

  return a1;
}

float64_t Decompose@<D0>(const simd_float4x4 *a1@<X0>, uint64_t a2@<X8>)
{
  TransformationMatrixFromMatrix(v19, a1);
  if (!WebCore::TransformationMatrix::decompose4(v19, &v9))
  {
    abort();
  }

  *&v3 = vcvt_f32_f64(v9);
  *&v4 = v10;
  *(&v3 + 1) = __PAIR64__(HIDWORD(v9.f64[1]), v4);
  *&v5 = vrev64_s32(vcvt_f32_f64(v11));
  *&v6 = v12;
  *(&v5 + 1) = __PAIR64__(HIDWORD(v11.f64[1]), v6);
  *a2 = v3;
  *(a2 + 16) = v5;
  *&v3 = vcvt_f32_f64(v15);
  *&v7 = v16;
  *(&v3 + 1) = __PAIR64__(HIDWORD(v15.f64[1]), v7);
  *(a2 + 32) = vcvt_hight_f32_f64(vcvt_f32_f64(v13), v14);
  *(a2 + 48) = v3;
  result = v18.f64[0];
  *(a2 + 64) = vcvt_hight_f32_f64(vcvt_f32_f64(v17), v18);
  return result;
}

float64x2_t TransformationMatrixFromMatrix@<Q0>(float64x2_t *__return_ptr a1@<X8>, const simd_float4x4 *a2@<X0>)
{
  v2 = a2->columns[1];
  v3 = a2->columns[2];
  v4 = a2->columns[3];
  v5 = vcvt_hight_f64_f32(a2->columns[0]);
  *a1 = vcvtq_f64_f32(*a2->columns[0].f32);
  a1[1] = v5;
  a1[2] = vcvtq_f64_f32(*v2.f32);
  a1[3] = vcvt_hight_f64_f32(v2);
  a1[4] = vcvtq_f64_f32(*v3.f32);
  a1[5] = vcvt_hight_f64_f32(v3);
  result = vcvtq_f64_f32(*v4.f32);
  a1[6] = result;
  a1[7] = vcvt_hight_f64_f32(v4);
  return result;
}

double Recompose(float32x2_t *a1)
{
  v1 = *a1->f32;
  v2 = *a1[2].f32;
  v18 = vcvtq_f64_f32(*a1);
  v19 = *(&v1 + 2);
  v3 = vcvtq_f64_f32(*v2.i8);
  v20 = vextq_s8(v3, v3, 8uLL);
  v3.i64[0] = vextq_s8(v2, v2, 8uLL).u64[0];
  v4 = *a1[4].f32;
  v5 = *a1[6].f32;
  v21 = vcvtq_f64_f32(vzip1_s32(*v3.i8, *v4.i8));
  v3.i64[0] = vextq_s8(v4, v4, 8uLL).u64[0];
  v22 = vcvtq_f64_f32(vext_s8(*v4.i8, *v3.i8, 4uLL));
  v23 = vcvtq_f64_f32(vext_s8(*v3.i8, *v5.i8, 4uLL));
  v24 = vcvtq_f64_f32(vext_s8(*v5.i8, *&vextq_s8(v5, v5, 8uLL), 4uLL));
  v6 = *a1[8].f32;
  v25 = vcvtq_f64_f32(*v6.f32);
  v26 = vcvt_hight_f64_f32(v6);
  v8 = 0x3FF0000000000000;
  v9 = 0u;
  v10 = 0u;
  v11 = 0x3FF0000000000000;
  v12 = 0u;
  v13 = 0u;
  v14 = 0x3FF0000000000000;
  v15 = 0u;
  v16 = 0u;
  v17 = 0x3FF0000000000000;
  WebCore::TransformationMatrix::recompose4(&v8, &v18);
  return TransformationMatrixToMatrix(&v8);
}

void Interpolate(const simd_float4x4 *a1, const simd_float4x4 *a2, float a3)
{
  TransformationMatrixFromMatrix(v6, a1);
  TransformationMatrixFromMatrix(v5, a2);
  WebCore::TransformationMatrix::blend(v5, v6, a3);
  TransformationMatrixToMatrix(v5);
}

double FLRubberbandValue(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    return a2;
  }

  if (a1 < a2)
  {
    a3 = -a3;
  }

  return a2 + (1.0 - 1.0 / (a4 * ((a1 - a2) / a3) + 1.0)) * a3;
}

double FLInverseRubberbandValue(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    return a2;
  }

  if (a1 < a2)
  {
    a3 = -a3;
  }

  return a2 + (-1.0 / ((a1 - a2) / a3 + -1.0) + -1.0) / a4 * a3;
}

double FLSpringConvertStiffnessDampingToDampingRatioResponse(double *a1, double *a2, double a3, double a4)
{
  result = sqrt(a3);
  if (a1)
  {
    *a1 = a4 / (result + result);
  }

  if (a2)
  {
    result = 6.28318531 / result;
    *a2 = result;
  }

  return result;
}

double FLSpringConvertMassStiffnessDampingToDampingRatioResponse(double *a1, double *a2, double result, double a4, double a5)
{
  if (a1)
  {
    v5 = sqrt(result * a4);
    *a1 = a5 / (v5 + v5);
  }

  if (a2)
  {
    result = 6.28318531 / sqrt(a4 / result);
    *a2 = result;
  }

  return result;
}

double FLSpringConvertDampingRatioResponseToStiffnessDamping(double *a1, double *a2, double result, double a4)
{
  v4 = 6.28318531 / a4 * (6.28318531 / a4);
  if (a1)
  {
    *a1 = v4;
  }

  if (a2)
  {
    v5 = sqrt(v4);
    result = (v5 + v5) * result;
    *a2 = result;
  }

  return result;
}

double FLSpringConvertMassStiffnessDampingToStiffnessDamping(double *a1, double *a2, double result, double a4, double a5)
{
  v5 = sqrt(a4 / result);
  v6 = 6.28318531 / (6.28318531 / v5) * (6.28318531 / (6.28318531 / v5));
  if (a1)
  {
    *a1 = v6;
  }

  if (a2)
  {
    v7 = sqrt(result * a4);
    v8 = sqrt(v6);
    result = a5 / (v7 + v7) * (v8 + v8);
    *a2 = result;
  }

  return result;
}

double FLCompoundSpringMake@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D3>, double a5@<D4>)
{
  v27 = a5;
  v28 = a4;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0;
  *(a1 + 16) = 0u;
  v9 = a1 + 16;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 336) = 1;
  v26 = 0.0;
  v25 = 0.0;
  FLSpringConvertDampingRatioResponseToStiffnessDamping(&v26, &v25, 1.0, 0.5);
  FLSimpleSpringMake(v9, a4, 0.0, a4, v26, v25);
  FLSimpleSpringMake(&v21, a5, 0.0, a5, v26, v25);
  v10 = v22;
  *(a1 + 80) = v21;
  *(a1 + 96) = v10;
  v11 = v24;
  *(a1 + 112) = v23;
  *(a1 + 128) = v11;
  v19 = 0.0;
  v20 = 0.0;
  FLSpringConvertStiffnessDampingToDampingRatioResponse(&v20, &v19, a4, a5);
  FLSimpleSpringMake(&v21, v20, 0.0, v20, v26, v25);
  v12 = v22;
  *(a1 + 144) = v21;
  *(a1 + 160) = v12;
  v13 = v24;
  *(a1 + 176) = v23;
  *(a1 + 192) = v13;
  FLSimpleSpringMake(&v21, v19, 0.0, v19, v26, v25);
  v14 = v22;
  *(a1 + 208) = v21;
  *(a1 + 224) = v14;
  v15 = v24;
  *(a1 + 240) = v23;
  *(a1 + 256) = v15;
  FLSpringConvertDampingRatioResponseToStiffnessDamping(&v28, &v27, v20, v19);
  FLSimpleSpringMake(&v21, a2, 0.0, a2, v26, v25);
  v16 = v22;
  *(a1 + 272) = v21;
  *(a1 + 288) = v16;
  result = *&v23;
  v18 = v24;
  *(a1 + 304) = v23;
  *(a1 + 320) = v18;
  return result;
}

void FLCompoundSpringMakeWithDampingRatioResponse(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D3>, double a5@<D4>)
{
  v8 = 0.0;
  v9 = 0.0;
  FLSpringConvertDampingRatioResponseToStiffnessDamping(&v9, &v8, a4, a5);
  FLCompoundSpringMake(a1, a2, a3, v9, v8);
}

uint64_t FLCompoundSpringSetAnchorImmediately(uint64_t result, double a2)
{
  *(result + 312) = a2;
  *(result + 272) = a2;
  *(result + 280) = 0;
  return result;
}

void FLCompoundSpringSetAnchorWithResponse(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 272) = a3;
    *(a1 + 280) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    FLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 296) = v7;
    *(a1 + 304) = v5;
    a3 = a2;
  }

  *(a1 + 312) = a3;
}

void FLCompoundSpringSetAnchorWithIntermediatePositionAndResponse(uint64_t a1, double a2, double a3, double a4)
{
  if (a4 == 0.0)
  {
    *(a1 + 312) = a2;
  }

  else
  {
    FLCompoundSpringSetAnchorWithResponse(a1, a2, a4);
    a2 = a3;
  }

  *(a1 + 272) = a2;
  *(a1 + 280) = 0;
}

uint64_t FLCompoundSpringSetStiffnessImmediately(uint64_t result, double a2)
{
  *(result + 56) = a2;
  *(result + 16) = a2;
  *(result + 24) = 0;
  return result;
}

void FLCompoundSpringSetStiffnessWithResponse(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 16) = a2;
    *(a1 + 24) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    FLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 40) = v7;
    *(a1 + 48) = v5;
  }

  *(a1 + 56) = a2;
}

uint64_t FLCompoundSpringSetDampingImmediately(uint64_t result, double a2)
{
  *(result + 120) = a2;
  *(result + 80) = a2;
  *(result + 88) = 0;
  return result;
}

void FLCompoundSpringSetDampingWithResponse(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 80) = a2;
    *(a1 + 88) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    FLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 104) = v7;
    *(a1 + 112) = v5;
  }

  *(a1 + 120) = a2;
}

uint64_t FLCompoundSpringSetDampingRatioImmediately(uint64_t result, double a2)
{
  *(result + 184) = a2;
  *(result + 144) = a2;
  *(result + 152) = 0;
  return result;
}

void FLCompoundSpringSetDampingRatioSmoothly(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 144) = a2;
    *(a1 + 152) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    FLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 168) = v7;
    *(a1 + 176) = v5;
  }

  *(a1 + 184) = a2;
}

uint64_t FLCompoundSpringSetResponseImmediately(uint64_t result, double a2)
{
  *(result + 248) = a2;
  *(result + 208) = a2;
  *(result + 216) = 0;
  return result;
}

void FLCompoundSpringSetResponseSmoothly(uint64_t a1, double a2, double a3)
{
  if (a3 == 0.0)
  {
    *(a1 + 208) = a2;
    *(a1 + 216) = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    FLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, 1.0, a3);
    v5 = v6;
    *(a1 + 232) = v7;
    *(a1 + 240) = v5;
  }

  *(a1 + 248) = a2;
}

double FLCompoundSpringStep@<D0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X0>, double a3@<D0>)
{
  memcpy(a1, __src, 0x158uLL);
  if (*(a1 + 336) == 1)
  {
    v6 = *(__src + 10);
    __dst[0] = *(__src + 9);
    __dst[1] = v6;
    v7 = *(__src + 12);
    __dst[2] = *(__src + 11);
    __dst[3] = v7;
    FLSimpleSpringStep(__dst, (a1 + 18), a3);
    v8 = *(a1 + 14);
    v25 = *(a1 + 13);
    v26 = v8;
    v9 = *(a1 + 16);
    v27 = *(a1 + 15);
    v28 = v9;
    FLSimpleSpringStep(&v25, __dst, a3);
    v10 = __dst[1];
    *(a1 + 13) = __dst[0];
    *(a1 + 14) = v10;
    v11 = __dst[3];
    *(a1 + 15) = __dst[2];
    *(a1 + 16) = v11;
  }

  else
  {
    v12 = *(__src + 2);
    __dst[0] = *(__src + 1);
    __dst[1] = v12;
    v13 = *(__src + 4);
    __dst[2] = *(__src + 3);
    __dst[3] = v13;
    FLSimpleSpringStep(__dst, (a1 + 2), a3);
    v14 = *(a1 + 6);
    v25 = *(a1 + 5);
    v26 = v14;
    v15 = *(a1 + 8);
    v27 = *(a1 + 7);
    v28 = v15;
    FLSimpleSpringStep(&v25, __dst, a3);
    v16 = __dst[1];
    *(a1 + 5) = __dst[0];
    *(a1 + 6) = v16;
    v17 = __dst[3];
    *(a1 + 7) = __dst[2];
    *(a1 + 8) = v17;
  }

  v18 = *(a1 + 18);
  v25 = *(a1 + 17);
  v26 = v18;
  v19 = *(a1 + 20);
  v27 = *(a1 + 19);
  v28 = v19;
  FLSimpleSpringStep(&v25, __dst, a3);
  v20 = __dst[1];
  *(a1 + 17) = __dst[0];
  *(a1 + 18) = v20;
  v21 = __dst[3];
  *(a1 + 19) = __dst[2];
  *(a1 + 20) = v21;
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  memcpy(__dst, a1, 0x158uLL);
  _FLSimpleSpringFromCompoundSpring(__dst, &v25);
  v23[0] = v25;
  v23[1] = v26;
  v23[2] = v27;
  v23[3] = v28;
  FLSimpleSpringStep(v23, __dst, a3);
  result = *__dst;
  *a1 = __dst[0];
  return result;
}

double _FLSimpleSpringFromCompoundSpring@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 272);
  if (*(a1 + 336) == 1)
  {
    return FLSimpleSpringMakeWithDampingRatioResponse(a2, v2, v3, v4, *(a1 + 144), *(a1 + 208));
  }

  FLSimpleSpringMake(a2, v2, v3, v4, *(a1 + 16), *(a1 + 80));
  return result;
}

BOOL FLCompoundSpringIsStable(void *__src)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  memcpy(v15, __src, 0x158uLL);
  _FLSimpleSpringFromCompoundSpring(v15, &v16);
  if (*(__src + 336) == 1)
  {
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    v15[3] = v19;
    result = FLSimpleSpringIsStable(v15);
    if (result)
    {
      v3 = *(__src + 18);
      v15[0] = *(__src + 17);
      v15[1] = v3;
      v4 = *(__src + 20);
      v15[2] = *(__src + 19);
      v15[3] = v4;
      result = FLSimpleSpringIsStable(v15);
      if (result)
      {
        v5 = *(__src + 10);
        v15[0] = *(__src + 9);
        v15[1] = v5;
        v6 = *(__src + 12);
        v15[2] = *(__src + 11);
        v15[3] = v6;
        result = FLSimpleSpringIsStable(v15);
        if (result)
        {
          v7 = *(__src + 14);
          v15[0] = *(__src + 13);
          v15[1] = v7;
          v8 = *(__src + 15);
          v9 = *(__src + 16);
LABEL_10:
          v15[2] = v8;
          v15[3] = v9;
          return FLSimpleSpringIsStable(v15);
        }
      }
    }
  }

  else
  {
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    v15[3] = v19;
    result = FLSimpleSpringIsStable(v15);
    if (result)
    {
      v10 = *(__src + 18);
      v15[0] = *(__src + 17);
      v15[1] = v10;
      v11 = *(__src + 20);
      v15[2] = *(__src + 19);
      v15[3] = v11;
      result = FLSimpleSpringIsStable(v15);
      if (result)
      {
        v12 = *(__src + 2);
        v15[0] = *(__src + 1);
        v15[1] = v12;
        v13 = *(__src + 4);
        v15[2] = *(__src + 3);
        v15[3] = v13;
        result = FLSimpleSpringIsStable(v15);
        if (result)
        {
          v14 = *(__src + 6);
          v15[0] = *(__src + 5);
          v15[1] = v14;
          v8 = *(__src + 7);
          v9 = *(__src + 8);
          goto LABEL_10;
        }
      }
    }
  }

  return result;
}

void FLSimpleSpringMake(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = a5;
  *(a1 + 32) = a6;
  *(a1 + 40) = a4;
}

double FLSimpleSpringMakeWithDampingRatioResponse@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>, double a6@<D4>)
{
  v12 = 0;
  v13 = 0.0;
  FLSpringConvertDampingRatioResponseToStiffnessDamping(&v13, &v12, a5, a6);
  v11 = v12;
  result = v13;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = result;
  *(a1 + 32) = v11;
  *(a1 + 40) = a4;
  return result;
}

double FLSimpleSpringSetDampingRatioResponse(uint64_t a1, double a2, double a3)
{
  v6 = 0;
  v7 = 0.0;
  FLSpringConvertDampingRatioResponseToStiffnessDamping(&v7, &v6, a2, a3);
  v5 = v6;
  result = v7;
  *(a1 + 24) = v7;
  *(a1 + 32) = v5;
  return result;
}

void FLSimpleSpringStep(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v5 = *(a1 + 8);
  v6 = *(a1 + 40);
  if (vabdd_f64(*a1, v6) <= *(a1 + 48) && fabs(v5) <= *(a1 + 56))
  {
    v28 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v28;
    v29 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v29;
    return;
  }

  v7 = *a1 - v6;
  v8 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v8;
  v9 = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = v9;
  v10 = sqrt(*(a1 + 24));
  v11 = *(a1 + 32) * 0.5;
  v12 = -v11;
  v13 = exp(-(v11 * a3));
  v14 = v13;
  v15 = v5 + v11 * v7;
  if (v11 >= v10)
  {
    if (v11 <= v10)
    {
      v20 = v7 + v15 * a3;
      v27 = v20 * (v13 * v12) + v13 * v15;
      goto LABEL_10;
    }

    v22 = sqrt(v11 * v11 - v10 * v10);
    v23 = v22 * a3;
    v24 = v15 / v22;
    v25 = cosh(v23);
    v26 = sinh(v23);
    v20 = v24 * v26 + v7 * v25;
    v21 = v22 * (v24 * v25) + v7 * v26 * v22;
  }

  else
  {
    v16 = sqrt(v11 * v12 + v10 * v10);
    v17 = v16 * a3;
    v18 = v15 / v16;
    v19 = __sincos_stret(v17);
    v20 = v18 * v19.__sinval + v7 * v19.__cosval;
    v21 = v16 * (v18 * v19.__cosval) + -(v19.__sinval * v7) * v16;
  }

  v27 = v14 * v12 * v20 + v14 * v21;
LABEL_10:
  *a2 = v6 + v14 * v20;
  *(a2 + 8) = v27;
}

uint64_t type metadata accessor for DollHouse(uint64_t a1)
{
  result = qword_27DFAE638;
  if (!qword_27DFAE638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A8C6298()
{
  v1 = qword_27DFAE5C0;
  if (*(v0 + qword_27DFAE5C0))
  {
    v2 = *(v0 + qword_27DFAE5C0);
  }

  else
  {
    type metadata accessor for DebugDollHouseManager();
    v2 = swift_allocObject();
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = 0u;
    *(v2 + 96) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = v0;
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_23A8C631C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_23A8C6374@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_23A8C63CC()
{
  v1 = qword_27DFAE5D0;
  if (*(v0 + qword_27DFAE5D0))
  {
    v2 = *(v0 + qword_27DFAE5D0);
  }

  else
  {
    v3 = sub_23A8C65A4();
    v2 = sub_23A8CA0DC(v3, 0, 1, *(v0 + qword_27DFAE5B8));
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_23A8C64E4(uint64_t *a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v9 = v3;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v10 = sub_23A93BFA4();
    a2(0);
    swift_allocObject();
    v6 = a3(v10);
    swift_unknownObjectRelease();
    *(v9 + v4) = v6;
  }

  return v6;
}

uint64_t sub_23A8C65A4()
{
  v1 = qword_27DFAE5F0;
  if (*(v0 + qword_27DFAE5F0))
  {
    v2 = *(v0 + qword_27DFAE5F0);
  }

  else
  {
    v3 = v0;
    type metadata accessor for MetalConstants();
    swift_initStaticObject();
    v4 = sub_23A93BFA4();
    type metadata accessor for DollhouseMaterialFactory();
    swift_allocObject();
    v2 = sub_23A9008C0(v4);
    swift_unknownObjectRelease();
    *(v2 + 24) = &off_284D81C90;
    swift_unknownObjectWeakAssign();
    *(v3 + v1) = v2;
  }

  return v2;
}

void sub_23A8C6668()
{
  v1 = sub_23AA0C064();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + qword_27DFAE5F8) & 1) == 0)
  {
    v5 = sub_23A8C63CC();
    swift_beginAccess();
    v6 = *(v5 + 96);

    v7 = 0;
    v8 = 1 << *(v6 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v6 + 64);
    v11 = (v8 + 63) >> 6;
    v21 = (v2 + 40);
    v12 = &qword_27DFB0000;
    while (v10)
    {
LABEL_10:
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = *(*(v6 + 56) + ((v7 << 9) | (8 * v14)));
      v16 = v12[178];
      if (*(v15 + v16) != 1.0)
      {

        sub_23AA0C044();
        v17 = v1;
        v18 = qword_27DFB0598;
        swift_beginAccess();
        v19 = v15 + v18;
        v1 = v17;
        (*v21)(v19, v4, v17);
        swift_endAccess();
        *(v15 + v16) = 1065353216;

        v12 = &qword_27DFB0000;
      }
    }

    while (1)
    {
      v13 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if (v13 >= v11)
      {

        return;
      }

      v10 = *(v6 + 64 + 8 * v13);
      ++v7;
      if (v10)
      {
        v7 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_23A8C68AC()
{
  *(v0 + qword_27DFAE5C0) = 0;
  *(v0 + qword_27DFAE5C8) = 1;
  *(v0 + qword_27DFAE5D0) = 0;
  *(v0 + qword_27DFAE5D8) = 0;
  *(v0 + qword_27DFAE5E0) = 0;
  *(v0 + qword_27DFAE5E8) = 0;
  *(v0 + qword_27DFAE5F0) = 0;
  *(v0 + qword_27DFAE5F8) = 1;
  *(v0 + qword_27DFAE600) = 0;
  *(v0 + qword_27DFAE608) = 0;
  *(v0 + qword_27DFAE610) = MEMORY[0x277D84F98];
  *(v0 + qword_27DFAE618) = 0;
  *(v0 + qword_27DFAE620) = 0;
  *(v0 + qword_27DFAE628) = 1065353216;
  v1 = (v0 + qword_27DFAE630);
  *v1 = 0;
  v1[1] = 0;
  sub_23AA0D9E4();
  __break(1u);
}

uint64_t sub_23A8C69D0(float a1)
{
  *(v1 + qword_27DFAE5C0) = 0;
  *(v1 + qword_27DFAE5C8) = 1;
  *(v1 + qword_27DFAE5D0) = 0;
  *(v1 + qword_27DFAE5D8) = 0;
  *(v1 + qword_27DFAE5E0) = 0;
  *(v1 + qword_27DFAE5E8) = 0;
  *(v1 + qword_27DFAE5F0) = 0;
  *(v1 + qword_27DFAE5F8) = 1;
  *(v1 + qword_27DFAE600) = 0;
  *(v1 + qword_27DFAE608) = 0;
  *(v1 + qword_27DFAE610) = MEMORY[0x277D84F98];
  *(v1 + qword_27DFAE618) = 0;
  *(v1 + qword_27DFAE620) = 0;
  *(v1 + qword_27DFAE628) = 1065353216;
  v2 = (v1 + qword_27DFAE630);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + qword_27DFAE5B8) = a1;
  v3 = sub_23AA0C1A4();
  swift_retain_n();
  v4 = sub_23A8C63CC();
  *(v4 + 72) = v3;

  if (*(v4 + 72))
  {
    sub_23AA0CAB4();

    sub_23AA0C214();
  }

  v5 = *(v3 + qword_27DFAE5D0);

  *(v5 + 24) = &off_284D81CA8;
  swift_unknownObjectWeakAssign();

  return v3;
}

uint64_t sub_23A8C6BA0()
{
  v1 = sub_23A8C63CC();
  v2 = qword_27DFAE608;
  *(v1 + 136) = *(v0 + qword_27DFAE608);

  v3 = *(v0 + v2);
  v4 = *(v0 + qword_27DFAE5D0);
  if (v3 > 1)
  {
    if (v3 != 2)
    {

      v5 = sub_23A8C64B0();
      v6 = type metadata accessor for DollHouseDebugNormalsMaterialFactory();
      v7 = &off_284D82450;
      goto LABEL_9;
    }

    v5 = sub_23A8C647C();
    v6 = type metadata accessor for DollhouseColorMaterialFactory();
    goto LABEL_7;
  }

  if (v3)
  {

    v5 = sub_23A8C6448();
    v6 = type metadata accessor for DollhouseDebugMaterialFactory();
LABEL_7:
    v7 = &off_284D824E0;
    goto LABEL_9;
  }

  v5 = sub_23A8C65A4();
  v6 = type metadata accessor for DollhouseMaterialFactory();
  v7 = &off_284D823C0;
LABEL_9:
  v10 = v6;
  v11 = v7;
  *&v9 = v5;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v4 + 32));
  sub_23A8CAA3C(&v9, v4 + 32);
  swift_endAccess();
}

uint64_t sub_23A8C6CB8(uint64_t a1)
{
  v3 = type metadata accessor for CapturedRoom(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE370 != -1)
  {
    swift_once();
  }

  *(v1 + qword_27DFAE610) = sub_23A8CA2A0(a1);

  v6 = *(sub_23A8C6298() + 16);

  if ((v6 & 2) != 0)
  {
    v8 = *(v1 + qword_27DFAE5C0);
    sub_23A8CA90C(a1, v5);

    v9 = sub_23A9B7AF0(v5, 3);
    sub_23A9E37D0(v9);
    v11 = v10;

    sub_23A8CA970(v5);
    *(v8 + 32) = v11;
  }

  return result;
}

void sub_23A8C6DFC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_23AA0C0E4();
  v104 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v92 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v92 - v11;
  v107 = sub_23AA0C064();
  v13 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v106 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + qword_27DFAE600) != 1)
  {
    v103 = v6;
    if (*(v2 + qword_27DFAE5F8) != 1)
    {
      return;
    }

    v27 = qword_27DFAE610;
    if (!*(*(v2 + qword_27DFAE610) + 16) || a1 == 0)
    {
      return;
    }

    v100 = a1;

    sub_23AA0C9D4();
    v113 = v29;

    sub_23AA0C9D4();
    v112 = v30;

    v31 = COERCE_DOUBLE(vzip1_s32(v113.n128_u64[0], *&vextq_s8(v112, v112, 8uLL)));
    v32.n128_f32[0] = sqrtf(vaddv_f32(vmul_f32(*&v31, *&v31)));
    v113 = v32;
    v33 = COERCE_DOUBLE(vdiv_f32(*&v31, vdup_lane_s32(v32.n128_u64[0], 0)));
    if (v32.n128_f32[0] >= 0.01)
    {
      *&v34 = v33;
    }

    else
    {
      *&v34 = v31;
    }

    v35 = sub_23A8C63CC();
    swift_beginAccess();
    v36 = *(v35 + 96);

    v37 = *(v36 + 16);
    if (v37)
    {
      v38 = sub_23A9EDB30(*(v36 + 16), 0);
      sub_23A9F41F0(&v114, &v38[(*(v104 + 80) + 32) & ~*(v104 + 80)], v37, v36);
      v40 = v39;
      sub_23A8CA904(v114);
      if (v40 != v37)
      {
        __break(1u);
LABEL_23:

        return;
      }
    }

    else
    {

      v38 = MEMORY[0x277D84F90];
    }

    v42 = v113;
    v115 = v38;
    v41.n128_u32[0] = 1008981770;
    v112.i64[0] = v2;
    if (v113.n128_f32[0] < 0.01)
    {
      goto LABEL_53;
    }

    v102 = v9;
    v43 = *(v2 + v27);
    v46 = *(v43 + 64);
    v45 = v43 + 64;
    v44 = v46;
    v47 = 1 << *(*(v2 + v27) + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v49 = v48 & v44;
    v101 = qword_27DFAE5D0;
    v50 = (v47 + 63) >> 6;
    v108 = v104 + 16;
    v113.n128_u64[0] = v104 + 8;
    v97 = (v13 + 40);

    v52 = 0;
    v96 = v13;
    v95 = v51;
    v94 = v45;
    v93 = v50;
    while (1)
    {
LABEL_30:
      if (!v49)
      {
        while (1)
        {
          v53 = v52 + 1;
          if (__OFADD__(v52, 1))
          {
            goto LABEL_67;
          }

          if (v53 >= v50)
          {
            break;
          }

          v49 = *(v45 + 8 * v53);
          ++v52;
          if (v49)
          {
            v52 = v53;
            goto LABEL_35;
          }
        }

        v38 = v115;
LABEL_53:
        v73 = *(v38 + 2);
        if (!v73)
        {
LABEL_64:

          return;
        }

        v113.n128_u64[0] = qword_27DFAE5D0;
        v111 = *(v104 + 16);
        v74 = (*(v104 + 80) + 32) & ~*(v104 + 80);
        v109 = v38;
        v75 = &v38[v74];
        v76 = v13;
        v77 = *(v104 + 72);
        v78 = (v104 + 8);
        v110 = (v76 + 40);
        v79 = v103;
        v111(v103, v75, v4, v41, v42);
        while (1)
        {
          v82 = *(v2 + v113.n128_u64[0]);
          swift_beginAccess();
          v83 = *(v82 + 96);
          if (!*(v83 + 16))
          {
            goto LABEL_56;
          }

          v84 = sub_23A9EDD28(v79);
          if ((v85 & 1) == 0)
          {
            break;
          }

          v86 = *(*(v83 + 56) + 8 * v84);

          v87 = qword_27DFB0590;
          if (*(v86 + qword_27DFB0590) == 1.0)
          {

            goto LABEL_56;
          }

          v88 = v106;
          sub_23AA0C044();
          (*v78)(v103, v4);
          v89 = qword_27DFB0598;
          swift_beginAccess();
          v90 = v86 + v89;
          v2 = v112.i64[0];
          v91 = v88;
          v79 = v103;
          (*v110)(v90, v91, v107);
          swift_endAccess();
          *(v86 + v87) = 1065353216;

LABEL_57:
          v75 += v77;
          if (!--v73)
          {
            goto LABEL_64;
          }

          v111(v79, v75, v4, v80, v81);
        }

LABEL_56:
        (*v78)(v79, v4);
        goto LABEL_57;
      }

LABEL_35:
      v54 = __clz(__rbit64(v49));
      v49 &= v49 - 1;
      v55 = (v52 << 9) | (8 * v54);
      if (vaddv_f32(vmul_f32(v34, *(*(v51 + 48) + v55))) > 0.4)
      {
        v56 = *(*(v51 + 56) + v55);
        v111 = *(v56 + 16);
        if (v111)
        {
          break;
        }
      }
    }

    v99 = v49;
    v105 = (*(v104 + 80) + 32) & ~*(v104 + 80);
    v110 = (v56 + v105);
    v57 = *(v104 + 72);
    v109 = *(v104 + 16);
    v98 = v56;

    v58 = 0;
    while (1)
    {
      (v109)(v12, v110 + v57 * v58, v4);
      v59 = *(v115 + 2);
      if (v59)
      {
        v60 = &v115[v105];
        sub_23A8C9E78(&qword_27DFAE8C8, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v61 = 0;
        while ((sub_23AA0D084() & 1) == 0)
        {
          ++v61;
          v60 += v57;
          if (v59 == v61)
          {
            goto LABEL_38;
          }
        }

        v62 = v102;
        sub_23A9853F0(v61, v102);
        v63 = *v113.n128_u64[0];
        (*v113.n128_u64[0])(v62, v4);
        v2 = v112.i64[0];
        v64 = *(v112.i64[0] + v101);
        swift_beginAccess();
        v65 = *(v64 + 96);
        if (*(v65 + 16))
        {

          v66 = sub_23A9EDD28(v12);
          if (v67)
          {
            v68 = *(*(v65 + 56) + 8 * v66);

            v69 = qword_27DFB0590;
            if (*(v68 + qword_27DFB0590) != 0.15)
            {
              v70 = v106;
              sub_23AA0C044();
              v63(v12, v4);
              v71 = qword_27DFB0598;
              swift_beginAccess();
              v72 = v70;
              v2 = v112.i64[0];
              (*v97)(v68 + v71, v72, v107);
              swift_endAccess();
              *(v68 + v69) = 1041865114;

              goto LABEL_39;
            }
          }

          else
          {
          }
        }

        v63(v12, v4);
      }

      else
      {
LABEL_38:
        (*v113.n128_u64[0])(v12, v4);
        v2 = v112.i64[0];
      }

LABEL_39:
      if (++v58 == v111)
      {

        v13 = v96;
        v51 = v95;
        v45 = v94;
        v50 = v93;
        v49 = v99;
        goto LABEL_30;
      }
    }
  }

  v15 = sub_23A8C63CC();
  swift_beginAccess();
  v16 = *(v15 + 96);

  v17 = 0;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v21 = (v18 + 63) >> 6;
  v113.n128_u64[0] = v13 + 40;
  v22 = v106;
  while (v20)
  {
LABEL_10:
    v24 = *(*(v16 + 56) + ((v17 << 9) | (8 * __clz(__rbit64(v20)))));
    v20 &= v20 - 1;
    v25 = qword_27DFB0590;
    if (*(v24 + qword_27DFB0590) != 0.15)
    {

      sub_23AA0C044();
      v26 = qword_27DFB0598;
      swift_beginAccess();
      (*v113.n128_u64[0])(v24 + v26, v22, v107);
      swift_endAccess();
      *(v24 + v25) = 1041865114;
    }
  }

  while (1)
  {
    v23 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v23 >= v21)
    {
      goto LABEL_23;
    }

    v20 = *(v16 + 64 + 8 * v23);
    ++v17;
    if (v20)
    {
      v17 = v23;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_67:
  __break(1u);
}

uint64_t sub_23A8C7878()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8C0, &qword_23AA115C0);
  MEMORY[0x28223BE20](v1 - 8);
  v37 = &v29 - v2;
  v3 = sub_23AA0CBF4();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A0, &qword_23AA115A8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_23AA0CD84();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v0;
  sub_23A8C63CC();
  v11 = sub_23A9FC870();

  if (!(v11 >> 62))
  {
    v13 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_16:
  }

  result = sub_23AA0D7F4();
  v13 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v13 >= 1)
  {
    v36 = v10;
    v14 = 0;
    v34 = qword_27DFAE618;
    v39 = (v8 + 56);
    v40 = v11 & 0xC000000000000001;
    v33 = (v8 + 32);
    v30 = (v8 + 16);
    v32 = (v8 + 8);
    v29 = xmmword_23AA10FC0;
    v31 = v6;
    v35 = v13;
    do
    {
      if (v40)
      {
        v15 = MEMORY[0x23EE90360](v14, v11);
      }

      else
      {
        v15 = *(v11 + 8 * v14 + 32);
      }

      v16 = qword_27DFC0628;
      swift_beginAccess();
      sub_23A8CA9D8(v15 + v16, v42);
      v17 = v43;
      v18 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      (*(v18 + 8))(v41, v17, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A8, &unk_23AA115B0);
      if (swift_dynamicCast())
      {
        (*v39)(v6, 0, 1, v7);
        v19 = v36;
        (*v33)(v36, v6, v7);
        __swift_destroy_boxed_opaque_existential_1(v42);
        v20 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:*(v38 + v34) green:*(v38 + v34) blue:*(v38 + v34) alpha:1.0];
        v21 = sub_23AA0CBB4();
        (*(*(v21 - 8) + 56))(v37, 1, 1, v21);
        v22 = v20;
        sub_23AA0CBE4();
        sub_23AA0CC44();
        type metadata accessor for ScanEntity(0);
        sub_23A8C9E78(&qword_27DFAE8B0, type metadata accessor for ScanEntity, &unk_23AA12800);
        v23 = sub_23AA0CAD4();
        v25 = v24;
        v26 = sub_23AA0C4A4();
        if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
          v27 = swift_allocObject();
          *(v27 + 16) = v29;
          *(v27 + 56) = v7;
          *(v27 + 64) = MEMORY[0x277CDB298];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v27 + 32));
          (*v30)(boxed_opaque_existential_1, v19, v7);
          v6 = v31;
          sub_23AA0C494();
        }

        v23(v42, 0);

        (*v32)(v19, v7);
        v13 = v35;
      }

      else
      {

        (*v39)(v6, 1, 1, v7);
        sub_23A8CA7EC(v6);
        __swift_destroy_boxed_opaque_existential_1(v42);
      }

      ++v14;
    }

    while (v13 != v14);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A8C7E78(__n128 a1)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A0, &qword_23AA115A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_23AA0CD84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v9 = v34.n128_u64[0];
  *(&v9 + 1) = vextq_s8(*(v1 + qword_27DFAE630), *(v1 + qword_27DFAE630), 8uLL).u64[0];
  v30 = qword_27DFAE630;
  v31 = v1;
  *(v1 + qword_27DFAE630) = v9;
  sub_23A8C63CC();
  v10 = sub_23A9FC870();

  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:
  }

  result = sub_23AA0D7F4();
  v12 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    v33 = v10 & 0xC000000000000001;
    v14 = (v6 + 56);
    v29 = (v6 + 32);
    v27 = (v6 + 16);
    v28 = (v6 + 8);
    v26 = xmmword_23AA10FC0;
    v34.n128_u64[0] = v10;
    do
    {
      if (v33)
      {
        v15 = MEMORY[0x23EE90360](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = qword_27DFC0628;
      swift_beginAccess();
      sub_23A8CA9D8(v15 + v16, v36);
      v17 = v37;
      v18 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v18 + 8))(v35, v17, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A8, &unk_23AA115B0);
      if (swift_dynamicCast())
      {
        (*v14)(v4, 0, 1, v5);
        (*v29)(v8, v4, v5);
        __swift_destroy_boxed_opaque_existential_1(v36);
        v32 = *(v31 + v30);
        v19 = sub_23AA0CC84();
        sub_23AA0CB94();
        v19(v36, 0);
        type metadata accessor for ScanEntity(0);
        sub_23A8C9E78(&qword_27DFAE8B0, type metadata accessor for ScanEntity, &unk_23AA12800);
        v20 = sub_23AA0CAD4();
        v22 = v21;
        v23 = sub_23AA0C4A4();
        if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
          v24 = swift_allocObject();
          *(v24 + 16) = v26;
          *(v24 + 56) = v5;
          *(v24 + 64) = MEMORY[0x277CDB298];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 32));
          (*v27)(boxed_opaque_existential_1, v8, v5);
          sub_23AA0C494();
        }

        v20(v36, 0);
        v10 = v34.n128_u64[0];

        (*v28)(v8, v5);
      }

      else
      {

        (*v14)(v4, 1, 1, v5);
        sub_23A8CA7EC(v4);
        __swift_destroy_boxed_opaque_existential_1(v36);
        v10 = v34.n128_u64[0];
      }

      ++v13;
    }

    while (v12 != v13);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A8C8364(__n128 a1)
{
  v34 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A0, &qword_23AA115A8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_23AA0CD84();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + qword_27DFAE630);
  *(&v9 + 1) = v34.n128_u64[0];
  v30 = qword_27DFAE630;
  v31 = v1;
  *(v1 + qword_27DFAE630) = v9;
  sub_23A8C63CC();
  v10 = sub_23A9FC870();

  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_16:
  }

  result = sub_23AA0D7F4();
  v12 = result;
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_3:
  if (v12 >= 1)
  {
    v13 = 0;
    v33 = v10 & 0xC000000000000001;
    v14 = (v6 + 56);
    v29 = (v6 + 32);
    v27 = (v6 + 16);
    v28 = (v6 + 8);
    v26 = xmmword_23AA10FC0;
    v34.n128_u64[0] = v10;
    do
    {
      if (v33)
      {
        v15 = MEMORY[0x23EE90360](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = qword_27DFC0628;
      swift_beginAccess();
      sub_23A8CA9D8(v15 + v16, v36);
      v17 = v37;
      v18 = v38;
      __swift_project_boxed_opaque_existential_1(v36, v37);
      (*(v18 + 8))(v35, v17, v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A8, &unk_23AA115B0);
      if (swift_dynamicCast())
      {
        (*v14)(v4, 0, 1, v5);
        (*v29)(v8, v4, v5);
        __swift_destroy_boxed_opaque_existential_1(v36);
        v32 = *(v31 + v30);
        v19 = sub_23AA0CC84();
        sub_23AA0CB94();
        v19(v36, 0);
        type metadata accessor for ScanEntity(0);
        sub_23A8C9E78(&qword_27DFAE8B0, type metadata accessor for ScanEntity, &unk_23AA12800);
        v20 = sub_23AA0CAD4();
        v22 = v21;
        v23 = sub_23AA0C4A4();
        if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8B8, &qword_23AA12100);
          v24 = swift_allocObject();
          *(v24 + 16) = v26;
          *(v24 + 56) = v5;
          *(v24 + 64) = MEMORY[0x277CDB298];
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v24 + 32));
          (*v27)(boxed_opaque_existential_1, v8, v5);
          sub_23AA0C494();
        }

        v20(v36, 0);
        v10 = v34.n128_u64[0];

        (*v28)(v8, v5);
      }

      else
      {

        (*v14)(v4, 1, 1, v5);
        sub_23A8CA7EC(v4);
        __swift_destroy_boxed_opaque_existential_1(v36);
        v10 = v34.n128_u64[0];
      }

      ++v13;
    }

    while (v12 != v13);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A8C884C()
{
}

uint64_t sub_23A8C88DC()
{
  v0 = sub_23AA0CAC4();

  return v0;
}

uint64_t sub_23A8C8974()
{
  sub_23A8C88DC();

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_23A8C89BC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A8C89DC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t storeEnumTagSinglePayload for simd_rectangle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_23A8C8B00(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A8C8B20(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 128) = v3;
  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_23A8C8BDC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A8C8BFC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy16_16(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for simd_rectangle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_memcpy12_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 2);
  *result = v2;
  return result;
}

uint64_t sub_23A8C8C9C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 12))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A8C8CBC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 12) = v3;
  return result;
}

__n128 __swift_memcpy64_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23A8C8D38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_23A8C8D58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

uint64_t sub_23A8C8DB0()
{
  if (*(v0 + qword_27DFAE5C8))
  {
    return 6;
  }

  else
  {
    return 7;
  }
}

uint64_t sub_23A8C8DF4(uint64_t a1)
{
  v3 = sub_23AA0C0E4();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = sub_23AA0D7F4();
  }

  else
  {
    v6 = *(a1 + 16);
  }

  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v45 = MEMORY[0x277D84F90];
    sub_23A975E10(0, v6 & ~(v6 >> 63), 0);
    v40 = v45;
    if (v38)
    {
      result = sub_23AA0D7A4();
    }

    else
    {
      result = sub_23AA0D774();
      v8 = *(a1 + 36);
    }

    v42 = result;
    v43 = v8;
    v44 = v38 != 0;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v9 = 0;
      v35 = v37 + 32;
      v36 = (v37 + 16);
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v10 = a1;
      }

      v32 = a1 + 56;
      v33 = v10;
      v30 = v1;
      v31 = a1 + 64;
      v34 = v6;
      while (v9 < v6)
      {
        if (__OFADD__(v9++, 1))
        {
          goto LABEL_37;
        }

        v13 = v42;
        v14 = v44;
        v39 = v43;
        sub_23A9886A4(v42, v43, v44, a1);
        (*v36)(v5, v15 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v3);

        v16 = v40;
        v45 = v40;
        v18 = *(v40 + 16);
        v17 = *(v40 + 24);
        if (v18 >= v17 >> 1)
        {
          sub_23A975E10((v17 > 1), v18 + 1, 1);
          v16 = v45;
        }

        *(v16 + 16) = v18 + 1;
        v19 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v16;
        result = (*(v37 + 32))(v16 + v19 + *(v37 + 72) * v18, v5, v3);
        if (v38)
        {
          if (!v14)
          {
            goto LABEL_42;
          }

          if (sub_23AA0D7C4())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v6 = v34;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8D8, &unk_23AA115D0);
          v11 = sub_23AA0D414();
          sub_23AA0D844();
          result = v11(v41, 0);
          if (v9 == v6)
          {
LABEL_34:
            sub_23A8CA9CC(v42, v43, v44);
            return v40;
          }
        }

        else
        {
          if (v14)
          {
            goto LABEL_43;
          }

          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v20 = 1 << *(a1 + 32);
          if (v13 >= v20)
          {
            goto LABEL_38;
          }

          v21 = v13 >> 6;
          v22 = *(v32 + 8 * (v13 >> 6));
          if (((v22 >> v13) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(a1 + 36) != v39)
          {
            goto LABEL_40;
          }

          v23 = v22 & (-2 << (v13 & 0x3F));
          if (v23)
          {
            v20 = __clz(__rbit64(v23)) | v13 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v24 = v21 << 6;
            v25 = v21 + 1;
            v26 = (v31 + 8 * v21);
            while (v25 < (v20 + 63) >> 6)
            {
              v28 = *v26++;
              v27 = v28;
              v24 += 64;
              ++v25;
              if (v28)
              {
                result = sub_23A8CA9CC(v13, v39, 0);
                v20 = __clz(__rbit64(v27)) + v24;
                goto LABEL_33;
              }
            }

            result = sub_23A8CA9CC(v13, v39, 0);
          }

LABEL_33:
          v29 = *(a1 + 36);
          v42 = v20;
          v43 = v29;
          v44 = 0;
          v6 = v34;
          if (v9 == v34)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_23A8C9224(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE878, &qword_23AA11588);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = &v41 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE880, &unk_23AA11590);
  MEMORY[0x28223BE20](v4 - 8);
  v49 = &v41 - v5;
  v58 = sub_23AA0C0E4();
  v51 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE888, &qword_23AA14E40);
  MEMORY[0x28223BE20](v48);
  v47 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v46 = &v41 - v9;
  v52 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAE890, &qword_23AA115A0);
    v10 = sub_23AA0DA44();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = v52 + 64;
  v12 = 1 << *(v52 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v52 + 64);
  v15 = (v12 + 63) >> 6;
  v44 = v51 + 16;
  v56 = v51 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v42 = v15;
  v43 = v11;
  v45 = v10;
  while (v14)
  {
LABEL_15:
    v21 = __clz(__rbit64(v14)) | (v18 << 6);
    v23 = v51;
    v22 = v52;
    v24 = *(v52 + 48);
    v54 = *(v51 + 72);
    v25 = v46;
    v26 = v58;
    (*(v51 + 16))(v46, v24 + v54 * v21, v58);
    v55 = *(*(v22 + 56) + 8 * v21);
    v27 = v48;
    *&v25[*(v48 + 48)] = v55;
    v28 = v25;
    v29 = v47;
    sub_23A8CA738(v28, v47);
    v30 = *(v27 + 48);
    v31 = *(v23 + 32);
    v32 = v50;
    v31(v50, v29, v26);
    v53 = *(v29 + v30);
    v33 = v49;
    v31(v49, v32, v26);
    v31(v57, v33, v26);
    v10 = v45;
    sub_23A8C9E78(&unk_27DFAF2C0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);

    result = sub_23AA0D054();
    v34 = -1 << *(v10 + 32);
    v35 = result & ~v34;
    v36 = v35 >> 6;
    if (((-1 << v35) & ~*(v16 + 8 * (v35 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v34) >> 6;
      while (++v36 != v38 || (v37 & 1) == 0)
      {
        v39 = v36 == v38;
        if (v36 == v38)
        {
          v36 = 0;
        }

        v37 |= v39;
        v40 = *(v16 + 8 * v36);
        if (v40 != -1)
        {
          v19 = __clz(__rbit64(~v40)) + (v36 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v35) & ~*(v16 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    result = (v31)(*(v10 + 48) + v19 * v54, v57, v58);
    *(*(v10 + 56) + 8 * v19) = v53;
    ++*(v10 + 16);
    v15 = v42;
    v11 = v43;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_23A8C97D0(uint64_t a1, uint64_t a2)
{
  sub_23AA0DD14();
  swift_getWitnessTable();
  sub_23AA0CB44();
  return sub_23AA0DD54();
}

BOOL sub_23A8C9854(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_23A8C98BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23AA0D134();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_23A8C98FC(uint64_t a1, id *a2)
{
  result = sub_23AA0D114();
  *a2 = 0;
  return result;
}

uint64_t sub_23A8C9974(uint64_t a1, id *a2)
{
  v3 = sub_23AA0D124();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_23A8C99F4@<X0>(uint64_t *a2@<X8>)
{
  sub_23AA0D134();
  v3 = sub_23AA0D104();

  *a2 = v3;
  return result;
}

void *sub_23A8C9A6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_23A8C9A98@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_23A8C9B68@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_23A8C9B78(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_23AA0CB34();
}

uint64_t sub_23A8C9BE4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_23A8CA268(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_23A8C9C28(uint64_t a1)
{
  v2 = sub_23A8C9E78(&qword_27DFAE970, type metadata accessor for Key, &unk_23AA11A24);
  v3 = sub_23A8C9E78(&qword_27DFAE978, type metadata accessor for Key, &unk_23AA11768);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23A8C9CE4@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_23AA0D104();

  *a2 = v3;
  return result;
}

uint64_t sub_23A8C9D2C(uint64_t a1)
{
  v2 = sub_23A8C9E78(&qword_27DFAE960, type metadata accessor for UIAccessibilityPriority, &unk_23AA118E8);
  v3 = sub_23A8C9E78(&qword_27DFAE968, type metadata accessor for UIAccessibilityPriority, &unk_23AA11888);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_23A8C9E78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23A8C9F50()
{
  v0 = sub_23AA0D134();
  v1 = MEMORY[0x23EE8FCD0](v0);

  return v1;
}

uint64_t sub_23A8C9F8C(uint64_t a1)
{
  sub_23AA0D134();
  sub_23AA0D1D4();
}

uint64_t sub_23A8C9FE0()
{
  sub_23AA0D134();
  sub_23AA0DD14();
  sub_23AA0D1D4();
  v0 = sub_23AA0DD54();

  return v0;
}

uint64_t sub_23A8CA054(void *a1, uint64_t *a2)
{
  v2 = sub_23AA0D134();
  v4 = v3;
  if (v2 == sub_23AA0D134() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_23AA0DBD4();
  }

  return v7 & 1;
}

uint64_t sub_23A8CA0DC(uint64_t a1, uint64_t a2, char a3, float a4)
{
  v11[3] = type metadata accessor for DollhouseMaterialFactory();
  v11[4] = &off_284D823C0;
  v11[0] = a1;
  type metadata accessor for EntityManager();
  v8 = swift_allocObject();
  *(v8 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v8 + 72) = 0;
  type metadata accessor for ScanContainer(0);
  swift_allocObject();
  *(v8 + 80) = sub_23AA0C1A4();
  v9 = MEMORY[0x277D84F98];
  *(v8 + 96) = MEMORY[0x277D84F98];
  *(v8 + 104) = v9;
  *(v8 + 112) = sub_23A9DC410(MEMORY[0x277D84F90]);
  *(v8 + 120) = v9;
  *(v8 + 128) = v9;
  *(v8 + 136) = 0;
  *(v8 + 152) = 0x40A000003FC00000;
  sub_23A8CA9D8(v11, v8 + 32);
  *(v8 + 144) = a2;
  *(v8 + 88) = a3 & 1;
  *(v8 + 140) = a4;
  *(v8 + 156) = a4 * 1.5;
  sub_23A8E02B4();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v8;
}

uint64_t sub_23A8CA1F4(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_23A8CA230(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_23A8CA268(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void *sub_23A8CA2A0(uint64_t a1)
{
  v2 = type metadata accessor for CapturedRoom(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23A8CA90C(a1, v4);
  v37 = v4;
  v5 = sub_23A9B7AF0(v4, 3);
  v6 = sub_23A9888E0(v5);
  v7 = sub_23A988E44(v6);
  sub_23A989EB4(v5, 0, 1);
  v9 = v8;
  v10 = sub_23A98A108(v5, 0.000001);
  v11.n128_u32[0] = 1032805417;
  v12 = sub_23A98B0B0(v10, v11);

  v13 = sub_23A98B560(v12);
  v14 = sub_23A98C6E0(v13, v12);

  sub_23A98C8A0(v14, v12);
  v16 = v15;

  v17 = sub_23A98C6E0(v16, v12);

  v18 = sub_23A98D6EC(v17, v9, v6, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8D0, &qword_23AA115C8);
  result = sub_23AA0DA14();
  v20 = result;
  v21 = 0;
  v22 = 1 << *(v18 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v18[8];
  v25 = (v22 + 63) >> 6;
  v38 = result + 8;
  if (v24)
  {
    while (1)
    {
      v26 = __clz(__rbit64(v24));
      v24 &= v24 - 1;
LABEL_10:
      v29 = v26 | (v21 << 6);
      v30 = *(v18[6] + 8 * v29);

      v32 = sub_23A8C8DF4(v31);

      *(v38 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      *(v20[6] + 8 * v29) = v30;
      *(v20[7] + 8 * v29) = v32;
      v33 = v20[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
        break;
      }

      v20[2] = v35;
      if (!v24)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v27 = v21;
    while (1)
    {
      v21 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v21 >= v25)
      {

        sub_23A8CA970(v37);
        return v20;
      }

      v28 = v18[v21 + 8];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_23A8CA57C(uint64_t a1, double a2)
{
  v3 = v2;
  sub_23A8C63CC();
  sub_23A8E086C(0, 1, a2);

  sub_23A8C6DFC(a1);
  v6 = sub_23A8C6298();
  v7 = *(v3 + qword_27DFAE5D0);
  swift_beginAccess();
  v8 = *(v7 + 96);
  swift_beginAccess();
  v9 = *(v7 + 104);
  v10 = *(v3 + qword_27DFAE610);
  v11 = *(v6 + 16);

  if ((v11 & 8) != 0)
  {
    sub_23A94948C(v8);
    v11 = *(v6 + 16);
  }

  if ((v11 & 8) != 0)
  {
    v12 = sub_23A8C9224(v8);

    sub_23A949E90(v12);
  }

  if (*(v6 + 16))
  {
    sub_23A94BFA4(v9);
  }

  v13 = *(v6 + 16);
  if (a1 && (v13 & 2) != 0)
  {

    sub_23A94857C();

    v13 = *(v6 + 16);
  }

  if ((v13 & 4) != 0)
  {
    sub_23A948D08(v10);
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_23A8CA738(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE888, &qword_23AA14E40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_23A8CA7EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8A0, &qword_23AA115A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_23A8CA90C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapturedRoom(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8CA970(uint64_t a1)
{
  v2 = type metadata accessor for CapturedRoom(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A8CA9CC(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_23A8CA9D8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_23A8CAA3C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

void sub_23A8CAB08(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

void sub_23A8CAE0C()
{
  type metadata accessor for ARGlyphView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23AA0BE14();
  v4 = v3;

  qword_27DFC0460 = v2;
  *algn_27DFC0468 = v4;
}

void sub_23A8CAED8()
{
  type metadata accessor for ARGlyphView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23AA0BE14();
  v4 = v3;

  qword_27DFC0470 = v2;
  *algn_27DFC0478 = v4;
}

void sub_23A8CAFA0()
{
  type metadata accessor for ARGlyphView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23AA0BE14();
  v4 = v3;

  qword_27DFC0480 = v2;
  *algn_27DFC0488 = v4;
}

void sub_23A8CB068()
{
  type metadata accessor for ARGlyphView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23AA0BE14();
  v4 = v3;

  qword_27DFC0490 = v2;
  *algn_27DFC0498 = v4;
}

void sub_23A8CB130()
{
  type metadata accessor for ARGlyphView();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_23AA0BE14();
  v4 = v3;

  qword_27DFC04A0 = v2;
  *algn_27DFC04A8 = v4;
}

char *sub_23A8CB1F8(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  v10 = OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderer;
  *&v4[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderer] = 0;
  *&v4[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_previousAngle] = 0;
  type metadata accessor for MetalConstants();
  swift_initStaticObject();
  v11 = sub_23A93BFA4();
  v12 = [objc_allocWithZone(MEMORY[0x277CD9F10]) init];
  v13 = OBJC_IVAR____TtC8RoomPlan11ARGlyphView_metalLayer;
  *&v4[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_metalLayer] = v12;
  [v12 setOpaque_];
  [*&v4[v13] setDevice_];
  v14 = *&v4[v13];
  type metadata accessor for RenderTimer();
  swift_allocObject();
  swift_unknownObjectRetain();
  v15 = v14;
  v16 = sub_23A95499C(v11, v15);
  swift_unknownObjectRelease();

  *&v5[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderTimer] = v16;
  v17 = 8;
  if (([v11 supportsTextureSampleCount_] & 1) == 0)
  {
    v17 = 4;
    if (![v11 supportsTextureSampleCount_])
    {
      v17 = 1;
    }
  }

  v18 = *&v5[v13];
  swift_unknownObjectRetain();
  v19 = v18;
  v20 = [v19 pixelFormat];
  type metadata accessor for GlyphRenderer();
  swift_allocObject();
  sub_23A9F8B30(v19, v11, v20, v17);
  *&v5[v10] = v21;

  v22 = *&v5[v10];
  if (v22)
  {
    *(*(v22 + 64) + 32) = 2;

    sub_23A9E6F04();
  }

  v23 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  v24 = OBJC_IVAR____TtC8RoomPlan11ARGlyphView_backgroundView;
  *&v5[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_backgroundView] = v23;
  [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  v25 = *&v5[v24];
  v26 = objc_opt_self();
  v27 = v25;
  v28 = [v26 blackColor];
  v29 = [v28 colorWithAlphaComponent_];

  [v27 setBackgroundColor_];
  v30 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v31 = OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel;
  *&v5[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel] = v30;
  [v30 setNumberOfLines_];
  v32 = *&v5[v31];
  v33 = [v26 whiteColor];
  [v32 setTextColor_];

  [*&v5[v31] setTextAlignment_];
  [*&v5[v31] setLineBreakMode_];
  [*&v5[v31] setTranslatesAutoresizingMaskIntoConstraints_];
  v34 = *&v5[v31];
  v35 = objc_opt_self();
  v36 = *MEMORY[0x277D76988];
  v37 = v34;
  v38 = [v35 preferredFontForTextStyle_];
  [v37 setFont_];

  v68.receiver = v5;
  v68.super_class = type metadata accessor for ARGlyphView();
  v39 = objc_msgSendSuper2(&v68, sel_initWithFrame_, a1, a2, a3, a4);
  [v39 setAlpha_];
  v40 = OBJC_IVAR____TtC8RoomPlan11ARGlyphView_backgroundView;
  [v39 addSubview_];
  v41 = OBJC_IVAR____TtC8RoomPlan11ARGlyphView_onboardingLabel;
  [v39 addSubview_];
  v42 = v39;
  v43 = [v42 layer];
  [v43 addSublayer_];

  *(*&v42[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderTimer] + 88) = &off_284D81ED8;
  swift_unknownObjectWeakAssign();

  v44 = *MEMORY[0x277D768C8];
  v45 = *(MEMORY[0x277D768C8] + 8);
  v46 = *(MEMORY[0x277D768C8] + 16);
  v47 = *(MEMORY[0x277D768C8] + 24);
  v48 = *&v39[v40];
  sub_23AA08688(v42, v44, v45, v46, v47);

  v49 = [objc_opt_self() currentDevice];
  v50 = [v49 userInterfaceIdiom];

  v51 = qword_27DFAE340;
  v52 = *&v39[v41];
  if (v51 != -1)
  {
    swift_once();
  }

  if (v50 == 1)
  {
    v53 = 120.0;
  }

  else
  {
    v53 = 80.0;
  }

  v54 = sub_23AA0D104();
  [v52 setText_];

  v55 = [*&v39[v41] centerXAnchor];
  v56 = [v42 centerXAnchor];
  v57 = [v55 constraintEqualToAnchor_];

  [v57 setActive_];
  v58 = [*&v39[v41] centerYAnchor];
  v59 = [v42 centerYAnchor];
  v60 = [v58 constraintEqualToAnchor:v59 constant:v53];

  [v60 setActive_];
  v61 = [*&v39[v41] trailingAnchor];
  v62 = [v42 trailingAnchor];
  v63 = [v61 constraintEqualToAnchor:v62 constant:-24.0];

  [v63 setActive_];
  v64 = [*&v39[v41] leadingAnchor];
  v65 = [v42 leadingAnchor];

  v66 = [v64 constraintEqualToAnchor:v65 constant:24.0];
  [v66 setActive_];

  swift_unknownObjectRelease();
  return v42;
}

id sub_23A8CB990()
{
  v14.receiver = v0;
  v14.super_class = type metadata accessor for ARGlyphView();
  objc_msgSendSuper2(&v14, sel_layoutSubviews);
  v1 = objc_opt_self();
  [v1 setDisableActions_];
  [v0 bounds];
  Width = CGRectGetWidth(v15);
  [v0 bounds];
  Height = CGRectGetHeight(v16);
  if (Height < Width)
  {
    Width = Height;
  }

  v4 = *&v0[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_metalLayer];
  [v4 setBounds_];
  v5 = objc_opt_self();
  v6 = [v5 mainScreen];
  [v6 scale];
  v8 = v7;

  v9 = [v5 mainScreen];
  [v9 scale];
  v11 = v10;

  [v4 setDrawableSize_];
  [v0 bounds];
  MidX = CGRectGetMidX(v17);
  [v0 bounds];
  [v4 setPosition_];
  return [v1 setDisableActions_];
}

char *sub_23A8CBC00(uint64_t a1, uint64_t (*a2)(char *))
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *&result[OBJC_IVAR____TtC8RoomPlan11ARGlyphView_renderTimer];
    v5 = result;

    result = *(v4 + 32);
    if (!result)
    {
      __break(1u);
      return result;
    }

    [result invalidate];
  }

  if (a2)
  {
    return a2(result);
  }

  return result;
}

void sub_23A8CBCA0(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_opt_self();
  v8 = swift_allocObject();
  *(v8 + 16) = v3;
  *(v8 + 24) = a3;
  v17 = sub_23A8CBFA8;
  v18 = v8;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_23A9AD0B8;
  v16 = &block_descriptor;
  v9 = _Block_copy(&v13);
  v10 = v3;

  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v17 = sub_23A8CC014;
  v18 = v11;
  v13 = MEMORY[0x277D85DD0];
  v14 = 1107296256;
  v15 = sub_23A8CBE48;
  v16 = &block_descriptor_22;
  v12 = _Block_copy(&v13);
  sub_23A8CC044(a1, a2);

  [v7 animateKeyframesWithDuration:4 delay:v9 options:v12 animations:1.0 completion:0.0];
  _Block_release(v12);
  _Block_release(v9);
}

double sub_23A8CBE48(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

id sub_23A8CBE9C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ARGlyphView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_23A8CBF70()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23A8CBFD4()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23A8CC014()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_23A8CC044(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23A8CC080(float a1, float a2, __n128 a3, float a4, float a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float32x4_t a17)
{
  v21 = MEMORY[0x277D84F90];
  *(v17 + 48) = MEMORY[0x277D84F90];
  v22 = (v17 + 48);
  swift_beginAccess();
  *(v17 + 48) = v21;
  v23 = sub_23A9388A8(0, 1, 1, v21);
  *(v17 + 48) = v23;
  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_23A9388A8((v24 > 1), v25 + 1, 1, v23);
  }

  DWORD1(v26) = 0;
  *(&v26 + 1) = 0;
  v28.i64[1] = a3.n128_i64[1];
  v27 = a1;
  *v28.i8 = vmul_n_f32(a3.n128_u32[0], a1);
  v29 = vtrn2q_s32(vzip1q_s32(0, v28), 0);
  *&v29.i32[1] = a1;
  *(v23 + 2) = v25 + 1;
  *&v23[16 * v25 + 32] = v29;
  *v22 = v23;
  v31 = *(v23 + 2);
  v30 = *(v23 + 3);
  if (v31 >= v30 >> 1)
  {
    v66 = v28.i64[0];
    v56 = sub_23A9388A8((v30 > 1), v31 + 1, 1, v23);
    v27 = a1;
    v28.i64[0] = v66;
    DWORD1(v26) = 0;
    *(&v26 + 1) = 0;
    v23 = v56;
  }

  v32 = v27 * a4;
  *&v33 = v27 * a4;
  *(&v33 + 1) = v27;
  *(&v33 + 1) = v28.u32[1];
  *(v23 + 2) = v31 + 1;
  *&v23[16 * v31 + 32] = v33;
  *v22 = v23;
  v35 = *(v23 + 2);
  v34 = *(v23 + 3);
  if (v35 >= v34 >> 1)
  {
    v62 = v27 * a4;
    v67 = v28.i64[0];
    v57 = sub_23A9388A8((v34 > 1), v35 + 1, 1, v23);
    v32 = v62;
    v28.i64[0] = v67;
    v27 = a1;
    DWORD1(v26) = 0;
    *(&v26 + 1) = 0;
    v23 = v57;
  }

  *&v26 = v27;
  v36 = v27 * a5;
  *&v37 = v27 * a5;
  *(&v37 + 1) = v27;
  *(&v37 + 1) = v28.u32[1];
  *(v23 + 2) = v35 + 1;
  *&v23[16 * v35 + 32] = v37;
  *v22 = v23;
  v39 = *(v23 + 2);
  v38 = *(v23 + 3);
  if (v39 >= v38 >> 1)
  {
    v76 = LODWORD(v27);
    v63 = v32;
    v68 = v28.i64[0];
    v61 = v27 * a5;
    v58 = sub_23A9388A8((v38 > 1), v39 + 1, 1, v23);
    v36 = v61;
    v32 = v63;
    v28.i64[0] = v68;
    v26 = v76;
    v23 = v58;
  }

  v40 = v26;
  *(&v40 + 1) = v36;
  DWORD2(v40) = v28.i32[1];
  *(v23 + 2) = v39 + 1;
  *&v23[16 * v39 + 32] = v40;
  *v22 = v23;
  v42 = *(v23 + 2);
  v41 = *(v23 + 3);
  if (v42 >= v41 >> 1)
  {
    v77 = v26;
    v64 = v32;
    v69 = v28.i64[0];
    v59 = sub_23A9388A8((v41 > 1), v42 + 1, 1, v23);
    v32 = v64;
    v28.i64[0] = v69;
    v26 = v77;
    v23 = v59;
  }

  v43 = v26;
  *(&v43 + 1) = v32;
  DWORD2(v43) = v28.i32[1];
  *(v23 + 2) = v42 + 1;
  *&v23[16 * v42 + 32] = v43;
  *v22 = v23;
  v45 = *(v23 + 2);
  v44 = *(v23 + 3);
  v46 = v45 + 1;
  if (v45 >= v44 >> 1)
  {
    v78 = v26;
    v70 = v28.i64[0];
    v60 = sub_23A9388A8((v44 > 1), v45 + 1, 1, v23);
    v28.i64[0] = v70;
    v26 = v78;
    v23 = v60;
  }

  *(&v26 + 4) = v28.i64[0];
  *(v23 + 2) = v46;
  *&v23[16 * v45 + 32] = v26;
  *(v17 + 48) = v23;
  swift_endAccess();
  *(v17 + 16) = v21;
  *(v17 + 24) = v21;
  v47 = (v17 + 16);
  *(v17 + 32) = v21;
  *(v17 + 44) = 1048576000;
  *(v17 + 40) = a2;

  v48 = 32;
  do
  {
    v75 = *&v23[v48];
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v47 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_23A939408(0, *(v21 + 2) + 1, 1, v21);
      *v47 = v21;
    }

    v51 = *(v21 + 2);
    v50 = *(v21 + 3);
    if (v51 >= v50 >> 1)
    {
      v21 = sub_23A939408((v50 > 1), v51 + 1, 1, v21);
    }

    v52 = vaddq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v75.f32[0]), a7, *v75.f32, 1), a8, v75, 2), a17);
    v52.i32[3] = 0;
    *(v21 + 2) = v51 + 1;
    v53 = &v21[32 * v51];
    v53[2] = v52;
    v53[3].f32[0] = a2;
    *v47 = v21;
    swift_endAccess();
    v48 += 16;
    --v46;
  }

  while (v46);

  sub_23A910DD0(0);
  v54 = a2 * 0.05;
  sub_23A910780(v54);
  sub_23A910A78(v54);
  return v17;
}

uint64_t sub_23A8CC4B4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A8CC530()
{
  type metadata accessor for FloorPlanManager();
  result = swift_allocObject();
  *(result + 16) = 0;
  v1 = MEMORY[0x277D84F98];
  *(result + 24) = MEMORY[0x277D84F98];
  *(result + 32) = v1;
  qword_27DFC04B0 = result;
  return result;
}

uint64_t sub_23A8CC56C(void *a1, unint64_t a2)
{
  v3 = v2;
  *&v135 = type metadata accessor for CapturedRoom.Object(0);
  v117 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v7 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v116 - v9);
  v137 = sub_23AA0CE84();
  v119 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v128 = &v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v116 - v13;
  MEMORY[0x28223BE20](v15);
  v130 = &v116 - v16;
  MEMORY[0x28223BE20](v17);
  *&v129 = &v116 - v18;
  v139 = type metadata accessor for CapturedRoom.Surface(0);
  v118 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v126 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v133 = (&v116 - v21);
  MEMORY[0x28223BE20](v22);
  v24 = &v116 - v23;
  MEMORY[0x28223BE20](v25);
  v127 = (&v116 - v26);
  MEMORY[0x28223BE20](v27);
  v125 = &v116 - v28;
  MEMORY[0x28223BE20](v29);
  v31 = &v116 - v30;
  v123 = a1;
  v32 = *a1;
  v33 = *(*a1 + 16);
  v132 = v14;
  v131 = v24;
  v134 = v7;
  v138 = v10;
  if (v33)
  {
    v34 = v118;
    v35 = v32 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
    swift_beginAccess();
    v136 = *(v34 + 72);
    v124 = (v119 + 8);
    *&v36 = 136315138;
    v120 = v36;
    v122 = a2;
    v121 = v3;
    do
    {
      sub_23A8D52B8(v35, v31, type metadata accessor for CapturedRoom.Surface);
      if (*(*(v3 + 24) + 16))
      {
        v37 = *(v139 + 44);

        v38 = &v31[v37];
        v10 = v138;
        sub_23A9EDD28(v38);
        v40 = v39;

        if (v40)
        {
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          v41 = v129;
          sub_23AA0CE94();
          v42 = v125;
          sub_23A8D52B8(v31, v125, type metadata accessor for CapturedRoom.Surface);
          v43 = sub_23AA0CE54();
          v44 = sub_23AA0D494();
          if (os_log_type_enabled(v43, v44))
          {
            v45 = swift_slowAlloc();
            v46 = swift_slowAlloc();
            v144 = v46;
            *v45 = v120;
            sub_23AA0C0E4();
            sub_23A8D5380();
            v47 = sub_23AA0DBB4();
            v49 = v48;
            sub_23A8D5320(v42, type metadata accessor for CapturedRoom.Surface);
            v50 = sub_23A9A65A4(v47, v49, &v144);
            v10 = v138;

            *(v45 + 4) = v50;
            _os_log_impl(&dword_23A8B4000, v43, v44, "Wall scanItem with UUID %s already exists", v45, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v46);
            v51 = v46;
            a2 = v122;
            MEMORY[0x23EE91710](v51, -1, -1);
            v52 = v45;
            v3 = v121;
            MEMORY[0x23EE91710](v52, -1, -1);

            (*v124)(v129, v137);
          }

          else
          {

            sub_23A8D5320(v42, type metadata accessor for CapturedRoom.Surface);
            (*v124)(v41, v137);
          }

          v24 = v131;
          v7 = v134;
        }
      }

      sub_23A8CFC2C(v31, a2);
      sub_23A8D5320(v31, type metadata accessor for CapturedRoom.Surface);
      v35 += v136;
      --v33;
    }

    while (v33);
  }

  v53 = v123[5];
  v54 = *(v53 + 16);
  v55 = v133;
  if (v54)
  {
    v56 = v117;
    v57 = v53 + ((*(v117 + 80) + 32) & ~*(v117 + 80));
    swift_beginAccess();
    v58 = *(v56 + 72);
    v136 = (v119 + 8);
    *&v59 = 136315138;
    v129 = v59;
    do
    {
      sub_23A8D52B8(v57, v10, type metadata accessor for CapturedRoom.Object);
      if (*(*(v3 + 24) + 16))
      {
        v60 = *(v135 + 32);

        sub_23A9EDD28(v10 + v60);
        LOBYTE(v60) = v61;

        if (v60)
        {
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          v62 = v130;
          sub_23AA0CE94();
          sub_23A8D52B8(v138, v7, type metadata accessor for CapturedRoom.Object);
          v63 = sub_23AA0CE54();
          v64 = sub_23AA0D494();
          if (os_log_type_enabled(v63, v64))
          {
            v65 = swift_slowAlloc();
            v66 = swift_slowAlloc();
            v142 = v66;
            *v65 = v129;
            sub_23AA0C0E4();
            sub_23A8D5380();
            v67 = sub_23AA0DBB4();
            v69 = v68;
            sub_23A8D5320(v134, type metadata accessor for CapturedRoom.Object);
            v70 = sub_23A9A65A4(v67, v69, &v142);

            *(v65 + 4) = v70;
            _os_log_impl(&dword_23A8B4000, v63, v64, "Object scanItem with UUID %s already exists", v65, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v66);
            MEMORY[0x23EE91710](v66, -1, -1);
            v71 = v65;
            v7 = v134;
            MEMORY[0x23EE91710](v71, -1, -1);

            (*v136)(v130, v137);
          }

          else
          {

            sub_23A8D5320(v7, type metadata accessor for CapturedRoom.Object);
            (*v136)(v62, v137);
          }

          v55 = v133;
          v24 = v131;
          v10 = v138;
        }
      }

      sub_23A8D28A4(v10);
      sub_23A8D5320(v10, type metadata accessor for CapturedRoom.Object);
      v57 += v58;
      --v54;
    }

    while (v54);
  }

  v143 = v123[3];

  sub_23A911B78(v72);

  sub_23A911B78(v73);
  v74 = *(v143 + 16);
  if (v74)
  {
    v75 = v118;
    v76 = (*(v75 + 80) + 32) & ~*(v75 + 80);
    v134 = v143;
    v77 = v143 + v76;
    swift_beginAccess();
    v78 = *(v75 + 72);
    v138 = (v119 + 8);
    *&v79 = 136315138;
    v135 = v79;
    v80 = v128;
    v81 = v127;
    v136 = v78;
    do
    {
      sub_23A8D52B8(v77, v81, type metadata accessor for CapturedRoom.Surface);
      if (*(*(v3 + 24) + 16))
      {
        v82 = *(v139 + 44);

        sub_23A9EDD28(v81->i64 + v82);
        LOBYTE(v82) = v83;

        if (v82)
        {
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          sub_23AA0CE94();
          sub_23A8D52B8(v81, v24, type metadata accessor for CapturedRoom.Surface);
          v84 = v24;
          v85 = sub_23AA0CE54();
          v86 = sub_23AA0D494();
          if (os_log_type_enabled(v85, v86))
          {
            v87 = swift_slowAlloc();
            v88 = swift_slowAlloc();
            v141[0] = v88;
            *v87 = v135;
            sub_23AA0C0E4();
            sub_23A8D5380();
            v89 = sub_23AA0DBB4();
            v91 = v90;
            sub_23A8D5320(v84, type metadata accessor for CapturedRoom.Surface);
            v92 = sub_23A9A65A4(v89, v91, v141);

            *(v87 + 4) = v92;
            _os_log_impl(&dword_23A8B4000, v85, v86, "Opening scanItem with UUID %s already exists", v87, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v88);
            v93 = v88;
            v78 = v136;
            MEMORY[0x23EE91710](v93, -1, -1);
            v94 = v87;
            v80 = v128;
            MEMORY[0x23EE91710](v94, -1, -1);
          }

          else
          {

            sub_23A8D5320(v84, type metadata accessor for CapturedRoom.Surface);
          }

          (v138->i64[0])(v132, v137);
          v24 = v84;
          v81 = v127;
        }
      }

      sub_23A8D1DEC(v81);
      sub_23A8D5320(v81, type metadata accessor for CapturedRoom.Surface);
      v77 += v78;
      --v74;
    }

    while (v74);

    v55 = v133;
  }

  else
  {

    v80 = v128;
  }

  v96 = v123[4];
  v97 = *(v96 + 16);
  if (v97)
  {
    v98 = v118;
    v99 = v96 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
    swift_beginAccess();
    v100 = *(v98 + 72);
    v136 = (v119 + 8);
    *&v101 = 136315138;
    v135 = v101;
    v138 = v100;
    do
    {
      sub_23A8D52B8(v99, v55, type metadata accessor for CapturedRoom.Surface);
      if (*(*(v3 + 24) + 16))
      {
        v102 = *(v139 + 44);

        sub_23A9EDD28(v55->i64 + v102);
        v104 = v103;

        if (v104)
        {
          sub_23A8D4E5C();
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          sub_23AA0CE94();
          v105 = v55;
          v106 = v126;
          sub_23A8D52B8(v105, v126, type metadata accessor for CapturedRoom.Surface);
          v107 = sub_23AA0CE54();
          v108 = sub_23AA0D494();
          if (os_log_type_enabled(v107, v108))
          {
            v109 = swift_slowAlloc();
            v110 = swift_slowAlloc();
            v140 = v110;
            *v109 = v135;
            sub_23AA0C0E4();
            sub_23A8D5380();
            v111 = sub_23AA0DBB4();
            v113 = v112;
            sub_23A8D5320(v106, type metadata accessor for CapturedRoom.Surface);
            v114 = sub_23A9A65A4(v111, v113, &v140);

            *(v109 + 4) = v114;
            _os_log_impl(&dword_23A8B4000, v107, v108, "Floor scanItem with UUID %s already exists", v109, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v110);
            MEMORY[0x23EE91710](v110, -1, -1);
            v115 = v109;
            v80 = v128;
            MEMORY[0x23EE91710](v115, -1, -1);
          }

          else
          {

            sub_23A8D5320(v106, type metadata accessor for CapturedRoom.Surface);
          }

          (*v136)(v80, v137);
          v55 = v133;
          v100 = v138;
        }
      }

      sub_23A8D2348(v55);
      result = sub_23A8D5320(v55, type metadata accessor for CapturedRoom.Surface);
      v99 += v100;
      --v97;
    }

    while (v97);
  }

  return result;
}

uint64_t sub_23A8CD540(void *a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF030, &qword_23AA11B48);
  MEMORY[0x28223BE20](v5 - 8);
  v208 = &v195 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v7 - 8);
  v215 = &v195 - v8;
  v244 = sub_23AA0C064();
  v266.i64[0] = *(v244 - 8);
  MEMORY[0x28223BE20](v244);
  v214 = &v195 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_23AA0CE84();
  v265.i64[0] = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v222 = &v195 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v202 = &v195 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v13 - 8);
  v213 = &v195 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v212 = &v195 - v16;
  MEMORY[0x28223BE20](v17);
  v211 = &v195 - v18;
  MEMORY[0x28223BE20](v19);
  v261 = &v195 - v20;
  MEMORY[0x28223BE20](v21);
  v260 = &v195 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v23 - 8);
  v210 = &v195 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v245 = &v195 - v26;
  MEMORY[0x28223BE20](v27);
  v209 = &v195 - v28;
  MEMORY[0x28223BE20](v29);
  v246 = &v195 - v30;
  MEMORY[0x28223BE20](v31);
  v263 = &v195 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v33 - 8);
  v259 = &v195 - v34;
  v258 = sub_23AA0C0E4();
  v35 = *(v258 - 8);
  MEMORY[0x28223BE20](v258);
  v257 = &v195 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = type metadata accessor for CapturedRoom.Object(0);
  v37 = *(v224 - 8);
  MEMORY[0x28223BE20](v224);
  v216 = (&v195 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = type metadata accessor for CapturedRoom.Surface(0);
  v199 = *(v39 - 8);
  MEMORY[0x28223BE20](v39 - 8);
  v197 = (&v195 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v41);
  v196 = (&v195 - v42);
  MEMORY[0x28223BE20](v43);
  v45 = &v195 - v44;
  v200 = a1;
  v46 = *(*a1 + 16);
  if (v46)
  {
    v47 = *a1 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
    v48 = *(v199 + 72);
    do
    {
      sub_23A8D52B8(v47, v45, type metadata accessor for CapturedRoom.Surface);
      sub_23A8CFC2C(v45, a2);
      sub_23A8D5320(v45, type metadata accessor for CapturedRoom.Surface);
      v47 += v48;
      --v46;
    }

    while (v46);
  }

  v49 = v200[5];
  v50 = *(v49 + 16);
  v51 = v2;
  v52 = v216;
  if (v50)
  {
    v53 = v49 + ((*(v37 + 80) + 32) & ~*(v37 + 80));
    swift_beginAccess();
    v253 = 0;
    v243 = (v35 + 16);
    v54 = *(v37 + 72);
    v223 = (v266.i64[0] + 56);
    v217 = (v265.i64[0] + 8);
    v204 = (v35 + 8);
    v205 = (v266.i64[0] + 32);
    v55 = 0x27DFAE000;
    v56 = &OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText;
    v203 = xmmword_23AA11AE0;
    *(&v57 + 1) = 1065353216;
    v198 = xmmword_23AA11AF0;
    *&v57 = 136315138;
    v201 = v57;
    v195 = vdupq_n_s32(0x3F89999Au);
    v206 = v54;
    v207 = v2;
    while (1)
    {
      sub_23A8D52B8(v53, v52, type metadata accessor for CapturedRoom.Object);
      if (*(v55 + 1304) != -1)
      {
        swift_once();
      }

      v59 = v56[246];
      swift_beginAccess();
      if (v59[171] != 1)
      {
        goto LABEL_7;
      }

      swift_beginAccess();
      if (v59[41] == 1)
      {
        v60 = v52->u8[0];
        if (v60 == 15 || v60 == 2)
        {
          goto LABEL_7;
        }
      }

      swift_beginAccess();
      v61 = v59[40];
      v240 = v53;
      v241 = v50;
      if (v61)
      {
        v62 = v61 == 1 ? sub_23A8D4438() : sub_23A8D45D8();
        v63 = v62;
      }

      else
      {
        v63 = *(v52->i32 + *(v224 + 48));
      }

      v64 = v224;
      v65 = *(v224 + 32);
      v230 = *v243;
      v230(v257, v52 + v65, v258);
      sub_23A8D5194(v52 + *(v64 + 44), v259, &unk_27DFB0970, &qword_23AA14E00);
      LOBYTE(v269[0]) = v52->i8[0];
      v231 = sub_23A9E7514();
      v252 = v52[1];
      v66 = type metadata accessor for CapturedRoom.Surface.Curve(0);
      v247 = *(v66 - 8);
      v67 = *(v247 + 56);
      v256.i64[0] = v247 + 56;
      v255 = v67;
      v67(v263, 1, 1, v66);
      v68 = v52[2];
      v264 = v52[3];
      v265 = v68;
      v69 = v52[5];
      v262 = v52[4];
      v266 = v69;
      v228 = *(v52 + *(v64 + 52));
      v227 = sub_23A94EC08(v63);
      v229 = sub_23A94EA48(v63);
      v70 = type metadata accessor for ScanItemStrut(0);
      v71 = *(v70 - 8);
      v72 = *(v71 + 56);
      v73 = v71 + 56;
      v72(v260, 1, 1, v70);
      v250 = v72;
      v251 = v70;
      v249 = v73;
      v72(v261, 1, 1, v70);
      v74 = *(v51 + 24);
      v75 = *(v74 + 16);
      v239 = v65;
      if (v75)
      {

        v76 = sub_23A9EDD28(v52 + v65);
        if (v77)
        {
          v78 = *(*(v74 + 56) + 8 * v76);
        }

        else
        {
          v78 = 0;
        }

        v226 = v78;
      }

      else
      {
        v226 = 0;
      }

      type metadata accessor for ScanItem(0);
      v79 = swift_allocObject();
      v80 = *v223;
      v232 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
      v81 = v244;
      v80(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime, 1, 1, v244);
      v218 = v80;
      v80(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_fadeOutAnimationTime, 1, 1, v81);
      v254 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
      v82 = v255;
      v255(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve, 1, 1, v66);
      v236 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation) = v203;
      v234 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
      v82(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, 1, 1, v66);
      v235 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
      v84 = v250;
      v83 = v251;
      v250(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, 1, 1, v251);
      v242 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
      v84(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, 1, 1, v83);
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = 4;
      v85 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
      v86 = type metadata accessor for AnimationGraph(0);
      v237 = *(v86 - 8);
      v238 = v86;
      v219 = *(v237 + 56);
      v220 = v237 + 56;
      v219(v79 + v85, 1, 1);
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_floorExtensionFactor) = 1065982362;
      v87 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides) = 12;
      v225 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners) = 0;
      v233 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve;
      v82(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve, 1, 1, v66);
      v82(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve, 1, 1, v66);
      v84(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut, 1, 1, v83);
      v84(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut, 1, 1, v83);
      v88 = (v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
      *v88 = 0;
      v88[1] = 0;
      v248 = v66;
      v82(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseCurve, 1, 1, v66);
      v84(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut, 1, 1, v83);
      v84(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut, 1, 1, v83);
      v230((v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid), v257, v258);
      sub_23A8D5194(v259, v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, &unk_27DFB0970, &qword_23AA14E00);
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) = 3;
      v89 = v231;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category) = v231;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color) = v228;
      *(v79 + v87) = v227 | 0xC;
      v90 = v226;
      v91 = v226 ? *(v226 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners) : 0;
      v92 = v91 | v229;
      if (v89 == 20)
      {
        break;
      }

      if (v89 == 18)
      {
        v93 = 16 * (v92 & 0xF);
LABEL_33:
        *(v79 + v225) = v93 | v92;
        goto LABEL_36;
      }

      *(v79 + v225) = v92;
      if (!v89)
      {
        v94.i64[0] = vmulq_f32(v252, v195).u64[0];
        v94.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.075, v252, 2));
        v252 = v94;
      }

LABEL_36:
      v95 = v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform;
      v96 = v264;
      *v95 = v265;
      *(v95 + 16) = v96;
      v97 = v266;
      *(v95 + 32) = v262;
      *(v95 + 48) = v97;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions) = v252;
      sub_23A8D5194(v263, v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, &qword_27DFAEB38, &unk_23AA11B60);
      sub_23A8D5194(v260, v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawLeftStrut, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D5194(v261, v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawRightStrut, &unk_27DFAF020, &unk_23AA12300);
      v98 = v253;
      v99 = sub_23A8DE3E8(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
      v100 = v98;
      if (v98)
      {
        sub_23A8D4E5C();
        if (qword_27DFAE3A0 != -1)
        {
          swift_once();
        }

        sub_23AA0D644();
        v101 = v202;
        sub_23AA0CE94();
        v102 = v98;
        v103 = sub_23AA0CE54();
        v104 = sub_23AA0D494();

        if (os_log_type_enabled(v103, v104))
        {
          v105 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v253 = v100;
          v107 = v106;
          v269[0] = v106;
          *v105 = v201;
          swift_getErrorValue();
          v108 = sub_23AA0DC34();
          v110 = sub_23A9A65A4(v108, v109, v269);

          *(v105 + 4) = v110;
          _os_log_impl(&dword_23A8B4000, v103, v104, "Cannot compute ScanItemEdges: %s", v105, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v107);
          v111 = v107;
          v100 = v253;
          MEMORY[0x23EE91710](v111, -1, -1);
          MEMORY[0x23EE91710](v105, -1, -1);
        }

        (*v217)(v101, v221);
        v112 = v244;
        v113 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
      }

      else
      {
        v113 = v99;
        v112 = v244;
      }

      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges) = v113;

      v114 = v214;
      sub_23AA0C044();
      (*v205)(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_bodyStartTime, v114, v112);
      if (v90)
      {
        v115 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
        swift_beginAccess();
        v116 = v90 + v115;
        v117 = v215;
        sub_23A8D5194(v116, v215, &qword_27DFAEB30, &unk_23AA11B50);
      }

      else
      {
        v118 = v112;
        v117 = v215;
        v218(v215, 1, 1, v118);
      }

      v253 = 0;
      v119 = v232;
      swift_beginAccess();
      sub_23A8D5068(v117, v79 + v119, &qword_27DFAEB30, &unk_23AA11B50);
      swift_endAccess();
      if (v90)
      {
        *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = *(v90 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
        v120 = (v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
        *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = *(v90 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
        v121 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
        swift_beginAccess();
        v122 = v90 + v121;
        v123 = v209;
        sub_23A8D5194(v122, v209, &qword_27DFAEB38, &unk_23AA11B60);
        v124 = v248;
        if ((*(v247 + 48))(v123, 1, v248) != 1)
        {
          v125 = v123;
          v126 = v246;
          sub_23A8D5130(v125, v246);
          v255(v126, 0, 1, v124);
          goto LABEL_52;
        }
      }

      else
      {
        v127 = v266;
        v127.n128_u32[3] = 0;
        *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = v127;
        v120 = (v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
        *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = v252;
        v123 = v209;
        v124 = v248;
        v255(v209, 1, 1, v248);
      }

      sub_23A8D5194(v263, v246, &qword_27DFAEB38, &unk_23AA11B60);
      if ((*(v247 + 48))(v123, 1, v124) != 1)
      {
        sub_23A8D50D0(v123, &qword_27DFAEB38, &unk_23AA11B60);
      }

LABEL_52:
      v128 = v242;
      v129 = v254;
      swift_beginAccess();
      sub_23A8D5068(v246, v79 + v129, &qword_27DFAEB38, &unk_23AA11B60);
      swift_endAccess();
      if (v90)
      {
        *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = *(v90 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
        v130 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
      }

      else
      {
        v271.columns[1] = v264;
        v271.columns[0] = v265;
        v271.columns[2] = v262;
        v271.columns[3] = v266;
        *&v132 = simd_quaternion(v271);
        *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = v132;

        v130 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
      }

      *(v79 + v130) = v131;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationPosition) = *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationDimensions) = *v120;
      v133 = v245;
      sub_23A8D5194(v79 + v254, v245, &qword_27DFAEB38, &unk_23AA11B60);
      v134 = v233;
      swift_beginAccess();
      sub_23A8D5068(v133, v79 + v134, &qword_27DFAEB38, &unk_23AA11B60);
      swift_endAccess();
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationOrientation) = *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
      if (v90)
      {
        *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions) = *(v90 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
        v135 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
        swift_beginAccess();
        v136 = v90 + v135;
        v137 = v210;
        sub_23A8D5194(v136, v210, &qword_27DFAEB38, &unk_23AA11B60);
      }

      else
      {
        v138 = (v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
        *v138 = 0;
        v138[1] = 0;
        v137 = v210;
        v255(v210, 1, 1, v248);
      }

      v139 = v222;
      v140 = v234;
      swift_beginAccess();
      sub_23A8D5068(v137, v79 + v140, &qword_27DFAEB38, &unk_23AA11B60);
      swift_endAccess();
      if (v90)
      {
        v141 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
        swift_beginAccess();
        v142 = v90 + v141;
        v143 = v211;
        sub_23A8D5194(v142, v211, &unk_27DFAF020, &unk_23AA12300);
      }

      else
      {
        v143 = v211;
        v250(v211, 1, 1, v251);
      }

      v144 = v235;
      swift_beginAccess();
      sub_23A8D5068(v143, v79 + v144, &unk_27DFAF020, &unk_23AA12300);
      swift_endAccess();
      if (v90)
      {
        v145 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
        swift_beginAccess();
        v146 = v90 + v145;
        v147 = v212;
        sub_23A8D5194(v146, v212, &unk_27DFAF020, &unk_23AA12300);
      }

      else
      {
        v147 = v212;
        v250(v212, 1, 1, v251);
      }

      swift_beginAccess();
      sub_23A8D5068(v147, v79 + v128, &unk_27DFAF020, &unk_23AA12300);
      swift_endAccess();
      if (v90)
      {
        *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = *(v90 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
        *(v79 + v236) = *(v90 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
        v148 = *(v90 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges);

        v150 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
        v113 = v148;
      }

      else
      {
        v150 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
        v152 = (v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
        *v152 = 0;
        v152[1] = 0;
        v272.columns[1] = v264;
        v272.columns[0] = v265;
        v272.columns[2] = v262;
        v272.columns[3] = v266;
        *&v153 = simd_quaternion(v272);
        *(v79 + v236) = v153;
      }

      v151 = v253;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges) = v113;
      v256.i64[0] = v150;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition) = *(v79 + v150);
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationOrientation) = *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
      v154 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationDimensions) = *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
      v155 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges;
      v156 = *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);
      v157 = v156[2];
      if (v113[2])
      {
        v268 = v113;
        if (!v157)
        {

          v161 = sub_23A8DE9A8(v265, v264, v266, *v252.i64);
LABEL_74:
          v267 = v161;
          goto LABEL_75;
        }

        v267 = v156;
      }

      else
      {
        if (!v157)
        {
          v162 = MEMORY[0x277D84F90];
          v268 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
          v161 = sub_23A9DC9E0(v162);
          goto LABEL_74;
        }

        *v158.i64 = MEMORY[0x23EE8FF80](v149);
        v268 = sub_23A8DE9A8(v158, v159, v160, *(v79 + v154));
        v267 = *(v79 + v155);
      }

LABEL_75:
      sub_23A8DED48(&v268, &v267);
      v163 = v151;
      if (v151)
      {
        sub_23A8D4E5C();
        if (qword_27DFAE3A0 != -1)
        {
          swift_once();
        }

        sub_23AA0D644();
        sub_23AA0CE94();
        v164 = v151;
        v165 = sub_23AA0CE54();
        v166 = sub_23AA0D494();

        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          v269[0] = v168;
          *v167 = v201;
          swift_getErrorValue();
          v169 = sub_23AA0DC34();
          v171 = sub_23A9A65A4(v169, v170, v269);

          *(v167 + 4) = v171;
          _os_log_impl(&dword_23A8B4000, v165, v166, "%s", v167, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v168);
          MEMORY[0x23EE91710](v168, -1, -1);
          MEMORY[0x23EE91710](v167, -1, -1);

          (*v217)(v222, v221);
        }

        else
        {

          (*v217)(v139, v221);
        }

        v253 = 0;
      }

      else
      {
        v253 = 0;
      }

      v172 = v208;
      v173 = v267;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationScanItemEdges) = v268;
      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges) = v173;
      v174 = v245;
      sub_23A8D5194(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, v245, &qword_27DFAEB38, &unk_23AA11B60);
      v175 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve;
      swift_beginAccess();
      sub_23A8D5068(v174, v79 + v175, &qword_27DFAEB38, &unk_23AA11B60);
      swift_endAccess();
      v176 = v213;
      sub_23A8D5194(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, v213, &unk_27DFAF020, &unk_23AA12300);
      v177 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut;
      swift_beginAccess();
      sub_23A8D5068(v176, v79 + v177, &unk_27DFAF020, &unk_23AA12300);
      swift_endAccess();
      sub_23A8D5194(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, v176, &unk_27DFAF020, &unk_23AA12300);
      v178 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut;
      swift_beginAccess();
      sub_23A8D5068(v176, v79 + v178, &unk_27DFAF020, &unk_23AA12300);
      swift_endAccess();
      v56 = &OBJC_IVAR____TtC8RoomPlan30RoomCaptureCoachingOverlayView_coachingText;
      if (v90)
      {
        *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = *(v90 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory);
        v179 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
        swift_beginAccess();
        v180 = v238;
        sub_23A8D5194(v90 + v179, v172, &unk_27DFAF030, &qword_23AA11B48);
        v55 = 0x27DFAE000;
      }

      else
      {
        *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
        v180 = v238;
        (v219)(v172, 1, 1, v238);
        v55 = 0x27DFAE000uLL;
      }

      v181 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
      swift_beginAccess();
      sub_23A8D5068(v172, v79 + v181, &unk_27DFAF030, &qword_23AA11B48);
      swift_endAccess();
      v256 = *(v79 + v256.i64[0]);
      v273.columns[1] = v264;
      v273.columns[0] = v265;
      v273.columns[2] = v262;
      v273.columns[3] = v266;
      v274 = __invert_f4(v273);
      if (vmovn_s32(vcgtq_f32(vaddq_f32(*(&v274 + 48), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*&v274, *&v256), *(&v274 + 16), *&v256, 1), *(&v274 + 32), v256, 2)), vaddq_f32(*(&v274 + 48), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*&v274, *&v266), *(&v274 + 16), *&v266, 1), *(&v274 + 32), *&v266, 2)))).i8[2])
      {
        v182 = 0;
      }

      else
      {
        v182 = 3;
      }

      *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v182;
      swift_beginAccess();
      if (!(*(v237 + 48))(v79 + v181, 1, v180))
      {
        sub_23A93C6B4(*(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners), *(v79 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions));
      }

      swift_endAccess();

      sub_23A8D50D0(v261, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D50D0(v260, &unk_27DFAF020, &unk_23AA12300);
      sub_23A8D50D0(v259, &unk_27DFB0970, &qword_23AA14E00);
      (*v204)(v257, v258);
      sub_23A8D50D0(v263, &qword_27DFAEB38, &unk_23AA11B60);
      v51 = v207;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v268 = *(v51 + 24);
      *(v51 + 24) = 0x8000000000000000;
      v52 = v216;
      sub_23A9DA7E8(v79, v216 + v239, isUniquelyReferenced_nonNull_native);
      *(v51 + 24) = v268;
      swift_endAccess();

      v53 = v240;
      v50 = v241;
      v54 = v206;
LABEL_7:
      sub_23A8D5320(v52, type metadata accessor for CapturedRoom.Object);
      v53 += v54;
      if (!--v50)
      {
        goto LABEL_91;
      }
    }

    v93 = (v92 >> 1) & 0x11 | (2 * v92) & 0x88;
    goto LABEL_33;
  }

LABEL_91:
  v270 = v200[3];

  sub_23A911B78(v183);

  sub_23A911B78(v184);
  v185 = *(v270 + 16);
  if (v185)
  {
    v186 = v270 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
    v187 = *(v199 + 72);
    v188 = v196;
    do
    {
      sub_23A8D52B8(v186, v188, type metadata accessor for CapturedRoom.Surface);
      sub_23A8D1DEC(v188);
      sub_23A8D5320(v188, type metadata accessor for CapturedRoom.Surface);
      v186 += v187;
      --v185;
    }

    while (v185);
  }

  v190 = v200[4];
  v191 = *(v190 + 16);
  v192 = v197;
  if (v191)
  {
    v193 = v190 + ((*(v199 + 80) + 32) & ~*(v199 + 80));
    v194 = *(v199 + 72);
    do
    {
      sub_23A8D52B8(v193, v192, type metadata accessor for CapturedRoom.Surface);
      sub_23A8D2348(v192);
      result = sub_23A8D5320(v192, type metadata accessor for CapturedRoom.Surface);
      v193 += v194;
      --v191;
    }

    while (v191);
  }

  return result;
}

uint64_t sub_23A8CF430(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CapturedRoom.Object(0);
  v5 = *(v4 - 8);
  v81 = v4;
  v82 = v5;
  MEMORY[0x28223BE20](v4);
  v91 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23AA0C0E4();
  v95 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v87 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v88 = &v80 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v80 - v12;
  v14 = type metadata accessor for CapturedRoom.Surface(0);
  v83 = *(v14 - 8);
  v84 = v14;
  MEMORY[0x28223BE20](v14);
  v93 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v92 = &v80 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v80 - v19;
  v85 = a1;
  v21 = *a1;
  v22 = *(*a1 + 16);
  v94 = v7;
  if (v22)
  {
    v23 = *(v84 + 44);
    v24 = v21 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v25 = *(v83 + 72);
    v89 = (v95 + 16);
    v90 = v25;
    v26 = (v95 + 8);
    v86 = v23;
    do
    {
      sub_23A8D52B8(v24, v20, type metadata accessor for CapturedRoom.Surface);
      (*v89)(v13, &v20[v23], v7);
      sub_23A8D5320(v20, type metadata accessor for CapturedRoom.Surface);
      swift_beginAccess();
      v27 = sub_23A9EDD28(v13);
      if (v28)
      {
        v29 = v27;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = *(v2 + 24);
        v96 = v31;
        *(v2 + 24) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_23A90E090();
          v31 = v96;
        }

        v7 = v94;
        v32 = *(v95 + 8);
        v32(*(v31 + 48) + *(v95 + 72) * v29, v94);

        sub_23A910778(v33);
        v32(v13, v7);
        *(v2 + 24) = v31;
        v23 = v86;
      }

      else
      {
        (*v26)(v13, v7);
      }

      swift_endAccess();
      v24 += v90;
      --v22;
    }

    while (v22);
  }

  v34 = v85[5];
  v35 = *(v34 + 16);
  v36 = v88;
  if (v35)
  {
    v90 = *(v81 + 32);
    v37 = v34 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
    v38 = *(v82 + 72);
    v39 = (v95 + 16);
    v40 = (v95 + 8);
    do
    {
      v41 = v91;
      sub_23A8D52B8(v37, v91, type metadata accessor for CapturedRoom.Object);
      (*v39)(v36, v41 + v90, v7);
      sub_23A8D5320(v41, type metadata accessor for CapturedRoom.Object);
      swift_beginAccess();
      v42 = sub_23A9EDD28(v36);
      if (v43)
      {
        v44 = v42;
        v45 = swift_isUniquelyReferenced_nonNull_native();
        v46 = *(v2 + 24);
        v96 = v46;
        *(v2 + 24) = 0x8000000000000000;
        if (!v45)
        {
          sub_23A90E090();
          v46 = v96;
        }

        v7 = v94;
        v47 = *(v95 + 8);
        v47(*(v46 + 48) + *(v95 + 72) * v44, v94);

        sub_23A910778(v48);
        v49 = v88;
        v47(v88, v7);
        v36 = v49;
        *(v2 + 24) = v46;
      }

      else
      {
        (*v40)(v36, v7);
      }

      swift_endAccess();
      v37 += v38;
      --v35;
    }

    while (v35);
  }

  v97 = v85[3];

  sub_23A911B78(v50);

  sub_23A911B78(v51);
  v52 = *(v97 + 16);
  if (v52)
  {
    v53 = *(v84 + 44);
    v90 = v97;
    v91 = v53;
    v54 = v97 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v55 = *(v83 + 72);
    v56 = (v95 + 16);
    v57 = (v95 + 8);
    v58 = v87;
    do
    {
      v59 = v92;
      sub_23A8D52B8(v54, v92, type metadata accessor for CapturedRoom.Surface);
      (*v56)(v58, v59 + v91, v7);
      sub_23A8D5320(v59, type metadata accessor for CapturedRoom.Surface);
      swift_beginAccess();
      v60 = sub_23A9EDD28(v58);
      if (v61)
      {
        v62 = v60;
        v63 = swift_isUniquelyReferenced_nonNull_native();
        v64 = *(v2 + 24);
        v96 = v64;
        *(v2 + 24) = 0x8000000000000000;
        if (!v63)
        {
          sub_23A90E090();
          v64 = v96;
        }

        v7 = v94;
        v65 = *(v95 + 8);
        v65(*(v64 + 48) + *(v95 + 72) * v62, v94);

        sub_23A910778(v66);
        v58 = v87;
        v65(v87, v7);
        *(v2 + 24) = v64;
      }

      else
      {
        (*v57)(v58, v7);
      }

      swift_endAccess();
      v54 += v55;
      --v52;
    }

    while (v52);
  }

  v68 = v85[4];
  v69 = *(v68 + 16);
  v70 = v93;
  if (v69)
  {
    v71 = *(v84 + 44);
    v72 = v68 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v73 = *(v83 + 72);
    do
    {
      sub_23A8D52B8(v72, v70, type metadata accessor for CapturedRoom.Surface);
      swift_beginAccess();
      v75 = sub_23A9EDD28(v70 + v71);
      if (v76)
      {
        v77 = v75;
        v78 = swift_isUniquelyReferenced_nonNull_native();
        v79 = *(v2 + 24);
        v96 = v79;
        *(v2 + 24) = 0x8000000000000000;
        if (!v78)
        {
          sub_23A90E090();
          v79 = v96;
        }

        (*(v95 + 8))(*(v79 + 48) + *(v95 + 72) * v77, v7);

        sub_23A910778(v74);
        *(v2 + 24) = v79;
      }

      swift_endAccess();
      v70 = v93;
      result = sub_23A8D5320(v93, type metadata accessor for CapturedRoom.Surface);
      v72 += v73;
      --v69;
    }

    while (v69);
  }

  return result;
}

void sub_23A8CFC2C(uint64_t a1, unint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF030, &qword_23AA11B48);
  MEMORY[0x28223BE20](v5 - 8);
  v251 = v201 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v7 - 8);
  v246 = v201 - v8;
  v259.i64[0] = sub_23AA0C064();
  v258 = *(v259.i64[0] - 8);
  MEMORY[0x28223BE20](v259.i64[0]);
  v244 = v201 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0CE84();
  v252 = *(v10 - 8);
  v253 = v10;
  MEMORY[0x28223BE20](v10);
  v256 = v201 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v243 = v201 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v201 - v15;
  v17 = sub_23AA0C0E4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v262 = v201 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v20 - 8);
  v250 = v201 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v249 = v201 - v23;
  MEMORY[0x28223BE20](v24);
  v248 = v201 - v25;
  MEMORY[0x28223BE20](v26);
  v261 = v201 - v27;
  MEMORY[0x28223BE20](v28);
  v260 = v201 - v29;
  MEMORY[0x28223BE20](v30);
  v32 = (v201 - v31);
  MEMORY[0x28223BE20](v33);
  v263 = (v201 - v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v35 - 8);
  v247 = v201 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v255 = v201 - v38;
  MEMORY[0x28223BE20](v39);
  v257 = v201 - v40;
  MEMORY[0x28223BE20](v41);
  v245 = v201 - v42;
  MEMORY[0x28223BE20](v43);
  v264 = v201 - v44;
  MEMORY[0x28223BE20](v45);
  v47 = v201 - v46;
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v48 = off_27DFB17B0;
  swift_beginAccess();
  if (v48[170] == 1)
  {
    v49 = *(a1 + 16);
    if (*v49.i32 != 0.0 || (v50 = vceqz_f32(*&vextq_s8(v49, v49, 4uLL)), (v50.i32[0] & v50.i32[1] & 1) == 0))
    {
      v51 = *(a1 + 32);
      v53 = *(a1 + 64);
      v52 = *(a1 + 80);
      v54 = *MEMORY[0x277D860B8];
      v55 = *(MEMORY[0x277D860B8] + 16);
      v56 = *(MEMORY[0x277D860B8] + 32);
      v57 = *(MEMORY[0x277D860B8] + 48);
      v241 = *(a1 + 48);
      v242 = v51;
      v240 = v53;
      v254 = v52;
      if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v241, v55), vceqq_f32(v51, v54)), vandq_s8(vceqq_f32(v53, v56), vceqq_f32(v52, v57)))) & 0x80000000) == 0)
      {
        v230 = v49;
        v234 = v2;
        v235 = v32;
        v238 = v17;
        v58 = *(a1 + 8);
        if (sub_23A8D46AC(0, v58))
        {
          v59 = 8;
        }

        else
        {
          v59 = 0;
        }

        if (sub_23A8D46AC(1u, v58))
        {
          v59 |= 2u;
        }

        if (sub_23A8D46AC(2u, v58))
        {
          v60 = v59 | 4;
        }

        else
        {
          v60 = v59;
        }

        v61 = sub_23A8D46AC(3u, v58);
        v214 = v60 & 0xFFFFFFFE | v61;
        LODWORD(v229) = sub_23A8EE690(v60 & 0xFEu | v61);
        swift_beginAccess();
        v62 = v48[138];
        v237 = v16;
        v233 = v18;
        if (v62 == 1)
        {
          v63 = type metadata accessor for CapturedRoom.Surface(0);
          v64 = *(a1 + *(v63 + 64));
          v215 = *(a1 + *(v63 + 68));

          v216 = v64;
        }

        else
        {
          v215 = MEMORY[0x277D84F90];
          v216 = MEMORY[0x277D84F90];
        }

        v65 = type metadata accessor for CapturedRoom.Surface(0);
        v66 = v65[13];
        sub_23A8D5194(a1 + v66, v47, &qword_27DFAEB38, &unk_23AA11B60);
        v67 = type metadata accessor for CapturedRoom.Surface.Curve(0);
        v239 = *(v67 - 8);
        v68 = *(v239 + 48);
        v236 = v67;
        v231 = v68;
        v232 = v239 + 48;
        v69 = a1;
        v70 = (v68)(v47, 1);
        v71 = sub_23A8D50D0(v47, &qword_27DFAEB38, &unk_23AA11B60);
        MEMORY[0x28223BE20](v71);
        v72 = &v201[-4];
        v201[-2] = v69;
        if (v70 == 1)
        {
          v73 = sub_23A9AD0FC(sub_23A8D51FC, v72, a2);
          v212 = 0;
          v74 = v69;
          v75 = v238;
          v76 = v235;
        }

        else
        {
          v77 = sub_23A9AD0FC(sub_23A8D521C, v72, a2);
          MEMORY[0x28223BE20](v77);
          v201[-2] = v69;

          v73 = sub_23A9AD0FC(sub_23A8D5240, &v201[-4], a2);
          v212 = 0;
          v74 = v69;
          v76 = v235;
          if (v77)
          {
            sub_23A8D1B08(v69, v77, v263);

            v75 = v238;
            v225 = v77;
            v226 = v73;
            if (v73)
            {
LABEL_25:
              sub_23A8D1B2C(v74, v73, v76);

LABEL_26:
              v80 = v76;
              v81 = v65[11];
              v209 = *(v233 + 16);
              v210 = v233 + 16;
              v209(v262, v74 + v81, v75);
              sub_23A8D5194(v74 + v65[14], v237, &unk_27DFB0970, &qword_23AA14E00);
              sub_23A8D5194(v74 + v66, v264, &qword_27DFAEB38, &unk_23AA11B60);
              v208 = *(v74 + 112);
              v211 = sub_23A94EA48(v229);
              sub_23A8D5194(v263, v260, &unk_27DFAF020, &unk_23AA12300);
              sub_23A8D5194(v80, v261, &unk_27DFAF020, &unk_23AA12300);
              v82 = v234;
              swift_beginAccess();
              v83 = *(v82 + 24);
              v84 = *(v83 + 16);
              v227 = v74;
              v224 = v81;
              if (v84)
              {

                v85 = sub_23A9EDD28(v74 + v81);
                v86 = v259.i64[0];
                if (v87)
                {
                  v88 = *(*(v83 + 56) + 8 * v85);
                }

                else
                {
                  v88 = 0;
                }

                v207 = v88;
              }

              else
              {
                v207 = 0;
                v86 = v259.i64[0];
              }

              type metadata accessor for ScanItem(0);
              v89 = swift_allocObject();
              v90 = v258 + 56;
              v91 = *(v258 + 56);
              v213 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
              v91(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime, 1, 1, v86);
              v201[0] = v91;
              v201[1] = v90;
              v91(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_fadeOutAnimationTime, 1, 1, v86);
              v92 = v239 + 56;
              v93 = *(v239 + 56);
              v229 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
              v94 = v236;
              v93(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve, 1, 1, v236);
              v221 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation) = xmmword_23AA11AE0;
              v218 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
              v93(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, 1, 1, v94);
              v95 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
              v96 = type metadata accessor for ScanItemStrut(0);
              v97 = *(v96 - 8);
              v98 = *(v97 + 56);
              v99 = v97 + 56;
              v219 = v95;
              v98(v89 + v95, 1, 1, v96);
              v220 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
              v98(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, 1, 1, v96);
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = 4;
              v100 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
              v101 = type metadata accessor for AnimationGraph(0);
              v222 = *(v101 - 8);
              v223 = v101;
              v202 = *(v222 + 56);
              v203 = v222 + 56;
              v202(v89 + v100, 1, 1);
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_floorExtensionFactor) = 1065982362;
              v102 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides;
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides) = 12;
              v103 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners;
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners) = 0;
              v217 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve;
              v93(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve, 1, 1, v94);
              v93(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve, 1, 1, v94);
              v98(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut, 1, 1, v96);
              v98(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut, 1, 1, v96);
              v104 = (v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
              *v104 = 0;
              v104[1] = 0;
              v239 = v92;
              v228 = v93;
              v93(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseCurve, 1, 1, v94);
              v98(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut, 1, 1, v96);
              v205 = v98;
              v206 = v96;
              v204 = v99;
              v98(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut, 1, 1, v96);
              v209((v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid), v262, v238);
              sub_23A8D5194(v237, v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, &unk_27DFB0970, &qword_23AA14E00);
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) = 2;
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category) = 1;
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color) = v208;
              *(v89 + v102) = v214 | 0xC;
              v105 = v207;
              if (v207)
              {
                v106 = *(v207 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners);
              }

              else
              {
                v106 = 0;
              }

              v107 = v230;
              v108 = v257;
              v109 = v215;
              *(v89 + v103) = v106 | v211;
              v110 = v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform;
              v111 = v241;
              *v110 = v242;
              *(v110 + 16) = v111;
              v112 = v254;
              *(v110 + 32) = v240;
              *(v110 + 48) = v112;
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions) = v107;
              sub_23A8D5194(v264, v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, &qword_27DFAEB38, &unk_23AA11B60);
              sub_23A8D5194(v260, v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawLeftStrut, &unk_27DFAF020, &unk_23AA12300);
              sub_23A8D5194(v261, v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawRightStrut, &unk_27DFAF020, &unk_23AA12300);
              v113 = v212;
              v114 = sub_23A8DE3E8(v216, v109);
              v115 = v113;
              v116 = v229;
              if (v113)
              {

                sub_23A8D4E5C();
                if (qword_27DFAE3A0 != -1)
                {
                  swift_once();
                }

                sub_23AA0D644();
                v117 = v243;
                sub_23AA0CE94();
                v118 = v113;
                v119 = sub_23AA0CE54();
                v120 = sub_23AA0D494();

                if (os_log_type_enabled(v119, v120))
                {
                  v121 = swift_slowAlloc();
                  v122 = swift_slowAlloc();
                  v267[0] = v122;
                  *v121 = 136315138;
                  swift_getErrorValue();
                  v123 = sub_23AA0DC34();
                  v125 = sub_23A9A65A4(v123, v124, v267);

                  *(v121 + 4) = v125;
                  v116 = v229;
                  _os_log_impl(&dword_23A8B4000, v119, v120, "Cannot compute ScanItemEdges: %s", v121, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v122);
                  MEMORY[0x23EE91710](v122, -1, -1);
                  MEMORY[0x23EE91710](v121, -1, -1);

                  (*(v252 + 8))(v243, v253);
                }

                else
                {

                  (*(v252 + 8))(v117, v253);
                }

                v127 = v259.i64[0];
                v108 = v257;
                v126 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
              }

              else
              {
                v126 = v114;

                v127 = v259.i64[0];
              }

              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges) = v126;

              v128 = v244;
              sub_23AA0C044();
              (*(v258 + 32))(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_bodyStartTime, v128, v127);
              if (v105)
              {
                v129 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
                swift_beginAccess();
                v130 = v105 + v129;
                v131 = v246;
                sub_23A8D5194(v130, v246, &qword_27DFAEB30, &unk_23AA11B50);
              }

              else
              {
                v131 = v246;
                (v201[0])(v246, 1, 1, v127);
              }

              v132 = v213;
              swift_beginAccess();
              sub_23A8D5068(v131, v89 + v132, &qword_27DFAEB30, &unk_23AA11B50);
              swift_endAccess();
              v259.i64[0] = 0;
              if (v105)
              {
                *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = *(v105 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
                v133 = (v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
                *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = *(v105 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
                v134 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
                swift_beginAccess();
                sub_23A8D5194(v105 + v134, v108, &qword_27DFAEB38, &unk_23AA11B60);
                v135 = v236;
                if (v231(v108, 1, v236) != 1)
                {
                  v136 = v245;
                  sub_23A8D5130(v108, v245);
                  v228(v136, 0, 1, v135);
                  goto LABEL_52;
                }
              }

              else
              {
                v137 = v254;
                v137.i32[3] = 0;
                *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = v137;
                v133 = (v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
                *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = v230;
                v135 = v236;
                v228(v108, 1, 1, v236);
              }

              v136 = v245;
              sub_23A8D5194(v264, v245, &qword_27DFAEB38, &unk_23AA11B60);
              if (v231(v108, 1, v135) != 1)
              {
                sub_23A8D50D0(v108, &qword_27DFAEB38, &unk_23AA11B60);
              }

LABEL_52:
              swift_beginAccess();
              sub_23A8D5068(v136, v89 + v116, &qword_27DFAEB38, &unk_23AA11B60);
              swift_endAccess();
              v138 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation;
              if (v105)
              {
                *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = *(v105 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
                v139 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
              }

              else
              {
                v268.columns[1] = v241;
                v268.columns[0] = v242;
                v268.columns[2] = v240;
                v268.columns[3] = v254;
                *&v141 = simd_quaternion(v268);
                *(v89 + v138) = v141;

                v139 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
              }

              *(v89 + v139) = v140;
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationPosition) = *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationDimensions) = *v133;
              v142 = v255;
              sub_23A8D5194(v89 + v116, v255, &qword_27DFAEB38, &unk_23AA11B60);
              v143 = v217;
              swift_beginAccess();
              sub_23A8D5068(v142, v89 + v143, &qword_27DFAEB38, &unk_23AA11B60);
              swift_endAccess();
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationOrientation) = *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
              if (v105)
              {
                *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions) = *(v105 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
                v144 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
                swift_beginAccess();
                v145 = v105 + v144;
                v146 = v247;
                sub_23A8D5194(v145, v247, &qword_27DFAEB38, &unk_23AA11B60);
              }

              else
              {
                v147 = (v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
                *v147 = 0;
                v147[1] = 0;
                v146 = v247;
                v228(v247, 1, 1, v236);
              }

              v148 = v218;
              swift_beginAccess();
              sub_23A8D5068(v146, v89 + v148, &qword_27DFAEB38, &unk_23AA11B60);
              swift_endAccess();
              if (v105)
              {
                v149 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
                swift_beginAccess();
                v150 = v105 + v149;
                v151 = v248;
                sub_23A8D5194(v150, v248, &unk_27DFAF020, &unk_23AA12300);
              }

              else
              {
                v151 = v248;
                v205(v248, 1, 1, v206);
              }

              v152 = v219;
              swift_beginAccess();
              sub_23A8D5068(v151, v89 + v152, &unk_27DFAF020, &unk_23AA12300);
              swift_endAccess();
              if (v105)
              {
                v153 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
                swift_beginAccess();
                v154 = v105 + v153;
                v155 = v249;
                sub_23A8D5194(v154, v249, &unk_27DFAF020, &unk_23AA12300);
              }

              else
              {
                v155 = v249;
                v205(v249, 1, 1, v206);
              }

              v156 = v220;
              swift_beginAccess();
              sub_23A8D5068(v155, v89 + v156, &unk_27DFAF020, &unk_23AA12300);
              swift_endAccess();
              if (v105)
              {
                *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = *(v105 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
                *(v89 + v221) = *(v105 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
                v157 = *(v105 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges);

                v159 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
                v126 = v157;
              }

              else
              {
                v161 = (v231)(v264, 1, v236);
                v161.i32[0] = v162;
                v163.i32[0] = 1;
                v164 = vdupq_lane_s32(*&vceqq_s32(v161, v163), 0);
                v269.columns[3] = v254;
                v165 = v254;
                v165.i32[3] = 0;
                v166 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
                *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = vbicq_s8(v165, v164);
                v269.columns[1] = v241;
                v269.columns[0] = v242;
                v269.columns[2] = v240;
                *&v167 = simd_quaternion(v269);
                v159 = v166;
                *(v89 + v221) = v167;
              }

              v160 = v235;
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges) = v126;
              v258 = v159;
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition) = *(v89 + v159);
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationOrientation) = *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
              v168 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
              *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationDimensions) = *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
              v169 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges;
              v170 = *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);
              v171 = v170[2];
              if (v126[2])
              {
                v266 = v126;
                v172 = v256;
                if (v171)
                {
                  v265 = v170;

LABEL_75:
                  v178 = v259.i64[0];
                  sub_23A8DED48(&v266, &v265);
                  if (v178)
                  {
                    sub_23A8D4E5C();
                    if (qword_27DFAE3A0 != -1)
                    {
                      swift_once();
                    }

                    sub_23AA0D644();
                    sub_23AA0CE94();
                    v179 = v178;
                    v180 = sub_23AA0CE54();
                    v181 = sub_23AA0D494();

                    if (os_log_type_enabled(v180, v181))
                    {
                      v182 = swift_slowAlloc();
                      v183 = swift_slowAlloc();
                      v267[0] = v183;
                      *v182 = 136315138;
                      swift_getErrorValue();
                      v184 = sub_23AA0DC34();
                      v186 = sub_23A9A65A4(v184, v185, v267);

                      *(v182 + 4) = v186;
                      _os_log_impl(&dword_23A8B4000, v180, v181, "%s", v182, 0xCu);
                      __swift_destroy_boxed_opaque_existential_1(v183);
                      v187 = v183;
                      v142 = v255;
                      MEMORY[0x23EE91710](v187, -1, -1);
                      v188 = v182;
                      v160 = v235;
                      MEMORY[0x23EE91710](v188, -1, -1);

                      (*(v252 + 8))(v256, v253);
                    }

                    else
                    {

                      (*(v252 + 8))(v172, v253);
                    }
                  }

                  v189 = v265;
                  *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationScanItemEdges) = v266;
                  *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges) = v189;
                  sub_23A8D5194(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, v142, &qword_27DFAEB38, &unk_23AA11B60);
                  v190 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve;
                  swift_beginAccess();
                  sub_23A8D5068(v142, v89 + v190, &qword_27DFAEB38, &unk_23AA11B60);
                  swift_endAccess();
                  v191 = v250;
                  sub_23A8D5194(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, v250, &unk_27DFAF020, &unk_23AA12300);
                  v192 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut;
                  swift_beginAccess();
                  sub_23A8D5068(v191, v89 + v192, &unk_27DFAF020, &unk_23AA12300);
                  swift_endAccess();
                  sub_23A8D5194(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, v191, &unk_27DFAF020, &unk_23AA12300);
                  v193 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut;
                  swift_beginAccess();
                  sub_23A8D5068(v191, v89 + v193, &unk_27DFAF020, &unk_23AA12300);
                  swift_endAccess();
                  if (v105)
                  {
                    *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = *(v105 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory);
                    v194 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
                    swift_beginAccess();
                    v195 = v251;
                    sub_23A8D5194(v105 + v194, v251, &unk_27DFAF030, &qword_23AA11B48);
                    v196 = v223;
                  }

                  else
                  {
                    *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
                    v195 = v251;
                    v196 = v223;
                    (v202)(v251, 1, 1, v223);
                  }

                  v197 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
                  swift_beginAccess();
                  sub_23A8D5068(v195, v89 + v197, &unk_27DFAF030, &qword_23AA11B48);
                  swift_endAccess();
                  v259 = *(v89 + v258);
                  v270.columns[1] = v241;
                  v270.columns[0] = v242;
                  v270.columns[2] = v240;
                  v270.columns[3] = v254;
                  v271 = __invert_f4(v270);
                  if (vmovn_s32(vcgtq_f32(vaddq_f32(v271.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v271.columns[0], v259.f32[0]), v271.columns[1], *v259.f32, 1), v271.columns[2], v259, 2)), vaddq_f32(v271.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v271.columns[0], v254.f32[0]), v271.columns[1], *v254.f32, 1), v271.columns[2], v254, 2)))).u8[0])
                  {
                    v198 = 2;
                  }

                  else
                  {
                    v198 = 1;
                  }

                  *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v198;
                  swift_beginAccess();
                  if (!(*(v222 + 48))(v89 + v197, 1, v196))
                  {
                    sub_23A93C968(*(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides), *(v89 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions));
                  }

                  swift_endAccess();

                  sub_23A8D50D0(v261, &unk_27DFAF020, &unk_23AA12300);
                  sub_23A8D50D0(v260, &unk_27DFAF020, &unk_23AA12300);
                  sub_23A8D50D0(v237, &unk_27DFB0970, &qword_23AA14E00);
                  (*(v233 + 8))(v262, v238);
                  sub_23A8D50D0(v264, &qword_27DFAEB38, &unk_23AA11B60);
                  v199 = v234;
                  swift_beginAccess();

                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v266 = *(v199 + 24);
                  *(v199 + 24) = 0x8000000000000000;
                  sub_23A9DA7E8(v89, v227 + v224, isUniquelyReferenced_nonNull_native);
                  *(v199 + 24) = v266;
                  swift_endAccess();

                  sub_23A8D50D0(v160, &unk_27DFAF020, &unk_23AA12300);
                  sub_23A8D50D0(v263, &unk_27DFAF020, &unk_23AA12300);
                  return;
                }

                v176 = sub_23A8DE9A8(v242, v241, v254, *v230.i64);
              }

              else
              {
                v172 = v256;
                if (v171)
                {
                  *v173.i64 = MEMORY[0x23EE8FF80](v158);
                  v266 = sub_23A8DE9A8(v173, v174, v175, *(v89 + v168));
                  v265 = *(v89 + v169);

                  goto LABEL_75;
                }

                v177 = MEMORY[0x277D84F90];
                v266 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
                v176 = sub_23A9DC9E0(v177);
              }

              v265 = v176;
              goto LABEL_75;
            }

LABEL_22:
            v78 = type metadata accessor for ScanItemStrut(0);
            (*(*(v78 - 8) + 56))(v76, 1, 1, v78);
            goto LABEL_26;
          }

          v75 = v238;
        }

        v79 = type metadata accessor for ScanItemStrut(0);
        (*(*(v79 - 8) + 56))(v263, 1, 1, v79);

        v225 = 0;
        v226 = v73;
        if (v73)
        {
          goto LABEL_25;
        }

        goto LABEL_22;
      }
    }
  }
}

uint64_t sub_23A8D1A8C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  type metadata accessor for CapturedRoom.Surface(0);
  if (sub_23AA0C094())
  {
    v3 = *(v2 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_isRightCurved) ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_23A8D1B50@<X0>(uint64_t a1@<X0>, float32x2_t *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X4>, void *a6@<X5>, int32x2_t *a7@<X8>)
{
  if (a2->i8[OBJC_IVAR____TtC8RoomPlan13JunctionPoint_configuration])
  {
    v8 = type metadata accessor for ScanItemStrut(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v8;
    v11 = a7;
    v12 = 1;
  }

  else
  {
    v36 = __invert_f4(*(a1 + 32));
    v18 = vaddq_f32(v36.columns[3], vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v36.columns[0], COERCE_FLOAT(*&a2[2])), 0, v36.columns[1]), v36.columns[2], a2[2], 1));
    v19 = vzip1_s32(*v18.i8, *&vextq_s8(v18, v18, 8uLL));
    v20 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v36.columns[0], COERCE_FLOAT(*(a2 + *a3))), 0, v36.columns[1]), v36.columns[2], *(a2 + *a3), 1), 0, v36.columns[3]);
    v21 = vzip1_s32(*v20.i8, *&vextq_s8(v20, v20, 8uLL));
    v22 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v36.columns[0], COERCE_FLOAT(*(a2 + *a4))), 0, v36.columns[1]), v36.columns[2], *(a2 + *a4), 1), 0, v36.columns[3]);
    v23 = vzip1_s32(*v22.i8, *&vextq_s8(v22, v22, 8uLL));
    v24 = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v36.columns[0], COERCE_FLOAT(*(a2 + *a5))), 0, v36.columns[1]), v36.columns[2], *(a2 + *a5), 1), 0, v36.columns[3]);
    v25 = vzip1_s32(*v24.i8, *&vextq_s8(v24, v24, 8uLL));
    v36.columns[0] = vmlaq_f32(vmlaq_lane_f32(vmlaq_f32(vmulq_n_f32(v36.columns[0], COERCE_FLOAT(*(a2 + *a6))), 0, v36.columns[1]), v36.columns[2], *(a2 + *a6), 1), 0, v36.columns[3]);
    v26 = vzip1_s32(*v36.columns[0].f32, *&vextq_s8(v36.columns[0], v36.columns[0], 8uLL));
    v27 = type metadata accessor for ScanItemStrut(0);
    v28 = a7 + *(v27 + 44);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB40, &qword_23AA11B70);
    v30 = *(v29 + 48);
    v31 = OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftUUID;
    v32 = sub_23AA0C0E4();
    v33 = *(*(v32 - 8) + 16);
    v33(v28, a2 + v31, v32);
    v33(&v28[v30], a2 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightUUID, v32);
    (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
    *a7 = v19;
    a7[1] = v21;
    a7[2] = v23;
    a7[3].i32[0] = 1042536202;
    a7[4] = v25;
    a7[5] = v26;
    a7[6].i32[0] = 1042536202;
    v9 = *(*(v27 - 8) + 56);
    v11 = a7;
    v12 = 0;
    v10 = v27;
  }

  return v9(v11, v12, 1, v10);
}

double sub_23A8D1DEC(int8x16_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v15 = sub_23AA0C0E4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v19 = off_27DFB17B0;
  swift_beginAccess();
  if (v19[172] == 1)
  {
    v21 = a1[1];
    if (*v21.i32 != 0.0 || (*v20.i8 = vceqz_f32(*&vextq_s8(v21, v21, 4uLL)), (v20.i32[0] & v20.i32[1] & 1) == 0))
    {
      v22 = a1[2];
      v23 = a1[3];
      v24 = a1[4];
      v20 = vandq_s8(vandq_s8(vceqq_f32(v23, *(MEMORY[0x277D860B8] + 16)), vceqq_f32(v22, *MEMORY[0x277D860B8])), vandq_s8(vceqq_f32(v24, *(MEMORY[0x277D860B8] + 32)), vceqq_f32(a1[5], *(MEMORY[0x277D860B8] + 48))));
      v20.i32[0] = vminvq_u32(v20);
      if ((v20.i32[0] & 0x80000000) == 0)
      {
        v54 = a1[5];
        v55 = v24;
        v56 = v23;
        v57 = v22;
        v59 = v21;
        v25 = type metadata accessor for CapturedRoom.Surface(0);
        v26 = *(v16 + 16);
        v58 = v25[11];
        v26(v18, &a1->i8[v58], v15);
        sub_23A8D5194(a1->i64 + v25[14], v14, &unk_27DFB0970, &qword_23AA14E00);
        v27 = a1->i8[0];
        v28 = a1->i8[0] - 2;
        v61 = v8;
        v62 = v5;
        if (v28 >= 4u)
        {
          v31 = (v27 & 1) == 0;
          if (v27)
          {
            v32 = 0;
          }

          else
          {
            v32 = 5;
          }

          v53 = v32;
          if (v31)
          {
            v30 = 3;
          }

          else
          {
            v30 = 4;
          }
        }

        else
        {
          v29 = 8 * (v28 & 0x1F);
          v53 = 0x6040102u >> v29;
          v30 = 0x20501u >> v29;
        }

        v52 = v30;
        sub_23A8D5194(a1->i64 + v25[13], v11, &qword_27DFAEB38, &unk_23AA11B60);
        v33 = *(a1->i64 + v25[17]);
        v34 = *(a1->i64 + v25[16]);
        v50 = a1[7];
        v35 = type metadata accessor for ScanItemStrut(0);
        v36 = *(*(v35 - 8) + 56);
        v36(v61, 1, 1, v35);
        v36(v62, 1, 1, v35);
        v37 = v33;
        swift_beginAccess();
        v60 = v1;
        v38 = *(v1 + 24);
        v39 = *(v38 + 16);

        v51 = v34;

        if (v39)
        {

          v40 = v58;
          v41 = sub_23A9EDD28(a1->i64 + v58);
          if (v42)
          {
            v43 = *(*(v38 + 56) + 8 * v41);
          }

          else
          {
            v43 = 0;
          }

          v45 = v61;
          v44 = v62;
        }

        else
        {
          v43 = 0;
          v40 = v58;
          v45 = v61;
          v44 = v62;
        }

        type metadata accessor for ScanItem(0);
        swift_allocObject();
        v46 = sub_23A8D8820(v18, v14, v53, v52, v11, v37, v51, 15, v59, v57, v56, v55, v54, v50, 255, v45, v44, v43);
        v47 = v60;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v47 + 24);
        *(v47 + 24) = 0x8000000000000000;
        sub_23A9DA7E8(v46, a1->i64 + v40, isUniquelyReferenced_nonNull_native);
        *(v47 + 24) = v63;
        swift_endAccess();
      }
    }
  }

  return *v20.i64;
}

double sub_23A8D2348(int8x16_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v50 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v50 - v13;
  v15 = sub_23AA0C0E4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v19 = off_27DFB17B0;
  swift_beginAccess();
  if (v19[173] == 1)
  {
    v21 = a1[1];
    if (*v21.i32 != 0.0 || (*v20.i8 = vceqz_f32(*&vextq_s8(v21, v21, 4uLL)), (v20.i32[0] & v20.i32[1] & 1) == 0))
    {
      v22 = a1[2];
      v23 = a1[3];
      v24 = a1[4];
      v20 = vandq_s8(vandq_s8(vceqq_f32(v23, *(MEMORY[0x277D860B8] + 16)), vceqq_f32(v22, *MEMORY[0x277D860B8])), vandq_s8(vceqq_f32(v24, *(MEMORY[0x277D860B8] + 32)), vceqq_f32(a1[5], *(MEMORY[0x277D860B8] + 48))));
      v20.i32[0] = vminvq_u32(v20);
      if ((v20.i32[0] & 0x80000000) == 0)
      {
        v54 = a1[5];
        v55 = v24;
        v56 = v23;
        v57 = v22;
        v59 = v21;
        v25 = type metadata accessor for CapturedRoom.Surface(0);
        v26 = *(v16 + 16);
        v58 = v25[11];
        v26(v18, &a1->i8[v58], v15);
        sub_23A8D5194(a1->i64 + v25[14], v14, &unk_27DFB0970, &qword_23AA14E00);
        v27 = a1->i8[0];
        v28 = a1->i8[0] - 2;
        v61 = v8;
        v62 = v5;
        if (v28 >= 4u)
        {
          v31 = (v27 & 1) == 0;
          if (v27)
          {
            v32 = 0;
          }

          else
          {
            v32 = 5;
          }

          v53 = v32;
          if (v31)
          {
            v30 = 3;
          }

          else
          {
            v30 = 4;
          }
        }

        else
        {
          v29 = 8 * (v28 & 0x1F);
          v53 = 0x6040102u >> v29;
          v30 = 0x20501u >> v29;
        }

        v52 = v30;
        sub_23A8D5194(a1->i64 + v25[13], v11, &qword_27DFAEB38, &unk_23AA11B60);
        v33 = *(a1->i64 + v25[17]);
        v34 = *(a1->i64 + v25[16]);
        v50 = a1[7];
        v35 = type metadata accessor for ScanItemStrut(0);
        v36 = *(*(v35 - 8) + 56);
        v36(v61, 1, 1, v35);
        v36(v62, 1, 1, v35);
        v37 = v33;
        swift_beginAccess();
        v60 = v1;
        v38 = *(v1 + 24);
        v39 = *(v38 + 16);

        v51 = v34;

        if (v39)
        {

          v40 = v58;
          v41 = sub_23A9EDD28(a1->i64 + v58);
          if (v42)
          {
            v43 = *(*(v38 + 56) + 8 * v41);
          }

          else
          {
            v43 = 0;
          }

          v45 = v61;
          v44 = v62;
        }

        else
        {
          v43 = 0;
          v40 = v58;
          v45 = v61;
          v44 = v62;
        }

        type metadata accessor for ScanItem(0);
        swift_allocObject();
        v46 = sub_23A8D8820(v18, v14, v53, v52, v11, v37, v51, 15, v59, v57, v56, v55, v54, v50, 255, v45, v44, v43);
        v47 = v60;
        swift_beginAccess();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v63 = *(v47 + 24);
        *(v47 + 24) = 0x8000000000000000;
        sub_23A9DA7E8(v46, a1->i64 + v40, isUniquelyReferenced_nonNull_native);
        *(v47 + 24) = v63;
        swift_endAccess();
      }
    }
  }

  return *v20.i64;
}

double sub_23A8D28A4(float32x4_t *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF030, &qword_23AA11B48);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v162 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v7 - 8);
  v204 = &v162 - v8;
  v216.i64[0] = sub_23AA0C064();
  v214 = *(v216.i64[0] - 8);
  MEMORY[0x28223BE20](v216.i64[0]);
  v203 = &v162 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23AA0CE84();
  v211 = *(v10 - 8);
  v212 = v10;
  MEMORY[0x28223BE20](v10);
  v213 = &v162 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v198 = &v162 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v207 = &v162 - v18;
  MEMORY[0x28223BE20](v19);
  v206 = &v162 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v162 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v162 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v27 - 8);
  v205 = &v162 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v215 = &v162 - v30;
  MEMORY[0x28223BE20](v31);
  v201 = &v162 - v32;
  MEMORY[0x28223BE20](v33);
  v202 = &v162 - v34;
  MEMORY[0x28223BE20](v35);
  v220 = &v162 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v37 - 8);
  v219 = &v162 - v38;
  v39 = sub_23AA0C0E4();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v218 = &v162 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v42 = off_27DFB17B0;
  swift_beginAccess();
  if (v42[171] == 1)
  {
    swift_beginAccess();
    if (v42[41] != 1 || (v44 = a1->u8[0], v44 != 2) && v44 != 15)
    {
      swift_beginAccess();
      v45 = v42[40];
      v209 = v26;
      v210 = v23;
      v188 = v16;
      v185 = v6;
      v208 = v39;
      if (v45)
      {
        if (v45 == 1)
        {
          v46 = sub_23A8D4438();
        }

        else
        {
          v46 = sub_23A8D45D8();
        }

        v47 = v46;
      }

      else
      {
        v47 = *(a1->i32 + *(type metadata accessor for CapturedRoom.Object(0) + 48));
      }

      v48 = type metadata accessor for CapturedRoom.Object(0);
      v49 = v48[8];
      v189 = v40;
      v172 = *(v40 + 16);
      v173 = v40 + 16;
      v172(v218, a1 + v49, v208);
      sub_23A8D5194(a1 + v48[11], v219, &unk_27DFB0970, &qword_23AA14E00);
      v224[0] = a1->i8[0];
      v174 = sub_23A9E7514();
      v193 = a1[1];
      v50 = type metadata accessor for CapturedRoom.Surface.Curve(0);
      v177 = *(v50 - 8);
      v51 = *(v177 + 56);
      v195 = v177 + 56;
      v196 = v50;
      v194 = v51;
      (v51)(v220, 1, 1);
      v52 = a1[2];
      v199 = a1[3];
      v200 = v52;
      v53 = a1[5];
      v197 = a1[4];
      v217 = v53;
      v170 = *(a1 + v48[13]);
      v169 = sub_23A94EC08(v47);
      v171 = sub_23A94EA48(v47);
      v54 = type metadata accessor for ScanItemStrut(0);
      v55 = *(v54 - 8);
      v56 = *(v55 + 56);
      v57 = v55 + 56;
      v56(v209, 1, 1, v54);
      v191 = v56;
      v192 = v54;
      v190 = v57;
      v56(v210, 1, 1, v54);
      swift_beginAccess();
      v58 = *(v2 + 24);
      v59 = *(v58 + 16);
      v186 = a1;
      v187 = v2;
      v184 = v49;
      if (v59)
      {

        v60 = sub_23A9EDD28(a1 + v49);
        v61 = v216.i64[0];
        if (v62)
        {
          v63 = *(*(v58 + 56) + 8 * v60);
        }

        else
        {
          v63 = 0;
        }

        v64 = v196;
        v167 = v63;
      }

      else
      {
        v167 = 0;
        v61 = v216.i64[0];
        v64 = v196;
      }

      type metadata accessor for ScanItem(0);
      v65 = swift_allocObject();
      v66 = v214 + 56;
      v67 = *(v214 + 56);
      v175 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
      v67(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime, 1, 1, v61);
      v163 = v67;
      v164 = v66;
      v67(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_fadeOutAnimationTime, 1, 1, v61);
      v168 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
      v68 = v194;
      v194(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve, 1, 1, v64);
      v181 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
      *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation) = xmmword_23AA11AE0;
      v178 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
      v68(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, 1, 1, v64);
      v179 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
      v69 = v191;
      v70 = v192;
      v191(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, 1, 1, v192);
      v180 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
      v69(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, 1, 1, v70);
      *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = 4;
      v71 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
      v72 = type metadata accessor for AnimationGraph(0);
      v182 = *(v72 - 8);
      v183 = v72;
      v165 = *(v182 + 56);
      v166 = v182 + 56;
      v165(v65 + v71, 1, 1);
      *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
      *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_floorExtensionFactor) = 1065982362;
      v73 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides;
      *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides) = 12;
      v74 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners;
      *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners) = 0;
      v176 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve;
      v68(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve, 1, 1, v64);
      v68(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve, 1, 1, v64);
      v69(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut, 1, 1, v70);
      v69(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut, 1, 1, v70);
      v75 = (v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
      *v75 = 0;
      v75[1] = 0;
      v68(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseCurve, 1, 1, v64);
      v69(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut, 1, 1, v70);
      v69(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut, 1, 1, v70);
      v172((v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid), v218, v208);
      sub_23A8D5194(v219, v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, &unk_27DFB0970, &qword_23AA14E00);
      *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) = 3;
      v76 = v174;
      *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category) = v174;
      *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color) = v170;
      *(v65 + v73) = v169 | 0xC;
      v77 = v167;
      if (v167)
      {
        v78 = *(v167 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners);
      }

      else
      {
        v78 = 0;
      }

      v79 = v78 | v171;
      v80 = v216.i64[0];
      v81 = v196;
      if (v76 == 20)
      {
        v82 = (v79 >> 1) & 0x11 | (2 * v79) & 0x88;
      }

      else
      {
        if (v76 != 18)
        {
          *(v65 + v74) = v79;
          if (!v76)
          {
            v83.i64[0] = vmulq_f32(v193, vdupq_n_s32(0x3F89999Au)).u64[0];
            v83.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.075, v193, 2));
            v193 = v83;
          }

LABEL_29:
          v84 = v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform;
          v85 = v199;
          *v84 = v200;
          *(v84 + 16) = v85;
          v86 = v217;
          *(v84 + 32) = v197;
          *(v84 + 48) = v86;
          *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions) = v193;
          sub_23A8D5194(v220, v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, &qword_27DFAEB38, &unk_23AA11B60);
          sub_23A8D5194(v209, v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawLeftStrut, &unk_27DFAF020, &unk_23AA12300);
          sub_23A8D5194(v210, v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawRightStrut, &unk_27DFAF020, &unk_23AA12300);
          v87 = sub_23A8DE3E8(MEMORY[0x277D84F90], MEMORY[0x277D84F90]);
          v88 = v201;
          *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges) = v87;

          v89 = v203;
          sub_23AA0C044();
          (*(v214 + 32))(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_bodyStartTime, v89, v80);
          if (v77)
          {
            v90 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
            swift_beginAccess();
            v91 = v77 + v90;
            v92 = v204;
            sub_23A8D5194(v91, v204, &qword_27DFAEB30, &unk_23AA11B50);
          }

          else
          {
            v92 = v204;
            v163(v204, 1, 1, v80);
          }

          v216.i64[0] = 0;
          v93 = v175;
          swift_beginAccess();
          sub_23A8D5068(v92, v65 + v93, &qword_27DFAEB30, &unk_23AA11B50);
          swift_endAccess();
          if (v77)
          {
            *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = *(v77 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
            v94 = (v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
            *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = *(v77 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
            v95 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
            swift_beginAccess();
            sub_23A8D5194(v77 + v95, v88, &qword_27DFAEB38, &unk_23AA11B60);
            v96 = v177;
            if ((*(v177 + 48))(v88, 1, v81) != 1)
            {
              v97 = v202;
              sub_23A8D5130(v88, v202);
              v194(v97, 0, 1, v81);
              goto LABEL_39;
            }

            v97 = v202;
          }

          else
          {
            v98 = v217;
            v98.n128_u32[3] = 0;
            *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = v98;
            v94 = (v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
            *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = v193;
            v194(v88, 1, 1, v81);
            v97 = v202;
            v96 = v177;
          }

          sub_23A8D5194(v220, v97, &qword_27DFAEB38, &unk_23AA11B60);
          if ((*(v96 + 48))(v88, 1, v81) != 1)
          {
            sub_23A8D50D0(v88, &qword_27DFAEB38, &unk_23AA11B60);
          }

LABEL_39:
          v99 = v168;
          swift_beginAccess();
          sub_23A8D5068(v97, v65 + v99, &qword_27DFAEB38, &unk_23AA11B60);
          swift_endAccess();
          if (v77)
          {
            *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = *(v77 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
            v100 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
          }

          else
          {
            v225.columns[1] = v199;
            v225.columns[0] = v200;
            v225.columns[2] = v197;
            v225.columns[3] = v217;
            *&v102 = simd_quaternion(v225);
            *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = v102;

            v100 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
          }

          *(v65 + v100) = v101;
          *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationPosition) = *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
          *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationDimensions) = *v94;
          v103 = v215;
          sub_23A8D5194(v65 + v99, v215, &qword_27DFAEB38, &unk_23AA11B60);
          v104 = v176;
          swift_beginAccess();
          sub_23A8D5068(v103, v65 + v104, &qword_27DFAEB38, &unk_23AA11B60);
          swift_endAccess();
          *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationOrientation) = *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
          if (v77)
          {
            *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions) = *(v77 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
            v105 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
            swift_beginAccess();
            v106 = v77 + v105;
            v107 = v205;
            sub_23A8D5194(v106, v205, &qword_27DFAEB38, &unk_23AA11B60);
          }

          else
          {
            v108 = (v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
            *v108 = 0;
            v108[1] = 0;
            v107 = v205;
            v194(v205, 1, 1, v81);
          }

          v109 = v213;
          v110 = v178;
          swift_beginAccess();
          sub_23A8D5068(v107, v65 + v110, &qword_27DFAEB38, &unk_23AA11B60);
          swift_endAccess();
          if (v77)
          {
            v111 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
            swift_beginAccess();
            v112 = v77 + v111;
            v113 = v206;
            sub_23A8D5194(v112, v206, &unk_27DFAF020, &unk_23AA12300);
          }

          else
          {
            v113 = v206;
            v191(v206, 1, 1, v192);
          }

          v114 = v179;
          swift_beginAccess();
          sub_23A8D5068(v113, v65 + v114, &unk_27DFAF020, &unk_23AA12300);
          swift_endAccess();
          if (v77)
          {
            v115 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
            swift_beginAccess();
            v116 = v77 + v115;
            v117 = v207;
            sub_23A8D5194(v116, v207, &unk_27DFAF020, &unk_23AA12300);
          }

          else
          {
            v117 = v207;
            v191(v207, 1, 1, v192);
          }

          v118 = v180;
          swift_beginAccess();
          sub_23A8D5068(v117, v65 + v118, &unk_27DFAF020, &unk_23AA12300);
          swift_endAccess();
          if (v77)
          {
            *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = *(v77 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
            *(v65 + v181) = *(v77 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
            v119 = *(v77 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges);

            v121 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
            v87 = v119;
          }

          else
          {
            v123 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
            v124 = (v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
            *v124 = 0;
            v124[1] = 0;
            v226.columns[1] = v199;
            v226.columns[0] = v200;
            v226.columns[2] = v197;
            v226.columns[3] = v217;
            *&v125 = simd_quaternion(v226);
            v121 = v123;
            *(v65 + v181) = v125;
          }

          v122 = v189;
          *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges) = v87;
          *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition) = *(v65 + v121);
          *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationOrientation) = *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
          v126 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
          *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationDimensions) = *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
          v127 = v87[2];
          v128 = OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges;
          v129 = *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);
          v130 = v129[2];
          v214 = v121;
          if (v127)
          {
            v222 = v87;
            v131 = v188;
            if (v130)
            {
              v221 = v129;

LABEL_62:
              v137 = v216.i64[0];
              sub_23A8DED48(&v222, &v221);
              if (v137)
              {
                sub_23A8D4E5C();
                if (qword_27DFAE3A0 != -1)
                {
                  swift_once();
                }

                sub_23AA0D644();
                sub_23AA0CE94();
                v138 = v137;
                v139 = sub_23AA0CE54();
                v140 = sub_23AA0D494();

                if (os_log_type_enabled(v139, v140))
                {
                  v141 = swift_slowAlloc();
                  v142 = swift_slowAlloc();
                  v223[0] = v142;
                  *v141 = 136315138;
                  swift_getErrorValue();
                  v143 = sub_23AA0DC34();
                  v145 = sub_23A9A65A4(v143, v144, v223);

                  *(v141 + 4) = v145;
                  _os_log_impl(&dword_23A8B4000, v139, v140, "%s", v141, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v142);
                  v146 = v142;
                  v122 = v189;
                  MEMORY[0x23EE91710](v146, -1, -1);
                  v147 = v141;
                  v131 = v188;
                  MEMORY[0x23EE91710](v147, -1, -1);

                  (*(v211 + 8))(v213, v212);
                }

                else
                {

                  (*(v211 + 8))(v109, v212);
                }
              }

              v148 = v221;
              *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationScanItemEdges) = v222;
              *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges) = v148;
              v149 = v215;
              sub_23A8D5194(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, v215, &qword_27DFAEB38, &unk_23AA11B60);
              v150 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve;
              swift_beginAccess();
              sub_23A8D5068(v149, v65 + v150, &qword_27DFAEB38, &unk_23AA11B60);
              swift_endAccess();
              sub_23A8D5194(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, v131, &unk_27DFAF020, &unk_23AA12300);
              v151 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut;
              swift_beginAccess();
              sub_23A8D5068(v131, v65 + v151, &unk_27DFAF020, &unk_23AA12300);
              swift_endAccess();
              sub_23A8D5194(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, v131, &unk_27DFAF020, &unk_23AA12300);
              v152 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut;
              swift_beginAccess();
              sub_23A8D5068(v131, v65 + v152, &unk_27DFAF020, &unk_23AA12300);
              swift_endAccess();
              if (v77)
              {
                *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = *(v77 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory);
                v153 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
                swift_beginAccess();
                v154 = v185;
                sub_23A8D5194(v77 + v153, v185, &unk_27DFAF030, &qword_23AA11B48);
                v155 = v210;
                v157 = v183;
                v156 = v184;
              }

              else
              {
                *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
                v154 = v185;
                v157 = v183;
                (v165)(v185, 1, 1, v183);
                v155 = v210;
                v156 = v184;
              }

              v158 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
              swift_beginAccess();
              sub_23A8D5068(v154, v65 + v158, &unk_27DFAF030, &qword_23AA11B48);
              swift_endAccess();
              v216 = *(v65 + v214);
              v227.columns[1] = v199;
              v227.columns[0] = v200;
              v227.columns[2] = v197;
              v227.columns[3] = v217;
              v228 = __invert_f4(v227);
              if (vmovn_s32(vcgtq_f32(vaddq_f32(*(&v228 + 48), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*&v228, *&v216), *(&v228 + 16), *&v216, 1), *(&v228 + 32), v216, 2)), vaddq_f32(*(&v228 + 48), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*&v228, *&v217), *(&v228 + 16), *&v217, 1), *(&v228 + 32), *&v217, 2)))).i8[2])
              {
                v159 = 0;
              }

              else
              {
                v159 = 3;
              }

              *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v159;
              swift_beginAccess();
              if (!(*(v182 + 48))(v65 + v158, 1, v157))
              {
                sub_23A93C6B4(*(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners), *(v65 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions));
              }

              swift_endAccess();

              sub_23A8D50D0(v155, &unk_27DFAF020, &unk_23AA12300);
              sub_23A8D50D0(v209, &unk_27DFAF020, &unk_23AA12300);
              sub_23A8D50D0(v219, &unk_27DFB0970, &qword_23AA14E00);
              (*(v122 + 8))(v218, v208);
              sub_23A8D50D0(v220, &qword_27DFAEB38, &unk_23AA11B60);
              v160 = v187;
              swift_beginAccess();

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v222 = *(v160 + 24);
              *(v160 + 24) = 0x8000000000000000;
              sub_23A9DA7E8(v65, v186 + v156, isUniquelyReferenced_nonNull_native);
              *(v160 + 24) = v222;
              swift_endAccess();

              return result;
            }

            v135 = sub_23A8DE9A8(v200, v199, v217, *v193.i64);
          }

          else
          {
            v131 = v188;
            if (v130)
            {
              *v132.i64 = MEMORY[0x23EE8FF80](v120);
              v222 = sub_23A8DE9A8(v132, v133, v134, *(v65 + v126));
              v221 = *(v65 + v128);

              goto LABEL_62;
            }

            v136 = MEMORY[0x277D84F90];
            v222 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
            v135 = sub_23A9DC9E0(v136);
          }

          v221 = v135;
          goto LABEL_62;
        }

        v82 = 16 * (v79 & 0xF);
      }

      *(v65 + v74) = v82 | v79;
      goto LABEL_29;
    }
  }

  return result;
}

uint64_t sub_23A8D43D4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A8D4438()
{
  v1 = *v0;
  if (v1 > 7)
  {
    if (*v0 <= 0xAu)
    {
      if (v1 - 8 < 2)
      {
        goto LABEL_16;
      }

      goto LABEL_20;
    }

    if (v1 - 11 >= 2)
    {
      if (v1 - 13 >= 2)
      {
        return 0;
      }

LABEL_16:
      v3 = *&v0[*(type metadata accessor for CapturedRoom.Object(0) + 48)];
      if ((v3 & 4) != 0)
      {
        if ((v3 & 0x40) != 0)
        {
          result = 68;
          if ((v3 & 0x20) == 0)
          {
LABEL_35:
            if ((v3 & 2) == 0 || (result & 2) != 0)
            {
              return result;
            }

            return result | 2;
          }

          goto LABEL_34;
        }

        result = 4;
        if ((v3 & 0x20) != 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if ((v3 & 0x40) != 0)
        {
          result = 64;
          if ((v3 & 0x20) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_34;
        }

        result = 0;
        if ((v3 & 0x20) != 0)
        {
LABEL_34:
          result = result | 0x20;
          goto LABEL_35;
        }
      }

LABEL_40:
      if ((v3 & 2) == 0)
      {
        return result;
      }

      return result | 2;
    }

LABEL_11:
    v3 = *&v0[*(type metadata accessor for CapturedRoom.Object(0) + 48)];
    if ((v3 & 4) != 0)
    {
      if ((v3 & 8) != 0)
      {
        result = 12;
        if ((v3 & 1) == 0)
        {
LABEL_53:
          if ((v3 & 2) != 0 && (result & 2) == 0)
          {
            return result | 2;
          }

          return result;
        }
      }

      else
      {
        result = 4;
        if ((v3 & 1) == 0)
        {
          goto LABEL_40;
        }
      }
    }

    else if ((v3 & 8) != 0)
    {
      result = 8;
      if ((v3 & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    else
    {
      result = 0;
      if ((v3 & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    result = result | 1;
    goto LABEL_53;
  }

  if (*v0 > 4u)
  {
    if (v1 == 5)
    {
      goto LABEL_16;
    }

    if (v1 != 6)
    {
      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v1 - 2 >= 3)
  {
    goto LABEL_16;
  }

LABEL_20:
  v4 = *&v0[*(type metadata accessor for CapturedRoom.Object(0) + 48)];
  if ((v4 & 0x40) == 0)
  {
    if ((v4 & 0x80) != 0)
    {
      result = 128;
      if ((v4 & 0x10) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_45;
    }

    result = 0;
    if ((v4 & 0x10) != 0)
    {
LABEL_45:
      result = result | 0x10;
      goto LABEL_46;
    }

LABEL_29:
    if ((v4 & 0x20) == 0)
    {
      return result;
    }

    return result | 0x20;
  }

  if ((v4 & 0x80) == 0)
  {
    result = 64;
    if ((v4 & 0x10) != 0)
    {
      goto LABEL_45;
    }

    goto LABEL_29;
  }

  result = 192;
  if ((v4 & 0x10) != 0)
  {
    goto LABEL_45;
  }

LABEL_46:
  if ((v4 & 0x20) != 0 && (result & 0x20) == 0)
  {
    return result | 0x20;
  }

  return result;
}

uint64_t sub_23A8D45D8()
{
  v1 = *v0;
  v2 = type metadata accessor for CapturedRoom.Object(0);
  v3 = *&v0[*(v2 + 48)];
  if (v1 == 14)
  {
    if ((v3 & 4) != 0)
    {
      if ((v3 & 0x40) != 0)
      {
        result = 68;
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_27;
        }
      }

      else
      {
        result = 4;
        if ((v3 & 0x20) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else if ((v3 & 0x40) != 0)
    {
      result = 64;
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      result = 0;
      if ((v3 & 0x20) == 0)
      {
        goto LABEL_17;
      }
    }

    result = result | 0x20;
    goto LABEL_27;
  }

  if (v1 != 12)
  {
    return *&v0[*(v2 + 48)];
  }

  if ((v3 & 4) != 0)
  {
    if ((v3 & 8) != 0)
    {
      result = 12;
      if ((v3 & 1) == 0)
      {
LABEL_27:
        if ((v3 & 2) != 0 && (result & 2) == 0)
        {
          return result | 2;
        }

        return result;
      }

      goto LABEL_22;
    }

    result = 4;
    if (v3)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if ((v3 & 8) != 0)
    {
      result = 8;
      if ((v3 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_22;
    }

    result = 0;
    if (v3)
    {
LABEL_22:
      result = result | 1;
      goto LABEL_27;
    }
  }

LABEL_17:
  if ((v3 & 2) != 0)
  {
    return result | 2;
  }

  return result;
}

BOOL sub_23A8D46AC(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_23AA0DD14();
  MEMORY[0x23EE907C0](v3);
  v4 = sub_23AA0DD54();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

void sub_23A8D4778(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v5 = v4;
  v88 = a4;
  v87 = a3;
  v86 = a2;
  v85 = a1;
  v6 = sub_23AA0C0E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v94 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v85 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v85 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v85 - v15;
  swift_beginAccess();
  v17 = *(v5 + 24);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(v5 + 24) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v93 = *(v5 + 24);

  swift_beginAccess();
  v24 = 0;
  v25 = (v21 + 63) >> 6;
  v26 = (v7 + 16);
  v99 = (v7 + 8);
  v91 = v16;
  v90 = v19;
  v89 = v25;
  v100 = (v7 + 16);
  for (i = v13; v23; v26 = v100)
  {
LABEL_8:
    v28 = *(*(v93 + 56) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));
    v29 = *v26;
    v97 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
    v98 = v29;
    (v29)(v16, v28 + OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid, v6);
    v30 = *(v5 + 32);
    v31 = *(v30 + 16);
    v101 = v28;
    if (v31)
    {

      v32 = sub_23A9EDD28(v16);
      if (v33)
      {
        v34 = (*(v30 + 56) + 32 * v32);
        v102 = *v34;
        v35 = v34[1].i8[0];
        v96 = *v99;
        v96(v16, v6);

        if (v35)
        {
          goto LABEL_39;
        }
      }

      else
      {

        v96 = *v99;
        v96(v16, v6);
      }
    }

    else
    {
      v42 = *v99;

      v96 = v42;
      v42(v16, v6);
    }

    v43 = v101;
    v44 = *(v101 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type);
    v45 = 0uLL;
    v102 = 0u;
    if ((v44 - 1) >= 2)
    {
      if (v44 != 3)
      {
        goto LABEL_20;
      }

      sub_23A9F59B8(v101, *(v5 + 17), v85, v86, v87, v88);
    }

    else
    {
      v45.n128_u64[0] = sub_23A9F5774(v101, *(v5 + 16), v36, v37, v38, v39, v40, v41, v85.n128_f64[0], v86.n128_f64[0], v87, v88);
      if (v48)
      {
        goto LABEL_20;
      }

      v45.n128_u64[0] = v46;
      *&v45.n128_i8[8] = v47;
    }

    v102 = v45;
LABEL_20:
    v49 = v6;
    v98(v13, v43 + v97, v6, v45);
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v103 = *(v5 + 32);
    v51 = v103;
    *(v5 + 32) = 0x8000000000000000;
    v53 = sub_23A9EDD28(v13);
    v54 = v51[2];
    v55 = (v52 & 1) == 0;
    v56 = v54 + v55;
    if (__OFADD__(v54, v55))
    {
      goto LABEL_43;
    }

    v57 = v52;
    if (v51[3] >= v56)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_23A90DAF4();
      }
    }

    else
    {
      sub_23A907D54(v56, isUniquelyReferenced_nonNull_native);
      v58 = sub_23A9EDD28(i);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_45;
      }

      v53 = v58;
    }

    v6 = v49;
    v60 = v5;
    v61 = v103;
    if (v57)
    {
      v62 = (v103[7] + 32 * v53);
      *v62 = v102;
      v62[1].i8[0] = 1;
      v63 = i;
      v64 = v98;
    }

    else
    {
      v65 = v92;
      v63 = i;
      v66 = v49;
      v64 = v98;
      (v98)(v92, i, v66);
      sub_23A9DBA60(v53, v65, 1u, v61, v102);
    }

    v96(v63, v6);
    v5 = v60;
    *(v60 + 32) = v61;
    v67 = v94;
    v64(v94, v101 + v97, v6);
    v68 = swift_isUniquelyReferenced_nonNull_native();
    v103 = *(v5 + 32);
    v69 = v103;
    *(v5 + 32) = 0x8000000000000000;
    v70 = sub_23A9EDD28(v67);
    v72 = v69[2];
    v73 = (v71 & 1) == 0;
    v74 = __OFADD__(v72, v73);
    v75 = v72 + v73;
    if (v74)
    {
      goto LABEL_44;
    }

    v76 = v71;
    v77 = v64;
    if (v69[3] < v75)
    {
      sub_23A907D54(v75, v68);
      v78 = v94;
      v70 = sub_23A9EDD28(v94);
      v25 = v89;
      if ((v76 & 1) != (v79 & 1))
      {
        goto LABEL_46;
      }

LABEL_34:
      v80 = v103;
      if ((v76 & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }

    v25 = v89;
    v78 = v94;
    if (v68)
    {
      goto LABEL_34;
    }

    v82 = v70;
    sub_23A90DAF4();
    v70 = v82;
    v80 = v103;
    if ((v76 & 1) == 0)
    {
LABEL_37:
      v83 = v70;
      v84 = v92;
      v77(v92, v78, v6);
      sub_23A9DBA60(v83, v84, 1u, v80, v102);
      goto LABEL_38;
    }

LABEL_35:
    v81 = (v80[7] + 32 * v70);
    *v81 = v102;
    v81[1].i8[0] = 1;
LABEL_38:
    v13 = i;
    v96(v78, v6);
    *(v5 + 32) = v80;
    swift_endAccess();
    v16 = v91;
    v19 = v90;
LABEL_39:
    v23 &= v23 - 1;
    sub_23A8DC8D4(v102);
  }

  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v27 >= v25)
    {

      return;
    }

    v23 = *(v19 + 8 * v27);
    ++v24;
    if (v23)
    {
      v24 = v27;
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  sub_23AA0DC24();
  __break(1u);
LABEL_46:
  sub_23AA0DC24();
  __break(1u);
}

unint64_t sub_23A8D4E5C()
{
  result = qword_27DFAF770;
  if (!qword_27DFAF770)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DFAF770);
  }

  return result;
}

double simd_quaternion(simd_float4x4 a1)
{
  v1 = a1.columns[2].f32[2] + (a1.columns[0].f32[0] + a1.columns[1].f32[1]);
  if (v1 >= 0.0)
  {
    a1.columns[3].f32[0] = sqrtf(v1 + 1.0);
    v6 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
    v7 = vmul_f32(v6, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v6));
    *a1.columns[3].f32 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(a1.columns[1], a1.columns[1], 8uLL), *a1.columns[2].f32), vext_s8(*a1.columns[2].f32, *&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), 4uLL)), vmul_f32(v7, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v7)).f32[0]);
  }

  else if (a1.columns[0].f32[0] < a1.columns[1].f32[1] || a1.columns[0].f32[0] < a1.columns[2].f32[2])
  {
    v3 = 1.0 - a1.columns[0].f32[0];
    if (a1.columns[1].f32[1] >= a1.columns[2].f32[2])
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[1].f32[1] + (v3 - a1.columns[2].f32[2]));
      a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
      v15 = vrecpe_f32(a1.columns[3].u32[0]);
      v16 = vmul_f32(v15, vrecps_f32(a1.columns[3].u32[0], v15));
      v17.i32[0] = vmul_f32(v16, vrecps_f32(a1.columns[3].u32[0], v16)).u32[0];
      v16.f32[0] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
      v16.i32[1] = a1.columns[3].i32[0];
      v17.i32[1] = 0.25;
      *a1.columns[3].f32 = vmul_f32(v16, v17);
    }

    else
    {
      a1.columns[3].f32[0] = sqrtf(a1.columns[2].f32[2] + (v3 - a1.columns[1].f32[1]));
      v4 = vrecpe_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]));
      v5 = vmul_f32(v4, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v4));
      *a1.columns[3].f32 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(a1.columns[0], a1.columns[0], 8uLL), *&vextq_s8(a1.columns[1], a1.columns[1], 8uLL)), *a1.columns[2].f32), vmul_f32(v5, vrecps_f32(COERCE_UNSIGNED_INT(a1.columns[3].f32[0] + a1.columns[3].f32[0]), v5)).f32[0]);
      __asm { FMOV            V0.2S, #0.25 }
    }
  }

  else
  {
    a1.columns[3].f32[0] = sqrtf(a1.columns[0].f32[0] + ((1.0 - a1.columns[1].f32[1]) - a1.columns[2].f32[2]));
    a1.columns[3].f32[0] = a1.columns[3].f32[0] + a1.columns[3].f32[0];
    v8 = vrecpe_f32(a1.columns[3].u32[0]);
    v9 = vmul_f32(v8, vrecps_f32(a1.columns[3].u32[0], v8));
    v10 = vmul_f32(v9, vrecps_f32(a1.columns[3].u32[0], v9)).u32[0];
    a1.columns[3].f32[1] = a1.columns[0].f32[1] + a1.columns[1].f32[0];
    __asm { FMOV            V5.2S, #0.25 }

    _D5.i32[1] = v10;
    *a1.columns[3].f32 = vmul_f32(*a1.columns[3].f32, _D5);
  }

  return *a1.columns[3].i64;
}

uint64_t sub_23A8D5068(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A8D50D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_23A8D5130(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8D5194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_23A8D52B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A8D5320(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23A8D5380()
{
  result = qword_27DFAEB48;
  if (!qword_27DFAEB48)
  {
    sub_23AA0C0E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFAEB48);
  }

  return result;
}

uint64_t sub_23A8D53D8@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v81 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v7 - 8);
  v78 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  *&v80 = &v74 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v74 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v74 - v15;
  v17 = type metadata accessor for ScanItemStrut(0);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v22 = &v74 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v74 - v24;
  MEMORY[0x28223BE20](v26);
  v79 = (&v74 - v27);
  MEMORY[0x28223BE20](v28);
  v32 = (&v74 - v31);
  if (fabsf(v81.n128_f32[0] + -1.0) >= 0.00000011921)
  {
    v74 = v29;
    v75 = v30;
    v76 = v18;
    v77 = a3;
    v34 = *(v18 + 48);
    if (v34(a1, 1, v17) == 1)
    {
      sub_23A8D6CA0(a2, v16);
      if (v34(v16, 1, v17) != 1)
      {
        sub_23A8D6D78(v16, v25);
        v80 = *v25;
        v42 = *(v25 + 8);
        v43 = *(v25 + 16);
        v44 = *(v25 + 6);
        v45 = *(v17 + 44);
        v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB40, &qword_23AA11B70);
        (*(*(v46 - 8) + 56))(v32 + v45, 1, 1, v46);
        *v32->f32 = v80;
        v32[2] = v43;
        v32[3].i32[0] = v44;
        v32[4] = v42;
        v32[5] = v43;
        v32[6].i32[0] = v44;
        v41 = v79;
        sub_23A8D6D78(v25, v79);
        goto LABEL_13;
      }

      sub_23A8D6D10(v16);
    }

    sub_23A8D6CA0(a1, v13);
    if (v34(v13, 1, v17) == 1)
    {
      sub_23A8D6D10(v13);
LABEL_16:
      v64 = v80;
      sub_23A8D6CA0(a1, v80);
      if (v34(v64, 1, v17) == 1)
      {
        v65 = v64;
LABEL_20:
        v68 = v76;
        sub_23A8D6D10(v65);
        return (*(v68 + 56))(v77, 1, 1, v17);
      }

      v66 = v75;
      sub_23A8D6D78(v64, v75);
      v67 = a2;
      v65 = v78;
      sub_23A8D6CA0(v67, v78);
      if (v34(v65, 1, v17) == 1)
      {
        sub_23A8D6DDC(v66);
        goto LABEL_20;
      }

      v69 = v74;
      sub_23A8D6D78(v65, v74);
      v70 = sub_23A8E9A6C(v69, 0.0001);
      v48 = v76;
      if (v70)
      {
        sub_23A8D6DDC(v66);
        v71 = v69;
        v72 = v77;
        sub_23A8D6D78(v71, v77);
        return (*(v48 + 56))(v72, 0, 1, v17);
      }

      sub_23A8D6D78(v66, v32);
      v73 = v69;
      v41 = v79;
      sub_23A8D6D78(v73, v79);
      v47 = v77;
LABEL_14:
      v49 = vadd_f32(*v32, vmul_n_f32(vsub_f32(*v41, *v32), v81.n128_f32[0]));
      sub_23A8D6E38(v32[1], v41[1], v81.n128_f32[0]);
      v51 = v50;
      sub_23A8D6E38(v32[2], v41[2], v81.n128_f32[0]);
      v53 = v52;
      v54 = v32[3].f32[0] + ((v41[3].f32[0] - v32[3].f32[0]) * v81.n128_f32[0]);
      sub_23A8D6E38(v32[4], v41[4], v81.n128_f32[0]);
      v56 = v55;
      sub_23A8D6E38(v32[5], v41[5], v81.n128_f32[0]);
      v58 = v57;
      v59 = v32[6].f32[0];
      sub_23A8D6DDC(v32);
      v60 = v41[6].f32[0];
      sub_23A8D6DDC(v41);
      v61 = v59 + ((v60 - v59) * v81.n128_f32[0]);
      v62 = *(v17 + 44);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB40, &qword_23AA11B70);
      (*(*(v63 - 8) + 56))(v47 + v62, 1, 1, v63);
      *v47 = v49;
      *(v47 + 8) = v51;
      *(v47 + 16) = v53;
      *(v47 + 24) = v54;
      *(v47 + 32) = v56;
      *(v47 + 40) = v58;
      *(v47 + 48) = v61;
      return (*(v48 + 56))(v47, 0, 1, v17);
    }

    sub_23A8D6D78(v13, v22);
    if (v34(a2, 1, v17) != 1)
    {
      sub_23A8D6DDC(v22);
      goto LABEL_16;
    }

    sub_23A8D6F28(v22, v32);
    v80 = *v22;
    v35 = *(v22 + 8);
    v36 = *(v22 + 16);
    v37 = *(v22 + 6);
    sub_23A8D6DDC(v22);
    v38 = *(v17 + 44);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB40, &qword_23AA11B70);
    v40 = v79 + v38;
    v41 = v79;
    (*(*(v39 - 8) + 56))(v40, 1, 1, v39);
    *v41->f32 = v80;
    v41[2] = v36;
    v41[3].i32[0] = v37;
    v41[4] = v35;
    v41[5] = v36;
    v41[6].i32[0] = v37;
LABEL_13:
    v48 = v76;
    v47 = v77;
    goto LABEL_14;
  }

  return sub_23A8D6CA0(a2, a3);
}

uint64_t sub_23A8D5AC4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0A20, &unk_23AA122D0);
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v18 - v5;
  v19 = sub_23AA0CE84();
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23AA0BC74();
  v10 = sub_23AA0BC54();
  v11 = sub_23AA0BC54();
  sub_23A8D6C58(0, &qword_27DFAEB50, 0x277CCADA8);
  v12 = sub_23AA0D634();

  if (v12)
  {
    sub_23AA0BC74();
  }

  else
  {
    v18 = a1;
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v13 = sub_23AA0CE54();
    v14 = sub_23AA0D494();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_23A8B4000, v13, v14, "startAngle unit is different than endAngle unit", v15, 2u);
      MEMORY[0x23EE91710](v15, -1, -1);
    }

    (*(v7 + 8))(v9, v19);
    v16 = sub_23AA0BC54();
    sub_23AA0BC84();

    sub_23AA0BC74();
    (*(v20 + 8))(v6, v4);
  }

  sub_23AA0BC54();
  return sub_23AA0BC64();
}

void *sub_23A8D5E28(uint64_t a1, void *a2, float a3)
{
  isUniquelyReferenced_nonNull_native = sub_23AA0CE84();
  v7 = *(isUniquelyReferenced_nonNull_native - 8);
  MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
  v9 = &v79[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v79[-v11];
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v18 = &v79[-v17];
  if (!*(a1 + 16) || !a2[2])
  {
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v22 = sub_23AA0CE54();
    v23 = sub_23AA0D494();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_23A8B4000, v22, v23, "Edge is empty", v24, 2u);
      MEMORY[0x23EE91710](v24, -1, -1);
    }

    (v7[1])(v9, isUniquelyReferenced_nonNull_native);
    return sub_23A9DC9E0(MEMORY[0x277D84F90]);
  }

  v87 = a2;
  if (fabsf(a3 + -1.0) < 0.0001)
  {
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
LABEL_42:
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v19 = sub_23AA0CE54();
    v20 = sub_23AA0D494();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23A8B4000, v19, v20, "Should not interpolate edges with a 1.0 percentage", v21, 2u);
      MEMORY[0x23EE91710](v21, -1, -1);
    }

    (v7[1])(v18, isUniquelyReferenced_nonNull_native);
    v7 = v87;

    return v7;
  }

  v82 = v15;
  v26 = 0;
  v27 = &unk_284D80470;
  v28 = (v7 + 1);
  v7 = MEMORY[0x277D84F98];
  v88 = v28;
  *&v16 = 136315138;
  v85 = v16;
  v86 = isUniquelyReferenced_nonNull_native;
  v83 = v12;
  while (1)
  {
    v18 = v27[v26 + 32];
    if (!*(a1 + 16) || (v29 = sub_23A9F573C(v27[v26 + 32]), (v30 & 1) == 0))
    {
      sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
      if (qword_27DFAE3A0 != -1)
      {
        swift_once();
      }

      sub_23AA0D644();
      sub_23AA0CE94();
      v51 = sub_23AA0CE54();
      v52 = sub_23AA0D494();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = v27;
        v55 = a1;
        v56 = v7;
        v57 = swift_slowAlloc();
        v97 = v57;
        *v53 = v85;
        LOBYTE(v93) = v18;
        v58 = sub_23AA0D1A4();
        v60 = sub_23A9A65A4(v58, v59, &v97);

        *(v53 + 4) = v60;
        isUniquelyReferenced_nonNull_native = v86;
        _os_log_impl(&dword_23A8B4000, v51, v52, "Missing edge on %s side", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v57);
        v61 = v57;
        v7 = v56;
        a1 = v55;
        v27 = v54;
        v12 = v83;
        MEMORY[0x23EE91710](v61, -1, -1);
        MEMORY[0x23EE91710](v53, -1, -1);
      }

      (*v88)(v12, isUniquelyReferenced_nonNull_native);
      goto LABEL_16;
    }

    if (!v87[2] || (v31 = *(a1 + 56) + 40 * v29, v32 = *v31, v33 = *(v31 + 8), v84 = *(v31 + 16), v34 = *(v31 + 32), v35 = sub_23A9F573C(v18), (v37 & 1) == 0))
    {
      *&v84 = v7;
      sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
      if (qword_27DFAE3A0 != -1)
      {
        swift_once();
      }

      sub_23AA0D644();
      v62 = v82;
      sub_23AA0CE94();
      v63 = sub_23AA0CE54();
      v64 = sub_23AA0D494();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v97 = v66;
        *v65 = v85;
        LOBYTE(v93) = v18;
        v67 = sub_23AA0D1A4();
        v69 = sub_23A9A65A4(v67, v68, &v97);

        *(v65 + 4) = v69;
        _os_log_impl(&dword_23A8B4000, v63, v64, "Missing edge on %s side", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v66);
        v70 = v66;
        isUniquelyReferenced_nonNull_native = v86;
        MEMORY[0x23EE91710](v70, -1, -1);
        MEMORY[0x23EE91710](v65, -1, -1);
      }

      (*v88)(v62, isUniquelyReferenced_nonNull_native);
      v27 = &unk_284D80470;
      v7 = v84;
      goto LABEL_16;
    }

    v38 = v87[7] + 40 * v35;
    v39 = *v38;
    v40 = *(v38 + 8);
    v36.n128_u32[0] = *(v38 + 32);
    v93 = v32;
    v94 = v33;
    v95 = v84;
    v96 = v34;
    v89 = v39;
    v90 = v40;
    v91 = *(v38 + 16);
    v92 = v36.n128_u32[0];
    v36.n128_f32[0] = a3;
    sub_23A8D67AC(&v93, &v89, &v97, v36);
    v41 = v97;
    v80 = v98;
    v81 = v99;
    *&v84 = v100;
    v42 = v101;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v93 = v7;
    v44 = sub_23A9F573C(v18);
    v45 = v7;
    v46 = v7[2];
    v47 = (v43 & 1) == 0;
    v48 = v46 + v47;
    if (__OFADD__(v46, v47))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v7 = v43;
    if (v45[3] < v48)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_23A90DEE0();
    }

LABEL_36:
    isUniquelyReferenced_nonNull_native = v86;
    v71 = v93;
    if (v7)
    {
      v72 = v93[7] + 40 * v44;
      *v72 = v41;
      *(v72 + 8) = v80;
      v73 = v84;
      *(v72 + 16) = v81;
      *(v72 + 24) = v73;
      *(v72 + 32) = v42;

      v7 = v71;
    }

    else
    {
      v93[(v44 >> 6) + 8] |= 1 << v44;
      *(v71[6] + v44) = v18;
      v74 = v71[7] + 40 * v44;
      *v74 = v41;
      *(v74 + 8) = v80;
      v75 = v84;
      *(v74 + 16) = v81;
      *(v74 + 24) = v75;
      *(v74 + 32) = v42;
      v76 = v71[2];
      v77 = __OFADD__(v76, 1);
      v78 = v76 + 1;
      if (v77)
      {
        goto LABEL_41;
      }

      v7 = v71;
      v71[2] = v78;
    }

LABEL_16:
    if (++v26 == 4)
    {
      return v7;
    }
  }

  sub_23A9083AC(v48, isUniquelyReferenced_nonNull_native);
  v49 = sub_23A9F573C(v18);
  if ((v7 & 1) == (v50 & 1))
  {
    v44 = v49;
    goto LABEL_36;
  }

  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

void sub_23A8D67AC(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v47 = a4;
  v48.i64[0] = sub_23AA0CE84();
  MEMORY[0x28223BE20](v48.i64[0]);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = *a2;
  v12 = *(*a1 + 16);
  if (v12 == *(*a2 + 16))
  {
    v13 = a1[8];
    v14 = MEMORY[0x277D84F90];
    if (v12)
    {
      v14 = sub_23A9388A8(0, 1, 1, MEMORY[0x277D84F90]);
      v15 = v10 + 2;
      v16 = v11 + 2;
      v17 = *(v14 + 2);
      v18 = v47.n128_f32[0];
      do
      {
        v19 = *v15;
        v20 = *v16;
        v21 = *(v14 + 3);
        if (v17 >= v21 >> 1)
        {
          v48 = *v15;
          v46 = v20;
          v24 = sub_23A9388A8((v21 > 1), v17 + 1, 1, v14);
          v20 = v46;
          v18 = v47.n128_f32[0];
          v19 = v48;
          v14 = v24;
        }

        v22 = vsubq_f32(v20, v19);
        v23 = vmuls_lane_f32(v18, v22, 2);
        v22.i64[0] = vaddq_f32(v19, vmulq_n_f32(v22, v18)).u64[0];
        v22.f32[2] = v19.f32[2] + v23;
        v22.i32[3] = 0;
        *(v14 + 2) = v17 + 1;
        *&v14[16 * v17 + 32] = v22;
        ++v16;
        ++v15;
        ++v17;
        --v12;
      }

      while (v12);
    }

    v49 = v13;
    sub_23A965154(v14, &v49, a3);
  }

  else
  {
    v46.i64[0] = a3;
    v47.n128_u64[0] = v7;
    v45 = *(a2 + 8);
    v26 = *(a2 + 16);
    v25 = *(a2 + 24);
    v27 = *(a2 + 32);
    sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();

    v28 = sub_23AA0CE54();
    v29 = sub_23AA0D494();

    v30 = v26;
    if (os_log_type_enabled(v28, v29))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v50 = v32;
      *v31 = 136315394;
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0940, &qword_23AA15CF0);
      v44 = v25;
      v34 = v26;
      v35 = v33;
      v36 = MEMORY[0x23EE8FDA0](v10, v33);
      v38 = sub_23A9A65A4(v36, v37, &v50);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2080;
      v39 = MEMORY[0x23EE8FDA0](v11, v35);
      v41 = sub_23A9A65A4(v39, v40, &v50);
      v30 = v34;
      v25 = v44;

      *(v31 + 14) = v41;
      _os_log_impl(&dword_23A8B4000, v28, v29, "from and to edges for interpolation have a different number of points (from: %s, to: %s)", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EE91710](v32, -1, -1);
      MEMORY[0x23EE91710](v31, -1, -1);
    }

    (*(v47.n128_u64[0] + 8))(v9, v48.i64[0]);
    v42 = v46.i64[0];
    v43 = v45;
    *v46.i64[0] = v11;
    *(v42 + 8) = v43;
    *(v42 + 16) = v30;
    *(v42 + 24) = v25;
    *(v42 + 32) = v27;
  }
}

uint64_t sub_23A8D6C58(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23A8D6CA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8D6D10(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A8D6D78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScanItemStrut(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8D6DDC(uint64_t a1)
{
  v2 = type metadata accessor for ScanItemStrut(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23A8D6E38(float32x2_t a1, float32x2_t a2, float a3)
{
  v5 = vmul_f32(a1, a2);
  v6 = vmul_f32(a1, a1);
  v7 = vmul_f32(a2, a2);
  v8 = vsqrt_f32(vadd_f32(vzip1_s32(v6, v7), vzip2_s32(v6, v7)));
  v9 = vdiv_f32(vadd_f32(v5, vdup_lane_s32(v5, 1)), vmul_lane_f32(v8, v8, 1)).f32[0];
  if (v9 < 0.0)
  {
    v9 = 0.0;
  }

  v10 = acosf(fminf(v9, 1.0));
  if (fabsf(sinf(v10)) >= 0.00000011921)
  {
    sinf((1.0 - a3) * v10);
    sinf(v10 * a3);
  }
}

uint64_t sub_23A8D6F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScanItemStrut(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8D7080()
{
  type metadata accessor for WallPerimeterManager();
  v0 = swift_allocObject();
  type metadata accessor for HullUtility();
  result = swift_allocObject();
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  qword_27DFC04B8 = v0;
  return result;
}

uint64_t sub_23A8D70DC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A8D7138(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v62 - v9;
  v77 = sub_23AA0C0E4();
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = type metadata accessor for CapturedRoom.Surface(0);
  v13 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v15 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v20, a1, a3, v18);
  v83 = MEMORY[0x277D84F90];
  v21 = *(a4 + 24);
  v64 = v20;
  result = v21(a3, a4);
  v23 = result;
  v69 = *(result + 16);
  if (v69)
  {
    v62 = v16;
    v63 = a3;
    v24 = 0;
    v74 = result + ((*(v13 + 80) + 32) & ~*(v13 + 80));
    v81 = (v11 + 16);
    v25 = (v11 + 32);
    v26 = MEMORY[0x277D84F90];
    v75 = xmmword_23AA11BB0;
    v27 = v69;
    v67 = a2;
    v66 = v13;
    v65 = result;
    while (v24 < *(v23 + 16))
    {
      sub_23A8D7948(v74 + *(v13 + 72) * v24, v15);
      v28 = *(v15 + 1);
      v29 = COERCE_FLOAT(*(v15 + 3));
      v30 = v29 > 0.0 && (a2 & 2) == 0;
      if (v30 || (v29 == 0.0 ? (v31 = (a2 & 1) == 0) : (v31 = 0), v31))
      {
        result = sub_23A8D7A84(v15);
      }

      else
      {
        v73 = v24;
        v80 = v29 > 0.0;
        v32 = *(v15 + 3);
        v78 = *(v15 + 2);
        v72 = v32;
        v79 = *(v15 + 5);
        *(&v33 + 1) = v79.i64[1];
        *&v33 = vmul_f32(*&v28, COERCE_FLOAT32X2_T(-0.0000305175853));
        v71 = v33;
        v34 = vextq_s8(v32, v32, 8uLL);
        *v34.i8 = vmul_f32(*&v33, vzip1_s32(*&vextq_s8(v78, v78, 8uLL), *v34.i8));
        v70 = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
        v35 = swift_allocObject();
        v36 = 0;
        v37 = 0;
        v38 = *&v79.i32[2];
        v39 = *v70.i32;
        v40 = vmul_lane_f32(*v72.i8, *&v71, 1);
        v41 = vmul_n_f32(*v78.i8, *&v71);
        v42 = *v79.i8;
        *&v43 = vadd_f32(v40, vsub_f32(*v79.i8, v41));
        v44 = *&v70.i32[1];
        *(&v43 + 2) = *&v70.i32[1] + (*&v79.i32[2] - *v70.i32);
        HIDWORD(v43) = 0;
        *(v35 + 32) = v43;
        v45 = v35 + 32;
        *&v46 = vadd_f32(v40, vadd_f32(v41, v42));
        *(&v46 + 1) = COERCE_UNSIGNED_INT(v44 + (v39 + v38));
        v72.i64[0] = v35;
        *(v35 + 48) = v46;
        v79.i64[0] = *(v68 + 44);
        v78.i64[0] = *(v68 + 52);
        v47 = *v81;
        do
        {
          v48 = v36;
          v49 = (v45 + 16 * v37);
          v50 = *vld2_f32(v49).val;
          v52 = v76;
          v51 = v77;
          v47(v76, &v15[v79.i64[0]], v77);
          sub_23A8D79AC(&v15[v78.i64[0]], v10);
          v53 = type metadata accessor for CapturedRoom.Surface.Curve(0);
          v54 = (*(*(v53 - 8) + 48))(v10, 1, v53) != 1;
          sub_23A8D7A1C(v10);
          type metadata accessor for HullPointUUID(0);
          v55 = swift_allocObject();
          (*v25)(v55 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v52, v51);
          *(v55 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type) = v54;
          *(v55 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness) = v80;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
          inited = swift_initStackObject();
          *(inited + 16) = v75;
          *(inited + 32) = v55;

          sub_23A9A6B4C(inited);
          v58 = v57;
          swift_setDeallocating();
          swift_arrayDestroy();
          v59 = type metadata accessor for HullPoint();
          v60 = objc_allocWithZone(v59);
          *&v60[OBJC_IVAR____TtC8RoomPlan9HullPoint_position] = v50;
          *&v60[OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids] = v58;
          v82.receiver = v60;
          v82.super_class = v59;
          v61 = objc_msgSendSuper2(&v82, sel_init);
          MEMORY[0x23EE8FD70]();
          if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();

          v36 = 1;
          v37 = 1;
        }

        while ((v48 & 1) == 0);
        v26 = v83;
        sub_23A8D7A84(v15);
        swift_setDeallocating();
        result = swift_deallocClassInstance();
        LOBYTE(a2) = v67;
        v13 = v66;
        v23 = v65;
        v27 = v69;
        v24 = v73;
      }

      if (++v24 == v27)
      {

        a3 = v63;
        v16 = v62;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {

    v26 = MEMORY[0x277D84F90];
LABEL_21:
    (*(v16 + 8))(v64, a3);
    return v26;
  }

  return result;
}

unint64_t sub_23A8D7840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v6);
  v9 = sub_23A8D7138(v8, 3, a2, a3);
  v10 = sub_23A9E427C(v9);

  (*(v5 + 8))(v8, a2);
  return v10;
}

uint64_t sub_23A8D7948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CapturedRoom.Surface(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8D79AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23A8D7A1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23A8D7A84(uint64_t a1)
{
  v2 = type metadata accessor for CapturedRoom.Surface(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_23A8D7AE0()
{
  if (*(v0 + 16))
  {
    v7 = 0;
    sub_23AA0D8A4();
    MEMORY[0x23EE8FCA0](0xD000000000000027, 0x800000023AA1DAE0);
    v1 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v1);

    MEMORY[0x23EE8FCA0](0xD000000000000011, 0x800000023AA1DB10);
    v2 = sub_23AA0DBB4();
    MEMORY[0x23EE8FCA0](v2);

    v3 = 41;
    v4 = 0xE100000000000000;
  }

  else
  {
    sub_23AA0D8A4();

    v7 = 0xD000000000000013;
    v5 = sub_23AA0D1A4();
    MEMORY[0x23EE8FCA0](v5);

    v3 = 0x6564697320;
    v4 = 0xE500000000000000;
  }

  MEMORY[0x23EE8FCA0](v3, v4);
  return v7;
}

int64_t sub_23A8D7CF0()
{
  v49 = sub_23AA0C0E4();
  v1 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  MEMORY[0x28223BE20](v47);
  v50 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v39 = &v34 - v7;
  v48 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type);
  v9 = MEMORY[0x277D84F90];
  if (v8 != 2)
  {
    return v9;
  }

  v37 = v6;
  if (qword_27DFAE368 != -1)
  {
LABEL_25:
    swift_once();
  }

  v10 = qword_27DFC04B0;
  swift_beginAccess();
  v11 = *(v10 + 24);
  v13 = v11 + 64;
  v12 = *(v11 + 64);
  v51 = v9;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v9 = (v14 + 63) >> 6;
  v43 = (v1 + 16);
  v44 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
  v41 = (v1 + 48);
  v42 = (v1 + 56);
  v34 = (v1 + 32);
  v38 = (v1 + 8);
  v46 = v11;

  v17 = 0;
  v18 = &unk_27DFB0970;
  v19 = v39;
  v45 = v13;
  v40 = v9;
  while (v16)
  {
LABEL_14:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = *(*(v46 + 56) + ((v17 << 9) | (8 * v21)));
    v23 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
    v1 = v49;
    (*v43)(v19, v48 + v44, v49);
    (*v42)(v19, 0, 1, v1);
    v24 = *(v47 + 48);
    v25 = v50;
    sub_23A8D5194(v22 + v23, v50, v18, &qword_23AA14E00);
    sub_23A8D5194(v19, v25 + v24, v18, &qword_23AA14E00);
    v26 = v18;
    v27 = *v41;
    if ((*v41)(v25, 1, v1) == 1)
    {

      sub_23A8D50D0(v19, v18, &qword_23AA14E00);
      if (v27(v50 + v24, 1, v49) != 1)
      {

LABEL_7:
        v13 = v45;
        sub_23A8D50D0(v50, &qword_27DFAEC28, &unk_23AA1AA40);
        goto LABEL_8;
      }

      sub_23A8D50D0(v50, v18, &qword_23AA14E00);
      v13 = v45;
LABEL_20:
      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      goto LABEL_8;
    }

    v28 = v49;
    v29 = v50;
    v1 = v37;
    sub_23A8D5194(v50, v37, v18, &qword_23AA14E00);
    if (v27(v29 + v24, 1, v28) == 1)
    {
      v19 = v39;
      sub_23A8D50D0(v39, v18, &qword_23AA14E00);
      (*v38)(v1, v28);
      goto LABEL_7;
    }

    v30 = v36;
    (*v34)(v36, v29 + v24, v28);
    sub_23A8DE390();

    v35 = sub_23AA0D084();
    v31 = *v38;
    (*v38)(v30, v28);
    v32 = v39;
    sub_23A8D50D0(v39, v26, &qword_23AA14E00);
    v31(v1, v28);
    sub_23A8D50D0(v50, v26, &qword_23AA14E00);
    v19 = v32;
    v18 = v26;
    v13 = v45;
    if (v35)
    {
      goto LABEL_20;
    }

LABEL_8:
    v9 = v40;
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v20 >= v9)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v17;
    if (v16)
    {
      v17 = v20;
      goto LABEL_14;
    }
  }

  return v51;
}

int64_t sub_23A8D8288()
{
  v49 = sub_23AA0C0E4();
  v1 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v36 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEC28, &unk_23AA1AA40);
  MEMORY[0x28223BE20](v47);
  v50 = &v34 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFB0970, &qword_23AA14E00);
  MEMORY[0x28223BE20](v4 - 8);
  MEMORY[0x28223BE20](v5);
  v39 = &v34 - v7;
  v48 = v0;
  v8 = *(v0 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type);
  v9 = MEMORY[0x277D84F90];
  if (v8 != 3)
  {
    return v9;
  }

  v37 = v6;
  if (qword_27DFAE368 != -1)
  {
LABEL_25:
    swift_once();
  }

  v10 = qword_27DFC04B0;
  swift_beginAccess();
  v11 = *(v10 + 24);
  v13 = v11 + 64;
  v12 = *(v11 + 64);
  v51 = v9;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v12;
  v9 = (v14 + 63) >> 6;
  v43 = (v1 + 16);
  v44 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
  v41 = (v1 + 48);
  v42 = (v1 + 56);
  v34 = (v1 + 32);
  v38 = (v1 + 8);
  v46 = v11;

  v17 = 0;
  v18 = &unk_27DFB0970;
  v19 = v39;
  v45 = v13;
  v40 = v9;
  while (v16)
  {
LABEL_14:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v22 = *(*(v46 + 56) + ((v17 << 9) | (8 * v21)));
    v23 = OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID;
    v1 = v49;
    (*v43)(v19, v48 + v44, v49);
    (*v42)(v19, 0, 1, v1);
    v24 = *(v47 + 48);
    v25 = v50;
    sub_23A8D5194(v22 + v23, v50, v18, &qword_23AA14E00);
    sub_23A8D5194(v19, v25 + v24, v18, &qword_23AA14E00);
    v26 = v18;
    v27 = *v41;
    if ((*v41)(v25, 1, v1) == 1)
    {

      sub_23A8D50D0(v19, v18, &qword_23AA14E00);
      if (v27(v50 + v24, 1, v49) != 1)
      {

LABEL_7:
        v13 = v45;
        sub_23A8D50D0(v50, &qword_27DFAEC28, &unk_23AA1AA40);
        goto LABEL_8;
      }

      sub_23A8D50D0(v50, v18, &qword_23AA14E00);
      v13 = v45;
LABEL_20:
      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      goto LABEL_8;
    }

    v28 = v49;
    v29 = v50;
    v1 = v37;
    sub_23A8D5194(v50, v37, v18, &qword_23AA14E00);
    if (v27(v29 + v24, 1, v28) == 1)
    {
      v19 = v39;
      sub_23A8D50D0(v39, v18, &qword_23AA14E00);
      (*v38)(v1, v28);
      goto LABEL_7;
    }

    v30 = v36;
    (*v34)(v36, v29 + v24, v28);
    sub_23A8DE390();

    v35 = sub_23AA0D084();
    v31 = *v38;
    (*v38)(v30, v28);
    v32 = v39;
    sub_23A8D50D0(v39, v26, &qword_23AA14E00);
    v31(v1, v28);
    sub_23A8D50D0(v50, v26, &qword_23AA14E00);
    v19 = v32;
    v18 = v26;
    v13 = v45;
    if (v35)
    {
      goto LABEL_20;
    }

LABEL_8:
    v9 = v40;
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v20 >= v9)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v17;
    if (v16)
    {
      v17 = v20;
      goto LABEL_14;
    }
  }

  return v51;
}

uint64_t sub_23A8D8820(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, float32x4_t a9, int8x16_t a10, int8x16_t a11, simd_float4 a12, __n128 a13, __n128 a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  v19 = v18;
  v163 = a8;
  v164 = a6;
  v165 = a7;
  v205 = a5;
  v160 = a4;
  v197 = a3;
  v161 = a14;
  v206 = a13;
  v202 = a12;
  v203 = a10;
  v204 = a11;
  v195 = a9;
  v200 = a2;
  v201 = a1;
  v159 = a18;
  v198 = a17;
  v199 = a16;
  v162 = a15;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF030, &qword_23AA11B48);
  MEMORY[0x28223BE20](v20 - 8);
  v184 = v152 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v22 - 8);
  v183 = v152 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v178 = v152 - v25;
  MEMORY[0x28223BE20](v26);
  v177 = v152 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB38, &unk_23AA11B60);
  MEMORY[0x28223BE20](v28 - 8);
  v175 = v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v196.i64[0] = v152 - v31;
  MEMORY[0x28223BE20](v32);
  v171 = v152 - v33;
  MEMORY[0x28223BE20](v34);
  v190 = v152 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB30, &unk_23AA11B50);
  MEMORY[0x28223BE20](v36 - 8);
  v169 = v152 - v37;
  v38 = sub_23AA0C064();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v166 = v152 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_23AA0CE84();
  v187 = *(v41 - 8);
  v188 = v41;
  MEMORY[0x28223BE20](v41);
  v191 = v152 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x28223BE20](v43);
  v155 = v152 - v45;
  v167 = v39;
  v168 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
  v46 = *(v39 + 56);
  v46(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime, 1, 1, v38, v44);
  v189 = v38;
  v152[0] = v46;
  v152[1] = v39 + 56;
  (v46)(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_fadeOutAnimationTime, 1, 1, v38);
  v47 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
  v48 = type metadata accessor for CapturedRoom.Surface.Curve(0);
  v49 = *(v48 - 8);
  v192 = v47;
  v193 = v49;
  v51 = v49 + 56;
  v50 = *(v49 + 56);
  v50(v19 + v47, 1, 1, v48);
  v176 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation) = xmmword_23AA11AE0;
  v172 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
  v50(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, 1, 1, v48);
  v52 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
  v53 = type metadata accessor for ScanItemStrut(0);
  v54 = *(v53 - 8);
  v55 = *(v54 + 56);
  v56 = v54 + 56;
  v173 = v52;
  v55(v19 + v52, 1, 1, v53);
  v174 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
  v55(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, 1, 1, v53);
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = 4;
  v57 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
  v58 = type metadata accessor for AnimationGraph(0);
  v179 = *(v58 - 8);
  v59 = *(v179 + 56);
  v182 = v58;
  v153 = v59;
  v154 = v179 + 56;
  (v59)(v19 + v57, 1, 1);
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_floorExtensionFactor) = 1065982362;
  v60 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides) = 12;
  v61 = OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners) = 0;
  v170 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve;
  v50(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationCurve, 1, 1, v48);
  v50(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve, 1, 1, v48);
  v55(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut, 1, 1, v53);
  v55(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut, 1, 1, v53);
  v62 = (v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseDimensions);
  *v62 = 0;
  v62[1] = 0;
  v194 = v48;
  v185 = v50;
  v186 = v51;
  v50(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseCurve, 1, 1, v48);
  v63 = v159;
  v55(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseLeftStrut, 1, 1, v53);
  v157 = v55;
  v158 = v53;
  v156 = v56;
  v55(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_currentRawDollhouseRightStrut, 1, 1, v53);
  v64 = OBJC_IVAR____TtC8RoomPlan8ScanItem_uuid;
  v65 = sub_23AA0C0E4();
  v180 = *(v65 - 8);
  v181 = v65;
  (*(v180 + 16))(v19 + v64, v201);
  sub_23A8D5194(v200, v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_parentUUID, &unk_27DFB0970, &qword_23AA14E00);
  v66 = v160;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_type) = v197;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_category) = v66;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_color) = v161;
  *(v19 + v60) = v163 | 0xC;
  if (v63)
  {
    v67 = *(v63 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners);
  }

  else
  {
    v67 = 0;
  }

  v68 = v67 | v162;
  v69 = v189;
  v70 = v190;
  v71 = v192;
  v73 = v164;
  v72 = v165;
  if (v66 == 20)
  {
    v74 = (v68 >> 1) & 0x11 | (2 * v68) & 0x88;
    goto LABEL_8;
  }

  if (v66 == 18)
  {
    v74 = 16 * (v68 & 0xF);
LABEL_8:
    *(v19 + v61) = v74 | v68;
    goto LABEL_11;
  }

  *(v19 + v61) = v68;
  if (!v66)
  {
    v75.i64[0] = vmulq_f32(v195, vdupq_n_s32(0x3F89999Au)).u64[0];
    v75.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.075, v195, 2));
    v195 = v75;
  }

LABEL_11:
  v76 = v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawTransform;
  v77 = v204;
  *v76 = v203;
  *(v76 + 16) = v77;
  v78 = v206;
  *(v76 + 32) = v202;
  *(v76 + 48) = v78;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawDimensions) = v195;
  sub_23A8D5194(v205, v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawCurve, &qword_27DFAEB38, &unk_23AA11B60);
  sub_23A8D5194(v199, v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawLeftStrut, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D5194(v198, v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawRightStrut, &unk_27DFAF020, &unk_23AA12300);
  v79 = sub_23A8DE3E8(v72, v73);

  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges) = v79;

  v80 = v166;
  sub_23AA0C044();
  (*(v167 + 32))(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_bodyStartTime, v80, v69);
  if (v63)
  {
    v81 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationTime;
    swift_beginAccess();
    v82 = v63 + v81;
    v83 = v169;
    sub_23A8D5194(v82, v169, &qword_27DFAEB30, &unk_23AA11B50);
  }

  else
  {
    v83 = v169;
    (v152[0])(v169, 1, 1, v69);
  }

  v190 = 0;
  v84 = v168;
  swift_beginAccess();
  sub_23A8D5068(v83, v19 + v84, &qword_27DFAEB30, &unk_23AA11B50);
  swift_endAccess();
  if (v63)
  {
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = *(v63 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
    v85 = (v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = *(v63 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
    v86 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceCurve;
    swift_beginAccess();
    v87 = v171;
    sub_23A8D5194(v63 + v86, v171, &qword_27DFAEB38, &unk_23AA11B60);
    v88 = v194;
    v89 = *(v193 + 48);
    if (v89(v87, 1, v194) != 1)
    {
      sub_23A8D5130(v87, v70);
      v185(v70, 0, 1, v88);
      goto LABEL_20;
    }
  }

  else
  {
    v90 = v206;
    v90.n128_u32[3] = 0;
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition) = v90;
    v85 = (v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions);
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions) = v195;
    v87 = v171;
    v88 = v194;
    v185(v171, 1, 1, v194);
  }

  sub_23A8D5194(v205, v70, &qword_27DFAEB38, &unk_23AA11B60);
  v89 = *(v193 + 48);
  if (v89(v87, 1, v88) != 1)
  {
    sub_23A8D50D0(v87, &qword_27DFAEB38, &unk_23AA11B60);
  }

LABEL_20:
  swift_beginAccess();
  sub_23A8D5068(v70, v19 + v71, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  if (v63)
  {
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = *(v63 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
    v91 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
  }

  else
  {
    v210.columns[0] = v203;
    v210.columns[1] = v204;
    v210.columns[2] = v202;
    v210.columns[3] = v206;
    *&v93 = simd_quaternion(v210);
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation) = v93;

    v91 = OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceScanItemEdges;
  }

  *(v19 + v91) = v92;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationPosition) = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpacePosition);
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationDimensions) = *v85;
  v94 = v196.i64[0];
  sub_23A8D5194(v19 + v71, v196.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
  v95 = v170;
  swift_beginAccess();
  sub_23A8D5068(v94, v19 + v95, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialWorldAnimationOrientation) = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceOrientation);
  if (v63)
  {
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions) = *(v63 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
    v96 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve;
    swift_beginAccess();
    v97 = v63 + v96;
    v98 = v175;
    sub_23A8D5194(v97, v175, &qword_27DFAEB38, &unk_23AA11B60);
  }

  else
  {
    v99 = (v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
    *v99 = 0;
    v99[1] = 0;
    v98 = v175;
    v185(v175, 1, 1, v194);
  }

  v100 = v172;
  swift_beginAccess();
  sub_23A8D5068(v98, v19 + v100, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  if (v63)
  {
    v101 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut;
    swift_beginAccess();
    v102 = v63 + v101;
    v103 = v177;
    sub_23A8D5194(v102, v177, &unk_27DFAF020, &unk_23AA12300);
  }

  else
  {
    v103 = v177;
    v157(v177, 1, 1, v158);
  }

  v104 = v173;
  swift_beginAccess();
  sub_23A8D5068(v103, v19 + v104, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  if (v63)
  {
    v105 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut;
    swift_beginAccess();
    v106 = v63 + v105;
    v107 = v178;
    sub_23A8D5194(v106, v178, &unk_27DFAF020, &unk_23AA12300);
  }

  else
  {
    v107 = v178;
    v157(v178, 1, 1, v158);
  }

  v108 = v174;
  swift_beginAccess();
  sub_23A8D5068(v107, v19 + v108, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  if (v63)
  {
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = *(v63 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
    *(v19 + v176) = *(v63 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
    v109 = *(v63 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges);

    v79 = v109;
  }

  else
  {
    v111 = (v89)(v205, 1, v194);
    v111.i32[0] = v112;
    v113.i32[0] = 1;
    v114 = vdupq_lane_s32(*&vceqq_s32(v111, v113), 0);
    v211.columns[3] = v206;
    v115 = v206;
    v115.i32[3] = 0;
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition) = vbicq_s8(v115, v114);
    v211.columns[0] = v203;
    v211.columns[1] = v204;
    v211.columns[2] = v202;
    *&v116 = simd_quaternion(v211);
    *(v19 + v176) = v116;
  }

  v117 = v191;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseScanItemEdges) = v79;
  v118 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationPosition) = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhousePosition);
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationOrientation) = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseOrientation);
  v119 = OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationDimensions) = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseDimensions);
  v120 = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);
  v121 = v120[2];
  if (v79[2])
  {
    v208 = v79;
    if (v121)
    {
      v207 = v120;

LABEL_40:

      goto LABEL_44;
    }

    v125 = sub_23A8DE9A8(v203, v204, v206, *v195.i64);
  }

  else
  {
    if (v121)
    {
      *v122.i64 = MEMORY[0x23EE8FF80](v110);
      v208 = sub_23A8DE9A8(v122, v123, v124, *(v19 + v119));
      v207 = *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_rawScanItemEdges);
      goto LABEL_40;
    }

    v126 = MEMORY[0x277D84F90];
    v208 = sub_23A9DC9E0(MEMORY[0x277D84F90]);
    v125 = sub_23A9DC9E0(v126);
  }

  v207 = v125;
LABEL_44:
  v127 = v190;
  sub_23A8DED48(&v208, &v207);
  if (v127)
  {
    sub_23A8D4E5C();
    if (qword_27DFAE3A0 != -1)
    {
      swift_once();
    }

    sub_23AA0D644();
    sub_23AA0CE94();
    v128 = v127;
    v129 = sub_23AA0CE54();
    v130 = sub_23AA0D494();

    if (os_log_type_enabled(v129, v130))
    {
      v131 = swift_slowAlloc();
      v195.i64[0] = swift_slowAlloc();
      v209[0] = v195.i64[0];
      *v131 = 136315138;
      swift_getErrorValue();
      v132 = sub_23AA0DC34();
      v134 = v118;
      v135 = sub_23A9A65A4(v132, v133, v209);

      *(v131 + 4) = v135;
      v118 = v134;
      _os_log_impl(&dword_23A8B4000, v129, v130, "%s", v131, 0xCu);
      v136 = v195.i64[0];
      __swift_destroy_boxed_opaque_existential_1(v195.i64[0]);
      MEMORY[0x23EE91710](v136, -1, -1);
      MEMORY[0x23EE91710](v131, -1, -1);

      (*(v187 + 8))(v191, v188);
    }

    else
    {

      (*(v187 + 8))(v117, v188);
    }
  }

  v137 = v207;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationScanItemEdges) = v208;
  *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_finalAnimationScanItemEdges) = v137;
  v138 = v196.i64[0];
  sub_23A8D5194(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseCurve, v196.i64[0], &qword_27DFAEB38, &unk_23AA11B60);
  v139 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationCurve;
  swift_beginAccess();
  sub_23A8D5068(v138, v19 + v139, &qword_27DFAEB38, &unk_23AA11B60);
  swift_endAccess();
  v140 = v183;
  sub_23A8D5194(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseLeftStrut, v183, &unk_27DFAF020, &unk_23AA12300);
  v141 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationLeftStrut;
  swift_beginAccess();
  sub_23A8D5068(v140, v19 + v141, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  sub_23A8D5194(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_dollhouseRightStrut, v140, &unk_27DFAF020, &unk_23AA12300);
  v142 = OBJC_IVAR____TtC8RoomPlan8ScanItem_initialAnimationRightStrut;
  swift_beginAccess();
  sub_23A8D5068(v140, v19 + v142, &unk_27DFAF020, &unk_23AA12300);
  swift_endAccess();
  if (v63)
  {
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = *(v63 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory);
    v143 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
    swift_beginAccess();
    v144 = v184;
    sub_23A8D5194(v63 + v143, v184, &unk_27DFAF030, &qword_23AA11B48);
    v145 = v182;
  }

  else
  {
    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationTrajectory) = 4;
    v144 = v184;
    v145 = v182;
    v153(v184, 1, 1, v182);
  }

  v146 = OBJC_IVAR____TtC8RoomPlan8ScanItem_animationGraph;
  swift_beginAccess();
  sub_23A8D5068(v144, v19 + v146, &unk_27DFAF030, &qword_23AA11B48);
  swift_endAccess();
  v196 = *(v19 + v118);
  v212.columns[0] = v203;
  v212.columns[1] = v204;
  v212.columns[2] = v202;
  v212.columns[3] = v206;
  v213 = __invert_f4(v212);
  v147 = (v179 + 48);
  v148 = vmovn_s32(vcgtq_f32(vaddq_f32(v213.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v213.columns[0], v196.f32[0]), v213.columns[1], *v196.f32, 1), v213.columns[2], v196, 2)), vaddq_f32(v213.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v213.columns[0], *v206.i32), v213.columns[1], *v206.i8, 1), v213.columns[2], v206, 2))));
  if (v197 == 3)
  {
    if (v148.i8[2])
    {
      v149 = 0;
    }

    else
    {
      v149 = 3;
    }

    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v149;
    swift_beginAccess();
    if (!(*v147)(v19 + v146, 1, v145))
    {
      sub_23A93C6B4(*(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedCorners), *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions));
    }
  }

  else
  {
    if (v148.i8[0])
    {
      v150 = 2;
    }

    else
    {
      v150 = 1;
    }

    *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_animationOrigin) = v150;
    swift_beginAccess();
    if (!(*v147)(v19 + v146, 1, v145))
    {
      sub_23A93C968(*(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_completedSides), *(v19 + OBJC_IVAR____TtC8RoomPlan8ScanItem_worldSpaceDimensions));
    }
  }

  swift_endAccess();

  sub_23A8D50D0(v198, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v199, &unk_27DFAF020, &unk_23AA12300);
  sub_23A8D50D0(v200, &unk_27DFB0970, &qword_23AA14E00);
  (*(v180 + 8))(v201, v181);
  sub_23A8D50D0(v205, &qword_27DFAEB38, &unk_23AA11B60);
  return v19;
}