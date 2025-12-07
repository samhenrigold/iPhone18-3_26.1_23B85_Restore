__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_i64[1];
  v7 = a3->n128_i64[1];
  if (v6 >= a1->n128_u64[1])
  {
    if (v7 < v6)
    {
      v10 = a2[1].n128_u64[0];
      result = *a2;
      v11 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v11;
      *a3 = result;
      a3[1].n128_u64[0] = v10;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        v12 = a1[1].n128_u64[0];
        result = *a1;
        v13 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v13;
        *a2 = result;
        a2[1].n128_u64[0] = v12;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = a1[1].n128_u64[0];
      result = *a1;
      v9 = a3[1].n128_u64[0];
      *a1 = *a3;
      a1[1].n128_u64[0] = v9;
LABEL_9:
      *a3 = result;
      a3[1].n128_u64[0] = v8;
      goto LABEL_10;
    }

    v14 = a1[1].n128_u64[0];
    result = *a1;
    v15 = a2[1].n128_u64[0];
    *a1 = *a2;
    a1[1].n128_u64[0] = v15;
    *a2 = result;
    a2[1].n128_u64[0] = v14;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      v8 = a2[1].n128_u64[0];
      result = *a2;
      v16 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u64[1] < a3->n128_u64[1])
  {
    v17 = a3[1].n128_u64[0];
    result = *a3;
    v18 = a4[1].n128_u64[0];
    *a3 = *a4;
    a3[1].n128_u64[0] = v18;
    *a4 = result;
    a4[1].n128_u64[0] = v17;
    if (a3->n128_u64[1] < a2->n128_u64[1])
    {
      v19 = a2[1].n128_u64[0];
      result = *a2;
      v20 = a3[1].n128_u64[0];
      *a2 = *a3;
      a2[1].n128_u64[0] = v20;
      *a3 = result;
      a3[1].n128_u64[0] = v19;
      if (a2->n128_u64[1] < a1->n128_u64[1])
      {
        v21 = a1[1].n128_u64[0];
        result = *a1;
        v22 = a2[1].n128_u64[0];
        *a1 = *a2;
        a1[1].n128_u64[0] = v22;
        *a2 = result;
        a2[1].n128_u64[0] = v21;
      }
    }
  }

  if (a5->n128_u64[1] < a4->n128_u64[1])
  {
    v23 = a4[1].n128_u64[0];
    result = *a4;
    v24 = a5[1].n128_u64[0];
    *a4 = *a5;
    a4[1].n128_u64[0] = v24;
    *a5 = result;
    a5[1].n128_u64[0] = v23;
    if (a4->n128_u64[1] < a3->n128_u64[1])
    {
      v25 = a3[1].n128_u64[0];
      result = *a3;
      v26 = a4[1].n128_u64[0];
      *a3 = *a4;
      a3[1].n128_u64[0] = v26;
      *a4 = result;
      a4[1].n128_u64[0] = v25;
      if (a3->n128_u64[1] < a2->n128_u64[1])
      {
        v27 = a2[1].n128_u64[0];
        result = *a2;
        v28 = a3[1].n128_u64[0];
        *a2 = *a3;
        a2[1].n128_u64[0] = v28;
        *a3 = result;
        a3[1].n128_u64[0] = v27;
        if (a2->n128_u64[1] < a1->n128_u64[1])
        {
          v29 = a1[1].n128_u64[0];
          result = *a1;
          v30 = a2[1].n128_u64[0];
          *a1 = *a2;
          a1[1].n128_u64[0] = v30;
          *a2 = result;
          a2[1].n128_u64[0] = v29;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*>(uint64_t a1, void *a2, __n128 a3)
{
  v3 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v8 = (a2 - 3);
      v9 = *(a1 + 32);
      v10 = *(a2 - 2);
      if (v9 < *(a1 + 8))
      {
        if (v10 >= v9)
        {
          v38 = *(a1 + 16);
          v39 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 24) = v39;
          v40 = *(a1 + 32);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 40) = v38;
          if (*(a2 - 2) >= v40)
          {
            return 1;
          }

          v11 = *(a1 + 40);
          v12 = *(a1 + 24);
          v41 = *(a2 - 1);
          *(a1 + 24) = *v8;
          *(a1 + 40) = v41;
        }

        else
        {
          v11 = *(a1 + 16);
          v12 = *a1;
          v13 = *(a2 - 1);
          *a1 = *v8;
          *(a1 + 16) = v13;
        }

        *v8 = v12;
        *(a2 - 1) = v11;
        return 1;
      }

      if (v10 >= v9)
      {
        return 1;
      }

      v25 = *(a1 + 40);
      v26 = *(a1 + 24);
      v27 = *(a2 - 1);
      *(a1 + 24) = *v8;
      *(a1 + 40) = v27;
      *v8 = v26;
      *(a2 - 1) = v25;
      if (*(a1 + 32) >= *(a1 + 8))
      {
        return 1;
      }

LABEL_52:
      v64 = *(a1 + 16);
      v65 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 24) = v65;
      *(a1 + 40) = v64;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,0>(a1, (a1 + 24), (a1 + 48), (a1 + 72), (a2 - 3), a3);
        return 1;
      }

LABEL_14:
      v14 = (a1 + 48);
      v15 = *(a1 + 32);
      v16 = *(a1 + 8);
      v17 = *(a1 + 56);
      if (v15 >= v16)
      {
        if (v17 < v15)
        {
          v28 = *(a1 + 24);
          *(a1 + 24) = *v14;
          v30 = *(a1 + 32);
          v29 = *(a1 + 40);
          *(a1 + 40) = *(a1 + 64);
          *v14 = v28;
          *(a1 + 64) = v29;
          if (v30 < v16)
          {
            v31 = *(a1 + 16);
            v32 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v32;
            *(a1 + 40) = v31;
          }
        }
      }

      else
      {
        if (v17 >= v15)
        {
          v42 = *(a1 + 16);
          v43 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 24) = v43;
          v44 = *(a1 + 32);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 40) = v42;
          if (v17 >= v44)
          {
            goto LABEL_35;
          }

          v18 = *(a1 + 40);
          v19 = *(a1 + 24);
          *(a1 + 24) = *v14;
          *(a1 + 40) = *(a1 + 64);
        }

        else
        {
          v18 = *(a1 + 16);
          v19 = *a1;
          *a1 = *v14;
          *(a1 + 16) = *(a1 + 64);
        }

        *v14 = v19;
        *(a1 + 64) = v18;
      }

LABEL_35:
      v45 = (a1 + 72);
      if ((a1 + 72) == a2)
      {
        return 1;
      }

      v46 = 0;
      v47 = 0;
      while (1)
      {
        v48 = v45[1];
        if (v48 < v14[1])
        {
          break;
        }

LABEL_38:
        v14 = v45;
        v46 += 24;
        v45 += 3;
        if (v45 == a2)
        {
          return 1;
        }
      }

      v49 = *v45;
      v50 = v45[2];
      v51 = v46;
      do
      {
        v52 = a1 + v51;
        *(v52 + 72) = *(a1 + v51 + 48);
        *(v52 + 88) = *(a1 + v51 + 64);
        if (v51 == -48)
        {
          *a1 = v49;
          *(a1 + 8) = v48;
          *(a1 + 16) = v50;
          if (++v47 != 8)
          {
            goto LABEL_38;
          }

          return v45 + 3 == a2;
        }

        v51 -= 24;
      }

      while (v48 < *(v52 + 32));
      v53 = (a1 + v51);
      v53[9] = v49;
      v53[10] = v48;
      v53[11] = v50;
      if (++v47 != 8)
      {
        goto LABEL_38;
      }

      return v45 + 3 == a2;
    }

    v20 = *(a1 + 32);
    v21 = *(a1 + 8);
    v22 = *(a1 + 56);
    if (v20 >= v21)
    {
      if (v22 < v20)
      {
        v33 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        v35 = *(a1 + 32);
        v34 = *(a1 + 40);
        *(a1 + 40) = *(a1 + 64);
        *(a1 + 48) = v33;
        *(a1 + 64) = v34;
        if (v35 < v21)
        {
          v36 = *(a1 + 16);
          v37 = *a1;
          *a1 = *(a1 + 24);
          *(a1 + 16) = *(a1 + 40);
          *(a1 + 24) = v37;
          *(a1 + 40) = v36;
        }
      }
    }

    else
    {
      if (v22 < v20)
      {
        v23 = *(a1 + 16);
        v24 = *a1;
        *a1 = *(a1 + 48);
        *(a1 + 16) = *(a1 + 64);
LABEL_48:
        *(a1 + 48) = v24;
        *(a1 + 64) = v23;
        goto LABEL_49;
      }

      v54 = *(a1 + 16);
      v55 = *a1;
      *a1 = *(a1 + 24);
      *(a1 + 24) = v55;
      v56 = *(a1 + 32);
      *(a1 + 16) = *(a1 + 40);
      *(a1 + 40) = v54;
      if (v22 < v56)
      {
        v23 = *(a1 + 40);
        v24 = *(a1 + 24);
        *(a1 + 24) = *(a1 + 48);
        *(a1 + 40) = *(a1 + 64);
        goto LABEL_48;
      }
    }

LABEL_49:
    if (*(a2 - 2) >= *(a1 + 56))
    {
      return 1;
    }

    v57 = a2 - 3;
    v58 = *(a1 + 64);
    v59 = *(a1 + 48);
    v60 = *(a2 - 1);
    *(a1 + 48) = *(a2 - 3);
    *(a1 + 64) = v60;
    *v57 = v59;
    v57[2] = v58;
    if (*(a1 + 56) >= *(a1 + 32))
    {
      return 1;
    }

    v61 = *(a1 + 24);
    *(a1 + 24) = *(a1 + 48);
    v63 = *(a1 + 32);
    v62 = *(a1 + 40);
    *(a1 + 40) = *(a1 + 64);
    *(a1 + 48) = v61;
    *(a1 + 64) = v62;
    if (v63 >= *(a1 + 8))
    {
      return 1;
    }

    goto LABEL_52;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 != 2)
  {
    goto LABEL_14;
  }

  if (*(a2 - 2) >= *(a1 + 8))
  {
    return 1;
  }

  v5 = *(a1 + 16);
  v6 = *a1;
  v7 = *(a2 - 1);
  *a1 = *(a2 - 3);
  *(a1 + 16) = v7;
  *(a2 - 3) = v6;
  *(a2 - 1) = v5;
  return 1;
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStart &,operations_research::sat::IndexedInterval*,operations_research::sat::IndexedInterval*>(char *a1, char *a2, char *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = a2 - a1;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (a2 - a1 >= 25 && v3 >= 0x30)
  {
    v50 = (v4 - 2) >> 1;
    v51 = v50;
    do
    {
      if (v50 >= (0xAAAAAAAAAAAAAAABLL * ((24 * v51) >> 3)))
      {
        v52 = (0x5555555555555556 * ((24 * v51) >> 3)) | 1;
        v53 = &a1[24 * v52];
        if (0x5555555555555556 * ((24 * v51) >> 3) + 2 < v4)
        {
          v54 = *(v53 + 1);
          v55 = *(v53 + 4);
          v56 = v54 < v55;
          v57 = v54 >= v55 ? 0 : 24;
          v53 += v57;
          if (v56)
          {
            v52 = 0x5555555555555556 * ((24 * v51) >> 3) + 2;
          }
        }

        v58 = &a1[24 * v51];
        v59 = *(v58 + 1);
        if (*(v53 + 1) >= v59)
        {
          v60 = *v58;
          v61 = *(v58 + 2);
          do
          {
            v62 = v58;
            v58 = v53;
            v63 = *v53;
            *(v62 + 2) = *(v53 + 2);
            *v62 = v63;
            if (v50 < v52)
            {
              break;
            }

            v64 = (2 * v52) | 1;
            v53 = &a1[24 * v64];
            v65 = 2 * v52 + 2;
            if (v65 < v4)
            {
              v66 = *(v53 + 1);
              v67 = *(v53 + 4);
              v68 = v66 < v67;
              v69 = v66 >= v67 ? 0 : 24;
              v53 += v69;
              if (v68)
              {
                v64 = v65;
              }
            }

            v52 = v64;
          }

          while (*(v53 + 1) >= v59);
          *v58 = v60;
          *(v58 + 1) = v59;
          *(v58 + 2) = v61;
        }
      }

      v14 = v51-- <= 0;
    }

    while (!v14);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 48)
    {
      i = a2;
      do
      {
        if (*(i + 1) < *(a1 + 1))
        {
          v6 = *(i + 2);
          v7 = *i;
          v8 = *(a1 + 2);
          *i = *a1;
          *(i + 2) = v8;
          *a1 = v7;
          *(a1 + 2) = v6;
        }

        i += 24;
      }

      while (i != a3);
      goto LABEL_34;
    }

    for (i = a2; i != a3; i += 24)
    {
      if (*(i + 1) < *(a1 + 1))
      {
        v9 = *(i + 2);
        v10 = *i;
        v11 = *(a1 + 2);
        *i = *a1;
        *(i + 2) = v11;
        *a1 = v10;
        *(a1 + 2) = v9;
        if (v4 < 3)
        {
          v16 = a1 + 24;
          v17 = 1;
          v18 = *(a1 + 1);
          if (*(a1 + 4) >= v18)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v12 = *(a1 + 4);
          v13 = *(a1 + 7);
          v14 = v12 < v13;
          if (v12 >= v13)
          {
            v15 = 0;
          }

          else
          {
            v15 = 24;
          }

          v16 = &a1[v15 + 24];
          if (v14)
          {
            v17 = 2;
          }

          else
          {
            v17 = 1;
          }

          v18 = *(a1 + 1);
          if (*(v16 + 1) >= v18)
          {
LABEL_24:
            v19 = *a1;
            v20 = *(a1 + 2);
            v21 = a1;
            do
            {
              v22 = v21;
              v21 = v16;
              v23 = *v16;
              *(v22 + 2) = *(v16 + 2);
              *v22 = v23;
              if (((v4 - 2) >> 1) < v17)
              {
                break;
              }

              v24 = (2 * v17) | 1;
              v16 = &a1[24 * v24];
              v25 = 2 * v17 + 2;
              if (v25 < v4)
              {
                v26 = *(v16 + 1);
                v27 = *(v16 + 4);
                v28 = v26 < v27;
                v29 = v26 >= v27 ? 0 : 24;
                v16 += v29;
                if (v28)
                {
                  v24 = v25;
                }
              }

              v17 = v24;
            }

            while (*(v16 + 1) >= v18);
            *v21 = v19;
            *(v21 + 1) = v18;
            *(v21 + 2) = v20;
          }
        }
      }
    }
  }

LABEL_34:
  if (v3 >= 25)
  {
    v30 = 0xAAAAAAAAAAAAAAABLL * (v3 >> 3);
    do
    {
      v31 = 0;
      v70 = *a1;
      v71 = *(a1 + 2);
      v32 = a1;
      do
      {
        v38 = &v32[24 * v31];
        v36 = v38 + 24;
        v39 = (2 * v31) | 1;
        v31 = 2 * v31 + 2;
        if (v31 < v30)
        {
          v33 = *(v38 + 4);
          v34 = *(v38 + 7);
          v35 = v38 + 48;
          if (v33 >= v34)
          {
            v31 = v39;
          }

          else
          {
            v36 = v35;
          }
        }

        else
        {
          v31 = v39;
        }

        v37 = *v36;
        *(v32 + 2) = *(v36 + 2);
        *v32 = v37;
        v32 = v36;
      }

      while (v31 <= ((v30 - 2) >> 1));
      a2 -= 24;
      if (v36 == a2)
      {
        *(v36 + 2) = v71;
        *v36 = v70;
      }

      else
      {
        v40 = *a2;
        *(v36 + 2) = *(a2 + 2);
        *v36 = v40;
        *a2 = v70;
        *(a2 + 2) = v71;
        v41 = v36 - a1 + 24;
        if (v41 >= 25)
        {
          v42 = (-2 - 0x5555555555555555 * (v41 >> 3)) >> 1;
          v43 = &a1[24 * v42];
          v44 = *(v36 + 1);
          if (*(v43 + 1) < v44)
          {
            v45 = *v36;
            v46 = *(v36 + 2);
            do
            {
              v47 = v36;
              v36 = v43;
              v48 = *v43;
              *(v47 + 2) = *(v43 + 2);
              *v47 = v48;
              if (!v42)
              {
                break;
              }

              v42 = (v42 - 1) >> 1;
              v43 = &a1[24 * v42];
            }

            while (*(v43 + 1) < v44);
            *v36 = v45;
            *(v36 + 1) = v44;
            *(v36 + 2) = v46;
          }
        }
      }

      v14 = v30-- <= 2;
    }

    while (!v14);
  }

  return i;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,false>(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = (a2 - 3);
  v10 = v8;
LABEL_3:
  v11 = 1 - a4;
  while (1)
  {
    v8 = v10;
    v12 = v11;
    v13 = a2 - v10;
    v14 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v27 = *(a2 - 2);
        v28 = *(v8 + 8);
        if (v27 < v28 || v28 >= v27 && ((v59 = *(a2 - 1), v60 = *(v8 + 16), v59 < v60) || v60 >= v59 && *v9 < *v8))
        {
          v83 = *(v8 + 16);
          v78 = *v8;
          v29 = *v9;
          *(v8 + 16) = *(a2 - 1);
          *v8 = v29;
          *v9 = v78;
          *(a2 - 1) = v83;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {
      result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(v8, (v8 + 24), (v8 + 48));
      v30 = *(a2 - 2);
      v31 = *(v8 + 56);
      if (v30 < v31 || v31 >= v30 && ((v61 = *(a2 - 1), v62 = *(v8 + 64), v61 < v62) || v62 >= v61 && *v9 < *(v8 + 48)))
      {
        v84 = *(v8 + 64);
        v79 = *(v8 + 48);
        v32 = *v9;
        *(v8 + 64) = *(a2 - 1);
        *(v8 + 48) = v32;
        *v9 = v79;
        *(a2 - 1) = v84;
        v33 = *(v8 + 56);
        v34 = *(v8 + 32);
        if (v33 < v34 || v34 >= v33 && ((v73 = *(v8 + 64), v74 = *(v8 + 40), v73 < v74) || v74 >= v73 && *(v8 + 48) < *(v8 + 24)))
        {
          v85 = *(v8 + 40);
          v80 = *(v8 + 24);
          *(v8 + 24) = *(v8 + 48);
          *(v8 + 40) = *(v8 + 64);
          *(v8 + 64) = v85;
          *(v8 + 48) = v80;
          v35 = *(v8 + 32);
          v36 = *(v8 + 8);
          if (v35 < v36 || v36 >= v35 && ((v75 = *(v8 + 40), v76 = *(v8 + 16), v75 < v76) || v76 >= v75 && *(v8 + 24) < *v8))
          {
            v86 = *(v8 + 16);
            v81 = *v8;
            *v8 = *(v8 + 24);
            *(v8 + 16) = *(v8 + 40);
            *(v8 + 40) = v86;
            *(v8 + 24) = v81;
          }
        }
      }

      return result;
    }

    if (v14 == 5)
    {

      return std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(v8, v8 + 24, v8 + 48, (v8 + 72), (a2 - 3));
    }

LABEL_11:
    if (v13 <= 575)
    {
      v37 = (v8 + 24);
      v39 = v8 == a2 || v37 == a2;
      if (a5)
      {
        if (v39)
        {
          return result;
        }

        v40 = 0;
        v41 = v8;
LABEL_54:
        v43 = v41;
        v41 = v37;
        v44 = v43[4];
        v45 = v43[1];
        if (v44 >= v45)
        {
          if (v45 < v44)
          {
            goto LABEL_53;
          }

          v46 = v43[5];
          v53 = v43[2];
          if (v46 >= v53 && (v53 < v46 || *v41 >= *v43))
          {
            goto LABEL_53;
          }
        }

        else
        {
          v46 = v43[5];
        }

        v47 = v43[3];
        *v41 = *v43;
        *(v41 + 16) = v43[2];
        v42 = v8;
        if (v43 == v8)
        {
          goto LABEL_52;
        }

        v48 = v40;
        while (1)
        {
          v49 = v8 + v48;
          v50 = (v8 + v48 - 24);
          v51 = *(v8 + v48 - 16);
          if (v44 >= v51)
          {
            if (v51 < v44)
            {
              goto LABEL_64;
            }

            v52 = *(v49 - 8);
            if (v46 >= v52)
            {
              if (v52 < v46)
              {
                v42 = (v8 + v48);
LABEL_52:
                *v42 = v47;
                v42[1] = v44;
                v42[2] = v46;
LABEL_53:
                v37 = (v41 + 24);
                v40 += 24;
                if ((v41 + 24) == a2)
                {
                  return result;
                }

                goto LABEL_54;
              }

              if (v47 >= *v50)
              {
LABEL_64:
                v42 = v43;
                goto LABEL_52;
              }
            }
          }

          v43 -= 3;
          *v49 = *v50;
          *(v49 + 16) = *(v8 + v48 - 8);
          v48 -= 24;
          if (!v48)
          {
            v42 = v8;
            goto LABEL_52;
          }
        }
      }

      if (v39)
      {
        return result;
      }

      while (2)
      {
        v63 = v8;
        v8 = v37;
        v64 = *(v63 + 32);
        v65 = *(v63 + 8);
        if (v64 >= v65)
        {
          if (v65 >= v64)
          {
            v66 = *(v63 + 40);
            v72 = *(v63 + 16);
            if (v66 < v72 || v72 >= v66 && *v8 < *v63)
            {
              goto LABEL_93;
            }
          }
        }

        else
        {
          v66 = *(v63 + 40);
LABEL_93:
          v67 = *v8;
          v68 = *v8;
          for (i = v8; ; i -= 24)
          {
            *i = *(i - 24);
            *(i + 16) = *(i - 8);
            v70 = *(i - 40);
            if (v64 >= v70)
            {
              if (v70 < v64)
              {
                break;
              }

              v71 = *(i - 32);
              if (v66 >= v71 && (v71 < v66 || v68 >= *(i - 48)))
              {
                break;
              }
            }
          }

          *(i - 24) = v67;
          *(i - 16) = v64;
          *(i - 8) = v66;
        }

        v37 = (v8 + 24);
        if ((v8 + 24) == a2)
        {
          return result;
        }

        continue;
      }
    }

    if (v11 == 1)
    {
      if (v8 != a2)
      {
        v54 = (v14 - 2) >> 1;
        v55 = v54 + 1;
        v56 = (v8 + 24 * v54);
        do
        {
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*>(v8, a3, 0xAAAAAAAAAAAAAAABLL * (v13 >> 3), v56);
          v56 -= 3;
          --v55;
        }

        while (v55);
        v57 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 3);
        do
        {
          result = std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex,operations_research::sat::IndexedInterval*>(v8, a2, a3, v57);
          a2 -= 3;
        }

        while (v57-- > 2);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v8 + 24 * (v14 >> 1);
    if (v13 < 0xC01)
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(v16, v8, (a2 - 3));
      if (a5)
      {
        goto LABEL_22;
      }
    }

    else
    {
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(v8, v16, (a2 - 3));
      v17 = 24 * v15;
      v18 = (24 * v15 + v8 - 24);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>((v8 + 24), v18, a2 - 3);
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>((v8 + 48), (v8 + 24 + v17), (a2 - 9));
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(v18, v16, (v8 + 24 + v17));
      v82 = *(v8 + 16);
      v77 = *v8;
      v19 = *v16;
      *(v8 + 16) = *(v16 + 16);
      *v8 = v19;
      *(v16 + 16) = v82;
      *v16 = v77;
      if (a5)
      {
        goto LABEL_22;
      }
    }

    v20 = *(v8 - 16);
    v21 = *(v8 + 8);
    if (v20 >= v21)
    {
      if (v21 < v20 || (v22 = *(v8 - 8), v23 = *(v8 + 16), v22 >= v23) && (v23 < v22 || *(v8 - 24) >= *v8))
      {
        result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval *,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &>(v8, a2);
        v10 = result;
        goto LABEL_27;
      }
    }

LABEL_22:
    started = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval *,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &>(v8, a2);
    if ((v25 & 1) == 0)
    {
      goto LABEL_25;
    }

    v26 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*>(v8, started);
    v10 = (started + 3);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*>((started + 3), a2);
    if (result)
    {
      a4 = -v12;
      a2 = started;
      if (v26)
      {
        return result;
      }

      goto LABEL_2;
    }

    v11 = v12 + 1;
    if ((v26 & 1) == 0)
    {
LABEL_25:
      result = std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,false>(v8, started, a3, -v12, a5 & 1);
      v10 = (started + 3);
LABEL_27:
      a5 = 0;
      a4 = -v12;
      goto LABEL_3;
    }
  }

  return std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(v8, (v8 + 24), (a2 - 3));
}

uint64_t std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(__int128 *a1, __int128 *a2, __int128 *a3)
{
  v3 = *(a2 + 1);
  v4 = *(a1 + 1);
  if (v3 < v4 || v4 >= v3 && ((v27 = *(a2 + 2), v28 = *(a1 + 2), v27 < v28) || v28 >= v27 && *a2 < *a1))
  {
    v5 = *(a3 + 1);
    if (v5 < v3 || v3 >= v5 && ((v29 = *(a3 + 2), v30 = *(a2 + 2), v29 < v30) || v30 >= v29 && *a3 < *a2))
    {
      v6 = *(a1 + 2);
      v7 = *a1;
      v8 = *(a3 + 2);
      *a1 = *a3;
      *(a1 + 2) = v8;
      *a3 = v7;
      *(a3 + 2) = v6;
      return 1;
    }

    v19 = *(a1 + 2);
    v20 = *a1;
    v21 = *(a2 + 2);
    *a1 = *a2;
    *(a1 + 2) = v21;
    *a2 = v20;
    *(a2 + 2) = v19;
    v22 = *(a3 + 1);
    v23 = *(a2 + 1);
    if (v22 >= v23)
    {
      if (v23 < v22)
      {
        return 1;
      }

      v33 = *(a3 + 2);
      v34 = *(a2 + 2);
      if (v33 >= v34 && (v34 < v33 || *a3 >= *a2))
      {
        return 1;
      }
    }

    v24 = *(a2 + 2);
    v25 = *a2;
    v26 = *(a3 + 2);
    *a2 = *a3;
    *(a2 + 2) = v26;
    *a3 = v25;
    *(a3 + 2) = v24;
    return 1;
  }

  else
  {
    v10 = *(a3 + 1);
    if (v10 < v3)
    {
LABEL_6:
      v11 = *(a2 + 2);
      v12 = *a2;
      v13 = *(a3 + 2);
      *a2 = *a3;
      *(a2 + 2) = v13;
      *a3 = v12;
      *(a3 + 2) = v11;
      v14 = *(a2 + 1);
      v15 = *(a1 + 1);
      if (v14 < v15 || v15 >= v14 && ((v31 = *(a2 + 2), v32 = *(a1 + 2), v31 < v32) || v32 >= v31 && *a2 < *a1))
      {
        v16 = *(a1 + 2);
        v17 = *a1;
        v18 = *(a2 + 2);
        *a1 = *a2;
        *(a1 + 2) = v18;
        *a2 = v17;
        *(a2 + 2) = v16;
      }

      return 1;
    }

    if (v3 >= v10)
    {
      v35 = *(a3 + 2);
      v36 = *(a2 + 2);
      if (v35 < v36)
      {
        goto LABEL_6;
      }

      if (v36 >= v35)
      {
        if (*a3 < *a2)
        {
          goto LABEL_6;
        }

        return 0;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }
}

uint64_t std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, __int128 *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(a1, a2, a3);
  v11 = *(a4 + 1);
  v12 = *(a3 + 8);
  if (v11 < v12 || v12 >= v11 && ((v26 = *(a4 + 2), v27 = *(a3 + 16), v26 < v27) || v27 >= v26 && *a4 < *a3))
  {
    v13 = *(a3 + 16);
    v14 = *a3;
    v15 = *(a4 + 2);
    *a3 = *a4;
    *(a3 + 16) = v15;
    *a4 = v14;
    *(a4 + 2) = v13;
    v16 = *(a3 + 8);
    v17 = *(a2 + 8);
    if (v16 < v17 || v17 >= v16 && ((v28 = *(a3 + 16), v29 = *(a2 + 16), v28 < v29) || v29 >= v28 && *a3 < *a2))
    {
      v18 = *(a2 + 16);
      v19 = *a2;
      v20 = *(a3 + 16);
      *a2 = *a3;
      *(a2 + 16) = v20;
      *a3 = v19;
      *(a3 + 16) = v18;
      v21 = *(a2 + 8);
      v22 = *(a1 + 8);
      if (v21 < v22 || v22 >= v21 && ((v58 = *(a2 + 16), v59 = *(a1 + 16), v58 < v59) || v59 >= v58 && *a2 < *a1))
      {
        v23 = *(a1 + 16);
        v24 = *a1;
        v25 = *(a2 + 16);
        *a1 = *a2;
        *(a1 + 16) = v25;
        *a2 = v24;
        *(a2 + 16) = v23;
      }
    }
  }

  v30 = *(a5 + 1);
  v31 = *(a4 + 1);
  if (v30 < v31 || v31 >= v30 && ((v50 = *(a5 + 2), v51 = *(a4 + 2), v50 < v51) || v51 >= v50 && *a5 < *a4))
  {
    v32 = *(a4 + 2);
    v33 = *a4;
    v34 = *(a5 + 2);
    *a4 = *a5;
    *(a4 + 2) = v34;
    *a5 = v33;
    *(a5 + 2) = v32;
    v35 = *(a4 + 1);
    v36 = *(a3 + 8);
    if (v35 < v36 || v36 >= v35 && ((v52 = *(a4 + 2), v53 = *(a3 + 16), v52 < v53) || v53 >= v52 && *a4 < *a3))
    {
      v37 = *(a3 + 16);
      v38 = *a3;
      v39 = *(a4 + 2);
      *a3 = *a4;
      *(a3 + 16) = v39;
      *a4 = v38;
      *(a4 + 2) = v37;
      v40 = *(a3 + 8);
      v41 = *(a2 + 8);
      if (v40 < v41 || v41 >= v40 && ((v54 = *(a3 + 16), v55 = *(a2 + 16), v54 < v55) || v55 >= v54 && *a3 < *a2))
      {
        v42 = *(a2 + 16);
        v43 = *a2;
        v44 = *(a3 + 16);
        *a2 = *a3;
        *(a2 + 16) = v44;
        *a3 = v43;
        *(a3 + 16) = v42;
        v45 = *(a2 + 8);
        v46 = *(a1 + 8);
        if (v45 < v46 || v46 >= v45 && ((v56 = *(a2 + 16), v57 = *(a1 + 16), v56 < v57) || v57 >= v56 && *a2 < *a1))
        {
          v47 = *(a1 + 16);
          v48 = *a1;
          v49 = *(a2 + 16);
          *a1 = *a2;
          *(a1 + 16) = v49;
          *a2 = v48;
          *(a2 + 16) = v47;
        }
      }
    }
  }

  return result;
}

uint64_t *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval *,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *(a2 - 2);
  if (v3 < v5 || v5 >= v3 && ((v20 = *(a2 - 1), v4 < v20) || v20 >= v4 && v2 < *(a2 - 6)))
  {
    i = a1 + 3;
    v7 = a1[4];
    if (v3 < v7)
    {
      goto LABEL_21;
    }

    v8 = a1 + 5;
    while (1)
    {
      if (v7 >= v3)
      {
        if (v4 < *v8)
        {
LABEL_20:
          i = v8 - 2;
          goto LABEL_21;
        }

        if (*v8 >= v4 && v2 < *(v8 - 4))
        {
          goto LABEL_21;
        }
      }

      i += 3;
      v7 = v8[2];
      v8 += 3;
      if (v3 < v7)
      {
        goto LABEL_20;
      }
    }
  }

  for (i = a1 + 3; i < a2; i += 3)
  {
    v9 = i[1];
    if (v3 < v9)
    {
      break;
    }

    if (v9 >= v3)
    {
      v10 = i[2];
      if (v4 < v10 || v10 >= v4 && v2 < *i)
      {
        break;
      }
    }
  }

LABEL_21:
  if (i < a2)
  {
    for (j = a2 - 1; v3 < v5 || v5 >= v3 && (v4 < *j || *j >= v4 && v2 < *(j - 4)); j -= 3)
    {
      v5 = *(j - 4);
    }

    a2 = j - 2;
  }

  if (i < a2)
  {
LABEL_33:
    v22 = i[2];
    v21 = *i;
    v12 = *a2;
    i[2] = a2[2];
    *i = v12;
    a2[2] = v22;
    *a2 = v21;
    v13 = i + 3;
    v14 = i[4];
    if (v3 < v14)
    {
      i += 3;
      goto LABEL_43;
    }

    v15 = i + 5;
    while (1)
    {
      if (v14 >= v3)
      {
        if (v4 < *v15)
        {
          i = v13;
          do
          {
            do
            {
LABEL_43:
              a2 -= 3;
              v16 = a2[1];
            }

            while (v3 < v16);
            if (v16 < v3)
            {
              break;
            }

            v17 = a2[2];
          }

          while (v4 < v17 || v17 >= v4 && v2 < *a2);
          if (i >= a2)
          {
            break;
          }

          goto LABEL_33;
        }

        if (*v15 >= v4 && v2 < *(v15 - 4))
        {
LABEL_41:
          i = v15 - 2;
          goto LABEL_43;
        }
      }

      v13 += 3;
      v14 = v15[2];
      v15 += 3;
      if (v3 < v14)
      {
        goto LABEL_41;
      }
    }
  }

  if (i - 3 != a1)
  {
    v18 = *(i - 3);
    a1[2] = *(i - 1);
    *a1 = v18;
  }

  *(i - 3) = v2;
  *(i - 2) = v3;
  *(i - 1) = v4;
  return i;
}

uint64_t *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval *,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &>(uint64_t *a1, unint64_t a2)
{
  v2 = 0;
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = *a1;
  while (1)
  {
    v7 = &a1[v2];
    v8 = a1[v2 + 4];
    if (v8 >= v4)
    {
      if (v4 < v8)
      {
        break;
      }

      v9 = v7[5];
      if (v9 >= v5 && (v5 < v9 || *(v7 + 6) >= v6))
      {
        break;
      }
    }

    v2 += 3;
  }

  v10 = &a1[v2 + 3];
  if (v2 * 8)
  {
    v11 = a2 - 24;
    v12 = *(a2 - 16);
    if (v12 >= v4)
    {
      v13 = (a2 - 8);
      while (1)
      {
        if (v4 >= v12)
        {
          if (*v13 < v5)
          {
            goto LABEL_31;
          }

          if (v5 >= *v13 && *(v13 - 4) < v6)
          {
            break;
          }
        }

        v11 -= 24;
        v12 = *(v13 - 4);
        v13 -= 3;
        if (v12 < v4)
        {
          goto LABEL_31;
        }
      }
    }
  }

  else if (v10 >= a2)
  {
    v11 = a2;
  }

  else
  {
    v11 = a2 - 24;
    v14 = *(a2 - 16);
    if (v14 >= v4)
    {
      v13 = (a2 - 8);
      while (1)
      {
        v15 = v13 - 2;
        if (v4 < v14)
        {
          goto LABEL_20;
        }

        if (*v13 < v5)
        {
          v11 = (v13 - 2);
          v17 = v10;
          if (v10 < v15)
          {
            goto LABEL_35;
          }

          goto LABEL_53;
        }

        if (v5 < *v13)
        {
LABEL_20:
          if (v10 >= v15)
          {
            break;
          }
        }

        else if (*v15 < v6 || v10 >= v15)
        {
          break;
        }

        v11 -= 24;
        v14 = *(v13 - 4);
        v13 -= 3;
        if (v14 < v4)
        {
LABEL_31:
          v11 = (v13 - 2);
          v17 = v10;
          if (v10 < v11)
          {
            goto LABEL_35;
          }

          goto LABEL_53;
        }
      }
    }
  }

  v17 = v10;
  if (v10 < v11)
  {
LABEL_35:
    v18 = v11;
    do
    {
      v28 = v17[2];
      v27 = *v17;
      v20 = *v18;
      v17[2] = *(v18 + 16);
      *v17 = v20;
      *(v18 + 16) = v28;
      *v18 = v27;
      do
      {
        do
        {
          v17 += 3;
          v21 = v17[1];
        }

        while (v21 < v4);
        if (v4 < v21)
        {
          break;
        }

        v22 = v17[2];
      }

      while (v22 < v5 || v5 >= v22 && *v17 < v6);
      v19 = (v18 - 24);
      v23 = *(v18 - 16);
      if (v23 >= v4)
      {
        v24 = (v18 - 8);
        do
        {
          if (v4 >= v23)
          {
            if (*v24 < v5)
            {
              goto LABEL_37;
            }

            if (v5 >= *v24 && *(v24 - 4) < v6)
            {
              break;
            }
          }

          v19 -= 3;
          v23 = *(v24 - 4);
          v24 -= 3;
        }

        while (v23 >= v4);
        v19 = v24 - 2;
      }

LABEL_37:
      v18 = v19;
    }

    while (v17 < v19);
  }

LABEL_53:
  if (v17 - 3 != a1)
  {
    v25 = *(v17 - 3);
    a1[2] = *(v17 - 1);
    *a1 = v25;
  }

  *(v17 - 3) = v3;
  *(v17 - 2) = v4;
  *(v17 - 1) = v5;
  return v17 - 3;
}

uint64_t std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*>(uint64_t a1, void *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 3);
  if (v2 <= 2)
  {
    if (v2 >= 2)
    {
      if (v2 == 2)
      {
        v3 = (a2 - 3);
        v4 = *(a2 - 2);
        v5 = *(a1 + 8);
        if (v4 < v5 || v5 >= v4 && ((v43 = *(a2 - 1), v44 = *(a1 + 16), v43 < v44) || v44 >= v43 && *v3 < *a1))
        {
          v6 = *(a1 + 16);
          v7 = *a1;
          v8 = *(a2 - 1);
          *a1 = *v3;
          *(a1 + 16) = v8;
          *v3 = v7;
          *(a2 - 1) = v6;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v2)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(a1, (a1 + 24), (a2 - 3));
      return 1;
    case 4:
      v26 = a2 - 3;
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(a1, (a1 + 24), (a1 + 48));
      v29 = *(a2 - 2);
      v30 = *(a1 + 56);
      if (v29 < v30 || v30 >= v29 && ((v45 = *(a2 - 1), v46 = *(a1 + 64), v45 < v46) || v46 >= v45 && *v26 < *(a1 + 48)))
      {
        v31 = *(a1 + 64);
        v32 = *(a1 + 48);
        v33 = v26[2];
        *(a1 + 48) = *v26;
        *(a1 + 64) = v33;
        *v26 = v32;
        v26[2] = v31;
        v34 = *(a1 + 56);
        v35 = *(a1 + 32);
        if (v34 < v35 || v35 >= v34 && ((v47 = *(a1 + 64), v48 = *(a1 + 40), v47 < v48) || v48 >= v47 && *(a1 + 48) < *(a1 + 24)))
        {
          v36 = *(a1 + 24);
          *(a1 + 24) = *(a1 + 48);
          v37 = *(a1 + 32);
          v38 = *(a1 + 40);
          *(a1 + 40) = *(a1 + 64);
          *(a1 + 48) = v36;
          *(a1 + 64) = v38;
          v39 = *(a1 + 8);
          if (v37 < v39 || v39 >= v37 && ((v50 = *(a1 + 40), v51 = *(a1 + 16), v50 < v51) || v51 >= v50 && *(a1 + 24) < *a1))
          {
            v40 = *(a1 + 16);
            v41 = *a1;
            *a1 = *(a1 + 24);
            *(a1 + 16) = *(a1 + 40);
            *(a1 + 24) = v41;
            *(a1 + 40) = v40;
          }
        }
      }

      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(a1, a1 + 24, a1 + 48, (a1 + 72), (a2 - 3));
      return 1;
  }

LABEL_11:
  v9 = (a1 + 48);
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*,0>(a1, (a1 + 24), (a1 + 48));
  v13 = (a1 + 72);
  if ((a1 + 72) == a2)
  {
LABEL_37:
    v42 = 1;
    return (v42 | v12) & 1;
  }

  v12 = a2;
  v14 = 0;
  v15 = 0;
  while (2)
  {
    v17 = v13[1];
    v18 = v9[1];
    if (v17 >= v18)
    {
      if (v18 < v17)
      {
        goto LABEL_15;
      }

      v19 = v13[2];
      v25 = v9[2];
      if (v19 >= v25 && (v25 < v19 || *v13 >= *v9))
      {
        goto LABEL_15;
      }
    }

    else
    {
      v19 = v13[2];
    }

    v20 = *v13;
    *v13 = *v9;
    v13[2] = v9[2];
    v16 = a1;
    if (v9 == a1)
    {
      goto LABEL_14;
    }

    v21 = v14;
    while (1)
    {
      v22 = a1 + v21;
      v23 = *(a1 + v21 + 32);
      if (v17 >= v23)
      {
        if (v23 < v17)
        {
          goto LABEL_32;
        }

        v24 = *(v22 + 40);
        if (v19 >= v24)
        {
          break;
        }
      }

LABEL_20:
      v9 -= 3;
      *(v22 + 48) = *(v22 + 24);
      *(v22 + 64) = *(v22 + 40);
      v21 -= 24;
      if (v21 == -48)
      {
        v16 = a1;
        goto LABEL_14;
      }
    }

    if (v24 >= v19)
    {
      if (v20 >= *(v22 + 24))
      {
        v16 = (a1 + v21 + 48);
        goto LABEL_14;
      }

      goto LABEL_20;
    }

LABEL_32:
    v16 = v9;
LABEL_14:
    *v16 = v20;
    v16[1] = v17;
    v16[2] = v19;
    if (++v15 != 8)
    {
LABEL_15:
      v9 = v13;
      v14 += 24;
      v13 += 3;
      if (v13 == a2)
      {
        goto LABEL_37;
      }

      continue;
    }

    break;
  }

  v42 = 0;
  v12 = v13 + 3 == a2;
  return (v42 | v12) & 1;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex &,operations_research::sat::IndexedInterval*>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = (a3 - 2) >> 1;
    if (v4 >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 3)))
    {
      v5 = (0x5555555555555556 * ((a4 - result) >> 3)) | 1;
      v6 = (result + 24 * v5);
      if (0x5555555555555556 * ((a4 - result) >> 3) + 2 < a3)
      {
        v7 = *(v6 + 1);
        v8 = *(v6 + 4);
        if (v7 < v8 || v8 >= v7 && ((v25 = *(v6 + 2), v26 = *(v6 + 5), v25 < v26) || v26 >= v25 && *v6 < *(v6 + 6)))
        {
          v6 = (v6 + 24);
          v5 = 0x5555555555555556 * ((a4 - result) >> 3) + 2;
        }
      }

      v9 = *(v6 + 1);
      v10 = a4[1];
      if (v9 >= v10)
      {
        v11 = a4[2];
        if (v10 < v9 || (v24 = *(v6 + 2), v24 >= v11) && (v11 < v24 || *v6 >= *a4))
        {
          v12 = *a4;
          v13 = *v6;
          a4[2] = *(v6 + 2);
          *a4 = v13;
          if (v4 >= v5)
          {
            while (1)
            {
              v15 = v6;
              v16 = 2 * v5;
              v5 = (2 * v5) | 1;
              v6 = (result + 24 * v5);
              v17 = v16 + 2;
              if (v17 < a3)
              {
                v18 = *(v6 + 1);
                v19 = *(v6 + 4);
                if (v18 < v19 || v19 >= v18 && ((v22 = *(v6 + 2), v23 = *(v6 + 5), v22 < v23) || v23 >= v22 && *v6 < *(v6 + 6)))
                {
                  v6 = (v6 + 24);
                  v5 = v17;
                }
              }

              v20 = *(v6 + 1);
              if (v20 < v10)
              {
                break;
              }

              if (v10 >= v20)
              {
                v21 = *(v6 + 2);
                if (v21 < v11 || v11 >= v21 && *v6 < v12)
                {
                  break;
                }
              }

              v14 = *v6;
              *(v15 + 2) = *(v6 + 2);
              *v15 = v14;
              if (v4 < v5)
              {
                goto LABEL_35;
              }
            }

            v6 = v15;
          }

LABEL_35:
          *v6 = v12;
          *(v6 + 1) = v10;
          *(v6 + 2) = v11;
        }
      }
    }
  }

  return result;
}

char *std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::IndexedInterval::ComparatorByStartThenEndThenIndex,operations_research::sat::IndexedInterval*>(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = 0;
    v33 = *result;
    v34 = *(result + 2);
    v5 = result;
    do
    {
      v7 = v5;
      v8 = &v5[24 * v4];
      v5 = v8 + 24;
      v9 = 2 * v4;
      v4 = (2 * v4) | 1;
      v10 = v9 + 2;
      if (v10 < a4)
      {
        v11 = v8 + 48;
        v12 = *(v8 + 4);
        v13 = *(v8 + 7);
        if (v12 < v13 || v13 >= v12 && ((v14 = *(v8 + 5), v15 = *(v8 + 8), v14 < v15) || v15 >= v14 && *v5 < *v11))
        {
          v5 = v11;
          v4 = v10;
        }
      }

      v6 = *v5;
      *(v7 + 2) = *(v5 + 2);
      *v7 = v6;
    }

    while (v4 <= ((a4 - 2) >> 1));
    v16 = (a2 - 24);
    if (v5 == (a2 - 24))
    {
      *(v5 + 2) = v34;
      *v5 = v33;
      return result;
    }

    v17 = *v16;
    *(v5 + 2) = *(a2 - 8);
    *v5 = v17;
    *v16 = v33;
    *(a2 - 8) = v34;
    v18 = v5 - result + 24;
    if (v18 < 25)
    {
      return result;
    }

    v19 = 0xAAAAAAAAAAAAAAABLL * (v18 >> 3) - 2;
    v20 = v19 >> 1;
    v21 = &result[24 * (v19 >> 1)];
    v22 = *(v21 + 1);
    v23 = *(v5 + 1);
    if (v22 >= v23)
    {
      if (v23 < v22)
      {
        return result;
      }

      v32 = *(v21 + 2);
      v24 = *(v5 + 2);
      if (v32 >= v24 && (v24 < v32 || *v21 >= *v5))
      {
        return result;
      }
    }

    else
    {
      v24 = *(v5 + 2);
    }

    v25 = *v5;
    v26 = *v21;
    *(v5 + 2) = *(v21 + 2);
    *v5 = v26;
    if (v19 >= 2)
    {
      while (1)
      {
        v28 = v21;
        v29 = v20 - 1;
        v20 = (v20 - 1) >> 1;
        v21 = &result[24 * v20];
        v30 = *(v21 + 1);
        if (v30 >= v23)
        {
          if (v23 < v30)
          {
            break;
          }

          v31 = *(v21 + 2);
          if (v31 >= v24 && (v24 < v31 || *v21 >= v25))
          {
            break;
          }
        }

        v27 = *v21;
        *(v28 + 2) = *(v21 + 2);
        *v28 = v27;
        if (v29 <= 1)
        {
          goto LABEL_25;
        }
      }

      v21 = v28;
    }

LABEL_25:
    *v21 = v25;
    *(v21 + 1) = v23;
    *(v21 + 2) = v24;
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,false>(unint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  v10 = a2 - 2;
  v11 = a2 - 4;
  v12 = a2 - 6;
  v13 = a1;
  while (1)
  {
    a1 = v13;
    v14 = (a2 - v13) >> 5;
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
      v80 = a2[-2].n128_i64[0];
      v79 = a2 - 2;
      if (v80 >= *v13)
      {
        return result;
      }

LABEL_108:
      v143 = *v13;
      v178 = *(v13 + 16);
      v85 = v79[1];
      *v13 = *v79;
      *(v13 + 16) = v85;
LABEL_109:
      result = v143;
      *v79 = v143;
      v79[1] = v178;
      return result;
    }

LABEL_9:
    if (v14 <= 23)
    {
      v90 = (v13 + 32);
      v92 = v13 == a2 || v90 == a2;
      if (a5)
      {
        if (!v92)
        {
          v93 = 0;
          v94 = v13;
          do
          {
            v96 = v90;
            v97 = *(v94 + 32);
            if (v97 < *v94)
            {
              v180 = *(v94 + 56);
              v145 = *(v94 + 40);
              v98 = v93;
              do
              {
                v99 = v13 + v98;
                v100 = *(v13 + v98 + 16);
                *(v99 + 32) = *(v13 + v98);
                *(v99 + 48) = v100;
                if (!v98)
                {
                  v95 = v13;
                  goto LABEL_123;
                }

                v98 -= 32;
              }

              while (v97 < *(v99 - 32));
              v95 = v13 + v98 + 32;
LABEL_123:
              *v95 = v97;
              result = v145;
              *(v95 + 24) = v180;
              *(v95 + 8) = v145;
            }

            v90 = v96 + 2;
            v93 += 32;
            v94 = v96;
          }

          while (&v96[2] != a2);
        }
      }

      else if (!v92)
      {
        do
        {
          v104 = v90;
          v105 = *(a1 + 32);
          if (v105 < *a1)
          {
            v184 = *(a1 + 56);
            v149 = *(a1 + 40);
            do
            {
              v106 = v90[-1];
              *v90 = v90[-2];
              v90[1] = v106;
              v107 = v90[-4].n128_i64[0];
              v90 -= 2;
            }

            while (v105 < v107);
            v90->n128_u64[0] = v105;
            result = v149;
            v90[1].n128_u64[1] = v184;
            *(v90 + 8) = v149;
          }

          v90 = v104 + 2;
          a1 = v104;
        }

        while (&v104[2] != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v13 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,operations_research::sat::CapacityProfile::Event *>(v13, a2, a2);
      }

      return result;
    }

    v15 = v13 + 32 * (v14 >> 1);
    v16 = v15;
    v17 = v10->n128_u64[0];
    if (v14 < 0x81)
    {
      v20 = *v13;
      if (*v13 < v16->n128_u64[0])
      {
        if (v17 < v20)
        {
          v121 = *v16;
          v156 = v16[1];
          v21 = a2[-1];
          *v16 = *v10;
          v16[1] = v21;
          goto LABEL_36;
        }

        v130 = *v16;
        v165 = v16[1];
        v36 = *(v13 + 16);
        *v16 = *v13;
        v16[1] = v36;
        *v13 = v130;
        *(v13 + 16) = v165;
        if (v10->n128_u64[0] < *v13)
        {
          v121 = *v13;
          v156 = *(v13 + 16);
          v37 = a2[-1];
          *v13 = *v10;
          *(v13 + 16) = v37;
LABEL_36:
          *v10 = v121;
          a2[-1] = v156;
        }

LABEL_37:
        --a4;
        v26 = *v13;
        if (a5)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      if (v17 >= v20)
      {
        goto LABEL_37;
      }

      v124 = *v13;
      v159 = *(v13 + 16);
      v24 = a2[-1];
      *v13 = *v10;
      *(v13 + 16) = v24;
      *v10 = v124;
      a2[-1] = v159;
      if (*v13 >= v16->n128_u64[0])
      {
        goto LABEL_37;
      }

      v125 = *v16;
      v160 = v16[1];
      v25 = *(v13 + 16);
      *v16 = *v13;
      v16[1] = v25;
      *v13 = v125;
      *(v13 + 16) = v160;
      --a4;
      v26 = *v13;
      if (a5)
      {
        goto LABEL_62;
      }

LABEL_61:
      if (*(v13 - 32) < v26)
      {
        goto LABEL_62;
      }

      v119 = *(v13 + 24);
      v117 = *(v13 + 8);
      if (v26 >= v10->n128_u64[0])
      {
        v72 = v13 + 32;
        do
        {
          v13 = v72;
          if (v72 >= a2)
          {
            break;
          }

          v72 += 32;
        }

        while (v26 >= *v13);
      }

      else
      {
        do
        {
          v71 = *(v13 + 32);
          v13 += 32;
        }

        while (v26 >= v71);
      }

      v73 = a2;
      if (v13 < a2)
      {
        v73 = a2;
        do
        {
          v74 = v73[-2].n128_i64[0];
          v73 -= 2;
        }

        while (v26 < v74);
      }

      while (v13 < v73)
      {
        v142 = *v13;
        v177 = *(v13 + 16);
        v75 = v73[1];
        *v13 = *v73;
        *(v13 + 16) = v75;
        *v73 = v142;
        v73[1] = v177;
        do
        {
          v76 = *(v13 + 32);
          v13 += 32;
        }

        while (v26 >= v76);
        do
        {
          v77 = v73[-2].n128_i64[0];
          v73 -= 2;
        }

        while (v26 < v77);
      }

      if (v13 - 32 != a1)
      {
        v78 = *(v13 - 16);
        *a1 = *(v13 - 32);
        *(a1 + 16) = v78;
      }

      a5 = 0;
      *(v13 - 32) = v26;
      result = v117;
      *(v13 - 8) = v119;
      *(v13 - 24) = v117;
    }

    else
    {
      v18 = *v15;
      if (*v15 >= *v13)
      {
        if (v17 < v18)
        {
          v122 = *v15;
          v157 = *(v15 + 16);
          v22 = a2[-1];
          *v15 = *v10;
          *(v15 + 16) = v22;
          *v10 = v122;
          a2[-1] = v157;
          if (*v15 < *v13)
          {
            v123 = *v13;
            v158 = *(v13 + 16);
            v23 = *(v15 + 16);
            *v13 = *v15;
            *(v13 + 16) = v23;
            *v15 = v123;
            *(v15 + 16) = v158;
          }
        }
      }

      else
      {
        if (v17 >= v18)
        {
          v126 = *v13;
          v161 = *(v13 + 16);
          v27 = *(v15 + 16);
          *v13 = *v15;
          *(v13 + 16) = v27;
          *v15 = v126;
          *(v15 + 16) = v161;
          if (v10->n128_u64[0] >= *v15)
          {
            goto LABEL_28;
          }

          v120 = *v15;
          v155 = *(v15 + 16);
          v28 = a2[-1];
          *v15 = *v10;
          *(v15 + 16) = v28;
        }

        else
        {
          v120 = *v13;
          v155 = *(v13 + 16);
          v19 = a2[-1];
          *v13 = *v10;
          *(v13 + 16) = v19;
        }

        *v10 = v120;
        a2[-1] = v155;
      }

LABEL_28:
      v29 = (v13 + 32);
      v30 = (v15 - 32);
      v31 = *(v15 - 32);
      v32 = v11->n128_u64[0];
      if (v31 >= *(v13 + 32))
      {
        if (v32 < v31)
        {
          v128 = *v30;
          v163 = *(v15 - 16);
          v34 = a2[-3];
          *v30 = *v11;
          *(v15 - 16) = v34;
          *v11 = v128;
          a2[-3] = v163;
          if (v30->n128_u64[0] < v29->n128_u64[0])
          {
            v129 = *v29;
            v164 = *(v13 + 48);
            v35 = *(v15 - 16);
            *v29 = *v30;
            *(v13 + 48) = v35;
            *v30 = v129;
            *(v15 - 16) = v164;
          }
        }
      }

      else
      {
        if (v32 >= v31)
        {
          v131 = *v29;
          v166 = *(v13 + 48);
          v38 = *(v15 - 16);
          *v29 = *v30;
          *(v13 + 48) = v38;
          *v30 = v131;
          *(v15 - 16) = v166;
          if (v11->n128_u64[0] >= v30->n128_u64[0])
          {
            goto LABEL_42;
          }

          v127 = *v30;
          v162 = *(v15 - 16);
          v39 = a2[-3];
          *v30 = *v11;
          *(v15 - 16) = v39;
        }

        else
        {
          v127 = *v29;
          v162 = *(v13 + 48);
          v33 = a2[-3];
          *v29 = *v11;
          *(v13 + 48) = v33;
        }

        *v11 = v127;
        a2[-3] = v162;
      }

LABEL_42:
      v40 = (v13 + 64);
      v43 = *(v15 + 32);
      v41 = (v15 + 32);
      v42 = v43;
      v44 = v12->n128_u64[0];
      if (v43 >= *(v13 + 64))
      {
        if (v44 < v42)
        {
          v133 = *v41;
          v168 = v41[1];
          v46 = a2[-5];
          *v41 = *v12;
          v41[1] = v46;
          *v12 = v133;
          a2[-5] = v168;
          if (v41->n128_u64[0] < v40->n128_u64[0])
          {
            v134 = *v40;
            v169 = *(v13 + 80);
            v47 = v41[1];
            *v40 = *v41;
            *(v13 + 80) = v47;
            *v41 = v134;
            v41[1] = v169;
          }
        }
      }

      else
      {
        if (v44 >= v42)
        {
          v135 = *v40;
          v170 = *(v13 + 80);
          v48 = v41[1];
          *v40 = *v41;
          *(v13 + 80) = v48;
          *v41 = v135;
          v41[1] = v170;
          if (v12->n128_u64[0] >= v41->n128_u64[0])
          {
            goto LABEL_51;
          }

          v132 = *v41;
          v167 = v41[1];
          v49 = a2[-5];
          *v41 = *v12;
          v41[1] = v49;
        }

        else
        {
          v132 = *v40;
          v167 = *(v13 + 80);
          v45 = a2[-5];
          *v40 = *v12;
          *(v13 + 80) = v45;
        }

        *v12 = v132;
        a2[-5] = v167;
      }

LABEL_51:
      v50 = v16->n128_u64[0];
      v51 = v41->n128_u64[0];
      if (v16->n128_u64[0] >= v30->n128_u64[0])
      {
        if (v51 < v50)
        {
          v137 = *v16;
          v172 = v16[1];
          v53 = v41[1];
          *v16 = *v41;
          v16[1] = v53;
          *v41 = v137;
          v41[1] = v172;
          if (v16->n128_u64[0] < v30->n128_u64[0])
          {
            v138 = *v30;
            v173 = v30[1];
            v54 = v16[1];
            *v30 = *v16;
            v30[1] = v54;
            *v16 = v138;
            v16[1] = v173;
          }
        }
      }

      else
      {
        if (v51 >= v50)
        {
          v139 = *v30;
          v174 = v30[1];
          v55 = v16[1];
          *v30 = *v16;
          v30[1] = v55;
          *v16 = v139;
          v16[1] = v174;
          if (v41->n128_u64[0] >= v16->n128_u64[0])
          {
            goto LABEL_60;
          }

          v136 = *v16;
          v171 = v16[1];
          v56 = v41[1];
          *v16 = *v41;
          v16[1] = v56;
        }

        else
        {
          v136 = *v30;
          v171 = v30[1];
          v52 = v41[1];
          *v30 = *v41;
          v30[1] = v52;
        }

        *v41 = v136;
        v41[1] = v171;
      }

LABEL_60:
      v140 = *v13;
      v175 = *(v13 + 16);
      v57 = v16[1];
      *v13 = *v16;
      *(v13 + 16) = v57;
      *v16 = v140;
      v16[1] = v175;
      --a4;
      v26 = *v13;
      if ((a5 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_62:
      v58 = 0;
      v118 = *(v13 + 24);
      v116 = *(v13 + 8);
      do
      {
        v59 = *(v13 + v58 + 32);
        v58 += 32;
      }

      while (v59 < v26);
      v60 = v13 + v58;
      v61 = a2;
      if (v58 == 32)
      {
        v61 = a2;
        do
        {
          if (v60 >= v61)
          {
            break;
          }

          v63 = v61[-2].n128_i64[0];
          v61 -= 2;
        }

        while (v63 >= v26);
      }

      else
      {
        do
        {
          v62 = v61[-2].n128_i64[0];
          v61 -= 2;
        }

        while (v62 >= v26);
      }

      v13 += v58;
      if (v60 < v61)
      {
        v64 = v61;
        do
        {
          v141 = *v13;
          v176 = *(v13 + 16);
          v65 = v64[1];
          *v13 = *v64;
          *(v13 + 16) = v65;
          *v64 = v141;
          v64[1] = v176;
          do
          {
            v66 = *(v13 + 32);
            v13 += 32;
          }

          while (v66 < v26);
          do
          {
            v67 = v64[-2].n128_i64[0];
            v64 -= 2;
          }

          while (v67 >= v26);
        }

        while (v13 < v64);
      }

      if (v13 - 32 != a1)
      {
        v68 = *(v13 - 16);
        *a1 = *(v13 - 32);
        *(a1 + 16) = v68;
      }

      *(v13 - 32) = v26;
      *(v13 - 8) = v118;
      *(v13 - 24) = v116;
      if (v60 < v61)
      {
        goto LABEL_81;
      }

      v69 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *>(a1, (v13 - 32), v116);
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *>(v13, a2, v70))
      {
        a2 = (v13 - 32);
        if (!v69)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v69)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,false>(a1, (v13 - 32), a3, a4, a5 & 1);
        a5 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v81 = (v13 + 32);
      v86 = *(v13 + 32);
      v87 = (v13 + 64);
      v88 = *(v13 + 64);
      if (v86 >= *v13)
      {
        if (v88 < v86)
        {
          v147 = *v81;
          v182 = *(v13 + 48);
          v102 = *(v13 + 80);
          *v81 = *v87;
          *(v13 + 48) = v102;
          result = v147;
          *v87 = v147;
          *(v13 + 80) = v182;
          if (*(v13 + 32) < *v13)
          {
            v148 = *v13;
            v183 = *(v13 + 16);
            v103 = *(v13 + 48);
            *v13 = *v81;
            *(v13 + 16) = v103;
            result = v148;
            *v81 = v148;
            *(v13 + 48) = v183;
          }
        }
      }

      else
      {
        if (v88 < v86)
        {
          v144 = *v13;
          v179 = *(v13 + 16);
          v89 = *(v13 + 80);
          *v13 = *v87;
          *(v13 + 16) = v89;
          goto LABEL_150;
        }

        v151 = *v13;
        v186 = *(v13 + 16);
        v110 = *(v13 + 48);
        *v13 = *v81;
        *(v13 + 16) = v110;
        result = v151;
        *v81 = v151;
        *(v13 + 48) = v186;
        if (*(v13 + 64) < *(v13 + 32))
        {
          v144 = *v81;
          v179 = *(v13 + 48);
          v111 = *(v13 + 80);
          *v81 = *v87;
          *(v13 + 48) = v111;
LABEL_150:
          result = v144;
          *v87 = v144;
          *(v13 + 80) = v179;
        }
      }

      if (v10->n128_u64[0] >= v87->n128_u64[0])
      {
        return result;
      }

      v152 = *v87;
      v187 = *(v13 + 80);
      v112 = a2[-1];
      *v87 = *v10;
      *(v13 + 80) = v112;
      result = v152;
      *v10 = v152;
      a2[-1] = v187;
      if (v87->n128_u64[0] >= v81->n128_u64[0])
      {
        return result;
      }

      v153 = *v81;
      v188 = *(v13 + 48);
      v113 = *(v13 + 80);
      *v81 = *v87;
      *(v13 + 48) = v113;
      result = v153;
      *v87 = v153;
      *(v13 + 80) = v188;
LABEL_154:
      if (*(v13 + 32) < *v13)
      {
        v154 = *v13;
        v189 = *(v13 + 16);
        v114 = v81[1];
        *v13 = *v81;
        *(v13 + 16) = v114;
        result = v154;
        *v81 = v154;
        v81[1] = v189;
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,0>(v13, (v13 + 32), (v13 + 64), (v13 + 96), a2 - 2, result).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v81 = (v13 + 32);
  v82 = *(v13 + 32);
  v84 = a2[-2].n128_u64[0];
  v79 = a2 - 2;
  v83 = v84;
  if (v82 >= *v13)
  {
    if (v83 >= v82)
    {
      return result;
    }

    v146 = *v81;
    v181 = *(v13 + 48);
    v101 = v79[1];
    *v81 = *v79;
    *(v13 + 48) = v101;
    result = v146;
    *v79 = v146;
    v79[1] = v181;
    goto LABEL_154;
  }

  if (v83 < v82)
  {
    goto LABEL_108;
  }

  v150 = *v13;
  v185 = *(v13 + 16);
  v108 = *(v13 + 48);
  *v13 = *v81;
  *(v13 + 16) = v108;
  result = v150;
  *v81 = v150;
  *(v13 + 48) = v185;
  if (v79->n128_u64[0] < *(v13 + 32))
  {
    v143 = *v81;
    v178 = *(v13 + 48);
    v109 = v79[1];
    *v81 = *v79;
    *(v13 + 48) = v109;
    goto LABEL_109;
  }

  return result;
}

__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,0>(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 *a5, __n128 result)
{
  v6 = a2->n128_u64[0];
  v7 = a3->n128_u64[0];
  if (a2->n128_u64[0] >= a1->n128_u64[0])
  {
    if (v7 < v6)
    {
      v10 = *a2;
      result = a2[1];
      v11 = a3[1];
      *a2 = *a3;
      a2[1] = v11;
      *a3 = v10;
      a3[1] = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        v12 = *a1;
        result = a1[1];
        v13 = a2[1];
        *a1 = *a2;
        a1[1] = v13;
        *a2 = v12;
        a2[1] = result;
      }
    }
  }

  else
  {
    if (v7 < v6)
    {
      v8 = *a1;
      result = a1[1];
      v9 = a3[1];
      *a1 = *a3;
      a1[1] = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = result;
      goto LABEL_10;
    }

    v14 = *a1;
    result = a1[1];
    v15 = a2[1];
    *a1 = *a2;
    a1[1] = v15;
    *a2 = v14;
    a2[1] = result;
    if (a3->n128_u64[0] < a2->n128_u64[0])
    {
      v8 = *a2;
      result = a2[1];
      v16 = a3[1];
      *a2 = *a3;
      a2[1] = v16;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (a4->n128_u64[0] < a3->n128_u64[0])
  {
    v17 = *a3;
    result = a3[1];
    v18 = a4[1];
    *a3 = *a4;
    a3[1] = v18;
    *a4 = v17;
    a4[1] = result;
    if (a3->n128_u64[0] < a2->n128_u64[0])
    {
      v19 = *a2;
      result = a2[1];
      v20 = a3[1];
      *a2 = *a3;
      a2[1] = v20;
      *a3 = v19;
      a3[1] = result;
      if (a2->n128_u64[0] < a1->n128_u64[0])
      {
        v21 = *a1;
        result = a1[1];
        v22 = a2[1];
        *a1 = *a2;
        a1[1] = v22;
        *a2 = v21;
        a2[1] = result;
      }
    }
  }

  if (a5->n128_u64[0] < a4->n128_u64[0])
  {
    v23 = *a4;
    result = a4[1];
    v24 = a5[1];
    *a4 = *a5;
    a4[1] = v24;
    *a5 = v23;
    a5[1] = result;
    if (a4->n128_u64[0] < a3->n128_u64[0])
    {
      v25 = *a3;
      result = a3[1];
      v26 = a4[1];
      *a3 = *a4;
      a3[1] = v26;
      *a4 = v25;
      a4[1] = result;
      if (a3->n128_u64[0] < a2->n128_u64[0])
      {
        v27 = *a2;
        result = a2[1];
        v28 = a3[1];
        *a2 = *a3;
        a2[1] = v28;
        *a3 = v27;
        a3[1] = result;
        if (a2->n128_u64[0] < a1->n128_u64[0])
        {
          v29 = *a1;
          result = a1[1];
          v30 = a2[1];
          *a1 = *a2;
          a1[1] = v30;
          *a2 = v29;
          a2[1] = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *>(uint64_t a1, uint64_t *a2, __n128 a3)
{
  v3 = (a2 - a1) >> 5;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v7 = (a1 + 32);
      v8 = *(a1 + 32);
      v10 = *(a2 - 4);
      v5 = a2 - 4;
      v9 = v10;
      if (v8 < *a1)
      {
        if (v9 >= v8)
        {
          v46 = *a1;
          v45 = *(a1 + 16);
          v47 = *(a1 + 48);
          *a1 = *v7;
          *(a1 + 16) = v47;
          *v7 = v46;
          *(a1 + 48) = v45;
          if (*v5 >= *(a1 + 32))
          {
            return 1;
          }

          v12 = *v7;
          v11 = *(a1 + 48);
          v48 = *(v5 + 1);
          *v7 = *v5;
          *(a1 + 48) = v48;
          goto LABEL_14;
        }

LABEL_13:
        v12 = *a1;
        v11 = *(a1 + 16);
        v13 = *(v5 + 1);
        *a1 = *v5;
        *(a1 + 16) = v13;
LABEL_14:
        *v5 = v12;
        *(v5 + 1) = v11;
        return 1;
      }

      if (v9 >= v8)
      {
        return 1;
      }

      v31 = *v7;
      v30 = *(a1 + 48);
      v32 = *(v5 + 1);
      *v7 = *v5;
      *(a1 + 48) = v32;
      *v5 = v31;
      *(v5 + 1) = v30;
      if (*(a1 + 32) >= *a1)
      {
        return 1;
      }

      goto LABEL_52;
    }

    if (v3 != 4)
    {
      if (v3 == 5)
      {
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,0>(a1, (a1 + 32), (a1 + 64), (a1 + 96), a2 - 2, a3);
        return 1;
      }

      goto LABEL_15;
    }

    v7 = (a1 + 32);
    v22 = *(a1 + 32);
    v23 = (a1 + 64);
    v24 = *(a1 + 64);
    v25 = (a2 - 4);
    v26 = *a1;
    if (v22 >= *a1)
    {
      if (v24 < v22)
      {
        v40 = *v7;
        v39 = *(a1 + 48);
        v41 = *(a1 + 80);
        *v7 = *v23;
        *(a1 + 48) = v41;
        *v23 = v40;
        *(a1 + 80) = v39;
        if (v7->n128_u64[0] < v26)
        {
          v43 = *a1;
          v42 = *(a1 + 16);
          v44 = *(a1 + 48);
          *a1 = *v7;
          *(a1 + 16) = v44;
          *v7 = v43;
          *(a1 + 48) = v42;
        }
      }
    }

    else
    {
      if (v24 < v22)
      {
        v28 = *a1;
        v27 = *(a1 + 16);
        v29 = *(a1 + 80);
        *a1 = *v23;
        *(a1 + 16) = v29;
LABEL_48:
        *v23 = v28;
        *(a1 + 80) = v27;
        goto LABEL_49;
      }

      v62 = *a1;
      v61 = *(a1 + 16);
      v63 = *(a1 + 48);
      *a1 = *v7;
      *(a1 + 16) = v63;
      *v7 = v62;
      *(a1 + 48) = v61;
      if (v24 < *(a1 + 32))
      {
        v28 = *v7;
        v27 = *(a1 + 48);
        v64 = *(a1 + 80);
        *v7 = *v23;
        *(a1 + 48) = v64;
        goto LABEL_48;
      }
    }

LABEL_49:
    if (v25->n128_u64[0] >= v23->n128_u64[0])
    {
      return 1;
    }

    v66 = *v23;
    v65 = *(a1 + 80);
    v67 = *(a2 - 1);
    *v23 = *v25;
    *(a1 + 80) = v67;
    *v25 = v66;
    *(a2 - 1) = v65;
    if (v23->n128_u64[0] >= v7->n128_u64[0])
    {
      return 1;
    }

    v69 = *v7;
    v68 = *(a1 + 48);
    v70 = *(a1 + 80);
    *v7 = *v23;
    *(a1 + 48) = v70;
    *v23 = v69;
    *(a1 + 80) = v68;
    if (*(a1 + 32) >= *a1)
    {
      return 1;
    }

LABEL_52:
    v72 = *a1;
    v71 = *(a1 + 16);
    v73 = v7[1];
    *a1 = *v7;
    *(a1 + 16) = v73;
    *v7 = v72;
    v7[1] = v71;
    return 1;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v6 = *(a2 - 4);
    v5 = a2 - 4;
    if (v6 >= *a1)
    {
      return 1;
    }

    goto LABEL_13;
  }

LABEL_15:
  v14 = (a1 + 64);
  v15 = *(a1 + 64);
  v16 = (a1 + 32);
  v17 = *(a1 + 32);
  v18 = *a1;
  if (v17 >= *a1)
  {
    if (v15 < v17)
    {
      v34 = *v16;
      v33 = *(a1 + 48);
      v35 = *(a1 + 80);
      *v16 = *v14;
      *(a1 + 48) = v35;
      *v14 = v34;
      *(a1 + 80) = v33;
      if (v16->n128_u64[0] < v18)
      {
        v37 = *a1;
        v36 = *(a1 + 16);
        v38 = *(a1 + 48);
        *a1 = *v16;
        *(a1 + 16) = v38;
        *v16 = v37;
        *(a1 + 48) = v36;
      }
    }
  }

  else
  {
    if (v15 >= v17)
    {
      v50 = *a1;
      v49 = *(a1 + 16);
      v51 = *(a1 + 48);
      *a1 = *v16;
      *(a1 + 16) = v51;
      *v16 = v50;
      *(a1 + 48) = v49;
      if (v15 >= *(a1 + 32))
      {
        goto LABEL_35;
      }

      v20 = *v16;
      v19 = *(a1 + 48);
      v52 = *(a1 + 80);
      *v16 = *v14;
      *(a1 + 48) = v52;
    }

    else
    {
      v20 = *a1;
      v19 = *(a1 + 16);
      v21 = *(a1 + 80);
      *a1 = *v14;
      *(a1 + 16) = v21;
    }

    *v14 = v20;
    *(a1 + 80) = v19;
  }

LABEL_35:
  v53 = (a1 + 96);
  if ((a1 + 96) == a2)
  {
    return 1;
  }

  v54 = 0;
  v55 = 0;
  while (1)
  {
    v57 = *v53;
    if (*v53 < v14->n128_u64[0])
    {
      v74 = *(v53 + 1);
      v75 = v53[3];
      v58 = v54;
      do
      {
        v59 = a1 + v58;
        v60 = *(a1 + v58 + 80);
        *(v59 + 96) = *(a1 + v58 + 64);
        *(v59 + 112) = v60;
        if (v58 == -64)
        {
          v56 = a1;
          goto LABEL_38;
        }

        v58 -= 32;
      }

      while (v57 < *(v59 + 32));
      v56 = a1 + v58 + 96;
LABEL_38:
      *v56 = v57;
      *(v56 + 8) = v74;
      *(v56 + 24) = v75;
      if (++v55 == 8)
      {
        return v53 + 4 == a2;
      }
    }

    v14 = v53;
    v54 += 32;
    v53 += 4;
    if (v53 == a2)
    {
      return 1;
    }
  }
}

__int128 *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::CapacityProfile::Event *,operations_research::sat::CapacityProfile::Event *>(char *a1, char *a2, __int128 *a3)
{
  if (a1 == a2)
  {
    return a3;
  }

  v3 = (a2 - a1) >> 5;
  if (v3 >= 2)
  {
    v4 = (v3 - 2) >> 1;
    v5 = v4;
    do
    {
      v6 = 32 * v5;
      if (v4 >= (32 * v5) >> 5)
      {
        v7 = (v6 >> 4) | 1;
        v8 = &a1[32 * v7];
        if ((v6 >> 4) + 2 >= v3)
        {
          v11 = &a1[v6];
          v12 = *v11;
          if (*v8 >= *v11)
          {
            goto LABEL_15;
          }
        }

        else
        {
          v9 = *v8;
          v10 = *(v8 + 4);
          if (*v8 <= v10)
          {
            v9 = *(v8 + 4);
          }

          if (*v8 < v10)
          {
            v8 += 32;
            v7 = (v6 >> 4) + 2;
          }

          v11 = &a1[v6];
          v12 = *v11;
          if (v9 >= *v11)
          {
LABEL_15:
            v56 = *(v11 + 8);
            v59 = *(v11 + 3);
            while (1)
            {
              v15 = v11;
              v11 = v8;
              v16 = *(v8 + 1);
              *v15 = *v8;
              *(v15 + 1) = v16;
              if (v4 < v7)
              {
                break;
              }

              v17 = (2 * v7) | 1;
              v8 = &a1[32 * v17];
              v7 = 2 * v7 + 2;
              if (v7 < v3)
              {
                v13 = *v8;
                v14 = *(v8 + 4);
                if (*v8 <= v14)
                {
                  v13 = *(v8 + 4);
                }

                if (*v8 >= v14)
                {
                  v7 = v17;
                }

                else
                {
                  v8 += 32;
                }

                if (v13 < v12)
                {
                  break;
                }
              }

              else
              {
                v7 = v17;
                if (*v8 < v12)
                {
                  break;
                }
              }
            }

            *v11 = v12;
            *(v11 + 3) = v59;
            *(v11 + 8) = v56;
          }
        }
      }

      v30 = v5-- <= 0;
    }

    while (!v30);
  }

  i = a2;
  if (a2 != a3)
  {
    if (v3 < 2)
    {
      i = a2;
      do
      {
        if (*i < *a1)
        {
          v20 = *i;
          v19 = i[1];
          v21 = *(a1 + 1);
          *i = *a1;
          i[1] = v21;
          *a1 = v20;
          *(a1 + 1) = v19;
        }

        i += 2;
      }

      while (i != a3);
      goto LABEL_59;
    }

    v22 = a1 + 64;
    for (i = a2; i != a3; i += 2)
    {
      if (*i < *a1)
      {
        v24 = *i;
        v23 = i[1];
        v25 = *(a1 + 1);
        *i = *a1;
        i[1] = v25;
        *a1 = v24;
        *(a1 + 1) = v23;
        v26 = *(a1 + 4);
        if (a2 - a1 == 64)
        {
          v27 = a1 + 32;
          v28 = 1;
          v29 = *a1;
          if (v26 >= *a1)
          {
            goto LABEL_48;
          }
        }

        else
        {
          v30 = v26 < *v22;
          if (v26 <= *v22)
          {
            v26 = *v22;
          }

          if (v30)
          {
            v27 = a1 + 64;
          }

          else
          {
            v27 = a1 + 32;
          }

          if (v30)
          {
            v28 = 2;
          }

          else
          {
            v28 = 1;
          }

          v29 = *a1;
          if (v26 >= *a1)
          {
LABEL_48:
            v57 = *(a1 + 8);
            v60 = *(a1 + 3);
            v31 = a1;
            while (1)
            {
              v34 = v31;
              v31 = v27;
              v35 = *(v27 + 1);
              *v34 = *v27;
              *(v34 + 1) = v35;
              if (((v3 - 2) >> 1) < v28)
              {
                break;
              }

              v36 = (2 * v28) | 1;
              v27 = &a1[32 * v36];
              v28 = 2 * v28 + 2;
              if (v28 < v3)
              {
                v32 = *v27;
                v33 = *(v27 + 4);
                if (*v27 <= v33)
                {
                  v32 = *(v27 + 4);
                }

                if (*v27 >= v33)
                {
                  v28 = v36;
                }

                else
                {
                  v27 += 32;
                }

                if (v32 < v29)
                {
                  break;
                }
              }

              else
              {
                v28 = v36;
                if (*v27 < v29)
                {
                  break;
                }
              }
            }

            *v31 = v29;
            *(v31 + 3) = v60;
            *(v31 + 8) = v57;
          }
        }
      }
    }
  }

LABEL_59:
  if (v3 >= 2)
  {
    do
    {
      v38 = 0;
      v58 = *a1;
      v61 = *(a1 + 1);
      v39 = (v3 - 2) >> 1;
      v40 = a1;
      do
      {
        while (1)
        {
          v45 = &v40[32 * v38];
          v43 = v45 + 32;
          v46 = (2 * v38) | 1;
          v38 = 2 * v38 + 2;
          if (v38 < v3)
          {
            break;
          }

          v38 = v46;
          v47 = *(v45 + 3);
          *v40 = *v43;
          *(v40 + 1) = v47;
          v40 = v45 + 32;
          if (v46 > v39)
          {
            goto LABEL_71;
          }
        }

        v42 = *(v45 + 8);
        v41 = v45 + 64;
        if (*(v41 - 4) >= v42)
        {
          v38 = v46;
        }

        else
        {
          v43 = v41;
        }

        v44 = *(v43 + 1);
        *v40 = *v43;
        *(v40 + 1) = v44;
        v40 = v43;
      }

      while (v38 <= v39);
LABEL_71:
      a2 -= 32;
      if (v43 == a2)
      {
        *v43 = v58;
        *(v43 + 1) = v61;
      }

      else
      {
        v48 = *(a2 + 1);
        *v43 = *a2;
        *(v43 + 1) = v48;
        *a2 = v58;
        *(a2 + 1) = v61;
        v49 = (v43 - a1 + 32) >> 5;
        v30 = v49 < 2;
        v50 = v49 - 2;
        if (!v30)
        {
          v51 = v50 >> 1;
          v52 = &a1[32 * v51];
          v53 = *v43;
          if (*v52 < *v43)
          {
            v63 = *(v43 + 3);
            v62 = *(v43 + 8);
            do
            {
              v54 = v43;
              v43 = v52;
              v55 = *(v52 + 1);
              *v54 = *v52;
              *(v54 + 1) = v55;
              if (!v51)
              {
                break;
              }

              v51 = (v51 - 1) >> 1;
              v52 = &a1[32 * v51];
            }

            while (*v52 < v53);
            *v43 = v53;
            *(v43 + 8) = v62;
            *(v43 + 3) = v63;
          }
        }
      }

      v30 = v3-- <= 2;
    }

    while (!v30);
  }

  return i;
}

uint64_t operations_research::IntegerPriorityQueue<operations_research::sat::CapacityProfile::QueueElement,std::less<operations_research::sat::CapacityProfile::QueueElement>>::IntegerPriorityQueue(uint64_t a1, int a2)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  if (a2 == -1)
  {
    __x = 0;
    v4 = -1;
LABEL_3:
    std::vector<int>::__append((a1 + 32), v4, &__x);
    return a1;
  }

  std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(a1 + 8, a2 + 1);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  __x = 0;
  v8 = (v7 - v6) >> 2;
  v4 = a2 - v8;
  if (a2 > v8)
  {
    goto LABEL_3;
  }

  if (a2 >= v8)
  {
    return a1;
  }

  *(a1 + 40) = v6 + 4 * a2;
  return a1;
}

void sub_23CB7B3F0(_Unwind_Exception *exception_object)
{
  v4 = v1[4];
  if (v4)
  {
    v1[5] = v4;
    operator delete(v4);
    v5 = *v2;
    if (!*v2)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else
  {
    v5 = *v2;
    if (!*v2)
    {
      goto LABEL_3;
    }
  }

  v1[2] = v5;
  operator delete(v5);
  _Unwind_Resume(exception_object);
}

void std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 4)
  {
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v11 = 16 * a2;
      bzero(*(a1 + 8), 16 * a2);
      v4 += v11;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = (v4 - *a1) >> 4;
    if ((v5 + a2) >> 60)
    {
      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v6 = v3 - *a1;
    v7 = v6 >> 3;
    if (v6 >> 3 <= v5 + a2)
    {
      v7 = v5 + a2;
    }

    if (v6 >= 0x7FFFFFFFFFFFFFF0)
    {
      v8 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = v7;
    }

    if (v8)
    {
      if (!(v8 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v12 = (16 * v5);
    if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = 16 * a2;
      bzero(v12, 16 * a2);
      v10 = &v12[v9];
    }

    else
    {
      v10 = v12;
    }

    v13 = *a1;
    v14 = *(a1 + 8) - *a1;
    v15 = &v12[-v14];
    memcpy(v15, *a1, v14);
    *a1 = v15;
    *(a1 + 8) = v10;
    *(a1 + 16) = 0;
    if (v13)
    {

      operator delete(v13);
    }
  }
}

void std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::ProbingRectangle::ProbingRectangle(std::vector<operations_research::sat::RectangleInRange> const&)::$_0 &,operations_research::sat::ProbingRectangle::IntervalPoint *,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
LABEL_1:
  v8 = a2 - 2;
  v9 = a2 - 4;
  v10 = a2 - 6;
  v11 = result;
  while (1)
  {
    result = v11;
    v12 = (a2 - v11) >> 4;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return;
      }

      if (v12 == 2)
      {
        v83 = a2 - 2;
        v84 = *(a2 - 2);
        if (v84 < *v11 || *v11 >= v84 && *(a2 - 2) < *(v11 + 8))
        {
          v179 = *v11;
          v85 = *v83;
          *(v11 + 8) = *(a2 - 2);
          *v11 = v85;
          *(a2 - 2) = v179.n128_u32[2];
          *v83 = v179.n128_u64[0];
        }

        return;
      }

      goto LABEL_9;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ProbingRectangle::ProbingRectangle(std::vector<operations_research::sat::RectangleInRange> const&)::$_0 &,operations_research::sat::ProbingRectangle::IntervalPoint *,0>(v11, (v11 + 16), (v11 + 32), (a2 - 2));
      return;
    }

    if (v12 == 5)
    {
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ProbingRectangle::ProbingRectangle(std::vector<operations_research::sat::RectangleInRange> const&)::$_0 &,operations_research::sat::ProbingRectangle::IntervalPoint *,0>(v11, (v11 + 16), (v11 + 32), v11 + 48);
      v86 = a2 - 2;
      v87 = *(a2 - 2);
      v88 = *(v11 + 48);
      if (v87 < v88 || v88 >= v87 && *(a2 - 2) < *(v11 + 56))
      {
        v180 = *(v11 + 48);
        v89 = *v86;
        *(v11 + 56) = *(a2 - 2);
        *(v11 + 48) = v89;
        *(a2 - 2) = DWORD2(v180);
        *v86 = v180;
        v90 = *(v11 + 48);
        v91 = *(v11 + 32);
        if (v90 < v91 || v91 >= v90 && *(v11 + 56) < *(v11 + 40))
        {
          v181 = *(v11 + 32);
          *(v11 + 32) = *(v11 + 48);
          *(v11 + 40) = *(v11 + 56);
          *(v11 + 48) = v181;
          *(v11 + 56) = DWORD2(v181);
          v92 = *(v11 + 32);
          v93 = *(v11 + 16);
          if (v92 < v93 || v93 >= v92 && *(v11 + 40) < *(v11 + 24))
          {
            v182 = *(v11 + 16);
            *(v11 + 16) = *(v11 + 32);
            *(v11 + 24) = *(v11 + 40);
            *(v11 + 32) = v182;
            *(v11 + 40) = DWORD2(v182);
            v94 = *(v11 + 16);
            if (v94 < *v11 || *v11 >= v94 && *(v11 + 24) < *(v11 + 8))
            {
              v183 = *v11;
              *v11 = *(v11 + 16);
              *(v11 + 8) = *(v11 + 24);
              *(v11 + 16) = v183.n128_u64[0];
              *(v11 + 24) = v183.n128_u32[2];
            }
          }
        }
      }

      return;
    }

LABEL_9:
    if (v12 <= 23)
    {
      v95 = v11 + 16;
      v97 = v11 == a2 || v95 == a2;
      if (a4)
      {
        if (v97)
        {
          return;
        }

        v98 = 0;
        v99 = v11;
LABEL_224:
        v101 = v99;
        v99 = v95;
        v102 = *(v101 + 16);
        if (v102 >= *v101)
        {
          if (*v101 < v102)
          {
            goto LABEL_223;
          }

          v103 = *(v101 + 24);
          if (v103 >= *(v101 + 8))
          {
            goto LABEL_223;
          }
        }

        else
        {
          v103 = *(v101 + 24);
        }

        *v99 = *v101;
        *(v99 + 8) = *(v101 + 8);
        v100 = v11;
        if (v101 == v11)
        {
          goto LABEL_222;
        }

        v104 = v98;
        while (1)
        {
          v105 = v11 + v104;
          v106 = *(v11 + v104 - 16);
          if (v102 >= v106)
          {
            if (v106 < v102)
            {
              v100 = v11 + v104;
LABEL_222:
              *v100 = v102;
              *(v100 + 8) = v103;
LABEL_223:
              v95 = v99 + 16;
              v98 += 16;
              if ((v99 + 16) == a2)
              {
                return;
              }

              goto LABEL_224;
            }

            if (v103 >= *(v105 - 8))
            {
              v100 = v101;
              goto LABEL_222;
            }
          }

          v101 -= 16;
          *v105 = *(v11 + v104 - 16);
          *(v105 + 8) = *(v11 + v104 - 8);
          v104 -= 16;
          if (!v104)
          {
            v100 = v11;
            goto LABEL_222;
          }
        }
      }

      if (v97)
      {
        return;
      }

      while (2)
      {
        v147 = result;
        result = v95;
        v148 = *(v147 + 16);
        if (v148 >= *v147)
        {
          if (*v147 >= v148)
          {
            v149 = *(v147 + 24);
            if (v149 < *(v147 + 8))
            {
              goto LABEL_306;
            }
          }
        }

        else
        {
          v149 = *(v147 + 24);
          do
          {
            do
            {
LABEL_306:
              v150 = v147;
              *(v147 + 16) = *v147;
              *(v147 + 24) = *(v147 + 8);
              v152 = *(v147 - 16);
              v147 -= 16;
              v151 = v152;
            }

            while (v148 < v152);
          }

          while (v151 >= v148 && v149 < *(v150 - 8));
          *v150 = v148;
          *(v150 + 8) = v149;
        }

        v95 = result + 16;
        if ((result + 16) == a2)
        {
          return;
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v11 == a2)
      {
        return;
      }

      v107 = (v12 - 2) >> 1;
      v108 = v107;
      while (2)
      {
        v110 = v108;
        v111 = 16 * v108;
        if (v107 >= (16 * v108) >> 4)
        {
          v112 = (v111 >> 3) | 1;
          v113 = v11 + 16 * v112;
          if ((v111 >> 3) + 2 < v12)
          {
            v114 = *(v113 + 16);
            if (*v113 < v114 || v114 >= *v113 && *(v113 + 8) < *(v113 + 24))
            {
              v113 += 16;
              v112 = (v111 >> 3) + 2;
            }
          }

          v115 = v11 + v111;
          v116 = *(v11 + v111);
          if (*v113 >= v116)
          {
            if (v116 < *v113)
            {
              v117 = *(v115 + 8);
              goto LABEL_252;
            }

            v117 = *(v115 + 8);
            if (*(v113 + 8) >= v117)
            {
LABEL_252:
              v118 = *v113;
              *(v115 + 8) = *(v113 + 8);
              *v115 = v118;
              if (v107 >= v112)
              {
                while (1)
                {
                  v120 = 2 * v112;
                  v112 = (2 * v112) | 1;
                  v109 = v11 + 16 * v112;
                  v121 = v120 + 2;
                  if (v121 < v12)
                  {
                    v122 = *(v109 + 16);
                    if (*v109 < v122 || v122 >= *v109 && *(v109 + 8) < *(v109 + 24))
                    {
                      v109 += 16;
                      v112 = v121;
                    }
                  }

                  if (*v109 < v116 || v116 >= *v109 && *(v109 + 8) < v117)
                  {
                    break;
                  }

                  v119 = *v109;
                  *(v113 + 8) = *(v109 + 8);
                  *v113 = v119;
                  v113 = v109;
                  if (v107 < v112)
                  {
                    goto LABEL_240;
                  }
                }
              }

              v109 = v113;
LABEL_240:
              *v109 = v116;
              *(v109 + 8) = v117;
            }
          }
        }

        v108 = v110 - 1;
        if (v110)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v124 = 0;
        v184 = *v11;
        v125 = v11;
        do
        {
          v127 = v125;
          v128 = v125 + 16 * v124;
          v125 = v128 + 16;
          v129 = 2 * v124;
          v124 = (2 * v124) | 1;
          v130 = v129 + 2;
          if (v130 < v12)
          {
            v131 = *(v128 + 32);
            v132 = *(v128 + 16);
            if (v132 < v131 || v131 >= v132 && *(v128 + 24) < *(v128 + 40))
            {
              v125 = v128 + 32;
              v124 = v130;
            }
          }

          v126 = *v125;
          *(v127 + 8) = *(v125 + 8);
          *v127 = v126;
        }

        while (v124 <= ((v12 - 2) >> 1));
        a2 -= 2;
        if (v125 == a2)
        {
          *(v125 + 8) = v184.n128_u32[2];
          *v125 = v184.n128_u64[0];
        }

        else
        {
          v133 = *a2;
          *(v125 + 8) = *(a2 + 2);
          *v125 = v133;
          *(a2 + 2) = v184.n128_u32[2];
          *a2 = v184.n128_u64[0];
          v134 = (v125 - v11 + 16) >> 4;
          v135 = v134 - 2;
          if (v134 >= 2)
          {
            v136 = v135 >> 1;
            v137 = v11 + 16 * (v135 >> 1);
            v138 = *v125;
            if (*v137 < *v125)
            {
              v139 = *(v125 + 8);
              goto LABEL_278;
            }

            if (v138 >= *v137)
            {
              v139 = *(v125 + 8);
              if (*(v137 + 8) < v139)
              {
LABEL_278:
                v140 = *v137;
                *(v125 + 8) = *(v137 + 8);
                *v125 = v140;
                if (v135 >= 2)
                {
                  while (1)
                  {
                    v143 = v136 - 1;
                    v136 = (v136 - 1) >> 1;
                    v141 = v11 + 16 * v136;
                    if (*v141 >= v138 && (v138 < *v141 || *(v141 + 8) >= v139))
                    {
                      break;
                    }

                    v142 = *v141;
                    *(v137 + 8) = *(v141 + 8);
                    *v137 = v142;
                    v137 = v11 + 16 * v136;
                    if (v143 <= 1)
                    {
                      goto LABEL_280;
                    }
                  }
                }

                v141 = v137;
LABEL_280:
                *v141 = v138;
                *(v141 + 8) = v139;
              }
            }
          }
        }

        if (v12-- <= 2)
        {
          return;
        }

        continue;
      }
    }

    v13 = (v11 + 16 * (v12 >> 1));
    v14 = v13;
    if (v12 >= 0x81)
    {
      v15 = v13->n128_u64[0];
      if (v13->n128_u64[0] < *v11 || *v11 >= v15 && v13->n128_u32[2] < *(v11 + 8))
      {
        if (*v8 < v15 || v15 >= *v8 && *(a2 - 2) < v13->n128_u32[2])
        {
          v155 = *v11;
          v16 = *v8;
          *(v11 + 8) = *(a2 - 2);
          *v11 = v16;
        }

        else
        {
          v161 = *v11;
          v23 = v13->n128_u64[0];
          *(v11 + 8) = v13->n128_u32[2];
          *v11 = v23;
          v13->n128_u32[2] = v161.n128_u32[2];
          v13->n128_u64[0] = v161.n128_u64[0];
          if (*v8 >= v13->n128_u64[0] && (v13->n128_u64[0] < *v8 || *(a2 - 2) >= v13->n128_u32[2]))
          {
            goto LABEL_33;
          }

          v155 = *v13;
          v24 = *v8;
          v13->n128_u32[2] = *(a2 - 2);
          v13->n128_u64[0] = v24;
        }

        *(a2 - 2) = v155.n128_u32[2];
        *v8 = v155.n128_u64[0];
        goto LABEL_33;
      }

      if (*v8 < v15 || v15 >= *v8 && *(a2 - 2) < v13->n128_u32[2])
      {
        v157 = *v13;
        v19 = *v8;
        v13->n128_u32[2] = *(a2 - 2);
        v13->n128_u64[0] = v19;
        *(a2 - 2) = v157.n128_u32[2];
        *v8 = v157.n128_u64[0];
        if (v13->n128_u64[0] < *v11 || *v11 >= v13->n128_u64[0] && v13->n128_u32[2] < *(v11 + 8))
        {
          v158 = *v11;
          v20 = v13->n128_u64[0];
          *(v11 + 8) = v13->n128_u32[2];
          *v11 = v20;
          v13->n128_u32[2] = v158.n128_u32[2];
          v13->n128_u64[0] = v158.n128_u64[0];
        }
      }

LABEL_33:
      v25 = (v11 + 16);
      v26 = *(v11 + 16);
      v27 = v13 - 1;
      v28 = v13[-1].n128_i64[0];
      if (v28 < v26 || v26 >= v28 && v13[-1].n128_u32[2] < *(v11 + 24))
      {
        if (*v9 < v28 || v28 >= *v9 && *(a2 - 6) < v13[-1].n128_u32[2])
        {
          v162 = *v25;
          v29 = *v9;
          *(v11 + 24) = *(a2 - 6);
          v25->n128_u64[0] = v29;
        }

        else
        {
          v166 = *v25;
          v34 = v27->n128_u64[0];
          *(v11 + 24) = v13[-1].n128_u32[2];
          v25->n128_u64[0] = v34;
          v13[-1].n128_u32[2] = v166.n128_u32[2];
          v27->n128_u64[0] = v166.n128_u64[0];
          if (*v9 >= v27->n128_u64[0] && (v27->n128_u64[0] < *v9 || *(a2 - 6) >= v13[-1].n128_u32[2]))
          {
            goto LABEL_51;
          }

          v162 = *v27;
          v35 = *v9;
          v13[-1].n128_u32[2] = *(a2 - 6);
          v27->n128_u64[0] = v35;
        }

        *(a2 - 6) = v162.n128_u32[2];
        *v9 = v162.n128_u64[0];
        goto LABEL_51;
      }

      if (*v9 < v28 || v28 >= *v9 && *(a2 - 6) < v13[-1].n128_u32[2])
      {
        v163 = *v27;
        v30 = *v9;
        v13[-1].n128_u32[2] = *(a2 - 6);
        v27->n128_u64[0] = v30;
        *(a2 - 6) = v163.n128_u32[2];
        *v9 = v163.n128_u64[0];
        if (v27->n128_u64[0] < v25->n128_u64[0] || v25->n128_u64[0] >= v27->n128_u64[0] && v13[-1].n128_u32[2] < *(v11 + 24))
        {
          v164 = *v25;
          v31 = v27->n128_u64[0];
          *(v11 + 24) = v13[-1].n128_u32[2];
          v25->n128_u64[0] = v31;
          v13[-1].n128_u32[2] = v164.n128_u32[2];
          v27->n128_u64[0] = v164.n128_u64[0];
        }
      }

LABEL_51:
      v36 = (v11 + 32);
      v37 = *(v11 + 32);
      v40 = v13[1].n128_i64[0];
      v38 = v13 + 1;
      v39 = v40;
      if (v40 < v37 || v37 >= v39 && v38->n128_u32[2] < *(v11 + 40))
      {
        if (*v10 < v39 || v39 >= *v10 && *(a2 - 10) < v38->n128_u32[2])
        {
          v167 = *v36;
          v41 = *v10;
          *(v11 + 40) = *(a2 - 10);
          v36->n128_u64[0] = v41;
        }

        else
        {
          v170 = *v36;
          v44 = v38->n128_u64[0];
          *(v11 + 40) = v38->n128_u32[2];
          v36->n128_u64[0] = v44;
          v38->n128_u32[2] = v170.n128_u32[2];
          v38->n128_u64[0] = v170.n128_u64[0];
          if (*v10 >= v38->n128_u64[0] && (v38->n128_u64[0] < *v10 || *(a2 - 10) >= v38->n128_u32[2]))
          {
            goto LABEL_64;
          }

          v167 = *v38;
          v45 = *v10;
          v38->n128_u32[2] = *(a2 - 10);
          v38->n128_u64[0] = v45;
        }

        *(a2 - 10) = v167.n128_u32[2];
        *v10 = v167.n128_u64[0];
        goto LABEL_64;
      }

      if (*v10 < v39 || v39 >= *v10 && *(a2 - 10) < v38->n128_u32[2])
      {
        v168 = *v38;
        v42 = *v10;
        v38->n128_u32[2] = *(a2 - 10);
        v38->n128_u64[0] = v42;
        *(a2 - 10) = v168.n128_u32[2];
        *v10 = v168.n128_u64[0];
        if (v38->n128_u64[0] < v36->n128_u64[0] || v36->n128_u64[0] >= v38->n128_u64[0] && v38->n128_u32[2] < *(v11 + 40))
        {
          v169 = *v36;
          v43 = v38->n128_u64[0];
          *(v11 + 40) = v38->n128_u32[2];
          v36->n128_u64[0] = v43;
          v38->n128_u32[2] = v169.n128_u32[2];
          v38->n128_u64[0] = v169.n128_u64[0];
        }
      }

LABEL_64:
      v46 = v14->n128_u64[0];
      if (v14->n128_u64[0] >= v27->n128_u64[0] && (v27->n128_u64[0] < v46 || v14->n128_u32[2] >= v27->n128_u32[2]))
      {
        if (v38->n128_u64[0] < v46 || v46 >= v38->n128_u64[0] && v38->n128_u32[2] < v14->n128_u32[2])
        {
          v172 = *v14;
          v14->n128_u64[0] = v38->n128_u64[0];
          v14->n128_u32[2] = v38->n128_u32[2];
          v38->n128_u64[0] = v172.n128_u64[0];
          v38->n128_u32[2] = v172.n128_u32[2];
          if (v14->n128_u64[0] < v27->n128_u64[0] || v27->n128_u64[0] >= v14->n128_u64[0] && v14->n128_u32[2] < v27->n128_u32[2])
          {
            v173 = *v27;
            v27->n128_u64[0] = v14->n128_u64[0];
            v27->n128_u32[2] = v14->n128_u32[2];
            v14->n128_u64[0] = v173.n128_u64[0];
            v14->n128_u32[2] = v173.n128_u32[2];
          }
        }

        goto LABEL_77;
      }

      if (v38->n128_u64[0] < v46 || v46 >= v38->n128_u64[0] && v38->n128_u32[2] < v14->n128_u32[2])
      {
        v171 = *v27;
        v27->n128_u64[0] = v38->n128_u64[0];
        v27->n128_u32[2] = v38->n128_u32[2];
      }

      else
      {
        v174 = *v27;
        v27->n128_u64[0] = v14->n128_u64[0];
        v27->n128_u32[2] = v14->n128_u32[2];
        v14->n128_u64[0] = v174.n128_u64[0];
        v14->n128_u32[2] = v174.n128_u32[2];
        if (v38->n128_u64[0] >= v174.n128_i64[0] && (v174.n128_i64[0] < v38->n128_u64[0] || v38->n128_u32[2] >= v14->n128_u32[2]))
        {
          goto LABEL_77;
        }

        v171 = *v14;
        v14->n128_u64[0] = v38->n128_u64[0];
        v14->n128_u32[2] = v38->n128_u32[2];
      }

      v38->n128_u64[0] = v171.n128_u64[0];
      v38->n128_u32[2] = v171.n128_u32[2];
LABEL_77:
      v175 = *v11;
      v47 = v14->n128_u64[0];
      *(v11 + 8) = v14->n128_u32[2];
      *v11 = v47;
      v14->n128_u32[2] = v175.n128_u32[2];
      v14->n128_u64[0] = v175.n128_u64[0];
      goto LABEL_78;
    }

    v17 = *v11;
    if (*v11 < v14->n128_u64[0] || v14->n128_u64[0] >= v17 && *(v11 + 8) < v14->n128_u32[2])
    {
      if (*v8 < v17 || v17 >= *v8 && *(a2 - 2) < *(v11 + 8))
      {
        v156 = *v14;
        v18 = *v8;
        v14->n128_u32[2] = *(a2 - 2);
        v14->n128_u64[0] = v18;
LABEL_45:
        *(a2 - 2) = v156.n128_u32[2];
        *v8 = v156.n128_u64[0];
        goto LABEL_78;
      }

      v165 = *v14;
      v32 = *v11;
      v14->n128_u32[2] = *(v11 + 8);
      v14->n128_u64[0] = v32;
      *(v11 + 8) = v165.n128_u32[2];
      *v11 = v165.n128_u64[0];
      if (*v8 < *v11 || *v11 >= *v8 && *(a2 - 2) < *(v11 + 8))
      {
        v156 = *v11;
        v33 = *v8;
        *(v11 + 8) = *(a2 - 2);
        *v11 = v33;
        goto LABEL_45;
      }
    }

    else if (*v8 < v17 || v17 >= *v8 && *(a2 - 2) < *(v11 + 8))
    {
      v159 = *v11;
      v21 = *v8;
      *(v11 + 8) = *(a2 - 2);
      *v11 = v21;
      *(a2 - 2) = v159.n128_u32[2];
      *v8 = v159.n128_u64[0];
      if (*v11 < v14->n128_u64[0] || v14->n128_u64[0] >= *v11 && *(v11 + 8) < v14->n128_u32[2])
      {
        v160 = *v14;
        v22 = *v11;
        v14->n128_u32[2] = *(v11 + 8);
        v14->n128_u64[0] = v22;
        *(v11 + 8) = v160.n128_u32[2];
        *v11 = v160.n128_u64[0];
      }
    }

LABEL_78:
    --a3;
    v48 = *v11;
    if (a4)
    {
      goto LABEL_82;
    }

    v49 = *(v11 - 16);
    if (v49 < v48)
    {
      goto LABEL_82;
    }

    if (v48 < v49)
    {
      v50 = *(v11 + 8);
      goto LABEL_166;
    }

    v50 = *(v11 + 8);
    if (*(v11 - 8) >= v50)
    {
LABEL_166:
      v68 = *v8;
      if (v48 < *v8 || v68 >= v48 && v50 < *(a2 - 2))
      {
        do
        {
          v70 = *(v11 + 16);
          v11 += 16;
          v69 = v70;
        }

        while (v48 >= v70 && (v69 < v48 || v50 >= *(v11 + 8)));
      }

      else
      {
          ;
        }
      }

      i = a2;
      if (v11 < a2)
      {
        for (i = (a2 - 2); v48 < v68 || v68 >= v48 && v50 < *(i + 8); i -= 16)
        {
          v72 = *(i - 16);
          v68 = v72;
        }
      }

      while (v11 < i)
      {
        v177 = *v11;
        v73 = *i;
        *(v11 + 8) = *(i + 8);
        *v11 = v73;
        *(i + 8) = v177.n128_u32[2];
        *i = v177.n128_u64[0];
        do
        {
          v75 = *(v11 + 16);
          v11 += 16;
          v74 = v75;
        }

        while (v48 >= v75 && (v74 < v48 || v50 >= *(v11 + 8)));
        do
        {
          do
          {
            v77 = *(i - 16);
            i -= 16;
            v76 = v77;
          }

          while (v48 < v77);
        }

        while (v76 >= v48 && v50 < *(i + 8));
      }

      if (v11 - 16 != result)
      {
        v78 = *(v11 - 16);
        *(result + 8) = *(v11 - 8);
        *result = v78;
      }

      a4 = 0;
      *(v11 - 16) = v48;
      *(v11 - 8) = v50;
    }

    else
    {
LABEL_82:
      v51 = 0;
      v52 = *(v11 + 8);
      while (1)
      {
        v53 = *(v11 + v51 + 16);
        if (v53 >= v48 && (v48 < v53 || *(v11 + v51 + 24) >= v52))
        {
          break;
        }

        v51 += 16;
      }

      v54 = v11 + v51 + 16;
      if (v51)
      {
        v55 = *v8;
        for (j = (a2 - 2); v55 >= v48 && (v48 < v55 || *(j + 8) >= v52); j -= 16)
        {
          v57 = *(j - 16);
          v55 = v57;
        }
      }

      else
      {
        j = a2;
        if (v54 < a2)
        {
          v58 = *v8;
          j = (a2 - 2);
          if (*v8 >= v48)
          {
            j = (a2 - 2);
            do
            {
              if (v48 < v58)
              {
                if (v54 >= j)
                {
                  break;
                }
              }

              else if (v54 >= j || *(j + 8) < v52)
              {
                break;
              }

              v67 = *(j - 16);
              j -= 16;
              v58 = v67;
            }

            while (v67 >= v48);
          }
        }
      }

      v11 = v54;
      if (v54 < j)
      {
        v59 = j;
        do
        {
          v176 = *v11;
          v60 = *v59;
          *(v11 + 8) = *(v59 + 8);
          *v11 = v60;
          *(v59 + 8) = v176.n128_u32[2];
          *v59 = v176.n128_u64[0];
          do
          {
            do
            {
              v62 = *(v11 + 16);
              v11 += 16;
              v61 = v62;
            }

            while (v62 < v48);
          }

          while (v48 >= v61 && *(v11 + 8) < v52);
          do
          {
            v64 = *(v59 - 16);
            v59 -= 16;
            v63 = v64;
          }

          while (v64 >= v48 && (v48 < v63 || *(v59 + 8) >= v52));
        }

        while (v11 < v59);
      }

      if (v11 - 16 != result)
      {
        v65 = *(v11 - 16);
        *(result + 8) = *(v11 - 8);
        *result = v65;
      }

      *(v11 - 16) = v48;
      *(v11 - 8) = v52;
      if (v54 < j)
      {
        goto LABEL_112;
      }

      v66 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ProbingRectangle::ProbingRectangle(std::vector<operations_research::sat::RectangleInRange> const&)::$_0 &,operations_research::sat::ProbingRectangle::IntervalPoint *>(result, (v11 - 16));
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ProbingRectangle::ProbingRectangle(std::vector<operations_research::sat::RectangleInRange> const&)::$_0 &,operations_research::sat::ProbingRectangle::IntervalPoint *>(v11, a2))
      {
        a2 = (v11 - 16);
        if (v66)
        {
          return;
        }

        goto LABEL_1;
      }

      if (!v66)
      {
LABEL_112:
        std::__introsort<std::_ClassicAlgPolicy,operations_research::sat::ProbingRectangle::ProbingRectangle(std::vector<operations_research::sat::RectangleInRange> const&)::$_0 &,operations_research::sat::ProbingRectangle::IntervalPoint *,false>(result, v11 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }
  }

  v79 = (v11 + 16);
  v80 = *(v11 + 16);
  if (v80 < *v11 || *v11 >= v80 && *(v11 + 24) < *(v11 + 8))
  {
    v81 = *(a2 - 2);
    if (v81 < v80 || v80 >= v81 && *(a2 - 2) < *(v11 + 24))
    {
      v178 = *v11;
      v82 = *v8;
      *(v11 + 8) = *(a2 - 2);
      *v11 = v82;
    }

    else
    {
      v187 = *v11;
      *v11 = *v79;
      *(v11 + 8) = *(v11 + 24);
      *v79 = v187.n128_u64[0];
      *(v11 + 24) = v187.n128_u32[2];
      v153 = *(v11 + 16);
      if (*v8 >= v153 && (v153 < *v8 || *(a2 - 2) >= *(v11 + 24)))
      {
        return;
      }

      v178 = *v79;
      v154 = *v8;
      *(v11 + 24) = *(a2 - 2);
      *v79 = v154;
    }

    *(a2 - 2) = v178.n128_u32[2];
    *v8 = v178.n128_u64[0];
    return;
  }

  v144 = *(a2 - 2);
  if (v144 < v80 || v80 >= v144 && *(a2 - 2) < *(v11 + 24))
  {
    v185 = *v79;
    v145 = *v8;
    *(v11 + 24) = *(a2 - 2);
    *v79 = v145;
    *(a2 - 2) = DWORD2(v185);
    *v8 = v185;
    v146 = *(v11 + 16);
    if (v146 < *v11 || *v11 >= v146 && *(v11 + 24) < *(v11 + 8))
    {
      v186 = *v11;
      *v11 = *v79;
      *(v11 + 8) = *(v11 + 24);
      *v79 = v186.n128_u64[0];
      *(v11 + 24) = v186.n128_u32[2];
    }
  }
}

__n128 std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ProbingRectangle::ProbingRectangle(std::vector<operations_research::sat::RectangleInRange> const&)::$_0 &,operations_research::sat::ProbingRectangle::IntervalPoint *,0>(__n128 *a1, __n128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a2->n128_u64[0];
  if (a2->n128_u64[0] < a1->n128_u64[0] || a1->n128_u64[0] >= v4 && a2->n128_u32[2] < a1->n128_u32[2])
  {
    if (*a3 < v4 || v4 >= *a3 && *(a3 + 2) < a2->n128_u32[2])
    {
      result = *a1;
      v14 = *a1;
      v6 = *(a3 + 2);
      a1->n128_u64[0] = *a3;
      a1->n128_u32[2] = v6;
    }

    else
    {
      result = *a1;
      v17 = *a1;
      v9 = a2->n128_u32[2];
      a1->n128_u64[0] = a2->n128_u64[0];
      a1->n128_u32[2] = v9;
      a2->n128_u64[0] = v17.n128_u64[0];
      a2->n128_u32[2] = v17.n128_u32[2];
      if (*a3 >= a2->n128_u64[0] && (a2->n128_u64[0] < *a3 || *(a3 + 2) >= a2->n128_u32[2]))
      {
        goto LABEL_14;
      }

      result = *a2;
      v14 = *a2;
      v10 = *(a3 + 2);
      a2->n128_u64[0] = *a3;
      a2->n128_u32[2] = v10;
    }

    *a3 = v14.n128_u64[0];
    *(a3 + 2) = v14.n128_u32[2];
  }

  else if (*a3 < v4 || v4 >= *a3 && *(a3 + 2) < a2->n128_u32[2])
  {
    result = *a2;
    v15 = *a2;
    v7 = *(a3 + 2);
    a2->n128_u64[0] = *a3;
    a2->n128_u32[2] = v7;
    *a3 = v15.n128_u64[0];
    *(a3 + 2) = v15.n128_u32[2];
    if (a2->n128_u64[0] < a1->n128_u64[0] || a1->n128_u64[0] >= a2->n128_u64[0] && a2->n128_u32[2] < a1->n128_u32[2])
    {
      result = *a1;
      v16 = *a1;
      v8 = a2->n128_u32[2];
      a1->n128_u64[0] = a2->n128_u64[0];
      a1->n128_u32[2] = v8;
      a2->n128_u64[0] = v16.n128_u64[0];
      a2->n128_u32[2] = v16.n128_u32[2];
    }
  }

LABEL_14:
  if (*a4 < *a3 || *a3 >= *a4 && *(a4 + 8) < *(a3 + 2))
  {
    result = *a3;
    v18 = *a3;
    v11 = *(a4 + 8);
    *a3 = *a4;
    *(a3 + 2) = v11;
    *a4 = v18;
    *(a4 + 8) = DWORD2(v18);
    if (*a3 < a2->n128_u64[0] || a2->n128_u64[0] >= *a3 && *(a3 + 2) < a2->n128_u32[2])
    {
      result = *a2;
      v19 = *a2;
      v12 = *(a3 + 2);
      a2->n128_u64[0] = *a3;
      a2->n128_u32[2] = v12;
      *a3 = v19.n128_u64[0];
      *(a3 + 2) = v19.n128_u32[2];
      if (a2->n128_u64[0] < a1->n128_u64[0] || a1->n128_u64[0] >= a2->n128_u64[0] && a2->n128_u32[2] < a1->n128_u32[2])
      {
        result = *a1;
        v20 = *a1;
        v13 = a2->n128_u32[2];
        a1->n128_u64[0] = a2->n128_u64[0];
        a1->n128_u32[2] = v13;
        a2->n128_u64[0] = v20.n128_u64[0];
        a2->n128_u32[2] = v20.n128_u32[2];
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ProbingRectangle::ProbingRectangle(std::vector<operations_research::sat::RectangleInRange> const&)::$_0 &,operations_research::sat::ProbingRectangle::IntervalPoint *>(__int128 *a1, __int128 *a2)
{
  v2 = a2 - a1;
  if (v2 <= 2)
  {
    if (v2 < 2)
    {
      return 1;
    }

    if (v2 == 2)
    {
      v15 = a2 - 1;
      v16 = *(a2 - 2);
      if (v16 >= *a1)
      {
        if (*a1 < v16)
        {
          return 1;
        }

        if (*(a2 - 2) >= *(a1 + 2))
        {
          return 1;
        }
      }

      v47 = *a1;
      v17 = *(a2 - 2);
      *a1 = *v15;
      goto LABEL_15;
    }

    goto LABEL_19;
  }

  if (v2 == 3)
  {
    v15 = a1 + 1;
    v18 = *(a1 + 2);
    v19 = a2 - 1;
    if (v18 < *a1 || *a1 >= v18 && *(a1 + 6) < *(a1 + 2))
    {
      v20 = *(a2 - 2);
      if (v20 < v18 || v18 >= v20 && *(a2 - 2) < *(a1 + 6))
      {
        v48 = *a1;
        v21 = *(a2 - 2);
        *a1 = *v19;
        *(a1 + 2) = v21;
      }

      else
      {
        v53 = *a1;
        *a1 = *v15;
        *(a1 + 2) = *(a1 + 6);
        *v15 = v53;
        *(a1 + 6) = DWORD2(v53);
        v31 = *(a1 + 2);
        if (*v19 >= v31)
        {
          if (v31 < *v19)
          {
            return 1;
          }

          if (*(a2 - 2) >= *(a1 + 6))
          {
            return 1;
          }
        }

        v48 = *v15;
        v32 = *(a2 - 2);
        *v15 = *v19;
        *(a1 + 6) = v32;
      }

      *v19 = v48;
      *(a2 - 2) = DWORD2(v48);
      return 1;
    }

    v27 = *(a2 - 2);
    if (v27 >= v18)
    {
      if (v18 < v27)
      {
        return 1;
      }

      if (*(a2 - 2) >= *(a1 + 6))
      {
        return 1;
      }
    }

    v50 = *v15;
    v28 = *(a2 - 2);
    *v15 = *v19;
    *(a1 + 6) = v28;
    *v19 = v50;
    *(a2 - 2) = DWORD2(v50);
    v29 = *(a1 + 2);
    if (v29 >= *a1)
    {
      if (*a1 < v29)
      {
        return 1;
      }

      if (*(a1 + 6) >= *(a1 + 2))
      {
        return 1;
      }
    }

    v47 = *a1;
    *a1 = *v15;
    v17 = *(a1 + 6);
LABEL_15:
    *(a1 + 2) = v17;
    *v15 = v47;
    *(v15 + 2) = DWORD2(v47);
    return 1;
  }

  if (v2 == 4)
  {
    std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ProbingRectangle::ProbingRectangle(std::vector<operations_research::sat::RectangleInRange> const&)::$_0 &,operations_research::sat::ProbingRectangle::IntervalPoint *,0>(a1, a1 + 1, a1 + 2, (a2 - 1));
    return 1;
  }

  if (v2 != 5)
  {
LABEL_19:
    v22 = (a1 + 2);
    v23 = *a1;
    v24 = (a1 + 1);
    v25 = *(a1 + 2);
    if (v25 >= *a1 && (v23 < v25 || *(a1 + 6) >= *(a1 + 2)))
    {
      v30 = *(a1 + 4);
      if (v30 < v25 || v25 >= v30 && *(a1 + 10) < *(a1 + 6))
      {
        v51 = *v24;
        v24->n128_u64[0] = *v22;
        *(a1 + 6) = *(a1 + 10);
        *v22 = v51.n128_u64[0];
        *(a1 + 10) = v51.n128_u32[2];
        if (v24->n128_u64[0] < v23 || v23 >= v24->n128_u64[0] && *(a1 + 6) < *(a1 + 2))
        {
          v52 = *a1;
          *a1 = v24->n128_u64[0];
          *(a1 + 2) = *(a1 + 6);
          v24->n128_u64[0] = v52.n128_u64[0];
          *(a1 + 6) = v52.n128_u32[2];
        }
      }

      goto LABEL_47;
    }

    v26 = *(a1 + 4);
    if (v26 < v25 || v25 >= v26 && *(a1 + 10) < *(a1 + 6))
    {
      v49 = *a1;
      *a1 = *v22;
      *(a1 + 2) = *(a1 + 10);
    }

    else
    {
      v54 = *a1;
      *a1 = v24->n128_u64[0];
      *(a1 + 2) = *(a1 + 6);
      v24->n128_u64[0] = v54.n128_u64[0];
      *(a1 + 6) = v54.n128_u32[2];
      v33 = *(a1 + 2);
      if (v26 >= v33 && (v33 < v26 || *(a1 + 10) >= *(a1 + 6)))
      {
        goto LABEL_47;
      }

      v49 = *v24;
      v24->n128_u64[0] = *v22;
      *(a1 + 6) = *(a1 + 10);
    }

    *v22 = v49.n128_u64[0];
    *(a1 + 10) = v49.n128_u32[2];
LABEL_47:
    v34 = (a1 + 3);
    if (a1 + 3 == a2)
    {
      return 1;
    }

    v35 = 0;
    v36 = 0;
LABEL_52:
    v38 = *v34;
    if (*v34 >= *v22)
    {
      if (*v22 < v38)
      {
        goto LABEL_51;
      }

      v39 = *(v34 + 8);
      if (v39 >= *(v22 + 8))
      {
        goto LABEL_51;
      }
    }

    else
    {
      v39 = *(v34 + 8);
    }

    *v34 = *v22;
    *(v34 + 8) = *(v22 + 8);
    v37 = a1;
    if (v22 == a1)
    {
      goto LABEL_50;
    }

    v40 = v35;
    while (1)
    {
      v41 = a1 + v40;
      v42 = *(a1 + v40 + 16);
      if (v38 >= v42)
      {
        if (v42 < v38)
        {
          v37 = v22;
LABEL_50:
          *v37 = v38;
          *(v37 + 8) = v39;
          if (++v36 != 8)
          {
LABEL_51:
            v22 = v34;
            v35 += 16;
            v34 += 16;
            if (v34 == a2)
            {
              return 1;
            }

            goto LABEL_52;
          }

          return v34 + 16 == a2;
        }

        if (v39 >= *(v41 + 24))
        {
          v37 = a1 + v40 + 32;
          goto LABEL_50;
        }
      }

      v22 -= 16;
      *(v41 + 32) = *(a1 + v40 + 16);
      *(v41 + 40) = *(a1 + v40 + 24);
      v40 -= 16;
      if (v40 == -32)
      {
        v37 = a1;
        goto LABEL_50;
      }
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,operations_research::sat::ProbingRectangle::ProbingRectangle(std::vector<operations_research::sat::RectangleInRange> const&)::$_0 &,operations_research::sat::ProbingRectangle::IntervalPoint *,0>(a1, a1 + 1, a1 + 2, (a1 + 3));
  v6 = a2 - 1;
  v7 = *(a2 - 2);
  v8 = *(a1 + 6);
  if (v7 >= v8)
  {
    if (v8 < v7)
    {
      return 1;
    }

    if (*(a2 - 2) >= *(a1 + 14))
    {
      return 1;
    }
  }

  v43 = a1[3];
  v9 = *(a2 - 2);
  *(a1 + 6) = *v6;
  *(a1 + 14) = v9;
  *v6 = v43;
  *(a2 - 2) = DWORD2(v43);
  v10 = *(a1 + 6);
  v11 = *(a1 + 4);
  if (v10 >= v11)
  {
    if (v11 < v10)
    {
      return 1;
    }

    if (*(a1 + 14) >= *(a1 + 10))
    {
      return 1;
    }
  }

  v44 = a1[2];
  *(a1 + 4) = *(a1 + 6);
  *(a1 + 10) = *(a1 + 14);
  *(a1 + 6) = v44;
  *(a1 + 14) = DWORD2(v44);
  v12 = *(a1 + 4);
  v13 = *(a1 + 2);
  if (v12 < v13)
  {
    goto LABEL_10;
  }

  if (v13 < v12)
  {
    return 1;
  }

  if (*(a1 + 10) >= *(a1 + 6))
  {
    return 1;
  }

LABEL_10:
  v45 = a1[1];
  *(a1 + 2) = *(a1 + 4);
  *(a1 + 6) = *(a1 + 10);
  *(a1 + 4) = v45;
  *(a1 + 10) = DWORD2(v45);
  v14 = *(a1 + 2);
  if (v14 < *a1)
  {
    goto LABEL_11;
  }

  if (*a1 < v14)
  {
    return 1;
  }

  if (*(a1 + 6) < *(a1 + 2))
  {
LABEL_11:
    v46 = *a1;
    *a1 = *(a1 + 2);
    *(a1 + 2) = *(a1 + 6);
    *(a1 + 2) = v46.n128_u64[0];
    *(a1 + 6) = v46.n128_u32[2];
    return 1;
  }

  return 1;
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::sat::ProbingRectangle::Edge,4ul,std::allocator<operations_research::sat::ProbingRectangle::Edge>>::EmplaceBackSlow<operations_research::sat::ProbingRectangle::Edge const&>(void *a1, _DWORD *a2)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 61) & 3) != 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  operator new();
}

void absl::lts_20240722::inlined_vector_internal::Storage<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>,4ul,std::allocator<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>>::EmplaceBackSlow<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>(void *a1, void *a2)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  operator new();
}

void absl::lts_20240722::inlined_vector_internal::Storage<double,4ul,std::allocator<double>>::EmplaceBackSlow<double const&>(void *a1, void *a2)
{
  if ((*a1 & 1) != 0 && ((a1[2] >> 60) & 7) != 0)
  {
    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  operator new();
}

void operations_research::sat::GreedyFastDecreasingGcd(uint64_t *a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a1;
  v14 = 0;
  if (a2 < 2)
  {
    return;
  }

  if (v3 >= 0)
  {
    v4 = v3;
  }

  else
  {
    v4 = -v3;
  }

  v5 = 1;
  v6 = v4;
  for (i = 1; i < a2; v5 = ++i)
  {
    v8 = a1[v5];
    if (v8 < 0)
    {
      v8 = -v8;
    }

    if (v6 >= 0)
    {
      v9 = v6;
    }

    else
    {
      v9 = -v6;
    }

    if (v9 >= v8)
    {
      v6 = v8;
    }

    else
    {
      v6 = v9;
    }

    if (v9 <= v8)
    {
      v9 = v8;
    }

    if (!v6)
    {
      v6 = v9;
      if (v8 >= v4)
      {
        continue;
      }

LABEL_29:
      v14 = i;
      v4 = v8;
      continue;
    }

    v10 = v9 % v6;
    if (v10)
    {
      v11 = v10 >> __clz(__rbit64(v10));
      v12 = v6;
      do
      {
        v13 = v12 >> __clz(__rbit64(v12));
        v12 = v13 - v11;
        if (v11 > v13)
        {
          v12 = v11 - v13;
        }

        if (v11 >= v13)
        {
          v11 = v13;
        }
      }

      while (v12);
      v6 = v11 << __clz(__rbit64(v10 | v6));
    }

    if (v8 < v4)
    {
      goto LABEL_29;
    }
  }

  if (v4 != v6)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }
}

void sub_23CB7DB60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SolveDiophantine(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a6@<X8>)
{
  if (*a1 >= 0)
  {
    v7 = *a1;
  }

  else
  {
    v7 = -*a1;
  }

  if (a2 >= 2)
  {
    v8 = 1;
    for (i = 1; i < a2; v8 = ++i)
    {
      v10 = a1[v8];
      if ((v10 & 0x8000000000000000) != 0)
      {
        v10 = -v10;
      }

      if (v7 >= 0)
      {
        v11 = v7;
      }

      else
      {
        v11 = -v7;
      }

      if (v11 >= v10)
      {
        v7 = v10;
      }

      else
      {
        v7 = v11;
      }

      if (v11 > v10)
      {
        v10 = v11;
      }

      if (v7)
      {
        v12 = v10 % v7;
        if (v12)
        {
          v13 = v12 >> __clz(__rbit64(v12));
          v14 = v7;
          do
          {
            v15 = v14 >> __clz(__rbit64(v14));
            v14 = v15 - v13;
            if (v13 > v15)
            {
              v14 = v13 - v15;
            }

            if (v13 >= v15)
            {
              v13 = v15;
            }
          }

          while (v14);
          v7 = v13 << __clz(__rbit64(v12 | v7));
        }
      }

      else
      {
        v7 = v10;
      }
    }
  }

  if (a3 % v7)
  {
    *a6 = 0;
    *(a6 + 8) = 0u;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    *(a6 + 88) = 0u;
    *(a6 + 104) = 0u;
    *(a6 + 120) = 0;
  }

  else
  {
    operations_research::sat::GreedyFastDecreasingGcd(a1, a2, &v16);
    if (v16 != v17)
    {
      operator new();
    }

    *a6 = 257;
    *(a6 + 8) = 0u;
    *(a6 + 24) = 0u;
    *(a6 + 40) = 0u;
    *(a6 + 56) = 0u;
    *(a6 + 72) = 0u;
    *(a6 + 88) = 0u;
    *(a6 + 104) = 0u;
    *(a6 + 120) = 0;
    if (v16)
    {
      v17 = v16;
      operator delete(v16);
    }
  }
}

void sub_23CB7F08C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, uint64_t a23, void *a24)
{
  *(v26 + 64) = v27;
  std::__exception_guard_exceptions<std::vector<std::vector<int>>::__destroy_vector>::~__exception_guard_exceptions[abi:ne200100]((v29 - 112));
  v31 = *v24;
  if (*v24)
  {
    *(a9 + 40) = v31;
    operator delete(v31);
  }

  v32 = *v25;
  if (*v25)
  {
    *(a9 + 16) = v32;
    operator delete(v32);
  }

  operator delete(__p);
  operator delete(v28);
  std::vector<std::vector<int>>::~vector[abi:ne200100]((v29 - 160));
  if (a24)
  {
    operator delete(a24);
    v33 = *(v29 - 136);
    if (!v33)
    {
LABEL_7:
      _Unwind_Resume(a1);
    }
  }

  else
  {
    v33 = *(v29 - 136);
    if (!v33)
    {
      goto LABEL_7;
    }
  }

  *(v29 - 128) = v33;
  operator delete(v33);
  _Unwind_Resume(a1);
}

void *std::vector<std::vector<absl::lts_20240722::int128>>::__emplace_back_slow_path<int>(uint64_t a1, int *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3) + 1;
  if (v2 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v2)
  {
    v2 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v4 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v4 = v2;
  }

  if (v4)
  {
    if (v4 <= 0xAAAAAAAAAAAAAAALL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v5 = (8 * ((*(a1 + 8) - *a1) >> 3));
  v6 = *a2;
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  if (v6)
  {
    if ((v6 & 0x80000000) == 0)
    {
      operator new();
    }

    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
  }

  v7 = v5 + 3;
  v8 = *a1;
  v9 = *(a1 + 8) - *a1;
  v10 = v5 - v9;
  memcpy(v10, *a1, v9);
  *a1 = v10;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  if (v8)
  {
    operator delete(v8);
  }

  return v7;
}

void sub_23CB7F36C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  v5 = *v3;
  if (*v3)
  {
    *(v3 + 8) = v5;
    operator delete(v5);
  }

  std::__split_buffer<std::vector<int>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::vector<absl::lts_20240722::int128>>,std::vector<absl::lts_20240722::int128>*,std::vector<absl::lts_20240722::int128>*,std::vector<absl::lts_20240722::int128>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      v6 = v5[1];
      if (v6 != *v5)
      {
        if (((v6 - *v5) & 0x8000000000000000) == 0)
        {
          operator new();
        }

        std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
      }

      v5 += 3;
      a4 += 3;
    }

    while (v5 != a3);
  }

  return a4;
}

void sub_23CB7F474(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  if (*v9)
  {
    *(v9 + 8) = v11;
    operator delete(v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::vector<operations_research::sat::Literal>>,std::vector<operations_research::sat::Literal>*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void operations_research::sat::AddDisjunctive(unsigned int **a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = operations_research::sat::Model::GetOrCreate<operations_research::sat::SatParameters>(a2);
  v5 = v4;
  if (*(v4 + 212) >= (a1[1] - *a1) && *(v4 + 336) == 1)
  {
    v6 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(a2);
    v7 = *a1;
    v8 = a1[1];
    if (v8 != *a1)
    {
      v9 = v6;
      v10 = 0;
      v11 = 0;
      v12 = 2;
      do
      {
        v13 = v10;
        v10 = ++v11;
        v14 = (v8 - v7) >> 2;
        if (v14 > v11)
        {
          v15 = v12;
          v16 = v11;
          do
          {
            operations_research::sat::IntervalsRepository::CreateDisjunctivePrecedenceLiteral(v9, v7[v13], v7[v16]);
            v16 = v15;
            v7 = *a1;
            v8 = a1[1];
            v14 = (v8 - *a1) >> 2;
            ++v15;
          }

          while (v14 > v16);
        }

        ++v12;
      }

      while (v14 > v11);
    }
  }

  v32 = a2;
  v17 = operations_research::sat::Model::GetOrCreate<operations_research::sat::IntervalsRepository>(a2);
  v18 = v17;
  v19 = *a1;
  v20 = a1[1];
  if (*a1 == v20)
  {
LABEL_18:
    memset(__p, 0, sizeof(__p));
    if (v20 != v19)
    {
      if ((v20 - v19) <= 0xAAAAAAAAAAAAAAALL)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    operations_research::sat::AllDifferentOnBounds(__p, v34);
  }

  v21 = *a1;
  while (*(v17[5] + 4 * *v21) == -1)
  {
    v22 = v17[14] + 24 * *v21;
    v23 = *v22;
    v24 = *(v22 + 16);
    if (*v22 != -1)
    {
      v25 = *(v22 + 8);
      v26 = *(v17[4] + 40);
      v27 = 8 * v23;
      if (v24 + *(v26 + v27) * v25 != 1)
      {
        break;
      }

      v24 -= *(v26 + (v27 ^ 8)) * v25;
    }

    if (v24 != 1)
    {
      break;
    }

    if (++v21 == v20)
    {
      goto LABEL_18;
    }
  }

  operations_research::sat::Model::GetOrCreate<operations_research::sat::GenericLiteralWatcher>(v32);
  if ((a1[1] - *a1) < 9 || *(v5 + 273) != 1)
  {
    operations_research::sat::IntervalsRepository::GetOrCreateHelper(v18, a1, 1);
    if (a1[1] - *a1 == 8)
    {
      operator new();
    }

    operator new();
  }

  v28 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CombinedDisjunctive<true>>(v32);
  operations_research::sat::CombinedDisjunctive<true>::AddNoOverlap(v28, *a1, a1[1] - *a1);
  v29 = operations_research::sat::Model::GetOrCreate<operations_research::sat::CombinedDisjunctive<false>>(v32);
  v30 = *a1;
  v31 = a1[1] - *a1;

  operations_research::sat::CombinedDisjunctive<true>::AddNoOverlap(v29, v30, v31);
}

void sub_23CB80008(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, uint64_t a17, char a18)
{
  v21 = *(v18 + 48);
  if (v21)
  {
    *(v18 + 56) = v21;
    operator delete(v21);
  }

  operations_research::sat::AddDisjunctive(v19, v18);
  _Unwind_Resume(a1);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::CombinedDisjunctive<true>>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CombinedDisjunctive<true>>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CombinedDisjunctive<true>>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::CombinedDisjunctive<true>>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::CombinedDisjunctive<true>>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::CombinedDisjunctive<true>>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

void operations_research::sat::CombinedDisjunctive<true>::AddNoOverlap(void *a1, int *a2, uint64_t a3)
{
  v7 = a1[8];
  v8 = a1[9];
  v6 = (a1 + 8);
  v9 = v6[2];
  v14 = (v8 - v7) >> 5;
  v13 = a3;
  if (v8 >= v9)
  {
    v10 = std::vector<operations_research::sat::TaskSet>::__emplace_back_slow_path<unsigned long>(v6, &v13);
  }

  else
  {
    *v8 = 0;
    *(v8 + 8) = 0;
    *(v8 + 24) = 0;
    *(v8 + 16) = 0;
    if (a3)
    {
      if ((a3 & 0x80000000) == 0)
      {
        operator new();
      }

      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
    }

    v10 = v8 + 32;
    a1[9] = v8 + 32;
  }

  a1[9] = v10;
  std::vector<long long>::push_back[abi:ne200100]((a1 + 11), &operations_research::sat::kMinIntegerValue);
  if ((a3 & 0x3FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = 4 * a3;
    do
    {
      v12 = *a2++;
      std::vector<int>::push_back[abi:ne200100](a1[2] + 24 * v12, &v14);
      v11 -= 4;
    }

    while (v11);
  }
}

void sub_23CB803D0(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  *(v1 + 72) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t operations_research::sat::Model::GetOrCreate<operations_research::sat::CombinedDisjunctive<false>>(void *a1)
{
  v1 = a1[3];
  if (v1 > 1)
  {
    v2 = 0;
    _X11 = a1[5];
    __asm { PRFM            #4, [X11] }

    v8 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CombinedDisjunctive<false>>(void)::d) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + &gtl::FastTypeId<operations_research::sat::CombinedDisjunctive<false>>(void)::d));
    v9 = vdup_n_s8(v8 & 0x7F);
    v10 = ((v8 >> 7) ^ (_X11 >> 12)) & v1;
    v11 = *(_X11 + v10);
    v12 = vceq_s8(v11, v9);
    if (!v12)
    {
      goto LABEL_8;
    }

LABEL_5:
    v13 = a1[6];
    while (1)
    {
      v14 = (v10 + (__clz(__rbit64(v12)) >> 3)) & v1;
      if (*(v13 + 16 * v14) == &gtl::FastTypeId<operations_research::sat::CombinedDisjunctive<false>>(void)::d)
      {
        break;
      }

      v12 &= ((v12 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v12)
      {
LABEL_8:
        while (!*&vceq_s8(v11, 0x8080808080808080))
        {
          v2 += 8;
          v10 = (v2 + v10) & v1;
          v11 = *(_X11 + v10);
          v12 = vceq_s8(v11, v9);
          if (v12)
          {
            goto LABEL_5;
          }
        }

LABEL_20:
        operator new();
      }
    }

    v15 = (v13 + 16 * v14);
    if (!(_X11 + v14))
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (a1[4] < 2uLL)
    {
      goto LABEL_20;
    }

    v17 = a1[5];
    _ZF = v17 == &gtl::FastTypeId<operations_research::sat::CombinedDisjunctive<false>>(void)::d;
    v15 = &absl::lts_20240722::container_internal::kSooControl;
    v19 = v17 == &gtl::FastTypeId<operations_research::sat::CombinedDisjunctive<false>>(void)::d ? &absl::lts_20240722::container_internal::kSooControl : 0;
    if (_ZF)
    {
      v15 = a1 + 5;
    }

    if (!v19)
    {
      goto LABEL_20;
    }
  }

  return v15[1];
}

BOOL operations_research::sat::DisjunctiveWithTwoItems::Propagate(operations_research::sat::SchedulingConstraintHelper **this)
{
  if (!operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(this[1], 1))
  {
    return 0;
  }

  v2 = this[1];
  v3 = *(v2 + 19);
  v4 = *v3;
  if (*v3 != -1 && ((*(*(*(v2 + 3) + 24) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v4 & 0x3F ^ 1u)) & 1) != 0)
  {
    return 1;
  }

  v5 = v3[1];
  if (v5 != -1 && ((*(*(*(v2 + 3) + 24) + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v5 & 0x3F ^ 1u)) & 1) != 0)
  {
    return 1;
  }

  v7 = *(v2 + 31);
  v6 = *(v2 + 32);
  if (v7[1] > -*v6)
  {
    v8 = 1;
    v9 = 0;
    if (v4 == -1)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v10 = -v6[1];
  v11 = 1;
  if (*v7 > v10)
  {
    v8 = 0;
    v4 = v3[1];
    v9 = 1;
    if (v5 == -1)
    {
      goto LABEL_12;
    }

LABEL_11:
    if (((*(*(*(v2 + 3) + 24) + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      v13 = v8;
      goto LABEL_20;
    }

LABEL_12:
    v12 = v7[v9];
    v13 = v8;
    if (*(*(v2 + 30) + 8 * v8) < v12)
    {
      operations_research::sat::SchedulingConstraintHelper::ClearReason(v2);
      operations_research::sat::SchedulingConstraintHelper::AddReasonForBeingBefore(this[1], v9, v8);
      v14 = this[1];
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v14, v9);
      v15 = *(*(v14 + 19) + 4 * v9);
      if (v15 != -1)
      {
        v37 = v15 ^ 1;
        std::vector<int>::push_back[abi:ne200100](v14 + 496, &v37);
      }

      v16 = this[1];
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v16, v9);
      v17 = *(v16 + 25);
      v18 = *(v16 + 22);
      v19 = *(v16 + 16) + 24 * v9;
      if (*v19 == -1)
      {
        v22 = 0;
        v21 = -1;
      }

      else
      {
        v20 = *(v19 + 8);
        v21 = *v19 ^ (v20 >> 63) ^ 1;
        if (v20 >= 0)
        {
          v22 = *(v19 + 8);
        }

        else
        {
          v22 = -v20;
        }
      }

      v34 = *(v19 + 16);
      v37 = v21;
      v38 = v22;
      v39 = -v34;
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v16, (v17 + ((8 * v9) | (16 * v9))), -v12, (v18 + ((8 * v9) | (16 * v9))), &v37);
      if (!operations_research::sat::SchedulingConstraintHelper::IncreaseStartMin(this[1], v8, v12))
      {
        return 0;
      }

      v2 = this[1];
      v23 = *(*(v2 + 19) + 4 * v8);
      if (v23 == -1)
      {
        goto LABEL_22;
      }

LABEL_21:
      if ((*(*(*(v2 + 3) + 24) + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v23))
      {
        goto LABEL_22;
      }

      return 1;
    }

LABEL_20:
    v23 = v3[v13];
    if (v23 == -1)
    {
LABEL_22:
      v24 = -*(*(v2 + 32) + 8 * v13);
      if (-*(*(v2 + 33) + 8 * v9) <= v24)
      {
        return 1;
      }

      operations_research::sat::SchedulingConstraintHelper::ClearReason(v2);
      operations_research::sat::SchedulingConstraintHelper::AddReasonForBeingBefore(this[1], v9, v8);
      v25 = this[1];
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v25, v8);
      v26 = *(*(v25 + 19) + 4 * v13);
      if (v26 != -1)
      {
        v37 = v26 ^ 1;
        std::vector<int>::push_back[abi:ne200100](v25 + 496, &v37);
      }

      v27 = this[1];
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v27, v8);
      v28 = *(v27 + 10);
      v29 = *(v27 + 13);
      v30 = *(v27 + 16) + 24 * v13;
      if (*v30 == -1)
      {
        v33 = 0;
        v32 = -1;
      }

      else
      {
        v31 = *(v30 + 8);
        v32 = *v30 ^ (v31 >> 63) ^ 1;
        v33 = v31 >= 0 ? *(v30 + 8) : -v31;
      }

      v35 = *(v30 + 16);
      v37 = v32;
      v38 = v33;
      v39 = -v35;
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v27, (v28 + ((8 * v13) | (16 * v13))), v24, (v29 + ((8 * v13) | (16 * v13))), &v37);
      return operations_research::sat::SchedulingConstraintHelper::DecreaseEndMax(this[1], v9, v24) != 0;
    }

    goto LABEL_21;
  }

  return v11;
}

uint64_t operations_research::sat::DisjunctiveOverloadChecker::Propagate(operations_research::sat::SchedulingConstraintHelper **this)
{
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(this[1], 1);
  if (result)
  {
    started = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingShiftedStartMin(this[1], v3);
    if ((v5 & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      return 1;
    }

    v6 = started;
    v7 = v5;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = this[1];
    v12 = 0x8000000000000002;
    v13 = (started + 16 * v7);
    do
    {
      v16 = *v6;
      v17 = v6[1];
      v18 = *(v6 + 1);
      v19 = *(*(v11 + 19) + 4 * *v6);
      if (v19 == -1 || ((*(*(*(v11 + 3) + 24) + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v19 & 0x3F ^ 1)) & 1) == 0)
      {
        if (v18 < v12)
        {
          v14 = this[2] + 16 * v8;
          *v14 = v16;
          *(v14 + 1) = v17;
          *(v14 + 1) = v18;
          v11 = this[1];
          v12 += *(*(v11 + 29) + 8 * v16);
          v15 = -*(*(v11 + 33) + 8 * v16);
          if (v12 > v15)
          {
            v9 = v8 + 1;
          }

          ++v8;
          if (v12 > v15)
          {
            v10 = v12;
          }
        }

        else
        {
          if (v9 >= 1)
          {
            result = operations_research::sat::DisjunctiveOverloadChecker::PropagateSubwindow(this, v9, v10);
            if (!result)
            {
              return result;
            }
          }

          v9 = 0;
          v20 = this[2];
          *v20 = v16;
          *(v20 + 1) = v17;
          *(v20 + 1) = v18;
          v11 = this[1];
          v12 = *(*(v11 + 29) + 8 * v16) + v18;
          v8 = 1;
        }
      }

      v6 += 4;
    }

    while (v6 != v13);
    if (v9 < 1)
    {
      return 1;
    }

    result = operations_research::sat::DisjunctiveOverloadChecker::PropagateSubwindow(this, v9, v10);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t operations_research::sat::DisjunctiveOverloadChecker::PropagateSubwindow(void *a1, unsigned int a2, uint64_t a3)
{
  v4 = a1 + 4;
  a1[5] = a1[4];
  if (a2 < 1)
  {
    v7 = 0;
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v8 = 16 * a2;
    do
    {
      v9 = a1[2];
      v10 = *(v9 + v6);
      v11 = -*(*(a1[1] + 264) + 8 * v10);
      if (v11 < a3)
      {
        *(v9 + 16 * v7) = *(v9 + v6);
        *(a1[3] + 4 * v10) = v7;
        LODWORD(v127) = v10;
        *(&v127 + 1) = v11;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v4, &v127);
        ++v7;
      }

      v6 += 16;
    }

    while (v8 != v6);
  }

  operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::Reset(a1 + 14, v7);
  v13 = a1[4];
  v14 = a1[5];
  v15 = (v14 - 16);
  v16 = v13 != v14 && v15 > v13;
  if (v16)
  {
    v17 = v13 + 1;
    do
    {
      v12 = v17[-1];
      v17[-1] = *v15;
      *v15-- = v12;
    }

    while (v17++ < v15);
    v13 = a1[4];
    v14 = a1[5];
  }

  v120 = a1;
  if ((v14 - v13) >> 4 < 129)
  {
    v23 = 0;
    v20 = 0;
  }

  else
  {
    v19 = MEMORY[0x277D826F0];
    v20 = (v14 - v13) >> 4;
    while (1)
    {
      v21 = operator new(16 * v20, v19);
      if (v21)
      {
        break;
      }

      v22 = v20 >> 1;
      v16 = v20 > 1;
      v20 >>= 1;
      if (!v16)
      {
        v23 = 0;
        v20 = v22;
        goto LABEL_23;
      }
    }

    v23 = v21;
  }

LABEL_23:
  std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<operations_research::sat::TaskTime *>>(v13, v14, &v127, (v14 - v13) >> 4, v23, v20, v12);
  if (v23)
  {
    operator delete(v23);
  }

  v24 = a1;
  v25 = a1[4];
  v115 = a1[5];
  if (v25 == v115)
  {
    return 1;
  }

  v119 = v7;
  while (1)
  {
    v26 = *v25;
    v116 = v25;
    v27 = *(v25 + 1);
    v28 = v24[1];
    v29 = *(v28[19] + 4 * v26);
    if (v29 == -1)
    {
      v32 = *(v24[3] + 4 * v26);
      v33 = *(v28[29] + 8 * v26);
      goto LABEL_33;
    }

    v30 = *(*(v28[3] + 24) + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8));
    v31 = v29 & 0x3F;
    if (((v30 >> (v31 ^ 1u)) & 1) == 0)
    {
      break;
    }

LABEL_27:
    v25 = v116 + 4;
    if (v116 + 4 == v115)
    {
      return 1;
    }
  }

  v32 = *(v24[3] + 4 * v26);
  v33 = *(v28[29] + 8 * v26);
  if (((v30 >> v31) & 1) == 0)
  {
    operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::AddOrUpdateOptionalEvent((v24 + 7), v32, *(v24[2] + 16 * v32 + 8), v33);
    goto LABEL_34;
  }

LABEL_33:
  operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::AddOrUpdateEvent((v24 + 7), v32, *(v24[2] + 16 * v32 + 8), v33, v33);
LABEL_34:
  if (operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetEnvelope((v24 + 7)) <= v27)
  {
    v117 = v27;
    if (operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetOptionalEnvelope((v24 + 7)) > v27)
    {
      while (1)
      {
        operations_research::sat::SchedulingConstraintHelper::ClearReason(v24[1]);
        v125 = 0;
        *v126 = 0;
        operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetEventsWithOptionalEnvelopeGreaterThan((v24 + 7), v27, &v126[1], v126, &v125);
        v34 = v126[0];
        v35 = v24[1];
        v36 = v24[2];
        v37 = *(v36 + 16 * v126[0]);
        v38 = *(*(v35 + 19) + 4 * v37);
        if (v38 == -1 || ((*(*(*(v35 + 3) + 24) + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v38 & 0x3F ^ 1)) & 1) == 0)
        {
          v39 = v126[1];
          v40 = *(v36 + 16 * v126[1] + 8);
          v122 = v27 + ~v125;
          v123 = *(*(v35 + 29) + 8 * v37);
          if (v126[1] < v7)
          {
            v118 = *(v36 + 16 * v126[0]);
            v124 = *(v36 + 16 * v126[1] + 8);
            v121 = -v40;
            v41 = 16 * v126[1];
            do
            {
              v47 = *(v24[9] + 32 * operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetLeafFromEvent((v24 + 7), v39) + 16);
              if (v47 >= 1)
              {
                v48 = v24[1];
                v49 = *(v24[2] + v41);
                operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v48, v49);
                v50 = *(*(v48 + 19) + 4 * v49);
                if (v50 != -1)
                {
                  v51 = v50 ^ 1;
                  v53 = *(v48 + 63);
                  v52 = *(v48 + 64);
                  if (v53 >= v52)
                  {
                    v55 = *(v48 + 62);
                    v56 = v53 - v55;
                    v57 = (v53 - v55) >> 2;
                    v58 = v57 + 1;
                    if ((v57 + 1) >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v59 = v52 - v55;
                    if (v59 >> 1 > v58)
                    {
                      v58 = v59 >> 1;
                    }

                    if (v59 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v60 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v60 = v58;
                    }

                    if (v60)
                    {
                      if (!(v60 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v61 = (v53 - v55) >> 2;
                    v62 = (4 * v57);
                    v63 = (4 * v57 - 4 * v61);
                    *v62 = v51;
                    v54 = v62 + 1;
                    memcpy(v63, v55, v56);
                    *(v48 + 62) = v63;
                    *(v48 + 63) = v54;
                    *(v48 + 64) = 0;
                    if (v55)
                    {
                      operator delete(v55);
                    }

                    v24 = v120;
                    v7 = v119;
                  }

                  else
                  {
                    *v53 = v51;
                    v54 = v53 + 1;
                  }

                  *(v48 + 63) = v54;
                }

                v64 = v49;
                v65 = v24[1];
                if (*(*(v65 + 30) + 8 * v64) >= v124)
                {
                  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v65, v64);
                  v70 = (*(v65 + 22) + 24 * v64);
                  v71 = (*(v65 + 25) + 24 * v64);
                  v72 = (*(v65 + 16) + 24 * v64);
                  v73 = v65;
                  v74 = v121;
                }

                else
                {
                  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v65, v64);
                  v66 = *(v65 + 16) + 24 * v64;
                  if (*v66 == -1)
                  {
                    v69 = 0;
                    v68 = -1;
                  }

                  else
                  {
                    v67 = *(v66 + 8);
                    v68 = *v66 ^ (v67 >> 63) ^ 1;
                    if (v67 >= 0)
                    {
                      v69 = *(v66 + 8);
                    }

                    else
                    {
                      v69 = -v67;
                    }
                  }

                  v75 = *(v65 + 25);
                  v76 = *(v65 + 22);
                  v74 = -(v124 + v47);
                  v77 = -*(v66 + 16);
                  LODWORD(v127) = v68;
                  *(&v127 + 1) = v69;
                  v128 = v77;
                  v70 = (v75 + 24 * v64);
                  v71 = (v76 + 24 * v64);
                  v72 = &v127;
                  v73 = v65;
                }

                operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v73, v70, v74, v71, v72);
                operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v65, v64);
                v78 = *(v65 + 16) + 24 * v64;
                if (*v78 == -1)
                {
                  v44 = 0;
                  v43 = -1;
                }

                else
                {
                  v42 = *(v78 + 8);
                  v43 = *v78 ^ (v42 >> 63) ^ 1;
                  if (v42 >= 0)
                  {
                    v44 = *(v78 + 8);
                  }

                  else
                  {
                    v44 = -v42;
                  }
                }

                v45 = -*(v78 + 16);
                LODWORD(v127) = v43;
                *(&v127 + 1) = v44;
                v128 = v45;
                operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v65, &v127, -v47, (*(v65 + 25) + 24 * v64), (*(v65 + 10) + 24 * v64));
                v46 = v24[1];
                operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v46, v64);
                operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v46, (*(v46 + 13) + 24 * v64), v123 + v122, (*(v46 + 10) + 24 * v64), (*(v46 + 16) + 24 * v64));
              }

              v41 += 16;
              ++v39;
            }

            while (v7 != v39);
            v35 = v24[1];
            v27 = v117;
            v37 = v118;
            v40 = v124;
          }

          operations_research::sat::SchedulingConstraintHelper::AddEnergyAfterReason(v35, v37, v123, v40);
          v79 = v24[1];
          operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v79, v37);
          operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v79, (*(v79 + 13) + 24 * v37), v123 + v122, (*(v79 + 10) + 24 * v37), (*(v79 + 16) + 24 * v37));
          result = operations_research::sat::SchedulingConstraintHelper::PushTaskAbsence(v24[1], v37);
          if (!result)
          {
            return result;
          }

          v34 = v126[0];
        }

        operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::RemoveEvent((v24 + 7), v34);
        if (operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetOptionalEnvelope((v24 + 7)) <= v27)
        {
          goto LABEL_27;
        }
      }
    }

    goto LABEL_27;
  }

  operations_research::sat::SchedulingConstraintHelper::ClearReason(v24[1]);
  MaxEventWithEnvelopeGreaterThan = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetMaxEventWithEnvelopeGreaterThan((v24 + 7), v27);
  v82 = *(v24[2] + 16 * MaxEventWithEnvelopeGreaterThan + 8);
  EnvelopeOf = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetEnvelopeOf((v24 + 7), MaxEventWithEnvelopeGreaterThan);
  if (MaxEventWithEnvelopeGreaterThan < v7)
  {
    v84 = EnvelopeOf - 1;
    v85 = 16 * MaxEventWithEnvelopeGreaterThan;
    do
    {
      v96 = *(v24[9] + 32 * operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetLeafFromEvent((v24 + 7), MaxEventWithEnvelopeGreaterThan) + 16);
      if (v96 >= 1)
      {
        v98 = v24 + 1;
        v97 = v24[1];
        v99 = *(v98[1] + v85);
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v97, v99);
        v100 = *(*(v97 + 19) + 4 * v99);
        if (v100 != -1)
        {
          LODWORD(v127) = v100 ^ 1;
          std::vector<int>::push_back[abi:ne200100](v97 + 496, &v127);
        }

        v101 = v120[1];
        if (*(*(v101 + 30) + 8 * v99) >= v82)
        {
          operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v101, v99);
          v106 = (*(v101 + 22) + 24 * v99);
          v107 = (*(v101 + 25) + 24 * v99);
          v108 = (*(v101 + 16) + 24 * v99);
          v109 = v101;
          v110 = -v82;
        }

        else
        {
          operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v101, v99);
          v102 = *(v101 + 16) + 24 * v99;
          if (*v102 == -1)
          {
            v105 = 0;
            v104 = -1;
          }

          else
          {
            v103 = *(v102 + 8);
            v104 = *v102 ^ (v103 >> 63) ^ 1;
            if (v103 >= 0)
            {
              v105 = *(v102 + 8);
            }

            else
            {
              v105 = -v103;
            }
          }

          v111 = *(v101 + 25);
          v112 = *(v101 + 22);
          v110 = -(v82 + v96);
          v113 = -*(v102 + 16);
          LODWORD(v127) = v104;
          *(&v127 + 1) = v105;
          v128 = v113;
          v106 = (v111 + 24 * v99);
          v107 = (v112 + 24 * v99);
          v108 = &v127;
          v109 = v101;
        }

        operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v109, v106, v110, v107, v108);
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v101, v99);
        v114 = *(v101 + 16) + 24 * v99;
        if (*v114 == -1)
        {
          v88 = 0;
          v87 = -1;
        }

        else
        {
          v86 = *(v114 + 8);
          v87 = *v114 ^ (v86 >> 63) ^ 1;
          if (v86 >= 0)
          {
            v88 = *(v114 + 8);
          }

          else
          {
            v88 = -v86;
          }
        }

        v89 = -*(v114 + 16);
        LODWORD(v127) = v87;
        *(&v127 + 1) = v88;
        v128 = v89;
        v90 = 24 * v99;
        operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v101, &v127, -v96, (*(v101 + 25) + v90), (*(v101 + 10) + v90));
        v91 = v120[1];
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v91, v99);
        v92 = (*(v91 + 13) + v90);
        v93 = (*(v91 + 10) + v90);
        v94 = (*(v91 + 16) + v90);
        v95 = v91;
        v24 = v120;
        operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v95, v92, v84, v93, v94);
      }

      v85 += 16;
      ++MaxEventWithEnvelopeGreaterThan;
    }

    while (v119 != MaxEventWithEnvelopeGreaterThan);
  }

  return operations_research::sat::SchedulingConstraintHelper::ReportConflict(v24[1]);
}

void sub_23CB81AEC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

void operations_research::sat::SchedulingConstraintHelper::AddEnergyAfterReason(operations_research::sat::SchedulingConstraintHelper *a1, int a2, uint64_t a3, uint64_t a4)
{
  v9 = 3 * a2;
  if (*(*(a1 + 30) + 8 * a2) >= a4)
  {
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(a1, a2);
    v17 = -a4;
    v18 = (*(a1 + 22) + 8 * v9);
    v19 = (*(a1 + 25) + 8 * v9);
    v20 = (*(a1 + 16) + 8 * v9);
  }

  else
  {
    v10 = a3 + a4;
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(a1, a2);
    v11 = *(a1 + 25);
    v12 = *(a1 + 22);
    v13 = *(a1 + 16) + 24 * a2;
    if (*v13 == -1)
    {
      v16 = 0;
      v15 = -1;
    }

    else
    {
      v14 = *(v13 + 8);
      v15 = *v13 ^ (v14 >> 63) ^ 1;
      if (v14 >= 0)
      {
        v16 = *(v13 + 8);
      }

      else
      {
        v16 = -v14;
      }
    }

    v17 = -v10;
    v21 = -*(v13 + 16);
    v27 = v15;
    v28 = v16;
    v29 = v21;
    v18 = (v11 + 8 * v9);
    v19 = (v12 + 8 * v9);
    v20 = &v27;
  }

  operations_research::sat::SchedulingConstraintHelper::AddGenericReason(a1, v18, v17, v19, v20);
  operations_research::sat::SchedulingConstraintHelper::AddOtherReason(a1, a2);
  if (a3 >= 1)
  {
    v22 = *(a1 + 16) + 24 * a2;
    if (*v22 == -1)
    {
      v25 = 0;
      v24 = -1;
    }

    else
    {
      v23 = *(v22 + 8);
      v24 = *v22 ^ (v23 >> 63) ^ 1;
      if (v23 >= 0)
      {
        v25 = *(v22 + 8);
      }

      else
      {
        v25 = -v23;
      }
    }

    v26 = -*(v22 + 16);
    v27 = v24;
    v28 = v25;
    v29 = v26;
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(a1, &v27, -a3, (*(a1 + 25) + 8 * v9), (*(a1 + 10) + 8 * v9));
  }
}

uint64_t operations_research::sat::DisjunctiveDetectablePrecedences::Propagate(operations_research::sat::DisjunctiveDetectablePrecedences *this)
{
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(this + 14), *(this + 104));
  if (result)
  {
    *(this + 11) = *(this + 10);
    v3 = (-1431655765 * ((*(*(this + 14) + 88) - *(*(this + 14) + 80)) >> 3));
    LOBYTE(v17) = 0;
    std::vector<BOOL>::assign(this + 56, v3, &v17);
    *(this + 2) = *(this + 1);
    started = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingStartMin(*(this + 14), v4);
    if ((v6 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = started;
      v9 = 16 * v6;
      v10 = 0x8000000000000002;
      do
      {
        v13 = *v8;
        v14 = *(this + 14);
        v15 = *(v14[19] + 4 * *v8);
        if (v15 == -1 || ((*(*(v14[3] + 24) + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v15 & 0x3F ^ 1)) & 1) == 0)
        {
          v12 = *(v14[31] + 8 * v13);
          if (*(v14[30] + 8 * v13) < v10)
          {
            v11 = *(v14[29] + 8 * v13);
            LODWORD(v17) = *v8;
            *(&v17 + 1) = v12;
            std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 8, &v17);
            v12 = v11 + v10;
          }

          else
          {
            v16 = *(this + 1);
            if ((*(this + 2) - v16) >= 0x11)
            {
              result = operations_research::sat::DisjunctiveDetectablePrecedences::PropagateSubwindow(this, v7);
              if (!result)
              {
                return result;
              }

              v16 = *(this + 1);
            }

            *(this + 2) = v16;
            LODWORD(v17) = v13;
            *(&v17 + 1) = v12;
            std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 8, &v17);
          }
        }

        else
        {
          v12 = v10;
        }

        v8 += 4;
        v10 = v12;
        v9 -= 16;
      }

      while (v9);
    }

    if (*(this + 2) - *(this + 1) < 0x11uLL)
    {
      return 1;
    }

    result = operations_research::sat::DisjunctiveDetectablePrecedences::PropagateSubwindow(this, v7);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t operations_research::sat::DisjunctiveDetectablePrecedences::PropagateSubwindow(char **this, __n128 a2)
{
  v2 = this;
  v3 = this[1];
  v4 = this[2];
  v5 = (v4 - v3) >> 4;
  if (v5 > 32)
  {
    operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::TaskTime *>,std::less<operations_research::sat::TaskTime>>(8 * v5, v3, v4, 0, a2);
  }

  else if (v4 - v3 >= 17)
  {
    v6 = v4 - 1;
    if (&v4[-1] != v3)
    {
      v7 = v4 - 2;
      v8 = v4 - 1;
      do
      {
        if (v8->n128_u64[1] < v7->n128_u64[1])
        {
          a2 = *v8;
          *v8 = *v7;
          *v7 = a2;
          v6 = v8;
        }

        --v8;
        --v7;
      }

      while (v8 != v3);
      v25 = v6 + 1;
      if (v25 != v4)
      {
        v26 = v25 - 2;
        do
        {
          v28 = v25->n128_u64[0];
          v27 = v25->n128_i64[1];
          v29 = v25;
          if (v27 < v25[-1].n128_u64[1])
          {
            v30 = v25 - 1;
            v31 = v26;
            v29 = v25;
            do
            {
              a2 = *v30;
              *v29-- = *v30;
              v30 = v31;
              v32 = v31->n128_i64[1];
              --v31;
            }

            while (v27 < v32);
          }

          v29->n128_u64[0] = v28;
          v29->n128_u64[1] = v27;
          ++v25;
          ++v26;
        }

        while (v25 != v4);
      }
    }
  }

  v9 = v2 + 4;
  v11 = v2[1];
  v10 = v2[2];
  v12 = *(v10 - 1);
  v2[5] = v2[4];
  if (v11 == v10)
  {
    return 1;
  }

  do
  {
    v13 = *v11;
    v14 = v2[14];
    v15 = -*(*(v14 + 32) + 8 * *v11);
    if (v12 > v15)
    {
      v16 = *(*(v14 + 19) + 4 * v13);
      if (v16 == -1 || ((*(*(*(v14 + 3) + 24) + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(*(v14 + 19) + 4 * v13)) & 1) != 0)
      {
        LODWORD(v179) = *v11;
        *(&v179 + 1) = v15;
        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100]((v2 + 4), &v179);
      }
    }

    v11 += 4;
  }

  while (v11 != v10);
  v17 = v2[4];
  v18 = v2[5];
  if (v17 == v18)
  {
    return 1;
  }

  started = 1;
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,false>(v17, v18, &v179, 126 - 2 * __clz(v18 - v17), 1, a2);
  v2[16] = v2[15];
  *(v2 + 36) = 0;
  v163 = v2 + 10;
  v2[11] = v2[10];
  v20 = v2[1];
  v160 = v2[2];
  if (v20 == v160)
  {
    return started;
  }

  v21 = 0;
  v22 = 0;
  v171 = v2 + 15;
  v167 = (v2[5] - v2[4]) >> 4;
  v23 = 0xFFFFFFFFLL;
  v24 = 0x8000000000000002;
  v157 = v2 + 4;
  while (1)
  {
    v34 = *v20;
    v165 = v20;
    v35 = *(v20 + 1);
    v178[0] = v34;
    v36 = v2[14];
    v37 = *(*(v36 + 19) + 4 * v34);
    if (v37 != -1 && ((*(*(*(v36 + 3) + 24) + ((v37 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v37 & 0x3F ^ 1)) & 1) != 0)
    {
      v38 = v165;
      goto LABEL_29;
    }

    if (v22 < v167)
    {
      while (1)
      {
        v39 = &(*v9)[16 * v22];
        if (v35 <= *(v39 + 1))
        {
          break;
        }

        v40 = *v39;
        v177 = v40;
        if ((*&v2[7][(v40 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v40))
        {
          v41 = v24;
          v42 = v23;
          v43 = v2[14];
          v44 = v2[15];
          v45 = *(v43 + 30);
          v46 = *(*(v43 + 29) + 8 * v40);
          LODWORD(v179) = v40;
          v47 = *(v45 + 8 * v40);
          v48 = *(*(v43 + 31) + 8 * v40) - v46;
          if (v47 > v48)
          {
            v48 = v47;
          }

          *(&v179 + 1) = v48;
          v180 = v46;
          v49 = 0xAAAAAAAAAAAAAAABLL * ((v2[16] - v44) >> 3);
          std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](v171, &v179);
          if (v49 >= 1)
          {
            v50 = v49 & 0x7FFFFFFF;
            v51 = 24 * v50;
            while (1)
            {
              v52 = &(*v171)[v51];
              if (*(v52 - 16) <= *(&v179 + 1))
              {
                break;
              }

              --v50;
              *v52 = *(v52 - 24);
              *(v52 + 16) = *(v52 - 8);
              v51 -= 24;
              if (v50 + 1 <= 1)
              {
                LODWORD(v49) = 0;
                goto LABEL_50;
              }
            }

            LODWORD(v49) = v50;
          }

LABEL_50:
          v53 = &v2[15][24 * v49];
          v54 = v179;
          *(v53 + 16) = v180;
          *v53 = v54;
          if (v49 <= *(v2 + 36))
          {
            *(v2 + 36) = 0;
          }

          v21 = 1;
          v23 = v42;
          v24 = v41;
          if (++v22 == v167)
          {
LABEL_52:
            v22 = v167;
            break;
          }
        }

        else
        {
          if (v23 != -1)
          {
            v151 = v23;
            operations_research::sat::SchedulingConstraintHelper::ClearReason(v2[14]);
            v152 = v2[14];
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v152, v151);
            v153 = *(*(v152 + 19) + 4 * v151);
            if (v153 != -1)
            {
              LODWORD(v179) = v153 ^ 1;
              std::vector<int>::push_back[abi:ne200100](v152 + 496, &v179);
            }

            v154 = v2[14];
            v155 = v177;
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v154, v177);
            v156 = *(*(v154 + 19) + 4 * v155);
            if (v156 != -1)
            {
              LODWORD(v179) = v156 ^ 1;
              std::vector<int>::push_back[abi:ne200100](v154 + 496, &v179);
            }

            operations_research::sat::SchedulingConstraintHelper::AddReasonForBeingBefore(v2[14], v151, v177);
            operations_research::sat::SchedulingConstraintHelper::AddReasonForBeingBefore(v2[14], v177, v151);
            return operations_research::sat::SchedulingConstraintHelper::ReportConflict(v2[14]);
          }

          std::vector<int>::push_back[abi:ne200100](v163, &v177);
          v23 = v40;
          if (++v22 == v167)
          {
            goto LABEL_52;
          }
        }
      }

      v38 = v165;
      if (v23 == v178[0])
      {
        goto LABEL_55;
      }
    }

    else
    {
      v38 = v165;
      if (v23 == v34)
      {
        goto LABEL_55;
      }
    }

    v55 = v23;
    std::vector<int>::push_back[abi:ne200100](v163, v178);
    v23 = v55;
    if (v55 != -1)
    {
      goto LABEL_29;
    }

LABEL_55:
    v33 = v2[10];
    v166 = v2[11];
    if (v33 != v166)
    {
      break;
    }

LABEL_28:
    v2[11] = v33;
LABEL_29:
    v20 = v38 + 4;
    if (v20 == v160)
    {
      return 1;
    }
  }

  v164 = v22;
  while (1)
  {
    v56 = *v33;
    *&v2[7][(v56 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v56;
    if (v21)
    {
      v57 = v2[15];
      v58 = 0xAAAAAAAAAAAAAAABLL * ((v2[16] - v57) >> 3);
      v59 = *(v2 + 36);
      v24 = 0x8000000000000002;
      if (v59 < v58)
      {
        v60 = v58 - v59;
        v61 = &v57[24 * v59 + 16];
        do
        {
          v63 = *(v61 - 1);
          if (v63 >= v24)
          {
            *(v2 + 36) = v59;
            v24 = v63;
          }

          v62 = *v61;
          v61 += 24;
          v24 += v62;
          ++v59;
          --v60;
        }

        while (v60);
      }
    }

    v64 = v2[14];
    v65 = *(*(v64 + 19) + 4 * v56);
    if (v65 == -1 || ((*(*(*(v64 + 3) + 24) + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v65 & 0x3F ^ 1)) & 1) == 0)
    {
      break;
    }

    v21 = 0;
LABEL_58:
    v33 += 4;
    if (v33 == v166)
    {
      v33 = *v163;
      goto LABEL_28;
    }
  }

  v66 = v171;
  if (v24 <= *(*(v64 + 30) + 8 * v56))
  {
LABEL_134:
    if (v56 == v23)
    {
      v133 = v33;
      v134 = v2[14];
      v135 = v2[15];
      v136 = *(v134 + 30);
      v137 = *(*(v134 + 29) + 8 * v56);
      LODWORD(v179) = v23;
      v138 = *(v136 + 8 * v56);
      v139 = *(*(v134 + 31) + 8 * v56) - v137;
      if (v138 > v139)
      {
        v139 = v138;
      }

      *(&v179 + 1) = v139;
      v180 = v137;
      v140 = 0xAAAAAAAAAAAAAAABLL * ((v2[16] - v135) >> 3);
      std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](v66, &v179);
      v22 = v164;
      if (v140 >= 1)
      {
        v141 = v140 & 0x7FFFFFFF;
        v142 = 24 * v141;
        while (1)
        {
          v143 = &(*v66)[v142];
          if (*(v143 - 16) <= *(&v179 + 1))
          {
            break;
          }

          --v141;
          *v143 = *(v143 - 24);
          *(v143 + 16) = *(v143 - 8);
          v142 -= 24;
          if (v141 + 1 <= 1)
          {
            LODWORD(v140) = 0;
            goto LABEL_151;
          }
        }

        LODWORD(v140) = v141;
      }

LABEL_151:
      v148 = &v2[15][24 * v140];
      v149 = v179;
      *(v148 + 16) = v180;
      *v148 = v149;
      v33 = v133;
      if (v140 <= *(v2 + 36))
      {
        *(v2 + 36) = 0;
      }

      v21 = 1;
      v23 = 0xFFFFFFFFLL;
    }

    else
    {
      v21 = 0;
      v22 = v164;
    }

    goto LABEL_58;
  }

  v176 = v56;
  v161 = v33;
  v162 = v23;
  v67 = *(v2 + 36);
  operations_research::sat::SchedulingConstraintHelper::ClearReason(v64);
  v68 = v67;
  v69 = v2[15];
  v70 = *&v69[24 * v67 + 8];
  if (0xAAAAAAAAAAAAAAABLL * ((v2[16] - v69) >> 3) <= v67)
  {
    v116 = 0;
    v117 = 0x7FFFFFFFFFFFFFFELL;
    v118 = v176;
    v119 = v24 + 0x7FFFFFFFFFFFFFFELL;
    goto LABEL_126;
  }

  v159 = v24;
  v174 = 0;
  v158 = *(*(v2[14] + 29) + 8 * v176) + *(*(v2[14] + 34) + 8 * v176);
  v168 = -v70;
  v172 = *&v69[24 * v67 + 8];
  v173 = 0x7FFFFFFFFFFFFFFELL;
  v169 = 1;
  v170 = v67;
  v71 = v67;
  v72 = v67;
  v175 = v67;
  while (2)
  {
    v74 = *&v69[24 * v71];
    v75 = v2[14];
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v75, v74);
    v76 = *(*(v75 + 19) + 4 * v74);
    if (v76 != -1)
    {
      v77 = v2;
      v78 = v76 ^ 1;
      v80 = *(v75 + 63);
      v79 = *(v75 + 64);
      if (v80 >= v79)
      {
        v82 = *(v75 + 62);
        v83 = v80 - v82;
        v84 = (v80 - v82) >> 2;
        v85 = v84 + 1;
        if ((v84 + 1) >> 62)
        {
          std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
        }

        v86 = v79 - v82;
        if (v86 >> 1 > v85)
        {
          v85 = v86 >> 1;
        }

        if (v86 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v87 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v87 = v85;
        }

        if (v87)
        {
          if (!(v87 >> 62))
          {
            operator new();
          }

          std::__throw_bad_array_new_length[abi:ne200100]();
        }

        v88 = (v80 - v82) >> 2;
        v89 = (4 * v84);
        v90 = (4 * v84 - 4 * v88);
        *v89 = v78;
        v81 = v89 + 1;
        memcpy(v90, v82, v83);
        *(v75 + 62) = v90;
        *(v75 + 63) = v81;
        *(v75 + 64) = 0;
        if (v82)
        {
          operator delete(v82);
        }

        v2 = v77;
        v66 = v171;
        v67 = v175;
      }

      else
      {
        *v80 = v78;
        v81 = v80 + 1;
        v2 = v77;
      }

      *(v75 + 63) = v81;
    }

    v91 = v74;
    v92 = 3 * v74;
    if (v72 <= v67 || (operations_research::sat::SchedulingConstraintHelper::GetCurrentMinDistanceBetweenTasks(v2[14], *&v2[15][24 * v170], v74, 1) & 0x8000000000000000) != 0)
    {
      v93 = v2[14];
      v94 = *&v2[15][24 * v71 + 16];
      if (*(*(v93 + 30) + 8 * v91) >= v172)
      {
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v93, v91);
        operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v93, (*(v93 + 22) + 8 * v92), v168, (*(v93 + 25) + 8 * v92), (*(v93 + 16) + 8 * v92));
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v93, v91);
        if (v94 >= 1)
        {
          goto LABEL_104;
        }
      }

      else
      {
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v93, v91);
        v95 = *(v93 + 16) + 24 * v91;
        if (*v95 == -1)
        {
          v98 = 0;
          v97 = -1;
        }

        else
        {
          v96 = *(v95 + 8);
          v97 = *v95 ^ (v96 >> 63) ^ 1;
          if (v96 >= 0)
          {
            v98 = *(v95 + 8);
          }

          else
          {
            v98 = -v96;
          }
        }

        v99 = *(v93 + 25);
        v100 = *(v93 + 22);
        v101 = -*(v95 + 16);
        LODWORD(v179) = v97;
        *(&v179 + 1) = v98;
        v180 = v101;
        operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v93, (v99 + 8 * v92), -(v172 + v94), (v100 + 8 * v92), &v179);
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v93, v91);
        if (v94 >= 1)
        {
          goto LABEL_104;
        }
      }
    }

    else
    {
      v93 = v2[14];
      v94 = *(*(v93 + 29) + 8 * v91);
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v93, v91);
      if (v94 < 1)
      {
        goto LABEL_110;
      }

LABEL_104:
      v102 = *(v93 + 16) + 24 * v91;
      if (*v102 == -1)
      {
        v105 = 0;
        v104 = -1;
      }

      else
      {
        v103 = *(v102 + 8);
        v104 = *v102 ^ (v103 >> 63) ^ 1;
        if (v103 >= 0)
        {
          v105 = *(v102 + 8);
        }

        else
        {
          v105 = -v103;
        }
      }

      v106 = -*(v102 + 16);
      LODWORD(v179) = v104;
      *(&v179 + 1) = v105;
      v180 = v106;
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v93, &v179, -v94, (*(v93 + 25) + 8 * v92), (*(v93 + 10) + 8 * v92));
    }

LABEL_110:
    CurrentMinDistanceBetweenTasks = operations_research::sat::SchedulingConstraintHelper::GetCurrentMinDistanceBetweenTasks(v2[14], v91, v176, 1);
    if (CurrentMinDistanceBetweenTasks < 0)
    {
      v108 = v2[14];
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v108, v91);
      v109 = *(v108 + 16) + 24 * v91;
      if (*v109 == -1)
      {
        v112 = 0;
        v111 = -1;
      }

      else
      {
        v110 = *(v109 + 8);
        v111 = *v109 ^ (v110 >> 63) ^ 1;
        if (v110 >= 0)
        {
          v112 = *(v109 + 8);
        }

        else
        {
          v112 = -v110;
        }
      }

      v113 = *(v108 + 10);
      v114 = *(v108 + 13);
      v115 = -*(v109 + 16);
      LODWORD(v179) = v111;
      *(&v179 + 1) = v112;
      v180 = v115;
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v108, (v113 + 8 * v92), v158 - 1, (v114 + 8 * v92), &v179);
      v169 = 0;
      v69 = *v66;
    }

    else
    {
      v69 = *v66;
      v73 = v173;
      if (CurrentMinDistanceBetweenTasks < v173)
      {
        v73 = CurrentMinDistanceBetweenTasks;
      }

      v173 = v73;
      v174 += *&(*v66)[24 * v71 + 16];
    }

    v71 = ++v72;
    v67 = v175;
    if (0xAAAAAAAAAAAAAAABLL * ((v2[16] - v69) >> 3) > v72)
    {
      continue;
    }

    break;
  }

  if (v169)
  {
    v9 = v157;
    v38 = v165;
    v24 = v159;
    v118 = v176;
    v68 = v170;
    v70 = v172;
    v117 = v173;
    v116 = v174;
    v119 = v173 + v159;
  }

  else
  {
    v120 = v2[14];
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v120, v176);
    v121 = *(v120 + 16) + 24 * v176;
    v9 = v157;
    v38 = v165;
    v24 = v159;
    if (*v121 == -1)
    {
      v124 = 0;
      v123 = -1;
    }

    else
    {
      v122 = *(v121 + 8);
      v123 = *v121 ^ (v122 >> 63) ^ 1;
      if (v122 >= 0)
      {
        v124 = *(v121 + 8);
      }

      else
      {
        v124 = -v122;
      }
    }

    v125 = *(v120 + 25);
    v126 = *(v120 + 22);
    v127 = -*(v121 + 16);
    LODWORD(v179) = v123;
    *(&v179 + 1) = v124;
    v180 = v127;
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v120, (v125 + 24 * v176), -v158, (v126 + 24 * v176), &v179);
    v118 = v176;
    v119 = v159;
    v68 = v170;
    v116 = v174;
    v67 = v175;
    v70 = v172;
    v117 = v173;
  }

LABEL_126:
  v128 = v117 + v116 + v70;
  if (v128 <= v119)
  {
    v128 = v119;
  }

  if (v117 == 0x7FFFFFFFFFFFFFFELL)
  {
    v129 = v119;
  }

  else
  {
    v129 = v128;
  }

  v130 = v2[14];
  v131 = *(v130 + 3);
  if ((*(v131 + 8) & 0xFFFFFFF) != 0 || (v144 = *(*(v130 + 19) + 4 * v118), v144 != -1) && ((*(*(v131 + 24) + ((v144 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(*(v130 + 19) + 4 * v118)) & 1) == 0 || (v145 = v2[15], 0xAAAAAAAAAAAAAAABLL * ((v2[16] - v145) >> 3) <= v68))
  {
LABEL_132:
    started = operations_research::sat::SchedulingConstraintHelper::IncreaseStartMin(v130, v118, v129);
    if (!started)
    {
      return started;
    }

    v132 = operations_research::sat::IntegerTrail::InPropagationLoop(*(v2[14] + 4));
    v23 = v162;
    v33 = v161;
    v56 = v176;
    if (v132)
    {
      return started;
    }

    goto LABEL_134;
  }

  v146 = v129;
  v147 = v67 + 1;
  while (operations_research::sat::SchedulingConstraintHelper::PropagatePrecedence(v2[14], *&v145[24 * v68], v118))
  {
    v68 = v147;
    v145 = v2[15];
    ++v147;
    v118 = v176;
    if (0xAAAAAAAAAAAAAAABLL * ((v2[16] - v145) >> 3) <= v68)
    {
      v130 = v2[14];
      v129 = v146;
      v66 = v171;
      goto LABEL_132;
    }
  }

  return 0;
}

void operations_research::sat::DisjunctivePrecedences::~DisjunctivePrecedences(operations_research::sat::DisjunctivePrecedences *this)
{
  *this = &unk_284F40DF0;
  if (dword_2810BD530 >= 1 && absl::lts_20240722::log_internal::VLogSite::SlowIsEnabled1(&operations_research::sat::DisjunctivePrecedences::~DisjunctivePrecedences()::$_0::operator() const(void)::site, dword_2810BD530) && *(this + 5))
  {
    operator new();
  }

  v2 = *(this + 19);
  if (v2)
  {
    *(this + 20) = v2;
    operator delete(v2);
  }

  v3 = *(this + 16);
  if (v3)
  {
    operator delete(v3);
  }

  v4 = *(this + 13);
  if (v4)
  {
    *(this + 14) = v4;
    operator delete(v4);
  }

  v5 = *(this + 10);
  if (v5)
  {
    *(this + 11) = v5;
    operator delete(v5);
  }

  v6 = *(this + 7);
  if (v6)
  {
    *(this + 8) = v6;
    operator delete(v6);
  }
}

{
  operations_research::sat::DisjunctivePrecedences::~DisjunctivePrecedences(this);

  JUMPOUT(0x23EED9460);
}

uint64_t operations_research::sat::DisjunctivePrecedences::Propagate(operations_research::sat::DisjunctivePrecedences *this)
{
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(this + 2), *(this + 8));
  if (result)
  {
    *(this + 8) = *(this + 7);
    started = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingShiftedStartMin(*(this + 2), v3);
    if ((v5 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = started;
      v7 = *(this + 2);
      v8 = 16 * v5;
      v9 = 0x8000000000000002;
      do
      {
        v14 = *v6;
        v10 = v14;
        v11 = *(v7[19] + 4 * v14);
        if (v11 == -1 || ((*(*(v7[3] + 24) + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11) & 1) != 0)
        {
          v12 = *(&v14 + 1);
          if (*(&v14 + 1) >= v9)
          {
            v13 = *(this + 7);
            if ((*(this + 8) - v13) >= 0x11)
            {
              result = operations_research::sat::DisjunctivePrecedences::PropagateSubwindow(this);
              if (!result)
              {
                return result;
              }

              v13 = *(this + 7);
            }

            *(this + 8) = v13;
            v9 = v12;
          }

          std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 56, &v14);
          v7 = *(this + 2);
          v9 += *(v7[29] + 8 * v10);
        }

        ++v6;
        v8 -= 16;
      }

      while (v8);
    }

    if (*(this + 8) - *(this + 7) < 0x11uLL)
    {
      return 1;
    }

    result = operations_research::sat::DisjunctivePrecedences::PropagateSubwindow(this);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t operations_research::sat::DisjunctivePrecedences::PropagateSubwindow(operations_research::sat::DisjunctivePrecedences *this)
{
  v113 = *MEMORY[0x277D85DE8];
  *(this + 11) = *(this + 10);
  v2 = (this + 80);
  v5 = *(this + 7);
  v3 = (this + 56);
  v4 = v5;
  v6 = *(v2 - 2);
  v7 = v3;
  if (v5 != v6)
  {
    v8 = 0;
    do
    {
      v9 = *v4;
      v110 = *(v4 + 1);
      LODWORD(v111) = v4[3];
      v10 = *(*(this + 2) + 104) + 24 * v9;
      if (*v10 != -1 && *(v10 + 8) == 1)
      {
        v11 = v8 + 1;
        v12 = *v3 + 16 * v8;
        *v12 = v9;
        *(v12 + 4) = v110;
        *(v12 + 12) = v111;
        std::vector<int>::push_back[abi:ne200100](v2, v10);
        v3 = v7;
        v8 = v11;
      }

      v4 += 4;
    }

    while (v4 != v6);
    v13 = *(this + 7);
    v14 = (*(this + 8) - v13) >> 4;
    if (v8 <= v14)
    {
      if (v8 < v14)
      {
        *(this + 8) = v13 + 16 * v8;
      }
    }

    else
    {
      std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(v3, v8 - v14);
    }
  }

  operations_research::sat::PrecedenceRelations::CollectPrecedences(*(this + 4), v2, this + 19);
  v15 = *(this + 20) - *(this + 19);
  v16 = v15 >> 3;
  if ((v15 >> 3) >= 1)
  {
    LODWORD(v17) = 0;
    v108 = (v15 >> 3) & 0x7FFFFFFF;
    v18 = v7;
    v105 = v7;
    v101 = v15 >> 3;
    do
    {
      v19 = (*(this + 19) + 8 * v17);
      v109 = *v19;
      v20 = *(this + 13);
      *(this + 14) = v20;
      if (v17 + 1 > v16)
      {
        v21 = v17 + 1;
      }

      else
      {
        v21 = v16;
      }

      v22 = v19[1];
      v23 = (*(this + 7) + 16 * v22);
      v24 = *(v23 + 1);
      v25 = *(*(*(this + 2) + 232) + 8 * *v23);
      v26 = *(this + 15);
      if (v20 >= v26)
      {
        v28 = v26 - v20;
        v29 = v28 >> 1;
        if ((v28 >> 1) <= 1)
        {
          v29 = 1;
        }

        if (v28 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v30 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        if (!(v30 >> 62))
        {
          operator new();
        }

LABEL_105:
        std::__throw_bad_array_new_length[abi:ne200100]();
      }

      *v20 = v22;
      v27 = (v20 + 1);
      v31 = v17;
      v32 = v25 + v24;
      *(this + 14) = v27;
      v17 = v17 + 1;
      if (v17 >= v108)
      {
        LODWORD(v17) = v21;
LABEL_46:
        v46 = &v27[-*(this + 13)];
        v107 = v46 >> 2;
        if ((v46 >> 2) < 2)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v106 = v21;
        v33 = 8 * v31;
        do
        {
          v34 = *(this + 19) + v33;
          if (*(v34 + 8) != v109)
          {
            goto LABEL_46;
          }

          v35 = *(v34 + 12);
          v36 = (*v18 + 16 * v35);
          if (*(v36 + 1) >= v32)
          {
            goto LABEL_46;
          }

          v37 = *(*(*(this + 2) + 232) + 8 * *v36);
          v38 = *(this + 15);
          if (v27 < v38)
          {
            *v27 = v35;
            v27 += 4;
          }

          else
          {
            v39 = *(this + 13);
            v40 = v27 - v39;
            v41 = (v27 - v39) >> 2;
            v42 = v41 + 1;
            if ((v41 + 1) >> 62)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v43 = v17;
            v44 = v38 - v39;
            if (v44 >> 1 > v42)
            {
              v42 = v44 >> 1;
            }

            if (v44 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v45 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v45 = v42;
            }

            if (v45)
            {
              if (!(v45 >> 62))
              {
                operator new();
              }

              goto LABEL_105;
            }

            *(4 * v41) = v35;
            v27 = (4 * v41 + 4);
            memcpy(0, v39, v40);
            *(this + 13) = 0;
            *(this + 14) = v27;
            *(this + 15) = 0;
            if (v39)
            {
              operator delete(v39);
            }

            v17 = v43;
            v18 = v105;
          }

          v32 += v37;
          *(this + 14) = v27;
          ++v17;
          v33 += 8;
        }

        while (v17 < v108);
        LODWORD(v17) = v106;
        v46 = &v27[-*(this + 13)];
        v107 = v46 >> 2;
        if ((v46 >> 2) < 2)
        {
          goto LABEL_13;
        }
      }

      v102 = v17;
      v47 = (v46 >> 2) & 0x7FFFFFFF;
      LOBYTE(v110) = 0;
      std::vector<BOOL>::assign(this + 128, v47, &v110);
      v48 = 0;
      v49 = *(this + 2);
      v50 = *(*(*(this + 3) + 40) + 8 * v109);
      v51 = 0x7FFFFFFFFFFFFFFELL;
      v52 = -1;
      v103 = v50;
      do
      {
        while (1)
        {
          v53 = v50;
          v54 = (*(this + 7) + 16 * *(*(this + 13) + 4 * v47 - 4));
          v55 = *v54;
          v56 = *(v54 + 1);
          v57 = (*(v49 + 13) + 24 * v55);
          ConditionalOffset = operations_research::sat::PrecedenceRelations::GetConditionalOffset(*(this + 4), *v57, v109);
          v59 = v47 - 1;
          v60 = ConditionalOffset - *(v57 + 2);
          v49 = *(this + 2);
          v61 = *(*(v49 + 29) + 8 * v55);
          v50 = v53;
          if (v60 + v32 <= v53)
          {
            break;
          }

          if (v60 < v51)
          {
            v51 = v60;
          }

          v48 += v61;
          if (v51 + v56 + v48 > v53)
          {
            v50 = v51 + v56 + v48;
            v52 = v47 - 1;
          }

          --v47;
          if (v59 + 1 <= 1)
          {
            goto LABEL_58;
          }
        }

        if (v51 == 0x7FFFFFFFFFFFFFFELL)
        {
          if (v47 == 2)
          {
            break;
          }

          v32 -= v61;
        }

        *(*(this + 16) + ((v59 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v59;
        --v47;
      }

      while (v59 + 1 > 1);
LABEL_58:
      v18 = v105;
      LODWORD(v17) = v102;
      if (v50 > v103)
      {
        v100 = v50;
        operations_research::sat::SchedulingConstraintHelper::ClearReason(v49);
        if (v52 < v107)
        {
          v62 = v52;
          v104 = *(*(this + 7) + 16 * *(*(this + 13) + 4 * v52) + 8);
          do
          {
            if (((*(*(this + 16) + ((v62 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
            {
              v63 = *(*(this + 7) + 16 * *(*(this + 13) + 4 * v62));
              v64 = *(this + 2);
              operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v64, v63);
              v65 = *(*(v64 + 19) + 4 * v63);
              if (v65 != -1)
              {
                LODWORD(v110) = v65 ^ 1;
                std::vector<int>::push_back[abi:ne200100](v64 + 496, &v110);
              }

              v66 = *(this + 2);
              v67 = *(*(v66 + 29) + 8 * v63);
              if (*(*(v66 + 30) + 8 * v63) >= v104)
              {
                operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(this + 2), v63);
                operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v66, (*(v66 + 22) + 24 * v63), -v104, (*(v66 + 25) + 24 * v63), (*(v66 + 16) + 24 * v63));
              }

              else
              {
                operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(this + 2), v63);
                v68 = *(v66 + 16) + 24 * v63;
                if (*v68 == -1)
                {
                  v71 = 0;
                  v70 = -1;
                }

                else
                {
                  v69 = *(v68 + 8);
                  v70 = *v68 ^ (v69 >> 63) ^ 1;
                  if (v69 >= 0)
                  {
                    v71 = *(v68 + 8);
                  }

                  else
                  {
                    v71 = -v69;
                  }
                }

                v72 = *(v66 + 25);
                v73 = *(v66 + 22);
                v74 = -*(v68 + 16);
                LODWORD(v110) = v70;
                v111 = v71;
                v112 = v74;
                operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v66, (v72 + 24 * v63), -(v104 + v67), (v73 + 24 * v63), &v110);
              }

              operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v66, v63);
              if (v67 >= 1)
              {
                v75 = *(v66 + 16) + 24 * v63;
                if (*v75 == -1)
                {
                  v78 = 0;
                  v77 = -1;
                }

                else
                {
                  v76 = *(v75 + 8);
                  v77 = *v75 ^ (v76 >> 63) ^ 1;
                  if (v76 >= 0)
                  {
                    v78 = *(v75 + 8);
                  }

                  else
                  {
                    v78 = -v76;
                  }
                }

                v79 = -*(v75 + 16);
                LODWORD(v110) = v77;
                v111 = v78;
                v112 = v79;
                operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v66, &v110, -v67, (*(v66 + 25) + 24 * v63), (*(v66 + 10) + 24 * v63));
              }

              ConditionalEnforcements = operations_research::sat::PrecedenceRelations::GetConditionalEnforcements(*(this + 4), *(*(*(this + 2) + 104) + 24 * v63), v109);
              if ((v81 & 0x3FFFFFFFFFFFFFFFLL) != 0)
              {
                v82 = ConditionalEnforcements;
                v83 = 4 * v81;
                do
                {
                  v85 = *(this + 2);
                  v86 = *v82 ^ 1;
                  v88 = v85[63];
                  v87 = v85[64];
                  if (v88 < v87)
                  {
                    *v88 = v86;
                    v84 = v88 + 1;
                  }

                  else
                  {
                    v89 = v85[62];
                    v90 = v88 - v89;
                    v91 = (v88 - v89) >> 2;
                    v92 = v91 + 1;
                    if ((v91 + 1) >> 62)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v93 = v87 - v89;
                    if (v93 >> 1 > v92)
                    {
                      v92 = v93 >> 1;
                    }

                    if (v93 >= 0x7FFFFFFFFFFFFFFCLL)
                    {
                      v94 = 0x3FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v94 = v92;
                    }

                    if (v94)
                    {
                      if (!(v94 >> 62))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v95 = (v88 - v89) >> 2;
                    v96 = (4 * v91);
                    v97 = (4 * v91 - 4 * v95);
                    *v96 = v86;
                    v84 = v96 + 1;
                    memcpy(v97, v89, v90);
                    v85[62] = v97;
                    v85[63] = v84;
                    v85[64] = 0;
                    if (v89)
                    {
                      operator delete(v89);
                    }
                  }

                  v85[63] = v84;
                  ++v82;
                  v83 -= 4;
                }

                while (v83);
              }
            }

            ++v62;
          }

          while (v62 != v107);
        }

        ++*(this + 6);
        v98 = operations_research::sat::SchedulingConstraintHelper::PushIntegerLiteral(*(this + 2), v109, v100);
        v18 = v105;
        LODWORD(v17) = v102;
        if ((v98 & 1) == 0)
        {
          return 0;
        }
      }

LABEL_13:
      LODWORD(v16) = v101;
    }

    while (v17 < v101);
  }

  return 1;
}

uint64_t operations_research::sat::DisjunctiveNotLast::Propagate(operations_research::sat::DisjunctiveNotLast *this)
{
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(*(this + 8), *(this + 56));
  if (result)
  {
    started = operations_research::sat::SchedulingConstraintHelper::TaskByDecreasingStartMax(*(this + 8), v3);
    v6 = v5;
    v8 = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingShiftedStartMin(*(this + 8), v7);
    v10 = v9;
    if (v9 < 1)
    {
      return 1;
    }

    v11 = v8;
    LODWORD(v12) = 0;
    v13 = v6 - 1;
    v14 = v9 & 0x7FFFFFFF;
LABEL_5:
    *(this + 2) = *(this + 1);
    v15 = (v11 + 16 * v12);
    v12 = v12;
    v16 = *(this + 8);
    v17 = 0x8000000000000002;
    while (1)
    {
      v18 = *v15;
      v26 = *v15;
      v19 = v26.n128_i32[0];
      v20 = *(v16[19] + 4 * v26.n128_i32[0]);
      if (v20 == -1 || ((*(*(v16[3] + 24) + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v20) & 1) != 0)
      {
        if (*(this + 1) == *(this + 2))
        {
          v17 = v26.n128_i64[1];
        }

        else if (v26.n128_i64[1] >= v17)
        {
LABEL_13:
          *(this + 5) = *(this + 4);
          if ((v13 & 0x80000000) != 0)
          {
LABEL_22:
            if (*(this + 2) - *(this + 1) >= 0x11uLL)
            {
              goto LABEL_25;
            }
          }

          else
          {
            v21 = v13;
            v22 = (started + 16 * v13);
            do
            {
              v18 = *v22;
              v26 = *v22;
              if (v26.n128_i64[1] >= v17)
              {
                v13 = v21;
                goto LABEL_22;
              }

              v24 = *(this + 8);
              v25 = *(*(v24 + 152) + 4 * v26.n128_i32[0]);
              if (v25 == -1 || ((*(*(*(v24 + 24) + 24) + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v25 & 0x3F ^ 1)) & 1) == 0)
              {
                std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 32, &v26);
              }

              --v22;
            }

            while (v21-- > 0);
            v13 = -1;
            if (*(this + 2) - *(this + 1) >= 0x11uLL)
            {
LABEL_25:
              if (*(this + 4) != *(this + 5))
              {
                result = operations_research::sat::DisjunctiveNotLast::PropagateSubwindow(this, v18);
                if (!result)
                {
                  return result;
                }
              }
            }
          }

          if (v12 >= v10)
          {
            return 1;
          }

          goto LABEL_5;
        }

        std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 8, &v26);
        v16 = *(this + 8);
        v17 += *(v16[29] + 8 * v19);
      }

      ++v12;
      ++v15;
      if (v12 >= v14)
      {
        goto LABEL_13;
      }
    }
  }

  return result;
}

uint64_t operations_research::sat::DisjunctiveNotLast::PropagateSubwindow(operations_research::sat::DisjunctiveNotLast *this, __n128 a2)
{
  v3 = *(this + 4);
  v4 = *(this + 5);
  if (v3 != v4)
  {
    v5 = *(*(this + 8) + 264);
    v6 = *(this + 4);
    do
    {
      v6->n128_u64[1] = -*(v5 + 8 * v6->n128_i32[0]);
      ++v6;
    }

    while (v6 != v4);
  }

  v7 = (v4 - v3) >> 4;
  if (v7 > 32)
  {
    operations_research::IncrementalSort<std::__wrap_iter<operations_research::sat::TaskTime *>,std::less<operations_research::sat::TaskTime>>(8 * v7, v3, v4, 0, a2);
  }

  else if (v4 - v3 >= 17)
  {
    v8 = v4 - 1;
    if (&v4[-1] != v3)
    {
      v9 = v4 - 2;
      v10 = v4 - 1;
      do
      {
        if (v10->n128_u64[1] < v9->n128_u64[1])
        {
          a2 = *v10;
          *v10 = *v9;
          *v9 = a2;
          v8 = v10;
        }

        --v10;
        --v9;
      }

      while (v10 != v3);
      v84 = v8 + 1;
      if (v84 != v4)
      {
        v85 = v84 - 2;
        do
        {
          v87 = v84->n128_u64[0];
          v86 = v84->n128_i64[1];
          v88 = v84;
          if (v86 < v84[-1].n128_u64[1])
          {
            v89 = v84 - 1;
            v90 = v85;
            v88 = v84;
            do
            {
              a2 = *v89;
              *v88-- = *v89;
              v89 = v90;
              v91 = v90->n128_i64[1];
              --v90;
            }

            while (v86 < v91);
          }

          v88->n128_u64[0] = v87;
          v88->n128_u64[1] = v86;
          ++v84;
          ++v85;
        }

        while (v84 != v4);
      }
    }
  }

  v11 = *(this + 1);
  v12 = *(this + 2);
  v13 = (this + 8);
  if (v11 == v12)
  {
    return 1;
  }

  v14 = 0;
  v15 = *(*(this + 5) - 8);
  v16 = *(*(this + 8) + 256);
  v17 = *(this + 1);
  do
  {
    v18 = v17->n128_i32[0];
    v19 = -*(v16 + 8 * v18);
    if (v15 > v19)
    {
      v20 = &v11[v14];
      v14 = (v14 + 1);
      v20->n128_u32[0] = v18;
      v20->n128_u64[1] = v19;
    }

    ++v17;
  }

  while (v17 != v12);
  if (v14 < 2)
  {
    return 1;
  }

  v21 = v14;
  v22 = v12 - v11;
  v23 = v14 >= v22;
  v24 = v14 - v22;
  if (v24 != 0 && v23)
  {
    std::vector<operations_research::sat::CapacityProfile::QueueElement>::__append(this + 8, v24);
    v11 = *(this + 1);
    v12 = *(this + 2);
  }

  else if (!v23)
  {
    v12 = &v11[v14];
    *(this + 2) = v12;
  }

  v25 = 126 - 2 * __clz(v12 - v11);
  v26 = v12 == v11 ? 0 : v25;
  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,false>(v11, v12, &v99, v26, 1, a2);
  v27 = (this + 72);
  *(this + 10) = *(this + 9);
  *(this + 24) = 0;
  v28 = *(this + 4);
  v95 = *(this + 5);
  if (v28 == v95)
  {
    return 1;
  }

  v29 = 0;
  v92 = v14;
  v94 = v14;
  while (1)
  {
    v30 = *v28;
    v31 = *(v28 + 1);
    v32 = *(this + 8);
    v33 = *(*(v32 + 152) + 4 * v30);
    if (v33 != -1 && ((*(*(*(v32 + 24) + 24) + ((v33 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v33 & 0x3F ^ 1)) & 1) != 0)
    {
      goto LABEL_30;
    }

    v96 = v28;
    if (v29 < v14)
    {
      v34 = v29;
      do
      {
        v35 = (*v13 + 16 * v34);
        if (v31 <= *(v35 + 1))
        {
          v29 = v34;
          goto LABEL_47;
        }

        v36 = *v35;
        LODWORD(v99) = v36;
        v37 = *(this + 8);
        v38 = *(this + 9);
        *(&v99 + 1) = *(*(v37 + 272) + 8 * v36);
        v100 = *(*(v37 + 232) + 8 * v36);
        v39 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 10) - v38) >> 3);
        std::vector<operations_research::sat::OrthogonalPackingResult::Item>::push_back[abi:ne200100](this + 72, &v99);
        if (v39 >= 1)
        {
          v40 = v39 & 0x7FFFFFFF;
          v41 = 24 * v40;
          while (1)
          {
            v42 = *v27 + v41;
            if (*(v42 - 16) <= *(&v99 + 1))
            {
              break;
            }

            --v40;
            *v42 = *(v42 - 24);
            *(v42 + 16) = *(v42 - 8);
            v41 -= 24;
            if (v40 + 1 <= 1)
            {
              LODWORD(v39) = 0;
              goto LABEL_43;
            }
          }

          LODWORD(v39) = v40;
        }

LABEL_43:
        v43 = *(this + 9) + 24 * v39;
        v44 = v99;
        *(v43 + 16) = v100;
        *v43 = v44;
        if (v39 <= *(this + 24))
        {
          *(this + 24) = 0;
        }

        ++v34;
      }

      while (v34 != v21);
      v29 = v14;
    }

LABEL_47:
    v45 = *(this + 9);
    v46 = 0xAAAAAAAAAAAAAAABLL * ((*(this + 10) - v45) >> 3);
    v47 = *(this + 24);
    if (v47 + 1 == v46 && *(v45 + 24 * v47) == v30)
    {
      v47 = 0;
      *(this + 24) = 0;
    }

    if (v47 >= v46)
    {
      v48 = 0;
      v52 = 0x8000000000000002;
    }

    else
    {
      v48 = 0;
      v49 = 0;
      v50 = v46 - v47;
      v51 = (v45 + 24 * v47 + 16);
      v52 = 0x8000000000000002;
      do
      {
        while (*(v51 - 4) == v30)
        {
          v49 = 1;
          ++v47;
          v51 += 3;
          if (!--v50)
          {
            goto LABEL_61;
          }
        }

        v54 = *(v51 - 1);
        if (v54 >= v52)
        {
          if ((v49 & 1) == 0)
          {
            *(this + 24) = v47;
          }

          v48 = v47;
          v52 = v54;
        }

        v53 = *v51;
        v51 += 3;
        v52 += v53;
        ++v47;
        --v50;
      }

      while (v50);
    }

LABEL_61:
    if (v52 <= -*(*(*(this + 8) + 256) + 8 * v30))
    {
      goto LABEL_29;
    }

    v93 = v29;
    v55 = 0x8000000000000002;
    v97 = v46;
    v56 = v46 - v48;
    if (v46 > v48)
    {
      v57 = 24 * v48;
      do
      {
        v58 = *(*v27 + v57);
        if (v30 != v58)
        {
          v59 = *(this + 8);
          v60 = -*(*(v59 + 32) + 8 * v58);
          if (v55 < v60 && (operations_research::sat::SchedulingConstraintHelper::GetCurrentMinDistanceBetweenTasks(v59, v58, v30, 0) & 0x8000000000000000) != 0)
          {
            v55 = v60;
          }
        }

        v57 += 24;
        --v56;
      }

      while (v56);
    }

    if (v31 <= v55)
    {
      v13 = (this + 8);
      v29 = v93;
      v14 = v92;
LABEL_29:
      v21 = v94;
      v28 = v96;
      goto LABEL_30;
    }

    operations_research::sat::SchedulingConstraintHelper::ClearReason(*(this + 8));
    v61 = v97 - v48;
    if (v97 > v48)
    {
      v98 = *(*(this + 9) + 24 * v48 + 8);
      v62 = 24 * v48;
      do
      {
        v69 = *(*v27 + v62);
        if (v69 != v30)
        {
          v70 = *(this + 8);
          operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v70, *(*v27 + v62));
          v71 = *(*(v70 + 19) + 4 * v69);
          if (v71 != -1)
          {
            LODWORD(v99) = v71 ^ 1;
            std::vector<int>::push_back[abi:ne200100](v70 + 496, &v99);
          }

          operations_research::sat::SchedulingConstraintHelper::AddEnergyAfterReason(*(this + 8), v69, *(*(this + 9) + v62 + 16), v98);
          if ((operations_research::sat::SchedulingConstraintHelper::GetCurrentMinDistanceBetweenTasks(*(this + 8), v69, v30, 1) & 0x8000000000000000) != 0)
          {
            v72 = *(this + 8);
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v72, v69);
            v73 = *(v72 + 16) + 24 * v69;
            if (*v73 == -1)
            {
              v65 = 0;
              v64 = -1;
            }

            else
            {
              v63 = *(v73 + 8);
              v64 = *v73 ^ (v63 >> 63) ^ 1;
              if (v63 >= 0)
              {
                v65 = *(v73 + 8);
              }

              else
              {
                v65 = -v63;
              }
            }

            v66 = *(v72 + 10);
            v67 = *(v72 + 13);
            v68 = -*(v73 + 16);
            LODWORD(v99) = v64;
            *(&v99 + 1) = v65;
            v100 = v68;
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v72, (v66 + 24 * v69), v55, (v67 + 24 * v69), &v99);
          }
        }

        v62 += 24;
        --v61;
      }

      while (v61);
    }

    v74 = *(this + 8);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v74, v30);
    v75 = *(v74 + 10);
    v76 = *(v74 + 13);
    v77 = *(v74 + 16) + 24 * v30;
    if (*v77 == -1)
    {
      v80 = 0;
      v79 = -1;
    }

    else
    {
      v78 = *(v77 + 8);
      v79 = *v77 ^ (v78 >> 63) ^ 1;
      v80 = v78 >= 0 ? *(v77 + 8) : -v78;
    }

    v13 = (this + 8);
    v14 = v92;
    v21 = v94;
    v81 = *(v77 + 16);
    LODWORD(v99) = v79;
    *(&v99 + 1) = v80;
    v100 = -v81;
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v74, (v75 + 24 * v30), v52 - 1, (v76 + 24 * v30), &v99);
    v82 = *(this + 8);
    if (v55 == 0x8000000000000002)
    {
      return operations_research::sat::SchedulingConstraintHelper::ReportConflict(v82);
    }

    result = operations_research::sat::SchedulingConstraintHelper::DecreaseEndMax(v82, v30, v55);
    v28 = v96;
    v29 = v93;
    if (!result)
    {
      return result;
    }

LABEL_30:
    v28 += 4;
    if (v28 == v95)
    {
      return 1;
    }
  }
}

uint64_t operations_research::sat::DisjunctiveEdgeFinding::Propagate(operations_research::sat::DisjunctiveEdgeFinding *this)
{
  v2 = *(this + 2);
  v4 = *(v2 + 10);
  v3 = *(v2 + 11);
  result = operations_research::sat::SchedulingConstraintHelper::SynchronizeAndSetTimeDirection(v2, *(this + 8));
  if (result)
  {
    v6 = (-1431655765 * ((v3 - v4) >> 3));
    std::vector<BOOL>::resize(this + 160, v6, 0);
    v8 = *(this + 17);
    v9 = (*(this + 18) - v8) >> 2;
    if (v6 <= v9)
    {
      if (v6 < v9)
      {
        *(this + 18) = v8 + 4 * v6;
      }
    }

    else
    {
      std::vector<int>::__append((this + 136), v6 - v9);
    }

    v10 = 0x8000000000000002;
    *(this + 7) = *(this + 6);
    started = operations_research::sat::SchedulingConstraintHelper::TaskByIncreasingShiftedStartMin(*(this + 2), v7);
    if ((v12 & 0xFFFFFFFFFFFFFFFLL) != 0)
    {
      v14 = started;
      v15 = *(this + 2);
      for (i = 16 * v12; i; i -= 16)
      {
        v13 = *v14;
        v20 = *v14;
        v17 = v20.n128_i32[0];
        v18 = *(v15[19] + 4 * v20.n128_i32[0]);
        if (v18 == -1 || ((*(*(v15[3] + 24) + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v18 & 0x3F ^ 1)) & 1) == 0)
        {
          if (*(v15[30] + 8 * v20.n128_i32[0]) < v10)
          {
            std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 48, &v20);
          }

          else
          {
            v19 = *(this + 6);
            if ((*(this + 7) - v19) >= 0x21)
            {
              result = operations_research::sat::DisjunctiveEdgeFinding::PropagateSubwindow(this, v10, v13);
              if (!result)
              {
                return result;
              }

              v19 = *(this + 6);
            }

            *(this + 7) = v19;
            std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](this + 48, &v20);
            v10 = v20.n128_i64[1];
          }

          v15 = *(this + 2);
          v10 += *(v15[29] + 8 * v17);
        }

        ++v14;
      }
    }

    if (*(this + 7) - *(this + 6) < 0x21uLL)
    {
      return 1;
    }

    result = operations_research::sat::DisjunctiveEdgeFinding::PropagateSubwindow(this, v10, v13);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

uint64_t operations_research::sat::DisjunctiveEdgeFinding::PropagateSubwindow(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1 + 24;
  *(a1 + 32) = *(a1 + 24);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  if (v5 == v6)
  {
    return 1;
  }

  do
  {
    while (1)
    {
      v8 = *v5;
      v9 = *(a1 + 16);
      v10 = *v5;
      v11 = -*(v9[33] + 8 * *v5);
      v12 = *(v9[19] + 4 * *v5);
      v13 = *v5 >> 3;
      if (v12 == -1 || ((*(*(v9[3] + 24) + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(v9[19] + 4 * v8))) && v11 < a2)
      {
        break;
      }

      *(*(a1 + 160) + (v13 & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
      v5 += 4;
      if (v5 == v6)
      {
        goto LABEL_8;
      }
    }

    *(*(a1 + 160) + (v13 & 0x1FFFFFFFFFFFFFF8)) &= ~(1 << v10);
    LODWORD(v152) = v8;
    *(&v152 + 1) = v11;
    std::vector<operations_research::sat::IntegerLiteral>::push_back[abi:ne200100](v4, &v152);
    v5 += 4;
  }

  while (v5 != v6);
LABEL_8:
  v14 = *(a1 + 24);
  v15 = *(a1 + 32);
  v16 = v15 - v14;
  if (v16 < 2)
  {
    return 1;
  }

  v18 = 126 - 2 * __clz(v16);
  if (v15 == v14)
  {
    v19 = 0;
  }

  else
  {
    v19 = v18;
  }

  std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,operations_research::sat::TaskTime *,false>(v14, v15, &v152, v19, 1, a3);
  v20 = *(a1 + 56) - *(a1 + 48);
  v21 = v20 >> 4;
  *(a1 + 120) = *(a1 + 112);
  v143 = (a1 + 112);
  v22 = a1 + 72;
  operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::Reset((a1 + 72), v20 >> 4);
  v133 = (v20 >> 4) - 1;
  if ((v20 >> 4) >= 1)
  {
    v23 = 0;
    v24 = 0;
    v25 = (v20 >> 4) & 0x7FFFFFFF;
    do
    {
      while (1)
      {
        v26 = (*(a1 + 48) + v23);
        v27 = *v26;
        v28 = *(v26 + 1);
        *&v152 = *(*(*(a1 + 16) + 232) + 8 * v27);
        std::vector<long long>::push_back[abi:ne200100](v143, &v152);
        if ((*(*(a1 + 160) + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v27))
        {
          break;
        }

        *(*(a1 + 136) + 4 * v27) = v24;
        operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::AddOrUpdateEvent(a1 + 72, v24++, v28, v152, v152);
        v23 += 16;
        if (v25 == v24)
        {
          goto LABEL_18;
        }
      }

      operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::AddOrUpdateOptionalEvent(a1 + 72, v24++, v28, v152);
      v23 += 16;
    }

    while (v25 != v24);
  }

LABEL_18:
  v151 = *(*(a1 + 32) - 8);
  v29 = v151;
  Envelope = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetEnvelope(a1 + 72);
  if (Envelope > v151)
  {
LABEL_19:
    operations_research::sat::SchedulingConstraintHelper::ClearReason(*(a1 + 16));
    MaxEventWithEnvelopeGreaterThan = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetMaxEventWithEnvelopeGreaterThan(v22, v29);
    v32 = *(*(a1 + 48) + 16 * MaxEventWithEnvelopeGreaterThan + 8);
    EnvelopeOf = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetEnvelopeOf(v22, MaxEventWithEnvelopeGreaterThan);
    if (MaxEventWithEnvelopeGreaterThan >= v21)
    {
      return operations_research::sat::SchedulingConstraintHelper::ReportConflict(*(a1 + 16));
    }

    v34 = EnvelopeOf - 1;
    v35 = 16 * MaxEventWithEnvelopeGreaterThan;
    v36 = v21;
    v37 = 8 * MaxEventWithEnvelopeGreaterThan;
    v38 = v36 - MaxEventWithEnvelopeGreaterThan;
    while (1)
    {
      v44 = *(*(a1 + 48) + v35);
      if ((*(*(a1 + 160) + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v44))
      {
        goto LABEL_26;
      }

      v45 = *(a1 + 16);
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v45, *(*(a1 + 48) + v35));
      v46 = *(*(v45 + 19) + 4 * v44);
      if (v46 != -1)
      {
        LODWORD(v152) = v46 ^ 1;
        std::vector<int>::push_back[abi:ne200100](v45 + 496, &v152);
      }

      v47 = *(*(a1 + 112) + v37);
      v48 = *(a1 + 16);
      if (*(*(v48 + 30) + 8 * v44) < v32)
      {
        break;
      }

      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v48, v44);
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v48, (*(v48 + 22) + 24 * v44), -v32, (*(v48 + 25) + 24 * v44), (*(v48 + 16) + 24 * v44));
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v48, v44);
      if (v47 >= 1)
      {
        goto LABEL_39;
      }

LABEL_25:
      v43 = *(a1 + 16);
      operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v43, v44);
      operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v43, (*(v43 + 13) + 24 * v44), v34, (*(v43 + 10) + 24 * v44), (*(v43 + 16) + 24 * v44));
LABEL_26:
      v37 += 8;
      v35 += 16;
      if (!--v38)
      {
        return operations_research::sat::SchedulingConstraintHelper::ReportConflict(*(a1 + 16));
      }
    }

    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v48, v44);
    v49 = *(v48 + 16) + 24 * v44;
    if (*v49 == -1)
    {
      v52 = 0;
      v51 = -1;
    }

    else
    {
      v50 = *(v49 + 8);
      v51 = *v49 ^ (v50 >> 63) ^ 1;
      if (v50 >= 0)
      {
        v52 = *(v49 + 8);
      }

      else
      {
        v52 = -v50;
      }
    }

    v53 = *(v48 + 25);
    v54 = *(v48 + 22);
    v55 = -*(v49 + 16);
    LODWORD(v152) = v51;
    *(&v152 + 1) = v52;
    v153 = v55;
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v48, (v53 + 24 * v44), -(v32 + v47), (v54 + 24 * v44), &v152);
    operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v48, v44);
    if (v47 < 1)
    {
      goto LABEL_25;
    }

LABEL_39:
    v56 = *(v48 + 16) + 24 * v44;
    if (*v56 == -1)
    {
      v41 = 0;
      v40 = -1;
    }

    else
    {
      v39 = *(v56 + 8);
      v40 = *v56 ^ (v39 >> 63) ^ 1;
      if (v39 >= 0)
      {
        v41 = *(v56 + 8);
      }

      else
      {
        v41 = -v39;
      }
    }

    v42 = -*(v56 + 16);
    LODWORD(v152) = v40;
    *(&v152 + 1) = v41;
    v153 = v42;
    operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v48, &v152, -v47, (*(v48 + 25) + 24 * v44), (*(v48 + 10) + 24 * v44));
    goto LABEL_25;
  }

  v57 = (v20 >> 4);
  v58 = Envelope;
  v134 = v57;
  v135 = v21;
  while (operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetOptionalEnvelope(v22) <= v29)
  {
LABEL_121:
    v128 = *(a1 + 24);
    if ((*(a1 + 32) - v128) < 0x21)
    {
      return 1;
    }

    v129 = *(v128 + 8);
    if (v129 >= operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetOptionalEnvelope(v22))
    {
      return 1;
    }

    v130 = *(a1 + 32);
    v131 = *(v130 - 16);
    *(a1 + 32) = v130 - 16;
    v132 = *(*(a1 + 136) + 4 * v131);
    *(*(a1 + 160) + ((v131 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v131;
    operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::AddOrUpdateOptionalEvent(v22, v132, *(*(a1 + 48) + 16 * v132 + 8), *(*(a1 + 112) + 8 * v132));
    v151 = *(*(a1 + 32) - 8);
    v29 = v151;
    v58 = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetEnvelope(v22);
    if (v58 > v29)
    {
      goto LABEL_19;
    }
  }

  v139 = v58 - 1;
  v136 = v29;
  v137 = v58;
  while (1)
  {
    OptionalEnvelope = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetOptionalEnvelope(v22);
    v150 = 0;
    v149 = 0;
    operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetEventsWithOptionalEnvelopeGreaterThan(v22, v29, &v150 + 1, &v150, &v149);
    v60 = v150;
    v61 = *(*(a1 + 48) + 16 * v150);
    v62 = *(a1 + 16);
    v63 = *(v62[19] + 4 * v61);
    if (v63 != -1 && ((*(*(v62[3] + 24) + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> (v63 & 0x3F ^ 1)) & 1) != 0 || *(v62[30] + 8 * v61) >= v58)
    {
      goto LABEL_45;
    }

    v64 = operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetMaxEventWithEnvelopeGreaterThan(v22, v139);
    v65 = v64;
    v66 = HIDWORD(v150);
    if (SHIDWORD(v150) > v64)
    {
      HIDWORD(v150) = v64;
      v66 = v64;
    }

    v67 = *(a1 + 48);
    v68 = *(a1 + 16);
    v69 = *(*(v68 + 31) + 8 * v61);
    v146 = *(v67 + 16 * v65 + 8);
    v147 = *(v67 + 16 * v66 + 8);
    if (v69 <= v29)
    {
      v70 = OptionalEnvelope;
    }

    else
    {
      v70 = *(*(v68 + 31) + 8 * v61);
    }

    v148 = v70 - 1;
    v140 = v70 - 1;
    if (v70 - 1 < v29)
    {
      operations_research::sat::DisjunctiveEdgeFinding::PropagateSubwindow(&v148, &v151, &v152);
    }

    v141 = v69;
    v71 = v66;
    operations_research::sat::SchedulingConstraintHelper::ClearReason(v68);
    v142 = v71;
    if (v71 < v21)
    {
      v144 = v65;
      v145 = v61;
      v72 = 1;
      v73 = v71;
LABEL_57:
      v138 = v72;
      v74 = 16 * v73;
      v75 = v21 - v73;
      do
      {
        v21 = *(*(a1 + 48) + v74);
        if (((*(*(a1 + 160) + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          v80 = *(a1 + 16);
          operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v80, *(*(a1 + 48) + v74));
          v81 = *(*(v80 + 19) + 4 * v21);
          if (v81 != -1)
          {
            v82 = v81 ^ 1;
            v84 = *(v80 + 63);
            v83 = *(v80 + 64);
            if (v84 >= v83)
            {
              v86 = *(v80 + 62);
              v87 = v84 - v86;
              v88 = (v84 - v86) >> 2;
              v89 = v88 + 1;
              if ((v88 + 1) >> 62)
              {
                std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
              }

              v90 = v83 - v86;
              if (v90 >> 1 > v89)
              {
                v89 = v90 >> 1;
              }

              if (v90 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v91 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v91 = v89;
              }

              if (v91)
              {
                if (!(v91 >> 62))
                {
                  operator new();
                }

                std::__throw_bad_array_new_length[abi:ne200100]();
              }

              v92 = (v84 - v86) >> 2;
              v93 = (4 * v88);
              v94 = (4 * v88 - 4 * v92);
              *v93 = v82;
              v85 = v93 + 1;
              memcpy(v94, v86, v87);
              *(v80 + 62) = v94;
              *(v80 + 63) = v85;
              *(v80 + 64) = 0;
              if (v86)
              {
                operator delete(v86);
              }

              v22 = a1 + 72;
            }

            else
            {
              *v84 = v82;
              v85 = v84 + 1;
            }

            *(v80 + 63) = v85;
          }

          v95 = *(a1 + 16);
          v96 = *(*(a1 + 112) + 8 * v73);
          if (v73 >= v144)
          {
            v97 = v146;
          }

          else
          {
            v97 = v147;
          }

          v98 = *(a1 + 16);
          if (*(*(v95 + 30) + 8 * v21) >= v97)
          {
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v98, v21);
            v103 = -v97;
            v104 = (*(v95 + 22) + 24 * v21);
            v105 = (*(v95 + 25) + 24 * v21);
            v106 = (*(v95 + 16) + 24 * v21);
          }

          else
          {
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v98, v21);
            v99 = *(v95 + 16) + 24 * v21;
            if (*v99 == -1)
            {
              v102 = 0;
              v101 = -1;
            }

            else
            {
              v100 = *(v99 + 8);
              v101 = *v99 ^ (v100 >> 63) ^ 1;
              if (v100 >= 0)
              {
                v102 = *(v99 + 8);
              }

              else
              {
                v102 = -v100;
              }
            }

            v107 = *(v95 + 25);
            v108 = *(v95 + 22);
            v103 = -(v97 + v96);
            v109 = -*(v99 + 16);
            LODWORD(v152) = v101;
            *(&v152 + 1) = v102;
            v153 = v109;
            v104 = (v107 + 24 * v21);
            v105 = (v108 + 24 * v21);
            v106 = &v152;
          }

          operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v95, v104, v103, v105, v106);
          operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v95, v21);
          v61 = v145;
          if (v96 >= 1)
          {
            v110 = *(v95 + 16) + 24 * v21;
            if (*v110 == -1)
            {
              v78 = 0;
              v77 = -1;
            }

            else
            {
              v76 = *(v110 + 8);
              v77 = *v110 ^ (v76 >> 63) ^ 1;
              if (v76 >= 0)
              {
                v78 = *(v110 + 8);
              }

              else
              {
                v78 = -v76;
              }
            }

            v79 = -*(v110 + 16);
            LODWORD(v152) = v77;
            *(&v152 + 1) = v78;
            v153 = v79;
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v95, &v152, -v96, (*(v95 + 25) + 24 * v21), (*(v95 + 10) + 24 * v21));
          }

          if ((operations_research::sat::SchedulingConstraintHelper::GetCurrentMinDistanceBetweenTasks(*(a1 + 16), v21, v145, 1) & 0x8000000000000000) != 0)
          {
            v111 = *(a1 + 16);
            operations_research::sat::SchedulingConstraintHelper::AddOtherReason(v111, v21);
            operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v111, (*(v111 + 13) + 24 * v21), v140, (*(v111 + 10) + 24 * v21), (*(v111 + 16) + 24 * v21));
            v72 = 0;
            v57 = v134;
            v112 = v133 == v73++;
            LODWORD(v21) = v135;
            v29 = v136;
            v58 = v137;
            if (!v112)
            {
              goto LABEL_57;
            }

            goto LABEL_99;
          }
        }

        ++v73;
        v74 += 16;
        --v75;
      }

      while (v75);
      v57 = v134;
      LODWORD(v21) = v135;
      v29 = v136;
      v58 = v137;
      if (v138)
      {
        goto LABEL_105;
      }

LABEL_99:
      v113 = *(a1 + 16);
      if (v141 > v29)
      {
        v114 = *(v113[31] + 8 * v61);
        operations_research::sat::SchedulingConstraintHelper::AddOtherReason(*(a1 + 16), v61);
        v115 = v113[16] + 24 * v61;
        if (*v115 == -1)
        {
          v118 = 0;
          v117 = -1;
        }

        else
        {
          v116 = *(v115 + 8);
          v117 = *v115 ^ (v116 >> 63) ^ 1;
          if (v116 >= 0)
          {
            v118 = *(v115 + 8);
          }

          else
          {
            v118 = -v116;
          }
        }

        v121 = v113[25];
        v122 = v113[22];
        v123 = -*(v115 + 16);
        LODWORD(v152) = v117;
        *(&v152 + 1) = v118;
        v153 = v123;
        operations_research::sat::SchedulingConstraintHelper::AddGenericReason(v113, (v121 + 24 * v61), -v114, (v122 + 24 * v61), &v152);
        v58 = v137;
        v119 = *(a1 + 16);
        v120 = *(v119 + 3);
        if ((*(v120 + 8) & 0xFFFFFFF) != 0)
        {
          goto LABEL_106;
        }

        goto LABEL_110;
      }

      operations_research::sat::SchedulingConstraintHelper::AddEnergyAfterReason(*(a1 + 16), v61, *(*v143 + 8 * v150), v147);
    }

LABEL_105:
    v119 = *(a1 + 16);
    v120 = *(v119 + 3);
    if ((*(v120 + 8) & 0xFFFFFFF) != 0)
    {
      goto LABEL_106;
    }

LABEL_110:
    v124 = *(*(v119 + 19) + 4 * v61);
    if (v124 == -1)
    {
      v125 = v142;
      if (v142 >= v21)
      {
        goto LABEL_106;
      }
    }

    else
    {
      v125 = v142;
      if (((*(*(v120 + 24) + ((v124 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> *(*(v119 + 19) + 4 * v61)) & 1) == 0 || v142 >= v21)
      {
        goto LABEL_106;
      }
    }

    v126 = 16 * v125;
    do
    {
      v127 = *(*(a1 + 48) + v126);
      if (((*(*(a1 + 160) + ((v127 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v127) & 1) == 0 && !operations_research::sat::SchedulingConstraintHelper::PropagatePrecedence(*(a1 + 16), v127, v61))
      {
        return 0;
      }

      ++v125;
      v126 += 16;
    }

    while (v125 < v57);
    v119 = *(a1 + 16);
LABEL_106:
    if ((operations_research::sat::SchedulingConstraintHelper::IncreaseStartMin(v119, v61, v58) & 1) == 0)
    {
      return 0;
    }

    v60 = v150;
LABEL_45:
    operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::RemoveEvent(v22, v60);
    if (operations_research::sat::ThetaLambdaTree<operations_research::StrongInt64<operations_research::sat::IntegerValue_integer_tag_>>::GetOptionalEnvelope(v22) <= v29)
    {
      goto LABEL_121;
    }
  }
}