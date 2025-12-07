unint64_t *std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(unint64_t *result, unint64_t *a2, unint64_t *a3, void *a4)
{
  v4 = *a2;
  v5 = (*a4 + 8);
  v6 = *v5;
  if (!*v5)
  {
    goto LABEL_9;
  }

  v7 = (*a4 + 8);
  v8 = *v7;
  do
  {
    v9 = v8[4];
    v10 = v9 >= v4;
    v11 = v9 < v4;
    if (v10)
    {
      v7 = v8;
    }

    v8 = v8[v11];
  }

  while (v8);
  if (v7 == v5 || v7[4] > v4)
  {
LABEL_9:
    v7 = (*a4 + 8);
  }

  v12 = *result;
  if (!v6)
  {
    goto LABEL_18;
  }

  v13 = (*a4 + 8);
  v14 = *v13;
  do
  {
    v15 = v14[4];
    v10 = v15 >= v12;
    v16 = v15 < v12;
    if (v10)
    {
      v13 = v14;
    }

    v14 = v14[v16];
  }

  while (v14);
  if (v13 == v5 || v13[4] > v12)
  {
LABEL_18:
    v13 = (*a4 + 8);
  }

  v17 = v7[5];
  v18 = v13[5];
  if (v4 == v12 || v17 != v18)
  {
    if (v17 <= v18)
    {
      goto LABEL_24;
    }

LABEL_47:
    v30 = *a3;
    if (!v6)
    {
      goto LABEL_55;
    }

    v31 = (*a4 + 8);
    v32 = *v31;
    do
    {
      v33 = v32[4];
      v10 = v33 >= v30;
      v34 = v33 < v30;
      if (v10)
      {
        v31 = v32;
      }

      v32 = v32[v34];
    }

    while (v32);
    if (v31 == v5 || v31[4] > v30)
    {
LABEL_55:
      v31 = (*a4 + 8);
    }

    if (!v6)
    {
      goto LABEL_64;
    }

    v35 = *a4 + 8;
    do
    {
      v36 = *(v6 + 32);
      v10 = v36 >= v4;
      v37 = v36 < v4;
      if (v10)
      {
        v35 = v6;
      }

      v6 = *(v6 + 8 * v37);
    }

    while (v6);
    if (v35 == v5 || *(v35 + 32) > v4)
    {
LABEL_64:
      v35 = *a4 + 8;
    }

    v38 = v31[5];
    v39 = *(v35 + 40);
    if (v30 == v4 || v38 != v39)
    {
      if (v38 <= v39)
      {
LABEL_68:
        *result = v4;
        *a2 = v12;
        v40 = *a3;
        v41 = (*a4 + 8);
        v42 = *v41;
        if (!*v41)
        {
          goto LABEL_76;
        }

        v43 = (*a4 + 8);
        v44 = *v43;
        do
        {
          v45 = v44[4];
          v10 = v45 >= v40;
          v46 = v45 < v40;
          if (v10)
          {
            v43 = v44;
          }

          v44 = v44[v46];
        }

        while (v44);
        if (v43 == v41 || v43[4] > v40)
        {
LABEL_76:
          v43 = (*a4 + 8);
        }

        if (!v42)
        {
          goto LABEL_85;
        }

        v47 = *a4 + 8;
        do
        {
          v48 = *(v42 + 32);
          v10 = v48 >= v12;
          v49 = v48 < v12;
          if (v10)
          {
            v47 = v42;
          }

          v42 = *(v42 + 8 * v49);
        }

        while (v42);
        if (v47 == v41 || *(v47 + 32) > v12)
        {
LABEL_85:
          v47 = *a4 + 8;
        }

        v50 = v43[5];
        v51 = *(v47 + 40);
        if (v40 == v12 || v50 != v51)
        {
          if (v50 <= v51)
          {
            return result;
          }
        }

        else if (*(*(v40 + 152) + 72) >= *(*(v12 + 152) + 72))
        {
          return result;
        }

        *a2 = v40;
LABEL_117:
        *a3 = v12;
        return result;
      }
    }

    else if (*(*(v30 + 152) + 72) >= *(*(v4 + 152) + 72))
    {
      goto LABEL_68;
    }

    *result = v30;
    goto LABEL_117;
  }

  if (*(*(v4 + 152) + 72) < *(*(v12 + 152) + 72))
  {
    goto LABEL_47;
  }

LABEL_24:
  v20 = *a3;
  if (!v6)
  {
    goto LABEL_32;
  }

  v21 = (*a4 + 8);
  v22 = *v21;
  do
  {
    v23 = v22[4];
    v10 = v23 >= v20;
    v24 = v23 < v20;
    if (v10)
    {
      v21 = v22;
    }

    v22 = v22[v24];
  }

  while (v22);
  if (v21 == v5 || v21[4] > v20)
  {
LABEL_32:
    v21 = (*a4 + 8);
  }

  if (!v6)
  {
    goto LABEL_41;
  }

  v25 = *a4 + 8;
  do
  {
    v26 = *(v6 + 32);
    v10 = v26 >= v4;
    v27 = v26 < v4;
    if (v10)
    {
      v25 = v6;
    }

    v6 = *(v6 + 8 * v27);
  }

  while (v6);
  if (v25 == v5 || *(v25 + 32) > v4)
  {
LABEL_41:
    v25 = *a4 + 8;
  }

  v28 = v21[5];
  v29 = *(v25 + 40);
  if (v20 == v4 || v28 != v29)
  {
    if (v28 <= v29)
    {
      return result;
    }
  }

  else if (*(*(v20 + 152) + 72) >= *(*(v4 + 152) + 72))
  {
    return result;
  }

  *a2 = v20;
  *a3 = v4;
  v52 = *a2;
  v53 = (*a4 + 8);
  v54 = *v53;
  if (!*v53)
  {
    goto LABEL_99;
  }

  v55 = (*a4 + 8);
  v56 = *v55;
  do
  {
    v57 = v56[4];
    v10 = v57 >= v52;
    v58 = v57 < v52;
    if (v10)
    {
      v55 = v56;
    }

    v56 = v56[v58];
  }

  while (v56);
  if (v55 == v53 || v55[4] > v52)
  {
LABEL_99:
    v55 = (*a4 + 8);
  }

  v59 = *result;
  if (!v54)
  {
    goto LABEL_108;
  }

  v60 = *a4 + 8;
  do
  {
    v61 = *(v54 + 32);
    v10 = v61 >= v59;
    v62 = v61 < v59;
    if (v10)
    {
      v60 = v54;
    }

    v54 = *(v54 + 8 * v62);
  }

  while (v54);
  if (v60 == v53 || *(v60 + 32) > v59)
  {
LABEL_108:
    v60 = *a4 + 8;
  }

  v63 = v55[5];
  v64 = *(v60 + 40);
  if (v52 == v59 || v63 != v64)
  {
    if (v63 > v64)
    {
LABEL_119:
      *result = v52;
      *a2 = v59;
    }
  }

  else if (*(*(v52 + 152) + 72) < *(*(v59 + 152) + 72))
  {
    goto LABEL_119;
  }

  return result;
}

unint64_t *std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, void *a5)
{
  result = std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(a1, a2, a3, a5);
  v11 = *a4;
  v12 = (*a5 + 8);
  v13 = *v12;
  if (!*v12)
  {
    goto LABEL_9;
  }

  v14 = (*a5 + 8);
  v15 = *v14;
  do
  {
    v16 = v15[4];
    v17 = v16 >= v11;
    v18 = v16 < v11;
    if (v17)
    {
      v14 = v15;
    }

    v15 = v15[v18];
  }

  while (v15);
  if (v14 == v12 || v14[4] > v11)
  {
LABEL_9:
    v14 = (*a5 + 8);
  }

  v19 = *a3;
  if (!v13)
  {
    goto LABEL_18;
  }

  v20 = *a5 + 8;
  do
  {
    v21 = *(v13 + 32);
    v17 = v21 >= v19;
    v22 = v21 < v19;
    if (v17)
    {
      v20 = v13;
    }

    v13 = *(v13 + 8 * v22);
  }

  while (v13);
  if (v20 == v12 || *(v20 + 32) > v19)
  {
LABEL_18:
    v20 = *a5 + 8;
  }

  v23 = v14[5];
  v24 = *(v20 + 40);
  if (v11 == v19 || v23 != v24)
  {
    if (v23 <= v24)
    {
      return result;
    }
  }

  else if (*(*(v11 + 152) + 72) >= *(*(v19 + 152) + 72))
  {
    return result;
  }

  *a3 = v11;
  *a4 = v19;
  v25 = *a3;
  v26 = (*a5 + 8);
  v27 = *v26;
  if (!*v26)
  {
    goto LABEL_32;
  }

  v28 = (*a5 + 8);
  v29 = *v28;
  do
  {
    v30 = v29[4];
    v17 = v30 >= v25;
    v31 = v30 < v25;
    if (v17)
    {
      v28 = v29;
    }

    v29 = v29[v31];
  }

  while (v29);
  if (v28 == v26 || v28[4] > v25)
  {
LABEL_32:
    v28 = (*a5 + 8);
  }

  v32 = *a2;
  if (!v27)
  {
    goto LABEL_41;
  }

  v33 = *a5 + 8;
  do
  {
    v34 = *(v27 + 32);
    v17 = v34 >= v32;
    v35 = v34 < v32;
    if (v17)
    {
      v33 = v27;
    }

    v27 = *(v27 + 8 * v35);
  }

  while (v27);
  if (v33 == v26 || *(v33 + 32) > v32)
  {
LABEL_41:
    v33 = *a5 + 8;
  }

  v36 = v28[5];
  v37 = *(v33 + 40);
  if (v25 == v32 || v36 != v37)
  {
    if (v36 <= v37)
    {
      return result;
    }
  }

  else if (*(*(v25 + 152) + 72) >= *(*(v32 + 152) + 72))
  {
    return result;
  }

  *a2 = v25;
  *a3 = v32;
  v38 = *a2;
  v39 = (*a5 + 8);
  v40 = *v39;
  if (!*v39)
  {
    goto LABEL_55;
  }

  v41 = (*a5 + 8);
  v42 = *v41;
  do
  {
    v43 = v42[4];
    v17 = v43 >= v38;
    v44 = v43 < v38;
    if (v17)
    {
      v41 = v42;
    }

    v42 = v42[v44];
  }

  while (v42);
  if (v41 == v39 || v41[4] > v38)
  {
LABEL_55:
    v41 = (*a5 + 8);
  }

  v45 = *a1;
  if (!v40)
  {
    goto LABEL_64;
  }

  v46 = *a5 + 8;
  do
  {
    v47 = *(v40 + 32);
    v17 = v47 >= v45;
    v48 = v47 < v45;
    if (v17)
    {
      v46 = v40;
    }

    v40 = *(v40 + 8 * v48);
  }

  while (v40);
  if (v46 == v39 || *(v46 + 32) > v45)
  {
LABEL_64:
    v46 = *a5 + 8;
  }

  v49 = v41[5];
  v50 = *(v46 + 40);
  if (v38 == v45 || v49 != v50)
  {
    if (v49 <= v50)
    {
      return result;
    }

    goto LABEL_70;
  }

  if (*(*(v38 + 152) + 72) < *(*(v45 + 152) + 72))
  {
LABEL_70:
    *a1 = v38;
    *a2 = v45;
  }

  return result;
}

unint64_t *std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(unint64_t *a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, void *a6)
{
  result = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(a1, a2, a3, a4, a6);
  v13 = *a5;
  v14 = (*a6 + 8);
  v15 = *v14;
  if (!*v14)
  {
    goto LABEL_9;
  }

  v16 = (*a6 + 8);
  v17 = *v16;
  do
  {
    v18 = v17[4];
    v19 = v18 >= v13;
    v20 = v18 < v13;
    if (v19)
    {
      v16 = v17;
    }

    v17 = v17[v20];
  }

  while (v17);
  if (v16 == v14 || v16[4] > v13)
  {
LABEL_9:
    v16 = (*a6 + 8);
  }

  v21 = *a4;
  if (!v15)
  {
    goto LABEL_18;
  }

  v22 = *a6 + 8;
  do
  {
    v23 = *(v15 + 32);
    v19 = v23 >= v21;
    v24 = v23 < v21;
    if (v19)
    {
      v22 = v15;
    }

    v15 = *(v15 + 8 * v24);
  }

  while (v15);
  if (v22 == v14 || *(v22 + 32) > v21)
  {
LABEL_18:
    v22 = *a6 + 8;
  }

  v25 = v16[5];
  v26 = *(v22 + 40);
  if (v13 == v21 || v25 != v26)
  {
    if (v25 <= v26)
    {
      return result;
    }
  }

  else if (*(*(v13 + 152) + 72) >= *(*(v21 + 152) + 72))
  {
    return result;
  }

  *a4 = v13;
  *a5 = v21;
  v27 = *a4;
  v28 = (*a6 + 8);
  v29 = *v28;
  if (!*v28)
  {
    goto LABEL_32;
  }

  v30 = (*a6 + 8);
  v31 = *v30;
  do
  {
    v32 = v31[4];
    v19 = v32 >= v27;
    v33 = v32 < v27;
    if (v19)
    {
      v30 = v31;
    }

    v31 = v31[v33];
  }

  while (v31);
  if (v30 == v28 || v30[4] > v27)
  {
LABEL_32:
    v30 = (*a6 + 8);
  }

  v34 = *a3;
  if (!v29)
  {
    goto LABEL_41;
  }

  v35 = *a6 + 8;
  do
  {
    v36 = *(v29 + 32);
    v19 = v36 >= v34;
    v37 = v36 < v34;
    if (v19)
    {
      v35 = v29;
    }

    v29 = *(v29 + 8 * v37);
  }

  while (v29);
  if (v35 == v28 || *(v35 + 32) > v34)
  {
LABEL_41:
    v35 = *a6 + 8;
  }

  v38 = v30[5];
  v39 = *(v35 + 40);
  if (v27 == v34 || v38 != v39)
  {
    if (v38 <= v39)
    {
      return result;
    }
  }

  else if (*(*(v27 + 152) + 72) >= *(*(v34 + 152) + 72))
  {
    return result;
  }

  *a3 = v27;
  *a4 = v34;
  v40 = *a3;
  v41 = (*a6 + 8);
  v42 = *v41;
  if (!*v41)
  {
    goto LABEL_55;
  }

  v43 = (*a6 + 8);
  v44 = *v43;
  do
  {
    v45 = v44[4];
    v19 = v45 >= v40;
    v46 = v45 < v40;
    if (v19)
    {
      v43 = v44;
    }

    v44 = v44[v46];
  }

  while (v44);
  if (v43 == v41 || v43[4] > v40)
  {
LABEL_55:
    v43 = (*a6 + 8);
  }

  v47 = *a2;
  if (!v42)
  {
    goto LABEL_64;
  }

  v48 = *a6 + 8;
  do
  {
    v49 = *(v42 + 32);
    v19 = v49 >= v47;
    v50 = v49 < v47;
    if (v19)
    {
      v48 = v42;
    }

    v42 = *(v42 + 8 * v50);
  }

  while (v42);
  if (v48 == v41 || *(v48 + 32) > v47)
  {
LABEL_64:
    v48 = *a6 + 8;
  }

  v51 = v43[5];
  v52 = *(v48 + 40);
  if (v40 == v47 || v51 != v52)
  {
    if (v51 <= v52)
    {
      return result;
    }
  }

  else if (*(*(v40 + 152) + 72) >= *(*(v47 + 152) + 72))
  {
    return result;
  }

  *a2 = v40;
  *a3 = v47;
  v53 = *a2;
  v54 = (*a6 + 8);
  v55 = *v54;
  if (!*v54)
  {
    goto LABEL_78;
  }

  v56 = (*a6 + 8);
  v57 = *v56;
  do
  {
    v58 = v57[4];
    v19 = v58 >= v53;
    v59 = v58 < v53;
    if (v19)
    {
      v56 = v57;
    }

    v57 = v57[v59];
  }

  while (v57);
  if (v56 == v54 || v56[4] > v53)
  {
LABEL_78:
    v56 = (*a6 + 8);
  }

  v60 = *a1;
  if (!v55)
  {
    goto LABEL_87;
  }

  v61 = *a6 + 8;
  do
  {
    v62 = *(v55 + 32);
    v19 = v62 >= v60;
    v63 = v62 < v60;
    if (v19)
    {
      v61 = v55;
    }

    v55 = *(v55 + 8 * v63);
  }

  while (v55);
  if (v61 == v54 || *(v61 + 32) > v60)
  {
LABEL_87:
    v61 = *a6 + 8;
  }

  v64 = v56[5];
  v65 = *(v61 + 40);
  if (v53 == v60 || v64 != v65)
  {
    if (v64 <= v65)
    {
      return result;
    }

    goto LABEL_93;
  }

  if (*(*(v53 + 152) + 72) < *(*(v60 + 152) + 72))
  {
LABEL_93:
    *a1 = v53;
    *a2 = v60;
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **>(unint64_t *a1, unint64_t *a2, void *a3)
{
  v6 = a2 - a1;
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:
        std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(a1, a1 + 1, a2 - 1, a3);
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1, a3);
        return 1;
    }
  }

  else
  {
    if (v6 < 2)
    {
      return 1;
    }

    if (v6 == 2)
    {
      v7 = *(a2 - 1);
      v8 = (*a3 + 8);
      v9 = *v8;
      if (!*v8)
      {
        goto LABEL_12;
      }

      v10 = (*a3 + 8);
      v11 = *v10;
      do
      {
        v12 = v11[4];
        v13 = v12 >= v7;
        v14 = v12 < v7;
        if (v13)
        {
          v10 = v11;
        }

        v11 = v11[v14];
      }

      while (v11);
      if (v10 == v8 || v10[4] > v7)
      {
LABEL_12:
        v10 = (*a3 + 8);
      }

      v15 = *a1;
      if (!v9)
      {
        goto LABEL_21;
      }

      v16 = *a3 + 8;
      do
      {
        v17 = *(v9 + 32);
        v13 = v17 >= v15;
        v18 = v17 < v15;
        if (v13)
        {
          v16 = v9;
        }

        v9 = *(v9 + 8 * v18);
      }

      while (v9);
      if (v16 == v8 || *(v16 + 32) > v15)
      {
LABEL_21:
        v16 = *a3 + 8;
      }

      v19 = v10[5];
      v20 = *(v16 + 40);
      if (v7 != v15 && v19 == v20)
      {
        if (*(*(v7 + 152) + 72) >= *(*(v15 + 152) + 72))
        {
          return 1;
        }

        goto LABEL_91;
      }

      if (v19 > v20)
      {
LABEL_91:
        *a1 = v7;
        *(a2 - 1) = v15;
      }

      return 1;
    }
  }

  v21 = a1 + 2;
  std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,ZinCpBasedAllocator::GetSortedNonResidentTensors(void)::$_0 &,ZinIrTensor **,0>(a1, a1 + 1, a1 + 2, a3);
  v22 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v23 = 0;
  while (1)
  {
    v24 = *v22;
    v25 = (*a3 + 8);
    v26 = *v25;
    if (!*v25)
    {
      goto LABEL_41;
    }

    v27 = (*a3 + 8);
    v28 = *v27;
    do
    {
      v29 = v28[4];
      v13 = v29 >= v24;
      v30 = v29 < v24;
      if (v13)
      {
        v27 = v28;
      }

      v28 = v28[v30];
    }

    while (v28);
    if (v27 == v25 || v27[4] > v24)
    {
LABEL_41:
      v27 = (*a3 + 8);
    }

    v31 = *v21;
    if (!v26)
    {
      goto LABEL_50;
    }

    v32 = *a3 + 8;
    do
    {
      v33 = *(v26 + 32);
      v13 = v33 >= v31;
      v34 = v33 < v31;
      if (v13)
      {
        v32 = v26;
      }

      v26 = *(v26 + 8 * v34);
    }

    while (v26);
    if (v32 == v25 || *(v32 + 32) > v31)
    {
LABEL_50:
      v32 = *a3 + 8;
    }

    v35 = v27[5];
    v36 = *(v32 + 40);
    if (v24 != v31 && v35 == v36)
    {
      break;
    }

    if (v35 > v36)
    {
      goto LABEL_58;
    }

LABEL_87:
    v21 = v22++;
    if (v22 == a2)
    {
      return 1;
    }
  }

  if (*(*(v24 + 152) + 72) >= *(*(v31 + 152) + 72))
  {
    goto LABEL_87;
  }

LABEL_58:
  *v22 = v31;
  v38 = v21;
  do
  {
    v40 = *--v38;
    v39 = v40;
    v41 = (*a3 + 8);
    v42 = *v41;
    if (!*v41)
    {
      goto LABEL_67;
    }

    v43 = (*a3 + 8);
    v44 = *v43;
    do
    {
      v45 = v44[4];
      v13 = v45 >= v24;
      v46 = v45 < v24;
      if (v13)
      {
        v43 = v44;
      }

      v44 = v44[v46];
    }

    while (v44);
    if (v43 == v41 || v43[4] > v24)
    {
LABEL_67:
      v43 = (*a3 + 8);
    }

    if (!v42)
    {
      goto LABEL_76;
    }

    v47 = *a3 + 8;
    do
    {
      v48 = *(v42 + 32);
      v13 = v48 >= v39;
      v49 = v48 < v39;
      if (v13)
      {
        v47 = v42;
      }

      v42 = *(v42 + 8 * v49);
    }

    while (v42);
    if (v47 == v41 || *(v47 + 32) > v39)
    {
LABEL_76:
      v47 = *a3 + 8;
    }

    v50 = v43[5];
    v51 = *(v47 + 40);
    if (v24 != v39 && v50 == v51)
    {
      if (*(*(v24 + 152) + 72) >= *(*(v39 + 152) + 72))
      {
        goto LABEL_86;
      }
    }

    else if (v50 <= v51)
    {
      goto LABEL_86;
    }

    *v21 = v39;
    v21 = v38;
  }

  while (v38 != a1);
  v21 = a1;
LABEL_86:
  *v21 = v24;
  if (++v23 != 8)
  {
    goto LABEL_87;
  }

  return v22 + 1 == a2;
}

ZinIrExecutionBehavior *std::unique_ptr<ZinIrExecutionBehavior>::reset[abi:ne200100](ZinIrExecutionBehavior **a1, ZinIrExecutionBehavior *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ZinIrExecutionBehavior::~ZinIrExecutionBehavior(result);

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

ZinIrResourceTracker *std::unique_ptr<ZinIrResourceTracker>::reset[abi:ne200100](ZinIrResourceTracker **a1, ZinIrResourceTracker *a2)
{
  result = *a1;
  *a1 = a2;
  if (result)
  {
    ZinIrResourceTracker::~ZinIrResourceTracker(result);

    JUMPOUT(0x1AC55A070);
  }

  return result;
}

uint64_t std::__function::__value_func<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::~__value_func[abi:ne200100](uint64_t a1)
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

BOOL ranges::operator==<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>>(uint64_t *a1, uint64_t *a2)
{
  v4 = a2[3];
  if (a1[3] == 1)
  {
    if (v4 == 1)
    {
      return 1;
    }

    ranges::_get_::get<0ul,ranges::variant<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>> const&>(a2);
    ranges::_get_::get<1ul,ranges::variant<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>> const&>(a1);
    v6 = a2[1] == 0;
    v7 = *a2;
    v8 = *a1;
    return v6 || v8 == v7;
  }

  ranges::_get_::get<0ul,ranges::variant<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>> const&>(a1);
  if (v4 == 1)
  {
    ranges::_get_::get<1ul,ranges::variant<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>> const&>(a2);
    v6 = a1[1] == 0;
    v7 = *a1;
    v8 = *a2;
    return v6 || v8 == v7;
  }

  ranges::_get_::get<0ul,ranges::variant<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>> const&>(a2);
  return a1[1] == a2[1];
}

uint64_t ranges::_get_::get<0ul,ranges::variant<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>> const&>(uint64_t result)
{
  if (*(result + 24))
  {
    ranges::detail::get_fn<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>> const,0ul>::operator()<ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base> const,1ul>();
  }

  return result;
}

uint64_t ranges::_get_::get<1ul,ranges::variant<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>> const&>(uint64_t result)
{
  if (!*(result + 24))
  {
    ranges::detail::get_fn<ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base> const,1ul>::operator()<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>> const,0ul>();
  }

  return result;
}

void ranges::detail::get_fn<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>> const,0ul>::operator()<ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base> const,1ul>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  ranges::bad_variant_access::bad_variant_access(exception, "bad variant access");
}

void ranges::detail::get_fn<ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base> const,1ul>::operator()<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>> const,0ul>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  ranges::bad_variant_access::bad_variant_access(exception, "bad variant access");
}

uint64_t ranges::_get_::get<0ul,ranges::variant<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>> &>(uint64_t result)
{
  if (*(result + 24))
  {
    ranges::detail::get_fn<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,0ul>::operator()<ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>,1ul>();
  }

  return result;
}

void ranges::detail::get_fn<ranges::basic_iterator<ranges::adaptor_cursor<ranges::counted_iterator<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>>,ranges::iter_transform_view<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_0>>::adaptor<false>>>,0ul>::operator()<ranges::adaptor_sentinel<ranges::take_view<ranges::subrange<ranges::basic_iterator<ranges::iota_view<unsigned int,unsigned long>::cursor>,ranges::iota_view<unsigned int,unsigned long>::sentinel,(ranges::subrange_kind)0>>::sentinel<true>,ranges::adaptor_base>,1ul>()
{
  exception = __cxa_allocate_exception(0x10uLL);
  ranges::bad_variant_access::bad_variant_access(exception, "bad variant access");
}

void std::vector<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>>(a1, a2);
  }

  std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>,std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>,std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

uint64_t std::_AllocatorDestroyRangeReverse<std::allocator<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>,std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>*>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 8);
  result = **(a1 + 16);
  v3 = *v1;
  while (result != v3)
  {
    v4 = *(result - 8);
    result -= 40;
    if (v4 == 1)
    {
      result = std::__function::__value_func<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>::~__value_func[abi:ne200100](result);
    }
  }

  return result;
}

uint64_t *std::vector<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::reserve(uint64_t *result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>(result, a2);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

void sub_1A69FAD28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>,std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>*>(uint64_t a1, atomic_ullong **a2, atomic_ullong **a3, atomic_ullong **a4)
{
  v11 = a4;
  v12 = a4;
  v9[0] = a1;
  v9[1] = &v11;
  v9[2] = &v12;
  if (a2 == a3)
  {
    v10 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      *a4++ = *v6;
      *v6++ = 0;
    }

    while (v6 != a3);
    v12 = a4;
    v10 = 1;
    if (a2 != a3)
    {
      do
      {
        v7 = *v5;
        if (*v5 && !atomic_fetch_add(v7 + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          (*(*v7 + 16))(v7);
        }

        ++v5;
      }

      while (v5 != a3);
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>,std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>*>>::~__exception_guard_exceptions[abi:ne200100](v9);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>,std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>,std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

atomic_ullong *std::_AllocatorDestroyRangeReverse<std::allocator<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>,std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>*>::operator()[abi:ne200100](atomic_ullong *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  while (v3 != v4)
  {
    v5 = *(v3 - 8);
    v3 -= 8;
    result = v5;
    if (v5)
    {
      if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
      {
        result = (*(*result + 16))(result);
      }
    }
  }

  return result;
}

atomic_ullong *std::__split_buffer<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::~__split_buffer(atomic_ullong *a1)
{
  std::__split_buffer<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::__destruct_at_end[abi:ne200100](a1, a1[1]);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

atomic_ullong *std::__split_buffer<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::__destruct_at_end[abi:ne200100](atomic_ullong *result, uint64_t a2)
{
  v2 = result[2];
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      result = *(v2 - 8);
      v4[2] = v2 - 8;
      if (result)
      {
        if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
        {
          result = (*(*result + 16))(result);
        }
      }

      v2 = v4[2];
    }

    while (v2 != a2);
  }

  return result;
}

void std::vector<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::__vdeallocate(atomic_ullong *a1)
{
  if (*a1)
  {
    std::vector<std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>>::__base_destruct_at_end[abi:ne200100](a1, *a1);
    operator delete(*a1);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

void *ranges::basic_iterator<ranges::adaptor_cursor<std::__wrap_iter<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>> *>,ranges::iter_transform_view<ranges::ref_view<std::vector<std::optional<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)>>>>,ranges::indirected<ZinCpBasedAllocator::Execute(void)::$_2>>::adaptor<false>>>::operator*@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if ((*(*a1 + 32) & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return std::async[abi:ne200100]<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>(1, a2);
}

void *std::async[abi:ne200100]<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>@<X0>(void *result@<X0>, void *a3@<X8>)
{
  if (result)
  {
    std::__make_async_assoc_state[abi:ne200100]<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>();
  }

  if ((result & 2) != 0)
  {
    std::__make_deferred_assoc_state[abi:ne200100]<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>();
  }

  *a3 = 0;
  return result;
}

void sub_1A69FB1C8(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, std::thread a12)
{
  if (!atomic_fetch_add(v13, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v12 + 16))(v12, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

void sub_1A69FB31C(_Unwind_Exception *exception_object)
{
  if (!atomic_fetch_add(v2, 0xFFFFFFFFFFFFFFFFLL))
  {
    (*(*v1 + 16))(v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__async_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>::~__async_assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__async_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>::__on_zero_shared(std::__assoc_sub_state *a1)
{
  std::__assoc_sub_state::wait(a1);

  return std::__assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>::__on_zero_shared(a1);
}

uint64_t std::__async_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>::__execute(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>::operator()[abi:ne200100]<>(a1 + 176);
  std::__assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>::set_value<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>(a1, v3);
  return std::__function::__value_func<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::~__value_func[abi:ne200100](v3);
}

void sub_1A69FB51C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a2)
  {
    std::__function::__value_func<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::~__value_func[abi:ne200100](va);
    __cxa_begin_catch(exception_object);
    std::current_exception();
    v11.__ptr_ = &a9;
    std::__assoc_sub_state::set_exception(v9, v11);
    std::exception_ptr::~exception_ptr(&a9);
    __cxa_end_catch();
    JUMPOUT(0x1A69FB4F0);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>::__on_zero_shared(_BYTE *a1)
{
  if (a1[136])
  {
    std::__function::__value_func<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::~__value_func[abi:ne200100]((a1 + 144));
  }

  v2 = *(*a1 + 8);

  return v2(a1);
}

void std::__assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>::set_value<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>(uint64_t a1, uint64_t a2)
{
  std::mutex::lock((a1 + 24));
  if ((*(a1 + 136) & 1) != 0 || (v5.__ptr_ = 0, v4 = *(a1 + 16), std::exception_ptr::~exception_ptr(&v5), v4))
  {
    std::__throw_future_error[abi:ne200100](2u);
  }

  std::__function::__value_func<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::__value_func[abi:ne200100](a1 + 144, a2);
  *(a1 + 136) |= 5u;
  std::condition_variable::notify_all((a1 + 88));
  std::mutex::unlock((a1 + 24));
}

void std::__throw_future_error[abi:ne200100](unsigned int a1)
{
  exception = __cxa_allocate_exception(0x20uLL);
  v3 = std::future_category();
  MEMORY[0x1AC559A30](exception, a1, v3);
  __cxa_throw(exception, MEMORY[0x1E69E53B0], MEMORY[0x1E69E52C8]);
}

uint64_t std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>::operator()[abi:ne200100]<>(uint64_t a1)
{
  v2 = *(*a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  v3 = *(*v2 + 48);

  return v3();
}

void sub_1A69FB838(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__thread_proxy[abi:ne200100]<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>::*)(void),std::__async_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>*>>(const void **a1)
{
  v8 = a1;
  v2 = std::__thread_local_data();
  v3 = *a1;
  *a1 = 0;
  pthread_setspecific(v2->__key_, v3);
  v4 = v8[1];
  v5 = v8[2];
  v6 = (v8[3] + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v4(v6);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>::*)(void),std::__async_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>*>>::~unique_ptr[abi:ne200100](&v8);
  return 0;
}

void sub_1A69FB908(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>::*)(void),std::__async_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>*>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::unique_ptr<std::tuple<std::unique_ptr<std::__thread_struct>,void (std::__async_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>::*)(void),std::__async_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>*>>::~unique_ptr[abi:ne200100](uint64_t **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](v2);
    MEMORY[0x1AC55A070](v3, 0xA0C40F20CD8FBLL);
  }

  return a1;
}

uint64_t *std::unique_ptr<std::__thread_struct>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = MEMORY[0x1AC559C20]();
    MEMORY[0x1AC55A070](v3, 0x20C4093837F09);
  }

  return a1;
}

void std::__assoc_sub_state::__attach_future[abi:ne200100](uint64_t a1)
{
  std::mutex::lock((a1 + 24));
  v2 = *(a1 + 136);
  if ((v2 & 2) != 0)
  {
    std::__throw_future_error[abi:ne200100](1u);
  }

  atomic_fetch_add_explicit((a1 + 8), 1uLL, memory_order_relaxed);
  *(a1 + 136) = v2 | 2;

  std::mutex::unlock((a1 + 24));
}

void std::__deferred_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>::~__deferred_assoc_state(uint64_t a1)
{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);

  std::__shared_count::~__shared_count(a1);
}

{
  *a1 = MEMORY[0x1E69E5550] + 16;
  v2 = (a1 + 16);
  std::condition_variable::~condition_variable((a1 + 88));
  std::mutex::~mutex((a1 + 24));
  std::exception_ptr::~exception_ptr(v2);
  std::__shared_count::~__shared_count(a1);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__deferred_assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>,std::__async_func<std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>>>::__execute(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  std::reference_wrapper<std::function<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)> ()(void)> const>::operator()[abi:ne200100]<>(a1 + 176);
  std::__assoc_state<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>::set_value<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>(a1, v3);
  return std::__function::__value_func<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::~__value_func[abi:ne200100](v3);
}

void sub_1A69FBB84(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ...)
{
  va_start(va, a9);
  if (a2)
  {
    std::__function::__value_func<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>::~__value_func[abi:ne200100](va);
    __cxa_begin_catch(exception_object);
    std::current_exception();
    v11.__ptr_ = &a9;
    std::__assoc_sub_state::set_exception(v9, v11);
    std::exception_ptr::~exception_ptr(&a9);
    __cxa_end_catch();
    JUMPOUT(0x1A69FBB58);
  }

  _Unwind_Resume(exception_object);
}

void *std::__tree<std::__value_type<ZinIrTensor *,unsigned long>,std::__map_value_compare<ZinIrTensor *,std::__value_type<ZinIrTensor *,unsigned long>,std::less<ZinIrTensor *>,true>,std::allocator<std::__value_type<ZinIrTensor *,unsigned long>>>::__emplace_unique_key_args<ZinIrTensor *,std::pair<ZinIrTensor *,unsigned long>>(uint64_t a1, unint64_t *a2, void *a3)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
LABEL_8:
    operator new();
  }

  v4 = *a2;
  while (1)
  {
    while (1)
    {
      v5 = v3;
      v6 = v3[4];
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v5;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v5;
    }

    v3 = v5[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void *std::__tree<ZinIrTensor::SplitIDs>::__emplace_unique_key_args<ZinIrTensor::SplitIDs,ZinIrTensor::SplitIDs const&>(uint64_t **a1, uint64_t *a2, void *a3)
{
  v3 = *std::__tree<ZinIrTensor::SplitIDs>::__find_equal<ZinIrTensor::SplitIDs>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<ZinIrTensor::SplitIDs>::__find_equal<ZinIrTensor::SplitIDs>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v7 = v4;
        v8 = *a3;
        v11 = *(v4 + 26);
        v12 = v8;
        if ((std::__tuple_compare_three_way[abi:ne200100]<std::optional<unsigned short>,std::optional<unsigned short>,std::optional<unsigned short>,std::optional<unsigned short>,0ul,1ul>(&v12, &v11) & 0x80) == 0)
        {
          break;
        }

        v4 = *v7;
        v5 = v7;
        if (!*v7)
        {
          goto LABEL_9;
        }
      }

      v9 = *(v7 + 26);
      v11 = *a3;
      v12 = v9;
      if ((std::__tuple_compare_three_way[abi:ne200100]<std::optional<unsigned short>,std::optional<unsigned short>,std::optional<unsigned short>,std::optional<unsigned short>,0ul,1ul>(&v12, &v11) & 0x80) == 0)
      {
        break;
      }

      v5 = v7 + 1;
      v4 = v7[1];
    }

    while (v4);
  }

  else
  {
    v7 = (a1 + 8);
  }

LABEL_9:
  *a2 = v7;
  return v5;
}

void ZinCpBasedAllocator::PromoteChainToL2Dependent()
{
  v4 = *MEMORY[0x1E69E9840];
  v0 = 136315394;
  v1 = "/Library/Caches/com.apple.xbs/Sources/ANECompiler/libs/inference/compiler/ZinIrSchedule/src/ZinCpBasedAllocator.cpp";
  v2 = 1024;
  v3 = 2126;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "It must be chainable tensor. %s:%d\n", &v0, 0x12u);
}

void ZinCpBasedAllocator::VerifyAllocationDecision(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = (*a1 + 40);
  if (*(*a1 + 63) < 0)
  {
    v1 = *v1;
  }

  v2 = 136315650;
  v3 = v1;
  v4 = 2080;
  v5 = "/Library/Caches/com.apple.xbs/Sources/ANECompiler/libs/inference/compiler/ZinIrSchedule/src/ZinCpBasedAllocator.cpp";
  v6 = 1024;
  v7 = 1029;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: Missing allocation decision in %s (file %s, line %d)\n", &v2, 0x1Cu);
}

atomic_ullong *std::future<std::function<std::optional<std::unordered_map<unsigned long long,CpAllocUtils::AllocationType>> ()(void)>>::get(atomic_ullong *result)
{
  if (!atomic_fetch_add(result + 1, 0xFFFFFFFFFFFFFFFFLL))
  {
    return (*(*result + 16))();
  }

  return result;
}

__CFDictionary *ZinCreateBatchToSpaceUnit(const ZinIrBatchToSpaceUnitInfo *a1)
{
  Unit = ZinCreateUnit(a1);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v5 = 35;
  ZinAddSpaceTransformFactorToParamsDict(Mutable, &v5, a1 + 80);
  CFDictionaryAddValue(Unit, @"Params", Mutable);
  CFRelease(Mutable);
  return Unit;
}

uint64_t *ZinBarIdManager::ZinBarIdManager(uint64_t *a1, unsigned int a2, int a3)
{
  v6 = 0;
  result = std::vector<BOOL>::vector(a1, a2, &v6);
  if (a3 == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  *(result + 6) = v5;
  return result;
}

uint64_t ZinBarIdManager::GetNextAvailableBarId(ZinBarIdManager *this)
{
  v1 = *(this + 1);
  if (v1)
  {
    v2 = 0;
    v3 = *(this + 6);
    while (1)
    {
      v4 = v3 + v2;
      if (v4 <= v2)
      {
        break;
      }

      v5 = 1;
      v6 = v2;
      do
      {
        v5 &= ((*(*this + ((v6 >> 3) & 0x18)) >> v6) & 1) == 0;
        ++v6;
      }

      while (v4 > v6);
      if (v5)
      {
        break;
      }

      v2 += v3;
      if (v1 <= v2)
      {
        goto LABEL_8;
      }
    }

    v7 = 1;
  }

  else
  {
LABEL_8:
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinBarIdManager::GetNextAvailableBarId();
    }

    LOBYTE(v2) = 0;
    v7 = 0;
  }

  return v2 | (v7 << 8);
}

uint64_t ZinBarIdManager::GetAndAssignNextAvailableBarId(ZinBarIdManager *this)
{
  result = ZinBarIdManager::GetNextAvailableBarId(this);
  if ((result & 0x100) != 0)
  {
    v3 = *(this + 6) + result;
    if (v3 > result)
    {
      v4 = *this;
      v5 = result;
      do
      {
        *(v4 + ((v5 >> 3) & 0x18)) |= 1 << v5;
        ++v5;
      }

      while (v3 > v5);
    }
  }

  return result;
}

uint64_t ZinBarIdManager::ReserveBarIds(uint64_t *a1, unsigned __int8 **a2)
{
  v2 = *a2;
  v3 = a2[1];
  if (*a2 == v3)
  {
    return 1;
  }

  v4 = *(a1 + 6);
  while (1)
  {
    v5 = *v2;
    v6 = v4 + v5;
    if (a1[1] < v6 || v5 % v4)
    {
      break;
    }

    if (v6 > v5)
    {
      v7 = *a1;
      do
      {
        *(v7 + ((v5 >> 3) & 0x18)) |= 1 << v5;
        ++v5;
      }

      while (v6 > v5);
    }

    if (++v2 == v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t ZinBarIdManager::GetNumberOfAvailableBars(ZinBarIdManager *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = 0;
  LODWORD(v3) = 0;
  do
  {
    v4 = v2 + *(this + 6);
    if (v2 >= v4)
    {
      v2 = 1;
    }

    else
    {
      v5 = v2;
      LOBYTE(v2) = 1;
      v6 = *(this + 6);
      do
      {
        v2 = v2 & (((*(*this + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5) & 1) == 0);
        ++v5;
        --v6;
      }

      while (v6);
    }

    v3 = v3 + v2;
    v2 = v4;
  }

  while (v1 > v4);
  return v3;
}

__CFDictionary *CreateANECIRDict(const ZinIrUnitInfo *a1)
{
  switch(*(a1 + 8))
  {
    case 0:
    case 0x4D:
      result = ZinCreateSDPAUnit(a1);
      break;
    case 1:
      result = ZinCreateConvUnit(a1);
      break;
    case 2:
      result = ZinCreatePoolUnit(a1);
      break;
    case 3:
      result = ZinCreateConcatUnit(a1);
      break;
    case 4:
      result = ZinCreateEWUnit(a1);
      break;
    case 5:
      result = ZinCreateScaledEWUnit(a1);
      break;
    case 6:
      result = ZinCreateNeuronUnit(a1);
      break;
    case 7:
    case 0xA:
    case 0x26:
    case 0x38:
    case 0x39:
    case 0x40:
    case 0x41:
    case 0x42:
    case 0x43:
      result = ZinCreateUnit(a1);
      break;
    case 8:
      result = ZinCreateGOCUnit(a1);
      break;
    case 9:
      result = ZinCreateDynamicGOCUnit(a1);
      break;
    case 0xB:
      result = ZinCreateFlattenUnit(a1);
      break;
    case 0xC:
      result = ZinCreateUnflattenUnit(a1);
      break;
    case 0xD:
      result = ZinCreateCrossCorrelationUnit(a1);
      break;
    case 0xE:
      result = ZinCreateKernelRasterizerUnit(a1);
      break;
    case 0xF:
      result = ZinCreateArgMinMaxUnit(a1);
      break;
    case 0x10:
      result = ZinCreateGlobalArgMinMaxUnit(a1);
      break;
    case 0x11:
      result = ZinCreateInputViewUnit(a1);
      break;
    case 0x12:
      result = ZinCreateMatrixMultUnit(a1);
      break;
    case 0x13:
      result = ZinCreateBroadcastUnit(a1);
      break;
    case 0x14:
      result = ZinCreateReductionUnit(a1);
      break;
    case 0x15:
      result = ZinCreateTransposeUnit(a1);
      break;
    case 0x16:
      result = ZinCreateReshapeUnit(a1);
      break;
    case 0x17:
      result = ZinCreateShapeUnit(a1);
      break;
    case 0x18:
      result = ZinCreateSoftmaxUnit(a1);
      break;
    case 0x19:
      result = ZinCreateInstanceNormUnit(a1);
      break;
    case 0x1A:
    case 0x1B:
    case 0x1C:
      result = ZinCreateMinMaxNormUnit(a1);
      break;
    case 0x1D:
      result = ZinCreateLRNUnit(a1);
      break;
    case 0x1E:
      result = ZinCreateCostVolumeUnit(a1);
      break;
    case 0x1F:
      result = ZinCreatePixelShuffleUnit(a1);
      break;
    case 0x20:
      result = ZinCreatePixelUnshuffleUnit(a1);
      break;
    case 0x21:
      result = ZinCreateFurthestPointSamplingUnit(a1);
      break;
    case 0x22:
      result = ZinCreateSpaceToBatchUnit(a1);
      break;
    case 0x23:
      result = ZinCreateBatchToSpaceUnit(a1);
      break;
    case 0x24:
      result = ZinCreateSpaceToChannelUnit(a1);
      break;
    case 0x25:
      result = ZinCreateChannelToSpaceUnit(a1);
      break;
    case 0x27:
      result = ZinCreateGatherUnit(a1);
      break;
    case 0x28:
      result = ZinCreateAffineTransformUnit(a1);
      break;
    case 0x29:
      result = ZinCreateResizeUnit(a1);
      break;
    case 0x2A:
      result = ZinCreateResizeAsUnit(a1);
      break;
    case 0x2B:
      result = ZinCreateResampleUnit(a1);
      break;
    case 0x2C:
      result = ZinCreatePadUnit(a1);
      break;
    case 0x2D:
      result = ZinCreateTileUnit(a1);
      break;
    case 0x2E:
      result = ZinCreateCropResizeUnit(a1);
      break;
    case 0x2F:
      result = ZinCreateDynamicSliceUnit(a1);
      break;
    case 0x30:
      result = ZinCreatePlaneReaderUnit(a1);
      break;
    case 0x31:
      result = ZinCreatePlaneWriterUnit(a1);
      break;
    case 0x32:
      result = ZinCreateSortUnit(a1);
      break;
    case 0x33:
      result = ZinCreateTopKUnit(a1);
      break;
    case 0x34:
      result = ZinCreateNMSUnit(a1);
      break;
    case 0x35:
      result = ZinCreateMatrixDecompositionUnit(a1);
      break;
    case 0x36:
      result = ZinCreateDropoutUnit(a1);
      break;
    case 0x37:
      result = ZinCreateRandomUnit(a1);
      break;
    case 0x3A:
      result = ZinCreateQuantUnit(a1);
      break;
    case 0x3B:
      result = ZinCreateDeQuantUnit(a1);
      break;
    case 0x3C:
      result = ZinCreateLinearUnit(a1);
      break;
    case 0x3D:
      result = ZinCreateRingBufferWriterUnit(a1);
      break;
    case 0x3E:
      result = ZinCreateRingBufferReaderUnit(a1);
      break;
    case 0x3F:
      result = ZinCreateBatchNormUnit(a1);
      break;
    case 0x44:
      result = ZinCreateNEConvUnit(a1);
      break;
    case 0x45:
      result = ZinCreateNEMatMulUnit(a1);
      break;
    case 0x46:
      result = ZinCreateNEPoolUnit(a1);
      break;
    case 0x47:
      result = ZinCreateNEBypassUnit(a1);
      break;
    case 0x48:
      result = ZinCreatePEPoolUnit(a1);
      break;
    case 0x49:
      result = ZinCreatePEElementWiseUnit(a1);
      break;
    case 0x4A:
      result = ZinCreatePEGOCUnit(a1);
      break;
    case 0x4B:
    case 0x4C:
      result = ZinCreateAllGatherUnit(a1);
      break;
    case 0x4E:
      result = ZinCreateAllReduceUnit(a1);
      break;
    case 0x4F:
      result = ZinCreateFunctionCallUnit(a1);
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

void ZinIrBatchNormInfo::ZinIrBatchNormInfo(ZinIrBatchNormInfo *this, float a2)
{
  v3 = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(this, 82);
  *v3 = &unk_1F19F4028;
  *(v3 + 12) = a2;
}

void *ZinBatchNormLayer::ZinBatchNormLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4, ZinIrKernel **a5)
{
  v7 = *a2;
  *a2 = 0;
  v8 = a3[1];
  v11 = *a3;
  v12 = v8;
  v13 = v7;
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinIrOpLayer::ZinIrOpLayer(a1, &v13, &v11, a4, a5);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  v9 = v13;
  v13 = 0;
  if (v9)
  {
    (*(*v9 + 16))(v9);
  }

  *a1 = &unk_1F19F4060;
  ZinObjectNameFactory::ZinObjectNameFactory((a1 + 22), a4);
  return a1;
}

uint64_t ZinBatchNormLayer::Lower(ZinIrContext *a1, ZinIrOpLayerGraph *a2)
{
  v76[0] = *MEMORY[0x1E69E9840];
  v42.n128_u64[0] = a1;
  LODWORD(v43) = 0;
  v4 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v42);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v42, v4);
  v66.n128_u64[0] = RawOrShared<ZinIrOpLayer>::unwrap_const_ptr(&v42);
  v5 = std::__hash_table<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::__unordered_map_hasher<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::__unordered_map_equal<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>,std::equal_to<NodeKey<RawOrShared<ZinIrOpLayer>>>,std::hash<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__hash_value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>>>>::find<NodeKey<RawOrShared<ZinIrOpLayer>>>(a2 + 8, &v66);
  v6 = a2 + 104;
  if (v5)
  {
    v6 = (v5 + 3);
  }

  v62 = 0;
  v63 = 0;
  v61 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v61, *v6, *(v6 + 1), (*(v6 + 1) - *v6) >> 3);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v42);
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  v52 = 0;
  v53 = 0;
  v54 = 0;
  v7 = *(a1 + 20);
  if (!v7)
  {
    ZinAssertImpl("BatchNorm must have kernel");
  }

  *(a1 + 20) = 0;
  v51 = v7;
  v8 = *(v7 + 936);
  if (v8 != 1)
  {
    if (v8 == 2)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinBatchNormLayer::Lower();
      }

      v9 = 3;
      goto LABEL_33;
    }

    v8 = 0;
  }

  ZinBatchNormKernel::ExtractBatchNormVectors(v7, &v58, &v55, &v52, *(*(a1 + 11) + 12));
  MemoryPools = ZinIrContext::GetMemoryPools(a1);
  (*(**(*(MemoryPools + 8) - 8) + 88))(&v42);
  v11 = *(a1 + 4);
  v68 = v44;
  v69 = v45;
  v70[0] = v46[0];
  *(v70 + 13) = *(v46 + 13);
  v66 = v42;
  v67 = v43;
  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(v71, v47);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v37, &v66, v76, 1uLL);
  __p = 0uLL;
  v41 = 0;
  v12 = ZinBuilder::CreatePerCoutGOC(v11, a1 + 176, &v37, &__p, &v58, v8, 0, 0, 4u, 4u);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  __p.n128_u64[0] = &v37;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  __p.n128_u64[0] = v12;
  LODWORD(v41) = 0;
  v13 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&__p);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&__p, v13);
  v65 = a1;
  v35 = &v65;
  v36 = 1;
  Layer2TDMapper::SourceLayer::SourceLayer(&v37, &v35);
  ZinIrOpLayerGraph::AddNode(a2, &__p, &v37, &v66);
  v14 = v66.n128_u8[0];
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v66.n128_i64[1]);
  v37 = &unk_1F19C3950;
  v64 = &v38;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v64);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p);
  v15 = ZinIrContext::GetMemoryPools(a1);
  v16 = ZinIrOpLayerGraph::AddEdge(a2, *(*(v15 + 8) - 8), v12, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  (*(*v12 + 88))(&v66, v12, 0);
  v44 = v68;
  v45 = v69;
  v46[0] = v70[0];
  *(v46 + 13) = *(v70 + 13);
  v47[0] = v71[0];
  v42 = v66;
  v43 = v67;
  std::vector<ZinSymbolicExpressionRef>::__assign_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>(v48, v72, v73, (v73 - v72) >> 4);
  v30 = v16;
  v49 = v74;
  v50 = v75;
  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  v17 = *(a1 + 4);
  v68 = v44;
  v69 = v45;
  v70[0] = v46[0];
  *(v70 + 13) = *(v46 + 13);
  v66 = v42;
  v67 = v43;
  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(v71, v47);
  v37 = 0;
  v38 = 0;
  v39 = 0;
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v37, &v66, v76, 1uLL);
  __p = 0uLL;
  v41 = 0;
  v18 = ZinBuilder::CreatePerCoutGOC(v17, a1 + 176, &v37, &v55, &__p, v8, 0, 0, 4u, 4u);
  if (__p.n128_u64[0])
  {
    __p.n128_u64[1] = __p.n128_u64[0];
    operator delete(__p.n128_u64[0]);
  }

  __p.n128_u64[0] = &v37;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (v72)
  {
    v73 = v72;
    operator delete(v72);
  }

  __p.n128_u64[0] = v18;
  LODWORD(v41) = 0;
  v19 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&__p);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&__p, v19);
  v65 = a1;
  v35 = &v65;
  v36 = 1;
  Layer2TDMapper::SourceLayer::SourceLayer(&v37, &v35);
  ZinIrOpLayerGraph::AddNode(a2, &__p, &v37, &v66);
  v20 = v66.n128_u8[0];
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v66.n128_i64[1]);
  v37 = &unk_1F19C3950;
  v64 = &v38;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v64);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p);
  v21 = v30 & v14 & v20 & ZinIrOpLayerGraph::AddEdge(a2, v12, v18, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0);
  if (v53 != v52)
  {
    (*(*v18 + 88))(&v66, v18, 0);
    v44 = v68;
    v45 = v69;
    v46[0] = v70[0];
    *(v46 + 13) = *(v70 + 13);
    v47[0] = v71[0];
    v42 = v66;
    v43 = v67;
    std::vector<ZinSymbolicExpressionRef>::__assign_with_size[abi:ne200100]<ZinSymbolicExpressionRef*,ZinSymbolicExpressionRef*>(v48, v72, v73, (v73 - v72) >> 4);
    v49 = v74;
    v50 = v75;
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    v22 = *(a1 + 4);
    v68 = v44;
    v69 = v45;
    v70[0] = v46[0];
    *(v70 + 13) = *(v46 + 13);
    v66 = v42;
    v67 = v43;
    ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(v71, v47);
    v37 = 0;
    v38 = 0;
    v39 = 0;
    std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v37, &v66, v76, 1uLL);
    __p = 0uLL;
    v41 = 0;
    v23 = ZinBuilder::CreatePerCoutGOC(v22, a1 + 176, &v37, &__p, &v52, v8, 0, 0, 4u, 4u);
    if (__p.n128_u64[0])
    {
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
    }

    __p.n128_u64[0] = &v37;
    std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
    if (v72)
    {
      v73 = v72;
      operator delete(v72);
    }

    __p.n128_u64[0] = v23;
    LODWORD(v41) = 0;
    v24 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&__p);
    RawOrShared<ZinIrOpLayer>::update_this_if_shared(&__p, v24);
    v65 = a1;
    v35 = &v65;
    v36 = 1;
    Layer2TDMapper::SourceLayer::SourceLayer(&v37, &v35);
    ZinIrOpLayerGraph::AddNode(a2, &__p, &v37, &v66);
    v25 = v66.n128_u8[0];
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v66.n128_i64[1]);
    v37 = &unk_1F19C3950;
    v64 = &v38;
    std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&v64);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p);
    v21 &= ZinIrOpLayerGraph::AddEdge(a2, v18, v23, 0xFFFFFFFFFFFFFFFFLL, 0xFFFFFFFFFFFFFFFFLL, 0) & v25;
    v18 = v23;
  }

  memset(v33, 0, sizeof(v33));
  v34 = 1065353216;
  v26 = ZinIrOpLayerGraph::MoveOutgoingEdges(a2, a1, v18, v33, 0, 0);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v33);
  v31.n128_u64[0] = a1;
  v32 = 0;
  v27 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v31);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v31, v27);
  v28 = ZinIrOpLayerGraph::RemoveNode(a2, &v31, 0);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v31);
  if ((v21 & v26 & v28) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 3;
  }

  if (v48[0])
  {
    v48[1] = v48[0];
    operator delete(v48[0]);
  }

LABEL_33:
  std::unique_ptr<ZinBatchNormKernel>::~unique_ptr[abi:ne200100](&v51);
  if (v52)
  {
    v53 = v52;
    operator delete(v52);
  }

  if (v55)
  {
    v56 = v55;
    operator delete(v55);
  }

  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  if (v61)
  {
    v62 = v61;
    operator delete(v61);
  }

  return v9;
}

void sub_1A69FCF58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, ...)
{
  va_start(va, a28);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  JUMPOUT(0x1A69FCF50);
}

void ZinBatchNormLayer::Clone(ZinIrCodegenStatsPerBasicBlock *a1, uint64_t *a2, const void **a3)
{
  if (*(a1 + 20))
  {
    if (*(a3 + 23) >= 0)
    {
      v5 = *(a3 + 23);
    }

    else
    {
      v5 = a3[1];
    }

    v6 = &v17;
    std::string::basic_string[abi:ne200100](&v17, v5 + 1);
    if ((v17.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v6 = v17.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(a3 + 23) >= 0)
      {
        v7 = a3;
      }

      else
      {
        v7 = *a3;
      }

      memmove(v6, v7, v5);
    }

    *(&v6->__r_.__value_.__l.__data_ + v5) = 95;
    std::string::basic_string[abi:ne200100]<0>(&v14, "goc_clone_kernel");
    v8 = std::string::append(&v14, "_xfm", 4uLL);
    v9 = *&v8->__r_.__value_.__l.__data_;
    v16 = v8->__r_.__value_.__r.__words[2];
    *v15 = v9;
    v8->__r_.__value_.__l.__size_ = 0;
    v8->__r_.__value_.__r.__words[2] = 0;
    v8->__r_.__value_.__r.__words[0] = 0;
    if (v16 >= 0)
    {
      v10 = v15;
    }

    else
    {
      v10 = v15[0];
    }

    if (v16 >= 0)
    {
      v11 = HIBYTE(v16);
    }

    else
    {
      v11 = v15[1];
    }

    v12 = std::string::append(&v17, v10, v11);
    v13 = *&v12->__r_.__value_.__l.__data_;
    v19 = v12->__r_.__value_.__r.__words[2];
    *__p = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    operator new();
  }

  v20 = 0;
  operator new();
}

void sub_1A69FD238(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  std::unique_ptr<ZinIrVector>::~unique_ptr[abi:ne200100]((v36 - 80));
  std::unique_ptr<ZinIrVector>::~unique_ptr[abi:ne200100]((v36 - 72));
  MEMORY[0x1AC55A070](v35, 0x1032C40733E5C38);
  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a23 < 0)
  {
    operator delete(a18);
  }

  if (a17 < 0)
  {
    operator delete(a12);
  }

  if (a29 < 0)
  {
    operator delete(a24);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinBatchNormLayer::ValidateSemantics_Impl(ZinIrOpLayer *a1, uint64_t *a2, unsigned __int8 *a3)
{
  ZinIrOpLayer::ValidateSemantics_Impl(a1, a2, a3);
  if (a2[1] - *a2 != 136)
  {
    ZinAssertImpl("BatchNorm layer must have only one single input.");
  }

  v5 = (*(*a1 + 40))(a1, 0);
  result = IsFloatFormat(*(v5 + 104));
  if ((result & 1) == 0)
  {
    ZinAssertImpl("BatchNorm output tensor must be in Float format");
  }

  return result;
}

uint64_t ZinBatchNormLayer::DebugDetailPrint@<X0>(_BYTE *a1@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v7);
  if ((v14 & 0x10) != 0)
  {
    v3 = v13;
    if (v13 < v10)
    {
      v13 = v10;
      v3 = v10;
    }

    locale = v9[4].__locale_;
  }

  else
  {
    if ((v14 & 8) == 0)
    {
      v2 = 0;
      a1[23] = 0;
      goto LABEL_14;
    }

    locale = v9[1].__locale_;
    v3 = v9[3].__locale_;
  }

  v2 = v3 - locale;
  if ((v3 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v2 >= 0x17)
  {
    operator new();
  }

  a1[23] = v2;
  if (v2)
  {
    memmove(a1, locale, v2);
  }

LABEL_14:
  a1[v2] = 0;
  v7[0] = *MEMORY[0x1E69E54D8];
  v5 = *(MEMORY[0x1E69E54D8] + 72);
  *(v7 + *(v7[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v7[2] = v5;
  v8 = MEMORY[0x1E69E5548] + 16;
  if (v12 < 0)
  {
    operator delete(__p);
  }

  v8 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v9);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v15);
}

void sub_1A69FD61C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a10, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](&a26);
  _Unwind_Resume(a1);
}

void ZinBatchNormLayer::~ZinBatchNormLayer(ZinBatchNormLayer *this)
{
  *this = &unk_1F19F4060;
  *(this + 22) = &unk_1F19D0088;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  ZinIrOpLayer::~ZinIrOpLayer(this);
}

{
  *this = &unk_1F19F4060;
  *(this + 22) = &unk_1F19D0088;
  if (*(this + 207) < 0)
  {
    operator delete(*(this + 23));
  }

  ZinIrOpLayer::~ZinIrOpLayer(this);

  JUMPOUT(0x1AC55A070);
}

void ZinLargeStridePoolTransform::ZinLargeStridePoolTransform(ZinLargeStridePoolTransform *this)
{
  *this = &unk_1F19F41F0;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = -1;
  *(this + 1) = &unk_1F19CEE70;
  *(this + 2) = 0;
  *(this + 22) = 1;
  *(this + 6) = vdupq_n_s64(1uLL);
  *(this + 14) = 1;
  *(this + 15) = 0x100000001;
  *(this + 32) = 1;
  *(this + 132) = 0;
  *(this + 148) = 0;
  *(this + 140) = 0;
  *(this + 156) = 0;
  *(this + 20) = 0x3F80000000000001;
  *(this + 42) = 0;
  *(this + 10) = 2;
  *(this + 176) = 0;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
}

void ZinLargeStridePoolTransform::ZinLargeStridePoolTransform(ZinLargeStridePoolTransform *this, char a2, const ZinIrPoolUnitInfo *a3)
{
  *this = &unk_1F19F41F0;
  *(this + 1) = &unk_1F1A2EA30;
  if (*(a3 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 16), *(a3 + 1), *(a3 + 2));
  }

  else
  {
    v6 = *(a3 + 8);
    *(this + 4) = *(a3 + 3);
    *(this + 1) = v6;
  }

  v7 = *(a3 + 8);
  *(this + 6) = 0;
  *(this + 10) = v7;
  *(this + 7) = 0;
  *(this + 8) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 6, *(a3 + 5), *(a3 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 6) - *(a3 + 5)) >> 3));
  *(this + 72) = *(a3 + 4);
  *(this + 1) = &unk_1F19CEE70;
  v8 = *(a3 + 5);
  *(this + 104) = *(a3 + 6);
  *(this + 88) = v8;
  v9 = *(a3 + 7);
  v10 = *(a3 + 8);
  v11 = *(a3 + 9);
  *(this + 42) = *(a3 + 40);
  *(this + 152) = v11;
  *(this + 136) = v10;
  *(this + 120) = v9;
  *(this + 176) = a2;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
}

void sub_1A69FD978(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinLargeStridePoolTransform::RunLargeStridePool(uint64_t a1, uint64_t a2, uint64_t a3, ZinMirUnit **a4)
{
  if (*ZinMirUnit::Opcode(*a4) != 37)
  {
    return 0;
  }

  v8[0] = vdupq_n_s64(1uLL);
  v8[1] = v8[0];
  v9 = 1;
  result = (*(**a4 + 16))(*a4, a3, v8);
  if (result)
  {
    if (ZinMirUnitGraph::RemoveNode(a2, a4))
    {
      return 0;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t ZinLargeStridePoolTransform::RunLargeStridePoolExcludePadding(void *a1, uint64_t a2, int64x2_t **a3, ZinMirUnit **a4)
{
  v28 = *a4;
  v8 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinMirUnit>>,std::vector<NodeKey<std::shared_ptr<ZinMirUnit>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinMirUnit>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinMirUnit>>,std::vector<NodeKey<std::shared_ptr<ZinMirUnit>>>>,std::hash<NodeKey<std::shared_ptr<ZinMirUnit>>>,std::equal_to<NodeKey<std::shared_ptr<ZinMirUnit>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinMirUnit>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinMirUnit>>,std::vector<NodeKey<std::shared_ptr<ZinMirUnit>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinMirUnit>>>,std::hash<NodeKey<std::shared_ptr<ZinMirUnit>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinMirUnit>>,std::vector<NodeKey<std::shared_ptr<ZinMirUnit>>>>>>::find<NodeKey<std::shared_ptr<ZinMirUnit>>>((a2 + 64), &v28);
  v9 = (a2 + 104);
  if (v8)
  {
    v9 = v8 + 3;
  }

  v11 = v9;
  v10 = *v9;
  if (v11[1] == v10)
  {
    return 3;
  }

  if (*(*a4 + 13) != *(*v10 + 104))
  {
    v12 = ZinMirUnit::Format(*a4);
    if (ZinConvPoolLargeStride::DecomposeLargeStridePoolNoSeparatePaddingLayer(v12, (a1 + 1), *a3, a1 + 23, a1 + 26))
    {
      return 3;
    }
  }

  if (a1[27] == a1[26])
  {
    return 3;
  }

  if (*ZinMirUnit::Opcode(*a4) != 37)
  {
    return 0;
  }

  Views = ZinMirViewUnit::GetViews(*a4);
  v14 = *Views;
  v15 = Views[1];
  if (*Views == v15)
  {
    goto LABEL_35;
  }

  v16 = 0;
  v17 = a1[26];
  v18 = a1[27];
  do
  {
    while (1)
    {
      v19 = v17;
      if (v17 != v18)
      {
        v19 = v17;
        while (1)
        {
          if (*v19 == 17)
          {
            v20 = *v14;
            if (v19[22] == *(*v14 + 80) && v19[24] == *(v20 + 88))
            {
              v21 = v19[25];
              v22 = *(v20 + 92);
              if (v21 == v22 || v21 == 4 && v22 == 2)
              {
                break;
              }
            }
          }

          v19 += 86;
          if (v19 == v18)
          {
            goto LABEL_21;
          }
        }
      }

      if (v19 == v18)
      {
        break;
      }

      result = 0;
      v25 = *v14++;
      v24 = v25;
      v26 = v19[23];
      v27 = *(v25 + 84);
      if (v26 >= v27)
      {
        v26 = v27;
      }

      *(v24 + 84) = v26;
      v16 = 1;
      if (v14 == v15)
      {
        return result;
      }
    }

LABEL_21:
    ++v14;
  }

  while (v14 != v15);
  if (v16)
  {
    return 0;
  }

LABEL_35:
  if (ZinMirUnitGraph::RemoveNode(a2, a4))
  {
    return 0;
  }

  return 3;
}

uint64_t ZinLargeStridePoolTransform::Run(uint64_t a1, uint64_t a2, ZinMirUnit **a3, int64x2_t **a4)
{
  if (*(a1 + 176) == 1)
  {
    return ZinLargeStridePoolTransform::RunLargeStridePoolExcludePadding(a1, a2, a4, a3);
  }

  else
  {
    return ZinLargeStridePoolTransform::RunLargeStridePool(a1, a2, a4, a3);
  }
}

BOOL ZinLargeStridePoolTransform::operator==(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = (*(*a1 + 40))(a1);
  if (v4 != (*(*a2 + 40))(a2))
  {
    return 0;
  }

  result = ZinIrPoolUnitInfo::operator==((a1 + 8), (a2 + 8));
  if (result)
  {
    return a1[176] == a2[176];
  }

  return result;
}

BOOL ZinIrPoolUnitInfo::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 80) != *(a2 + 80))
  {
    return 0;
  }

  if (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112) || *(a1 + 116) != *(a2 + 116) || *(a1 + 120) != *(a2 + 120))
  {
    return 0;
  }

  result = ZinIrPadding::operator==((a1 + 124), (a2 + 124));
  if (!result)
  {
    return result;
  }

  return *(a1 + 148) == *(a2 + 148) && *(a1 + 152) == *(a2 + 152) && *(a1 + 156) == *(a2 + 156) && *(a1 + 160) == *(a2 + 160) && *(a1 + 72) == *(a2 + 72);
}

uint64_t ZinIrPerf::IsValidPerfInfo(ZinIrPerf *this, const ZinANELayer *a2)
{
  if (*(this + 8) >= 0.0 && *(this + 7) >= 0.0 && *(this + 9) >= 0.0 && *(this + 10) >= 0.0 && *(this + 11) >= 0.0)
  {
    v11 = *(this + 4);
    if (!*(v11 + 552) || !*(v11 + 472))
    {
      v41 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v41)
      {
        ZinIrPerf::IsValidPerfInfo(v41, v42, v43, v44, v45, v46, v47, v48);
      }

      return 3;
    }

    v12 = *(this + 29);
    v13 = *(this + 30);
    if (v12 == v13)
    {
      v49 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v49)
      {
        ZinIrPerf::IsValidPerfInfo(v49, v50, v51, v52, v53, v54, v55, v56);
      }

      return 3;
    }

    v14 = *(this + 35);
    v15 = *(this + 36);
    if (v14 == v15)
    {
      v57 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v57)
      {
        ZinIrPerf::IsValidPerfInfo(v57, v58, v59, v60, v61, v62, v63, v64);
      }

      return 3;
    }

    v16 = *(this + 29);
    do
    {
      if (v16[1])
      {
        v17 = v16[4] == 0;
      }

      else
      {
        v17 = 1;
      }

      if (v17 || v16[2] == 0 || *v16 == 0 || v16[3] == 0)
      {
        v65 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v65)
        {
          ZinIrPerf::IsValidPerfInfo(v65, v66, v67, v68, v69, v70, v71, v72);
        }

        return 3;
      }

      v16 += 5;
    }

    while (v16 != v13);
    v21 = *(this + 32);
    v22 = *(this + 33);
    if (v21 == v22)
    {
      v73 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v73)
      {
        ZinIrPerf::IsValidPerfInfo(v73, v74, v75, v76, v77, v78, v79, v80);
      }

      return 3;
    }

    v23 = *(this + 32);
    do
    {
      if (!*v23)
      {
        v81 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v81)
        {
          ZinIrPerf::IsValidPerfInfo(v81, v82, v83, v84, v85, v86, v87, v88);
        }

        return 3;
      }

      ++v23;
    }

    while (v23 != v22);
    if (0xCCCCCCCCCCCCCCCDLL * (v13 - v12) != v22 - v21)
    {
      v89 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v89)
      {
        ZinIrPerf::IsValidPerfInfo(v89, v90, v91, v92, v93, v94, v95, v96);
      }

      return 3;
    }

    v24 = *(this + 35);
    do
    {
      if (v24[1])
      {
        v25 = v24[4] == 0;
      }

      else
      {
        v25 = 1;
      }

      if (v25 || v24[2] == 0 || *v24 == 0 || v24[3] == 0)
      {
        v97 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v97)
        {
          ZinIrPerf::IsValidPerfInfo(v97, v98, v99, v100, v101, v102, v103, v104);
        }

        return 3;
      }

      v24 += 5;
    }

    while (v24 != v15);
    v29 = *(this + 38);
    v30 = *(this + 39);
    if (v29 == v30)
    {
      v105 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v105)
      {
        ZinIrPerf::IsValidPerfInfo(v105, v106, v107, v108, v109, v110, v111, v112);
      }

      return 3;
    }

    v31 = 0xCCCCCCCCCCCCCCCDLL * (v15 - v14);
    if (v31 != *(this + 13))
    {
      v113 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v113)
      {
        ZinIrPerf::IsValidPerfInfo(v113, v114, v115, v116, v117, v118, v119, v120);
      }

      return 3;
    }

    if (v31 != (v30 - v29) >> 2)
    {
      v121 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v121)
      {
        ZinIrPerf::IsValidPerfInfo(v121, v122, v123, v124, v125, v126, v127, v128);
      }

      return 3;
    }

    if (!*(this + 42) || !*(this + 45) || !*(this + 43) || !*(this + 41) || !*(this + 44))
    {
      v129 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v129)
      {
        ZinIrPerf::IsValidPerfInfo(v129, v130, v131, v132, v133, v134, v135, v136);
      }

      return 3;
    }

    if (!*(this + 26))
    {
      v137 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v137)
      {
        ZinIrPerf::IsValidPerfInfo(v137, v138, v139, v140, v141, v142, v143, v144);
      }

      return 3;
    }

    if (!*(this + 27))
    {
      v145 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v145)
      {
        ZinIrPerf::IsValidPerfInfo(v145, v146, v147, v148, v149, v150, v151, v152);
      }

      return 3;
    }

    if (!*(this + 28))
    {
      v153 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v153)
      {
        ZinIrPerf::IsValidPerfInfo(v153, v154, v155, v156, v157, v158, v159, v160);
      }

      return 3;
    }

    if (!*(this + 23))
    {
      v161 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v161)
      {
        ZinIrPerf::IsValidPerfInfo(v161, v162, v163, v164, v165, v166, v167, v168);
      }

      return 3;
    }

    if (!*(this + 24))
    {
      v169 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v169)
      {
        ZinIrPerf::IsValidPerfInfo(v169, v170, v171, v172, v173, v174, v175, v176);
      }

      return 3;
    }

    if (!*(this + 25))
    {
      v177 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v177)
      {
        ZinIrPerf::IsValidPerfInfo(v177, v178, v179, v180, v181, v182, v183, v184);
      }

      return 3;
    }

    if (!*(this + 19))
    {
      v185 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v185)
      {
        ZinIrPerf::IsValidPerfInfo(v185, v186, v187, v188, v189, v190, v191, v192);
      }

      return 3;
    }

    if (!*(this + 92))
    {
      v193 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v193)
      {
        ZinIrPerf::IsValidPerfInfo(v193, v194, v195, v196, v197, v198, v199, v200);
      }

      return 3;
    }

    v32 = 0;
    if (v31 <= 1)
    {
      v31 = 1;
    }

    do
    {
      if (!(*(*(this + 12) + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) & (1 << v32) | *(this + v32 + 16)))
      {
        v201 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v201)
        {
          ZinIrPerf::IsValidPerfInfo(v201, v202, v203, v204, v205, v206, v207, v208);
        }

        return 3;
      }

      ++v32;
    }

    while (v31 != v32);
    if ((*(this + 120) & 1) == 0 && !*(this + 18))
    {
      v226 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v226)
      {
        ZinIrPerf::IsValidPerfInfo(v226, v227, v228, v229, v230, v231, v232, v233);
      }

      return 3;
    }

    if (ZinIrOpLayer::IsNELayer(a2))
    {
      if (*(this + 94))
      {
        if (*(this + 97))
        {
          goto LABEL_73;
        }

        v258 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v258)
        {
          ZinIrPerf::IsValidPerfInfo(v258, v259, v260, v261, v262, v263, v264, v265);
        }
      }

      else
      {
        v234 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v234)
        {
          ZinIrPerf::IsValidPerfInfo(v234, v235, v236, v237, v238, v239, v240, v241);
        }
      }
    }

    else
    {
LABEL_73:
      if (*(this + 536) == 1 && !*(this + 64))
      {
        v250 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v250)
        {
          ZinIrPerf::IsValidPerfInfo(v250, v251, v252, v253, v254, v255, v256, v257);
        }

        return 3;
      }

      if (*(this + 21) < 2uLL || *(this + 20) < 2uLL)
      {
        if (*(this + 652) != 1 || *(this + 664) != 1)
        {
          v217 = *(this + 104);
          if (*(*(this + 4) + 1649))
          {
            if (v217 >= 4)
            {
              v218 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              if (v218)
              {
                ZinIrPerf::IsValidPerfInfo(v218, v219, v220, v221, v222, v223, v224, v225);
              }

              return 3;
            }

            if (v217 || (*(this + 840) & 1) != 0)
            {
              ZinChannelAssignment::ZinChannelAssignment(v301, *(this + 94) << (v217 + (*(this + 840) & 1u)), *(this + 97), *(this + 42) / *(this + 20), (1 << (v217 + (*(this + 840) & 1))));
              v266 = v303 == 0 ? v302 : v302 + 1;
              if (v266 >= 2)
              {
                v267 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                if (v267)
                {
                  ZinIrPerf::IsValidPerfInfo(v267, v268, v269, v270, v271, v272, v273, v274);
                }

                return 3;
              }
            }
          }

          else if (v217 || *(this + 840) == 1)
          {
            v242 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (v242)
            {
              ZinIrPerf::IsValidPerfInfo(v242, v243, v244, v245, v246, v247, v248, v249);
            }

            return 3;
          }

          v275 = *(this + 632);
          if (v275 != 1)
          {
            goto LABEL_153;
          }

          if ((*(this + 610) & 1) == 0)
          {
            v284 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (v284)
            {
              ZinIrPerf::IsValidPerfInfo(v284, v285, v286, v287, v288, v289, v290, v291);
            }

            return 3;
          }

          v276 = *(this + 157);
          if (v276 < 0.0 || v276 > 1.0)
          {
            v292 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (!v292)
            {
              return 3;
            }
          }

          else
          {
LABEL_153:
            v277 = 0;
            v278 = 1;
            while (1)
            {
              v279 = v278;
              if (*(this + 8 * v277 + 616) == 1)
              {
                if ((*(this + v277 + 608) & 1) == 0)
                {
                  v292 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  if (!v292)
                  {
                    return 3;
                  }

                  goto LABEL_178;
                }

                if ((v275 & 1) == 0)
                {
                  std::__throw_bad_optional_access[abi:ne200100]();
                }

                v280 = *(this + 157);
                if (v280 < 0.0 || v280 > 1.0)
                {
                  break;
                }
              }

              v278 = 0;
              v277 = 1;
              if ((v279 & 1) == 0)
              {
                if (*(this + 640) != 1)
                {
                  return 0;
                }

                v282 = *(this + 159);
                if (v282 >= 0.0 && v282 <= 1.0)
                {
                  return 0;
                }

                v292 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                if (!v292)
                {
                  return 3;
                }

                goto LABEL_178;
              }
            }

            v292 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (!v292)
            {
              return 3;
            }
          }

LABEL_178:
          ZinIrPerf::IsValidPerfInfo(v292, v293, v294, v295, v296, v297, v298, v299);
          return 3;
        }

        v209 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v209)
        {
          ZinIrPerf::IsValidPerfInfo(v209, v210, v211, v212, v213, v214, v215, v216);
        }
      }

      else
      {
        v33 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v33)
        {
          ZinIrPerf::IsValidPerfInfo(v33, v34, v35, v36, v37, v38, v39, v40);
        }
      }
    }
  }

  else
  {
    v2 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v2)
    {
      ZinIrPerf::IsValidPerfInfo(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return 3;
}

uint64_t ZinIrPerf::CalculatePerfDescriptor(ZinIrPerf *this, ZinPerfDescriptor *a2)
{
  v3 = *(this + 44);
  if (v3 > 4)
  {
    if (v3 <= 6)
    {
      if (v3 == 5)
      {
        ZinEnginePerf::ZinEnginePerf(v15, this);
        v15[0] = &unk_1F19DD2C0;
      }

      else
      {
        ZinEnginePerf::ZinEnginePerf(v15, this);
        v15[0] = &unk_1F19F4308;
      }

      ZinNEPerf::CalculatePerf(v15, a2);
      goto LABEL_23;
    }

    switch(v3)
    {
      case 7:
        return 0;
      case 8:
        ZinEnginePerf::ZinEnginePerf(v15, this);
        v15[0] = &unk_1F19F43A8;
        ZinNEPerf::CalculatePerf(v15, a2);
        goto LABEL_23;
      case 9:
        ZinEnginePerf::ZinEnginePerf(v15, this);
        v15[0] = &unk_1F19C6158;
        ZinNEPerf::CalculatePerf(v15, a2);
LABEL_23:
        v5 = v4;
        ZinEnginePerf::~ZinEnginePerf(v15);
        return v5;
    }
  }

  else
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        ZinEnginePerf::ZinEnginePerf(v15, this);
        v16 = 0;
        v15[0] = &unk_1F19DC748;
        ZinPEPerf::CalculatePerf(v15, a2);
      }

      else if (v3 == 3)
      {
        ZinEnginePerf::ZinEnginePerf(v15, this);
        v16 = 0;
        v15[0] = &unk_1F19E1A58;
        ZinPEPerf::CalculatePerf(v15, a2);
      }

      else
      {
        ZinEnginePerf::ZinEnginePerf(v15, this);
        v15[0] = &unk_1F19D3F68;
        ZinNEPerf::CalculatePerf(v15, a2);
      }

      goto LABEL_23;
    }

    if (!v3)
    {
      ZinEnginePerf::ZinEnginePerf(v15, this);
      v16 = 0;
      v15[0] = &unk_1F19ED828;
      ZinPEPerf::CalculatePerf(v15, a2);
      goto LABEL_23;
    }

    if (v3 == 1)
    {
      ZinEnginePerf::ZinEnginePerf(v15, this);
      v16 = 0;
      v15[0] = &unk_1F19E6E48;
      ZinPEPerf::CalculatePerf(v15, a2);
      goto LABEL_23;
    }
  }

  v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v7)
  {
    ZinIrPerf::CalculatePerfDescriptor(v7, v8, v9, v10, v11, v12, v13, v14);
  }

  return 3;
}

uint64_t ZinIrPerf::TranslateOpcode(uint64_t a1, int a2)
{
  v2 = a2 - 89;
  if ((a2 - 89) > 0xC || ((0x1F1Fu >> v2) & 1) == 0)
  {
    return 3;
  }

  result = 0;
  *(a1 + 176) = dword_1A75D6384[v2];
  return result;
}

uint64_t ZinIrPerf::ValidatePerfAnalysisMode(ZinIrPerf *this, const ZinANELayer *a2, char a3)
{
  v4 = *(this + 40);
  v5 = *(this + 41);
  v6 = *(this + 42);
  v7 = *(this + 46);
  v8 = *(this + 47);
  v9 = *(this + 49);
  if ((v7 & 1) != 0 && (a3 & 1) == 0)
  {
    MemoryPools = ZinIrContext::GetMemoryPools(a2);
    if (*MemoryPools == MemoryPools[1] || *(*(a2 + 11) + 8) != 90 && (OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(a2), *OutgoingLayers == OutgoingLayers[1]))
    {
      if (!ZinIrOpLayer::IsEndNode(a2))
      {
        v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v32)
        {
          ZinIrPerf::ValidatePerfAnalysisMode(v32, v33, v34, v35, v36, v37, v38, v39);
        }

        return 3;
      }
    }
  }

  if (v8)
  {
    v12 = ZinIrContext::GetMemoryPools(a2);
    if (*v12 == v12[1] || *(*(a2 + 11) + 8) != 90 && (v13 = ZinIrOpLayer::GetOutgoingLayers(a2), *v13 == v13[1]))
    {
      if (!ZinIrOpLayer::IsEndNode(a2))
      {
        v14 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (v14)
        {
          ZinIrPerf::ValidatePerfAnalysisMode(v14, v15, v16, v17, v18, v19, v20, v21);
        }

        return 3;
      }
    }

    goto LABEL_15;
  }

  if (v7)
  {
LABEL_15:
    if ((v6 & 1) == 0 || (v5 & 1) == 0 || (v4 & 1) == 0)
    {
      v24 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v24)
      {
        ZinIrPerf::ValidatePerfAnalysisMode(v24, v25, v26, v27, v28, v29, v30, v31);
      }

      return 3;
    }
  }

  if ((v9 & 1) == 0)
  {
    return 0;
  }

  v22 = ZinIrContext::GetMemoryPools(a2);
  if (*v22 != v22[1])
  {
    return 0;
  }

  v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (v40)
  {
    ZinIrPerf::ValidatePerfAnalysisMode(v40, v41, v42, v43, v44, v45, v46, v47);
  }

  return 3;
}

uint64_t ZinIrPerf::ValidateDefaultPerfInfo(ZinIrPerf *this, const ZinANELayer *a2)
{
  v4 = ZinIrPerf::ValidatePerfInfo(this, a2);
  if (v4)
  {
    v5 = v4;
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      ZinIrPerf::ValidateDefaultPerfInfo(v6, v7, v8, v9, v10, v11, v12, v13);
    }

    return v5;
  }

  if (ZinIrPerf::IsValidPerfInfo(this, a2))
  {
    return 3;
  }

  if (!ZinIrOpLayer::IsNELayer(a2))
  {
    return 0;
  }

  return ZinIrPerf::GetNEWorkUnitShapes(this);
}

uint64_t ZinIrPerf::ValidatePerfInfo(ZinIrPerf *this, const ZinANELayer *a2)
{
  v4 = ZinIrPerf::TranslateOpcode(this, *(*(a2 + 11) + 8));
  if (v4)
  {
    v5 = v4;
    v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v6)
    {
      ZinIrPerf::ValidatePerfInfo(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    v31 = &v32;
    v32 = 0;
    v33 = 0;
    v34 = 0uLL;
    v35 = 0;
    LOBYTE(v37) = 0;
    DWORD1(v37) = -1082130432;
    WORD4(v37) = 0;
    BYTE10(v37) = 0;
    *&v38 = 1;
    BYTE8(v38) = 0;
    v39 = vdupq_n_s64(1uLL);
    *&v40[8] = v39;
    *&v40[24] = 1;
    *v41 = 0;
    *&v41[8] = xmmword_1A75A3B10;
    *&v41[24] = 0;
    v42 = this + 56;
    v14 = this + 688;
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 680, *(this + 86));
    v15 = v32;
    *(this + 85) = &v32;
    *(this + 86) = v15;
    v16 = v33;
    *(this + 87) = v33;
    if (v16)
    {
      v15[2] = v14;
      v31 = &v32;
      v32 = 0;
      v33 = 0;
    }

    else
    {
      *(this + 85) = v14;
    }

    v17 = *(this + 88);
    if (v17)
    {
      *(this + 89) = v17;
      operator delete(v17);
    }

    v18 = v36;
    *(this + 90) = v35;
    *(this + 44) = v34;
    v35 = 0;
    v34 = 0uLL;
    *(this + 91) = v18;
    v19 = *v41;
    *(this + 50) = *&v40[16];
    *(this + 51) = v19;
    *(this + 52) = *&v41[16];
    *(this + 106) = v42;
    v20 = v38;
    *(this + 46) = v37;
    *(this + 47) = v20;
    v21 = *v40;
    *(this + 48) = v39;
    *(this + 49) = v21;
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v31, v32);
    *(this + 107) = 1;
    *(this + 108) = 1;
    *(this + 109) = this + 56;
    ZinIrPerf::ConfigureOutputTensorInfo(this, a2);
    ZinIrPerf::ConfigureInputTensorInfo(this, a2);
    ZinIrPerf::ConfigurePerfInfoKernel(this, a2);
    v5 = ZinIrPerf::ConfigurePerfInfo(this, a2);
    if (v5)
    {
      v22 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v22)
      {
        ZinIrPerf::ValidatePerfInfo(v22, v23, v24, v25, v26, v27, v28, v29);
      }
    }

    else
    {
      ZinIrPerf::ValidateTexturePerfInfo(this, a2);
    }
  }

  return v5;
}

uint64_t ZinIrPerf::GetNEWorkUnitShapes(ZinIrPerf *this)
{
  v12 = 0;
  v13 = 0;
  v11 = &v12;
  v2 = (this + 680);
  v3 = this + 688;
  v14 = 0u;
  v15 = 0u;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 680, *(this + 86));
  v4 = v12;
  *(this + 85) = &v12;
  *(this + 86) = v4;
  v5 = v13;
  *(this + 87) = v13;
  if (v5)
  {
    v4[2] = v3;
    v11 = &v12;
    v12 = 0;
    v13 = 0;
    v4 = 0;
  }

  else
  {
    *v2 = v3;
  }

  v6 = *(this + 88);
  if (v6)
  {
    *(this + 89) = v6;
    operator delete(v6);
    v4 = v12;
  }

  *(this + 44) = v14;
  v7 = *(&v15 + 1);
  *(this + 90) = v15;
  *&v15 = 0;
  v14 = 0uLL;
  *(this + 91) = v7;
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v11, v4);
  v8 = 1;
  if ((*(this + 52) & 1) == 0)
  {
    if (*(this + 48) & 1) != 0 || (*(this + 54))
    {
      v8 = 1;
    }

    else
    {
      v8 = *(this + 53);
    }
  }

  if (NERasterization::RasterizeWorkUnit(v2, this + 88, this + 91, *(this + 99), *(this + 101), *(this + 100), *(this + 19), *(this + 744), *(this + 63), *(this + 62), **(this + 32), v10, *(this + 745), *(this + 104), *(this + 840), *(this + 4), *(this + 71), *(this + 70), *(this + 72), v8 & 1, 1))
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

uint64_t ZinIrPerf::ConfigureOutputTensorInfo(ZinIrPerf *this, const ZinANELayer *a2)
{
  result = (*(*a2 + 40))(a2, 0);
  v5 = result;
  if (*(this + 676) == 1)
  {
    *(this + 676) = 0;
  }

  if (result)
  {
    v6 = *(result + 64);
    v7 = *(result + 80);
    *(this + 45) = *(result + 96);
    *(this + 328) = v6;
    *(this + 344) = v7;
    *(this + 92) = *(result + 104);
    *(this + 58) = (*(*a2 + 400))(a2, 0);
    *(this + 61) = (*(*a2 + 400))(a2, 1);
    *(this + 62) = (*(*a2 + 400))(a2, 3);
    *(this + 63) = (*(*a2 + 400))(a2, 4);
    if (ZinIrOpLayer::IsPELayer(a2) || *(a2 + 65))
    {
      *(this + 59) = (*(*a2 + 400))(a2, 2);
      *(this + 480) = 1;
    }

    v8 = *(v5 + 20);
    if (v8)
    {
      v9 = *(v8 + 40);
      if (v9 != *(v8 + 48))
      {
        if (*v9)
        {
          *(this + 120) = ZinIrSymbol::GetMemType(*v9) == 2;
        }
      }
    }

    result = ZinIrTensor::GetInterchangeDescriptor(v5);
    if ((result & 0x1000000) != 0)
    {
      if ((*(this + 676) & 1) == 0)
      {
        *(this + 676) = 1;
      }

      *(this + 167) = result & 0xFFFFFF;
      *(this + 168) = 1061158912;
    }
  }

  return result;
}

void ZinIrPerf::ConfigureInputTensorInfo(uint64_t this, const ZinANELayer *a2)
{
  if (*(a2 + 21))
  {
    MemoryPools = ZinIrContext::GetMemoryPools(a2);
    if (MemoryPools[1] != *MemoryPools)
    {
      ZinIrPerf::InitializeDMASrcInfo(this, a2);
      ZinIrPerf::InitializeL2SrcInfo(this, a2);
      v6 = ZinIrContext::GetMemoryPools(a2);
      __p[1] = 0;
      *&v59 = 0;
      __p[0] = 0;
      if (v6[1] == *v6)
      {
        *(this + 660) = 0;
        *(this + 644) = 0u;
      }

      else
      {
        v7 = v6;
        v8 = 0;
        do
        {
          InputTensor = ZinIrOpLayer::GetInputTensor(a2, v8);
          if (!(*(*a2 + 144))(a2) || ((*(*a2 + 224))(a2, InputTensor) & 1) == 0)
          {
            v11 = *(InputTensor + 152);
            v12 = __p[1];
            if (__p[1] >= v59)
            {
              v14 = (__p[1] - __p[0]) >> 3;
              if ((v14 + 1) >> 61)
              {
                std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
              }

              v15 = (v59 - __p[0]) >> 2;
              if (v15 <= v14 + 1)
              {
                v15 = v14 + 1;
              }

              if (v59 - __p[0] >= 0x7FFFFFFFFFFFFFF8)
              {
                v16 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v16 = v15;
              }

              if (v16)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>(__p, v16);
              }

              v2 = 0;
              v17 = (8 * v14);
              *v17 = v11;
              v13 = (8 * v14 + 8);
              v18 = v17 - (__p[1] - __p[0]);
              memcpy(v18, __p[0], __p[1] - __p[0]);
              v19 = __p[0];
              __p[0] = v18;
              __p[1] = v13;
              *&v59 = 0;
              if (v19)
              {
                operator delete(v19);
              }
            }

            else
            {
              *__p[1] = v11;
              v13 = v12 + 8;
            }

            __p[1] = v13;
          }

          ++v8;
        }

        while (v8 < (v7[1] - *v7) >> 3);
        v20 = __p[0];
        v21 = __p[1];
        *(this + 652) = 0;
        *(this + 660) = 0;
        *(this + 644) = 0;
        if (v21 != v20)
        {
          v22 = 0;
          v23 = 1;
          while (1)
          {
            v57 = 0;
            if (!ZinMemSourceIndexTranslator::GetDMASrcIndex(a2, v22, &v57, v10))
            {
              break;
            }

LABEL_39:
            v22 = v23;
            v20 = __p[0];
            ++v23;
            if (v22 >= (__p[1] - __p[0]) >> 3)
            {
              goto LABEL_40;
            }
          }

          v24 = ZinIrOpLayer::GetInputTensor(a2, v22);
          if (v24 == ZinANELayer::GetTextureDataInput(a2))
          {
            v30 = RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a2 + 392);
            v31 = (*(*v30 + 40))(v30, 0);
            v32 = *(this + 280) + 40 * v57;
            v33 = *(v31 + 96);
            v34 = *(v31 + 80);
            *v32 = *(v31 + 64);
            *(v32 + 16) = v34;
            *(v32 + 32) = v33;
            v35 = RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a2 + 392);
            v29 = (*(*v35 + 40))(v35, 0);
            v25 = v57;
          }

          else
          {
            v25 = v57;
            v26 = *(this + 280) + 40 * v57;
            v27 = *(v24 + 96);
            v28 = *(v24 + 80);
            *v26 = *(v24 + 64);
            *(v26 + 16) = v28;
            *(v26 + 32) = v27;
            v29 = v24;
          }

          *(*(this + 304) + 4 * v25) = *(v29 + 104);
          v36 = *(v24 + 160);
          if (v36 && (v37 = *(v36 + 40), v37 != *(v36 + 48)) && *v37)
          {
            MemType = ZinIrSymbol::GetMemType(*v37);
            v39 = (*(this + 96) + 8 * (v57 >> 6));
            v40 = 1 << v57;
            if (MemType == 2)
            {
              v41 = *v39 | v40;
              goto LABEL_34;
            }
          }

          else
          {
            v39 = (*(this + 96) + 8 * (v25 >> 6));
            v40 = 1 << v25;
          }

          v41 = *v39 & ~v40;
LABEL_34:
          *v39 = v41;
          InterchangeDescriptor = ZinIrTensor::GetInterchangeDescriptor(v24);
          if ((InterchangeDescriptor & 0x1000000) != 0)
          {
            if (v57 >= 2)
            {
              std::__throw_out_of_range[abi:ne200100]("array::at");
            }

            v43 = this + 644 + 12 * v57;
            if ((*(v43 + 8) & 1) == 0)
            {
              *(v43 + 8) = 1;
            }

            v2 = v2 & 0xFF000000 | InterchangeDescriptor & 0xFFFFFF;
            *v43 = v2;
            *(v43 + 4) = 1061158912;
          }

          goto LABEL_39;
        }

LABEL_40:
        if (v20)
        {
          __p[1] = v20;
          operator delete(v20);
        }
      }

      v44 = ZinIrContext::GetMemoryPools(a2);
      if (v44[1] != *v44)
      {
        v45 = v44;
        v46 = 0;
        v47 = 1;
        v48 = MEMORY[0x1E69E9C10];
        do
        {
          LODWORD(v57) = 0;
          if (ZinMemSourceIndexTranslator::GetL2SrcType(a2, v46, &v57) && os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            ZinIrPerf::ConfigureInputTensorInfo(buf, &buf[1]);
          }

          v49 = v57;
          if (v57 == 2)
          {
            goto LABEL_58;
          }

          v50 = v57 != 0;
          *(*(this + 256) + 4 * (v49 != 0)) = ZinMemSourceIndexTranslator::GetL2SourceFormat(a2, v46);
          v51 = ZinIrOpLayer::GetInputTensor(a2, v46);
          v52 = *(v51 + 80);
          *__p = *(v51 + 64);
          v59 = v52;
          v60 = *(v51 + 96);
          if (RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a2 + 392) && *(a2 + 47) == v50)
          {
            v53 = RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a2 + 392);
          }

          else
          {
            if (v49 || *(*(a2 + 11) + 8) != 89 || !RawOrShared<ZinIndexLayer>::unwrap_const_ptr(a2 + 816))
            {
              goto LABEL_57;
            }

            v53 = RawOrShared<ZinIndexLayer>::unwrap_const_ptr(a2 + 816);
          }

          v54 = (*(*v53 + 40))(v53, 0);
          v55 = *(v54 + 80);
          *__p = *(v54 + 64);
          v59 = v55;
          v60 = *(v54 + 96);
LABEL_57:
          v56 = *(this + 232) + 40 * v50;
          *v56 = *__p;
          *(v56 + 16) = v59;
          *(v56 + 32) = v60;
LABEL_58:
          v46 = v47++;
        }

        while (v46 < (v45[1] - *v45) >> 3);
      }
    }
  }
}

void sub_1A69FF798(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrPerf::ConfigurePerfInfoKernel(ZinIrPerf *this, const ZinANELayer *a2)
{
  *(this + 396) = 0;
  v4 = *(this + 44);
  if (v4 == 5 || v4 == 2)
  {
    if (ZinIrOpLayer::IsNELayer(a2))
    {
      (*(*a2 + 608))(&v25, a2, 0);
      v6 = v25 != 0;
    }

    else
    {
      v6 = 0;
      v25 = 0;
    }

    *(this + 396) = v6;
    IsNELayer = ZinIrOpLayer::IsNELayer(a2);
    v8 = 744;
    if (IsNELayer)
    {
      v8 = 760;
    }

    v9 = *(RawOrShared<ZinPoolLayer>::unwrap_const_ptr(a2 + v8) + 88);
    v10 = *(v9 + 16);
    v11 = *(v9 + 32);
    v12 = *(v9 + 80);
    v13 = *(v9 + 64);
    *(this + 52) = *(v9 + 24);
    *(this + 53) = v10;
    *(this + 54) = v11;
    v14 = *(v9 + 40);
    *&v15 = v14;
    *(&v15 + 1) = SHIDWORD(v14);
    *(this + 184) = v15;
    v16 = *(v9 + 48);
    *&v15 = v16;
    *(&v15 + 1) = SHIDWORD(v16);
    *(this + 200) = v15;
    v17 = *(v9 + 56);
    *&v15 = v17;
    *(&v15 + 1) = SHIDWORD(v17);
    *(this + 216) = v15;
    *(this + 372) = v13;
    *(this + 388) = v12;
    v18 = &v25;
    goto LABEL_12;
  }

  if (!ZinIrOpLayer::IsNELayer(a2))
  {
    v22 = vdupq_n_s64(1uLL);
    *(this + 25) = v22;
    *(this + 26) = v22;
    *(this + 54) = 1;
    *(this + 55) = 0x3FF0000000000000;
    *(this + 184) = v22;
    *(this + 200) = v22;
    *(this + 216) = v22;
    *(this + 380) = 0;
    *(this + 388) = 0;
    *(this + 372) = 0;
    goto LABEL_13;
  }

  if (*(this + 44) != 4)
  {
    if (ZinIrOpLayer::IsNELayer(a2))
    {
      (*(*a2 + 608))(v24, a2, 0);
      v23 = v24[0];
    }

    else
    {
      v23 = 0;
      v24[0] = 0;
    }

    ZinIrPerf::ConfigurePerfInfoNEKernel(this, v23);
    v18 = v24;
LABEL_12:
    std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](v18);
    goto LABEL_13;
  }

  if (RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760) && *(RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760) + 160))
  {
    v21 = RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760);
    ZinIrPerf::ConfigurePerfInfoNEKernel(this, *(v21 + 160));
  }

LABEL_13:
  result = ZinIrOpLayer::IsNELayer(a2);
  if (result)
  {
    if (*(this + 43) == 1)
    {
      ZinIrPerf::AddKerneltoKernelNameSet(this, a2, *(*(this + 4) + 4));
      result = ZinIrPerf::HasRewoundKernel(this, a2, *(*(this + 4) + 4));
      *(this + 736) = result;
    }
  }

  return result;
}

uint64_t ZinIrPerf::ConfigurePerfInfo(ZinIrPerf *this, const ZinANELayer *a2)
{
  if (!*(a2 + 65))
  {
    return 0;
  }

  ZinIrPerf::ConfigureMcacheInfo(this, a2);
  if (*(a2 + 65))
  {
    if (*(a2 + 21))
    {
      MemoryPools = ZinIrContext::GetMemoryPools(a2);
      if (MemoryPools[1] != *MemoryPools)
      {
        v5 = 0;
        do
        {
          if (!(*(*a2 + 144))(a2))
          {
            goto LABEL_10;
          }

          InputTensor = ZinIrOpLayer::GetInputTensor(a2, v5);
          (*(*a2 + 152))(&__p, a2);
          v8 = __p.n128_u64[0];
          if (__p.n128_u64[1])
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](__p.n128_u64[1]);
          }

          if (InputTensor != v8)
          {
LABEL_10:
            __p.n128_u64[0] = 0;
            if (!ZinMemSourceIndexTranslator::GetDMASrcIndex(a2, v5, &__p, v6) && ((*(*(this + 12) + ((__p.n128_u64[0] >> 3) & 0x1FFFFFFFFFFFFFF8)) >> __p.n128_i8[0]) & 1) == 0)
            {
              v9 = *(*(a2 + 65) + 80 * __p.n128_u64[0] + 640);
              if (v9)
              {
                TensorDesc = ZinIrSymbol::Descriptor::GetTensorDesc((v9 + 216));
                EventTensor = ZinCollectiveCommunicationLayer::GetEventTensor(TensorDesc);
                *(this + __p.n128_u64[0] + 16) = EventTensor;
              }
            }
          }

          ++v5;
          v12 = ZinIrContext::GetMemoryPools(a2);
        }

        while (v5 < (v12[1] - *v12) >> 3);
      }
    }
  }

  v13 = *(a2 + 65);
  if ((*(this + 120) & 1) == 0)
  {
    v14 = *(v13 + 800);
    if (v14)
    {
      v15 = ZinIrSymbol::Descriptor::GetTensorDesc((v14 + 216));
      *(this + 18) = ZinCollectiveCommunicationLayer::GetEventTensor(v15);
      v13 = *(a2 + 65);
    }
  }

  if (MirInfoChannelAssignment::GetNumNeededNEs((v13 + 160)))
  {
    *(this + 19) = MirInfoChannelAssignment::GetNumNeededNEs((*(a2 + 65) + 160));
  }

  v16 = *(this + 46);
  if (*(this + 536) == 1)
  {
    *(this + 536) = 0;
  }

  if (v16 && (v17 = *(this + 3), v17[21]))
  {
    if (*(v17[65] + 1408) == 4)
    {
      __p.n128_u64[0] = **ZinIrOpLayer::GetOutgoingLayers(*(this + 3));
      v48 = 0;
      v18 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&__p);
      RawOrShared<ZinIrOpLayer>::update_this_if_shared(&__p, v18);
      v19 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&__p);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&__p);
      v20 = *(this + 536);
      *(this + 64) = v19;
      *(this + 130) = 1;
      *(this + 66) = 0;
      if ((v20 & 1) == 0)
      {
        *(this + 536) = 1;
      }
    }

    v46 = 0;
    if (ZinEngineLayerMirInfo::HasChainRead(v17[65], &v46))
    {
      v21 = v46 != 0;
      (*(*v17 + 544))(&__p, v17);
      v22 = *(*(__p.n128_u64[0] + 8 * v21) + 152);
      __p.n128_u64[1] = __p.n128_u64[0];
      operator delete(__p.n128_u64[0]);
      v23 = *(this + 536);
      *(this + 64) = v22;
      *(this + 130) = 0;
      *(this + 66) = 0;
      if ((v23 & 1) == 0)
      {
        *(this + 536) = 1;
      }
    }

    *(this + 70) = ZinIrTarget::GetCPUSubtype((v17[65] + 160));
    *(this + 71) = MirInfoChannelAssignment::GetOCGSize((v17[65] + 160));
    *(this + 72) = ZinMirL2Config::Tile::GetOverlapPadBottom((v17[65] + 160));
  }

  else
  {
    *(this + 72) = 0;
    *(this + 35) = 0u;
  }

  v25 = *(a2 + 65);
  if (v25)
  {
    if (*(this + 44) == 4 && *(this + 396) == 1 && *(this + 56) >= 2uLL && *(v25 + 1277) != 2)
    {
      *(this + 20) = *(v25 + 96);
      v26 = 1;
    }

    else
    {
      *(this + 20) = 1;
      v26 = *(v25 + 96);
    }

    *(this + 21) = v26;
    IsNELayer = ZinIrOpLayer::IsNELayer(a2);
    v28 = *(a2 + 65);
    if (IsNELayer)
    {
      *(this + 744) = v28[152];
      *(this + 745) = v28[154];
      *(this + 746) = v28[1279];
      ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(v28);
      *(this + 94) = MirInfoChannelAssignment::GetActiveNEPerCluster(ChannelAssignment);
      v30 = *(a2 + 65);
      *(this + 760) = *(v30 + 1278);
      *(this + 96) = *(v30 + 88);
      v31 = ZinEngineLayerMirInfo::GetChannelAssignment(v30);
      *(this + 97) = MirInfoChannelAssignment::GetOCGSize(v31);
      v32 = *(a2 + 65);
      *(this + 784) = *(v32 + 1277);
      *(this + 792) = vextq_s8(*(v32 + 120), *(v32 + 120), 8uLL);
      *(this + 101) = *(v32 + 112);
      v33 = ZinEngineLayerMirInfo::GetChannelAssignment(v32);
      *(this + 840) = MirInfoChannelAssignment::GetFatTileEnable(v33);
      v34 = ZinEngineLayerMirInfo::GetChannelAssignment(*(a2 + 65));
      CPUSubtype = ZinIrTarget::GetCPUSubtype(v34);
      result = 0;
      *(this + 104) = CPUSubtype;
      v36 = *(a2 + 65);
      *(this + 841) = *(v36 + 153);
      *(this + 745) = *(v36 + 154);
    }

    else
    {
      *(this + 107) = MirInfoChannelAssignment::GetNumNeededNEs((v28 + 180));
      OCGSize = MirInfoChannelAssignment::GetOCGSize((*(a2 + 65) + 180));
      result = 0;
      *(this + 108) = OCGSize;
    }
  }

  else
  {
    v37 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v37)
    {
      ZinIrPerf::ConfigurePerfInfo(v37, v38, v39, v40, v41, v42, v43, v44);
    }

    return 3;
  }

  return result;
}

uint64_t ZinIrPerf::ValidateTexturePerfInfo(ZinIrPerf *this, const ZinANELayer *a2)
{
  TELayer = ZinANELayer::GetTELayer(a2);
  if (TELayer)
  {
    v6 = *(TELayer + 176);
    HasTexturePassthroughOnC = ZinTextureLayerUtils::HasTexturePassthroughOnC(a2, v5);
    HasTexturePassthroughOnX = ZinTextureLayerUtils::HasTexturePassthroughOnX(a2, v8);
    if (*(this + 552) == 1)
    {
      *(this + 136) = v6;
      *(this + 548) = HasTexturePassthroughOnC;
      *(this + 549) = HasTexturePassthroughOnX;
    }

    else
    {
      v10 = 0x10000000000;
      if (!HasTexturePassthroughOnX)
      {
        v10 = 0;
      }

      v11 = 0x100000000;
      if (!HasTexturePassthroughOnC)
      {
        v11 = 0;
      }

      *(this + 68) = v11 | v10 | v6;
      *(this + 552) = 1;
    }
  }

  return 0;
}

uint64_t ZinIrPerf::ValidatePerfInfo(ZinIrPerf *this, const ZinANELayer *a2, const ZinCustomPerfInfo *a3)
{
  if (a2)
  {
    *(this + 3) = a2;
    if (a3)
    {
      if (ZinIrOpLayer::IsNELayer(a2))
      {

        return ZinIrPerf::ValidateNEPerfInfo(this, a2, a3);
      }

      else
      {

        return ZinIrPerf::ValidatePEPerfInfo(this, a2, a3);
      }
    }

    else
    {

      return ZinIrPerf::ValidateDefaultPerfInfo(this, a2);
    }
  }

  else
  {
    v7 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v7)
    {
      ZinIrPerf::ValidatePerfInfo(v7, v8, v9, v10, v11, v12, v13, v14);
    }

    return 3;
  }
}

uint64_t ZinIrPerf::ValidateNEPerfInfo(ZinIrPerf *this, const ZinANELayer *a2, const ZinNECustomPerfInfo *a3)
{
  v6 = ZinIrPerf::ValidatePerfInfo(this, a2);
  if (v6)
  {
    v7 = v6;
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      ZinIrPerf::ValidateNEPerfInfo(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    return v7;
  }

  ZinCommonPerfInfo::SetCommonPerfInfo((this + 56), a3, a2);
  ZinNEPerfInfo::SetNEPerfInfo((this + 680), a3);
  if (ZinIrPerf::IsValidPerfInfo(this, a2))
  {
    return 3;
  }

  return ZinIrPerf::GetNEWorkUnitShapes(this);
}

uint64_t ZinIrPerf::ValidatePEPerfInfo(ZinIrPerf *this, const ZinANELayer *a2, const ZinPECustomPerfInfo *a3)
{
  ZinIrPerf::ValidatePerfInfo(this, a2);
  ZinCommonPerfInfo::SetCommonPerfInfo((this + 56), a3, a2);
  if (*(a3 + 544) == 1)
  {
    *(this + 107) = *(a3 + 67);
  }

  if (*(a3 + 560) == 1)
  {
    *(this + 108) = *(a3 + 69);
  }

  return ZinIrPerf::IsValidPerfInfo(this, a2);
}

__n128 ZinCommonPerfInfo::SetCommonPerfInfo(ZinCommonPerfInfo *this, const ZinCustomPerfInfo *a2, const ZinANELayer *a3)
{
  v36 = this + 588;
  if (*(a2 + 104) == 1)
  {
    if (*(a2 + 208))
    {
      v6 = 2;
    }

    else
    {
      v6 = 1;
    }

    std::vector<ZinTensorDimensions>::resize(this + 22, v6);
    std::vector<float>::resize((this + 200), v6);
    v8 = 0;
    v39 = 0;
    v40 = 0;
    v38 = &v39;
    do
    {
      v37 = 0;
      if (!ZinMemSourceIndexTranslator::GetDMASrcIndex(a3, v8, &v37, v7))
      {
        std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(&v38, &v37, &v37);
      }

      v8 = (v8 + 1);
    }

    while (v6 != v8);
    v9 = v40;
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v38, v39);
    if (v6 < v9)
    {
      ZinAssertImpl("Perf model internal error: %s, %d", "SetCommonPerfInfo", 579);
    }

    std::vector<ZinTensorDimensions>::resize(this + 28, v9);
    std::vector<float>::resize((this + 248), v9);
    std::vector<BOOL>::resize(this + 40, v9, 0);
    v11 = 0;
    v12 = 0;
    v13 = (this + 72);
    v14 = a2 + 96;
    v15 = v36;
    do
    {
      v38 = v12;
      ZinMemSourceIndexTranslator::GetDMASrcIndex(a3, v12, &v38, v10);
      if (*(v14 - 48) == 1)
      {
        v17 = *(this + 22) + v11;
        v18 = *(v14 - 88);
        v19 = *(v14 - 72);
        *(v17 + 32) = *(v14 - 7);
        *v17 = v18;
        *(v17 + 16) = v19;
        v20 = *(this + 28) + 40 * v38;
        result = *(v14 - 88);
        v21 = *(v14 - 72);
        *(v20 + 32) = *(v14 - 7);
        *v20 = result;
        *(v20 + 16) = v21;
      }

      if (*(v14 - 36) == 1)
      {
        v22 = *(v14 - 10);
        if (IsFormatDMAConvertibleToFP16(v22))
        {
          v23 = 3;
        }

        else
        {
          v23 = v22;
        }

        *(*(this + 25) + 4 * v12) = v23;
        *(*(this + 31) + 4 * v38) = *(v14 - 10);
      }

      if (*(v14 - 31) == 1)
      {
        v24 = *(this + 5);
        v25 = v38 >> 6;
        v26 = 1 << v38;
        if (*(v14 - 32) == 1)
        {
          v27 = *(v24 + 8 * v25) | v26;
        }

        else
        {
          v27 = *(v24 + 8 * v25) & ~v26;
        }

        *(v24 + 8 * v25) = v27;
      }

      if (*(v14 - 16) == 1)
      {
        *v13 = *(v14 - 3);
      }

      if (*v14 == 1)
      {
        v28 = *(v14 - 1);
        if ((v15[8] & 1) == 0)
        {
          v15[8] = 1;
        }

        *v15 = v28;
      }

      ++v12;
      v15 += 12;
      ++v13;
      v11 += 40;
      v14 += 104;
    }

    while (v6 != v12);
  }

  if (*(a2 + 312))
  {
    if (*(a2 + 256) == 1)
    {
      result = *(a2 + 216);
      v29 = *(a2 + 232);
      *(this + 38) = *(a2 + 31);
      *(this + 17) = result;
      *(this + 18) = v29;
    }

    if (*(a2 + 268) == 1)
    {
      *(this + 78) = *(a2 + 66);
    }

    if (*(a2 + 273) == 1)
    {
      *(this + 64) = *(a2 + 272);
    }

    if (*(a2 + 288) == 1)
    {
      *(this + 11) = *(a2 + 35);
    }

    if (*(a2 + 304) == 1)
    {
      v30 = *(a2 + 37);
      if ((*(this + 620) & 1) == 0)
      {
        *(this + 620) = 1;
      }

      *(v36 + 3) = v30;
    }
  }

  if (*(a2 + 328) == 1)
  {
    *(this + 12) = *(a2 + 40);
  }

  if (*(a2 + 344) == 1)
  {
    v31 = (a2 + 336);
    if (*(this + 496) == 1)
    {
      v32 = *v31;
      *(this + 246) = *(a2 + 170);
      *(this + 122) = v32;
    }

    else
    {
      *(this + 61) = *v31;
      *(this + 496) = 1;
    }
  }

  if (*(a2 + 376) == 1)
  {
    v33 = *(this + 480);
    v34 = *(a2 + 46);
    result = *(a2 + 22);
    *(this + 456) = result;
    *(this + 59) = v34;
    if ((v33 & 1) == 0)
    {
      *(this + 480) = 1;
    }
  }

  if (*(a2 + 432) == 1)
  {
    *(this + 63) = *(a2 + 53);
  }

  if (*(a2 + 448) == 1)
  {
    *(this + 64) = *(a2 + 55);
  }

  if (*(a2 + 464) == 1)
  {
    *(this + 65) = *(a2 + 57);
  }

  if (*(a2 + 496) == 1)
  {
    result = *(a2 + 472);
    *(this + 68) = *(a2 + 61);
    *(this + 33) = result;
  }

  if (*(a2 + 512) == 1)
  {
    *(this + 14) = *(a2 + 63);
  }

  if (*(a2 + 528) == 1)
  {
    *(this + 13) = *(a2 + 65);
  }

  if (*(a2 + 420) == 1)
  {
    result = *(a2 + 24);
    v35 = *(a2 + 25);
    *(this + 146) = *(a2 + 104);
    *(this + 552) = result;
    *(this + 568) = v35;
  }

  return result;
}

void std::vector<BOOL>::resize(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *(a1 + 8);
  v5 = a2 - v4;
  if (a2 <= v4)
  {
    *(a1 + 8) = a2;
    return;
  }

  v7 = *(a1 + 16);
  v8 = v7 << 6;
  if (v7 << 6 < v5 || v4 > (v7 << 6) - v5)
  {
    v20 = 0;
    v21 = 0uLL;
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v7 << 7;
    if (v10 <= ((a2 + 63) & 0xFFFFFFFFFFFFFFC0))
    {
      v10 = (a2 + 63) & 0xFFFFFFFFFFFFFFC0;
    }

    if (v8 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(&v20, v11);
    v12 = *a1;
    v13 = *(a1 + 8);
    *&v21 = v13 + v5;
    v22 = v20;
    v23 = 0;
    std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>(&v18, v12, 0, &v12[v13 >> 6], v13 & 0x3F, &v22);
    v14 = v18;
    LODWORD(v15) = v19;
    v16 = *a1;
    *a1 = v20;
    v20 = v16;
    v17 = *(a1 + 8);
    *(a1 + 8) = v21;
    v21 = v17;
    if (v16)
    {
      operator delete(v16);
    }

    if (!a3)
    {
      goto LABEL_19;
    }

LABEL_16:
    v20 = v14;
    LODWORD(v21) = v15;
    std::__fill_n_BOOL[abi:ne200100]<true,std::vector<BOOL>>(&v20, v5);
    return;
  }

  v14 = (*a1 + 8 * (v4 >> 6));
  v15 = *(a1 + 8) & 0x3FLL;
  *(a1 + 8) = a2;
  if (a3)
  {
    goto LABEL_16;
  }

LABEL_19:
  v20 = v14;
  LODWORD(v21) = v15;
  std::__fill_n_BOOL[abi:ne200100]<false,std::vector<BOOL>>(&v20, v5);
}

void sub_1A6A006D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinNEPerfInfo::SetNEPerfInfo(ZinNEPerfInfo *this, const ZinNECustomPerfInfo *a2)
{
  if (*(a2 + 569) == 1)
  {
    *(this + 56) = *(a2 + 568);
  }

  if (*(a2 + 571) == 1)
  {
    *(this + 64) = *(a2 + 570);
  }

  if (*(a2 + 573) == 1)
  {
    *(this + 65) = *(a2 + 572);
  }

  if (*(a2 + 584) == 1)
  {
    *(this + 9) = *(a2 + 72);
  }

  if (*(a2 + 593) == 1)
  {
    *(this + 80) = *(a2 + 592);
  }

  if (*(a2 + 608) == 1)
  {
    *(this + 11) = *(a2 + 75);
  }

  if (*(a2 + 624) == 1)
  {
    *(this + 12) = *(a2 + 77);
  }

  if (*(a2 + 640) == 1)
  {
    *(this + 14) = *(a2 + 79);
  }

  if (*(a2 + 656) == 1)
  {
    *(this + 15) = *(a2 + 81);
  }

  if (*(a2 + 672) == 1)
  {
    *(this + 16) = *(a2 + 83);
  }

  if (*(a2 + 684) == 1)
  {
    *(this + 15) = *(a2 + 170);
  }

  if (*(a2 + 692) == 1)
  {
    *(*(this + 21) + 341) = 1;
    *(*(this + 21) + 384) = ZinGetWeightElementSizeInBytes(*(a2 + 172));
    *(this + 34) = *(a2 + 172);
  }

  if (*(a2 + 697) == 1)
  {
    *(this + 66) = *(a2 + 696);
  }

  if (*(a2 + 712) == 1)
  {
    *(this + 19) = *(a2 + 88);
  }

  if (*(a2 + 721) == 1)
  {
    *(this + 160) = *(a2 + 720);
  }

  if (*(a2 + 723) == 1)
  {
    *(this + 161) = *(a2 + 722);
  }

  if (*(a2 + 537) == 1)
  {
    v4 = *(a2 + 69);
    v5 = *(a2 + 68);
    if (v4 != v5 && this + 24 != a2 + 544)
    {

      std::vector<WorkUnit>::__assign_with_size[abi:ne200100]<WorkUnit*,WorkUnit*>(this + 3, v5, v4, 0xCCCCCCCCCCCCCCCDLL * ((v4 - v5) >> 4));
    }
  }
}

void ZinIrPerf::InitializeL2SrcInfo(ZinIrPerf *this, const ZinANELayer *a2)
{
  (*(*a2 + 544))(&v8, a2);
  v3 = v8;
  v4 = v9;
  if (v8)
  {
    v9 = v8;
    operator delete(v8);
  }

  v6 = *(this + 29);
  v5 = (this + 232);
  v7 = (v4 - v3) >> 3;
  v5->__end_ = v6;
  v5[1].__end_ = v5[1].__begin_;
  std::vector<ZinTensorDimensions>::resize(&v5->__begin_, v7);
  std::vector<float>::resize(v5 + 1, v7);
}

void ZinIrPerf::InitializeDMASrcInfo(ZinIrPerf *this, const ZinANELayer *a2)
{
  DMAInputCount = ZinMemSourceIndexTranslator::GetDMAInputCount(a2, a2);
  *(this + 36) = *(this + 35);
  *(this + 39) = *(this + 38);
  *(this + 13) = 0;
  std::vector<ZinTensorDimensions>::resize(this + 35, DMAInputCount);
  std::vector<float>::resize((this + 304), DMAInputCount);

  std::vector<BOOL>::resize(this + 96, DMAInputCount, 0);
}

uint64_t ZinIrPerf::GetEngineLayerFusedKernel@<X0>(uint64_t *__return_ptr a1@<X8>, const ZinANELayer *a2@<X1>)
{
  result = ZinIrOpLayer::IsNELayer(a2);
  if (result)
  {
    v5 = *(*a2 + 608);

    return v5(a2, 0);
  }

  else
  {
    *a1 = 0;
  }

  return result;
}

uint64_t ZinIrPerf::ConfigurePerfInfoNEKernel(uint64_t this, const ZinIrKernel *a2)
{
  *(this + 396) = a2 != 0;
  if (a2)
  {
    v3 = this;
    *(this + 440) = ZinIrKernel::GetWeightElementSizeInBytes(a2);
    v4 = *(a2 + 248);
    v5 = *(a2 + 264);
    *(v3 + 432) = *(a2 + 35);
    *(v3 + 400) = v4;
    *(v3 + 416) = v5;
    *&v4 = *(a2 + 41);
    *&v5 = *(a2 + 42);
    *&v6 = v4;
    *(&v6 + 1) = SDWORD1(v4);
    *(v3 + 184) = v6;
    *&v6 = v5;
    *(&v6 + 1) = SDWORD1(v5);
    *(v3 + 200) = v6;
    *&v4 = *(a2 + 43);
    *&v6 = v4;
    *(&v6 + 1) = SDWORD1(v4);
    *(v3 + 216) = v6;
    v7 = *(a2 + 22);
    *(v3 + 388) = *(a2 + 46);
    *(v3 + 372) = v7;
    *(v3 + 816) = ZinIrKernel::GetWeightFormat(a2);
    this = ZinIrKernel::HasVectorPalettizedWeight(a2);
    if (this)
    {
      *(v3 + 824) = *(a2 + 52);
    }

    *(v3 + 448) = *(a2 + 50);
    *(v3 + 456) = *(a2 + 94);
  }

  return this;
}

void ZinIrPerf::AddKerneltoKernelNameSet(void **this, ZinEngineLayerMirInfo **a2, uint64_t a3)
{
  if (ZinIrOpLayer::IsNELayer(a2))
  {
    ZinIrPerf::GetKernelSymbolNamesForActiveNE(&v6, a2, a3);
    std::vector<std::vector<std::string>>::push_back[abi:ne200100](this, &v6);
    v7 = &v6;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v7);
  }
}

void sub_1A6A00BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrPerf::HasRewoundKernel(ZinIrPerf *this, ZinEngineLayerMirInfo **a2, uint64_t a3)
{
  ZinIrPerf::GetKernelSymbolNamesForActiveNE(&v17, a2, a3);
  if (v17.__begin_ == v17.__end_ || (v5 = *this, v4 = *(this + 1), v4 - *this == 24) || (v6 = v4 - 24, v5 == v4 - 24))
  {
    v12 = 0;
  }

  else
  {
    while (1)
    {
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v7 = *(v6 - 24);
      v8 = *(v6 - 16);
      v6 -= 24;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v14, v7, v8, 0xAAAAAAAAAAAAAAABLL * ((v8 - v7) >> 3));
      p_begin = &v14->__begin_;
      v10 = v15;
      begin = v17.__begin_;
      if (v15 - v14 == v17.__end_ - v17.__begin_)
      {
        break;
      }

LABEL_8:
      v18 = &v14;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
      v12 = 0;
      if (v6 == v5)
      {
        goto LABEL_11;
      }
    }

    while (p_begin != v10)
    {
      if (!std::equal_to<std::string>::operator()[abi:ne200100](&v18, p_begin, &begin->__r_.__value_.__l.__data_))
      {
        goto LABEL_8;
      }

      p_begin += 3;
      ++begin;
    }

    v18 = &v14;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v18);
    v12 = 1;
  }

LABEL_11:
  v14 = &v17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v14);
  return v12;
}

void sub_1A6A00CE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, uint64_t a11, uint64_t a12, char a13)
{
  a10 = &a13;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ZinIrPerf::ConfigureCacheHintKernelInfo(ZinIrPerf *this, const ZinANELayer *a2)
{
  if (!*(a2 + 65))
  {
    ZinAssertImpl("Perf model internal error: missing mir_info");
  }

  (*(*a2 + 152))(&v17, a2);
  v4 = v17;
  if (v18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v18);
  }

  if (v4)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    LOBYTE(v17) = 0;
    v21 = 0;
    ZinIrRegAllocUtil::FindSortedConsumersAndProducers(v4, &v25, &v22, &v17);
    if (v21 == 1)
    {
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v20, v20[1]);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v19);
      std::__hash_table<std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>>>::~__hash_table(&v17);
    }

    v5 = v25;
    if (v26 == v25)
    {
      v10 = 0;
    }

    else
    {
      v6 = v26 - v25;
      if (v6 <= 1)
      {
        v7 = 1;
      }

      else
      {
        v7 = v26 - v25;
      }

      v8 = 1;
      v9 = v25;
      v10 = 1;
      do
      {
        v11 = *(*v9 + 520);
        if (v11 && !*(v11 + 1268))
        {
          break;
        }

        v10 = v6 > v8;
        ++v9;
        ++v8;
        --v7;
      }

      while (v7);
    }

    v12 = v22;
    if (v23 != v22)
    {
      v13 = v23 - v22;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v14 = v22;
      do
      {
        if (*v14 == a2)
        {
          break;
        }

        v15 = *(*v14 + 520);
        if (!v15)
        {
          ZinAssertImpl("MirInfo must exist for MemCache analysis in perf model.");
        }

        v16 = *(v15 + 1269);
        v10 = !v16 || (v16 != 2) & v10;
        ++v14;
        --v13;
      }

      while (v13);
    }

    if (v10)
    {
      *(this + 611) = 1;
    }

    if (v12)
    {
      v23 = v12;
      operator delete(v12);
      v5 = v25;
    }

    if (v5)
    {
      v26 = v5;
      operator delete(v5);
    }
  }
}

void sub_1A6A00EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  std::optional<ZinTensorFamilyUtil>::~optional(&a9);
  v11 = *(v9 - 80);
  if (v11)
  {
    *(v9 - 72) = v11;
    operator delete(v11);
  }

  v12 = *(v9 - 56);
  if (v12)
  {
    *(v9 - 48) = v12;
    operator delete(v12);
  }

  _Unwind_Resume(a1);
}

void ZinIrPerf::ConfigureMcacheInfo(ZinIrPerf *this, const ZinANELayer *a2)
{
  *(this + 152) = 0;
  if (*(this + 49) == 1)
  {
    if (*(a2 + 65))
    {
      MemoryPools = ZinIrContext::GetMemoryPools(a2);
      if (*MemoryPools == MemoryPools[1])
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          ZinIrPerf::ConfigureMcacheInfo();
        }
      }

      else
      {
        v5 = ZinIrContext::GetMemoryPools(a2);
        if (v5[1] != *v5)
        {
          v7 = 0;
          v8 = 0;
          while (1)
          {
            v28 = 0;
            if (ZinMemSourceIndexTranslator::GetDMASrcIndex(a2, v7, &v28, v6))
            {
              goto LABEL_20;
            }

            v9 = v28 ? 1270 : 1265;
            v10 = *(*(a2 + 65) + v9);
            InputTensor = ZinIrOpLayer::GetInputTensor(a2, v7);
            if (!v10 && *(a2 + 9) >= 1)
            {
              break;
            }

LABEL_11:
            ContributingEngineLayer(&__p, InputTensor);
            if (__p == v30)
            {
LABEL_16:
              v14 = 0;
              if (!__p)
              {
                goto LABEL_18;
              }

LABEL_17:
              v30 = __p;
              operator delete(__p);
              goto LABEL_18;
            }

            v12 = __p;
            while (1)
            {
              v13 = *(*v12 + 520);
              if (v13)
              {
                if (!*(v13 + 1268))
                {
                  break;
                }
              }

              v12 += 8;
              if (v12 == v30)
              {
                goto LABEL_16;
              }
            }

            v14 = 1;
            if (__p)
            {
              goto LABEL_17;
            }

LABEL_18:
            if (v14)
            {
              goto LABEL_19;
            }

LABEL_20:
            v15 = ZinIrContext::GetMemoryPools(a2);
            v7 = ++v8;
            if (v8 >= ((v15[1] - *v15) >> 3))
            {
              goto LABEL_42;
            }
          }

          v16 = *(*ZinIrContext::GetMemoryPools(a2) + 8 * v7);
          v17 = *(v16[11] + 8);
          v18 = v17 > 0x1E;
          v19 = (1 << v17) & 0x68000000;
          if (v18 || v19 == 0)
          {
LABEL_19:
            *(this + v28 + 608) = 1;
            goto LABEL_20;
          }

          v21 = (*(*v16 + 40))(v16, 0);
          ZinIrTensor::GetTensorFamily(&__p, v21);
          v22 = __p;
          v23 = v30;
          if (__p == v30)
          {
            v27 = 1;
            if (__p)
            {
LABEL_37:
              v30 = v22;
              operator delete(v22);
            }
          }

          else
          {
            while (1)
            {
              OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(*(*v22 + 152));
              v25 = *OutgoingLayers;
              v26 = OutgoingLayers[1];
              if (*OutgoingLayers != v26)
              {
                break;
              }

LABEL_31:
              v22 += 8;
              if (v22 == v23)
              {
                v27 = 1;
                goto LABEL_36;
              }
            }

            while (*(*v25 + 72) >= *(a2 + 9))
            {
              v25 += 8;
              if (v25 == v26)
              {
                goto LABEL_31;
              }
            }

            v27 = 0;
LABEL_36:
            v22 = __p;
            if (__p)
            {
              goto LABEL_37;
            }
          }

          if (!v27)
          {
            goto LABEL_19;
          }

          goto LABEL_11;
        }

LABEL_42:
        if (!*(*(a2 + 65) + 1268))
        {
          *(this + 610) = 1;
        }

        ZinIrPerf::ConfigureCacheHintKernelInfo(this, a2);
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      ZinIrPerf::ConfigureMcacheInfo();
    }
  }
}

void sub_1A6A011B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void **std::vector<std::vector<std::string>>::push_back[abi:ne200100](void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<ZinPerfUtil::TaskStats>>>(result, v10);
    }

    v11 = 24 * v7;
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *v11 = *a2;
    *(v11 + 16) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = 24 * v7 + 24;
    v12 = result[1] - *result;
    v13 = (v11 - v12);
    memcpy((v11 - v12), *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::vector<std::string>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = 0;
    *(v4 + 1) = 0;
    *(v4 + 2) = 0;
    *v4 = *a2;
    *(v4 + 2) = *(a2 + 16);
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    v6 = (v4 + 24);
  }

  v3[1] = v6;
  return result;
}

void ZinIrPerf::GetKernelSymbolNamesForActiveNE(std::vector<std::string> *__return_ptr a1@<X8>, ZinEngineLayerMirInfo **a2@<X1>, uint64_t a3@<X2>)
{
  if (ZinIrOpLayer::IsPELayer(a2) || (v6 = a2 + 20, !a2[20]))
  {
    a1->__begin_ = 0;
    a1->__end_ = 0;
    a1->__end_cap_.__value_ = 0;
  }

  else
  {
    a1->__begin_ = 0;
    a1->__end_ = 0;
    a1->__end_cap_.__value_ = 0;
    ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(a2[65]);
    NumNeededNEs = MirInfoChannelAssignment::GetNumNeededNEs(ChannelAssignment);
    std::vector<std::string>::reserve(a1, NumNeededNEs);
    if (a3)
    {
      for (i = 0; a3 != i; ++i)
      {
        if (!*v6)
        {
          continue;
        }

        if (!*(*v6 + 111))
        {
          continue;
        }

        v10 = ZinEngineLayerMirInfo::GetChannelAssignment(a2[65]);
        if (i >= MirInfoChannelAssignment::GetNumNeededNEs(v10))
        {
          continue;
        }

        if ((*(*a2 + 18))(a2))
        {
          GetTensorKernelSymbolName((a2 + 20), i, &v17);
          std::vector<std::string>::push_back[abi:ne200100](a1, &v17);
        }

        else
        {
          v11 = a2[20];
          if (*(*(v11 + 111) + 1) == 1)
          {
            if (*(a2[4] + 380))
            {
              if (*(v11 + 23) < 0)
              {
                std::string::__init_copy_ctor_external(&__p, *v11, *(v11 + 1));
              }

              else
              {
                v12 = *v11;
                __p.__r_.__value_.__r.__words[2] = *(v11 + 2);
                *&__p.__r_.__value_.__l.__data_ = v12;
              }
            }

            else
            {
              ZinIrKernel::GetFinalHash(&v17, v11);
              v14 = std::string::insert(&v17, 0, "K", 1uLL);
              v15 = *&v14->__r_.__value_.__l.__data_;
              __p.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
              *&__p.__r_.__value_.__l.__data_ = v15;
              v14->__r_.__value_.__l.__size_ = 0;
              v14->__r_.__value_.__r.__words[2] = 0;
              v14->__r_.__value_.__r.__words[0] = 0;
              if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v17.__r_.__value_.__l.__data_);
              }
            }

            std::vector<std::string>::push_back[abi:ne200100](a1, &__p);
            if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
            {
              continue;
            }

            v13 = __p.__r_.__value_.__r.__words[0];
            goto LABEL_22;
          }

          GetKernelSymbolName(&v17, v11, i, *(a2[4] + 380));
          std::vector<std::string>::push_back[abi:ne200100](a1, &v17);
        }

        if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
        {
          v13 = v17.__r_.__value_.__r.__words[0];
LABEL_22:
          operator delete(v13);
        }
      }
    }
  }
}

void sub_1A6A014FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t *ZinIrPerf::DebugPrint@<X0>(uint64_t *__return_ptr a1@<X8>, ZinIrPerf *this@<X0>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v68);
  std::string::basic_string[abi:ne200100]<0>(&v65, "");
  std::string::basic_string[abi:ne200100]<0>(&__p, "\n");
  if (v67 < 0)
  {
    v66 = 2;
    v4 = v65;
  }

  else
  {
    v67 = 2;
    v4 = &v65;
  }

  strcpy(v4, ", ");
  v5 = *(this + 29);
  if (v5 != *(this + 30))
  {
    v6 = 0;
    do
    {
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "L2Src", 5);
      v8 = MEMORY[0x1AC559B70](v7, v6);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " Dims: ", 7);
      ZinIrHalH13g::~ZinIrHalH13g(v68);
      v9 = *(this + 30);
      if (v5 != v9)
      {
        if (v67 >= 0)
        {
          v10 = &v65;
        }

        else
        {
          v10 = v65;
        }

        if (v67 >= 0)
        {
          v11 = v67;
        }

        else
        {
          v11 = v66;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v10, v11);
        v9 = *(this + 30);
      }

      ++v6;
      v5 += 40;
    }

    while (v5 != v9);
  }

  if ((v64 & 0x80u) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p;
  }

  if ((v64 & 0x80u) == 0)
  {
    v13 = v64;
  }

  else
  {
    v13 = v63;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, p_p, v13);
  v14 = *(this + 35);
  if (v14 != *(this + 36))
  {
    v15 = 0;
    do
    {
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "DMASrc", 6);
      v17 = MEMORY[0x1AC559B70](v16, v15);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " Dims: ", 7);
      ZinIrHalH13g::~ZinIrHalH13g(v68);
      v18 = *(this + 36);
      if (v14 != v18)
      {
        if (v67 >= 0)
        {
          v19 = &v65;
        }

        else
        {
          v19 = v65;
        }

        if (v67 >= 0)
        {
          v20 = v67;
        }

        else
        {
          v20 = v66;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v19, v20);
        v18 = *(this + 36);
      }

      ++v15;
      v14 += 40;
    }

    while (v14 != v18);
  }

  if ((v64 & 0x80u) == 0)
  {
    v21 = &__p;
  }

  else
  {
    v21 = __p;
  }

  if ((v64 & 0x80u) == 0)
  {
    v22 = v64;
  }

  else
  {
    v22 = v63;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v21, v22);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "OutputDims: ", 12);
  ZinIrHalH13g::~ZinIrHalH13g(v68);
  if ((v64 & 0x80u) == 0)
  {
    v23 = &__p;
  }

  else
  {
    v23 = __p;
  }

  if ((v64 & 0x80u) == 0)
  {
    v24 = v64;
  }

  else
  {
    v24 = v63;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v23, v24);
  if (v67 < 0)
  {
    v66 = 16;
    v25 = v65;
  }

  else
  {
    v67 = 16;
    v25 = &v65;
  }

  strcpy(v25, "InputResidency: ");
  v27 = *(this + 12);
  v26 = *(this + 13);
  v28 = v26 & 0x3F;
  if (v26 > 0x3F || (v26 & 0x3F) != 0)
  {
    v29 = 0;
    v30 = v27 + 8 * (v26 >> 6);
    do
    {
      if (v67 >= 0)
      {
        v31 = &v65;
      }

      else
      {
        v31 = v65;
      }

      if (v67 >= 0)
      {
        v32 = v67;
      }

      else
      {
        v32 = v66;
      }

      v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v31, v32);
      *(v33 + *(*v33 - 24) + 8) |= 1u;
      MEMORY[0x1AC559B10]();
      if (v67 < 0)
      {
        v66 = 2;
        v34 = v65;
      }

      else
      {
        v67 = 2;
        v34 = &v65;
      }

      strcpy(v34, ", ");
      v27 += 8 * (v29 == 63);
      if (v29 == 63)
      {
        v29 = 0;
      }

      else
      {
        ++v29;
      }
    }

    while (v27 != v30 || v29 != v28);
  }

  if ((v64 & 0x80u) == 0)
  {
    v35 = &__p;
  }

  else
  {
    v35 = __p;
  }

  if ((v64 & 0x80u) == 0)
  {
    v36 = v64;
  }

  else
  {
    v36 = v63;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v35, v36);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "OutputResidency: ", 17);
  *(&v69 + *(v69 - 24) + 8) |= 1u;
  MEMORY[0x1AC559B10](&v69, *(this + 120));
  if ((v64 & 0x80u) == 0)
  {
    v37 = &__p;
  }

  else
  {
    v37 = __p;
  }

  if ((v64 & 0x80u) == 0)
  {
    v38 = v64;
  }

  else
  {
    v38 = v63;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v37, v38);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "active_ne: ", 11);
  MEMORY[0x1AC559B60](&v69, *(this + 94));
  if ((v64 & 0x80u) == 0)
  {
    v39 = &__p;
  }

  else
  {
    v39 = __p;
  }

  if ((v64 & 0x80u) == 0)
  {
    v40 = v64;
  }

  else
  {
    v40 = v63;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v39, v40);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "sh_min/sh_pref/sh_max: ", 23);
  v41 = MEMORY[0x1AC559B70](&v69, *(this + 101));
  v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, ", ", 2);
  v43 = MEMORY[0x1AC559B70](v42, *(this + 99));
  v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, ", ", 2);
  v45 = MEMORY[0x1AC559B70](v44, *(this + 100));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, ", ", 2);
  if ((v64 & 0x80u) == 0)
  {
    v46 = &__p;
  }

  else
  {
    v46 = __p;
  }

  if ((v64 & 0x80u) == 0)
  {
    v47 = v64;
  }

  else
  {
    v47 = v63;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v46, v47);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "ocg_size: ", 10);
  v48 = MEMORY[0x1AC559B70](&v69, *(this + 97));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ", ", 2);
  if ((v64 & 0x80u) == 0)
  {
    v49 = &__p;
  }

  else
  {
    v49 = __p;
  }

  if ((v64 & 0x80u) == 0)
  {
    v50 = v64;
  }

  else
  {
    v50 = v63;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v49, v50);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "tile_height: ", 13);
  v51 = MEMORY[0x1AC559B70](&v69, *(this + 19));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ", ", 2);
  if ((v64 & 0x80u) == 0)
  {
    v52 = &__p;
  }

  else
  {
    v52 = __p;
  }

  if ((v64 & 0x80u) == 0)
  {
    v53 = v64;
  }

  else
  {
    v53 = v63;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v52, v53);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, "num_workunits: ", 15);
  v54 = MEMORY[0x1AC559B70](&v69, *(this + 91));
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ", ", 2);
  if ((v64 & 0x80u) == 0)
  {
    v55 = &__p;
  }

  else
  {
    v55 = __p;
  }

  if ((v64 & 0x80u) == 0)
  {
    v56 = v64;
  }

  else
  {
    v56 = v63;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v69, v55, v56);
  if ((v76 & 0x10) != 0)
  {
    v58 = v75;
    if (v75 < v72)
    {
      v75 = v72;
      v58 = v72;
    }

    locale = v71[4].__locale_;
  }

  else
  {
    if ((v76 & 8) == 0)
    {
      v57 = 0;
      *(a1 + 23) = 0;
      goto LABEL_119;
    }

    locale = v71[1].__locale_;
    v58 = v71[3].__locale_;
  }

  v57 = v58 - locale;
  if ((v58 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v57 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v57;
  if (v57)
  {
    memmove(a1, locale, v57);
  }

LABEL_119:
  *(a1 + v57) = 0;
  if (v64 < 0)
  {
    operator delete(__p);
  }

  if (v67 < 0)
  {
    operator delete(v65);
  }

  v68[0] = *MEMORY[0x1E69E54D8];
  v60 = *(MEMORY[0x1E69E54D8] + 72);
  *(v68 + *(v68[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v69 = v60;
  v70 = MEMORY[0x1E69E5548] + 16;
  if (v74 < 0)
  {
    operator delete(v73);
  }

  v70 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v71);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v77);
}

void sub_1A6A01D0C(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, void *a8, void *a9, int a10, __int16 a11, char a12, char a13, char a14, __int16 _12, __int16 _14, char _16, char arg17, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, ...)
{
  va_start(va, a37);
  if (arg17 < 0)
  {
    operator delete(a9);
  }

  if (SHIBYTE(a17) < 0)
  {
    operator delete(a15);
  }

  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a18, MEMORY[0x1E69E54D8]);
  MEMORY[0x1AC559F60](va);
  _Unwind_Resume(a1);
}

uint64_t ZinCustomPerfInfo::SetCustomPerfInfo(ZinCustomPerfInfo *this, const ZinEngineLayerMirInfo *a2)
{
  if (!a2)
  {
    return 3;
  }

  *(this + 40) = MirInfoChannelAssignment::GetNumNeededNEs((a2 + 160));
  *(this + 328) = 1;
  CPUSubtype = ZinIrTarget::GetCPUSubtype((a2 + 160));
  if ((*(this + 432) & 1) == 0)
  {
    *(this + 432) = 1;
  }

  *(this + 53) = CPUSubtype;
  OCGSize = MirInfoChannelAssignment::GetOCGSize((a2 + 160));
  if ((*(this + 448) & 1) == 0)
  {
    *(this + 448) = 1;
  }

  *(this + 55) = OCGSize;
  OverlapPadBottom = ZinMirL2Config::Tile::GetOverlapPadBottom((a2 + 160));
  if ((*(this + 464) & 1) == 0)
  {
    *(this + 464) = 1;
  }

  result = 0;
  *(this + 57) = OverlapPadBottom;
  return result;
}

uint64_t ZinNECustomPerfInfo::SetCustomPerfInfo(ZinNECustomPerfInfo *this, const ZinEngineLayerMirInfo *a2)
{
  v4 = ZinCustomPerfInfo::SetCustomPerfInfo(this, a2);
  if (!v4)
  {
    ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(a2);
    *(this + 88) = ZinIrTarget::GetCPUSubtype(ChannelAssignment);
    *(this + 712) = 1;
    v6 = ZinEngineLayerMirInfo::GetChannelAssignment(a2);
    *(this + 360) = MirInfoChannelAssignment::GetFatTileEnable(v6) | 0x100;
    v7 = ZinEngineLayerMirInfo::GetChannelAssignment(a2);
    *(this + 72) = MirInfoChannelAssignment::GetActiveNEPerCluster(v7);
    *(this + 584) = 1;
    *(this + 285) = *(a2 + 152) | 0x100;
    v8 = *(a2 + 154);
    if ((*(this + 573) & 1) == 0)
    {
      *(this + 573) = 1;
    }

    *(this + 572) = v8;
    *(this + 296) = *(a2 + 1278) | 0x100;
    *(this + 75) = *(a2 + 11);
    *(this + 608) = 1;
    v9 = ZinEngineLayerMirInfo::GetChannelAssignment(a2);
    *(this + 77) = MirInfoChannelAssignment::GetOCGSize(v9);
    *(this + 624) = 1;
    *(this + 79) = *(a2 + 16);
    *(this + 640) = 1;
    *(this + 83) = *(a2 + 14);
    *(this + 672) = 1;
    *(this + 81) = *(a2 + 15);
    *(this + 656) = 1;
    *(this + 348) = *(a2 + 1279) | 0x100;
    *(this + 361) = *(a2 + 153) | 0x100;
  }

  return v4;
}

uint64_t ZinPECustomPerfInfo::SetCustomPerfInfo(ZinPECustomPerfInfo *this, const ZinEngineLayerMirInfo *a2)
{
  v4 = ZinCustomPerfInfo::SetCustomPerfInfo(this, a2);
  if (!v4)
  {
    *(this + 69) = MirInfoChannelAssignment::GetOCGSize((a2 + 180));
    *(this + 560) = 1;
    *(this + 67) = MirInfoChannelAssignment::GetNumNeededNEs((a2 + 180));
    *(this + 544) = 1;
  }

  return v4;
}

void ZinEnginePerf::ZinEnginePerf(ZinEnginePerf *this, const ZinIrPerf *a2)
{
  *this = &unk_1F19C61F8;
  ZinPerfDescriptor::ZinPerfDescriptor((this + 8));
  *(this + 42) = a2;
  ZinDMAPerf::ZinDMAPerf((this + 344), a2);
}

void sub_1A6A0205C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 208);
  if (v3)
  {
    *(v1 + 216) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

unint64_t *std::__copy_aligned[abi:ne200100]<std::vector<BOOL>,true>@<X0>(unint64_t **__return_ptr a1@<X8>, unint64_t *__src@<X0>, unsigned int a3@<W1>, uint64_t a4@<X2>, unsigned int a5@<W3>, uint64_t a6@<X4>)
{
  v8 = a5 - a3 + 8 * (a4 - __src);
  if (v8 <= 0)
  {
    v16 = *a6;
  }

  else
  {
    v9 = __src;
    __src = *a6;
    if (a3)
    {
      if (v8 >= (64 - a3))
      {
        v10 = 64 - a3;
      }

      else
      {
        v10 = v8;
      }

      v8 -= v10;
      v11 = *v9++;
      *__src = *__src & ~((0xFFFFFFFFFFFFFFFFLL >> (64 - a3 - v10)) & (-1 << a3)) | v11 & (0xFFFFFFFFFFFFFFFFLL >> (64 - a3 - v10)) & (-1 << a3);
      v12 = v10 + *(a6 + 8);
      __src = (__src + ((v12 >> 3) & 0x3FFFFFF8));
      *a6 = __src;
      *(a6 + 8) = v12 & 0x3F;
    }

    if (v8 >= 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 + 63;
    }

    v14 = v13 >> 6;
    if ((v8 + 63) >= 0x7F)
    {
      memmove(__src, v9, 8 * v14);
      __src = *a6;
    }

    v15 = v8 - (v14 << 6);
    v16 = &__src[v14];
    *a6 = v16;
    if (v15 >= 1)
    {
      *v16 = *v16 & ~(0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8)) | v9[v14] & (0xFFFFFFFFFFFFFFFFLL >> ((v14 << 6) - v8));
      *(a6 + 8) = v15;
    }
  }

  *a1 = v16;
  *(a1 + 2) = *(a6 + 8);
  return __src;
}

void ContributingEngineLayer(uint64_t *__return_ptr a1@<X8>, const ZinIrTensor *a2@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v3 = *(a2 + 19);
  if (ZinIrOpLayer::IsANELayer(v3))
  {
    __p = v3;
    std::vector<ZinGOCLayer const*>::push_back[abi:ne200100](a1, &__p);
  }

  else
  {
    MemoryPools = ZinIrContext::GetMemoryPools(v3);
    v5 = *MemoryPools;
    v6 = *(MemoryPools + 8);
    while (v5 != v6)
    {
      v7 = *v5;
      if (ZinIrOpLayer::IsANELayer(*v5))
      {
        __p = v7;
        std::vector<ZinGOCLayer const*>::push_back[abi:ne200100](a1, &__p);
      }

      else
      {
        v8 = (*(*v7 + 40))(v7, 0);
        ContributingEngineLayer(&__p, v8);
        std::vector<ZinGOCLayer const*>::__insert_with_size[abi:ne200100]<std::__wrap_iter<ZinGOCLayer const**>,std::__wrap_iter<ZinGOCLayer const**>>(a1, a1[1], __p, v10, (v10 - __p) >> 3);
        if (__p)
        {
          v10 = __p;
          operator delete(__p);
        }
      }

      ++v5;
    }
  }
}

void sub_1A6A022A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void **std::__split_buffer<std::vector<std::string>>::~__split_buffer(void **a1)
{
  std::__split_buffer<std::vector<std::string>>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<std::vector<std::string>>::clear[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 8);
  for (i = *(a1 + 16); i != v2; i = *(a1 + 16))
  {
    v4 = (i - 24);
    *(a1 + 16) = v4;
    v5 = v4;
    std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v5);
  }
}

void ZinIrPerf::IsValidPerfInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "common_info_.l2_src_dims and common_info_.l2_src_fmt should have same size\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "common_info_.dma_src_dims and common_info_.input_is_resident should have same size\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "RDMA input dimension and input format should have the same size\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Interleave should not be less than 1", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "common_info_.wdma_interleave cannot be zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Invalid NE perf info for multicast.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "User specified custom M$ hit rate is invalid", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "User specified custom M$ hit rate is invalid.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "The number of output channel groups must be 1 with multicast.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Invalid workunit stacking configuration.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "More than one tileSrc compression is not allowed.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Num groups and batch cannot be bigger than 1 at the same time.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Chained task must not be nullptr, if chain_analysis is enabled.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "ne_info_.ocg_size cannot be zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "ne_info_.active_ne cannot be zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "output fmt is invalid\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "common_info_.tile_height cannot be zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "common_info_.stride.sz cannot be zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "common_info_.stride.sy cannot be zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "common_info_.stride.sx cannot be zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "common_info_.stride.oz cannot be zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "common_info_.stride.oy cannot be zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "common_info_.stride.ox cannot be zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Output tensor dimension must not have zero dimension\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Empty DMA src format\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "DMA src dimensions should not be zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "l2 src fmt is invalid\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Empty L2 source format\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "L2 src dimensions shouldn not be zero\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Empty DMA source dimension\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Empty L2 source dimension\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Invalid Hal Params\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "Invalid operating conditions.\n", a5, a6, a7, a8, v8);
}

void ZinIrPerf::ValidatePerfAnalysisMode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[ZinPerfModel] Chain analysis mode requires graph info", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[ZinPerfModel] L2 Dep analysis mode requires graph info", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[ZinPerfModel] Chain/L2-dependent analysis require entire perf domain analysis.\n", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[ZinPerfModel] MCache analysis mode requires graph info", a5, a6, a7, a8, v8);
}

void ZinIrPerf::ValidatePerfInfo(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[ZinPerfModel] Invalid Opcode for perf model", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[ZinPerfModel] Validating MirInfo is failed.", a5, a6, a7, a8, v8);
}

{
  v8 = 0;
  OUTLINED_FUNCTION_0_0(&dword_1A617D000, MEMORY[0x1E69E9C10], a3, "[ZinPerfModel] Requires an ZinANELayer", a5, a6, a7, a8, v8);
}

void ZinIrPerf::ConfigureInputTensorInfo(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: Attempting to configure invalid L2 source info", buf, 2u);
}

void ZinIrPerf::ConfigureMcacheInfo()
{
  *v0 = 0;
  _os_log_debug_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[Perf model] Mcache analysis will be skipped due to missing graph information.\n", v0, 2u);
}

{
  *v0 = 0;
  _os_log_debug_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG, "[Perf model] Mcache analysis will be skipped due to missing mir-info.\n", v0, 2u);
}

uint64_t ZinGetRegisterProgramming<8u>::GetCommonTaskType(uint64_t a1)
{
  v3 = *(a1 + 548) >> 4;
  if (v3 >= 9 || ((0x17Fu >> v3) & 1) == 0)
  {
    ZinAssertImpl("Error: Invalid Task Type", v1, v2);
  }

  return qword_1A75D63B8[v3];
}

uint64_t ZinGetRegisterProgramming<8u>::IsSource1Ephemeral(uint64_t a1)
{
  if ((*(a1 + 864) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 864) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<8u>::IsSource2Ephemeral(uint64_t a1)
{
  if ((*(a1 + 868) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 868) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<8u>::IsResultEphemeral(uint64_t a1)
{
  if ((*(a1 + 912) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 912) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<8u>::GetCircularBufferSrc1(uint64_t a1)
{
  if ((*(a1 + 940) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[*(a1 + 940) & 7] | qword_1A75D6400[*(a1 + 940) & 7];
}

uint64_t ZinGetRegisterProgramming<8u>::GetCircularBufferSrc2(uint64_t a1)
{
  v3 = (*(a1 + 940) >> 4) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

uint64_t ZinGetRegisterProgramming<8u>::GetCircularBufferResult(uint64_t a1)
{
  v3 = (*(a1 + 940) >> 8) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

BOOL ZinGetRegisterProgramming<8u>::HasReduction(uint64_t a1)
{
  CommonTaskType = ZinGetRegisterProgramming<8u>::GetCommonTaskType(a1);
  if ((CommonTaskType & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return (CommonTaskType - 3) < 2;
}

uint64_t ZinGetRegisterProgramming<8u>::GetTextureMode(uint64_t a1)
{
  if ((*(a1 + 776) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid texture mode", v1, v2);
  }

  return dword_1A75D6450[*(a1 + 776) & 7];
}

uint64_t ZinGetRegisterProgramming<8u>::GetTextureSourceDimensions@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 796) >> 16;
  v3 = *(result + 800);
  v4 = *(result + 792) >> 16;
  v5 = *(result + 796);
  *a2 = *(result + 792);
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v5;
  a2[4] = v4;
  return result;
}

uint64_t ZinGetRegisterProgramming<8u>::GetGatherModeIndexWidthDimension(uint64_t a1)
{
  v1 = *(a1 + 780) & 7;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = *(a1 + 496);
      return v2 & 0x7FFF;
    }

    if (v1 == 4)
    {
      return *(a1 + 532) & 0x1FFF;
    }

    else
    {
      return v1 == 5;
    }
  }

  else
  {
    switch(v1)
    {
      case 0u:
        return *(a1 + 504) & 0x1FFFF;
      case 1u:
        v2 = *(a1 + 492);
        return v2 & 0x7FFF;
      case 2u:
        LOWORD(v2) = *(a1 + 494);
        return v2 & 0x7FFF;
    }

    return 0;
  }
}

uint64_t ZinGetRegisterProgramming<10u>::GetCommonTaskType(uint64_t a1)
{
  v3 = *(a1 + 300) >> 4;
  if (v3 >= 9 || ((0x17Fu >> v3) & 1) == 0)
  {
    ZinAssertImpl("Error: Invalid Task Type", v1, v2);
  }

  return qword_1A75D63B8[v3];
}

uint64_t ZinGetRegisterProgramming<10u>::IsSource1Ephemeral(uint64_t a1)
{
  if ((*(a1 + 616) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 616) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<10u>::IsSource2Ephemeral(uint64_t a1)
{
  if ((*(a1 + 620) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 620) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<10u>::IsResultEphemeral(uint64_t a1)
{
  if ((*(a1 + 664) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 664) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<10u>::GetCircularBufferSrc1(uint64_t a1)
{
  if ((*(a1 + 692) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[*(a1 + 692) & 7] | qword_1A75D6400[*(a1 + 692) & 7];
}

uint64_t ZinGetRegisterProgramming<10u>::GetCircularBufferSrc2(uint64_t a1)
{
  v3 = (*(a1 + 692) >> 4) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

uint64_t ZinGetRegisterProgramming<10u>::GetCircularBufferResult(uint64_t a1)
{
  v3 = (*(a1 + 692) >> 8) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

BOOL ZinGetRegisterProgramming<10u>::HasReduction(uint64_t a1)
{
  CommonTaskType = ZinGetRegisterProgramming<10u>::GetCommonTaskType(a1);
  if ((CommonTaskType & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return (CommonTaskType - 3) < 2;
}

uint64_t ZinGetRegisterProgramming<10u>::GetTextureMode(uint64_t a1)
{
  if ((*(a1 + 528) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid texture mode", v1, v2);
  }

  return dword_1A75D6450[*(a1 + 528) & 7];
}

uint64_t ZinGetRegisterProgramming<10u>::GetTextureSourceDimensions@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 548) >> 16;
  v3 = *(result + 552);
  v4 = *(result + 544) >> 16;
  v5 = *(result + 548);
  *a2 = *(result + 544);
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v5;
  a2[4] = v4;
  return result;
}

uint64_t ZinGetRegisterProgramming<10u>::GetGatherModeIndexWidthDimension(uint64_t a1)
{
  v1 = *(a1 + 532) & 7;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = *(a1 + 248);
      return v2 & 0x7FFF;
    }

    if (v1 == 4)
    {
      return *(a1 + 284) & 0x1FFF;
    }

    else
    {
      return v1 == 5;
    }
  }

  else
  {
    switch(v1)
    {
      case 0u:
        return *(a1 + 256) & 0x1FFFF;
      case 1u:
        v2 = *(a1 + 244);
        return v2 & 0x7FFF;
      case 2u:
        LOWORD(v2) = *(a1 + 246);
        return v2 & 0x7FFF;
    }

    return 0;
  }
}

uint64_t ZinGetRegisterProgramming<11u>::GetCommonTaskType(uint64_t a1)
{
  v3 = (*(a1 + 540) >> 4) & 7;
  if (v3 > 3)
  {
    if (((*(a1 + 540) >> 4) & 7u) > 5)
    {
      if (v3 != 6)
      {
        ZinAssertImpl("Error: Invalid Task Type", v1, v2);
      }

      return 0x100000003;
    }

    else if (v3 == 4)
    {
      return 0x100000007;
    }

    else
    {
      return 0x100000004;
    }
  }

  else
  {
    v4 = 0x100000000;
    v5 = 0x100000005;
    if (v3 == 2)
    {
      v5 = 0x100000006;
    }

    if (v3)
    {
      v4 = 0x100000002;
    }

    if (((*(a1 + 540) >> 4) & 7u) <= 1)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }
}

uint64_t ZinGetRegisterProgramming<11u>::IsSource1Ephemeral(uint64_t a1)
{
  if ((*(a1 + 792) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 792) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<11u>::IsResultEphemeral(uint64_t a1)
{
  if ((*(a1 + 836) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 836) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<11u>::GetCircularBufferSrc1(uint64_t a1)
{
  if ((*(a1 + 864) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[*(a1 + 864) & 7] | qword_1A75D6400[*(a1 + 864) & 7];
}

uint64_t ZinGetRegisterProgramming<11u>::GetCircularBufferSrc2(uint64_t a1)
{
  v3 = (*(a1 + 864) >> 4) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

uint64_t ZinGetRegisterProgramming<11u>::GetCircularBufferResult(uint64_t a1)
{
  v3 = (*(a1 + 864) >> 8) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

BOOL ZinGetRegisterProgramming<11u>::HasReduction(uint64_t a1)
{
  CommonTaskType = ZinGetRegisterProgramming<11u>::GetCommonTaskType(a1);
  if ((CommonTaskType & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return (CommonTaskType - 3) < 2;
}

uint64_t ZinGetRegisterProgramming<11u>::GetTextureMode(uint64_t a1)
{
  if ((*(a1 + 704) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid texture mode", v1, v2);
  }

  return dword_1A75D6450[*(a1 + 704) & 7];
}

uint64_t ZinGetRegisterProgramming<11u>::GetTextureSourceDimensions@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 724) >> 16;
  v3 = *(result + 728);
  v4 = *(result + 720) >> 16;
  v5 = *(result + 724);
  *a2 = *(result + 720);
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v5;
  a2[4] = v4;
  return result;
}

uint64_t ZinGetRegisterProgramming<11u>::GetGatherModeIndexWidthDimension(uint64_t a1)
{
  v1 = *(a1 + 708) & 7;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = *(a1 + 488);
      return v2 & 0x7FFF;
    }

    if (v1 == 4)
    {
      return *(a1 + 524) & 0x1FFF;
    }

    else
    {
      return v1 == 5;
    }
  }

  else
  {
    switch(v1)
    {
      case 0u:
        return *(a1 + 496) & 0x1FFFF;
      case 1u:
        v2 = *(a1 + 484);
        return v2 & 0x7FFF;
      case 2u:
        LOWORD(v2) = *(a1 + 486);
        return v2 & 0x7FFF;
    }

    return 0;
  }
}

uint64_t ZinGetRegisterProgramming<17u>::GetCommonTaskType(uint64_t a1)
{
  v3 = *(a1 + 556) >> 4;
  if (v3 >= 9 || ((0x17Fu >> v3) & 1) == 0)
  {
    ZinAssertImpl("Error: Invalid Task Type", v1, v2);
  }

  return qword_1A75D63B8[v3];
}

uint64_t ZinGetRegisterProgramming<17u>::IsSource1Ephemeral(uint64_t a1)
{
  if ((*(a1 + 932) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 932) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<17u>::IsSource2Ephemeral(uint64_t a1)
{
  if ((*(a1 + 936) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 936) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<17u>::IsResultEphemeral(uint64_t a1)
{
  if ((*(a1 + 1000) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 1000) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<17u>::GetCircularBufferSrc1(uint64_t a1)
{
  if ((*(a1 + 1028) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[*(a1 + 1028) & 7] | qword_1A75D6400[*(a1 + 1028) & 7];
}

uint64_t ZinGetRegisterProgramming<17u>::GetCircularBufferSrc2(uint64_t a1)
{
  v3 = (*(a1 + 1028) >> 4) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

uint64_t ZinGetRegisterProgramming<17u>::GetCircularBufferResult(uint64_t a1)
{
  v3 = (*(a1 + 1028) >> 8) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

BOOL ZinGetRegisterProgramming<17u>::HasReduction(uint64_t a1)
{
  CommonTaskType = ZinGetRegisterProgramming<17u>::GetCommonTaskType(a1);
  if ((CommonTaskType & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return (CommonTaskType - 3) < 2;
}

uint64_t ZinGetRegisterProgramming<17u>::GetTextureMode(uint64_t a1)
{
  if ((*(a1 + 796) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid texture mode", v1, v2);
  }

  return dword_1A75D6450[*(a1 + 796) & 7];
}

float ZinGetRegisterProgramming<17u>::GetTextureSourceDimensions@<S0>(int8x8_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[101].u32[1] >> 16;
  *a2 = a1[101].i32[1];
  v3 = a1[102];
  v4 = vshr_n_u32(v3, 0x10uLL);
  v5 = v3.i16[0];
  v3.i16[3] = 0;
  v6 = vext_s8(v3, v4, 4uLL);
  *&v7 = v6.u32[0];
  *(&v7 + 1) = v6.u32[1];
  *(a2 + 8) = v7;
  *(a2 + 24) = v5;
  *(a2 + 32) = v2;
  return *v6.i32;
}

uint64_t ZinGetRegisterProgramming<17u>::GetGatherModeIndexWidthDimension(_DWORD *a1)
{
  v1 = a1[200] & 7;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = a1[128];
    }

    else
    {
      if (v1 != 4)
      {
        return v1 == 5;
      }

      v2 = a1[133];
    }

    return v2 & 0x1FFFF;
  }

  switch(v1)
  {
    case 0u:
      v2 = a1[127];
      return v2 & 0x1FFFF;
    case 1u:
      v2 = a1[125];
      return v2 & 0x1FFFF;
    case 2u:
      v2 = a1[126];
      return v2 & 0x1FFFF;
  }

  return 0;
}

uint64_t ZinGetRegisterProgramming<19u>::GetCommonTaskType(uint64_t a1)
{
  v3 = *(a1 + 568) >> 4;
  if (v3 >= 9 || ((0x17Fu >> v3) & 1) == 0)
  {
    ZinAssertImpl("Error: Invalid Task Type", v1, v2);
  }

  return qword_1A75D63B8[v3];
}

uint64_t ZinGetRegisterProgramming<19u>::IsSource1Ephemeral(uint64_t a1)
{
  if ((*(a1 + 952) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 952) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<19u>::IsSource2Ephemeral(uint64_t a1)
{
  if ((*(a1 + 956) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 956) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<19u>::IsResultEphemeral(uint64_t a1)
{
  if ((*(a1 + 1020) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 1020) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<19u>::GetCircularBufferSrc1(uint64_t a1)
{
  if ((*(a1 + 1048) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[*(a1 + 1048) & 7] | qword_1A75D6400[*(a1 + 1048) & 7];
}

uint64_t ZinGetRegisterProgramming<19u>::GetCircularBufferSrc2(uint64_t a1)
{
  v3 = (*(a1 + 1048) >> 4) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

uint64_t ZinGetRegisterProgramming<19u>::GetCircularBufferResult(uint64_t a1)
{
  v3 = (*(a1 + 1048) >> 8) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

BOOL ZinGetRegisterProgramming<19u>::HasReduction(uint64_t a1)
{
  CommonTaskType = ZinGetRegisterProgramming<19u>::GetCommonTaskType(a1);
  if ((CommonTaskType & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return (CommonTaskType - 3) < 2;
}

uint64_t ZinGetRegisterProgramming<19u>::GetTextureMode(uint64_t a1)
{
  if ((*(a1 + 808) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid texture mode", v1, v2);
  }

  return dword_1A75D6450[*(a1 + 808) & 7];
}

uint64_t ZinGetRegisterProgramming<19u>::GetTextureSourceDimensions@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 828) >> 16;
  v3 = *(result + 832);
  v4 = *(result + 824) >> 16;
  v5 = *(result + 828);
  *a2 = *(result + 824);
  a2[1] = v3;
  a2[2] = v2;
  a2[3] = v5;
  a2[4] = v4;
  return result;
}

uint64_t ZinGetRegisterProgramming<19u>::GetGatherModeIndexWidthDimension(_DWORD *a1)
{
  v1 = a1[203] & 7;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = a1[131];
    }

    else
    {
      if (v1 != 4)
      {
        return v1 == 5;
      }

      v2 = a1[136];
    }

    return v2 & 0x1FFFF;
  }

  switch(v1)
  {
    case 0u:
      v2 = a1[130];
      return v2 & 0x1FFFF;
    case 1u:
      v2 = a1[128];
      return v2 & 0x1FFFF;
    case 2u:
      v2 = a1[129];
      return v2 & 0x1FFFF;
  }

  return 0;
}

uint64_t ZinGetRegisterProgramming<20u>::GetCommonTaskType(uint64_t a1)
{
  v3 = *(a1 + 604) >> 4;
  if (v3 >= 9 || ((0x17Fu >> v3) & 1) == 0)
  {
    ZinAssertImpl("Error: Invalid Task Type", v1, v2);
  }

  return qword_1A75D63B8[v3];
}

uint64_t ZinGetRegisterProgramming<20u>::IsSource1Ephemeral(uint64_t a1)
{
  if ((*(a1 + 980) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 980) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<20u>::IsSource2Ephemeral(uint64_t a1)
{
  if ((*(a1 + 984) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 984) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<20u>::IsResultEphemeral(uint64_t a1)
{
  if ((*(a1 + 1048) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 1048) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<20u>::GetCircularBufferSrc1(uint64_t a1)
{
  if ((*(a1 + 1076) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[*(a1 + 1076) & 7] | qword_1A75D6400[*(a1 + 1076) & 7];
}

uint64_t ZinGetRegisterProgramming<20u>::GetCircularBufferSrc2(uint64_t a1)
{
  v3 = (*(a1 + 1076) >> 4) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

uint64_t ZinGetRegisterProgramming<20u>::GetCircularBufferResult(uint64_t a1)
{
  v3 = (*(a1 + 1076) >> 8) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

BOOL ZinGetRegisterProgramming<20u>::HasReduction(uint64_t a1)
{
  CommonTaskType = ZinGetRegisterProgramming<20u>::GetCommonTaskType(a1);
  if ((CommonTaskType & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return (CommonTaskType - 3) < 2;
}

uint64_t ZinGetRegisterProgramming<20u>::GetTextureMode(uint64_t a1)
{
  if ((*(a1 + 828) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid texture mode", v1, v2);
  }

  return dword_1A75D6450[*(a1 + 828) & 7];
}

float ZinGetRegisterProgramming<20u>::GetTextureSourceDimensions@<S0>(int8x8_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = a1[105].u32[1] >> 16;
  *a2 = a1[105].i32[1];
  v3 = a1[106];
  v4 = vshr_n_u32(v3, 0x10uLL);
  v5 = v3.i16[0];
  v3.i16[3] = 0;
  v6 = vext_s8(v3, v4, 4uLL);
  *&v7 = v6.u32[0];
  *(&v7 + 1) = v6.u32[1];
  *(a2 + 8) = v7;
  *(a2 + 24) = v5;
  *(a2 + 32) = v2;
  return *v6.i32;
}

uint64_t ZinGetRegisterProgramming<20u>::GetGatherModeIndexWidthDimension(_DWORD *a1)
{
  v1 = a1[208] & 7;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = a1[140];
    }

    else
    {
      if (v1 != 4)
      {
        return v1 == 5;
      }

      v2 = a1[145];
    }

    return v2 & 0x1FFFF;
  }

  switch(v1)
  {
    case 0u:
      v2 = a1[139];
      return v2 & 0x1FFFF;
    case 1u:
      v2 = a1[137];
      return v2 & 0x1FFFF;
    case 2u:
      v2 = a1[138];
      return v2 & 0x1FFFF;
  }

  return 0;
}

uint64_t ZinGetRegisterProgramming<26u>::GetCommonTaskType(uint64_t a1)
{
  v3 = *(a1 + 372) >> 4;
  if (v3 >= 9 || ((0x17Fu >> v3) & 1) == 0)
  {
    ZinAssertImpl("Error: Invalid Task Type", v1, v2);
  }

  return qword_1A75D63B8[v3];
}

uint64_t ZinGetRegisterProgramming<26u>::IsSource1Ephemeral(uint64_t a1)
{
  if ((*(a1 + 772) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 772) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<26u>::IsSource2Ephemeral(uint64_t a1)
{
  if ((*(a1 + 776) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 776) >> 1) & 1;
  }
}

uint64_t ZinGetRegisterProgramming<26u>::IsResultEphemeral(uint64_t a1)
{
  if ((*(a1 + 840) & 3) == 1)
  {
    return 1;
  }

  else
  {
    return (*(a1 + 840) >> 1) & 1;
  }
}

BOOL ZinGetRegisterProgramming<26u>::IsDualSourcePETask(uint64_t a1)
{
  CommonTaskType = ZinGetRegisterProgramming<26u>::GetCommonTaskType(a1);
  if ((CommonTaskType & 0x100000000) == 0)
  {
    ZinAssertImpl("Error: Invalid Task Type");
  }

  return ((CommonTaskType - 1) & 0xFFFFFFF9) == 0;
}

uint64_t ZinGetRegisterProgramming<26u>::GetCircularBufferSrc1(uint64_t a1)
{
  if ((*(a1 + 868) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[*(a1 + 868) & 7] | qword_1A75D6400[*(a1 + 868) & 7];
}

uint64_t ZinGetRegisterProgramming<26u>::GetCircularBufferSrc2(uint64_t a1)
{
  v3 = (*(a1 + 868) >> 4) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

uint64_t ZinGetRegisterProgramming<26u>::GetCircularBufferResult(uint64_t a1)
{
  v3 = (*(a1 + 868) >> 8) & 7;
  if (v3 >= 5)
  {
    ZinAssertImpl("Invalid circular buffer option", v1, v2);
  }

  return qword_1A75D6428[v3] | qword_1A75D6400[v3];
}

BOOL ZinGetRegisterProgramming<26u>::HasReduction(uint64_t a1)
{
  CommonTaskType = ZinGetRegisterProgramming<26u>::GetCommonTaskType(a1);
  if ((CommonTaskType & 0x100000000) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  return (CommonTaskType - 3) < 2;
}

uint64_t ZinGetRegisterProgramming<26u>::GetTextureMode(uint64_t a1)
{
  if ((*(a1 + 612) & 7u) >= 5)
  {
    ZinAssertImpl("Invalid texture mode", v1, v2);
  }

  return dword_1A75D6450[*(a1 + 612) & 7];
}

float ZinGetRegisterProgramming<26u>::GetTextureSourceDimensions@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 644);
  v3 = *(a1 + 632);
  *a2 = *(a1 + 628);
  *(a2 + 8) = v2;
  v4 = *(a1 + 636);
  *&v5 = v4;
  *(&v5 + 1) = HIDWORD(v4);
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return *&v4;
}

uint64_t ZinGetRegisterProgramming<26u>::GetGatherModeIndexWidthDimension(_DWORD *a1)
{
  v1 = a1[154] & 7;
  if (v1 > 2)
  {
    if (v1 == 3)
    {
      v2 = a1[82];
    }

    else
    {
      if (v1 != 4)
      {
        return v1 == 5;
      }

      v2 = a1[87];
    }

    return v2 & 0x1FFFF;
  }

  switch(v1)
  {
    case 0u:
      v2 = a1[81];
      return v2 & 0x1FFFF;
    case 1u:
      v2 = a1[79];
      return v2 & 0x1FFFF;
    case 2u:
      v2 = a1[80];
      return v2 & 0x1FFFF;
  }

  return 0;
}

void *ZinMirL2HazardAnalysis::SymbolEventTable::AddSymbolToEventTable(ZinMirL2HazardAnalysis::SymbolEventTable *this, unint64_t a2, unint64_t a3, ZinIrSymbol *a4)
{
  v9 = a3;
  v10 = a2;
  v8 = a4;
  v11 = &v10;
  v5 = std::__hash_table<std::__hash_value_type<long,std::vector<ZinANELayer *>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::vector<ZinANELayer *>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::vector<ZinANELayer *>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::vector<ZinANELayer *>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(this + 5, &v10, &std::piecewise_construct, &v11);
  std::vector<ZinIrOpLayer *>::push_back[abi:ne200100]((v5 + 3), &v8);
  v11 = &v9;
  v6 = std::__hash_table<std::__hash_value_type<long,std::vector<ZinANELayer *>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::vector<ZinANELayer *>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::vector<ZinANELayer *>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::vector<ZinANELayer *>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(this + 10, &v9, &std::piecewise_construct, &v11);
  std::vector<ZinIrOpLayer *>::push_back[abi:ne200100]((v6 + 3), &v8);
  std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(this + 120, &v10, &v10);
  return std::__tree<unsigned long>::__emplace_unique_key_args<unsigned long,unsigned long const&>(this + 120, &v9, &v9);
}

void *ZinMirL2HazardAnalysis::SymbolTimeEventTable::AddSymbol(ZinMirL2HazardAnalysis::SymbolTimeEventTable *this, ZinIrSymbol *a2)
{
  v4 = a2;
  result = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this, &v4);
  if (!result)
  {
    std::__hash_table<ZinIrOpLayer *,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer *>(this, &v4, &v4);
    return ZinMirL2HazardAnalysis::SymbolEventTable::AddSymbolToEventTable(this, *(v4 + 32), *(v4 + 33), v4);
  }

  return result;
}

void *ZinMirL2HazardAnalysis::SymbolSpaceEventTable::AddSymbol(ZinMirL2HazardAnalysis::SymbolSpaceEventTable *this, ZinIrSymbol *a2, char a3)
{
  v8 = a2;
  result = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this, &v8);
  if (!result)
  {
    std::__hash_table<ZinIrOpLayer *,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer *>(this, &v8, &v8);
    ZinIrSymbol::GetSpaceRanges(v7, v8, a3);
    for (i = v7[1]; i != v7; i = i[1])
    {
      ZinMirL2HazardAnalysis::SymbolEventTable::AddSymbolToEventTable(this, i[2], i[3], v8);
    }

    return std::__list_imp<ZinIrSection *>::clear(v7);
  }

  return result;
}

uint64_t *ZinMirL2HazardAnalysis::SymbolEventTable::GetBeginSymbols@<X0>(ZinMirL2HazardAnalysis::SymbolEventTable *this@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::find<long>(this + 5, &v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    return std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(a3, result[3], result[4], (result[4] - result[3]) >> 3);
  }

  return result;
}

uint64_t *ZinMirL2HazardAnalysis::SymbolEventTable::GetEndSymbols@<X0>(ZinMirL2HazardAnalysis::SymbolEventTable *this@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::find<long>(this + 10, &v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    return std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(a3, result[3], result[4], (result[4] - result[3]) >> 3);
  }

  return result;
}

void sub_1A6A05550(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void **a12, void **a13, uint64_t a14, void **a15, void **a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, void *a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v32 + 976);
  __p = a18;
  std::vector<std::vector<std::vector<ZinKernelPosition>>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v34 = MEMORY[0x1E69E54D0];
  v35 = *MEMORY[0x1E69E54D0];
  *a22 = *MEMORY[0x1E69E54D0];
  *(a22 + *(v35 - 24)) = *(v34 + 24);
  MEMORY[0x1AC559A70](a20 + 208);
  std::ostream::~ostream();
  MEMORY[0x1AC559F60](a21);
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::shared_ptr<MirOpt::ZinReassignEngine>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::shared_ptr<MirOpt::ZinReassignEngine>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::shared_ptr<MirOpt::ZinReassignEngine>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::shared_ptr<MirOpt::ZinReassignEngine>>>>>::~__hash_table(a11);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(a20 + 120, *(v32 + 304));
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(a12);
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(a13);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a20);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(a14, *(v32 + 160));
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(a15);
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(a16);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(a17);
  std::unique_ptr<ZinIrHazardGraph>::~unique_ptr[abi:ne200100](v32);
  _Unwind_Resume(a1);
}

uint64_t *std::unique_ptr<ZinIrHazardGraph>::~unique_ptr[abi:ne200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::__tree<std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>,std::__map_value_compare<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>,HazardEdgeCompare,true>,std::allocator<std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>>>::destroy(v2 + 152, *(v2 + 160));
    if (*(v2 + 151) < 0)
    {
      operator delete(*(v2 + 128));
    }

    v3 = *(v2 + 104);
    if (v3)
    {
      *(v2 + 112) = v3;
      operator delete(v3);
    }

    std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table((v2 + 64));
    std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table((v2 + 24));
    std::__tree<std::shared_ptr<ZinIrTensor>,ZinIrIdComparator<std::shared_ptr<ZinIrTensor>>,std::allocator<std::shared_ptr<ZinIrTensor>>>::destroy(v2, *(v2 + 8));
    MEMORY[0x1AC55A070](v2, 0x10B2C407320418ALL);
  }

  return a1;
}

void ZinMirL2HazardAnalysis::~ZinMirL2HazardAnalysis(ZinMirL2HazardAnalysis *this)
{
  v2 = (this + 376);
  if (*(this + 63) && !std::filebuf::close())
  {
    std::ios_base::clear((v2 + *(*v2 - 24)), *(v2 + *(*v2 - 24) + 32) | 4);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 976);
  v5 = (this + 952);
  std::vector<std::vector<std::vector<ZinKernelPosition>>>::__destroy_vector::operator()[abi:ne200100](&v5);
  v3 = MEMORY[0x1E69E54D0];
  v4 = *MEMORY[0x1E69E54D0];
  *(this + 47) = *MEMORY[0x1E69E54D0];
  *(v2 + *(v4 - 24)) = *(v3 + 24);
  MEMORY[0x1AC559A70](this + 384);
  std::ostream::~ostream();
  MEMORY[0x1AC559F60](this + 792);
  std::__hash_table<std::__hash_value_type<unsigned long,std::vector<std::shared_ptr<MirOpt::ZinReassignEngine>>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::shared_ptr<MirOpt::ZinReassignEngine>>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<std::shared_ptr<MirOpt::ZinReassignEngine>>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<std::shared_ptr<MirOpt::ZinReassignEngine>>>>>::~__hash_table(this + 328);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 296, *(this + 38));
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(this + 32);
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(this + 27);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 176);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 152, *(this + 20));
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(this + 14);
  std::__hash_table<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,std::vector<ZinIrTensor *>>>>::~__hash_table(this + 9);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(this + 32);
  std::unique_ptr<ZinIrHazardGraph>::~unique_ptr[abi:ne200100](this);
}

uint64_t ZinMirL2HazardAnalysis::Run(ZinMirL2HazardAnalysis *this)
{
  ZinMirL2HazardAnalysis::CreateHazardNodes(this);
  ZinMirL2HazardAnalysis::CreateHazardEdges(this);
  ZinMirL2HazardAnalysis::OptimizeWAWHazardEdges(this);
  ZinMirL2HazardAnalysis::HandleL2Barriers(this);
  ZinMirL2HazardAnalysis::SetL2Dependent(this);
  ZinMirL2HazardAnalysis::OptimizeHazardEdges(this);
  ZinMirL2HazardAnalysis::OptimizeL2DepWithPositiveOffset(this);
  ZinMirL2HazardAnalysis::SetL2HazardBits(this);
  ZinMirL2HazardAnalysis::MaterializeParallelExecution(this);
  return 0;
}

void ZinMirL2HazardAnalysis::CreateHazardNodes(ZinMirL2HazardAnalysis *this)
{
  v10 = 0;
  v33 = *MEMORY[0x1E69E9840];
  memset(v30, 0, sizeof(v30));
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  while (v10 < ZinIrDeviceMesh::GetNumAnes((**(this + 3) + 2248)))
  {
    v2 = (*(this + 119) + 24 * v10);
    v4 = *v2;
    v3 = v2[1];
    v11 = v3;
    while (v4 != v3)
    {
      v24 = 0;
      v25 = 0;
      v26 = 0;
      v12 = v4;
      std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v24, *v4, *(v4 + 8), (*(v4 + 8) - *v4) >> 3);
      if (v24 != v25)
      {
        v5 = 0;
        v6 = *v24;
        v23 = *v24;
        v20 = 0;
        v21 = 0;
        v22 = 0;
        v17 = 0;
        v18 = 0;
        v19 = 0;
        while (1)
        {
          MemoryPools = ZinIrContext::GetMemoryPools(v6);
          if (v5 >= (MemoryPools[1] - *MemoryPools) >> 3)
          {
            break;
          }

          InputTensor = ZinIrOpLayer::GetInputTensor(v23, v5);
          if (((*(*v23 + 224))(v23, InputTensor) & 1) == 0)
          {
            v16 = 0;
            v15 = 0;
            v14 = 0;
            if (ZinMemSourceIndexTranslator::GetL2SrcType(v23, v5, &v14) && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ZinMirL2HazardAnalysis::CreateHazardNodes(buf, &v23, &buf[4]);
            }

            L2RdSymbol = ZinEngineLayerMirInfo::GetL2RdSymbol(*(v23 + 65), v14);
            v15 = L2RdSymbol;
            switch(v14)
            {
              case 2u:
                v16 = 2;
                break;
              case 1u:
                v16 = 1;
                break;
              case 0u:
                v16 = 0;
                break;
            }

            ZinMirL2HazardAnalysis::SymbolTimeEventTable::AddSymbol((this + 32), L2RdSymbol);
            ZinMirL2HazardAnalysis::SymbolSpaceEventTable::AddSymbol((this + 176), L2RdSymbol, 1);
            ++*(this + 46);
            std::allocate_shared[abi:ne200100]<ZinIrHazardNode,std::allocator<ZinIrHazardNode>,ZinIrSymbol *&,ZinANELayer *&,ZinIrHazardNode::OperandType &,ZinIrHazardNode::ExecutionType,long,0>();
          }

          ++v5;
          v6 = v23;
        }

        L2WrSymbol = ZinEngineLayerMirInfo::GetL2WrSymbol(*(v23 + 65));
        ZinMirL2HazardAnalysis::SymbolTimeEventTable::AddSymbol((this + 32), L2WrSymbol);
        ZinMirL2HazardAnalysis::SymbolSpaceEventTable::AddSymbol((this + 176), L2WrSymbol, 1);
        LODWORD(v31) = 0;
        ++*(this + 46);
        std::allocate_shared[abi:ne200100]<ZinIrHazardNode,std::allocator<ZinIrHazardNode>,ZinIrSymbol *&,ZinANELayer *&,ZinIrHazardNode::OperandType,ZinIrHazardNode::ExecutionType,long,0>();
      }

      if (v24)
      {
        v25 = v24;
        operator delete(v24);
      }

      v3 = v11;
      v4 = v12 + 24;
    }

    ++v10;
  }

  v24 = v27;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v24);
  v27[0] = v28;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v27);
  v28[0] = v29;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v28);
  v29[0] = v30;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v29);
}

void sub_1A6A062C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, std::__shared_weak_count *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, uint64_t a40, void *__p, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, char a54)
{
  v58 = a15;
  if (v55)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v55);
    v58 = a15;
  }

  if (v58)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v58);
  }

  *(v56 - 248) = v56 - 224;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v56 - 248));
  *(v56 - 224) = v56 - 200;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v56 - 224));
  if (v54)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v54);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  *(v56 - 200) = v56 - 176;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v56 - 200));
  *(v56 - 176) = v56 - 152;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v56 - 176));
  _Unwind_Resume(a1);
}

void ZinMirL2HazardAnalysis::CreateHazardEdges(ZinMirL2HazardAnalysis *this)
{
  v18[0] = 0;
  v18[1] = 0;
  v17 = v18;
  v1 = *(this + 37);
  v2 = this + 304;
  if (v1 == this + 304)
  {
    v12 = 0;
  }

  else
  {
    do
    {
      v4 = *(v1 + 4);
      ZinMirL2HazardAnalysis::SymbolEventTable::GetEndSymbols((this + 176), v4, &v15);
      v5 = v15;
      v6 = v16;
      while (v5 != v6)
      {
        __p = *v5;
        std::__tree<ZinIrSymbol const*,ZinIrSymbol::Compare,std::allocator<ZinIrSymbol const*>>::__erase_unique<ZinIrSymbol const*>(&v17, &__p);
        ++v5;
      }

      ZinMirL2HazardAnalysis::SymbolEventTable::GetBeginSymbols((this + 176), v4, &__p);
      v7 = __p;
      v8 = v14;
      while (v7 != v8)
      {
        std::__tree<ZinIrSymbol *,ZinIrSymbol::Compare,std::allocator<ZinIrSymbol *>>::__emplace_hint_unique_key_args<ZinIrSymbol *,ZinIrSymbol * const&>(&v17, v18, v7, v7);
        ++v7;
      }

      ZinMirL2HazardAnalysis::CreateHazardEdgesForLiveSymbols(this, &v17);
      if (__p)
      {
        v14 = __p;
        operator delete(__p);
      }

      if (v15)
      {
        v16 = v15;
        operator delete(v15);
      }

      v9 = *(v1 + 1);
      if (v9)
      {
        do
        {
          v10 = v9;
          v9 = *v9;
        }

        while (v9);
      }

      else
      {
        do
        {
          v10 = *(v1 + 2);
          v11 = *v10 == v1;
          v1 = v10;
        }

        while (!v11);
      }

      v1 = v10;
    }

    while (v10 != v2);
    v12 = v18[0];
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v17, v12);
}

void sub_1A6A06604(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a16, a17);
  _Unwind_Resume(a1);
}

uint64_t *ZinMirL2HazardAnalysis::OptimizeWAWHazardEdges(uint64_t *this)
{
  v57 = *MEMORY[0x1E69E9840];
  v43 = this;
  v1 = this[1];
  v2 = *v1;
  v39 = v1 + 1;
  if (*v1 != v1 + 1)
  {
    do
    {
      this = ZinIrTarget::GetHal(v2[4]);
      v3 = this + 1;
      v4 = *this;
      v40 = this + 1;
      v41 = v2;
      if (*this != this + 1)
      {
        do
        {
          v5 = std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:ne200100](v55, (v4 + 4));
          if (*(*(RawOrShared<ZinIrOpLayer>::unwrap_ptr(v5) + 88) + 8) == 7)
          {
            v6 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(v55);
            if (*(*(v6 + 11) + 12) != 3)
            {
              v7 = v6;
              v8 = (*(*v6 + 40))(v6, 0);
              v9 = (*(*v7 + 40))(v7, 0);
              if (v8 == ZinIrTensor::GetRootTensor(v9))
              {
                v10 = *((*(*v7 + 40))(v7, 0) + 160);
                if (!v10 || (v11 = *(v10 + 40), v11 == *(v10 + 48)) || (v12 = *v11) == 0 || *(v12 + 216) == 2 && (*(v12 + 64) & 1) == 0)
                {
                  v52 = 0;
                  v53 = 0;
                  v54 = 0;
                  v49 = 0;
                  v50 = 0;
                  v51 = 0;
                  MemoryPools = ZinIrContext::GetMemoryPools(v7);
                  v14 = *MemoryPools;
                  v15 = *(MemoryPools + 8);
                  while (v14 != v15)
                  {
                    v16 = *v14;
                    if (ZinIrOpLayer::IsANELayer(*v14))
                    {
                      ZinMirL2HazardAnalysis::GetWriteBeginHazardNodes(v43, v16, &v52);
                      ZinMirL2HazardAnalysis::GetWriteEndHazardNodes(v43, v16, &v49);
                    }

                    ++v14;
                  }

                  std::unordered_set<std::shared_ptr<ZinIrHazardNode>>::unordered_set<std::__wrap_iter<std::shared_ptr<ZinIrHazardNode>*>>(v48, v52, v53);
                  v18 = v49;
                  v17 = v50;
                  v42 = v50;
                  while (v18 != v17)
                  {
                    v19 = *v18;
                    v20 = v18[1];
                    if (v20)
                    {
                      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v21 = *v43;
                    *buf = v19;
                    v22 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>((v21 + 24), buf);
                    v23 = (v21 + 104);
                    if (v22)
                    {
                      v23 = v22 + 3;
                    }

                    v25 = *v23;
                    v24 = v23[1];
                    while (v25 != v24)
                    {
                      v26 = *v25;
                      std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(buf, *v25);
                      v27 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(v48, buf);
                      if (*&buf[8])
                      {
                        std::__shared_weak_count::__release_shared[abi:ne200100](*&buf[8]);
                      }

                      if (v27)
                      {
                        v28 = *(v19 + 16);
                        v29 = v26[2];
                        if (*(v28 + 384) + 1 == *(v29 + 48))
                        {
                          IsNELayer = ZinIrOpLayer::IsNELayer(*(v19 + 16));
                          if (IsNELayer != ZinIrOpLayer::IsNELayer(v29))
                          {
                            v31 = *v43;
                            v46 = v19;
                            v47 = v20;
                            if (v20)
                            {
                              atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                            }

                            std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v44, v26);
                            ZinIrHazardGraph::RemoveEdge(v31, &v46, &v44);
                            if (v45)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v45);
                            }

                            if (v47)
                            {
                              std::__shared_weak_count::__release_shared[abi:ne200100](v47);
                            }

                            if ((*(*(v43[3] + 8) + 124) & 0x10) != 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
                            {
                              v32 = *(v28 + 384);
                              v33 = *(v29 + 48);
                              *buf = 134218240;
                              *&buf[4] = v32;
                              *&buf[12] = 2048;
                              *&buf[14] = v33;
                              _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Info: Optimized WAW between TID=%zi -> TID=%zi", buf, 0x16u);
                            }
                          }
                        }
                      }

                      ++v25;
                    }

                    if (v20)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
                    }

                    v18 += 2;
                    v17 = v42;
                  }

                  std::__hash_table<std::__hash_value_type<std::shared_ptr<ZinRtBaseNode>,RtGraphNodeAdjacencyType>,std::__unordered_map_hasher<std::shared_ptr<ZinRtBaseNode>,std::__hash_value_type<std::shared_ptr<ZinRtBaseNode>,RtGraphNodeAdjacencyType>,ZinRtNodeSharedPtrHash,std::equal_to<std::shared_ptr<ZinRtBaseNode>>,true>,std::__unordered_map_equal<std::shared_ptr<ZinRtBaseNode>,std::__hash_value_type<std::shared_ptr<ZinRtBaseNode>,RtGraphNodeAdjacencyType>,std::equal_to<std::shared_ptr<ZinRtBaseNode>>,ZinRtNodeSharedPtrHash,true>,std::allocator<std::__hash_value_type<std::shared_ptr<ZinRtBaseNode>,RtGraphNodeAdjacencyType>>>::~__hash_table(v48);
                  v48[0] = &v49;
                  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v48);
                  v48[0] = &v52;
                  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](v48);
                  v3 = v40;
                  v2 = v41;
                }
              }
            }
          }

          this = std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v55);
          v34 = v4[1];
          if (v34)
          {
            do
            {
              v35 = v34;
              v34 = *v34;
            }

            while (v34);
          }

          else
          {
            do
            {
              v35 = v4[2];
              v36 = *v35 == v4;
              v4 = v35;
            }

            while (!v36);
          }

          v4 = v35;
        }

        while (v35 != v3);
      }

      v37 = v2[1];
      if (v37)
      {
        do
        {
          v38 = v37;
          v37 = *v37;
        }

        while (v37);
      }

      else
      {
        do
        {
          v38 = v2[2];
          v36 = *v38 == v2;
          v2 = v38;
        }

        while (!v36);
      }

      v2 = v38;
    }

    while (v38 != v39);
  }

  return this;
}

void sub_1A6A06AB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, char a29)
{
  a21 = &a26;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = &a29;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a21);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v29 - 152);
  _Unwind_Resume(a1);
}

uint64_t ZinMirL2HazardAnalysis::HandleL2Barriers(ZinMirL2HazardAnalysis *this)
{
  v1 = this;
  v2 = 0;
  memset(v42, 0, sizeof(v42));
  v43 = 1065353216;
  v3 = -1;
  while (v2 < ZinIrDeviceMesh::GetNumAnes((**(v1 + 3) + 2248)))
  {
    v30 = v2;
    v4 = (*(v1 + 119) + 24 * v2);
    v6 = *v4;
    v5 = v4[1];
    v32 = v5;
    while (v6 != v5)
    {
      v39 = 0;
      v40 = 0;
      v41 = 0;
      std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v39, *v6, *(v6 + 8), (*(v6 + 8) - *v6) >> 3);
      v7 = v39;
      v8 = v40;
      if (v39 != v40)
      {
        do
        {
          v9 = *v7;
          v10 = *(*v7 + 65);
          if (v10[1408] == 4)
          {
            v11 = **ZinIrOpLayer::GetOutgoingLayers(*v7);
            if (ZinIrOpLayer::IsANELayer(v11) && ZinBondedUtils::AreAssignedToSameANE(v11, v9, v12) && ZinIrOpLayer::IsPELayer(v11) && (*(*v11 + 76))(v11))
            {
              *(*(v9 + 65) + 264) = 1;
              ZinMirL2HazardAnalysis::CreateL2BarrierEdges(v1, v9, v11);
            }
          }

          else
          {
            LODWORD(v34[0]) = 0;
            if ((ZinEngineLayerMirInfo::HasChainRead(v10, v34) & 1) == 0 && *(v9 + 48) != v3)
            {
              __p = (*(*v9 + 40))(v9, 0);
              if (!std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(v42, &__p))
              {
                FirstConsumerOnSameANE = ZinIrRegAllocUtil::GetFirstConsumerOnSameANE(__p, v13);
                *&v34[0] = &__p;
                std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer *&&>,std::tuple<>>(v42, &__p, &std::piecewise_construct, v34)[3] = FirstConsumerOnSameANE;
              }

              *&v34[0] = &__p;
              v15 = std::__hash_table<std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>,std::__unordered_map_hasher<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,true>,std::__unordered_map_equal<ZinIrOpLayer *,std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>,std::equal_to<ZinIrOpLayer *>,std::hash<ZinIrOpLayer *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayer *,ZinAneTdInstruction *>>>::__emplace_unique_key_args<ZinIrOpLayer *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayer *&&>,std::tuple<>>(v42, &__p, &std::piecewise_construct, v34)[3];
              if (v15)
              {
                __p = 0;
                v37 = 0;
                v38 = 0;
                memset(v34, 0, sizeof(v34));
                v35 = 1065353216;
                if (ZinMirL2HazardAnalysis::IsQualifiedForDependentMode(v1, v9, v15, &__p, v34, 0))
                {
                  IsNELayer = ZinIrOpLayer::IsNELayer(v9);
                  if (IsNELayer != ZinIrOpLayer::IsNELayer(v15) || (IsPELayer = ZinIrOpLayer::IsPELayer(v9), IsPELayer != ZinIrOpLayer::IsPELayer(v15)))
                  {
                    if (ZinIrOpLayer::IsPELayer(v15) && (*(*v15 + 608))(v15))
                    {
                      if (v37 == __p)
                      {
                        ZinAssertImpl("It must have incoming index for L2-dep pair");
                      }

                      L2RdSymbol = ZinEngineLayerMirInfo::GetL2RdSymbol(*(v15 + 65), *__p != 1);
                      v19 = ZinEngineLayerMirInfo::GetL2RdSymbol(*(v15 + 65), 0);
                      v20 = v19 != ZinEngineLayerMirInfo::GetL2RdSymbol(*(v15 + 65), 1u) && L2RdSymbol != ZinEngineLayerMirInfo::GetL2RdSymbol(*(v9 + 65), 0);
                      v21 = *ZinIrContext::GetMemoryPools(v15);
                      v22 = *(ZinIrContext::GetMemoryPools(v15) + 8);
                      while (v21 != v22)
                      {
                        if (ZinIrOpLayer::IsPELayer(*v21))
                        {
                          goto LABEL_30;
                        }

                        ++v21;
                      }
                    }

                    else
                    {
LABEL_30:
                      v20 = 0;
                    }

                    v23 = __p;
                    v24 = v37;
                    while (v23 != v24)
                    {
                      v33 = *v23;
                      InputTensor = ZinIrOpLayer::GetInputTensor(v15, v33);
                      v44 = &v33;
                      for (i = std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v34, &v33, &std::piecewise_construct, &v44)[5]; i; i = *i)
                      {
                        v28 = *(*(*(ZinIrTensor::GetRootTensor(InputTensor) + 19) + 88) + 8) == 7 && i[3] > 0;
                        v20 |= v28;
                      }

                      ++v23;
                    }

                    v1 = this;
                    if (v20)
                    {
                      *(*(v9 + 65) + 264) = 1;
                      ZinMirL2HazardAnalysis::CreateL2BarrierEdges(this, v9, v15);
                    }

                    v3 = *(v15 + 48);
                  }
                }

                std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::~__hash_table(v34);
                if (__p)
                {
                  v37 = __p;
                  operator delete(__p);
                }
              }
            }
          }

          ++v7;
        }

        while (v7 != v8);
        v7 = v39;
      }

      if (v7)
      {
        v40 = v7;
        operator delete(v7);
      }

      v6 += 24;
      v5 = v32;
    }

    v2 = v30 + 1;
  }

  return std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v42);
}

void sub_1A6A06FD4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24, ...)
{
  va_start(va, a24);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t ZinMirL2HazardAnalysis::SetL2Dependent(ZinMirL2HazardAnalysis *this)
{
  v72[0] = 0;
  v72[1] = 0;
  v71 = v72;
  v1 = *this + 8;
  v2 = **this;
  if (v2 != v1)
  {
    do
    {
      v4 = *this;
      v57 = v2[4];
      v5 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(v4 + 8, &v57);
      v6 = (v4 + 13);
      if (v5)
      {
        v6 = (v5 + 3);
      }

      v8 = *v6;
      v7 = v6[1];
      while (v8 != v7)
      {
        v9 = *v8;
        v70 = 0;
        v10 = *this;
        std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v68, v9);
        v11 = v2[5];
        v66 = v2[4];
        v67 = v11;
        if (v11)
        {
          atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        EdgeType = ZinIrHazardGraph::GetEdgeType(v10, &v68, &v66, &v70);
        v13 = v70 != 1 && EdgeType;
        if (v67)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v67);
        }

        if (v69)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v69);
        }

        if (!v13)
        {
          v65 = 0;
          if ((ZinEngineLayerMirInfo::HasChainRead(*(*(v2[4] + 16) + 520), &v65) & 1) == 0 && ZinMirL2HazardAnalysis::TryDependencyBitSet(this, *(v9 + 16), *(v2[4] + 16), 0))
          {
            std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v57, v9);
            *v73 = &v57;
            v14 = std::__tree<std::__value_type<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,std::__map_value_compare<std::shared_ptr<ZinIrHazardNode>,std::__value_type<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,std::less<std::shared_ptr<ZinIrHazardNode>>,true>,std::allocator<std::__value_type<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>>>::__emplace_unique_key_args<std::shared_ptr<ZinIrHazardNode>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<ZinIrHazardNode>&&>,std::tuple<>>(&v71, &v57, &std::piecewise_construct, v73);
            v16 = v2[4];
            v15 = v2[5];
            if (v15)
            {
              atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
            }

            v17 = v14[7];
            v14[6] = v16;
            v14[7] = v15;
            if (v17)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v17);
            }

            if (v58)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v58);
            }
          }
        }

        ++v8;
      }

      v18 = v2[1];
      if (v18)
      {
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18);
      }

      else
      {
        do
        {
          v19 = v2[2];
          v20 = *v19 == v2;
          v2 = v19;
        }

        while (!v20);
      }

      v2 = v19;
    }

    while (v19 != v1);
    v21 = v71;
    if (v71 != v72)
    {
      do
      {
        v22 = *this;
        v23 = v21[5];
        v63 = v21[4];
        v64 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v24 = v21[7];
        v61 = v21[6];
        v62 = v24;
        if (v24)
        {
          atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ZinIrHazardGraph::RemoveEdge(v22, &v63, &v61);
        if (v62)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v62);
        }

        if (v64)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v64);
        }

        v73[0] = 0;
        if (ZinIrHazardNode::GetL2SourceType(v21[6], v73))
        {
          L2SrcDep = ZinMirL2Config::GetL2SrcDep(*(v21[6][2] + 520) + 112, v73[0]);
          std::unordered_map<ZinDependencyOffsetDim,long>::unordered_map(&v57, L2SrcDep);
          v60 = *(L2SrcDep + 40);
          v26 = v59;
          if (v59)
          {
            while (v26[3] <= 0)
            {
              v26 = *v26;
              if (!v26)
              {
                goto LABEL_44;
              }
            }

            std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v57);
            goto LABEL_86;
          }

LABEL_44:
          std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v57);
        }

        v28 = v21[4];
        v27 = v21[5];
        v29 = v28;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
          v29 = v21[4];
        }

        if (*(v29 + 9) == 1)
        {
          v30 = *this;
          v57 = v29;
          v31 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>((v30 + 64), &v57);
          v32 = (v30 + 104);
          if (v31)
          {
            v32 = v31 + 3;
          }

          v33 = *v32;
          v34 = v32[1];
          while (v33 != v34)
          {
            std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v57, *v33);
            LayerTID = ZinIrHazardNode::GetLayerTID(v57);
            if (LayerTID == ZinIrHazardNode::GetLayerTID(v21[4]))
            {
              v36 = v57;
              if (!*(v57 + 9) && *(v57 + 8) == *(v21[4] + 8))
              {
                v50 = v58;
                if (v58)
                {
                  atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v27)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v27);
                }

                if (v58)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
                }

                v27 = v50;
                goto LABEL_59;
              }
            }

            if (v58)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v58);
            }

            ++v33;
          }
        }

        v36 = v28;
LABEL_59:
        v38 = v21[6];
        v37 = v21[7];
        v39 = v38;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
          v39 = v21[6];
        }

        if (*(v39 + 9) == 1)
        {
          v40 = *this;
          v57 = v39;
          v41 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>((v40 + 64), &v57);
          v42 = (v40 + 104);
          if (v41)
          {
            v42 = v41 + 3;
          }

          v43 = *v42;
          v44 = v42[1];
          while (v43 != v44)
          {
            std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v57, *v43);
            v45 = ZinIrHazardNode::GetLayerTID(v57);
            if (v45 == ZinIrHazardNode::GetLayerTID(v21[6]))
            {
              v46 = v57;
              if (!*(v57 + 9) && *(v57 + 8) == *(v21[6] + 8))
              {
                v51 = v58;
                if (v58)
                {
                  atomic_fetch_add_explicit(&v58->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                if (v37)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v37);
                }

                if (v58)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v58);
                }

                v37 = v51;
                goto LABEL_73;
              }
            }

            if (v58)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v58);
            }

            ++v43;
          }
        }

        v46 = v38;
LABEL_73:
        v47 = *this;
        v55 = v36;
        v56 = v27;
        if (v27)
        {
          atomic_fetch_add_explicit(&v27->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v53 = v46;
        v54 = v37;
        if (v37)
        {
          atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        ZinIrHazardGraph::AddSymbolAliasEdge(v47, &v55, &v53);
        if (v54)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v54);
        }

        if (v56)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v56);
        }

        if (v37)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v37);
        }

        if (v27)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v27);
        }

LABEL_86:
        v48 = v21[1];
        if (v48)
        {
          do
          {
            v49 = v48;
            v48 = *v48;
          }

          while (v48);
        }

        else
        {
          do
          {
            v49 = v21[2];
            v20 = *v49 == v21;
            v21 = v49;
          }

          while (!v20);
        }

        v21 = v49;
      }

      while (v49 != v72);
    }
  }

  std::__tree<std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>,std::__map_value_compare<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>,HazardEdgeCompare,true>,std::allocator<std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>>>::destroy(&v71, v72[0]);
  return 0;
}

void sub_1A6A07590(_Unwind_Exception *a1)
{
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  std::__tree<std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>,std::__map_value_compare<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>,HazardEdgeCompare,true>,std::allocator<std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>>>::destroy(v3 - 128, *(v3 - 120));
  _Unwind_Resume(a1);
}

void ZinMirL2HazardAnalysis::OptimizeHazardEdges(ZinMirL2HazardAnalysis *this)
{
  v2 = *(this + 3);
  if ((*(v2[1] + 124) & 0x10) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "before.hz_graph.dot");
    ZinMirL2HazardAnalysis::CreateDotFile(this, __p, 0, 0x7FFFFFFFuLL);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }

    v2 = *(this + 3);
  }

  ZinIrNgraphUtils::TransitiveReduction<ZinIrHazardGraph>(*this, 7 * *(*v2 + 1144));
  if ((*(*(*(this + 3) + 8) + 124) & 0x10) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "after.hz_graph.dot");
    ZinMirL2HazardAnalysis::CreateDotFile(this, __p, 0, 0x7FFFFFFFuLL);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_1A6A07740(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinMirL2HazardAnalysis::OptimizeL2DepWithPositiveOffset(ZinMirL2HazardAnalysis *this)
{
  v71 = *MEMORY[0x1E69E9840];
  result = ZinIrDeviceMesh::GetNumAnes((**(this + 3) + 2248));
  if (result)
  {
    v3 = 0;
    do
    {
      v4 = (*(this + 119) + 24 * v3);
      v5 = *v4;
      v6 = v4[1];
      v38 = v3;
      v39 = v6;
      if (*v4 != v6)
      {
        do
        {
          v63 = 0;
          v64 = 0;
          v65 = 0;
          std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v63, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 3);
          v7 = v63;
          if (v64 - v63 == 16)
          {
            v8 = *v63;
            v9 = v63[1];
            v10 = *(*v63 + 520);
            v11 = *(v9 + 65);
            v66 = 0x100000000;
            LODWORD(v67) = 2;
            v61 = 0;
            v62 = 0;
            __p = 0;
            std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&__p, &v66, &v67 + 1, 3uLL);
            v40 = v10;
            v41 = v5;
            v13 = __p;
            v14 = v61;
            if (__p == v61)
            {
              v42 = 0;
            }

            else
            {
              v42 = 0;
              do
              {
                L2SrcDep = ZinMirL2Config::GetL2SrcDep(v11 + 112, *v13);
                std::unordered_map<ZinDependencyOffsetDim,long>::unordered_map(&v66, L2SrcDep);
                v70 = *(L2SrcDep + 40);
                v16 = v68;
                if (v70)
                {
                  v17 = v68 == 0;
                }

                else
                {
                  v17 = 1;
                }

                if (!v17)
                {
                  while (v16[3] <= 0)
                  {
                    v16 = *v16;
                    if (!v16)
                    {
                      goto LABEL_15;
                    }
                  }

                  v42 = 1;
                }

LABEL_15:
                std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v66);
                ++v13;
              }

              while (v13 != v14);
            }

            if ((*(*(*(this + 3) + 8) + 222) & 1) != 0 && !ZinBondedUtils::AreAssignedToSameANE(v8, v9, v12))
            {
              ZinAssertImpl("An L2 dep pair must be assigned to the same ANE");
            }

            v57 = 0;
            v58 = 0;
            v59 = 0;
            ZinMirL2HazardAnalysis::GetReadBeginHazardNodes(this, v9, &v57);
            ZinMirL2HazardAnalysis::GetWriteBeginHazardNodes(this, v9, &v57);
            v54 = 0;
            v55 = 0;
            v56 = 0;
            v18 = v57;
            v19 = v58;
            if (v57 != v58)
            {
              do
              {
                v21 = *v18;
                v20 = v18[1];
                if (v20)
                {
                  atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                }

                v22 = *this;
                v52 = v21;
                v23 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(v22 + 8, &v52);
                v24 = v22 + 13;
                if (v23)
                {
                  v24 = v23 + 3;
                }

                v25 = *v24;
                v26 = v24[1];
                while (v25 != v26)
                {
                  std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v52, *v25);
                  v51 = 0;
                  v27 = *this;
                  v49 = v52;
                  v50 = v53;
                  if (v53)
                  {
                    atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v47 = v21;
                  v48 = v20;
                  if (v20)
                  {
                    atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  EdgeType = ZinIrHazardGraph::GetEdgeType(v27, &v49, &v47, &v51);
                  v29 = v51 != 1 && EdgeType;
                  if (v48)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v48);
                  }

                  if (v50)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v50);
                  }

                  if (!v29 && *(v52 + 16) != v8)
                  {
                    v66 = v52;
                    v67 = v53;
                    if (v53)
                    {
                      atomic_fetch_add_explicit(&v53->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    v68 = v21;
                    v69 = v20;
                    if (v20)
                    {
                      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
                    }

                    std::vector<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>>::push_back[abi:ne200100](&v54, &v66);
                    if (v69)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v69);
                    }

                    if (v67)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v67);
                    }
                  }

                  if (v53)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v53);
                  }

                  ++v25;
                }

                if (v20)
                {
                  std::__shared_weak_count::__release_shared[abi:ne200100](v20);
                }

                v18 += 2;
              }

              while (v18 != v19);
              v31 = v54;
              v30 = v55;
              if ((v42 & (v55 != v54)) != 0)
              {
                *(v40 + 264) = 1;
                do
                {
                  v32 = *v31;
                  v33 = v31[1];
                  v66 = *v31;
                  v67 = v33;
                  if (v33)
                  {
                    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v34 = v31[2];
                  v35 = v31[3];
                  v68 = v34;
                  v69 = v35;
                  if (v35)
                  {
                    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v36 = *this;
                  v45 = v32;
                  v46 = v33;
                  if (v33)
                  {
                    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v43 = v34;
                  v44 = v35;
                  if (v35)
                  {
                    atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
                  }

                  v37 = ZinIrHazardGraph::RemoveEdge(v36, &v45, &v43);
                  if (v44)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v44);
                  }

                  if (v46)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v46);
                  }

                  if ((v37 & 1) == 0)
                  {
                    ZinAssertImpl("edge is not removed properly");
                  }

                  if (v35)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
                  }

                  if (v33)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
                  }

                  v31 += 4;
                }

                while (v31 != v30);
              }
            }

            v66 = &v54;
            std::vector<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>>::__destroy_vector::operator()[abi:ne200100](&v66);
            v66 = &v57;
            std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v66);
            if (__p)
            {
              v61 = __p;
              operator delete(__p);
            }

            v7 = v63;
            v5 = v41;
            v6 = v39;
          }

          if (v7)
          {
            v64 = v7;
            operator delete(v7);
          }

          v5 += 24;
        }

        while (v5 != v6);
      }

      result = ZinIrDeviceMesh::GetNumAnes((**(this + 3) + 2248));
      v3 = v38 + 1;
    }

    while (v38 + 1 < result);
  }

  return result;
}

void sub_1A6A07BE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32)
{
  if (__p)
  {
    operator delete(__p);
  }

  v34 = *(v32 - 184);
  if (v34)
  {
    *(v32 - 176) = v34;
    operator delete(v34);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinMirL2HazardAnalysis::SetL2HazardBits(ZinMirL2HazardAnalysis *this)
{
  ZinMirL2HazardAnalysis::SetFirstTdL2HazardBits(this);
  v2 = *this + 8;
  v3 = **this;
  if (v3 == v2)
  {
    goto LABEL_134;
  }

  v4 = MEMORY[0x1E69E9C10];
  do
  {
    v5 = *this;
    v52 = v3[4];
    v6 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>((v5 + 64), &v52);
    v7 = (v5 + 104);
    if (v6)
    {
      v7 = v6 + 3;
    }

    v8 = *v7;
    v9 = v7[1];
    while (v8 != v9)
    {
      std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v61, *v8);
      v10 = v3[4];
      if (*(*(v10 + 16) + 384) - *(*(v61 + 16) + 384) >= *(**(this + 3) + 1144))
      {
        goto LABEL_114;
      }

      v60 = 0;
      v11 = *this;
      v58 = v61;
      v59 = v62;
      if (v62)
      {
        atomic_fetch_add_explicit(&v62->__shared_owners_, 1uLL, memory_order_relaxed);
        v10 = v3[4];
      }

      v12 = v3[5];
      v56 = v10;
      v57 = v12;
      if (v12)
      {
        atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      EdgeType = ZinIrHazardGraph::GetEdgeType(v11, &v58, &v56, &v60);
      v14 = v60 != 1 && EdgeType;
      if (v57)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v57);
      }

      if (v59)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v59);
      }

      if (v14)
      {
        goto LABEL_114;
      }

      v55 = 0;
      if (ZinEngineLayerMirInfo::HasChainRead(*(*(v3[4] + 16) + 520), &v55))
      {
        goto LABEL_114;
      }

      v15 = v3[4];
      v16 = *(*(v15 + 16) + 520);
      v17 = *(v15 + 32);
      if (v17 > 2)
      {
        v18 = v61;
        if (v17 == 3)
        {
          v19 = *(v61 + 32);
          if (v19 == 3)
          {
            if (ZinIrOpLayer::IsNELayer(*(v61 + 16)))
            {
              v16[255] = 1;
            }

            else
            {
              v16[263] = 1;
            }

            goto LABEL_114;
          }

          if (v19 <= 2)
          {
            if (ZinIrOpLayer::IsNELayer(*(v61 + 16)))
            {
              v16[254] = 1;
            }

            else
            {
              v16[262] = 1;
            }

            goto LABEL_114;
          }
        }
      }

      else
      {
        v18 = v61;
        if (*(v61 + 32) <= 2u)
        {
          if (ZinIrOpLayer::IsNELayer(*(v61 + 16)))
          {
            if (v17)
            {
              if (v17 == 1)
              {
                v16[250] = 1;
              }

              else
              {
                v16[252] = 1;
              }
            }

            else
            {
              v16[248] = 1;
            }
          }

          else if (v17 == 2)
          {
            v16[260] = 1;
          }

          else if (v17 == 1)
          {
            v16[258] = 1;
          }

          else
          {
            v16[256] = 1;
          }

          goto LABEL_114;
        }
      }

      if (!ZinIrOpLayer::IsNELayer(*(v18 + 16)))
      {
        v53 = 0;
        v54 = 0;
        v52 = &v53;
        HasL2DependentMode = ZinMirL2Config::HasL2DependentMode((*(*(v3[4] + 16) + 520) + 112), 2u, &v52);
        if (v17 <= 1)
        {
          if (v17)
          {
            if (v17 != 1)
            {
              goto LABEL_113;
            }

            v26 = v53;
            if (v53)
            {
              v27 = HasL2DependentMode;
            }

            else
            {
              v27 = 0;
            }

            if (v27)
            {
              do
              {
                v28 = *(v26 + 7);
                if (v28 <= 1)
                {
                  if (v28 == 1)
                  {
                    v29 = 0;
                    goto LABEL_60;
                  }

                  ++v26;
                }

                v26 = *v26;
              }

              while (v26);
            }

            v29 = 1;
LABEL_60:
            v16[259] = v29;
            goto LABEL_113;
          }

          v34 = v53;
          if (v53)
          {
            v35 = HasL2DependentMode;
          }

          else
          {
            v35 = 0;
          }

          if (v35)
          {
            do
            {
              v36 = *(v34 + 7);
              if (v36 <= 0)
              {
                if ((v36 & 0x80000000) == 0)
                {
                  v37 = 0;
                  goto LABEL_92;
                }

                ++v34;
              }

              v34 = *v34;
            }

            while (v34);
          }

          v37 = 1;
LABEL_92:
          v16[257] = v37;
          goto LABEL_113;
        }

        if (v17 != 2)
        {
          if (v17 == 3 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            ZinMirL2HazardAnalysis::SetL2HazardBits(v50, &v50[1]);
          }

          goto LABEL_113;
        }

        v42 = v53;
        if (v53)
        {
          v43 = HasL2DependentMode;
        }

        else
        {
          v43 = 0;
        }

        if (v43)
        {
          do
          {
            v44 = *(v42 + 7);
            if (v44 <= 2)
            {
              if (v44 == 2)
              {
                v45 = 0;
                goto LABEL_112;
              }

              ++v42;
            }

            v42 = *v42;
          }

          while (v42);
        }

        v45 = 1;
LABEL_112:
        v16[261] = v45;
        goto LABEL_113;
      }

      v53 = 0;
      v54 = 0;
      v52 = &v53;
      v20 = ZinMirL2Config::HasL2DependentMode((*(*(v3[4] + 16) + 520) + 112), 1u, &v52);
      if (v17 > 1)
      {
        if (v17 != 2)
        {
          if (v17 == 3 && os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
          {
            ZinMirL2HazardAnalysis::SetL2HazardBits(buf, &buf[1]);
          }

          goto LABEL_113;
        }

        v38 = v53;
        if (v53)
        {
          v39 = v20;
        }

        else
        {
          v39 = 0;
        }

        if (v39)
        {
          do
          {
            v40 = *(v38 + 7);
            if (v40 <= 2)
            {
              if (v40 == 2)
              {
                v41 = 0;
                goto LABEL_102;
              }

              ++v38;
            }

            v38 = *v38;
          }

          while (v38);
        }

        v41 = 1;
LABEL_102:
        v16[253] = v41;
        goto LABEL_113;
      }

      if (!v17)
      {
        v30 = v53;
        if (v53)
        {
          v31 = v20;
        }

        else
        {
          v31 = 0;
        }

        if (v31)
        {
          do
          {
            v32 = *(v30 + 7);
            if (v32 <= 0)
            {
              if ((v32 & 0x80000000) == 0)
              {
                v33 = 0;
                goto LABEL_82;
              }

              ++v30;
            }

            v30 = *v30;
          }

          while (v30);
        }

        v33 = 1;
LABEL_82:
        v16[249] = v33;
        goto LABEL_113;
      }

      if (v17 != 1)
      {
        goto LABEL_113;
      }

      v21 = v53;
      if (v53)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0;
      }

      if (!v22)
      {
LABEL_46:
        v24 = 1;
        goto LABEL_47;
      }

      while (1)
      {
        v23 = *(v21 + 7);
        if (v23 <= 1)
        {
          break;
        }

LABEL_45:
        v21 = *v21;
        if (!v21)
        {
          goto LABEL_46;
        }
      }

      if (v23 != 1)
      {
        ++v21;
        goto LABEL_45;
      }

      v24 = 0;
LABEL_47:
      v16[251] = v24;
LABEL_113:
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v52, v53);
LABEL_114:
      if (v62)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v62);
      }

      ++v8;
    }

    v46 = v3[1];
    if (v46)
    {
      do
      {
        v47 = v46;
        v46 = *v46;
      }

      while (v46);
    }

    else
    {
      do
      {
        v47 = v3[2];
        v48 = *v47 == v3;
        v3 = v47;
      }

      while (!v48);
    }

    v3 = v47;
  }

  while (v47 != v2);
LABEL_134:
  ZinMirL2HazardAnalysis::DebugPrintHazardResults(this);
  return 0;
}