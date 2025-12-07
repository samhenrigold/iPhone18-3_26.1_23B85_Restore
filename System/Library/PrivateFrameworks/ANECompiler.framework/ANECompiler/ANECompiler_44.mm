int *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::SplitDisjointBoxes(operations_research::sat::SchedulingConstraintHelper const&,absl::lts_20240722::Span<int>,std::vector<absl::lts_20240722::Span<int>> *)::$_0 &,int *,0>(int *result, int *a2, int *a3, int *a4, int *a5, uint64_t a6)
{
  v6 = *a2;
  v7 = *result;
  v8 = *(a6 + 8 * *a2);
  v9 = *(a6 + 8 * *result);
  v10 = *a3;
  v11 = *(a6 + 8 * *a3);
  if (v8 >= v9)
  {
    if (v11 >= v8)
    {
      v14 = *a4;
      if (*(a6 + 8 * v14) >= *(a6 + 8 * v10))
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    *a2 = v10;
    *a3 = v6;
    v12 = *a2;
    v13 = *result;
    if (*(a6 + 8 * v12) >= *(a6 + 8 * v13))
    {
      v15 = v6;
      v10 = v6;
      v14 = *a4;
      if (*(a6 + 8 * v14) >= *(a6 + 8 * v15))
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }

    *result = v12;
    *a2 = v13;
    v10 = *a3;
  }

  else
  {
    if (v11 < v8)
    {
      *result = v10;
      goto LABEL_9;
    }

    *result = v6;
    *a2 = v7;
    v10 = *a3;
    if (*(a6 + 8 * *a3) < v9)
    {
      *a2 = v10;
LABEL_9:
      *a3 = v7;
      v10 = v7;
      v14 = *a4;
      if (*(a6 + 8 * v14) >= *(a6 + 8 * v7))
      {
        goto LABEL_19;
      }

      goto LABEL_16;
    }
  }

  v14 = *a4;
  if (*(a6 + 8 * v14) >= *(a6 + 8 * v10))
  {
    goto LABEL_19;
  }

LABEL_16:
  *a3 = v14;
  *a4 = v10;
  v16 = *a3;
  v17 = *a2;
  if (*(a6 + 8 * v16) < *(a6 + 8 * v17))
  {
    *a2 = v16;
    *a3 = v17;
    v18 = *a2;
    v19 = *result;
    if (*(a6 + 8 * v18) < *(a6 + 8 * v19))
    {
      *result = v18;
      *a2 = v19;
    }
  }

LABEL_19:
  v20 = *a5;
  v21 = *a4;
  if (*(a6 + 8 * v20) < *(a6 + 8 * v21))
  {
    *a4 = v20;
    *a5 = v21;
    v22 = *a4;
    v23 = *a3;
    if (*(a6 + 8 * v22) < *(a6 + 8 * v23))
    {
      *a3 = v22;
      *a4 = v23;
      v24 = *a3;
      v25 = *a2;
      if (*(a6 + 8 * v24) < *(a6 + 8 * v25))
      {
        *a2 = v24;
        *a3 = v25;
        v26 = *a2;
        v27 = *result;
        if (*(a6 + 8 * v26) < *(a6 + 8 * v27))
        {
          *result = v26;
          *a2 = v27;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::anonymous namespace::SplitDisjointBoxes(operations_research::sat::SchedulingConstraintHelper const&,absl::lts_20240722::Span<int>,std::vector<absl::lts_20240722::Span<int>> *)::$_0 &,int *>(int *a1, int *a2, uint64_t a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = *(a3 + 272);
      v8 = *a1;
      v9 = a1[1];
      v10 = *(v7 + 8 * v9);
      v11 = *(v7 + 8 * v8);
      v12 = *(a2 - 1);
      v13 = *(v7 + 8 * v12);
      if (v10 >= v11)
      {
        if (v13 >= v10)
        {
          return 1;
        }

        a1[1] = v12;
        *(a2 - 1) = v9;
        v38 = *a1;
        v37 = a1[1];
        if (*(v7 + 8 * v37) >= *(v7 + 8 * v38))
        {
          return 1;
        }

        *a1 = v37;
        a1[1] = v38;
        return 1;
      }

      else if (v13 >= v10)
      {
        *a1 = v9;
        a1[1] = v8;
        v47 = *(a2 - 1);
        if (*(v7 + 8 * v47) >= v11)
        {
          return 1;
        }

        a1[1] = v47;
        *(a2 - 1) = v8;
        return 1;
      }

      else
      {
        *a1 = v12;
        *(a2 - 1) = v8;
        return 1;
      }
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        return 1;
      }

LABEL_14:
      v15 = a1 + 2;
      v14 = a1[2];
      v16 = a1[1];
      v17 = *(a3 + 272);
      v18 = *(v17 + 8 * v16);
      v19 = *a1;
      v20 = *(v17 + 8 * v19);
      v21 = *(v17 + 8 * v14);
      if (v18 >= v20)
      {
        if (v21 >= v18)
        {
          goto LABEL_27;
        }

        a1[1] = v14;
        *v15 = v16;
        v22 = a1;
        v23 = a1 + 1;
      }

      else
      {
        v22 = a1;
        v23 = a1 + 2;
        if (v21 < v18)
        {
LABEL_26:
          *v22 = v14;
          *v23 = v19;
LABEL_27:
          v39 = a1 + 3;
          if (a1 + 3 == a2)
          {
            return 1;
          }

          v40 = 0;
          for (i = 12; ; i += 4)
          {
            v42 = *v39;
            v43 = *v15;
            v44 = *(v17 + 8 * v42);
            if (v44 < *(v17 + 8 * v43))
            {
              break;
            }

LABEL_30:
            v15 = v39++;
            if (v39 == a2)
            {
              return 1;
            }
          }

          v45 = i;
          do
          {
            *(a1 + v45) = v43;
            v46 = v45 - 4;
            if (v45 == 4)
            {
              *a1 = v42;
              if (++v40 != 8)
              {
                goto LABEL_30;
              }

              return v39 + 1 == a2;
            }

            v43 = *(a1 + v45 - 8);
            v45 -= 4;
          }

          while (v44 < *(v17 + 8 * v43));
          *(a1 + v46) = v42;
          if (++v40 != 8)
          {
            goto LABEL_30;
          }

          return v39 + 1 == a2;
        }

        *a1 = v16;
        a1[1] = v19;
        v22 = a1 + 1;
        v23 = a1 + 2;
      }

      if (v21 >= v20)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    v24 = a1 + 1;
    v25 = a1[1];
    v26 = a1 + 2;
    v27 = a1[2];
    v28 = *(a3 + 272);
    v29 = *a1;
    v30 = *(v28 + 8 * v25);
    v31 = *(v28 + 8 * *a1);
    v32 = v27;
    v33 = *(v28 + 8 * v27);
    if (v30 >= v31)
    {
      if (v33 >= v30)
      {
        v25 = a1[2];
      }

      else
      {
        v34 = v25;
        *v24 = v27;
        *v26 = v25;
        v35 = a1;
        v36 = a1 + 1;
        v32 = v25;
        if (v33 < v31)
        {
          goto LABEL_44;
        }
      }

      v48 = *(a2 - 1);
      if (*(v28 + 8 * v48) >= *(v28 + 8 * v32))
      {
        return 1;
      }
    }

    else
    {
      v34 = v29;
      if (v33 < v30)
      {
        v35 = a1;
        v36 = a1 + 2;
        v25 = *a1;
        goto LABEL_44;
      }

      *a1 = v25;
      a1[1] = v29;
      v35 = a1 + 1;
      v36 = a1 + 2;
      v25 = v29;
      if (v33 < v31)
      {
LABEL_44:
        *v35 = v27;
        *v36 = v29;
        v48 = *(a2 - 1);
        if (*(v28 + 8 * v48) >= *(v28 + 8 * v34))
        {
          return 1;
        }

        goto LABEL_48;
      }

      v25 = v27;
      v48 = *(a2 - 1);
      if (*(v28 + 8 * v48) >= *(v28 + 8 * v32))
      {
        return 1;
      }
    }

LABEL_48:
    *v26 = v48;
    *(a2 - 1) = v25;
    v49 = *v26;
    v50 = *v24;
    v51 = *(v28 + 8 * v49);
    if (v51 >= *(v28 + 8 * v50))
    {
      return 1;
    }

    a1[1] = v49;
    a1[2] = v50;
    v52 = *a1;
    if (v51 >= *(v28 + 8 * v52))
    {
      return 1;
    }

    *a1 = v49;
    a1[1] = v52;
    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  v5 = *(a2 - 1);
  v6 = *a1;
  if (*(*(a3 + 272) + 8 * v5) >= *(*(a3 + 272) + 8 * v6))
  {
    return 1;
  }

  *a1 = v5;
  *(a2 - 1) = v6;
  return 1;
}

void *operations_research::sat::Model::Delete<operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F40C18;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::NonOverlappingRectanglesDisjunctivePropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F40C18;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::RectanglePairwisePropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F40C50;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::RectanglePairwisePropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F40C50;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *operations_research::sat::Model::Delete<operations_research::sat::NonOverlappingRectanglesEnergyPropagator>::~Delete(void *result)
{
  v1 = result[1];
  *result = &unk_284F40C88;
  result[1] = 0;
  if (v1)
  {
    v2 = result;
    (*(*v1 + 8))(v1);
    return v2;
  }

  return result;
}

void operations_research::sat::Model::Delete<operations_research::sat::NonOverlappingRectanglesEnergyPropagator>::~Delete(void *a1)
{
  v2 = a1[1];
  *a1 = &unk_284F40C88;
  a1[1] = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
    v1 = vars8;
  }

  JUMPOUT(0x23EED9460);
}

void *std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::Rectangle const*>,std::__wrap_iter<operations_research::sat::Rectangle const*>,std::back_insert_iterator<absl::lts_20240722::InlinedVector<operations_research::sat::Rectangle,10ul,std::allocator<operations_research::sat::Rectangle>>>,long,operations_research::sat::ModelRandomGenerator>(__int128 *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v6 = (a2 - a1) >> 5;
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = (a2 - a1) >> 5;
  }

  if (v7)
  {
    v9 = a1;
    while (v6 != 1)
    {
      if (v6)
      {
        v10 = __clz(v6);
        if (((v6 << v10) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = 64;
        }

        else
        {
          v11 = 63;
        }

        v12 = v11 - v10;
        v13 = v12 >> 6;
        if ((v12 & 0x3F) != 0)
        {
          ++v13;
        }

        if (v13 <= v12)
        {
          v14 = 0xFFFFFFFFFFFFFFFFLL >> -(v12 / v13);
        }

        else
        {
          v14 = 0;
        }

        do
        {
          v15 = (a5[2])(*a5) & v14;
        }

        while (v15 >= v6);
LABEL_21:
        if (v15 < v7)
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }

      if ((a5[2])(*a5) < v7)
      {
LABEL_22:
        if (*a3)
        {
          v16 = a3[1];
          v17 = a3[2];
        }

        else
        {
          v16 = a3 + 1;
          v17 = 10;
        }

        v18 = *a3 >> 1;
        if (v18 == v17)
        {
          absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Rectangle,10ul,std::allocator<operations_research::sat::Rectangle>>::EmplaceBackSlow<operations_research::sat::Rectangle const&>(a3, v9);
        }

        v19 = &v16[4 * v18];
        v20 = v9[1];
        *v19 = *v9;
        v19[1] = v20;
        *a3 += 2;
        --v7;
      }

LABEL_7:
      v9 += 2;
      --v6;
      if (!v7)
      {
        return a3;
      }
    }

    v15 = 0;
    goto LABEL_21;
  }

  return a3;
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Rectangle,10ul,std::allocator<operations_research::sat::Rectangle>>::EmplaceBackSlow<operations_research::sat::Rectangle const&>(void *a1, __int128 *a2)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 58) & 0x1FLL) != 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  operator new();
}

void *std::__sample[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<operations_research::sat::Rectangle const*>,std::__wrap_iter<operations_research::sat::Rectangle const*>,std::back_insert_iterator<absl::lts_20240722::InlinedVector<operations_research::sat::Rectangle,10ul,std::allocator<operations_research::sat::Rectangle>>>,unsigned long,operations_research::sat::ModelRandomGenerator>(__int128 *a1, uint64_t a2, void *a3, unint64_t a4, void *a5)
{
  v6 = (a2 - a1) >> 5;
  if (v6 >= a4)
  {
    v7 = a4;
  }

  else
  {
    v7 = (a2 - a1) >> 5;
  }

  if (v7)
  {
    v9 = a1;
    while (v6 != 1)
    {
      if (v6)
      {
        v10 = __clz(v6);
        if (((v6 << v10) & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v11 = 64;
        }

        else
        {
          v11 = 63;
        }

        v12 = v11 - v10;
        v13 = v12 >> 6;
        if ((v12 & 0x3F) != 0)
        {
          ++v13;
        }

        if (v13 <= v12)
        {
          v14 = 0xFFFFFFFFFFFFFFFFLL >> -(v12 / v13);
        }

        else
        {
          v14 = 0;
        }

        do
        {
          v15 = (a5[2])(*a5) & v14;
        }

        while (v15 >= v6);
LABEL_21:
        if (v15 < v7)
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }

      if ((a5[2])(*a5) < v7)
      {
LABEL_22:
        if (*a3)
        {
          v16 = a3[1];
          v17 = a3[2];
        }

        else
        {
          v16 = a3 + 1;
          v17 = 10;
        }

        v18 = *a3 >> 1;
        if (v18 == v17)
        {
          absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::Rectangle,10ul,std::allocator<operations_research::sat::Rectangle>>::EmplaceBackSlow<operations_research::sat::Rectangle const&>(a3, v9);
        }

        v19 = &v16[4 * v18];
        v20 = v9[1];
        *v19 = *v9;
        v19[1] = v20;
        *a3 += 2;
        --v7;
      }

LABEL_7:
      v9 += 2;
      --v6;
      if (!v7)
      {
        return a3;
      }
    }

    v15 = 0;
    goto LABEL_21;
  }

  return a3;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,false>(char *result, __n128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = result;
  while (1)
  {
    result = v8;
    v9 = (a2 - v8) >> 5;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return;
    }

    if (v9 == 2)
    {
      v72 = &a2[-2];
      v73 = a2[-2].n128_u64[1] - a2[-2].n128_u64[0];
      v74 = *(v8 + 8) - *v8;
      if (v74 < v73 || (v73 >= v74 ? (v75 = *(v8 + 24) - *(v8 + 16) < (a2[-1].n128_u64[1] - a2[-1].n128_u64[0])) : (v75 = 0), v75))
      {
        v172 = *v8;
        v177 = *(v8 + 16);
        v76 = a2[-1];
        *v8 = *v72;
        *(v8 + 16) = v76;
        *v72 = v172;
        a2[-1] = v177;
      }

      return;
    }

LABEL_9:
    if (v9 <= 23)
    {
      v77 = (v8 + 32);
      v79 = v8 == a2 || v77 == a2;
      if (a4)
      {
        if (v79)
        {
          return;
        }

        v80 = 0;
        v81 = v8;
        while (2)
        {
          v83 = v77;
          v85 = *(v81 + 32);
          v84 = *(v81 + 40);
          v86 = v84 - v85;
          v87 = *(v81 + 8) - *v81;
          if (v87 < v84 - v85)
          {
            v89 = *(v81 + 48);
            v88 = *(v81 + 56);
            goto LABEL_144;
          }

          v89 = *(v81 + 48);
          v88 = *(v81 + 56);
          if (v86 >= v87 && *(v81 + 24) - *(v81 + 16) < v88 - v89)
          {
LABEL_144:
            v91 = *(v81 + 16);
            *v83 = *v81;
            v83[1] = v91;
            v82 = v8;
            if (v81 != v8)
            {
              v92 = v80;
              while (1)
              {
                v94 = (v8 + v92);
                v95 = *(v8 + v92 - 24) - *(v8 + v92 - 32);
                if (v95 >= v86 && (v86 < v95 || *(v94 - 1) - *(v94 - 2) >= v88 - v89))
                {
                  break;
                }

                v93 = *(v8 + v92 - 16);
                *v94 = *(v8 + v92 - 32);
                v94[1] = v93;
                v92 -= 32;
                if (!v92)
                {
                  v82 = v8;
                  goto LABEL_135;
                }
              }

              v82 = (v8 + v92);
            }

LABEL_135:
            *v82 = v85;
            v82[1] = v84;
            v82[2] = v89;
            v82[3] = v88;
          }

          v77 = v83 + 2;
          v80 += 32;
          v81 = v83;
          if (&v83[2] == a2)
          {
            return;
          }

          continue;
        }
      }

      if (v79)
      {
        return;
      }

      while (2)
      {
        v155 = v77;
        v157 = *(result + 4);
        v156 = *(result + 5);
        v158 = v156 - v157;
        v159 = *(result + 1) - *result;
        if (v159 < v156 - v157)
        {
          v161 = *(result + 6);
          v160 = *(result + 7);
          v162 = v160 - v161;
          goto LABEL_228;
        }

        v161 = *(result + 6);
        v160 = *(result + 7);
        v162 = v160 - v161;
        if (v158 >= v159 && *(result + 3) - *(result + 2) < v162)
        {
          do
          {
            do
            {
LABEL_228:
              v164 = result;
              v165 = *(result + 1);
              *(result + 2) = *result;
              *(result + 3) = v165;
              v166 = *(result - 4);
              result -= 32;
              v167 = *(v164 - 3) - v166;
            }

            while (v167 < v158);
          }

          while (v158 >= v167 && *(v164 - 1) - *(v164 - 2) < v162);
          *v164 = v157;
          *(v164 + 1) = v156;
          *(v164 + 2) = v161;
          *(v164 + 3) = v160;
        }

        v77 = (v155 + 32);
        result = v155;
        if (v155 + 32 == a2)
        {
          return;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v8 == a2)
      {
        return;
      }

      v97 = (v9 - 2) >> 1;
      v98 = v97;
      do
      {
        v99 = v98;
        v100 = 32 * v98;
        if (v97 >= (32 * v98) >> 5)
        {
          v101 = (v100 >> 4) | 1;
          v102 = (v8 + 32 * v101);
          if ((v100 >> 4) + 2 < v9)
          {
            v103 = v102[1] - *v102;
            v104 = v102[5] - v102[4];
            if (v104 < v103 || (v103 >= v104 ? (v105 = v102[7] - v102[6] < v102[3] - v102[2]) : (v105 = 0), v105))
            {
              v102 += 4;
              v101 = (v100 >> 4) + 2;
            }
          }

          v106 = (v8 + v100);
          v107 = v102[1] - *v102;
          v109 = *v106;
          v108 = v106[1];
          v110 = v108 - *v106;
          if (v110 >= v107)
          {
            v111 = v106[2];
            v112 = v106[3];
            v113 = v112 - v111;
            if (v107 < v110 || v113 >= v102[3] - v102[2])
            {
              do
              {
                v115 = v106;
                v106 = v102;
                v116 = *(v102 + 1);
                *v115 = *v102;
                v115[1] = v116;
                if (v97 < v101)
                {
                  break;
                }

                v117 = 2 * v101;
                v101 = (2 * v101) | 1;
                v102 = (v8 + 32 * v101);
                v118 = v117 + 2;
                if (v118 < v9)
                {
                  v119 = v102[1] - *v102;
                  v120 = v102[5] - v102[4];
                  if (v120 < v119 || (v119 >= v120 ? (v121 = v102[7] - v102[6] < v102[3] - v102[2]) : (v121 = 0), v121))
                  {
                    v102 += 4;
                    v101 = v118;
                  }
                }

                v122 = v102[1] - *v102;
                if (v110 < v122)
                {
                  break;
                }
              }

              while (v122 < v110 || v113 >= v102[3] - v102[2]);
              *v106 = v109;
              v106[1] = v108;
              v106[2] = v111;
              v106[3] = v112;
            }
          }
        }

        v98 = v99 - 1;
      }

      while (v99);
      while (2)
      {
        v124 = 0;
        v173 = *v8;
        v178 = *(v8 + 16);
        v125 = v8;
        do
        {
          v127 = v125;
          v128 = &v125[2 * v124];
          v125 = v128 + 2;
          v129 = 2 * v124;
          v124 = (2 * v124) | 1;
          v130 = v129 + 2;
          if (v130 < v9)
          {
            v131 = v128 + 4;
            v132 = v128[2].n128_u64[1] - v128[2].n128_u64[0];
            v133 = v128[4].n128_u64[1] - v128[4].n128_u64[0];
            if (v133 < v132 || ((v134 = v128[5].n128_u64[1] - v128[5].n128_u64[0], v135 = v128[3].n128_u64[1] - v128[3].n128_u64[0], v132 >= v133) ? (v136 = v134 < v135) : (v136 = 0), v136))
            {
              v125 = v131;
              v124 = v130;
            }
          }

          v126 = v125[1];
          *v127 = *v125;
          v127[1] = v126;
        }

        while (v124 <= ((v9 - 2) >> 1));
        a2 -= 2;
        if (v125 == a2)
        {
          *v125 = v173;
          v125[1] = v178;
        }

        else
        {
          v137 = a2[1];
          *v125 = *a2;
          v125[1] = v137;
          *a2 = v173;
          a2[1] = v178;
          v138 = (&v125[2] - v8) >> 5;
          v139 = v138 - 2;
          if (v138 >= 2)
          {
            v140 = v139 >> 1;
            v141 = v8 + 32 * (v139 >> 1);
            v142 = *(v141 + 8) - *v141;
            v144 = v125->n128_u64[0];
            v143 = v125->n128_i64[1];
            v145 = v143 - v125->n128_u64[0];
            if (v145 < v142)
            {
              v147 = v125[1].n128_i64[0];
              v146 = v125[1].n128_i64[1];
              goto LABEL_208;
            }

            v147 = v125[1].n128_i64[0];
            v146 = v125[1].n128_i64[1];
            if (v142 >= v145 && v146 - v147 < *(v141 + 24) - *(v141 + 16))
            {
LABEL_208:
              v149 = *(v141 + 16);
              *v125 = *v141;
              v125[1] = v149;
              if (v139 >= 2)
              {
                while (1)
                {
                  v151 = v140 - 1;
                  v140 = (v140 - 1) >> 1;
                  v152 = (v8 + 32 * v140);
                  v153 = v152[1] - *v152;
                  if (v145 >= v153 && (v153 < v145 || v146 - v147 >= v152[3] - v152[2]))
                  {
                    break;
                  }

                  v150 = *(v152 + 1);
                  *v141 = *v152;
                  *(v141 + 16) = v150;
                  v141 = v8 + 32 * v140;
                  if (v151 <= 1)
                  {
                    goto LABEL_217;
                  }
                }
              }

              v152 = v141;
LABEL_217:
              *v152 = v144;
              v152[1] = v143;
              v152[2] = v147;
              v152[3] = v146;
            }
          }
        }

        v27 = v9-- <= 2;
        if (v27)
        {
          return;
        }

        continue;
      }
    }

    v10 = v9 >> 1;
    v11 = (v8 + 32 * (v9 >> 1));
    if (v9 < 0x81)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(&result[32 * (v9 >> 1)], result, &a2[-2]);
      --a3;
      v15 = *result;
      if ((a4 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_29:
      v17 = *(result + 1);
      v18 = v17 - v15;
LABEL_30:
      v29 = *(result + 2);
      v30 = *(result + 3);
      v31 = v30 - v29;
      for (i = 32; ; i += 32)
      {
        v33 = *&result[i + 8] - *&result[i];
        if (v18 >= v33 && (v33 < v18 || v31 >= *&result[i + 24] - *&result[i + 16]))
        {
          break;
        }
      }

      v35 = &result[i];
      v36 = &a2[-2];
      if (i == 32)
      {
        v41 = &a2[-2];
        while (1)
        {
          v37 = v41;
          v42 = v41 + 32;
          if (v35 >= v42)
          {
            break;
          }

          v43 = *(v37 + 1) - *v37;
          if (v18 >= v43)
          {
            v41 = v37 - 32;
            if (v43 < v18 || v31 >= *(v37 + 3) - *(v37 + 2))
            {
              continue;
            }
          }

          goto LABEL_53;
        }

        v37 = v42;
        v8 = v35;
      }

      else
      {
        do
        {
          v37 = v36;
          v38 = *(v36 + 1) - *v36;
          if (v18 < v38)
          {
            break;
          }

          v39 = *(v36 + 3) - *(v36 + 2);
          v36 -= 32;
        }

        while (v38 < v18 || v31 >= v39);
LABEL_53:
        v8 = v35;
        if (v35 < v37)
        {
          v45 = v37;
          do
          {
            v170 = *v8;
            v175 = *(v8 + 16);
            v46 = *(v45 + 1);
            *v8 = *v45;
            *(v8 + 16) = v46;
            *v45 = v170;
            *(v45 + 1) = v175;
            do
            {
              do
              {
                v47 = *(v8 + 32);
                v48 = *(v8 + 40);
                v8 += 32;
                v49 = v48 - v47;
              }

              while (v18 < v49);
            }

            while (v49 >= v18 && v31 < *(v8 + 24) - *(v8 + 16));
            v51 = v45 - 32;
            do
            {
              v45 = v51;
              v52 = *(v51 + 1) - *v51;
              if (v18 < v52)
              {
                break;
              }

              v53 = *(v51 + 3) - *(v51 + 2);
              v51 -= 32;
            }

            while (v52 < v18 || v31 >= v53);
          }

          while (v8 < v45);
        }
      }

      if ((v8 - 32) != result)
      {
        v56 = *(v8 - 16);
        *result = *(v8 - 32);
        *(result + 1) = v56;
      }

      *(v8 - 32) = v15;
      *(v8 - 24) = v17;
      *(v8 - 16) = v29;
      *(v8 - 8) = v30;
      if (v35 < v37)
      {
        goto LABEL_81;
      }

      v57 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *>(result, (v8 - 32));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *>(v8, a2))
      {
        a2 = (v8 - 32);
        if (v57)
        {
          return;
        }

        goto LABEL_1;
      }

      if ((v57 & 1) == 0)
      {
LABEL_81:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,false>(result, (v8 - 32), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(result, &result[32 * (v9 >> 1)], &a2[-2]);
      v12 = 32 * v10;
      v13 = &result[32 * v10 - 32];
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(result + 2, v13, &a2[-4]);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(result + 4, &result[v12 + 32], &a2[-6]);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(v13, v11, &result[v12 + 32]);
      v169 = *result;
      v174 = *(result + 1);
      v14 = v11[1];
      *result = *v11;
      *(result + 1) = v14;
      *v11 = v169;
      v11[1] = v174;
      --a3;
      v15 = *result;
      if (a4)
      {
        goto LABEL_29;
      }

LABEL_13:
      v16 = *(result - 3) - *(result - 4);
      v17 = *(result + 1);
      v18 = v17 - v15;
      if (v17 - v15 < v16)
      {
        goto LABEL_30;
      }

      v20 = *(result + 2);
      v19 = *(result + 3);
      v21 = v19 - v20;
      if (v16 >= v18 && v21 < *(result - 1) - *(result - 2))
      {
        goto LABEL_30;
      }

      v22 = a2[-2].n128_u64[0];
      v23 = a2[-2].n128_u64[1];
      if ((v23 - v22) >= v18 && (v18 < (v23 - v22) || (a2[-1].n128_u64[1] - a2[-1].n128_u64[0]) >= v21))
      {
        v68 = result + 32;
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          v69 = *(v68 + 1) - *v68;
          if (v69 < v18)
          {
            break;
          }

          v70 = *(v68 + 3) - *(v68 + 2);
          v68 += 32;
        }

        while (v18 < v69 || v70 >= v21);
      }

      else
      {
        v24 = result + 32;
        do
        {
          v8 = v24;
          v25 = *(v24 + 1) - *v24;
          if (v25 < v18)
          {
            break;
          }

          v26 = *(v24 + 3) - *(v24 + 2);
          v24 += 32;
          v27 = v18 >= v25 && v26 < v21;
        }

        while (!v27);
      }

      j = a2;
      if (v8 < a2)
      {
        for (j = a2 - 2; ; j -= 2)
        {
          v55 = v23 - v22;
          if (v55 >= v18 && (v18 < v55 || (j[1].n128_u64[1] - j[1].n128_u64[0]) >= v21))
          {
            break;
          }

          v22 = j[-2].n128_u64[0];
          v23 = j[-2].n128_u64[1];
        }
      }

      while (v8 < j)
      {
        v171 = *v8;
        v176 = *(v8 + 16);
        v58 = j[1];
        *v8 = *j;
        *(v8 + 16) = v58;
        *j = v171;
        j[1] = v176;
        v59 = (v8 + 32);
        do
        {
          v8 = v59;
          v60 = v59[1] - *v59;
          if (v60 < v18)
          {
            break;
          }

          v61 = v59[3] - v59[2];
          v59 += 4;
        }

        while (v18 < v60 || v61 >= v21);
        do
        {
          do
          {
            v64 = j[-2].n128_u64[0];
            v63 = j[-2].n128_u64[1];
            j -= 2;
            v65 = v63 - v64;
          }

          while (v65 < v18);
        }

        while (v18 >= v65 && (j[1].n128_u64[1] - j[1].n128_u64[0]) < v21);
      }

      if ((v8 - 32) != result)
      {
        v67 = *(v8 - 16);
        *result = *(v8 - 32);
        *(result + 1) = v67;
      }

      a4 = 0;
      *(v8 - 32) = v15;
      *(v8 - 24) = v17;
      *(v8 - 16) = v20;
      *(v8 - 8) = v19;
    }
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(v8, v8 + 32, v8 + 64, &a2[-2]);
      return;
    }

    if (v9 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(v8, (v8 + 32), (v8 + 64), (v8 + 96), a2 - 2);
      return;
    }

    goto LABEL_9;
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(v8, (v8 + 32), &a2[-2]);
}

__int128 *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(__int128 *result, __int128 *a2, __int128 *a3)
{
  v3 = *(a2 + 1) - *a2;
  v4 = *(result + 1) - *result;
  if (v4 < v3 || ((v5 = *(a2 + 3) - *(a2 + 2), v3 >= v4) ? (v6 = *(result + 3) - *(result + 2) < v5) : (v6 = 0), v6))
  {
    v17 = *(a3 + 1) - *a3;
    if (v3 < v17 || (v17 >= v3 ? (v18 = *(a2 + 3) - *(a2 + 2) < *(a3 + 3) - *(a3 + 2)) : (v18 = 0), v18))
    {
      v25 = *result;
      v24 = result[1];
      v27 = a3[1];
      *result = *a3;
      result[1] = v27;
    }

    else
    {
      v20 = *result;
      v19 = result[1];
      v21 = a2[1];
      *result = *a2;
      result[1] = v21;
      *a2 = v20;
      a2[1] = v19;
      v22 = *(a3 + 1) - *a3;
      v23 = *(a2 + 1) - *a2;
      if (v23 >= v22 && (v22 < v23 || *(a2 + 3) - *(a2 + 2) >= *(a3 + 3) - *(a3 + 2)))
      {
        return result;
      }

      v25 = *a2;
      v24 = a2[1];
      v26 = a3[1];
      *a2 = *a3;
      a2[1] = v26;
    }

    *a3 = v25;
    a3[1] = v24;
    return result;
  }

  v7 = *(a3 + 1) - *a3;
  if (v3 < v7 || (v7 >= v3 ? (v8 = v5 < *(a3 + 3) - *(a3 + 2)) : (v8 = 0), v8))
  {
    v10 = *a2;
    v9 = a2[1];
    v11 = a3[1];
    *a2 = *a3;
    a2[1] = v11;
    *a3 = v10;
    a3[1] = v9;
    v12 = *(a2 + 1) - *a2;
    v13 = *(result + 1) - *result;
    if (v13 < v12 || v12 >= v13 && *(result + 3) - *(result + 2) < *(a2 + 3) - *(a2 + 2))
    {
      v15 = *result;
      v14 = result[1];
      v16 = a2[1];
      *result = *a2;
      result[1] = v16;
      *a2 = v15;
      a2[1] = v14;
    }
  }

  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(a1, a2, a3);
  v9 = *(a4 + 8) - *a4;
  v10 = *(a3 + 8) - *a3;
  if (v10 < v9 || (v9 >= v10 ? (v11 = *(a3 + 24) - *(a3 + 16) < *(a4 + 24) - *(a4 + 16)) : (v11 = 0), v11))
  {
    v12 = *a3;
    result = *(a3 + 16);
    v13 = *(a4 + 16);
    *a3 = *a4;
    *(a3 + 16) = v13;
    *a4 = v12;
    *(a4 + 16) = result;
    v14 = *(a3 + 8) - *a3;
    v15 = *(a2 + 8) - *a2;
    if (v15 < v14 || v14 >= v15 && *(a2 + 24) - *(a2 + 16) < *(a3 + 24) - *(a3 + 16))
    {
      v16 = *a2;
      result = *(a2 + 16);
      v17 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v17;
      *a3 = v16;
      *(a3 + 16) = result;
      v18 = *(a2 + 8) - *a2;
      v19 = *(a1 + 8) - *a1;
      if (v19 < v18 || v18 >= v19 && *(a1 + 24) - *(a1 + 16) < *(a2 + 24) - *(a2 + 16))
      {
        v20 = *a1;
        result = *(a1 + 16);
        v21 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v21;
        *a2 = v20;
        *(a2 + 16) = result;
      }
    }
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5)
{
  result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(a1, a2, a3, a4).n128_u64[0];
  v11 = a5->n128_u64[1] - a5->n128_u64[0];
  v12 = a4->n128_u64[1] - a4->n128_u64[0];
  if (v12 < v11 || (v11 >= v12 ? (v13 = (a4[1].n128_u64[1] - a4[1].n128_u64[0]) < (a5[1].n128_u64[1] - a5[1].n128_u64[0])) : (v13 = 0), v13))
  {
    v14 = *a4;
    result = a4[1];
    v15 = a5[1];
    *a4 = *a5;
    a4[1] = v15;
    *a5 = v14;
    a5[1] = result;
    v16 = a4->n128_u64[1] - a4->n128_u64[0];
    v17 = a3->n128_u64[1] - a3->n128_u64[0];
    if (v17 < v16 || v16 >= v17 && (a3[1].n128_u64[1] - a3[1].n128_u64[0]) < (a4[1].n128_u64[1] - a4[1].n128_u64[0]))
    {
      v18 = *a3;
      result = a3[1];
      v19 = a4[1];
      *a3 = *a4;
      a3[1] = v19;
      *a4 = v18;
      a4[1] = result;
      v20 = a3->n128_u64[1] - a3->n128_u64[0];
      v21 = a2->n128_u64[1] - a2->n128_u64[0];
      if (v21 < v20 || v20 >= v21 && (a2[1].n128_u64[1] - a2[1].n128_u64[0]) < (a3[1].n128_u64[1] - a3[1].n128_u64[0]))
      {
        v22 = *a2;
        result = a2[1];
        v23 = a3[1];
        *a2 = *a3;
        a2[1] = v23;
        *a3 = v22;
        a3[1] = result;
        v24 = a2->n128_u64[1] - a2->n128_u64[0];
        v25 = a1->n128_u64[1] - a1->n128_u64[0];
        if (v25 < v24 || v24 >= v25 && (a1[1].n128_u64[1] - a1[1].n128_u64[0]) < (a2[1].n128_u64[1] - a2[1].n128_u64[0]))
        {
          v26 = *a1;
          result = a1[1];
          v27 = a2[1];
          *a1 = *a2;
          a1[1] = v27;
          *a2 = v26;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *>(__int128 *a1, __n128 *a2)
{
  v2 = (a2 - a1) >> 5;
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = a2 - 2;
        v4 = a2[-2].n128_u64[1] - a2[-2].n128_u64[0];
        v5 = *(a1 + 1) - *a1;
        if (v5 < v4 || (v4 >= v5 ? (v6 = *(a1 + 3) - *(a1 + 2) < (a2[-1].n128_u64[1] - a2[-1].n128_u64[0])) : (v6 = 0), v6))
        {
          v8 = *a1;
          v7 = a1[1];
          v9 = a2[-1];
          *a1 = *v3;
          a1[1] = v9;
          *v3 = v8;
          a2[-1] = v7;
        }

        return 1;
      }

      goto LABEL_16;
    }

    return 1;
  }

  switch(v2)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(a1, a1 + 2, &a2[-2]);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(a1, (a1 + 2), (a1 + 4), &a2[-2]);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
      return 1;
  }

LABEL_16:
  v10 = a1 + 4;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::FindConflict(std::vector<operations_research::sat::RectangleInRange>)::$_0 &,operations_research::sat::Rectangle *,0>(a1, a1 + 2, a1 + 4);
  v14 = (a1 + 6);
  if (a1 + 6 == a2)
  {
LABEL_39:
    v31 = 1;
    return (v31 | v13) & 1;
  }

  v13 = a2;
  v15 = 0;
  v16 = 0;
  while (1)
  {
    v19 = v14->n128_u64[0];
    v18 = v14->n128_i64[1];
    v20 = v18 - v14->n128_u64[0];
    v21 = *(v10 + 1) - *v10;
    if (v21 < v20)
    {
      break;
    }

    v23 = v14[1].n128_i64[0];
    v22 = v14[1].n128_i64[1];
    if (v20 >= v21 && *(v10 + 3) - *(v10 + 2) < v22 - v23)
    {
      goto LABEL_28;
    }

LABEL_20:
    v10 = v14;
    v15 += 32;
    v14 += 2;
    if (v14 == a2)
    {
      goto LABEL_39;
    }
  }

  v23 = v14[1].n128_i64[0];
  v22 = v14[1].n128_i64[1];
LABEL_28:
  v25 = v10[1];
  *v14 = *v10;
  v14[1] = v25;
  v17 = a1;
  if (v10 != a1)
  {
    v26 = v15;
    while (1)
    {
      v28 = *(a1 + v26 + 40) - *(a1 + v26 + 32);
      if (v28 >= v20 && (v20 < v28 || *(a1 + v26 + 56) - *(a1 + v26 + 48) >= v22 - v23))
      {
        break;
      }

      v27 = *(a1 + v26 + 48);
      *(a1 + v26 + 64) = *(a1 + v26 + 32);
      *(a1 + v26 + 80) = v27;
      v26 -= 32;
      if (v26 == -64)
      {
        v17 = a1;
        goto LABEL_19;
      }
    }

    v17 = (a1 + v26 + 64);
  }

LABEL_19:
  *v17 = v19;
  v17[1] = v18;
  v17[2] = v23;
  v17[3] = v22;
  if (++v16 != 8)
  {
    goto LABEL_20;
  }

  v31 = 0;
  v13 = &v14[2] == a2;
  return (v31 | v13) & 1;
}

char *std::vector<operations_research::sat::RectangleInRange>::__assign_with_size[abi:ne200100]<operations_research::sat::RectangleInRange*,operations_research::sat::RectangleInRange*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0x6DB6DB6DB6DB6DB7 * ((v6 - result) >> 3) < a4)
  {
    if (result)
    {
      a1[1] = result;
      v8 = a4;
      operator delete(result);
      a4 = v8;
      v6 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (a4 <= 0x492492492492492)
    {
      v9 = 0x6DB6DB6DB6DB6DB7 * (v6 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x249249249249249)
      {
        v11 = 0x492492492492492;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x492492492492492)
      {
        operator new();
      }
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0x6DB6DB6DB6DB6DB7 * ((v12 - result) >> 3) >= a4)
  {
    v16 = a3 - a2;
    if (v16)
    {
      v17 = result;
      memmove(result, a2, v16);
      result = v17;
    }

    a1[1] = &result[v16];
  }

  else
  {
    v14 = &a2[v13];
    if (v12 != result)
    {
      result = memmove(result, a2, v13);
      v12 = a1[1];
    }

    v15 = a3 - v14;
    if (v15)
    {
      result = memmove(v12, v14, v15);
    }

    a1[1] = &v12[v15];
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = (a2 - 24);
  v10 = a2 - 3;
  v11 = &a2[-5].n128_i8[8];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 3);
    if (v14 > 2)
    {
      break;
    }

    if (v14 < 2)
    {
      return result;
    }

    if (v14 == 2)
    {
      if ((a2[-1].n128_u64[1] * a2[-1].n128_u64[0]) > (v12[1].n128_u64[0] * v12->n128_u64[1]))
      {
        v208 = v12[1].n128_u64[0];
        v176 = *v12;
        v84 = *(a2 - 24);
        v12[1].n128_u64[0] = a2[-1].n128_u64[1];
        *v12 = v84;
        result = v176;
        a2[-1].n128_u64[1] = v208;
        *(a2 - 24) = v176;
      }

      return result;
    }

LABEL_9:
    if (v13 <= 575)
    {
      v88 = (v12 + 24);
      v90 = v12 == a2 || v88 == a2;
      if (a4)
      {
        if (!v90)
        {
          v91 = 0;
          v92 = v12;
          do
          {
            v94 = v92[2].n128_u64[0];
            v95 = v92[2].n128_u64[1];
            v96 = v92->n128_u64[1];
            v97 = v92[1].n128_u64[0];
            v92 = v88;
            if ((v95 * v94) > (v97 * v96))
            {
              v98 = v88->n128_u64[0];
              v99 = v91;
              do
              {
                v100 = v12 + v99;
                result = *(v12 + v99);
                *(v100 + 24) = result;
                *(v100 + 5) = *(v12[1].n128_u64 + v99);
                if (!v99)
                {
                  v93 = v12;
                  goto LABEL_126;
                }

                v99 -= 24;
              }

              while ((v95 * v94) > *(v100 - 1) * *(v100 - 2));
              v93 = (v12 + v99 + 24);
LABEL_126:
              v93->n128_u64[0] = v98;
              v93->n128_u64[1] = v94;
              v93[1].n128_u64[0] = v95;
            }

            v88 = (v92 + 24);
            v91 += 24;
          }

          while (&v92[1].n128_i8[8] != a2);
        }
      }

      else if (!v90)
      {
        do
        {
          v141 = a1[2].n128_u64[0];
          v142 = a1[2].n128_u64[1];
          v143 = a1->n128_u64[1];
          v144 = a1[1].n128_u64[0];
          a1 = v88;
          if ((v142 * v141) > (v144 * v143))
          {
            v145 = v88->n128_u64[0];
            v146 = v88;
            do
            {
              result = *(v146 - 24);
              *v146 = result;
              v146[1].n128_u64[0] = v146[-1].n128_u64[1];
              v147 = v146[-3].n128_u64[1];
              v148 = v146[-2].n128_u64[0];
              v146 = (v146 - 24);
            }

            while ((v142 * v141) > (v148 * v147));
            v146->n128_u64[0] = v145;
            v146->n128_u64[1] = v141;
            v146[1].n128_u64[0] = v142;
          }

          v88 = (v88 + 24);
        }

        while (&a1[1].n128_i8[8] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v101 = (v14 - 2) >> 1;
        v102 = v101;
        do
        {
          if (v101 >= (0xAAAAAAAAAAAAAAABLL * ((24 * v102) >> 3)))
          {
            v103 = (0x5555555555555556 * ((24 * v102) >> 3)) | 1;
            v104 = &v12->n128_u64[3 * v103];
            if (0x5555555555555556 * ((24 * v102) >> 3) + 2 < v14)
            {
              v105 = v104[2] * v104[1];
              v106 = v104[5] * v104[4];
              v107 = v105 <= v106;
              v108 = v105 <= v106 ? 0 : 24;
              v104 = (v104 + v108);
              if (!v107)
              {
                v103 = 0x5555555555555556 * ((24 * v102) >> 3) + 2;
              }
            }

            v109 = &v12->n128_u64[3 * v102];
            v110 = v109[1];
            v111 = v109[2];
            if ((v104[2] * v104[1]) <= (v111 * v110))
            {
              v112 = *v109;
              do
              {
                v113 = v109;
                v109 = v104;
                v114 = *v104;
                v113[2] = v104[2];
                *v113 = v114;
                if (v101 < v103)
                {
                  break;
                }

                v115 = (2 * v103) | 1;
                v104 = &v12->n128_u64[3 * v115];
                v116 = 2 * v103 + 2;
                if (v116 < v14)
                {
                  v117 = v104[2] * v104[1];
                  v118 = v104[5] * v104[4];
                  v119 = v117 <= v118;
                  v120 = v117 <= v118 ? 0 : 24;
                  v104 = (v104 + v120);
                  if (!v119)
                  {
                    v115 = v116;
                  }
                }

                v103 = v115;
              }

              while ((v104[2] * v104[1]) <= (v111 * v110));
              *v109 = v112;
              v109[1] = v110;
              v109[2] = v111;
            }
          }

          v107 = v102-- <= 0;
        }

        while (!v107);
        v121 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          v122 = 0;
          v210 = v12[1].n128_u64[0];
          v178 = *v12;
          v123 = v12;
          do
          {
            v130 = &v123->n128_u64[3 * v122];
            v128 = (v130 + 3);
            v131 = (2 * v122) | 1;
            v122 = 2 * v122 + 2;
            if (v122 < v121)
            {
              v124 = v130[7];
              v125 = v130[8];
              v126 = v130[5] * v130[4];
              v127 = (v130 + 6);
              if (v126 <= (v125 * v124))
              {
                v122 = v131;
              }

              else
              {
                v128 = v127;
              }
            }

            else
            {
              v122 = v131;
            }

            v129 = *v128;
            v123[1].n128_u64[0] = v128[1].n128_u64[0];
            *v123 = v129;
            v123 = v128;
          }

          while (v122 <= ((v121 - 2) >> 1));
          a2 = (a2 - 24);
          if (v128 == a2)
          {
            result = v178;
            v128[1].n128_u64[0] = v210;
            *v128 = v178;
          }

          else
          {
            v132 = *a2;
            v128[1].n128_u64[0] = a2[1].n128_u64[0];
            *v128 = v132;
            result = v178;
            a2[1].n128_u64[0] = v210;
            *a2 = v178;
            v133 = v128 - v12 + 24;
            if (v133 >= 25)
            {
              v134 = (-2 - 0x5555555555555555 * (v133 >> 3)) >> 1;
              v135 = (v12 + 24 * v134);
              v136 = v128->n128_u64[1];
              v137 = v128[1].n128_u64[0];
              if ((v135[1].n128_u64[0] * v135->n128_u64[1]) > (v137 * v136))
              {
                v138 = v128->n128_u64[0];
                do
                {
                  v139 = v128;
                  v128 = v135;
                  result = *v135;
                  v139[1].n128_u64[0] = v135[1].n128_u64[0];
                  *v139 = result;
                  if (!v134)
                  {
                    break;
                  }

                  v134 = (v134 - 1) >> 1;
                  v135 = (v12 + 24 * v134);
                }

                while ((v135[1].n128_u64[0] * v135->n128_u64[1]) > (v137 * v136));
                v128->n128_u64[0] = v138;
                v128->n128_u64[1] = v136;
                v128[1].n128_u64[0] = v137;
              }
            }
          }

          v107 = v121-- <= 2;
        }

        while (!v107);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = (v12 + 24 * (v14 >> 1));
    v17 = a2[-1].n128_u64[1] * a2[-1].n128_u64[0];
    if (v13 < 0xC01)
    {
      v20 = v12[1].n128_u64[0] * v12->n128_u64[1];
      if (v20 > (v16[1].n128_u64[0] * v16->n128_u64[1]))
      {
        if (v17 > v20)
        {
          v183 = v16[1].n128_u64[0];
          v151 = *v16;
          v21 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v21;
          goto LABEL_36;
        }

        v192 = v16[1].n128_u64[0];
        v160 = *v16;
        v35 = *v12;
        v16[1].n128_u64[0] = v12[1].n128_u64[0];
        *v16 = v35;
        result = v160;
        v12[1].n128_u64[0] = v192;
        *v12 = v160;
        if ((a2[-1].n128_u64[1] * a2[-1].n128_u64[0]) > (v12[1].n128_u64[0] * v12->n128_u64[1]))
        {
          v183 = v12[1].n128_u64[0];
          v151 = *v12;
          v36 = *v9;
          v12[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v36;
LABEL_36:
          result = v151;
          a2[-1].n128_u64[1] = v183;
          *v9 = v151;
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v17 <= v20)
      {
        goto LABEL_37;
      }

      v186 = v12[1].n128_u64[0];
      v154 = *v12;
      v24 = *v9;
      v12[1].n128_u64[0] = a2[-1].n128_u64[1];
      *v12 = v24;
      result = v154;
      a2[-1].n128_u64[1] = v186;
      *v9 = v154;
      if ((v12[1].n128_u64[0] * v12->n128_u64[1]) <= (v16[1].n128_u64[0] * v16->n128_u64[1]))
      {
        goto LABEL_37;
      }

      v187 = v16[1].n128_u64[0];
      v155 = *v16;
      v25 = *v12;
      v16[1].n128_u64[0] = v12[1].n128_u64[0];
      *v16 = v25;
      result = v155;
      v12[1].n128_u64[0] = v187;
      *v12 = v155;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      v37 = v12->n128_u64[1];
      v38 = v12[1].n128_u64[0];
      v39 = v38 * v37;
      if ((v12[-1].n128_u64[1] * v12[-1].n128_u64[0]) > (v38 * v37))
      {
        goto LABEL_62;
      }

      if (v39 <= (a2[-1].n128_u64[1] * a2[-1].n128_u64[0]))
      {
        v72 = &v12[1].n128_u64[1];
        do
        {
          v12 = v72;
          if (v72 >= a2)
          {
            break;
          }

          v73 = *(v72 + 16) * *(v72 + 8);
          v72 += 24;
        }

        while (v39 <= v73);
      }

      else
      {
        v70 = v12;
        do
        {
          v12 = (v70 + 24);
          v71 = v70[2].n128_u64[1] * v70[2].n128_u64[0];
          v70 = (v70 + 24);
        }

        while (v39 <= v71);
      }

      v74 = a2;
      if (v12 < a2)
      {
        v75 = a2;
        do
        {
          v74 = (v75 - 24);
          v76 = v75[-1].n128_u64[1] * v75[-1].n128_u64[0];
          v75 = (v75 - 24);
        }

        while (v39 > v76);
      }

      v77 = a1->n128_u64[0];
      while (v12 < v74)
      {
        v204 = v12[1].n128_u64[0];
        v172 = *v12;
        v78 = *v74;
        v12[1].n128_u64[0] = v74[1].n128_u64[0];
        *v12 = v78;
        result = v172;
        v74[1].n128_u64[0] = v204;
        *v74 = v172;
        do
        {
          v79 = v12[2].n128_u64[0];
          v80 = v12[2].n128_u64[1];
          v12 = (v12 + 24);
        }

        while (v39 <= (v80 * v79));
        do
        {
          v81 = v74[-1].n128_u64[0];
          v82 = v74[-1].n128_u64[1];
          v74 = (v74 - 24);
        }

        while (v39 > (v82 * v81));
      }

      if (&v12[-2].n128_i8[8] != a1)
      {
        result = *(v12 - 24);
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = result;
      }

      a4 = 0;
      v12[-2].n128_u64[1] = v77;
      v12[-1].n128_u64[0] = v37;
      v12[-1].n128_u64[1] = v38;
    }

    else
    {
      v18 = v16[1].n128_u64[0] * v16->n128_u64[1];
      if (v18 <= (v12[1].n128_u64[0] * v12->n128_u64[1]))
      {
        if (v17 > v18)
        {
          v184 = v16[1].n128_u64[0];
          v152 = *v16;
          v22 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v22;
          a2[-1].n128_u64[1] = v184;
          *v9 = v152;
          if ((v16[1].n128_u64[0] * v16->n128_u64[1]) > (v12[1].n128_u64[0] * v12->n128_u64[1]))
          {
            v185 = v12[1].n128_u64[0];
            v153 = *v12;
            v23 = *v16;
            v12[1].n128_u64[0] = v16[1].n128_u64[0];
            *v12 = v23;
            v16[1].n128_u64[0] = v185;
            *v16 = v153;
          }
        }
      }

      else
      {
        if (v17 <= v18)
        {
          v188 = v12[1].n128_u64[0];
          v156 = *v12;
          v26 = *v16;
          v12[1].n128_u64[0] = v16[1].n128_u64[0];
          *v12 = v26;
          v16[1].n128_u64[0] = v188;
          *v16 = v156;
          if ((a2[-1].n128_u64[1] * a2[-1].n128_u64[0]) <= (v16[1].n128_u64[0] * v16->n128_u64[1]))
          {
            goto LABEL_28;
          }

          v182 = v16[1].n128_u64[0];
          v150 = *v16;
          v27 = *v9;
          v16[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v16 = v27;
        }

        else
        {
          v182 = v12[1].n128_u64[0];
          v150 = *v12;
          v19 = *v9;
          v12[1].n128_u64[0] = a2[-1].n128_u64[1];
          *v12 = v19;
        }

        a2[-1].n128_u64[1] = v182;
        *v9 = v150;
      }

LABEL_28:
      v28 = v12 + 24 * v15;
      v29 = (v28 - 24);
      v30 = *(v28 - 1) * *(v28 - 2);
      v31 = a2[-2].n128_u64[0] * a2[-3].n128_u64[1];
      if (v30 <= (v12[2].n128_u64[1] * v12[2].n128_u64[0]))
      {
        if (v31 > v30)
        {
          v190 = v29[1].n128_u64[0];
          v158 = *v29;
          v33 = *v10;
          v29[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v29 = v33;
          a2[-2].n128_u64[0] = v190;
          *v10 = v158;
          if ((v29[1].n128_u64[0] * v29->n128_u64[1]) > (v12[2].n128_u64[1] * v12[2].n128_u64[0]))
          {
            v191 = v12[2].n128_u64[1];
            v159 = *(v12 + 24);
            v34 = *v29;
            v12[2].n128_u64[1] = v29[1].n128_u64[0];
            *(v12 + 24) = v34;
            v29[1].n128_u64[0] = v191;
            *v29 = v159;
          }
        }
      }

      else
      {
        if (v31 <= v30)
        {
          v193 = v12[2].n128_u64[1];
          v161 = *(v12 + 24);
          v40 = *v29;
          v12[2].n128_u64[1] = v29[1].n128_u64[0];
          *(v12 + 24) = v40;
          v29[1].n128_u64[0] = v193;
          *v29 = v161;
          if ((a2[-2].n128_u64[0] * a2[-3].n128_u64[1]) <= (v29[1].n128_u64[0] * v29->n128_u64[1]))
          {
            goto LABEL_42;
          }

          v189 = v29[1].n128_u64[0];
          v157 = *v29;
          v41 = *v10;
          v29[1].n128_u64[0] = a2[-2].n128_u64[0];
          *v29 = v41;
        }

        else
        {
          v189 = v12[2].n128_u64[1];
          v157 = *(v12 + 24);
          v32 = *v10;
          v12[2].n128_u64[1] = a2[-2].n128_u64[0];
          *(v12 + 24) = v32;
        }

        a2[-2].n128_u64[0] = v189;
        *v10 = v157;
      }

LABEL_42:
      v42 = v12 + 24 * v15;
      v43 = *(v42 + 5) * *(v42 + 4);
      v44 = a2[-4].n128_u64[1] * a2[-4].n128_u64[0];
      if (v43 <= (v12[4].n128_u64[0] * v12[3].n128_u64[1]))
      {
        if (v44 > v43)
        {
          v195 = *(v42 + 5);
          v163 = *(v42 + 24);
          v46 = *v11;
          *(v42 + 5) = a2[-4].n128_u64[1];
          *(v42 + 24) = v46;
          a2[-4].n128_u64[1] = v195;
          *v11 = v163;
          if (*(v42 + 5) * *(v42 + 4) > (v12[4].n128_u64[0] * v12[3].n128_u64[1]))
          {
            v196 = v12[4].n128_u64[0];
            v164 = v12[3];
            v47 = *(v42 + 24);
            v12[4].n128_u64[0] = *(v42 + 5);
            v12[3] = v47;
            *(v42 + 5) = v196;
            *(v42 + 24) = v164;
          }
        }
      }

      else
      {
        if (v44 <= v43)
        {
          v197 = v12[4].n128_u64[0];
          v165 = v12[3];
          v48 = *(v42 + 24);
          v12[4].n128_u64[0] = *(v42 + 5);
          v12[3] = v48;
          *(v42 + 5) = v197;
          *(v42 + 24) = v165;
          if ((a2[-4].n128_u64[1] * a2[-4].n128_u64[0]) <= *(v42 + 5) * *(v42 + 4))
          {
            goto LABEL_51;
          }

          v194 = *(v42 + 5);
          v162 = *(v42 + 24);
          v49 = *v11;
          *(v42 + 5) = a2[-4].n128_u64[1];
          *(v42 + 24) = v49;
        }

        else
        {
          v194 = v12[4].n128_u64[0];
          v162 = v12[3];
          v45 = *v11;
          v12[4].n128_u64[0] = a2[-4].n128_u64[1];
          v12[3] = v45;
        }

        a2[-4].n128_u64[1] = v194;
        *v11 = v162;
      }

LABEL_51:
      v50 = v16[1].n128_u64[0] * v16->n128_u64[1];
      v51 = *(v42 + 5) * *(v42 + 4);
      if (v50 <= (v29[1].n128_u64[0] * v29->n128_u64[1]))
      {
        if (v51 > v50)
        {
          v199 = v16[1].n128_u64[0];
          v167 = *v16;
          *v16 = *(v42 + 24);
          v16[1].n128_u64[0] = *(v42 + 5);
          *(v42 + 5) = v199;
          *(v42 + 24) = v167;
          if ((v16[1].n128_u64[0] * v16->n128_u64[1]) > (v29[1].n128_u64[0] * v29->n128_u64[1]))
          {
            v200 = v29[1].n128_u64[0];
            v168 = *v29;
            *v29 = *v16;
            v29[1].n128_u64[0] = v16[1].n128_u64[0];
            v16[1].n128_u64[0] = v200;
            *v16 = v168;
          }
        }
      }

      else
      {
        if (v51 <= v50)
        {
          v201 = v29[1].n128_u64[0];
          v169 = *v29;
          *v29 = *v16;
          v29[1].n128_u64[0] = v16[1].n128_u64[0];
          v16[1].n128_u64[0] = v201;
          *v16 = v169;
          if (*(v42 + 5) * *(v42 + 4) <= (v16[1].n128_u64[0] * v16->n128_u64[1]))
          {
            goto LABEL_60;
          }

          v198 = v16[1].n128_u64[0];
          v166 = *v16;
          *v16 = *(v42 + 24);
          v16[1].n128_u64[0] = *(v42 + 5);
        }

        else
        {
          v198 = v29[1].n128_u64[0];
          v166 = *v29;
          *v29 = *(v42 + 24);
          v29[1].n128_u64[0] = *(v42 + 5);
        }

        *(v42 + 5) = v198;
        *(v42 + 24) = v166;
      }

LABEL_60:
      v202 = v12[1].n128_u64[0];
      v170 = *v12;
      v52 = *v16;
      v12[1].n128_u64[0] = v16[1].n128_u64[0];
      *v12 = v52;
      result = v170;
      v16[1].n128_u64[0] = v202;
      *v16 = v170;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v37 = v12->n128_u64[1];
      v38 = v12[1].n128_u64[0];
      v39 = v38 * v37;
LABEL_62:
      v53 = 0;
      v54 = v12->n128_u64[0];
      do
      {
        v55 = v12[2].n128_u64[v53 + 1] * v12[2].n128_u64[v53];
        v53 += 3;
      }

      while (v55 > v39);
      v56 = (v12 + v53 * 8);
      v57 = a2;
      if (v53 == 3)
      {
        v60 = a2;
        while (v56 < v60)
        {
          v58 = (v60 - 24);
          v61 = v60[-1].n128_u64[1] * v60[-1].n128_u64[0];
          v60 = (v60 - 24);
          if (v61 > v39)
          {
            goto LABEL_70;
          }
        }

        v58 = v60;
        v12 = v56;
      }

      else
      {
        do
        {
          v58 = (v57 - 24);
          v59 = v57[-1].n128_u64[1] * v57[-1].n128_u64[0];
          v57 = (v57 - 24);
        }

        while (v59 <= v39);
LABEL_70:
        v12 = v56;
        if (v56 < v58)
        {
          v62 = v58;
          do
          {
            v203 = v12[1].n128_u64[0];
            v171 = *v12;
            v63 = *v62;
            v12[1].n128_u64[0] = *(v62 + 16);
            *v12 = v63;
            result = v171;
            *(v62 + 16) = v203;
            *v62 = v171;
            do
            {
              v64 = v12[2].n128_u64[0];
              v65 = v12[2].n128_u64[1];
              v12 = (v12 + 24);
            }

            while ((v65 * v64) > v39);
            do
            {
              v66 = *(v62 - 16);
              v67 = *(v62 - 8);
              v62 -= 24;
            }

            while (v67 * v66 <= v39);
          }

          while (v12 < v62);
        }
      }

      if (&v12[-2].n128_i8[8] != a1)
      {
        result = *(v12 - 24);
        a1[1].n128_u64[0] = v12[-1].n128_u64[1];
        *a1 = result;
      }

      v12[-2].n128_u64[1] = v54;
      v12[-1].n128_u64[0] = v37;
      v12[-1].n128_u64[1] = v38;
      if (v56 < v58)
      {
        goto LABEL_81;
      }

      v68 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *>(a1, &v12[-2].n128_u64[1], result);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *>(v12, a2, v69))
      {
        a2 = (v12 - 24);
        if ((v68 & 1) == 0)
        {
          goto LABEL_1;
        }

        return result;
      }

      if ((v68 & 1) == 0)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *,false>(a1, (v12 - 24), a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {

      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *,0>(v12, (v12 + 24), v12 + 3, (a2 - 24), result).n128_u64[0];
      return result;
    }

    if (v14 == 5)
    {
      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *,0>(v12, (v12 + 24), v12 + 3, (v12 + 72), result).n128_u64[0];
      if ((a2[-1].n128_u64[1] * a2[-1].n128_u64[0]) <= (v12[5].n128_u64[1] * v12[5].n128_u64[0]))
      {
        return result;
      }

      v205 = v12[5].n128_u64[1];
      v173 = *(v12 + 72);
      v83 = *(a2 - 24);
      v12[5].n128_u64[1] = a2[-1].n128_u64[1];
      *(v12 + 72) = v83;
      result = v173;
      a2[-1].n128_u64[1] = v205;
      *(a2 - 24) = v173;
      if ((v12[5].n128_u64[1] * v12[5].n128_u64[0]) <= (v12[4].n128_u64[0] * v12[3].n128_u64[1]))
      {
        return result;
      }

      v206 = v12[4].n128_u64[0];
      v174 = v12[3];
      v12[3] = *(v12 + 72);
      v12[4].n128_u64[0] = v12[5].n128_u64[1];
      result = v174;
      v12[5].n128_u64[1] = v206;
      *(v12 + 72) = v174;
      if ((v12[4].n128_u64[0] * v12[3].n128_u64[1]) <= (v12[2].n128_u64[1] * v12[2].n128_u64[0]))
      {
        return result;
      }

      v207 = v12[2].n128_u64[1];
      v175 = *(v12 + 24);
      *(v12 + 24) = v12[3];
      v12[2].n128_u64[1] = v12[4].n128_u64[0];
      result = v175;
      v12[4].n128_u64[0] = v207;
      v12[3] = v175;
      goto LABEL_174;
    }

    goto LABEL_9;
  }

  v85 = v12[2].n128_u64[1] * v12[2].n128_u64[0];
  v86 = a2[-1].n128_u64[1] * a2[-1].n128_u64[0];
  if (v85 <= (v12[1].n128_u64[0] * v12->n128_u64[1]))
  {
    if (v86 <= v85)
    {
      return result;
    }

    v211 = v12[2].n128_u64[1];
    v179 = *(v12 + 24);
    v140 = *v9;
    v12[2].n128_u64[1] = a2[-1].n128_u64[1];
    *(v12 + 24) = v140;
    result = v179;
    a2[-1].n128_u64[1] = v211;
    *v9 = v179;
LABEL_174:
    if ((v12[2].n128_u64[1] * v12[2].n128_u64[0]) > (v12[1].n128_u64[0] * v12->n128_u64[1]))
    {
      v212 = v12[1].n128_u64[0];
      v180 = *v12;
      *v12 = *(v12 + 24);
      v12[1].n128_u64[0] = v12[2].n128_u64[1];
      result = v180;
      v12[2].n128_u64[1] = v212;
      *(v12 + 24) = v180;
    }

    return result;
  }

  if (v86 <= v85)
  {
    v213 = v12[1].n128_u64[0];
    v181 = *v12;
    *v12 = *(v12 + 24);
    v12[1].n128_u64[0] = v12[2].n128_u64[1];
    result = v181;
    v12[2].n128_u64[1] = v213;
    *(v12 + 24) = v181;
    if ((a2[-1].n128_u64[1] * a2[-1].n128_u64[0]) <= (v12[2].n128_u64[1] * v12[2].n128_u64[0]))
    {
      return result;
    }

    v209 = v12[2].n128_u64[1];
    v177 = *(v12 + 24);
    v149 = *v9;
    v12[2].n128_u64[1] = a2[-1].n128_u64[1];
    *(v12 + 24) = v149;
  }

  else
  {
    v209 = v12[1].n128_u64[0];
    v177 = *v12;
    v87 = *v9;
    v12[1].n128_u64[0] = a2[-1].n128_u64[1];
    *v12 = v87;
  }

  result = v177;
  a2[-1].n128_u64[1] = v209;
  *v9 = v177;
  return result;
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 result)
{
  v5 = a2[1].n128_u64[0] * a2->n128_u64[1];
  v6 = a3[1].n128_u64[0] * a3->n128_u64[1];
  if (v5 <= (a1[1].n128_u64[0] * a1->n128_u64[1]))
  {
    if (v6 > v5)
    {
      v9 = a2[1].n128_u64[0];
      result = *a2;
      v10 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v10;
      *a3 = result;
      a3[1].n128_u64[0] = v9;
      if ((a2[1].n128_u64[0] * a2->n128_u64[1]) > (a1[1].n128_u64[0] * a1->n128_u64[1]))
      {
        v11 = a1[1].n128_u64[0];
        result = *a1;
        v12 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v12;
        *a2 = result;
        a2[1].n128_u64[0] = v11;
      }
    }
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a1[1].n128_u64[0];
      result = *a1;
      v8 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v8;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v7;
      goto LABEL_10;
    }

    v13 = a1[1].n128_u64[0];
    result = *a1;
    v14 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v14;
    *a2 = result;
    a2[1].n128_u64[0] = v13;
    if ((a3[1].n128_u64[0] * a3->n128_u64[1]) > (a2[1].n128_u64[0] * a2->n128_u64[1]))
    {
      v7 = a2[1].n128_u64[0];
      result = *a2;
      v15 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v15;
      goto LABEL_9;
    }
  }

LABEL_10:
  if ((a4[1].n128_u64[0] * a4->n128_u64[1]) > (a3[1].n128_u64[0] * a3->n128_u64[1]))
  {
    v16 = a3[1].n128_u64[0];
    result = *a3;
    v17 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v17;
    *a4 = result;
    a4[1].n128_u64[0] = v16;
    if ((a3[1].n128_u64[0] * a3->n128_u64[1]) > (a2[1].n128_u64[0] * a2->n128_u64[1]))
    {
      v18 = a2[1].n128_u64[0];
      result = *a2;
      v19 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v19;
      *a3 = result;
      a3[1].n128_u64[0] = v18;
      if ((a2[1].n128_u64[0] * a2->n128_u64[1]) > (a1[1].n128_u64[0] * a1->n128_u64[1]))
      {
        v20 = a1[1].n128_u64[0];
        result = *a1;
        v21 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v21;
        *a2 = result;
        a2[1].n128_u64[0] = v20;
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *>(uint64_t a1, void *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v20 = (a2 - 3);
      v21 = *(a1 + 40) * *(a1 + 32);
      v22 = *(a2 - 1) * *(a2 - 2);
      if (v21 <= *(a1 + 16) * *(a1 + 8))
      {
        if (v22 > v21)
        {
          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          v34 = *(a2 - 1);
          *(a1 + 24) = *v20;
          *(a1 + 40) = v34;
          *v20 = v33;
          *(a2 - 1) = v32;
          if (*(a1 + 40) * *(a1 + 32) > *(a1 + 16) * *(a1 + 8))
          {
            v35 = *(a1 + 16);
            v36 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v36;
            *(a1 + 40) = v35;
          }
        }

        return 1;
      }

      if (v22 <= v21)
      {
        v42 = *(a1 + 16);
        v43 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 24) = v43;
        v44 = *(a1 + 32);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 40) = v42;
        if (*(a2 - 1) * *(a2 - 2) <= *(a1 + 40) * v44)
        {
          return 1;
        }

        v23 = *(a1 + 40);
        v24 = *(a1 + 24);
        v45 = *(a2 - 1);
        *(a1 + 24) = *v20;
        *(a1 + 40) = v45;
      }

      else
      {
        v23 = *(a1 + 16);
        v24 = *a1;
        v25 = *(a2 - 1);
        *a1 = *v20;
        *(a1 + 16) = v25;
      }

      *v20 = v24;
      *(a2 - 1) = v23;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), a3);
        if (*(a2 - 1) * *(a2 - 2) > *(a1 + 88) * *(a1 + 80))
        {
          v9 = *(a1 + 88);
          v10 = *(a1 + 72);
          v11 = *(a2 - 1);
          *(a1 + 72) = *(a2 - 3);
          *(a1 + 88) = v11;
          *(a2 - 3) = v10;
          *(a2 - 1) = v9;
          if (*(a1 + 88) * *(a1 + 80) > *(a1 + 64) * *(a1 + 56))
          {
            v12 = *(a1 + 48);
            *(a1 + 48) = *(a1 + 72);
            v14 = *(a1 + 56);
            v13 = *(a1 + 64);
            *(a1 + 64) = *(a1 + 88);
            *(a1 + 72) = v12;
            *(a1 + 88) = v13;
            if (*(a1 + 64) * v14 > *(a1 + 40) * *(a1 + 32))
            {
              v15 = *(a1 + 24);
              *(a1 + 24) = *(a1 + 48);
              v17 = *(a1 + 32);
              v16 = *(a1 + 40);
              *(a1 + 40) = *(a1 + 64);
              *(a1 + 48) = v15;
              *(a1 + 64) = v16;
              if (*(a1 + 40) * v17 > *(a1 + 16) * *(a1 + 8))
              {
                v18 = *(a1 + 16);
                v19 = *a1;
                *a1 = *(a1 + 24);
                *(a1 + 16) = *(a1 + 40);
                *(a1 + 24) = v19;
                *(a1 + 40) = v18;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::NonOverlappingRectanglesEnergyPropagator::GeneralizeExplanation(operations_research::sat::NonOverlappingRectanglesEnergyPropagator::Conflict const&)::$_1 &,operations_research::sat::OrthogonalPackingResult::Item *,0>(a1, (a1 + 24), (a1 + 48), (a2 - 3), a3);
    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 1) * *(a2 - 2) > *(a1 + 16) * *(a1 + 8))
    {
      v4 = *(a1 + 16);
      v5 = *a1;
      v6 = *(a2 - 1);
      *a1 = *(a2 - 3);
      *(a1 + 16) = v6;
      *(a2 - 3) = v5;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_17:
  v26 = (a1 + 48);
  v27 = *(a1 + 40) * *(a1 + 32);
  v28 = *(a1 + 16) * *(a1 + 8);
  v29 = *(a1 + 64) * *(a1 + 56);
  if (v27 <= v28)
  {
    if (v29 > v27)
    {
      v37 = *(a1 + 24);
      *(a1 + 24) = *v26;
      v39 = *(a1 + 32);
      v38 = *(a1 + 40);
      *(a1 + 40) = *(a1 + 64);
      *v26 = v37;
      *(a1 + 64) = v38;
      if (*(a1 + 40) * v39 > v28)
      {
        v40 = *(a1 + 16);
        v41 = *a1;
        *a1 = *(a1 + 24);
        *(a1 + 16) = *(a1 + 40);
        *(a1 + 24) = v41;
        *(a1 + 40) = v40;
      }
    }

    goto LABEL_34;
  }

  if (v29 > v27)
  {
    v30 = *(a1 + 16);
    v31 = *a1;
    *a1 = *v26;
    *(a1 + 16) = *(a1 + 64);
LABEL_33:
    *v26 = v31;
    *(a1 + 64) = v30;
    goto LABEL_34;
  }

  v47 = *(a1 + 16);
  v48 = *a1;
  *a1 = *(a1 + 24);
  *(a1 + 24) = v48;
  v49 = *(a1 + 32);
  *(a1 + 16) = *(a1 + 40);
  *(a1 + 40) = v47;
  if (v29 > *(a1 + 40) * v49)
  {
    v30 = *(a1 + 40);
    v31 = *(a1 + 24);
    *(a1 + 24) = *v26;
    *(a1 + 40) = *(a1 + 64);
    goto LABEL_33;
  }

LABEL_34:
  v50 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
LABEL_44:
    v59 = 1;
  }

  else
  {
    v51 = 0;
    v52 = 0;
    while (1)
    {
      v53 = v50[1];
      v54 = v50[2];
      if (v54 * v53 > v26[2] * v26[1])
      {
        break;
      }

LABEL_37:
      v26 = v50;
      v51 += 24;
      v50 += 3;
      if (v50 == a2)
      {
        goto LABEL_44;
      }
    }

    v55 = *v50;
    v56 = v51;
    do
    {
      v57 = a1 + v56;
      *(v57 + 72) = *(a1 + v56 + 48);
      *(v57 + 88) = *(a1 + v56 + 64);
      if (v56 == -48)
      {
        *a1 = v55;
        *(a1 + 8) = v53;
        *(a1 + 16) = v54;
        if (++v52 != 8)
        {
          goto LABEL_37;
        }

        goto LABEL_43;
      }

      v56 -= 24;
    }

    while (v54 * v53 > *(v57 + 40) * *(v57 + 32));
    v58 = a1 + v56;
    *(v58 + 72) = v55;
    *(v58 + 80) = v53;
    *(a1 + v56 + 88) = v54;
    if (++v52 != 8)
    {
      goto LABEL_37;
    }

LABEL_43:
    v59 = 0;
    LODWORD(v50) = v50 + 3 == a2;
  }

  return (v59 | v50) & 1;
}

uint64_t absl::lts_20240722::container_internal::TypeErasedApplyToSlotFn<absl::lts_20240722::hash_internal::Hash<absl::lts_20240722::Span<int>>,absl::lts_20240722::Span<int>>(uint64_t a1, absl::lts_20240722::hash_internal::MixingHashState **a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v5 = a2[1];
  v6 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, *a2, 4 * v5, a4, a5);
  return (((v5 + v6) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v5 + v6));
}

void absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<absl::lts_20240722::Span<int>>,absl::lts_20240722::hash_internal::Hash<absl::lts_20240722::Span<int>>,std::equal_to<absl::lts_20240722::Span<int>>,std::allocator<absl::lts_20240722::Span<int>>>::resize_impl(unint64_t *a1, unint64_t a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  v7 = *a1;
  v9 = *a1 < 2 && a1[1] > 1;
  if (v9)
  {
    v10 = a1[3];
    v11 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, a1[2], 4 * v10, a4, a5);
    v12 = ((((v11 + v10) * 0x9DDFEA08EB382D69) >> 64) ^ (105 * (v11 + v10))) & 0x7F;
    v14 = *a1;
    v13 = a1[1];
  }

  else
  {
    v12 = 0x80;
    v13 = a1[1];
    v14 = *a1;
  }

  v16 = v14;
  v17 = v13 & 1;
  v18 = v7 < 2;
  v19 = v9;
  v15 = *(a1 + 1);
  *a1 = a2;
  absl::lts_20240722::container_internal::HashSetResizeHelper::InitializeSlots<std::allocator<char>,16ul,true,true,8ul>(&v15, a1, v12);
}

void operations_research::sat::GenerateNoOverlap2dEnergyCut(uint64_t a1, uint64_t a2, int *a3, uint64_t a4, const void *a5, std::string::size_type a6, void *a7, uint64_t **a8, void *a9, void *a10, uint64_t a11)
{
  v153 = 0;
  v154 = 0;
  v155 = 0;
  if ((a4 & 0x3FFFFFFFFFFFFFFFLL) == 0)
  {
    return;
  }

  v11 = a8;
  v127 = a8[34];
  v15 = 4 * a4;
  do
  {
    v16 = *a3;
    v17 = (a10[16] + 24 * v16);
    v18 = *(v17 + 2);
    if (*v17 != -1)
    {
      v18 -= *(*(a10[4] + 40) + ((8 * *v17) ^ 8)) * *(v17 + 1);
    }

    if (v18)
    {
      v19 = (a9[16] + 24 * v16);
      v20 = *(v19 + 2);
      if (*v19 != -1)
      {
        v20 -= *(*(a9[4] + 40) + ((8 * *v19) ^ 8)) * *(v19 + 1);
      }

      if (v20)
      {
        v21 = a9[29];
        *v145 = *(a9[30] + 8 * v16);
        v22 = a9[31];
        *&v145[8] = -*(a9[32] + 8 * v16);
        *&v145[16] = *(v22 + 8 * v16);
        *&v145[24] = -*(a9[33] + 8 * v16);
        *&v145[32] = *(v21 + 8 * v16);
        memset(&v145[40], 0, 32);
        memset(v146, 0, sizeof(v146));
        *&v147[8] = 0;
        *&v147[16] = 0;
        *v147 = -1;
        *&v147[24] = -1;
        v152 = 0;
        v148 = 0u;
        v149 = 0u;
        v150 = 0u;
        memset(v151, 0, 17);
        *&v145[40] = *(a10[30] + 8 * v16);
        *&v145[48] = -*(a10[33] + 8 * v16);
        v23 = *(v17 + 2);
        *v147 = *v17;
        *&v147[16] = v23;
        v24 = a1 + 24 * v16;
        if (v146 != v24)
        {
          std::vector<operations_research::sat::OrthogonalPackingResult::Item>::__assign_with_size[abi:ne200100]<operations_research::sat::OrthogonalPackingResult::Item*,operations_research::sat::OrthogonalPackingResult::Item*>(v146, *v24, *(v24 + 8), 0xAAAAAAAAAAAAAAABLL * ((*(v24 + 8) - *v24) >> 3));
        }

        LODWORD(v25) = *(a9[19] + 4 * v16);
        if (v25 == -1 || ((*(*(a9[3] + 24) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25) & 1) != 0)
        {
          v25 = *(a10[19] + 4 * v16);
          if (v25 == -1)
          {
            LODWORD(v25) = -1;
          }

          else if ((*(*(a10[3] + 24) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v25))
          {
            LODWORD(v25) = -1;
          }
        }

        *&v147[24] = v25;
        *&v145[56] = *(a10[29] + 8 * v16);
        *&v145[64] = *(*(a11 + 64) + 8 * v16);
        v151[16] = (*(*(a11 + 112) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v16) & 1;
        v26 = a9[16] + 24 * v16;
        v27 = *(v26 + 16);
        v134 = *v26;
        v135 = v27;
        if (operations_research::sat::DiffnEnergyEvent::FillEnergyLp(v145, &v134, v127, a7))
        {
          v28 = v154;
          if (v154 >= v155)
          {
            v34 = std::vector<operations_research::sat::DiffnEnergyEvent>::__emplace_back_slow_path<operations_research::sat::DiffnEnergyEvent const&>(&v153, v145);
          }

          else
          {
            *v154 = *v145;
            v29 = *&v145[16];
            v30 = *&v145[32];
            v31 = *&v145[48];
            v28[8] = *&v145[64];
            *(v28 + 2) = v30;
            *(v28 + 3) = v31;
            v28[9] = 0.0;
            *(v28 + 1) = v29;
            v28[10] = 0.0;
            v28[11] = 0.0;
            if (v146[1] != v146[0])
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v146[1] - v146[0]) >> 3) < 0xAAAAAAAAAAAAAABLL)
              {
                operator new();
              }

              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v32 = *v147;
            *(v28 + 108) = *&v147[12];
            *(v28 + 6) = v32;
            operations_research::sat::LinearExpression::LinearExpression((v28 + 16), &v148);
            v33 = *&v151[8];
            *(v28 + 25) = v152;
            *(v28 + 23) = v33;
            v34 = (v28 + 26);
            v11 = a8;
          }

          v154 = v34;
        }

        if (*(&v149 + 1))
        {
          *&v150 = *(&v149 + 1);
          operator delete(*(&v149 + 1));
        }

        if (v148)
        {
          *(&v148 + 1) = v148;
          operator delete(v148);
        }

        if (v146[0])
        {
          v146[1] = v146[0];
          operator delete(v146[0]);
        }
      }
    }

    ++a3;
    v15 -= 4;
  }

  while (v15);
  v36 = v153;
  v35 = v154;
  if (v153 == v154)
  {
    goto LABEL_160;
  }

  v37 = 0.0;
  v38 = v153;
  do
  {
    v39 = *(v38 + 6) + *(v38 + 5);
    v40 = v39;
    if (v39 < 0x8000000000000003)
    {
      v40 = -INFINITY;
    }

    if (v39 > 0x7FFFFFFFFFFFFFFDLL)
    {
      v40 = INFINITY;
    }

    v37 = v37 + v40;
    v38 += 26;
  }

  while (v38 != v154);
  v41 = 0x4EC4EC4EC4EC4EC5 * ((v154 - v153) >> 4);
  v42 = vdupq_lane_s64(COERCE__INT64(v37 * 0.5 / v41), 0);
  v43 = vdupq_n_s64(0x7FFFFFFFFFFFFFFDuLL);
  v44 = vdupq_n_s64(0x8000000000000003);
  v45 = vdupq_n_s64(0xFFF0000000000000);
  v46 = vdupq_n_s64(0x7FF0000000000000uLL);
  v47 = v153;
  do
  {
    v47[25] = vaddvq_f64(vabdq_f64(vbslq_s8(vcgtq_s64(*(v47 + 5), v43), v46, vbslq_s8(vcgtq_s64(v44, *(v47 + 5)), v45, vcvtq_f64_s64(*(v47 + 5)))), v42));
    v47 += 26;
  }

  while (v47 != v35);
  *v145 = 5;
  memset(&v145[8], 0, 48);
  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,false>(v36, v35, 126 - 2 * __clz(v41), 1, 0.0);
  v48 = 0.0;
  if (v153 != v154)
  {
    v49 = v153;
    do
    {
      v48 = v48 + v49[23];
      v49 += 26;
    }

    while (v49 != v154);
  }

  v141 = 0;
  v142 = 0;
  v144 = 0;
  v143 = 0;
  if ((0x4EC4EC4EC4EC4EC5 * ((v154 - v153) >> 4)) < 2)
  {
    goto LABEL_143;
  }

  v50 = 0;
  v122 = (a7 + 5);
  v51 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
  v52 = vdup_n_s8(v51 & 0x7F);
  v121 = v51 >> 7;
  v53 = 1;
  while (2)
  {
    v55 = v53;
    operations_research::sat::CapacityProfile::Clear(&v141);
    v56 = &v153[26 * v50];
    v139 = 0;
    v140 = 0;
    v138 = 0;
    *&v134 = &v138;
    BYTE8(v134) = 0;
    if (v154 != v56)
    {
      if ((0x4EC4EC4EC4EC4EC5 * ((v154 - v56) >> 4)) < 0x13B13B13B13B13CLL)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v128 = v55;
    std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,false>(0, 0, 0, 1);
    v57 = v138;
    if (v139 == v138)
    {
      goto LABEL_125;
    }

    v58 = 0;
    v129 = 0;
    v59 = 0;
    v60 = 0x7FFFFFFFFFFFFFFELL;
    v61 = 0.0;
    v62 = -1;
    v63 = 1;
    v64 = 1.0001;
    v65 = 0x8000000000000002;
    v66 = 0x8000000000000002;
    v67 = 0x7FFFFFFFFFFFFFFELL;
    do
    {
      v68 = &v57[208 * v58];
      v69 = *(v68 + 23);
      if (*v68 < v67)
      {
        v67 = *v68;
      }

      v70 = *(v68 + 3);
      if (v66 <= v70)
      {
        v66 = *(v68 + 3);
      }

      v71 = *(v68 + 5);
      v72 = *(v68 + 6);
      if (v71 < v60)
      {
        v60 = *(v68 + 5);
      }

      if (v65 <= v72)
      {
        v65 = *(v68 + 6);
      }

      operations_research::sat::CapacityProfile::AddRectangle(&v141, *v68, v70, v71, v72);
      v61 = v61 + v69;
      v58 = v63;
      if (0x4EC4EC4EC4EC4EC5 * ((v139 - v138) >> 4) > v63)
      {
        v74 = (v138 + 208 * v63);
        if (*v74 >= v67 && v74[3] <= v66 && v74[5] >= v60 && v74[6] <= v65)
        {
          goto LABEL_54;
        }
      }

      BoundingArea = operations_research::sat::CapacityProfile::GetBoundingArea(&v141, v73);
      v76 = (v65 - v60) * (v66 - v67);
      v77 = BoundingArea < v76;
      if (v76 >= BoundingArea)
      {
        v76 = BoundingArea;
      }

      v78 = v76;
      if (v76 < 0x8000000000000003)
      {
        v78 = -INFINITY;
      }

      if (v76 > 0x7FFFFFFFFFFFFFFDLL)
      {
        v78 = INFINITY;
      }

      if (v78 >= v48)
      {
        break;
      }

      v79 = v61 / v78;
      if (v79 > v64)
      {
        v62 = v63 - 1;
        v59 = v76;
        v129 = v77;
        v64 = v79;
      }

LABEL_54:
      v57 = v138;
      ++v63;
    }

    while (0x4EC4EC4EC4EC4EC5 * ((v139 - v138) >> 4) > v58);
    v11 = a8;
    if (v62 != -1)
    {
      v80 = a7[3];
      if (v80 > 1)
      {
        v82 = 0;
        _X9 = *v122;
        __asm { PRFM            #4, [X9] }

        v89 = (v121 ^ (*v122 >> 12)) & v80;
        v90 = *(*v122 + v89);
        v91 = vceq_s8(v90, v52);
        if (!v91)
        {
          goto LABEL_86;
        }

LABEL_83:
        v92 = a7[6];
        while (1)
        {
          v93 = (v89 + (__clz(__rbit64(v91)) >> 3)) & v80;
          if (*(v92 + 16 * v93) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
          {
            break;
          }

          v91 &= ((v91 & 0x8080808080808080) - 1) & 0x8080808080808080;
          if (!v91)
          {
LABEL_86:
            while (!*&vceq_s8(v90, 0x8080808080808080))
            {
              v82 += 8;
              v89 = (v82 + v89) & v80;
              v90 = *&_X9[v89];
              v91 = vceq_s8(v90, v52);
              if (v91)
              {
                goto LABEL_83;
              }
            }

            goto LABEL_90;
          }
        }

        v94 = (v92 + 16 * v93);
        if (&_X9[v93])
        {
          goto LABEL_81;
        }

LABEL_90:
        v81 = 0;
      }

      else
      {
        if (a7[4] < 2uLL)
        {
          goto LABEL_90;
        }

        v94 = *v122;
        if (*v122 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v94 = v122;
        }

        v109 = &absl::lts_20240722::container_internal::kSooControl;
        if (*v122 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
        {
          v109 = 0;
        }

        if (!v109)
        {
          goto LABEL_90;
        }

LABEL_81:
        v81 = *(v94 + 1);
      }

      *&v134 = v81;
      *(&v134 + 1) = 0x8000000000000002;
      v135 = v59;
      v136 = 0u;
      v137 = 0u;
      if (v62 < 0)
      {
        v98 = 0;
        v97 = 0;
        v96 = 0;
        if (a6 > 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_174;
        }
      }

      else
      {
        v95 = 0;
        v96 = 0;
        v97 = 0;
        v98 = 0;
        do
        {
          v99 = v138 + 208 * v95;
          operations_research::sat::LinearConstraintBuilder::AddLinearExpression(&v134, (v99 + 128));
          v98 |= *(v99 + 30) != -1;
          v97 |= v99[192];
          v96 |= *(v99 + 8) > *(v99 + 7) * *(v99 + 4);
          ++v95;
        }

        while (v95 <= v62);
        if (a6 > 0x7FFFFFFFFFFFFFF7)
        {
LABEL_174:
          std::string::__throw_length_error[abi:ne200100]();
        }
      }

      if (a6 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = a6;
      if (a6)
      {
        memmove(&__dst, a5, a6);
        __dst.__r_.__value_.__s.__data_[a6] = 0;
        if (v98)
        {
LABEL_104:
          std::string::append(&__dst, "_optional");
        }
      }

      else
      {
        __dst.__r_.__value_.__s.__data_[0] = 0;
        if (v98)
        {
          goto LABEL_104;
        }
      }

      if (v97)
      {
        std::string::append(&__dst, "_quadratic");
      }

      if (v96)
      {
        std::string::append(&__dst, "_energy");
      }

      if (v129)
      {
        std::string::append(&__dst, "_precise");
      }

      operations_research::sat::LinearConstraintBuilder::Build(&v134, v130);
      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_dst = &__dst;
      }

      else
      {
        p_dst = __dst.__r_.__value_.__r.__words[0];
      }

      if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = __dst.__r_.__value_.__l.__size_;
      }

      operations_research::sat::TopNCuts::AddCut(v145, v130, p_dst, size, v127);
      v102 = v132;
      v132 = 0;
      if (v102)
      {
        MEMORY[0x23EED9440](v102, 0x1000C8000313F17);
      }

      v103 = v131;
      v131 = 0;
      if (v103)
      {
        MEMORY[0x23EED9440](v103, 0x1000C8052888210);
      }

      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__dst.__r_.__value_.__l.__data_);
        v104 = *(&v136 + 1);
        if (*(&v136 + 1))
        {
LABEL_123:
          *&v137 = v104;
          operator delete(v104);
        }
      }

      else
      {
        v104 = *(&v136 + 1);
        if (*(&v136 + 1))
        {
          goto LABEL_123;
        }
      }
    }

    v57 = v138;
LABEL_125:
    if (v57)
    {
      v105 = v139;
      v54 = v57;
      if (v139 != v57)
      {
        do
        {
          v106 = *(v105 - 7);
          if (v106)
          {
            *(v105 - 6) = v106;
            operator delete(v106);
          }

          v107 = *(v105 - 10);
          if (v107)
          {
            *(v105 - 9) = v107;
            operator delete(v107);
          }

          v108 = *(v105 - 17);
          if (v108)
          {
            *(v105 - 16) = v108;
            operator delete(v108);
          }

          v105 -= 208;
        }

        while (v105 != v57);
        v54 = v138;
      }

      v139 = v57;
      operator delete(v54);
    }

    v50 = v128;
    v53 = v128 + 1;
    if (0x4EC4EC4EC4EC4EC5 * ((v154 - v153) >> 4) > (v128 + 1))
    {
      continue;
    }

    break;
  }

LABEL_143:
  operations_research::sat::TopNCuts::TransferToManager(v145, v11);
  if (v141)
  {
    v142 = v141;
    operator delete(v141);
  }

  v110 = *&v145[32];
  if (*&v145[32])
  {
    v111 = *&v145[40];
    v112 = *&v145[32];
    if (*&v145[40] != *&v145[32])
    {
      do
      {
        v113 = *(v111 - 8);
        *(v111 - 8) = 0;
        if (v113)
        {
          MEMORY[0x23EED9440](v113, 0x1000C8000313F17);
        }

        v114 = *(v111 - 16);
        *(v111 - 16) = 0;
        if (v114)
        {
          MEMORY[0x23EED9440](v114, 0x1000C8052888210);
        }

        v115 = (v111 - 64);
        if (*(v111 - 41) < 0)
        {
          operator delete(*v115);
        }

        v111 -= 64;
      }

      while (v115 != v110);
      v112 = *&v145[32];
    }

    *&v145[40] = v110;
    operator delete(v112);
  }

  if (*&v145[8])
  {
    *&v145[16] = *&v145[8];
    operator delete(*&v145[8]);
  }

  v36 = v153;
LABEL_160:
  if (v36)
  {
    v116 = v154;
    v117 = v36;
    if (v154 != v36)
    {
      do
      {
        v118 = *(v116 - 7);
        if (v118)
        {
          *(v116 - 6) = v118;
          operator delete(v118);
        }

        v119 = *(v116 - 10);
        if (v119)
        {
          *(v116 - 9) = v119;
          operator delete(v119);
        }

        v120 = *(v116 - 17);
        if (v120)
        {
          *(v116 - 16) = v120;
          operator delete(v120);
        }

        v116 -= 26;
      }

      while (v116 != v36);
      v117 = v153;
    }

    v154 = v36;
    operator delete(v117);
  }
}

void sub_23CB6494C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, char a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, char a49)
{
  if (__p)
  {
    operator delete(__p);
  }

  operations_research::sat::TopNCuts::~TopNCuts(&a49);
  std::vector<operations_research::sat::DiffnEnergyEvent>::~vector[abi:ne200100]((v49 - 184));
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::DiffnEnergyEvent::FillEnergyLp(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v6 = a4[3];
  if (v6 > 1)
  {
    v8 = 0;
    _X11 = a4[5];
    __asm { PRFM            #4, [X11] }

    v15 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v16 = vdup_n_s8(v15 & 0x7F);
    v17 = ((v15 >> 7) ^ (_X11 >> 12)) & v6;
    v18 = *(_X11 + v17);
    v19 = vceq_s8(v18, v16);
    if (!v19)
    {
      goto LABEL_8;
    }

LABEL_5:
    v20 = a4[6];
    while (1)
    {
      v21 = (v17 + (__clz(__rbit64(v19)) >> 3)) & v6;
      if (*(v20 + 16 * v21) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
      {
        break;
      }

      v19 &= ((v19 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v19)
      {
LABEL_8:
        while (!*&vceq_s8(v18, 0x8080808080808080))
        {
          v8 += 8;
          v17 = (v8 + v17) & v6;
          v18 = *(_X11 + v17);
          v19 = vceq_s8(v18, v16);
          if (v19)
          {
            goto LABEL_5;
          }
        }

        goto LABEL_3;
      }
    }

    v22 = (v20 + 16 * v21);
    v7 = (_X11 + v21);
    if (!(_X11 + v21))
    {
      goto LABEL_13;
    }

LABEL_12:
    v7 = v22[1];
    goto LABEL_13;
  }

  if (a4[4] < 2uLL)
  {
LABEL_3:
    v7 = 0;
    goto LABEL_13;
  }

  v22 = a4 + 5;
  v7 = &absl::lts_20240722::container_internal::kSooControl;
  if (a4[5] != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
  {
    v7 = 0;
    v22 = 0;
  }

  if (v7)
  {
    goto LABEL_12;
  }

LABEL_13:
  v40 = v7;
  v41 = 0u;
  *v42 = 0u;
  v43 = 0u;
  if (*(a1 + 120) == -1)
  {
    v23 = *(a1 + 72);
    v24 = *(a1 + 80);
    if (v23 == v24)
    {
      *__p = *a2;
      v34 = *(a2 + 16);
      v38 = *(a1 + 96);
      v39 = *(a1 + 112);
      v27 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntegerTrail>(a4);
      operations_research::sat::LinearConstraintBuilder::AddQuadraticLowerBound(&v40, __p, &v38, v27, (a1 + 192));
      goto LABEL_25;
    }

    if (operations_research::sat::LinearConstraintBuilder::AddDecomposedProduct(&v40, *(a1 + 72), 0xAAAAAAAAAAAAAAABLL * ((v24 - v23) >> 3)))
    {
      goto LABEL_25;
    }

LABEL_18:
    v25 = 0;
    v26 = v42[1];
    if (!v42[1])
    {
      return v25;
    }

    goto LABEL_32;
  }

  if (!operations_research::sat::LinearConstraintBuilder::AddLiteralTerm(&v40, *(a1 + 120), *(a1 + 64)))
  {
    goto LABEL_18;
  }

LABEL_25:
  operations_research::sat::LinearConstraintBuilder::BuildExpression(__p, &v40);
  v28 = *(a1 + 128);
  if (v28)
  {
    *(a1 + 136) = v28;
    operator delete(v28);
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 144) = 0;
  }

  v29 = *(a1 + 152);
  *(a1 + 128) = *__p;
  *(a1 + 144) = v34;
  __p[1] = 0;
  v34 = 0;
  __p[0] = 0;
  if (v29)
  {
    *(a1 + 160) = v29;
    operator delete(v29);
    *(a1 + 152) = 0;
    *(a1 + 160) = 0;
    *(a1 + 168) = 0;
    v29 = __p[0];
  }

  *(a1 + 152) = v35;
  v30 = v36;
  v31 = v37;
  v36 = 0;
  v35 = 0uLL;
  *(a1 + 168) = v30;
  *(a1 + 176) = v31;
  if (v29)
  {
    __p[1] = v29;
    operator delete(v29);
  }

  *(a1 + 184) = operations_research::sat::LinearExpression::LpValue((a1 + 128), a3);
  v25 = 1;
  v26 = v42[1];
  if (v42[1])
  {
LABEL_32:
    *&v43 = v26;
    operator delete(v26);
  }

  return v25;
}

void sub_23CB64D10(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::DiffnEnergyEvent::~DiffnEnergyEvent(operations_research::sat::DiffnEnergyEvent *this)
{
  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    *(this + 17) = v3;
    operator delete(v3);
  }

  v4 = *(this + 9);
  if (v4)
  {
    *(this + 10) = v4;
    operator delete(v4);
  }
}

char **std::vector<operations_research::sat::DiffnEnergyEvent>::~vector[abi:ne200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 7);
        if (v5)
        {
          *(v3 - 6) = v5;
          operator delete(v5);
        }

        v6 = *(v3 - 10);
        if (v6)
        {
          *(v3 - 9) = v6;
          operator delete(v6);
        }

        v7 = *(v3 - 17);
        if (v7)
        {
          *(v3 - 16) = v7;
          operator delete(v7);
        }

        v3 -= 208;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  *(a7 + 8) = 0;
  v14 = a7 + 8;
  *(a7 + 16) = 0;
  *(a7 + 24) = 0;
  *(a7 + 56) = 0;
  *a7 = 1;
  operations_research::sat::AddIntegerVariableFromIntervals(a1, a6, a7 + 8);
  operations_research::sat::AddIntegerVariableFromIntervals(a2, a6, v14);
  v15 = *(a7 + 8);
  v16 = *(a7 + 16);
  v17 = 126 - 2 * __clz((v16 - v15) >> 2);
  if (v16 == v15)
  {
    v18 = 0;
  }

  else
  {
    v18 = v17;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v15, v16, v32, v18, 1);
  v20 = *(a7 + 8);
  v19 = *(a7 + 16);
  if (v20 != v19)
  {
    v21 = v20 + 1;
    do
    {
      if (v21 == v19)
      {
        goto LABEL_15;
      }

      v22 = *(v21 - 1);
      v23 = *v21++;
    }

    while (v22 != v23);
    v24 = v21 - 2;
    while (v21 != v19)
    {
      v25 = v22;
      v22 = *v21;
      if (v25 != *v21)
      {
        v24[1] = v22;
        ++v24;
      }

      ++v21;
    }

    if (v24 + 1 != v19)
    {
      *(a7 + 16) = v24 + 1;
    }
  }

LABEL_15:
  *&v28 = a1;
  *(&v28 + 1) = a2;
  *&v29 = a3;
  *(&v29 + 1) = a4;
  v30 = a6;
  memset(v31, 0, sizeof(v31));
  v27 = *a5;
  v26 = a5[1];
  *&v32[0] = v31;
  BYTE8(v32[0]) = 0;
  if (v26 != v27)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v26 - v27) >> 3) <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v32[0] = v28;
  v32[1] = v29;
  v33 = v30;
  memset(__p, 0, 24);
  __p[4] = __p;
  v35 = 0;
  operator new();
}

void sub_23CB652A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void **a26)
{
  v27[7] = v28;
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](&a26);
  operator delete(v27);
  operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0::~$_0(&a17);
  operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0::~$_0(&a9);
  operations_research::sat::CutGenerator::~CutGenerator(v26);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::CreateNoOverlap2dEnergyCutGenerator(operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *,operations_research::sat::SchedulingDemandHelper *,std::vector<std::vector<operations_research::sat::LiteralValueValue>> const&,operations_research::sat::Model *)::$_0::~$_0(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v3 = *(a1 + 48);
    v4 = *(a1 + 40);
    if (v3 != v2)
    {
      v5 = *(a1 + 48);
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *(a1 + 40);
    }

    *(a1 + 48) = v2;
    operator delete(v4);
  }

  return a1;
}

std::string *operations_research::sat::AffineExpression::DebugString@<X0>(operations_research::sat::AffineExpression *this@<X0>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = *this;
  v6 = *(this + 2);
  if (v5 == -1)
  {
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *a3 = 0;
    *(a3 + 23) = 22;
    v13 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v6, a3, a2);
    return std::string::erase(a3, &v13[-a3], 0xFFFFFFFFFFFFFFFFLL);
  }

  else if (v6)
  {
    v7 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 1), v20, a2);
    *&v19 = v20;
    *(&v19 + 1) = v7 - v20;
    v17 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*this, v18, v8) - v18;
    v9 = *(this + 2);
    v23 = "(";
    v24 = 1;
    v25 = v19;
    v26 = " * X";
    v27 = 4;
    v28 = v18;
    v29 = v17;
    v30 = " + ";
    v31 = 3;
    v11 = absl::lts_20240722::numbers_internal::FastIntToBuffer(v9, v22, v10);
    *&v21 = v22;
    *(&v21 + 1) = v11 - v22;
    v32 = v22;
    v33 = v11 - v22;
    v34 = ")";
    v35 = 1;
    return absl::lts_20240722::strings_internal::CatPieces(&v23, 7, a3);
  }

  else
  {
    v14 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(this + 1), v22, a2);
    *&v21 = v22;
    *(&v21 + 1) = v14 - v22;
    v16 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*this, v20, v15);
    v23 = "(";
    v24 = 1;
    v25 = v21;
    v26 = " * X";
    v27 = 4;
    v28 = v20;
    v29 = v16 - v20;
    v30 = ")";
    v31 = 1;
    return absl::lts_20240722::strings_internal::CatPieces(&v23, 5, a3);
  }
}

void sub_23CB655A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(const void *a1, size_t a2, void *a3, int a4, char a5, void *a6, uint64_t **a7)
{
  v7 = a3;
  v8 = *a3;
  v9 = a3[1];
  v10 = 126 - 2 * __clz(0xF0F0F0F0F0F0F0F1 * ((v9 - *a3) >> 3));
  _ZF = v9 == *a3;
  v145 = 5;
  v146 = 0u;
  v147 = 0u;
  v148 = 0u;
  if (_ZF)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_0 &,operations_research::sat::DiffnCtEvent*,false>(v8, v9, v12, 1);
  v13 = *v7;
  v14 = v7[1];
  if (0xF0F0F0F0F0F0F0F1 * ((v14 - *v7) >> 3) >= 2)
  {
    v15 = 0;
    v115 = a6 + 5;
    v16 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d));
    v17 = vdup_n_s8(v16 & 0x7F);
    v114 = v16 >> 7;
    v18 = 1;
    v121 = v7;
    do
    {
      if (v15 <= 0)
      {
        v123 = v18;
        v21 = v15;
        v20 = *(v13 + 136 * v15);
      }

      else
      {
        v19 = (v13 + 136 * v15);
        v20 = *v19;
        if (*v19 == *(v19 - 17))
        {
          goto LABEL_6;
        }

        v123 = v18;
        v21 = v15;
      }

      v22 = 0;
      v142 = 0;
      v143 = 0;
      v23 = v13 + 136 * v21;
      v144 = 0;
      *&v134 = &v142;
      BYTE8(v134) = 0;
      if (v14 != v23)
      {
        if (0xF0F0F0F0F0F0F0F1 * ((v14 - v23) >> 3) < 0x1E1E1E1E1E1E1E2)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v125 = v15;
      if (v15 >= 1 && a4)
      {
        v24 = 0;
        v25 = 136 * v15;
        do
        {
          v26 = *v7;
          v27 = (*v7 + v24);
          if (*(v27 + 4) + *v27 > v20)
          {
            v134 = *v27;
            v28 = v27[1];
            v29 = v27[2];
            v30 = v27[3];
            v138 = *(v27 + 8);
            v136 = v29;
            v137 = v30;
            v135 = v28;
            v139 = 0uLL;
            v32 = *(v27 + 9);
            v31 = *(v27 + 10);
            if (v31 != v32)
            {
              if (0xAAAAAAAAAAAAAAABLL * ((v31 - v32) >> 3) <= 0xAAAAAAAAAAAAAAALL)
              {
                operator new();
              }

              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v33 = *(v26 + v24 + 96);
            v34 = *(v26 + v24 + 112);
            *&v141[15] = *(v26 + v24 + 127);
            v140 = v33;
            *v141 = v34;
            v141[17] = 1;
            v35 = operations_research::sat::ComputeEnergyMinInWindow(v134, *(&v134 + 1), v135, *(&v135 + 1), v136, *(&v137 + 1), 0, 0, v20, *(&v135 + 1));
            *&v138 = v35;
            *&v136 = v136 - v20 + v134;
            *&v134 = v20;
            if (v35 > *(&v137 + 1) * v136)
            {
              v141[16] = 1;
            }

            if (v35 >= 1)
            {
              v36 = v143;
              if (v143 >= v144)
              {
                v42 = std::vector<operations_research::sat::DiffnCtEvent>::__emplace_back_slow_path<operations_research::sat::DiffnCtEvent const&>(&v142, &v134);
              }

              else
              {
                *v143 = v134;
                v37 = v135;
                v38 = v136;
                v39 = v137;
                *(v36 + 8) = v138;
                *(v36 + 2) = v38;
                *(v36 + 3) = v39;
                v36[9] = 0.0;
                *(v36 + 1) = v37;
                v36[10] = 0.0;
                v36[11] = 0.0;
                if (v139 != *(&v138 + 1))
                {
                  if (0xAAAAAAAAAAAAAAABLL * ((v139 - *(&v138 + 1)) >> 3) <= 0xAAAAAAAAAAAAAAALL)
                  {
                    operator new();
                  }

                  std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                }

                v40 = v140;
                v41 = *v141;
                *(v36 + 127) = *&v141[15];
                *(v36 + 6) = v40;
                *(v36 + 7) = v41;
                v42 = (v36 + 17);
              }

              v143 = v42;
            }

            if (*(&v138 + 1))
            {
              *&v139 = *(&v138 + 1);
              operator delete(*(&v138 + 1));
            }
          }

          v24 += 136;
        }

        while (v25 != v24);
        v22 = v143;
        v15 = v125;
      }

      v43 = 126 - 2 * __clz(0xF0F0F0F0F0F0F0F1 * (v22 - v142));
      if (v22 == v142)
      {
        v44 = 0;
      }

      else
      {
        v44 = v43;
      }

      std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOvelap2dCompletionTimeCutsWithEnergy(std::string_view,std::vector<operations_research::sat::DiffnCtEvent>,BOOL,BOOL,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *)::$_1 &,operations_research::sat::DiffnCtEvent*,false>(v142, v22, v44, 1);
      LODWORD(v134) = 50;
      v136 = 0u;
      v137 = 0u;
      v138 = 0u;
      v139 = 0u;
      *&v140 = 0;
      operations_research::sat::MaxBoundedSubsetSum::Reset(&v134, 0);
      v45 = v142;
      if (v143 != v142)
      {
        v46 = 0;
        v47 = 0;
        v122 = 0;
        v48 = 0;
        v49 = 0;
        v50 = 0;
        v51 = 0x8000000000000002;
        v52 = 0x7FFFFFFFFFFFFFFELL;
        v53 = 1;
        v54 = 0.0;
        v124 = -1;
        v55 = 0.01;
        v56 = 0x7FFFFFFFFFFFFFFELL;
        while (1)
        {
          v57 = &v45[17 * v46];
          v58 = *(v57 + 8);
          v59 = v58 * v58;
          if ((v58 * v58) >> 64 != (v58 * v58) >> 63)
          {
            v59 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v59 - 0x7FFFFFFFFFFFFFFFLL < 2 || ((v60 = (v59 >> 63) + 0x7FFFFFFFFFFFFFFFLL, _VF = __OFADD__(v59, v50), v62 = v59 + v50, !_VF) ? (v50 = v62) : (v50 = v60), (v50 + 0x7FFFFFFFFFFFFFFFLL) >= 0xFFFFFFFFFFFFFFFELL))
          {
LABEL_100:
            v64 = v49;
            v75 = v124;
            v7 = v121;
            v15 = v125;
            if (v124 == -1)
            {
              break;
            }

            goto LABEL_101;
          }

          v48 += v58;
          v63 = v58;
          if (v58 < 0x8000000000000003)
          {
            v63 = -INFINITY;
          }

          if (v58 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v63 = INFINITY;
          }

          v54 = v54 + v57[15] * v63;
          if (*v57 < v56)
          {
            v56 = *v57;
          }

          if (v47 <= 6 && (a5 & 1) != 0)
          {
LABEL_96:
            v64 = v49;
            v74 = v55;
            goto LABEL_97;
          }

          if (*(v57 + 5) < v52)
          {
            v52 = *(v57 + 5);
          }

          if (v51 <= *(v57 + 6))
          {
            v51 = *(v57 + 6);
          }

          if (*(v57 + 130) & v53)
          {
            v64 = v51 - v52;
            if (v47)
            {
              if (v64 != v135)
              {
                v53 = 0;
                goto LABEL_66;
              }
            }

            else
            {
              operations_research::sat::MaxBoundedSubsetSum::Reset(&v134, v51 - v52);
            }

            operations_research::sat::MaxBoundedSubsetSum::Add(&v134, *(v57 + 7));
            v53 = 1;
            v64 = *(&v135 + 1);
          }

          else
          {
            v53 = 0;
            v64 = v51 - v52;
          }

LABEL_66:
          v65 = v48 * v48;
          if ((v48 * v48) >> 64 != (v48 * v48) >> 63)
          {
            v65 = 0x7FFFFFFFFFFFFFFFLL;
          }

          if ((v65 - 0x7FFFFFFFFFFFFFFFLL) < 2)
          {
            goto LABEL_100;
          }

          _VF = __OFADD__(v50, v65);
          v66 = v50 + v65;
          if (_VF)
          {
            v66 = (v50 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if ((v66 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_100;
          }

          v67 = ((v64 ^ v48) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          if ((v48 * v64) >> 64 == (v48 * v64) >> 63)
          {
            v67 = v48 * v64;
          }

          if ((v67 - 0x7FFFFFFFFFFFFFFFLL) < 2)
          {
            goto LABEL_100;
          }

          if ((v56 * v67) >> 64 == (v56 * v67) >> 63)
          {
            v68 = v56 * v67;
          }

          else
          {
            v68 = ((v67 ^ v56) >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if (v68 - 0x7FFFFFFFFFFFFFFFLL < 2)
          {
            v64 = v49;
            v75 = v124;
            v7 = v121;
            v15 = v125;
            if (v124 == -1)
            {
              break;
            }

LABEL_101:
            v76 = a6[3];
            if (v76 > 1)
            {
              v79 = 0;
              _X9 = *v115;
              __asm { PRFM            #4, [X9] }

              v84 = (v114 ^ (*v115 >> 12)) & v76;
              v85 = *(*v115 + v84);
              v86 = vceq_s8(v85, v17);
              if (!v86)
              {
                goto LABEL_109;
              }

LABEL_106:
              v87 = a6[6];
              while (1)
              {
                v88 = (v84 + (__clz(__rbit64(v86)) >> 3)) & v76;
                if (*(v87 + 16 * v88) == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
                {
                  break;
                }

                v86 &= ((v86 & 0x8080808080808080) - 1) & 0x8080808080808080;
                if (!v86)
                {
LABEL_109:
                  while (!*&vceq_s8(v85, 0x8080808080808080))
                  {
                    v79 += 8;
                    v84 = (v79 + v84) & v76;
                    v85 = *(_X9 + v84);
                    v86 = vceq_s8(v85, v17);
                    if (v86)
                    {
                      goto LABEL_106;
                    }
                  }

                  goto LABEL_103;
                }
              }

              v89 = (v87 + 16 * v88);
              v77 = v122;
              if ((_X9 + v88))
              {
                goto LABEL_104;
              }

              goto LABEL_113;
            }

            if (a6[4] < 2uLL)
            {
LABEL_103:
              v77 = v122;
              goto LABEL_113;
            }

            v89 = *v115;
            if (*v115 == &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              v89 = a6 + 5;
            }

            v107 = &absl::lts_20240722::container_internal::kSooControl;
            if (*v115 != &gtl::FastTypeId<operations_research::sat::IntegerEncoder>(void)::d)
            {
              v107 = 0;
            }

            v77 = v122;
            if (v107)
            {
LABEL_104:
              v78 = v89[1];
            }

            else
            {
LABEL_113:
              v78 = 0;
            }

            v131[0] = v78;
            v131[1] = v77;
            v131[2] = 0x7FFFFFFFFFFFFFFELL;
            v132 = 0u;
            v133 = 0u;
            if (v75 < 0)
            {
              v92 = 0;
              v91 = 0;
              v97 = a2;
              if (a2 > 0x7FFFFFFFFFFFFFF7)
              {
                goto LABEL_186;
              }
            }

            else
            {
              v90 = 0;
              LOBYTE(v91) = 0;
              LOBYTE(v92) = 0;
              do
              {
                v93 = &v142[17 * v90];
                v94 = *(v93 + 129);
                v95 = *(v93 + 128);
                v96 = *(v93 + 6);
                __dst.__r_.__value_.__r.__words[2] = v93[14];
                *&__dst.__r_.__value_.__l.__data_ = v96;
                operations_research::sat::LinearConstraintBuilder::AddTerm(v131, &__dst, *(v93 + 8) * v64);
                v91 = v95 | v91 & 1;
                v92 = v94 | v92 & 1;
                ++v90;
              }

              while (v90 <= v75);
              v97 = a2;
              if (a2 > 0x7FFFFFFFFFFFFFF7)
              {
LABEL_186:
                std::string::__throw_length_error[abi:ne200100]();
              }
            }

            if (v97 >= 0x17)
            {
              operator new();
            }

            *(&__dst.__r_.__value_.__s + 23) = v97;
            v7 = v121;
            if (v97)
            {
              memmove(&__dst, a1, v97);
              __dst.__r_.__value_.__s.__data_[v97] = 0;
              if (v92)
              {
LABEL_127:
                std::string::append(&__dst, "_lifted");
              }
            }

            else
            {
              __dst.__r_.__value_.__s.__data_[0] = 0;
              if (v92)
              {
                goto LABEL_127;
              }
            }

            if (v91)
            {
              std::string::append(&__dst, "_energy");
            }

            operations_research::sat::LinearConstraintBuilder::Build(v131, v127);
            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_dst = &__dst;
            }

            else
            {
              p_dst = __dst.__r_.__value_.__r.__words[0];
            }

            if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __dst.__r_.__value_.__l.__size_;
            }

            operations_research::sat::TopNCuts::AddCut(&v145, v127, p_dst, size, a7[34]);
            v100 = v129;
            v129 = 0;
            v15 = v125;
            if (v100)
            {
              MEMORY[0x23EED9440](v100, 0x1000C8000313F17);
            }

            v101 = v128;
            v128 = 0;
            if (v101)
            {
              MEMORY[0x23EED9440](v101, 0x1000C8052888210);
            }

            if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__dst.__r_.__value_.__l.__data_);
              v102 = *(&v132 + 1);
              if (!*(&v132 + 1))
              {
                break;
              }
            }

            else
            {
              v102 = *(&v132 + 1);
              if (!*(&v132 + 1))
              {
                break;
              }
            }

            *&v133 = v102;
            operator delete(v102);
            break;
          }

          v69 = v66;
          v70 = v68 + v66 / 2;
          if (__OFADD__(v68, v69 / 2))
          {
            v70 = (v68 >> 63) + 0x7FFFFFFFFFFFFFFFLL;
          }

          if ((v70 + 0x7FFFFFFFFFFFFFFFLL) > 0xFFFFFFFFFFFFFFFDLL)
          {
            goto LABEL_100;
          }

          v71 = v70;
          v72 = -INFINITY;
          if (v70 < 0x8000000000000003)
          {
            v71 = -INFINITY;
          }

          if (v70 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v71 = INFINITY;
          }

          v73 = v64;
          if (v64 < 0x8000000000000003)
          {
            v73 = -INFINITY;
          }

          if (v64 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v73 = INFINITY;
          }

          if (v50 >= 0x8000000000000003)
          {
            v72 = v50;
          }

          if (v50 > 0x7FFFFFFFFFFFFFFDLL)
          {
            v72 = INFINITY;
          }

          v74 = (v71 / v73 - v54) / sqrt(v72);
          if (v74 <= v55)
          {
            goto LABEL_96;
          }

          v122 = v70;
          v124 = v47;
LABEL_97:
          v46 = ++v47;
          v45 = v142;
          v55 = v74;
          v49 = v64;
          if (0xF0F0F0F0F0F0F0F1 * (v143 - v142) <= v47)
          {
            v75 = v124;
            v7 = v121;
            v15 = v125;
            if (v124 == -1)
            {
              break;
            }

            goto LABEL_101;
          }
        }
      }

      if (v139)
      {
        *(&v139 + 1) = v139;
        operator delete(v139);
      }

      if (*(&v137 + 1))
      {
        operator delete(*(&v137 + 1));
      }

      if (v136)
      {
        *(&v136 + 1) = v136;
        operator delete(v136);
      }

      v103 = v142;
      if (v142)
      {
        v104 = v143;
        v105 = v142;
        if (v143 != v142)
        {
          do
          {
            v106 = *(v104 - 8);
            if (v106)
            {
              *(v104 - 7) = v106;
              operator delete(v106);
            }

            v104 -= 17;
          }

          while (v104 != v103);
          v105 = v142;
        }

        v143 = v103;
        operator delete(v105);
      }

      v13 = *v7;
      v14 = v7[1];
      v18 = v123;
LABEL_6:
      ++v18;
      ++v15;
    }

    while (0xF0F0F0F0F0F0F0F1 * ((v14 - v13) >> 3) > v18);
  }

  operations_research::sat::TopNCuts::TransferToManager(&v145, a7);
  v108 = *(&v147 + 1);
  if (*(&v147 + 1))
  {
    v109 = v148;
    v110 = *(&v147 + 1);
    if (v148 != *(&v147 + 1))
    {
      do
      {
        v111 = *(v109 - 8);
        *(v109 - 8) = 0;
        if (v111)
        {
          MEMORY[0x23EED9440](v111, 0x1000C8000313F17);
        }

        v112 = *(v109 - 16);
        *(v109 - 16) = 0;
        if (v112)
        {
          MEMORY[0x23EED9440](v112, 0x1000C8052888210);
        }

        v113 = (v109 - 64);
        if (*(v109 - 41) < 0)
        {
          operator delete(*v113);
        }

        v109 -= 64;
      }

      while (v113 != v108);
      v110 = *(&v147 + 1);
    }

    *&v148 = v108;
    operator delete(v110);
  }

  if (v146)
  {
    *(&v146 + 1) = v146;
    operator delete(v146);
  }
}

void sub_23CB6623C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, void *a53, void *a54, uint64_t a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  operations_research::sat::MaxBoundedSubsetSum::~MaxBoundedSubsetSum(&a44);
  std::vector<operations_research::sat::DiffnCtEvent>::~vector[abi:ne200100]((v55 - 224));
  operations_research::sat::TopNCuts::~TopNCuts((v55 - 200));
  _Unwind_Resume(a1);
}

uint64_t std::vector<operations_research::sat::DiffnCtEvent>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<operations_research::sat::DiffnCtEvent>::__emplace_back_slow_path<operations_research::sat::DiffnCtEvent const&>(a1, a2);
    a1[1] = result;
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    v5 = *(a2 + 32);
    v6 = *(a2 + 48);
    *(v3 + 64) = *(a2 + 64);
    *(v3 + 32) = v5;
    *(v3 + 48) = v6;
    *(v3 + 72) = 0;
    *(v3 + 16) = v4;
    *(v3 + 80) = 0;
    *(v3 + 88) = 0;
    v8 = *(a2 + 72);
    v7 = *(a2 + 80);
    if (v7 != v8)
    {
      if (0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 3) < 0xAAAAAAAAAAAAAABLL)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v9 = *(a2 + 96);
    v10 = *(a2 + 112);
    *(v3 + 127) = *(a2 + 127);
    *(v3 + 96) = v9;
    *(v3 + 112) = v10;
    result = v3 + 136;
    a1[1] = v3 + 136;
    a1[1] = v3 + 136;
  }

  return result;
}

void sub_23CB664B8(_Unwind_Exception *exception_object)
{
  v5 = *v3;
  if (*v3)
  {
    *(v2 + 80) = v5;
    operator delete(v5);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

char **std::vector<operations_research::sat::DiffnCtEvent>::~vector[abi:ne200100](char **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v5 = *(v3 - 8);
        if (v5)
        {
          *(v3 - 7) = v5;
          operator delete(v5);
        }

        v3 -= 136;
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

void operations_research::sat::CreateNoOverlap2dCompletionTimeCutGenerator(operations_research::sat *this@<X0>, operations_research::sat::SchedulingConstraintHelper *a2@<X1>, operations_research::sat::SchedulingConstraintHelper *a3@<X2>, uint64_t a4@<X8>)
{
  v19[4] = *MEMORY[0x277D85DE8];
  *(a4 + 8) = 0;
  v7 = a4 + 8;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 56) = 0;
  *a4 = 1;
  operations_research::sat::AddIntegerVariableFromIntervals(this, a3, a4 + 8);
  operations_research::sat::AddIntegerVariableFromIntervals(a2, a3, v7);
  v8 = *(a4 + 8);
  v9 = *(a4 + 16);
  v10 = 126 - 2 * __clz((v9 - v8) >> 2);
  if (v9 == v8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::StrongIndex<operations_research::glop::ColIndex_index_tag_> *,false>(v8, v9, v19, v11, 1);
  v13 = *(a4 + 8);
  v12 = *(a4 + 16);
  if (v13 != v12)
  {
    v14 = v13 + 1;
    do
    {
      if (v14 == v12)
      {
        goto LABEL_15;
      }

      v15 = *(v14 - 1);
      v16 = *v14++;
    }

    while (v15 != v16);
    v17 = v14 - 2;
    while (v14 != v12)
    {
      v18 = v15;
      v15 = *v14;
      if (v18 != *v14)
      {
        v17[1] = v15;
        ++v17;
      }

      ++v14;
    }

    if (v17 + 1 != v12)
    {
      *(a4 + 16) = v17 + 1;
    }
  }

LABEL_15:
  operations_research::sat::Model::GetOrCreate<operations_research::sat::ProductDecomposer>(a3);
  operator new();
}

uint64_t std::vector<operations_research::sat::DiffnEnergyEvent>::__emplace_back_slow_path<operations_research::sat::DiffnEnergyEvent const&>(void **a1, uint64_t a2)
{
  v2 = 0x4EC4EC4EC4EC4EC5 * ((a1[1] - *a1) >> 4) + 1;
  if (v2 > 0x13B13B13B13B13BLL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 4) > v2)
  {
    v2 = 0x9D89D89D89D89D8ALL * ((a1[2] - *a1) >> 4);
  }

  if ((0x4EC4EC4EC4EC4EC5 * ((a1[2] - *a1) >> 4)) >= 0x9D89D89D89D89DLL)
  {
    v5 = 0x13B13B13B13B13BLL;
  }

  else
  {
    v5 = v2;
  }

  if (v5)
  {
    if (v5 <= 0x13B13B13B13B13BLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v6 = 16 * ((a1[1] - *a1) >> 4);
  v7 = *(a2 + 48);
  *(v6 + 32) = *(a2 + 32);
  *(v6 + 48) = v7;
  v8 = *(a2 + 72);
  *(v6 + 64) = *(a2 + 64);
  v9 = *(a2 + 16);
  *v6 = *a2;
  *(v6 + 16) = v9;
  *(v6 + 72) = 0;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0;
  v10 = *(a2 + 80);
  if (v10 != v8)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((v10 - v8) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  *(v6 + 96) = *(a2 + 96);
  *(v6 + 108) = *(a2 + 108);
  operations_research::sat::LinearExpression::LinearExpression((v6 + 128), (a2 + 128));
  *(v6 + 184) = *(a2 + 184);
  *(v6 + 200) = *(a2 + 200);
  v11 = a1[1];
  v12 = (v6 + *a1 - v11);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::DiffnEnergyEvent>,operations_research::sat::DiffnEnergyEvent*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  a1[1] = (v6 + 208);
  a1[2] = 0;
  if (v13)
  {
    operator delete(v13);
  }

  return v6 + 208;
}

void sub_23CB66994(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<operations_research::sat::DiffnEnergyEvent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void sub_23CB669A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v6 = *v4;
  if (*v4)
  {
    *(v3 + 80) = v6;
    operator delete(v6);
  }

  std::__split_buffer<operations_research::sat::DiffnEnergyEvent>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__split_buffer<operations_research::sat::DiffnEnergyEvent>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 208;
    v4 = *(i - 56);
    if (v4)
    {
      *(i - 48) = v4;
      operator delete(v4);
    }

    v5 = *(i - 80);
    if (v5)
    {
      *(i - 72) = v5;
      operator delete(v5);
    }

    v6 = *(i - 136);
    if (v6)
    {
      *(i - 128) = v6;
      operator delete(v6);
    }
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<operations_research::sat::DiffnEnergyEvent>,operations_research::sat::DiffnEnergyEvent*>(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4 = *v6;
      v7 = *(v6 + 1);
      v8 = *(v6 + 3);
      v9 = v6[8];
      *(a4 + 32) = *(v6 + 2);
      *(a4 + 48) = v8;
      *(a4 + 16) = v7;
      *(a4 + 64) = v9;
      *(a4 + 72) = 0;
      *(a4 + 80) = 0;
      *(a4 + 88) = 0;
      *(a4 + 72) = *(v6 + 9);
      *(a4 + 88) = v6[11];
      v6[9] = 0;
      v6[10] = 0;
      v6[11] = 0;
      v10 = *(v6 + 6);
      *(a4 + 108) = *(v6 + 108);
      *(a4 + 96) = v10;
      *(a4 + 136) = 0;
      *(a4 + 144) = 0;
      *(a4 + 128) = 0;
      *(a4 + 128) = *(v6 + 8);
      *(a4 + 144) = v6[18];
      v6[16] = 0;
      v6[17] = 0;
      v6[18] = 0;
      *(a4 + 152) = 0;
      *(a4 + 160) = 0;
      *(a4 + 168) = 0;
      *(a4 + 152) = *(v6 + 19);
      v11 = v6[22];
      *(a4 + 168) = v6[21];
      v6[19] = 0;
      v6[20] = 0;
      v6[21] = 0;
      *(a4 + 176) = v11;
      v12 = *(v6 + 23);
      *(a4 + 200) = v6[25];
      *(a4 + 184) = v12;
      v6 += 26;
      a4 += 208;
    }

    while (v6 != a3);
    while (v5 != a3)
    {
      v13 = v5[19];
      if (v13)
      {
        v5[20] = v13;
        operator delete(v13);
      }

      v14 = v5[16];
      if (v14)
      {
        v5[17] = v14;
        operator delete(v14);
      }

      v15 = v5[9];
      if (v15)
      {
        v5[10] = v15;
        operator delete(v15);
      }

      v5 += 26;
    }
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::DiffnEnergyEvent>,operations_research::sat::DiffnEnergyEvent*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 56);
      if (v5)
      {
        *(v3 - 48) = v5;
        operator delete(v5);
      }

      v6 = *(v3 - 80);
      if (v6)
      {
        *(v3 - 72) = v6;
        operator delete(v6);
      }

      v7 = *(v3 - 136);
      if (v7)
      {
        *(v3 - 128) = v7;
        operator delete(v7);
      }

      v3 -= 208;
    }
  }

  return a1;
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,false>(_OWORD *a1, _OWORD *a2, uint64_t a3, char a4, double a5)
{
LABEL_1:
  v282 = a2;
  v285 = (a2 - 13);
  v237 = (a2 - 39);
  v238 = (a2 - 26);
  j = a1;
  while (1)
  {
    a1 = j;
    v9 = a2 - j;
    v10 = 0x4EC4EC4EC4EC4EC5 * ((a2 - j) >> 4);
    if (v10 > 2)
    {
      switch(v10)
      {
        case 3:

          std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 26, v285, a5);
          return;
        case 4:

          std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, (a1 + 13), (a1 + 26), v285, a5);
          return;
        case 5:

          std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, (a1 + 13), (a1 + 26), (a1 + 39), v285, a5);
          return;
      }
    }

    else
    {
      if (v10 < 2)
      {
        return;
      }

      if (v10 == 2)
      {
        v86 = *(a2 - 26);
        if (v86 < *a1 || *a1 >= v86 && ((v212 = *(a2 - 1), v213 = *(a1 + 25), v212 < v213) || v213 >= v212 && *(a2 - 23) < *(a1 + 3)))
        {

          std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2 - 13);
        }

        return;
      }
    }

    if (v9 <= 4991)
    {
      break;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v120 = (v10 - 2) >> 1;
      v287 = v120;
      while (2)
      {
        v121 = v120;
        v122 = 208 * v120;
        if (v287 >= 0x4EC4EC4EC4EC4EC5 * (v122 >> 4))
        {
          v123 = (0x9D89D89D89D89D8ALL * (v122 >> 4)) | 1;
          v124 = &a1[13 * v123];
          if ((0x9D89D89D89D89D8ALL * (v122 >> 4) + 2) < v10)
          {
            v125 = *(v124 + 26);
            if (*v124 < v125 || v125 >= *v124 && ((v149 = *(v124 + 25), v150 = *(v124 + 51), v149 < v150) || v150 >= v149 && *(v124 + 3) < *(v124 + 29)))
            {
              v124 += 13;
              v123 = 0x9D89D89D89D89D8ALL * (v122 >> 4) + 2;
            }
          }

          v126 = &a1[v122 / 0x10];
          v127 = *&a1[v122 / 0x10];
          if (*v124 >= v127)
          {
            v128 = *(v126 + 25);
            if (v127 >= *v124)
            {
              v148 = *(v124 + 25);
              if (v148 >= v128)
              {
                v129 = *(v126 + 3);
                if (v128 < v148 || *(v124 + 3) >= v129)
                {
                  goto LABEL_205;
                }
              }
            }

            else
            {
              v129 = *(v126 + 3);
LABEL_205:
              v278 = v129;
              v130 = 0;
              v324 = *(v126 + 8);
              v308 = *(v126 + 8);
              v296 = v126[2];
              v302 = v126[3];
              v245 = *(v126 + 72);
              v241 = *(v126 + 11);
              *(v126 + 9) = 0;
              *(v126 + 10) = 0;
              *(v126 + 11) = 0;
              *&v330[12] = *(v126 + 108);
              *v330 = v126[6];
              v253 = v126[8];
              v249 = *(v126 + 18);
              *(v126 + 16) = 0;
              *(v126 + 17) = 0;
              v271 = *(v126 + 152);
              *(v126 + 18) = 0;
              *(v126 + 19) = 0;
              v265 = *(v126 + 21);
              v259 = *(v126 + 22);
              *(v126 + 20) = 0;
              *(v126 + 21) = 0;
              v318 = *(v126 + 184);
              while (1)
              {
                *v126 = *v124;
                v131 = v124[1];
                v132 = v124[2];
                v133 = v124[3];
                *(v126 + 8) = *(v124 + 8);
                v126[2] = v132;
                v126[3] = v133;
                v126[1] = v131;
                if (v130)
                {
                  *(v126 + 10) = v130;
                  operator delete(v130);
                  *(v126 + 9) = 0;
                  *(v126 + 10) = 0;
                  *(v126 + 11) = 0;
                }

                *(v126 + 72) = *(v124 + 72);
                *(v126 + 11) = *(v124 + 11);
                *(v124 + 9) = 0;
                *(v124 + 10) = 0;
                *(v124 + 11) = 0;
                v134 = v124[6];
                v135 = *(v126 + 16);
                *(v126 + 108) = *(v124 + 108);
                v126[6] = v134;
                if (v135)
                {
                  *(v126 + 17) = v135;
                  operator delete(v135);
                  *(v126 + 16) = 0;
                  *(v126 + 17) = 0;
                  *(v126 + 18) = 0;
                }

                v126[8] = v124[8];
                *(v126 + 18) = *(v124 + 18);
                *(v124 + 16) = 0;
                *(v124 + 17) = 0;
                *(v124 + 18) = 0;
                v136 = *(v126 + 19);
                if (v136)
                {
                  *(v126 + 20) = v136;
                  operator delete(v136);
                  *(v126 + 19) = 0;
                  *(v126 + 20) = 0;
                  *(v126 + 21) = 0;
                }

                *(v126 + 152) = *(v124 + 152);
                *(v126 + 21) = *(v124 + 21);
                *(v124 + 19) = 0;
                *(v124 + 20) = 0;
                *(v124 + 21) = 0;
                *(v126 + 22) = *(v124 + 22);
                v137 = *(v124 + 184);
                *(v126 + 25) = *(v124 + 25);
                *(v126 + 184) = v137;
                if (v287 < v123)
                {
                  break;
                }

                v138 = 2 * v123;
                v123 = (2 * v123) | 1;
                v139 = &a1[13 * v123];
                v140 = v138 + 2;
                if (v140 < v10)
                {
                  v141 = *(v139 + 26);
                  if (*v139 < v141 || v141 >= *v139 && ((v143 = *(v139 + 25), v144 = *(v139 + 51), v143 < v144) || v144 >= v143 && *(v139 + 3) < *(v139 + 29)))
                  {
                    v139 += 13;
                    v123 = v140;
                  }
                }

                if (*v139 < v127)
                {
                  break;
                }

                if (v127 >= *v139)
                {
                  v142 = *(v139 + 25);
                  if (v142 < v128 || v128 >= v142 && *(v139 + 3) < v278)
                  {
                    break;
                  }
                }

                v130 = *(v124 + 9);
                v126 = v124;
                v124 = v139;
              }

              *v124 = v127;
              *(v124 + 8) = v324;
              *(v124 + 3) = v278;
              v124[2] = v296;
              v124[3] = v302;
              *(v124 + 8) = v308;
              v145 = *(v124 + 9);
              if (v145)
              {
                *(v124 + 10) = v145;
                operator delete(v145);
              }

              *(v124 + 72) = v245;
              *(v124 + 11) = v241;
              v124[6] = *v330;
              *(v124 + 108) = *&v330[12];
              v146 = *(v124 + 16);
              if (v146)
              {
                *(v124 + 17) = v146;
                operator delete(v146);
              }

              v124[8] = v253;
              *(v124 + 18) = v249;
              v147 = *(v124 + 19);
              if (v147)
              {
                *(v124 + 20) = v147;
                operator delete(v147);
              }

              *(v124 + 152) = v271;
              *(v124 + 21) = v265;
              *(v124 + 22) = v259;
              *(v124 + 184) = v318;
              *(v124 + 25) = v128;
            }
          }
        }

        v120 = v121 - 1;
        if (v121)
        {
          continue;
        }

        break;
      }

      v151 = 0x4EC4EC4EC4EC4EC5 * (v9 >> 4);
      v152 = v282;
      while (2)
      {
        v154 = 0;
        v155 = v152;
        v297 = *a1;
        v250 = *(a1 + 9);
        v312 = *(a1 + 8);
        v309 = a1[2];
        v311 = a1[3];
        v303 = a1[1];
        v242 = *(a1 + 11);
        v246 = *(a1 + 10);
        *(a1 + 10) = 0;
        *(a1 + 11) = 0;
        *(a1 + 9) = 0;
        *&v319[12] = *(a1 + 108);
        *v319 = a1[6];
        v266 = *(a1 + 16);
        v260 = *(a1 + 17);
        *(a1 + 16) = 0;
        *(a1 + 17) = 0;
        v254 = *(a1 + 18);
        v283 = *(a1 + 20);
        v288 = *(a1 + 19);
        v279 = *(a1 + 21);
        *(a1 + 18) = 0;
        *(a1 + 19) = 0;
        *(a1 + 20) = 0;
        *(a1 + 21) = 0;
        v272 = *(a1 + 22);
        v292 = *(a1 + 25);
        v156 = a1;
        v291 = *(a1 + 184);
        do
        {
          v159 = v156 + 208 * v154;
          v160 = v159 + 208;
          v161 = 2 * v154;
          v154 = (2 * v154) | 1;
          v162 = v161 + 2;
          if (v162 < v151)
          {
            v163 = *(v159 + 208);
            v164 = *(v159 + 416);
            if (v163 < v164 || v164 >= v163 && ((v173 = *(v159 + 408), v174 = *(v159 + 616), v173 < v174) || v174 >= v173 && *(v159 + 232) < *(v159 + 440)))
            {
              v160 = v159 + 416;
              v154 = v162;
            }
          }

          *v156 = *v160;
          v165 = *(v160 + 16);
          v166 = *(v160 + 32);
          v167 = *(v160 + 48);
          *(v156 + 64) = *(v160 + 64);
          *(v156 + 32) = v166;
          *(v156 + 48) = v167;
          *(v156 + 16) = v165;
          v168 = *(v156 + 72);
          if (v168)
          {
            *(v156 + 80) = v168;
            operator delete(v168);
            *(v156 + 72) = 0;
            *(v156 + 80) = 0;
            *(v156 + 88) = 0;
          }

          v169 = (v160 + 72);
          *(v156 + 72) = *(v160 + 72);
          *(v156 + 88) = *(v160 + 88);
          *(v160 + 72) = 0;
          *(v160 + 80) = 0;
          *(v160 + 88) = 0;
          v170 = *(v160 + 96);
          v171 = *(v156 + 128);
          *(v156 + 108) = *(v160 + 108);
          *(v156 + 96) = v170;
          if (v171)
          {
            *(v156 + 136) = v171;
            operator delete(v171);
            *(v156 + 128) = 0;
            *(v156 + 136) = 0;
            *(v156 + 144) = 0;
          }

          *(v156 + 128) = *(v160 + 128);
          *(v156 + 144) = *(v160 + 144);
          *(v160 + 128) = 0;
          *(v160 + 136) = 0;
          *(v160 + 144) = 0;
          v172 = *(v156 + 152);
          if (v172)
          {
            *(v156 + 160) = v172;
            operator delete(v172);
            *(v156 + 152) = 0;
            *(v156 + 160) = 0;
            *(v156 + 168) = 0;
          }

          v157 = (v160 + 152);
          *(v156 + 152) = *(v160 + 152);
          *(v156 + 168) = *(v160 + 168);
          *(v160 + 152) = 0;
          *(v160 + 160) = 0;
          *(v160 + 168) = 0;
          *(v156 + 176) = *(v160 + 176);
          v158 = *(v160 + 184);
          *(v156 + 200) = *(v160 + 200);
          *(v156 + 184) = v158;
          v156 = v160;
        }

        while (v154 <= ((v151 - 2) >> 1));
        v152 = v155 - 13;
        if (v160 == v155 - 13)
        {
          *v160 = v297;
          *(v160 + 64) = v312;
          *(v160 + 32) = v309;
          *(v160 + 48) = v311;
          *(v160 + 16) = v303;
          v208 = *(v160 + 72);
          if (v208)
          {
            *(v160 + 80) = v208;
            operator delete(v208);
          }

          *(v160 + 72) = v250;
          *(v160 + 80) = v246;
          *(v160 + 88) = v242;
          *(v160 + 108) = *&v319[12];
          *(v160 + 96) = *v319;
          v209 = *(v160 + 128);
          if (v209)
          {
            *(v160 + 136) = v209;
            operator delete(v209);
          }

          *(v160 + 128) = v266;
          *(v160 + 136) = v260;
          *(v160 + 144) = v254;
          v210 = *(v160 + 152);
          if (v210)
          {
            *(v160 + 160) = v210;
            operator delete(v210);
          }

          *(v160 + 152) = v288;
          *(v160 + 160) = v283;
          *(v160 + 168) = v279;
          *(v160 + 176) = v272;
          *(v160 + 200) = v292;
          *(v160 + 184) = v291;
        }

        else
        {
          *v160 = *v152;
          v175 = *(v155 - 12);
          v176 = *(v155 - 11);
          v177 = *(v155 - 10);
          *(v160 + 64) = *(v155 - 18);
          *(v160 + 32) = v176;
          *(v160 + 48) = v177;
          *(v160 + 16) = v175;
          v178 = *(v160 + 72);
          if (v178)
          {
            *(v160 + 80) = v178;
            operator delete(v178);
            *v169 = 0;
            *(v160 + 80) = 0;
            *(v160 + 88) = 0;
          }

          *(v160 + 72) = *(v155 - 136);
          *(v160 + 88) = *(v155 - 15);
          *(v155 - 16) = 0;
          *(v155 - 15) = 0;
          *(v155 - 17) = 0;
          v179 = *(v155 - 7);
          *(v160 + 108) = *(v155 - 100);
          *(v160 + 96) = v179;
          v180 = *(v160 + 128);
          if (v180)
          {
            *(v160 + 136) = v180;
            operator delete(v180);
            *(v160 + 128) = 0;
            *(v160 + 136) = 0;
            *(v160 + 144) = 0;
          }

          v181 = v155 - 5;
          *(v160 + 128) = *(v155 - 5);
          *(v160 + 144) = *(v155 - 8);
          *v181 = 0;
          v181[1] = 0;
          v181[2] = 0;
          v182 = *(v160 + 152);
          if (v182)
          {
            *(v160 + 160) = v182;
            operator delete(v182);
            *v157 = 0;
            *(v160 + 160) = 0;
            *(v160 + 168) = 0;
          }

          *(v160 + 152) = *(v155 - 56);
          *(v160 + 168) = *(v155 - 5);
          *(v155 - 7) = 0;
          *(v155 - 6) = 0;
          *(v155 - 5) = 0;
          *(v160 + 176) = *(v155 - 4);
          v183 = *(v155 - 24);
          *(v160 + 200) = *(v155 - 1);
          *(v160 + 184) = v183;
          *(v155 - 18) = v312;
          *(v155 - 11) = v309;
          *(v155 - 10) = v311;
          *(v155 - 12) = v303;
          *v152 = v297;
          v184 = *(v155 - 17);
          if (v184)
          {
            *(v155 - 16) = v184;
            operator delete(v184);
          }

          v185 = v155 - 7;
          *(v155 - 17) = v250;
          *(v155 - 16) = v246;
          *(v155 - 15) = v242;
          *(v185 + 12) = *&v319[12];
          *v185 = *v319;
          v186 = *(v155 - 10);
          if (v186)
          {
            *(v155 - 9) = v186;
            operator delete(v186);
          }

          *(v155 - 10) = v266;
          *(v155 - 9) = v260;
          *(v155 - 8) = v254;
          v187 = *(v155 - 7);
          if (v187)
          {
            *(v155 - 6) = v187;
            operator delete(v187);
          }

          v188 = v155 - 24;
          *(v155 - 7) = v288;
          *(v155 - 6) = v283;
          *(v155 - 5) = v279;
          *(v155 - 4) = v272;
          *(v188 + 2) = v292;
          *v188 = v291;
          v189 = v160 + 208 - a1;
          if (v189 >= 209)
          {
            v190 = (0x4EC4EC4EC4EC4EC5 * (v189 >> 4) - 2) >> 1;
            v191 = &a1[13 * v190];
            v192 = *v160;
            if (*v191 >= *v160)
            {
              if (v192 >= *v191)
              {
                v211 = v191[25];
                v193 = *(v160 + 200);
                if (v211 < v193 || v193 >= v211 && *(v191 + 3) < *(v160 + 24))
                {
                  goto LABEL_277;
                }
              }
            }

            else
            {
              v193 = *(v160 + 200);
LABEL_277:
              v314 = *(v160 + 8);
              v194 = *(v160 + 24);
              v334 = *(v160 + 64);
              v331 = *(v160 + 32);
              v333 = *(v160 + 48);
              v261 = *(v160 + 72);
              v255 = *(v160 + 88);
              *(v160 + 80) = 0;
              *(v160 + 88) = 0;
              *v169 = 0;
              *&v325[12] = *(v160 + 108);
              *v325 = *(v160 + 96);
              v273 = *(v160 + 128);
              v267 = *(v160 + 144);
              *(v160 + 128) = 0;
              *(v160 + 136) = 0;
              *(v160 + 144) = 0;
              v289 = *(v160 + 152);
              *v157 = 0;
              *(v160 + 160) = 0;
              v284 = *(v160 + 168);
              v280 = *(v160 + 176);
              *(v160 + 168) = 0;
              v313 = *(v160 + 184);
              while (1)
              {
                v195 = v191;
                *v160 = *v191;
                v196 = *(v191 + 1);
                v197 = *(v191 + 2);
                v198 = *(v191 + 3);
                *(v160 + 64) = v191[8];
                *(v160 + 32) = v197;
                *(v160 + 48) = v198;
                *(v160 + 16) = v196;
                v199 = *(v160 + 72);
                if (v199)
                {
                  *(v160 + 80) = v199;
                  operator delete(v199);
                  *(v160 + 72) = 0;
                  *(v160 + 80) = 0;
                  *(v160 + 88) = 0;
                }

                *(v160 + 72) = *(v195 + 72);
                *(v160 + 88) = *(v195 + 88);
                *(v195 + 72) = 0;
                *(v195 + 80) = 0;
                *(v195 + 88) = 0;
                v200 = *(v195 + 96);
                v201 = *(v160 + 128);
                *(v160 + 108) = *(v195 + 108);
                *(v160 + 96) = v200;
                if (v201)
                {
                  *(v160 + 136) = v201;
                  operator delete(v201);
                  *(v160 + 128) = 0;
                  *(v160 + 136) = 0;
                  *(v160 + 144) = 0;
                }

                *(v160 + 128) = *(v195 + 128);
                *(v160 + 144) = *(v195 + 144);
                *(v195 + 128) = 0;
                *(v195 + 136) = 0;
                *(v195 + 144) = 0;
                v202 = *(v160 + 152);
                if (v202)
                {
                  *(v160 + 160) = v202;
                  operator delete(v202);
                  *(v160 + 152) = 0;
                  *(v160 + 160) = 0;
                  *(v160 + 168) = 0;
                }

                *(v160 + 152) = *(v195 + 152);
                *(v160 + 168) = *(v195 + 168);
                *(v195 + 152) = 0;
                *(v195 + 160) = 0;
                *(v195 + 168) = 0;
                *(v160 + 176) = *(v195 + 176);
                v203 = *(v195 + 184);
                *(v160 + 200) = *(v195 + 200);
                *(v160 + 184) = v203;
                if (!v190)
                {
                  break;
                }

                v190 = (v190 - 1) >> 1;
                v191 = &a1[13 * v190];
                v160 = v195;
                if (*v191 >= v192)
                {
                  if (v192 < *v191)
                  {
                    break;
                  }

                  v204 = v191[25];
                  v160 = v195;
                  if (v204 >= v193)
                  {
                    if (v193 < v204)
                    {
                      break;
                    }

                    v160 = v195;
                    if (*(v191 + 3) >= v194)
                    {
                      break;
                    }
                  }
                }
              }

              *v195 = v192;
              *(v195 + 8) = v314;
              *(v195 + 24) = v194;
              *(v195 + 32) = v331;
              *(v195 + 48) = v333;
              *(v195 + 64) = v334;
              v205 = *(v195 + 72);
              if (v205)
              {
                *(v195 + 80) = v205;
                operator delete(v205);
              }

              *(v195 + 72) = v261;
              *(v195 + 88) = v255;
              *(v195 + 96) = *v325;
              *(v195 + 108) = *&v325[12];
              v206 = *(v195 + 128);
              if (v206)
              {
                *(v195 + 136) = v206;
                operator delete(v206);
              }

              *(v195 + 128) = v273;
              *(v195 + 144) = v267;
              v207 = *(v195 + 152);
              if (v207)
              {
                *(v195 + 160) = v207;
                operator delete(v207);
              }

              *(v195 + 152) = v289;
              *(v195 + 168) = v284;
              *(v195 + 176) = v280;
              *(v195 + 184) = v313;
              *(v195 + 200) = v193;
            }
          }
        }

        if (v151-- <= 2)
        {
          return;
        }

        continue;
      }
    }

    v11 = v10 >> 1;
    v12 = &a1[13 * (v10 >> 1)];
    if (v9 < 0x6801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(v12, a1, v285, a5);
      --a3;
      v17 = *a1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_20:
      v22 = 0;
      v321 = *(a1 + 8);
      v23 = *(a1 + 3);
      v305 = *(a1 + 8);
      v293 = a1[2];
      v299 = a1[3];
      v243 = *(a1 + 72);
      v240 = *(a1 + 11);
      *(a1 + 9) = 0;
      *(a1 + 10) = 0;
      *(a1 + 11) = 0;
      *&v327[12] = *(a1 + 108);
      *v327 = a1[6];
      v24 = a1[8];
      v256 = *(a1 + 18);
      *(a1 + 16) = 0;
      *(a1 + 17) = 0;
      *(a1 + 18) = 0;
      v262 = v24;
      v268 = *(a1 + 152);
      *(a1 + 19) = 0;
      *(a1 + 20) = 0;
      v251 = *(a1 + 21);
      v247 = *(a1 + 22);
      *(a1 + 21) = 0;
      v315 = *(a1 + 184);
      v25 = *(a1 + 25);
      while (1)
      {
        v26 = &a1[v22];
        v27 = *&a1[v22 + 13];
        if (v27 >= *&v17)
        {
          if (*&v17 < v27)
          {
            break;
          }

          v28 = v26[51];
          if (v28 >= v25 && (v25 < v28 || *(v26 + 29) >= v23))
          {
            break;
          }
        }

        v22 += 13;
      }

      v275 = a3;
      v29 = &a1[v22 + 13];
      if (v22 * 16)
      {
        v30 = v285;
        for (i = *v285; *&i >= *&v17; i = v32)
        {
          if (*&v17 >= *&i)
          {
            v33 = v30[25];
            if (v33 < v25 || v25 >= v33 && *(v30 + 3) < v23)
            {
              break;
            }
          }

          v32 = *(v30 - 26);
          v30 -= 26;
        }
      }

      else
      {
        v30 = v282;
        if (v29 < v282)
        {
          v30 = v285;
          v34 = *v285;
          if (*v285 >= *&v17)
          {
            v30 = v285;
            do
            {
              if (*&v17 < *&v34)
              {
                goto LABEL_73;
              }

              v58 = v30[25];
              if (v58 < v25)
              {
                break;
              }

              if (v25 < v58)
              {
LABEL_73:
                if (v29 >= v30)
                {
                  break;
                }
              }

              else if (v29 >= v30 || *(v30 + 3) < v23)
              {
                break;
              }

              v57 = *(v30 - 26);
              v30 -= 26;
              v34 = v57;
            }

            while (*&v57 >= *&v17);
          }
        }
      }

      j = v29;
      if (v29 < v30)
      {
        v35 = v30;
        do
        {
          std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(j, v35);
          do
          {
            do
            {
              v37 = *(j + 208);
              j += 208;
              v36 = v37;
            }

            while (v37 < *&v17);
            if (*&v17 < v36)
            {
              break;
            }

            v38 = *(j + 200);
          }

          while (v38 < v25 || v25 >= v38 && *(j + 24) < v23);
          while (1)
          {
            v40 = *(v35 - 208);
            v35 -= 208;
            v39 = v40;
            if (v40 < *&v17)
            {
              break;
            }

            if (*&v17 >= v39)
            {
              v41 = *(v35 + 200);
              if (v41 < v25 || v25 >= v41 && *(v35 + 24) < v23)
              {
                break;
              }
            }
          }
        }

        while (j < v35);
      }

      if ((j - 208) != a1)
      {
        *a1 = *(j - 208);
        v42 = *(j - 192);
        v43 = *(j - 176);
        v44 = *(j - 160);
        *(a1 + 8) = *(j - 144);
        a1[2] = v43;
        a1[3] = v44;
        a1[1] = v42;
        v45 = *(a1 + 9);
        if (v45)
        {
          *(a1 + 10) = v45;
          operator delete(v45);
          *(a1 + 9) = 0;
          *(a1 + 10) = 0;
          *(a1 + 11) = 0;
        }

        *(a1 + 72) = *(j - 136);
        *(a1 + 11) = *(j - 120);
        *(j - 128) = 0;
        *(j - 120) = 0;
        *(j - 136) = 0;
        v46 = *(j - 112);
        *(a1 + 108) = *(j - 100);
        a1[6] = v46;
        v47 = *(a1 + 16);
        if (v47)
        {
          *(a1 + 17) = v47;
          operator delete(v47);
          *(a1 + 16) = 0;
          *(a1 + 17) = 0;
          *(a1 + 18) = 0;
        }

        v48 = (j - 80);
        a1[8] = *(j - 80);
        *(a1 + 18) = *(j - 64);
        *v48 = 0;
        v48[1] = 0;
        v48[2] = 0;
        v49 = *(a1 + 19);
        if (v49)
        {
          *(a1 + 20) = v49;
          operator delete(v49);
          *(a1 + 19) = 0;
          *(a1 + 20) = 0;
          *(a1 + 21) = 0;
        }

        *(a1 + 152) = *(j - 56);
        *(a1 + 21) = *(j - 40);
        *(j - 56) = 0;
        *(j - 48) = 0;
        *(j - 40) = 0;
        *(a1 + 22) = *(j - 32);
        v50 = *(j - 24);
        *(a1 + 25) = *(j - 8);
        *(a1 + 184) = v50;
      }

      *(j - 208) = v17;
      *(j - 200) = v321;
      *(j - 184) = v23;
      *(j - 144) = v305;
      *(j - 176) = v293;
      *(j - 160) = v299;
      v51 = *(j - 136);
      if (v51)
      {
        *(j - 128) = v51;
        operator delete(v51);
      }

      *(j - 136) = v243;
      *(j - 120) = v240;
      *(j - 100) = *&v327[12];
      *(j - 112) = *v327;
      v52 = *(j - 80);
      a2 = v282;
      if (v52)
      {
        *(j - 72) = v52;
        operator delete(v52);
      }

      *(j - 80) = v262;
      *(j - 64) = v256;
      v53 = *(j - 56);
      if (v53)
      {
        *(j - 48) = v53;
        operator delete(v53);
      }

      *(j - 56) = v268;
      *(j - 40) = v251;
      *(j - 32) = v247;
      *(j - 24) = v315;
      *(j - 8) = v25;
      v54 = v29 >= v30;
      a3 = v275;
      if (!v54)
      {
        goto LABEL_71;
      }

      v55 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *>(a1, j - 208, *&v315);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *>(j, v282, v56))
      {
        a2 = (j - 208);
        if (v55)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v55)
      {
LABEL_71:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,false>(a1, (j - 208), v275, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v13 = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, v12, v285, a5);
      v14 = 13 * v11;
      v15 = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1 + 26, &a1[v14 - 13], v238, v13);
      v16 = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1 + 52, &a1[v14 + 13], v237, v15);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(&a1[v14 - 13], v12, &a1[v14 + 13], v16);
      std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, v12);
      --a3;
      v17 = *a1;
      if (a4)
      {
        goto LABEL_20;
      }

LABEL_15:
      v18 = *(a1 - 26);
      if (v18 < *&v17)
      {
        goto LABEL_20;
      }

      v19 = *(a1 + 25);
      if (*&v17 < v18)
      {
        v21 = *(a1 + 3);
      }

      else
      {
        v20 = *(a1 - 1);
        if (v20 < v19)
        {
          goto LABEL_20;
        }

        v21 = *(a1 + 3);
        if (v19 >= v20 && *(a1 - 23) < v21)
        {
          goto LABEL_20;
        }
      }

      v322 = *(a1 + 8);
      v306 = *(a1 + 8);
      v294 = a1[2];
      v300 = a1[3];
      v248 = *(a1 + 72);
      v244 = *(a1 + 11);
      *(a1 + 9) = 0;
      *(a1 + 10) = 0;
      *(a1 + 11) = 0;
      *&v328[12] = *(a1 + 108);
      *v328 = a1[6];
      v257 = a1[8];
      v252 = *(a1 + 18);
      *(a1 + 17) = 0;
      *(a1 + 18) = 0;
      *(a1 + 16) = 0;
      v276 = *(a1 + 152);
      *(a1 + 19) = 0;
      *(a1 + 20) = 0;
      v269 = *(a1 + 21);
      v263 = *(a1 + 22);
      *(a1 + 21) = 0;
      v316 = *(a1 + 184);
      a2 = v282;
      v59 = *v285;
      if (*&v17 < *v285 || *&v59 >= *&v17 && ((v85 = *(v282 - 1), v19 < v85) || v85 >= v19 && v21 < *(v282 - 23)))
      {
        j = a1;
        while (1)
        {
          v61 = *(j + 208);
          j += 208;
          v60 = v61;
          if (*&v17 < v61)
          {
            break;
          }

          if (v60 >= *&v17)
          {
            v62 = *(j + 200);
            if (v19 < v62 || v62 >= v19 && v21 < *(j + 24))
            {
              break;
            }
          }
        }
      }

      else
      {
        for (j = (a1 + 13); j < v282; j += 208)
        {
          if (*&v17 < *j)
          {
            break;
          }

          if (*j >= *&v17)
          {
            v63 = *(j + 200);
            if (v19 < v63 || v63 >= v19 && v21 < *(j + 24))
            {
              break;
            }
          }
        }
      }

      k = v282;
      if (j < v282)
      {
        for (k = v285; ; k -= 26)
        {
          if (*&v17 >= *&v59)
          {
            if (*&v59 < *&v17)
            {
              break;
            }

            v66 = k[25];
            if (v19 >= v66 && (v66 < v19 || v21 >= *(k + 3)))
            {
              break;
            }
          }

          v65 = *(k - 26);
          v59 = v65;
        }
      }

      while (j < k)
      {
        std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(j, k);
        while (1)
        {
          v68 = *(j + 208);
          j += 208;
          v67 = v68;
          if (*&v17 < v68)
          {
            break;
          }

          if (v67 >= *&v17)
          {
            v69 = *(j + 200);
            if (v19 < v69 || v69 >= v19 && v21 < *(j + 24))
            {
              break;
            }
          }
        }

        do
        {
          do
          {
            v71 = *(k - 26);
            k -= 26;
            v70 = v71;
          }

          while (*&v17 < v71);
          if (v70 < *&v17)
          {
            break;
          }

          v72 = k[25];
        }

        while (v19 < v72 || v72 >= v19 && v21 < *(k + 3));
      }

      if ((j - 208) != a1)
      {
        *a1 = *(j - 208);
        v73 = *(j - 192);
        v74 = *(j - 176);
        v75 = *(j - 160);
        *(a1 + 8) = *(j - 144);
        a1[2] = v74;
        a1[3] = v75;
        a1[1] = v73;
        v76 = *(a1 + 9);
        if (v76)
        {
          *(a1 + 10) = v76;
          operator delete(v76);
          *(a1 + 9) = 0;
          *(a1 + 10) = 0;
          *(a1 + 11) = 0;
        }

        *(a1 + 72) = *(j - 136);
        *(a1 + 11) = *(j - 120);
        *(j - 128) = 0;
        *(j - 120) = 0;
        *(j - 136) = 0;
        v77 = *(j - 112);
        *(a1 + 108) = *(j - 100);
        a1[6] = v77;
        v78 = *(a1 + 16);
        if (v78)
        {
          *(a1 + 17) = v78;
          operator delete(v78);
          *(a1 + 16) = 0;
          *(a1 + 17) = 0;
          *(a1 + 18) = 0;
        }

        v79 = (j - 80);
        a1[8] = *(j - 80);
        *(a1 + 18) = *(j - 64);
        *v79 = 0;
        v79[1] = 0;
        v79[2] = 0;
        v80 = *(a1 + 19);
        if (v80)
        {
          *(a1 + 20) = v80;
          operator delete(v80);
          *(a1 + 19) = 0;
          *(a1 + 20) = 0;
          *(a1 + 21) = 0;
        }

        *(a1 + 152) = *(j - 56);
        *(a1 + 21) = *(j - 40);
        *(j - 56) = 0;
        *(j - 48) = 0;
        *(j - 40) = 0;
        *(a1 + 22) = *(j - 32);
        v81 = *(j - 24);
        *(a1 + 25) = *(j - 8);
        *(a1 + 184) = v81;
      }

      *(j - 208) = v17;
      *(j - 200) = v322;
      *(j - 184) = v21;
      *(j - 144) = v306;
      *(j - 176) = v294;
      *(j - 160) = v300;
      v82 = *(j - 136);
      if (v82)
      {
        *(j - 128) = v82;
        operator delete(v82);
      }

      *(j - 136) = v248;
      *(j - 120) = v244;
      *(j - 100) = *&v328[12];
      *(j - 112) = *v328;
      v83 = *(j - 80);
      if (v83)
      {
        *(j - 72) = v83;
        operator delete(v83);
      }

      *(j - 80) = v257;
      *(j - 64) = v252;
      v84 = *(j - 56);
      if (v84)
      {
        *(j - 48) = v84;
        operator delete(v84);
      }

      a4 = 0;
      *(j - 56) = v276;
      *(j - 40) = v269;
      *(j - 32) = v263;
      a5 = *&v316;
      *(j - 24) = v316;
      *(j - 8) = v19;
    }
  }

  v87 = a1 + 13;
  v89 = a1 == a2 || v87 == a2;
  if (a4)
  {
    if (!v89)
    {
      v90 = 0;
      v91 = a1;
      do
      {
        v92 = v91;
        v91 = v87;
        v93 = *(v92 + 208);
        if (v93 < *v92 || *v92 >= v93 && ((v114 = *(v92 + 408), v115 = *(v92 + 200), v114 < v115) || v115 >= v114 && *(v92 + 232) < *(v92 + 24)))
        {
          v323 = *(v87 + 8);
          v94 = *(v87 + 3);
          v307 = *(v87 + 8);
          v295 = v87[2];
          v301 = v87[3];
          v95 = *(v92 + 280);
          v96 = *(v92 + 304);
          v258 = *(v92 + 288);
          *(v92 + 288) = 0;
          *(v92 + 296) = 0;
          *(v92 + 280) = 0;
          *&v329[12] = *(v92 + 316);
          *v329 = v96;
          v97 = *(v92 + 336);
          v264 = *(v92 + 344);
          *(v92 + 336) = 0;
          *(v92 + 344) = 0;
          v286 = *(v92 + 360);
          v277 = *(v92 + 368);
          *(v92 + 352) = 0;
          *(v92 + 360) = 0;
          *(v92 + 368) = 0;
          *(v92 + 376) = 0;
          v270 = *(v92 + 384);
          v317 = *(v92 + 392);
          v98 = *(v92 + 408);
          for (m = v90; ; m -= 208)
          {
            v100 = a1 + m;
            v101 = *(a1 + m + 48);
            *(v100 + 15) = *(a1 + m + 32);
            *(v100 + 16) = v101;
            *(v100 + 34) = *(a1 + m + 64);
            v102 = *(a1 + m + 16);
            *(v100 + 13) = *(a1 + m);
            *(v100 + 14) = v102;
            v103 = *(a1 + m + 280);
            if (v103)
            {
              *(v100 + 36) = v103;
              operator delete(v103);
              *(v100 + 36) = 0;
              *(v100 + 37) = 0;
            }

            *(v100 + 280) = *(v100 + 72);
            *(v100 + 37) = *(v100 + 11);
            *(v100 + 10) = 0;
            *(v100 + 11) = 0;
            *(v100 + 9) = 0;
            *(v100 + 19) = *(v100 + 6);
            *(v100 + 316) = *(v100 + 108);
            v104 = *(v100 + 42);
            if (v104)
            {
              v105 = a1 + m;
              *(a1 + m + 344) = v104;
              operator delete(v104);
              *(v105 + 43) = 0;
              *(v105 + 44) = 0;
            }

            *(v100 + 21) = *(v100 + 8);
            v106 = a1 + m;
            *(a1 + m + 352) = *(a1 + m + 144);
            *(v100 + 16) = 0;
            *(v100 + 17) = 0;
            *(v100 + 18) = 0;
            v107 = *(a1 + m + 360);
            if (v107)
            {
              *(v106 + 46) = v107;
              operator delete(v107);
              *(v106 + 46) = 0;
              *(v106 + 47) = 0;
            }

            *(v106 + 360) = *(v106 + 152);
            v108 = *(v106 + 21);
            v109 = *(v106 + 22);
            *(v106 + 20) = 0;
            *(v106 + 21) = 0;
            *(v106 + 19) = 0;
            *(v106 + 47) = v108;
            *(v106 + 48) = v109;
            *(v106 + 392) = *(v106 + 184);
            *(v106 + 51) = *(v106 + 25);
            if (!m)
            {
              break;
            }

            v110 = (a1 + m);
            v111 = *(a1 + m - 208);
            if (v93 >= v111)
            {
              if (v111 < v93 || (v112 = *(v110 - 1), v98 >= v112) && (v112 < v98 || v94 >= *(v110 - 23)))
              {
                v113 = a1 + m;
                goto LABEL_187;
              }
            }
          }

          v113 = a1;
LABEL_187:
          v116 = a1 + m;
          *v113 = v93;
          *(v113 + 8) = v323;
          *(v113 + 24) = v94;
          *(v113 + 32) = v295;
          *(v113 + 48) = v301;
          *(v113 + 64) = v307;
          v117 = *(a1 + m + 72);
          if (v117)
          {
            *(v113 + 80) = v117;
            operator delete(v117);
            *(v116 + 10) = 0;
            *(v116 + 11) = 0;
          }

          *(v116 + 9) = v95;
          *(v113 + 80) = v258;
          *(v116 + 108) = *&v329[12];
          *(v116 + 6) = *v329;
          v118 = *(v116 + 16);
          if (v118)
          {
            *(v113 + 136) = v118;
            operator delete(v118);
            *(v116 + 17) = 0;
            *(v116 + 18) = 0;
          }

          *(v116 + 16) = v97;
          *(v113 + 136) = v264;
          v119 = *(v116 + 19);
          if (v119)
          {
            *(v113 + 160) = v119;
            operator delete(v119);
            *(v116 + 20) = 0;
            *(v116 + 21) = 0;
          }

          *(v116 + 19) = v286;
          *(v113 + 160) = v277;
          *(v113 + 176) = v270;
          *(v116 + 184) = v317;
          *(a1 + m + 200) = v98;
        }

        v87 = (v91 + 208);
        v90 += 208;
      }

      while ((v91 + 208) != v282);
    }
  }

  else if (!v89)
  {
    do
    {
      v214 = a1;
      a1 = v87;
      v215 = *(v214 + 208);
      if (v215 < *v214 || *v214 >= v215 && ((v235 = *(v214 + 408), v236 = *(v214 + 200), v235 < v236) || v236 >= v235 && *(v214 + 232) < *(v214 + 24)))
      {
        v326 = *(v87 + 8);
        v216 = *(v87 + 3);
        v310 = *(v87 + 8);
        v298 = v87[2];
        v304 = v87[3];
        v217 = *(v214 + 280);
        v218 = *(v214 + 296);
        *(v214 + 288) = 0;
        *(v214 + 296) = 0;
        *(v214 + 280) = 0;
        *&v332[12] = *(v214 + 316);
        *v332 = *(v214 + 304);
        v274 = v217;
        v281 = *(v214 + 336);
        v219 = *(v214 + 352);
        *(v214 + 336) = 0;
        *(v214 + 344) = 0;
        *(v214 + 352) = 0;
        v290 = *(v214 + 360);
        *(v214 + 360) = 0;
        *(v214 + 368) = 0;
        v220 = *(v214 + 376);
        v221 = *(v214 + 384);
        *(v214 + 376) = 0;
        v320 = *(v214 + 392);
        v222 = *(v214 + 408);
        while (1)
        {
          v223 = v214;
          v224 = *(v214 + 48);
          *(v214 + 240) = *(v214 + 32);
          *(v214 + 256) = v224;
          *(v214 + 272) = *(v214 + 64);
          v225 = *(v214 + 16);
          *(v214 + 208) = *v214;
          *(v214 + 224) = v225;
          v226 = *(v214 + 280);
          if (v226)
          {
            *(v214 + 288) = v226;
            operator delete(v226);
            *(v223 + 288) = 0;
            *(v223 + 296) = 0;
          }

          *(v223 + 280) = *(v223 + 72);
          *(v223 + 296) = *(v223 + 88);
          *(v223 + 80) = 0;
          *(v223 + 88) = 0;
          *(v223 + 72) = 0;
          *(v223 + 304) = *(v223 + 96);
          *(v223 + 316) = *(v223 + 108);
          v227 = *(v223 + 336);
          if (v227)
          {
            *(v223 + 344) = v227;
            operator delete(v227);
            *(v223 + 344) = 0;
            *(v223 + 352) = 0;
          }

          *(v223 + 336) = *(v223 + 128);
          *(v223 + 352) = *(v223 + 144);
          *(v223 + 136) = 0;
          *(v223 + 144) = 0;
          *(v223 + 128) = 0;
          v228 = *(v223 + 360);
          if (v228)
          {
            *(v223 + 368) = v228;
            operator delete(v228);
            *(v223 + 368) = 0;
            *(v223 + 376) = 0;
          }

          v214 = v223 - 208;
          v229 = *(v223 - 208);
          *(v223 + 360) = *(v223 + 152);
          v230 = *(v223 + 176);
          *(v223 + 376) = *(v223 + 168);
          *(v223 + 160) = 0;
          *(v223 + 168) = 0;
          *(v223 + 152) = 0;
          *(v223 + 384) = v230;
          *(v223 + 408) = *(v223 + 200);
          *(v223 + 392) = *(v223 + 184);
          if (v215 >= v229)
          {
            if (v229 < v215)
            {
              break;
            }

            v231 = *(v223 - 8);
            if (v222 >= v231 && (v231 < v222 || v216 >= *(v223 - 184)))
            {
              break;
            }
          }
        }

        *v223 = v215;
        *(v223 + 8) = v326;
        *(v223 + 24) = v216;
        *(v223 + 32) = v298;
        *(v223 + 48) = v304;
        *(v223 + 64) = v310;
        v232 = *(v223 + 72);
        if (v232)
        {
          *(v223 + 80) = v232;
          operator delete(v232);
        }

        *(v223 + 72) = v274;
        *(v223 + 88) = v218;
        *(v223 + 96) = *v332;
        *(v223 + 108) = *&v332[12];
        v233 = *(v223 + 128);
        if (v233)
        {
          *(v223 + 136) = v233;
          operator delete(v233);
        }

        *(v223 + 128) = v281;
        *(v223 + 144) = v219;
        v234 = *(v223 + 152);
        if (v234)
        {
          *(v223 + 160) = v234;
          operator delete(v234);
        }

        *(v223 + 152) = v290;
        *(v223 + 168) = v220;
        *(v223 + 176) = v221;
        *(v223 + 184) = v320;
        *(v223 + 200) = v222;
        a2 = v282;
      }

      v87 = a1 + 13;
    }

    while (a1 + 13 != a2);
  }
}

double std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(double *a1, double *a2, double *a3, double result)
{
  v5 = *a2;
  if (*a2 < *a1 || *a1 >= v5 && ((result = a2[25], v9 = a1[25], result < v9) || v9 >= result && *(a2 + 3) < *(a1 + 3)))
  {
    if (*a3 < v5 || v5 >= *a3 && ((v11 = a3[25], v12 = a2[25], v11 < v12) || v12 >= v11 && *(a3 + 3) < *(a2 + 3)))
    {
      v6 = a3;
    }

    else
    {
      *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2).n128_u64[0];
      v6 = a3;
      if (*a3 >= *a2)
      {
        if (*a2 < *a3)
        {
          return result;
        }

        result = a3[25];
        v14 = a2[25];
        if (result >= v14 && (v14 < result || *(a3 + 3) >= *(a2 + 3)))
        {
          return result;
        }
      }

      a1 = a2;
    }

LABEL_5:
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, v6).n128_u64[0];
    return result;
  }

  if (*a3 < v5 || v5 >= *a3 && ((result = a3[25], v10 = a2[25], result < v10) || v10 >= result && *(a3 + 3) < *(a2 + 3)))
  {
    v7 = a1;
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a2, a3).n128_u64[0];
    a1 = v7;
    if (*a2 < *v7 || *v7 >= *a2 && ((result = a2[25], v13 = v7[25], result < v13) || v13 >= result && *(a2 + 3) < *(v7 + 3)))
    {
      v6 = a2;

      goto LABEL_5;
    }
  }

  return result;
}

double std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a2, a3, a5);
  if (*a4 < *a3 || *a3 >= *a4 && ((result = *(a4 + 200), v10 = *(a3 + 200), result < v10) || v10 >= result && *(a4 + 24) < *(a3 + 24)))
  {
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a3, a4).n128_u64[0];
    if (*a3 < *a2 || *a2 >= *a3 && ((result = *(a3 + 200), v11 = *(a2 + 200), result < v11) || v11 >= result && *(a3 + 24) < *(a2 + 24)))
    {
      *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a2, a3).n128_u64[0];
      if (*a2 < *a1 || *a1 >= *a2 && ((result = *(a2 + 200), v12 = *(a1 + 200), result < v12) || v12 >= result && *(a2 + 24) < *(a1 + 24)))
      {

        *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2).n128_u64[0];
      }
    }
  }

  return result;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a2, a3, a4, a6);
  if (*a5 < *a4 || *a4 >= *a5 && ((result = *(a5 + 200), v12 = *(a4 + 200), result < v12) || v12 >= result && *(a5 + 24) < *(a4 + 24)))
  {
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a4, a5).n128_u64[0];
    if (*a4 < *a3 || *a3 >= *a4 && ((result = *(a4 + 200), v13 = *(a3 + 200), result < v13) || v13 >= result && *(a4 + 24) < *(a3 + 24)))
    {
      *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a3, a4).n128_u64[0];
      if (*a3 < *a2 || *a2 >= *a3 && ((result = *(a3 + 200), v14 = *(a2 + 200), result < v14) || v14 >= result && *(a3 + 24) < *(a2 + 24)))
      {
        *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a2, a3).n128_u64[0];
        if (*a2 < *a1 || *a1 >= *a2 && ((result = *(a2 + 200), v15 = *(a1 + 200), result < v15) || v15 >= result && *(a2 + 24) < *(a1 + 24)))
        {

          *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *>(uint64_t a1, uint64_t a2, double a3)
{
  v3 = a2;
  v5 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 4);
  if (v5 > 2)
  {
    switch(v5)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, (a1 + 208), (a2 - 208), a3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416, a2 - 208, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416, a1 + 624, a2 - 208, a3);
        return 1;
    }
  }

  else
  {
    if (v5 < 2)
    {
      return 1;
    }

    if (v5 == 2)
    {
      v7 = (a2 - 208);
      v8 = *(v3 - 208);
      if (v8 < *a1 || *a1 >= v8 && ((v40 = *(v3 - 8), v41 = *(a1 + 200), v40 < v41) || v41 >= v40 && *(v3 - 184) < *(a1 + 24)))
      {
        std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, v7);
        return 1;
      }

      return 1;
    }
  }

  v9 = (a1 + 416);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_0 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, (a1 + 208), (a1 + 416), a3);
  v10 = (a1 + 624);
  if (a1 + 624 == v3)
  {
    return 1;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0uLL;
  v42 = v3;
  while (1)
  {
    v14 = *v10;
    if (*v10 < *v9)
    {
      break;
    }

    if (*v9 >= *&v14)
    {
      v15 = *(v10 + 25);
      v35 = v9[25];
      if (v15 < v35 || v35 >= v15 && v10[3] < *(v9 + 3))
      {
        goto LABEL_18;
      }
    }

LABEL_15:
    v9 = v10;
    v11 += 208;
    v10 += 26;
    if (v10 == v3)
    {
      return 1;
    }
  }

  v15 = *(v10 + 25);
LABEL_18:
  v16 = 0;
  v17 = *(v10 + 1);
  v18 = v10[3];
  v51 = *(v10 + 2);
  v52 = *(v10 + 3);
  v44 = v10[9];
  v53 = v10[8];
  v19 = *(v10 + 6);
  v43 = *(v10 + 5);
  v10[9] = 0;
  v10[10] = 0;
  v10[11] = 0;
  *&v55[12] = *(v10 + 108);
  v54 = v17;
  *v55 = v19;
  v20 = v10[16];
  v45 = *(v10 + 17);
  v10[16] = 0;
  v10[17] = 0;
  v49 = v10[19];
  v48 = *(v10 + 10);
  v10[18] = 0;
  v10[19] = 0;
  v10[20] = 0;
  v10[21] = 0;
  v46 = v20;
  v47 = v10[22];
  v21 = v11;
  v50 = *(v10 + 23);
  while (1)
  {
    v22 = a1 + v21;
    v23 = *(a1 + v21 + 464);
    *(v22 + 656) = *(a1 + v21 + 448);
    *(v22 + 672) = v23;
    *(v22 + 688) = *(a1 + v21 + 480);
    v24 = *(a1 + v21 + 432);
    *(v22 + 624) = *(a1 + v21 + 416);
    *(v22 + 640) = v24;
    if (v16)
    {
      *(v22 + 704) = v16;
      operator delete(v16);
      v13 = 0uLL;
      *(v22 + 704) = 0u;
    }

    v25 = (v22 + 488);
    *(v22 + 696) = *(v22 + 488);
    *(v22 + 712) = *(v22 + 504);
    *(v22 + 496) = 0;
    *(v22 + 504) = 0;
    *(v22 + 488) = 0;
    *(v22 + 720) = *(v22 + 512);
    *(v22 + 732) = *(v22 + 524);
    v26 = *(v22 + 752);
    if (v26)
    {
      v27 = (a1 + v21 + 760);
      *v27 = v26;
      operator delete(v26);
      v13 = 0uLL;
      *v27 = 0u;
    }

    v28 = (v22 + 544);
    *(v22 + 752) = *(v22 + 544);
    v29 = a1 + v21;
    *(a1 + v21 + 768) = *(a1 + v21 + 560);
    *v28 = 0;
    v28[1] = 0;
    v28[2] = 0;
    v30 = *(a1 + v21 + 776);
    if (v30)
    {
      *(v29 + 784) = v30;
      operator delete(v30);
      v13 = 0uLL;
      *(v29 + 784) = 0u;
    }

    *(v29 + 776) = *(v29 + 568);
    *(v29 + 792) = *(v29 + 584);
    *(v29 + 584) = 0;
    *(v29 + 568) = v13;
    *(v29 + 800) = *(v29 + 592);
    *(v29 + 824) = *(v29 + 616);
    *(v29 + 808) = *(v29 + 600);
    if (v21 == -416)
    {
      break;
    }

    v31 = a1 + v21;
    v32 = *(a1 + v21 + 208);
    if (*&v14 >= *&v32)
    {
      if (*&v32 < *&v14 || (v33 = *(v31 + 408), v15 >= v33) && (v33 < v15 || v18 >= *(v31 + 232)))
      {
        v34 = a1 + v21 + 416;
        goto LABEL_39;
      }
    }

    v16 = *v25;
    v21 -= 208;
  }

  v34 = a1;
LABEL_39:
  v36 = a1 + v21;
  *v34 = v14;
  *(v34 + 8) = v54;
  *(v34 + 24) = v18;
  *(v34 + 32) = v51;
  *(v34 + 48) = v52;
  *(v34 + 64) = v53;
  v37 = *(a1 + v21 + 488);
  if (v37)
  {
    *(v34 + 80) = v37;
    operator delete(v37);
    *(v36 + 496) = 0;
    *(v36 + 504) = 0;
  }

  *(v36 + 488) = v44;
  *(v34 + 80) = v43;
  *(v36 + 512) = *v55;
  *(v36 + 524) = *&v55[12];
  v38 = *(v36 + 544);
  v3 = v42;
  if (v38)
  {
    *(v34 + 136) = v38;
    operator delete(v38);
    *(v36 + 552) = 0;
    *(v36 + 560) = 0;
  }

  *(v36 + 544) = v46;
  *(v34 + 136) = v45;
  v39 = *(v36 + 568);
  if (v39)
  {
    *(v34 + 160) = v39;
    operator delete(v39);
    *(v36 + 576) = 0;
    *(v36 + 584) = 0;
  }

  *(v36 + 568) = v49;
  *(v34 + 160) = v48;
  *(v34 + 176) = v47;
  *(v36 + 600) = v50;
  *(a1 + v21 + 616) = v15;
  ++v12;
  v13 = 0uLL;
  if (v12 != 8)
  {
    goto LABEL_15;
  }

  return v10 + 26 == v42;
}

__n128 std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(__int128 *a1, __int128 *a2)
{
  v32 = a1[2];
  v33 = a1[3];
  v34 = *(a1 + 8);
  v30 = *a1;
  v31 = a1[1];
  v4 = *(a1 + 72);
  v5 = *(a1 + 11);
  *(a1 + 72) = 0uLL;
  *(a1 + 11) = 0;
  *&v35[12] = *(a1 + 108);
  *v35 = a1[6];
  v6 = a1 + 8;
  v25 = v4;
  v26 = a1[8];
  v7 = *(a1 + 18);
  a1[8] = 0uLL;
  *(a1 + 18) = 0;
  v8 = a1 + 19;
  v9 = *(a1 + 152);
  *(a1 + 19) = 0;
  v10 = *(a1 + 21);
  v11 = *(a1 + 22);
  a1[10] = 0uLL;
  v29 = *(a1 + 25);
  v27 = v9;
  v28 = *(a1 + 184);
  *a1 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  v14 = a2[3];
  *(a1 + 8) = *(a2 + 8);
  a1[2] = v13;
  a1[3] = v14;
  a1[1] = v12;
  v15 = *(a2 + 11);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 11) = v15;
  a2[5] = 0uLL;
  *(a2 + 9) = 0;
  v16 = a2[6];
  *(a1 + 108) = *(a2 + 108);
  a1[6] = v16;
  v17 = *(a1 + 16);
  if (v17)
  {
    *(a1 + 17) = v17;
    operator delete(v17);
    *v6 = 0;
    *(v6 + 1) = 0;
    *(v6 + 2) = 0;
  }

  a1[8] = a2[8];
  *(a1 + 18) = *(a2 + 18);
  *(a2 + 16) = 0;
  *(a2 + 17) = 0;
  *(a2 + 18) = 0;
  v18 = *(a1 + 19);
  if (v18)
  {
    *(a1 + 20) = v18;
    operator delete(v18);
    *v8 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  *(a1 + 152) = *(a2 + 152);
  v19 = *(a2 + 22);
  *(a1 + 21) = *(a2 + 21);
  *(a2 + 19) = 0;
  *(a2 + 20) = 0;
  *(a2 + 21) = 0;
  *(a1 + 22) = v19;
  v20 = *(a2 + 184);
  *(a1 + 25) = *(a2 + 25);
  *(a1 + 184) = v20;
  a2[2] = v32;
  a2[3] = v33;
  *(a2 + 8) = v34;
  *a2 = v30;
  a2[1] = v31;
  v21 = *(a2 + 9);
  if (v21)
  {
    *(a2 + 10) = v21;
    operator delete(v21);
  }

  *(a2 + 72) = v25;
  *(a2 + 11) = v5;
  a2[6] = *v35;
  *(a2 + 108) = *&v35[12];
  v22 = *(a2 + 16);
  if (v22)
  {
    *(a2 + 17) = v22;
    operator delete(v22);
  }

  a2[8] = v26;
  *(a2 + 18) = v7;
  v23 = *(a2 + 19);
  if (v23)
  {
    *(a2 + 20) = v23;
    operator delete(v23);
  }

  result = v28;
  *(a2 + 152) = v27;
  *(a2 + 21) = v10;
  *(a2 + 22) = v11;
  *(a2 + 184) = v28;
  *(a2 + 25) = v29;
  return result;
}

void ***std::__exception_guard_exceptions<std::vector<operations_research::sat::DiffnEnergyEvent>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100](void ***a1)
{
  if ((a1[1] & 1) == 0)
  {
    v2 = *a1;
    v3 = **a1;
    if (v3)
    {
      v4 = v2[1];
      v5 = **a1;
      if (v4 != v3)
      {
        do
        {
          v6 = *(v4 - 7);
          if (v6)
          {
            *(v4 - 6) = v6;
            operator delete(v6);
          }

          v7 = *(v4 - 10);
          if (v7)
          {
            *(v4 - 9) = v7;
            operator delete(v7);
          }

          v8 = *(v4 - 17);
          if (v8)
          {
            *(v4 - 16) = v8;
            operator delete(v8);
          }

          v4 -= 208;
        }

        while (v4 != v3);
        v5 = **a1;
      }

      v2[1] = v3;
      operator delete(v5);
    }
  }

  return a1;
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<operations_research::sat::DiffnEnergyEvent>,operations_research::sat::DiffnEnergyEvent*,operations_research::sat::DiffnEnergyEvent*,operations_research::sat::DiffnEnergyEvent*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v16 = a4;
  if (a2 != a3)
  {
    v6 = a2 + 128;
    do
    {
      *v4 = *(v6 - 128);
      v7 = *(v6 - 112);
      v8 = *(v6 - 96);
      v9 = *(v6 - 80);
      *(v4 + 64) = *(v6 - 64);
      *(v4 + 32) = v8;
      *(v4 + 48) = v9;
      *(v4 + 72) = 0;
      *(v4 + 16) = v7;
      *(v4 + 80) = 0;
      *(v4 + 88) = 0;
      v11 = *(v6 - 56);
      v10 = *(v6 - 48);
      if (v10 != v11)
      {
        if (0xAAAAAAAAAAAAAAABLL * ((v10 - v11) >> 3) < 0xAAAAAAAAAAAAAABLL)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v12 = v6 - 128;
      v13 = *(v6 - 32);
      *(v4 + 108) = *(v6 - 20);
      *(v4 + 96) = v13;
      operations_research::sat::LinearExpression::LinearExpression((v4 + 128), v6);
      v14 = *(v6 + 56);
      *(v4 + 200) = *(v6 + 72);
      *(v4 + 184) = v14;
      v4 = v16 + 208;
      v16 += 208;
      v6 += 208;
    }

    while (v12 + 208 != a3);
  }

  return v4;
}

void sub_23CB69688(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *v10;
  if (*v10)
  {
    *(v9 + 80) = v12;
    operator delete(v12);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<operations_research::sat::DiffnEnergyEvent>,operations_research::sat::DiffnEnergyEvent*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,false>(unint64_t a1, __int128 *a2, uint64_t a3, char a4)
{
LABEL_1:
  v271 = a2 - 13;
  v230 = (a2 - 39);
  v231 = (a2 - 26);
  v232 = a2 - 392;
  i = a1;
  v277 = a2;
  while (1)
  {
    a1 = i;
    v8 = a2 - i;
    v9 = 0x4EC4EC4EC4EC4EC5 * ((a2 - i) >> 4);
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return;
      }

      if (v9 == 2)
      {
        v86 = *(a2 - 23);
        v87 = *(a1 + 24);
        if (v86 >= v87 && (v87 < v86 || *(a2 - 1) >= *(a1 + 200)))
        {
          return;
        }

        v85 = a1;
        v84 = v271;
LABEL_131:

        std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(v85, v84);
        return;
      }

      goto LABEL_9;
    }

    if (v9 == 3)
    {

      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, v271);
      return;
    }

    if (v9 == 4)
    {
      break;
    }

    if (v9 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416, a1 + 624, v271);
      return;
    }

LABEL_9:
    if (v8 <= 4991)
    {
      v88 = a1 + 208;
      v90 = a1 == a2 || v88 == a2;
      if (a4)
      {
        if (!v90)
        {
          v91 = 0;
          v92 = a1;
          do
          {
            v93 = v92;
            v92 = v88;
            v94 = *(v93 + 232);
            v95 = *(v93 + 24);
            if (v94 < v95 || v95 >= v94 && *(v93 + 408) < *(v93 + 200))
            {
              v96 = *(v92 + 24);
              v319 = *(v92 + 16);
              v313 = *v92;
              v296 = *(v92 + 64);
              v284 = *(v92 + 32);
              v290 = *(v92 + 48);
              v97 = *(v93 + 280);
              v98 = *(v93 + 304);
              v253 = *(v93 + 288);
              *(v93 + 288) = 0;
              *(v93 + 296) = 0;
              *(v93 + 280) = 0;
              *&v324[12] = *(v93 + 316);
              *v324 = v98;
              v99 = *(v93 + 336);
              v100 = *(v93 + 344);
              *(v93 + 336) = 0;
              *(v93 + 344) = 0;
              v272 = *(v93 + 360);
              v260 = v100;
              v266 = *(v93 + 368);
              *(v93 + 352) = 0;
              *(v93 + 360) = 0;
              *(v93 + 368) = 0;
              *(v93 + 376) = 0;
              v101 = *(v93 + 384);
              v307 = *(v93 + 392);
              v102 = v91;
              v103 = *(v93 + 408);
              while (1)
              {
                v104 = a1 + v102;
                v105 = *(a1 + v102 + 48);
                *(v104 + 240) = *(a1 + v102 + 32);
                *(v104 + 256) = v105;
                *(v104 + 272) = *(a1 + v102 + 64);
                v106 = *(a1 + v102 + 16);
                *(v104 + 208) = *(a1 + v102);
                *(v104 + 224) = v106;
                v107 = *(a1 + v102 + 280);
                if (v107)
                {
                  *(v104 + 288) = v107;
                  operator delete(v107);
                  *(v104 + 288) = 0;
                  *(v104 + 296) = 0;
                }

                *(v104 + 280) = *(v104 + 72);
                *(v104 + 296) = *(v104 + 88);
                *(v104 + 80) = 0;
                *(v104 + 88) = 0;
                *(v104 + 72) = 0;
                *(v104 + 304) = *(v104 + 96);
                *(v104 + 316) = *(v104 + 108);
                v108 = *(v104 + 336);
                if (v108)
                {
                  v109 = a1 + v102;
                  *(a1 + v102 + 344) = v108;
                  operator delete(v108);
                  *(v109 + 344) = 0;
                  *(v109 + 352) = 0;
                }

                *(v104 + 336) = *(v104 + 128);
                v110 = a1 + v102;
                *(a1 + v102 + 352) = *(a1 + v102 + 144);
                *(v104 + 128) = 0;
                *(v104 + 136) = 0;
                *(v104 + 144) = 0;
                v111 = *(a1 + v102 + 360);
                if (v111)
                {
                  *(v110 + 368) = v111;
                  operator delete(v111);
                  *(v110 + 368) = 0;
                  *(v110 + 376) = 0;
                }

                *(v110 + 360) = *(v110 + 152);
                v112 = *(v110 + 168);
                v113 = *(v110 + 176);
                *(v110 + 160) = 0;
                *(v110 + 168) = 0;
                *(v110 + 152) = 0;
                *(v110 + 376) = v112;
                *(v110 + 384) = v113;
                *(v110 + 392) = *(v110 + 184);
                *(v110 + 408) = *(v110 + 200);
                if (!v102)
                {
                  break;
                }

                v114 = *(a1 + v102 - 184);
                if (v96 >= v114 && (v114 < v96 || v103 >= *(a1 + v102 - 8)))
                {
                  v115 = a1 + v102;
                  goto LABEL_166;
                }

                v102 -= 208;
              }

              v115 = a1;
LABEL_166:
              v116 = a1 + v102;
              *v115 = v313;
              *(v115 + 16) = v319;
              *(v115 + 24) = v96;
              *(v115 + 32) = v284;
              *(v115 + 48) = v290;
              *(v115 + 64) = v296;
              v117 = *(a1 + v102 + 72);
              if (v117)
              {
                *(v115 + 80) = v117;
                operator delete(v117);
                *(v116 + 80) = 0;
                *(v116 + 88) = 0;
              }

              *(v116 + 72) = v97;
              *(v115 + 80) = v253;
              *(v116 + 108) = *&v324[12];
              *(v116 + 96) = *v324;
              v118 = *(v116 + 128);
              if (v118)
              {
                *(v115 + 136) = v118;
                operator delete(v118);
                *(v116 + 136) = 0;
                *(v116 + 144) = 0;
              }

              *(v116 + 128) = v99;
              *(v115 + 136) = v260;
              v119 = *(v116 + 152);
              if (v119)
              {
                *(v115 + 160) = v119;
                operator delete(v119);
                *(v116 + 160) = 0;
                *(v116 + 168) = 0;
              }

              *(v116 + 152) = v272;
              *(v115 + 160) = v266;
              *(v115 + 176) = v101;
              *(v116 + 184) = v307;
              *(a1 + v102 + 200) = v103;
              a2 = v277;
            }

            v88 = v92 + 208;
            v91 += 208;
          }

          while ((v92 + 208) != a2);
        }
      }

      else if (!v90)
      {
        v209 = a1 + 392;
        do
        {
          v210 = a1;
          a1 = v88;
          v211 = *(v210 + 232);
          v212 = *(v210 + 24);
          if (v211 < v212 || v212 >= v211 && *(v210 + 408) < *(v210 + 200))
          {
            v213 = *(a1 + 24);
            v321 = *(a1 + 16);
            v316 = *a1;
            v299 = *(a1 + 64);
            v287 = *(a1 + 32);
            v293 = *(a1 + 48);
            v245 = *(v210 + 280);
            v240 = *(v210 + 296);
            *(v210 + 288) = 0;
            *(v210 + 296) = 0;
            *(v210 + 280) = 0;
            *&v327[12] = *(v210 + 316);
            *v327 = *(v210 + 304);
            v257 = *(v210 + 336);
            v250 = *(v210 + 352);
            *(v210 + 336) = 0;
            *(v210 + 344) = 0;
            *(v210 + 352) = 0;
            v276 = *(v210 + 360);
            *(v210 + 360) = 0;
            *(v210 + 368) = 0;
            v270 = *(v210 + 376);
            v264 = *(v210 + 384);
            *(v210 + 376) = 0;
            v310 = *(v210 + 392);
            v214 = v209;
            v215 = *(v210 + 408);
            while (1)
            {
              v216 = *(v214 - 392);
              *(v214 - 168) = *(v214 - 376);
              v217 = *(v214 - 344);
              *(v214 - 152) = *(v214 - 360);
              *(v214 - 136) = v217;
              *(v214 - 120) = *(v214 - 328);
              *(v214 - 184) = v216;
              v218 = *(v214 - 112);
              if (v218)
              {
                *(v214 - 104) = v218;
                operator delete(v218);
                *(v214 - 104) = 0;
                *(v214 - 96) = 0;
              }

              v219 = (v214 - 320);
              *(v214 - 112) = *(v214 - 320);
              *(v214 - 96) = *(v214 - 304);
              v219[2] = 0;
              *(v214 - 312) = 0;
              *v219 = 0;
              *(v214 - 88) = *(v214 - 296);
              *(v214 - 76) = *(v214 - 284);
              v220 = *(v214 - 56);
              if (v220)
              {
                *(v214 - 48) = v220;
                operator delete(v220);
                *(v214 - 48) = 0;
                *(v214 - 40) = 0;
              }

              v221 = (v214 - 264);
              *(v214 - 56) = *(v214 - 264);
              *(v214 - 40) = *(v214 - 248);
              v221[1] = 0;
              v221[2] = 0;
              *v221 = 0;
              v222 = *(v214 - 32);
              if (v222)
              {
                *(v214 - 24) = v222;
                operator delete(v222);
                *(v214 - 24) = 0;
                *(v214 - 16) = 0;
              }

              *(v214 - 32) = *(v214 - 240);
              v223 = *(v214 - 224);
              v224 = *(v214 - 216);
              *(v214 - 232) = 0;
              *(v214 - 224) = 0;
              *(v214 - 240) = 0;
              *(v214 - 16) = v223;
              *(v214 - 8) = v224;
              *v214 = *(v214 - 208);
              *(v214 + 16) = *(v214 - 192);
              v225 = *(v214 - 576);
              if (v213 >= v225 && (v225 < v213 || v215 >= *(v214 - 400)))
              {
                break;
              }

              v214 -= 208;
            }

            *(v214 - 376) = v321;
            *(v214 - 392) = v316;
            *(v214 - 368) = v213;
            v226 = v214 - 360;
            *(v226 + 32) = v299;
            *v226 = v287;
            *(v226 + 16) = v293;
            v227 = *v219;
            if (*v219)
            {
              *(v214 - 312) = v227;
              operator delete(v227);
            }

            *v219 = v245;
            *(v214 - 304) = v240;
            *(v214 - 284) = *&v327[12];
            *(v214 - 296) = *v327;
            v228 = *v221;
            a2 = v277;
            if (*v221)
            {
              *(v214 - 256) = v228;
              operator delete(v228);
            }

            *v221 = v257;
            *(v214 - 248) = v250;
            v229 = *(v214 - 240);
            if (v229)
            {
              *(v214 - 232) = v229;
              operator delete(v229);
            }

            *(v214 - 240) = v276;
            *(v214 - 224) = v270;
            *(v214 - 216) = v264;
            *(v214 - 208) = v310;
            *(v214 - 192) = v215;
          }

          v88 = a1 + 208;
          v209 += 208;
        }

        while ((a1 + 208) != a2);
      }

      return;
    }

    if (!a3)
    {
      if (a1 == a2)
      {
        return;
      }

      v120 = (v9 - 2) >> 1;
      v273 = v120;
      while (2)
      {
        v121 = v120;
        v122 = 208 * v120;
        if (v273 >= 0x4EC4EC4EC4EC4EC5 * (v122 >> 4))
        {
          v123 = (0x9D89D89D89D89D8ALL * (v122 >> 4)) | 1;
          v124 = (a1 + 208 * v123);
          if ((0x9D89D89D89D89D8ALL * (v122 >> 4) + 2) < v9)
          {
            v125 = *(v124 + 3);
            v126 = *(v124 + 29);
            if (v125 < v126 || v126 >= v125 && *(v124 + 25) < *(v124 + 51))
            {
              v124 += 13;
              v123 = 0x9D89D89D89D89D8ALL * (v122 >> 4) + 2;
            }
          }

          v127 = (a1 + v122);
          v128 = *(v124 + 3);
          v129 = *(v127 + 3);
          if (v128 >= v129)
          {
            if (v129 >= v128)
            {
              v130 = *(v127 + 25);
              if (*(v124 + 25) >= v130)
              {
                goto LABEL_186;
              }
            }

            else
            {
              v130 = *(v127 + 25);
LABEL_186:
              v131 = 0;
              v320 = *(v127 + 2);
              v314 = *v127;
              v297 = *(v127 + 8);
              v285 = v127[2];
              v291 = v127[3];
              v238 = *(v127 + 72);
              v235 = *(v127 + 11);
              *(v127 + 9) = 0;
              *(v127 + 10) = 0;
              *(v127 + 11) = 0;
              *&v325[12] = *(v127 + 108);
              *v325 = v127[6];
              v248 = v127[8];
              v243 = *(v127 + 18);
              *(v127 + 16) = 0;
              *(v127 + 17) = 0;
              v267 = *(v127 + 152);
              *(v127 + 18) = 0;
              *(v127 + 19) = 0;
              v261 = *(v127 + 21);
              v254 = *(v127 + 22);
              *(v127 + 20) = 0;
              *(v127 + 21) = 0;
              v308 = *(v127 + 184);
              while (1)
              {
                *v127 = *v124;
                v132 = v124[1];
                v133 = v124[2];
                v134 = v124[3];
                *(v127 + 8) = *(v124 + 8);
                v127[2] = v133;
                v127[3] = v134;
                v127[1] = v132;
                if (v131)
                {
                  *(v127 + 10) = v131;
                  operator delete(v131);
                  *(v127 + 9) = 0;
                  *(v127 + 10) = 0;
                  *(v127 + 11) = 0;
                }

                *(v127 + 72) = *(v124 + 72);
                *(v127 + 11) = *(v124 + 11);
                *(v124 + 9) = 0;
                *(v124 + 10) = 0;
                *(v124 + 11) = 0;
                v135 = v124[6];
                v136 = *(v127 + 16);
                *(v127 + 108) = *(v124 + 108);
                v127[6] = v135;
                if (v136)
                {
                  *(v127 + 17) = v136;
                  operator delete(v136);
                  *(v127 + 16) = 0;
                  *(v127 + 17) = 0;
                  *(v127 + 18) = 0;
                }

                v127[8] = v124[8];
                *(v127 + 18) = *(v124 + 18);
                *(v124 + 16) = 0;
                *(v124 + 17) = 0;
                *(v124 + 18) = 0;
                v137 = *(v127 + 19);
                if (v137)
                {
                  *(v127 + 20) = v137;
                  operator delete(v137);
                  *(v127 + 19) = 0;
                  *(v127 + 20) = 0;
                  *(v127 + 21) = 0;
                }

                *(v127 + 152) = *(v124 + 152);
                *(v127 + 21) = *(v124 + 21);
                *(v124 + 19) = 0;
                *(v124 + 20) = 0;
                *(v124 + 21) = 0;
                *(v127 + 22) = *(v124 + 22);
                v138 = *(v124 + 184);
                *(v127 + 25) = *(v124 + 25);
                *(v127 + 184) = v138;
                if (v273 < v123)
                {
                  break;
                }

                v139 = 2 * v123;
                v123 = (2 * v123) | 1;
                v140 = (a1 + 208 * v123);
                v141 = v139 + 2;
                if (v141 < v9)
                {
                  v142 = *(v140 + 3);
                  v143 = *(v140 + 29);
                  if (v142 < v143 || v143 >= v142 && *(v140 + 25) < *(v140 + 51))
                  {
                    v140 += 13;
                    v123 = v141;
                  }
                }

                v144 = *(v140 + 3);
                if (v144 < v129 || v129 >= v144 && *(v140 + 25) < v130)
                {
                  break;
                }

                v131 = *(v124 + 9);
                v127 = v124;
                v124 = v140;
              }

              *v124 = v314;
              *(v124 + 2) = v320;
              *(v124 + 3) = v129;
              v124[2] = v285;
              v124[3] = v291;
              *(v124 + 8) = v297;
              v145 = *(v124 + 9);
              if (v145)
              {
                *(v124 + 10) = v145;
                operator delete(v145);
              }

              *(v124 + 72) = v238;
              *(v124 + 11) = v235;
              v124[6] = *v325;
              *(v124 + 108) = *&v325[12];
              v146 = *(v124 + 16);
              if (v146)
              {
                *(v124 + 17) = v146;
                operator delete(v146);
              }

              v124[8] = v248;
              *(v124 + 18) = v243;
              v147 = *(v124 + 19);
              if (v147)
              {
                *(v124 + 20) = v147;
                operator delete(v147);
              }

              *(v124 + 152) = v267;
              *(v124 + 21) = v261;
              *(v124 + 22) = v254;
              *(v124 + 184) = v308;
              *(v124 + 25) = v130;
            }
          }
        }

        v120 = v121 - 1;
        if (v121)
        {
          continue;
        }

        break;
      }

      v148 = 0x4EC4EC4EC4EC4EC5 * (v8 >> 4);
      v149 = v277;
      while (2)
      {
        v151 = 0;
        v286 = *a1;
        v239 = *(a1 + 72);
        v301 = *(a1 + 64);
        v298 = *(a1 + 32);
        v300 = *(a1 + 48);
        v292 = *(a1 + 16);
        v152 = *(a1 + 88);
        v236 = *(a1 + 80);
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *(a1 + 72) = 0;
        *&v309[12] = *(a1 + 108);
        *v309 = *(a1 + 96);
        v255 = *(a1 + 128);
        v249 = *(a1 + 136);
        *(a1 + 128) = 0;
        *(a1 + 136) = 0;
        v244 = *(a1 + 144);
        v278 = *(a1 + 152);
        v274 = *(a1 + 160);
        v268 = *(a1 + 168);
        *(a1 + 144) = 0;
        *(a1 + 152) = 0;
        *(a1 + 160) = 0;
        *(a1 + 168) = 0;
        v262 = *(a1 + 176);
        v281 = *(a1 + 200);
        v153 = a1;
        v280 = *(a1 + 184);
        do
        {
          v156 = v153 + 208 * v151;
          v157 = v156 + 208;
          v158 = 2 * v151;
          v151 = (2 * v151) | 1;
          v159 = v158 + 2;
          if (v159 < v148)
          {
            v160 = *(v156 + 232);
            v161 = *(v156 + 440);
            if (v160 < v161 || v161 >= v160 && *(v156 + 408) < *(v156 + 616))
            {
              v157 = v156 + 416;
              v151 = v159;
            }
          }

          *v153 = *v157;
          v162 = *(v157 + 16);
          v163 = *(v157 + 32);
          v164 = *(v157 + 48);
          *(v153 + 64) = *(v157 + 64);
          *(v153 + 32) = v163;
          *(v153 + 48) = v164;
          *(v153 + 16) = v162;
          v165 = *(v153 + 72);
          if (v165)
          {
            *(v153 + 80) = v165;
            operator delete(v165);
            *(v153 + 72) = 0;
            *(v153 + 80) = 0;
            *(v153 + 88) = 0;
          }

          v166 = (v157 + 72);
          *(v153 + 72) = *(v157 + 72);
          *(v153 + 88) = *(v157 + 88);
          *(v157 + 72) = 0;
          *(v157 + 80) = 0;
          *(v157 + 88) = 0;
          v167 = *(v157 + 96);
          v168 = *(v153 + 128);
          *(v153 + 108) = *(v157 + 108);
          *(v153 + 96) = v167;
          if (v168)
          {
            *(v153 + 136) = v168;
            operator delete(v168);
            *(v153 + 128) = 0;
            *(v153 + 136) = 0;
            *(v153 + 144) = 0;
          }

          *(v153 + 128) = *(v157 + 128);
          *(v153 + 144) = *(v157 + 144);
          *(v157 + 128) = 0;
          *(v157 + 136) = 0;
          *(v157 + 144) = 0;
          v169 = *(v153 + 152);
          if (v169)
          {
            *(v153 + 160) = v169;
            operator delete(v169);
            *(v153 + 152) = 0;
            *(v153 + 160) = 0;
            *(v153 + 168) = 0;
          }

          v154 = (v157 + 152);
          *(v153 + 152) = *(v157 + 152);
          *(v153 + 168) = *(v157 + 168);
          *(v157 + 152) = 0;
          *(v157 + 160) = 0;
          *(v157 + 168) = 0;
          *(v153 + 176) = *(v157 + 176);
          v155 = *(v157 + 184);
          *(v153 + 200) = *(v157 + 200);
          *(v153 + 184) = v155;
          v153 = v157;
        }

        while (v151 <= ((v148 - 2) >> 1));
        v170 = v149 - 13;
        if (v157 == v149 - 13)
        {
          *v157 = v286;
          *(v157 + 64) = v301;
          *(v157 + 32) = v298;
          *(v157 + 48) = v300;
          *(v157 + 16) = v292;
          v206 = *(v157 + 72);
          if (v206)
          {
            *(v157 + 80) = v206;
            operator delete(v206);
          }

          *(v157 + 72) = v239;
          *(v157 + 80) = v236;
          *(v157 + 88) = v152;
          *(v157 + 108) = *&v309[12];
          *(v157 + 96) = *v309;
          v207 = *(v157 + 128);
          if (v207)
          {
            *(v157 + 136) = v207;
            operator delete(v207);
          }

          *(v157 + 128) = v255;
          *(v157 + 136) = v249;
          *(v157 + 144) = v244;
          v208 = *(v157 + 152);
          if (v208)
          {
            *(v157 + 160) = v208;
            operator delete(v208);
          }

          *(v157 + 152) = v278;
          *(v157 + 160) = v274;
          *(v157 + 168) = v268;
          *(v157 + 176) = v262;
          *(v157 + 200) = v281;
          *(v157 + 184) = v280;
        }

        else
        {
          *v157 = *(v149 - 13);
          v171 = *(v149 - 12);
          v172 = *(v149 - 11);
          v173 = *(v149 - 10);
          *(v157 + 64) = *(v149 - 18);
          *(v157 + 32) = v172;
          *(v157 + 48) = v173;
          *(v157 + 16) = v171;
          v174 = *(v157 + 72);
          if (v174)
          {
            *(v157 + 80) = v174;
            operator delete(v174);
            *v166 = 0;
            *(v157 + 80) = 0;
            *(v157 + 88) = 0;
          }

          *(v157 + 72) = *(v149 - 136);
          *(v157 + 88) = *(v149 - 15);
          *(v149 - 16) = 0;
          *(v149 - 15) = 0;
          *(v149 - 17) = 0;
          v175 = *(v149 - 7);
          *(v157 + 108) = *(v149 - 100);
          *(v157 + 96) = v175;
          v176 = *(v157 + 128);
          if (v176)
          {
            *(v157 + 136) = v176;
            operator delete(v176);
            *(v157 + 128) = 0;
            *(v157 + 136) = 0;
            *(v157 + 144) = 0;
          }

          v177 = v149 - 5;
          *(v157 + 128) = *(v149 - 5);
          *(v157 + 144) = *(v149 - 8);
          *v177 = 0;
          *(v177 + 1) = 0;
          *(v177 + 2) = 0;
          v178 = *(v157 + 152);
          if (v178)
          {
            *(v157 + 160) = v178;
            operator delete(v178);
            *v154 = 0;
            *(v157 + 160) = 0;
            *(v157 + 168) = 0;
          }

          *(v157 + 152) = *(v149 - 56);
          *(v157 + 168) = *(v149 - 5);
          *(v149 - 7) = 0;
          *(v149 - 6) = 0;
          *(v149 - 5) = 0;
          *(v157 + 176) = *(v149 - 4);
          v179 = *(v149 - 24);
          *(v157 + 200) = *(v149 - 1);
          *(v157 + 184) = v179;
          *(v149 - 18) = v301;
          *(v149 - 11) = v298;
          *(v149 - 10) = v300;
          *(v149 - 12) = v292;
          *v170 = v286;
          v180 = *(v149 - 17);
          if (v180)
          {
            *(v149 - 16) = v180;
            operator delete(v180);
          }

          v181 = v149 - 7;
          *(v149 - 17) = v239;
          *(v149 - 16) = v236;
          *(v149 - 15) = v152;
          *(v181 + 12) = *&v309[12];
          *v181 = *v309;
          v182 = *(v149 - 10);
          if (v182)
          {
            *(v149 - 9) = v182;
            operator delete(v182);
          }

          *(v149 - 10) = v255;
          *(v149 - 9) = v249;
          *(v149 - 8) = v244;
          v183 = *(v149 - 7);
          if (v183)
          {
            *(v149 - 6) = v183;
            operator delete(v183);
          }

          v184 = v149 - 24;
          *(v149 - 7) = v278;
          *(v149 - 6) = v274;
          *(v149 - 5) = v268;
          *(v149 - 4) = v262;
          *(v184 + 2) = v281;
          *v184 = v280;
          v185 = v157 + 208 - a1;
          if (v185 >= 209)
          {
            v186 = (0x4EC4EC4EC4EC4EC5 * (v185 >> 4) - 2) >> 1;
            v187 = a1 + 208 * v186;
            v188 = *(v187 + 24);
            v189 = *(v157 + 24);
            if (v188 >= v189)
            {
              if (v189 >= v188)
              {
                v190 = *(v157 + 200);
                if (*(v187 + 200) < v190)
                {
                  goto LABEL_241;
                }
              }
            }

            else
            {
              v190 = *(v157 + 200);
LABEL_241:
              v304 = *(v157 + 16);
              v303 = *v157;
              v329 = *(v157 + 64);
              v326 = *(v157 + 32);
              v328 = *(v157 + 48);
              v256 = *(v157 + 72);
              v191 = *(v157 + 88);
              *(v157 + 80) = 0;
              *(v157 + 88) = 0;
              *v166 = 0;
              *&v315[12] = *(v157 + 108);
              *v315 = *(v157 + 96);
              v269 = *(v157 + 128);
              v263 = *(v157 + 144);
              *(v157 + 128) = 0;
              *(v157 + 136) = 0;
              *(v157 + 144) = 0;
              v279 = *(v157 + 152);
              *v154 = 0;
              *(v157 + 160) = 0;
              v192 = *(v157 + 176);
              v275 = *(v157 + 168);
              *(v157 + 168) = 0;
              v302 = *(v157 + 184);
              while (1)
              {
                v193 = v187;
                *v157 = *v187;
                v194 = *(v187 + 16);
                v195 = *(v187 + 32);
                v196 = *(v187 + 48);
                *(v157 + 64) = *(v187 + 64);
                *(v157 + 32) = v195;
                *(v157 + 48) = v196;
                *(v157 + 16) = v194;
                v197 = *(v157 + 72);
                if (v197)
                {
                  *(v157 + 80) = v197;
                  operator delete(v197);
                  *(v157 + 72) = 0;
                  *(v157 + 80) = 0;
                  *(v157 + 88) = 0;
                }

                *(v157 + 72) = *(v193 + 72);
                *(v157 + 88) = *(v193 + 88);
                *(v193 + 72) = 0;
                *(v193 + 80) = 0;
                *(v193 + 88) = 0;
                v198 = *(v193 + 96);
                v199 = *(v157 + 128);
                *(v157 + 108) = *(v193 + 108);
                *(v157 + 96) = v198;
                if (v199)
                {
                  *(v157 + 136) = v199;
                  operator delete(v199);
                  *(v157 + 128) = 0;
                  *(v157 + 136) = 0;
                  *(v157 + 144) = 0;
                }

                *(v157 + 128) = *(v193 + 128);
                *(v157 + 144) = *(v193 + 144);
                *(v193 + 128) = 0;
                *(v193 + 136) = 0;
                *(v193 + 144) = 0;
                v200 = *(v157 + 152);
                if (v200)
                {
                  *(v157 + 160) = v200;
                  operator delete(v200);
                  *(v157 + 152) = 0;
                  *(v157 + 160) = 0;
                  *(v157 + 168) = 0;
                }

                *(v157 + 152) = *(v193 + 152);
                *(v157 + 168) = *(v193 + 168);
                *(v193 + 152) = 0;
                *(v193 + 160) = 0;
                *(v193 + 168) = 0;
                *(v157 + 176) = *(v193 + 176);
                v201 = *(v193 + 184);
                *(v157 + 200) = *(v193 + 200);
                *(v157 + 184) = v201;
                if (!v186)
                {
                  break;
                }

                v186 = (v186 - 1) >> 1;
                v187 = a1 + 208 * v186;
                v202 = *(v187 + 24);
                v157 = v193;
                if (v202 >= v189)
                {
                  if (v189 < v202)
                  {
                    break;
                  }

                  v157 = v193;
                  if (*(v187 + 200) >= v190)
                  {
                    break;
                  }
                }
              }

              *v193 = v303;
              *(v193 + 16) = v304;
              *(v193 + 24) = v189;
              *(v193 + 32) = v326;
              *(v193 + 48) = v328;
              *(v193 + 64) = v329;
              v203 = *(v193 + 72);
              if (v203)
              {
                *(v193 + 80) = v203;
                operator delete(v203);
              }

              *(v193 + 72) = v256;
              *(v193 + 88) = v191;
              *(v193 + 96) = *v315;
              *(v193 + 108) = *&v315[12];
              v204 = *(v193 + 128);
              if (v204)
              {
                *(v193 + 136) = v204;
                operator delete(v204);
              }

              *(v193 + 128) = v269;
              *(v193 + 144) = v263;
              v205 = *(v193 + 152);
              if (v205)
              {
                *(v193 + 160) = v205;
                operator delete(v205);
              }

              *(v193 + 152) = v279;
              *(v193 + 168) = v275;
              *(v193 + 176) = v192;
              *(v193 + 184) = v302;
              *(v193 + 200) = v190;
            }
          }
        }

        v150 = v148-- <= 2;
        v149 = v170;
        if (v150)
        {
          return;
        }

        continue;
      }
    }

    v10 = v9 >> 1;
    v11 = (a1 + 208 * (v9 >> 1));
    if (v8 < 0x6801)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(v11, a1, v271);
      v265 = a3 - 1;
      if ((a4 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_20:
      v14 = *(a1 + 24);
LABEL_21:
      v23 = 0;
      v318 = *(a1 + 16);
      v312 = *a1;
      v295 = *(a1 + 64);
      v283 = *(a1 + 32);
      v289 = *(a1 + 48);
      v234 = *(a1 + 72);
      v24 = *(a1 + 88);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *v323 = *(a1 + 96);
      *&v323[12] = *(a1 + 108);
      v25 = *(a1 + 128);
      v247 = *(a1 + 144);
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      v252 = v25;
      v259 = *(a1 + 152);
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      v242 = *(a1 + 168);
      v237 = *(a1 + 176);
      *(a1 + 168) = 0;
      v306 = *(a1 + 184);
      v26 = *(a1 + 200);
      while (1)
      {
        v27 = *(a1 + v23 + 232);
        if (v27 >= v14 && (v14 < v27 || *(a1 + v23 + 408) >= v26))
        {
          break;
        }

        v23 += 208;
      }

      v28 = a1 + v23 + 208;
      if (v23)
      {
        v29 = *(v277 - 23);
        v30 = v232;
        v31 = v271;
        if (v29 >= v14)
        {
          do
          {
            if (v14 >= v29 && *(v30 + 48) < v26)
            {
              break;
            }

            v32 = *v30;
            v30 -= 26;
            v29 = v32;
          }

          while (v32 >= v14);
LABEL_32:
          v31 = (v30 + 23);
        }
      }

      else
      {
        v31 = v277;
        if (v28 < v277)
        {
          v33 = *(v277 - 23);
          v31 = v271;
          if (v33 >= v14)
          {
            v30 = v232;
            v31 = v271;
            while (1)
            {
              v54 = (v30 + 23);
              if (v14 < v33)
              {
                if (v28 >= v54)
                {
                  goto LABEL_32;
                }
              }

              else if (v28 >= v54 || *(v30 + 48) < v26)
              {
                break;
              }

              v31 -= 13;
              v53 = *v30;
              v30 -= 26;
              v33 = v53;
              if (v53 < v14)
              {
                goto LABEL_32;
              }
            }
          }
        }
      }

      i = v28;
      if (v28 < v31)
      {
        v34 = v31;
        do
        {
          while (1)
          {
            std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(i, v34);
            do
            {
              do
              {
                i += 208;
                v35 = *(i + 24);
              }

              while (v35 < v14);
            }

            while (v14 >= v35 && *(i + 200) < v26);
            v36 = *(v34 - 23);
            if (v36 >= v14)
            {
              break;
            }

            v34 -= 13;
            if (i >= v34)
            {
              goto LABEL_48;
            }
          }

          v37 = v34 - 392;
          do
          {
            if (v14 >= v36 && *(v37 + 48) < v26)
            {
              break;
            }

            v38 = *v37;
            v37 -= 208;
            v36 = v38;
          }

          while (v38 >= v14);
          v34 = (v37 + 184);
        }

        while (i < (v37 + 184));
      }

LABEL_48:
      v39 = (i - 208);
      if (i - 208 != a1)
      {
        *a1 = *v39;
        v40 = *(i - 192);
        v41 = *(i - 176);
        v42 = *(i - 160);
        *(a1 + 64) = *(i - 144);
        *(a1 + 32) = v41;
        *(a1 + 48) = v42;
        *(a1 + 16) = v40;
        v43 = *(a1 + 72);
        if (v43)
        {
          *(a1 + 80) = v43;
          operator delete(v43);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
        }

        *(a1 + 72) = *(i - 136);
        *(a1 + 88) = *(i - 120);
        *(i - 128) = 0;
        *(i - 120) = 0;
        *(i - 136) = 0;
        v44 = *(i - 112);
        *(a1 + 108) = *(i - 100);
        *(a1 + 96) = v44;
        v45 = *(a1 + 128);
        if (v45)
        {
          *(a1 + 136) = v45;
          operator delete(v45);
          *(a1 + 128) = 0;
          *(a1 + 136) = 0;
          *(a1 + 144) = 0;
        }

        v46 = (i - 80);
        *(a1 + 128) = *(i - 80);
        *(a1 + 144) = *(i - 64);
        *v46 = 0;
        v46[1] = 0;
        v46[2] = 0;
        v47 = *(a1 + 152);
        if (v47)
        {
          *(a1 + 160) = v47;
          operator delete(v47);
          *(a1 + 152) = 0;
          *(a1 + 160) = 0;
          *(a1 + 168) = 0;
        }

        *(a1 + 152) = *(i - 56);
        *(a1 + 168) = *(i - 40);
        *(i - 56) = 0;
        *(i - 48) = 0;
        *(i - 40) = 0;
        *(a1 + 176) = *(i - 32);
        v48 = *(i - 24);
        *(a1 + 200) = *(i - 8);
        *(a1 + 184) = v48;
      }

      *(i - 192) = v318;
      *v39 = v312;
      *(i - 184) = v14;
      *(i - 144) = v295;
      *(i - 176) = v283;
      *(i - 160) = v289;
      v49 = *(i - 136);
      if (v49)
      {
        *(i - 128) = v49;
        operator delete(v49);
      }

      *(i - 136) = v234;
      *(i - 120) = v24;
      *(i - 100) = *&v323[12];
      *(i - 112) = *v323;
      v50 = *(i - 80);
      a3 = v265;
      if (v50)
      {
        *(i - 72) = v50;
        operator delete(v50);
      }

      *(i - 80) = v252;
      *(i - 64) = v247;
      v51 = *(i - 56);
      a2 = v277;
      if (v51)
      {
        *(i - 48) = v51;
        operator delete(v51);
      }

      *(i - 56) = v259;
      *(i - 40) = v242;
      *(i - 32) = v237;
      *(i - 24) = v306;
      *(i - 8) = v26;
      if (v28 < v31)
      {
        goto LABEL_65;
      }

      v52 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *>(a1, (i - 208));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *>(i, v277))
      {
        a2 = (i - 208);
        if (v52)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v52)
      {
LABEL_65:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,false>(a1, i - 208, v265, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, v11, v271);
      v12 = 208 * v10;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1 + 208, v12 + a1 - 208, v231);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1 + 416, a1 + 208 + v12, v230);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(v12 + a1 - 208, v11, a1 + 208 + v12);
      std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, v11);
      v265 = a3 - 1;
      if (a4)
      {
        goto LABEL_20;
      }

LABEL_13:
      v13 = *(a1 - 184);
      v14 = *(a1 + 24);
      if (v13 < v14)
      {
        goto LABEL_21;
      }

      v15 = *(a1 + 200);
      if (v14 >= v13 && *(a1 - 8) < v15)
      {
        goto LABEL_21;
      }

      v317 = *(a1 + 16);
      v311 = *a1;
      v294 = *(a1 + 64);
      v282 = *(a1 + 32);
      v288 = *(a1 + 48);
      v16 = *(a1 + 72);
      v17 = *(a1 + 88);
      *(a1 + 72) = 0;
      *(a1 + 80) = 0;
      *(a1 + 88) = 0;
      *v322 = *(a1 + 96);
      *&v322[12] = *(a1 + 108);
      v246 = v16;
      v251 = *(a1 + 128);
      v18 = *(a1 + 144);
      *(a1 + 128) = 0;
      *(a1 + 136) = 0;
      *(a1 + 144) = 0;
      v258 = *(a1 + 152);
      *(a1 + 152) = 0;
      *(a1 + 160) = 0;
      v19 = *(a1 + 168);
      v20 = *(a1 + 176);
      *(a1 + 168) = 0;
      v305 = *(a1 + 184);
      v21 = *(v277 - 23);
      v241 = v17;
      if (v14 < v21 || v21 >= v14 && v15 < *(v277 - 1))
      {
        v22 = *(a1 + 232);
        if (v14 >= *&v22)
        {
          v56 = (a1 + 440);
          do
          {
            if (*&v22 >= v14 && v15 < *(v56 - 4))
            {
              break;
            }

            v57 = *v56;
            v56 += 26;
            v22 = v57;
          }

          while (v14 >= *&v57);
          i = (v56 - 29);
        }

        else
        {
          i = a1 + 208;
        }
      }

      else
      {
        for (i = a1 + 208; i < v277; i += 208)
        {
          v55 = *(i + 24);
          if (v14 < v55 || v55 >= v14 && v15 < *(i + 200))
          {
            break;
          }
        }
      }

      v58 = v277;
      if (i < v277)
      {
        for (j = v232; v14 < v21 || v21 >= v14 && v15 < *(j + 48); j -= 26)
        {
          v60 = *j;
          v21 = *&v60;
        }

        v58 = (j + 23);
      }

      while (i < v58)
      {
        std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(i, v58);
        v61 = *(i + 232);
        if (v14 >= *&v61)
        {
          v62 = (i + 440);
          do
          {
            if (*&v61 >= v14 && v15 < *(v62 - 4))
            {
              break;
            }

            v63 = *v62;
            v62 += 26;
            v61 = v63;
          }

          while (v14 >= *&v63);
          i = (v62 - 29);
        }

        else
        {
          i += 208;
        }

        do
        {
          do
          {
            v58 -= 13;
            v64 = *(v58 + 3);
          }

          while (v14 < v64);
        }

        while (v64 >= v14 && v15 < *(v58 + 25));
      }

      v65 = (i - 208);
      if (i - 208 != a1)
      {
        *a1 = *v65;
        v66 = *(i - 192);
        v67 = *(i - 176);
        v68 = *(i - 160);
        *(a1 + 64) = *(i - 144);
        *(a1 + 32) = v67;
        *(a1 + 48) = v68;
        *(a1 + 16) = v66;
        v69 = *(a1 + 72);
        if (v69)
        {
          *(a1 + 80) = v69;
          operator delete(v69);
          *(a1 + 72) = 0;
          *(a1 + 80) = 0;
          *(a1 + 88) = 0;
        }

        *(a1 + 72) = *(i - 136);
        *(a1 + 88) = *(i - 120);
        *(i - 128) = 0;
        *(i - 120) = 0;
        *(i - 136) = 0;
        v70 = *(i - 112);
        *(a1 + 108) = *(i - 100);
        *(a1 + 96) = v70;
        v71 = *(a1 + 128);
        if (v71)
        {
          *(a1 + 136) = v71;
          operator delete(v71);
          *(a1 + 128) = 0;
          *(a1 + 136) = 0;
          *(a1 + 144) = 0;
        }

        v72 = (i - 80);
        *(a1 + 128) = *(i - 80);
        *(a1 + 144) = *(i - 64);
        *v72 = 0;
        v72[1] = 0;
        v72[2] = 0;
        v73 = *(a1 + 152);
        if (v73)
        {
          *(a1 + 160) = v73;
          operator delete(v73);
          *(a1 + 152) = 0;
          *(a1 + 160) = 0;
          *(a1 + 168) = 0;
        }

        *(a1 + 152) = *(i - 56);
        *(a1 + 168) = *(i - 40);
        *(i - 56) = 0;
        *(i - 48) = 0;
        *(i - 40) = 0;
        *(a1 + 176) = *(i - 32);
        v74 = *(i - 24);
        *(a1 + 200) = *(i - 8);
        *(a1 + 184) = v74;
      }

      *(i - 192) = v317;
      *v65 = v311;
      *(i - 184) = v14;
      *(i - 144) = v294;
      *(i - 176) = v282;
      *(i - 160) = v288;
      v75 = *(i - 136);
      if (v75)
      {
        *(i - 128) = v75;
        operator delete(v75);
      }

      *(i - 136) = v246;
      *(i - 120) = v241;
      *(i - 100) = *&v322[12];
      *(i - 112) = *v322;
      v76 = *(i - 80);
      a2 = v277;
      a3 = v265;
      if (v76)
      {
        *(i - 72) = v76;
        operator delete(v76);
      }

      *(i - 80) = v251;
      *(i - 64) = v18;
      v77 = *(i - 56);
      if (v77)
      {
        *(i - 48) = v77;
        operator delete(v77);
      }

      a4 = 0;
      *(i - 56) = v258;
      *(i - 40) = v19;
      *(i - 32) = v20;
      *(i - 24) = v305;
      *(i - 8) = v15;
    }
  }

  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416);
  v78 = *(a2 - 23);
  v79 = *(a1 + 440);
  if (v78 < v79 || v79 >= v78 && *(a2 - 1) < *(a1 + 616))
  {
    std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>((a1 + 416), v271);
    v80 = *(a1 + 440);
    v81 = *(a1 + 232);
    if (v80 < v81 || v81 >= v80 && *(a1 + 616) < *(a1 + 408))
    {
      std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>((a1 + 208), (a1 + 416));
      v82 = *(a1 + 232);
      v83 = *(a1 + 24);
      if (v82 < v83 || v83 >= v82 && *(a1 + 408) < *(a1 + 200))
      {
        v84 = (a1 + 208);
        v85 = a1;
        goto LABEL_131;
      }
    }
  }
}

double std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 24);
  v5 = *(a1 + 24);
  if (v4 < v5 || v5 >= v4 && (result = *(a2 + 200), result < *(a1 + 200)))
  {
    v6 = *(a3 + 24);
    if (v6 < v4 || v4 >= v6 && *(a3 + 200) < *(a2 + 200))
    {
      v7 = a3;
    }

    else
    {
      *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2).n128_u64[0];
      v7 = a3;
      v14 = *(a3 + 24);
      v15 = *(a2 + 24);
      if (v14 >= v15)
      {
        if (v15 < v14)
        {
          return result;
        }

        result = *(a3 + 200);
        if (result >= *(a2 + 200))
        {
          return result;
        }
      }

      a1 = a2;
    }

LABEL_5:
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, v7).n128_u64[0];
    return result;
  }

  v9 = *(a3 + 24);
  if (v9 < v4 || v4 >= v9 && (result = *(a3 + 200), result < *(a2 + 200)))
  {
    v10 = a1;
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a2, a3).n128_u64[0];
    a1 = v10;
    v11 = *(a2 + 24);
    v12 = *(v10 + 24);
    if (v11 < v12 || v12 >= v11 && (result = *(a2 + 200), result < *(v10 + 200)))
    {
      v7 = a2;

      goto LABEL_5;
    }
  }

  return result;
}

double std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a2, a3);
  v11 = *(a4 + 24);
  v12 = *(a3 + 24);
  if (v11 < v12 || v12 >= v11 && (result = *(a4 + 200), result < *(a3 + 200)))
  {
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a3, a4).n128_u64[0];
    v13 = *(a3 + 24);
    v14 = *(a2 + 24);
    if (v13 < v14 || v14 >= v13 && (result = *(a3 + 200), result < *(a2 + 200)))
    {
      *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a2, a3).n128_u64[0];
      v15 = *(a2 + 24);
      v16 = *(a1 + 24);
      if (v15 < v16 || v16 >= v15 && (result = *(a2 + 200), result < *(a1 + 200)))
      {
        *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2).n128_u64[0];
      }
    }
  }

  v17 = *(a5 + 24);
  v18 = *(a4 + 24);
  if (v17 < v18 || v18 >= v17 && (result = *(a5 + 200), result < *(a4 + 200)))
  {
    *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a4, a5).n128_u64[0];
    v19 = *(a4 + 24);
    v20 = *(a3 + 24);
    if (v19 < v20 || v20 >= v19 && (result = *(a4 + 200), result < *(a3 + 200)))
    {
      *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a3, a4).n128_u64[0];
      v21 = *(a3 + 24);
      v22 = *(a2 + 24);
      if (v21 < v22 || v22 >= v21 && (result = *(a3 + 200), result < *(a2 + 200)))
      {
        *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a2, a3).n128_u64[0];
        v23 = *(a2 + 24);
        v24 = *(a1 + 24);
        if (v23 < v24 || v24 >= v23 && (result = *(a2 + 200), result < *(a1 + 200)))
        {

          *&result = std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, a2).n128_u64[0];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *>(uint64_t a1, __int128 *a2)
{
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 4);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, (a2 - 13));
        return 1;
      case 4:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416);
        v35 = *(a2 - 23);
        v36 = *(a1 + 440);
        if (v35 >= v36 && (v36 < v35 || *(a2 - 1) >= *(a1 + 616)))
        {
          return 1;
        }

        std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>((a1 + 416), a2 - 13);
        v37 = *(a1 + 440);
        v38 = *(a1 + 232);
        if (v37 >= v38 && (v38 < v37 || *(a1 + 616) >= *(a1 + 408)))
        {
          return 1;
        }

        std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>((a1 + 208), (a1 + 416));
        v39 = *(a1 + 232);
        v40 = *(a1 + 24);
        if (v39 >= v40 && (v40 < v39 || *(a1 + 408) >= *(a1 + 200)))
        {
          return 1;
        }

        v7 = (a1 + 208);
LABEL_44:
        std::swap[abi:ne200100]<operations_research::sat::DiffnEnergyEvent>(a1, v7);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416, a1 + 624, (a2 - 13));
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = *(a2 - 23);
      v6 = *(a1 + 24);
      if (v5 >= v6 && (v6 < v5 || *(a2 - 1) >= *(a1 + 200)))
      {
        return 1;
      }

      v7 = a2 - 13;
      goto LABEL_44;
    }
  }

  v8 = (a1 + 416);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::GenerateNoOverlap2dEnergyCut(absl::lts_20240722::Span<std::vector<operations_research::sat::LiteralValueValue> const>,absl::lts_20240722::Span<int>,std::string_view,operations_research::sat::Model *,operations_research::sat::LinearConstraintManager *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingConstraintHelper *,operations_research::sat::SchedulingDemandHelper *)::$_1 &,operations_research::sat::DiffnEnergyEvent *,0>(a1, a1 + 208, a1 + 416);
  v9 = (a1 + 624);
  if ((a1 + 624) != a2)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0uLL;
    do
    {
      v13 = *(v9 + 3);
      v14 = *(v8 + 3);
      if (v13 >= v14)
      {
        if (v14 < v13)
        {
          goto LABEL_14;
        }

        v15 = *(v9 + 25);
        if (v15 >= *(v8 + 25))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v15 = *(v9 + 25);
      }

      v16 = 0;
      v53 = *v9;
      v54 = *(v9 + 2);
      v50 = v9[2];
      v51 = v9[3];
      v43 = *(v9 + 9);
      v52 = *(v9 + 8);
      v17 = v9[6];
      v42 = v9[5];
      *(v9 + 9) = 0;
      *(v9 + 10) = 0;
      *(v9 + 11) = 0;
      *&v55[12] = *(v9 + 108);
      *v55 = v17;
      v18 = *(v9 + 16);
      v44 = *(v9 + 136);
      *(v9 + 16) = 0;
      *(v9 + 17) = 0;
      v48 = *(v9 + 19);
      v47 = v9[10];
      *(v9 + 18) = 0;
      *(v9 + 19) = 0;
      *(v9 + 20) = 0;
      *(v9 + 21) = 0;
      v45 = v18;
      v46 = *(v9 + 22);
      v19 = v10;
      v49 = *(v9 + 184);
      while (1)
      {
        v20 = a1 + v19;
        v21 = *(a1 + v19 + 464);
        *(v20 + 656) = *(a1 + v19 + 448);
        *(v20 + 672) = v21;
        *(v20 + 688) = *(a1 + v19 + 480);
        v22 = *(a1 + v19 + 432);
        *(v20 + 624) = *(a1 + v19 + 416);
        *(v20 + 640) = v22;
        if (v16)
        {
          *(v20 + 704) = v16;
          operator delete(v16);
          v12 = 0uLL;
          *(v20 + 704) = 0u;
        }

        v23 = (v20 + 488);
        *(v20 + 696) = *(v20 + 488);
        *(v20 + 712) = *(v20 + 504);
        *(v20 + 496) = 0;
        *(v20 + 504) = 0;
        *(v20 + 488) = 0;
        *(v20 + 720) = *(v20 + 512);
        *(v20 + 732) = *(v20 + 524);
        v24 = *(v20 + 752);
        if (v24)
        {
          v25 = (a1 + v19 + 760);
          *v25 = v24;
          operator delete(v24);
          v12 = 0uLL;
          *v25 = 0u;
        }

        v26 = (v20 + 544);
        *(v20 + 752) = *(v20 + 544);
        v27 = a1 + v19;
        *(a1 + v19 + 768) = *(a1 + v19 + 560);
        *v26 = 0;
        v26[1] = 0;
        v26[2] = 0;
        v28 = *(a1 + v19 + 776);
        if (v28)
        {
          *(v27 + 784) = v28;
          operator delete(v28);
          v12 = 0uLL;
          *(v27 + 784) = 0u;
        }

        *(v27 + 776) = *(v27 + 568);
        *(v27 + 792) = *(v27 + 584);
        *(v27 + 584) = 0;
        *(v27 + 568) = v12;
        *(v27 + 800) = *(v27 + 592);
        *(v27 + 824) = *(v27 + 616);
        *(v27 + 808) = *(v27 + 600);
        if (v19 == -416)
        {
          break;
        }

        v29 = *(a1 + v19 + 232);
        if (v13 >= v29 && (v29 < v13 || v15 >= *(a1 + v19 + 408)))
        {
          v30 = a1 + v19 + 416;
          goto LABEL_34;
        }

        v16 = *v23;
        v19 -= 208;
      }

      v30 = a1;
LABEL_34:
      v31 = a1 + v19;
      *v30 = v53;
      *(v30 + 16) = v54;
      *(v30 + 24) = v13;
      *(v30 + 32) = v50;
      *(v30 + 48) = v51;
      *(v30 + 64) = v52;
      v32 = *(a1 + v19 + 488);
      if (v32)
      {
        *(v30 + 80) = v32;
        operator delete(v32);
        v12 = 0uLL;
        *(v31 + 496) = 0;
        *(v31 + 504) = 0;
      }

      *(v31 + 488) = v43;
      *(v30 + 80) = v42;
      *(v31 + 512) = *v55;
      *(v31 + 524) = *&v55[12];
      v33 = *(v31 + 544);
      if (v33)
      {
        *(v30 + 136) = v33;
        operator delete(v33);
        v12 = 0uLL;
        *(v31 + 552) = 0;
        *(v31 + 560) = 0;
      }

      *(v31 + 544) = v45;
      *(v30 + 136) = v44;
      v34 = *(v31 + 568);
      if (v34)
      {
        *(v30 + 160) = v34;
        operator delete(v34);
        v12 = 0uLL;
        *(v31 + 576) = 0;
        *(v31 + 584) = 0;
      }

      *(v31 + 568) = v48;
      *(v30 + 160) = v47;
      *(v30 + 176) = v46;
      *(v31 + 600) = v49;
      *(a1 + v19 + 616) = v15;
      if (++v11 == 8)
      {
        return v9 + 13 == a2;
      }

LABEL_14:
      v8 = v9;
      v10 += 208;
      v9 += 13;
    }

    while (v9 != a2);
  }

  return 1;
}