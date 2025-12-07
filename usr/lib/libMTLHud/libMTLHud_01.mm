uint64_t _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLi0EEEvT1_S8_S8_S8_T0_(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v8 = *(a2 + 48);
  v9 = *(a3 + 48);
  if (v8 >= *(result + 48))
  {
    if (v9 < v8)
    {
      result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(a2, a3);
      if (*(a2 + 48) < *(v7 + 48))
      {
        result = v7;
        v10 = a2;
        goto LABEL_9;
      }
    }
  }

  else
  {
    if (v9 < v8)
    {
LABEL_5:
      v10 = a3;
LABEL_9:
      result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(result, v10);
      goto LABEL_10;
    }

    result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(result, a2);
    if (*(a3 + 48) < *(a2 + 48))
    {
      result = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 48) < *(a3 + 48))
  {
    result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(a3, a4);
    if (*(a3 + 48) < *(a2 + 48))
    {
      result = std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(a2, a3);
      if (*(a2 + 48) < *(v7 + 48))
      {

        return std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v7, a2);
      }
    }
  }

  return result;
}

BOOL _ZNSt3__127__insertion_sort_incompleteB8ne200100INS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferEEbT1_S8_T0_(__int128 *a1, char *a2)
{
  v3 = a1;
  v4 = 0x84BDA12F684BDA13 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v8 = *(a1 + 33);
        v9 = *(a2 - 21);
        if (v8 < *(a1 + 6))
        {
          if (v9 >= v8)
          {
            std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(a1, (a1 + 216));
            if (*(a2 - 21) >= *(v3 + 33))
            {
              return 1;
            }

            a1 = (v3 + 216);
          }

          v5 = (a2 - 216);
          goto LABEL_31;
        }

        if (v9 >= v8)
        {
          return 1;
        }

        v6 = (a1 + 216);
        v7 = (a2 - 216);
        break;
      case 4:
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLi0EEEvT1_S8_S8_S8_T0_(a1, a1 + 216, (a1 + 27), (a2 - 216));
        return 1;
      case 5:
        _ZNSt3__17__sort4B8ne200100INS_17_ClassicAlgPolicyERZZ49_HUDGPUTimeTrackerWrapupFrameForPresentedDrawableP17HUDGPUTimeTrackermyEUb_E3__1P30HUDGPUTimeTrackerCommandBufferLi0EEEvT1_S8_S8_S8_T0_(a1, a1 + 216, (a1 + 27), a1 + 648);
        if (*(a2 - 21) >= *(v3 + 87))
        {
          return 1;
        }

        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>((v3 + 648), (a2 - 216));
        if (*(v3 + 87) >= *(v3 + 60))
        {
          return 1;
        }

        std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v3 + 27, (v3 + 648));
        if (*(v3 + 60) >= *(v3 + 33))
        {
          return 1;
        }

        v6 = (v3 + 216);
        v7 = v3 + 27;
        break;
      default:
        goto LABEL_16;
    }

    std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(v6, v7);
    if (*(v3 + 33) < *(v3 + 6))
    {
      v5 = (v3 + 216);
      goto LABEL_24;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 21) < *(a1 + 6))
    {
      v5 = (a2 - 216);
LABEL_24:
      a1 = v3;
LABEL_31:
      std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(a1, v5);
      return 1;
    }

    return 1;
  }

LABEL_16:
  v10 = (a1 + 27);
  v11 = *(a1 + 33);
  v12 = *(a1 + 60);
  if (v11 < *(a1 + 6))
  {
    if (v12 >= v11)
    {
      std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(a1, (a1 + 216));
      if (*(v3 + 60) >= *(v3 + 33))
      {
        goto LABEL_36;
      }

      a1 = (v3 + 216);
    }

    v13 = v3 + 27;
    goto LABEL_35;
  }

  if (v12 < v11)
  {
    std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>((a1 + 216), a1 + 27);
    if (*(v3 + 33) < *(v3 + 6))
    {
      v13 = (v3 + 216);
      a1 = v3;
LABEL_35:
      std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(a1, v13);
    }
  }

LABEL_36:
  v14 = v3 + 648;
  if (v3 + 648 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    if (*(v14 + 6) < *(v10 + 6))
    {
      v33 = *(v14 + 4);
      v34 = *(v14 + 5);
      v35 = *(v14 + 12);
      v29 = *v14;
      v30 = *(v14 + 1);
      v31 = *(v14 + 2);
      v32 = *(v14 + 3);
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v36, v14 + 13);
      *(&v36[2] + 8) = *(v14 + 9);
      *(&v36[3] + 1) = *(v14 + 20);
      *(v14 + 19) = 0;
      *(v14 + 20) = 0;
      *(v14 + 18) = 0;
      objc_moveWeak(&v37, v14 + 21);
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v38, v14 + 22);
      v17 = v15;
      while (1)
      {
        v18 = v3 + v17;
        v19 = (v3 + v17 + 648);
        v20 = *(v3 + v17 + 512);
        v19[4] = *(v3 + v17 + 496);
        v19[5] = v20;
        *(v3 + v17 + 744) = *(v3 + v17 + 528);
        v21 = *(v3 + v17 + 448);
        *v19 = *(v3 + v17 + 432);
        v19[1] = v21;
        v22 = *(v3 + v17 + 480);
        v19[2] = *(v3 + v17 + 464);
        v19[3] = v22;
        std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(v3 + v17 + 752, (v3 + v17 + 536));
        v23 = (v3 + v17 + 576);
        std::vector<HUDGPUTimeTrackerEncoder>::__move_assign((v18 + 792), v18 + 36);
        WeakRetained = objc_loadWeakRetained((v3 + v17 + 600));
        objc_storeWeak((v3 + v17 + 816), WeakRetained);

        std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign((v18 + 824), v18 + 76);
        if (v17 == -432)
        {
          break;
        }

        v17 -= 216;
        if (v32 >= *(v18 + 33))
        {
          v25 = v3 + v17 + 648;
          goto LABEL_44;
        }
      }

      v25 = v3;
LABEL_44:
      *(v25 + 64) = v33;
      *(v25 + 80) = v34;
      *(v25 + 96) = v35;
      *v25 = v29;
      *(v25 + 16) = v30;
      *(v25 + 32) = v31;
      *(v25 + 48) = v32;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign((v18 + 536), v36);
      v26 = *(v18 + 72);
      if (v26)
      {
        *(v25 + 152) = v26;
        operator delete(v26);
        *v23 = 0;
        *(v18 + 73) = 0;
        *(v18 + 74) = 0;
      }

      *v23 = *(&v36[2] + 1);
      *(v25 + 152) = v36[3];
      memset(&v36[2] + 8, 0, 24);
      v27 = objc_loadWeakRetained(&v37);
      objc_storeWeak(v18 + 75, v27);

      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign((v18 + 608), v38);
      std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v38);
      objc_destroyWeak(&v37);
      if (*(&v36[2] + 1))
      {
        *&v36[3] = *(&v36[2] + 1);
        operator delete(*(&v36[2] + 1));
      }

      ++v16;
      std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v36);
      if (v16 == 8)
      {
        return v14 + 216 == a2;
      }
    }

    v10 = v14;
    v15 += 216;
    v14 += 216;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::swap[abi:ne200100]<HUDGPUTimeTrackerCommandBuffer>(__int128 *a1, __int128 *a2)
{
  v17 = a1[4];
  v18 = a1[5];
  v19 = *(a1 + 12);
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v20, a1 + 13);
  *__p = a1[9];
  v22 = *(a1 + 20);
  *(a1 + 19) = 0;
  *(a1 + 20) = 0;
  *(a1 + 18) = 0;
  objc_moveWeak(&v23, a1 + 21);
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__hash_table(v24, a1 + 22);
  v4 = *a2;
  v5 = a2[2];
  a1[1] = a2[1];
  a1[2] = v5;
  *a1 = v4;
  v6 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  *(a1 + 12) = *(a2 + 12);
  a1[4] = v7;
  a1[5] = v8;
  a1[3] = v6;
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(a1 + 104, a2 + 13);
  std::vector<HUDGPUTimeTrackerEncoder>::__move_assign((a1 + 9), a2 + 9);
  WeakRetained = objc_loadWeakRetained(a2 + 21);
  objc_storeWeak(a1 + 21, WeakRetained);

  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign((a1 + 11), a2 + 22);
  a2[4] = v17;
  a2[5] = v18;
  *(a2 + 12) = v19;
  *a2 = v13;
  a2[1] = v14;
  a2[2] = v15;
  a2[3] = v16;
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(a2 + 104, v20);
  v10 = *(a2 + 18);
  if (v10)
  {
    *(a2 + 19) = v10;
    operator delete(v10);
  }

  a2[9] = *__p;
  *(a2 + 20) = v22;
  __p[1] = 0;
  v22 = 0;
  __p[0] = 0;
  v11 = objc_loadWeakRetained(&v23);
  objc_storeWeak(a2 + 21, v11);

  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign((a2 + 11), v24);
  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::~__hash_table(v24);
  objc_destroyWeak(&v23);
  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  return std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::~__hash_table(v20);
}

void std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

__n128 std::vector<HUDGPUTimeTrackerEncoder>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<HUDTimeRange>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,HUDGPUTimeTrackerTopObjectHeapValue>>(void *a1, unint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *a2;
    if (v3 >= *&v4)
    {
      v6 = v3 % *&v4;
    }
  }

  else
  {
    v6 = (*&v4 - 1) & v3;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v9 = v8[1];
    if (v9 == v3)
    {
      break;
    }

    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v4)
      {
        v9 %= *&v4;
      }
    }

    else
    {
      v9 &= *&v4 - 1;
    }

    if (v9 != v6)
    {
      goto LABEL_18;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_18;
    }
  }

  if (v8[2] != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,unsigned long long>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned long long>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

char *std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<std::__wrap_iter<HUDTimeRange*>,std::__wrap_iter<HUDTimeRange*>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
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
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDTimeRange>>(a1, v15);
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

uint64_t *std::vector<MTL4CommandBufferCommit>::__init_with_size[abi:ne200100]<MTL4CommandBufferCommit*,MTL4CommandBufferCommit*>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTL4CommandBufferCommit>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_10D44(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<MTL4CommandBufferCommit>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTL4CommandBufferCommit>>(a1, a2);
  }

  std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTL4CommandBufferCommit>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerCommandBuffer>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long &&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void __cxx_global_array_dtor()
{
  v0 = &off_76050;
  v1 = -4248;
  do
  {

    v0 -= 9;
    v1 += 72;
  }

  while (v1);
}

char *HUDGPUTimeTrackerEncoderTypeName(uint64_t a1, uint64_t a2)
{
  if (a1 >= 7)
  {
    HUDGPUTimeTrackerEncoderTypeName_cold_1();
  }

  return (&HUDGPUTimeTrackerEncoderTypeName_names)[a1];
}

void HUDInsightsCreatePrototypes(uint64_t result, uint64_t a2)
{
  if (HUDInsightsCreatePrototypes_onceToken != -1)
  {
    HUDInsightsCreatePrototypes_cold_1();
  }
}

double HUDCompilerInsightsInit(uint64_t a1)
{
  *(a1 + 160) = 0;
  result = 0.0;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void _HUDTargetRebindingInsightReport(uint64_t a1, uint64_t a2)
{
  v4 = +[_CADeveloperHUDProperties instance];
  v5 = [v4 graphicsAPI];

  if (v5 > 2)
  {
    v6 = &stru_6ADA0;
  }

  else
  {
    v6 = [NSString stringWithFormat:off_68C80[v5]];
  }

  v14 = 0;
  v15 = 0;
  v10 = @"com.apple.hud.insights.rebinding";
  v11 = @"Frequent Render Target Change";
  v7 = v6;
  v12 = v7;
  v13 = @"API Usage Patterns";
  if (a1)
  {
    v4 = [NSData dataWithBytes:a1 length:760, v10, v11, v12, v13, v14, v15];
    v14 = v4;
    v8 = [*(a1 + 824) copy];
  }

  else
  {
    v8 = 0;
    v14 = 0;
  }

  v15 = v8;
  v16 = &off_6F1A8;
  v17 = &off_6F1C0;
  v18 = xmmword_547F0;
  if (a1)
  {
  }

  v9 = [_CADeveloperHUDProperties instance:v10];
  [v9 addInsight:&v10 isPrototype:a2];

  __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(&v10);
}

void _HUDTargetBlitInsightReport(uint64_t a1, uint64_t a2)
{
  v5 = +[_CADeveloperHUDProperties instance];
  v6 = [v5 graphicsAPI];

  if (v6 - 1 >= 2)
  {
    if (!v6 && a1 && *(a1 + 788))
    {
      v9 = @"Detected high number of interleaved blit command encoder and other types of encoders. Consider batching resource updates or adopting MTL4ComputeCommandEncoder.";
      goto LABEL_9;
    }
  }

  else if (a1 && *(a1 + 788))
  {
    v9 = @"Detected frequent resource copies interleaved with regular GPU commands. Consider batching resource updates.";
LABEL_9:
    v7 = [NSString stringWithFormat:v9];
    v10 = v7;
    goto LABEL_11;
  }

  v10 = &stru_6ADA0;
LABEL_11:
  v20 = 0;
  v21 = 0;
  v16 = @"com.apple.hud.insights.blitswap";
  IsProcessTranslated = MTLHudIsProcessTranslated(v7, v8);
  v12 = @"Interleaved Blit Command Encoders";
  if (IsProcessTranslated)
  {
    v12 = @"Interleaved Resource Copy";
  }

  v17 = v12;
  v13 = v10;
  v18 = v13;
  v19 = @"API Usage Patterns";
  if (a1)
  {
    v2 = [NSData dataWithBytes:a1 length:760, v16, v17, v18, v19, v20, v21];
    v20 = v2;
    v14 = [*(a1 + 824) subdataWithRange:{0, *(a1 + 832)}];
  }

  else
  {
    v14 = 0;
    v20 = 0;
  }

  v21 = v14;
  v22 = &off_6F1D8;
  v23 = &off_6F1F0;
  v24 = xmmword_547F0;
  if (a1)
  {
  }

  v15 = +[_CADeveloperHUDProperties instance];
  [v15 addInsight:&v16 isPrototype:a2];

  __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(&v16);
}

void _HUDTessellationInsightReport(uint64_t a1, uint64_t a2)
{
  v4 = +[_CADeveloperHUDProperties instance];
  v5 = [v4 graphicsAPI];

  if (v5 - 1 > 1)
  {
    v7 = &stru_6ADA0;
  }

  else
  {
    if (a1 && *(a1 + 12))
    {
      v6 = [NSString stringWithFormat:@"Detected tessellation / geometry stage usage. Tessellation stage has a high cost of emulation on Apple GPUs. Consider use or transpile to Mesh shaders instead."];
    }

    else
    {
      v6 = &stru_6ADA0;
    }

    v10 = @"com.apple.hud.insights.tessellation";
    v11 = @"Tessellation or Geometry Stage";
    v7 = v6;
    v12 = v7;
    v13 = @"API Usage Patterns";
    if (a1)
    {
      v8 = [NSData dataWithBytes:a1 length:24, v10, v11, v12, v13];
    }

    else
    {
      v8 = 0;
    }

    v14 = v8;
    v15 = 0;
    v16 = &off_6F208;
    v17 = &off_6F220;
    v18 = xmmword_547F0;
    if (a1)
    {
    }

    v9 = [_CADeveloperHUDProperties instance:v10];
    [v9 addInsight:&v10 isPrototype:a2];

    __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(&v10);
  }
}

void _HUDBarrierInsightReport(uint64_t a1, uint64_t a2)
{
  v4 = +[_CADeveloperHUDProperties instance];
  v5 = [v4 graphicsAPI];

  if (v5 - 1 > 1)
  {
    v6 = &stru_6ADA0;
  }

  else
  {
    [NSString stringWithFormat:@"Game Porting Toolkit detected over synchronization due to coarse barrier usage. Consider using fine grained synchronization primitives when porting to Metal."];
    v9 = @"com.apple.hud.insights.barrier-usage";
    v6 = v10 = @"Coarse D3D Barrier Usage";
    v11 = v6;
    v12 = @"API Usage Patterns";
    if (a1)
    {
      v7 = [NSData dataWithBytes:a1 length:24, v9, v10, v11, v12];
    }

    else
    {
      v7 = 0;
    }

    v13 = v7;
    v14 = 0;
    v15 = &off_6F238;
    v16 = &off_6F250;
    v17 = xmmword_54800;
    if (a1)
    {
    }

    v8 = [_CADeveloperHUDProperties instance:v9];
    [v8 addInsight:&v9 isPrototype:a2];

    __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(&v9);
  }
}

void _HUDCompilerStatInsightReport(uint64_t a1, uint64_t a2)
{
  v4 = +[_CADeveloperHUDProperties instance];
  v5 = [v4 graphicsAPI];

  if (v5 - 1 >= 2)
  {
    if (!v5 && a1)
    {
      v6 = @"Compiled %llu shaders. Total compilation time is %.2fms. Consider adopting MTL4Compiler for more fine grained compilations.";
      goto LABEL_7;
    }
  }

  else if (a1)
  {
    v6 = @"Compiled %llu shaders. Total compilation time is %.2fms.";
LABEL_7:
    v7 = [NSString stringWithFormat:v6, *(a1 + 8), *(a1 + 48) / 1000000.0];
    goto LABEL_9;
  }

  v7 = &stru_6ADA0;
LABEL_9:
  v11[0] = @"com.apple.hud.insights.compiler";
  v11[1] = @"Shader Compiler Activity";
  v8 = v7;
  v11[2] = v8;
  v11[3] = @"API Usage Patterns";
  if (a1)
  {
    v9 = [NSData dataWithBytes:a1 length:168];
  }

  else
  {
    v9 = 0;
  }

  v11[4] = v9;
  v11[5] = 0;
  v11[6] = &off_6F268;
  v11[7] = &off_6F280;
  v12 = xmmword_547F0;
  if (a1)
  {
  }

  v10 = +[_CADeveloperHUDProperties instance];
  [v10 addInsight:v11 isPrototype:a2];

  __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(v11);
}

void _HUDGameModeInsightReport(uint64_t a1, uint64_t a2)
{
  if ((MTLHudIsProcessTranslated(a1, a2) & 1) == 0)
  {
    v3 = +[_CADeveloperHUDProperties instance];
    v4 = [v3 graphicsAPI];

    if (!v4)
    {
      v5 = [_CADeveloperHUDProperties instance:@"com.apple.hud.insights.gamemode"];
      [v5 addInsight:&v6 isPrototype:a1];

      __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(&v6);
    }
  }
}

void _HUDMetal3To4EfficientEncoderInsightReport(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v6 = &stru_6ADA0;
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v4 = +[_CADeveloperHUDProperties instance];
  v5 = [v4 graphicsAPI];

  if (!v5)
  {
    if (*(a1 + 788))
    {
      v6 = [NSString stringWithFormat:@"Detected high CPU encoding cost with encoders spending an average of %.2f%% of frame time encoding. Consider migrating to MTL4CommandBuffer.", fminf((*(a1 + 800) / *(a1 + 784)) * 100.0, 100.0)];
    }

    else
    {
      v6 = &stru_6ADA0;
    }

LABEL_9:
    v8[0] = @"com.apple.hud.insights.3to4.efficientencoding";
    v8[1] = @"GPU Command Encoding - MTL4CommandBuffer";
    v6 = v6;
    v8[2] = v6;
    v8[3] = @"API Usage Patterns";
    v8[4] = 0;
    v8[5] = 0;
    v8[6] = &off_6F298;
    v8[7] = &off_6F2B0;
    v9 = xmmword_54810;
    v7 = +[_CADeveloperHUDProperties instance];
    [v7 addInsight:v8 isPrototype:a2];

    __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(v8);
    goto LABEL_10;
  }

  v6 = &stru_6ADA0;
LABEL_10:
}

void sub_11BC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(va);
  _Unwind_Resume(a1);
}

double HUDCompilerStatisticsInit(_OWORD *a1)
{
  result = 0.0;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

void HUDCompilerInsightHandleCompilerStatistics(uint64_t a1, int64x2_t *a2, __int128 *a3)
{
  if (*(HUDGetGlobalConfig(a1, a2) + 3) == 1)
  {
    v6 = HUDCurrentTimeInNs();
    v8 = v6;
    v9 = a2[2].i64[1];
    if (v9)
    {
      ++*(a1 + 40);
      v10 = *(a1 + 8);
      if (!v10)
      {
        v11 = *a3;
        v12 = a3[1];
        *(a1 + 88) = a3[2];
        *(a1 + 72) = v12;
        *(a1 + 56) = v11;
        v13 = a3[3];
        v14 = a3[4];
        v15 = a3[5];
        *(a1 + 152) = a3[6];
        *(a1 + 136) = v15;
        *(a1 + 120) = v14;
        *(a1 + 104) = v13;
        v9 = a2[2].i64[1];
      }
    }

    else
    {
      v10 = *(a1 + 8);
    }

    *(a1 + 48) += a2[4].i64[0];
    *(a1 + 8) = v10 + v9;
    *(a1 + 16) = vaddq_s64(*(a1 + 16), a2[3]);
    ++*(a1 + 32);
    v16 = (v6 - *a1) / 1000000000.0;
    if (v16 >= *(HUDGetGlobalConfig(v6, v7) + 31))
    {
      if (*a1)
      {
        if (*(a1 + 48))
        {
          _HUDCompilerStatInsightReport(a1, 0);
        }
      }

      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 8) = 0u;
      *a1 = v8;
    }
  }
}

void HUDTargetRebindingInsightEncoderInitRender(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = 0;
  v20 = v3;
  do
  {
    v5 = [v3 colorAttachments];
    v6 = [v5 objectAtIndexedSubscript:v4];

    v7 = [v6 texture];

    if (v7)
    {
      v8 = [v6 texture];
      v9 = [v8 gpuResourceID];

      *(a1 + 8 * v4) = v9;
    }

    ++v4;
    v3 = v20;
  }

  while (v4 != 8);
  v10 = [v20 depthAttachment];
  v11 = [v10 texture];

  if (v11)
  {
    v12 = [v20 depthAttachment];
    v13 = [v12 texture];
    v14 = [v13 gpuResourceID];

    *(a1 + 64) = v14;
  }

  v15 = [v20 stencilAttachment];
  v16 = [v15 texture];

  if (v16)
  {
    v17 = [v20 depthAttachment];
    v18 = [v17 texture];
    v19 = [v18 gpuResourceID];

    *(a1 + 72) = v19;
  }

  *(a1 + 80) = 1;
}

uint64_t HUDTargetRebindingInsightContextInit(uint64_t a1)
{
  bzero(a1, 0x2F8uLL);
  *(a1 + 784) = 0;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0;
  *(a1 + 808) = HUDCurrentTimeInNs();
  v2 = objc_opt_new();
  v3 = *(a1 + 840);
  *(a1 + 840) = v2;

  v4 = objc_opt_new();
  v5 = *(a1 + 848);
  *(a1 + 848) = v4;

  return _objc_release_x1(v4, v5);
}

double _HUDTargetRebindCheckRenderEncoderGroup(uint64_t a1)
{
  if (*(a1 + 704) >= 2u)
  {
    v2 = [*(a1 + 848) count];
    v3 = *(a1 + 700);
    if ((v2 / v3) <= 0.3)
    {
      ++*(a1 + 684);
    }

    if (*(a1 + 817))
    {
      v4 = +[NSMutableString stringWithFormat:](NSMutableString, "stringWithFormat:", @"    <====== Consecutive %d render encoders, %d unique color attachments, %d total color attachments, ratio = %f ("), *(a1 + 704), v2, v3, (v2 / v3);
      [v4 appendString:@""]);
      NSLog(@"[libMTLHud] %@", v4);
    }
  }

  [*(a1 + 848) removeAllObjects];
  result = 0.0;
  *(a1 + 700) = 0;
  return result;
}

void HUDTargetRebindingInsightContextBeginFrame(uint64_t a1, int a2, int a3, uint64_t a4)
{
  bzero(a1, 0x2F8uLL);
  *(a1 + 724) = 0;
  *(a1 + 752) = a4;
  v8 = 272 * (a3 + a2);
  v9 = *(a1 + 824);
  if (v9)
  {
    if ([v9 length] < v8)
    {
      [*(a1 + 824) increaseLengthBy:{v8 - objc_msgSend(*(a1 + 824), "length")}];
    }
  }

  else
  {
    v10 = [NSMutableData dataWithLength:v8];
    v11 = *(a1 + 824);
    *(a1 + 824) = v10;
  }

  *(a1 + 832) = 0;
}

id HUDTargetRebindingInsightContextNextFrame(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = _HUDTargetRebindCheckRenderEncoderGroup(a1);
  if (*(a1 + 817))
  {
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"    <====== Num unique attachments: %lu, total attachments: %u", [*(a1 + 840) count], *(a1 + 696));
    NSLog(@"[libMTLHud] %@", v9);

    v10 = *(a1 + 817) == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = *(a1 + 692);
  if (v11 >= 0xB)
  {
    ++*(a1 + 768);
  }

  if (*(a1 + 688))
  {
    ++*(a1 + 776);
  }

  v12 = *(a1 + 816);
  *(a1 + 772) += v11;
  *(a1 + 780) += *(a1 + 748);
  *(a1 + 792) = vadd_s32(*(a1 + 792), *(a1 + 724));
  *(a1 + 708) = [*(a1 + 840) count];
  v13 = *(a1 + 680);
  if (v13 > 0xA || *(a1 + 656) >= 0x1Eu && *(a1 + 684) >= 3u)
  {
    ++*(a1 + 760);
  }

  *(a1 + 764) += v13;
  if (a3)
  {
    v14 = a3[24];
    *(a1 + 736) = v14;
    v15 = a3[27];
    if (v15)
    {
      v16 = v14 / v15;
      if (v16 > 0.5 && (a3[3] > 0x4FuLL || a3[1] >= 0xAuLL))
      {
        *(a1 + 800) = *(a1 + 800) + v16;
        ++*(a1 + 784);
      }
    }
  }

  else
  {
    *(a1 + 736) = 0;
  }

  v17 = HUDCurrentTimeInNs();
  v18 = (v17 - *(a1 + 808));
  if ((*(HUDGetGlobalConfig(v17, v19) + 31) * 1000000000.0) >= v18)
  {
    v21 = *(a1 + 788) + 1;
  }

  else
  {
    v20 = *(a1 + 788);
    if ((*(a1 + 760) / v20) >= 0.5)
    {
      _HUDTargetRebindingInsightReport(a1, 0);
      v20 = *(a1 + 788);
    }

    if ((*(a1 + 768) / v20) >= 0.5)
    {
      _HUDTargetBlitInsightReport(a1, 0);
      v20 = *(a1 + 788);
    }

    if ((*(a1 + 784) / v20) >= 0.5)
    {
      _HUDMetal3To4EfficientEncoderInsightReport(a1, 0);
    }

    *(a1 + 808) = v17;
    *(a1 + 760) = 0u;
    *(a1 + 776) = 0u;
    *(a1 + 788) = 0u;
    v21 = 1;
  }

  *(a1 + 788) = v21;
  if (a2)
  {
    memcpy(a2, a1, 0x2F8uLL);
  }

  if (!v10)
  {
    *(a1 + 817) = 0;
  }

  if (v12)
  {
    *(a1 + 817) = v12;
    *(a1 + 816) = 0;
    v22 = [NSString stringWithFormat:@"====== Frame %zu Encoding ======", a4];
    NSLog(@"[libMTLHud] %@", v22);
  }

  v23 = *(a1 + 840);

  return [v23 removeAllObjects];
}

void HUDTargetRebindingInsightContextProcessCommandBuffer(uint64_t a1, uint64_t a2, unsigned int a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a4;
  v15 = v14;
  ++*(a1 + 4 * a3 + 716);
  ++*(a1 + 728);
  memset(v18, 0, 224);
  LODWORD(v18[0]) = a3;
  *&v18[14] = a5;
  *(&v18[14] + 1) = a6;
  *&v18[15] = a7;
  *(&v18[15] + 1) = a8;
  v18[16] = HUDInvalidTimeRange;
  if (v14)
  {
    strncpy(v18 + 4, [v14 UTF8String], 0x80uLL);
    if ([v15 length] >= 0x80)
    {
      BYTE3(v18[8]) = 0;
    }
  }

  v16 = *(a1 + 832) + 272;
  if (v16 < [*(a1 + 824) length])
  {
    v17 = [*(a1 + 824) mutableBytes];
    memcpy(&v17[*(a1 + 832)], v18, 0x110uLL);
    *(a1 + 832) += 272;
  }
}

void HUDTargetRebindingInsightContextProcessEncoder(int32x2_t *a1, char *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v16 = a3;
  v17 = a1[81].i32[0];
  v18 = v17 - 1;
  if (!v17)
  {
    v18 = 2;
  }

  v79 = v18;
  v19 = a1[27 * v18 + 10].i32[0];
  v77 = v16;
  if (v16)
  {
    v20 = v16;
    strncpy(a2 + 84, [v77 UTF8String], 0x80uLL);
    if ([v77 length] >= 0x80)
    {
      a2[211] = 0;
    }
  }

  else
  {
    a2[84] = 0;
  }

  v21 = *&a1[104] + 272;
  if (v21 <= [*&a1[103] length])
  {
    v93 = *(a2 + 10);
    v94 = *(a2 + 11);
    v95 = *(a2 + 12);
    v96 = *(a2 + 26);
    v89 = *(a2 + 6);
    v90 = *(a2 + 7);
    v91 = *(a2 + 8);
    v92 = *(a2 + 9);
    v85 = *(a2 + 2);
    v86 = *(a2 + 3);
    v87 = *(a2 + 4);
    v88 = *(a2 + 5);
    v83 = *a2;
    v84 = *(a2 + 1);
    v22 = [*&a1[103] mutableBytes] + *&a1[104];
    *v22 = v83;
    *(v22 + 1) = v84;
    *(v22 + 4) = v87;
    *(v22 + 5) = v88;
    *(v22 + 2) = v85;
    *(v22 + 3) = v86;
    *(v22 + 8) = v91;
    *(v22 + 9) = v92;
    *(v22 + 6) = v89;
    *(v22 + 7) = v90;
    *(v22 + 26) = v96;
    *(v22 + 11) = v94;
    *(v22 + 12) = v95;
    *(v22 + 10) = v93;
    *(v22 + 27) = 1;
    *(v22 + 28) = a4;
    *(v22 + 29) = a5;
    *(v22 + 30) = a6;
    *(v22 + 31) = a7;
    *(v22 + 32) = a9;
    *(v22 + 33) = a10;
    *&a1[104] += 272;
  }

  v23 = &a1[27 * a1[81].u32[0]];
  v24 = *(a2 + 1);
  *v23->i8 = *a2;
  *v23[2].i8 = v24;
  v25 = *(a2 + 2);
  v26 = *(a2 + 3);
  v27 = *(a2 + 5);
  *v23[8].i8 = *(a2 + 4);
  *v23[10].i8 = v27;
  *v23[4].i8 = v25;
  *v23[6].i8 = v26;
  v28 = *(a2 + 6);
  v29 = *(a2 + 7);
  v30 = *(a2 + 9);
  *v23[16].i8 = *(a2 + 8);
  *v23[18].i8 = v30;
  *v23[12].i8 = v28;
  *v23[14].i8 = v29;
  v31 = *(a2 + 10);
  v32 = *(a2 + 11);
  v33 = *(a2 + 12);
  v23[26] = *(a2 + 208);
  *v23[22].i8 = v32;
  *v23[24].i8 = v33;
  *v23[20].i8 = v31;
  v34 = *(a2 + 20);
  if (v34 == 1)
  {
    v35 = 0;
    v36 = &IOReportChannelGetChannelID_ptr;
    do
    {
      if (*&a2[v35])
      {
        a1[87] = vadd_s32(a1[87], 0x100000001);
        v37 = a1[105];
        v38 = [NSNumber numberWithUnsignedLongLong:?];
        [v37 addObject:v38];

        v39 = a1[106];
        v40 = [NSNumber numberWithUnsignedLongLong:*&a2[v35]];
        [v39 addObject:v40];
      }

      v35 += 8;
    }

    while (v35 != 64);
    if (v19 == 1)
    {
      v75 = v34;
      v76 = a2;
      context = objc_autoreleasePoolPush();
      v41 = objc_opt_new();
      v42 = 0;
      v82 = 0;
      v43 = 0;
      v44 = v79;
      v78 = a1;
      v45 = &a1[27 * (v79 % 3)];
      v47 = v45[8];
      v46 = v45[9];
      do
      {
        v48 = 0;
        v80 = v44;
        v49 = v78 + 216 * v44 - 648 * ((v44 * 0x5555555555555556uLL) >> 64);
        v50 = &v78[27 * ((v43 + v79) % 3)];
        v81 = v50;
        do
        {
          if (*&v49[v48])
          {
            if (v43)
            {
              if (*&v50[8] == *&v47 && *&v50[9] == *&v46)
              {
                v51 = [v36[293] numberWithUnsignedLongLong:?];
                v52 = [v41 containsObject:v51];
                v53 = v43;
                v54 = v47;
                v55 = v41;
                v56 = v46;
                v57 = v36;
                v58 = v52;

                v82 += v58;
                v36 = v57;
                v46 = v56;
                v41 = v55;
                v47 = v54;
                v43 = v53;
                v50 = v81;
              }
            }

            else
            {
              v59 = [v36[293] numberWithUnsignedLongLong:?];
              [v41 addObject:v59];
            }

            ++v42;
          }

          v48 += 8;
        }

        while (v48 != 64);
        v43 = (v43 + 1);
        v44 = v80 + 1;
      }

      while (v43 != 3);

      objc_autoreleasePoolPop(context);
      a2 = v76;
      a1 = v78;
      v19 = 1;
      v34 = v75;
      if (v42)
      {
        v60 = (v82 + v82) / v42;
        if (v60 > 0.01 && v78[102].i8[1])
        {
          v61 = [NSString stringWithFormat:@"\tComparing last %d render passes, same attachment %d, total attachment %d, ratio = %f", 3, 2 * v82, v42, v60];
          NSLog(@"[libMTLHud] %@", v61);
        }

        v62 = v78[85].i32[0];
        if (v60 >= 0.5)
        {
          ++v62;
        }

        v78[85].i32[0] = v62;
      }
    }
  }

  v63 = a1[89].i32[0];
  if (v63 && v34 == v63)
  {
    ++a1[86].i32[1];
  }

  if (v34 != 3 || v19 == 3)
  {
    v65 = 0;
  }

  else
  {
    v65 = v19;
  }

  a1[89].i32[0] = v65;
  ++a1[81].i32[v34 + 1];
  ++a1[90].i32[1];
  if (v34 == 1)
  {
    v66 = a1[93].u32[1];
    if (v66 >= 5)
    {
      ++a1[86].i32[0];
    }

    a1[93].i32[1] = a1[93].i32[0] + v66;
    a1[93].i32[0] = 0;
    v67 = 88;
  }

  else
  {
    _HUDTargetRebindCheckRenderEncoderGroup(a1);
    v67 = 93;
  }

  v68 = v77;
  ++a1[v67].i32[0];
  a1[81].i32[0] = (a1[81].i32[0] + 1) % 3u;
  if (a1[102].i8[1])
  {
    v69 = objc_opt_new();
    v70 = *(a2 + 20);
    if (v70 == 1)
    {
      if (v77)
      {
        [v69 appendFormat:@"%@ Color Attachments: ", v77];
      }

      else
      {
        [v69 appendFormat:@"Render Encoder Color Attachments: ", v72];
      }

      for (i = 0; i != 64; i += 8)
      {
        [v69 appendFormat:@"0x%llx | ", *&a2[i]];
      }

      [v69 appendFormat:@", Depth: 0x%llx, Stencil: 0x%llx\n", *(a2 + 8), *(a2 + 9)];
    }

    else if (v77)
    {
      if (v70 >= 7)
      {
        HUDGPUTimeTrackerEncoderTypeName_cold_1();
      }

      [v69 appendFormat:@"%@ (%s)\n", v77, (&HUDGPUTimeTrackerEncoderTypeName_names)[v70]];
    }

    else
    {
      if (v70 >= 7)
      {
        HUDGPUTimeTrackerEncoderTypeName_cold_1();
      }

      [v69 appendFormat:@"%s\n", (&HUDGPUTimeTrackerEncoderTypeName_names)[v70], v73];
    }

    NSLog(@"[libMTLHud] %@", v69);

    v68 = v77;
  }
}

void *HUDBarrierInsightContextInit(void *result)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  return result;
}

void HUDBarrierInsightCheck(uint64_t a1)
{
  v11 = +[_CADeveloperHUDProperties instance];
  v2 = [v11 getMetric:@"com.apple.d3dmetal.skipped-global-barrier-count"];
  v3 = [v11 getMetric:@"com.apple.d3dmetal.global-barrier-count"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && *([v3 record] + 1028) > 0.0)
  {
    v6 = *([v2 record] + 1028);
    v7 = v6 / *([v4 record] + 1028);
    if (v7 >= 0.2)
    {
      ++*(a1 + 8);
    }

    *(a1 + 16) = *(a1 + 16) + v7;
    ++*(a1 + 12);
  }

  v8 = HUDCurrentTimeInNs();
  v9 = (v8 - *a1);
  if ((*(HUDGetGlobalConfig(v8, v10) + 31) * 1000000000.0) < v9)
  {
    if ((*(a1 + 8) / *(a1 + 12)) >= 0.5)
    {
      _HUDBarrierInsightReport(a1, 0);
    }

    *a1 = v8;
  }
}

void HUDTessellationInsightCheck(uint64_t a1)
{
  v7 = +[_CADeveloperHUDProperties instance];
  v2 = [v7 getMetric:@"com.apple.d3dmetal.tess-count"];
  v3 = [v7 getMetric:@"com.apple.d3dmetal.tess-count"];
  if (v2 | v3)
  {
    if ((++*(a1 + 12), v2) && [v2 intValue] > 0 || v3 && objc_msgSend(v3, "intValue") >= 1)
    {
      ++*(a1 + 8);
    }
  }

  v4 = HUDCurrentTimeInNs();
  v5 = (v4 - *a1);
  if ((*(HUDGetGlobalConfig(v4, v6) + 31) * 1000000000.0) < v5)
  {
    if ((*(a1 + 8) / *(a1 + 12)) >= 0.5)
    {
      _HUDTessellationInsightReport(a1, 0);
    }

    *a1 = v4;
    *(a1 + 8) = 0;
  }
}

void HUDGameModeInsightCheck(uint64_t a1, uint64_t a2)
{
  IsProcessTranslated = MTLHudIsProcessTranslated(a1, a2);
  if ((IsProcessTranslated & 1) == 0 && !MTLHUDGetGameModeKeyState(IsProcessTranslated, v3))
  {
    v4 = HUDCurrentTimeInNs();
    v5 = (v4 - HUDGameModeInsightCheck_lastReportTime);
    if ((*(HUDGetGlobalConfig(v4, v6) + 31) * 1000000000.0) < v5)
    {
      _HUDGameModeInsightReport(0, v7);
      HUDGameModeInsightCheck_lastReportTime = v4;
    }
  }
}

void __destructor_8_s0_s8_s16_s24_s32_s40_s48_s56(uint64_t a1)
{
  v2 = *(a1 + 56);
}

void _HUDInsightReportGenerationInsight(HUDInsightReportContext *a1, unint64_t a2)
{
  targetStartTime = a1->targetStartTime;
  if (targetStartTime <= a2)
  {
    targetStartTime = a1->targetEndTime;
    if (targetStartTime <= a2)
    {
      v7 = [(NSURL *)a1->outputURL path];
      v6 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Report written to %s", [v7 UTF8String]);

      goto LABEL_7;
    }

    v3 = @"Collecting performance report data, remaining %d seconds";
  }

  else
  {
    v3 = @"Performance report generation starting... %d";
  }

  v4 = (targetStartTime - a2);
  v5 = &unk_54000;
  LODWORD(v5) = llround(v4 / 1000000000.0);
  v6 = [NSString stringWithFormat:v3, v5];
LABEL_7:
  v10 = @"com.apple.hud.insights.internal.report-generation";
  v11 = @"Metal HUD Report Generation";
  v8 = v6;
  v12 = v8;
  v13 = @"HUD Internal";
  v14 = 0;
  v15 = 0;
  v16 = &__NSArray0__struct;
  v17 = &__NSArray0__struct;
  v18 = xmmword_54870;
  v9 = +[_CADeveloperHUDProperties instance];
  [v9 addInsight:&v10 isPrototype:0];
}

void sub_130C0(_Unwind_Exception *a1, uint64_t a2, HUDInsightDescriptor *a3)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void HUDInsightReportStart(uint64_t a1, void *a2)
{
  v18 = a2;
  v3 = *(a1 + 16);
  *(a1 + 16) = 0;

  *(a1 + 24) = 0;
  if (!*(a1 + 72))
  {
    *(a1 + 72) = 5000000000;
  }

  *(a1 + 32) = *[v18 layerState];
  *(a1 + 40) = *[v18 layerState];
  v4 = *(a1 + 72);
  if (v4 >= 0x34630B8A000)
  {
    v4 = 3600000000000;
  }

  *(a1 + 72) = v4;
  v5 = HUDCurrentTimeInNs();
  *(a1 + 48) = v5;
  *(a1 + 56) = v5 + 3000000000u;
  *(a1 + 64) = *(a1 + 72) + v5 + 3000000000u;
  v7 = HUDGetGlobalConfig(v5, v6);
  *(a1 + 25) = *(v7 + 3);
  *(a1 + 26) = *(HUDGetGlobalConfig(v7, v8) + 4);
  *(a1 + 80) = *(a1 + 48);
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  v9 = [NSMutableData dataWithLength:24000];
  v10 = *(a1 + 240);
  *(a1 + 240) = v9;

  *(a1 + 248) = 0;
  *(a1 + 88) = *(a1 + 48);
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  v13 = HUDGetGlobalConfig(v11, v12);
  *(v13 + 3) = 1;
  v15 = HUDGetGlobalConfig(v13, v14);
  *(v15 + 4) = 1;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v15, v16);
  HUDGPUTimeTrackerEnableEncoderGPUTimeSampling(GlobalInstance, 1);
  _HUDInsightReportGenerationInsight(a1, *(a1 + 48));
}

BOOL HUDInsightReportHeartbeat(void *a1, void *a2, int a3)
{
  v5 = a2;
  v6 = HUDCurrentTimeInNs();
  v7 = v6;
  v8 = a1[7];
  if (a1[10] < v8 && v6 >= v8)
  {
    a1[4] = *[v5 layerState];
    v46 = 0;
    Snapshot = HUDSystemStateGetSnapshot(&v46, v10, v11, v12);
    v15 = v46;
    if (v46)
    {
      a1[12] = v46[1];
      a1[14] = *v15;
    }

    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(Snapshot, v14);
    TotalCompilerStatistics = HUDGPUTimeTrackerGetTotalCompilerStatistics(GlobalInstance);
    v18 = *TotalCompilerStatistics;
    v19 = TotalCompilerStatistics[2];
    *(a1 + 9) = TotalCompilerStatistics[1];
    *(a1 + 10) = v19;
    *(a1 + 8) = v18;
    v20 = TotalCompilerStatistics[3];
    v21 = TotalCompilerStatistics[4];
    v22 = TotalCompilerStatistics[6];
    *(a1 + 13) = TotalCompilerStatistics[5];
    *(a1 + 14) = v22;
    *(a1 + 11) = v20;
    *(a1 + 12) = v21;
    HUDMTLOverlayResetStats(TotalCompilerStatistics, v23);
    v45[0] = _NSConcreteStackBlock;
    v45[1] = 3221225472;
    v45[2] = __HUDInsightReportHeartbeat_block_invoke;
    v45[3] = &__block_descriptor_40_e14_v24__0I8I12_16l;
    v45[4] = a1;
    [v5 snapshotNextDrawable:800 callback:v45];
  }

  if (v7 - a1[11] >= 0x3B9ACA00)
  {
    _HUDInsightReportGenerationInsight(a1, v7);
    a1[11] = v7;
  }

  a1[10] = v7;
  v24 = a1[8];
  if (v7 < v24)
  {
    if (v7 > a1[7])
    {
      v40 = a1[31];
      if (v40 + 4 > [a1[30] length])
      {
        [a1[30] increaseLengthBy:24000];
      }

      v41 = [a1[30] bytes];
      v42 = a1[31];
      *&v41[v42] = a3;
      a1[31] = v42 + 4;
    }
  }

  else
  {
    v25 = [v5 layerState];
    a1[5] = *v25;
    v26 = *(a1 + 26);
    v28 = HUDGetGlobalConfig(v25, v27);
    *(v28 + 4) = v26 != 0;
    v30 = HUDGPUTimeTrackerGetGlobalInstance(v28, v29);
    HUDGPUTimeTrackerEnableEncoderGPUTimeSampling(v30, *(a1 + 26) != 0);
    v46 = 0;
    HUDSystemStateGetSnapshot(&v46, v31, v32, v33);
    v34 = v46;
    if (v46)
    {
      a1[13] = v46[1];
      a1[15] = *v34;
    }

    v35 = +[_CADeveloperHUDProperties instance];
    [v35 pushGeneratedReportURL:*a1];

    _HUDInsightReportGenerationInsight(a1, v7);
    if (!*(a1 + 25))
    {
      v38 = HUDGetGlobalConfig(v36, v37);
      v39 = dispatch_time(0, (*(v38 + 30) * 1000000000.0));
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = __HUDInsightReportHeartbeat_block_invoke_2;
      block[3] = &__block_descriptor_40_e5_v8__0l;
      block[4] = a1;
      dispatch_after(v39, &_dispatch_main_q, block);
    }
  }

  return v7 >= v24;
}

void __HUDInsightReportHeartbeat_block_invoke(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  *(v5 + 8) = a2;
  *(v5 + 12) = a3;
  v6 = [NSData dataWithBytes:a4 length:(4 * a2 * a3)];
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  *(v7 + 16) = v6;

  *(*(a1 + 32) + 24) = 1;
}

void _HUDInsightReportGenerateFrameEncoding(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v62 = a2;
  v8 = a4;
  v9 = v8;
  if (a3)
  {
    if (a5)
    {
      v61 = [v8 bytes];
      v59 = a5 / 0x110;
      if (!(a5 % 0x110))
      {
        [v62 appendFormat:@"<div id=frameencoding class=box><details open><summary class=sectionheader>Frame Encoding</summary><div>\n"];
        [v62 appendFormat:@"<div><span class=infotitle>Frame</span> <span>%zu</span></div>\n", *(a3 + 752)];
        [v62 appendFormat:@"<div><span class=infotitle>Command Buffer Count</span> <span>%u</span></div>\n", *(a3 + 728)];
        v11 = 0;
        v12 = a3 + 652;
        do
        {
          v13 = dword_54890[v11];
          if (*(v12 + 4 * v13))
          {
            [v62 appendFormat:@"<div><span class=infotitle>%s Count</span> <span>%u</span></div>\n", HUDGPUTimeTrackerEncoderTypeName(dword_54890[v11], v10), *(v12 + 4 * v13)];
          }

          ++v11;
        }

        while (v11 != 7);
        memset_pattern16(__b, &unk_54880, 0x38uLL);
        v14 = objc_opt_new();
        v52 = v14;
        [v62 appendFormat:@"<div><table class=commandbuffertable>"];
        if (a5 >= 0x110)
        {
          v42 = v9;
          v16 = 0;
          v17 = 0;
          v58 = 0;
          v57 = 0;
          v18 = 1;
          while (1)
          {
            v19 = &v61[v16];
            v20 = *&v61[v16 + 216];
            if (v20 == 1)
            {
              break;
            }

            if (!v20)
            {
              [v14 removeAllObjects];
              v21 = v18 + 1;
              if (v61[v16 + 4])
              {
                [NSString stringWithUTF8String:&v61[v16 + 4]];
              }

              else
              {
                [NSString stringWithFormat:@"Command Buffer %zu", v21];
              }
              v27 = ;
              v60 = v21;
              if (v17 < v59 - 1 && *&v61[v16 + 488])
              {
                if (v58)
                {
                  [v62 appendString:@"</table></td></tr>\n"];
                }

                [v62 appendFormat:@"<tr><td>%@</td><td><table class=encodertable>\n", v27];
                if (!v16)
                {
                  [v62 appendFormat:@"<tr><th>Encoder</th><th>Color 0</th><th>Color 2</th><th>Color 3</th><th>Color 4</th><th>Color 5</th><th>Color 6</th><th>Color 7</th><th>Color 8</th><th>Depth</th><th>Stencil</th></tr>"];
                }

                v58 = 1;
              }

              else
              {
                if (v58)
                {
                  [v62 appendString:@"</table></td></tr>\n"];
                }

                [v62 appendFormat:@"<tr><td>%@</td><td>No encoders</td></tr>\n", v27];
                v58 = 0;
              }

              v57 = &v61[v16];
LABEL_34:

              goto LABEL_35;
            }

            v60 = v18;
LABEL_35:
            ++v17;
            v16 += 272;
            v18 = v60;
            if (v59 == v17)
            {
              v9 = v42;
              if (v58)
              {
                [v62 appendString:@"</td></table></tr>\n"];
              }

              goto LABEL_59;
            }
          }

          v60 = v18;
          v22 = *(v19 + 20);
          v23 = __b[v22] + 1;
          __b[v22] = v23;
          if (v22 == 1)
          {
            if (v57 && v61[v16 + 84])
            {
              v25 = [NSString stringWithUTF8String:&v61[v16 + 84]];
              v50 = 0;
              v26 = 1;
              v27 = v25;
            }

            else
            {
              v25 = [NSString stringWithFormat:@"%s %zu", HUDGPUTimeTrackerEncoderTypeName(1, v15), v23];
              v26 = 0;
              v50 = 1;
              v27 = v13;
              v44 = v25;
            }

            v51 = v26;
            v33 = HUDGPUTimeTrackerEncoderTypeName(1, v24);
            v49 = _HUDInsightReportColorAttachmentCell(*v19, v14);
            v56 = _HUDInsightReportColorAttachmentCell(*&v61[v16 + 8], v14);
            v55 = _HUDInsightReportColorAttachmentCell(*&v61[v16 + 16], v14);
            v54 = _HUDInsightReportColorAttachmentCell(*&v61[v16 + 24], v14);
            v53 = _HUDInsightReportColorAttachmentCell(*&v61[v16 + 32], v14);
            v34 = _HUDInsightReportColorAttachmentCell(*&v61[v16 + 40], v14);
            v35 = _HUDInsightReportColorAttachmentCell(*&v61[v16 + 48], v14);
            v36 = _HUDInsightReportColorAttachmentCell(*&v61[v16 + 56], v14);
            v48 = v25;
            v37 = *&v61[v16 + 72];
            v38 = v33;
            if (v37)
            {
              v46 = [NSString stringWithFormat:@"0x%llx", v37];
              v39 = v46;
            }

            else
            {
              v39 = @"-";
            }

            v40 = *&v61[v16 + 64];
            if (v40)
            {
              v45 = [NSString stringWithFormat:@"0x%llx", v40];
              v41 = v45;
            }

            else
            {
              v41 = @"-";
            }

            [v62 appendFormat:@"<tr><td class=tdwithcomment>%@ <span class=tdcomment>%s</span></td>%@%@%@%@%@%@%@%@<td>%@</td><td>%@</td></tr>\n", v48, v38, v49, v56, v55, v54, v53, v34, v35, v36, v39, v41];
            if (v40)
            {
            }

            if (v37)
            {
            }

            if (v50)
            {
            }

            v13 = v27;
            v14 = v52;
            if ((v51 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          else
          {
            [v14 removeAllObjects];
            if (v57 && v61[v16 + 84])
            {
              v30 = [NSString stringWithUTF8String:&v61[v16 + 84]];
              v31 = 0;
              v32 = 1;
              v27 = v30;
            }

            else
            {
              v30 = [NSString stringWithFormat:@"%s %zu", HUDGPUTimeTrackerEncoderTypeName(v22, v28), v23];
              v32 = 0;
              v31 = 1;
              v27 = v47;
              v43 = v30;
            }

            [v62 appendFormat:@"<tr><td class=alignleft tdwithcomment>%@ <span class=tdcomment>%s</span></td><td colspan=10>-</td></tr>\n", v30, HUDGPUTimeTrackerEncoderTypeName(v22, v29)];
            if (v31)
            {
            }

            v47 = v27;
            v14 = v52;
            if ((v32 & 1) == 0)
            {
              goto LABEL_35;
            }
          }

          goto LABEL_34;
        }

LABEL_59:
        [v62 appendString:@"</table></div>\n"];

        [v62 appendFormat:@"</div></details></div>\n"];
      }
    }
  }
}

id _HUDInsightReportColorAttachmentCell(unint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = [NSNumber numberWithUnsignedLongLong:a1];
    [v3 addObject:v4];

    v12 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    v5.n128_f32[0] = a1;
    MTLHUDRandomMaterialColor(v5, v6, &v12, &v11, &v10);
    v7 = [NSString stringWithFormat:@"<td style=background-color: rgba(%d, %d, %d, 0.5)>0x%llx</td>", (v12 * 255.0), (v11 * 255.0), (v10 * 255.0), a1];
  }

  else
  {
    v7 = [NSString stringWithFormat:@"<td>-</td>"];
  }

  v8 = v7;

  return v8;
}

void _HUDInsightReportGenerateFrameTiming(uint64_t a1, void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v117 = a2;
  v114 = a4;
  if (a3)
  {
    if (a5)
    {
      v8 = [v114 bytes];
      v116 = a5 / 0x110;
      if (!(a5 % 0x110))
      {
        v9 = v8;
        v10 = [v117 appendFormat:@"<div id=frametiming class=box><details open><summary class=sectionheader>Frame Timing</summary><div>\n"];
        GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v10, v11);
        if ((HUDGPUTimeTrackerCanEnableGPUTimeSampling(GlobalInstance) & 1) == 0)
        {
          [v117 appendFormat:@"<div class=warning><span>Encoder GPU timing cannot be enabled, either due to Metal Device does not support encoder stage GPU counter sampling or your app uses the Metal GPU counters API.</span></div>\n"];
          [v117 appendFormat:@"<div class=gap></div>\n"];
        }

        [v117 appendFormat:@"<div><span class=infotitle>Frame</span> <span>%zu</span></div>\n", *(a3 + 752)];
        [v117 appendFormat:@"<div><span class=infotitle>Command Buffer Count</span> <span>%u</span></div>\n", *(a3 + 728)];
        v14 = 0;
        v15 = a3 + 652;
        do
        {
          v16 = dword_54890[v14];
          if (*(v15 + 4 * v16))
          {
            [v117 appendFormat:@"<div><span class=infotitle>%s Count</span> <span>%u</span></div>\n", HUDGPUTimeTrackerEncoderTypeName(dword_54890[v14], v13), *(v15 + 4 * v16)];
          }

          ++v14;
        }

        while (v14 != 7);
        memset_pattern16(__b, &unk_54880, 0x38uLL);
        if (a5 >= 0x110)
        {
          v20 = 0;
          v21 = 0;
          v22 = 0;
          v115 = 0;
          v23 = v9 + 264;
          v24 = a5 / 0x110;
          do
          {
            v26 = *(v23 - 5);
            v25 = *(v23 - 4);
            v44 = v25 >= v26;
            v27 = v25 - v26;
            if (v44)
            {
              v28 = v27;
            }

            else
            {
              v28 = 0;
            }

            v30 = *(v23 - 3);
            v29 = *(v23 - 2);
            v44 = v29 >= v30;
            v31 = v29 - v30;
            if (!v44)
            {
              v31 = 0;
            }

            if (*(v23 - 12))
            {
              if (v22 <= v28)
              {
                v22 = v28;
              }

              v32 = *(v23 - 1);
              v33 = *v23 - v32;
              if (*v23 < v32)
              {
                v33 = 0;
              }

              v34 = v33 + v31;
              v35 = v115;
              if (v115 <= v34)
              {
                v35 = v34;
              }

              v115 = v35;
            }

            else
            {
              if (v20 <= v28)
              {
                v20 = v28;
              }

              if (v21 <= v31)
              {
                v21 = v31;
              }
            }

            v23 += 34;
            --v24;
          }

          while (v24);
          v19 = v20;
          v18 = v21;
          v17 = v22;
        }

        else
        {
          v115 = 0;
          v17 = 0.0;
          v18 = 0.0;
          v19 = 0.0;
        }

        [v117 appendFormat:@"<div class=gap></div>\n"];
        [v117 appendFormat:@"<div class=box>\n"];
        [v117 appendFormat:@"<div><table class=commandbuffertimetable>\n"];
        [v117 appendFormat:@"<tr><th>Command Buffer</th><th>CPU</th><th>GPU</th></tr>\n"];
        if (a5 >= 0x110)
        {
          v36 = 0;
          v37 = 1;
          v111 = v9;
          v38 = v9;
          v39 = a5 / 0x110;
          do
          {
            if (!*(v38 + 54))
            {
              ++v37;
              if (v38[4])
              {
                [NSString stringWithUTF8String:v38 + 4];
              }

              else
              {
                [NSString stringWithFormat:@"Command Buffer %zu", v37];
              }
              v40 = ;
              v42 = *(v38 + 28);
              v41 = *(v38 + 29);
              v43 = @"-";
              v44 = v41 >= v42;
              v45 = v41 - v42;
              if (v44)
              {
                v46 = v45;
              }

              else
              {
                v46 = 0;
              }

              if (v45 != 0 && v44)
              {
                MTLHUDFormattedTimeInNanosecond(v46, 3, "", __str, 0x200uLL);
                v43 = [NSString stringWithUTF8String:__str];
              }

              v48 = *(v38 + 30);
              v47 = *(v38 + 31);
              v49 = @"-";
              v50 = v47 >= v48;
              v51 = v47 - v48;
              if (v50)
              {
                v52 = v51;
              }

              else
              {
                v52 = 0;
              }

              if (v51 != 0 && v50)
              {
                MTLHUDFormattedTimeInNanosecond(v52, 3, "", __str, 0x200uLL);
                v49 = [NSString stringWithUTF8String:__str];
              }

              [v117 appendFormat:@"<tr><td>%@</td><td><div style=position: relative;><div style=width: %d%%; class=hchartbar></div><span class=tdoverlay>%@</span></div></td><td><div style=position: relative;><div style=width: %d%%; class=hchartbar2></div><span class=tdoverlay>%@</span></div></td></tr>\n", v40, (v46 / v19 * 100.0), v43, (v52 / v18 * 100.0), v49];

              v36 = v38;
            }

            v38 += 272;
            --v39;
          }

          while (v39);
          v113 = v36 == 0;
          v9 = v111;
        }

        else
        {
          v113 = 1;
        }

        [v117 appendString:@"</table></div></div>\n"];
        [v117 appendFormat:@"<div class=gap></div>\n"];
        [v117 appendFormat:@"<div class=box>\n"];
        [v117 appendFormat:@"<div><table class=encodertimetable>\n"];
        [v117 appendFormat:@"<tr><th>Encoder</th><th>CPU</th><th>GPU</th><th>Vertex</th><th>Fragment</th></tr>\n"];
        if (a5 >= 0x110)
        {
          v54 = v9 + 264;
          v55 = v115;
          do
          {
            if (*(v54 - 12) == 1)
            {
              v56 = *(v54 - 46);
              v57 = __b[v56] + 1;
              __b[v56] = v57;
              if (v56 == 1)
              {
                v59 = *(v54 - 3);
                v58 = *(v54 - 2);
                v44 = v58 >= v59;
                v60 = v58 - v59;
                if (v44)
                {
                  v61 = v60;
                }

                else
                {
                  v61 = 0;
                }

                v62 = *(v54 - 1);
                if (*v54 >= v62)
                {
                  v63 = *v54 - v62;
                }

                else
                {
                  v63 = 0;
                }

                if (v113 || !*(v54 - 180))
                {
                  v65 = [NSString stringWithFormat:@"%s %zu", HUDGPUTimeTrackerEncoderTypeName(1, v53), v57];
                  v109 = 0;
                  v110 = 1;
                  v66 = v111;
                  v105 = v65;
                }

                else
                {
                  v65 = [NSString stringWithUTF8String:v54 - 180];
                  v109 = 1;
                  v110 = 0;
                  v66 = v65;
                }

                v108 = v66;
                v72 = HUDGPUTimeTrackerEncoderTypeName(1, v64);
                v74 = *(v54 - 5);
                v73 = *(v54 - 4);
                v75 = @"-";
                v76 = v73 >= v74;
                v77 = v73 - v74;
                if (v76)
                {
                  v78 = v77;
                }

                else
                {
                  v78 = 0;
                }

                if (v77 != 0 && v76)
                {
                  MTLHUDFormattedTimeInNanosecond(v78, 3, "", __str, 0x200uLL);
                  v75 = [NSString stringWithUTF8String:__str];
                }

                v112 = v75;
                v79 = v63 + v61;
                if (v63 + v61)
                {
                  MTLHUDFormattedTimeInNanosecond(v63 + v61, 3, "", __str, 0x200uLL);
                  v80 = [NSString stringWithUTF8String:__str];
                  v81 = @"-";
                }

                else
                {
                  v81 = @"-";
                  v80 = @"-";
                }

                v96 = *(v54 - 3);
                v95 = *(v54 - 2);
                v97 = v95 >= v96;
                v98 = v95 - v96;
                if (v97)
                {
                  v99 = v98;
                }

                else
                {
                  v99 = 0;
                }

                if (v98 != 0 && v97)
                {
                  MTLHUDFormattedTimeInNanosecond(v99, 3, "", __str, 0x200uLL);
                  v81 = [NSString stringWithUTF8String:__str];
                }

                v100 = v72;
                v101 = v78;
                v102 = *(v54 - 1);
                v103 = @"-";
                if (*v54 >= v102)
                {
                  v104 = *v54 - v102;
                }

                else
                {
                  v104 = 0;
                }

                if (*v54 > v102)
                {
                  MTLHUDFormattedTimeInNanosecond(v104, 3, "", __str, 0x200uLL);
                  v103 = [NSString stringWithUTF8String:__str];
                }

                [v117 appendFormat:@"<tr><td class=tdwithcomment>%@ <span class=tdcomment>%s</span></td><td><div style=position: relative;><div style=width: %d%%; class=hchartbar></div><span class=tdoverlay>%@</span></div></td><td><div style=position: relative;><div style=width: %d%%; class=hchartbar2></div><span class=tdoverlay>%@</span></div></td><td><div style=position: relative;><div style=width: %d%%; class=hchartbar2></div><span class=tdoverlay>%@</span></div></td><td><div style=position: relative;><div style=width: %d%%; class=hchartbar2></div><span class=tdoverlay>%@</span></div></td></tr>\n", v65, v100, (v101 / v17 * 100.0), v112, 100 * (v79 / v115), v80, (v99 / v55 * 100.0), v81, (v104 / v55 * 100.0), v103];

                if (v110)
                {
                }

                v71 = v108;
                v111 = v108;
                if ((v109 & 1) == 0)
                {
                  goto LABEL_112;
                }
              }

              else
              {
                if (v113 || !*(v54 - 180))
                {
                  v68 = [NSString stringWithFormat:@"%s %zu", HUDGPUTimeTrackerEncoderTypeName(v56, v53), v57];
                  v70 = 0;
                  v69 = 1;
                  v71 = v107;
                  v106 = v68;
                }

                else
                {
                  v68 = [NSString stringWithUTF8String:v54 - 180];
                  v69 = 0;
                  v70 = 1;
                  v71 = v68;
                }

                v82 = HUDGPUTimeTrackerEncoderTypeName(v56, v67);
                v84 = *(v54 - 5);
                v83 = *(v54 - 4);
                v85 = @"-";
                v86 = v83 >= v84;
                v87 = v83 - v84;
                if (v86)
                {
                  v88 = v87;
                }

                else
                {
                  v88 = 0;
                }

                if (v87 != 0 && v86)
                {
                  MTLHUDFormattedTimeInNanosecond(v88, 3, "", __str, 0x200uLL);
                  v85 = [NSString stringWithUTF8String:__str];
                }

                v90 = *(v54 - 3);
                v89 = *(v54 - 2);
                v91 = @"-";
                v92 = v89 >= v90;
                v93 = v89 - v90;
                if (v92)
                {
                  v94 = v93;
                }

                else
                {
                  v94 = 0;
                }

                if (v93 != 0 && v92)
                {
                  MTLHUDFormattedTimeInNanosecond(v94, 3, "", __str, 0x200uLL);
                  v91 = [NSString stringWithUTF8String:__str];
                }

                [v117 appendFormat:@"<tr><td class=tdwithcomment>%@ <span class=tdcomment>%s</span></td><td><div style=position: relative;><div style=width: %d%%; class=hchartbar></div><span class=tdoverlay>%@</span></div></td><td><div style=position: relative;><div style=width: %d%%; class=hchartbar2></div><span class=tdoverlay>%@</span></div></td><td>-</td><td>-</td></tr>\n", v68, v82, (v88 / v17 * 100.0), v85, (v94 / v55 * 100.0), v91];

                if (v69)
                {
                }

                v107 = v71;
                if ((v70 & 1) == 0)
                {
                  goto LABEL_112;
                }
              }
            }

LABEL_112:
            v54 += 34;
            --v116;
          }

          while (v116);
        }

        [v117 appendString:@"</table></div></div>\n"];
        [v117 appendFormat:@"</div></details></div>\n"];
      }
    }
  }
}

void _HUDInsightReportGenerateShaderCompilation(const HUDInsightReportContext *a1, NSMutableString *a2, HUDCompilerStatistics *a3)
{
  v5 = a2;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v5, v6);
  TotalCompilerStatistics = HUDGPUTimeTrackerGetTotalCompilerStatistics(GlobalInstance);
  if (a3)
  {
    v9 = TotalCompilerStatistics[5];
    if (v9 >= a3->totalSyncShaderCompilations)
    {
      v10 = TotalCompilerStatistics[6];
      v11 = TotalCompilerStatistics[7];
      v12 = TotalCompilerStatistics[8];
      [(NSMutableString *)v5 appendFormat:@"<div id=shadercompilation class=box><details open><summary class=sectionheader>Shader Compilation</summary><div>\n"];
      v13 = v10 + v9;
      if (v10 + v9 != a3->totalAsyncShaderCompilations + a3->totalSyncShaderCompilations)
      {
        [(NSMutableString *)v5 appendFormat:@"<div class=sectionheader>Last %llu Frames</div>\n", a1->endFrameNumber - a1->startFrameNumber];
        [(NSMutableString *)v5 appendFormat:@"<div><span class=infotitle>Compiled Shaders</span> <span>%zu</span></div>\n", v13 - (a3->totalSyncShaderCompilations + a3->totalAsyncShaderCompilations)];
        [(NSMutableString *)v5 appendFormat:@"<div><span class=infotitle>Cached Shaders</span> <span>%zu</span></div>\n", v11 - a3->totalCachedRequests];
        MTLHUDFormattedTimeInNanosecond(v12 - a3->totalSyncCompileTime, 0, "", __str, 0x100uLL);
        [(NSMutableString *)v5 appendFormat:@"<div><span class=infotitle>Compilation Time</span> <span>%s</span></div>\n", __str];
        [(NSMutableString *)v5 appendFormat:@"<div class=gap></div>\n"];
        [(NSMutableString *)v5 appendFormat:@"<details><summary>Shader Table</summary><div><table class=shadertable>\n"];
        v14 = [(NSMutableString *)v5 appendFormat:@"<tr><th>Type</th><th>Name</th><th>Time</th></tr>\n"];
        v16 = HUDGPUTimeTrackerGetGlobalInstance(v14, v15);
        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = ___Z42_HUDInsightReportGenerateShaderCompilationPK23HUDInsightReportContextP15NSMutableStringP21HUDCompilerStatistics_block_invoke;
        v25[3] = &unk_68CC0;
        v17 = v5;
        v26 = v17;
        HUDGPUTimeTrackerEnumerateCompilerStatistics(v16, a3, v25, v24);
        [(NSMutableString *)v17 appendString:@"</table></div></details>\n"];

        [(NSMutableString *)v17 appendFormat:@"<div class=sectionheader style=margin-top: 20px>All</div>\n"];
      }

      [(NSMutableString *)v5 appendFormat:@"<div><span class=infotitle>Compiled Shaders</span> <span>%zu</span></div>\n", v13];
      [(NSMutableString *)v5 appendFormat:@"<div><span class=infotitle>Cached Shaders</span> <span>%zu</span></div>\n", v11];
      MTLHUDFormattedTimeInNanosecond(v12, 0, "", __str, 0x100uLL);
      [(NSMutableString *)v5 appendFormat:@"<div><span class=infotitle>Compilation Time</span> <span>%s</span></div>\n", __str];
      [(NSMutableString *)v5 appendFormat:@"<div class=gap></div>\n"];
      [(NSMutableString *)v5 appendFormat:@"<details><summary>Shader Table</summary><div><table class=shadertable>\n"];
      v18 = [(NSMutableString *)v5 appendFormat:@"<tr><th>Type</th><th>Name</th><th>Time</th></tr>\n"];
      v20 = HUDGPUTimeTrackerGetGlobalInstance(v18, v19);
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = ___Z42_HUDInsightReportGenerateShaderCompilationPK23HUDInsightReportContextP15NSMutableStringP21HUDCompilerStatistics_block_invoke_2;
      v22[3] = &unk_68CC0;
      v21 = v5;
      v23 = v21;
      HUDGPUTimeTrackerEnumerateCompilerStatistics(v20, 0, v22, v24);
      [(NSMutableString *)v21 appendString:@"</table></div></details>\n"];

      [(NSMutableString *)v21 appendFormat:@"</div></details></div>\n"];
    }
  }
}

void ___Z42_HUDInsightReportGenerateShaderCompilationPK23HUDInsightReportContextP15NSMutableStringP21HUDCompilerStatistics_block_invoke(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = a2;
  MTLHUDFormattedTimeInNanosecond(*a3, 0, "", __str, 0x100uLL);
  if (!*a3)
  {
    strcpy(__str, "Cached");
  }

  [*(a1 + 32) appendFormat:@"<tr><td>%@</td><td>%@</td><td>%s</td></tr>\n", v5, a3[2], __str];
}

void ___Z42_HUDInsightReportGenerateShaderCompilationPK23HUDInsightReportContextP15NSMutableStringP21HUDCompilerStatistics_block_invoke_2(uint64_t a1, void *a2, unint64_t *a3)
{
  v5 = a2;
  MTLHUDFormattedTimeInNanosecond(*a3, 0, "", __str, 0x100uLL);
  if (!*a3)
  {
    strcpy(__str, "Cached");
  }

  [*(a1 + 32) appendFormat:@"<tr><td>%@</td><td>%@</td><td>%s</td></tr>\n", v5, a3[2], __str];
}

void _HUDInsightReportGenerateAdditionalContext(const HUDInsightReportContext *a1, NSMutableString *a2, HUDUserClientInsight *a3)
{
  v6 = a2;
  v4 = a3;
  if ([*-[HUDUserClientInsight descriptor](v4 "descriptor")] & 1) != 0 || (objc_msgSend(*-[HUDUserClientInsight descriptor](v4, "descriptor"), "isEqualToString:", @"com.apple.hud.insights.blitswap") & 1) != 0 || (objc_msgSend(*-[HUDUserClientInsight descriptor](v4, "descriptor"), "isEqualToString:", @"com.apple.hud.insights.3to4.efficientencoding"))
  {
    v5 = @"<a href=#frameencoding style=padding-top: 10px; display: block;>Frame Encoding</a>\n";
LABEL_5:
    [(NSMutableString *)v6 appendFormat:v5];
    goto LABEL_6;
  }

  if ([*-[HUDUserClientInsight descriptor](v4 "descriptor")])
  {
    v5 = @"<a href=#shadercompilation style=padding-top: 10px; display: block;>Shader Compilation</a>\n";
    goto LABEL_5;
  }

LABEL_6:
}

void _HUDInsightReportGenerateInsightsSection(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = a3;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v7)
  {
    v8 = 0;
    v9 = *v22;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        if ([v11 enabled] && objc_msgSend(v11, "numInstances") && objc_msgSend(v11, "timeUpdated") >= *(a1 + 56))
        {
          v8 += [*(objc_msgSend(v11 "descriptor") + 3)] ^ 1;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v7);

    if (v8)
    {
      [(NSMutableString *)v5 appendFormat:@"<div id=insights class=box><details open><summary class=sectionheader>Performance Insights</summary><div>\n"];
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v12 = v6;
      v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
      if (v13)
      {
        v14 = *v18;
        do
        {
          for (j = 0; j != v13; j = j + 1)
          {
            if (*v18 != v14)
            {
              objc_enumerationMutation(v12);
            }

            v16 = *(*(&v17 + 1) + 8 * j);
            if (-[HUDUserClientInsight enabled](v16, "enabled") && -[HUDUserClientInsight numInstances](v16, "numInstances") && -[HUDUserClientInsight timeUpdated](v16, "timeUpdated") >= *(a1 + 56) && ([*(-[HUDUserClientInsight descriptor](v16 "descriptor") + 3)] & 1) == 0)
            {
              [(NSMutableString *)v5 appendFormat:@"<div class=insight><h4>%@</h4>\n", *([(HUDUserClientInsight *)v16 descriptor]+ 1)];
              _HUDInsightReportGenerateAdditionalContext([(NSMutableString *)v5 appendFormat:@"<div>%@</div>\n", *([(HUDUserClientInsight *)v16 descriptor]+ 2)], v5, v16);
              [(NSMutableString *)v5 appendFormat:@"</div>\n"];
            }
          }

          v13 = [v12 countByEnumeratingWithState:&v17 objects:v25 count:16];
        }

        while (v13);
      }

      [(NSMutableString *)v5 appendFormat:@"</div></details></div>\n"];
    }
  }

  else
  {
  }
}

void _HUDInsightReportGenerateFrameIntervalDistribution(const HUDInsightReportContext *a1, NSMutableString *a2)
{
  v3 = a2;
  if (a1->frameIntervalsWritingOffset)
  {
    v72 = 0;
    v73 = 0;
    v68 = v3;
    v71 = &v72;
    memset(&v70, 0, sizeof(v70));
    v4 = [(NSMutableData *)a1->frameIntervals bytes];
    frameIntervalsWritingOffset = a1->frameIntervalsWritingOffset;
    if (frameIntervalsWritingOffset >= 4)
    {
      v6 = v4;
      v7 = frameIntervalsWritingOffset >> 2;
      std::vector<unsigned int>::reserve(&v70, frameIntervalsWritingOffset >> 2);
      v8 = 0;
      v9 = 0;
      v10 = v6;
      v11 = v7;
      do
      {
        v13 = *v10++;
        v12 = v13;
        if (v13)
        {
          v69 = (round(v12 / 10000.0) * 10000.0);
          *__str = &v69;
          v14 = std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(&v71, &v69, &std::piecewise_construct, __str);
          ++v14[5];
          end = v70.__end_;
          if (v70.__end_ >= v70.__end_cap_.__value_)
          {
            begin = v70.__begin_;
            v18 = v70.__end_ - v70.__begin_;
            v19 = v70.__end_ - v70.__begin_;
            v20 = v19 + 1;
            if ((v19 + 1) >> 62)
            {
              std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
            }

            v21 = v70.__end_cap_.__value_ - v70.__begin_;
            if ((v70.__end_cap_.__value_ - v70.__begin_) >> 1 > v20)
            {
              v20 = v21 >> 1;
            }

            v22 = v21 >= 0x7FFFFFFFFFFFFFFCLL;
            v23 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v22)
            {
              v23 = v20;
            }

            if (v23)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&v70, v23);
            }

            *(4 * v19) = v12;
            v16 = (4 * v19 + 4);
            memcpy(0, begin, v18);
            v24 = v70.__begin_;
            v70.__begin_ = 0;
            v70.__end_ = v16;
            v70.__end_cap_.__value_ = 0;
            if (v24)
            {
              operator delete(v24);
            }
          }

          else
          {
            *v70.__end_ = v12;
            v16 = end + 1;
          }

          v70.__end_ = v16;
          v8 += v12;
        }

        else
        {
          ++v9;
        }

        --v11;
      }

      while (v11);
      v25 = v8 / v7;
      v26 = 0.0;
      v27 = v6;
      v28 = v7;
      do
      {
        v29 = *v27++;
        v30 = v26 + (v29 - v25) * (v29 - v25);
        if (v29)
        {
          v26 = v30;
        }

        --v28;
      }

      while (v28);
      std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
      [(NSMutableString *)v68 appendFormat:@"<div id=frameintervaltable@ class=box>\n"];
      [(NSMutableString *)v68 appendFormat:@"<details open><summary class=sectionheader>Frame Interval Distribution</summary><div>\n"];
      [(NSMutableString *)v68 appendFormat:@"<div><span class=infotitle>Num Frames</span> <span>%zu</span></div>\n", v7];
      [(NSMutableString *)v68 appendFormat:@"<div><span class=infotitle>Missed Frames</span> <span>%llu</span></div>\n", v9];
      if (v73)
      {
        v31 = *v70.__begin_;
        if (v31)
        {
          MTLHUDFormattedTimeInNanosecond(v31, 3, "", __str, 0x200uLL);
          v32 = [NSString stringWithUTF8String:__str];
        }

        else
        {
          v32 = @"-";
        }

        [(NSMutableString *)v68 appendFormat:@"<div><span class=infotitle>Min</span> <span>%@</span></div>\n", v32];

        v33 = *(v70.__end_ - 1);
        if (v33)
        {
          MTLHUDFormattedTimeInNanosecond(v33, 3, "", __str, 0x200uLL);
          v34 = [NSString stringWithUTF8String:__str];
        }

        else
        {
          v34 = @"-";
        }

        [(NSMutableString *)v68 appendFormat:@"<div><span class=infotitle>Max</span> <span>%@</span></div>\n", v34];

        v35 = vcvtad_u64_f64(v25);
        if (v35)
        {
          MTLHUDFormattedTimeInNanosecond(v35, 3, "", __str, 0x200uLL);
          v36 = [NSString stringWithUTF8String:__str];
        }

        else
        {
          v36 = @"-";
        }

        [(NSMutableString *)v68 appendFormat:@"<div><span class=infotitle>Average</span> <span>%@</span></div>\n", v36];

        [(NSMutableString *)v68 appendFormat:@"<div class=gap></div>\n"];
        v37 = vcvtad_u64_f64(sqrt(v26 / (v7 - 1)));
        if (v37)
        {
          MTLHUDFormattedTimeInNanosecond(v37, 0, "", __str, 0x200uLL);
          v38 = [NSString stringWithUTF8String:__str];
        }

        else
        {
          v38 = @"-";
        }

        [(NSMutableString *)v68 appendFormat:@"<div><span class=infotitle>Standard Deviation</span> <span>%@</span></div>\n", v38];

        v39 = v70.__begin_[vcvtmd_s64_f64((v70.__end_ - v70.__begin_) * 0.05)];
        if (v39)
        {
          MTLHUDFormattedTimeInNanosecond(v39, 3, "", __str, 0x200uLL);
          v40 = [NSString stringWithUTF8String:__str];
        }

        else
        {
          v40 = @"-";
        }

        [(NSMutableString *)v68 appendFormat:@"<div><span class=infotitle>95%% Low</span> <span>%@</span></div>\n", v40];

        v41 = v70.__begin_[vcvtmd_s64_f64((v70.__end_ - v70.__begin_) * 0.01)];
        if (v41)
        {
          MTLHUDFormattedTimeInNanosecond(v41, 3, "", __str, 0x200uLL);
          v42 = [NSString stringWithUTF8String:__str];
        }

        else
        {
          v42 = @"-";
        }

        [(NSMutableString *)v68 appendFormat:@"<div><span class=infotitle>99%% Low</span> <span>%@</span></div>\n", v42];

        v43 = v70.__end_ - v70.__begin_;
        v44 = vcvtmd_s64_f64(v43 * 0.95);
        v45 = v43 - 1;
        if (v45 >= v44)
        {
          v45 = v44;
        }

        v46 = v70.__begin_[v45];
        if (v46)
        {
          MTLHUDFormattedTimeInNanosecond(v46, 3, "", __str, 0x200uLL);
          v47 = [NSString stringWithUTF8String:__str];
        }

        else
        {
          v47 = @"-";
        }

        [(NSMutableString *)v68 appendFormat:@"<div><span class=infotitle>95%% High</span> <span>%@</span></div>\n", v47];

        v48 = v70.__end_ - v70.__begin_;
        v49 = vcvtmd_s64_f64(v48 * 0.99);
        v50 = v48 - 1;
        if (v50 >= v49)
        {
          v50 = v49;
        }

        v51 = v70.__begin_[v50];
        if (v51)
        {
          MTLHUDFormattedTimeInNanosecond(v51, 3, "", __str, 0x200uLL);
          v52 = [NSString stringWithUTF8String:__str];
        }

        else
        {
          v52 = @"-";
        }

        [(NSMutableString *)v68 appendFormat:@"<div><span class=infotitle>99%% High</span> <span>%@</span></div>\n", v52];
      }

      [(NSMutableString *)v68 appendFormat:@"<div class=gap></div>\n"];
      [(NSMutableString *)v68 appendFormat:@"<table>\n"];
      v53 = v71;
      if (v71 != &v72)
      {
        v54 = 0;
        v55 = v71;
        do
        {
          if (v54 <= v55[5])
          {
            v54 = v55[5];
          }

          v56 = v55[1];
          if (v56)
          {
            do
            {
              v57 = v56;
              v56 = *v56;
            }

            while (v56);
          }

          else
          {
            do
            {
              v57 = v55[2];
              v58 = *v57 == v55;
              v55 = v57;
            }

            while (!v58);
          }

          v55 = v57;
        }

        while (v57 != &v72);
        v59 = &v72;
        if (v71 != &v72)
        {
          v60 = v54;
          do
          {
            v61 = v53[5];
            v62 = *(v53 + 8);
            if (v62)
            {
              MTLHUDFormattedTimeInNanosecond(v62, 3, "", __str, 0x200uLL);
              v63 = [NSString stringWithUTF8String:__str];
              v64 = v53[5];
            }

            else
            {
              v64 = v53[5];
              v63 = @"-";
            }

            LODWORD(v59) = vcvtps_s32_f32((v61 / v60) * 100.0);
            [(NSMutableString *)v68 appendFormat:@"<tr><td class=hcharttitle>%@</td> <td><div style=width: %d%%; class=hchartbar>%.2f%%</div></td> <td class=hchartvalue>%lu</td></tr>\n", v63, v59, (v64 / v7), v64];

            v65 = v53[1];
            if (v65)
            {
              do
              {
                v66 = v65;
                v65 = *v65;
              }

              while (v65);
            }

            else
            {
              do
              {
                v66 = v53[2];
                v58 = *v66 == v53;
                v53 = v66;
              }

              while (!v58);
            }

            v53 = v66;
            v59 = &v72;
          }

          while (v66 != &v72);
        }
      }

      [(NSMutableString *)v68 appendFormat:@"</table>\n"];
      [(NSMutableString *)v68 appendFormat:@"</div></details></div>\n"];
      [(NSMutableString *)v68 appendFormat:@"<script type=application/json id=frameintervaldata>\n { frameintervals: [ \n"];
      do
      {
        v67 = *v6++;
        [(NSMutableString *)v68 appendFormat:@"%d, ", v67];
        --v7;
      }

      while (v7);
      [(NSMutableString *)v68 deleteCharactersInRange:[(NSMutableString *)v68 length]- 2, 2];
      [(NSMutableString *)v68 appendFormat:@"\n] } </script>\n"];
    }

    if (v70.__begin_)
    {
      v70.__end_ = v70.__begin_;
      operator delete(v70.__begin_);
    }

    std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::destroy(&v71, v72);
    v3 = v68;
  }
}

void sub_15A34(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, void *a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::destroy(&a19, a20);

  _Unwind_Resume(a1);
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(this, __n);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }
}

void _HUDInsightReportGenerateTopCommandBuffers(const HUDInsightReportContext *a1, NSMutableString *a2)
{
  v2 = a2;
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v2, v3);
  v5 = HUDGPUTimeTrackerTopCommandBufferRecordsCount(GlobalInstance);
  if (v5)
  {
    [(NSMutableString *)v2 appendFormat:@"<div id=toplabeledcommandbuffers class=box><details open><summary class=sectionheader>Top Labeled Command Buffers</summary><div>\n"];
    [(NSMutableString *)v2 appendString:@"<div><table class=topobjecttable>\n"];
    v7 = [(NSMutableString *)v2 appendString:@"<tr><th>Label</th><th>Occurances</th><th>CPU Average</th><th>GPU Average</th>\n"];
    v9 = HUDGPUTimeTrackerGetGlobalInstance(v7, v8);
    v21[0] = _NSConcreteStackBlock;
    v21[1] = 3221225472;
    v21[2] = ___Z42_HUDInsightReportGenerateTopCommandBuffersPK23HUDInsightReportContextP15NSMutableString_block_invoke;
    v21[3] = &unk_68CE8;
    v10 = v2;
    v22 = v10;
    HUDGPUTimeTrackerEnumerateTopCommandBufferRecords(v9, v21);
    [(NSMutableString *)v10 appendString:@"</table></div>\n"];
    [(NSMutableString *)v10 appendFormat:@"</div></details></div>\n"];
  }

  v11 = HUDGPUTimeTrackerGetGlobalInstance(v5, v6);
  if (HUDGPUTimeTrackerTopEncoderRecordsCount(v11))
  {
    [(NSMutableString *)v2 appendFormat:@"<div id=toplabeledencoders class=box><details open><summary class=sectionheader>Top Labeled Encoders</summary><div>\n"];
    [(NSMutableString *)v2 appendString:@"<div><table class=topobjecttable>\n"];
    v12 = [(NSMutableString *)v2 appendString:@"<tr><th>Label</th><th>Occurances</th><th>CPU Average</th><th>GPU Average</th>\n"];
    v14 = HUDGPUTimeTrackerGetGlobalInstance(v12, v13);
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = ___Z42_HUDInsightReportGenerateTopCommandBuffersPK23HUDInsightReportContextP15NSMutableString_block_invoke_2;
    v19 = &unk_68CE8;
    v15 = v2;
    v20 = v15;
    HUDGPUTimeTrackerEnumerateTopEncoderRecords(v14, &v16);
    [(NSMutableString *)v15 appendString:@"</table></div>\n", v16, v17, v18, v19];
    [(NSMutableString *)v15 appendFormat:@"</div></details></div>\n"];
  }
}

void ___Z42_HUDInsightReportGenerateTopCommandBuffersPK23HUDInsightReportContextP15NSMutableString_block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = (a4 + 988);
  v7 = a2;
  MTLHUDFormattedTimeInNanosecond(v6[141], 0, "", __str, 0x200uLL);
  MTLHUDFormattedTimeInNanosecond(*v6, 0, "", v8, 0x200uLL);
  [*(a1 + 32) appendFormat:@"<tr><td>%@</td><td class=alignright>%d</td><td class=alignright>%s</td><td class=alignright>%s</td></tr>\n", v7, a3, v8, __str];
}

void ___Z42_HUDInsightReportGenerateTopCommandBuffersPK23HUDInsightReportContextP15NSMutableString_block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = (a4 + 988);
  v8 = a2;
  if (*(a4 + 2228))
  {
    MTLHUDFormattedTimeInNanosecond(v7[141], 0, "", __str, 0x100uLL);
  }

  else
  {
    strcpy(__str, "-");
  }

  MTLHUDFormattedTimeInNanosecond(*v7, 0, "", v9, 0x100uLL);
  [*(a1 + 32) appendFormat:@"<tr><td>%@</td><td class=alignright>%d</td><td class=alignright>%s</td><td class=alignright>%s</td></tr>\n", v8, a3, v9, __str];
}

void _HUDInsightReportGenerateMetrics(const HUDInsightReportContext *a1, NSMutableString *a2)
{
  v2 = a2;
  [(NSMutableString *)v2 appendString:@"<div id=metrics class=box><details open><summary class=sectionheader>Metrics</summary><div><div><table class=metricstable>\n"];
  [(NSMutableString *)v2 appendFormat:@"<tr><th>Metric</th><th>Average</th><th>Last</th><th>Min</th><th>Max</th>\n"];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  if (_HUDInsightReportMetrics(void)::onceToken != -1)
  {
    _HUDInsightReportGenerateMetrics();
  }

  v3 = _HUDInsightReportMetrics(void)::metrics;
  v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v10 + 1) + 8 * i);
        v8 = +[_CADeveloperHUDProperties instance];
        v9 = [v8 getMetric:v7];

        _HUDInsightReportAddMetricRow(v9, v2);
      }

      v4 = [v3 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  [(NSMutableString *)v2 appendString:@"</table></div>\n"];
  [(NSMutableString *)v2 appendFormat:@"</div></details></div>\n"];
}

void _HUDInsightReportAddMetricRow(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  if (v3 && [v3 totalSampleCount])
  {
    if ([v3 metricType] == 2)
    {
      v5 = [v3 displayName];
      v6 = [v3 stringValue];
      [v4 appendFormat:@"<tr><td>%@</td><td class=alignright>-</td><td class=alignright>%@</td><td class=alignright>-</td><td class=alignright>-</td></tr>\n", v5, v6];
    }

    else
    {
      v7 = [v3 displayName];
      [v3 averageValueForAllSamples];
      v9 = v8;
      v10 = v3;
      [v10 formatValue:v21 buffer:512 length:v9];
      v11 = [NSString stringWithUTF8String:v21];

      v12 = [v10 stringValue];
      [v10 minValueForAllSamples];
      v14 = v13;
      v15 = v10;
      [v15 formatValue:v21 buffer:512 length:v14];
      v16 = [NSString stringWithUTF8String:v21];

      [v15 maxValueForAllSamples];
      v18 = v17;
      v19 = v15;
      [v19 formatValue:v21 buffer:512 length:v18];
      v20 = [NSString stringWithUTF8String:v21];

      [v4 appendFormat:@"<tr><td>%@</td><td class=alignright>%@</td><td class=alignright>%@</td><td class=alignright>%@</td><td class=alignright>%@</td></tr>\n", v7, v11, v12, v16, v20];
    }
  }
}

void _HUDInsightReportGenerateGPTKMetrics(const HUDInsightReportContext *a1, NSMutableString *a2)
{
  v2 = a2;
  v3 = +[_CADeveloperHUDProperties instance];
  v4 = [v3 mainWindow];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = ___Z36_HUDInsightReportGenerateGPTKMetricsPK23HUDInsightReportContextP15NSMutableString_block_invoke;
  v6[3] = &unk_68D10;
  v5 = v2;
  v7 = v5;
  [v4 requestMetrics:v6];
}

void ___Z36_HUDInsightReportGenerateGPTKMetricsPK23HUDInsightReportContextP15NSMutableString_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 objectForKeyedSubscript:&off_6F328];
  if ([v3 enabled])
  {
    v4 = [v3 metrics];
    v5 = [v4 count];

    if (v5)
    {
      [*(a1 + 32) appendString:@"<div id=metrics class=box><details open><summary class=sectionheader>GPTK Metrics</summary><div><div><table class=metricstable>\n"];
      [*(a1 + 32) appendFormat:@"<tr><th>Metric</th><th>Average</th><th>Last</th><th>Min</th><th>Max</th>\n"];
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      v6 = [v3 metrics];
      v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v7)
      {
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(v6);
            }

            _HUDInsightReportAddMetricRow(*(*(&v10 + 1) + 8 * v9), *(a1 + 32));
            v9 = v9 + 1;
          }

          while (v7 != v9);
          v7 = [v6 countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }

      [*(a1 + 32) appendString:@"</table></div>\n"];
      [*(a1 + 32) appendFormat:@"</div></details></div>\n"];
    }
  }
}

void _HUDInsightReportGenerateMetadata(const HUDInsightReportContext *a1, NSMutableString *a2, const HUDMTLLayerState *a3, const HUDMTLLayerDrawableState *a4)
{
  v7 = a2;
  [(NSMutableString *)v7 appendFormat:@"<div id=reportinfo class=box><details open><summary class=sectionheader>Report Info\n</summary><div>"];
  v8 = objc_opt_new();
  v9 = +[NSLocale currentLocale];
  [v8 setLocale:v9];

  [v8 setDateFormat:@"yyyy-MM-dd HH:mm"];
  v10 = +[NSDate date];
  v11 = [v8 stringFromDate:v10];

  v35 = v11;
  v12 = [(NSMutableString *)v7 appendFormat:@"<div><span class=infotitle>Time</span> <span>%@</span></div>\n", v11];
  targetStartTime = a1->targetStartTime;
  v15 = HUDGetGlobalConfig(v12, v14);
  MTLHUDFormattedTimeInNanosecond(targetStartTime - *(v15 + 19), 0, "", __str, 0x200uLL);
  v16 = [(NSMutableString *)v7 appendFormat:@"<div><span class=infotitle>Start Frame</span> <span>%zu</span> (+ %s)</div>\n", a1->startFrameNumber, __str];
  targetEndTime = a1->targetEndTime;
  v19 = HUDGetGlobalConfig(v16, v18);
  MTLHUDFormattedTimeInNanosecond(targetEndTime - *(v19 + 19), 0, "", __str, 0x200uLL);
  [(NSMutableString *)v7 appendFormat:@"<div><span class=infotitle>End Frame</span> <span>%zu</span> (+ %s)</div>\n", a1->endFrameNumber, __str];
  MTLHUDFormattedTimeInNanosecond(a1->targetEndTime - a1->targetStartTime, 0, "", __str, 0x200uLL);
  [(NSMutableString *)v7 appendFormat:@"<div><span class=infotitle>Total Frames</span> <span>%zu</span> (%s)</div>\n", a1->endFrameNumber - a1->startFrameNumber, __str];
  v20 = [(NSMutableString *)v7 appendFormat:@"<div class=gap></div>\n"];
  if (MTLHudIsProcessTranslated(v20, v21))
  {
    v22 = +[_CADeveloperHUDProperties instance];
    v23 = [v22 graphicsAPI];

    if (v23 >= 3)
    {
      v24 = 0;
    }

    else
    {
      v24 = (&off_68D68)[v23];
    }

    [(NSMutableString *)v7 appendFormat:@"<div><span class=infotitle>Graphics API</span> <span>%s</span></div>\n", v24];
    v25 = [NSBundle bundleWithIdentifier:@"com.apple.D3DMetal"];
    v26 = [v25 infoDictionary];
    v27 = [v26 objectForKeyedSubscript:@"CFBundleVersion"];

    [(NSMutableString *)v7 appendFormat:@"<div><span class=infotitle>GPTK Version</span> <span>%@</span></div>\n", v27];
  }

  [(NSMutableString *)v7 appendFormat:@"<div class=gap></div>\n"];
  [(NSMutableString *)v7 appendFormat:@"<div><span class=infotitle>Resolution</span> <span>%dx%d</span></div>\n", a4->drawableWidth, a4->drawableHeight];
  [(NSMutableString *)v7 appendFormat:@"<div><span class=infotitle>Content Scale</span> <span>%.2f</span></div>\n", a4->layerContentsScale];
  [(NSMutableString *)v7 appendFormat:@"<div><span class=infotitle>Pixel Format</span> <span>%s</span></div>\n", HUDMTLPixelFormatName(a3->pixelFormat, v28)];
  [(NSMutableString *)v7 appendFormat:@"<div class=gap></div>\n"];
  v29 = 0;
  v36 = *&off_68D30;
  v37 = @"com.apple.hud-label.metalfx.v2.target_resolution";
  do
  {
    v30 = +[_CADeveloperHUDProperties instance];
    v31 = [v30 getMetric:*(&v36 + v29)];

    if (v31)
    {
      v32 = [v31 name];
      v33 = [v31 stringValue];
      [(NSMutableString *)v7 appendFormat:@"<div><span class=infotitle>%@</span> <span>%@</span></div>\n", v32, v33];
    }

    v29 += 8;
  }

  while (v29 != 24);
  for (i = 16; i != -8; i -= 8)
  {
  }

  [(NSMutableString *)v7 appendFormat:@"<div class=gap></div>\n"];
  MTLHUDFormattedBytes(a1->startAppMemory, 0, "", __str, 0x100uLL);
  MTLHUDFormattedBytes(a1->endAppMemory, 0, "", v39, 0x100uLL);
  [(NSMutableString *)v7 appendFormat:@"<div><span class=infotitle>App Memory</span> <span>%s - %s</span></div>\n", __str, v39];
  MTLHUDFormattedBytes(a1->startMetalMemory, 0, "", __str, 0x100uLL);
  MTLHUDFormattedBytes(a1->endMetalMemory, 0, "", v39, 0x100uLL);
  [(NSMutableString *)v7 appendFormat:@"<div><span class=infotitle>Metal Allocated Size</span> <span>%s - %s</span></div>\n", __str, v39];
  [(NSMutableString *)v7 appendFormat:@"</div></details></div>"];
}

void _HUDInsightReportGenerate(const HUDInsightReportContext *a1, const HUDMTLLayerState *a2, const HUDMTLLayerDrawableState *a3)
{
  v5 = [NSMutableString stringWithFormat:@"<html><body><style>%@</style>", @".center { margin: auto width: 80%; display: block; }\n.insight { padding: 0; }\n.insightdetail { padding: 20px 0; }\n.sectionheader { background-color: rgba(0.1, 0.1, 0.1, 0.1); border-radius: 4px; padding: 0px 10px; font-size: medium; margin-bottom: 10px; }\n.infotitle { width: 30%; display: inline-block; padding: 0px 10px;}\ntable { border-collapse: collapse; width:100% }\ntable tr { border: none; }\ntable td { font-size:small; padding: 6px 6px; border-right: solid 1px black; border-bottom: solid 1px black; }\ntable th { font-size:small; padding: 6px 6px; border-right: solid 1px black; border-bottom: solid 1px black; }\ntable td:last-child { padding: 6px 6px; border-bottom: solid 1px black;  border-right: solid 0px; }\ntable th:last-child { padding: 6px 6px; border-bottom: solid 1px black;  border-right: solid 0px; }\n.alignleft { text-align: start;}\n.alignright { text-align: end;}\nbody { font-family: 'SF Mono', SFMono-Regular, ui-monospace, 'DejaVu Sans Mono', Menlo, Consolas, monospace; font-size: small; }\n.commandbuffertable {table-layout: fixed; word-break: break-all;}\n.encodertable {table-layout: fixed; word-break: break-all;}\n.commandbuffertable td:nth-child(1) { width: 20%; }\n.encodertable th:nth-child(1) { width: 20%; }\n.box { border-radius: 8px;  border: 1px solid gray; margin: 24px 0px; padding: 10px 10px; }\n.tdwithcomment { position:relative; }\n.tdcomment { display:none; position:absolute; z-index:100; border:1px; background-color:white; border-style:solid; border-width:1px; border-color:rgb(0, 0, 0); padding:3px; color:rgb(0, 0, 0); top:30x; left:20px; }\n.tdwithcomment:hover span.tdcomment { display:block; }\ntable tr:last-child td { border-bottom: none; }\n.encodertable td { border-bottom: solid 1px black !important; }\n.encodertable tr:last-child td { border-bottom: none !important; }\n.hcharttitle { width: 10%; text-align: right; }\n.hchartvalue { width: 10%; text-align: right; }\n.hchartbar   { text-align: start; vertical-align: center; height: 20px; background-color: rgba(0, 149, 255, 0.56);}\n.hchartbar2   { text-align: start; vertical-align: center; height: 20px; background-color: rgba(0, 255, 149, 0.56);}\n.shadertable {table-layout: fixed; word-break: break-all;}\n.shadertable th:nth-child(1) { width: 10%; }\n.shadertable th:nth-child(2) { width: 70%; }\n.gap { margin-top: 6px; }\n.commandbuffertimetable {table-layout: fixed; word-break: break-all;}\n.commandbuffertimetable th:nth-child(1) { width: 40%; }\n.encodertimetable {table-layout: fixed; word-break: break-all;}\n.encodertimetable th:nth-child(1) { width: 40%; }\n.encodertimetable td { border-bottom: solid 1px black !important; }\n.encodertimetable tr:last-child td { border-bottom: none !important; }\n.metricstable {table-layout: fixed; word-break: break-all;}\n.metricstable th:nth-child(1) { width: 40%; }\n.topobjecttable {table-layout: fixed; word-break: break-all;}\n.topobjecttable th:nth-child(1) { width: 40%; }\n.tdoverlay { position: absolute; top: 0; left: 0; }\n.warning { background-color: rgba(255, 218, 9, 0.53); border-radius: 4px; padding: 0px 10px; font-size: small; margin-bottom: 10px; }"];;
  v44 = +[_CADeveloperHUDProperties instance];
  v6 = +[_CADeveloperHUDProperties instance];
  v45 = [v6 progName];

  if (MTLHudIsProcessTranslated(v7, v8))
  {
    v9 = +[_CADeveloperHUDProperties instance];
    v10 = [v9 progName];
    v11 = [NSString stringWithFormat:@"%@ (Rosetta x86_64)", v10];
  }

  else
  {
    v11 = v45;
  }

  v46 = v11;
  [(NSMutableString *)v5 appendFormat:@"<div class=center><h1>%@</h1>\n", v11];
  _HUDInsightReportGenerateMetadata(a1, v5, a2, a3);
  v12 = [v44 getMetric:@"com.apple.hud-stat.frame-interval"];
  v13 = v12;
  if (v12)
  {
    [v12 record];
    _HUDInsightReportGenerateFrameIntervalDistribution(a1, v5);
  }

  v14 = [v44 insightsWindow];
  v15 = [v14 insightGroups];
  v43 = [v15 copy];

  v16 = objc_opt_new();
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v17 = v43;
  v18 = [v17 countByEnumeratingWithState:&v53 objects:v58 count:16];
  if (v18)
  {
    v19 = *v54;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v54 != v19)
        {
          objc_enumerationMutation(v17);
        }

        v21 = [*(*(&v53 + 1) + 8 * i) insights];
        [v16 addObjectsFromArray:v21];
      }

      v18 = [v17 countByEnumeratingWithState:&v53 objects:v58 count:16];
    }

    while (v18);
  }

  _HUDInsightReportGenerateInsightsSection(a1, v5, v16);
  _HUDInsightReportGenerateTopCommandBuffers(v22, v5);
  _HUDInsightReportGenerateMetrics(v23, v5);
  _HUDInsightReportGenerateGPTKMetrics(v24, v5);
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v25, v26);
  TargetRebindingInsightContext = HUDGPUTimeTrackerGetTargetRebindingInsightContext(GlobalInstance);
  v29 = TargetRebindingInsightContext;
  if (TargetRebindingInsightContext)
  {
    _HUDInsightReportGenerateFrameTiming(TargetRebindingInsightContext, v5, TargetRebindingInsightContext, *(TargetRebindingInsightContext + 824), *(TargetRebindingInsightContext + 832));
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v30 = v16;
  v31 = [v30 countByEnumeratingWithState:&v49 objects:v57 count:16];
  if (v31)
  {
    v32 = *v50;
    while (2)
    {
      for (j = 0; j != v31; j = j + 1)
      {
        if (*v50 != v32)
        {
          objc_enumerationMutation(v30);
        }

        v34 = *(*(&v49 + 1) + 8 * j);
        if ([*objc_msgSend(v34 "descriptor")] && *(objc_msgSend(v34, "descriptor") + 4) && *(objc_msgSend(v34, "descriptor") + 5))
        {
          v36 = [*(objc_msgSend(v34 "descriptor") + 4)];
          v37 = *([v34 descriptor] + 5);
          v38 = [*(objc_msgSend(v34 "descriptor") + 5)];
          _HUDInsightReportGenerateFrameEncoding(v38, v5, v36, v37, v38);

          goto LABEL_28;
        }
      }

      v31 = [v30 countByEnumeratingWithState:&v49 objects:v57 count:16];
      if (v31)
      {
        continue;
      }

      break;
    }
  }

  if (v29)
  {
    _HUDInsightReportGenerateFrameEncoding(v35, v5, v29, *(v29 + 824), *(v29 + 832));
  }

LABEL_28:
  _HUDInsightReportGenerateShaderCompilation(a1, v5, &a1->compilerStatStart);
  [(NSMutableString *)v5 appendString:@"</div>\n"];
  [(NSMutableString *)v5 appendString:@"</body></html>\n"];
  v48 = 0;
  v39 = +[NSFileManager defaultManager];
  v40 = [(NSURL *)a1->outputURL path];
  v41 = [v39 fileExistsAtPath:v40 isDirectory:&v48];

  if (v41 && (v48 & 1) == 0)
  {
    v42 = +[NSFileManager defaultManager];
    [v42 removeItemAtURL:a1->outputURL error:0];
  }

  [(NSMutableString *)v5 writeToURL:a1->outputURL atomically:1 encoding:4 error:0];
  NSLog(@"[libMTLHud] Report generated at %@", a1->outputURL);
}

void HUDInsightReportGenerate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __chkstk_darwin(a1, a2, a3);
  v5 = v4;
  memcpy(&__dst, [v5 layerState], 0x1688uLL);
  v6 = [v5 lastDrawableState];
  v7 = v6[5];
  *&v18.updateDeltaNs = v6[4];
  *&v18.detachCodeWhenPresented = v7;
  *&v18.layerContentsScale = v6[6];
  v8 = v6[1];
  *&v18.drawableID = *v6;
  *&v18.logicalFrameNumber = v8;
  v9 = v6[3];
  *&v18.presentedTime = v6[2];
  *&v18.presentedCallbackTime = v9;
  v10 = *v3;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v17.outputURL = v10;
  *&v17.snapshotWidth = v11;
  v17.snapshot = v12;
  v13 = *(v3 + 240);
  v17.compilerStatStart.totalSyncCompileTimeCompute = *(v3 + 232);
  *&v17.compilerStatStart.totalCachedRequests = *(v3 + 184);
  *&v17.compilerStatStart.totalSyncCompileTimeFragment = *(v3 + 200);
  *&v17.compilerStatStart.totalSyncCompileTimeMesh = *(v3 + 216);
  *&v17.endMetalMemory = *(v3 + 120);
  *&v17.compilerStatStart.numBinaryFunctions = *(v3 + 136);
  *&v17.compilerStatStart.numRenderPipelines = *(v3 + 152);
  *&v17.compilerStatStart.totalSyncShaderCompilations = *(v3 + 168);
  *&v17.targetStartTime = *(v3 + 56);
  *&v17.timeOut = *(v3 + 72);
  *&v17.insightUpdateTime = *(v3 + 88);
  *&v17.endAppMemory = *(v3 + 104);
  *&v17.hasSnapshot = *(v3 + 24);
  *&v17.endFrameNumber = *(v3 + 40);
  v14 = v13;
  v15 = *(v3 + 248);
  v17.frameIntervals = v14;
  v17.frameIntervalsWritingOffset = v15;
  v16 = *(v3 + 16);
  *(v3 + 16) = 0;

  *(v3 + 24) = 0;
  _HUDInsightReportGenerate(&v17, &__dst, &v18);
}

void sub_1737C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  HUDInsightReportContext::~HUDInsightReportContext(&a9);

  _Unwind_Resume(a1);
}

void ___ZL24_HUDInsightReportMetricsv_block_invoke(id a1)
{
  v3[0] = @"com.apple.hud-stat.fps";
  v3[1] = @"com.apple.hud-stat.frame-interval";
  v3[2] = @"com.apple.hud-stat.present-delay";
  v3[3] = @"com.apple.hud-stat.command-buffer-count";
  v3[4] = @"com.apple.hud-stat.command-buffer-cpu-time-length";
  v3[5] = @"com.apple.hud-stat.command-buffer-gpu-time-length";
  v3[6] = @"com.apple.hud-stat.metal4-command-allocator-size";
  v3[7] = @"com.apple.hud-stat.encoder-cpu-time-length";
  v3[8] = @"com.apple.hud-stat.encoder-gpu-time-length";
  v3[9] = @"com.apple.hud-stat.render-encoder-count";
  v3[10] = @"com.apple.hud-stat.render-encoder-cpu-time-length";
  v3[11] = @"com.apple.hud-stat.vertex-gpu-time-length";
  v3[12] = @"com.apple.hud-stat.fragment-gpu-time-length";
  v3[13] = @"com.apple.hud-stat.compute-encoder-count";
  v3[14] = @"com.apple.hud-stat.compute-encoder-cpu-time-length";
  v3[15] = @"com.apple.hud-stat.compute-gpu-time-total";
  v3[16] = @"com.apple.hud-stat.blit-encoder-count";
  v3[17] = @"com.apple.hud-stat.blit-encoder-gpu-time-length";
  v3[18] = @"com.apple.hud-stat.blit-encoder-cpu-time-length";
  v3[19] = @"com.apple.hud-stat.resource-state-encoder-count";
  v3[20] = @"com.apple.hud-stat.resource-state-encoder-cpu-time-length";
  v3[21] = @"com.apple.hud-stat.acceleration-structure-encoder-count";
  v3[22] = @"com.apple.hud-stat.acceleration-structure-encoder-cpu-time-length";
  v3[23] = @"com.apple.hud-stat.acceleration-structure-encoder-gpu-time-length";
  v3[24] = @"com.apple.hud-stat.machine-learning-encoder-cpu-time-length";
  v3[25] = @"com.apple.hud-stat.machine-learning-encoder-count";
  v3[26] = @"com.apple.hud-stat.machine-learning-encoder-gpu-time-length";
  v1 = [NSArray arrayWithObjects:v3 count:27];
  v2 = _HUDInsightReportMetrics(void)::metrics;
  _HUDInsightReportMetrics(void)::metrics = v1;
}

void std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int *a2, uint64_t a3, _DWORD **a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
LABEL_8:
    operator new();
  }

  v5 = *a2;
  while (1)
  {
    while (1)
    {
      v6 = v4;
      v7 = *(v4 + 32);
      if (v5 >= v7)
      {
        break;
      }

      v4 = *v6;
      if (!*v6)
      {
        goto LABEL_8;
      }
    }

    if (v7 >= v5)
    {
      return v6;
    }

    v4 = v6[1];
    if (!v4)
    {
      goto LABEL_8;
    }
  }
}

uint64_t *std::__tree<std::__value_type<unsigned int,unsigned long>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,unsigned long>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,unsigned long>>>::__insert_node_at(uint64_t ***a1, uint64_t a2, uint64_t **a3, uint64_t *a4)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = a2;
  *a3 = a4;
  v5 = **a1;
  if (v5)
  {
    *a1 = v5;
    a4 = *a3;
  }

  result = std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(a1[1], a4);
  a1[2] = (a1[2] + 1);
  return result;
}

uint64_t *std::__tree_balance_after_insert[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (*(v2 + 24))
      {
        break;
      }

      v3 = *(v2 + 16);
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = *(v2 + 8);
            v12 = *v11;
            *(v2 + 8) = *v11;
            v13 = v2;
            if (v12)
            {
              *(v12 + 16) = v2;
              v3 = *(v2 + 16);
              v13 = *v3;
            }

            *(v11 + 16) = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            *(v2 + 16) = v11;
            v3 = *(v11 + 16);
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = *(v2 + 16);
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            *(v2 + 16) = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

CGContext *_HUDFontCreateCGContext(void *a1, size_t a2, size_t a3, BOOL a4)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  v9 = CGBitmapContextCreate(a1, a2, a3, 8uLL, 4 * a2, DeviceRGB, 1u);
  CGContextSetRenderingIntent(v9, kCGRenderingIntentPerceptual);
  CGContextSetAllowsAntialiasing(v9, a4);
  CGContextSetShouldAntialias(v9, a4);
  CGContextSetInterpolationQuality(v9, kCGInterpolationHigh);
  CGContextSetAllowsFontSmoothing(v9, 1);
  CGContextSetShouldSmoothFonts(v9, 1);
  CGContextSetAllowsFontSubpixelPositioning(v9, 1);
  CGContextSetShouldSubpixelPositionFonts(v9, 1);
  CGContextSetAllowsFontSubpixelQuantization(v9, 1);
  CGContextSetShouldSubpixelQuantizeFonts(v9, 1);
  v13.size.width = a2;
  v13.size.height = a3;
  v13.origin.x = 0.0;
  v13.origin.y = 0.0;
  CGContextClearRect(v9, v13);
  v12[0] = xmmword_54930;
  v12[1] = unk_54940;
  v10 = CGColorCreate(DeviceRGB, v12);
  CGContextSetFillColorWithColor(v9, v10);
  CFRelease(v10);
  CGColorSpaceRelease(DeviceRGB);
  return v9;
}

CTFontRef _HUDFontCreateCTFont(char *cStr, unsigned int a2)
{
  v3 = CFStringCreateWithCStringNoCopy(kCFAllocatorDefault, cStr, 0x8000100u, kCFAllocatorNull);
  v4 = a2;
  v5 = CTFontDescriptorCreateWithNameAndSize(v3, a2);
  MatchingFontDescriptor = CTFontDescriptorCreateMatchingFontDescriptor(v5, 0);
  if (!MatchingFontDescriptor)
  {
    v8 = CTFontCreateWithFontDescriptor(v5, v4, 0);
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = MatchingFontDescriptor;
  v8 = CTFontCreateWithFontDescriptor(MatchingFontDescriptor, v4, 0);
  CFRelease(v7);
  if (v5)
  {
LABEL_3:
    CFRelease(v5);
  }

LABEL_4:
  CFRelease(v3);
  return v8;
}

id _HUDFontCreateMTLTexture(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = [v7 commandBuffer];
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v8, v9);
  HUDGPUTimeTrackerMarkCommandBuffer(GlobalInstance, v8, 1);
  v11 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:a3 height:a4 mipmapped:0];
  [v11 setStorageMode:2];
  [v11 setMipmapLevelCount:vcvtpd_s64_f64(log2(a3))];
  v12 = [v7 device];
  v13 = [v12 newTextureWithDescriptor:v11];

  v14 = [v8 blitCommandEncoder];
  v15 = [v7 device];

  v16 = [v15 newBufferWithBytesNoCopy:a2 length:4 * a3 * a4 options:0 deallocator:&__block_literal_global_2];
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = 1;
  memset(v18, 0, sizeof(v18));
  [v14 copyFromBuffer:v16 sourceOffset:0 sourceBytesPerRow:4 * a3 sourceBytesPerImage:0 sourceSize:v19 toTexture:v13 destinationSlice:0 destinationLevel:0 destinationOrigin:v18 options:0];
  [v14 generateMipmapsForTexture:v13];
  [v14 endEncoding];
  [v8 commit];
  [v8 waitUntilCompleted];

  return v13;
}

id _HUDFontCreateTexture(uint64_t a1, void *a2, const __CTFont *a3, size_t a4, size_t a5)
{
  v9 = a2;
  v10 = 0;
  v143 = 0u;
  v144 = 0u;
  v142 = 0u;
  memset(v141, 0, sizeof(v141));
  v11 = xmmword_548B0;
  v12 = xmmword_548C0;
  v13 = xmmword_548D0;
  v14 = xmmword_548E0;
  v15 = xmmword_548F0;
  v16 = xmmword_54900;
  v17 = xmmword_54910;
  v18 = xmmword_54920;
  v19 = vdupq_n_s64(0x10uLL);
  v20 = vdupq_n_s64(0x5FuLL);
  do
  {
    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(v20, v18)), *v11.i8), *v11.i8).u8[0])
    {
      v141[v10] = v10 + 32;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5FuLL), *&v18)), *&v11), *&v11).i8[1])
    {
      v141[v10 + 1] = v10 + 33;
    }

    if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5FuLL), *&v17))), *&v11).i8[2])
    {
      v141[v10 + 2] = v10 + 34;
      v141[v10 + 3] = v10 + 35;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5FuLL), *&v16)), *&v11)).i32[1])
    {
      v141[v10 + 4] = v10 + 36;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5FuLL), *&v16)), *&v11)).i8[5])
    {
      v141[v10 + 5] = v10 + 37;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5FuLL), *&v15)))).i8[6])
    {
      v141[v10 + 6] = v10 + 38;
      v141[v10 + 7] = v10 + 39;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5FuLL), v14)), *v11.i8), *v11.i8).u8[0])
    {
      v141[v10 + 8] = v10 + 40;
    }

    if (vuzp1_s8(vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5FuLL), *&v14)), *&v11), *&v11).i8[1])
    {
      v141[v10 + 9] = v10 + 41;
    }

    if (vuzp1_s8(vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5FuLL), *&v13))), *&v11).i8[2])
    {
      v141[v10 + 10] = v10 + 42;
      v141[v10 + 11] = v10 + 43;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5FuLL), *&v12)), *&v11)).i32[1])
    {
      v141[v10 + 12] = v10 + 44;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5FuLL), *&v12)), *&v11)).i8[5])
    {
      v141[v10 + 13] = v10 + 45;
    }

    if (vuzp1_s8(*&v11, vuzp1_s16(*&v11, vmovn_s64(vcgtq_u64(vdupq_n_s64(0x5FuLL), *&v11)))).i8[6])
    {
      v141[v10 + 14] = v10 + 46;
      v141[v10 + 15] = v10 + 47;
    }

    v16 = vaddq_s64(v16, v19);
    v10 += 16;
    v17 = vaddq_s64(v17, v19);
    v18 = vaddq_s64(v18, v19);
    v15 = vaddq_s64(v15, v19);
    v14 = vaddq_s64(v14, v19);
    v13 = vaddq_s64(v13, v19);
    v12 = vaddq_s64(v12, v19);
    v11 = vaddq_s64(v11, v19);
  }

  while (v10 != 96);
  HIBYTE(v142) = 0;
  v21 = [NSMutableString stringWithUTF8String:v141, *v11.i64, *v12.i64, *v13.i64, *v14.i64, *v15.i64, *v16.i64, *v17.i64, *v18.i64];
  v22 = malloc_type_malloc(4 * a4 * a5, 0x100004052888210uLL);
  bzero(v22, 4 * a4 * a5);
  if (v22 && (v133 = a1, v123 = v22, CGContext = _HUDFontCreateCGContext(v22, a4, a5, 1), v23 = [v21 length], v24 = v23, v124 = v21, v25 = 16 * v23, __chkstk_darwin(v23, v26, v27), v28 = (&v120 - 2 * v24), bzero(v28, v25), __chkstk_darwin(v29, 2 * v24, v30), v32 = (&v120 - v31), bzero(&v120 - v31, v33), __chkstk_darwin(v34, 32 * v24, v35), v36 = &v120 - 4 * v24, bzero(v36, v37), __chkstk_darwin(v38, v39, v40), v41 = v25, v21 = v124, bzero(v28, v41), CTFontGetGlyphsForCharacters(a3, objc_msgSend(v21, "cStringUsingEncoding:", 10), v32, v24)))
  {
    v122 = a4;
    v129 = a5;
    CTFontGetAdvancesForGlyphs(a3, kCTFontOrientationDefault, v32, &v120 - v24, v24);
    CTFontGetBoundingRectsForGlyphs(a3, kCTFontOrientationDefault, v32, &v120 - v24, v24);
    if (v24)
    {
      v42 = v36 + 2;
      v43 = v24;
      do
      {
        *(v42 - 2) = CGRectIntegral(*(v42 - 2));
        v42 += 4;
        --v43;
      }

      while (v43);
    }

    v44 = CTFontGetAscent(a3);
    v45 = CTFontGetDescent(a3);
    v46 = CTFontGetLeading(a3);
    v47 = (v44 + v45) + v46;
    v48 = &v144 + 8;
    v49 = v133;
    *(v133 + 5496) = ceilf(v47);
    if (v24)
    {
      LODWORD(v48) = vcvtps_u32_f32(v47);
      v50 = v49 + 16;
      v51 = (v36 + 2);
      v52 = (&v120 - 2 * v24 + 1);
      v53 = 4;
      __asm { FMOV            V1.2D, #1.0 }

      v59 = v24;
      v60 = 4;
      v61 = v129;
      v62 = v122;
      do
      {
        v63.f64[0] = *v51;
        v64 = (*v51 + 4.0);
        v65 = v53 + v64;
        if (v65 >= v62)
        {
          v66 = (v48 + 4);
        }

        else
        {
          v66 = 0;
        }

        v60 += v66;
        if (&v48[v60] >= v61)
        {
          break;
        }

        if (v65 >= v62)
        {
          v53 = 0;
        }

        v67 = v51[1];
        v69 = *(v51 - 2);
        v68 = *(v51 - 1);
        *(v52 - 1) = (v53 + 4) - v69;
        *v52 = (v61 - v60) - v68 - v67;
        *(v50 - 8) = v53 + 3;
        *(v50 - 4) = v60 - 1;
        v63.f64[1] = v67;
        *(v50 + 12) = vcvt_f32_u32(vmovn_s64(vcvtq_u64_f64(vaddq_f64(v63, _Q1))));
        v70 = *v28;
        v28 += 2;
        v71 = v70;
        *&v69 = v69;
        *v50 = v71;
        *(v50 + 4) = LODWORD(v69);
        v53 += v64;
        v72 = v67 + v68;
        *(v50 + 8) = v72;
        v50 += 28;
        v51 += 4;
        v52 += 2;
        --v59;
      }

      while (v59);
      v73 = v60;
    }

    else
    {
      v73 = 4.0;
      v61 = v129;
      v62 = v122;
    }

    v75 = (&v120 - 2 * v24);
    v76 = v24;
    v77 = CGContext;
    CTFontDrawGlyphs(a3, v32, v75, v76, CGContext);
    v78 = *(v49 + 5496);
    v79 = objc_opt_new();
    v80 = *(v49 + 5512);
    *(v49 + 5512) = v79;

    keys[0] = kCTFontAttributeName;
    keys[1] = kCTForegroundColorAttributeName;
    GenericRGB = CGColorCreateGenericRGB(1.0, 1.0, 1.0, 1.0);
    values[0] = a3;
    values[1] = GenericRGB;
    v126 = CFDictionaryCreate(0, keys, values, 2, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if ([&off_6F2C8 count])
    {
      v120 = GenericRGB;
      v121 = v9;
      v82 = 0;
      v83 = 0;
      v84 = ((v78 + 4.0) + v73);
      v125 = v49 + 2668;
      v85 = v62;
      v86 = v61;
      do
      {
        v87 = [&off_6F2C8 objectAtIndexedSubscript:{v82, v120, v121}];
        v88 = *[v87 cStringUsingEncoding:2348810496];
        v89 = [NSNumber numberWithInt:(v82 + 95)];
        v90 = *(v49 + 5512);
        v91 = [NSNumber numberWithUnsignedInt:v88];
        [v90 setObject:v89 forKeyedSubscript:v91];

        v127 = v87;
        v92 = CTLineCreateWithString();
        GlyphRuns = CTLineGetGlyphRuns(v92);
        Count = CFArrayGetCount(GlyphRuns);
        v128 = v82;
        if (Count)
        {
          v95 = 0;
          v96 = v125 + 28 * v82;
          v132 = Count;
          v131 = GlyphRuns;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(GlyphRuns, v95);
            GlyphCount = CTRunGetGlyphCount(ValueAtIndex);
            v100 = (&v120 - 2 * __chkstk_darwin(GlyphCount, 16 * GlyphCount, v99));
            bzero(v100, v101);
            __chkstk_darwin(v102, 2 * GlyphCount, v103);
            v105 = (&v120 - v104);
            bzero(&v120 - v104, v106);
            v146.location = 0;
            v146.length = GlyphCount;
            CTRunGetGlyphs(ValueAtIndex, v146, v105);
            v147.location = 0;
            v147.length = GlyphCount;
            CTRunGetAdvances(ValueAtIndex, v147, v100);
            ascent = 0.0;
            descent = 0.0;
            leading = 0.0;
            v148.location = 0;
            v148.length = GlyphCount;
            v107.f64[0] = CTRunGetTypographicBounds(ValueAtIndex, v148, &ascent, &descent, &leading);
            v108 = (v129 - v84);
            v109 = v133;
            v110 = *(v133 + 5496);
            v107.f64[1] = ceil(ascent + descent + leading);
            *&v107.f64[0] = vcvt_f32_f64(v107);
            v134 = v107;
            v111 = *(v107.f64 + 1);
            *(v133 + 5496) = fmaxf(v110, ceilf(*(v107.f64 + 1)));
            CGAffineTransformMakeTranslation(&v135, v83, (v108 - *(v107.f64 + 1)));
            v112 = CGContext;
            CGContextSetTextMatrix(CGContext, &v135);
            v149.location = 0;
            v149.length = GlyphCount;
            GlyphRuns = v131;
            CTRunDraw(ValueAtIndex, v112, v149);
            v113 = v132;
            *v96 = v83 + 3;
            *(v96 + 4) = v84 - 1;
            v114 = *v134.f64;
            *(v96 + 20) = vcvt_f32_u32(vcvt_u32_f32(vadd_f32(*&v134.f64[0], 0x4000000040000000)));
            *(v96 + 8) = v114;
            *(v96 + 12) = 0;
            *(v96 + 16) = v111 + -0.5;
            v115 = *(v109 + 5496);
            if ((v114 + ((v114 + 4.0) + v83)) < v85)
            {
              v83 = ((v114 + 4.0) + v83);
            }

            else
            {
              v84 = ((v115 + 4.0) + v84);
              v83 = 0;
            }

            ++v95;
          }

          while ((v115 + v84) < v86 && v113 > v95);
        }

        v82 = v128 + 1;
        v117 = [&off_6F2C8 count];
        v49 = v133;
      }

      while (v117 > v82);
      v9 = v121;
      v61 = v129;
      v62 = v122;
      v21 = v124;
      v77 = CGContext;
      GenericRGB = v120;
    }

    else
    {
      v85 = v62;
      v86 = v61;
    }

    CGColorRelease(GenericRGB);
    v118 = v123;
    *v123 = -1;
    *(v49 + 5500) = 0.5 / v85;
    *(v49 + 5504) = 0.5 / v86;
    v74 = _HUDFontCreateMTLTexture(v9, v118, v62, v61);
    free(v118);
    CGContextRelease(v77);
  }

  else
  {
    v74 = 0;
  }

  return v74;
}

BOOL HUDFontInit(uint64_t a1, char *a2, unsigned int a3, void *a4)
{
  v7 = a4;
  bzero((a1 + 8), 0x1570uLL);
  v8 = *a1;
  *a1 = 0;

  *(a1 + 5504) = 0;
  *(a1 + 5496) = 0;
  CTFont = _HUDFontCreateCTFont(a2, a3);
  if (CTFont)
  {
    v10 = CTFont;
    v11 = _HUDFontCreateTexture(a1, v7, CTFont, 0x200uLL, 0x200uLL);
    v12 = *a1;
    *a1 = v11;

    CFRelease(v10);
    v13 = *a1 != 0;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t HUDFontGenerateVertices(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, float a7, float a8, float a9, float a10, float a11, uint64_t a12, uint64_t a13, unint64_t a14, uint64_t a15, float *a16, float *a17)
{
  if (!a1)
  {
    return 0;
  }

  v18 = 0;
  if (a3)
  {
    v20 = *a1;
    if (v20)
    {
      v39 = 1.0 / [v20 width];
      v26 = 0;
      v18 = 0;
      v27 = 0;
      v46 = 0;
      v28 = 1.0 / [*a1 height];
      v29 = *(a1 + 5496) + a8;
      v30 = 1;
      v31 = a7;
      while (1)
      {
        v32 = *(a2 + v26);
        if (v32 == 10)
        {
          v29 = v29 + (*(a1 + 5496) + a9);
          v31 = a7;
        }

        Glyph = _HUDFontGetGlyph(a1, *(a2 + v26));
        if (!Glyph)
        {
          goto LABEL_20;
        }

        v35 = Glyph;
        if (a10 <= 1.0 || (v31 + *(Glyph + 8)) <= a10)
        {
          break;
        }

        v29 = v29 + (*(a1 + 5496) + a9);
        if (v30)
        {
          v18 = v27;
          v26 = v46 + 1;
        }

        if ((v29 - a8) >= a11)
        {
          return v18;
        }

        v30 = 0;
        v31 = a7;
LABEL_21:
        if (v26 >= a3)
        {
          return v18;
        }
      }

      if (v32 == 32)
      {
        v30 = 1;
        v46 = v26;
        v27 = v18;
      }

      else
      {
        v36 = a5 + 4 * v18;
        if (v36 >= a6)
        {
          return v18;
        }

        v37 = a13 + 6 * v18;
        if (v37 >= a14)
        {
          return v18;
        }

        v34.f32[0] = v31;
        _HUDFontVerticesWrite(a4, v36, a12, v37, Glyph, a15, v34, v29, v39, v28);
        ++v18;
      }

      v31 = v31 + *(v35 + 8);
      *a16 = fmaxf(*a16, v31);
      *a17 = v29;
LABEL_20:
      ++v26;
      goto LABEL_21;
    }
  }

  return v18;
}

uint64_t _HUDFontGetGlyph(uint64_t a1, uint64_t a2)
{
  if ((a2 - 32) <= 0x5E)
  {
    return a1 + 28 * a2 - 888;
  }

  v4 = *(a1 + 5512);
  v5 = [NSNumber numberWithUnsignedInt:a2];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6 && [v6 unsignedIntValue] <= 0xC3)
  {
    v3 = a1 + 28 * [v6 unsignedIntValue] + 8;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

float32x2_t _HUDFontVerticesWrite(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int32 a6, float32x2_t a7, float32_t a8, float a9, float a10)
{
  a7.f32[1] = a8;
  v10 = *(a5 + 20);
  v11 = *(a5 + 24);
  v12 = *a5;
  v13 = *(a5 + 4);
  v14 = vcvtq_f64_f32(vrndm_f32(vadd_f32(a7, 0x3F0000003F000000)));
  v15 = vcvtq_f64_f32(*(a5 + 12));
  *&v16.f64[0] = *&vaddq_f64(v14, v15);
  v16.f64[1] = vsubq_f64(v14, v15).f64[1];
  v17 = (a1 + 24 * a2);
  result = vcvt_f32_s32(vmovn_s64(vcvtq_s64_f64(v16)));
  *v17 = result;
  v19 = v12;
  *v15.f64 = v19 * a9;
  v20 = v13;
  v17[1].f32[0] = v19 * a9;
  v17[1].f32[1] = v20 * a10;
  v17[2].i32[0] = a6;
  v17[2].i32[1] = 0;
  v21 = v10 + v19;
  v22 = v10 + result.f32[0];
  v17[3].f32[0] = v22;
  v17[3].i32[1] = result.i32[1];
  v23 = v21 * a9;
  v17[4].f32[0] = v23;
  v17[4].f32[1] = v20 * a10;
  v24 = (v11 + v20) * a10;
  v17[5].i32[0] = a6;
  v17[5].i32[1] = 0;
  v25 = (a3 + 2 * a4);
  v26 = v11 + result.f32[1];
  v17[6].i32[0] = result.i32[0];
  v17[6].f32[1] = v26;
  v17[7].i32[0] = LODWORD(v15.f64[0]);
  v17[7].f32[1] = v24;
  v17[8].i32[0] = a6;
  v17[8].i32[1] = 0;
  v17[9].f32[0] = v22;
  v17[9].f32[1] = v26;
  v17[10].f32[0] = v23;
  v17[10].f32[1] = v24;
  v17[11].i32[0] = a6;
  v17[11].i32[1] = 0;
  *v25 = a2;
  v25[1] = a2 + 1;
  v25[2] = a2 + 2;
  v25[3] = a2 + 1;
  v25[4] = a2 + 3;
  v25[5] = a2 + 2;
  return result;
}

uint64_t HUDFontGenerateVerticesUTF32(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, float a9, float a10, float a11, float a12, float a13, unint64_t a14, __int32 a15, float *a16, float *a17)
{
  if (!a1)
  {
    return 0;
  }

  v18 = 0;
  if (a3)
  {
    v20 = *a1;
    if (v20)
    {
      v26 = 1.0 / [v20 width];
      v27 = 0;
      v18 = 0;
      v28 = 0;
      v46 = 0;
      v29 = 1.0 / [*a1 height];
      v30 = *(a1 + 5496) + a10;
      v31 = 1;
      v32 = a9;
      while (1)
      {
        v33 = *(a2 + 4 * v27);
        if (v33 == 10)
        {
          v30 = v30 + (*(a1 + 5496) + a11);
          v32 = a9;
        }

        Glyph = _HUDFontGetGlyph(a1, *(a2 + 4 * v27));
        if (!Glyph)
        {
          goto LABEL_20;
        }

        v36 = Glyph;
        if (a12 <= 1.0 || (v32 + *(Glyph + 8)) <= a12)
        {
          break;
        }

        v30 = v30 + (*(a1 + 5496) + a11);
        if (v31)
        {
          v18 = v28;
          v27 = v46 + 1;
        }

        if (v30 >= a13)
        {
          return v18;
        }

        v31 = 0;
        v32 = a9;
LABEL_21:
        if (v27 >= a3)
        {
          return v18;
        }
      }

      if (v33 == 32)
      {
        v31 = 1;
        v46 = v27;
        v28 = v18;
      }

      else
      {
        v37 = a5 + 4 * v18;
        if (v37 >= a6)
        {
          return v18;
        }

        v38 = a8 + 6 * v18;
        if (v38 >= a14)
        {
          return v18;
        }

        v35.f32[0] = v32;
        _HUDFontVerticesWrite(a4, v37, a7, v38, Glyph, a15, v35, v30, v26, v29);
        ++v18;
      }

      v32 = v32 + *(v36 + 8);
      *a16 = fmaxf(*a16, v32);
      *a17 = v30;
LABEL_20:
      ++v27;
      goto LABEL_21;
    }
  }

  return v18;
}

BOOL _HUDGPUTimelineSnapshotFrameTimingData(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = *(a1 + 56);
  v4 = v3 + v2 + *(a1 + 88) + *(a1 + 104) + *(a1 + 120) + *(a1 + 136) + *(a1 + 152);
  if (v4)
  {
    if (v2)
    {
      std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>(a2, *(a2 + 8), *(a1 + 64), (*(a1 + 64) + 16 * v2), v2);
      v7 = *(a2 + 536);
      v3 = *(a1 + 56);
      v8 = *(a1 + 64);
      if (v7 >= *v8)
      {
        v7 = *v8;
      }

      *(a2 + 536) = v7;
      v9 = *(a2 + 544);
      v10 = v8[2 * *(a1 + 72) - 1];
      if (v9 <= v10)
      {
        v9 = v10;
      }

      *(a2 + 544) = v9;
    }

    if (v3)
    {
      std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>((a2 + 24), *(a2 + 32), *(a1 + 48), (*(a1 + 48) + 16 * v3), v3);
      v11 = *(a2 + 536);
      v12 = *(a1 + 48);
      v13 = *(a1 + 56);
      if (v11 >= *v12)
      {
        v11 = *v12;
      }

      *(a2 + 536) = v11;
      v14 = *(a2 + 544);
      v15 = v12[2 * v13 - 1];
      if (v14 <= v15)
      {
        v14 = v15;
      }

      *(a2 + 544) = v14;
    }

    v16 = *(a1 + 88);
    if (v16)
    {
      std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>((a2 + 48), *(a2 + 56), *(a1 + 80), (*(a1 + 80) + 16 * v16), v16);
      v17 = *(a2 + 536);
      v18 = *(a1 + 80);
      v19 = *(a1 + 88);
      if (v17 >= *v18)
      {
        v17 = *v18;
      }

      *(a2 + 536) = v17;
      v20 = *(a2 + 544);
      v21 = v18[2 * v19 - 1];
      if (v20 <= v21)
      {
        v20 = v21;
      }

      *(a2 + 544) = v20;
    }

    v22 = *(a1 + 104);
    if (v22)
    {
      std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>((a2 + 72), *(a2 + 80), *(a1 + 96), (*(a1 + 96) + 16 * v22), v22);
      v23 = *(a2 + 536);
      v24 = *(a1 + 96);
      v25 = *(a1 + 104);
      if (v23 >= *v24)
      {
        v23 = *v24;
      }

      *(a2 + 536) = v23;
      v26 = *(a2 + 544);
      v27 = v24[2 * v25 - 1];
      if (v26 <= v27)
      {
        v26 = v27;
      }

      *(a2 + 544) = v26;
    }

    v28 = *(a1 + 120);
    if (v28)
    {
      std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>((a2 + 96), *(a2 + 104), *(a1 + 112), (*(a1 + 112) + 16 * v28), v28);
      v29 = *(a2 + 536);
      v30 = *(a1 + 112);
      v31 = *(a1 + 120);
      if (v29 >= *v30)
      {
        v29 = *v30;
      }

      *(a2 + 536) = v29;
      v32 = *(a2 + 544);
      v33 = v30[2 * v31 - 1];
      if (v32 <= v33)
      {
        v32 = v33;
      }

      *(a2 + 544) = v32;
    }

    v34 = *(a1 + 136);
    if (v34)
    {
      std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>((a2 + 120), *(a2 + 128), *(a1 + 128), (*(a1 + 128) + 16 * v34), v34);
    }

    v35 = *(a1 + 152);
    if (v35)
    {
      std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>((a2 + 144), *(a2 + 152), *(a1 + 144), (*(a1 + 144) + 16 * v35), v35);
    }

    v36 = *(a1 + 240);
    v38 = *(a2 + 176);
    v37 = *(a2 + 184);
    if (v38 >= v37)
    {
      v40 = *(a2 + 168);
      v41 = v38 - v40;
      v42 = (v38 - v40) >> 3;
      v43 = v42 + 1;
      if ((v42 + 1) >> 61)
      {
        goto LABEL_60;
      }

      v44 = v37 - v40;
      if (v44 >> 2 > v43)
      {
        v43 = v44 >> 2;
      }

      v45 = v44 >= 0x7FFFFFFFFFFFFFF8;
      v46 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v45)
      {
        v46 = v43;
      }

      if (v46)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2 + 168, v46);
      }

      v47 = (v38 - v40) >> 3;
      v48 = (8 * v42);
      v49 = (8 * v42 - 8 * v47);
      *v48 = v36;
      v39 = v48 + 1;
      memcpy(v49, v40, v41);
      v50 = *(a2 + 168);
      *(a2 + 168) = v49;
      *(a2 + 176) = v39;
      *(a2 + 184) = 0;
      if (v50)
      {
        operator delete(v50);
      }
    }

    else
    {
      *v38 = v36;
      v39 = v38 + 8;
    }

    *(a2 + 176) = v39;
    v52 = *(a2 + 200);
    v51 = *(a2 + 208);
    if (v52 < v51)
    {
      *v52 = *(a1 + 208);
      v53 = v52 + 8;
LABEL_58:
      *(a2 + 200) = v53;
      *(a2 + 528) = *(a1 + 208);
      *(a2 + 552) += v4;
      return v4 != 0;
    }

    v54 = *(a2 + 192);
    v55 = v52 - v54;
    v56 = (v52 - v54) >> 3;
    v57 = v56 + 1;
    if (!((v56 + 1) >> 61))
    {
      v58 = v51 - v54;
      if (v58 >> 2 > v57)
      {
        v57 = v58 >> 2;
      }

      v45 = v58 >= 0x7FFFFFFFFFFFFFF8;
      v59 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v45)
      {
        v59 = v57;
      }

      if (v59)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a2 + 192, v59);
      }

      v60 = (v52 - v54) >> 3;
      v61 = (8 * v56);
      v62 = (8 * v56 - 8 * v60);
      *v61 = *(a1 + 208);
      v53 = v61 + 1;
      memcpy(v62, v54, v55);
      v63 = *(a2 + 192);
      *(a2 + 192) = v62;
      *(a2 + 200) = v53;
      *(a2 + 208) = 0;
      if (v63)
      {
        operator delete(v63);
      }

      goto LABEL_58;
    }

LABEL_60:
    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  return v4 != 0;
}

uint64_t _HUDGPUTimelineBuildUITimeline(uint64_t result, uint64x2_t **a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = vdupq_n_s64(*(result + 1136));
  v5 = v3 - *a2;
  if (v3 != *a2)
  {
    v6 = v5 >> 4;
    v7 = *a2;
    do
    {
      *v7 = vqsubq_u64(*v7, v4);
      ++v7;
      --v6;
    }

    while (v6);
  }

  v9 = a2[3];
  v8 = a2[4];
  v10 = v8 - v9;
  if (v8 != v9)
  {
    v11 = v10 >> 4;
    v12 = a2[3];
    do
    {
      *v12 = vqsubq_u64(*v12, v4);
      ++v12;
      --v11;
    }

    while (v11);
  }

  v13 = a2[6];
  v14 = a2[7];
  v15 = v14 - v13;
  if (v14 != v13)
  {
    v16 = v15 >> 4;
    v17 = a2[6];
    do
    {
      *v17 = vqsubq_u64(*v17, v4);
      ++v17;
      --v16;
    }

    while (v16);
  }

  v18 = a2[9];
  v19 = a2[10];
  v20 = v19 - v18;
  if (v19 != v18)
  {
    v21 = v20 >> 4;
    v22 = a2[9];
    do
    {
      *v22 = vqsubq_u64(*v22, v4);
      ++v22;
      --v21;
    }

    while (v21);
  }

  v23 = a2[12];
  v24 = a2[13];
  v25 = v24 - v23;
  if (v24 != v23)
  {
    v26 = v25 >> 4;
    v27 = a2[12];
    do
    {
      *v27 = vqsubq_u64(*v27, v4);
      ++v27;
      --v26;
    }

    while (v26);
  }

  v28 = a2[15];
  v29 = a2[16];
  v30 = v29 - v28;
  if (v29 != v28)
  {
    v31 = v30 >> 4;
    v32 = a2[15];
    do
    {
      *v32 = vqsubq_u64(*v32, v4);
      ++v32;
      --v31;
    }

    while (v31);
  }

  v33 = a2[18];
  v34 = a2[19];
  v35 = v34 - v33;
  if (v34 != v33)
  {
    v36 = v35 >> 4;
    v37 = a2[18];
    do
    {
      *v37 = vqsubq_u64(*v37, v4);
      ++v37;
      --v36;
    }

    while (v36);
  }

  v38 = a2[24];
  v39 = a2[25] - v38;
  if (v39)
  {
    v40 = v39 >> 3;
    if ((v39 >> 3) <= 1)
    {
      v40 = 1;
    }

    v41 = a2[24];
    do
    {
      v42 = *(result + 1136);
      v43 = v41->i64[0] - v42;
      if (v41->i64[0] < v42)
      {
        v43 = 0;
      }

      v41->i64[0] = v43;
      v41 = (v41 + 8);
      --v40;
    }

    while (v40);
  }

  if (v3 == v2)
  {
    v44 = 0;
  }

  else
  {
    a2[31] = v2;
    a2[32] = (v5 >> 4);
    a2[45] = "Vertex";
    a2[46] = (a2 + 31);
    v44 = 1;
    a2[47] = (&dword_0 + 1);
  }

  if (v8 != v9)
  {
    v45 = &a2[2 * v44];
    v45[31] = v9;
    v45 += 31;
    v45[1] = (v10 >> 4);
    v46 = &a2[3 * v44];
    v46[45] = "Fragment";
    v46[46] = v45;
    v46[47] = (&dword_0 + 1);
    ++v44;
  }

  if (v14 != v13)
  {
    v47 = &a2[2 * v44];
    v47[31] = v13;
    v47[32] = (v15 >> 4);
    v48 = &a2[3 * v44];
    v48[45] = "Compute";
    v48[46] = (v47 + 31);
    v48[47] = (&dword_0 + 1);
    ++v44;
  }

  if (v19 != v18)
  {
    v49 = &a2[2 * v44];
    v49[31] = v18;
    v49[32] = (v20 >> 4);
    v50 = &a2[3 * v44];
    v50[45] = "Blit";
    v50[46] = (v49 + 31);
    v50[47] = (&dword_0 + 1);
    ++v44;
  }

  if (v24 != v23)
  {
    v51 = &a2[2 * v44];
    v51[31] = v23;
    v51[32] = (v25 >> 4);
    v52 = &a2[3 * v44];
    v52[45] = "Acceleration Structure";
    v52[46] = (v51 + 31);
    v52[47] = (&dword_0 + 1);
    ++v44;
  }

  if (v29 != v28)
  {
    v53 = &a2[2 * v44];
    v53[31] = v28;
    v53[32] = (v30 >> 4);
    v54 = &a2[3 * v44];
    v54[45] = "Raytracing";
    v54[46] = (v53 + 31);
    v54[47] = (&dword_0 + 1);
    ++v44;
  }

  if (v34 != v33)
  {
    v55 = &a2[2 * v44];
    v55[31] = v33;
    v55[32] = (v35 >> 4);
    v56 = &a2[3 * v44];
    v56[45] = "Machine Learning";
    v56[46] = (v55 + 31);
    v56[47] = (&dword_0 + 1);
    ++v44;
  }

  a2[27] = (a2 + 45);
  a2[28] = v44;
  a2[29] = (v39 >> 3);
  a2[30] = v38;
  return result;
}

void HUDGPUTimelineSnapshotFrame(uint64_t a1, uint64_t a2)
{
  v4 = HUDGetGlobalConfig(a1, a2);
  v5 = +[_CADeveloperHUDProperties instance];
  v6 = [v5 isHUDElementEnabled:512 mainLayer:1];

  if (v6)
  {
    if (*(a1 + 1128) < *(v4 + 11) && _HUDGPUTimelineSnapshotFrameTimingData(a2, a1 + 568))
    {
      ++*(a1 + 1128);
    }

    if (*(v4 + 12) * 1000000000.0 < (*(a2 + 208) - *(a1 + 1144)))
    {
      os_unfair_lock_lock(a1);
      if (*(a1 + 1120))
      {
        v7 = (a1 + 568);
        HUDGPUTimelineStore::operator=((a1 + 8), (a1 + 568));
        _HUDGPUTimelineBuildUITimeline(a1, (a1 + 8));
        v34 = 0u;
        memset(v35, 0, sizeof(v35));
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v26 = 0u;
        v27 = 0u;
        v8 = *(a1 + 568);
        if (v8)
        {
          *(a1 + 576) = v8;
          operator delete(v8);
          *v7 = 0;
          *(a1 + 576) = 0;
          *(a1 + 584) = 0;
        }

        *v7 = 0;
        *(a1 + 576) = 0;
        *(a1 + 584) = 0;
        memset(v25, 0, 24);
        v9 = (a1 + 592);
        v10 = *(a1 + 592);
        if (v10)
        {
          *(a1 + 600) = v10;
          operator delete(v10);
          *v9 = 0;
          *(a1 + 600) = 0;
          *(a1 + 608) = 0;
        }

        *v9 = 0;
        *(a1 + 600) = 0;
        *(a1 + 608) = 0;
        memset(&v25[3], 0, 24);
        v11 = (a1 + 616);
        v12 = *(a1 + 616);
        if (v12)
        {
          *(a1 + 624) = v12;
          operator delete(v12);
          *v11 = 0;
          *(a1 + 624) = 0;
          *(a1 + 632) = 0;
        }

        *v11 = 0;
        *(a1 + 624) = 0;
        *(a1 + 632) = 0;
        *&v27 = 0;
        v26 = 0uLL;
        v13 = (a1 + 640);
        v14 = *(a1 + 640);
        if (v14)
        {
          *(a1 + 648) = v14;
          operator delete(v14);
          *v13 = 0;
          *(a1 + 648) = 0;
          *(a1 + 656) = 0;
        }

        *v13 = 0;
        *(a1 + 648) = 0;
        *(a1 + 656) = 0;
        v28 = 0uLL;
        *(&v27 + 1) = 0;
        v15 = (a1 + 664);
        v16 = *(a1 + 664);
        if (v16)
        {
          *(a1 + 672) = v16;
          operator delete(v16);
          *v15 = 0;
          *(a1 + 672) = 0;
          *(a1 + 680) = 0;
        }

        *v15 = 0;
        *(a1 + 672) = 0;
        *(a1 + 680) = 0;
        *&v30 = 0;
        v29 = 0uLL;
        v17 = (a1 + 688);
        v18 = *(a1 + 688);
        if (v18)
        {
          *(a1 + 696) = v18;
          operator delete(v18);
          *v17 = 0;
          *(a1 + 696) = 0;
          *(a1 + 704) = 0;
        }

        *v17 = 0;
        *(a1 + 696) = 0;
        *(a1 + 704) = 0;
        v31 = 0uLL;
        *(&v30 + 1) = 0;
        v19 = (a1 + 712);
        v20 = *(a1 + 712);
        if (v20)
        {
          *(a1 + 720) = v20;
          operator delete(v20);
          *v19 = 0;
          *(a1 + 720) = 0;
          *(a1 + 728) = 0;
        }

        *v19 = 0;
        *(a1 + 720) = 0;
        *(a1 + 728) = 0;
        *&v33 = 0;
        v32 = 0uLL;
        v21 = (a1 + 736);
        v22 = *(a1 + 736);
        if (v22)
        {
          *(a1 + 744) = v22;
          operator delete(v22);
          *v21 = 0;
          *(a1 + 744) = 0;
          *(a1 + 752) = 0;
        }

        *v21 = 0;
        *(a1 + 744) = 0;
        *(a1 + 752) = 0;
        v34 = 0uLL;
        *(&v33 + 1) = 0;
        v23 = (a1 + 760);
        v24 = *(a1 + 760);
        if (v24)
        {
          *(a1 + 768) = v24;
          operator delete(v24);
          *v23 = 0;
          *(a1 + 768) = 0;
          *(a1 + 776) = 0;
        }

        *(a1 + 776) = 0;
        *v23 = 0u;
        memset(v35, 0, 24);
        memcpy((a1 + 784), &v35[1] + 8, 0x158uLL);
        HUDGPUTimelineStore::~HUDGPUTimelineStore(v25);
        *(a1 + 1096) = 0;
        *(a1 + 1104) = -1;
        *(a1 + 1112) = 0u;
        *(a1 + 1144) = HUDCurrentTimeInNs();
      }

      *(a1 + 1128) = 0;
      os_unfair_lock_unlock(a1);
    }
  }
}

void **HUDGPUTimelineStore::operator=(void **a1, char **a2)
{
  if (a1 != a2)
  {
    std::vector<HUDTimeRange>::__assign_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>(a1, *a2, a2[1], (a2[1] - *a2) >> 4);
    std::vector<HUDTimeRange>::__assign_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>(a1 + 3, a2[3], a2[4], (a2[4] - a2[3]) >> 4);
    std::vector<HUDTimeRange>::__assign_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>(a1 + 6, a2[6], a2[7], (a2[7] - a2[6]) >> 4);
    std::vector<HUDTimeRange>::__assign_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>(a1 + 9, a2[9], a2[10], (a2[10] - a2[9]) >> 4);
    std::vector<HUDTimeRange>::__assign_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>(a1 + 12, a2[12], a2[13], (a2[13] - a2[12]) >> 4);
    std::vector<HUDTimeRange>::__assign_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>(a1 + 15, a2[15], a2[16], (a2[16] - a2[15]) >> 4);
    std::vector<HUDTimeRange>::__assign_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>(a1 + 18, a2[18], a2[19], (a2[19] - a2[18]) >> 4);
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1 + 21, a2[21], a2[22], (a2[22] - a2[21]) >> 3);
    std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(a1 + 24, a2[24], a2[25], (a2[25] - a2[24]) >> 3);
  }

  memcpy(a1 + 27, a2 + 27, 0x158uLL);
  return a1;
}

os_unfair_lock_t HUDGPUTimelineGetCurrent(os_unfair_lock_t lock)
{
  if (!lock || LOBYTE(lock[288]._os_unfair_lock_opaque) != 1)
  {
    return 0;
  }

  os_unfair_lock_lock(lock);
  if (*&lock[44]._os_unfair_lock_opaque == *&lock[46]._os_unfair_lock_opaque)
  {
    v2 = 0;
  }

  else
  {
    v2 = lock + 56;
  }

  os_unfair_lock_unlock(lock);
  return v2;
}

uint64_t HUDGPUTimelineGetCurrentTimeRange(os_unfair_lock_t lock)
{
  if (!lock || LOBYTE(lock[288]._os_unfair_lock_opaque) != 1)
  {
    return 0;
  }

  os_unfair_lock_lock(lock);
  if (*&lock[44]._os_unfair_lock_opaque == *&lock[46]._os_unfair_lock_opaque)
  {
    v2 = 0;
  }

  else
  {
    v2 = *&lock[136]._os_unfair_lock_opaque - *&lock[284]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(lock);
  return v2;
}

void **std::vector<HUDTimeRange>::__assign_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 4)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<HUDTimeRange>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<HUDTimeRange>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<HUDTimeRange>>(a1, a2);
  }

  std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
}

void **std::vector<unsigned long long>::__assign_with_size[abi:ne200100]<unsigned long long *,unsigned long long *>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 3)
  {
    if (v8)
    {
      result[1] = v8;
      operator delete(v8);
      v7 = 0;
      *v6 = 0;
      v6[1] = 0;
      v6[2] = 0;
    }

    if (!(a4 >> 61))
    {
      v9 = v7 >> 2;
      if (v7 >> 2 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF8)
      {
        v10 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned long long>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 3)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<unsigned long long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(a1, a2);
  }

  std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long long>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void HUDGPUTimelineStore::~HUDGPUTimelineStore(HUDGPUTimelineStore *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    *(this + 25) = v2;
    operator delete(v2);
  }

  v3 = *(this + 21);
  if (v3)
  {
    *(this + 22) = v3;
    operator delete(v3);
  }

  v4 = *(this + 18);
  if (v4)
  {
    *(this + 19) = v4;
    operator delete(v4);
  }

  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 12);
  if (v6)
  {
    *(this + 13) = v6;
    operator delete(v6);
  }

  v7 = *(this + 9);
  if (v7)
  {
    *(this + 10) = v7;
    operator delete(v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    *(this + 7) = v8;
    operator delete(v8);
  }

  v9 = *(this + 3);
  if (v9)
  {
    *(this + 4) = v9;
    operator delete(v9);
  }

  v10 = *this;
  if (*this)
  {
    *(this + 1) = v10;
    operator delete(v10);
  }
}

char *std::vector<HUDTimeRange>::__insert_with_size[abi:ne200100]<HUDTimeRange*,HUDTimeRange*>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
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
      std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<HUDTimeRange>>(a1, v15);
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
      v24 = &a4[v5];
      v25 = &a4[v5 + -16 * a5];
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

void HUDMTLOverlayResetStats(uint64_t a1, uint64_t a2)
{
  if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
  {
    HUDMTLOverlayResetStats_cold_1();
  }

  HIBYTE(word_767B8) = 1;
  HUDInternalPerfMetricsReset(a1, a2);
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v2, v3);

  HUDGPUTimeTrackerReset(GlobalInstance);
}

uint64_t HUDMTLOverlayGetGlobalOverlay(uint64_t a1, uint64_t a2)
{
  if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
  {
    HUDMTLOverlayResetStats_cold_1();
  }

  return _HUDMTLOverlayGlobalInstance_tracker;
}

uint64_t HUDMTLOverlayGetGlobalGPUTimeline(uint64_t a1, uint64_t a2)
{
  if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
  {
    HUDMTLOverlayResetStats_cold_1();
  }

  return qword_767B0;
}

void HUDMTLOverlaySetIsInGPTK(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
  {
    HUDMTLOverlayResetStats_cold_1();
  }

  LOBYTE(word_767B8) = v2;
}

uint64_t HUDMTLOverlayIsInGPTK(uint64_t a1, uint64_t a2)
{
  if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
  {
    HUDMTLOverlayResetStats_cold_1();
  }

  return word_767B8;
}

void sub_1C548(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, ...)
{
  va_start(va, a29);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(va, 8);
  objc_destroyWeak((v29 + 40));
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__415(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1D0CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _HUDMTLLayerFrameSwap(uint64_t result, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v6 = *a2;
    if (*a2 != result)
    {
      v7 = a5;
      v8 = a4;
      v9 = a3;
      *a2 = result;
      a2[1] = v6;
      v10 = (a2 + 1);
      v14 = 0;
      HUDUIFrameGetSizeInPoints(v6, &v14 + 1, &v14);
      if (v9)
      {
        if (v8 && (v14 < v8 || HIDWORD(v14) != v9))
        {
          HUDUIReleaseFrame(v10);
          if (_HUDMTLOverlayGlobalInstance_onceToken != -1)
          {
            [HUDMTLLayerOverlay initWithDevice:];
          }

          v11 = _HUDMTLOverlayGlobalInstance_tracker;
          Scale = HUDUIFrameGetScale(result);
          IsHDR = HUDUIFrameGetIsHDR(result);
          *v10 = HUDUICreateFrame(v11, v9, v8, v7, IsHDR, Scale);
        }
      }
    }
  }
}

void sub_1D59C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1D68C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id _HUDQRCodeCGImageFromCIImage(void *a1)
{
  v1 = _HUDQRCodeCGImageFromCIImage_onceToken;
  v2 = a1;
  if (v1 != -1)
  {
    _HUDQRCodeCGImageFromCIImage_cold_1();
  }

  v3 = _HUDQRCodeCGImageFromCIImage_context;
  [v2 extent];
  v4 = [v3 createCGImage:v2 fromRect:?];

  return v4;
}

id _HUDQRCodeCreateMTLTexture(void *a1, void *a2)
{
  v3 = a2;
  v4 = _HUDQRCodeCGImageFromCIImage(a1);
  if (!v4)
  {
    goto LABEL_10;
  }

  v5 = v4;
  DataProvider = CGImageGetDataProvider(v4);
  if (!DataProvider)
  {
LABEL_9:
    CGImageRelease(v5);
LABEL_10:
    v13 = 0;
    goto LABEL_11;
  }

  v7 = DataProvider;
  v8 = CGDataProviderCopyData(DataProvider);
  if (!v8)
  {
    CGDataProviderRelease(v7);
    goto LABEL_9;
  }

  v9 = v8;
  v10 = [v3 commandBuffer];
  BytesPerRow = CGImageGetBytesPerRow(v5);
  Height = CGImageGetHeight(v5);
  v13 = 0;
  if (BytesPerRow >= 4)
  {
    v14 = Height;
    if (Height)
    {
      v20 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:70 width:BytesPerRow >> 2 height:Height mipmapped:0];
      [v20 setStorageMode:2];
      v15 = [v3 device];
      v13 = [v15 newTextureWithDescriptor:v20];

      v19 = [v10 blitCommandEncoder];
      v16 = [v3 device];
      v17 = [v16 newBufferWithBytesNoCopy:CFDataGetBytePtr(v9) length:4 * v14 * (BytesPerRow >> 2) options:0 deallocator:&__block_literal_global_4];

      v22[0] = BytesPerRow >> 2;
      v22[1] = v14;
      v22[2] = 1;
      memset(v21, 0, sizeof(v21));
      [v19 copyFromBuffer:v17 sourceOffset:0 sourceBytesPerRow:BytesPerRow & 0xFFFFFFFFFFFFFFFCLL sourceBytesPerImage:0 sourceSize:v22 toTexture:v13 destinationSlice:0 destinationLevel:0 destinationOrigin:v21 options:0];
      [v19 endEncoding];
      [v10 commit];
      [v10 waitUntilCompleted];
      CFRelease(v9);
      CGImageRelease(v5);
    }
  }

LABEL_11:

  return v13;
}

id HUDQrCodeGenerateTexture(void *a1, unsigned int a2, void *a3)
{
  v5 = a1;
  v6 = a3;
  v7 = +[CIFilter QRCodeGenerator];
  v8 = v7;
  if (v7)
  {
    [v7 setMessage:v5];
    [v8 setCorrectionLevel:@"Q"];
    v9 = objc_autoreleasePoolPush();
    v10 = [v8 outputImage];
    [v10 extent];
    v12 = a2 / v11;
    [v10 extent];
    CGAffineTransformMakeScale(&v17, v12, a2 / v13);
    v14 = [v10 imageByApplyingTransform:&v17];
    v15 = _HUDQRCodeCreateMTLTexture(v14, v6);

    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

float32x4_t HUDUIRectMul(float32x4_t *a1, float a2)
{
  result = vmulq_n_f32(*a1, a2);
  *a1 = result;
  return result;
}

void _HUDUIAllocString(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  if (a1)
  {
    v11 = a2;
    v13 = fmin(a4, 512.0);
    os_unfair_lock_lock((a1 + 6192));
    v14 = std::__string_view_hash<char>::operator()[abi:ne200100](&v23, a3, v13);
    v15 = ~v11 + (v11 << 18);
    v16 = 65 * ((21 * (v15 ^ (v15 >> 31))) ^ ((21 * (v15 ^ (v15 >> 31))) >> 11));
    v18 = ((v14 << 6) + ((v16 >> 22) ^ v16) + (v14 >> 2) + 2654435769u) ^ v14;
    v17 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 5536), &v18);
    if (!v17)
    {
      bzero(v19, 0x240uLL);
      v23 = v18;
      bzero(&v24, 0x220uLL);
      v20 = 0u;
      v21 = 0u;
      __p = 0u;
      v28 = 0u;
      v22 = 0u;
      v17 = std::__hash_table<std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,HUDUIStringInternal>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long,HUDUIStringInternal>>((a1 + 5536), &v23);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (v25)
      {
        v26 = v25;
        operator delete(v25);
      }

      memcpy(v17 + 3, a3, v13);
      *(v17 + v13 + 24) = 0;
      *(v17 + 134) = v13;
      _HUDAllocStringVertexBuffer(a1, v11, (v17 + 3), v13, (v17 + 68), a6, a7);
    }

    *a5 = v17 + 3;
    *(a5 + 8) = v17 + 68;
    *(a5 + 16) = *(a1 + 4 * v11 + 5520);
    *(a5 + 20) = 0;
    os_unfair_lock_unlock((a1 + 6192));
  }

  else
  {
    *a5 = HUDUIInvalidString;
    *(a5 + 16) = qword_784F8;
  }
}

void sub_1EAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<unsigned long,HUDUIStringInternal>::~pair(&STACK[0x248]);
  HUDUIStringInternal::~HUDUIStringInternal(va);
  os_unfair_lock_unlock(v3 + 1548);
  _Unwind_Resume(a1);
}

void *std::pair<unsigned long,HUDUIStringInternal>::~pair(void *a1)
{
  v2 = a1[69];
  if (v2)
  {
    a1[70] = v2;
    operator delete(v2);
  }

  v3 = a1[66];
  if (v3)
  {
    a1[67] = v3;
    operator delete(v3);
  }

  return a1;
}

void HUDUIStringInternal::~HUDUIStringInternal(HUDUIStringInternal *this)
{
  v2 = *(this + 68);
  if (v2)
  {
    *(this + 69) = v2;
    operator delete(v2);
  }

  v3 = *(this + 65);
  if (v3)
  {
    *(this + 66) = v3;
    operator delete(v3);
  }
}

void _HUDAllocStringVertexBuffer(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, float a6, float a7)
{
  v14 = 6 * a4;
  *(a5 + 48) = 0;
  v15 = (a5 + 48);
  *(a5 + 52) = 0;
  v16 = (a5 + 52);
  std::vector<HUDUIVertex>::resize(a5, (4 * a4));
  std::vector<unsigned short>::resize((a5 + 24), v14);
  v17 = a1 + 4 * a2;
  LODWORD(v29) = -1;
  Vertices = HUDFontGenerateVertices(a1, a3, a4, *a5, 0, 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 8) - *a5) >> 3), 0.0, 0.0, 0.0, *(v17 + 5520) * a6, *(v17 + 5520) * a7, *(a5 + 24), 0, (*(a5 + 32) - *(a5 + 24)) >> 1, v29, v15, v16);
  std::vector<HUDUIVertex>::resize(a5, 4 * Vertices);
  std::vector<unsigned short>::resize((a5 + 24), 6 * Vertices);
  *v15 = *v15 / *(v17 + 5520);
  *v16 = *v16 / *(v17 + 5520);
  v19 = *(a5 + 8) - *a5;
  if (v19)
  {
    v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3);
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    v22 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = vdupq_n_s64(v21 - 1);
    v24 = xmmword_54910;
    v25 = xmmword_54920;
    v26 = (*a5 + 68);
    v27 = vdupq_n_s64(4uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v23, v25));
      if (vuzp1_s16(v28, *v23.i8).u8[0])
      {
        *(v26 - 12) = 0;
      }

      if (vuzp1_s16(v28, *&v23).i8[2])
      {
        *(v26 - 6) = 0;
      }

      if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, *&v24))).i32[1])
      {
        *v26 = 0;
        v26[6] = 0;
      }

      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v26 += 24;
      v22 -= 4;
    }

    while (v22);
  }
}

double HUDUIAllocStringWithFormat@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const char *a3@<X2>, uint64_t a4@<X8>, ...)
{
  va_start(va, a4);
  v7 = vsnprintf(__str, 0x200uLL, a3, va);
  if (v7 < 0x200 && a1)
  {
    _HUDUIAllocString(a1, a2, __str, v7, a4, 0.0, 0.0);
  }

  else
  {
    result = *&HUDUIInvalidString;
    *a4 = HUDUIInvalidString;
    *(a4 + 16) = qword_784F8;
  }

  return result;
}

double HUDUIAllocString@<D0>(char *__s@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  if (a2 && __s)
  {
    v8 = strlen(__s);

    _HUDUIAllocString(a2, a3, __s, v8, a4, 0.0, 0.0);
  }

  else
  {
    result = *&HUDUIInvalidString;
    *a4 = HUDUIInvalidString;
    *(a4 + 16) = qword_784F8;
  }

  return result;
}

void HUDUIAllocUnicodeString(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = a2;
  v7 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 6192));
    v13 = [v7 hash];
    v8 = [v7 lengthOfBytesUsingEncoding:2348810496];
    v9 = std::__hash_table<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,HUDGPUTimeTrackerLabel>>>::find<unsigned long long>((a1 + 5536), &v13);
    if (!v9)
    {
      bzero(v14, 0x240uLL);
      v18 = v13;
      bzero(&v19, 0x220uLL);
      v15 = 0u;
      v16 = 0u;
      __p = 0u;
      v23 = 0u;
      v17 = 0u;
      v9 = std::__hash_table<std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,HUDUIStringInternal>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,HUDUIStringInternal>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long,HUDUIStringInternal>>((a1 + 5536), &v18);
      if (__p)
      {
        *(&__p + 1) = __p;
        operator delete(__p);
      }

      if (v20)
      {
        v21 = v20;
        operator delete(v20);
      }

      v10 = v7;
      v11 = fmin(v8, 512.0);
      memcpy(v9 + 3, [v7 UTF8String], v11);
      *(v9 + v11 + 24) = 0;
      *(v9 + 134) = v11;
      v12 = v7;
      _HUDAllocStringVertexBufferUnichar(a1, v4, [v7 cStringUsingEncoding:2348810496], *(v9 + 134) >> 2, (v9 + 68), 0.0, 0.0);
    }

    *a4 = v9 + 3;
    *(a4 + 8) = v9 + 68;
    *(a4 + 16) = *(a1 + 4 * v4 + 5520);
    *(a4 + 20) = 0;
    os_unfair_lock_unlock((a1 + 6192));
  }

  else
  {
    *a4 = HUDUIInvalidString;
    *(a4 + 16) = qword_784F8;
  }
}

void sub_1F108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::pair<unsigned long,HUDUIStringInternal>::~pair(&STACK[0x248]);
  HUDUIStringInternal::~HUDUIStringInternal(va);
  os_unfair_lock_unlock((v4 + v5));

  _Unwind_Resume(a1);
}

void _HUDAllocStringVertexBufferUnichar(uint64_t a1, unsigned int a2, uint64_t a3, unsigned int a4, uint64_t a5, float a6, float a7)
{
  v14 = 6 * a4;
  *(a5 + 48) = 0;
  v15 = (a5 + 48);
  *(a5 + 52) = 0;
  v16 = (a5 + 52);
  std::vector<HUDUIVertex>::resize(a5, (4 * a4));
  std::vector<unsigned short>::resize((a5 + 24), v14);
  VerticesUTF32 = HUDFontGenerateVerticesUTF32(a1, a3, a4, *a5, 0, 0xAAAAAAAAAAAAAAABLL * ((*(a5 + 8) - *a5) >> 3), *(a5 + 24), 0, 0.0, 0.0, 0.0, a6, a7, (*(a5 + 32) - *(a5 + 24)) >> 1, -1, v15, v16);
  std::vector<HUDUIVertex>::resize(a5, 4 * VerticesUTF32);
  std::vector<unsigned short>::resize((a5 + 24), 6 * VerticesUTF32);
  v18 = a1 + 4 * a2;
  *v15 = *v15 / *(v18 + 5520);
  *v16 = *v16 / *(v18 + 5520);
  v19 = *(a5 + 8) - *a5;
  if (v19)
  {
    v20 = 0xAAAAAAAAAAAAAAABLL * (v19 >> 3);
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    v22 = (v21 + 3) & 0xFFFFFFFFFFFFFFFCLL;
    v23 = vdupq_n_s64(v21 - 1);
    v24 = xmmword_54910;
    v25 = xmmword_54920;
    v26 = (*a5 + 68);
    v27 = vdupq_n_s64(4uLL);
    do
    {
      v28 = vmovn_s64(vcgeq_u64(v23, v25));
      if (vuzp1_s16(v28, *v23.i8).u8[0])
      {
        *(v26 - 12) = 0;
      }

      if (vuzp1_s16(v28, *&v23).i8[2])
      {
        *(v26 - 6) = 0;
      }

      if (vuzp1_s16(*&v23, vmovn_s64(vcgeq_u64(v23, *&v24))).i32[1])
      {
        *v26 = 0;
        v26[6] = 0;
      }

      v24 = vaddq_s64(v24, v27);
      v25 = vaddq_s64(v25, v27);
      v26 += 24;
      v22 -= 4;
    }

    while (v22);
  }
}

double _HUDUITemporaryString@<D0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, const char *a3@<X2>, unsigned int a4@<W3>, uint64_t a5@<X8>, float a6@<S0>, float a7@<S1>)
{
  if (a1)
  {
    v12 = a1[727];
    v13 = &a1[72 * v12];
    v14 = (v13 + 7);
    a1[727] = (v12 + 1) % 0xAuLL;
    v15 = v13 + 72;
    _HUDAllocStringVertexBuffer(*a1, a2, a3, a4, (v13 + 72), a6, a7);
    strncpy(v14, a3, a4);
    v14[a4] = 0;
    *a5 = v14;
    *(a5 + 8) = v15;
    LODWORD(result) = *(*a1 + 4 * a2 + 5520);
    *(a5 + 16) = LODWORD(result);
    *(a5 + 20) = 0;
  }

  else
  {
    result = *&HUDUIInvalidString;
    *a5 = HUDUIInvalidString;
    *(a5 + 16) = qword_784F8;
  }

  return result;
}

double HUDUITemporaryStringWithFormat@<D0>(uint64_t *a1@<X0>, unsigned int a2@<W1>, const char *a3@<X2>, uint64_t a4@<X8>, ...)
{
  va_start(va, a4);
  v7 = vsnprintf(__str, 0x200uLL, a3, va);
  return _HUDUITemporaryString(a1, a2, __str, v7, a4, 0.0, 0.0);
}

double HUDUIWrappedTemporaryString@<D0>(char *__s@<X2>, uint64_t *a2@<X0>, unsigned int a3@<W1>, uint64_t a4@<X8>, float a5@<S0>, float a6@<S1>)
{
  v12 = strlen(__s);

  return _HUDUITemporaryString(a2, a3, __s, v12, a4, a5, a6);
}

uint64_t HUDUIOverlayCreate(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = v1;
  }

  else
  {
    v3 = MTLCreateSystemDefaultDevice();
    if (!v3)
    {
      v7 = HUDUIInvalidOverlay;
      goto LABEL_8;
    }
  }

  v4 = [v3 newCommandQueue];
  [v4 setLabel:MTLHUDObjectLabel];
  v5 = objc_alloc_init(MTLDepthStencilDescriptor);
  [v5 setDepthCompareFunction:7];
  [v5 setDepthWriteEnabled:0];
  v6 = [v3 newDepthStencilStateWithDescriptor:v5];
  if (v4 && v6)
  {
    operator new();
  }

  v7 = HUDUIInvalidOverlay;

LABEL_8:
  return v7;
}

id HUDUIVertexDescriptor(void)
{
  v0 = +[MTLVertexDescriptor vertexDescriptor];
  v1 = [v0 attributes];
  v2 = [v1 objectAtIndexedSubscript:0];
  [v2 setOffset:0];

  v3 = [v0 attributes];
  v4 = [v3 objectAtIndexedSubscript:0];
  [v4 setFormat:29];

  v5 = [v0 attributes];
  v6 = [v5 objectAtIndexedSubscript:0];
  [v6 setBufferIndex:0];

  v7 = [v0 attributes];
  v8 = [v7 objectAtIndexedSubscript:1];
  [v8 setOffset:8];

  v9 = [v0 attributes];
  v10 = [v9 objectAtIndexedSubscript:1];
  [v10 setFormat:29];

  v11 = [v0 attributes];
  v12 = [v11 objectAtIndexedSubscript:1];
  [v12 setBufferIndex:0];

  v13 = [v0 attributes];
  v14 = [v13 objectAtIndexedSubscript:2];
  [v14 setOffset:16];

  v15 = [v0 attributes];
  v16 = [v15 objectAtIndexedSubscript:2];
  [v16 setFormat:36];

  v17 = [v0 attributes];
  v18 = [v17 objectAtIndexedSubscript:2];
  [v18 setBufferIndex:0];

  v19 = [v0 attributes];
  v20 = [v19 objectAtIndexedSubscript:3];
  [v20 setOffset:20];

  v21 = [v0 attributes];
  v22 = [v21 objectAtIndexedSubscript:3];
  [v22 setFormat:36];

  v23 = [v0 attributes];
  v24 = [v23 objectAtIndexedSubscript:3];
  [v24 setBufferIndex:0];

  v25 = [v0 layouts];
  v26 = [v25 objectAtIndexedSubscript:0];
  [v26 setStepRate:1];

  v27 = [v0 layouts];
  v28 = [v27 objectAtIndexedSubscript:0];
  [v28 setStepFunction:1];

  v29 = [v0 layouts];
  v30 = [v29 objectAtIndexedSubscript:0];
  [v30 setStride:24];

  return v0;
}

void sub_1FBF4(_Unwind_Exception *a1)
{
  v4 = v2;

  _Unwind_Resume(a1);
}

id _HUDUIDownloadPipelineForPixelFormat(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 6184);
  v5 = [NSNumber numberWithUnsignedLongLong:a2 | 0xFFFFFFFF00000000];
  v6 = [v4 objectForKey:v5];

  if (!v6)
  {
    v7 = *(a1 + 6160);
    v20 = 0;
    v8 = [v7 newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal\n;struct VOut { float4 pos [[position]]; float2 uv; };\nvertex VOut libMTLHud_CopyVertex(uint vid [[ vertex_id ]]) {VOut out; out.uv = float2((vid << 1) & 2 options:vid & 2); out.pos = float4(out.uv * 2.0f + -1.0f error:{0.0f, 1.0f); return out; }\nstruct FOut { float4 rt0 [[color(0)]]; };\nfragment FOut libMTLHud_CopyFragment(VOut in [[stage_in]], texture2d<float> tex\n) { \nFOut out;\nint y = tex.get_height() * (1.0 - in.uv.y);\nint x = tex.get_width() * (in.uv.x);\nout.rt0 = tex.read(uint2(x, y)); out.rt0.w = 1.0;\nreturn out; }\n", 0, &v20}];
    v9 = v20;
    if (v8)
    {
      v10 = [v8 newFunctionWithName:@"libMTLHud_CopyVertex"];
      v11 = [v8 newFunctionWithName:@"libMTLHud_CopyFragment"];
      v12 = objc_opt_new();
      [v12 setVertexFunction:v10];
      [v12 setFragmentFunction:v11];
      v13 = [v12 colorAttachments];
      v14 = [v13 objectAtIndexedSubscript:0];
      [v14 setPixelFormat:a2];

      v15 = [v12 colorAttachments];
      v16 = [v15 objectAtIndexedSubscript:0];
      [v16 setBlendingEnabled:0];

      v6 = [*(a1 + 6160) newRenderPipelineStateWithDescriptor:v12 error:0];
      if (v6)
      {
        v17 = *(a1 + 6184);
        v18 = [NSNumber numberWithUnsignedLongLong:a2 | 0xFFFFFFFF00000000];
        [v17 setObject:v6 forKeyedSubscript:v18];
      }
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

id HUDUIOverlayGetPipelineState(uint64_t a1, void *a2, int a3)
{
  v5 = a2;
  os_unfair_lock_lock((a1 + 6192));
  v6 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v5 pixelFormat] | (objc_msgSend(v5, "sampleCount") << 16));
  v7 = [*(a1 + 6184) objectForKeyedSubscript:v6];
  v8 = v7;
  if (v7)
  {
    v9 = v7;
  }

  else
  {
    HUDInterposeEnableCompilerStats(0);
    v40 = HUDUIVertexDescriptor();
    v10 = objc_alloc_init(MTLCompileOptions);
    [v10 setLanguageVersion:131075];
    v11 = *(a1 + 6160);
    v42 = 0;
    v12 = [v11 newLibraryWithSource:@"#include <metal_stdlib>\nusing namespace metal;\ntypedef struct\n{\n    float2 position [[attribute(0)]];\n    float2 texCoord [[attribute(1)]];\n    uint   color    [[attribute(2)]];\n    uint   texture  [[attribute(3)]];\n} libMTLHud_vertexIn;\ntypedef struct\n{\n    float4 position [[position]];\n    float2 texCoord;\n    float4 vertexColor;\n    int texture;\n} libMTLHud_vertexOut;\ntypedef struct\n{\n    int renderTargetIndex;\n} libMTLHud_config;\nvertex libMTLHud_vertexOut libMTLHud_vertexShader(libMTLHud_vertexIn in [[stage_in]] options:\n                                                  const constant float4x4& projection [[ buffer(1) ]] error:{\n                                                  const constant libMTLHud_config *config [[ buffer(2) ]])\n{\n    libMTLHud_vertexOut out;\n    out.position = projection * float4(in.position, 0, 1);\n    out.texCoord = in.texCoord;\n    out.vertexColor = unpack_unorm4x8_to_float(in.color);\n    out.texture = in.texture;\n\n    return out;\n}\nfragment float4 libMTLHud_fragmentShader(libMTLHud_vertexOut in [[stage_in]], \n                                         array<texture2d<float, access::sample>, 3> tex [[texture(0)]])\n{\n    constexpr sampler sam(mip_filter::linear, mag_filter::linear, min_filter::linear, address::clamp_to_edge);\n    float4 sample = tex[in.texture].sample(sam, in.texCoord);\n    float4 res = (float4)sample * in.vertexColor;\n    return float4(res.xyz, res.w);}\nfragment float4 libMTLHud_fragmentShader_ms(libMTLHud_vertexOut in [[stage_in]], \n                                            texture2d_ms<float, access::read> input [[texture(0)]], \n                                            array<texture2d<float, access::sample>, 2> tex [[texture(1)]])\n{\n    const uint count = input.get_num_samples();\n    float4 resolved_color = 0;\n    uint2 pixel = uint2(in.texCoord.x * input.get_width(), in.texCoord.y * input.get_height());\n    for (uint i = 0; i < count; ++i)\n    {\n         resolved_color += input.read(pixel, i);\n    }\n    resolved_color /= count;\n    float4 res = (float4)resolved_color * in.vertexColor;\n    return res;}\n", v10, &v42}];
    v13 = v42;
    v14 = v13;
    if (v12)
    {

      v10 = objc_alloc_init(MTLRenderPipelineDescriptor);
      [v10 setLabel:@"libMTLHUD:pipelineState"];
      [v10 setRasterSampleCount:{objc_msgSend(v5, "sampleCount")}];
      v15 = [v12 newFunctionWithName:@"libMTLHud_vertexShader"];
      [v10 setVertexFunction:v15];

      if (a3)
      {
        v16 = [v12 newFunctionWithName:@"libMTLHud_fragmentShader_ms"];
      }

      else
      {
        v16 = [v12 newFunctionWithName:@"libMTLHud_fragmentShader"];
      }

      v18 = v16;
      [v10 setFragmentFunction:v16];

      [v10 setVertexDescriptor:v40];
      v19 = [v5 pixelFormat];
      v20 = [v10 colorAttachments];
      v21 = [v20 objectAtIndexedSubscript:0];
      [v21 setPixelFormat:v19];

      v22 = [v10 colorAttachments];
      v23 = [v22 objectAtIndexedSubscript:0];
      [v23 setBlendingEnabled:1];

      v24 = [v10 colorAttachments];
      v25 = [v24 objectAtIndexedSubscript:0];
      [v25 setRgbBlendOperation:0];

      v26 = [v10 colorAttachments];
      v27 = [v26 objectAtIndexedSubscript:0];
      [v27 setAlphaBlendOperation:0];

      v28 = [v10 colorAttachments];
      v29 = [v28 objectAtIndexedSubscript:0];
      [v29 setSourceRGBBlendFactor:4];

      v30 = [v10 colorAttachments];
      v31 = [v30 objectAtIndexedSubscript:0];
      [v31 setSourceAlphaBlendFactor:1];

      v32 = [v10 colorAttachments];
      v33 = [v32 objectAtIndexedSubscript:0];
      [v33 setDestinationRGBBlendFactor:5];

      v34 = [v10 colorAttachments];
      v35 = [v34 objectAtIndexedSubscript:0];
      [v35 setDestinationAlphaBlendFactor:5];

      [v10 setRasterSampleCount:{objc_msgSend(v5, "sampleCount")}];
      v36 = *(a1 + 6160);
      v41 = v14;
      v9 = [v36 newRenderPipelineStateWithDescriptor:v10 error:&v41];
      v17 = v41;

      v37 = _HUDUIDownloadPipelineForPixelFormat(a1, 70);
      if (v9)
      {
        [*(a1 + 6184) setObject:v9 forKeyedSubscript:v6];
        HUDInterposeEnableCompilerStats(1);
        v38 = v9;
      }

      else
      {
        NSLog(@"[libMTLHud] Failed to create pipeline states, error %@", v17);
        HUDInterposeEnableCompilerStats(1);
      }
    }

    else
    {
      NSLog(@"Overlay: Failed to create MTLLibrary, error %@", v13);
      HUDInterposeEnableCompilerStats(1);
      v9 = 0;
      v17 = v14;
    }
  }

  os_unfair_lock_unlock((a1 + 6192));

  return v9;
}

void sub_20340(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  os_unfair_lock_unlock(v11 + 1548);

  _Unwind_Resume(a1);
}

uint64_t HUDUICreateFrame(uint64_t a1, unsigned int a2, unsigned int a3, unsigned int a4, int a5, float a6)
{
  if (!a1)
  {
    return HUDUIInvalidFrame;
  }

  v6 = (a2 * a6);
  v7 = a3 * a6;
  if (!v6 || v7 == 0)
  {
    return HUDUIInvalidFrame;
  }

  if (a5)
  {
    v11 = 71;
  }

  else
  {
    v11 = 70;
  }

  v12 = [MTLTextureDescriptor texture2DDescriptorWithPixelFormat:v11 width:v6 height:v7 mipmapped:0];
  [v12 setUsage:{objc_msgSend(v12, "usage") | 4}];
  if (![*(a1 + 6160) supportsFamily:1004] || (v13 = objc_msgSend(*(a1 + 6160), "supportsTextureSampleCount:", 4), !v13) || *(HUDGetGlobalConfig(v13, v14) + 21) != 1 || (objc_msgSend(v12, "setSampleCount:", 4), objc_msgSend(v12, "setTextureType:", 4), (v15 = objc_msgSend(*(a1 + 6160), "newTextureWithDescriptor:", v12)) == 0))
  {
    [v12 setSampleCount:1];
    [v12 setTextureType:2];
    v15 = [*(a1 + 6160) newTextureWithDescriptor:v12];
  }

  if (v15)
  {
    operator new();
  }

  v9 = HUDUIInvalidFrame;

  return v9;
}

float HUDUIFrameGetSizeInPoints(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  if (a1)
  {
    v3 = *(a1 + 5844);
    *a2 = (*(a1 + 5832) / v3);
    result = *(a1 + 5836) / v3;
    *a3 = result;
  }

  return result;
}

float HUDUIFrameGetScale(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 5844);
  }

  else
  {
    return 1.0;
  }
}

uint64_t HUDUIFrameGetIsHDR(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 5862);
  }

  else
  {
    v1 = 1;
  }

  return v1 & 1;
}

void _HUDDeleteFrame(HUDUIFrame *a1)
{
  os_unfair_lock_lock(a1 + 1464);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = *(a1 + 728);
  v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v3)
  {
    v4 = *v21;
    do
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v21 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v20 + 1) + 8 * i);
        if ([v6 status] != &dword_4)
        {
          [v6 waitUntilCompleted];
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v3);
  }

  v7 = *(a1 + 4);
  for (j = *(a1 + 5); v7 != j; v7 += 136)
  {
    v9 = *a1;
    v10 = *(v7 + 96);
    os_unfair_lock_lock((*a1 + 6192));
    v11 = *(v9 + 6136);
    v12 = *(v9 + 6144) - v11;
    if (v12)
    {
      v13 = v12 >> 4;
      if (v13 <= 1)
      {
        v13 = 1;
      }

      v14 = (v11 + 8);
      do
      {
        if (*(v14 - 1) == v10)
        {
          *v14 = 0;
        }

        v14 += 16;
        --v13;
      }

      while (v13);
    }

    os_unfair_lock_unlock((v9 + 6192));
  }

  v15 = *(a1 + 1);
  *(a1 + 1) = 0;

  os_unfair_lock_unlock(a1 + 1464);
  v16 = (a1 + 5792);
  v17 = -5760;
  while (1)
  {
    v18 = *(v16 - 1);
    if (v18)
    {
      *v16 = v18;
      operator delete(v18);
    }

    v19 = *(v16 - 4);
    if (v19)
    {
      *(v16 - 3) = v19;
      operator delete(v19);
    }

    v16 -= 72;
    v17 += 576;
    if (!v17)
    {
      v24 = (a1 + 32);
      std::vector<HUDUIWindow>::__destroy_vector::operator()[abi:ne200100](&v24);

      operator delete();
    }
  }
}

id _HUDUIDrawFrame(uint64_t a1, void *a2, id *a3, int a4, void *a5, uint64_t a6, int a7, uint64_t a8, char a9, void *a10, void *a11)
{
  v16 = a2;
  v17 = a5;
  v46 = a10;
  v45 = a11;
  if (a4)
  {
    v18 = [*a3 sampleCount] > 1;
  }

  else
  {
    v18 = 0;
  }

  v19 = HUDUIOverlayGetPipelineState(a1, v17, v18);
  if (!v19)
  {
    goto LABEL_16;
  }

  if (v16)
  {
    v20 = v16;
    v22 = v20;
    goto LABEL_8;
  }

  v22 = [*(a1 + 6168) commandBuffer];
  v20 = [v22 setLabel:@"libMTLHud_draw"];
  if (!v22)
  {
LABEL_16:
    v41 = 0;
    goto LABEL_17;
  }

LABEL_8:
  GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v20, v21);
  HUDGPUTimeTrackerMarkCommandBuffer(GlobalInstance, v22, 1);
  v43 = v16;
  v24 = objc_opt_new();
  v25 = [v24 colorAttachments];
  v26 = [v25 objectAtIndexedSubscript:0];
  [v26 setTexture:v17];

  v27 = [v24 colorAttachments];
  v28 = [v27 objectAtIndexedSubscript:0];
  [v28 setLoadAction:a6];

  v29 = [v24 colorAttachments];
  v30 = [v29 objectAtIndexedSubscript:0];
  [v30 setClearColor:{0.0, 0.0, 0.0, 0.0}];

  v31 = [v24 colorAttachments];
  v32 = [v31 objectAtIndexedSubscript:0];
  [v32 setStoreAction:1];

  v33 = [v17 width];
  v34 = [v17 height];
  LODWORD(v35) = 0;
  *(&v35 + 1) = 2.0 / (0.0 - v34);
  *&v36 = v33 / (0.0 - v33);
  *(&v36 + 1) = v34 / v34;
  DWORD2(v36) = 0x80000000;
  HIDWORD(v36) = 1.0;
  v52[0] = COERCE_UNSIGNED_INT(2.0 / v33);
  v52[1] = v35;
  v52[2] = xmmword_549E0;
  v52[3] = v36;
  v51 = 0;
  v37 = [v22 renderCommandEncoderWithDescriptor:v24];
  v39 = HUDGPUTimeTrackerGetGlobalInstance(v37, v38);
  HUDGPUTimeTrackerMarkEncoder(v39, v37, 1);
  v49[0] = 0;
  v49[1] = 0;
  *&v49[2] = v33;
  *&v49[3] = v34;
  v50 = xmmword_549F0;
  [v37 setViewport:v49];
  [v37 setDepthStencilState:*(a1 + 6176)];
  [v37 setVertexBytes:v52 length:64 atIndex:1];
  [v37 setVertexBytes:&v51 length:4 atIndex:2];
  [v37 setRenderPipelineState:v19];
  if (a3 && a4)
  {
    [v37 setFragmentTextures:a3 withRange:{0, a4}];
  }

  v46[2](v46, v37);
  [v37 endEncoding];
  if (a7)
  {
    v40 = [v22 blitCommandEncoder];
    [v40 generateMipmapsForTexture:v17];
    [v40 endEncoding];
  }

  if (a9)
  {
    v47[0] = _NSConcreteStackBlock;
    v47[1] = 3221225472;
    v47[2] = ___Z15_HUDUIDrawFrameP12HUDUIOverlayPU27objcproto16MTLCommandBuffer11objc_objectPKPU21objcproto10MTLTexture11objc_objectiS4_13MTLLoadActionbmbU13block_pointerFvPU34objcproto23MTLRenderCommandEncoder11objc_objectEU13block_pointerFvvE_block_invoke;
    v47[3] = &unk_69128;
    v48 = v45;
    [v22 addCompletedHandler:v47];
    [v22 commit];
  }

  v41 = v22;

  v16 = v43;
LABEL_17:

  return v41;
}

void ___Z15_HUDUIDrawFrameP12HUDUIOverlayPU27objcproto16MTLCommandBuffer11objc_objectPKPU21objcproto10MTLTexture11objc_objectiS4_13MTLLoadActionbmbU13block_pointerFvPU34objcproto23MTLRenderCommandEncoder11objc_objectEU13block_pointerFvvE_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 status];
  (*(*(a1 + 32) + 16))();
}

uint64_t HUDUIBeginFrame(os_unfair_lock_s **a1)
{
  if (!a1)
  {
    return 0;
  }

  os_unfair_lock_lock(a1 + 1464);
  v2 = *(a1 + 5861);
  if ((v2 & 1) == 0)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v3 = a1[728];
    v4 = [(os_unfair_lock_s *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v4)
    {
      v5 = *v23;
      do
      {
        v6 = 0;
        do
        {
          if (*v23 != v5)
          {
            objc_enumerationMutation(v3);
          }

          [*(*(&v22 + 1) + 8 * v6) waitUntilCompleted];
          v6 = v6 + 1;
        }

        while (v4 != v6);
        v4 = [(os_unfair_lock_s *)v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v4);
    }

    [(os_unfair_lock_s *)a1[728] removeAllObjects];
    v7 = a1[4];
    *(a1 + 5860) = 0;
    v8 = a1[5];
    if (v7 != v8)
    {
      do
      {
        v9 = *a1;
        v10 = *&v7[24]._os_unfair_lock_opaque;
        os_unfair_lock_lock(*a1 + 1548);
        v11 = *(v9 + 6136);
        v12 = *(v9 + 6144) - v11;
        if (v12)
        {
          v13 = v12 >> 4;
          if (v13 <= 1)
          {
            v13 = 1;
          }

          v14 = (v11 + 8);
          do
          {
            if (*(v14 - 1) == v10)
            {
              *v14 = 0;
            }

            v14 += 16;
            --v13;
          }

          while (v13);
        }

        os_unfair_lock_unlock((v9 + 6192));
        v7 += 34;
      }

      while (v7 != v8);
      v7 = a1[4];
      v8 = a1[5];
    }

    while (v8 != v7)
    {
      v8 -= 34;
      std::allocator<HUDUIWindow>::destroy[abi:ne200100]((a1 + 4), v8);
    }

    a1[5] = v7;
    v20 = HUDUIInvalidString;
    v21 = qword_784F8;
    v15 = a1 + 1461;
    v16 = vld1_dup_f32(v15);
    v17 = vdiv_f32(vcvt_f32_u32(a1[729]), v16);
    HUDUIFrameBeginWindow(a1, &v20, 0, 0, 0.0, 0.0, v17.f32[0], v17.f32[1], 0.0);
  }

  v18 = v2 ^ 1u;
  os_unfair_lock_unlock(a1 + 1464);
  return v18;
}

uint64_t HUDUIFrameBeginWindow(uint64_t result, __int128 *a2, uint64_t a3, int a4, float a5, float a6, float a7, float a8, float a9)
{
  if (result)
  {
    v9 = result;
    if (*(result + 5860))
    {
      return 0;
    }

    else
    {
      v12 = a3;
      result = HUDUIOverlayGetVertexBuffer(*result);
      if (result)
      {
        v18 = result;
        v53 = 0u;
        memset(v54, 0, 24);
        *__p = 0u;
        v52 = 0u;
        memset(v50, 0, sizeof(v50));
        v19 = *(v9 + 40);
        if (v19 >= *(v9 + 48))
        {
          v22 = std::vector<HUDUIWindow>::__emplace_back_slow_path<HUDUIWindow>((v9 + 32), v50);
          v20 = *(&v53 + 1);
        }

        else
        {
          v20 = 0;
          *(v19 + 64) = 0uLL;
          *(v19 + 80) = 0uLL;
          *(v19 + 32) = 0uLL;
          *(v19 + 48) = 0uLL;
          *v19 = 0uLL;
          *(v19 + 16) = 0uLL;
          __p[1] = 0;
          v52 = 0uLL;
          *(&v53 + 1) = 0;
          *(v19 + 96) = 0;
          *(v19 + 104) = 0;
          v21 = v54[0];
          *(v19 + 127) = *(v54 + 15);
          *(v19 + 112) = v21;
          v22 = v19 + 136;
        }

        *(v9 + 40) = v22;

        if (__p[1])
        {
          *&v52 = __p[1];
          operator delete(__p[1]);
        }

        v24 = *(v9 + 32);
        v25 = *(v9 + 40);
        *(v25 - 136) = a5;
        *(v25 - 88) = -252645135 * ((v25 - v24) >> 3) - 1;
        *(v25 - 96) = v9;
        *(v25 - 132) = a6;
        *(v25 - 128) = a7;
        *(v25 - 124) = a8;
        v26 = *a2;
        *(v25 - 104) = *(a2 + 2);
        *(v25 - 120) = v26;
        *(v25 - 84) = 0;
        *(v25 - 8) = a4;
        *(v25 - 76) = v12;
        *(v25 - 40) = v18;
        v27 = *(v9 + 5852);
        *(v25 - 68) = v27;
        *(v25 - 72) = a9;
        if (a4)
        {
          *&v23 = a9;
          HUDUIVertexBufferAddRoundedRectangle(*v9, v18, v12, a5, a6, a7, a8, v23, *(v9 + 5844));
          v27 = *(v9 + 5852);
        }

        v28 = *(v9 + 40);
        if (v27 == -1)
        {
          if (*(v9 + 32) == v28)
          {
            v32 = 0;
          }

          else
          {
            v32 = *(v9 + 32);
          }
        }

        else
        {
          v29 = *(v9 + 32);
          v30 = 0xF0F0F0F0F0F0F0F1 * ((v28 - v29) >> 3);
          v31 = (v29 + 136 * v27);
          if (v30 <= v27)
          {
            v32 = 0;
          }

          else
          {
            v32 = v31;
          }
        }

        if (v32 != (v25 - 136))
        {
          v34 = v32[10];
          v33 = v32[11];
          if (v34 >= v33)
          {
            v36 = v32[9];
            v37 = v34 - v36;
            v38 = (v34 - v36) >> 2;
            v39 = v38 + 1;
            if ((v38 + 1) >> 62)
            {
              std::vector<HUDGPUTimeTrackerEncoder>::__throw_length_error[abi:ne200100]();
            }

            v40 = v33 - v36;
            if (v40 >> 1 > v39)
            {
              v39 = v40 >> 1;
            }

            v41 = v40 >= 0x7FFFFFFFFFFFFFFCLL;
            v42 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v41)
            {
              v42 = v39;
            }

            if (v42)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&v32[9], v42);
            }

            v43 = (v34 - v36) >> 2;
            v44 = (4 * v38);
            v45 = (4 * v38 - 4 * v43);
            *v44 = *(v25 - 88);
            v35 = v44 + 1;
            memcpy(v45, v36, v37);
            v46 = v32[9];
            v32[9] = v45;
            v32[10] = v35;
            v32[11] = 0;
            if (v46)
            {
              operator delete(v46);
            }
          }

          else
          {
            *v34 = *(v25 - 88);
            v35 = v34 + 4;
          }

          v32[10] = v35;
          v47 = vadd_f32(*v32, *(v25 - 136));
          *(v25 - 136) = v47;
          v48 = *(v25 - 128);
          if (v48 >= (v32[1].f32[0] - v47.f32[0]))
          {
            v48 = v32[1].f32[0] - v47.f32[0];
          }

          *(v25 - 128) = v48;
          v49 = 4295000000.0;
          if (a8 < 4295000000.0)
          {
            v49 = *(v25 - 124);
            if (v49 >= (v32[1].f32[1] - v47.f32[1]))
            {
              v49 = v32[1].f32[1] - v47.f32[1];
            }
          }

          *(v25 - 124) = v49;
        }

        *(v9 + 5852) = *(v25 - 88);
        return 1;
      }
    }
  }

  return result;
}

void HUDUIFlushFrame(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  if (a1)
  {
    os_unfair_lock_lock((a1 + 5856));
    if ((*(a1 + 5860) & 1) == 0 && (*(a1 + 5861) & 1) == 0 && *(a1 + 40) != *(a1 + 32))
    {
      v5 = objc_autoreleasePoolPush();
      v16 = **a1;
      *(a1 + 5861) = 1;
      v7 = *a1;
      v6 = *(a1 + 8);
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = __HUDUIFlushFrame_block_invoke;
      v15[3] = &__block_descriptor_40_e35_v16__0___MTLRenderCommandEncoder__8l;
      v15[4] = a1;
      v12[0] = _NSConcreteStackBlock;
      v12[1] = 3221225472;
      v12[2] = __HUDUIFlushFrame_block_invoke_2;
      v12[3] = &unk_69170;
      v14 = a1;
      v13 = v4;
      v9 = _HUDUIDrawFrame(v7, 0, &v16, 1, v6, 2, 0, v8, 1, v15, v12);
      if (!*(a1 + 5824))
      {
        v10 = objc_opt_new();
        v11 = *(a1 + 5824);
        *(a1 + 5824) = v10;
      }

      if (v9)
      {
        [*(a1 + 5824) addObject:v9];
      }

      objc_autoreleasePoolPop(v5);
    }

    os_unfair_lock_unlock((a1 + 5856));
  }
}

void sub_2168C(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v1 + v3));

  _Unwind_Resume(a1);
}

void __HUDUIFlushFrame_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  memset(__p, 0, sizeof(__p));
  std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(__p, 1uLL);
}

void sub_21964(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void HUDUIDownloadTexture(uint64_t a1, void *a2, void *a3, void *a4)
{
  v18 = a2;
  v7 = a3;
  v8 = a4;
  v9 = +[MTLRenderPassDescriptor renderPassDescriptor];
  v10 = [v9 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript:0];
  [v11 setTexture:v8];

  v12 = [v9 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript:0];
  [v13 setLoadAction:2];

  v14 = [v9 colorAttachments];
  v15 = [v14 objectAtIndexedSubscript:0];
  [v15 setStoreAction:1];

  v16 = [v18 renderCommandEncoderWithDescriptor:v9];
  v17 = _HUDUIDownloadPipelineForPixelFormat(a1, [v8 pixelFormat]);
  if (v17)
  {
    MTLFailureTypeGetErrorModeType();
    MTLFailureTypeSetErrorModeType();
    [v16 setRenderPipelineState:v17];
    [v16 setFragmentTexture:v7 atIndex:0];
    [v16 drawPrimitives:3 vertexStart:0 vertexCount:3];
    [v16 endEncoding];
    MTLFailureTypeSetErrorModeType();
  }
}

BOOL HUDUIDrawFrames(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, uint64_t a6, void *a7, uint64_t a8, void *a9)
{
  LODWORD(v12) = a5;
  v16 = a2;
  v17 = a3;
  v18 = a7;
  v19 = a9;
  v20 = 0;
  if (v12 && a1)
  {
    v28 = a8;
    v21 = [*(a1 + 6168) commandBuffer];
    v23 = v21;
    if (v18)
    {
      v21 = [v21 encodeWaitForEvent:v18 value:v28];
    }

    GlobalInstance = HUDGPUTimeTrackerGetGlobalInstance(v21, v22);
    HUDGPUTimeTrackerMarkCommandBuffer(GlobalInstance, v23, 1);
    [v23 setLabel:@"libMTLHud_BlitToDrawable"];
    if (v17)
    {
      HUDUIDownloadTexture(a1, v23, v16, v17);
    }

    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = __HUDUIDrawFrames_block_invoke;
    v31[3] = &__block_descriptor_52_e35_v16__0___MTLRenderCommandEncoder__8l;
    v32 = v12;
    v31[4] = a4;
    v31[5] = a6;
    v26 = _HUDUIDrawFrame(a1, v23, 0, 0, v16, 1, 0, v25, 0, v31, &__block_literal_global_5);
    v20 = v23 != 0;
    if (v23)
    {
      v29[0] = _NSConcreteStackBlock;
      v29[1] = 3221225472;
      v29[2] = __HUDUIDrawFrames_block_invoke_2;
      v29[3] = &unk_69128;
      v30 = v19;
      [v23 addCompletedHandler:v29];
      if (v18)
      {
        [v23 encodeSignalEvent:v18 value:v28 + 1];
      }

      if (([v23 commitAndWaitUntilSubmitted] & 1) == 0)
      {
        [v23 waitUntilScheduled];
      }

      v12 = v12;
      do
      {
        if (*a4)
        {
          [*(*a4 + 5824) addObject:v23];
        }

        a4 += 28;
        --v12;
      }

      while (v12);
    }
  }

  return v20;
}

void __HUDUIDrawFrames_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  if (v4)
  {
    v5 = 0;
    for (i = 0; i < v4; ++i)
    {
      v7 = *(a1 + 32);
      v8 = *(v7 + v5);
      if (v8 && *(v8 + 8))
      {
        os_unfair_lock_lock((v8 + 5856));
        v9 = *(v7 + v5 + 12);
        v10 = *(v7 + v5 + 16);
        v12 = *(v7 + v5 + 20);
        v11 = *(v7 + v5 + 24);
        v13 = *(v8 + 5844);
        v14 = *(v8 + 5848);
        v15 = [*(v8 + 8) width];
        v16 = *(v8 + 5844);
        v17 = *(v8 + 5848);
        v18 = [*(v8 + 8) height];
        v19 = ((*(v7 + v5 + 8) * 255.0) << 24) | 0xFFFFFF;
        *v37 = v9;
        *&v37[1] = v10;
        v38 = 0;
        v39 = v19;
        v40 = 0;
        v41 = v9 + v12;
        v42 = v10;
        v43 = 1065353216;
        v44 = v19;
        v45 = 0;
        v46 = v9 + v12;
        v47 = v10 + v11;
        v48 = 1065353216;
        v49 = (((v11 * v16) / v17) / v18) / (((v12 * v13) / v14) / v15);
        v50 = v19;
        v51 = 0;
        v52 = v9;
        v53 = v10;
        v54 = 0;
        v55 = v19;
        v56 = 0;
        v57 = v9 + v12;
        v58 = v10 + v11;
        v59 = 1065353216;
        v60 = v49;
        v61 = v19;
        v62 = 0;
        v63 = v9;
        v64 = v10 + v11;
        v65 = 0;
        v66 = v49;
        v67 = v19;
        v68 = 0;
        [v3 setFragmentTexture:*(v8 + 8) atIndex:0];
        [v3 setVertexBytes:v37 length:144 atIndex:0];
        v20 = [v3 drawPrimitives:3 vertexStart:0 vertexCount:6];
        if (*(HUDGetGlobalConfig(v20, v21) + 24) == 1)
        {
          v23 = HUDSignpostGetOSLog(0, v22);
          if (os_signpost_enabled(v23) && os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            v24 = *(a1 + 40);
            *buf = 134219264;
            v26 = v24;
            v27 = 2048;
            v28 = v8;
            v29 = 2048;
            v30 = v9;
            v31 = 2048;
            v32 = v10;
            v33 = 2048;
            v34 = v12;
            v35 = 2048;
            v36 = v11;
            _os_log_impl(&dword_0, v23, OS_LOG_TYPE_DEFAULT, "[libMTLHud] Rendering frame %zu, opaque = %llx, rect = %f,%f,%f,%f", buf, 0x3Eu);
          }
        }

        os_unfair_lock_unlock((v8 + 5856));
        v4 = *(a1 + 48);
      }

      v5 += 28;
    }
  }
}

void sub_22128(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock((v2 + v3));

  _Unwind_Resume(a1);
}

void __HUDUIDrawFrames_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 status];
  (*(*(a1 + 32) + 16))();
}

HUDUIFrame *HUDUIReleaseFrame(HUDUIFrame *result)
{
  if (result)
  {
    result = *result;
    if (result)
    {
      if (*result)
      {
        _HUDDeleteFrame(result);
      }
    }
  }

  return result;
}

uint64_t HUDUIOverlayGetVertexBuffer(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 6192));
  v2 = *(a1 + 6136);
  v3 = *(a1 + 6144) - v2;
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  v4 = v3 >> 4;
  if (v4 <= 1)
  {
    v4 = 1;
  }

  v5 = (v2 + 8);
  while ((*v5 & 1) != 0)
  {
    v5 += 16;
    if (!--v4)
    {
      goto LABEL_7;
    }
  }

  v6 = *(v5 - 1);
  *(v6 + 16) = 0;
  *v5 = 1;
  os_unfair_lock_unlock((a1 + 6192));
  return v6;
}

uint64_t HUDUIVertexBufferAddRoundedRectangle(uint64_t a1, int32x2_t *a2, int a3, float a4, float a5, float a6, float a7, double a8, float a9)
{
  if (!*&a2[1] || !*a2)
  {
    return 0;
  }

  v12 = a2[2].u32[0] + 100;
  v13 = a2[3].u32[0];
  if (v12 >= v13)
  {
    LODWORD(v14) = a2[3].i32[1];
  }

  else
  {
    v14 = a2[3].u32[1];
    if (a2[2].u32[1] + 294 < v14)
    {
      goto LABEL_8;
    }
  }

  HUDSimpleVertexBufferChunkRelocate(a1, a2, 2 * v13, 2 * v14);
  v13 = a2[3].u32[0];
  v12 = a2[2].u32[0] + 100;
LABEL_8:
  if (v12 >= v13 || a2[2].u32[1] + 294 >= a2[3].u32[1])
  {
    return 0;
  }

  v15 = [*a2 contents] + 24 * a2[2].u32[0];
  v16 = [*&a2[1] contents];
  v17 = a2[2].u32[1];
  bzero(v15, 0x960uLL);
  v18 = a2[2];
  a2[2] = vadd_s32(v18, 0x12600000064);
  v19 = *(a1 + 5500);
  if (_HUDUIVertexBufferAddRoundedRectangle(HUDUIVertex *,unsigned short *,HUDUIRect,unsigned int,float,float,float,unsigned int,float)::onceToken != -1)
  {
    v53 = *(a1 + 5500);
    v52 = v18.i32[0];
    HUDUIVertexBufferAddRoundedRectangle();
    v18.i32[0] = v52;
    v19 = v53;
  }

  v20 = 0;
  v21 = vdup_lane_s32(*&a8, 0);
  v22 = vsub_f32(vmul_n_f32(vadd_f32(__PAIR64__(LODWORD(a5), LODWORD(a4)), __PAIR64__(LODWORD(a7), LODWORD(a6))), a9), v21);
  v23 = vbsl_s8(vcgt_f32(__PAIR64__(LODWORD(a7), LODWORD(a6)), v21), v21, __PAIR64__(LODWORD(a7), LODWORD(a6)));
  do
  {
    v60[v20] = vmla_f32(v22, v23, _HUDUIVertexBufferAddRoundedRectangle(HUDUIVertex *,unsigned short *,HUDUIRect,unsigned int,float,float,float,unsigned int,float)::sCircle[v20]);
    ++v20;
  }

  while (v20 != 25);
  v24 = (a4 * a9) + *&a8;
  _S3 = v23.i32[1];
  v26 = &qword_761B0;
  for (i = 25; i != 50; ++i)
  {
    v28 = *v26++;
    _V6.S[1] = HIDWORD(v28);
    *&v30 = v24 + (*&v28 * v23.f32[0]);
    __asm { FMLA            S16, S3, V6.S[1] }

    HIDWORD(v30) = _S16;
    v60[i] = v30;
  }

  v36 = &qword_76270;
  do
  {
    v37 = *v36++;
    _V6.S[1] = HIDWORD(v37);
    *&v39 = v24 + (*&v37 * v23.f32[0]);
    __asm { FMLA            S16, S3, V6.S[1] }

    HIDWORD(v39) = _S16;
    v60[i++] = v39;
  }

  while (i != 75);
  for (j = 75; j != 100; ++j)
  {
    v42 = j - 3;
    if ((j - 3) >= 0x60)
    {
      v42 = j - 99;
    }

    _D4 = _HUDUIVertexBufferAddRoundedRectangle(HUDUIVertex *,unsigned short *,HUDUIRect,unsigned int,float,float,float,unsigned int,float)::sCircle[v42];
    *&v44 = v22.f32[0] + (_D4.f32[0] * v23.f32[0]);
    __asm { FMLA            S7, S3, V4.S[1] }

    HIDWORD(v44) = _S7;
    v60[j] = v44;
  }

  for (k = 0; k != 100; ++k)
  {
    *v15 = v60[k];
    v15[1] = v19;
    *(v15 + 4) = a3;
    v15 += 3;
  }

  v47 = 0;
  v48 = v18.i32[0] + 2;
  v49 = v18.i32[0] + 65537;
  do
  {
    v50 = &v16[2 * v17 + v47];
    *v50 = v18.i16[0];
    *(v50 + 1) = v49;
    *(v50 + 2) = v48;
    v47 += 6;
    ++v48;
    ++v49;
  }

  while (v47 != 588);
  return 1;
}

void *HUDUIFrameEndWindow(void *result)
{
  if (result)
  {
    v1 = result;
    if ((*(result + 5860) & 1) == 0)
    {
      v2 = *(result + 1463);
      if (v2 != -1)
      {
        v3 = result[4];
        v4 = 0xF0F0F0F0F0F0F0F1 * ((result[5] - v3) >> 3);
        v5 = v3 + 136 * v2;
        if (v4 <= v2)
        {
          v6 = 0;
        }

        else
        {
          v6 = v5;
        }

        if (*(v6 + 12) >= 4295000000.0 && *(v6 + 128) == 1)
        {
          *(v6 + 12) = HUDUIWindowCurrentHeight(result);
          v7 = [**(v6 + 96) contents];
          result = [*(*(v6 + 96) + 8) contents];
          v9 = *v6;
          v8 = *(v6 + 8);
          v10 = *(v6 + 60);
          v11.i32[0] = *(v6 + 64);
          v12 = *(*v1 + 5500);
          v13 = v1[1461];
          if (_HUDUIVertexBufferAddRoundedRectangle(HUDUIVertex *,unsigned short *,HUDUIRect,unsigned int,float,float,float,unsigned int,float)::onceToken != -1)
          {
            v37 = result;
            v35 = *(v6 + 60);
            v36 = *(*v1 + 5500);
            v34 = *(v6 + 8);
            v32 = v11;
            v33 = *v6;
            v31 = v1[1461];
            HUDUIVertexBufferAddRoundedRectangle();
            v13 = v31;
            v11 = v32;
            v9 = v33;
            v8 = v34;
            v12 = v36;
            v10 = v35;
            result = v37;
          }

          v14 = 0;
          v15 = vdup_lane_s32(v11, 0);
          v16 = vsub_f32(vmul_n_f32(vadd_f32(v9, v8), v13), v15);
          v17 = vbsl_s8(vcgt_f32(v8, v15), v15, v8);
          do
          {
            v38[v14] = vmla_f32(v16, v17, _HUDUIVertexBufferAddRoundedRectangle(HUDUIVertex *,unsigned short *,HUDUIRect,unsigned int,float,float,float,unsigned int,float)::sCircle[v14]);
            ++v14;
          }

          while (v14 != 25);
          v18.i32[1] = v16.i32[1];
          v19 = &qword_761B0;
          for (i = 25; i != 50; ++i)
          {
            v21 = *v19++;
            v18.f32[0] = *v11.i32 + (v13 * v9.f32[0]);
            v38[i] = vmla_f32(v18, v17, v21);
          }

          v22 = *v11.i32 + vmuls_lane_f32(v13, v9, 1);
          v23.f32[1] = v22;
          v24 = &qword_76270;
          do
          {
            v25 = *v24++;
            v23.f32[0] = *v11.i32 + (v13 * v9.f32[0]);
            v38[i++] = vmla_f32(v23, v17, v25);
          }

          while (i != 75);
          v16.f32[1] = v22;
          for (j = 75; j != 100; ++j)
          {
            v27 = j - 3;
            if ((j - 3) >= 0x60)
            {
              v27 = j - 99;
            }

            v38[j] = vmla_f32(v16, v17, _HUDUIVertexBufferAddRoundedRectangle(HUDUIVertex *,unsigned short *,HUDUIRect,unsigned int,float,float,float,unsigned int,float)::sCircle[v27]);
          }

          for (k = 0; k != 100; ++k)
          {
            *v7 = v38[k];
            v7[1] = v12;
            v7[2].i32[0] = v10;
            v7 += 3;
          }

          for (m = 2; m != 100; ++m)
          {
            *result = 0;
            *(result + 1) = m - 1;
            *(result + 2) = m;
            result = (result + 6);
          }

          v4 = 0xF0F0F0F0F0F0F0F1 * ((*(v1 + 5) - *(v1 + 4)) >> 3);
        }

        if (v4 <= *(v6 + 68))
        {
          v30 = 0;
        }

        else
        {
          v30 = *(v6 + 68);
        }

        *(v1 + 1463) = v30;
      }
    }
  }

  return result;
}

float HUDUIWindowCurrentHeight(uint64_t a1)
{
  result = 0.0;
  if (a1)
  {
    v2 = *(a1 + 5852);
    v3 = *(a1 + 40);
    if (v2 == -1)
    {
      v5 = *(a1 + 32);
      if (v5 == v3)
      {
        return result;
      }
    }

    else
    {
      v4 = *(a1 + 32);
      if (0xF0F0F0F0F0F0F0F1 * ((v3 - v4) >> 3) <= v2)
      {
        return result;
      }

      v5 = v4 + 136 * v2;
    }

    if (v5)
    {
      return fminf(ceilf(*(v5 + 52) + *(v5 + 56)), 2048.0);
    }
  }

  return result;
}

uint64_t HUDUIWindowAddLabelAtPoint(uint64_t result, uint64_t a2, uint64_t a3, __n128 a4, __n128 a5, double a6, double a7)
{
  if (!result)
  {
    return result;
  }

  v7 = a3;
  v9 = *(result + 5852);
  v10 = *(result + 40);
  if (v9 != -1)
  {
    v11 = *(result + 32);
    if (0xF0F0F0F0F0F0F0F1 * ((v10 - v11) >> 3) > v9)
    {
      v12 = v11 + 136 * v9;
      goto LABEL_6;
    }

    return 0;
  }

  v12 = *(result + 32);
  if (v12 == v10)
  {
    return 0;
  }

LABEL_6:
  if (!v12)
  {
    return 0;
  }

  v13 = *(a2 + 8);
  if (v13)
  {
    v14 = *(v12 + 40);
    *&a7 = *(a2 + 16) / *(v14 + 5848);
    HUDUIVertexBufferAddString(*v14, *(v12 + 96), v13, v7, a4.n128_f32[0], a5.n128_f32[0], *(v14 + 5844), *&a7);
    v15 = *(v12 + 56);
    v16 = *(*(v12 + 40) + 5844);
    if (v15 < (*(*(a2 + 8) + 52) * v16))
    {
      v15 = *(*(a2 + 8) + 52) * v16;
    }

    *(v12 + 56) = v15;
  }

  return 1;
}

uint64_t HUDUIVertexBufferAddString(uint64_t a1, uint64_t a2, const void **a3, __int32 a4, float32_t a5, float32_t a6, float a7, int32x2_t a8)
{
  v12 = a3[1];
  v13 = *a3;
  v14 = 0xAAAAAAAAAAAAAAABLL * ((v12 - *a3) >> 3);
  v16 = a3[3];
  v15 = a3[4];
  v46 = 0;
  v47 = 0;
  v48 = 0;
  std::vector<HUDUIVertex>::__init_with_size[abi:ne200100]<HUDUIVertex*,HUDUIVertex*>(&v46, v13, v12, v14);
  __p = 0;
  v44 = 0;
  v45 = 0;
  std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&__p, a3[3], a3[4], (a3[4] - a3[3]) >> 1);
  v17 = v15 - v16;
  v18 = v46;
  v19 = __p;
  v20 = *(a2 + 16);
  v21.f32[0] = a5;
  if (v14)
  {
    v22 = vdup_lane_s32(a8, 0);
    v21.f32[1] = a6;
    v23 = v14;
    v24 = v46;
    do
    {
      *v24 = vmul_n_f32(vadd_f32(vdiv_f32(*v24, v22), v21), a7);
      v24[2].i32[0] = a4;
      v24 += 3;
      --v23;
    }

    while (v23);
  }

  v25 = (v17 >> 1);
  if ((v17 >> 1))
  {
    v26 = (v17 >> 1);
    v27 = v19;
    do
    {
      *v27++ += v20;
      --v26;
    }

    while (v26);
  }

  if (!*(a2 + 8) || !*a2)
  {
    goto LABEL_18;
  }

  v28 = v14 + v20;
  v29 = *(a2 + 24);
  if (v28 >= v29)
  {
    LODWORD(v30) = *(a2 + 28);
  }

  else
  {
    v30 = *(a2 + 28);
    if (v25 + *(a2 + 20) < v30)
    {
      goto LABEL_14;
    }
  }

  HUDSimpleVertexBufferChunkRelocate(a1, a2, 2 * v29, 2 * v30);
  v29 = *(a2 + 24);
  v28 = v14 + *(a2 + 16);
LABEL_14:
  if (v28 >= v29 || v25 + *(a2 + 20) >= *(a2 + 28))
  {
LABEL_18:
    v36 = 0;
    goto LABEL_19;
  }

  v31 = [*a2 contents];
  v32 = *(a2 + 16);
  v33 = [*(a2 + 8) contents];
  v34 = &v31[24 * v32];
  v35 = *(a2 + 20);
  if (v18)
  {
    memcpy(v34, v18, 24 * v14);
  }

  else if (v14)
  {
    bzero(v34, 24 * v14);
  }

  if (v19)
  {
    memcpy(&v33[2 * v35], v19, 2 * v25);
  }

  else if ((v17 >> 1))
  {
    bzero(v34, 2 * v25);
  }

  v38 = *(a2 + 20) + (v17 >> 1);
  *(a2 + 16) += v14;
  *(a2 + 20) = v38;
  v36 = 1;
LABEL_19:
  if (__p)
  {
    v44 = __p;
    operator delete(__p);
  }

  if (v46)
  {
    v47 = v46;
    operator delete(v46);
  }

  return v36;
}

void sub_22D4C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, uint64_t a19, void *a20, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a20)
  {
    operator delete(a20);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HUDUIWindowGetLabelSize(uint64_t result, uint64_t a2, float *a3, float *a4)
{
  if (!result)
  {
    return result;
  }

  v4 = *(result + 5852);
  v5 = *(result + 40);
  if (v4 == -1)
  {
    v7 = *(result + 32);
    if (v7 != v5)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v6 = *(result + 32);
  if (0xF0F0F0F0F0F0F0F1 * ((v5 - v6) >> 3) <= v4)
  {
    return 0;
  }

  v7 = v6 + 136 * v4;
LABEL_6:
  if (!v7)
  {
    return 0;
  }

  v8 = *(a2 + 8);
  if (!v8)
  {
    return 0;
  }

  v9 = *(*(v7 + 40) + 5848);
  if (a3)
  {
    *a3 = ceilf(v9 * *(v8 + 48));
  }

  if (a4)
  {
    *a4 = ceilf(v9 * *(v8 + 52));
  }

  return 1;
}

uint64_t HUDUIWindowAddLabelInRect(uint64_t result, uint64_t a2, __int32 a3, int a4, int a5, float32_t a6, float32_t a7, float a8, double a9)
{
  if (!result)
  {
    return result;
  }

  v9 = *&a9;
  v11 = *(result + 5852);
  v12 = *(result + 40);
  if (v11 == -1)
  {
    v14 = *(result + 32);
    if (v14 != v12)
    {
      goto LABEL_6;
    }

    return 0;
  }

  v13 = *(result + 32);
  if (0xF0F0F0F0F0F0F0F1 * ((v12 - v13) >> 3) <= v11)
  {
    return 0;
  }

  v14 = v13 + 136 * v11;
LABEL_6:
  if (!v14)
  {
    return 0;
  }

  v15 = *(a2 + 8);
  if (!v15)
  {
    return 0;
  }

  if (a4 == 1)
  {
    HIDWORD(a9) = 0;
    a6 = a6 + (fmaxf(a8 - *(v15 + 48), 0.0) * 0.5);
  }

  else if (a4 == 2)
  {
    a6 = (a6 + a8) - *(v15 + 48);
  }

  if (a5 == 1)
  {
    HIDWORD(a9) = 0;
    a7 = a7 + (fmaxf(*&a9 - *(v15 + 52), 0.0) * 0.5);
  }

  else if (a5 == 2)
  {
    a7 = (a7 + *&a9) - *(v15 + 52);
  }

  v16 = *(v14 + 40);
  *&a9 = *(a2 + 16) / *(v16 + 5848);
  HUDUIVertexBufferAddString(*v16, *(v14 + 96), v15, a3, a6, a7, *(v16 + 5844), *&a9);
  v17 = *(v14 + 56);
  if (v17 < v9)
  {
    v17 = v9;
  }

  *(v14 + 56) = v17;
  return 1;
}

uint64_t HUDUIWindowAddSegmentedLabel(uint64_t result, uint64_t a2, unsigned int a3, float32_t a4, float32_t a5, float a6, double a7)
{
  if (!result)
  {
    return result;
  }

  v9 = *(result + 5852);
  v10 = *(result + 40);
  if (v9 != -1)
  {
    v11 = *(result + 32);
    if (0xF0F0F0F0F0F0F0F1 * ((v10 - v11) >> 3) > v9)
    {
      v12 = v11 + 136 * v9;
      goto LABEL_6;
    }

    return 0;
  }

  v12 = *(result + 32);
  if (v12 == v10)
  {
    return 0;
  }

LABEL_6:
  if (!v12)
  {
    return 0;
  }

  if (a3)
  {
    v13 = 0;
    v14 = 0;
    v15 = *(*(v12 + 40) + 5848);
    v16 = a3;
    v17 = a2 + 8;
    v18 = 0.0;
    do
    {
      if (*v17)
      {
        v18 = v18 + (*(*v17 + 48) * v15);
        ++v14;
        if (v18 >= a6)
        {
          break;
        }
      }

      else
      {
        ++v13;
        ++v14;
      }

      v17 += 32;
      --v16;
    }

    while (v16);
    v19 = a6 - v18;
    v20 = a6 <= v18;
    v21 = 0.0;
    if (!v20)
    {
      v21 = v19;
    }

    if (v14)
    {
      v22 = v21 / v13;
      v23 = v14;
      v24 = a2 + 16;
      do
      {
        v25 = *(v24 - 8);
        if (v25)
        {
          *&a7 = *v24 / v15;
          result = HUDUIVertexBufferAddString(**(v12 + 40), *(v12 + 96), *(v24 - 8), *(v24 + 8), a4, a5, *(*(v12 + 40) + 5844), *&a7);
          if (!result)
          {
            return result;
          }

          a4 = a4 + (*(v25 + 48) * v15);
          v26 = *(v12 + 56);
          if (v26 < (v15 * *(v25 + 52)))
          {
            v26 = v15 * *(v25 + 52);
          }

          *(v12 + 56) = v26;
        }

        else
        {
          a4 = v22 + a4;
        }

        v24 += 32;
        --v23;
      }

      while (v23);
    }
  }

  return 1;
}

uint64_t HUDUIWindowAddGraph(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, float a10, float a11, float a12, __n128 a13, __n128 a14, __n128 a15, float a16, float a17, float a18, float a19)
{
  if (!result)
  {
    return result;
  }

  v19 = *(result + 5852);
  v20 = *(result + 40);
  if (v19 != -1)
  {
    v21 = *(result + 32);
    if (0xF0F0F0F0F0F0F0F1 * ((v20 - v21) >> 3) > v19)
    {
      v22 = v21 + 136 * v19;
      goto LABEL_6;
    }

    return 0;
  }

  v22 = *(result + 32);
  if (v22 == v20)
  {
    return 0;
  }

LABEL_6:
  if (!v22)
  {
    return 0;
  }

  result = HUDUIVertexBufferAddGraph(**(v22 + 40), *(v22 + 96), a2, a3, a4, a5, a6, a7, a16, a17, a18, a19, a8, a9, a10, a11, a12, *(*(v22 + 40) + 5844));
  if (result)
  {
    v23 = *(v22 + 56);
    if (v23 < a19)
    {
      v23 = a19;
    }

    *(v22 + 56) = v23;
    return 1;
  }

  return result;
}

uint64_t HUDUIVertexBufferAddGraph(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, char a7, int a8, float a9, float a10, float a11, float a12, double a13, double a14, float a15, float a16, float a17, float a18)
{
  v18 = a8;
  if (!a4 && (a8 & 1) != 0)
  {
    return 1;
  }

  v30 = (a11 / 40.0);
  v197 = a4 - 1;
  if (a8)
  {
    v31 = a4 - 1;
  }

  else
  {
    v31 = v30 + 2 * a4 + 1;
  }

  v32 = 6 * v31;
  v33 = *(a2 + 16);
  std::vector<HUDUIVertex>::vector[abi:ne200100](v204, (4 * v31));
  std::vector<unsigned short>::vector[abi:ne200100](__p, v32);
  *v34.i32 = a18;
  v35 = v204[0];
  v36.f32[0] = a9 + 2.0;
  v36.f32[1] = a10 + 2.0;
  v37 = __p[0];
  __asm { FMOV            V4.2S, #-4.0 }

  v42 = vadd_f32(vadd_f32(__PAIR64__(LODWORD(a10), LODWORD(a9)), __PAIR64__(LODWORD(a12), LODWORD(a11))), _D4);
  v43 = v42.f32[0] - (a9 + 2.0);
  v44 = v43;
  if (v43 >= a4)
  {
    v44 = a4;
  }

  if (v44 <= 1)
  {
    v44 = 1;
  }

  v45 = v44 - 1;
  if (v18)
  {
    v46 = 0;
  }

  else
  {
    v47 = v30 - 1;
    if (v30 == 1)
    {
      v46 = 3;
    }

    else
    {
      v48 = v43 / v30;
      v49 = *(a1 + 5500);
      v50 = vdup_lane_s32(v34, 0);
      v51 = *(a1 + 5504);
      v52 = vmul_n_f32(0x3F0000003F000000, a18);
      v53 = a9 + 2.0;
      do
      {
        v53 = v48 + v53;
        v54 = vmla_f32(v52, v50, __PAIR64__(a10 + 2.0, LODWORD(v53)));
        v55 = vmla_f32(v52, v50, __PAIR64__(v42.u32[1], LODWORD(v53)));
        v56 = vsub_f32(v55, v54);
        v57 = vmul_f32(v56, v56);
        v57.i32[0] = vadd_f32(v57, vdup_lane_s32(v57, 1)).u32[0];
        v58 = vrsqrte_f32(v57.u32[0]);
        v59 = vmul_f32(v58, vrsqrts_f32(v57.u32[0], vmul_f32(v58, v58)));
        v35[2] = v49;
        v35[3] = v51;
        *(v35 + 2) = 4286611584;
        v35[8] = v49;
        v35[9] = v51;
        *(v35 + 5) = 4286611584;
        v60 = vmul_n_f32(v56, vmul_f32(v59, vrsqrts_f32(v57.u32[0], vmul_f32(v59, v59))).f32[0]);
        v35[14] = v49;
        v35[15] = v51;
        *(v35 + 8) = 4286611584;
        v35[20] = v49;
        v35[21] = v51;
        *v35 = v54.f32[0] + v60.f32[1];
        *(v35 + 1) = v54.f32[1] - v60.f32[0];
        *(v35 + 6) = v55.f32[0] + v60.f32[1];
        *(v35 + 7) = v55.f32[1] - v60.f32[0];
        *(v35 + 11) = 4286611584;
        *v37 = v33;
        *(v37 + 1) = v33 + 1;
        *(v35 + 12) = v55.f32[0] - v60.f32[1];
        *(v35 + 13) = v55.f32[1] + v60.f32[0];
        *(v37 + 2) = v33 + 2;
        *(v37 + 4) = v33 + 2;
        *(v35 + 18) = v54.f32[0] - v60.f32[1];
        *(v35 + 19) = v54.f32[1] + v60.f32[0];
        *(v37 + 3) = v33;
        *(v37 + 5) = v33 + 3;
        v33 += 4;
        v35 += 24;
        v37 += 12;
        --v47;
      }

      while (v47);
      v46 = v30 + 2;
    }

    v61 = *(a1 + 5500);
    v62 = vmul_n_f32(0x3F0000003F000000, a18);
    v63 = vmla_n_f32(v62, v36, a18);
    v64 = vmla_n_f32(v62, __PAIR64__(v42.u32[1], a9 + 2.0), a18);
    v65 = vsub_f32(v64, v63);
    v66 = vmul_f32(v65, v65);
    v67 = vadd_f32(v66, vdup_lane_s32(v66, 1)).u32[0];
    v66.i32[0] = *(a1 + 5504);
    v68 = vrsqrte_f32(v67);
    v69 = vmul_f32(v68, vrsqrts_f32(v67, vmul_f32(v68, v68)));
    v70 = vmul_n_f32(v65, vmul_f32(v69, vrsqrts_f32(v67, vmul_f32(v69, v69))).f32[0]);
    *v35 = v63.f32[0] + v70.f32[1];
    *(v35 + 1) = v63.f32[1] - v70.f32[0];
    v35[2] = v61;
    v35[3] = v66.i32[0];
    *(v35 + 2) = 0xFFFFFFFFLL;
    *(v35 + 6) = v64.f32[0] + v70.f32[1];
    *(v35 + 7) = v64.f32[1] - v70.f32[0];
    v35[8] = v61;
    v35[9] = v66.i32[0];
    *(v35 + 5) = 0xFFFFFFFFLL;
    *(v35 + 12) = v64.f32[0] - v70.f32[1];
    *(v35 + 13) = v64.f32[1] + v70.f32[0];
    v35[14] = v61;
    v35[15] = v66.i32[0];
    *(v35 + 8) = 0xFFFFFFFFLL;
    *(v35 + 18) = v63.f32[0] - v70.f32[1];
    *(v35 + 19) = v63.f32[1] + v70.f32[0];
    v35[20] = v61;
    v35[21] = v66.i32[0];
    *(v35 + 11) = 0xFFFFFFFFLL;
    *v37 = v33;
    v63.f32[0] = v42.f32[0] + -1.0;
    v70.i32[1] = v42.i32[1];
    v70.f32[0] = v42.f32[0] + -1.0;
    *(v37 + 1) = v33 + 1;
    v63.f32[1] = a10 + 2.0;
    v71 = vmla_n_f32(v62, v63, a18);
    v72 = vmla_n_f32(v62, v70, a18);
    v73 = vsub_f32(v72, v71);
    v74 = vmul_f32(v73, v73);
    *(v37 + 3) = v33;
    v74.i32[0] = vadd_f32(v74, vdup_lane_s32(v74, 1)).u32[0];
    v75 = vrsqrte_f32(v74.u32[0]);
    v76 = vmul_f32(v75, vrsqrts_f32(v74.u32[0], vmul_f32(v75, v75)));
    v77 = vmul_n_f32(v73, vmul_f32(v76, vrsqrts_f32(v74.u32[0], vmul_f32(v76, v76))).f32[0]);
    *(v35 + 24) = v71.f32[0] + v77.f32[1];
    *(v35 + 25) = v71.f32[1] - v77.f32[0];
    v35[26] = v61;
    v35[27] = v66.i32[0];
    *(v35 + 14) = 0xFFFFFFFFLL;
    *(v35 + 30) = v72.f32[0] + v77.f32[1];
    *(v35 + 31) = v72.f32[1] - v77.f32[0];
    v35[32] = v61;
    v35[33] = v66.i32[0];
    *(v35 + 17) = 0xFFFFFFFFLL;
    *(v35 + 36) = v72.f32[0] - v77.f32[1];
    *(v35 + 37) = v72.f32[1] + v77.f32[0];
    v35[38] = v61;
    v35[39] = v66.i32[0];
    *(v35 + 20) = 0xFFFFFFFFLL;
    *(v35 + 42) = v71.f32[0] - v77.f32[1];
    *(v35 + 43) = v71.f32[1] + v77.f32[0];
    v35[44] = v61;
    v35[45] = v66.i32[0];
    *(v35 + 23) = 0xFFFFFFFFLL;
    v78 = vdup_n_s16(v33);
    v79 = vadd_s16(v78, 0x5000400030002);
    *(v37 + 2) = v79.i16[0];
    *(v37 + 1) = v79;
    *(v37 + 9) = v79.i16[2];
    v80 = vmla_n_f32(v62, v42, a18);
    v81 = vsub_f32(v80, v64);
    v82 = vmul_f32(v81, v81);
    v82.i32[0] = vadd_f32(v82, vdup_lane_s32(v82, 1)).u32[0];
    v83 = vrsqrte_f32(v82.u32[0]);
    v84 = vmul_f32(v83, vrsqrts_f32(v82.u32[0], vmul_f32(v83, v83)));
    v85 = vmul_n_f32(v81, vmul_f32(v84, vrsqrts_f32(v82.u32[0], vmul_f32(v84, v84))).f32[0]);
    *(v35 + 48) = v64.f32[0] + v85.f32[1];
    *(v35 + 49) = v64.f32[1] - v85.f32[0];
    v35[50] = v61;
    v35[51] = v66.i32[0];
    *(v35 + 26) = 0xFFFFFFFFLL;
    *(v35 + 54) = v80.f32[0] + v85.f32[1];
    *(v35 + 55) = v80.f32[1] - v85.f32[0];
    v35[56] = v61;
    v35[57] = v66.i32[0];
    *(v35 + 29) = 0xFFFFFFFFLL;
    *(v35 + 60) = v80.f32[0] - v85.f32[1];
    *(v35 + 61) = v80.f32[1] + v85.f32[0];
    v35[62] = v61;
    v35[63] = v66.i32[0];
    *(v35 + 32) = 0xFFFFFFFFLL;
    *(v35 + 66) = v64.f32[0] - v85.f32[1];
    *(v35 + 67) = v64.f32[1] + v85.f32[0];
    v35[68] = v61;
    v35[69] = v66.i32[0];
    *(v35 + 35) = 0xFFFFFFFFLL;
    v86 = vadd_s16(v78, 0x9000800070006);
    *(v37 + 8) = v86.i16[0];
    *(v37 + 20) = v86;
    *(v37 + 14) = v33 + 10;
    *(v37 + 15) = v86.i16[2];
    *(v37 + 16) = v33 + 10;
    *(v37 + 17) = v33 + 11;
    v33 += 12;
    v35 += 72;
    v37 += 36;
  }

  v87 = 1.0 / (a14 - a13);
  v88 = a16;
  v89 = v87 * (a16 - a13);
  if (v89 <= 1.0)
  {
    v90 = v87 * (a16 - a13);
  }

  else
  {
    v90 = 1.0;
  }

  v91 = 1.0 - v90;
  if (v89 >= 0.0)
  {
    v92 = v91;
  }

  else
  {
    v92 = 1.0;
  }

  if (v45 >= 1)
  {
    v93 = 1.0 / v45;
    v94 = *(a3 + 8 * ((a5 + 1) % a4));
    v95 = v87 * (v94 - a13);
    if (v95 <= 1.0)
    {
      v96 = v87 * (v94 - a13);
    }

    else
    {
      v96 = 1.0;
    }

    v97 = 1.0 - v96;
    if (v95 >= 0.0)
    {
      v98 = v97;
    }

    else
    {
      v98 = 1.0;
    }

    v99.i32[0] = 0;
    v99.f32[1] = v98;
    v100 = vsub_f32(v42, v36);
    if (a7)
    {
      v101 = -11969794;
    }

    else
    {
      v101 = a6;
    }

    v102 = vdup_lane_s32(v34, 0);
    v103 = vmul_n_f32(0x3F0000003F000000, a18);
    v104 = a15 * 0.5;
    if (a7)
    {
      v105 = a6;
    }

    else
    {
      v105 = -11969794;
    }

    v106 = 0.0;
    do
    {
      v107 = v94;
      v106 = v93 + v106;
      v108 = v99;
      v94 = *(a3 + 8 * ((((v106 * v197) + 0.5) + a5) % a4));
      v109 = v87 * (v94 - a13);
      if (v109 <= 1.0)
      {
        v110 = v87 * (v94 - a13);
      }

      else
      {
        v110 = 1.0;
      }

      v111 = 1.0 - v110;
      if (v109 < 0.0)
      {
        v111 = 1.0;
      }

      v99 = __PAIR64__(LODWORD(v111), LODWORD(v106));
      if (v107 == v88 && v94 == v88)
      {
        v112 = vmla_f32(v36, v100, v108);
        v113 = *(a1 + 5500);
        v114 = *(a1 + 5504);
        v115 = vmla_f32(v103, v102, v112);
        v116 = vmla_f32(v103, v102, vmla_f32(v36, v100, v99));
        v117 = vsub_f32(v116, v115);
        v118 = vmul_f32(v117, v117);
        v118.i32[0] = vadd_f32(v118, vdup_lane_s32(v118, 1)).u32[0];
        v119 = vrsqrte_f32(v118.u32[0]);
        v120 = vmul_f32(v119, vrsqrts_f32(v118.u32[0], vmul_f32(v119, v119)));
        v121 = vmul_n_f32(v117, vmul_f32(v120, vrsqrts_f32(v118.u32[0], vmul_f32(v120, v120))).f32[0]);
        v118.f32[0] = v104 * v121.f32[0];
        v121.f32[0] = vmuls_lane_f32(v104, v121, 1);
        *v35 = v115.f32[0] + v121.f32[0];
        *(v35 + 1) = v115.f32[1] - v118.f32[0];
        v35[2] = v113;
        v35[3] = v114;
        v35[4] = a6;
        v35[5] = 0;
        *(v35 + 6) = v116.f32[0] + v121.f32[0];
        *(v35 + 7) = v116.f32[1] - v118.f32[0];
        v35[8] = v113;
        v35[9] = v114;
        v35[10] = a6;
        v35[11] = 0;
        *(v35 + 12) = v116.f32[0] - v121.f32[0];
        *(v35 + 13) = v116.f32[1] + v118.f32[0];
        v35[14] = v113;
        v35[15] = v114;
        v35[16] = a6;
        v35[17] = 0;
        *(v35 + 18) = v115.f32[0] - v121.f32[0];
        *(v35 + 19) = v115.f32[1] + v118.f32[0];
        v35[20] = v113;
        v35[21] = v114;
        v35[22] = a6;
      }

      else
      {
        if (v107 > v88 || v94 > v88)
        {
          if (v107 <= v88 || v94 <= v88)
          {
            v154 = vsub_f32(__PAIR64__(LODWORD(v111), LODWORD(v106)), v108);
            v155 = v94 > v88 || v107 <= v88;
            v156 = COERCE_DOUBLE(vmla_n_f32(v108, v154, (v108.f32[1] - v92) / (v108.f32[1] - v111)));
            v157 = COERCE_DOUBLE(vmla_n_f32(v108, v154, (v92 - v108.f32[1]) / (v111 - v108.f32[1])));
            if (v155)
            {
              *&v158 = v156;
            }

            else
            {
              *&v158 = v157;
            }

            if (v155)
            {
              v159 = v101;
            }

            else
            {
              v159 = v105;
            }

            if (v155)
            {
              v160 = v105;
            }

            else
            {
              v160 = v101;
            }

            v161 = fabsf(v108.f32[1] - v92);
            v162 = vabds_f32(v158.f32[1], v92);
            if (v162 < a17 && v161 < a17)
            {
              v159 = a6;
            }

            v164 = vabds_f32(v111, v92);
            if (v162 < a17 && v164 < a17)
            {
              v160 = a6;
            }

            v166 = vmla_f32(v36, v100, v108);
            v167 = *(a1 + 5500);
            v168 = *(a1 + 5504);
            v169 = vmla_f32(v103, v102, v166);
            v170 = vmla_f32(v103, v102, vmla_f32(v36, v100, v158));
            v171 = vsub_f32(v170, v169);
            v172 = vmul_f32(v171, v171);
            v172.i32[0] = vadd_f32(v172, vdup_lane_s32(v172, 1)).u32[0];
            v173 = vrsqrte_f32(v172.u32[0]);
            v174 = vmul_f32(v173, vrsqrts_f32(v172.u32[0], vmul_f32(v173, v173)));
            v175 = vmul_n_f32(v171, vmul_f32(v174, vrsqrts_f32(v172.u32[0], vmul_f32(v174, v174))).f32[0]);
            v174.f32[0] = vmuls_lane_f32(v104, v175, 1);
            *v35 = v169.f32[0] + v174.f32[0];
            *(v35 + 1) = v169.f32[1] - (v104 * v175.f32[0]);
            v35[2] = v167;
            v35[3] = v168;
            v35[4] = v159;
            v35[5] = 0;
            *(v35 + 6) = v170.f32[0] + v174.f32[0];
            *(v35 + 7) = v170.f32[1] - (v104 * v175.f32[0]);
            v35[8] = v167;
            v35[9] = v168;
            v35[10] = v159;
            v35[11] = 0;
            *(v35 + 12) = v170.f32[0] - v174.f32[0];
            *(v35 + 13) = v170.f32[1] + (v104 * v175.f32[0]);
            v35[14] = v167;
            v35[15] = v168;
            v35[16] = v159;
            v35[17] = 0;
            *(v35 + 18) = v169.f32[0] - v174.f32[0];
            *(v35 + 19) = v169.f32[1] + (v104 * v175.f32[0]);
            v35[20] = v167;
            v35[21] = v168;
            v35[22] = v159;
            v35[23] = 0;
            *v37 = v33;
            *(v37 + 1) = v33 + 1;
            *(v37 + 3) = v33;
            v176 = vmla_f32(v103, v102, vmla_f32(v36, v100, v99));
            v177 = vsub_f32(v176, v170);
            v178 = vmul_f32(v177, v177);
            v178.i32[0] = vadd_f32(v178, vdup_lane_s32(v178, 1)).u32[0];
            v179 = vrsqrte_f32(v178.u32[0]);
            v180 = vmul_f32(v179, vrsqrts_f32(v178.u32[0], vmul_f32(v179, v179)));
            v181 = vmul_n_f32(v177, vmul_f32(v180, vrsqrts_f32(v178.u32[0], vmul_f32(v180, v180))).f32[0]);
            v178.f32[0] = v104 * v181.f32[0];
            v181.f32[0] = vmuls_lane_f32(v104, v181, 1);
            *(v35 + 24) = v170.f32[0] + v181.f32[0];
            *(v35 + 25) = v170.f32[1] - v178.f32[0];
            v35[26] = v167;
            v35[27] = v168;
            v35[28] = v160;
            v35[29] = 0;
            *(v35 + 30) = v176.f32[0] + v181.f32[0];
            *(v35 + 31) = v176.f32[1] - v178.f32[0];
            v35[32] = v167;
            v35[33] = v168;
            v35[34] = v160;
            v35[35] = 0;
            *(v35 + 36) = v176.f32[0] - v181.f32[0];
            *(v35 + 37) = v176.f32[1] + v178.f32[0];
            v35[38] = v167;
            v35[39] = v168;
            v35[40] = v160;
            v35[41] = 0;
            *(v35 + 42) = v170.f32[0] - v181.f32[0];
            *(v35 + 43) = v170.f32[1] + v178.f32[0];
            v35[44] = v167;
            v35[45] = v168;
            v35[46] = v160;
            v35[47] = 0;
            v182 = vadd_s16(vdup_n_s16(v33), 0x5000400030002);
            *(v37 + 2) = v182.i16[0];
            *(v37 + 1) = v182;
            *(v37 + 9) = v182.i16[2];
            v148 = v33 + 7;
            v149 = 2;
            *(v37 + 8) = v33 + 6;
            *(v37 + 10) = v33 + 6;
            v150 = 8;
            v151 = 22;
            v152 = 192;
            v153 = 24;
            goto LABEL_65;
          }

          v138 = vmla_f32(v36, v100, v108);
          v139 = vabds_f32(v108.f32[1], v92);
          v124 = *(a1 + 5500);
          v140 = vmla_f32(v103, v102, v138);
          v141 = vmla_f32(v103, v102, vmla_f32(v36, v100, __PAIR64__(LODWORD(v111), LODWORD(v106))));
          v142 = vsub_f32(v141, v140);
          v143 = vmul_f32(v142, v142);
          v129 = *(a1 + 5504);
          v143.i32[0] = vadd_f32(v143, vdup_lane_s32(v143, 1)).u32[0];
          v144 = vrsqrte_f32(v143.u32[0]);
          v145 = vmul_f32(v144, vrsqrts_f32(v143.u32[0], vmul_f32(v144, v144)));
          v146 = vmul_n_f32(v142, vmul_f32(v145, vrsqrts_f32(v143.u32[0], vmul_f32(v145, v145))).f32[0]);
          v133 = v104 * v146.f32[0];
          v147 = vmuls_lane_f32(v104, v146, 1);
          v135 = v140.f32[1];
          *v35 = v140.f32[0] + v147;
          *(v35 + 1) = v140.f32[1] - v133;
          v35[2] = v124;
          v35[3] = v129;
          if (vabds_f32(v111, v92) < a17)
          {
            v136 = a6;
          }

          else
          {
            v136 = v105;
          }

          if (v139 >= a17)
          {
            v136 = v105;
          }

          v35[4] = v136;
          v35[5] = 0;
          *(v35 + 6) = v141.f32[0] + v147;
          *(v35 + 7) = v141.f32[1] - v133;
          v35[8] = v124;
          v35[9] = v129;
          v35[10] = v136;
          v35[11] = 0;
          *(v35 + 12) = v141.f32[0] - v147;
          *(v35 + 13) = v141.f32[1] + v133;
          v35[14] = v124;
          v35[15] = v129;
          v35[16] = v136;
          v35[17] = 0;
          v137 = v140.f32[0] - v147;
        }

        else
        {
          v122 = vmla_f32(v36, v100, v108);
          v123 = vabds_f32(v108.f32[1], v92);
          v124 = *(a1 + 5500);
          v125 = vmla_f32(v103, v102, v122);
          v126 = vmla_f32(v103, v102, vmla_f32(v36, v100, __PAIR64__(LODWORD(v111), LODWORD(v106))));
          v127 = vsub_f32(v126, v125);
          v128 = vmul_f32(v127, v127);
          v129 = *(a1 + 5504);
          v128.i32[0] = vadd_f32(v128, vdup_lane_s32(v128, 1)).u32[0];
          v130 = vrsqrte_f32(v128.u32[0]);
          v131 = vmul_f32(v130, vrsqrts_f32(v128.u32[0], vmul_f32(v130, v130)));
          v132 = vmul_n_f32(v127, vmul_f32(v131, vrsqrts_f32(v128.u32[0], vmul_f32(v131, v131))).f32[0]);
          v133 = v104 * v132.f32[0];
          v134 = vmuls_lane_f32(v104, v132, 1);
          v135 = v125.f32[1];
          *v35 = v125.f32[0] + v134;
          *(v35 + 1) = v125.f32[1] - v133;
          v35[2] = v124;
          v35[3] = v129;
          if (vabds_f32(v111, v92) < a17)
          {
            v136 = a6;
          }

          else
          {
            v136 = v101;
          }

          if (v123 >= a17)
          {
            v136 = v101;
          }

          v35[4] = v136;
          v35[5] = 0;
          *(v35 + 6) = v126.f32[0] + v134;
          *(v35 + 7) = v126.f32[1] - v133;
          v35[8] = v124;
          v35[9] = v129;
          v35[10] = v136;
          v35[11] = 0;
          *(v35 + 12) = v126.f32[0] - v134;
          *(v35 + 13) = v126.f32[1] + v133;
          v35[14] = v124;
          v35[15] = v129;
          v35[16] = v136;
          v35[17] = 0;
          v137 = v125.f32[0] - v134;
        }

        *(v35 + 18) = v137;
        *(v35 + 19) = v135 + v133;
        v35[20] = v124;
        v35[21] = v129;
        v35[22] = v136;
      }

      v35[23] = 0;
      *v37 = v33;
      *(v37 + 1) = v33 + 1;
      *(v37 + 2) = v33 + 2;
      v148 = v33 + 3;
      v149 = 1;
      *(v37 + 3) = v33;
      *(v37 + 4) = v33 + 2;
      v150 = 4;
      v151 = 10;
      v152 = 96;
      v153 = 12;
LABEL_65:
      *&v37[v151] = v148;
      v33 += v150;
      v35 = (v35 + v152);
      v37 += v153;
      v46 += v149;
      --v45;
    }

    while (v45);
  }

  v183 = __p[0];
  if (*(a2 + 8))
  {
    if (!*a2)
    {
      goto LABEL_104;
    }

    v184 = (6 * v46);
    v185 = v204[0];
    v186 = 4 * v46;
    v187 = *(a2 + 16) + v186;
    v188 = *(a2 + 24);
    if (v187 >= v188)
    {
      LODWORD(v189) = *(a2 + 28);
    }

    else
    {
      v189 = *(a2 + 28);
      if (*(a2 + 20) + v184 < v189)
      {
        goto LABEL_100;
      }
    }

    HUDSimpleVertexBufferChunkRelocate(a1, a2, 2 * v188, 2 * v189);
    v188 = *(a2 + 24);
    v187 = *(a2 + 16) + v186;
LABEL_100:
    if (v187 < v188 && *(a2 + 20) + v184 < *(a2 + 28))
    {
      v190 = [*a2 contents];
      v191 = *(a2 + 16);
      v192 = [*(a2 + 8) contents];
      v193 = &v190[24 * v191];
      v194 = *(a2 + 20);
      if (v185)
      {
        memcpy(v193, v185, 24 * v186);
      }

      else if (v186)
      {
        bzero(v193, 24 * v186);
      }

      if (v183)
      {
        memcpy(&v192[2 * v194], v183, 2 * v184);
      }

      else if (v184)
      {
        bzero(v193, 2 * v184);
      }

      v196 = *(a2 + 20) + v184;
      *(a2 + 16) += v186;
      *(a2 + 20) = v196;
      v29 = 1;
LABEL_105:
      v183 = __p[0];
      if (!__p[0])
      {
        goto LABEL_107;
      }

      goto LABEL_106;
    }

LABEL_104:
    v29 = 0;
    goto LABEL_105;
  }

  v29 = 0;
  if (__p[0])
  {
LABEL_106:
    __p[1] = v183;
    operator delete(v183);
  }

LABEL_107:
  if (v204[0])
  {
    v204[1] = v204[0];
    operator delete(v204[0]);
  }

  return v29;
}

void sub_23E2C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a23)
  {
    operator delete(a23);
  }

  _Unwind_Resume(exception_object);
}

uint64_t HUDUIWindowAddStats(uint64_t result, unsigned int a2, __int128 *a3, float a4, double a5, double a6, float32_t a7, float32_t a8, float a9, float a10, const char *a11, int a12)
{
  if (!result)
  {
    return result;
  }

  v17 = result;
  v18 = *(result + 5852);
  v19 = *(result + 40);
  if (v18 != -1)
  {
    v20 = *(result + 32);
    if (0xF0F0F0F0F0F0F0F1 * ((v19 - v20) >> 3) > v18)
    {
      v21 = v20 + 136 * v18;
      goto LABEL_6;
    }

    return 0;
  }

  v21 = *(result + 32);
  if (v21 == v19)
  {
    return 0;
  }

LABEL_6:
  if (!v21)
  {
    return 0;
  }

  v25 = *a3;
  v26 = *(a3 + 2);
  LODWORD(v27) = a12;
  v28 = HUDUIInvalidString;
  v29 = qword_784F8;
  LODWORD(v30) = a12;
  v22 = "";
  v23 = a4;
  if (a11)
  {
    v22 = a11;
  }

  HUDUITemporaryStringWithFormat(result, a2, "%6.2f%s [%6.2f %6.2f]", v31, *&v23, v22, *&a5, *&a6, v25, v26, v27, v28, v29, v30);
  v31[6] = a12;
  *&v24 = a10;
  return HUDUIWindowAddSegmentedLabel(v17, &v25, 3u, a7, a8, a9, v24);
}