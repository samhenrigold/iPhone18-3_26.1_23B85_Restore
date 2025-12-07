__n128 std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5, unsigned int (**a6)(__int128 *, __int128 *))
{
  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(a1, a2, a3, a4, a6);
  v12 = *a6;
  v13 = a5[1];
  v47 = *a5;
  v48 = v13;
  v49 = a5[2];
  v14 = a4[1];
  v44 = *a4;
  v45 = v14;
  v46 = a4[2];
  if (v12(&v47, &v44))
  {
    v16 = *a4;
    v17 = a4[1];
    v18 = a4[2];
    v19 = a5[2];
    v20 = *a5;
    a4[1] = a5[1];
    a4[2] = v19;
    *a4 = v20;
    *a5 = v16;
    a5[1] = v17;
    a5[2] = v18;
    v21 = *a6;
    v22 = a4[1];
    v47 = *a4;
    v48 = v22;
    v49 = a4[2];
    v23 = a3[1];
    v44 = *a3;
    v45 = v23;
    v46 = a3[2];
    if (v21(&v47, &v44))
    {
      v24 = *a3;
      v25 = a3[1];
      v26 = a3[2];
      v27 = a4[2];
      v28 = *a4;
      a3[1] = a4[1];
      a3[2] = v27;
      *a3 = v28;
      *a4 = v24;
      a4[1] = v25;
      a4[2] = v26;
      v29 = *a6;
      v30 = a3[1];
      v47 = *a3;
      v48 = v30;
      v49 = a3[2];
      v31 = a2[1];
      v44 = *a2;
      v45 = v31;
      v46 = a2[2];
      if (v29(&v47, &v44))
      {
        v32 = *a2;
        v33 = a2[1];
        v34 = a2[2];
        v35 = a3[2];
        v36 = *a3;
        a2[1] = a3[1];
        a2[2] = v35;
        *a2 = v36;
        *a3 = v32;
        a3[1] = v33;
        a3[2] = v34;
        v37 = *a6;
        v38 = a2[1];
        v47 = *a2;
        v48 = v38;
        v49 = a2[2];
        v39 = a1[1];
        v44 = *a1;
        v45 = v39;
        v46 = a1[2];
        if (v37(&v47, &v44))
        {
          result = *a1;
          v40 = a1[1];
          v41 = a1[2];
          v42 = a2[2];
          v43 = *a2;
          a1[1] = a2[1];
          a1[2] = v42;
          *a1 = v43;
          *a2 = result;
          a2[1] = v40;
          a2[2] = v41;
        }
      }
    }
  }

  return result;
}

uint64_t std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(uint64_t result, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v37 = v8;
    v38 = v7;
    v39 = v6;
    v40 = v5;
    v41 = v3;
    v42 = v4;
    v10 = result;
    v11 = (result + 48);
    if ((result + 48) != a2)
    {
      v13 = 0;
      v14 = result;
      do
      {
        v15 = v11;
        v16 = *a3;
        v17 = *(v14 + 64);
        v18 = *(v14 + 80);
        v34 = *v15;
        v35 = v17;
        v36 = v18;
        v19 = *(v14 + 16);
        v31 = *v14;
        v32 = v19;
        v33 = *(v14 + 32);
        result = v16(&v34, &v31);
        if (result)
        {
          v30 = *v15;
          v20 = *(v14 + 64);
          v21 = *(v14 + 72);
          v22 = *(v14 + 80);
          v23 = *(v14 + 88);
          v24 = v13;
          while (1)
          {
            v25 = (v10 + v24);
            v26 = *(v10 + v24 + 16);
            v25[3] = *(v10 + v24);
            v25[4] = v26;
            v25[5] = *(v10 + v24 + 32);
            if (!v24)
            {
              break;
            }

            v27 = *a3;
            *&v35 = v20;
            *(&v35 + 1) = v21;
            *&v36 = v22;
            *(&v36 + 1) = v23;
            v28 = *(v25 - 2);
            v31 = *(v25 - 3);
            v32 = v28;
            v33 = *(v25 - 1);
            v34 = v30;
            result = v27(&v34, &v31);
            v24 -= 48;
            if ((result & 1) == 0)
            {
              v29 = v10 + v24 + 48;
              goto LABEL_10;
            }
          }

          v29 = v10;
LABEL_10:
          *v29 = v30;
          *(v29 + 16) = v20;
          *(v29 + 24) = v21;
          *(v29 + 32) = v22;
          *(v29 + 40) = v23;
        }

        v11 = v15 + 3;
        v13 += 48;
        v14 = v15;
      }

      while (v15 + 3 != a2);
    }
  }

  return result;
}

uint64_t std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(uint64_t result, _OWORD *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  if (result != a2)
  {
    v36 = v8;
    v37 = v7;
    v38 = v6;
    v39 = v5;
    v40 = v3;
    v41 = v4;
    v10 = result;
    v11 = (result + 48);
    if ((result + 48) != a2)
    {
      do
      {
        v13 = v11;
        v14 = *a3;
        v15 = *(v10 + 64);
        v16 = *(v10 + 80);
        v33 = *v13;
        v34 = v15;
        v35 = v16;
        v17 = *(v10 + 16);
        v30 = *v10;
        v31 = v17;
        v32 = *(v10 + 32);
        result = v14(&v33, &v30);
        if (result)
        {
          v29 = *v13;
          v18 = *(v10 + 64);
          v19 = *(v10 + 72);
          v20 = *(v10 + 80);
          v21 = *(v10 + 88);
          v22 = v13;
          do
          {
            v23 = *(v22 - 2);
            v24 = *(v22 - 1);
            v25 = *(v22 - 4);
            *v22 = *(v22 - 3);
            v22[1] = v23;
            v22[2] = v24;
            v32 = v25;
            v33 = v29;
            v26 = *(v22 - 5);
            v30 = *(v22 - 6);
            v31 = v26;
            v27 = v22 - 3;
            v28 = *a3;
            *&v34 = v18;
            *(&v34 + 1) = v19;
            *&v35 = v20;
            *(&v35 + 1) = v21;
            result = v28(&v33, &v30);
            v22 = v27;
          }

          while ((result & 1) != 0);
          *v27 = v29;
          *(v27 + 2) = v18;
          *(v27 + 3) = v19;
          *(v27 + 4) = v20;
          *(v27 + 5) = v21;
        }

        v11 = v13 + 3;
        v10 = v13;
      }

      while (v13 + 3 != a2);
    }
  }

  return result;
}

__int128 *std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,PCEdgeVertex *,BOOL (*&)(PCEdgeVertex,PCEdgeVertex)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v4 = a2;
  v46 = *a1;
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = *(a1 + 4);
  v9 = *(a1 + 5);
  v10 = *a3;
  v11 = *a1;
  v42 = v6;
  v43 = v7;
  v44 = v8;
  v45 = v9;
  v12 = *(a2 - 2);
  v38 = *(a2 - 3);
  v39 = v12;
  v40 = *(a2 - 1);
  v41 = v11;
  if (v10(&v41, &v38))
  {
    v13 = a1;
    do
    {
      v14 = v13 + 3;
      v15 = *a3;
      v42 = v6;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v16 = v13[4];
      v38 = v13[3];
      v39 = v16;
      v40 = v13[5];
      v41 = v46;
      v17 = v15(&v41, &v38);
      v13 = v14;
    }

    while ((v17 & 1) == 0);
  }

  else
  {
    v18 = a1 + 3;
    do
    {
      v14 = v18;
      if (v18 >= v4)
      {
        break;
      }

      v19 = *a3;
      v42 = v6;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v20 = v14[1];
      v38 = *v14;
      v39 = v20;
      v40 = v14[2];
      v41 = v46;
      v21 = v19(&v41, &v38);
      v18 = v14 + 3;
    }

    while (!v21);
  }

  if (v14 >= v4)
  {
    v22 = v4;
  }

  else
  {
    do
    {
      v22 = v4 - 3;
      v23 = *a3;
      v42 = v6;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v24 = *(v4 - 2);
      v38 = *(v4 - 3);
      v39 = v24;
      v40 = *(v4 - 1);
      v41 = v46;
      v4 -= 3;
    }

    while ((v23(&v41, &v38) & 1) != 0);
  }

  while (v14 < v22)
  {
    v25 = v14[1];
    v41 = *v14;
    v26 = v14[2];
    v27 = v22[2];
    v28 = *v22;
    v14[1] = v22[1];
    v14[2] = v27;
    *v14 = v28;
    *v22 = v41;
    v22[1] = v25;
    v22[2] = v26;
    do
    {
      v29 = v14[4];
      v38 = v14[3];
      v39 = v29;
      v30 = v14[5];
      v14 += 3;
      v31 = *a3;
      v42 = v6;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v40 = v30;
      v41 = v46;
    }

    while (!v31(&v41, &v38));
    do
    {
      v41 = v46;
      v42 = v6;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v38 = *(v22 - 3);
      v39 = *(v22 - 2);
      v32 = *(v22 - 1);
      v22 -= 3;
      v33 = *a3;
      v40 = v32;
    }

    while ((v33(&v41, &v38) & 1) != 0);
  }

  v34 = v14 - 3;
  if (v14 - 3 != a1)
  {
    v35 = *v34;
    v36 = *(v14 - 1);
    a1[1] = *(v14 - 2);
    a1[2] = v36;
    *a1 = v35;
  }

  *v34 = v46;
  *(v14 - 4) = v6;
  *(v14 - 3) = v7;
  *(v14 - 2) = v8;
  *(v14 - 1) = v9;
  return v14;
}

__int128 *std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,PCEdgeVertex *,BOOL (*&)(PCEdgeVertex,PCEdgeVertex)>(__int128 *a1, __int128 *a2, uint64_t (**a3)(__int128 *, __int128 *))
{
  v6 = 0;
  v42 = *a1;
  v7 = *(a1 + 2);
  v8 = *(a1 + 3);
  v9 = *(a1 + 4);
  v10 = *(a1 + 5);
  do
  {
    v11 = *a3;
    v12 = a1[v6 + 4];
    v39 = a1[v6 + 3];
    v40 = v12;
    v41 = a1[v6 + 5];
    v34 = v42;
    v35 = v7;
    v36 = v8;
    v37 = v9;
    v38 = v10;
    v6 += 3;
  }

  while ((v11(&v39, &v34) & 1) != 0);
  v13 = &a1[v6];
  if (v6 == 3)
  {
    while (v13 < a2)
    {
      v17 = *a3;
      v14 = a2 - 3;
      v18 = *(a2 - 2);
      v39 = *(a2 - 3);
      v40 = v18;
      v41 = *(a2 - 1);
      v34 = v42;
      v35 = v7;
      v36 = v8;
      v37 = v9;
      v38 = v10;
      a2 -= 3;
      if (v17(&v39, &v34))
      {
        goto LABEL_9;
      }
    }

    v14 = a2;
  }

  else
  {
    do
    {
      v14 = a2 - 3;
      v15 = *a3;
      v16 = *(a2 - 2);
      v39 = *(a2 - 3);
      v40 = v16;
      v41 = *(a2 - 1);
      v34 = v42;
      v35 = v7;
      v36 = v8;
      v37 = v9;
      v38 = v10;
      a2 -= 3;
    }

    while (!v15(&v39, &v34));
  }

LABEL_9:
  v19 = v13;
  if (v13 < v14)
  {
    v20 = v14;
    do
    {
      v22 = v19[1];
      v39 = *v19;
      v21 = v39;
      v23 = v19[2];
      v24 = *v20;
      v25 = v20[2];
      v19[1] = v20[1];
      v19[2] = v25;
      *v19 = v24;
      *v20 = v21;
      v20[1] = v22;
      v20[2] = v23;
      do
      {
        v26 = v19[4];
        v39 = v19[3];
        v40 = v26;
        v27 = v19[5];
        v19 += 3;
        v28 = *a3;
        v41 = v27;
        v34 = v42;
        v35 = v7;
        v36 = v8;
        v37 = v9;
        v38 = v10;
      }

      while ((v28(&v39, &v34) & 1) != 0);
      do
      {
        v39 = *(v20 - 3);
        v40 = *(v20 - 2);
        v29 = *(v20 - 1);
        v20 -= 3;
        v30 = *a3;
        v41 = v29;
        v34 = v42;
        v35 = v7;
        v36 = v8;
        v37 = v9;
        v38 = v10;
      }

      while (!v30(&v39, &v34));
    }

    while (v19 < v20);
  }

  result = v19 - 3;
  if (v19 - 3 != a1)
  {
    v32 = *result;
    v33 = *(v19 - 1);
    a1[1] = *(v19 - 2);
    a1[2] = v33;
    *a1 = v32;
  }

  *result = v42;
  *(v19 - 4) = v7;
  *(v19 - 3) = v8;
  *(v19 - 2) = v9;
  *(v19 - 1) = v10;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(__int128 *a1, __int128 *a2, unsigned int (**a3)(__int128 *, __int128 *))
{
  v6 = 0xAAAAAAAAAAAAAAABLL * (a2 - a1);
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a3;
        v8 = *(a2 - 2);
        v37 = *(a2 - 3);
        v38 = v8;
        v39 = *(a2 - 1);
        v9 = a1[1];
        v34 = *a1;
        v35 = v9;
        v36 = a1[2];
        if (v7(&v37, &v34))
        {
          v10 = *a1;
          v11 = a1[1];
          v12 = a1[2];
          v13 = *(a2 - 1);
          v14 = *(a2 - 3);
          a1[1] = *(a2 - 2);
          a1[2] = v13;
          *a1 = v14;
          *(a2 - 3) = v10;
          *(a2 - 2) = v11;
          *(a2 - 1) = v12;
        }

        return 1;
      }

      goto LABEL_11;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(a1, a1 + 3, a2 - 3, a3);
      return 1;
    case 4:
      std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(a1, a1 + 3, a1 + 6, a2 - 3, a3);
      return 1;
    case 5:
      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(a1, a1 + 3, a1 + 6, a1 + 9, a2 - 3, a3);
      return 1;
  }

LABEL_11:
  v15 = a1 + 6;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,0>(a1, a1 + 3, a1 + 6, a3);
  v16 = a1 + 9;
  if (a1 + 9 == a2)
  {
    return 1;
  }

  v17 = 0;
  v18 = 0;
  while (1)
  {
    v19 = *a3;
    v20 = v16[1];
    v37 = *v16;
    v38 = v20;
    v39 = v16[2];
    v21 = v15[1];
    v34 = *v15;
    v35 = v21;
    v36 = v15[2];
    if (v19(&v37, &v34))
    {
      v33 = *v16;
      v22 = *(v16 + 2);
      v23 = *(v16 + 3);
      v24 = *(v16 + 4);
      v25 = *(v16 + 5);
      v26 = v17;
      while (1)
      {
        v27 = (a1 + v26);
        v28 = *(a1 + v26 + 112);
        v27[9] = *(a1 + v26 + 96);
        v27[10] = v28;
        v27[11] = *(a1 + v26 + 128);
        if (v26 == -96)
        {
          break;
        }

        v29 = *a3;
        *&v38 = v22;
        *(&v38 + 1) = v23;
        *&v39 = v24;
        *(&v39 + 1) = v25;
        v30 = v27[4];
        v34 = v27[3];
        v35 = v30;
        v36 = v27[5];
        v37 = v33;
        v26 -= 48;
        if (((v29)(&v37, &v34) & 1) == 0)
        {
          v31 = (a1 + v26 + 144);
          goto LABEL_19;
        }
      }

      v31 = a1;
LABEL_19:
      *v31 = v33;
      *(v31 + 2) = v22;
      *(v31 + 3) = v23;
      *(v31 + 4) = v24;
      *(v31 + 5) = v25;
      if (++v18 == 8)
      {
        return v16 + 3 == a2;
      }
    }

    v15 = v16;
    v17 += 48;
    v16 += 3;
    if (v16 == a2)
    {
      return 1;
    }
  }
}

char *std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*,PCEdgeVertex*>(char *a1, char *a2, char *a3, uint64_t (**a4)(__int128 *, __int128 *))
{
  if (a1 != a2)
  {
    v8 = a2 - a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
    if (a2 - a1 >= 49)
    {
      v10 = (v9 - 2) >> 1;
      v11 = v10 + 1;
      v12 = &a1[48 * v10];
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(a1, a4, v9, v12);
        v12 -= 48;
        --v11;
      }

      while (v11);
    }

    v13 = a2;
    if (a2 != a3)
    {
      v13 = a2;
      do
      {
        v14 = *a4;
        v15 = *(v13 + 1);
        v34[0] = *v13;
        v34[1] = v15;
        v34[2] = *(v13 + 2);
        v16 = *(a1 + 1);
        v33[0] = *a1;
        v33[1] = v16;
        v33[2] = *(a1 + 2);
        if (v14(v34, v33))
        {
          v17 = *v13;
          v18 = *(v13 + 1);
          v19 = *(v13 + 2);
          v20 = *(a1 + 2);
          v21 = *a1;
          *(v13 + 1) = *(a1 + 1);
          *(v13 + 2) = v20;
          *v13 = v21;
          *a1 = v17;
          *(a1 + 1) = v18;
          *(a1 + 2) = v19;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(a1, a4, v9, a1);
        }

        v13 += 48;
      }

      while (v13 != a3);
    }

    if (v8 >= 49)
    {
      v22 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 4);
      v23 = a2 - 48;
      do
      {
        v34[0] = *a1;
        v25 = *(a1 + 2);
        v24 = *(a1 + 3);
        v27 = *(a1 + 4);
        v26 = *(a1 + 5);
        v28 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(a1, a4, v22);
        if (v23 == v28)
        {
          *v28 = v34[0];
          *(v28 + 2) = v25;
          *(v28 + 3) = v24;
          *(v28 + 4) = v27;
          *(v28 + 5) = v26;
        }

        else
        {
          v29 = *v23;
          v30 = *(v23 + 2);
          *(v28 + 1) = *(v23 + 1);
          *(v28 + 2) = v30;
          *v28 = v29;
          *v23 = v34[0];
          *(v23 + 2) = v25;
          *(v23 + 3) = v24;
          *(v23 + 4) = v27;
          *(v23 + 5) = v26;
          std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(a1, (v28 + 48), a4, 0xAAAAAAAAAAAAAAABLL * ((v28 + 48 - a1) >> 4));
        }

        v23 -= 48;
      }

      while (v22-- > 2);
    }

    return v13;
  }

  return a3;
}

uint64_t std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(uint64_t result, uint64_t (**a2)(__int128 *, __int128 *), uint64_t a3, _OWORD *a4)
{
  v10 = a3 - 2;
  if (a3 >= 2)
  {
    v50 = v9;
    v51 = v8;
    v52 = v7;
    v53 = v6;
    v54 = v4;
    v55 = v5;
    v11 = a4;
    v12 = result;
    v13 = v10 >> 1;
    if ((v10 >> 1) >= (0xAAAAAAAAAAAAAAABLL * ((a4 - result) >> 4)))
    {
      v16 = (0x5555555555555556 * ((a4 - result) >> 4)) | 1;
      v17 = (result + 48 * v16);
      v18 = 0x5555555555555556 * ((a4 - result) >> 4) + 2;
      if (v18 < a3)
      {
        v19 = *a2;
        v20 = v17[1];
        v47 = *v17;
        v48 = v20;
        v21 = v17[3];
        v49 = v17[2];
        v22 = v17[4];
        v23 = v17[5];
        v44 = v21;
        v45 = v22;
        v46 = v23;
        if (v19(&v47, &v44))
        {
          v17 += 3;
          v16 = v18;
        }
      }

      v24 = *a2;
      v25 = v17[1];
      v47 = *v17;
      v48 = v25;
      v49 = v17[2];
      v26 = v11[1];
      v44 = *v11;
      v45 = v26;
      v46 = v11[2];
      result = v24(&v47, &v44);
      if ((result & 1) == 0)
      {
        v43 = *v11;
        v27 = *(v11 + 2);
        v28 = *(v11 + 3);
        v29 = *(v11 + 4);
        v30 = *(v11 + 5);
        do
        {
          v31 = v11;
          v11 = v17;
          v32 = *v17;
          v33 = v17[2];
          v31[1] = v17[1];
          v31[2] = v33;
          *v31 = v32;
          if (v13 < v16)
          {
            break;
          }

          v34 = (2 * v16) | 1;
          v17 = (v12 + 48 * v34);
          v35 = 2 * v16 + 2;
          if (v35 < a3)
          {
            v36 = *a2;
            v37 = v17[1];
            v47 = *v17;
            v48 = v37;
            v38 = v17[3];
            v49 = v17[2];
            v39 = v17[4];
            v40 = v17[5];
            v44 = v38;
            v45 = v39;
            v46 = v40;
            if (v36(&v47, &v44))
            {
              v17 += 3;
              v34 = v35;
            }
          }

          v41 = *a2;
          v42 = v17[1];
          v47 = *v17;
          v48 = v42;
          v49 = v17[2];
          v44 = v43;
          *&v45 = v27;
          *(&v45 + 1) = v28;
          *&v46 = v29;
          *(&v46 + 1) = v30;
          result = v41(&v47, &v44);
          v16 = v34;
        }

        while (!result);
        *v11 = v43;
        *(v11 + 2) = v27;
        *(v11 + 3) = v28;
        *(v11 + 4) = v29;
        *(v11 + 5) = v30;
      }
    }
  }

  return result;
}

_OWORD *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(_OWORD *a1, unsigned int (**a2)(_OWORD *, _OWORD *), uint64_t a3)
{
  v6 = 0;
  v7 = (a3 - 2) / 2;
  do
  {
    v8 = &a1[3 * v6];
    v9 = v8 + 3;
    v10 = (2 * v6) | 1;
    v11 = 2 * v6 + 2;
    if (v11 < a3)
    {
      v12 = *a2;
      v18[0] = *v9;
      v18[1] = v8[4];
      v18[2] = v8[5];
      v13 = v8 + 6;
      v17[0] = v8[6];
      v17[1] = v8[7];
      v17[2] = v8[8];
      if (v12(v18, v17))
      {
        v9 = v13;
        v10 = v11;
      }
    }

    v14 = *v9;
    v15 = v9[2];
    a1[1] = v9[1];
    a1[2] = v15;
    *a1 = v14;
    a1 = v9;
    v6 = v10;
  }

  while (v10 <= v7);
  return v9;
}

uint64_t std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,BOOL (*&)(PCEdgeVertex,PCEdgeVertex),PCEdgeVertex*>(uint64_t result, uint64_t a2, uint64_t (**a3)(__int128 *, __int128 *), uint64_t a4)
{
  if (a4 >= 2)
  {
    v35 = v9;
    v36 = v8;
    v37 = v7;
    v38 = v6;
    v39 = v4;
    v40 = v5;
    v12 = result;
    v13 = (a4 - 2) >> 1;
    v14 = *a3;
    v15 = (result + 48 * v13);
    v16 = v15[1];
    v32 = *v15;
    v33 = v16;
    v34 = v15[2];
    v17 = *(a2 - 32);
    v29 = *(a2 - 48);
    v30 = v17;
    v31 = *(a2 - 16);
    result = v14(&v32, &v29);
    if (result)
    {
      v18 = (a2 - 48);
      v28 = *(a2 - 48);
      v19 = *(a2 - 32);
      v20 = *(a2 - 24);
      v21 = *(a2 - 16);
      v22 = *(a2 - 8);
      do
      {
        v23 = v18;
        v18 = v15;
        v24 = *v15;
        v25 = v15[2];
        v23[1] = v15[1];
        v23[2] = v25;
        *v23 = v24;
        if (!v13)
        {
          break;
        }

        v13 = (v13 - 1) >> 1;
        v26 = *a3;
        v15 = (v12 + 48 * v13);
        v27 = v15[1];
        v32 = *v15;
        v33 = v27;
        v34 = v15[2];
        v29 = v28;
        *&v30 = v19;
        *(&v30 + 1) = v20;
        *&v31 = v21;
        *(&v31 + 1) = v22;
        result = v26(&v32, &v29);
      }

      while ((result & 1) != 0);
      *v18 = v28;
      *(v18 + 2) = v19;
      *(v18 + 3) = v20;
      *(v18 + 4) = v21;
      *(v18 + 5) = v22;
    }
  }

  return result;
}

uint64_t *PCBinaryTree<PCEdgeSegment>::~PCBinaryTree(uint64_t *a1)
{
  PCBinaryTree<PCEdgeSegment>::removeBranch(a1, *a1);
  *a1 = 0;
  return a1;
}

uint64_t PCBinaryTree<PCEdgeSegment>::removeBranch(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v3 = result;
    PCBinaryTree<PCEdgeSegment>::removeBranch(result, *(a2 + 40));
    PCBinaryTree<PCEdgeSegment>::removeBranch(v3, *(a2 + 48));
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

void *PCBinaryTree<PCEdgeSegment>::insertNode(uint64_t *a1, uint64_t a2, double *a3)
{
  if (!a2)
  {
    operator new();
  }

  if (PCEdgeSegment::operator<(a3, a2))
  {
    PCBinaryTree<PCEdgeSegment>::insertNode(a1, *(a2 + 40), a3);
    *(a2 + 40) = v6;
    if (!v6)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  PCBinaryTree<PCEdgeSegment>::insertNode(a1, *(a2 + 48), a3);
  *(a2 + 48) = v6;
  if (v6)
  {
LABEL_4:
    *(v6 + 56) = a2;
  }

LABEL_5:
  v7 = *a1;
  result = PCBinaryTree<PCEdgeSegment>::balance(a1, a2);
  if (v7 == a2)
  {
    *a1 = result;
  }

  return result;
}

void *PCBinaryTree<PCEdgeSegment>::balance(uint64_t a1, void *a2)
{
  if (!a2)
  {
    return 0;
  }

  NodeHeight = PCBinaryTree<PCEdgeSegment>::getNodeHeight(a1, a2[5]);
  v5 = NodeHeight - PCBinaryTree<PCEdgeSegment>::getNodeHeight(a1, a2[6]);
  if (v5 < 2)
  {
    if (v5 > -2)
    {
      return a2;
    }

    if (PCBinaryTree<PCEdgeSegment>::getNodeHeightDelta(a1, a2[6]) < 1)
    {
      result = a2[6];
      v6 = a2[7];
      v12 = result[5];
      a2[6] = v12;
      if (v12)
      {
        *(v12 + 56) = a2;
      }

      result[5] = a2;
      a2[7] = result;
      goto LABEL_19;
    }

    v9 = a1;
    v10 = a2;
    v11 = 3;
  }

  else
  {
    if (PCBinaryTree<PCEdgeSegment>::getNodeHeightDelta(a1, a2[5]) >= 1)
    {
      v6 = a2[7];
      result = a2[5];
      v8 = result[6];
      a2[5] = v8;
      if (v8)
      {
        *(v8 + 56) = a2;
      }

      a2[7] = result;
      result[6] = a2;
LABEL_19:
      result[7] = v6;
      return result;
    }

    v9 = a1;
    v10 = a2;
    v11 = 2;
  }

  return PCBinaryTree<PCEdgeSegment>::rotate(v9, v10, v11);
}

uint64_t PCBinaryTree<PCEdgeSegment>::getNodeHeightDelta(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  NodeHeight = PCBinaryTree<PCEdgeSegment>::getNodeHeight(a1, *(a2 + 40));
  return NodeHeight - PCBinaryTree<PCEdgeSegment>::getNodeHeight(a1, *(a2 + 48));
}

void *PCBinaryTree<PCEdgeSegment>::rotate(uint64_t a1, void *a2, int a3)
{
  v4 = a2[7];
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v8 = PCBinaryTree<PCEdgeSegment>::rotate(a1, a2[5], 0);
      a2[5] = v8;
      if (v8)
      {
        v8[7] = a2;
      }

      v9 = a1;
      v10 = a2;
      v11 = 1;
    }

    else
    {
      v13 = PCBinaryTree<PCEdgeSegment>::rotate(a1, a2[6], 1);
      a2[6] = v13;
      if (v13)
      {
        v13[7] = a2;
      }

      v9 = a1;
      v10 = a2;
      v11 = 0;
    }

    result = PCBinaryTree<PCEdgeSegment>::rotate(v9, v10, v11);
  }

  else
  {
    if (a3)
    {
      result = a2[5];
      v12 = result[6];
      a2[5] = v12;
      if (v12)
      {
        *(v12 + 56) = a2;
      }

      result[6] = a2;
    }

    else
    {
      result = a2[6];
      v6 = result[5];
      a2[6] = v6;
      if (v6)
      {
        *(v6 + 56) = a2;
      }

      result[5] = a2;
    }

    a2[7] = result;
  }

  result[7] = v4;
  return result;
}

uint64_t PCBinaryTree<PCEdgeSegment>::getNodeHeight(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  NodeHeight = PCBinaryTree<PCEdgeSegment>::getNodeHeight(a1, *(a2 + 40));
  v5 = PCBinaryTree<PCEdgeSegment>::getNodeHeight(a1, *(a2 + 48));
  if (NodeHeight <= v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = NodeHeight;
  }

  return (v6 + 1);
}

uint64_t ProCore_Private::PCBitmapRepDefault::PCBitmapRepDefault(uint64_t a1, int a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  *a1 = &unk_287207418;
  *(a1 + 8) = a2;
  *(a1 + 12) = a3;
  *(a1 + 16) = a4;
  v7 = (a5 + PCPixelFormat::getBytesPerPixel(a4) * a2 - 1) / a5 * a5;
  *(a1 + 20) = v7;
  v8 = getpagesize();
  v9 = v8 + v7 * a3 - 1;
  v10 = v9 / v8 * v8;
  *(a1 + 24) = v10;
  if (v9 == v9 - v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = malloc_type_valloc(v10, 0xFB7FC5CFuLL);
  }

  *(a1 + 32) = v11;
  return a1;
}

void ProCore_Private::PCBitmapRepDefault::~PCBitmapRepDefault(ProCore_Private::PCBitmapRepDefault *this)
{
  *this = &unk_287207418;
  v1 = *(this + 4);
  if (v1)
  {
    free(v1);
  }
}

{
  *this = &unk_287207418;
  v1 = *(this + 4);
  if (v1)
  {
    free(v1);
  }

  JUMPOUT(0x2666E9F00);
}

void _PCMod_error(const char *a1, const char *a2, int a3)
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCString::PCString(&v8, a1);
  PCString::PCString(&v7, a2);
  PCException::PCException(exception, &v8, &v7, a3);
  *exception = &unk_2872DE188;
}

void sub_25FB76898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a9);
  PCString::~PCString(&a10);
  if (v11)
  {
    __cxa_free_exception(v10);
  }

  _Unwind_Resume(a1);
}

void PCException::PCException(PCException *this, const PCString *a2, const PCString *a3, int a4)
{
  *this = &unk_287207540;
  *(this + 1) = 0;
  PCString::PCString(this + 2, a2);
  PCString::PCString(this + 3, a3);
  *(this + 8) = a4;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
}

void sub_25FB76954(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 16));
  PCCFRef<__CFArray const*>::~PCCFRef(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void PCIllegalArgumentException::~PCIllegalArgumentException(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

void **PCException::what(const PCString *this)
{
  var0_high = SHIBYTE(this[7].var0);
  if (var0_high < 0)
  {
    var0 = this[6].var0;
  }

  else
  {
    var0 = SHIBYTE(this[7].var0);
  }

  p_var0 = &this[5].var0;
  if (var0)
  {
    if ((var0_high & 0x80) == 0)
    {
      return p_var0;
    }

    return *p_var0;
  }

  PCException::getInfo(&v6, this);
  PCString::operator std::string(&v6, &v7);
  if (SHIBYTE(this[7].var0) < 0)
  {
    operator delete(*p_var0);
  }

  *p_var0 = v7;
  this[7].var0 = v8;
  HIBYTE(v8) = 0;
  LOBYTE(v7) = 0;
  PCString::~PCString(&v6);
  if ((HIBYTE(this[7].var0) & 0x80) != 0)
  {
    return *p_var0;
  }

  return p_var0;
}

PCString *PCException::getInfo@<X0>(PCString *__return_ptr a1@<X8>, const PCString *this@<X0>)
{
  v4 = &this[2];
  (this->var0->length)(this);
  result = PCString::size(v4);
  if (result)
  {
    PCString::PCString(&v7, ": ");
    PCString::append(a1, &v7);
    PCString::~PCString(&v7);
    result = PCString::append(a1, v4);
  }

  if (LODWORD(this[4].var0))
  {
    PCString::append(a1, " (");
    PCString::append(a1, this + 3);
    PCString::append(a1, ":");
    PCString::ssprintf(&v7, "%d", v6, LODWORD(this[4].var0));
    PCString::append(a1, &v7);
    PCString::~PCString(&v7);
    return PCString::append(a1, ")");
  }

  return result;
}

void sub_25FB76B98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  PCString::~PCString(v10);
  _Unwind_Resume(a1);
}

void PCString::operator std::string(PCString *a1@<X0>, void *a2@<X8>)
{
  CStr = PCString::createCStr(a1);
  v4 = strlen(CStr);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  *(a2 + 23) = v4;
  if (v4)
  {
    memmove(a2, CStr, v4);
  }

  *(a2 + v5) = 0;

  free(CStr);
}

void PCException::~PCException(PCString *this)
{
  this->var0 = &unk_287207540;
  if (SHIBYTE(this[7].var0) < 0)
  {
    operator delete(this[5].var0);
  }

  PCString::~PCString(this + 3);
  PCString::~PCString(this + 2);
  PCCFRef<__CFArray const*>::~PCCFRef(&this[1].var0);

  std::exception::~exception(this);
}

{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

UInt8 *PCCreatePrivateColorSpaceFromColorSpace(const char *a1, CGColorSpaceRef space)
{
  v4 = CGColorSpaceCopyICCData(space);
  v5 = ColorSyncProfileCreate(v4, 0);
  MutableCopy = ColorSyncProfileCreateMutableCopy(v5);
  if (MutableCopy)
  {
    v7 = MutableCopy;
    v8 = strlen(a1);
    v9 = (v8 + 91);
    Mutable = CFDataCreateMutable(0, v9);
    if (Mutable)
    {
      v11 = Mutable;
      v12 = (v8 + 1);
      CFDataSetLength(Mutable, v9);
      MutableBytePtr = CFDataGetMutableBytePtr(v11);
      bzero(MutableBytePtr, v9);
      *MutableBytePtr = 1668506980;
      *(MutableBytePtr + 2) = bswap32(v12);
      memcpy(MutableBytePtr + 12, a1, v12);
      ColorSyncProfileSetTag(v7, @"desc", v11);
      CFRelease(v11);
      MD5 = ColorSyncProfileGetMD5(v7);
      theData = ColorSyncProfileCopyHeader(v7);
      Length = CFDataGetLength(theData);
      std::vector<unsigned char>::vector[abi:ne200100](&buffer, Length);
      v25.location = 0;
      v25.length = Length;
      CFDataGetBytes(theData, v25, buffer);
      *(buffer + 84) = MD5;
      v16 = CFDataCreate(*MEMORY[0x277CBECE8], buffer, v23 - buffer);
      v21 = v16;
      if (theData && theData != v16)
      {
        CFRelease(theData);
        v16 = v21;
      }

      theData = v16;
      v21 = 0;
      PCCFRef<__CTLine const*>::~PCCFRef(&v21);
      ColorSyncProfileSetHeader(v7, theData);
      if (buffer)
      {
        v23 = buffer;
        operator delete(buffer);
      }

      PCCFRef<__CTLine const*>::~PCCFRef(&theData);
      v17 = MEMORY[0x2666E8970](v7, 0);
      buffer = v17;
      if (CGColorSpaceUsesExtendedRange(space))
      {
        PCCreateExtendedColorSpace(&buffer, &theData);
        v18 = theData;
        if (buffer && buffer != theData)
        {
          PCCFRefTraits<CGColorSpace *>::release(buffer);
          v18 = theData;
        }

        buffer = v18;
        theData = 0;
        PCCFRef<CGColorSpace *>::~PCCFRef(&theData);
        v17 = buffer;
      }

      CGColorSpaceRetain(v17);
      v19 = buffer;
      PCCFRef<CGColorSpace *>::~PCCFRef(&buffer);
    }

    else
    {
      v19 = 0;
    }

    CFRelease(v7);
    if (v5)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v19 = 0;
    if (v5)
    {
LABEL_18:
      CFRelease(v5);
    }
  }

  if (v4)
  {
    CFRelease(v4);
  }

  return v19;
}

void sub_25FB76F54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *__p, uint64_t a12, uint64_t a13, CGColorSpace *a14)
{
  PCCFRef<CGColorSpace *>::~PCCFRef(&a14);
  PCCFRef<CGColorSpace *>::~PCCFRef(&__p);
  _Unwind_Resume(a1);
}

CGColorSpace *PCCreateColorSpaceFromAttachments(const __CFDictionary *a1)
{
  ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(a1);
  Value = CFDictionaryGetValue(a1, *MEMORY[0x277CC4CC0]);
  if (!Value)
  {
    return ColorSpaceFromAttachments;
  }

  v4 = Value;
  v5 = *MEMORY[0x277CC4CF0];
  if (!CFEqual(Value, *MEMORY[0x277CC4CF0]) && !CFEqual(v4, *MEMORY[0x277CC4CD0]))
  {
    return ColorSpaceFromAttachments;
  }

  v6 = CFDictionaryGetValue(a1, *MEMORY[0x277CC4C00]);
  v7 = CFDictionaryGetValue(a1, *MEMORY[0x277CC4D10]);
  if (!v6 || v7 == 0)
  {
    return ColorSpaceFromAttachments;
  }

  if (v5 == v4)
  {
    v9 = CFStringCreateWithFormat(0, 0, @"%@ / PQ / %@", v6, v7);
  }

  else
  {
    if (*MEMORY[0x277CC4CD0] != v4)
    {
      return ColorSpaceFromAttachments;
    }

    v9 = CFStringCreateWithFormat(0, 0, @"%@ / HLG / %@", v6, v7);
  }

  if (v9)
  {
    v10 = v9;
    v11 = PCCreatePrivateColorSpaceFromColorSpace([(__CFString *)v9 UTF8String], ColorSpaceFromAttachments);
    CGColorSpaceRelease(ColorSpaceFromAttachments);
    CFRelease(v10);
    return v11;
  }

  return ColorSpaceFromAttachments;
}

BOOL PCIsHDRColorSpace(CGColorSpace *a1)
{
  if (CGColorSpaceGetModel(a1) != kCGColorSpaceModelRGB)
  {
    return 0;
  }

  if (CGColorSpaceUsesITUR_2100TF(a1))
  {
    return 1;
  }

  return PCIsLinearColorSpace(a1);
}

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25FB771FC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<double>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_25FB772C0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

double operator*@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  return PC_CMTimeMultiply64Divide64(&v4, *a2, *(a2 + 8), a3);
}

double operator/@<D0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  return PC_CMTimeMultiply64Divide64(&v4, *(a2 + 8), *a2, a3);
}

double operator/@<D0>(__int128 *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  return PC_CMTimeMultiply64Divide64(&v4, 1, a2, a3);
}

double operator/@<D0>(__int128 *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 2);
  return PC_CMTimeMultiply64Divide64(&v4, 1, a2, a3);
}

double operator/@<D0>(__int128 *a1@<X0>, double a2@<D0>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 2);
  if (v5 && v5 < 0x20000)
  {
    while (vabdd_f64(floor(v5 * a2) / v5, a2) >= 0.00001)
    {
      v6 = 2 * v5;
      v7 = v5 < 0x10000;
      v5 *= 2;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  v6 = v5;
LABEL_7:
  v11 = v3;
  v12 = v4;
  v9 = *a1;
  v10 = *(a1 + 2);
  return PC_CMTimeMultiply64Divide64(&v9, v6, (v6 * a2), a3);
}

CFDictionaryRef CMTimeRangeCopyAsDictionary(CMTimeRange *range, CFAllocatorRef allocator)
{
  keys[2] = *MEMORY[0x277D85DE8];
  v4 = *MEMORY[0x277CC08C0];
  keys[0] = *MEMORY[0x277CC08D8];
  keys[1] = v4;
  start = range->start;
  v5 = CMTimeCopyAsDictionary(&start, allocator);
  p_values = &values;
  start = range->duration;
  values = v5;
  v13 = CMTimeCopyAsDictionary(&start, allocator);
  v7 = CFDictionaryCreate(allocator, keys, &values, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v8 = 1;
  do
  {
    v9 = v8;
    if (*p_values)
    {
      CFRelease(*p_values);
    }

    v8 = 0;
    p_values = &v13;
  }

  while ((v9 & 1) != 0);
  return v7;
}

CMTimeRange *__cdecl CMTimeRangeMakeFromDictionary(CMTimeRange *__return_ptr retstr, CFDictionaryRef dictionaryRepresentation)
{
  memset(&v8, 0, sizeof(v8));
  Value = CFDictionaryGetValue(dictionaryRepresentation, *MEMORY[0x277CC08D8]);
  CMTimeMakeFromDictionary(&v8, Value);
  memset(&v7, 0, sizeof(v7));
  v5 = CFDictionaryGetValue(dictionaryRepresentation, *MEMORY[0x277CC08C0]);
  CMTimeMakeFromDictionary(&v7, v5);
  v10 = v8;
  v9 = v7;
  return CMTimeRangeSaferMake(&retstr->start.value, &v10, &v9);
}

BOOL _svdCall(uint64_t a1, uint64_t a2)
{
  PCGenMatrix<double>::copy(a2, 0, &v75);
  PCGenMatrix<double>::resize((a1 + 24), v76, v77, 0);
  v4 = *(a1 + 32);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = *(a1 + 48);
    v7 = *(a1 + 44);
    v8 = *(a1 + 36);
    v9 = vdupq_n_s64(v8 - 1);
    v10 = 8 * *(a1 + 40);
    v11 = vdupq_n_s64(2uLL);
    do
    {
      if (v8 >= 1)
      {
        v12 = (v8 + 1) & 0xFFFFFFFE;
        v13 = v6;
        v14 = xmmword_260343E00;
        do
        {
          v15 = vmovn_s64(vcgeq_u64(v9, v14));
          if (v15.i8[0])
          {
            *v13 = 0;
          }

          if (v15.i8[4])
          {
            v13[v7] = 0;
          }

          v14 = vaddq_s64(v14, v11);
          v13 += 2 * v7;
          v12 -= 2;
        }

        while (v12);
      }

      ++v5;
      v6 = (v6 + v10);
    }

    while (v5 != v4);
  }

  PCGenMatrix<double>::resize((a1 + 56), v77, v77, 1);
  v16 = *(a1 + 64);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = *(a1 + 80);
    v19 = *(a1 + 76);
    v20 = *(a1 + 68);
    v21 = vdupq_n_s64(v20 - 1);
    v22 = 8 * *(a1 + 72);
    v23 = vdupq_n_s64(2uLL);
    do
    {
      if (v20 >= 1)
      {
        v24 = (v20 + 1) & 0xFFFFFFFE;
        v25 = v18;
        v26 = xmmword_260343E00;
        do
        {
          v27 = vmovn_s64(vcgeq_u64(v21, v26));
          if (v27.i8[0])
          {
            *v25 = 0;
          }

          if (v27.i8[4])
          {
            v25[v19] = 0;
          }

          v26 = vaddq_s64(v26, v23);
          v25 += 2 * v19;
          v24 -= 2;
        }

        while (v24);
      }

      ++v17;
      v18 = (v18 + v22);
    }

    while (v17 != v16);
  }

  PCGenVector<double>::resize(a1 + 88, *(a2 + 12));
  v28 = *(a1 + 96);
  if (v28 >= 1)
  {
    v29 = *(a1 + 104);
    v30 = *(a1 + 100);
    v31 = vdupq_n_s64(v28 - 1);
    v32 = (v28 + 1) & 0xFFFFFFFE;
    v33 = xmmword_260343E00;
    v34 = vdupq_n_s64(2uLL);
    do
    {
      v35 = vmovn_s64(vcgeq_u64(v31, v33));
      if (v35.i8[0])
      {
        *v29 = 0;
      }

      if (v35.i8[4])
      {
        v29[v30] = 0;
      }

      v33 = vaddq_s64(v33, v34);
      v29 += 2 * v30;
      v32 -= 2;
    }

    while (v32);
  }

  PCGenVector<double>::resize(a1 + 112, *(a2 + 12));
  v36 = *(a1 + 120);
  if (v36 >= 1)
  {
    v37 = *(a1 + 128);
    v38 = *(a1 + 124);
    v39 = vdupq_n_s64(v36 - 1);
    v40 = (v36 + 1) & 0xFFFFFFFE;
    v41 = xmmword_260343E00;
    v42 = vdupq_n_s64(2uLL);
    do
    {
      v43 = vmovn_s64(vcgeq_u64(v39, v41));
      if (v43.i8[0])
      {
        *v37 = 0;
      }

      if (v43.i8[4])
      {
        v37[v38] = 0;
      }

      v41 = vaddq_s64(v41, v42);
      v37 += 2 * v38;
      v40 -= 2;
    }

    while (v40);
  }

  PCGenVector<double>::resize(a1 + 136, 0);
  v45 = v76;
  v44 = v77;
  if (v76 >= 1)
  {
    v46 = 0;
    do
    {
      if (v44 >= 1)
      {
        v47 = 0;
        do
        {
          PCGenMatrix<double>::checkColIndex(&v75, v47);
          PCGenMatrix<double>::checkRowIndex(&v75, v46);
          if ((*&v80[v79 * v47 + v78 * v46] & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
          {
            PCGenMatrix<double>::operator()(&v75, v46, v47);
            exception = __cxa_allocate_exception(0x40uLL);
            PCString::PCString(&v65, "NaN");
            PCException::PCException(exception, &v65);
            *exception = &unk_2872DE188;
          }

          v47 = (v47 + 1);
          v44 = v77;
        }

        while (v47 < v77);
        v45 = v76;
      }

      v46 = (v46 + 1);
    }

    while (v46 < v45);
  }

  __jobu = 83;
  __jobvt = 65;
  __n = v44;
  __m = v45;
  __ldu = v45;
  __lda = v45;
  __ldvt = v44;
  if (v45 <= v44)
  {
    v48 = v44;
  }

  else
  {
    v48 = v45;
  }

  v49 = 10 * v48;
  v50 = 2 * v45 * v44;
  if (v49 <= v50)
  {
    v51 = v50;
  }

  else
  {
    v51 = v49;
  }

  __lwork = v51;
  PCGenVector<double>::PCGenVector(&v65, v51, 0.0);
  v64 = 0;
  v52 = dgesvd_(&__jobu, &__jobvt, &__m, &__n, v80, &__lda, *(a1 + 104), *(a1 + 48), &__ldu, *(a1 + 80), &__ldvt, v66, &__lwork, &v64);
  v53 = v64;
  v54 = v52 | v64;
  *(a1 + 224) = (v52 | v64) == 0;
  if (v53 < 0)
  {
    v61 = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf(&v63, "dgesvd: bad parameter %d", v62, -v64);
    PCException::PCException(v61, &v63);
  }

  var0 = v65.var0;
  if (v65.var0)
  {
    v56 = HIDWORD(v65.var0[-1].length) - 1;
    HIDWORD(v65.var0[-1].length) = v56;
    if (!v56)
    {
      MEMORY[0x2666E9ED0](&var0[-1].length, 0x1000C8077774924);
    }
  }

  v57 = v75;
  if (v75)
  {
    v58 = *(v75 - 4) - 1;
    *(v75 - 4) = v58;
    if (!v58)
    {
      MEMORY[0x2666E9ED0](v57 - 8, 0x1000C8077774924);
    }
  }

  return v54 == 0;
}

void sub_25FB78890(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, PCString a16, uint64_t a17, PCString a18)
{
  PCString::~PCString(&a16);
  var0 = a18.var0;
  if (a18.var0)
  {
    v21 = HIDWORD(a18.var0[-1].length) - 1;
    HIDWORD(a18.var0[-1].length) = v21;
    if (!v21)
    {
      MEMORY[0x2666E9ED0](&var0[-1].length, 0x1000C8077774924);
    }
  }

  v22 = *(v18 - 80);
  if (v22)
  {
    v23 = *(v22 - 4) - 1;
    *(v22 - 4) = v23;
    if (!v23)
    {
      MEMORY[0x2666E9ED0](v22 - 8, 0x1000C8077774924);
    }
  }

  _Unwind_Resume(a1);
}

uint64_t *PCGenMatrix<double>::copy@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 12);
  PCGenBlockRef<double>::PCGenBlockRef(a3, v7 * v6);
  *(a3 + 8) = v6;
  *(a3 + 12) = v7;
  if (a2)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  if (a2)
  {
    v9 = 1;
  }

  else
  {
    v9 = v6;
  }

  *(a3 + 16) = v8;
  *(a3 + 20) = v9;
  *(a3 + 24) = *a3;
  return PCGenMatrix<double>::set<double>(a3, a1);
}

uint64_t *PCGenMatrix<double>::resize(uint64_t *result, int a2, int a3, int a4)
{
  v6 = result;
  v8 = *(result + 2);
  v7 = *(result + 3);
  v10 = v8 != a2 || v7 != a3;
  if (a4)
  {
    if (a4 == 1)
    {
      if (*(result + 5) == 1 && *(result + 4) == v7 && !v10)
      {
        return result;
      }
    }

    else if (!v10)
    {
      return result;
    }

    v11 = 0;
  }

  else
  {
    if (*(result + 4) == 1 && *(result + 5) == v8 && !v10)
    {
      return result;
    }

    v11 = 1;
  }

  result = PCGenBlockRef<double>::PCGenBlockRef(&v32, a3 * a2);
  *&v33 = __PAIR64__(a3, a2);
  if (v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = a3;
  }

  if (v11)
  {
    v13 = a2;
  }

  else
  {
    v13 = 1;
  }

  *(&v33 + 1) = __PAIR64__(v13, v12);
  v14 = *(v6 + 3);
  if (a2 >= *(v6 + 2))
  {
    v15 = *(v6 + 2);
  }

  else
  {
    v15 = a2;
  }

  v16 = v32;
  v34 = v32;
  if (a3 >= v14)
  {
    v17 = v14;
  }

  else
  {
    v17 = a3;
  }

  v18 = v15 - 1;
  if (v15 >= 1 && v17 >= 1)
  {
    v30[0] = 0;
    v30[1] = v15 - 1;
    v20 = v17 - 1;
    v29[0] = 0;
    v29[1] = v17 - 1;
    PCGenMatrix<double>::operator()(result, v30, v29, v31);
    v27[0] = 0;
    v27[1] = v18;
    v26[0] = 0;
    v26[1] = v20;
    PCGenMatrix<double>::operator()(v6, v27, v26, v28);
    result = PCGenMatrix<double>::set<double>(v31, v28);
    v21 = v28[0];
    if (v28[0])
    {
      v22 = *(v28[0] - 4) - 1;
      *(v28[0] - 4) = v22;
      if (!v22)
      {
        result = MEMORY[0x2666E9ED0](v21 - 8, 0x1000C8077774924);
      }
    }

    v23 = v31[0];
    if (v31[0])
    {
      v24 = *(v31[0] - 4) - 1;
      *(v31[0] - 4) = v24;
      if (!v24)
      {
        result = MEMORY[0x2666E9ED0](v23 - 8, 0x1000C8077774924);
      }
    }

    v16 = v32;
  }

  if (&v32 != v6)
  {
    *(v6 + 1) = v33;
    if (*v6 != v16)
    {
      result = PCGenBlockRef<double>::deref(v6);
      *v6 = v16;
      if (v16)
      {
        ++*(v16 - 4);
      }
    }

    v16 = v32;
    v6[3] = v34;
  }

  if (v16)
  {
    v25 = *(v16 - 4) - 1;
    *(v16 - 4) = v25;
    if (!v25)
    {
      return MEMORY[0x2666E9ED0](v16 - 8, 0x1000C8077774924);
    }
  }

  return result;
}

void sub_25FB78C14(_Unwind_Exception *exception_object, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a11)
  {
    v19 = *(a11 - 4) - 1;
    *(a11 - 4) = v19;
    if (!v19)
    {
      MEMORY[0x2666E9ED0](a11 - 8, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
    }
  }

  if (a17)
  {
    v20 = *(a17 - 4) - 1;
    *(a17 - 4) = v20;
    if (!v20)
    {
      MEMORY[0x2666E9ED0](a17 - 8, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
    }
  }

  v21 = *(v17 - 80);
  if (v21)
  {
    v22 = *(v21 - 4) - 1;
    *(v21 - 4) = v22;
    if (!v22)
    {
      MEMORY[0x2666E9ED0](v21 - 8, 0x1000C8077774924, a3, a4, a5, a6, a7, a8);
    }
  }

  _Unwind_Resume(exception_object);
}

void PCGenVector<double>::resize(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != a2)
  {
    v15[5] = v2;
    v15[6] = v3;
    v4 = a2;
    PCGenBlockRef<double>::PCGenBlockRef(v15, a2);
    v6 = *(a1 + 8);
    if (v4 >= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    v8 = v15[0];
    bzero(v15[0], 8 * v4);
    v9 = *(a1 + 12);
    v10 = *(a1 + 16);
    if (v9 == 1)
    {
      if (v10)
      {
        memcpy(v8, v10, 8 * v7);
      }
    }

    else if (v10 && v7 >= 1)
    {
      v11 = 8 * v9;
      v12 = v8;
      do
      {
        *v12++ = *v10;
        v10 = (v10 + v11);
        --v7;
      }

      while (v7);
    }

    v13 = v15[0];
    if (*a1 != v15[0])
    {
      PCGenBlockRef<double>::deref(a1);
      *a1 = v13;
      if (v13)
      {
        ++*(v13 - 1);
      }

      v13 = v15[0];
    }

    *(a1 + 16) = v8;
    *(a1 + 8) = v4;
    *(a1 + 12) = 1;
    if (v13)
    {
      v14 = *(v13 - 1) - 1;
      *(v13 - 1) = v14;
      if (!v14)
      {
        MEMORY[0x2666E9ED0](v13 - 2, 0x1000C8077774924);
      }
    }
  }
}

uint64_t PCGenMatrix<double>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  PCGenMatrix<double>::checkColIndex(a1, a3);
  PCGenMatrix<double>::checkRowIndex(a1, a2);
  return *(a1 + 24) + 8 * (*(a1 + 20) * v3 + *(a1 + 16) * a2);
}

void PCException::PCException(PCException *this, const PCString *a2)
{
  *this = &unk_287207540;
  *(this + 1) = 0;
  PCString::PCString(this + 2, a2);
  PCSharedCount::PCSharedCount(this + 3);
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
}

void sub_25FB78EA0(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 16));
  PCCFRef<__CFArray const*>::~PCCFRef(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void *PCGenBlockRef<double>::PCGenBlockRef(void *a1, int a2)
{
  if (a2)
  {
    operator new[]();
  }

  *a1 = 0;
  return a1;
}

void *PCGenBlockRef<double>::deref(void *result)
{
  v1 = *result;
  if (*result)
  {
    v2 = *(v1 - 4) - 1;
    *(v1 - 4) = v2;
    if (!v2)
    {
      v3 = result;
      result = MEMORY[0x2666E9ED0](v1 - 8, 0x1000C8077774924);
      *v3 = 0;
    }
  }

  return result;
}

void PCMatrixErrorException::~PCMatrixErrorException(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

uint64_t *PCGenMatrix<double>::set<double>(uint64_t *result, uint64_t a2)
{
  if (a2 != result)
  {
    v3 = result;
    v4 = *(result + 2);
    if (v4 != *(a2 + 8))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf(&v33, "PCGenMatrix row mismatch %d != %d", v30, *(v3 + 2), *(a2 + 8));
      PCException::PCException(exception, &v33);
      *exception = &unk_2872074D0;
    }

    v5 = *(result + 3);
    if (v5 != *(a2 + 12))
    {
      v31 = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf(&v33, "PCGenMatrix col mismatch %d != %d", v32, *(v3 + 3), *(a2 + 12));
      PCException::PCException(v31, &v33);
      *v31 = &unk_2872074D0;
    }

    v6 = *result;
    if (!*result)
    {
      result = PCGenMatrix<double>::resize(result, v4, v5, *(result + 5) == 1);
      v6 = *v3;
    }

    if (*a2 == v6)
    {
      v33.var0 = 0;
      v34 = 0;
      v35 = 0x100000001;
      v36 = 0;
      result = PCGenMatrix<double>::set<double>(&v33, a2);
      v17 = *(v3 + 2);
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = 0;
        v20 = *(v3 + 3);
        v21 = v36;
        v22 = 8 * v35;
        v23 = 8 * SHIDWORD(v35);
        do
        {
          if (v20 >= 1)
          {
            v24 = (v3[3] + v18 * *(v3 + 4));
            v25 = 8 * *(v3 + 5);
            v26 = v20;
            result = v21;
            do
            {
              *v24 = *result;
              v24 = (v24 + v25);
              result = (result + v23);
              --v26;
            }

            while (v26);
          }

          ++v19;
          v18 += 8;
          v21 = (v21 + v22);
        }

        while (v19 != v17);
      }

      var0 = v33.var0;
      if (v33.var0)
      {
        v28 = HIDWORD(v33.var0[-1].length) - 1;
        HIDWORD(v33.var0[-1].length) = v28;
        if (!v28)
        {
          return MEMORY[0x2666E9ED0](&var0[-1].length, 0x1000C8077774924);
        }
      }
    }

    else
    {
      v7 = *(v3 + 2);
      if (v7 >= 1)
      {
        v8 = 0;
        v9 = 0;
        v10 = *(v3 + 3);
        v11 = *(a2 + 24);
        v12 = 8 * *(a2 + 16);
        v13 = 8 * *(a2 + 20);
        do
        {
          if (v10 >= 1)
          {
            v14 = (v3[3] + v8 * *(v3 + 4));
            v15 = 8 * *(v3 + 5);
            v16 = v10;
            result = v11;
            do
            {
              *v14 = *result;
              v14 = (v14 + v15);
              result = (result + v13);
              --v16;
            }

            while (v16);
          }

          ++v9;
          v8 += 8;
          v11 = (v11 + v12);
        }

        while (v9 != v7);
      }
    }
  }

  return result;
}

uint64_t PCGenMatrix<double>::operator()@<X0>(uint64_t *a1@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>)
{
  PCGenMatrix<double>::checkRowIndex(a1, *a2);
  PCGenMatrix<double>::checkRowIndex(a1, a2[1]);
  PCGenMatrix<double>::checkColIndex(a1, *a3);
  result = PCGenMatrix<double>::checkColIndex(a1, a3[1]);
  v10 = *a2;
  v9 = a2[1];
  v12 = *a3;
  v11 = a3[1];
  v13 = *(a1 + 4);
  v14 = *(a1 + 5);
  v15 = a1[3];
  v16 = *a1;
  *a4 = *a1;
  if (v16)
  {
    ++*(v16 - 4);
  }

  *(a4 + 8) = v9 - v10 + 1;
  *(a4 + 12) = v11 - v12 + 1;
  *(a4 + 16) = v13;
  *(a4 + 20) = v14;
  *(a4 + 24) = v15 + 8 * v13 * v10 + 8 * v14 * v12;
  return result;
}

uint64_t PCGenMatrix<double>::checkRowIndex(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0 || *(result + 8) <= a2)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf(&v6, "PCGenMatrix row %d out of range 0..%d", v5, a2, (*(v3 + 8) - 1));
    PCException::PCException(exception, &v6);
    *exception = &unk_2872074D0;
  }

  return result;
}

uint64_t PCGenMatrix<double>::checkColIndex(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x80000000) != 0 || *(result + 12) <= a2)
  {
    v3 = result;
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf(&v6, "PCGenMatrix col %d out of range 0..%d", v5, a2, (*(v3 + 12) - 1));
    PCException::PCException(exception, &v6);
    *exception = &unk_2872074D0;
  }

  return result;
}

uint64_t *PCGenVector<double>::PCGenVector(uint64_t *a1, uint64_t a2, double a3)
{
  v6 = PCGenBlockRef<double>::PCGenBlockRef(a1, a2);
  *(v6 + 2) = a2;
  *(v6 + 3) = 1;
  if ((a2 & 0x80000000) != 0)
  {
    exception = __cxa_allocate_exception(0x40uLL);
    PCString::ssprintf(&v15, "PCGenVector length %d must be nonnegative", v14, a2);
    PCException::PCException(exception, &v15);
    *exception = &unk_2872074D0;
  }

  v7 = *a1;
  a1[2] = *a1;
  if (a2)
  {
    v8 = 0;
    v9 = vdupq_n_s64(a2 - 1);
    v10 = (v7 + 8);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v8), xmmword_260343E00)));
      if (v11.i8[0])
      {
        *(v10 - 1) = a3;
      }

      if (v11.i8[4])
      {
        *v10 = a3;
      }

      v8 += 2;
      v10 += 2;
    }

    while (((a2 + 1) & 0xFFFFFFFE) != v8);
  }

  return a1;
}

void sub_25FB79698(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, PCString a10)
{
  PCString::~PCString(&a10);
  PCGenBlockRef<double>::deref(v10);
  _Unwind_Resume(a1);
}

uint64_t PCGenVector<double>::set<double>(uint64_t a1, uint64_t a2)
{
  if (a2 != a1)
  {
    v4 = *(a1 + 8);
    if (v4 != *(a2 + 8))
    {
      exception = __cxa_allocate_exception(0x40uLL);
      PCString::ssprintf(&v20, "PCGenVector length mismatch %d != %d", v19, *(a1 + 8), *(a2 + 8));
      PCException::PCException(exception, &v20);
      *exception = &unk_2872074D0;
    }

    if (*a1)
    {
      v5 = *a2 == *a1;
    }

    else
    {
      v5 = 0;
    }

    if (v5)
    {
      PCGenBlockRef<double>::PCGenBlockRef(&v20, *(a1 + 8));
      v21 = v4;
      v22 = 1;
      var0 = v20.var0;
      PCGenVector<double>::set<double>(&v20, a2);
      v10 = *(a1 + 8);
      if (v10 >= 1)
      {
        v11 = var0;
        v12 = *(a1 + 16);
        v13 = 8 * *(a1 + 12);
        v14 = 8 * v22;
        do
        {
          *v12 = v11->isa;
          v12 = (v12 + v13);
          v11 = (v11 + v14);
          --v10;
        }

        while (v10);
      }

      v15 = v20.var0;
      if (v20.var0)
      {
        v16 = HIDWORD(v20.var0[-1].length) - 1;
        HIDWORD(v20.var0[-1].length) = v16;
        if (!v16)
        {
          MEMORY[0x2666E9ED0](&v15[-1].length, 0x1000C8077774924);
        }
      }
    }

    else if (v4 >= 1)
    {
      v6 = *(a2 + 16);
      v7 = *(a1 + 16);
      v8 = 8 * *(a1 + 12);
      v9 = 8 * *(a2 + 12);
      do
      {
        *v7 = *v6;
        v7 = (v7 + v8);
        v6 = (v6 + v9);
        --v4;
      }

      while (v4);
    }
  }

  return a1;
}

void OUTLINED_FUNCTION_0()
{

  JUMPOUT(0x2666E9ED0);
}

void PCGenMatrix<double>::set<double>(uint64_t a1)
{
  v1 = *(a1 - 4) - 1;
  *(a1 - 4) = v1;
  if (!v1)
  {
    OUTLINED_FUNCTION_0();
  }
}

void PCException::report(const PCString *this)
{
  PCException::getInfo(&v5, this);
  v1 = PCString::createCStr(&v5);
  v2 = v1;
  if (v1)
  {
    v3 = strlen(v1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(MEMORY[0x277D82670], v2, v3);
    free(v2);
  }

  std::ios_base::getloc((MEMORY[0x277D82670] + *(*MEMORY[0x277D82670] - 24)));
  v4 = std::locale::use_facet(&v6, MEMORY[0x277D82680]);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v6);
  std::ostream::put();
  std::ostream::flush();
  PCString::~PCString(&v5);
}

void sub_25FB79A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10)
{
  std::locale::~locale(&a10);
  PCString::~PCString(&a9);
  _Unwind_Resume(a1);
}

void throw_PCNullPointerException(BOOL a1)
{
  exception = __cxa_allocate_exception(0x40uLL);
  PCNullPointerException::PCNullPointerException(exception, a1);
}

void PCNullPointerException::PCNullPointerException(PCNullPointerException *this, int a2)
{
  PCException::PCException(this);
  *v4 = &unk_287207580;
  if (a2)
  {
    PCException::addCallStackSymbols(this);
  }
}

void PCException::PCException(PCException *this)
{
  *this = &unk_287207540;
  *(this + 1) = 0;
  PCSharedCount::PCSharedCount(this + 2);
  PCSharedCount::PCSharedCount(this + 3);
  *(this + 8) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
}

void sub_25FB79BD0(_Unwind_Exception *a1)
{
  PCString::~PCString((v1 + 16));
  PCCFRef<__CFArray const*>::~PCCFRef(v2);
  std::exception::~exception(v1);
  _Unwind_Resume(a1);
}

void PCNullPointerException::~PCNullPointerException(PCString *this)
{
  PCException::~PCException(this);

  JUMPOUT(0x2666E9F00);
}

void sub_25FB79E08(void *a1)
{
  objc_begin_catch(a1);
  [0 error];
  NSLog(&cfstr_UnableToUnarch.isa);
  objc_end_catch();
  JUMPOUT(0x25FB79DF0);
}

CGColorSpaceRef PCCreateExtendedColorSpace@<X0>(CGColorSpace **a1@<X0>, CGColorSpaceRef *a2@<X8>)
{
  result = createExtendedColorSpace(*a1);
  *a2 = result;
  return result;
}

CGColorSpaceRef createExtendedColorSpace(CGColorSpace *a1)
{
  if (CGColorSpaceUsesExtendedRange(a1))
  {
LABEL_2:

    return CGColorSpaceRetain(a1);
  }

  {
    createExtendedColorSpace(CGColorSpace *)::deviceRGB = CGColorSpaceCreateDeviceRGB();
  }

  v3 = CFHash(createExtendedColorSpace(CGColorSpace *)::deviceRGB);
  if (v3 != CFHash(a1))
  {
    result = CGColorSpaceCreateExtended(a1);
    if (result)
    {
      return result;
    }

    goto LABEL_2;
  }

  v4 = *MEMORY[0x277CBF430];

  return CGColorSpaceCreateWithName(v4);
}

void PCInit(void)
{
  v16 = *MEMORY[0x277D85DE8];
  {
    v0 = getrlimit(8, &v14);
    if (!v0)
    {
      *v15 = 0x1D00000001;
      v13 = 0;
      v12 = 4;
      v0 = sysctl(v15, 2u, &v13, &v12, 0, 0);
      if (!v0)
      {
        v10 = v13;
        if (v13 >= 10240)
        {
          v10 = 10240;
        }

        v14.rlim_cur = v10;
        v0 = setrlimit(8, &v14);
      }
    }

    inited = ProCore::Private::initChromaticityMath(v0, v1, v2, v3, v4, v5, v6, v7, v8, v9);
    ProCore::Private::initColorSpaceHandle(inited);
  }
}

uint64_t PCBitDepth::getFromBitsPerChannel(PCBitDepth *this, int a2)
{
  if (a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (this != 16)
  {
    v2 = 0;
  }

  if (this == 32)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t PCBitmap::sanitizeColorSpace(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1)
  {
    hasRGB = PCPixelFormat::hasRGB(a2);
    if (hasRGB)
    {
      DefaultRGBCGColorSpace = PCInfo::getDefaultRGBCGColorSpace(hasRGB);
    }

    else
    {
      hasGray = PCPixelFormat::hasGray(v2);
      if (!hasGray)
      {
        v3 = 0;
        goto LABEL_8;
      }

      DefaultRGBCGColorSpace = PCInfo::getDefaultGrayscaleCGColorSpace(hasGray);
    }

    v3 = DefaultRGBCGColorSpace;
  }

LABEL_8:
  if ((PCPixelFormat::hasRGB(v2) & 1) == 0 && !PCPixelFormat::hasGray(v2))
  {
    return 0;
  }

  return v3;
}

void PCBitmap::PCBitmap<ProCore_Private::PCBitmapRepDefault>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = (*(**a2 + 32))();
  v7 = (*(**a2 + 40))();
  v8 = (*(**a2 + 48))();
  BitsPerChannel = PCPixelFormat::getBitsPerChannel(v8);
  v10 = (*(**a2 + 48))();
  NumChannels = PCPixelFormat::getNumChannels(v10);
  v12 = (*(**a2 + 48))();
  v13 = PCBitmap::sanitizeColorSpace(a3, v12);
  PCImage::PCImage(a1, v6, v7, BitsPerChannel, NumChannels, v13);
  *a1 = &unk_2872075C0;
  v14 = *a2;
  *a2 = 0;
  *(a1 + 64) = v14;
  *(a1 + 24) = 1;
}

void PCBitmap::PCBitmap(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  operator new();
}

{
  operator new();
}

void sub_25FB7A51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void sub_25FB7A61C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    PCBitmap::PCBitmap();
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap::PCBitmap(uint64_t a1, int a2, unsigned int a3, uint64_t a4, PCColorSpaceHandle *a5, unsigned int a6)
{
  operator new();
}

{
  operator new();
}

void PCBitmap::copy(PCBitmap *this, PCBitmap *a2)
{
  PCImage::getColorSpace(&v8, a2);
  (*(*this + 56))(this, &v8);
  PCCFRef<CGColorSpace *>::~PCCFRef(&v8);
  v4 = (*(*a2 + 48))(a2);
  PCImage::setIsPremultiplied(this, v4);
  v5 = (*(*this + 16))(this);
  v7 = 1;
  if (v5 == (*(*a2 + 16))(a2))
  {
    v6 = (*(*this + 24))(this);
    if (v6 == (*(*a2 + 24))(a2))
    {
      v7 = 0;
    }
  }
}

void sub_25FB7A9D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void PCBitmap::~PCBitmap(PCBitmap *this)
{
  *this = &unk_2872075C0;
  v2 = *(this + 8);
  *(this + 8) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  PCImage::~PCImage(this);
}

{
  PCBitmap::~PCBitmap(this);

  JUMPOUT(0x2666E9F00);
}

void PCBitmap::PCBitmap(PCBitmap *this, PCBitmap *a2)
{
  (*(*a2 + 16))(a2);
  (*(*a2 + 24))(a2);
  (*(**(a2 + 8) + 48))(*(a2 + 8));
  operator new();
}

void anonymous namespace::copyBitmapImageUsingCG(_anonymous_namespace_ *this, PCBitmap *a2, PCBitmap *a3)
{
  v3 = a3;
  if (!(*(*this + 16))(this) || !(*(*this + 24))(this) || !(*(*a2 + 16))(a2) || !(*(*a2 + 24))(a2))
  {
    return;
  }

  v6 = (*(*this + 16))(this);
  v7 = (*(*this + 24))(this);
  v8 = (*(*a2 + 16))(a2);
  v9 = (*(*a2 + 24))(a2);
  v10 = v6 == v8 && v7 == v9;
  if (!v10 || (PCImage::getColorSpace(image, this), PCImage::getColorSpace(c, a2), isSameColorSpace = PCColorSpaceHandle::isSameColorSpace(image, c, v11), PCCFRef<CGColorSpace *>::~PCCFRef(c), PCCFRef<CGColorSpace *>::~PCCFRef(image), !isSameColorSpace) || (v13 = (*(*this + 48))(this), v13 != (*(*a2 + 48))(a2)))
  {
LABEL_12:
    v14 = (*(**(this + 8) + 48))(*(this + 8));
    hasAlpha = PCPixelFormat::hasAlpha(v14);
    v16 = (*(**(a2 + 8) + 48))(*(a2 + 8));
    if (PCPixelFormat::hasGray(v16))
    {
      v17 = PCPixelFormat::hasAlpha(v16);
    }

    else
    {
      v17 = 0;
    }

    v18 = (*(**(this + 8) + 48))(*(this + 8));
    if (v18 > 0x11 || ((1 << v18) & 0x3C1AE) == 0)
    {
      v21 = image[0];
      v112 = image[1];
    }

    else
    {
      v112 = 0;
      v21 = this;
    }

    if ((hasAlpha & v17) == 1)
    {
      v22 = (*(**(this + 8) + 48))(*(this + 8));
      if (v22 > 9)
      {
        if (v22 > 14)
        {
          switch(v22)
          {
            case 15:
              v54 = (*(*this + 16))(this);
              v55 = (*(*this + 24))(this);
              v56 = PCBitmap::sanitizeColorSpace(0, 14);
              PCCreateBitmap(v54, v55, 14, v56, 1);
            case 16:
              v66 = (*(*this + 16))(this);
              v67 = (*(*this + 24))(this);
              v68 = PCBitmap::sanitizeColorSpace(0, 14);
              PCCreateBitmap(v66, v67, 14, v68, 1);
            case 17:
              v40 = (*(*this + 16))(this);
              v41 = (*(*this + 24))(this);
              v42 = PCBitmap::sanitizeColorSpace(0, 14);
              PCCreateBitmap(v40, v41, 14, v42, 1);
          }
        }

        else
        {
          switch(v22)
          {
            case 10:
              v48 = (*(*this + 16))(this);
              v49 = (*(*this + 24))(this);
              v50 = PCBitmap::sanitizeColorSpace(0, 7);
              PCCreateBitmap(v48, v49, 7, v50, 1);
            case 12:
              v60 = (*(*this + 16))(this);
              v61 = (*(*this + 24))(this);
              v62 = PCBitmap::sanitizeColorSpace(0, 14);
              PCCreateBitmap(v60, v61, 14, v62, 1);
            case 13:
              v26 = (*(*this + 16))(this);
              v27 = (*(*this + 24))(this);
              v28 = PCBitmap::sanitizeColorSpace(0, 14);
              PCCreateBitmap(v26, v27, 14, v28, 1);
          }
        }
      }

      else if (v22 > 4)
      {
        switch(v22)
        {
          case 5:
            v51 = (*(*this + 16))(this);
            v52 = (*(*this + 24))(this);
            v53 = PCBitmap::sanitizeColorSpace(0, 1);
            PCCreateBitmap(v51, v52, 1, v53, 1);
          case 6:
            v63 = (*(*this + 16))(this);
            v64 = (*(*this + 24))(this);
            v65 = PCBitmap::sanitizeColorSpace(0, 1);
            PCCreateBitmap(v63, v64, 1, v65, 1);
          case 8:
            v37 = (*(*this + 16))(this);
            v38 = (*(*this + 24))(this);
            v39 = PCBitmap::sanitizeColorSpace(0, 7);
            PCCreateBitmap(v37, v38, 7, v39, 1);
        }
      }

      else
      {
        switch(v22)
        {
          case 2:
            v45 = (*(*this + 16))(this);
            v46 = (*(*this + 24))(this);
            v47 = PCBitmap::sanitizeColorSpace(0, 1);
            PCCreateBitmap(v45, v46, 1, v47, 1);
          case 3:
            v57 = (*(*this + 16))(this);
            v58 = (*(*this + 24))(this);
            v59 = PCBitmap::sanitizeColorSpace(0, 1);
            PCCreateBitmap(v57, v58, 1, v59, 1);
          case 4:
            v23 = (*(*this + 16))(this);
            v24 = (*(*this + 24))(this);
            v25 = PCBitmap::sanitizeColorSpace(0, 1);
            PCCreateBitmap(v23, v24, 1, v25, 1);
        }
      }
    }

    v69 = (*(**(a2 + 8) + 48))(*(a2 + 8));
    if (v69 > 0x10)
    {
      goto LABEL_61;
    }

    if (((1 << v69) & 0x10428) != 0)
    {
      if (((*(*a2 + 48))(a2) & 1) == 0)
      {
        goto LABEL_61;
      }
    }

    else if (((1 << v69) & 0x4082) == 0)
    {
LABEL_61:
      switch((*(**(a2 + 8) + 48))(*(a2 + 8)))
      {
        case 2u:
          v70 = (*(*a2 + 16))(a2);
          v71 = (*(*a2 + 24))(a2);
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v70, v71, 1, &v113, 1u);
        case 3u:
          v98 = (*(*a2 + 16))(a2);
          v99 = (*(*a2 + 24))(a2);
          v100 = (*(**(a2 + 8) + 48))(*(a2 + 8));
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v98, v99, v100, &v113, 1u);
        case 4u:
          v96 = (*(*a2 + 16))(a2);
          v97 = (*(*a2 + 24))(a2);
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v96, v97, 3, &v113, 1u);
        case 5u:
          v93 = (*(*a2 + 16))(a2);
          v94 = (*(*a2 + 24))(a2);
          v95 = (*(**(a2 + 8) + 48))(*(a2 + 8));
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v93, v94, v95, &v113, 1u);
        case 6u:
          v83 = (*(*a2 + 16))(a2);
          v84 = (*(*a2 + 24))(a2);
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v83, v84, 3, &v113, 1u);
        case 8u:
          v88 = (*(*a2 + 16))(a2);
          v89 = (*(*a2 + 24))(a2);
          CGColorSpace = PCImage::getCGColorSpace(a2);
          PCCreateBitmap(v88, v89, 7, CGColorSpace, 1);
        case 9u:
          v101 = (*(*a2 + 16))(a2);
          v102 = (*(*a2 + 24))(a2);
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v101, v102, 10, &v113, 1u);
        case 0xAu:
          v103 = (*(*a2 + 16))(a2);
          v104 = (*(*a2 + 24))(a2);
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v103, v104, 10, &v113, 1u);
        case 0xBu:
          v107 = (*(*a2 + 16))(a2);
          v108 = (*(*a2 + 24))(a2);
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v107, v108, 14, &v113, 1u);
        case 0xCu:
          v105 = (*(*a2 + 16))(a2);
          v106 = (*(*a2 + 24))(a2);
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v105, v106, 14, &v113, 1u);
        case 0xDu:
          v81 = (*(*a2 + 16))(a2);
          v82 = (*(*a2 + 24))(a2);
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v81, v82, 16, &v113, 1u);
        case 0xFu:
          v91 = (*(*a2 + 16))(a2);
          v92 = (*(*a2 + 24))(a2);
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v91, v92, 14, &v113, 1u);
        case 0x10u:
          v85 = (*(*a2 + 16))(a2);
          v86 = (*(*a2 + 24))(a2);
          v87 = (*(**(a2 + 8) + 48))(*(a2 + 8));
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v85, v86, v87, &v113, 1u);
        case 0x11u:
          v79 = (*(*a2 + 16))(a2);
          v80 = (*(*a2 + 24))(a2);
          PCImage::getColorSpace(&v113, a2);
          PCCreateBitmap(v79, v80, 16, &v113, 1u);
        default:
          c[0] = 0;
          c[1] = 0;
          v72 = 0;
          break;
      }

      goto LABEL_83;
    }

    v72 = a2;
LABEL_83:
    if (v3)
    {
      CGContextSetInterpolationQuality(c[0], kCGInterpolationHigh);
    }

    v109 = (*(*v72 + 16))(v72);
    v110 = (*(*v72 + 24))(v72);
    CGContextSetBlendMode(c[0], kCGBlendModeCopy);
    v116.size.width = v109;
    v116.size.height = v110;
    v116.origin.x = 0.0;
    v116.origin.y = 0.0;
    CGContextDrawImage(c[0], v116, image[0]);
    if (c[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](c[1]);
    }

    if (image[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](image[1]);
    }

    if (v112)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v112);
    }

    return;
  }

  v29 = (*(**(this + 8) + 48))(*(this + 8));
  v30 = (*(**(a2 + 8) + 48))(*(a2 + 8));
  if (v29 != v30)
  {
    v43 = v30;
    if (PCPixelFormat::hasRGB(v29) && PCPixelFormat::hasRGB(v43))
    {
      if (PCPixelFormat::is32Bit(v29) && PCPixelFormat::is32Bit(v43))
      {
        return;
      }

      if (PCPixelFormat::is8Bit(v29) && PCPixelFormat::is8Bit(v43))
      {
        return;
      }
    }

    goto LABEL_12;
  }

  v31 = (*(**(this + 8) + 64))(*(this + 8));
  v32 = (*(**(a2 + 8) + 64))(*(a2 + 8));
  v33 = (*(**(this + 8) + 64))(*(this + 8));
  if (v33 == (*(**(a2 + 8) + 64))(*(a2 + 8)))
  {
    v34 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v35 = (*(**(this + 8) + 16))(*(this + 8));
    v36 = (*(*this + 40))(this);
    memcpy(v34, v35, v36);
  }

  else
  {
    v73 = (*(**(this + 8) + 16))(*(this + 8));
    v74 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v75 = (*(**(this + 8) + 48))(*(this + 8));
    BytesPerPixel = PCPixelFormat::getBytesPerPixel(v75);
    if (v7)
    {
      v77 = v7;
      v78 = (BytesPerPixel * v6);
      do
      {
        memcpy(v74, v73, v78);
        v73 += v31;
        v74 += v32;
        --v77;
      }

      while (v77);
    }
  }
}

void sub_25FB7D978(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, std::__shared_weak_count *a18, char a19, std::__shared_weak_count *a20)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  if (v20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v20);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

void PCBitmap::flip(PCBitmap *this)
{
  v2 = (*(**(this + 8) + 64))(*(this + 8));
  v3 = (*(**(this + 8) + 16))(*(this + 8));
  v4 = (v3 + ((*(*this + 24))(this) - 1) * v2);
  v5 = (*(**(this + 8) + 16))(*(this + 8));
  v6 = (*(*this + 16))(this);
  v7 = (*(**(this + 8) + 48))(*(this + 8));
  v8 = PCPixelFormat::getBytesPerPixel(v7) * v6;
  std::vector<unsigned char>::vector[abi:ne200100](__dst, v8);
  for (i = __dst[0]; v5 < v4; v4 -= v2)
  {
    memcpy(i, v4, v8);
    memcpy(v4, v5, v8);
    i = __dst[0];
    memcpy(v5, __dst[0], v8);
    v5 += v2;
  }

  if (i)
  {
    __dst[1] = i;
    operator delete(i);
  }
}

void *PCBitmap::copyDataToBitmap(PCBitmap *this, char *a2)
{
  v4 = (*(*this + 16))(this);
  v5 = (*(*this + 24))(this);
  v6 = (*(**(this + 8) + 16))(*(this + 8));
  v7 = (*(**(this + 8) + 48))(*(this + 8));
  v8 = PCPixelFormat::getBytesPerPixel(v7) * v4;
  result = (*(**(this + 8) + 64))(*(this + 8));
  if (v8 == result)
  {

    return memcpy(v6, a2, v8 * v5);
  }

  else if (v5)
  {
    v10 = result;
    do
    {
      result = memcpy(v6, a2, v8);
      a2 += v8;
      v6 += v10;
      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t PCBitmap::swizzleTo(_anonymous_namespace_ *a1, uint64_t a2)
{
  v4 = (*(**(a1 + 8) + 48))(*(a1 + 8));
  if (PCPixelFormat::isFloat(v4))
  {
    if (a2 == 1)
    {
      v8 = 16;
    }

    else
    {
      v8 = 17;
    }
  }

  else
  {
    if ((a2 - 1) > 2)
    {
      v8 = 3;
    }

    else
    {
      v8 = dword_26034BDB0[(a2 - 1)];
    }
  }

  return (*(**(a1 + 8) + 56))(*(a1 + 8), v8);
}

uint64_t PCBitmap::dumpImage(PCBitmap *this, int a2, uint64_t a3)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v20);
  if (a3 == -1)
  {
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "/tmp/PCBitmap", 13);
  }

  else
  {
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "/tmp/PCBitmap_", 14);
    v6 = MEMORY[0x2666E9B50](v5, a3);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "_", 1);
  }

  v8 = time(0);
  MEMORY[0x2666E9B50](v7, v8);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, ".png", 4);
  std::stringbuf::str();
  if (v19 >= 0)
  {
    v9 = __p;
  }

  else
  {
    v9 = __p[0];
  }

  PCString::PCString(&v17, v9);
  v10 = v19;
  v11 = __p[0];
  v14 = __p;
  if (v10 < 0)
  {
    v14 = v11;
  }

  v15 = "*** write failed ***";
  if (v13)
  {
    v15 = "successfully written";
  }

  PCPrint("%s: %s, %s\n", "PCBitmap::dumpImage", v14, v15);
  PCString::~PCString(&v17);
  if (v19 < 0)
  {
    operator delete(__p[0]);
  }

  v20 = *MEMORY[0x277D82828];
  *(&v20 + *(v20 - 24)) = *(MEMORY[0x277D82828] + 24);
  v21 = MEMORY[0x277D82878] + 16;
  if (v23 < 0)
  {
    operator delete(v22[7].__locale_);
  }

  v21 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v22);
  std::ostream::~ostream();
  return MEMORY[0x2666E9E10](&v24);
}

void sub_25FB7E168(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, PCString a5, void *__p, uint64_t a7, int a8, __int16 a9, char a10, char a11, char a12, uint64_t a13, uint64_t a14, PCString a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  if (SHIBYTE(a18) < 0)
  {
    operator delete(a16);
  }

  std::ostringstream::~ostringstream(&a19, MEMORY[0x277D82828]);
  MEMORY[0x2666E9E10](va);
  _Unwind_Resume(a1);
}

uint64_t *std::ostringstream::basic_ostringstream[abi:ne200100](uint64_t *a1)
{
  a1[20] = 0;
  v2 = MEMORY[0x277D828A0] + 64;
  a1[14] = MEMORY[0x277D828A0] + 64;
  v3 = *(MEMORY[0x277D82828] + 16);
  v4 = *(MEMORY[0x277D82828] + 8);
  *a1 = v4;
  *(a1 + *(v4 - 24)) = v3;
  v5 = (a1 + *(*a1 - 24));
  std::ios_base::init(v5, a1 + 1);
  v6 = MEMORY[0x277D828A0] + 24;
  v5[1].__vftable = 0;
  v5[1].__fmtflags_ = -1;
  *a1 = v6;
  a1[14] = v2;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 1), 16);
  return a1;
}

void sub_25FB7E300(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  MEMORY[0x2666E9E10](v1);
  _Unwind_Resume(a1);
}

uint64_t anonymous namespace::writePCBitmap(const PCString *this, const PCString *a2, const PCBitmap *a3, const __CFDictionary *a4)
{
  v4 = *&a2;
  v26 = *MEMORY[0x277D85DE8];
  if ((a2->var0->data)(a2) && (*(**&v4 + 24))(COERCE_CGFLOAT(*&v4)))
  {
    v6 = (*(**(*&v4 + 64) + 48))(*(*&v4 + 64));
    if (v6 > 0x11 || ((1 << v6) & 0x3C1AE) == 0)
    {
      v4 = components[0];
      v9 = components[1];
    }

    else
    {
      v9 = 0.0;
    }

    v10 = (*(**&v4 + 16))(COERCE_CGFLOAT(*&v4));
    v11 = (*(**&v4 + 24))(COERCE_CGFLOAT(*&v4));
    v12 = (*(**(*&v4 + 64) + 16))(*(*&v4 + 64));
    v13 = (*(**(*&v4 + 64) + 48))(*(*&v4 + 64));
    BitsPerChannel = PCPixelFormat::getBitsPerChannel(v13);
    v15 = (*(**(*&v4 + 64) + 48))(*(*&v4 + 64));
    NumChannels = PCPixelFormat::getNumChannels(v15);
    PCImage::getColorSpace(&v21, *&v4);
    PCColorSpaceHandle::getCGColorSpace(&v21);
    PCURL::PCURL(&v24, this, 0);
    PCURL::getExtension(&v24, &v23);
    PCString::PCString(components, "");
    v18 = PCString::compare(&v23, components);
    PCString::~PCString(components);
    if (!v18)
    {
      PCString::set(&v23, "png");
    }

    if (v19)
    {
      std::shared_ptr<CGDataProvider>::shared_ptr[abi:ne200100]<CGDataProvider,void (*)(CGDataProvider*),0>(provider, v19, MEMORY[0x277CBF338]);
    }

    provider[0] = 0;
    provider[1] = 0;
    PCString::~PCString(&v23);
    PCURL::~PCURL(&v24);
    PCCFRef<CGColorSpace *>::~PCCFRef(&v21);
    if (v9 != 0.0)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*&v9);
    }
  }

  return 0;
}

void sub_25FB7E8D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, CGColorSpace *a12, uint64_t a13, uint64_t a14, uint64_t a15, std::__shared_weak_count *a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, PCString a21, uint64_t a22, PCString a23, uint64_t a24)
{
  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  PCString::~PCString(&a21);
  PCURL::~PCURL(&a22);
  PCCFRef<CGColorSpace *>::~PCCFRef(&a12);
  if (v24)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v24);
  }

  _Unwind_Resume(a1);
}

uint64_t PCBitmap::premultiply(PCBitmap *this)
{
  result = (*(*this + 48))(this);
  if ((result & 1) == 0)
  {
    v3 = (*(**(this + 8) + 48))(*(this + 8));
    result = PCPixelFormat::hasAlpha(v3);
    if (result)
    {
      result = (*(**(this + 8) + 48))(*(this + 8));
      if (result > 9)
      {
        if (result > 14)
        {
          switch(result)
          {
            case 0xF:

            case 0x10:

            case 0x11:
          }
        }

        else
        {
          switch(result)
          {
            case 0xA:

            case 0xC:

            case 0xD:
          }
        }
      }

      else if (result > 4)
      {
        switch(result)
        {
          case 5:

          case 6:

          case 8:
        }
      }

      else
      {
        switch(result)
        {
          case 2:

          case 3:

          case 4:
        }
      }
    }
  }

  return result;
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>(PCImage *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        v9 = *j;
        j[1] = (32897 * j[1] * v9) >> 23;
        j[2] = (32897 * j[2] * v9) >> 23;
        j[3] = (32897 * j[3] * v9) >> 23;
        j += 4;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>(PCImage *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        v9 = *j;
        j[3] = (32897 * j[3] * v9) >> 23;
        j[2] = (32897 * j[2] * v9) >> 23;
        j[1] = (32897 * j[1] * v9) >> 23;
        j += 4;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>(PCImage *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    v6 = 0;
    v7 = (v5 + 1);
    do
    {
      v8 = v7;
      for (i = v2; i; --i)
      {
        v10 = v8[2];
        *(v8 - 1) = (32897 * *(v8 - 1) * v10) >> 23;
        *v8 = (32897 * *v8 * v10) >> 23;
        v8[1] = (32897 * v8[1] * v10) >> 23;
        v8 += 4;
      }

      ++v6;
      v7 += v4;
    }

    while (v6 != v3);
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>(PCImage *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    v6 = 0;
    v7 = (v5 + 1);
    do
    {
      v8 = v7;
      for (i = v2; i; --i)
      {
        v10 = v8[2];
        v8[1] = (32897 * v8[1] * v10) >> 23;
        *v8 = (32897 * *v8 * v10) >> 23;
        *(v8 - 1) = (32897 * *(v8 - 1) * v10) >> 23;
        v8 += 4;
      }

      ++v6;
      v7 += v4;
    }

    while (v6 != v3);
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>(PCImage *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        *j = (32897 * *j * j[1]) >> 23;
        j += 2;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>(PCImage *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    v6 = 0;
    v7 = (v5 + 4);
    do
    {
      v8 = v7;
      for (i = v2; i; --i)
      {
        v10 = v8[1];
        *(v8 - 2) = *(v8 - 2) * v10 / 0xFFFF;
        *(v8 - 1) = *(v8 - 1) * v10 / 0xFFFF;
        *v8 = *v8 * v10 / 0xFFFF;
        v8 += 4;
      }

      ++v6;
      v7 = (v7 + v4);
    }

    while (v6 != v3);
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>(PCImage *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        *j = *j * j[1] / 0xFFFF;
        j += 2;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>(PCImage *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    v7 = v5;
    v8 = 0;
    v9 = v4;
    do
    {
      v10 = v2;
      for (i = v7; v10; --v10)
      {
        PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>::premultiply(i, v6);
        i += 4;
      }

      v7 = (v7 + v9);
      ++v8;
    }

    while (v8 != v3);
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>(PCImage *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    v7 = v5;
    v8 = 0;
    v9 = v4;
    do
    {
      v10 = v2;
      for (i = v7; v10; --v10)
      {
        PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>::premultiply(i, v6);
        i += 2;
      }

      v7 = (v7 + v9);
      ++v8;
    }

    while (v8 != v3);
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>(PCImage *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        v9 = j[1];
        v10 = vrev64_s32(v9);
        j->f32[0] = vmuls_lane_f32(j->f32[0], v9, 1);
        v9.i32[0] = j->i32[1];
        *(j + 4) = vmul_f32(v9, v10);
        j += 2;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>(PCImage *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        v9 = *j;
        v10 = j[3];
        v11 = *j * j[2];
        j[1] = *j * j[1];
        j[2] = v11;
        j[3] = v9 * v10;
        j += 4;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

uint64_t anonymous namespace::preMultBitmap<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>(PCImage *a1)
{
  v2 = (*(*a1 + 16))(a1);
  v3 = (*(*a1 + 24))(a1);
  v4 = (*(**(a1 + 8) + 64))(*(a1 + 8));
  v5 = (*(**(a1 + 8) + 16))(*(a1 + 8));
  if (v3)
  {
    for (i = 0; i != v3; ++i)
    {
      v7 = v2;
      for (j = v5; v7; --v7)
      {
        *j = j[1] * *j;
        j += 2;
      }

      v5 += v4;
    }
  }

  return PCImage::setIsPremultiplied(a1, 1);
}

void PCCreateBitmap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t x3_0)
{
  v9 = PCBitmap::sanitizeColorSpace(0, a3);

  PCCreateBitmap(a1, a2, a3, v9, x3_0);
}

void PCCreateBitmap(uint64_t a3, uint64_t a4, uint64_t a5, CGColorSpaceRef space, uint64_t a6)
{
  v6 = a6;
  v8 = a4;
  v9 = a3;
  PCColorSpaceHandle::PCColorSpaceHandle(&v10, space);
  PCCreateBitmap(v9, v8, a5, &v10, v6);
}

void sub_25FB7FCAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

double PCCreateBitmap<ProCore_Private::PCBitmapRepDefault>@<D0>(void *a1@<X0>, void *a3@<X8>)
{
  switch((*(**a1 + 48))(*a1))
  {
    case 1u:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)1>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 2u:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 3u:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 4u:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)4>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 5u:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 6u:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)6>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 7u:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)7>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 8u:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 9u:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>,std::allocator<PCBitmap_t<PCPixel3<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)9>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 0xAu:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 0xBu:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)11>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 0xCu:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 0xDu:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 0xEu:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>,std::allocator<PCBitmap_t<PCGrayPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)14>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 0xFu:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>,std::allocator<PCBitmap_t<PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)15>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 0x10u:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)16>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    case 0x11u:
      std::allocate_shared[abi:ne200100]<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>,std::allocator<PCBitmap_t<PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)17>>>>,std::unique_ptr<ProCore_Private::PCBitmapRepDefault>,CGColorSpace *&,0>();
    default:
      *a3 = 0;
      a3[1] = 0;
      return result;
  }
}

void PCBitmap::toBitmap(PCBitmap *this@<X0>, void *a2@<X8>)
{
  std::shared_ptr<OZStyle>::shared_ptr[abi:ne200100]<OZStyle,0>(&lpsrc, this + 1);
  {
    v4 = v6;
    *a2 = v3;
    a2[1] = v4;
    if (v4)
    {
      atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
    }
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v6);
  }
}

void sub_25FB800E0(_Unwind_Exception *a1)
{
  MEMORY[0x2666E9F00](v1, 0x10A1C405CA75B9BLL);
  __cxa_end_catch();
  _Unwind_Resume(a1);
}

uint64_t PCBitmap::isPremultiplied(PCBitmap *this)
{
  result = PCImage::isPremultiplied(this);
  if (result)
  {
    v3 = (*(**(this + 8) + 48))(*(this + 8));

    return PCPixelFormat::hasAlpha(v3);
  }

  return result;
}

void CreateCGImageFromPCBitmap(PCImage **a1, uint64_t a2)
{
  v4 = (*(**a1 + 16))(*a1);
  v5 = (*(**a1 + 24))();
  CGColorSpace = PCImage::getCGColorSpace(*a1);
  PCCreateBitmap(v4, v5, a2, CGColorSpace, 1);
}

void sub_25FB80458(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t freeImage(uint64_t result, const void *a2)
{
  if (result)
  {
    v2 = *(result + 8);
    if (v2)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v2);
    }

    JUMPOUT(0x2666E9F00);
  }

  return result;
}

double anonymous namespace::copyForCGImage@<D0>(uint64_t *__return_ptr a1@<X8>, _anonymous_namespace_ *this@<X0>, const PCBitmap *a3@<X1>)
{
  *a1 = 0;
  a1[1] = 0;
  v4 = (*(**(this + 8) + 48))(*(this + 8), a3);
  if (v4 <= 9)
  {
    switch(v4)
    {
      case 4:
        v12 = (*(*this + 16))(this);
        v13 = (*(*this + 24))(this);
        PCImage::getColorSpace(&v20, this);
        PCCreateBitmap(v12, v13, 3, &v20, 1u);
      case 6:
        v18 = (*(*this + 16))(this);
        v19 = (*(*this + 24))(this);
        PCImage::getColorSpace(&v20, this);
        PCCreateBitmap(v18, v19, 3, &v20, 1u);
      case 9:
        v8 = (*(*this + 16))(this);
        v9 = (*(*this + 24))(this);
        PCImage::getColorSpace(&v20, this);
        PCCreateBitmap(v8, v9, 16, &v20, 1u);
    }
  }

  else
  {
    if (v4 <= 11)
    {
      if (v4 != 10)
      {
        v6 = (*(*this + 16))(this);
        v7 = (*(*this + 24))(this);
        PCImage::getColorSpace(&v20, this);
        PCCreateBitmap(v6, v7, 14, &v20, 1u);
      }

      v14 = (*(*this + 16))(this);
      v15 = (*(*this + 24))(this);
      PCImage::getColorSpace(&v20, this);
      PCCreateBitmap(v14, v15, 16, &v20, 1u);
    }

    if (v4 == 12)
    {
      v16 = (*(*this + 16))(this);
      v17 = (*(*this + 24))(this);
      PCImage::getColorSpace(&v20, this);
      PCCreateBitmap(v16, v17, 15, &v20, 1u);
    }

    if (v4 == 13)
    {
      v10 = (*(*this + 16))(this);
      v11 = (*(*this + 24))(this);
      PCImage::getColorSpace(&v20, this);
      PCCreateBitmap(v10, v11, 16, &v20, 1u);
    }
  }

  return result;
}

void sub_25FB822D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

CGColorSpace **anonymous namespace::makeCGImageFromPCBitmap@<X0>(uint64_t *__return_ptr a1@<X8>, _anonymous_namespace_ *this@<X0>)
{
  CGColorSpace = PCImage::getCGColorSpace(this);
  v5 = CGColorSpace;
  if (CGColorSpace)
  {
    PCCFRefTraits<CGColorSpace *>::retain(CGColorSpace);
  }

  v20 = v5;
  v6 = (*(**(this + 8) + 16))(*(this + 8));
  v7 = (*(*this + 40))(this);
  if (v8)
  {
    std::shared_ptr<CGDataProvider>::shared_ptr[abi:ne200100]<CGDataProvider,void (*)(CGDataProvider*),0>(&provider, v8, MEMORY[0x277CBF338]);
  }

  provider = 0;
  v19 = 0;
  v9 = (*(*this + 16))(this);
  v10 = (*(*this + 24))(this);
  v11 = *(this + 9);
  v12 = *(this + 10);
  v13 = (*(**(this + 8) + 64))(*(this + 8));
  v16 = CGImageCreate(v9, v10, v11, (v12 * v11), v13, v20, v15, 0, 0, 0, kCGRenderingIntentDefault);
  if (v16)
  {
    std::shared_ptr<CGImage>::shared_ptr[abi:ne200100]<CGImage,void (*)(CGImage*),0>(a1, v16, MEMORY[0x277CBF340]);
  }

  *a1 = 0;
  a1[1] = 0;
  if (v19)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v19);
  }

  return PCCFRef<CGColorSpace *>::~PCCFRef(&v20);
}

void sub_25FB82554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

CGColorSpace **anonymous namespace::makeCGBitmapContextForPCBitmap@<X0>(uint64_t *__return_ptr a1@<X8>, _anonymous_namespace_ *this@<X0>)
{
  CGColorSpace = PCImage::getCGColorSpace(this);
  v5 = CGColorSpace;
  if (CGColorSpace)
  {
    PCCFRefTraits<CGColorSpace *>::retain(CGColorSpace);
  }

  v15 = v5;
  v6 = (*(**(this + 8) + 16))(*(this + 8));
  v7 = (*(*this + 16))(this);
  v8 = (*(*this + 24))(this);
  v9 = *(this + 9);
  v10 = (*(**(this + 8) + 64))(*(this + 8));
  if (v13)
  {
    std::shared_ptr<CGContext>::shared_ptr[abi:ne200100]<CGContext,void (*)(CGContext*),0>(a1, v13, MEMORY[0x277CBF330]);
  }

  *a1 = 0;
  a1[1] = 0;
  return PCCFRef<CGColorSpace *>::~PCCFRef(&v15);
}

void sub_25FB826FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  PCCFRef<CGColorSpace *>::~PCCFRef(va);
  _Unwind_Resume(a1);
}

void anonymous namespace::copyGrayAlpha(_anonymous_namespace_ *this, const PCBitmap *a2, const PCBitmap *a3, PCBitmap *a4)
{
  v7 = (*(**(a3 + 8) + 48))(*(a3 + 8));
  if (a2)
  {
    if (v7 > 11)
    {
      if (v7 == 12)
      {
        v87 = (*(**(a2 + 8) + 48))(*(a2 + 8));
        if (v87 > 10)
        {
          if (v87 == 11 || v87 == 14)
          {
            v175 = (*(**(this + 8) + 16))(*(this + 8));
            v176 = (*(**(a2 + 8) + 16))(*(a2 + 8));
            v177 = (*(**(a3 + 8) + 16))(*(a3 + 8));
            v178 = (*(*this + 16))(this);
            v179 = (*(*this + 24))(this);
            v480 = (*(**(this + 8) + 64))(*(this + 8));
            v469 = (*(**(a2 + 8) + 64))(*(a2 + 8));
            v180 = (*(**(a3 + 8) + 64))(*(a3 + 8));
            v181 = (*(*a3 + 48))(a3);
            if (v181)
            {
              if (v179)
              {
                v183 = v179;
                for (i = 0; i != v183; ++i)
                {
                  if (v178)
                  {
                    v185 = 0;
                    v186 = v178;
                    do
                    {
                      v187 = (v177 + v185);
                      v188 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v175 + v185), v181, v182);
                      *v187 = v188;
                      v181 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v176 + v185), v188, v189);
                      v187[1] = v181;
                      v185 += 4;
                      --v186;
                    }

                    while (v186);
                  }

                  v175 += v480;
                  v176 += v469;
                  v177 += v180;
                }
              }
            }

            else if (v179)
            {
              v290 = v179;
              for (j = 0; j != v290; ++j)
              {
                if (v178)
                {
                  v292 = 0;
                  v293 = v178;
                  do
                  {
                    v294 = (v177 + v292);
                    v295 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v175 + v292), v181, v182);
                    *v294 = v295;
                    v294[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v176 + v292), v295, v296);
                    PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>::unpremultiply((v177 + v292), v297);
                    v292 += 4;
                    --v293;
                  }

                  while (v293);
                }

                v175 += v480;
                v176 += v469;
                v177 += v180;
              }
            }
          }
        }

        else if (v87 == 1)
        {
          v267 = (*(**(this + 8) + 16))(*(this + 8));
          v268 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v269 = (*(**(a3 + 8) + 16))(*(a3 + 8));
          v483 = (*(*this + 16))(this);
          v270 = (*(*this + 24))(this);
          v472 = (*(**(this + 8) + 64))(*(this + 8));
          v271 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v272 = (*(**(a3 + 8) + 64))(*(a3 + 8));
          v273 = (*(*a3 + 48))(a3);
          if (v273)
          {
            if (v270)
            {
              for (k = 0; k != v270; ++k)
              {
                if (v483)
                {
                  v276 = 0;
                  v277 = v269;
                  do
                  {
                    v278 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v267 + 4 * v276), v273, v274);
                    *v277 = v278;
                    LOBYTE(v279) = *(v268 + v276);
                    *&v279 = v279 * 0.00392156863;
                    v273 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*&v279, v278, v280);
                    v277[1] = v273;
                    ++v276;
                    v277 += 2;
                  }

                  while (v483 != v276);
                }

                v267 += v472;
                v268 += v271;
                v269 += v272;
              }
            }
          }

          else if (v270)
          {
            for (m = 0; m != v270; ++m)
            {
              if (v483)
              {
                v395 = 0;
                v396 = v269;
                do
                {
                  v397 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v267 + 4 * v395), v273, v274);
                  *v396 = v397;
                  LOBYTE(v398) = *(v268 + v395);
                  *&v398 = v398 * 0.00392156863;
                  v396[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*&v398, v397, v399);
                  PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>::unpremultiply(v396, v400);
                  ++v395;
                  v396 += 2;
                }

                while (v483 != v395);
              }

              v267 += v472;
              v268 += v271;
              v269 += v272;
            }
          }
        }

        else if (v87 == 7)
        {
          v88 = (*(**(this + 8) + 16))(*(this + 8));
          v89 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v90 = (*(**(a3 + 8) + 16))(*(a3 + 8));
          v476 = (*(*this + 16))(this);
          v91 = (*(*this + 24))(this);
          v466 = (*(**(this + 8) + 64))(*(this + 8));
          v92 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v93 = (*(**(a3 + 8) + 64))(*(a3 + 8));
          v94 = (*(*a3 + 48))(a3);
          if (v94)
          {
            if (v91)
            {
              for (n = 0; n != v91; ++n)
              {
                if (v476)
                {
                  v97 = 0;
                  v98 = v90;
                  do
                  {
                    v99 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v88 + 4 * v97), v94, v95);
                    *v98 = v99;
                    LOWORD(v100) = *(v89 + 2 * v97);
                    *&v100 = v100 * 0.0000152590219;
                    v94 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*&v100, v99, v101);
                    v98[1] = v94;
                    ++v97;
                    v98 += 2;
                  }

                  while (v476 != v97);
                }

                v88 += v466;
                v89 += v92;
                v90 += v93;
              }
            }
          }

          else if (v91)
          {
            for (ii = 0; ii != v91; ++ii)
            {
              if (v476)
              {
                v360 = 0;
                v361 = v90;
                do
                {
                  v362 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v88 + 4 * v360), v94, v95);
                  *v361 = v362;
                  LOWORD(v363) = *(v89 + 2 * v360);
                  *&v363 = v363 * 0.0000152590219;
                  v361[1] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*&v363, v362, v364);
                  PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>::unpremultiply(v361, v365);
                  ++v360;
                  v361 += 2;
                }

                while (v476 != v360);
              }

              v88 += v466;
              v89 += v92;
              v90 += v93;
            }
          }
        }
      }

      else if (v7 == 15)
      {
        v44 = (*(**(a2 + 8) + 48))(*(a2 + 8));
        if (v44 > 10)
        {
          if (v44 == 11 || v44 == 14)
          {
            v149 = (*(**(this + 8) + 16))(*(this + 8));
            v150 = (*(**(a2 + 8) + 16))(*(a2 + 8));
            v151 = (*(**(a3 + 8) + 16))(*(a3 + 8));
            v152 = (*(*this + 16))(this);
            v153 = (*(*this + 24))(this);
            v154 = (*(**(this + 8) + 64))(*(this + 8));
            v155 = (*(**(a2 + 8) + 64))(*(a2 + 8));
            v156 = (*(**(a3 + 8) + 64))(*(a3 + 8));
            if ((*(*a3 + 48))(a3))
            {
              if (v153)
              {
                for (jj = 0; jj != v153; ++jj)
                {
                  if (v152)
                  {
                    v158 = 0;
                    v159 = v151;
                    do
                    {
                      *v159 = *(v149 + 4 * v158);
                      v159[1] = *(v150 + 4 * v158++);
                      v159 += 2;
                    }

                    while (v152 != v158);
                  }

                  v149 += v154;
                  v150 += v155;
                  v151 += v156;
                }
              }
            }

            else if (v153)
            {
              for (kk = 0; kk != v153; ++kk)
              {
                if (v152)
                {
                  v247 = 0;
                  v248 = v151;
                  do
                  {
                    v249 = *(v149 + 4 * v247);
                    *v248 = v249;
                    v250 = *(v150 + 4 * v247);
                    v248[1] = v250;
                    if (v250 != 1.0)
                    {
                      v251 = v249 / v250;
                      if (v250 == 0.0)
                      {
                        v251 = 0.0;
                      }

                      *v248 = v251;
                    }

                    v248 += 2;
                    ++v247;
                  }

                  while (v152 != v247);
                }

                v149 += v154;
                v150 += v155;
                v151 += v156;
              }
            }
          }
        }

        else if (v44 == 1)
        {
          v223 = (*(**(this + 8) + 16))(*(this + 8));
          v224 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v225 = (*(**(a3 + 8) + 16))(*(a3 + 8));
          v226 = (*(*this + 16))(this);
          v227 = (*(*this + 24))(this);
          v228 = (*(**(this + 8) + 64))(*(this + 8));
          v229 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v230 = (*(**(a3 + 8) + 64))(*(a3 + 8));
          if ((*(*a3 + 48))(a3))
          {
            if (v227)
            {
              for (mm = 0; mm != v227; ++mm)
              {
                if (v226)
                {
                  v234 = 0;
                  v235 = v225;
                  do
                  {
                    LODWORD(v231) = *(v223 + 4 * v234);
                    *v235 = LODWORD(v231);
                    LOBYTE(v231) = *(v224 + v234);
                    v231 = *&v231 * 0.00392156863;
                    *&v231 = v231;
                    v235[1] = LODWORD(v231);
                    ++v234;
                    v235 += 2;
                  }

                  while (v226 != v234);
                }

                v223 += v228;
                v224 += v229;
                v225 += v230;
              }
            }
          }

          else if (v227)
          {
            for (nn = 0; nn != v227; ++nn)
            {
              if (v226)
              {
                v379 = 0;
                v380 = v225;
                do
                {
                  v381 = *(v223 + 4 * v379);
                  *v380 = v381;
                  LOBYTE(v232) = *(v224 + v379);
                  v232 = *&v232 * 0.00392156863;
                  *&v232 = v232;
                  *(v380 + 4) = LODWORD(v232);
                  if (*&v232 != 1.0)
                  {
                    v382 = v381 / *&v232;
                    if (*&v232 == 0.0)
                    {
                      v382 = 0.0;
                    }

                    *v380 = v382;
                  }

                  v380 += 8;
                  ++v379;
                }

                while (v226 != v379);
              }

              v223 += v228;
              v224 += v229;
              v225 += v230;
            }
          }
        }

        else if (v44 == 7)
        {
          v45 = (*(**(this + 8) + 16))(*(this + 8));
          v46 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v47 = (*(**(a3 + 8) + 16))(*(a3 + 8));
          v48 = (*(*this + 16))(this);
          v49 = (*(*this + 24))(this);
          v50 = (*(**(this + 8) + 64))(*(this + 8));
          v51 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v52 = (*(**(a3 + 8) + 64))(*(a3 + 8));
          if ((*(*a3 + 48))(a3))
          {
            if (v49)
            {
              for (i1 = 0; i1 != v49; ++i1)
              {
                if (v48)
                {
                  v56 = 0;
                  v57 = v47;
                  do
                  {
                    LOWORD(v53) = *(v46 + 2 * v56);
                    v53 = *&v53 * 0.0000152590219;
                    *&v53 = v53;
                    *v57 = *(v45 + 4 * v56);
                    v57[1] = LODWORD(v53);
                    v57 += 2;
                    ++v56;
                  }

                  while (v48 != v56);
                }

                v45 += v50;
                v46 += v51;
                v47 += v52;
              }
            }
          }

          else if (v49)
          {
            for (i2 = 0; i2 != v49; ++i2)
            {
              if (v48)
              {
                v344 = 0;
                v345 = v47;
                do
                {
                  v346 = *(v45 + 4 * v344);
                  LOWORD(v54) = *(v46 + 2 * v344);
                  v54 = *&v54 * 0.0000152590219;
                  *&v54 = v54;
                  *v345 = v346;
                  *(v345 + 4) = LODWORD(v54);
                  if (*&v54 != 1.0)
                  {
                    v347 = v346 / *&v54;
                    if (*&v54 == 0.0)
                    {
                      v347 = 0.0;
                    }

                    *v345 = v347;
                  }

                  v345 += 8;
                  ++v344;
                }

                while (v48 != v344);
              }

              v45 += v50;
              v46 += v51;
              v47 += v52;
            }
          }
        }
      }
    }

    else if (v7 == 2)
    {
      v71 = (*(**(a2 + 8) + 48))(*(a2 + 8));
      if (v71 > 10)
      {
        if (v71 == 11 || v71 == 14)
        {
          v161 = (*(**(this + 8) + 16))(*(this + 8));
          v162 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v163 = (*(**(a3 + 8) + 16))(*(a3 + 8));
          v164 = (*(*this + 16))(this);
          v165 = (*(*this + 24))(this);
          v479 = (*(**(this + 8) + 64))(*(this + 8));
          v468 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v462 = (*(**(a3 + 8) + 64))(*(a3 + 8));
          if ((*(*a3 + 48))(a3))
          {
            if (v165)
            {
              for (i3 = 0; i3 != v165; ++i3)
              {
                if (v164)
                {
                  v169 = 0;
                  v170 = v163;
                  do
                  {
                    LOBYTE(v167) = *(v161 + v169);
                    v171 = *&v167 * 0.00392156863;
                    v172 = vcvtmd_s64_f64((v171 * 255.0) + 0.5 + 0.0000001);
                    if (v172 >= 255)
                    {
                      v172 = 255;
                    }

                    *v170 = v172 & ~(v172 >> 31);
                    v167 = (*(v162 + 4 * v169) * 255.0) + 0.5 + 0.0000001;
                    v173 = vcvtmd_s64_f64(v167);
                    if (v173 >= 255)
                    {
                      v173 = 255;
                    }

                    v170[1] = v173 & ~(v173 >> 31);
                    ++v169;
                    v170 += 2;
                  }

                  while (v164 != v169);
                }

                v161 += v479;
                v162 += v468;
                v163 += v462;
              }
            }
          }

          else if (v165)
          {
            v281 = v165;
            v282 = 0;
            v283 = v164;
            v457 = v164;
            do
            {
              if (v164)
              {
                v284 = 0;
                v285 = v163;
                do
                {
                  LOBYTE(v166) = *(v161 + v284);
                  v286 = v166 * 0.00392156863;
                  v287 = vcvtmd_s64_f64((v286 * 255.0) + 0.5 + 0.0000001);
                  if (v287 >= 255)
                  {
                    v287 = 255;
                  }

                  *v285 = v287 & ~(v287 >> 31);
                  v288 = (*(v162 + 4 * v284) * 255.0) + 0.5 + 0.0000001;
                  v289 = vcvtmd_s64_f64(v288);
                  if (v289 >= 255)
                  {
                    v289 = 255;
                  }

                  v285[1] = v289 & ~(v289 >> 31);
                  PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>::unpremultiply(v285, v288);
                  ++v284;
                  v285 += 2;
                }

                while (v283 != v284);
              }

              v161 += v479;
              v162 += v468;
              v163 += v462;
              ++v282;
              v164 = v457;
            }

            while (v282 != v281);
          }
        }
      }

      else if (v71 == 1)
      {
        v252 = (*(**(this + 8) + 16))(*(this + 8));
        v253 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v254 = (*(**(a3 + 8) + 16))(*(a3 + 8));
        v255 = (*(*this + 16))(this);
        v256 = (*(*this + 24))(this);
        v482 = (*(**(this + 8) + 64))(*(this + 8));
        v471 = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v464 = (*(**(a3 + 8) + 64))(*(a3 + 8));
        if ((*(*a3 + 48))(a3))
        {
          if (v256)
          {
            for (i4 = 0; i4 != v256; ++i4)
            {
              if (v255)
              {
                v260 = 0;
                v261 = v254;
                do
                {
                  LOBYTE(v258) = *(v252 + v260);
                  v262 = *&v258 * 0.00392156863;
                  v263 = (v262 * 255.0) + 0.5 + 0.0000001;
                  v264 = vcvtmd_s64_f64(v263);
                  if (v264 >= 255)
                  {
                    v264 = 255;
                  }

                  *v261 = v264 & ~(v264 >> 31);
                  LOBYTE(v263) = *(v253 + v260);
                  v265 = *&v263 * 0.00392156863;
                  v258 = (v265 * 255.0) + 0.5 + 0.0000001;
                  v266 = vcvtmd_s64_f64(v258);
                  if (v266 >= 255)
                  {
                    v266 = 255;
                  }

                  v261[1] = v266 & ~(v266 >> 31);
                  ++v260;
                  v261 += 2;
                }

                while (v255 != v260);
              }

              v252 += v482;
              v253 += v471;
              v254 += v464;
            }
          }
        }

        else if (v256)
        {
          v383 = v256;
          v384 = 0;
          v385 = v255;
          v459 = v255;
          do
          {
            if (v255)
            {
              v386 = 0;
              v387 = v254;
              do
              {
                LOBYTE(v257) = *(v252 + v386);
                v388 = v257 * 0.00392156863;
                v389 = (v388 * 255.0) + 0.5 + 0.0000001;
                v390 = vcvtmd_s64_f64(v389);
                if (v390 >= 255)
                {
                  v390 = 255;
                }

                *v387 = v390 & ~(v390 >> 31);
                LOBYTE(v389) = *(v253 + v386);
                v391 = *&v389 * 0.00392156863;
                v392 = (v391 * 255.0) + 0.5 + 0.0000001;
                v393 = vcvtmd_s64_f64(v392);
                if (v393 >= 255)
                {
                  v393 = 255;
                }

                v387[1] = v393 & ~(v393 >> 31);
                PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>::unpremultiply(v387, v392);
                ++v386;
                v387 += 2;
              }

              while (v385 != v386);
            }

            v252 += v482;
            v253 += v471;
            v254 += v464;
            ++v384;
            v255 = v459;
          }

          while (v384 != v383);
        }
      }

      else if (v71 == 7)
      {
        v72 = (*(**(this + 8) + 16))(*(this + 8));
        v73 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v74 = (*(**(a3 + 8) + 16))(*(a3 + 8));
        v75 = (*(*this + 16))(this);
        v76 = (*(*this + 24))(this);
        v475 = (*(**(this + 8) + 64))(*(this + 8));
        v465 = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v460 = (*(**(a3 + 8) + 64))(*(a3 + 8));
        if ((*(*a3 + 48))(a3))
        {
          if (v76)
          {
            for (i5 = 0; i5 != v76; ++i5)
            {
              if (v75)
              {
                v80 = 0;
                v81 = v74;
                do
                {
                  LOBYTE(v78) = *(v72 + v80);
                  v82 = *&v78 * 0.00392156863;
                  v83 = (v82 * 255.0) + 0.5 + 0.0000001;
                  v84 = vcvtmd_s64_f64(v83);
                  if (v84 >= 255)
                  {
                    v84 = 255;
                  }

                  *v81 = v84 & ~(v84 >> 31);
                  LOWORD(v83) = *(v73 + 2 * v80);
                  v85 = *&v83 * 0.0000152590219;
                  v78 = (v85 * 255.0) + 0.5 + 0.0000001;
                  v86 = vcvtmd_s64_f64(v78);
                  if (v86 >= 255)
                  {
                    v86 = 255;
                  }

                  v81[1] = v86 & ~(v86 >> 31);
                  ++v80;
                  v81 += 2;
                }

                while (v75 != v80);
              }

              v72 += v475;
              v73 += v465;
              v74 += v460;
            }
          }
        }

        else if (v76)
        {
          v348 = v76;
          v349 = 0;
          v350 = v75;
          v458 = v75;
          do
          {
            if (v75)
            {
              v351 = 0;
              v352 = v74;
              do
              {
                LOBYTE(v77) = *(v72 + v351);
                v353 = v77 * 0.00392156863;
                v354 = (v353 * 255.0) + 0.5 + 0.0000001;
                v355 = vcvtmd_s64_f64(v354);
                if (v355 >= 255)
                {
                  v355 = 255;
                }

                *v352 = v355 & ~(v355 >> 31);
                LOWORD(v354) = *(v73 + 2 * v351);
                v356 = *&v354 * 0.0000152590219;
                v357 = (v356 * 255.0) + 0.5 + 0.0000001;
                v358 = vcvtmd_s64_f64(v357);
                if (v358 >= 255)
                {
                  v358 = 255;
                }

                v352[1] = v358 & ~(v358 >> 31);
                PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)2>>::unpremultiply(v352, v357);
                ++v351;
                v352 += 2;
              }

              while (v350 != v351);
            }

            v72 += v475;
            v73 += v465;
            v74 += v460;
            ++v349;
            v75 = v458;
          }

          while (v349 != v348);
        }
      }
    }

    else if (v7 == 8)
    {
      v8 = (*(**(a2 + 8) + 48))(*(a2 + 8));
      if (v8 > 10)
      {
        if (v8 == 11 || v8 == 14)
        {
          v134 = (*(**(this + 8) + 16))(*(this + 8));
          v135 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v136 = (*(**(a3 + 8) + 16))(*(a3 + 8));
          v137 = (*(*this + 16))(this);
          v138 = (*(*this + 24))(this);
          v478 = (*(**(this + 8) + 64))(*(this + 8));
          v467 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v461 = (*(**(a3 + 8) + 64))(*(a3 + 8));
          if ((*(*a3 + 48))(a3))
          {
            if (v138)
            {
              for (i6 = 0; i6 != v138; ++i6)
              {
                if (v137)
                {
                  v142 = 0;
                  v143 = v136;
                  do
                  {
                    LOWORD(v140) = *(v134 + 2 * v142);
                    v144 = *&v140 * 0.0000152590219;
                    v145 = vcvtmd_s64_f64((v144 * 65535.0) + 0.5 + 0.0000001);
                    if (v145 >= 0xFFFF)
                    {
                      v145 = 0xFFFF;
                    }

                    v140 = (*(v135 + 4 * v142) * 65535.0) + 0.5 + 0.0000001;
                    v146 = vcvtmd_s64_f64(v140);
                    *v143 = v145 & ~(v145 >> 31);
                    if (v146 >= 0xFFFF)
                    {
                      v147 = 0xFFFF;
                    }

                    else
                    {
                      v147 = v146;
                    }

                    v143[1] = v147 & ~(v147 >> 31);
                    ++v142;
                    v143 += 2;
                  }

                  while (v137 != v142);
                }

                v134 += v478;
                v135 += v467;
                v136 += v461;
              }
            }
          }

          else if (v138)
          {
            v236 = v138;
            v237 = 0;
            v238 = v137;
            do
            {
              v239 = v137;
              if (v137)
              {
                v240 = 0;
                v241 = v136;
                do
                {
                  LOWORD(v139) = *(v134 + 2 * v240);
                  v242 = v139 * 0.0000152590219;
                  v243 = vcvtmd_s64_f64((v242 * 65535.0) + 0.5 + 0.0000001);
                  if (v243 >= 0xFFFF)
                  {
                    v243 = 0xFFFF;
                  }

                  *v241 = v243 & ~(v243 >> 31);
                  v244 = (*(v135 + 4 * v240) * 65535.0) + 0.5 + 0.0000001;
                  v245 = vcvtmd_s64_f64(v244);
                  if (v245 >= 0xFFFF)
                  {
                    v245 = 0xFFFF;
                  }

                  v241[1] = v245 & ~(v245 >> 31);
                  PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>::unpremultiply(v241, v244);
                  ++v240;
                  v241 += 2;
                }

                while (v238 != v240);
              }

              v134 += v478;
              v135 += v467;
              v136 += v461;
              ++v237;
              v137 = v239;
            }

            while (v237 != v236);
          }
        }
      }

      else if (v8 == 1)
      {
        v208 = (*(**(this + 8) + 16))(*(this + 8));
        v209 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v210 = (*(**(a3 + 8) + 16))(*(a3 + 8));
        v211 = (*(*this + 16))(this);
        v212 = (*(*this + 24))(this);
        v481 = (*(**(this + 8) + 64))(*(this + 8));
        v470 = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v463 = (*(**(a3 + 8) + 64))(*(a3 + 8));
        if ((*(*a3 + 48))(a3))
        {
          if (v212)
          {
            for (i7 = 0; i7 != v212; ++i7)
            {
              if (v211)
              {
                v216 = 0;
                v217 = v210;
                do
                {
                  LOWORD(v214) = *(v208 + 2 * v216);
                  v218 = *&v214 * 0.0000152590219;
                  v219 = (v218 * 65535.0) + 0.5 + 0.0000001;
                  v220 = vcvtmd_s64_f64(v219);
                  if (v220 >= 0xFFFF)
                  {
                    v220 = 0xFFFF;
                  }

                  *v217 = v220 & ~(v220 >> 31);
                  LOBYTE(v219) = *(v209 + v216);
                  v221 = *&v219 * 0.00392156863;
                  v214 = (v221 * 65535.0) + 0.5 + 0.0000001;
                  v222 = vcvtmd_s64_f64(v214);
                  if (v222 >= 0xFFFF)
                  {
                    v222 = 0xFFFF;
                  }

                  v217[1] = v222 & ~(v222 >> 31);
                  ++v216;
                  v217 += 2;
                }

                while (v211 != v216);
              }

              v208 += v481;
              v209 += v470;
              v210 += v463;
            }
          }
        }

        else if (v212)
        {
          v366 = v212;
          v367 = 0;
          v368 = v211;
          do
          {
            v369 = v211;
            if (v211)
            {
              v370 = 0;
              v371 = v210;
              do
              {
                LOWORD(v213) = *(v208 + 2 * v370);
                v372 = v213 * 0.0000152590219;
                v373 = (v372 * 65535.0) + 0.5 + 0.0000001;
                v374 = vcvtmd_s64_f64(v373);
                if (v374 >= 0xFFFF)
                {
                  v374 = 0xFFFF;
                }

                *v371 = v374 & ~(v374 >> 31);
                LOBYTE(v373) = *(v209 + v370);
                v375 = *&v373 * 0.00392156863;
                v376 = (v375 * 65535.0) + 0.5 + 0.0000001;
                v377 = vcvtmd_s64_f64(v376);
                if (v377 >= 0xFFFF)
                {
                  v377 = 0xFFFF;
                }

                v371[1] = v377 & ~(v377 >> 31);
                PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>::unpremultiply(v371, v376);
                ++v370;
                v371 += 2;
              }

              while (v368 != v370);
            }

            v208 += v481;
            v209 += v470;
            v210 += v463;
            ++v367;
            v211 = v369;
          }

          while (v367 != v366);
        }
      }

      else if (v8 == 7)
      {
        v9 = (*(**(this + 8) + 16))(*(this + 8));
        v10 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v11 = (*(**(a3 + 8) + 16))(*(a3 + 8));
        v474 = (*(*this + 16))(this);
        v12 = (*(*this + 24))(this);
        v13 = (*(**(this + 8) + 64))(*(this + 8));
        v14 = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v15 = (*(**(a3 + 8) + 64))(*(a3 + 8));
        if ((*(*a3 + 48))(a3))
        {
          if (v12)
          {
            for (i8 = 0; i8 != v12; ++i8)
            {
              if (v474)
              {
                v19 = 0;
                v20 = v474;
                do
                {
                  v21 = (v11 + 2 * v19);
                  LOWORD(v17) = *(v9 + v19);
                  v22 = *&v17 * 0.0000152590219;
                  v23 = (v22 * 65535.0) + 0.5 + 0.0000001;
                  v24 = vcvtmd_s64_f64(v23);
                  if (v24 >= 0xFFFF)
                  {
                    v24 = 0xFFFF;
                  }

                  *v21 = v24 & ~(v24 >> 31);
                  LOWORD(v23) = *(v10 + v19);
                  v25 = *&v23 * 0.0000152590219;
                  v17 = (v25 * 65535.0) + 0.5 + 0.0000001;
                  v26 = vcvtmd_s64_f64(v17);
                  if (v26 >= 0xFFFF)
                  {
                    v26 = 0xFFFF;
                  }

                  v21[1] = v26 & ~(v26 >> 31);
                  v19 += 2;
                  --v20;
                }

                while (v20);
              }

              v9 += v13;
              v10 += v14;
              v11 += v15;
            }
          }
        }

        else if (v12)
        {
          v330 = 0;
          v473 = v12;
          do
          {
            v331 = v15;
            v332 = v14;
            v333 = v13;
            if (v474)
            {
              v334 = 0;
              v335 = v474;
              do
              {
                v336 = (v11 + 2 * v334);
                LOWORD(v16) = *(v9 + v334);
                v337 = v16 * 0.0000152590219;
                v338 = (v337 * 65535.0) + 0.5 + 0.0000001;
                v339 = vcvtmd_s64_f64(v338);
                if (v339 >= 0xFFFF)
                {
                  v339 = 0xFFFF;
                }

                *v336 = v339 & ~(v339 >> 31);
                LOWORD(v338) = *(v10 + v334);
                v340 = *&v338 * 0.0000152590219;
                v341 = (v340 * 65535.0) + 0.5 + 0.0000001;
                v342 = vcvtmd_s64_f64(v341);
                if (v342 >= 0xFFFF)
                {
                  v342 = 0xFFFF;
                }

                v336[1] = v342 & ~(v342 >> 31);
                PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)8>>::unpremultiply(v336, v341);
                v334 += 2;
                --v335;
              }

              while (v335);
            }

            v13 = v333;
            v9 += v333;
            v14 = v332;
            v10 += v332;
            v15 = v331;
            v11 += v331;
            ++v330;
          }

          while (v330 != v473);
        }
      }
    }
  }

  else if (v7 > 11)
  {
    if (v7 == 12)
    {
      v118 = (*(**(this + 8) + 16))(*(this + 8));
      v119 = (*(**(a3 + 8) + 16))(*(a3 + 8));
      v120 = (*(*this + 48))(this);
      v121 = (*(*a3 + 48))(a3);
      hasAlpha = PCPixelFormat::hasAlpha(0xEu);
      v123 = PCPixelFormat::hasAlpha(0xCu);
      v124 = (*(*this + 16))(this);
      v125 = (*(*this + 24))(this);
      v477 = (*(**(this + 8) + 64))(*(this + 8));
      v126 = (*(**(a3 + 8) + 64))(*(a3 + 8));
      v128 = v126;
      if (hasAlpha)
      {
        if (v123)
        {
          if (v120 == v121)
          {
            if (v125)
            {
              for (i9 = 0; i9 != v125; ++i9)
              {
                if (v124)
                {
                  v424 = 0;
                  v425 = v124;
                  do
                  {
                    v426 = (v119 + v424);
                    *v426 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v118 + v424), v126, v127);
                    v126 = 15360;
                    v426[1] = 15360;
                    v424 += 4;
                    --v425;
                  }

                  while (v425);
                }

                v118 += v477;
                v119 += v128;
              }
            }
          }

          else if (v120)
          {
            if (v125)
            {
              for (i10 = 0; i10 != v125; ++i10)
              {
                if (v124)
                {
                  v130 = 0;
                  v131 = v124;
                  do
                  {
                    v132 = (v119 + v130);
                    *v132 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v118 + v130), v126, v127);
                    v126 = 15360;
                    v132[1] = 15360;
                    v130 += 4;
                    --v131;
                  }

                  while (v131);
                }

                v118 += v477;
                v119 += v128;
              }
            }
          }

          else if (v125)
          {
            for (i11 = 0; i11 != v125; ++i11)
            {
              if (v124)
              {
                v453 = 0;
                v454 = v124;
                do
                {
                  v455 = (v119 + v453);
                  *v455 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v118 + v453), v126, v127);
                  v455[1] = 15360;
                  v126 = PCGrayAlphaPixel<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)12>>::premultiply((v119 + v453), v456);
                  v453 += 4;
                  --v454;
                }

                while (v454);
              }

              v118 += v477;
              v119 += v128;
            }
          }
        }

        else if (v120)
        {
          if (v125)
          {
            for (i12 = 0; i12 != v125; ++i12)
            {
              if (v124)
              {
                v320 = 0;
                v321 = v124;
                do
                {
                  v126 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v118 + v320), v126, v127);
                  *(v119 + v320) = v126;
                  v320 += 4;
                  --v321;
                }

                while (v321);
              }

              v118 += v477;
              v119 += v128;
            }
          }
        }

        else if (v125)
        {
          for (i13 = 0; i13 != v125; ++i13)
          {
            if (v124)
            {
              v433 = 0;
              v434 = v124;
              do
              {
                v126 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v118 + v433), v126, v127);
                *(v119 + v433) = v126;
                v433 += 4;
                --v434;
              }

              while (v434);
            }

            v118 += v477;
            v119 += v128;
          }
        }
      }

      else if (v123)
      {
        if (v125)
        {
          for (i14 = 0; i14 != v125; ++i14)
          {
            if (v124)
            {
              v205 = 0;
              v206 = v124;
              do
              {
                v207 = (v119 + v205);
                *v207 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v118 + v205), v126, v127);
                v126 = 15360;
                v207[1] = 15360;
                v205 += 4;
                --v206;
              }

              while (v206);
            }

            v118 += v477;
            v119 += v128;
          }
        }
      }

      else if (v125)
      {
        for (i15 = 0; i15 != v125; ++i15)
        {
          if (v124)
          {
            v328 = 0;
            v329 = v124;
            do
            {
              v126 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v118 + v328), v126, v127);
              *(v119 + v328) = v126;
              v328 += 4;
              --v329;
            }

            while (v329);
          }

          v118 += v477;
          v119 += v128;
        }
      }
    }

    else if (v7 == 15)
    {
      v58 = (*(**(this + 8) + 16))(*(this + 8));
      v59 = (*(**(a3 + 8) + 16))(*(a3 + 8));
      v60 = (*(*this + 48))(this);
      v61 = (*(*a3 + 48))(a3);
      v62 = PCPixelFormat::hasAlpha(0xEu);
      v63 = PCPixelFormat::hasAlpha(0xFu);
      v64 = (*(*this + 16))(this);
      v65 = (*(*this + 24))(this);
      v66 = (*(**(this + 8) + 64))(*(this + 8));
      v67 = (*(**(a3 + 8) + 64))(*(a3 + 8));
      if (v62)
      {
        if (v63)
        {
          if (v60 == v61)
          {
            if (v65)
            {
              for (i16 = 0; i16 != v65; ++i16)
              {
                if (v64)
                {
                  v408 = 0;
                  v409 = v59;
                  do
                  {
                    *v409 = *(v58 + 4 * v408);
                    v409[1] = 1065353216;
                    ++v408;
                    v409 += 2;
                  }

                  while (v64 != v408);
                }

                v58 += v66;
                v59 += v67;
              }
            }
          }

          else if (v60)
          {
            if (v65)
            {
              for (i17 = 0; i17 != v65; ++i17)
              {
                if (v64)
                {
                  v69 = 0;
                  v70 = v59;
                  do
                  {
                    *v70 = *(v58 + 4 * v69);
                    v70[1] = 1065353216;
                    ++v69;
                    v70 += 2;
                  }

                  while (v64 != v69);
                }

                v58 += v66;
                v59 += v67;
              }
            }
          }

          else if (v65)
          {
            v441 = 0;
            v442 = (v59 + 4);
            do
            {
              if (v64)
              {
                v443 = 0;
                v444 = v442;
                do
                {
                  v445 = *(v58 + 4 * v443);
                  *v444 = 1065353216;
                  *(v444 - 1) = v445;
                  ++v443;
                  v444 += 2;
                }

                while (v64 != v443);
              }

              v58 += v66;
              ++v441;
              v442 = (v442 + v67);
            }

            while (v441 != v65);
          }
        }

        else if (v60)
        {
          if (v65)
          {
            for (i18 = 0; i18 != v65; ++i18)
            {
              if (v64)
              {
                v304 = 0;
                v305 = v59;
                do
                {
                  *v305 = *(v58 + 4 * v304);
                  v305 += 2;
                  ++v304;
                }

                while (v64 != v304);
              }

              v58 += v66;
              v59 += v67;
            }
          }
        }

        else if (v65)
        {
          for (i19 = 0; i19 != v65; ++i19)
          {
            if (v64)
            {
              v416 = 0;
              v417 = v59;
              do
              {
                *v417 = *(v58 + 4 * v416);
                v417 += 2;
                ++v416;
              }

              while (v64 != v416);
            }

            v58 += v66;
            v59 += v67;
          }
        }
      }

      else if (v63)
      {
        if (v65)
        {
          for (i20 = 0; i20 != v65; ++i20)
          {
            if (v64)
            {
              v197 = 0;
              v198 = v59;
              do
              {
                *v198 = *(v58 + 4 * v197);
                v198[1] = 1065353216;
                ++v197;
                v198 += 2;
              }

              while (v64 != v197);
            }

            v58 += v66;
            v59 += v67;
          }
        }
      }

      else if (v65)
      {
        for (i21 = 0; i21 != v65; ++i21)
        {
          if (v64)
          {
            v312 = 0;
            v313 = v59;
            do
            {
              *v313 = *(v58 + 4 * v312);
              v313 += 2;
              ++v312;
            }

            while (v64 != v312);
          }

          v58 += v66;
          v59 += v67;
        }
      }
    }
  }

  else if (v7 == 2)
  {
    v102 = (*(**(this + 8) + 16))(*(this + 8));
    v103 = (*(**(a3 + 8) + 16))(*(a3 + 8));
    v104 = (*(*this + 48))(this);
    v105 = (*(*a3 + 48))(a3);
    v106 = PCPixelFormat::hasAlpha(1u);
    v107 = PCPixelFormat::hasAlpha(2u);
    v108 = (*(*this + 16))(this);
    v109 = (*(*this + 24))(this);
    v110 = (*(**(this + 8) + 64))(*(this + 8));
    v111 = (*(**(a3 + 8) + 64))(*(a3 + 8));
    if (v106)
    {
      if (v107)
      {
        if (v104 == v105)
        {
          if (v109)
          {
            for (i22 = 0; i22 != v109; ++i22)
            {
              if (v108)
              {
                v419 = 0;
                v420 = v103;
                do
                {
                  LOBYTE(v112) = *(v102 + v419);
                  v421 = *&v112 * 0.00392156863;
                  v112 = (v421 * 255.0) + 0.5 + 0.0000001;
                  v422 = vcvtmd_s64_f64(v112);
                  if (v422 >= 255)
                  {
                    v422 = 255;
                  }

                  *v420 = v422 & ~(v422 >> 31);
                  v420[1] = -1;
                  ++v419;
                  v420 += 2;
                }

                while (v108 != v419);
              }

              v102 += v110;
              v103 += v111;
            }
          }
        }

        else if (v104)
        {
          if (v109)
          {
            for (i23 = 0; i23 != v109; ++i23)
            {
              if (v108)
              {
                v114 = 0;
                v115 = v103;
                do
                {
                  LOBYTE(v112) = *(v102 + v114);
                  v116 = *&v112 * 0.00392156863;
                  v112 = (v116 * 255.0) + 0.5 + 0.0000001;
                  v117 = vcvtmd_s64_f64(v112);
                  if (v117 >= 255)
                  {
                    v117 = 255;
                  }

                  *v115 = v117 & ~(v117 >> 31);
                  v115[1] = -1;
                  ++v114;
                  v115 += 2;
                }

                while (v108 != v114);
              }

              v102 += v110;
              v103 += v111;
            }
          }
        }

        else if (v109)
        {
          v446 = 0;
          v447 = (v103 + 1);
          do
          {
            if (v108)
            {
              v448 = 0;
              v449 = v447;
              do
              {
                LOBYTE(v112) = *(v102 + v448);
                v450 = *&v112 * 0.00392156863;
                v112 = (v450 * 255.0) + 0.5 + 0.0000001;
                v451 = vcvtmd_s64_f64(v112);
                if (v451 >= 255)
                {
                  v451 = 255;
                }

                *v449 = -1;
                *(v449 - 1) = v451 & ~(v451 >> 31);
                ++v448;
                v449 += 2;
              }

              while (v108 != v448);
            }

            v102 += v110;
            ++v446;
            v447 += v111;
          }

          while (v446 != v109);
        }
      }

      else if (v104)
      {
        if (v109)
        {
          for (i24 = 0; i24 != v109; ++i24)
          {
            if (v108)
            {
              v315 = 0;
              v316 = v103;
              do
              {
                LOBYTE(v112) = *(v102 + v315);
                v317 = *&v112 * 0.00392156863;
                v112 = (v317 * 255.0) + 0.5 + 0.0000001;
                v318 = vcvtmd_s64_f64(v112);
                if (v318 >= 255)
                {
                  v318 = 255;
                }

                *v316 = v318 & ~(v318 >> 31);
                v316 += 2;
                ++v315;
              }

              while (v108 != v315);
            }

            v102 += v110;
            v103 += v111;
          }
        }
      }

      else if (v109)
      {
        for (i25 = 0; i25 != v109; ++i25)
        {
          if (v108)
          {
            v428 = 0;
            v429 = v103;
            do
            {
              LOBYTE(v112) = *(v102 + v428);
              v430 = *&v112 * 0.00392156863;
              v112 = (v430 * 255.0) + 0.5 + 0.0000001;
              v431 = vcvtmd_s64_f64(v112);
              if (v431 >= 255)
              {
                v431 = 255;
              }

              *v429 = v431 & ~(v431 >> 31);
              v429 += 2;
              ++v428;
            }

            while (v108 != v428);
          }

          v102 += v110;
          v103 += v111;
        }
      }
    }

    else if (v107)
    {
      if (v109)
      {
        for (i26 = 0; i26 != v109; ++i26)
        {
          if (v108)
          {
            v200 = 0;
            v201 = v103;
            do
            {
              LOBYTE(v112) = *(v102 + v200);
              v202 = *&v112 * 0.00392156863;
              v112 = (v202 * 255.0) + 0.5 + 0.0000001;
              v203 = vcvtmd_s64_f64(v112);
              if (v203 >= 255)
              {
                v203 = 255;
              }

              *v201 = v203 & ~(v203 >> 31);
              v201[1] = -1;
              ++v200;
              v201 += 2;
            }

            while (v108 != v200);
          }

          v102 += v110;
          v103 += v111;
        }
      }
    }

    else if (v109)
    {
      for (i27 = 0; i27 != v109; ++i27)
      {
        if (v108)
        {
          v323 = 0;
          v324 = v103;
          do
          {
            LOBYTE(v112) = *(v102 + v323);
            v325 = *&v112 * 0.00392156863;
            v112 = (v325 * 255.0) + 0.5 + 0.0000001;
            v326 = vcvtmd_s64_f64(v112);
            if (v326 >= 255)
            {
              v326 = 255;
            }

            *v324 = v326 & ~(v326 >> 31);
            v324 += 2;
            ++v323;
          }

          while (v108 != v323);
        }

        v102 += v110;
        v103 += v111;
      }
    }
  }

  else if (v7 == 8)
  {
    v27 = (*(**(this + 8) + 16))(*(this + 8));
    v28 = (*(**(a3 + 8) + 16))(*(a3 + 8));
    v29 = (*(*this + 48))(this);
    v30 = (*(*a3 + 48))(a3);
    v31 = PCPixelFormat::hasAlpha(7u);
    v32 = PCPixelFormat::hasAlpha(8u);
    v33 = (*(*this + 16))(this);
    v34 = (*(*this + 24))(this);
    v35 = (*(**(this + 8) + 64))(*(this + 8));
    v36 = (*(**(a3 + 8) + 64))(*(a3 + 8));
    if (v31)
    {
      if (v32)
      {
        if (v29 == v30)
        {
          if (v34)
          {
            for (i28 = 0; i28 != v34; ++i28)
            {
              if (v33)
              {
                v402 = 0;
                v403 = v33;
                do
                {
                  LOWORD(v37) = *(v27 + v402);
                  v404 = *&v37 * 0.0000152590219;
                  v37 = (v404 * 65535.0) + 0.5 + 0.0000001;
                  v405 = vcvtmd_s64_f64(v37);
                  v406 = (v28 + 2 * v402);
                  if (v405 >= 0xFFFF)
                  {
                    v405 = 0xFFFF;
                  }

                  *v406 = v405 & ~(v405 >> 31);
                  v406[1] = -1;
                  v402 += 2;
                  --v403;
                }

                while (v403);
              }

              v27 += v35;
              v28 += v36;
            }
          }
        }

        else if (v29)
        {
          if (v34)
          {
            for (i29 = 0; i29 != v34; ++i29)
            {
              if (v33)
              {
                v39 = 0;
                v40 = v33;
                do
                {
                  LOWORD(v37) = *(v27 + v39);
                  v41 = *&v37 * 0.0000152590219;
                  v37 = (v41 * 65535.0) + 0.5 + 0.0000001;
                  v42 = vcvtmd_s64_f64(v37);
                  v43 = (v28 + 2 * v39);
                  if (v42 >= 0xFFFF)
                  {
                    v42 = 0xFFFF;
                  }

                  *v43 = v42 & ~(v42 >> 31);
                  v43[1] = -1;
                  v39 += 2;
                  --v40;
                }

                while (v40);
              }

              v27 += v35;
              v28 += v36;
            }
          }
        }

        else if (v34)
        {
          for (i30 = 0; i30 != v34; ++i30)
          {
            if (v33)
            {
              v436 = 0;
              v437 = v33;
              do
              {
                LOWORD(v37) = *(v27 + v436);
                v438 = *&v37 * 0.0000152590219;
                v37 = (v438 * 65535.0) + 0.5 + 0.0000001;
                v439 = vcvtmd_s64_f64(v37);
                v440 = (v28 + 2 * v436);
                if (v439 >= 0xFFFF)
                {
                  v439 = 0xFFFF;
                }

                v440[1] = -1;
                *v440 = v439 & ~(v439 >> 31);
                v436 += 2;
                --v437;
              }

              while (v437);
            }

            v27 += v35;
            v28 += v36;
          }
        }
      }

      else if (v29)
      {
        if (v34)
        {
          for (i31 = 0; i31 != v34; ++i31)
          {
            if (v33)
            {
              v299 = 0;
              v300 = v33;
              do
              {
                LOWORD(v37) = *(v27 + v299);
                v301 = *&v37 * 0.0000152590219;
                v37 = (v301 * 65535.0) + 0.5 + 0.0000001;
                v302 = vcvtmd_s64_f64(v37);
                if (v302 >= 0xFFFF)
                {
                  v302 = 0xFFFF;
                }

                *(v28 + 2 * v299) = v302 & ~(v302 >> 31);
                v299 += 2;
                --v300;
              }

              while (v300);
            }

            v27 += v35;
            v28 += v36;
          }
        }
      }

      else if (v34)
      {
        for (i32 = 0; i32 != v34; ++i32)
        {
          if (v33)
          {
            v411 = 0;
            v412 = v33;
            do
            {
              LOWORD(v37) = *(v27 + v411);
              v413 = *&v37 * 0.0000152590219;
              v37 = (v413 * 65535.0) + 0.5 + 0.0000001;
              v414 = vcvtmd_s64_f64(v37);
              if (v414 >= 0xFFFF)
              {
                v414 = 0xFFFF;
              }

              *(v28 + 2 * v411) = v414 & ~(v414 >> 31);
              v411 += 2;
              --v412;
            }

            while (v412);
          }

          v27 += v35;
          v28 += v36;
        }
      }
    }

    else if (v32)
    {
      if (v34)
      {
        for (i33 = 0; i33 != v34; ++i33)
        {
          if (v33)
          {
            v191 = 0;
            v192 = v33;
            do
            {
              LOWORD(v37) = *(v27 + v191);
              v193 = *&v37 * 0.0000152590219;
              v37 = (v193 * 65535.0) + 0.5 + 0.0000001;
              v194 = vcvtmd_s64_f64(v37);
              v195 = (v28 + 2 * v191);
              if (v194 >= 0xFFFF)
              {
                v194 = 0xFFFF;
              }

              *v195 = v194 & ~(v194 >> 31);
              v195[1] = -1;
              v191 += 2;
              --v192;
            }

            while (v192);
          }

          v27 += v35;
          v28 += v36;
        }
      }
    }

    else if (v34)
    {
      for (i34 = 0; i34 != v34; ++i34)
      {
        if (v33)
        {
          v307 = 0;
          v308 = v33;
          do
          {
            LOWORD(v37) = *(v27 + v307);
            v309 = *&v37 * 0.0000152590219;
            v37 = (v309 * 65535.0) + 0.5 + 0.0000001;
            v310 = vcvtmd_s64_f64(v37);
            if (v310 >= 0xFFFF)
            {
              v310 = 0xFFFF;
            }

            *(v28 + 2 * v307) = v310 & ~(v310 >> 31);
            v307 += 2;
            --v308;
          }

          while (v308);
        }

        v27 += v35;
        v28 += v36;
      }
    }
  }
}

void anonymous namespace::copyFromCGBitmap(_anonymous_namespace_ *this, PCBitmap *a2, PCBitmap *a3)
{
  v5 = (*(**(a2 + 8) + 48))(*(a2 + 8));
  if (v5 > 9)
  {
    if (v5 <= 12)
    {
      if (v5 == 10)
      {
        v107 = (*(**(this + 8) + 16))(*(this + 8));
        v108 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v109 = (*(*this + 48))(this);
        v110 = (*(*a2 + 48))(a2);
        hasAlpha = PCPixelFormat::hasAlpha(0xAu);
        v112 = PCPixelFormat::hasAlpha(0xAu);
        v113 = (*(*this + 16))(this);
        v114 = (*(*this + 24))(this);
        v115 = (*(**(this + 8) + 64))(*(this + 8));
        v116 = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v120 = v116;
        if (hasAlpha)
        {
          if (v112)
          {
            if (v109 == v110)
            {
              if (v114)
              {
                for (i = 0; i != v114; ++i)
                {
                  if (v113)
                  {
                    v512 = 0;
                    v513 = v113;
                    do
                    {
                      v514 = (v107 + v512);
                      LOWORD(v119) = *(v107 + v512);
                      v515 = *&v119 * 0.0000152590219;
                      v516 = (v515 * 65535.0) + 0.5 + 0.0000001;
                      v517 = vcvtmd_s64_f64(v516);
                      v518 = (v108 + v512);
                      if (v517 >= 0xFFFF)
                      {
                        v517 = 0xFFFF;
                      }

                      *v518 = v517 & ~(v517 >> 31);
                      LOWORD(v516) = v514[1];
                      v519 = *&v516 * 0.0000152590219;
                      v520 = (v519 * 65535.0) + 0.5 + 0.0000001;
                      v521 = vcvtmd_s64_f64(v520);
                      if (v521 >= 0xFFFF)
                      {
                        v521 = 0xFFFF;
                      }

                      v518[1] = v521 & ~(v521 >> 31);
                      LOWORD(v520) = v514[2];
                      v522 = *&v520 * 0.0000152590219;
                      v523 = (v522 * 65535.0) + 0.5 + 0.0000001;
                      v524 = vcvtmd_s64_f64(v523);
                      if (v524 >= 0xFFFF)
                      {
                        v524 = 0xFFFF;
                      }

                      v518[2] = v524 & ~(v524 >> 31);
                      LOWORD(v523) = v514[3];
                      v525 = *&v523 * 0.0000152590219;
                      v119 = (v525 * 65535.0) + 0.5 + 0.0000001;
                      v526 = vcvtmd_s64_f64(v119);
                      if (v526 >= 0xFFFF)
                      {
                        v526 = 0xFFFF;
                      }

                      v518[3] = v526 & ~(v526 >> 31);
                      v512 += 8;
                      --v513;
                    }

                    while (v513);
                  }

                  v107 += v115;
                  v108 += v116;
                }
              }
            }

            else if (v109)
            {
              if (v114)
              {
                v121 = 0;
                v913 = v115;
                do
                {
                  if (v113)
                  {
                    v122 = 0;
                    v123 = v113;
                    do
                    {
                      v124 = (v108 + v122);
                      v917 = *(v107 + v122);
                      PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>::unpremultiply(&v917, v917, v117, v118);
                      LOWORD(v125) = LOWORD(v917);
                      *&v125 = v125 * 0.0000152590219;
                      v126 = (*&v125 * 65535.0) + 0.5 + 0.0000001;
                      v127 = vcvtmd_s64_f64(v126);
                      if (v127 >= 0xFFFF)
                      {
                        v127 = 0xFFFF;
                      }

                      *v124 = v127 & ~(v127 >> 31);
                      LOWORD(v126) = WORD1(v917);
                      v128 = *&v126 * 0.0000152590219;
                      v129 = (v128 * 65535.0) + 0.5 + 0.0000001;
                      v130 = vcvtmd_s64_f64(v129);
                      if (v130 >= 0xFFFF)
                      {
                        v130 = 0xFFFF;
                      }

                      v124[1] = v130 & ~(v130 >> 31);
                      LOWORD(v129) = WORD2(v917);
                      v131 = *&v129 * 0.0000152590219;
                      v132 = (v131 * 65535.0) + 0.5 + 0.0000001;
                      v133 = vcvtmd_s64_f64(v132);
                      if (v133 >= 0xFFFF)
                      {
                        v133 = 0xFFFF;
                      }

                      v124[2] = v133 & ~(v133 >> 31);
                      LOWORD(v132) = HIWORD(v917);
                      v134 = *&v132 * 0.0000152590219;
                      v135 = vcvtmd_s64_f64((v134 * 65535.0) + 0.5 + 0.0000001);
                      if (v135 >= 0xFFFF)
                      {
                        v135 = 0xFFFF;
                      }

                      v124[3] = v135 & ~(v135 >> 31);
                      v122 += 8;
                      --v123;
                    }

                    while (v123);
                  }

                  v107 += v913;
                  v108 += v120;
                  ++v121;
                }

                while (v121 != v114);
              }
            }

            else if (v114)
            {
              for (j = 0; j != v114; ++j)
              {
                if (v113)
                {
                  v733 = 0;
                  v734 = v113;
                  do
                  {
                    v735 = (v107 + v733);
                    LOWORD(v119) = *(v107 + v733);
                    v736 = *&v119 * 0.0000152590219;
                    v737 = (v736 * 65535.0) + 0.5 + 0.0000001;
                    v738 = vcvtmd_s64_f64(v737);
                    v739 = (v108 + v733);
                    if (v738 >= 0xFFFF)
                    {
                      v738 = 0xFFFF;
                    }

                    v740 = v738 & ~(v738 >> 31);
                    *v739 = v740;
                    LOWORD(v737) = v735[1];
                    v741 = *&v737 * 0.0000152590219;
                    v742 = (v741 * 65535.0) + 0.5 + 0.0000001;
                    v743 = vcvtmd_s64_f64(v742);
                    if (v743 >= 0xFFFF)
                    {
                      v743 = 0xFFFF;
                    }

                    v744 = v743 & ~(v743 >> 31);
                    v739[1] = v744;
                    LOWORD(v742) = v735[2];
                    v745 = *&v742 * 0.0000152590219;
                    v746 = (v745 * 65535.0) + 0.5 + 0.0000001;
                    v747 = vcvtmd_s64_f64(v746);
                    if (v747 >= 0xFFFF)
                    {
                      v747 = 0xFFFF;
                    }

                    v748 = v747 & ~(v747 >> 31);
                    v739[2] = v748;
                    LOWORD(v746) = v735[3];
                    v749 = *&v746 * 0.0000152590219;
                    v119 = (v749 * 65535.0) + 0.5 + 0.0000001;
                    v750 = vcvtmd_s64_f64(v119);
                    if (v750 >= 0xFFFF)
                    {
                      v750 = 0xFFFF;
                    }

                    v751 = v750 & ~(v750 >> 31);
                    v739[3] = v751;
                    *v739 = v751 * v740 / 0xFFFFu;
                    v739[1] = v751 * v744 / 0xFFFFu;
                    v739[2] = v751 * v748 / 0xFFFFu;
                    v733 += 8;
                    --v734;
                  }

                  while (v734);
                }

                v107 += v115;
                v108 += v116;
              }
            }
          }

          else if (v109)
          {
            if (v114)
            {
              for (k = 0; k != v114; ++k)
              {
                if (v113)
                {
                  v349 = 0;
                  v350 = v113;
                  do
                  {
                    v351 = v107 + v349;
                    LOWORD(v119) = *(v107 + v349);
                    v352 = *&v119 * 0.0000152590219;
                    v353 = (v352 * 65535.0) + 0.5 + 0.0000001;
                    v354 = (v108 + v349);
                    v355 = vcvtmd_s64_f64(v353);
                    if (v355 >= 0xFFFF)
                    {
                      v355 = 0xFFFF;
                    }

                    *v354 = v355 & ~(v355 >> 31);
                    LOWORD(v353) = *(v351 + 2);
                    v356 = *&v353 * 0.0000152590219;
                    v357 = (v356 * 65535.0) + 0.5 + 0.0000001;
                    v358 = vcvtmd_s64_f64(v357);
                    if (v358 >= 0xFFFF)
                    {
                      v358 = 0xFFFF;
                    }

                    v354[1] = v358 & ~(v358 >> 31);
                    LOWORD(v357) = *(v351 + 4);
                    v359 = *&v357 * 0.0000152590219;
                    v119 = (v359 * 65535.0) + 0.5 + 0.0000001;
                    v360 = vcvtmd_s64_f64(v119);
                    if (v360 >= 0xFFFF)
                    {
                      v360 = 0xFFFF;
                    }

                    v354[2] = v360 & ~(v360 >> 31);
                    v349 += 8;
                    --v350;
                  }

                  while (v350);
                }

                v107 += v115;
                v108 += v116;
              }
            }
          }

          else if (v114)
          {
            for (m = 0; m != v114; ++m)
            {
              if (v113)
              {
                v558 = 0;
                v559 = v113;
                do
                {
                  v560 = (v108 + v558);
                  v561 = *(v107 + v558 + 6);
                  v562 = (v561 * *(v107 + v558) / 0xFFFF);
                  v563 = (v561 * *(v107 + v558 + 2) / 0xFFFF);
                  v564 = (v561 * *(v107 + v558 + 4) / 0xFFFF);
                  v565 = v562 * 0.0000152590219;
                  v566 = vcvtmd_s64_f64((v565 * 65535.0) + 0.5 + 0.0000001);
                  if (v566 >= 0xFFFF)
                  {
                    v566 = 0xFFFF;
                  }

                  v567 = v563 * 0.0000152590219;
                  v568 = v566 & ~(v566 >> 31);
                  v569 = vcvtmd_s64_f64((v567 * 65535.0) + 0.5 + 0.0000001);
                  if (v569 >= 0xFFFF)
                  {
                    v569 = 0xFFFF;
                  }

                  v570 = v564 * 0.0000152590219;
                  *v560 = v568;
                  v571 = vcvtmd_s64_f64((v570 * 65535.0) + 0.5 + 0.0000001);
                  v560[1] = v569 & ~(v569 >> 31);
                  if (v571 >= 0xFFFF)
                  {
                    v571 = 0xFFFF;
                  }

                  v560[2] = v571 & ~(v571 >> 31);
                  v558 += 8;
                  --v559;
                }

                while (v559);
              }

              v107 += v115;
              v108 += v116;
            }
          }
        }

        else if (v112)
        {
          if (v114)
          {
            for (n = 0; n != v114; ++n)
            {
              if (v113)
              {
                v224 = 0;
                v225 = v113;
                do
                {
                  v226 = v107 + v224;
                  LOWORD(v119) = *(v107 + v224);
                  v227 = *&v119 * 0.0000152590219;
                  v228 = (v227 * 65535.0) + 0.5 + 0.0000001;
                  v229 = vcvtmd_s64_f64(v228);
                  v230 = (v108 + v224);
                  if (v229 >= 0xFFFF)
                  {
                    v229 = 0xFFFF;
                  }

                  *v230 = v229 & ~(v229 >> 31);
                  LOWORD(v228) = *(v226 + 2);
                  v231 = *&v228 * 0.0000152590219;
                  v232 = (v231 * 65535.0) + 0.5 + 0.0000001;
                  v233 = vcvtmd_s64_f64(v232);
                  if (v233 >= 0xFFFF)
                  {
                    v233 = 0xFFFF;
                  }

                  v230[1] = v233 & ~(v233 >> 31);
                  LOWORD(v232) = *(v226 + 4);
                  v234 = *&v232 * 0.0000152590219;
                  v119 = (v234 * 65535.0) + 0.5 + 0.0000001;
                  v235 = vcvtmd_s64_f64(v119);
                  if (v235 >= 0xFFFF)
                  {
                    v235 = 0xFFFF;
                  }

                  v230[2] = v235 & ~(v235 >> 31);
                  v230[3] = -1;
                  v224 += 8;
                  --v225;
                }

                while (v225);
              }

              v107 += v115;
              v108 += v116;
            }
          }
        }

        else if (v114)
        {
          for (ii = 0; ii != v114; ++ii)
          {
            if (v113)
            {
              v377 = 0;
              v378 = v113;
              do
              {
                v379 = v107 + v377;
                LOWORD(v119) = *(v107 + v377);
                v380 = *&v119 * 0.0000152590219;
                v381 = (v380 * 65535.0) + 0.5 + 0.0000001;
                v382 = (v108 + v377);
                v383 = vcvtmd_s64_f64(v381);
                if (v383 >= 0xFFFF)
                {
                  v383 = 0xFFFF;
                }

                *v382 = v383 & ~(v383 >> 31);
                LOWORD(v381) = *(v379 + 2);
                v384 = *&v381 * 0.0000152590219;
                v385 = (v384 * 65535.0) + 0.5 + 0.0000001;
                v386 = vcvtmd_s64_f64(v385);
                if (v386 >= 0xFFFF)
                {
                  v386 = 0xFFFF;
                }

                v382[1] = v386 & ~(v386 >> 31);
                LOWORD(v385) = *(v379 + 4);
                v387 = *&v385 * 0.0000152590219;
                v119 = (v387 * 65535.0) + 0.5 + 0.0000001;
                v388 = vcvtmd_s64_f64(v119);
                if (v388 >= 0xFFFF)
                {
                  v388 = 0xFFFF;
                }

                v382[2] = v388 & ~(v388 >> 31);
                v377 += 8;
                --v378;
              }

              while (v378);
            }

            v107 += v115;
            v108 += v116;
          }
        }
      }

      else if (v5 == 11)
      {
        v63 = (*(**(this + 8) + 16))(*(this + 8));
        v64 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v65 = (*(*this + 48))(this);
        v66 = (*(*a2 + 48))(a2);
        v67 = PCPixelFormat::hasAlpha(0xEu);
        v68 = PCPixelFormat::hasAlpha(0xBu);
        v69 = (*(*this + 16))(this);
        v70 = (*(*this + 24))(this);
        v71 = (*(**(this + 8) + 64))(*(this + 8));
        v72 = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v74 = v72;
        if (v67)
        {
          if (v68)
          {
            if (v65 == v66)
            {
              if (v70)
              {
                for (jj = 0; jj != v70; ++jj)
                {
                  if (v69)
                  {
                    v494 = 0;
                    do
                    {
                      v72 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v63 + 4 * v494), v72, v73);
                      *(v64 + 2 * v494++) = v72;
                    }

                    while (v69 != v494);
                  }

                  v63 += v71;
                  v64 += v74;
                }
              }
            }

            else if (v65)
            {
              if (v70)
              {
                for (kk = 0; kk != v70; ++kk)
                {
                  if (v69)
                  {
                    v76 = 0;
                    do
                    {
                      v72 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v63 + 4 * v76), v72, v73);
                      *(v64 + 2 * v76++) = v72;
                    }

                    while (v69 != v76);
                  }

                  v63 += v71;
                  v64 += v74;
                }
              }
            }

            else if (v70)
            {
              for (mm = 0; mm != v70; ++mm)
              {
                if (v69)
                {
                  v711 = 0;
                  do
                  {
                    v72 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v63 + 4 * v711), v72, v73);
                    *(v64 + 2 * v711++) = v72;
                  }

                  while (v69 != v711);
                }

                v63 += v71;
                v64 += v74;
              }
            }
          }

          else if (v65)
          {
            if (v70)
            {
              for (nn = 0; nn != v70; ++nn)
              {
                if (v69)
                {
                  v334 = 0;
                  do
                  {
                    v72 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v63 + 4 * v334), v72, v73);
                    *(v64 + 2 * v334++) = v72;
                  }

                  while (v69 != v334);
                }

                v63 += v71;
                v64 += v74;
              }
            }
          }

          else if (v70)
          {
            for (i1 = 0; i1 != v70; ++i1)
            {
              if (v69)
              {
                v541 = 0;
                do
                {
                  v72 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v63 + 4 * v541), v72, v73);
                  *(v64 + 2 * v541++) = v72;
                }

                while (v69 != v541);
              }

              v63 += v71;
              v64 += v74;
            }
          }
        }

        else if (v68)
        {
          if (v70)
          {
            for (i2 = 0; i2 != v70; ++i2)
            {
              if (v69)
              {
                v209 = 0;
                do
                {
                  v72 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v63 + 4 * v209), v72, v73);
                  *(v64 + 2 * v209++) = v72;
                }

                while (v69 != v209);
              }

              v63 += v71;
              v64 += v74;
            }
          }
        }

        else if (v70)
        {
          for (i3 = 0; i3 != v70; ++i3)
          {
            if (v69)
            {
              v362 = 0;
              do
              {
                v72 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*(v63 + 4 * v362), v72, v73);
                *(v64 + 2 * v362++) = v72;
              }

              while (v69 != v362);
            }

            v63 += v71;
            v64 += v74;
          }
        }
      }
    }

    else
    {
      switch(v5)
      {
        case 13:
          v166 = (*(**(this + 8) + 16))(*(this + 8));
          v167 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v168 = (*(*this + 48))(this);
          v169 = (*(*a2 + 48))(a2);
          v170 = PCPixelFormat::hasAlpha(0x10u);
          v171 = PCPixelFormat::hasAlpha(0xDu);
          v172 = (*(*this + 16))(this);
          v173 = (*(*this + 24))(this);
          v915 = (*(**(this + 8) + 64))(*(this + 8));
          v174 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          v176 = v174;
          if (v170)
          {
            if (v171)
            {
              if (v168 == v169)
              {
                if (v173)
                {
                  for (i4 = 0; i4 != v173; ++i4)
                  {
                    v589 = v172;
                    v590 = v167;
                    for (i5 = v166; v589; --v589)
                    {
                      v592 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*i5, v174, v175);
                      *v590 = v592;
                      v594 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i5[1], v592, v593);
                      v590[1] = v594;
                      v596 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i5[2], v594, v595);
                      v590[2] = v596;
                      v174 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i5[3], v596, v597);
                      v590[3] = v174;
                      v590 += 4;
                      i5 += 4;
                    }

                    v166 += v915;
                    v167 += v176;
                  }
                }
              }

              else if (v168)
              {
                if (v173)
                {
                  for (i6 = 0; i6 != v173; ++i6)
                  {
                    v178 = v172;
                    v179 = v167;
                    for (i7 = v166; v178; --v178)
                    {
                      v181 = i7[3];
                      if (v181 == 1.0)
                      {
                        v182 = *i7;
                        v183 = i7[1];
                        v184 = i7[2];
                      }

                      else
                      {
                        v182 = 0.0;
                        v183 = 0.0;
                        v184 = 0.0;
                        if (v181 != 0.0)
                        {
                          v182 = *i7 * (1.0 / v181);
                          v183 = i7[1] * (1.0 / v181);
                          v184 = i7[2] * (1.0 / v181);
                        }
                      }

                      v185 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v182, v174, v175);
                      *v179 = v185;
                      v187 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v183, v185, v186);
                      v179[1] = v187;
                      v189 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v184, v187, v188);
                      v179[2] = v189;
                      v174 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v181, v189, v190);
                      v179[3] = v174;
                      v179 += 4;
                      i7 += 4;
                    }

                    v166 += v915;
                    v167 += v176;
                  }
                }
              }

              else if (v173)
              {
                for (i8 = 0; i8 != v173; ++i8)
                {
                  v788 = v172;
                  v789 = v167;
                  for (i9 = v166; v788; --v788)
                  {
                    v791 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*i9, v174, v175);
                    *v789 = v791;
                    v793 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i9[1], v791, v792);
                    v789[1] = v793;
                    v795 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i9[2], v793, v794);
                    v789[2] = v795;
                    v789[3] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i9[3], v795, v796);
                    v174 = PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)13>>::premultiply(v789, v797);
                    v789 += 4;
                    i9 += 4;
                  }

                  v166 += v915;
                  v167 += v176;
                }
              }
            }

            else if (v168)
            {
              if (v173)
              {
                for (i10 = 0; i10 != v173; ++i10)
                {
                  v403 = v172;
                  v404 = v167;
                  for (i11 = v166; v403; --v403)
                  {
                    v406 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*i11, v174, v175);
                    *v404 = v406;
                    v408 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i11[1], v406, v407);
                    v404[1] = v408;
                    v174 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i11[2], v408, v409);
                    v404[2] = v174;
                    v404 += 4;
                    i11 += 4;
                  }

                  v166 += v915;
                  v167 += v176;
                }
              }
            }

            else if (v173)
            {
              for (i12 = 0; i12 != v173; ++i12)
              {
                v614 = v172;
                v615 = v167;
                for (i13 = v166; v614; --v614)
                {
                  v617 = i13[3];
                  v618 = i13[1] * v617;
                  v619 = i13[2] * v617;
                  v620 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*i13 * v617, v174, v175);
                  *v615 = v620;
                  v622 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v618, v620, v621);
                  v615[1] = v622;
                  v174 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(v619, v622, v623);
                  v615[2] = v174;
                  v615 += 4;
                  i13 += 4;
                }

                v166 += v915;
                v167 += v176;
              }
            }
          }

          else if (v171)
          {
            if (v173)
            {
              for (i14 = 0; i14 != v173; ++i14)
              {
                v250 = v172;
                v251 = v167;
                for (i15 = v166; v250; --v250)
                {
                  v253 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*i15, v174, v175);
                  *v251 = v253;
                  v255 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i15[1], v253, v254);
                  v251[1] = v255;
                  v251[2] = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i15[2], v255, v256);
                  v174 = 15360;
                  v251[3] = 15360;
                  v251 += 4;
                  i15 += 4;
                }

                v166 += v915;
                v167 += v176;
              }
            }
          }

          else if (v173)
          {
            for (i16 = 0; i16 != v173; ++i16)
            {
              v424 = v172;
              v425 = v167;
              for (i17 = v166; v424; --v424)
              {
                v427 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(*i17, v174, v175);
                *v425 = v427;
                v429 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i17[1], v427, v428);
                v425[1] = v429;
                v174 = ProCore::Private::ChannelTypeTraits<half>::denormalizef(i17[2], v429, v430);
                v425[2] = v174;
                v425 += 4;
                i17 += 4;
              }

              v166 += v915;
              v167 += v176;
            }
          }

          break;
        case 16:
          v191 = (*(**(this + 8) + 16))(*(this + 8));
          v192 = (*(**(a2 + 8) + 16))(*(a2 + 8));
          v193 = (*(*this + 48))(this);
          v194 = (*(*a2 + 48))(a2);
          v195 = PCPixelFormat::hasAlpha(0x10u);
          v196 = PCPixelFormat::hasAlpha(0x10u);
          v197 = (*(*this + 16))(this);
          v198 = (*(*this + 24))(this);
          v199 = (*(**(this + 8) + 64))(*(this + 8));
          v200 = (*(**(a2 + 8) + 64))(*(a2 + 8));
          if (v195)
          {
            if (v196)
            {
              if (v193 == v194)
              {
                if (v198)
                {
                  for (i18 = 0; i18 != v198; ++i18)
                  {
                    if (v197)
                    {
                      v637 = 0;
                      v638 = v197;
                      do
                      {
                        v639 = (v192 + v637);
                        *v639 = *(v191 + v637);
                        v639[1] = *(v191 + v637 + 4);
                        v639[2] = *(v191 + v637 + 8);
                        v639[3] = *(v191 + v637 + 12);
                        v637 += 16;
                        --v638;
                      }

                      while (v638);
                    }

                    v191 += v199;
                    v192 += v200;
                  }
                }
              }

              else if (v193)
              {
                if (v198)
                {
                  for (i19 = 0; i19 != v198; ++i19)
                  {
                    if (v197)
                    {
                      v202 = 0;
                      v203 = v197;
                      do
                      {
                        v204 = *(v191 + v202);
                        v206 = *(v191 + v202 + 8);
                        v205 = *(v191 + v202 + 12);
                        if (v205 != 1.0)
                        {
                          if (v205 == 0.0)
                          {
                            v204 = 0;
                            v206 = 0.0;
                          }

                          else
                          {
                            v204 = vmul_n_f32(v204, 1.0 / v205);
                            v206 = v206 * (1.0 / v205);
                          }
                        }

                        v207 = (v192 + v202);
                        *v207 = v204;
                        v207[1].f32[0] = v206;
                        v207[1].f32[1] = v205;
                        v202 += 16;
                        --v203;
                      }

                      while (v203);
                    }

                    v191 += v199;
                    v192 += v200;
                  }
                }
              }

              else if (v198)
              {
                for (i20 = 0; i20 != v198; ++i20)
                {
                  if (v197)
                  {
                    v811 = 0;
                    v812 = v197;
                    do
                    {
                      v813 = (v192 + v811);
                      v814 = *(v191 + v811);
                      *v813 = v814;
                      v815 = *(v191 + v811 + 4);
                      v813[1] = v815;
                      v816 = *(v191 + v811 + 8);
                      v813[2] = v816;
                      v817 = *(v191 + v811 + 12);
                      *v813 = v814 * v817;
                      v813[1] = v815 * v817;
                      v813[2] = v816 * v817;
                      v813[3] = v817;
                      v811 += 16;
                      --v812;
                    }

                    while (v812);
                  }

                  v191 += v199;
                  v192 += v200;
                }
              }
            }

            else if (v193)
            {
              if (v198)
              {
                for (i21 = 0; i21 != v198; ++i21)
                {
                  if (v197)
                  {
                    v444 = 0;
                    v445 = v197;
                    do
                    {
                      v446 = (v192 + v444);
                      *v446 = *(v191 + v444);
                      v446[1] = *(v191 + v444 + 4);
                      v446[2] = *(v191 + v444 + 8);
                      v444 += 16;
                      --v445;
                    }

                    while (v445);
                  }

                  v191 += v199;
                  v192 += v200;
                }
              }
            }

            else if (v198)
            {
              for (i22 = 0; i22 != v198; ++i22)
              {
                if (v197)
                {
                  v672 = 0;
                  v673 = v197;
                  do
                  {
                    v674 = (v192 + v672);
                    v675 = *(v191 + v672 + 12);
                    v676 = *(v191 + v672 + 8) * v675;
                    *v674 = vmul_n_f32(*(v191 + v672), v675);
                    v674[1].f32[0] = v676;
                    v672 += 16;
                    --v673;
                  }

                  while (v673);
                }

                v191 += v199;
                v192 += v200;
              }
            }
          }

          else if (v196)
          {
            if (v198)
            {
              for (i23 = 0; i23 != v198; ++i23)
              {
                if (v197)
                {
                  v317 = 0;
                  v318 = v197;
                  do
                  {
                    v319 = (v192 + v317);
                    *v319 = *(v191 + v317);
                    v319[1] = *(v191 + v317 + 4);
                    v319[2] = *(v191 + v317 + 8);
                    v319[3] = 1065353216;
                    v317 += 16;
                    --v318;
                  }

                  while (v318);
                }

                v191 += v199;
                v192 += v200;
              }
            }
          }

          else if (v198)
          {
            for (i24 = 0; i24 != v198; ++i24)
            {
              if (v197)
              {
                v477 = 0;
                v478 = v197;
                do
                {
                  v479 = (v192 + v477);
                  *v479 = *(v191 + v477);
                  v479[1] = *(v191 + v477 + 4);
                  v479[2] = *(v191 + v477 + 8);
                  v477 += 16;
                  --v478;
                }

                while (v478);
              }

              v191 += v199;
              v192 += v200;
            }
          }

          break;
        case 17:
          if ((*(*a2 + 48))(a2))
          {
          }

          else
          {
            v269 = (*(**(this + 8) + 16))(*(this + 8));
            v270 = (*(**(a2 + 8) + 16))(*(a2 + 8));
            v271 = (*(*this + 48))(this);
            v272 = (*(*a2 + 48))(a2);
            v273 = PCPixelFormat::hasAlpha(0x10u);
            v274 = PCPixelFormat::hasAlpha(0x11u);
            v275 = (*(*this + 16))(this);
            v276 = (*(*this + 24))(this);
            v277 = (*(**(this + 8) + 64))(*(this + 8));
            v278 = (*(**(a2 + 8) + 64))(*(a2 + 8));
            if (v273)
            {
              if (v274)
              {
                if (v271 == v272)
                {
                  if (v276)
                  {
                    for (i25 = 0; i25 != v276; ++i25)
                    {
                      if (v275)
                      {
                        v819 = 0;
                        v820 = v275;
                        do
                        {
                          v821 = (v270 + v819);
                          v821[1] = *(v269 + v819);
                          v821[2] = *(v269 + v819 + 4);
                          v821[3] = *(v269 + v819 + 8);
                          *v821 = *(v269 + v819 + 12);
                          v819 += 16;
                          --v820;
                        }

                        while (v820);
                      }

                      v269 += v277;
                      v270 += v278;
                    }
                  }
                }

                else if (v271)
                {
                  if (v276)
                  {
                    for (i26 = 0; i26 != v276; ++i26)
                    {
                      if (v275)
                      {
                        v280 = 0;
                        v281 = v275;
                        do
                        {
                          v282 = *(v269 + v280);
                          v284 = *(v269 + v280 + 8);
                          v283 = *(v269 + v280 + 12);
                          if (v283 != 1.0)
                          {
                            if (v283 == 0.0)
                            {
                              v282 = 0;
                              v284 = 0.0;
                            }

                            else
                            {
                              v282 = vmul_n_f32(v282, 1.0 / v283);
                              v284 = v284 * (1.0 / v283);
                            }
                          }

                          v285 = v270 + v280;
                          *(v285 + 4) = v282;
                          *(v285 + 12) = v284;
                          *v285 = v283;
                          v280 += 16;
                          --v281;
                        }

                        while (v281);
                      }

                      v269 += v277;
                      v270 += v278;
                    }
                  }
                }

                else if (v276)
                {
                  for (i27 = 0; i27 != v276; ++i27)
                  {
                    if (v275)
                    {
                      v879 = 0;
                      v880 = v275;
                      do
                      {
                        v881 = (v270 + v879);
                        v882 = *(v269 + v879);
                        v881[1] = v882;
                        v883 = *(v269 + v879 + 4);
                        v881[2] = v883;
                        v884 = *(v269 + v879 + 8);
                        v881[3] = v884;
                        v885 = *(v269 + v879 + 12);
                        *v881 = v885;
                        v881[1] = v882 * v885;
                        v881[2] = v883 * v885;
                        v881[3] = v884 * v885;
                        v879 += 16;
                        --v880;
                      }

                      while (v880);
                    }

                    v269 += v277;
                    v270 += v278;
                  }
                }
              }

              else if (v271)
              {
                if (v276)
                {
                  for (i28 = 0; i28 != v276; ++i28)
                  {
                    if (v275)
                    {
                      v641 = 0;
                      v642 = v275;
                      do
                      {
                        v643 = (v270 + v641);
                        v643[1] = *(v269 + v641);
                        v643[2] = *(v269 + v641 + 4);
                        v643[3] = *(v269 + v641 + 8);
                        v641 += 16;
                        --v642;
                      }

                      while (v642);
                    }

                    v269 += v277;
                    v270 += v278;
                  }
                }
              }

              else if (v276)
              {
                for (i29 = 0; i29 != v276; ++i29)
                {
                  if (v275)
                  {
                    v839 = 0;
                    v840 = v275;
                    do
                    {
                      v841 = *(v269 + v839 + 12);
                      v842 = *(v269 + v839 + 8) * v841;
                      v843 = v270 + v839;
                      *(v843 + 4) = vmul_n_f32(*(v269 + v839), v841);
                      *(v843 + 12) = v842;
                      v839 += 16;
                      --v840;
                    }

                    while (v840);
                  }

                  v269 += v277;
                  v270 += v278;
                }
              }
            }

            else if (v274)
            {
              if (v276)
              {
                for (i30 = 0; i30 != v276; ++i30)
                {
                  if (v275)
                  {
                    v460 = 0;
                    v461 = v275;
                    do
                    {
                      v462 = (v270 + v460);
                      v462[1] = *(v269 + v460);
                      v462[2] = *(v269 + v460 + 4);
                      v462[3] = *(v269 + v460 + 8);
                      *v462 = 1065353216;
                      v460 += 16;
                      --v461;
                    }

                    while (v461);
                  }

                  v269 += v277;
                  v270 += v278;
                }
              }
            }

            else if (v276)
            {
              for (i31 = 0; i31 != v276; ++i31)
              {
                if (v275)
                {
                  v678 = 0;
                  v679 = v275;
                  do
                  {
                    v680 = (v270 + v678);
                    v680[1] = *(v269 + v678);
                    v680[2] = *(v269 + v678 + 4);
                    v680[3] = *(v269 + v678 + 8);
                    v678 += 16;
                    --v679;
                  }

                  while (v679);
                }

                v269 += v277;
                v270 += v278;
              }
            }
          }

          break;
      }
    }
  }

  else if (v5 <= 4)
  {
    if (v5 == 3)
    {
      v77 = (*(**(this + 8) + 16))(*(this + 8));
      v78 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      v79 = (*(*this + 48))(this);
      v80 = (*(*a2 + 48))(a2);
      v81 = PCPixelFormat::hasAlpha(3u);
      v82 = PCPixelFormat::hasAlpha(3u);
      v83 = (*(*this + 16))(this);
      v84 = (*(*this + 24))(this);
      v85 = (*(**(this + 8) + 64))(*(this + 8));
      v86 = (*(**(a2 + 8) + 64))(*(a2 + 8));
      v91 = v86;
      if (v81)
      {
        if (v82)
        {
          if (v79 == v80)
          {
            if (v84)
            {
              for (i32 = 0; i32 != v84; ++i32)
              {
                if (v83)
                {
                  v496 = 0;
                  v497 = v83;
                  do
                  {
                    v498 = (v77 + v496);
                    LOBYTE(v90) = *(v77 + v496 + 1);
                    v499 = *&v90 * 0.00392156863;
                    v500 = (v499 * 255.0) + 0.5 + 0.0000001;
                    v501 = vcvtmd_s64_f64(v500);
                    v502 = (v78 + v496);
                    if (v501 >= 255)
                    {
                      v501 = 255;
                    }

                    v502[1] = v501 & ~(v501 >> 31);
                    LOBYTE(v500) = v498[2];
                    v503 = *&v500 * 0.00392156863;
                    v504 = (v503 * 255.0) + 0.5 + 0.0000001;
                    v505 = vcvtmd_s64_f64(v504);
                    if (v505 >= 255)
                    {
                      v505 = 255;
                    }

                    v502[2] = v505 & ~(v505 >> 31);
                    LOBYTE(v504) = v498[3];
                    v506 = *&v504 * 0.00392156863;
                    v507 = (v506 * 255.0) + 0.5 + 0.0000001;
                    v508 = vcvtmd_s64_f64(v507);
                    if (v508 >= 255)
                    {
                      v508 = 255;
                    }

                    v502[3] = v508 & ~(v508 >> 31);
                    LOBYTE(v507) = *v498;
                    v509 = *&v507 * 0.00392156863;
                    v90 = (v509 * 255.0) + 0.5 + 0.0000001;
                    v510 = vcvtmd_s64_f64(v90);
                    if (v510 >= 255)
                    {
                      v510 = 255;
                    }

                    *v502 = v510 & ~(v510 >> 31);
                    v496 += 4;
                    --v497;
                  }

                  while (v497);
                }

                v77 += v85;
                v78 += v86;
              }
            }
          }

          else if (v79)
          {
            if (v84)
            {
              v92 = 0;
              v912 = v84;
              v907 = v85;
              do
              {
                if (v83)
                {
                  v93 = 0;
                  v94 = v83;
                  do
                  {
                    v95 = (v78 + v93);
                    LODWORD(v917) = *(v77 + v93);
                    PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>::unpremultiply(&v917, v87, v88, v89);
                    LOBYTE(v96) = BYTE1(v917);
                    *&v96 = v96 * 0.00392156863;
                    LODWORD(v88) = 1132396544;
                    v97 = (*&v96 * 255.0) + 0.5 + 0.0000001;
                    v98 = vcvtmd_s64_f64(v97);
                    if (v98 >= 255)
                    {
                      v98 = 255;
                    }

                    v95[1] = v98 & ~(v98 >> 31);
                    LOBYTE(v97) = BYTE2(v917);
                    v99 = *&v97 * 0.00392156863;
                    v100 = (v99 * 255.0) + 0.5 + 0.0000001;
                    v101 = vcvtmd_s64_f64(v100);
                    if (v101 >= 255)
                    {
                      v101 = 255;
                    }

                    v95[2] = v101 & ~(v101 >> 31);
                    LOBYTE(v100) = BYTE3(v917);
                    v102 = *&v100 * 0.00392156863;
                    v103 = (v102 * 255.0) + 0.5 + 0.0000001;
                    v104 = vcvtmd_s64_f64(v103);
                    if (v104 >= 255)
                    {
                      v104 = 255;
                    }

                    v95[3] = v104 & ~(v104 >> 31);
                    LOBYTE(v103) = LOBYTE(v917);
                    v105 = *&v103 * 0.00392156863;
                    v87 = (v105 * 255.0) + 0.5 + 0.0000001;
                    v106 = vcvtmd_s64_f64(v87);
                    if (v106 >= 255)
                    {
                      v106 = 255;
                    }

                    *v95 = v106 & ~(v106 >> 31);
                    v93 += 4;
                    --v94;
                  }

                  while (v94);
                }

                v77 += v907;
                v78 += v91;
                ++v92;
              }

              while (v92 != v912);
            }
          }

          else if (v84)
          {
            for (i33 = 0; i33 != v84; ++i33)
            {
              if (v83)
              {
                v713 = 0;
                v714 = v83;
                do
                {
                  v715 = (v77 + v713);
                  LOBYTE(v90) = *(v77 + v713 + 1);
                  v716 = *&v90 * 0.00392156863;
                  v717 = (v716 * 255.0) + 0.5 + 0.0000001;
                  v718 = vcvtmd_s64_f64(v717);
                  v719 = (v78 + v713);
                  if (v718 >= 255)
                  {
                    v718 = 255;
                  }

                  v720 = v718 & ~(v718 >> 31);
                  v719[1] = v720;
                  LOBYTE(v717) = v715[2];
                  v721 = *&v717 * 0.00392156863;
                  v722 = (v721 * 255.0) + 0.5 + 0.0000001;
                  v723 = vcvtmd_s64_f64(v722);
                  if (v723 >= 255)
                  {
                    v723 = 255;
                  }

                  v724 = v723 & ~(v723 >> 31);
                  v719[2] = v724;
                  LOBYTE(v722) = v715[3];
                  v725 = *&v722 * 0.00392156863;
                  v726 = (v725 * 255.0) + 0.5 + 0.0000001;
                  v727 = vcvtmd_s64_f64(v726);
                  if (v727 >= 255)
                  {
                    v727 = 255;
                  }

                  v728 = v727 & ~(v727 >> 31);
                  v719[3] = v728;
                  LOBYTE(v726) = *v715;
                  v729 = *&v726 * 0.00392156863;
                  v90 = (v729 * 255.0) + 0.5 + 0.0000001;
                  v730 = vcvtmd_s64_f64(v90);
                  if (v730 >= 255)
                  {
                    v730 = 255;
                  }

                  v731 = v730 & ~(v730 >> 31);
                  *v719 = v731;
                  v719[1] = (32897 * v731 * v720) >> 23;
                  v719[2] = (32897 * v731 * v724) >> 23;
                  v719[3] = (32897 * v731 * v728) >> 23;
                  v713 += 4;
                  --v714;
                }

                while (v714);
              }

              v77 += v85;
              v78 += v91;
            }
          }
        }

        else if (v79)
        {
          if (v84)
          {
            for (i34 = 0; i34 != v84; ++i34)
            {
              if (v83)
              {
                v336 = 0;
                v337 = v83;
                do
                {
                  v338 = v77 + v336;
                  LOBYTE(v90) = *(v77 + v336 + 1);
                  v339 = *&v90 * 0.00392156863;
                  v340 = (v339 * 255.0) + 0.5 + 0.0000001;
                  v341 = vcvtmd_s64_f64(v340);
                  if (v341 >= 255)
                  {
                    v341 = 255;
                  }

                  v342 = v78 + v336;
                  *(v78 + v336 + 1) = v341 & ~(v341 >> 31);
                  LOBYTE(v340) = *(v338 + 2);
                  v343 = *&v340 * 0.00392156863;
                  v344 = (v343 * 255.0) + 0.5 + 0.0000001;
                  v345 = vcvtmd_s64_f64(v344);
                  if (v345 >= 255)
                  {
                    v345 = 255;
                  }

                  *(v342 + 2) = v345 & ~(v345 >> 31);
                  LOBYTE(v344) = *(v338 + 3);
                  v346 = *&v344 * 0.00392156863;
                  v90 = (v346 * 255.0) + 0.5 + 0.0000001;
                  v347 = vcvtmd_s64_f64(v90);
                  if (v347 >= 255)
                  {
                    v347 = 255;
                  }

                  *(v342 + 3) = v347 & ~(v347 >> 31);
                  v336 += 4;
                  --v337;
                }

                while (v337);
              }

              v77 += v85;
              v78 += v86;
            }
          }
        }

        else if (v84)
        {
          for (i35 = 0; i35 != v84; ++i35)
          {
            if (v83)
            {
              v543 = 0;
              v544 = v83;
              do
              {
                v545 = *(v77 + v543);
                v546 = ((32897 * *(v77 + v543 + 1) * v545) >> 23) * 0.00392156863;
                v547 = vcvtmd_s64_f64((v546 * 255.0) + 0.5 + 0.0000001);
                v548 = ((32897 * *(v77 + v543 + 3) * v545) >> 23);
                v549 = (v78 + v543);
                v550 = ((32897 * *(v77 + v543 + 2) * v545) >> 23);
                if (v547 >= 255)
                {
                  v551 = 255;
                }

                else
                {
                  v551 = v547;
                }

                v552 = v550 * 0.00392156863;
                v553 = v551 & ~(v551 >> 31);
                v554 = vcvtmd_s64_f64((v552 * 255.0) + 0.5 + 0.0000001);
                if (v554 >= 255)
                {
                  v554 = 255;
                }

                v555 = v548 * 0.00392156863;
                v549[1] = v553;
                v556 = vcvtmd_s64_f64((v555 * 255.0) + 0.5 + 0.0000001);
                v549[2] = v554 & ~(v554 >> 31);
                if (v556 >= 255)
                {
                  v556 = 255;
                }

                v549[3] = v556 & ~(v556 >> 31);
                v543 += 4;
                --v544;
              }

              while (v544);
            }

            v77 += v85;
            v78 += v86;
          }
        }
      }

      else if (v82)
      {
        if (v84)
        {
          for (i36 = 0; i36 != v84; ++i36)
          {
            if (v83)
            {
              v211 = 0;
              v212 = v83;
              do
              {
                v213 = v77 + v211;
                LOBYTE(v90) = *(v77 + v211 + 1);
                v214 = *&v90 * 0.00392156863;
                v215 = (v214 * 255.0) + 0.5 + 0.0000001;
                v216 = vcvtmd_s64_f64(v215);
                v217 = (v78 + v211);
                if (v216 >= 255)
                {
                  v216 = 255;
                }

                v217[1] = v216 & ~(v216 >> 31);
                LOBYTE(v215) = *(v213 + 2);
                v218 = *&v215 * 0.00392156863;
                v219 = (v218 * 255.0) + 0.5 + 0.0000001;
                v220 = vcvtmd_s64_f64(v219);
                if (v220 >= 255)
                {
                  v220 = 255;
                }

                v217[2] = v220 & ~(v220 >> 31);
                LOBYTE(v219) = *(v213 + 3);
                v221 = *&v219 * 0.00392156863;
                v90 = (v221 * 255.0) + 0.5 + 0.0000001;
                v222 = vcvtmd_s64_f64(v90);
                if (v222 >= 255)
                {
                  v222 = 255;
                }

                v217[3] = v222 & ~(v222 >> 31);
                *v217 = -1;
                v211 += 4;
                --v212;
              }

              while (v212);
            }

            v77 += v85;
            v78 += v86;
          }
        }
      }

      else if (v84)
      {
        for (i37 = 0; i37 != v84; ++i37)
        {
          if (v83)
          {
            v364 = 0;
            v365 = v83;
            do
            {
              v366 = v77 + v364;
              LOBYTE(v90) = *(v77 + v364 + 1);
              v367 = *&v90 * 0.00392156863;
              v368 = (v367 * 255.0) + 0.5 + 0.0000001;
              v369 = vcvtmd_s64_f64(v368);
              if (v369 >= 255)
              {
                v369 = 255;
              }

              v370 = v78 + v364;
              *(v78 + v364 + 1) = v369 & ~(v369 >> 31);
              LOBYTE(v368) = *(v366 + 2);
              v371 = *&v368 * 0.00392156863;
              v372 = (v371 * 255.0) + 0.5 + 0.0000001;
              v373 = vcvtmd_s64_f64(v372);
              if (v373 >= 255)
              {
                v373 = 255;
              }

              *(v370 + 2) = v373 & ~(v373 >> 31);
              LOBYTE(v372) = *(v366 + 3);
              v374 = *&v372 * 0.00392156863;
              v90 = (v374 * 255.0) + 0.5 + 0.0000001;
              v375 = vcvtmd_s64_f64(v90);
              if (v375 >= 255)
              {
                v375 = 255;
              }

              *(v370 + 3) = v375 & ~(v375 >> 31);
              v364 += 4;
              --v365;
            }

            while (v365);
          }

          v77 += v85;
          v78 += v86;
        }
      }
    }

    else
    {
      if (v5 != 4)
      {
        return;
      }

      if ((*(*a2 + 48))(a2))
      {
LABEL_138:

        return;
      }

      v33 = (*(**(this + 8) + 16))(*(this + 8));
      v34 = (*(**(a2 + 8) + 16))(*(a2 + 8));
      v35 = (*(*this + 48))(this);
      v36 = (*(*a2 + 48))(a2);
      v37 = PCPixelFormat::hasAlpha(3u);
      v38 = PCPixelFormat::hasAlpha(4u);
      v39 = (*(*this + 16))(this);
      v40 = (*(*this + 24))(this);
      v41 = (*(**(this + 8) + 64))(*(this + 8));
      v42 = (*(**(a2 + 8) + 64))(*(a2 + 8));
      v47 = v42;
      if (v37)
      {
        if (v38)
        {
          if (v35 == v36)
          {
            if (v40)
            {
              for (i38 = 0; i38 != v40; ++i38)
              {
                if (v39)
                {
                  v695 = 0;
                  v696 = v39;
                  do
                  {
                    v697 = (v33 + v695);
                    LOBYTE(v46) = *(v33 + v695 + 1);
                    v698 = *&v46 * 0.00392156863;
                    v699 = (v698 * 255.0) + 0.5 + 0.0000001;
                    v700 = vcvtmd_s64_f64(v699);
                    v701 = (v34 + v695);
                    if (v700 >= 255)
                    {
                      v700 = 255;
                    }

                    v701[3] = v700 & ~(v700 >> 31);
                    LOBYTE(v699) = v697[2];
                    v702 = *&v699 * 0.00392156863;
                    v703 = (v702 * 255.0) + 0.5 + 0.0000001;
                    v704 = vcvtmd_s64_f64(v703);
                    if (v704 >= 255)
                    {
                      v704 = 255;
                    }

                    v701[2] = v704 & ~(v704 >> 31);
                    LOBYTE(v703) = v697[3];
                    v705 = *&v703 * 0.00392156863;
                    v706 = (v705 * 255.0) + 0.5 + 0.0000001;
                    v707 = vcvtmd_s64_f64(v706);
                    if (v707 >= 255)
                    {
                      v707 = 255;
                    }

                    v701[1] = v707 & ~(v707 >> 31);
                    LOBYTE(v706) = *v697;
                    v708 = *&v706 * 0.00392156863;
                    v46 = (v708 * 255.0) + 0.5 + 0.0000001;
                    v709 = vcvtmd_s64_f64(v46);
                    if (v709 >= 255)
                    {
                      v709 = 255;
                    }

                    *v701 = v709 & ~(v709 >> 31);
                    v695 += 4;
                    --v696;
                  }

                  while (v696);
                }

                v33 += v41;
                v34 += v42;
              }
            }
          }

          else if (v35)
          {
            if (v40)
            {
              v48 = 0;
              v911 = v40;
              v906 = v41;
              do
              {
                if (v39)
                {
                  v49 = 0;
                  v50 = v39;
                  do
                  {
                    v51 = (v34 + v49);
                    LODWORD(v917) = *(v33 + v49);
                    PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>::unpremultiply(&v917, v43, v44, v45);
                    LOBYTE(v52) = BYTE1(v917);
                    *&v52 = v52 * 0.00392156863;
                    LODWORD(v44) = 1132396544;
                    v53 = (*&v52 * 255.0) + 0.5 + 0.0000001;
                    v54 = vcvtmd_s64_f64(v53);
                    if (v54 >= 255)
                    {
                      v54 = 255;
                    }

                    v51[3] = v54 & ~(v54 >> 31);
                    LOBYTE(v53) = BYTE2(v917);
                    v55 = *&v53 * 0.00392156863;
                    v56 = (v55 * 255.0) + 0.5 + 0.0000001;
                    v57 = vcvtmd_s64_f64(v56);
                    if (v57 >= 255)
                    {
                      v57 = 255;
                    }

                    v51[2] = v57 & ~(v57 >> 31);
                    LOBYTE(v56) = BYTE3(v917);
                    v58 = *&v56 * 0.00392156863;
                    v59 = (v58 * 255.0) + 0.5 + 0.0000001;
                    v60 = vcvtmd_s64_f64(v59);
                    if (v60 >= 255)
                    {
                      v60 = 255;
                    }

                    v51[1] = v60 & ~(v60 >> 31);
                    LOBYTE(v59) = LOBYTE(v917);
                    v61 = *&v59 * 0.00392156863;
                    v43 = (v61 * 255.0) + 0.5 + 0.0000001;
                    v62 = vcvtmd_s64_f64(v43);
                    if (v62 >= 255)
                    {
                      v62 = 255;
                    }

                    *v51 = v62 & ~(v62 >> 31);
                    v49 += 4;
                    --v50;
                  }

                  while (v50);
                }

                v33 += v906;
                v34 += v47;
                ++v48;
              }

              while (v48 != v911);
            }
          }

          else if (v40)
          {
            for (i39 = 0; i39 != v40; ++i39)
            {
              if (v39)
              {
                v859 = 0;
                v860 = v39;
                do
                {
                  v861 = (v33 + v859);
                  LOBYTE(v46) = *(v33 + v859 + 1);
                  v862 = *&v46 * 0.00392156863;
                  v863 = (v862 * 255.0) + 0.5 + 0.0000001;
                  v864 = vcvtmd_s64_f64(v863);
                  v865 = (v34 + v859);
                  if (v864 >= 255)
                  {
                    v864 = 255;
                  }

                  v866 = v864 & ~(v864 >> 31);
                  v865[3] = v866;
                  LOBYTE(v863) = v861[2];
                  v867 = *&v863 * 0.00392156863;
                  v868 = (v867 * 255.0) + 0.5 + 0.0000001;
                  v869 = vcvtmd_s64_f64(v868);
                  if (v869 >= 255)
                  {
                    v869 = 255;
                  }

                  v870 = v869 & ~(v869 >> 31);
                  v865[2] = v870;
                  LOBYTE(v868) = v861[3];
                  v871 = *&v868 * 0.00392156863;
                  v872 = (v871 * 255.0) + 0.5 + 0.0000001;
                  v873 = vcvtmd_s64_f64(v872);
                  if (v873 >= 255)
                  {
                    v873 = 255;
                  }

                  v874 = v873 & ~(v873 >> 31);
                  v865[1] = v874;
                  LOBYTE(v872) = *v861;
                  v875 = *&v872 * 0.00392156863;
                  v46 = (v875 * 255.0) + 0.5 + 0.0000001;
                  v876 = vcvtmd_s64_f64(v46);
                  if (v876 >= 255)
                  {
                    v876 = 255;
                  }

                  v877 = v876 & ~(v876 >> 31);
                  *v865 = v877;
                  v865[3] = (32897 * v877 * v866) >> 23;
                  v865[2] = (32897 * v877 * v870) >> 23;
                  v865[1] = (32897 * v877 * v874) >> 23;
                  v859 += 4;
                  --v860;
                }

                while (v860);
              }

              v33 += v41;
              v34 += v47;
            }
          }
        }

        else if (v35)
        {
          if (v40)
          {
            for (i40 = 0; i40 != v40; ++i40)
            {
              if (v39)
              {
                v481 = 3;
                v482 = v39;
                do
                {
                  v483 = (v33 + v481);
                  LOBYTE(v46) = *(v33 + v481 - 2);
                  v484 = *&v46 * 0.00392156863;
                  v485 = (v484 * 255.0) + 0.5 + 0.0000001;
                  v486 = vcvtmd_s64_f64(v485);
                  if (v486 >= 255)
                  {
                    v486 = 255;
                  }

                  v487 = v34 + v481;
                  *(v34 + v481) = v486 & ~(v486 >> 31);
                  LOBYTE(v485) = *(v483 - 1);
                  v488 = *&v485 * 0.00392156863;
                  v489 = (v488 * 255.0) + 0.5 + 0.0000001;
                  v490 = vcvtmd_s64_f64(v489);
                  if (v490 >= 255)
                  {
                    v490 = 255;
                  }

                  *(v487 - 1) = v490 & ~(v490 >> 31);
                  LOBYTE(v489) = *v483;
                  v491 = *&v489 * 0.00392156863;
                  v46 = (v491 * 255.0) + 0.5 + 0.0000001;
                  v492 = vcvtmd_s64_f64(v46);
                  if (v492 >= 255)
                  {
                    v492 = 255;
                  }

                  *(v487 - 2) = v492 & ~(v492 >> 31);
                  v481 += 4;
                  --v482;
                }

                while (v482);
              }

              v33 += v41;
              v34 += v42;
            }
          }
        }

        else if (v40)
        {
          for (i41 = 0; i41 != v40; ++i41)
          {
            if (v39)
            {
              v753 = 0;
              v754 = v39;
              do
              {
                v755 = *(v33 + v753);
                v756 = ((32897 * *(v33 + v753 + 1) * v755) >> 23) * 0.00392156863;
                v757 = vcvtmd_s64_f64((v756 * 255.0) + 0.5 + 0.0000001);
                v758 = ((32897 * *(v33 + v753 + 3) * v755) >> 23);
                v759 = (v34 + v753);
                v760 = ((32897 * *(v33 + v753 + 2) * v755) >> 23);
                if (v757 >= 255)
                {
                  v761 = 255;
                }

                else
                {
                  v761 = v757;
                }

                v762 = v760 * 0.00392156863;
                v763 = v761 & ~(v761 >> 31);
                v764 = vcvtmd_s64_f64((v762 * 255.0) + 0.5 + 0.0000001);
                if (v764 >= 255)
                {
                  v764 = 255;
                }

                v765 = v758 * 0.00392156863;
                v759[3] = v763;
                v766 = vcvtmd_s64_f64((v765 * 255.0) + 0.5 + 0.0000001);
                v759[2] = v764 & ~(v764 >> 31);
                if (v766 >= 255)
                {
                  v766 = 255;
                }

                v759[1] = v766 & ~(v766 >> 31);
                v753 += 4;
                --v754;
              }

              while (v754);
            }

            v33 += v41;
            v34 += v42;
          }
        }
      }

      else if (v38)
      {
        if (v40)
        {
          for (i42 = 0; i42 != v40; ++i42)
          {
            if (v39)
            {
              v321 = 3;
              v322 = v39;
              do
              {
                v323 = (v33 + v321);
                LOBYTE(v46) = *(v33 + v321 - 2);
                v324 = *&v46 * 0.00392156863;
                v325 = (v324 * 255.0) + 0.5 + 0.0000001;
                v326 = vcvtmd_s64_f64(v325);
                v327 = (v34 + v321);
                if (v326 >= 255)
                {
                  v326 = 255;
                }

                *v327 = v326 & ~(v326 >> 31);
                LOBYTE(v325) = *(v323 - 1);
                v328 = *&v325 * 0.00392156863;
                v329 = (v328 * 255.0) + 0.5 + 0.0000001;
                v330 = vcvtmd_s64_f64(v329);
                if (v330 >= 255)
                {
                  v330 = 255;
                }

                *(v327 - 1) = v330 & ~(v330 >> 31);
                LOBYTE(v329) = *v323;
                v331 = *&v329 * 0.00392156863;
                v46 = (v331 * 255.0) + 0.5 + 0.0000001;
                v332 = vcvtmd_s64_f64(v46);
                if (v332 >= 255)
                {
                  v332 = 255;
                }

                *(v327 - 2) = v332 & ~(v332 >> 31);
                *(v327 - 3) = -1;
                v321 += 4;
                --v322;
              }

              while (v322);
            }

            v33 += v41;
            v34 += v42;
          }
        }
      }

      else if (v40)
      {
        for (i43 = 0; i43 != v40; ++i43)
        {
          if (v39)
          {
            v528 = 3;
            v529 = v39;
            do
            {
              v530 = (v33 + v528);
              LOBYTE(v46) = *(v33 + v528 - 2);
              v531 = *&v46 * 0.00392156863;
              v532 = (v531 * 255.0) + 0.5 + 0.0000001;
              v533 = vcvtmd_s64_f64(v532);
              if (v533 >= 255)
              {
                v533 = 255;
              }

              v534 = v34 + v528;
              *(v34 + v528) = v533 & ~(v533 >> 31);
              LOBYTE(v532) = *(v530 - 1);
              v535 = *&v532 * 0.00392156863;
              v536 = (v535 * 255.0) + 0.5 + 0.0000001;
              v537 = vcvtmd_s64_f64(v536);
              if (v537 >= 255)
              {
                v537 = 255;
              }

              *(v534 - 1) = v537 & ~(v537 >> 31);
              LOBYTE(v536) = *v530;
              v538 = *&v536 * 0.00392156863;
              v46 = (v538 * 255.0) + 0.5 + 0.0000001;
              v539 = vcvtmd_s64_f64(v46);
              if (v539 >= 255)
              {
                v539 = 255;
              }

              *(v534 - 2) = v539 & ~(v539 >> 31);
              v528 += 4;
              --v529;
            }

            while (v529);
          }

          v33 += v41;
          v34 += v42;
        }
      }
    }
  }

  else if (v5 == 5)
  {
    v136 = (*(**(this + 8) + 16))(*(this + 8));
    v137 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v138 = (*(*this + 48))(this);
    v139 = (*(*a2 + 48))(a2);
    v140 = PCPixelFormat::hasAlpha(5u);
    v141 = PCPixelFormat::hasAlpha(5u);
    v142 = (*(*this + 16))(this);
    v143 = (*(*this + 24))(this);
    v144 = (*(**(this + 8) + 64))(*(this + 8));
    v145 = (*(**(a2 + 8) + 64))(*(a2 + 8));
    v150 = v145;
    if (v140)
    {
      if (v141)
      {
        if (v138 == v139)
        {
          if (v143)
          {
            for (i44 = 0; i44 != v143; ++i44)
            {
              if (v142)
              {
                v573 = 0;
                v574 = v142;
                do
                {
                  v575 = (v136 + v573);
                  LOBYTE(v149) = *(v136 + v573);
                  v576 = *&v149 * 0.00392156863;
                  v577 = (v576 * 255.0) + 0.5 + 0.0000001;
                  v578 = vcvtmd_s64_f64(v577);
                  v579 = (v137 + v573);
                  if (v578 >= 255)
                  {
                    v578 = 255;
                  }

                  *v579 = v578 & ~(v578 >> 31);
                  LOBYTE(v577) = v575[1];
                  v580 = *&v577 * 0.00392156863;
                  v581 = (v580 * 255.0) + 0.5 + 0.0000001;
                  v582 = vcvtmd_s64_f64(v581);
                  if (v582 >= 255)
                  {
                    v582 = 255;
                  }

                  v579[1] = v582 & ~(v582 >> 31);
                  LOBYTE(v581) = v575[2];
                  v583 = *&v581 * 0.00392156863;
                  v584 = (v583 * 255.0) + 0.5 + 0.0000001;
                  v585 = vcvtmd_s64_f64(v584);
                  if (v585 >= 255)
                  {
                    v585 = 255;
                  }

                  v579[2] = v585 & ~(v585 >> 31);
                  LOBYTE(v584) = v575[3];
                  v586 = *&v584 * 0.00392156863;
                  v149 = (v586 * 255.0) + 0.5 + 0.0000001;
                  v587 = vcvtmd_s64_f64(v149);
                  if (v587 >= 255)
                  {
                    v587 = 255;
                  }

                  v579[3] = v587 & ~(v587 >> 31);
                  v573 += 4;
                  --v574;
                }

                while (v574);
              }

              v136 += v144;
              v137 += v145;
            }
          }
        }

        else if (v138)
        {
          if (v143)
          {
            v151 = 0;
            v914 = v143;
            v908 = v144;
            do
            {
              if (v142)
              {
                v152 = 0;
                v153 = v142;
                do
                {
                  v154 = (v137 + v152);
                  LODWORD(v917) = *(v136 + v152);
                  PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)5>>::unpremultiply(&v917, v146, v147, v148);
                  LOBYTE(v155) = LOBYTE(v917);
                  *&v155 = v155 * 0.00392156863;
                  LODWORD(v147) = 1132396544;
                  v156 = (*&v155 * 255.0) + 0.5 + 0.0000001;
                  v157 = vcvtmd_s64_f64(v156);
                  if (v157 >= 255)
                  {
                    v157 = 255;
                  }

                  *v154 = v157 & ~(v157 >> 31);
                  LOBYTE(v156) = BYTE1(v917);
                  v158 = *&v156 * 0.00392156863;
                  v159 = (v158 * 255.0) + 0.5 + 0.0000001;
                  v160 = vcvtmd_s64_f64(v159);
                  if (v160 >= 255)
                  {
                    v160 = 255;
                  }

                  v154[1] = v160 & ~(v160 >> 31);
                  LOBYTE(v159) = BYTE2(v917);
                  v161 = *&v159 * 0.00392156863;
                  v162 = (v161 * 255.0) + 0.5 + 0.0000001;
                  v163 = vcvtmd_s64_f64(v162);
                  if (v163 >= 255)
                  {
                    v163 = 255;
                  }

                  v154[2] = v163 & ~(v163 >> 31);
                  LOBYTE(v162) = BYTE3(v917);
                  v164 = *&v162 * 0.00392156863;
                  v146 = (v164 * 255.0) + 0.5 + 0.0000001;
                  v165 = vcvtmd_s64_f64(v146);
                  if (v165 >= 255)
                  {
                    v165 = 255;
                  }

                  v154[3] = v165 & ~(v165 >> 31);
                  v152 += 4;
                  --v153;
                }

                while (v153);
              }

              v136 += v908;
              v137 += v150;
              ++v151;
            }

            while (v151 != v914);
          }
        }

        else if (v143)
        {
          for (i45 = 0; i45 != v143; ++i45)
          {
            if (v142)
            {
              v768 = 0;
              v769 = v142;
              do
              {
                v770 = (v136 + v768);
                LOBYTE(v149) = *(v136 + v768);
                v771 = *&v149 * 0.00392156863;
                v772 = (v771 * 255.0) + 0.5 + 0.0000001;
                v773 = vcvtmd_s64_f64(v772);
                v774 = (v137 + v768);
                if (v773 >= 255)
                {
                  v773 = 255;
                }

                v775 = v773 & ~(v773 >> 31);
                *v774 = v775;
                LOBYTE(v772) = v770[1];
                v776 = *&v772 * 0.00392156863;
                v777 = (v776 * 255.0) + 0.5 + 0.0000001;
                v778 = vcvtmd_s64_f64(v777);
                if (v778 >= 255)
                {
                  v778 = 255;
                }

                v779 = v778 & ~(v778 >> 31);
                v774[1] = v779;
                LOBYTE(v777) = v770[2];
                v780 = *&v777 * 0.00392156863;
                v781 = (v780 * 255.0) + 0.5 + 0.0000001;
                v782 = vcvtmd_s64_f64(v781);
                if (v782 >= 255)
                {
                  v782 = 255;
                }

                v783 = v782 & ~(v782 >> 31);
                v774[2] = v783;
                LOBYTE(v781) = v770[3];
                v784 = *&v781 * 0.00392156863;
                v149 = (v784 * 255.0) + 0.5 + 0.0000001;
                v785 = vcvtmd_s64_f64(v149);
                if (v785 >= 255)
                {
                  v785 = 255;
                }

                v786 = v785 & ~(v785 >> 31);
                v774[3] = v786;
                *v774 = (32897 * v786 * v775) >> 23;
                v774[1] = (32897 * v786 * v779) >> 23;
                v774[2] = (32897 * v786 * v783) >> 23;
                v768 += 4;
                --v769;
              }

              while (v769);
            }

            v136 += v144;
            v137 += v150;
          }
        }
      }

      else if (v138)
      {
        if (v143)
        {
          for (i46 = 0; i46 != v143; ++i46)
          {
            if (v142)
            {
              v390 = 0;
              v391 = v142;
              do
              {
                v392 = v136 + v390;
                LOBYTE(v149) = *(v136 + v390);
                v393 = *&v149 * 0.00392156863;
                v394 = (v393 * 255.0) + 0.5 + 0.0000001;
                v395 = (v137 + v390);
                v396 = vcvtmd_s64_f64(v394);
                if (v396 >= 255)
                {
                  v396 = 255;
                }

                *v395 = v396 & ~(v396 >> 31);
                LOBYTE(v394) = *(v392 + 1);
                v397 = *&v394 * 0.00392156863;
                v398 = (v397 * 255.0) + 0.5 + 0.0000001;
                v399 = vcvtmd_s64_f64(v398);
                if (v399 >= 255)
                {
                  v399 = 255;
                }

                v395[1] = v399 & ~(v399 >> 31);
                LOBYTE(v398) = *(v392 + 2);
                v400 = *&v398 * 0.00392156863;
                v149 = (v400 * 255.0) + 0.5 + 0.0000001;
                v401 = vcvtmd_s64_f64(v149);
                if (v401 >= 255)
                {
                  v401 = 255;
                }

                v395[2] = v401 & ~(v401 >> 31);
                v390 += 4;
                --v391;
              }

              while (v391);
            }

            v136 += v144;
            v137 += v145;
          }
        }
      }

      else if (v143)
      {
        for (i47 = 0; i47 != v143; ++i47)
        {
          if (v142)
          {
            v599 = 0;
            v600 = v142;
            do
            {
              v601 = *(v136 + v599 + 3);
              v602 = (v137 + v599);
              v603 = ((32897 * v601 * *(v136 + v599)) >> 23);
              v604 = ((32897 * v601 * *(v136 + v599 + 1)) >> 23);
              v605 = ((32897 * v601 * *(v136 + v599 + 2)) >> 23);
              v606 = v603 * 0.00392156863;
              v607 = vcvtmd_s64_f64((v606 * 255.0) + 0.5 + 0.0000001);
              if (v607 >= 255)
              {
                v607 = 255;
              }

              v608 = v604 * 0.00392156863;
              v609 = v607 & ~(v607 >> 31);
              v610 = vcvtmd_s64_f64((v608 * 255.0) + 0.5 + 0.0000001);
              if (v610 >= 255)
              {
                v610 = 255;
              }

              v611 = v605 * 0.00392156863;
              *v602 = v609;
              v612 = vcvtmd_s64_f64((v611 * 255.0) + 0.5 + 0.0000001);
              v602[1] = v610 & ~(v610 >> 31);
              if (v612 >= 255)
              {
                v612 = 255;
              }

              v602[2] = v612 & ~(v612 >> 31);
              v599 += 4;
              --v600;
            }

            while (v600);
          }

          v136 += v144;
          v137 += v150;
        }
      }
    }

    else if (v141)
    {
      if (v143)
      {
        for (i48 = 0; i48 != v143; ++i48)
        {
          if (v142)
          {
            v237 = 0;
            v238 = v142;
            do
            {
              v239 = v136 + v237;
              LOBYTE(v149) = *(v136 + v237);
              v240 = *&v149 * 0.00392156863;
              v241 = (v240 * 255.0) + 0.5 + 0.0000001;
              v242 = vcvtmd_s64_f64(v241);
              v243 = (v137 + v237);
              if (v242 >= 255)
              {
                v242 = 255;
              }

              *v243 = v242 & ~(v242 >> 31);
              LOBYTE(v241) = *(v239 + 1);
              v244 = *&v241 * 0.00392156863;
              v245 = (v244 * 255.0) + 0.5 + 0.0000001;
              v246 = vcvtmd_s64_f64(v245);
              if (v246 >= 255)
              {
                v246 = 255;
              }

              v243[1] = v246 & ~(v246 >> 31);
              LOBYTE(v245) = *(v239 + 2);
              v247 = *&v245 * 0.00392156863;
              v149 = (v247 * 255.0) + 0.5 + 0.0000001;
              v248 = vcvtmd_s64_f64(v149);
              if (v248 >= 255)
              {
                v248 = 255;
              }

              v243[2] = v248 & ~(v248 >> 31);
              v243[3] = -1;
              v237 += 4;
              --v238;
            }

            while (v238);
          }

          v136 += v144;
          v137 += v145;
        }
      }
    }

    else if (v143)
    {
      for (i49 = 0; i49 != v143; ++i49)
      {
        if (v142)
        {
          v411 = 0;
          v412 = v142;
          do
          {
            v413 = v136 + v411;
            LOBYTE(v149) = *(v136 + v411);
            v414 = *&v149 * 0.00392156863;
            v415 = (v414 * 255.0) + 0.5 + 0.0000001;
            v416 = (v137 + v411);
            v417 = vcvtmd_s64_f64(v415);
            if (v417 >= 255)
            {
              v417 = 255;
            }

            *v416 = v417 & ~(v417 >> 31);
            LOBYTE(v415) = *(v413 + 1);
            v418 = *&v415 * 0.00392156863;
            v419 = (v418 * 255.0) + 0.5 + 0.0000001;
            v420 = vcvtmd_s64_f64(v419);
            if (v420 >= 255)
            {
              v420 = 255;
            }

            v416[1] = v420 & ~(v420 >> 31);
            LOBYTE(v419) = *(v413 + 2);
            v421 = *&v419 * 0.00392156863;
            v149 = (v421 * 255.0) + 0.5 + 0.0000001;
            v422 = vcvtmd_s64_f64(v149);
            if (v422 >= 255)
            {
              v422 = 255;
            }

            v416[2] = v422 & ~(v422 >> 31);
            v411 += 4;
            --v412;
          }

          while (v412);
        }

        v136 += v144;
        v137 += v145;
      }
    }
  }

  else
  {
    if (v5 != 6)
    {
      if (v5 == 9)
      {
        v6 = (*(**(this + 8) + 16))(*(this + 8));
        v7 = (*(**(a2 + 8) + 16))(*(a2 + 8));
        v8 = (*(*this + 48))(this);
        v9 = (*(*a2 + 48))(a2);
        v10 = PCPixelFormat::hasAlpha(0xAu);
        v11 = PCPixelFormat::hasAlpha(9u);
        v12 = (*(*this + 16))(this);
        v13 = (*(*this + 24))(this);
        v14 = (*(**(this + 8) + 64))(*(this + 8));
        v15 = (*(**(a2 + 8) + 64))(*(a2 + 8));
        v19 = v15;
        if (v10)
        {
          if (v11)
          {
            if (v8 == v9)
            {
              if (v13)
              {
                for (i50 = 0; i50 != v13; ++i50)
                {
                  v625 = v12;
                  v626 = v7;
                  for (i51 = v6; v625; --v625)
                  {
                    LOWORD(v18) = *i51;
                    v628 = *&v18 * 0.0000152590219;
                    v629 = (v628 * 65535.0) + 0.5 + 0.0000001;
                    v630 = vcvtmd_s64_f64(v629);
                    if (v630 >= 0xFFFF)
                    {
                      v630 = 0xFFFF;
                    }

                    *v626 = v630 & ~(v630 >> 31);
                    LOWORD(v629) = i51[1];
                    v631 = *&v629 * 0.0000152590219;
                    v632 = (v631 * 65535.0) + 0.5 + 0.0000001;
                    v633 = vcvtmd_s64_f64(v632);
                    if (v633 >= 0xFFFF)
                    {
                      v633 = 0xFFFF;
                    }

                    v626[1] = v633 & ~(v633 >> 31);
                    LOWORD(v632) = i51[2];
                    v634 = *&v632 * 0.0000152590219;
                    v18 = (v634 * 65535.0) + 0.5 + 0.0000001;
                    v635 = vcvtmd_s64_f64(v18);
                    if (v635 >= 0xFFFF)
                    {
                      v635 = 0xFFFF;
                    }

                    v626[2] = v635 & ~(v635 >> 31);
                    v626 += 3;
                    i51 += 4;
                  }

                  v6 += v14;
                  v7 += v15;
                }
              }
            }

            else if (v8)
            {
              if (v13)
              {
                v20 = 0;
                v910 = v13;
                do
                {
                  if (v12)
                  {
                    v21 = 0;
                    v22 = v7;
                    do
                    {
                      v917 = *(v6 + 8 * v21);
                      PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)10>>::unpremultiply(&v917, v917, v16, v17);
                      LOWORD(v23) = LOWORD(v917);
                      *&v23 = v23 * 0.0000152590219;
                      v24 = (*&v23 * 65535.0) + 0.5 + 0.0000001;
                      v25 = vcvtmd_s64_f64(v24);
                      if (v25 >= 0xFFFF)
                      {
                        v25 = 0xFFFF;
                      }

                      *v22 = v25 & ~(v25 >> 31);
                      LOWORD(v24) = WORD1(v917);
                      v26 = *&v24 * 0.0000152590219;
                      v27 = (v26 * 65535.0) + 0.5 + 0.0000001;
                      v28 = vcvtmd_s64_f64(v27);
                      if (v28 >= 0xFFFF)
                      {
                        v28 = 0xFFFF;
                      }

                      v22[1] = v28 & ~(v28 >> 31);
                      LOWORD(v27) = WORD2(v917);
                      v29 = *&v27 * 0.0000152590219;
                      v30 = vcvtmd_s64_f64((v29 * 65535.0) + 0.5 + 0.0000001);
                      if (v30 >= 0xFFFF)
                      {
                        v30 = 0xFFFF;
                      }

                      v22[2] = v30 & ~(v30 >> 31);
                      ++v21;
                      v22 += 3;
                    }

                    while (v12 != v21);
                  }

                  v6 += v14;
                  v7 += v19;
                  ++v20;
                }

                while (v20 != v910);
              }
            }

            else if (v13)
            {
              for (i52 = 0; i52 != v13; ++i52)
              {
                v799 = v12;
                v800 = v7;
                for (i53 = v6; v799; --v799)
                {
                  LOWORD(v18) = *i53;
                  v802 = *&v18 * 0.0000152590219;
                  v803 = (v802 * 65535.0) + 0.5 + 0.0000001;
                  v804 = vcvtmd_s64_f64(v803);
                  if (v804 >= 0xFFFF)
                  {
                    v804 = 0xFFFF;
                  }

                  *v800 = v804 & ~(v804 >> 31);
                  LOWORD(v803) = i53[1];
                  v805 = *&v803 * 0.0000152590219;
                  v806 = (v805 * 65535.0) + 0.5 + 0.0000001;
                  v807 = vcvtmd_s64_f64(v806);
                  if (v807 >= 0xFFFF)
                  {
                    v807 = 0xFFFF;
                  }

                  v800[1] = v807 & ~(v807 >> 31);
                  LOWORD(v806) = i53[2];
                  v808 = *&v806 * 0.0000152590219;
                  v18 = (v808 * 65535.0) + 0.5 + 0.0000001;
                  v809 = vcvtmd_s64_f64(v18);
                  if (v809 >= 0xFFFF)
                  {
                    v809 = 0xFFFF;
                  }

                  v800[2] = v809 & ~(v809 >> 31);
                  v800 += 3;
                  i53 += 4;
                }

                v6 += v14;
                v7 += v15;
              }
            }
          }

          else if (v8)
          {
            if (v13)
            {
              for (i54 = 0; i54 != v13; ++i54)
              {
                v432 = v12;
                v433 = v7;
                for (i55 = v6; v432; --v432)
                {
                  LOWORD(v18) = *i55;
                  v435 = *&v18 * 0.0000152590219;
                  v436 = (v435 * 65535.0) + 0.5 + 0.0000001;
                  v437 = vcvtmd_s64_f64(v436);
                  if (v437 >= 0xFFFF)
                  {
                    v437 = 0xFFFF;
                  }

                  *v433 = v437 & ~(v437 >> 31);
                  LOWORD(v436) = i55[1];
                  v438 = *&v436 * 0.0000152590219;
                  v439 = (v438 * 65535.0) + 0.5 + 0.0000001;
                  v440 = vcvtmd_s64_f64(v439);
                  if (v440 >= 0xFFFF)
                  {
                    v440 = 0xFFFF;
                  }

                  v433[1] = v440 & ~(v440 >> 31);
                  LOWORD(v439) = i55[2];
                  v441 = *&v439 * 0.0000152590219;
                  v18 = (v441 * 65535.0) + 0.5 + 0.0000001;
                  v442 = vcvtmd_s64_f64(v18);
                  if (v442 >= 0xFFFF)
                  {
                    v442 = 0xFFFF;
                  }

                  v433[2] = v442 & ~(v442 >> 31);
                  v433 += 3;
                  i55 += 4;
                }

                v6 += v14;
                v7 += v15;
              }
            }
          }

          else if (v13)
          {
            for (i56 = 0; i56 != v13; ++i56)
            {
              v658 = v12;
              v659 = v7;
              for (i57 = v6; v658; --v658)
              {
                v661 = i57[3];
                v662 = (v661 * i57[1] / 0xFFFF);
                v663 = (v661 * *i57 / 0xFFFF) * 0.0000152590219;
                v664 = vcvtmd_s64_f64((v663 * 65535.0) + 0.5 + 0.0000001);
                v665 = (v661 * i57[2] / 0xFFFF);
                if (v664 >= 0xFFFF)
                {
                  v664 = 0xFFFF;
                }

                v666 = v662 * 0.0000152590219;
                v667 = v664 & ~(v664 >> 31);
                v668 = vcvtmd_s64_f64((v666 * 65535.0) + 0.5 + 0.0000001);
                if (v668 >= 0xFFFF)
                {
                  v668 = 0xFFFF;
                }

                v669 = v665 * 0.0000152590219;
                *v659 = v667;
                v670 = vcvtmd_s64_f64((v669 * 65535.0) + 0.5 + 0.0000001);
                v659[1] = v668 & ~(v668 >> 31);
                if (v670 >= 0xFFFF)
                {
                  v670 = 0xFFFF;
                }

                v659[2] = v670 & ~(v670 >> 31);
                v659 += 3;
                i57 += 4;
              }

              v6 += v14;
              v7 += v15;
            }
          }
        }

        else if (v11)
        {
          if (v13)
          {
            for (i58 = 0; i58 != v13; ++i58)
            {
              v258 = v12;
              v259 = v7;
              for (i59 = v6; v258; --v258)
              {
                LOWORD(v18) = *i59;
                v261 = *&v18 * 0.0000152590219;
                v262 = (v261 * 65535.0) + 0.5 + 0.0000001;
                v263 = vcvtmd_s64_f64(v262);
                if (v263 >= 0xFFFF)
                {
                  v263 = 0xFFFF;
                }

                *v259 = v263 & ~(v263 >> 31);
                LOWORD(v262) = i59[1];
                v264 = *&v262 * 0.0000152590219;
                v265 = (v264 * 65535.0) + 0.5 + 0.0000001;
                v266 = vcvtmd_s64_f64(v265);
                if (v266 >= 0xFFFF)
                {
                  v266 = 0xFFFF;
                }

                v259[1] = v266 & ~(v266 >> 31);
                LOWORD(v265) = i59[2];
                v267 = *&v265 * 0.0000152590219;
                v18 = (v267 * 65535.0) + 0.5 + 0.0000001;
                v268 = vcvtmd_s64_f64(v18);
                if (v268 >= 0xFFFF)
                {
                  v268 = 0xFFFF;
                }

                v259[2] = v268 & ~(v268 >> 31);
                v259 += 3;
                i59 += 4;
              }

              v6 += v14;
              v7 += v15;
            }
          }
        }

        else if (v13)
        {
          for (i60 = 0; i60 != v13; ++i60)
          {
            v448 = v12;
            v449 = v7;
            for (i61 = v6; v448; --v448)
            {
              LOWORD(v18) = *i61;
              v451 = *&v18 * 0.0000152590219;
              v452 = (v451 * 65535.0) + 0.5 + 0.0000001;
              v453 = vcvtmd_s64_f64(v452);
              if (v453 >= 0xFFFF)
              {
                v453 = 0xFFFF;
              }

              *v449 = v453 & ~(v453 >> 31);
              LOWORD(v452) = i61[1];
              v454 = *&v452 * 0.0000152590219;
              v455 = (v454 * 65535.0) + 0.5 + 0.0000001;
              v456 = vcvtmd_s64_f64(v455);
              if (v456 >= 0xFFFF)
              {
                v456 = 0xFFFF;
              }

              v449[1] = v456 & ~(v456 >> 31);
              LOWORD(v455) = i61[2];
              v457 = *&v455 * 0.0000152590219;
              v18 = (v457 * 65535.0) + 0.5 + 0.0000001;
              v458 = vcvtmd_s64_f64(v18);
              if (v458 >= 0xFFFF)
              {
                v458 = 0xFFFF;
              }

              v449[2] = v458 & ~(v458 >> 31);
              v449 += 3;
              i61 += 4;
            }

            v6 += v14;
            v7 += v15;
          }
        }
      }

      return;
    }

    if ((*(*a2 + 48))(a2))
    {
      goto LABEL_138;
    }

    v286 = (*(**(this + 8) + 16))(*(this + 8));
    v287 = (*(**(a2 + 8) + 16))(*(a2 + 8));
    v288 = (*(*this + 48))(this);
    v289 = (*(*a2 + 48))(a2);
    v290 = PCPixelFormat::hasAlpha(3u);
    v291 = PCPixelFormat::hasAlpha(6u);
    v292 = (*(*this + 16))(this);
    v293 = (*(*this + 24))(this);
    v294 = (*(**(this + 8) + 64))(*(this + 8));
    v295 = (*(**(a2 + 8) + 64))(*(a2 + 8));
    v300 = v295;
    if (v290)
    {
      if (v291)
      {
        if (v288 == v289)
        {
          if (v293)
          {
            for (i62 = 0; i62 != v293; ++i62)
            {
              if (v292)
              {
                v823 = 0;
                v824 = v292;
                do
                {
                  v825 = (v286 + v823);
                  LOBYTE(v299) = *(v286 + v823 + 1);
                  v826 = *&v299 * 0.00392156863;
                  v827 = (v826 * 255.0) + 0.5 + 0.0000001;
                  v828 = vcvtmd_s64_f64(v827);
                  v829 = (v287 + v823);
                  if (v828 >= 255)
                  {
                    v828 = 255;
                  }

                  v829[2] = v828 & ~(v828 >> 31);
                  LOBYTE(v827) = v825[2];
                  v830 = *&v827 * 0.00392156863;
                  v831 = (v830 * 255.0) + 0.5 + 0.0000001;
                  v832 = vcvtmd_s64_f64(v831);
                  if (v832 >= 255)
                  {
                    v832 = 255;
                  }

                  v829[1] = v832 & ~(v832 >> 31);
                  LOBYTE(v831) = v825[3];
                  v833 = *&v831 * 0.00392156863;
                  v834 = (v833 * 255.0) + 0.5 + 0.0000001;
                  v835 = vcvtmd_s64_f64(v834);
                  if (v835 >= 255)
                  {
                    v835 = 255;
                  }

                  *v829 = v835 & ~(v835 >> 31);
                  LOBYTE(v834) = *v825;
                  v836 = *&v834 * 0.00392156863;
                  v299 = (v836 * 255.0) + 0.5 + 0.0000001;
                  v837 = vcvtmd_s64_f64(v299);
                  if (v837 >= 255)
                  {
                    v837 = 255;
                  }

                  v829[3] = v837 & ~(v837 >> 31);
                  v823 += 4;
                  --v824;
                }

                while (v824);
              }

              v286 += v294;
              v287 += v295;
            }
          }
        }

        else if (v288)
        {
          if (v293)
          {
            v301 = 0;
            v916 = v293;
            v909 = v294;
            do
            {
              if (v292)
              {
                v302 = 0;
                v303 = v292;
                do
                {
                  v304 = (v287 + v302);
                  LODWORD(v917) = *(v286 + v302);
                  PCPixel4<ProCore::Private::PixelInfoTemplate<(PCPixelFormat::ChannelOrder)3>>::unpremultiply(&v917, v296, v297, v298);
                  LOBYTE(v305) = BYTE1(v917);
                  *&v305 = v305 * 0.00392156863;
                  LODWORD(v297) = 1132396544;
                  v306 = (*&v305 * 255.0) + 0.5 + 0.0000001;
                  v307 = vcvtmd_s64_f64(v306);
                  if (v307 >= 255)
                  {
                    v307 = 255;
                  }

                  v304[2] = v307 & ~(v307 >> 31);
                  LOBYTE(v306) = BYTE2(v917);
                  v308 = *&v306 * 0.00392156863;
                  v309 = (v308 * 255.0) + 0.5 + 0.0000001;
                  v310 = vcvtmd_s64_f64(v309);
                  if (v310 >= 255)
                  {
                    v310 = 255;
                  }

                  v304[1] = v310 & ~(v310 >> 31);
                  LOBYTE(v309) = BYTE3(v917);
                  v311 = *&v309 * 0.00392156863;
                  v312 = (v311 * 255.0) + 0.5 + 0.0000001;
                  v313 = vcvtmd_s64_f64(v312);
                  if (v313 >= 255)
                  {
                    v313 = 255;
                  }

                  *v304 = v313 & ~(v313 >> 31);
                  LOBYTE(v312) = LOBYTE(v917);
                  v314 = *&v312 * 0.00392156863;
                  v296 = (v314 * 255.0) + 0.5 + 0.0000001;
                  v315 = vcvtmd_s64_f64(v296);
                  if (v315 >= 255)
                  {
                    v315 = 255;
                  }

                  v304[3] = v315 & ~(v315 >> 31);
                  v302 += 4;
                  --v303;
                }

                while (v303);
              }

              v286 += v909;
              v287 += v300;
              ++v301;
            }

            while (v301 != v916);
          }
        }

        else if (v293)
        {
          for (i63 = 0; i63 != v293; ++i63)
          {
            if (v292)
            {
              v887 = 0;
              v888 = v292;
              do
              {
                v889 = (v286 + v887);
                LOBYTE(v299) = *(v286 + v887 + 1);
                v890 = *&v299 * 0.00392156863;
                v891 = (v890 * 255.0) + 0.5 + 0.0000001;
                v892 = vcvtmd_s64_f64(v891);
                v893 = (v287 + v887);
                if (v892 >= 255)
                {
                  v892 = 255;
                }

                v894 = v892 & ~(v892 >> 31);
                v893[2] = v894;
                LOBYTE(v891) = v889[2];
                v895 = *&v891 * 0.00392156863;
                v896 = (v895 * 255.0) + 0.5 + 0.0000001;
                v897 = vcvtmd_s64_f64(v896);
                if (v897 >= 255)
                {
                  v897 = 255;
                }

                v898 = v897 & ~(v897 >> 31);
                v893[1] = v898;
                LOBYTE(v896) = v889[3];
                v899 = *&v896 * 0.00392156863;
                v900 = (v899 * 255.0) + 0.5 + 0.0000001;
                v901 = vcvtmd_s64_f64(v900);
                if (v901 >= 255)
                {
                  v901 = 255;
                }

                v902 = v901 & ~(v901 >> 31);
                *v893 = v902;
                LOBYTE(v900) = *v889;
                v903 = *&v900 * 0.00392156863;
                v299 = (v903 * 255.0) + 0.5 + 0.0000001;
                v904 = vcvtmd_s64_f64(v299);
                if (v904 >= 255)
                {
                  v904 = 255;
                }

                v905 = v904 & ~(v904 >> 31);
                v893[3] = v905;
                v893[2] = (32897 * v905 * v894) >> 23;
                v893[1] = (32897 * v905 * v898) >> 23;
                *v893 = (32897 * v905 * v902) >> 23;
                v887 += 4;
                --v888;
              }

              while (v888);
            }

            v286 += v294;
            v287 += v300;
          }
        }
      }

      else if (v288)
      {
        if (v293)
        {
          for (i64 = 0; i64 != v293; ++i64)
          {
            if (v292)
            {
              v645 = 0;
              v646 = v292;
              do
              {
                v647 = v286 + v645;
                LOBYTE(v299) = *(v286 + v645 + 1);
                v648 = *&v299 * 0.00392156863;
                v649 = (v648 * 255.0) + 0.5 + 0.0000001;
                v650 = (v287 + v645);
                v651 = vcvtmd_s64_f64(v649);
                if (v651 >= 255)
                {
                  v651 = 255;
                }

                v650[2] = v651 & ~(v651 >> 31);
                LOBYTE(v649) = *(v647 + 2);
                v652 = *&v649 * 0.00392156863;
                v653 = (v652 * 255.0) + 0.5 + 0.0000001;
                v654 = vcvtmd_s64_f64(v653);
                if (v654 >= 255)
                {
                  v654 = 255;
                }

                v650[1] = v654 & ~(v654 >> 31);
                LOBYTE(v653) = *(v647 + 3);
                v655 = *&v653 * 0.00392156863;
                v299 = (v655 * 255.0) + 0.5 + 0.0000001;
                v656 = vcvtmd_s64_f64(v299);
                if (v656 >= 255)
                {
                  v656 = 255;
                }

                *v650 = v656 & ~(v656 >> 31);
                v645 += 4;
                --v646;
              }

              while (v646);
            }

            v286 += v294;
            v287 += v295;
          }
        }
      }

      else if (v293)
      {
        for (i65 = 0; i65 != v293; ++i65)
        {
          if (v292)
          {
            v845 = 0;
            v846 = v292;
            do
            {
              v847 = *(v286 + v845);
              v848 = (v287 + v845);
              v849 = ((32897 * *(v286 + v845 + 2) * v847) >> 23);
              v850 = ((32897 * *(v286 + v845 + 3) * v847) >> 23);
              v851 = ((32897 * *(v286 + v845 + 1) * v847) >> 23) * 0.00392156863;
              v852 = vcvtmd_s64_f64((v851 * 255.0) + 0.5 + 0.0000001);
              if (v852 >= 255)
              {
                v852 = 255;
              }

              v853 = v849 * 0.00392156863;
              v854 = v852 & ~(v852 >> 31);
              v855 = vcvtmd_s64_f64((v853 * 255.0) + 0.5 + 0.0000001);
              if (v855 >= 255)
              {
                v855 = 255;
              }

              v856 = v850 * 0.00392156863;
              v848[2] = v854;
              v857 = vcvtmd_s64_f64((v856 * 255.0) + 0.5 + 0.0000001);
              v848[1] = v855 & ~(v855 >> 31);
              if (v857 >= 255)
              {
                v857 = 255;
              }

              *v848 = v857 & ~(v857 >> 31);
              v845 += 4;
              --v846;
            }

            while (v846);
          }

          v286 += v294;
          v287 += v300;
        }
      }
    }

    else if (v291)
    {
      if (v293)
      {
        for (i66 = 0; i66 != v293; ++i66)
        {
          if (v292)
          {
            v464 = 0;
            v465 = v292;
            do
            {
              v466 = v286 + v464;
              LOBYTE(v299) = *(v286 + v464 + 1);
              v467 = *&v299 * 0.00392156863;
              v468 = (v467 * 255.0) + 0.5 + 0.0000001;
              v469 = vcvtmd_s64_f64(v468);
              v470 = (v287 + v464);
              if (v469 >= 255)
              {
                v469 = 255;
              }

              v470[2] = v469 & ~(v469 >> 31);
              LOBYTE(v468) = *(v466 + 2);
              v471 = *&v468 * 0.00392156863;
              v472 = (v471 * 255.0) + 0.5 + 0.0000001;
              v473 = vcvtmd_s64_f64(v472);
              if (v473 >= 255)
              {
                v473 = 255;
              }

              v470[1] = v473 & ~(v473 >> 31);
              LOBYTE(v472) = *(v466 + 3);
              v474 = *&v472 * 0.00392156863;
              v299 = (v474 * 255.0) + 0.5 + 0.0000001;
              v475 = vcvtmd_s64_f64(v299);
              if (v475 >= 255)
              {
                v475 = 255;
              }

              *v470 = v475 & ~(v475 >> 31);
              v470[3] = -1;
              v464 += 4;
              --v465;
            }

            while (v465);
          }

          v286 += v294;
          v287 += v295;
        }
      }
    }

    else if (v293)
    {
      for (i67 = 0; i67 != v293; ++i67)
      {
        if (v292)
        {
          v682 = 0;
          v683 = v292;
          do
          {
            v684 = v286 + v682;
            LOBYTE(v299) = *(v286 + v682 + 1);
            v685 = *&v299 * 0.00392156863;
            v686 = (v685 * 255.0) + 0.5 + 0.0000001;
            v687 = (v287 + v682);
            v688 = vcvtmd_s64_f64(v686);
            if (v688 >= 255)
            {
              v688 = 255;
            }

            v687[2] = v688 & ~(v688 >> 31);
            LOBYTE(v686) = *(v684 + 2);
            v689 = *&v686 * 0.00392156863;
            v690 = (v689 * 255.0) + 0.5 + 0.0000001;
            v691 = vcvtmd_s64_f64(v690);
            if (v691 >= 255)
            {
              v691 = 255;
            }

            v687[1] = v691 & ~(v691 >> 31);
            LOBYTE(v690) = *(v684 + 3);
            v692 = *&v690 * 0.00392156863;
            v299 = (v692 * 255.0) + 0.5 + 0.0000001;
            v693 = vcvtmd_s64_f64(v299);
            if (v693 >= 255)
            {
              v693 = 255;
            }

            *v687 = v693 & ~(v693 >> 31);
            v682 += 4;
            --v683;
          }

          while (v683);
        }

        v286 += v294;
        v287 += v295;
      }
    }
  }
}