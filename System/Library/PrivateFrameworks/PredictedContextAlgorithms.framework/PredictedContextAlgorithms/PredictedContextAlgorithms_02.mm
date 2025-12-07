__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4)
{
  v8 = &a2->n128_u64[1];
  v40 = &a2->n128_u64[1];
  v41 = a2;
  v9 = a2 + 1;
  v42 = a2 + 1;
  v35 = a1 + 1;
  v36 = &a1->n128_u64[1];
  v37 = &a1->n128_u64[1];
  v38 = a1;
  v39 = a1 + 1;
  v10 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37);
  v40 = &a3->n128_u64[1];
  v41 = a3;
  v11 = ~v10;
  v42 = a3 + 1;
  v37 = v8;
  v38 = a2;
  v39 = v9;
  v12 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37);
  if (!v11)
  {
    if (v12 == -1)
    {
      v22 = *a1;
      v23 = a1[1].n128_u64[0];
      v25 = a3[1].n128_u32[0];
      *a1 = *a3;
      a1[1].n128_u32[0] = v25;
    }

    else
    {
      v19 = *a1;
      v20 = a1[1].n128_u64[0];
      v21 = a2[1].n128_u32[0];
      *a1 = *a2;
      a1[1].n128_u32[0] = v21;
      a2[1].n128_u32[0] = v20;
      *a2 = v19;
      v40 = &a3->n128_u64[1];
      v41 = a3;
      v42 = a3 + 1;
      v37 = v8;
      v38 = a2;
      v39 = v9;
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37) != 0xFF)
      {
        goto LABEL_10;
      }

      v22 = *a2;
      v23 = a2[1].n128_u64[0];
      v24 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v24;
    }

    a3[1].n128_u32[0] = v23;
    *a3 = v22;
    goto LABEL_10;
  }

  if (v12 == -1)
  {
    v13 = *a2;
    v14 = a2[1].n128_u64[0];
    v15 = a3[1].n128_u32[0];
    *a2 = *a3;
    a2[1].n128_u32[0] = v15;
    a3[1].n128_u32[0] = v14;
    *a3 = v13;
    v40 = v8;
    v41 = a2;
    v42 = v9;
    v37 = v36;
    v38 = a1;
    v39 = v35;
    if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37) == 0xFF)
    {
      v16 = *a1;
      v17 = a1[1].n128_u64[0];
      v18 = a2[1].n128_u32[0];
      *a1 = *a2;
      a1[1].n128_u32[0] = v18;
      a2[1].n128_u32[0] = v17;
      *a2 = v16;
    }
  }

LABEL_10:
  v40 = &a4->n128_u64[1];
  v41 = a4;
  v42 = a4 + 1;
  v37 = &a3->n128_u64[1];
  v38 = a3;
  v39 = a3 + 1;
  if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37) == 0xFF)
  {
    v27 = *a3;
    v28 = a3[1].n128_u64[0];
    v29 = a4[1].n128_u32[0];
    *a3 = *a4;
    a3[1].n128_u32[0] = v29;
    a4[1].n128_u32[0] = v28;
    *a4 = v27;
    v40 = &a3->n128_u64[1];
    v41 = a3;
    v42 = a3 + 1;
    v37 = v8;
    v38 = a2;
    v39 = v9;
    if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37) == 0xFF)
    {
      v30 = *a2;
      v31 = a2[1].n128_u64[0];
      v32 = a3[1].n128_u32[0];
      *a2 = *a3;
      a2[1].n128_u32[0] = v32;
      a3[1].n128_u32[0] = v31;
      *a3 = v30;
      v40 = v8;
      v41 = a2;
      v42 = v9;
      v37 = v36;
      v38 = a1;
      v39 = v35;
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v40, &v37) == 0xFF)
      {
        result = *a1;
        v33 = a1[1].n128_u64[0];
        v34 = a2[1].n128_u32[0];
        *a1 = *a2;
        a1[1].n128_u32[0] = v34;
        a2[1].n128_u32[0] = v33;
        *a2 = result;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *>(uint64_t a1, __n128 *a2)
{
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v9 = (a1 + 24);
        v20 = (a2 - 24);
        v21 = (a1 + 32);
        v69 = (a1 + 32);
        v70 = (a1 + 24);
        v22 = (a1 + 40);
        v71 = (a1 + 40);
        v66 = (a1 + 8);
        v67 = a1;
        v62 = (a1 + 16);
        v68 = (a1 + 16);
        v23 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66);
        v24 = a2 - 1;
        v69 = a2 - 1;
        v70 = v20;
        v25 = ~v23;
        v26 = (a2 - 8);
        v71 = v26;
        v66 = v21;
        v67 = v9;
        v68 = v22;
        v27 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66);
        if (!v25)
        {
          if (v27 == -1)
          {
            v46 = *a1;
            v47 = *(a1 + 16);
            v53 = v20[1].n128_i32[0];
            *a1 = *v20;
            *(a1 + 16) = v53;
          }

          else
          {
            v44 = *(a1 + 16);
            v45 = *a1;
            *a1 = *v9;
            *(a1 + 16) = *(a1 + 40);
            *v9 = v45;
            *(a1 + 40) = v44;
            v69 = v24;
            v70 = v20;
            v71 = v26;
            v66 = v21;
            v67 = v9;
            v68 = v22;
            if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
            {
              return 1;
            }

            v46 = *v9;
            v47 = *(a1 + 40);
            v48 = v20[1].n128_i32[0];
            *v9 = *v20;
            *(a1 + 40) = v48;
          }

          v20[1].n128_u32[0] = v47;
          *v20 = v46;
          return 1;
        }

        if (v27 != -1)
        {
          return 1;
        }

        v28 = *v9;
        v29 = *(a1 + 40);
        v30 = v20[1].n128_i32[0];
        *v9 = *v20;
        *(a1 + 40) = v30;
        v20[1].n128_u32[0] = v29;
        *v20 = v28;
        v69 = (a1 + 32);
        v70 = (a1 + 24);
        v71 = (a1 + 40);
        v66 = (a1 + 8);
        v67 = a1;
        v68 = v62;
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
        {
          return 1;
        }

        break;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 24));
        return 1;
      case 5:
        v9 = (a1 + 24);
        v10 = (a1 + 48);
        v11 = (a1 + 72);
        v12 = (a2 - 24);
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,outlierScore *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72));
        v69 = a2 - 1;
        v70 = v12;
        v71 = (a2 - 8);
        v66 = (a1 + 80);
        v67 = v11;
        v68 = (a1 + 88);
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
        {
          return 1;
        }

        v13 = *v11;
        v14 = *(a1 + 88);
        v15 = v12[1].n128_i32[0];
        *v11 = *v12;
        *(a1 + 88) = v15;
        v12[1].n128_u32[0] = v14;
        *v12 = v13;
        v69 = (a1 + 80);
        v70 = (a1 + 72);
        v71 = (a1 + 88);
        v66 = (a1 + 56);
        v67 = v10;
        v68 = (a1 + 64);
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
        {
          return 1;
        }

        v16 = *(a1 + 64);
        v17 = *v10;
        *v10 = *v11;
        *(a1 + 64) = *(a1 + 88);
        *v11 = v17;
        *(a1 + 88) = v16;
        v69 = (a1 + 56);
        v70 = (a1 + 48);
        v71 = (a1 + 64);
        v66 = (a1 + 32);
        v67 = a1 + 24;
        v68 = (a1 + 40);
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
        {
          return 1;
        }

        v18 = *(a1 + 40);
        v19 = *v9;
        *v9 = *v10;
        *(a1 + 40) = *(a1 + 64);
        *v10 = v19;
        *(a1 + 64) = v18;
        if (!outlierScore::operator<(a1 + 24, a1))
        {
          return 1;
        }

        break;
      default:
        goto LABEL_18;
    }

    v31 = *(a1 + 16);
    v32 = *a1;
    *a1 = *v9;
    *(a1 + 16) = v9[1].n128_u32[0];
    *v9 = v32;
    v9[1].n128_u32[0] = v31;
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = (a2 - 24);
    v69 = a2 - 1;
    v70 = (a2 - 24);
    v71 = (a2 - 8);
    v66 = (a1 + 8);
    v67 = a1;
    v68 = (a1 + 16);
    if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) == 0xFF)
    {
      v6 = *a1;
      v7 = *(a1 + 16);
      v8 = a2[-1].n128_i32[2];
      *a1 = *v5;
      *(a1 + 16) = v8;
      a2[-1].n128_u32[2] = v7;
      *v5 = v6;
    }

    return 1;
  }

LABEL_18:
  v33 = (a1 + 48);
  v34 = (a1 + 24);
  v35 = (a1 + 32);
  v69 = (a1 + 32);
  v70 = (a1 + 24);
  v36 = (a1 + 40);
  v71 = (a1 + 40);
  v61 = (a1 + 8);
  v63 = (a1 + 16);
  v66 = (a1 + 8);
  v67 = a1;
  v68 = (a1 + 16);
  v37 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66);
  v69 = (a1 + 56);
  v70 = v33;
  v38 = ~v37;
  v71 = (a1 + 64);
  v66 = v35;
  v67 = v34;
  v68 = v36;
  v39 = std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66);
  if (v38)
  {
    if (v39 == -1)
    {
      v40 = *(a1 + 40);
      v41 = *v34;
      *v34 = *v33;
      *(a1 + 40) = *(a1 + 64);
      *v33 = v41;
      *(a1 + 64) = v40;
      v69 = (a1 + 32);
      v70 = (a1 + 24);
      v71 = (a1 + 40);
      v66 = v61;
      v67 = a1;
      v68 = v63;
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) == 0xFF)
      {
        v42 = *(a1 + 16);
        v43 = *a1;
        *a1 = *v34;
        *(a1 + 16) = *(a1 + 40);
        *v34 = v43;
        *(a1 + 40) = v42;
      }
    }
  }

  else
  {
    if (v39 == -1)
    {
      v51 = *(a1 + 16);
      v52 = *a1;
      *a1 = *v33;
      *(a1 + 16) = *(a1 + 64);
    }

    else
    {
      v49 = *(a1 + 16);
      v50 = *a1;
      *a1 = *v34;
      *(a1 + 16) = *(a1 + 40);
      *v34 = v50;
      *(a1 + 40) = v49;
      v69 = (a1 + 56);
      v70 = (a1 + 48);
      v71 = (a1 + 64);
      v66 = v35;
      v67 = v34;
      v68 = v36;
      if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
      {
        goto LABEL_33;
      }

      v51 = *(a1 + 40);
      v52 = *v34;
      *v34 = *v33;
      *(a1 + 40) = *(a1 + 64);
    }

    *v33 = v52;
    *(a1 + 64) = v51;
  }

LABEL_33:
  v54 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
    return 1;
  }

  v55 = 0;
  v56 = 0;
  while (1)
  {
    v69 = &v54->n128_i8[8];
    v70 = v54;
    v71 = v54 + 1;
    v66 = &v33->n128_i8[8];
    v67 = v33;
    v68 = v33 + 1;
    if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) == 0xFF)
    {
      v64 = *v54;
      v65 = v54[1].n128_i64[0];
      v57 = v55;
      while (1)
      {
        v58 = a1 + v57;
        *(v58 + 72) = *(a1 + v57 + 48);
        *(v58 + 88) = *(a1 + v57 + 64);
        if (v57 == -48)
        {
          break;
        }

        v69 = &v64.n128_i8[8];
        v70 = &v64;
        v71 = &v65;
        v66 = (v58 + 32);
        v67 = v58 + 24;
        v68 = (v58 + 40);
        v57 -= 24;
        if (std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(&v69, &v66) != 0xFF)
        {
          v59 = a1 + v57 + 72;
          goto LABEL_41;
        }
      }

      v59 = a1;
LABEL_41:
      *v59 = v64;
      *(v59 + 16) = v65;
      if (++v56 == 8)
      {
        return &v54[1].n128_i8[8] == a2;
      }
    }

    v33 = v54;
    v55 += 24;
    v54 = (v54 + 24);
    if (v54 == a2)
    {
      return 1;
    }
  }
}

void std::__destroy_at[abi:ne200100]<cluster,0>(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[7];

  std::__tree<int>::destroy((a1 + 6), v3);
}

uint64_t std::__split_buffer<cluster>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 136;
    std::__destroy_at[abi:ne200100]<cluster,0>((i - 136));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<cluster>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 17;
        std::__destroy_at[abi:ne200100]<cluster,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t *std::__tree<int>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v6, a2);
  return v3;
}

uint64_t *std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = *(v7 + 16);
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((*(v7 + 24) & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = *(v7 + 8);
      if (v18 && (*(v18 + 24) & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = *(v17 + 8);
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = *(v7 + 16);
        *(v17 + 16) = v27;
        v27[*v27 != v7] = v17;
        *(v17 + 8) = v7;
        *(v7 + 16) = v17;
        v18 = v7;
      }

      v28 = *(v17 + 16);
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = *(v7 + 8);
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((*(v7 + 24) & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = *(v13 + 8);
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    *(v13 + 16) = v21;
    v21[*v21 != v12] = v13;
    *(v13 + 8) = v12;
    v12[2] = v13;
    v22 = *(v7 + 8);
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = *(v7 + 8);
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = *(v7 + 16);
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (*(v23 + 24) & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  *(v7 + 8) = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = *(v7 + 16);
  *(v24 + 16) = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  *(v7 + 16) = v24;
  v23 = v7;
LABEL_68:
  v28 = *(v24 + 16);
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

void std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(*a1);
    std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

uint64_t *std::__tree<std::__value_type<int,std::vector<int>>,std::__map_value_compare<int,std::__value_type<int,std::vector<int>>,std::less<int>,true>,std::allocator<std::__value_type<int,std::vector<int>>>>::__emplace_unique_key_args<int,std::piecewise_construct_t const&,std::tuple<int const&>,std::tuple<>>(uint64_t **a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 8);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_8;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__erase_unique<int>(uint64_t **a1, int a2)
{
  v4 = a1 + 1;
  v3 = a1[1];
  if (v3)
  {
    v5 = v4;
    v6 = v3;
    do
    {
      if (*(v6 + 8) >= a2)
      {
        v5 = v6;
      }

      v6 = v6[*(v6 + 8) < a2];
    }

    while (v6);
    if (v5 != v4 && *(v5 + 8) <= a2)
    {
      v7 = v5[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        v9 = v5;
        do
        {
          v8 = v9[2];
          v10 = *v8 == v9;
          v9 = v8;
        }

        while (!v10);
      }

      if (*a1 == v5)
      {
        *a1 = v8;
      }

      a1[2] = (a1[2] - 1);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v3, v5);

      operator delete(v5);
    }
  }
}

uint64_t *std::__tree<std::__value_type<int,cluster *>,std::__map_value_compare<int,std::__value_type<int,cluster *>,std::less<int>,true>,std::allocator<std::__value_type<int,cluster *>>>::__emplace_unique_key_args<int,std::pair<int const,cluster *>>(uint64_t *result, int a2, _OWORD *a3)
{
  v3 = result[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = *(v3 + 32);
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return result;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

void *std::set<int>::set[abi:ne200100](void *a1, void *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = a1 + 1;
  v2 = *a2;
  if (*a2 != a2 + 1)
  {
    do
    {
      v3 = a1[1];
      v4 = a1 + 1;
      if (*a1 == a1 + 1)
      {
        goto LABEL_8;
      }

      v5 = a1[1];
      v6 = a1 + 1;
      if (v3)
      {
        do
        {
          v4 = v5;
          v5 = v5[1];
        }

        while (v5);
      }

      else
      {
        do
        {
          v4 = v6[2];
          v7 = *v4 == v6;
          v6 = v4;
        }

        while (v7);
      }

      v8 = *(v2 + 7);
      if (*(v4 + 7) < v8)
      {
LABEL_8:
        if (v3)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = a1 + 1;
        }

        if (!*v9)
        {
LABEL_19:
          operator new();
        }
      }

      else
      {
        if (!v3)
        {
          goto LABEL_19;
        }

        while (1)
        {
          while (1)
          {
            v10 = v3;
            v11 = *(v3 + 28);
            if (v11 <= v8)
            {
              break;
            }

            v3 = *v10;
            if (!*v10)
            {
              goto LABEL_19;
            }
          }

          if (v11 >= v8)
          {
            break;
          }

          v3 = v10[1];
          if (!v3)
          {
            goto LABEL_19;
          }
        }
      }

      v12 = v2[1];
      if (v12)
      {
        do
        {
          v13 = v12;
          v12 = *v12;
        }

        while (v12);
      }

      else
      {
        do
        {
          v13 = v2[2];
          v7 = *v13 == v2;
          v2 = v13;
        }

        while (!v7);
      }

      v2 = v13;
    }

    while (v13 != a2 + 1);
  }

  return a1;
}

_DWORD *hdbscanConstraint::hdbscanConstraint(_DWORD *result, int a2, int a3, int a4)
{
  result[1] = a2;
  result[2] = a3;
  *result = a4;
  return result;
}

{
  result[1] = a2;
  result[2] = a3;
  *result = a4;
  return result;
}

void hdbscanRunner::run(uint64_t a1)
{
  v3 = *(a1 + 32) - *(a1 + 24);
  v4 = *a1;
  v5 = *(a1 + 8);
  if (!v3)
  {
    v3 = v5 - *a1;
  }

  v6 = v3 >> 3;
  v7 = -1431655765 * v6;
  v79 = 0;
  v77 = 0u;
  v78 = 0u;
  v75 = 0u;
  v76 = 0u;
  v8 = -1431655765 * v6;
  if (v5 == v4)
  {
    std::vector<std::vector<double>>::vector[abi:ne200100](&v52, -1431655765 * v6);
    if (v7 >= 1)
    {
      v9 = 0;
      v10 = (a1 + 48);
      while (1)
      {
        std::vector<double>::resize(&v52[3 * v9], v8);
        if (v9)
        {
          break;
        }

LABEL_61:
        if (++v9 == (v7 & 0x7FFFFFFF))
        {
          goto LABEL_62;
        }
      }

      v11 = 0;
      while (*(a1 + 71) < 0)
      {
        v12 = *(a1 + 56);
        if (!v12)
        {
          goto LABEL_24;
        }

        if (v12 == 9)
        {
          v13 = *v10;
          if (**v10 != 0x616564696C637545 || *(*v10 + 8) != 110)
          {
LABEL_33:
            v31 = *v13;
            v32 = *(v13 + 8);
            if (v31 != 0x61747461686E614DLL || v32 != 110)
            {
              goto LABEL_60;
            }

            v55 = &unk_1F4BCEE10;
            v34 = *(a1 + 24) + 24 * v9;
            v62 = 0;
            v60 = 0;
            v61 = 0;
            std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v60, *v34, *(v34 + 8), (*(v34 + 8) - *v34) >> 3);
            v35 = *(a1 + 24) + 24 * v11;
            v59 = 0;
            v57 = 0;
            v58 = 0;
            std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v57, *v35, *(v35 + 8), (*(v35 + 8) - *v35) >> 3);
            v17 = v60;
            if (v61 == v60)
            {
              v23 = 0.0;
            }

            else
            {
              v36 = 0;
              v23 = 0.0;
              v37 = 1;
              while ((v58 - v57) >> 3 > v36)
              {
                v23 = v23 + vabdd_f64(*(v60 + v36), *(v57 + v36));
                v36 = v37;
                v22 = (v61 - v60) >> 3 > v37++;
                if (!v22)
                {
                  goto LABEL_55;
                }
              }
            }

            if (v57)
            {
LABEL_55:
              v58 = v57;
              operator delete(v57);
              v17 = v60;
            }

            if (v17)
            {
              v61 = v17;
LABEL_58:
              operator delete(v17);
            }

LABEL_59:
            v38 = v52;
            *&v52[3 * v9][8 * v11] = v23;
            *(v38[3 * v11] + v9) = v23;
            goto LABEL_60;
          }

LABEL_19:
          v55 = &unk_1F4BCEE60;
          v15 = *(a1 + 24) + 24 * v9;
          v68 = 0;
          v66 = 0;
          v67 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v66, *v15, *(v15 + 8), (*(v15 + 8) - *v15) >> 3);
          v16 = *(a1 + 24) + 24 * v11;
          v65 = 0;
          __p = 0;
          v64 = 0;
          std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&__p, *v16, *(v16 + 8), (*(v16 + 8) - *v16) >> 3);
          v17 = v66;
          if (v67 == v66)
          {
            v19 = 0.0;
LABEL_49:
            v23 = sqrt(v19);
            if (__p)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v18 = 0;
            v19 = 0.0;
            v20 = 1;
            do
            {
              if ((v64 - __p) >> 3 <= v18)
              {
                goto LABEL_49;
              }

              v21 = *&v66[8 * v18] - *(__p + v18);
              v19 = v19 + v21 * v21;
              v18 = v20;
              v22 = (v67 - v66) >> 3 > v20++;
            }

            while (v22);
            v23 = sqrt(v19);
LABEL_50:
            v64 = __p;
            operator delete(__p);
            v17 = v66;
          }

          if (v17)
          {
            v67 = v17;
            goto LABEL_58;
          }

          goto LABEL_59;
        }

LABEL_60:
        if (++v11 == v9)
        {
          goto LABEL_61;
        }
      }

      if (*(a1 + 71) == 9)
      {
        v30 = *v10 == 0x616564696C637545 && *(a1 + 56) == 110;
        v13 = (a1 + 48);
        if (!v30)
        {
          goto LABEL_33;
        }

        goto LABEL_19;
      }

      if (*(a1 + 71))
      {
        goto LABEL_60;
      }

LABEL_24:
      v55 = &unk_1F4BCEE60;
      v24 = *(a1 + 24) + 24 * v9;
      v73 = 0;
      v74 = 0;
      v72 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v72, *v24, *(v24 + 8), (*(v24 + 8) - *v24) >> 3);
      v25 = *(a1 + 24) + 24 * v11;
      v70 = 0;
      v71 = 0;
      v69 = 0;
      std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v69, *v25, *(v25 + 8), (*(v25 + 8) - *v25) >> 3);
      v17 = v72;
      if (v73 == v72)
      {
        v27 = 0.0;
LABEL_44:
        v23 = sqrt(v27);
        if (!v69)
        {
LABEL_46:
          if (v17)
          {
            v73 = v17;
            goto LABEL_58;
          }

          goto LABEL_59;
        }
      }

      else
      {
        v26 = 0;
        v27 = 0.0;
        v28 = 1;
        do
        {
          if (v70 - v69 <= v26)
          {
            goto LABEL_44;
          }

          v29 = *&v72[8 * v26] - v69[v26];
          v27 = v27 + v29 * v29;
          v26 = v28;
          v22 = (v73 - v72) >> 3 > v28++;
        }

        while (v22);
        v23 = sqrt(v27);
      }

      v70 = v69;
      operator delete(v69);
      v17 = v72;
      goto LABEL_46;
    }

LABEL_62:
    if (&v52 != a1)
    {
      std::vector<std::vector<double>>::__assign_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(a1, v52, v53, 0xAAAAAAAAAAAAAAABLL * ((v53 - v52) >> 3));
    }

    v55 = &v52;
    std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v55);
    v4 = *a1;
    v5 = *(a1 + 8);
  }

  memset(v54, 0, sizeof(v54));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v54, v4, v5, 0xAAAAAAAAAAAAAAABLL * ((v5 - v4) >> 3));
  hdbscanStar::hdbscanAlgorithm::calculateCoreDistances(v54, *(a1 + 72), &v55);
  v52 = v54;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v52);
  memset(v51, 0, sizeof(v51));
  std::vector<std::vector<double>>::__init_with_size[abi:ne200100]<std::vector<double>*,std::vector<double>*>(v51, *a1, *(a1 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3));
  v48 = 0;
  v49 = 0;
  v50 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v48, v55, v56, (v56 - v55) >> 3);
  hdbscanStar::hdbscanAlgorithm::constructMst(v51, &v48, 1, &v52);
  if (v48)
  {
    v49 = v48;
    operator delete(v48);
  }

  v47 = v51;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v47);
  undirectedGraph::quicksortByEdgeWeight(&v52);
  std::vector<double>::vector[abi:ne200100](&v47, v8);
  std::vector<int>::vector[abi:ne200100](&v46, v8);
  memset(v45, 0, sizeof(v45));
  memset(v44, 0, sizeof(v44));
  memset(v43, 0, sizeof(v43));
  v39 = *(a1 + 76);
  v40 = *(a1 + 80);
  v41 = *(a1 + 88);
  memset(v42, 0, sizeof(v42));
  std::vector<hdbscanConstraint>::__init_with_size[abi:ne200100]<hdbscanConstraint*,hdbscanConstraint*>(v42, v40, v41, 0xAAAAAAAAAAAAAAABLL * ((v41 - v40) >> 2));
  hdbscanStar::hdbscanAlgorithm::computeHierarchyAndClusterTree(&v52, v39, v42, v45, &v47, &v46, v44, v43);
}

void sub_1CEF021D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *a34, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, void *a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, uint64_t a57, void *a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  STACK[0x238] = &a64;
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&STACK[0x238]);
  hdbscanResult::~hdbscanResult((v64 - 192));
  _Unwind_Resume(a1);
}

void std::vector<std::unique_ptr<cluster>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = *--v4;
        v6 = v7;
        *v4 = 0;
        if (v7)
        {
          v8 = *(v6 + 72);
          if (v8)
          {
            *(v6 + 80) = v8;
            operator delete(v8);
          }

          std::__tree<int>::destroy(v6 + 48, *(v6 + 56));
          MEMORY[0x1D3865860](v6, 0x10A0C408B9C0EF9);
        }
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void undirectedGraph::~undirectedGraph(undirectedGraph *this)
{
  v5 = (this + 80);
  std::vector<std::vector<double>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 7);
  if (v2)
  {
    *(this + 8) = v2;
    operator delete(v2);
  }

  v3 = *(this + 4);
  if (v3)
  {
    *(this + 5) = v3;
    operator delete(v3);
  }

  v4 = *(this + 1);
  if (v4)
  {
    *(this + 2) = v4;
    operator delete(v4);
  }
}

void undirectedGraph::quicksortByEdgeWeight(undirectedGraph *this)
{
  v1 = (*(this + 8) - *(this + 7)) >> 3;
  if (v1 >= 2)
  {
    std::vector<int>::vector[abi:ne200100](v9, (v1 >> 1) & 0x3FFFFFFF);
    std::vector<int>::vector[abi:ne200100](__p, (v1 >> 1) & 0x3FFFFFFF);
    v3 = 0;
    *v9[0] = 0;
    *__p[0] = v1 - 1;
    do
    {
      v4 = *(v9[0] + v3);
      v5 = *(__p[0] + v3);
      v6 = undirectedGraph::selectPivotIndex(this, v4, v5);
      v7 = undirectedGraph::partition(this, v4, v5, v6);
      if (v7 <= v4 + 1)
      {
        --v3;
      }

      else
      {
        *(v9[0] + v3) = v4;
        *(__p[0] + v3) = v7 - 1;
      }

      if (v7 < v5 - 1)
      {
        *(v9[0] + ++v3) = v7 + 1;
        *(__p[0] + v3) = v5;
      }
    }

    while ((v3 & 0x80000000) == 0);
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }

    if (v9[0])
    {
      v9[1] = v9[0];
      operator delete(v9[0]);
    }
  }
}

void sub_1CEF0265C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t undirectedGraph::selectPivotIndex(undirectedGraph *this, uint64_t a2, int a3)
{
  if (a2 - a3 < 2)
  {
    return a2;
  }

  v4 = *(this + 7);
  v5 = *(v4 + 8 * a2);
  v6 = a2 + (a3 - a2) / 2;
  v7 = *(v4 + 8 * v6);
  v8 = *(v4 + 8 * a3);
  if (v5 <= v7)
  {
    result = (a2 + (a3 - a2) / 2);
    if (v7 > v8)
    {
      if (v8 >= v5)
      {
        return a3;
      }

      else
      {
        return a2;
      }
    }
  }

  else
  {
    result = a2;
    if (v5 > v8)
    {
      if (v8 >= v7)
      {
        return a3;
      }

      else
      {
        return v6;
      }
    }
  }

  return result;
}

uint64_t undirectedGraph::partition(undirectedGraph *this, uint64_t a2, int a3, int a4)
{
  v4 = *(this + 7);
  v5 = *(v4 + 8 * a4);
  if (a4 != a3)
  {
    v6 = *(this + 1);
    v7 = *(v6 + 4 * a4);
    v8 = *(this + 4);
    v9 = *(v8 + 4 * a4);
    *(v6 + 4 * a4) = *(v6 + 4 * a3);
    *(v8 + 4 * a4) = *(v8 + 4 * a3);
    *(v4 + 8 * a4) = *(v4 + 8 * a3);
    *(v6 + 4 * a3) = v7;
    *(v8 + 4 * a3) = v9;
    *(v4 + 8 * a3) = v5;
  }

  if (a2 < a3)
  {
    v10 = a2;
    do
    {
      v11 = *(v4 + 8 * v10);
      if (v11 < v5)
      {
        if (v10 != a2)
        {
          v12 = *(this + 1);
          v13 = *(v12 + 4 * v10);
          v14 = *(this + 4);
          v15 = *(v14 + 4 * v10);
          *(v12 + 4 * v10) = *(v12 + 4 * a2);
          *(v14 + 4 * v10) = *(v14 + 4 * a2);
          *(v4 + 8 * v10) = *(v4 + 8 * a2);
          *(v12 + 4 * a2) = v13;
          *(v14 + 4 * a2) = v15;
          *(v4 + 8 * a2) = v11;
        }

        a2 = (a2 + 1);
      }

      ++v10;
    }

    while (a3 != v10);
  }

  if (a2 != a3)
  {
    v16 = *(this + 1);
    v17 = *(v16 + 4 * a2);
    v18 = *(this + 4);
    v19 = *(v18 + 4 * a2);
    v20 = *(v4 + 8 * a2);
    *(v16 + 4 * a2) = *(v16 + 4 * a3);
    *(v18 + 4 * a2) = *(v18 + 4 * a3);
    *(v4 + 8 * a2) = *(v4 + 8 * a3);
    *(v16 + 4 * a3) = v17;
    *(v18 + 4 * a3) = v19;
    *(v4 + 8 * a3) = v20;
  }

  return a2;
}

double undirectedGraph::swapEdges(undirectedGraph *this, int a2, int a3)
{
  if (a2 != a3)
  {
    v3 = *(this + 1);
    v4 = *(v3 + 4 * a2);
    v5 = *(this + 4);
    v6 = *(v5 + 4 * a2);
    v7 = *(this + 7);
    result = *(v7 + 8 * a2);
    *(v3 + 4 * a2) = *(v3 + 4 * a3);
    *(v5 + 4 * a2) = *(v5 + 4 * a3);
    *(v7 + 8 * a2) = *(v7 + 8 * a3);
    *(v3 + 4 * a3) = v4;
    *(v5 + 4 * a3) = v6;
    *(v7 + 8 * a3) = result;
  }

  return result;
}

uint64_t bitSet::get(bitSet *this, int a2)
{
  if (*(this + 1) <= a2)
  {
    return 0;
  }

  else
  {
    return (*(*this + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
  }
}

void bitSet::set(void *this, int a2)
{
  v3 = a2;
  if (this[1] <= a2)
  {
    std::vector<BOOL>::resize(this, a2 + 64, 0);
  }

  *(*this + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v3;
}

void bitSet::ensure(uint64_t this, int a2)
{
  if (*(this + 8) <= a2)
  {
    std::vector<BOOL>::resize(this, a2 + 64, 0);
  }
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, char a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  if (v7 << 6 >= v5 && v4 <= (v7 << 6) - v5)
  {
    v10 = (*a1 + 8 * (v4 >> 6));
    v11 = *(a1 + 8) & 0x3FLL;
    *(a1 + 8) = a2;
    if (a3)
    {
      goto LABEL_16;
    }

LABEL_34:
    if (v11)
    {
      if ((64 - v11) >= v5)
      {
        v18 = v5;
      }

      else
      {
        v18 = (64 - v11);
      }

      *v10++ &= ~((0xFFFFFFFFFFFFFFFFLL >> (64 - v11 - v18)) & (-1 << v11));
      v5 -= v18;
    }

    goto LABEL_39;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_13:
    std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
  }

  if ((v7 << 6) > 0x3FFFFFFFFFFFFFFELL)
  {
LABEL_25:
    operator new();
  }

  v9 = v7 << 7;
  if (v9 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
  {
    v9 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
  }

  if (v9)
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  v16 = *a1;
  v10 = 0;
  if (v4 >= 1)
  {
    v17 = v4 >> 6;
    if (v4 >= 0x40)
    {
      memmove(0, *a1, 8 * v17);
    }

    v10 = (8 * v17);
    if ((v4 & 0x3F) != 0)
    {
      *(8 * v17) = *(8 * v17) & ~(0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F)) | v16[v17] & (0xFFFFFFFFFFFFFFFFLL >> -(v4 & 0x3F));
      *a1 = 0;
      *(a1 + 8) = a2;
      *(a1 + 16) = 0;
      LODWORD(v11) = v4 & 0x3F;
      goto LABEL_33;
    }
  }

  *a1 = 0;
  *(a1 + 8) = a2;
  *(a1 + 16) = 0;
  if (v16)
  {
    LODWORD(v11) = 0;
LABEL_33:
    operator delete(v16);
    if (a3)
    {
LABEL_16:
      if (v11)
      {
        if ((64 - v11) >= v5)
        {
          v12 = v5;
        }

        else
        {
          v12 = (64 - v11);
        }

        *v10++ |= (0xFFFFFFFFFFFFFFFFLL >> (64 - v11 - v12)) & (-1 << v11);
        v5 -= v12;
      }

LABEL_21:
      v13 = v5 >> 6;
      if (v5 >= 0x40)
      {
        memset(v10, 255, 8 * v13);
      }

      if ((v5 & 0x3F) != 0)
      {
        v14 = v10[v13] | (0xFFFFFFFFFFFFFFFFLL >> -(v5 & 0x3F));
LABEL_43:
        v10[v13] = v14;
        return;
      }

      return;
    }

    goto LABEL_34;
  }

  if (a3)
  {
    goto LABEL_21;
  }

LABEL_39:
  v13 = v5 >> 6;
  if (v5 >= 0x40)
  {
    bzero(v10, 8 * v13);
  }

  if ((v5 & 0x3F) != 0)
  {
    v14 = v10[v13] & ~(0xFFFFFFFFFFFFFFFFLL >> -(v5 & 0x3F));
    goto LABEL_43;
  }
}

double EuclideanDistance::computeDistance(uint64_t a1, void *a2, void *a3)
{
  v3 = a2[1] - *a2;
  if (v3)
  {
    v4 = 0;
    v5 = v3 >> 3;
    v6 = 0.0;
    v7 = 1;
    do
    {
      if ((a3[1] - *a3) >> 3 <= v4)
      {
        break;
      }

      v8 = *(*a2 + 8 * v4) - *(*a3 + 8 * v4);
      v6 = v6 + v8 * v8;
      v4 = v7;
    }

    while (v5 > v7++);
  }

  else
  {
    v6 = 0.0;
  }

  return sqrt(v6);
}

void cluster::cluster(cluster *this)
{
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = ++cluster::counter;
}

{
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = ++cluster::counter;
}

void cluster::cluster(cluster *this, int a2, cluster *a3, double a4, int a5)
{
  *(this + 7) = 0;
  *(this + 6) = this + 56;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 10) = 0;
  *(this + 11) = 0;
  *this = ++cluster::counter;
  *(this + 2) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 1) = a4;
  *(this + 6) = a5;
  *(this + 31) = a2;
  *(this + 32) = 0;
  *(this + 13) = a3;
  *(this + 14) = 0;
  *(this + 12) = 0x7FEFFFFFFFFFFFFFLL;
  if (a3)
  {
    *(a3 + 120) = 1;
  }

  *(this + 120) = 0;
  std::vector<cluster *>::resize(this + 9, 0);
}

void sub_1CEF02CE8(_Unwind_Exception *a1)
{
  v6 = *v3;
  if (*v3)
  {
    *(v2 + 80) = v6;
    operator delete(v6);
  }

  std::__tree<int>::destroy(v1, *v4);
  _Unwind_Resume(a1);
}

void std::vector<cluster *>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<cluster *>::__append(result, a2 - v2);
  }
}

uint64_t cluster::detachPoints(uint64_t this, int a2, double a3)
{
  v3 = *(this + 24);
  *(this + 112) = *(this + 112) + a2 * (1.0 / a3 - 1.0 / *(this + 8));
  v4 = v3 - a2;
  *(this + 24) = v4;
  if (v4)
  {
    if (v4 < 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::invalid_argument::invalid_argument[abi:ne200100](exception);
      __cxa_throw(exception, off_1E83B7E10, MEMORY[0x1E69E5298]);
    }
  }

  else
  {
    *(this + 16) = a3;
  }

  return this;
}

std::logic_error *std::invalid_argument::invalid_argument[abi:ne200100](std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "Cluster cannot have less than 0 points.");
  result->__vftable = (MEMORY[0x1E69E55C8] + 16);
  return result;
}

void cluster::propagate(cluster *this)
{
  v1 = *(this + 13);
  if (v1)
  {
    v2 = *(this + 12);
    if (v2 == 1.79769313e308)
    {
      v2 = *(this + 2);
      *(this + 12) = v2;
    }

    if (v2 < *(v1 + 96))
    {
      *(v1 + 96) = v2;
    }

    v3 = *(this + 10);
    if ((*(this + 120) & 1) == 0 || (v4 = *(this + 11), v3 > v4))
    {
      *(v1 + 44) += v3;
      v5 = *(this + 14) + *(v1 + 32);
LABEL_9:
      *(v1 + 32) = v5;
      v13 = this;
      std::vector<cluster *>::push_back[abi:ne200100](v1 + 72, &v13);
      return;
    }

    if (v3 >= v4)
    {
      if (v3 != v4)
      {
        return;
      }

      v10 = *(this + 14);
      v11 = *(this + 4);
      *(v1 + 44) += v3;
      v12 = *(v1 + 32);
      if (v10 >= v11)
      {
        v5 = v10 + v12;
        goto LABEL_9;
      }

      v6 = v11 + v12;
    }

    else
    {
      *(v1 + 44) += v4;
      v6 = *(this + 4) + *(v1 + 32);
    }

    *(v1 + 32) = v6;
    v7 = *(v1 + 80);
    v8 = *(this + 9);
    v9 = *(this + 10);

    std::vector<cluster *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cluster **>,std::__wrap_iter<cluster **>>(v1 + 72, v7, v8, v9, (v9 - v8) >> 3);
  }
}

uint64_t *cluster::addPointsToVirtualChildCluster(uint64_t *result, void *a2)
{
  v2 = (a2 + 1);
  v3 = *a2;
  if (*a2 != a2 + 1)
  {
    v4 = result;
    do
    {
      result = std::__tree<int>::__emplace_unique_key_args<int,int const&>((v4 + 6), v3 + 7, v3 + 7);
      v5 = *(v3 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v3 + 2);
          v7 = *v6 == v3;
          v3 = v6;
        }

        while (!v7);
      }

      v3 = v6;
    }

    while (v6 != v2);
  }

  return result;
}

BOOL cluster::virtualChildClusterConstraintsPoint(cluster *this, int a2)
{
  v4 = *(this + 7);
  v2 = this + 56;
  v3 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = v2;
  do
  {
    if (*(v3 + 7) >= a2)
    {
      v5 = v3;
    }

    v3 = *&v3[8 * (*(v3 + 7) < a2)];
  }

  while (v3);
  if (v5 == v2 || *(v5 + 7) > a2)
  {
LABEL_8:
    v5 = v2;
  }

  return v5 != v2;
}

void cluster::releaseVirtualChildCluster(cluster *this)
{
  v1 = (this + 56);
  std::__tree<int>::destroy(this + 48, *(this + 7));
  *v1 = 0;
  v1[1] = 0;
  *(v1 - 1) = v1;
}

uint64_t *std::unique_ptr<cluster>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = *(v2 + 72);
    if (v3)
    {
      *(v2 + 80) = v3;
      operator delete(v3);
    }

    std::__tree<int>::destroy(v2 + 48, *(v2 + 56));
    MEMORY[0x1D3865860](v2, 0x10A0C408B9C0EF9);
  }

  return a1;
}

void std::vector<cluster *>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cluster *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::vector<cluster *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<cluster **>,std::__wrap_iter<cluster **>>(uint64_t a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return;
  }

  v6 = __src;
  v10 = *(a1 + 8);
  v9 = *(a1 + 16);
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + (&v10[-*a1] >> 3);
    if (v12 >> 61)
    {
      std::vector<std::vector<double>>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<cluster *>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v6;
      v6 += 8;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), __dst, *(a1 + 8) - __dst);
    v37 = *a1;
    v38 = v33 + 8 * a5 + *(a1 + 8) - __dst;
    *(a1 + 8) = __dst;
    v39 = (__dst - v37);
    v40 = (v33 - (__dst - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    *(a1 + 8) = v38;
    *(a1 + 16) = 0;
    if (v41)
    {

      operator delete(v41);
    }

    return;
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = &v10[-8 * a5];
    v31 = *(a1 + 8);
    while (v30 < v10)
    {
      v32 = *v30;
      v30 += 8;
      *v31++ = v32;
    }

    *(a1 + 8) = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = __dst;
    v27 = v6;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(*(a1 + 8), &__src[v17], a4 - &__src[v17]);
  }

  v21 = &v10[v20];
  *(a1 + 8) = &v10[v20];
  if (v18 >= 1)
  {
    v22 = &__dst[8 * a5];
    v23 = &v10[v20];
    if (&v21[-8 * a5] < v10)
    {
      v24 = &__dst[a4];
      v25 = &__dst[a4 + -8 * a5];
      do
      {
        *(v24 - v6) = *(v25 - v6);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v6 < v10);
      v23 = (v24 - v6);
    }

    *(a1 + 8) = v23;
    if (v21 != v22)
    {
      memmove(&__dst[8 * a5], __dst, v21 - v22);
    }

    if (v10 != __dst)
    {
      v26 = __dst;
      v27 = v6;
      v28 = v10 - __dst;
LABEL_29:

      memmove(v26, v27, v28);
    }
  }
}

uint64_t std::__split_buffer<std::unique_ptr<cluster>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
    std::unique_ptr<cluster>::~unique_ptr[abi:ne200100]((i - 8));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void outlierScore::outlierScore(outlierScore *this, double a2, double a3, int a4)
{
  *this = a3;
  *(this + 1) = a2;
  *(this + 4) = a4;
}

{
  *this = a3;
  *(this + 1) = a2;
  *(this + 4) = a4;
}

BOOL outlierScore::operator<(uint64_t a1, uint64_t a2)
{
  v4[0] = a1 + 8;
  v4[1] = a1;
  v4[2] = a1 + 16;
  v3[0] = a2 + 8;
  v3[1] = a2;
  v3[2] = a2 + 16;
  return std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(v4, v3) == 0xFF;
}

uint64_t std::__tuple_compare_three_way[abi:ne200100]<double const&,double const&,int const&,double const&,double const&,int const&,0ul,1ul,2ul>(uint64_t a1, uint64_t a2)
{
  v2 = **a1;
  v3 = **a2;
  if (v2 == v3)
  {
    LODWORD(v4) = 0;
  }

  else
  {
    LODWORD(v4) = -127;
  }

  if (v2 > v3)
  {
    LODWORD(v4) = 1;
  }

  if (v2 < v3)
  {
    v4 = 0xFFFFFFFFLL;
  }

  else
  {
    v4 = v4;
  }

  if (!v4)
  {
    v5 = *(a1 + 8);
    v6 = *(a2 + 8);
    v7 = *v5 < *v6;
    v8 = *v5 <= *v6;
    if (*v5 == *v6)
    {
      LODWORD(v4) = 0;
    }

    else
    {
      LODWORD(v4) = -127;
    }

    if (!v8)
    {
      LODWORD(v4) = 1;
    }

    if (v7)
    {
      v4 = 0xFFFFFFFFLL;
    }

    else
    {
      v4 = v4;
    }

    if (!v4)
    {
      v9 = **(a1 + 16);
      v10 = **(a2 + 16);
      v11 = v9 == v10;
      if (v9 < v10)
      {
        LODWORD(v4) = -1;
      }

      else
      {
        LODWORD(v4) = 1;
      }

      if (v11)
      {
        return 0;
      }

      else
      {
        return v4;
      }
    }
  }

  return v4;
}

void hdbscanResult::hdbscanResult(hdbscanResult *this)
{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

{
  *(this + 8) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t hdbscanResult::hdbscanResult(uint64_t a1, char **a2, char **a3, char **a4, char a5)
{
  *(a1 + 48) = 0u;
  v9 = (a1 + 48);
  *(a1 + 64) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v10 = (a1 + 24);
  *a1 = 0u;
  if (a1 != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(a1, *a2, a2[1], (a2[1] - *a2) >> 2);
  }

  if (v10 != a3)
  {
    std::vector<outlierScore>::__assign_with_size[abi:ne200100]<outlierScore*,outlierScore*>(v10, *a3, a3[1], 0xAAAAAAAAAAAAAAABLL * ((a3[1] - *a3) >> 3));
  }

  if (v9 != a4)
  {
    std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>(v9, *a4, a4[1], (a4[1] - *a4) >> 3);
  }

  *(a1 + 72) = a5;
  return a1;
}

void sub_1CEF03824(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 56) = v5;
    operator delete(v5);
  }

  v6 = *v2;
  if (*v2)
  {
    *(v1 + 32) = v6;
    operator delete(v6);
  }

  v7 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v7;
    operator delete(v7);
  }

  _Unwind_Resume(exception_object);
}

uint64_t Tensor.init<A>(shape:scalars:on:)()
{
  return MEMORY[0x1EEE1FA08]();
}

{
  return MEMORY[0x1EEE1FA10]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE20]();
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x1EEE63ED0]();
}

{
  return MEMORY[0x1EEE63ED8]();
}

{
  return MEMORY[0x1EEE63EE8]();
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x1EEE73578](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}