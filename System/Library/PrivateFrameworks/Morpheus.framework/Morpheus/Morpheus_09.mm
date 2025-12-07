__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIyNS8_12_GLOBAL__N_15MinOpIyEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF0678;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIyNS8_12_GLOBAL__N_15MinOpIyEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIyNS8_12_GLOBAL__N_15MinOpIyEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 8 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 8 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (8 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 8 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2F666C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<unsigned long long,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x200000)
  {
    v13 = 0x100000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 8 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 8 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v88 = *v85++;
              v87 = v88;
              if (v88 >= *v84)
              {
                v87 = *v84;
              }

              *v84++ = v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }
}

void sub_25A2F6D8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF06E8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(unsigned long long *,unsigned long long *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>),mlx::core::distributed::ring::RingGroup*,unsigned long long *,unsigned long long *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15MinOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF0740;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15MinOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF0740;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15MinOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF0740;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15MinOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15MinOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPySA_miiiNS8_12_GLOBAL__N_15MinOpIyEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPyS8_miiiNS6_12_GLOBAL__N_15MinOpIyEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF07D0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<unsigned long long,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<unsigned long long>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_13_MLX_BFloat16ENS8_12_GLOBAL__N_15MinOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF08C8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_13_MLX_BFloat16ENS8_12_GLOBAL__N_15MinOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_13_MLX_BFloat16ENS8_12_GLOBAL__N_15MinOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 2 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 2 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (2 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 2 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2F7874(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x800000)
  {
    v13 = 0x400000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 2 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 2 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v88 = *v85++;
              v87 = v88;
              if (COERCE_FLOAT(v88 << 16) >= COERCE_FLOAT(*v84 << 16))
              {
                v87 = *v84;
              }

              *v84++ = v87;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }
}

void sub_25A2F7FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>),mlx::core::distributed::ring::RingGroup*,mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>),mlx::core::distributed::ring::RingGroup*,mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF0938;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>),mlx::core::distributed::ring::RingGroup*,mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>),mlx::core::distributed::ring::RingGroup*,mlx::core::_MLX_BFloat16 *,mlx::core::_MLX_BFloat16 *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15MinOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF0990;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15MinOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF0990;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15MinOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE7__cloneEPNS0_6__baseIS10_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF0990;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15MinOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15MinOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_13_MLX_BFloat16ESB_miiiNS8_12_GLOBAL__N_15MinOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS4_13_MLX_BFloat16ES9_miiiNS6_12_GLOBAL__N_15MinOpIS8_EEEJPS7_S9_S9_mRiSG_iRKSC_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSM_DpOSN_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF0A20;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::_MLX_BFloat16,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::_MLX_BFloat16>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIDhNS8_12_GLOBAL__N_15MinOpIDhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF0B18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIDhNS8_12_GLOBAL__N_15MinOpIDhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIDhNS8_12_GLOBAL__N_15MinOpIDhEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::MinOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<half>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 2 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 2 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (2 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 2 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2F8A8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<half,mlx::core::distributed::ring::anonymous namespace::MinOp<half>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x800000)
  {
    v13 = 0x400000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 2 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 2 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              v88 = v87;
              if (v87 >= *v84)
              {
                v88 = *v84;
              }

              *v84++ = v88;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }
}

void sub_25A2F91AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(half *,half *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<half>),mlx::core::distributed::ring::RingGroup*,half *,half *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<half> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(half *,half *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<half>),mlx::core::distributed::ring::RingGroup*,half *,half *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<half> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF0B88;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(half *,half *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<half>),mlx::core::distributed::ring::RingGroup*,half *,half *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<half> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(half *,half *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<half>),mlx::core::distributed::ring::RingGroup*,half *,half *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<half> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15MinOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF0BE0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15MinOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF0BE0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15MinOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF0BE0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15MinOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15MinOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhSA_miiiNS8_12_GLOBAL__N_15MinOpIDhEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPDhS8_miiiNS6_12_GLOBAL__N_15MinOpIDhEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::MinOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<half>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::MinOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<half>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF0C70;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::MinOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<half>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<half,mlx::core::distributed::ring::anonymous namespace::MinOp<half>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<half>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIfNS8_12_GLOBAL__N_15MinOpIfEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF0D68;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIfNS8_12_GLOBAL__N_15MinOpIfEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIfNS8_12_GLOBAL__N_15MinOpIfEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::MinOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<float>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 4 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 4 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (4 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 4 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2F9C94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<float,mlx::core::distributed::ring::anonymous namespace::MinOp<float>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x400000)
  {
    v13 = 0x200000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 4 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 4 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              v88 = v87;
              if (v87 >= *v84)
              {
                v88 = *v84;
              }

              *v84++ = v88;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }
}

void sub_25A2FA3B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(float *,float *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<float>),mlx::core::distributed::ring::RingGroup*,float *,float *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<float> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(float *,float *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<float>),mlx::core::distributed::ring::RingGroup*,float *,float *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<float> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF0DD8;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(float *,float *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<float>),mlx::core::distributed::ring::RingGroup*,float *,float *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<float> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(float *,float *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<float>),mlx::core::distributed::ring::RingGroup*,float *,float *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<float> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15MinOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF0E30;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15MinOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF0E30;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15MinOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF0E30;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15MinOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15MinOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfSA_miiiNS8_12_GLOBAL__N_15MinOpIfEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPfS8_miiiNS6_12_GLOBAL__N_15MinOpIfEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::MinOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<float>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::MinOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<float>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF0EC0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::MinOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<float>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<float,mlx::core::distributed::ring::anonymous namespace::MinOp<float>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<float>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIdNS8_12_GLOBAL__N_15MinOpIdEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE7__cloneEPNS0_6__baseIST_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF0FB8;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIdNS8_12_GLOBAL__N_15MinOpIdEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceIdNS8_12_GLOBAL__N_15MinOpIdEEEEvRKNS3_5arrayERSE_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISQ_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::MinOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<double>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 8 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 8 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (8 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 8 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2FAE9C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<double,mlx::core::distributed::ring::anonymous namespace::MinOp<double>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v118[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v93 = v8;
  v94 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x200000)
  {
    v13 = 0x100000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v113 = 0;
  v114 = 0;
  __p = 0;
  v110 = 0;
  v111 = 0;
  v16 = 1;
  v107 = v13;
  v105 = v14 / v13;
  v100 = a7;
  v98 = (a4 + v10 - 1) / v10;
  v99 = a4;
  v97 = v14;
  do
  {
    v96 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v107 <= v14)
        {
          v102 = v17;
          v20 = 0;
          v103 = v15;
          v104 = v9;
          v106 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v107;
            v23 = v20 * v107 + v106;
            v24 = ++v20 * v107;
            v25 = v20 * v107 + v106;
            v26 = v113;
            if (v113 >= v114)
            {
              v30 = __src;
              v31 = v113 - __src;
              v32 = (v113 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v114 - __src;
              if ((v114 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v113 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v107 + v106;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v113 = v29;
              v114 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v107 + v106;
              }

              else
              {
                v28 = v18;
              }

              *v113 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v113 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v110;
            if (v110 >= v111)
            {
              v47 = __p;
              v48 = v110 - __p;
              v49 = (v110 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v111 - __p;
              if ((v111 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v110 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v110 = v46;
              v111 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v110 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v110 = v46;
          }

          while (v20 < v105);
          LODWORD(v10) = *(a1 + 12);
          a7 = v100;
          v11 = v98;
          a4 = v99;
          v15 = v103;
          v9 = v104;
          v14 = v97;
          v17 = v102;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v96 & 1) != 0);
  v118[0] = a2;
  v118[1] = a2 + 8 * v107;
  v117[0] = 0;
  v117[1] = 0;
  v116[0] = 0;
  v116[1] = 0;
  v58 = __src;
  if (v113 == __src)
  {
    v69 = v105 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v105 > 1;
    if (v105 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v115.__state_) = v94;
      state = v108.__state_;
      v108.__state_ = 0;
      v69 = v63;
      v115.__state_ = v117[v63];
      v117[v63] = state;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v113 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v115.__state_) = v93;
      }

      else
      {
        v70 = v118[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v115.__state_) = v93;
      }

      v79 = v108.__state_;
      v108.__state_ = 0;
      v115.__state_ = v116[v63];
      v116[v63] = v79;
      std::future<void>::~future(&v115);
      std::future<void>::~future(&v108);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v113 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v117[v60]);
        std::__assoc_sub_state::wait(v116[v60]);
        v58 = __src;
        v80 = (v113 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 8 * v82);
            v85 = v118[v62 & 1];
            v86 = v82 - v83;
            do
            {
              v87 = *v85++;
              v88 = v87;
              if (v87 >= *v84)
              {
                v88 = *v84;
              }

              *v84++ = v88;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v117[v69]);
  std::__assoc_sub_state::wait(v116[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v116[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v117[j]);
  }

  if (__p)
  {
    v110 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v113 = __src;
    operator delete(__src);
  }
}

void sub_25A2FB5BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(double *,double *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<double>),mlx::core::distributed::ring::RingGroup*,double *,double *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<double> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(double *,double *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<double>),mlx::core::distributed::ring::RingGroup*,double *,double *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<double> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF1028;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(double *,double *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<double>),mlx::core::distributed::ring::RingGroup*,double *,double *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<double> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(double *,double *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<double>),mlx::core::distributed::ring::RingGroup*,double *,double *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<double> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15MinOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF1080;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15MinOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF1080;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15MinOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7__cloneEPNS0_6__baseISZ_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF1080;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15MinOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15MinOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdSA_miiiNS8_12_GLOBAL__N_15MinOpIdEEEJPS9_SA_SA_mRiSH_iRKSD_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSN_DpOSO_EUlvE_NS_9allocatorISW_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPdS8_miiiNS6_12_GLOBAL__N_15MinOpIdEEEJPS7_S8_S8_mRiSF_iRKSB_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSL_DpOSM_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::MinOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<double>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::MinOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<double>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF1110;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::MinOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<double>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<double,mlx::core::distributed::ring::anonymous namespace::MinOp<double>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<double>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_11complex64_tENS8_12_GLOBAL__N_15MinOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE7__cloneEPNS0_6__baseISU_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF1208;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void _ZNSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_11complex64_tENS8_12_GLOBAL__N_15MinOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEEclEv(uint64_t a1)
{
  v2 = mlx::core::scheduler::scheduler(v1);

  mlx::core::scheduler::Scheduler::notify_task_completion(v2);
}

uint64_t _ZNKSt3__110__function6__funcIZN3mlx4core3cpu14CommandEncoder8dispatchIZNS3_11distributed4ring9RingGroup10all_reduceINS3_11complex64_tENS8_12_GLOBAL__N_15MinOpISB_EEEEvRKNS3_5arrayERSF_NS3_6StreamET0_EUlvE_JEEEvOT_DpOT0_EUlvE_NS_9allocatorISR_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>)::{lambda(void)#1}>::operator()[abi:ne200100]<>(uint64_t a1)
{
  __dst[128] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = 8 * v2;
  v5 = *(v3 + 12);
  if (v2 >= v5)
  {
    v7 = *a1;
    v6 = *(a1 + 8);
    if (*a1 != v6)
    {
      memcpy(v6, v7, 8 * v2);
    }

    memset(v12, 0, sizeof(v12));
    operator new();
  }

  if (8 * v5 >= 0x401)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](__dst);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__dst, "Can't perform the ring all reduce of ", 37);
    v9 = MEMORY[0x25F851380](v8, *(a1 + 16));
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " elements with a ring of size ", 30);
    MEMORY[0x25F851360](v10, *(v3 + 12));
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](__dst, v12);
    MEMORY[0x25F851100](exception, v12);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  bzero(__dst, 8 * v5);
  memcpy(__dst, *a1, v4);
  memcpy(*(a1 + 8), __dst, v4);
}

void sub_25A2FC0A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, std::future<void> a21, char a22)
{
  if (a20 < 0)
  {
    operator delete(__p);
    if ((v23 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a22);
      _Unwind_Resume(a1);
    }
  }

  else if (!v23)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v22);
  goto LABEL_6;
}

void mlx::core::distributed::ring::RingGroup::all_reduce_impl<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>>(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, int a6, int a7)
{
  v119[2] = *MEMORY[0x277D85DE8];
  if (a7 >= 0)
  {
    v7 = a6;
  }

  else
  {
    v7 = a5;
  }

  if (a7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a6;
  }

  v94 = v8;
  v95 = v7;
  v9 = *(a1 + 8);
  v10 = *(a1 + 12);
  v11 = (a4 + v10 - 1) / v10;
  v12 = v11 >> 1;
  if (v11 >> 1 <= 0x8000)
  {
    v12 = 0x8000;
  }

  if (v11 >= 0x200000)
  {
    v13 = 0x100000;
  }

  else
  {
    v13 = v12;
  }

  v14 = v11 + v13 - 1;
  v15 = (v10 + a7 + v9) % v10;
  __src = 0;
  v114 = 0;
  v115 = 0;
  __p = 0;
  v111 = 0;
  v112 = 0;
  v16 = 1;
  v108 = v13;
  v106 = v14 / v13;
  v101 = a7;
  v99 = (a4 + v10 - 1) / v10;
  v100 = a4;
  v98 = v14;
  do
  {
    v97 = v16;
    if (v10 >= 2)
    {
      v17 = 0;
      do
      {
        if (v11 * (v9 + 1) >= a4)
        {
          v18 = a4;
        }

        else
        {
          v18 = v11 * (v9 + 1);
        }

        if (v11 * (v15 + 1) >= a4)
        {
          v19 = a4;
        }

        else
        {
          v19 = v11 * (v15 + 1);
        }

        if (v108 <= v14)
        {
          v103 = v17;
          v20 = 0;
          v104 = v15;
          v105 = v9;
          v107 = v11 * v9;
          v21 = v11 * v15;
          do
          {
            v22 = v20 * v108;
            v23 = v20 * v108 + v107;
            v24 = ++v20 * v108;
            v25 = v20 * v108 + v107;
            v26 = v114;
            if (v114 >= v115)
            {
              v30 = __src;
              v31 = v114 - __src;
              v32 = (v114 - __src) >> 4;
              v33 = v32 + 1;
              if ((v32 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v34 = v115 - __src;
              if ((v115 - __src) >> 3 > v33)
              {
                v33 = v34 >> 3;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFF0)
              {
                v33 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v33)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__src, v33);
              }

              v35 = (v114 - __src) >> 4;
              v36 = (16 * v32);
              if (v18 >= v23)
              {
                v37 = v23;
              }

              else
              {
                v37 = v18;
              }

              if (v18 >= v25)
              {
                v38 = v20 * v108 + v107;
              }

              else
              {
                v38 = v18;
              }

              *v36 = v37;
              *(16 * v32 + 8) = v38;
              v29 = (v36 + 2);
              v39 = &v36[-2 * v35];
              memcpy(v39, v30, v31);
              v40 = __src;
              __src = v39;
              v114 = v29;
              v115 = 0;
              if (v40)
              {
                operator delete(v40);
              }
            }

            else
            {
              if (v18 >= v23)
              {
                v27 = v23;
              }

              else
              {
                v27 = v18;
              }

              if (v18 >= v25)
              {
                v28 = v20 * v108 + v107;
              }

              else
              {
                v28 = v18;
              }

              *v114 = v27;
              *(v26 + 1) = v28;
              v29 = v26 + 16;
            }

            v114 = v29;
            v41 = v22 + v21;
            v42 = v24 + v21;
            v43 = v111;
            if (v111 >= v112)
            {
              v47 = __p;
              v48 = v111 - __p;
              v49 = (v111 - __p) >> 4;
              v50 = v49 + 1;
              if ((v49 + 1) >> 60)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v51 = v112 - __p;
              if ((v112 - __p) >> 3 > v50)
              {
                v50 = v51 >> 3;
              }

              if (v51 >= 0x7FFFFFFFFFFFFFF0)
              {
                v50 = 0xFFFFFFFFFFFFFFFLL;
              }

              if (v50)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<unsigned long,unsigned long>>>(&__p, v50);
              }

              v52 = (v111 - __p) >> 4;
              v53 = (16 * v49);
              if (v19 >= v41)
              {
                v54 = v41;
              }

              else
              {
                v54 = v19;
              }

              if (v19 >= v42)
              {
                v55 = v24 + v21;
              }

              else
              {
                v55 = v19;
              }

              *v53 = v54;
              *(16 * v49 + 8) = v55;
              v46 = (v53 + 2);
              v56 = &v53[-2 * v52];
              memcpy(v56, v47, v48);
              v57 = __p;
              __p = v56;
              v111 = v46;
              v112 = 0;
              if (v57)
              {
                operator delete(v57);
              }
            }

            else
            {
              if (v19 >= v41)
              {
                v44 = v41;
              }

              else
              {
                v44 = v19;
              }

              if (v19 >= v42)
              {
                v45 = v24 + v21;
              }

              else
              {
                v45 = v19;
              }

              *v111 = v44;
              *(v43 + 1) = v45;
              v46 = v43 + 16;
            }

            v111 = v46;
          }

          while (v20 < v106);
          LODWORD(v10) = *(a1 + 12);
          a7 = v101;
          v11 = v99;
          a4 = v100;
          v15 = v104;
          v9 = v105;
          v14 = v98;
          v17 = v103;
        }

        v9 = (v9 + a7 + v10) % v10;
        v15 = (v15 + a7 + v10) % v10;
        ++v17;
      }

      while (v17 < v10 - 1);
    }

    v16 = 0;
  }

  while ((v97 & 1) != 0);
  v119[0] = a2;
  v119[1] = a2 + 8 * v108;
  v118[0] = 0;
  v118[1] = 0;
  v117[0] = 0;
  v117[1] = 0;
  v58 = __src;
  if (v114 == __src)
  {
    v69 = v106 > 1;
  }

  else
  {
    v59 = 0;
    v60 = 0;
    v61 = v106 > 1;
    if (v106 <= 1)
    {
      v62 = 0;
    }

    else
    {
      v62 = -1;
    }

    do
    {
      v63 = v60;
      v60 = v61;
      v64 = &v58[16 * v59];
      v65 = *v64;
      v66 = *(v64 + 1);
      LODWORD(v116.__state_) = v95;
      state = v109.__state_;
      v109.__state_ = 0;
      v69 = v63;
      v116.__state_ = v118[v63];
      v118[v63] = state;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v114 - __src) >> 4 <= 2 * v59)
      {
        v75 = (__p + 16 * v59);
        v76 = *v75;
        v77 = v75[1];
        LODWORD(v116.__state_) = v94;
      }

      else
      {
        v70 = v119[v59 & 1];
        v71 = (__p + 16 * v59);
        v72 = *v71;
        v73 = v71[1];
        LODWORD(v116.__state_) = v94;
      }

      v79 = v109.__state_;
      v109.__state_ = 0;
      v116.__state_ = v117[v63];
      v117[v63] = v79;
      std::future<void>::~future(&v116);
      std::future<void>::~future(&v109);
      if ((v62 & 0x80000000) != 0)
      {
        v58 = __src;
        v80 = (v114 - __src) >> 4;
      }

      else
      {
        std::__assoc_sub_state::wait(v118[v60]);
        std::__assoc_sub_state::wait(v117[v60]);
        v58 = __src;
        v80 = (v114 - __src) >> 4;
        if (v80 > 2 * v62)
        {
          v81 = (__p + 16 * v62);
          v82 = *v81;
          v83 = v81[1];
          if (v83 != *v81)
          {
            v84 = (a3 + 8 * v82);
            v85 = v119[v62 & 1];
            v86 = v82 - v83;
            v87 = v85 + 1;
            do
            {
              v88 = *(v87 - 1);
              if (*v84 > v88 || (v89 = v84, *v84 == v88) && (v89 = v84, v84[1] > *v87))
              {
                v89 = v85;
              }

              *v84 = *v89;
              v84 += 2;
              v85 += 2;
              v87 += 2;
            }

            while (!__CFADD__(v86++, 1));
          }
        }
      }

      ++v62;
      ++v59;
      v61 = v63;
    }

    while (v80 > v59);
  }

  std::__assoc_sub_state::wait(v118[v69]);
  std::__assoc_sub_state::wait(v117[v69]);
  for (i = 1; i != -1; --i)
  {
    std::future<void>::~future(&v117[i]);
  }

  for (j = 1; j != -1; --j)
  {
    std::future<void>::~future(&v118[j]);
  }

  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  if (__src)
  {
    v114 = __src;
    operator delete(__src);
  }
}

void sub_25A2FC7F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, uint64_t a28, void *a29, uint64_t a30)
{
  for (i = 8; i != -8; i -= 8)
  {
    std::future<void>::~future((v30 - 144 + i));
  }

  for (j = 8; j != -8; j -= 8)
  {
    std::future<void>::~future((v30 - 128 + j));
  }

  if (__p)
  {
    operator delete(__p);
  }

  if (a29)
  {
    operator delete(a29);
  }

  _Unwind_Resume(a1);
}

__n128 std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>),mlx::core::distributed::ring::RingGroup*,mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>),mlx::core::distributed::ring::RingGroup*,mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t> const&>>>,void ()(void)>::__move_to(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF1278;
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 8) = *(a1 + 8);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  *(a2 + 73) = 0;
  *(a2 + 76) = 0;
  return result;
}

uint64_t std::__packaged_task_func<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>),mlx::core::distributed::ring::RingGroup*,mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t> const&>>,std::allocator<std::__bind<std::__bind<void (mlx::core::distributed::ring::RingGroup::*)(mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int,int,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>),mlx::core::distributed::ring::RingGroup*,mlx::core::complex64_t *,mlx::core::complex64_t *,unsigned long,int &,int &,int,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t> const&>>>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 8);
  v3 = (*(a1 + 24) + (v1 >> 1));
  if (v1)
  {
    v2 = *(*v3 + v2);
  }

  return v2(v3, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), *(a1 + 60), *(a1 + 64));
}

void *_ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15MinOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEED1Ev(void *a1)
{
  *a1 = &unk_286BF12D0;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  return a1;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15MinOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEED0Ev(void *a1)
{
  *a1 = &unk_286BF12D0;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  JUMPOUT(0x25F851760);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15MinOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE7__cloneEPNS0_6__baseIS10_EE(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_286BF12D0;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  return result;
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15MinOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE7destroyEv(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }
}

void _ZNSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15MinOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE18destroy_deallocateEv(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  operator delete(__p);
}

uint64_t _ZNKSt3__110__function6__funcIZN10ThreadPool7enqueueINS_6__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS6_11complex64_tESB_miiiNS8_12_GLOBAL__N_15MinOpISA_EEEJPS9_SB_SB_mRiSI_iRKSE_EEEJEEENS_6futureINS_13invoke_resultIT_JDpT0_EE4typeEEEOSO_DpOSP_EUlvE_NS_9allocatorISX_EEFvvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:ne200100](a2, &_ZTIZN10ThreadPool7enqueueINSt3__16__bindIMN3mlx4core11distributed4ring9RingGroupEFvPNS4_11complex64_tES9_miiiNS6_12_GLOBAL__N_15MinOpIS8_EEEJPS7_S9_S9_mRiSG_iRKSC_EEEJEEENS1_6futureINS1_13invoke_resultIT_JDpT0_EE4typeEEEOSM_DpOSN_EUlvE_))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>)::{lambda(void)#1}>>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_286BF1360;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  *(a2 + 49) = 0;
  *(a2 + 52) = 0;
  return result;
}

uint64_t std::__function::__func<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>)::{lambda(void)#1}>,std::allocator<std::__bind<void mlx::core::distributed::ring::RingGroup::all_reduce<mlx::core::complex64_t,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>>(mlx::core::array const&,mlx::core::array&,mlx::core::Stream,mlx::core::distributed::ring::anonymous namespace::MinOp<mlx::core::complex64_t>)::{lambda(void)#1}>>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void mlx::core::einsum_path(const std::string::value_type **a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&__p, "einsum_path");
  if (SHIBYTE(v32[0].__locale_) < 0)
  {
    operator delete(__p);
  }

  v39 = 0;
  v40 = 0;
  v41 = 0;
  v6 = v42[0];
  v7 = v42[1];
  while (v6 != v7)
  {
    std::vector<std::vector<int>>::push_back[abi:ne200100](&v39, v6 + 88);
    v6 += 112;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&__p);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "  Complete contraction:  ", 25);
  v9 = *(a1 + 23);
  if (v9 >= 0)
  {
    v10 = a1;
  }

  else
  {
    v10 = *a1;
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 23);
  }

  else
  {
    v11 = a1[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n", 1);
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "         Naive scaling:  ", 25);
  v15 = MEMORY[0x25F851380](v14, v42[4]);
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "\n", 1);
  v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "     Optimized scaling:  ", 25);
  v18 = MEMORY[0x25F851380](v17, v42[6]);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "\n", 1);
  v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "      Naive FLOP count:  ", 25);
  v21 = MEMORY[0x25F851380](v20, v42[3]);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\n", 1);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "  Optimized FLOP count:  ", 25);
  v24 = MEMORY[0x25F851380](v23, v42[5]);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "\n", 1);
  if ((v37 & 0x10) != 0)
  {
    v26 = v36;
    if (v36 < v33)
    {
      v36 = v33;
      v26 = v33;
    }

    locale = v32[4].__locale_;
  }

  else
  {
    if ((v37 & 8) == 0)
    {
      v25 = 0;
      HIBYTE(v29) = 0;
      goto LABEL_25;
    }

    locale = v32[1].__locale_;
    v26 = v32[3].__locale_;
  }

  v25 = v26 - locale;
  if ((v26 - locale) >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v25 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v29) = v26 - locale;
  if (v25)
  {
    memmove(&__dst, locale, v25);
  }

LABEL_25:
  *(&__dst + v25) = 0;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(a3, v39, v40, 0xAAAAAAAAAAAAAAABLL * ((v40 - v39) >> 3));
  *(a3 + 24) = __dst;
  *(a3 + 40) = v29;
  __p = *MEMORY[0x277D82828];
  *(&__p + *(__p - 3)) = *(MEMORY[0x277D82828] + 24);
  v31 = MEMORY[0x277D82878] + 16;
  if (v35 < 0)
  {
    operator delete(v34);
  }

  v31 = MEMORY[0x277D82868] + 16;
  std::locale::~locale(v32);
  std::ostream::~ostream();
  MEMORY[0x25F8516C0](&v38);
  __p = &v39;
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = v42;
}

void sub_25A2FD134(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a16);
  a16 = (v21 - 136);
  std::vector<std::vector<int>>::__destroy_vector::operator()[abi:ne200100](&a16);
  a16 = (v21 - 112);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::einsum_path_helper(const std::string::value_type **a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v338[2] = *MEMORY[0x277D85DE8];
  if (a2[1] == *a2)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v301);
    v239 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v301, "[", 1);
    v240 = *(a3 + 23);
    if (v240 >= 0)
    {
      v241 = a3;
    }

    else
    {
      v241 = *a3;
    }

    if (v240 >= 0)
    {
      v242 = *(a3 + 23);
    }

    else
    {
      v242 = a3[1];
    }

    v243 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v239, v241, v242);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v243, "] At least one operand is required.", 35);
    exception = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v301, &__p);
    std::logic_error::logic_error(exception, &__p);
    exception->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
  }

  if (*(a1 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__str, *a1, a1[1]);
  }

  else
  {
    __str = *a1;
  }

  memset(&__p, 0, sizeof(__p));
  memset(&v319, 0, sizeof(v319));
  size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_str = &__str;
  }

  else
  {
    p_str = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  v301[0] = 32;
  v9 = std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(p_str, p_str + size, v301);
  v10 = &__str + HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v11 = &__str;
  }

  else
  {
    v10 = (__str.__r_.__value_.__r.__words[0] + __str.__r_.__value_.__l.__size_);
    v11 = __str.__r_.__value_.__r.__words[0];
  }

  std::string::erase(&__str, v9 - v11, v10 - v9);
  v12 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v13 = &__str;
  }

  else
  {
    v13 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = __str.__r_.__value_.__l.__size_;
  }

  if (v12 >= 2)
  {
    v14 = v13 + v12;
    v15 = v13;
    do
    {
      v16 = memchr(v15, 45, v12 - 1);
      if (!v16)
      {
        break;
      }

      if (*v16 == 15917)
      {
        if (v16 == v14)
        {
          break;
        }

        v17 = v16 - v13;
        if (v16 - v13 == -1)
        {
          break;
        }

        std::string::basic_string(v301, &__str, 0, v17, v335);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        __p = *v301;
        std::string::basic_string(v301, &__str, v17 + 2, 0xFFFFFFFFFFFFFFFFLL, v335);
        if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v319.__r_.__value_.__l.__data_);
        }

        v319 = *v301;
        goto LABEL_49;
      }

      v15 = (v16 + 1);
      v12 = v14 - v15;
    }

    while (v14 - v15 >= 2);
  }

  v18 = &__str;
  std::string::operator=(&__p, &__str);
  memset(v301, 0, sizeof(v301));
  LODWORD(v302.__locale_) = 1065353216;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v19 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v19 = __str.__r_.__value_.__l.__size_;
    v18 = __str.__r_.__value_.__r.__words[0];
  }

  if (v19)
  {
    do
    {
      v20 = v18->__r_.__value_.__s.__data_[0];
      if (v20 != 44)
      {
        if (v20 != 46)
        {
          goto LABEL_40;
        }

        v21 = HIBYTE(v319.__r_.__value_.__r.__words[2]);
        if ((v319.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v21 = v319.__r_.__value_.__l.__size_;
        }

        if (!v21)
        {
          std::string::append(&v319, "...", 3uLL);
        }

        else
        {
LABEL_40:
          v335[0] = v18->__r_.__value_.__s.__data_[0];
          *&v335[4] = 0;
          v22 = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::pair<char const,int> const&>(v301, v335, v335);
          ++*(v22 + 5);
        }
      }

      v18 = (v18 + 1);
      --v19;
    }

    while (v19);
    v23 = *&v301[16];
    if (*&v301[16])
    {
      do
      {
        if (*(v23 + 5) == 1)
        {
          std::string::push_back(&v319, *(v23 + 16));
        }

        v23 = *v23;
      }

      while (v23);
    }
  }

  std::__sort<std::__less<char,char> &,char *>();
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v301);
LABEL_49:
  memset(v335, 0, 24);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v301, &__p, 24);
  memset(&v318, 0, sizeof(v318));
  while (1)
  {
    v24 = std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v301, &v318, 0x2Cu);
    if ((*(v24 + *(*v24 - 24) + 32) & 5) != 0)
    {
      break;
    }

    std::vector<std::string>::push_back[abi:ne200100](v335, &v318);
  }

  std::pair<std::vector<std::string>,std::string>::pair[abi:ne200100]<std::vector<std::string>&,std::string&,0>(&v299, v335, &v319);
  if (SHIBYTE(v318.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v318.__r_.__value_.__l.__data_);
  }

  *v301 = *MEMORY[0x277D82818];
  v25 = *(MEMORY[0x277D82818] + 72);
  *&v301[*(*v301 - 24)] = *(MEMORY[0x277D82818] + 64);
  *&v301[16] = v25;
  *&v301[24] = MEMORY[0x277D82878] + 16;
  if (v306 < 0)
  {
    operator delete(v305);
  }

  *&v301[24] = MEMORY[0x277D82868] + 16;
  std::locale::~locale(&v302);
  std::iostream::~basic_iostream();
  MEMORY[0x25F8516C0](&v307);
  *v301 = v335;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v301);
  if (SHIBYTE(v319.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v319.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((v299.__r_.__value_.__l.__size_ - v299.__r_.__value_.__r.__words[0]) >> 3) != (a2[1] - *a2) >> 4)
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](v301);
    v245 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v301, "[", 1);
    v246 = *(a3 + 23);
    if (v246 >= 0)
    {
      v247 = a3;
    }

    else
    {
      v247 = *a3;
    }

    if (v246 >= 0)
    {
      v248 = *(a3 + 23);
    }

    else
    {
      v248 = a3[1];
    }

    v249 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v245, v247, v248);
    v250 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v249, "] Number of operands, ", 22);
    v251 = MEMORY[0x25F851380](v250, (a2[1] - *a2) >> 4);
    v252 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v251, ", does not match number of input subscripts, ", 45);
    MEMORY[0x25F851380](v252, 0xAAAAAAAAAAAAAAABLL * ((v299.__r_.__value_.__l.__size_ - v299.__r_.__value_.__r.__words[0]) >> 3));
    v253 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v301, &__p);
    std::logic_error::logic_error(v253, &__p);
    v253->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v253, off_279921408, MEMORY[0x277D82610]);
  }

  v26 = *(a1 + 23);
  if (v26 >= 0)
  {
    v27 = a1;
  }

  else
  {
    v27 = *a1;
  }

  if (v26 < 0)
  {
    v26 = a1[1];
  }

  std::unordered_set<char>::unordered_set<std::__wrap_iter<char const*>>(v297, v27, &v26[v27]);
  memset(&v296, 0, sizeof(v296));
  std::string::reserve(&v296, 52 - v297[3]);
  v301[0] = 97;
  do
  {
    if (!std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>(v297, v301))
    {
      std::string::push_back(&v296, v301[0]);
    }

    ++v301[0];
  }

  while (v301[0] < 123);
  v301[0] = 65;
  do
  {
    if (!std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>(v297, v301))
    {
      std::string::push_back(&v296, v301[0]);
    }

    ++v301[0];
  }

  while (v301[0] < 91);
  v295 = 0;
  v294[0] = a3;
  v294[1] = &v295;
  v294[2] = &v296;
  v28 = *a2;
  if (a2[1] != *a2)
  {
    v29 = 0;
    v30 = 0;
    v31 = 0;
    do
    {
      ++v31;
      v28 = *a2;
      v30 += 16;
      v29 += 24;
    }

    while (v31 < (a2[1] - *a2) >> 4);
  }

  v32 = HIBYTE(__s.__r_.__value_.__r.__words[2]);
  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_s = &__s;
  }

  else
  {
    p_s = __s.__r_.__value_.__r.__words[0];
  }

  if ((__s.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v32 = __s.__r_.__value_.__l.__size_;
  }

  std::unordered_set<char>::unordered_set<std::__wrap_iter<char const*>>(&v289, p_s, p_s + v32);
  v34 = __sz;
  if ((SHIBYTE(__s.__r_.__value_.__r.__words[2]) & 0x8000000000000000) == 0)
  {
    if (__sz == SHIBYTE(__s.__r_.__value_.__r.__words[2]))
    {
      v284 = __s;
      goto LABEL_89;
    }

LABEL_404:
    std::ostringstream::basic_ostringstream[abi:ne200100](v301);
    v254 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v301, "[", 1);
    v255 = *(a3 + 23);
    if (v255 >= 0)
    {
      v256 = a3;
    }

    else
    {
      v256 = *a3;
    }

    if (v255 >= 0)
    {
      v257 = *(a3 + 23);
    }

    else
    {
      v257 = a3[1];
    }

    v258 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v254, v256, v257);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v258, "] Repeat indices not allowed in output.", 39);
    v259 = __cxa_allocate_exception(0x10uLL);
    std::ostringstream::str[abi:ne200100](v301, &__p);
    std::logic_error::logic_error(v259, &__p);
    v259->__vftable = (MEMORY[0x277D828F8] + 16);
    __cxa_throw(v259, off_279921408, MEMORY[0x277D82610]);
  }

  if (__sz != __s.__r_.__value_.__l.__size_)
  {
    goto LABEL_404;
  }

  std::string::__init_copy_ctor_external(&v284, __s.__r_.__value_.__l.__data_, __sz);
  v34 = __sz;
LABEL_89:
  v35 = v289;
  v36 = v290;
  v290 = 0;
  v289 = 0;
  v37 = v291;
  v280[0] = v35;
  v281 = v291;
  v282 = v34;
  v38 = v293;
  v283 = v293;
  if (v34)
  {
    v39 = *(v291 + 8);
    if ((v36 & (v36 - 1)) != 0)
    {
      if (v39 >= v36)
      {
        v39 %= v36;
      }
    }

    else
    {
      v39 &= v36 - 1;
    }

    *(v35 + 8 * v39) = &v281;
    v291 = 0;
    __sz = 0;
    v35 = v280[0];
    v37 = v281;
  }

  *&__p.__r_.__value_.__l.__data_ = *&v284.__r_.__value_.__l.__data_;
  v40 = v284.__r_.__value_.__r.__words[2];
  memset(&v284, 0, sizeof(v284));
  v280[0] = 0;
  v280[1] = 0;
  __p.__r_.__value_.__r.__words[2] = v40;
  v286[0] = v35;
  v286[1] = v36;
  v287[0] = v37;
  v287[1] = v34;
  v288 = v38;
  if (v34)
  {
    v41 = *(v37 + 8);
    if ((v36 & (v36 - 1)) != 0)
    {
      if (v41 >= v36)
      {
        v41 %= v36;
      }
    }

    else
    {
      v41 &= v36 - 1;
    }

    *(v35 + 8 * v41) = v287;
    v281 = 0;
    v282 = 0;
  }

  v264 = a3;
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v280);
  if (SHIBYTE(v284.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v284.__r_.__value_.__l.__data_);
  }

  memset(v278, 0, sizeof(v278));
  v279 = 1065353216;
  v276 = 0uLL;
  v277 = 0;
  v42 = v299.__r_.__value_.__r.__words[0];
  if (v299.__r_.__value_.__l.__size_ != v299.__r_.__value_.__r.__words[0])
  {
    v43 = 0;
    do
    {
      v44 = v42 + 24 * v43;
      v45 = *(v44 + 23);
      if (v45 < 0)
      {
        v46 = *v44;
        v45 = *(v44 + 8);
      }

      else
      {
        v46 = v44;
      }

      std::unordered_set<char>::unordered_set<std::__wrap_iter<char const*>>(&v319, v46, &v46[v45]);
      v47 = *(&v276 + 1);
      if (*(&v276 + 1) >= v277)
      {
        v49 = (*(&v276 + 1) - v276) >> 6;
        if ((v49 + 1) >> 58)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v50 = (v277 - v276) >> 5;
        if (v50 <= v49 + 1)
        {
          v50 = v49 + 1;
        }

        if (v277 - v276 >= 0x7FFFFFFFFFFFFFC0)
        {
          v51 = 0x3FFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v50;
        }

        v302.__locale_ = &v276;
        if (v51)
        {
        }

        *v301 = 0;
        *&v301[8] = v49 << 6;
        *&v301[16] = v49 << 6;
        *&v301[24] = 0;
        *&v301[16] += 64;
        v48 = *(&v276 + 1);
      }

      else
      {
        v48 = v47 + 64;
      }

      *(&v276 + 1) = v48;
      v52 = *(v44 + 23);
      if ((v52 & 0x8000000000000000) != 0)
      {
        v53 = *(v44 + 8);
      }

      else
      {
        v53 = *(v44 + 23);
      }

      if (v53 != (*(*(*a2 + 16 * v43) + 8) - **(*a2 + 16 * v43)) >> 2)
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](v301);
        v226 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v301, "[", 1);
        v227 = *(v264 + 23);
        if (v227 >= 0)
        {
          v228 = v264;
        }

        else
        {
          v228 = *v264;
        }

        if (v227 >= 0)
        {
          v229 = *(v264 + 23);
        }

        else
        {
          v229 = v264[1];
        }

        v230 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v226, v228, v229);
        v231 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v230, "] Invalid number of subscripts ", 31);
        v232 = *(v44 + 23);
        if (v232 < 0)
        {
          v232 = *(v44 + 8);
        }

        v233 = MEMORY[0x25F851380](v231, v232);
        v234 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v233, " for input ", 11);
        v235 = MEMORY[0x25F851360](v234, v43);
        v236 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v235, " with ", 6);
        v237 = MEMORY[0x25F851380](v236, (*(*(*a2 + 16 * v43) + 8) - **(*a2 + 16 * v43)) >> 2);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v237, " dimensions.", 12);
        v238 = __cxa_allocate_exception(0x10uLL);
        std::ostringstream::str[abi:ne200100](v301, v335);
        std::logic_error::logic_error(v238, v335);
        v238->__vftable = (MEMORY[0x277D828F8] + 16);
        __cxa_throw(v238, off_279921408, MEMORY[0x277D82610]);
      }

      if ((v52 & 0x80000000) != 0)
      {
        v52 = *(v44 + 8);
      }

      if (v320 < v52)
      {
        v54 = 0;
        memset(v335, 0, sizeof(v335));
        LODWORD(v336) = 1065353216;
        while (1)
        {
          v55 = *(v44 + 23);
          if ((v55 & 0x8000000000000000) != 0)
          {
            v55 = *(v44 + 8);
          }

          if (v55 <= v54)
          {
            break;
          }

          v56 = mlx::core::array::shape((*a2 + 16 * v43), v54);
          v57 = v56;
          v58 = v44;
          if (*(v44 + 23) < 0)
          {
            v58 = *v44;
          }

          v301[0] = v58[v54];
          *&v301[4] = v56;
          v59 = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::pair<char const,int> const&>(v335, v301, v301);
          if ((v60 & 1) == 0)
          {
            v61 = v59;
            if (*(v59 + 5) != v57)
            {
              std::ostringstream::basic_ostringstream[abi:ne200100](v301);
              v215 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v301, "[", 1);
              v216 = *(v264 + 23);
              if (v216 >= 0)
              {
                v217 = v264;
              }

              else
              {
                v217 = *v264;
              }

              if (v216 >= 0)
              {
                v218 = *(v264 + 23);
              }

              else
              {
                v218 = v264[1];
              }

              v219 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v215, v217, v218);
              v220 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v219, "] Dimensions of repeated subscripts ", 36);
              v221 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v220, "do not have the same size (", 27);
              v222 = MEMORY[0x25F851360](v221, *(v61 + 5));
              v223 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v222, " != ", 4);
              v224 = MEMORY[0x25F851360](v223, v57);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v224, ").", 2);
              v225 = __cxa_allocate_exception(0x10uLL);
              std::ostringstream::str[abi:ne200100](v301, &v318);
              std::logic_error::logic_error(v225, &v318);
              v225->__vftable = (MEMORY[0x277D828F8] + 16);
              __cxa_throw(v225, off_279921408, MEMORY[0x277D82610]);
            }
          }

          ++v54;
        }

        std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v335);
      }

      for (i = 0; ; ++i)
      {
        v63 = *(v44 + 23);
        v64 = v63 < 0 ? *(v44 + 8) : *(v44 + 23);
        if (v64 <= i)
        {
          break;
        }

        v65 = v44;
        if ((v63 & 0x80000000) != 0)
        {
          v65 = *v44;
        }

        v66 = v65[i];
        v67 = mlx::core::array::shape((*a2 + 16 * v43), i);
        v301[0] = v66;
        *&v301[4] = v67;
        v68 = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::pair<char const,int> const&>(v278, v301, v301);
        v69 = v68;
        v70 = *(v68 + 5);
        if (v67 != 1 && v70 != 1 && v70 != v67)
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](v301);
          v201 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v301, "[", 1);
          v202 = *(v264 + 23);
          if (v202 >= 0)
          {
            v203 = v264;
          }

          else
          {
            v203 = *v264;
          }

          if (v202 >= 0)
          {
            v204 = *(v264 + 23);
          }

          else
          {
            v204 = v264[1];
          }

          v205 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v201, v203, v204);
          v206 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v205, "] Cannot broadcast dimension ", 29);
          v207 = MEMORY[0x25F851360](v206, i);
          v208 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v207, " of input ", 10);
          v209 = MEMORY[0x25F851360](v208, v43);
          v210 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v209, " with shape ", 12);
          v211 = mlx::core::operator<<(v210, *(*a2 + 16 * v43));
          v212 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v211, " to size ", 9);
          v213 = MEMORY[0x25F851360](v212, *(v69 + 5));
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v213, ".", 1);
          v214 = __cxa_allocate_exception(0x10uLL);
          std::ostringstream::str[abi:ne200100](v301, v335);
          std::logic_error::logic_error(v214, v335);
          v214->__vftable = (MEMORY[0x277D828F8] + 16);
          __cxa_throw(v214, off_279921408, MEMORY[0x277D82610]);
        }

        if (v70 <= v67)
        {
          v70 = v67;
        }

        *(v68 + 5) = v70;
      }

      std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v319);
      ++v43;
      v42 = v299.__r_.__value_.__r.__words[0];
    }

    while (0xAAAAAAAAAAAAAAABLL * ((v299.__r_.__value_.__l.__size_ - v299.__r_.__value_.__r.__words[0]) >> 3) > v43);
  }

  std::unordered_map<char,int>::unordered_map(v275, v278);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v275);
  v74 = v299.__r_.__value_.__l.__size_;
  for (j = v299.__r_.__value_.__r.__words[0]; j != v74; j += 24)
  {
    std::unordered_map<char,int>::unordered_map(v274, v278);
    if (v73 <= v76)
    {
      v73 = v76;
    }

    std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v274);
  }

  std::unordered_map<char,int>::unordered_map(v273, v278);
  v79 = v78;
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v273);
  v271[0] = 0;
  v271[1] = 0;
  v272 = 0;
  v261 = v79;
  if (*(&v276 + 1) - v276 <= 0x80uLL)
  {
    std::vector<int>::vector[abi:ne200100](&v319, 0xAAAAAAAAAAAAAAABLL * ((v299.__r_.__value_.__l.__size_ - v299.__r_.__value_.__r.__words[0]) >> 3));
    if (v319.__r_.__value_.__r.__words[0] != v319.__r_.__value_.__l.__size_)
    {
      v80 = 0;
      v81 = (v319.__r_.__value_.__l.__size_ - v319.__r_.__value_.__r.__words[0] - 4) >> 2;
      v82 = vdupq_n_s64(v81);
      v83 = (v81 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v84 = (v319.__r_.__value_.__r.__words[0] + 8);
      do
      {
        v85 = vdupq_n_s64(v80);
        v86 = vmovn_s64(vcgeq_u64(v82, vorrq_s8(v85, xmmword_25A99B0D0)));
        if (vuzp1_s16(v86, *v82.i8).u8[0])
        {
          *(v84 - 2) = v80;
        }

        if (vuzp1_s16(v86, *&v82).i8[2])
        {
          *(v84 - 1) = v80 + 1;
        }

        if (vuzp1_s16(*&v82, vmovn_s64(vcgeq_u64(v82, vorrq_s8(v85, xmmword_25A99B0C0)))).i32[1])
        {
          *v84 = v80 + 2;
          v84[1] = v80 + 3;
        }

        v80 += 4;
        v84 += 4;
      }

      while (v83 != v80);
    }

    if (v271[1] >= v272)
    {
      v106 = 0x6DB6DB6DB6DB6DB7 * ((v271[1] - v271[0]) >> 4);
      if ((v106 + 1) > 0x249249249249249)
      {
        std::vector<int>::__throw_length_error[abi:ne200100]();
      }

      v107 = 0xDB6DB6DB6DB6DB6ELL * ((v272 - v271[0]) >> 4);
      if (v107 <= v106 + 1)
      {
        v107 = v106 + 1;
      }

      if ((0x6DB6DB6DB6DB6DB7 * ((v272 - v271[0]) >> 4)) >= 0x124924924924924)
      {
        v108 = 0x249249249249249;
      }

      else
      {
        v108 = v107;
      }

      v302.__locale_ = v271;
      if (v108)
      {
      }

      *v301 = 0;
      *&v301[8] = 16 * ((v271[1] - v271[0]) >> 4);
      *&v301[24] = 0;
      *&v301[16] = 112 * v106 + 112;
      v87 = v271[1];
    }

    else
    {
      v87 = v271[1] + 112;
    }

    v271[1] = v87;
    v200 = a4;
    if (v319.__r_.__value_.__r.__words[0])
    {
      v319.__r_.__value_.__l.__size_ = v319.__r_.__value_.__r.__words[0];
      operator delete(v319.__r_.__value_.__l.__data_);
    }

    goto LABEL_354;
  }

  std::unordered_map<char,int>::unordered_map(v265, v278);
  v260 = v77;
  v333 = v73;
  v334 = v77;
  v330 = 0;
  v331 = 0;
  v332 = 0;
  v88 = *(&v266 + 1);
  v89 = v266;
  if (*(&v266 + 1) == v266)
  {
    v94 = (*(&v266 + 1) - v266) >> 6;
  }

  else
  {
    v90 = 0;
    v91 = 0;
    v92 = 1;
    do
    {
      v93 = v91 + 1;
      v94 = (v88 - v89) >> 6;
      if (v94 > v91 + 1)
      {
        v95 = v92;
        do
        {
          if (v90 >= v332)
          {
            v96 = v330;
            v97 = v90 - v330;
            v98 = (v90 - v330) >> 3;
            v99 = v98 + 1;
            if ((v98 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v100 = v332 - v330;
            if ((v332 - v330) >> 2 > v99)
            {
              v99 = v100 >> 2;
            }

            if (v100 >= 0x7FFFFFFFFFFFFFF8)
            {
              v101 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v101 = v99;
            }

            if (v101)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(&v330, v101);
            }

            v102 = (v90 - v330) >> 3;
            v103 = (8 * v98);
            *v103 = v91;
            v103[1] = v95;
            v90 = (8 * v98 + 8);
            v104 = (8 * v98 - 8 * v102);
            memcpy(&v103[-2 * v102], v96, v97);
            v105 = v330;
            v330 = v104;
            v331 = v90;
            v332 = 0;
            if (v105)
            {
              operator delete(v105);
            }
          }

          else
          {
            *v90 = v91;
            *(v90 + 1) = v95;
            v90 += 8;
          }

          v331 = v90;
          ++v95;
          v88 = *(&v266 + 1);
          v89 = v266;
          v94 = (*(&v266 + 1) - v266) >> 6;
        }

        while (v94 > v95);
      }

      ++v92;
      ++v91;
    }

    while (v94 > v93);
  }

  v327 = 0;
  v328 = 0;
  v329 = 0;
  v325[1] = 0;
  v325[0] = 0;
  v326 = 0;
  v324 = 0;
  v263 = v94 - 1;
  if (v94 != 1)
  {
    v109 = 0;
    v110 = 0;
    v111 = 0x249249249249249;
    while (1)
    {
      v319.__r_.__value_.__r.__words[0] = &v266;
      v319.__r_.__value_.__l.__size_ = &__p;
      v319.__r_.__value_.__r.__words[2] = v265;
      v320 = &v333;
      v321 = &v324;
      v322 = &v334;
      v323 = v325;
      v112 = v330;
      v113 = v331;
      while (v112 != v113)
      {
        v114 = v266 + (v112[1] << 6);
        v115 = (v266 + (*v112 << 6) + 40);
        while (1)
        {
          v115 = *v115;
          if (!v115)
          {
            break;
          }

          if (std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>((v114 + 24), v115 + 16))
          {
            break;
          }
        }

        v112 += 2;
      }

      v116 = v325[0];
      v117 = v325[1];
      if (v325[0] == v325[1])
      {
        v118 = v330;
        v119 = v331;
        if (v330 != v331)
        {
          do
          {
            v118 += 2;
          }

          while (v118 != v119);
          v116 = v325[0];
          v117 = v325[1];
        }
      }

      if (v116 == v117)
      {
        std::vector<int>::vector[abi:ne200100](v335, (*(&v266 + 1) - v266) >> 6);
        if (*v335 != *&v335[8])
        {
          v125 = 0;
          v126 = (*&v335[8] - *v335 - 4) >> 2;
          v127 = vdupq_n_s64(v126);
          v128 = (*v335 + 8);
          do
          {
            v129 = vdupq_n_s64(v125);
            v130 = vmovn_s64(vcgeq_u64(v127, vorrq_s8(v129, xmmword_25A99B0D0)));
            if (vuzp1_s16(v130, *v127.i8).u8[0])
            {
              *(v128 - 2) = v125;
            }

            if (vuzp1_s16(v130, *&v127).i8[2])
            {
              *(v128 - 1) = v125 + 1;
            }

            if (vuzp1_s16(*&v127, vmovn_s64(vcgeq_u64(v127, vorrq_s8(v129, xmmword_25A99B0C0)))).i32[1])
            {
              *v128 = v125 + 2;
              v128[1] = v125 + 3;
            }

            v125 += 4;
            v128 += 4;
          }

          while (((v126 + 4) & 0x7FFFFFFFFFFFFFFCLL) != v125);
        }

        std::unordered_map<char,int>::unordered_map(&v318, v265);
        v133 = v132;
        std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v318);
        v134 = v328;
        if (v328 >= v329)
        {
          v149 = 0x6DB6DB6DB6DB6DB7 * ((v328 - v327) >> 4) + 1;
          if (v149 > v111)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v329 - v327) >> 4) > v149)
          {
            v149 = 0xDB6DB6DB6DB6DB6ELL * ((v329 - v327) >> 4);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v329 - v327) >> 4)) >= 0x124924924924924)
          {
            v150 = v111;
          }

          else
          {
            v150 = v149;
          }

          v302.__locale_ = &v327;
          if (v150)
          {
          }

          *v301 = 0;
          *&v301[8] = 16 * ((v328 - v327) >> 4);
          *&v301[16] = *&v301[8];
          *&v301[24] = 0;
          *&v301[16] += 112;
          v135 = v328;
        }

        else
        {
          v135 = v134 + 112;
        }

        v328 = v135;
        v324 += v131;
        if (v110 <= v133)
        {
          v110 = v133;
        }

        v193 = *v335;
        if (!*v335)
        {
          goto LABEL_337;
        }

        *&v335[8] = *v335;
      }

      else
      {
        v120 = v116 + 72;
        v121 = v116;
        if (v116 + 72 != v117)
        {
          v121 = v116;
          do
          {
            if (*v120 > *v121 || *v120 == *v121 && *(v120 + 1) < *(v121 + 1))
            {
              v121 = v120;
            }

            v120 += 72;
          }

          while (v120 != v117);
        }

        if (*(v121 + 14) > v110)
        {
          v110 = *(v121 + 14);
        }

        v122 = *(v121 + 4);
        if (v122)
        {
          v123 = 0;
          v124 = *(v121 + 4);
          do
          {
            ++v123;
            v124 = *v124;
          }

          while (v124);
        }

        else
        {
          v123 = 0;
        }

        std::string::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<char,void *> *>,std::__hash_const_iterator<std::__hash_node<char,void *> *>>(&v316, v122, 0, v123);
        v136 = HIBYTE(v317);
        if (v317 >= 0)
        {
          v137 = &v316;
        }

        else
        {
          v137 = v316;
        }

        if (v317 < 0)
        {
          v136 = v317;
        }

        *v301 = v265;
        v138 = 126 - 2 * __clz(v136);
        if (v136)
        {
          v139 = v138;
        }

        else
        {
          v139 = 0;
        }

        v140 = v316;
        v338[0] = v317;
        *(v338 + 7) = *(&v317 + 7);
        v141 = HIBYTE(v317);
        v316 = 0;
        v317 = 0uLL;
        std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(&v311, v121 + 2);
        *v301 = v140;
        *&v301[8] = v338[0];
        *&v301[15] = *(v338 + 7);
        v301[23] = v141;
        v338[0] = 0;
        *(v338 + 7) = 0;
        v142 = v311;
        v143 = v312;
        v312 = 0;
        v311 = 0;
        *&v301[24] = v142;
        v302.__locale_ = v143;
        v303[0] = v313;
        v303[1] = v314;
        v304 = v315;
        if (v314)
        {
          v144 = *(v313 + 8);
          if ((v143 & (v143 - 1)) != 0)
          {
            if (v144 >= v143)
            {
              v144 %= v143;
            }
          }

          else
          {
            v144 &= v143 - 1;
          }

          *(v142 + 8 * v144) = v303;
          v313 = 0;
          v314 = 0;
        }

        std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v311);
        v309 = 0uLL;
        v310 = 0;
        v337 = *(v121 + 60);
        memset(v308, 0, sizeof(v308));
        std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(v308, &v337, v338, 2uLL);
        v145 = v328;
        if (v328 >= v329)
        {
          v147 = 0x6DB6DB6DB6DB6DB7 * ((v328 - v327) >> 4) + 1;
          if (v147 > v111)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0xDB6DB6DB6DB6DB6ELL * ((v329 - v327) >> 4) > v147)
          {
            v147 = 0xDB6DB6DB6DB6DB6ELL * ((v329 - v327) >> 4);
          }

          if ((0x6DB6DB6DB6DB6DB7 * ((v329 - v327) >> 4)) >= 0x124924924924924)
          {
            v148 = v111;
          }

          else
          {
            v148 = v147;
          }

          v336 = &v327;
          if (v148)
          {
          }

          *v335 = 0;
          *&v335[8] = 16 * ((v328 - v327) >> 4);
          *&v335[16] = *&v335[8];
          *&v335[24] = 0;
          *&v335[16] += 112;
          v146 = v328;
        }

        else
        {
          v146 = v145 + 112;
        }

        v151 = v111;
        v328 = v146;
        if (v308[0])
        {
          v308[1] = v308[0];
          operator delete(v308[0]);
        }

        v152 = v110;
        *v335 = &v309;
        v153 = *(&v266 + 1);
        v154 = v266 + (*(v121 + 16) << 6);
        if (v154 + 64 != *(&v266 + 1))
        {
          do
          {
            if (*(v154 + 23) < 0)
            {
              operator delete(*v154);
            }

            *v154 = *(v154 + 64);
            *(v154 + 16) = *(v154 + 80);
            *(v154 + 87) = 0;
            *(v154 + 64) = 0;
            v155 = v154 + 64;
            std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__move_assign(v154 + 24, (v154 + 88));
            v156 = v154 + 128;
            v154 += 64;
          }

          while (v156 != v153);
          v153 = *(&v266 + 1);
          v154 = v155;
        }

        while (v153 != v154)
        {
          v153 -= 64;
        }

        *(&v266 + 1) = v154;
        v157 = v266 + (*(v121 + 15) << 6);
        if (v157 + 64 == v154)
        {
          v158 = v266 + (*(v121 + 15) << 6);
        }

        else
        {
          do
          {
            if (*(v157 + 23) < 0)
            {
              operator delete(*v157);
            }

            *v157 = *(v157 + 64);
            *(v157 + 16) = *(v157 + 80);
            *(v157 + 87) = 0;
            *(v157 + 64) = 0;
            v158 = v157 + 64;
            std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__move_assign(v157 + 24, (v157 + 88));
            v159 = v157 + 128;
            v157 += 64;
          }

          while (v159 != v154);
          v154 = *(&v266 + 1);
        }

        while (v154 != v158)
        {
          v154 -= 64;
        }

        *(&v266 + 1) = v158;
        v309 = 0uLL;
        v310 = 0;
        v160 = v325[0];
        v161 = v325[1];
        if (v325[0] != v325[1])
        {
          v162 = 0;
          do
          {
            v163 = *(v160 + 15);
            v164 = *(v121 + 15);
            if (v163 != v164)
            {
              v165 = *(v121 + 16);
              if (v163 != v165)
              {
                v166 = *(v160 + 16);
                if (v166 != v164 && v166 != v165)
                {
                  *(v160 + 15) = v163 - (v163 > v164) - (v163 > v165);
                  *(v160 + 16) = v166 - (v166 > v164) - (v166 > v165);
                  if (v162 >= v310)
                  {
                    v169 = 0x8E38E38E38E38E39 * ((v162 - v309) >> 3);
                    v170 = v169 + 1;
                    if ((v169 + 1) > 0x38E38E38E38E38ELL)
                    {
                      std::vector<int>::__throw_length_error[abi:ne200100]();
                    }

                    if (0x1C71C71C71C71C72 * ((v310 - v309) >> 3) > v170)
                    {
                      v170 = 0x1C71C71C71C71C72 * ((v310 - v309) >> 3);
                    }

                    if (0x8E38E38E38E38E39 * ((v310 - v309) >> 3) >= 0x1C71C71C71C71C7)
                    {
                      v171 = 0x38E38E38E38E38ELL;
                    }

                    else
                    {
                      v171 = v170;
                    }

                    v172 = *&v335[16];
                    **&v335[16] = *v160;
                    std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(v172 + 16, v160 + 2);
                    v173 = *(v160 + 7);
                    *(v172 + 64) = *(v160 + 16);
                    *(v172 + 56) = v173;
                    *&v335[16] += 72;
                    v162 = *(&v309 + 1);
                  }

                  else
                  {
                    *v162 = *v160;
                    std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(v162 + 16, v160 + 2);
                    v168 = *(v160 + 7);
                    *(v162 + 64) = *(v160 + 16);
                    *(v162 + 56) = v168;
                    v162 += 72;
                  }

                  *(&v309 + 1) = v162;
                }
              }
            }

            v160 += 72;
          }

          while (v160 != v161);
        }

        v174 = v330;
        v331 = v330;
        v175 = (*(&v266 + 1) - v266) >> 6;
        LODWORD(v176) = v175 - 1;
        if (v175 != 1)
        {
          v177 = 0;
          do
          {
            if (v174 >= v332)
            {
              v178 = v330;
              v179 = v174 - v330;
              v180 = (v174 - v330) >> 3;
              v181 = v180 + 1;
              if ((v180 + 1) >> 61)
              {
                std::vector<int>::__throw_length_error[abi:ne200100]();
              }

              v182 = v332 - v330;
              if ((v332 - v330) >> 2 > v181)
              {
                v181 = v182 >> 2;
              }

              v183 = v182 >= 0x7FFFFFFFFFFFFFF8;
              v184 = 0x1FFFFFFFFFFFFFFFLL;
              if (!v183)
              {
                v184 = v181;
              }

              if (v184)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<int,int>>>(&v330, v184);
              }

              v185 = v180;
              v186 = (8 * v180);
              *v186 = v177;
              v186[1] = v176;
              v174 = (8 * v180 + 8);
              v187 = &v186[-2 * v185];
              memcpy(v187, v178, v179);
              v188 = v330;
              v330 = v187;
              v331 = v174;
              v332 = 0;
              if (v188)
              {
                operator delete(v188);
              }
            }

            else
            {
              *v174 = v177;
              *(v174 + 1) = v176;
              v174 += 8;
            }

            v331 = v174;
            ++v177;
            v176 = ((*(&v266 + 1) - v266) >> 6) - 1;
          }

          while (v176 > v177);
        }

        v324 += *(v121 + 1);
        v189 = v325[0];
        v110 = v152;
        v111 = v151;
        if (v325[0])
        {
          v190 = v325[1];
          v191 = v325[0];
          if (v325[1] != v325[0])
          {
            do
            {
              v192 = v190 - 72;
              std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table((v190 - 56));
              v190 = v192;
            }

            while (v192 != v189);
            v191 = v325[0];
          }

          v325[1] = v189;
          operator delete(v191);
        }

        *v325 = v309;
        v326 = v310;
        v310 = 0;
        v309 = 0uLL;
        std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v301[24]);
        if ((v301[23] & 0x80000000) != 0)
        {
          operator delete(*v301);
        }

        if ((SHIBYTE(v317) & 0x80000000) == 0)
        {
          goto LABEL_337;
        }

        v193 = v316;
      }

      operator delete(v193);
LABEL_337:
      if (v116 != v117 && ++v109 != v263)
      {
        continue;
      }

      goto LABEL_341;
    }
  }

  v110 = 0;
LABEL_341:
  v269 = v324;
  v270 = v110;
  *v301 = &v327;
  v77 = v260;
  if (v330)
  {
    v331 = v330;
    operator delete(v330);
  }

  v194 = v271[0];
  if (v271[0])
  {
    v195 = v271[1];
    v196 = v271[0];
    if (v271[1] != v271[0])
    {
      do
      {
        v195 -= 112;
      }

      while (v195 != v194);
      v196 = v271[0];
    }

    v271[1] = v194;
    operator delete(v196);
  }

  *v271 = v267;
  v87 = v269;
  v272 = v268;
  v268 = 0;
  v267 = 0uLL;
  v79 = v270;
  *v301 = &v267;
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v265);
  *v301 = &v266;
  v197 = v271[1];
  v198 = v271[1] - 88;
  if (*(v271[1] - 65) < 0)
  {
    operator delete(*v198);
  }

  v199 = *&__p.__r_.__value_.__l.__data_;
  *(v198 + 2) = *(&__p.__r_.__value_.__l + 2);
  *v198 = v199;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__move_assign(v197 - 64, v286);
  v200 = a4;
LABEL_354:
  v200[3] = v77;
  v200[4] = v261;
  v200[5] = v87;
  v200[6] = v79;
  *v301 = v271;
  *v301 = &v276;
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v278);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v286);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v289);
  if (SHIBYTE(v296.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v296.__r_.__value_.__l.__data_);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v297);
  if (SHIBYTE(__s.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__s.__r_.__value_.__l.__data_);
  }

  *v301 = &v299;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v301);
}

void sub_25A2FF1F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
    if ((v67 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&STACK[0x300]);
      std::pair<std::vector<std::string>,std::string>::~pair(&STACK[0x2D0]);
      _Unwind_Resume(a1);
    }
  }

  else if (!v67)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v66);
  goto LABEL_6;
}

void mlx::core::einsum(const std::string::value_type **a1@<X0>, uint64_t *a2@<X1>, mlx::core *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  std::string::basic_string[abi:ne200100]<0>(&v240, "einsum");
  if (SBYTE7(v241) < 0)
  {
    operator delete(v240);
  }

  v227 = 0;
  v226 = 0;
  v228 = 0;
  std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(&v226, *a2, a2[1], (a2[1] - *a2) >> 4);
  v10 = v229[0];
  if (v229[0] != v229[1])
  {
    v12 = *v229[0];
    v11 = *(v229[0] + 8);
    v203 = v229[0];
    if (v11 != *v229[0])
    {
      v13 = 0;
      do
      {
        v14 = (v12 + (v13 << 6));
        v15 = v14[23];
        if ((v15 & 0x8000000000000000) != 0)
        {
          v15 = *(v14 + 1);
        }

        if (*(v14 + 6) < v15)
        {
          v233 = *&v226[16 * *(*(v229[0] + 88) + 4 * v13)];
          if (*(&v233 + 1))
          {
            atomic_fetch_add_explicit((*(&v233 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          __src = 0uLL;
          *&v220 = 0;
          memset(&v238, 0, sizeof(v238));
          memset(&v237, 0, sizeof(v237));
          v240 = 0u;
          v241 = 0u;
          LODWORD(v242) = 1065353216;
          v16 = v14[23];
          v17 = *(v14 + 1);
          if ((v16 & 0x80000000) == 0)
          {
            v18 = v14[23];
          }

          else
          {
            v18 = *(v14 + 1);
          }

          if (v18)
          {
            v19 = 0;
            v20 = v16 >> 63;
            do
            {
              v21 = *v14;
              if ((v20 & 1) == 0)
              {
                v21 = (v12 + (v13 << 6));
              }

              v236.__r_.__value_.__s.__data_[0] = v21[v19];
              HIDWORD(v236.__r_.__value_.__r.__words[0]) = 0;
              v22 = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::pair<char const,int> const&>(&v240, &v236, &v236);
              ++*(v22 + 5);
              ++v19;
              v16 = v14[23];
              v20 = v16 >> 63;
              v17 = *(v14 + 1);
              if ((v16 & 0x80000000) == 0)
              {
                v23 = v14[23];
              }

              else
              {
                v23 = *(v14 + 1);
              }
            }

            while (v23 > v19);
            v24 = v241;
            if (v241)
            {
              do
              {
                v25 = *(v24 + 5);
                if (v25 >= 2)
                {
                  v26 = *(&__src + 1);
                  if (*(&__src + 1) >= v220)
                  {
                    v28 = __src;
                    v29 = *(&__src + 1) - __src;
                    v30 = (*(&__src + 1) - __src) >> 3;
                    v31 = v30 + 1;
                    if ((v30 + 1) >> 61)
                    {
                      std::vector<int>::__throw_length_error[abi:ne200100]();
                    }

                    v32 = v220 - __src;
                    if ((v220 - __src) >> 2 > v31)
                    {
                      v31 = v32 >> 2;
                    }

                    v33 = v32 >= 0x7FFFFFFFFFFFFFF8;
                    v34 = 0x1FFFFFFFFFFFFFFFLL;
                    if (!v33)
                    {
                      v34 = v31;
                    }

                    if (v34)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,int>>>(&__src, v34);
                    }

                    v35 = (*(&__src + 1) - __src) >> 3;
                    v36 = 8 * v30;
                    *v36 = *(v24 + 16);
                    *(v36 + 4) = v25;
                    v27 = 8 * v30 + 8;
                    v37 = (v36 - 8 * v35);
                    memcpy(v37, v28, v29);
                    v38 = __src;
                    *&__src = v37;
                    *(&__src + 1) = v27;
                    *&v220 = 0;
                    if (v38)
                    {
                      operator delete(v38);
                    }
                  }

                  else
                  {
                    **(&__src + 1) = *(v24 + 16);
                    *(v26 + 4) = v25;
                    v27 = v26 + 8;
                  }

                  *(&__src + 1) = v27;
                  std::string::push_back(&v238, *(v24 + 16));
                }

                v24 = *v24;
              }

              while (v24);
              v16 = v14[23];
              v17 = *(v14 + 1);
            }
          }

          if ((v16 & 0x80u) == 0)
          {
            v39 = v14;
          }

          else
          {
            v39 = *v14;
          }

          if ((v16 & 0x80u) == 0)
          {
            v40 = v16;
          }

          else
          {
            v40 = v17;
          }

          for (; v40; --v40)
          {
            v236.__r_.__value_.__r.__words[0] = v39;
            if (*(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(&v240, v39, &std::piecewise_construct, &v236.__r_.__value_.__l.__data_) + 5) == 1)
            {
              std::string::push_back(&v237, *v39);
            }

            ++v39;
          }

          std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(&v238.__r_.__value_.__l.__data_, &v237.__r_.__value_.__l.__data_, &v236);
          __str = v236;
          std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v240);
          if (SHIBYTE(v237.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v237.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v238.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v238.__r_.__value_.__l.__data_);
          }

          *&v241 = 0;
          v240 = 0uLL;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v240, *v233, *(v233 + 8), (*(v233 + 8) - *v233) >> 2);
          memset(&v238, 0, sizeof(v238));
          memset(&v237, 0, sizeof(v237));
          if (__src != *(&__src + 1))
          {
            v41 = ((*(&__src + 1) - __src) >> 3);
            v42 = *__src;
            LODWORD(v236.__r_.__value_.__l.__data_) = 0;
            v43 = v14[23];
            v44 = v14[23] < 0;
            v45 = *(v14 + 1);
            if (v14[23] >= 0)
            {
              v46 = v14[23];
            }

            else
            {
              v46 = *(v14 + 1);
            }

            if (v46)
            {
              v47 = 0;
              data = 0;
              do
              {
                if (v44)
                {
                  v49 = *v14;
                }

                else
                {
                  v49 = v14;
                }

                if (v49[v47] == v42)
                {
                  *(v240 + 4 * v47) = 1;
                  std::vector<int>::push_back[abi:ne200100](&v238.__r_.__value_.__l.__data_, &v236);
                  data = v236.__r_.__value_.__l.__data_;
                  v43 = v14[23];
                  v45 = *(v14 + 1);
                }

                LODWORD(v236.__r_.__value_.__l.__data_) = ++data;
                v47 = data;
                v44 = (v43 & 0x80u) != 0;
                if ((v43 & 0x80u) == 0)
                {
                  v50 = v43;
                }

                else
                {
                  v50 = v45;
                }
              }

              while (v50 > data);
            }

            LODWORD(v224) = 1;
            std::vector<int>::vector[abi:ne200100](&v236, v41, &v224);
            size = v238.__r_.__value_.__l.__size_;
            v52 = *(v238.__r_.__value_.__l.__size_ - 4);
            v53 = *v233;
            v54 = (*(v233 + 8) - *v233) >> 2;
            if ((v52 & 0x80000000) != 0)
            {
              v52 += v54;
            }

            if (v54 > v52)
            {
              *v236.__r_.__value_.__l.__data_ = *(v53 + 4 * v52);
              v55 = *(size - 4);
              if ((v55 & 0x80000000) != 0)
              {
                v55 += v54;
              }

              if (v54 > v55)
              {
                mlx::core::arange(*(v53 + 4 * v55), a3, a4, &v222);
              }

              std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
            }

            std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
          }

          mlx::core::gather(&v233, &v237, &v238, &v240, a3, a4);
        }

        ++v13;
      }

      while (v13 < (v11 - v12) >> 6);
    }

    v240 = 0u;
    v241 = 0u;
    LODWORD(v242) = 1065353216;
    while (v12 != v11)
    {
      for (i = *(v12 + 40); i; i = *i)
      {
        LOBYTE(__src) = *(i + 16);
        DWORD1(__src) = 0;
        v57 = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::pair<char const,int> const&>(&v240, &__src, &__src);
        ++*(v57 + 5);
      }

      v12 += 64;
    }

    for (j = v10[8]; j; j = *j)
    {
      LOBYTE(__src) = *(j + 16);
      DWORD1(__src) = 0;
      v59 = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::pair<char const,int> const&>(&v240, &__src, &__src);
      ++*(v59 + 5);
    }

    v60 = *v10;
    if (v10[1] != *v10)
    {
      v61 = 0;
      do
      {
        v62 = 0;
        v63 = v60 + (v61 << 6);
        __src = 0uLL;
        *&v220 = 0;
        while (1)
        {
          LODWORD(v238.__r_.__value_.__l.__data_) = v62;
          v64 = *(v63 + 23);
          v65 = v64 < 0 ? *(v63 + 8) : *(v63 + 23);
          if (v65 <= v62)
          {
            break;
          }

          v66 = v63;
          if ((v64 & 0x80000000) != 0)
          {
            v66 = *v63;
          }

          __str.__r_.__value_.__r.__words[0] = v66 + v62;
          if (*(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(&v240, __str.__r_.__value_.__l.__data_, &std::piecewise_construct, &__str.__r_.__value_.__l.__data_) + 5) == 1)
          {
            std::vector<int>::push_back[abi:ne200100](&__src, &v238);
          }

          v62 = LODWORD(v238.__r_.__value_.__l.__data_) + 1;
        }

        v67 = *(&__src + 1);
        if (__src != *(&__src + 1))
        {
          mlx::core::sum(&v226[16 * *(v10[11] + 4 * v61)], &__src, 0, a3, a4, &__str);
          v68 = &v226[16 * *(v10[11] + 4 * v61)];
          v69 = *&__str.__r_.__value_.__l.__data_;
          *&__str.__r_.__value_.__l.__data_ = 0uLL;
          v70 = *(v68 + 1);
          *v68 = v69;
          if (v70)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v70);
          }

          mlx::core::array::~array(&__str);
          v67 = *(&__src + 1);
        }

        while (v67 != __src)
        {
          v71 = v63;
          if (*(v63 + 23) < 0)
          {
            v71 = *v63;
          }

          v72 = *--v67;
          std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__erase_unique<char>((v63 + 24), (v71 + v72));
          std::string::erase(v63, *v67, 1uLL);
        }

        if (v67)
        {
          *(&__src + 1) = __src;
          operator delete(__src);
        }

        ++v61;
        v60 = *v10;
      }

      while (v61 < (v10[1] - *v10) >> 6);
    }

    v200 = v10 + 3;
    std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v240);
    if (v10[1] - *v10 == 128)
    {
      v73 = *v10 + 40;
      while (1)
      {
        v73 = *v73;
        if (!v73)
        {
          break;
        }

        LOBYTE(v240) = *(v73 + 16);
        if (!std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>(v10 + 6, &v240))
        {
          v74 = 0;
          v75 = *v10;
          v76 = (*v10 + 64);
          memset(&v238, 0, sizeof(v238));
          memset(&v237, 0, sizeof(v237));
          memset(&v236, 0, sizeof(v236));
          while (1)
          {
            LODWORD(v240) = v74;
            v77 = *(v75 + 23);
            v78 = v77 < 0 ? *(v75 + 8) : *(v75 + 23);
            if (v78 <= v74)
            {
              break;
            }

            v79 = v75;
            if ((v77 & 0x80000000) != 0)
            {
              v79 = *v75;
            }

            LOBYTE(__src) = *(v79 + v74);
            if (std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>(v10 + 6, &__src))
            {
              if (std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>((v75 + 88), &__src))
              {
                v80 = &v237;
              }

              else
              {
                v80 = &v236;
              }
            }

            else
            {
              v80 = &v238;
            }

            std::vector<int>::push_back[abi:ne200100](&v80->__r_.__value_.__l.__data_, &v240);
            v74 = v240 + 1;
          }

          __p = 0uLL;
          v231 = 0;
          v224 = 0uLL;
          v225 = 0;
          v222 = 0uLL;
          v223 = 0;
          v142 = v238.__r_.__value_.__l.__size_;
          for (k = v238.__r_.__value_.__r.__words[0]; k != v142; ++k)
          {
            v143 = v75;
            if (*(v75 + 23) < 0)
            {
              v143 = *v75;
            }

            LODWORD(v240) = std::string::find(v76, *(v143 + *k), 0);
            std::vector<int>::push_back[abi:ne200100](&__p, &v240);
          }

          v145 = v237.__r_.__value_.__l.__size_;
          for (m = v237.__r_.__value_.__r.__words[0]; m != v145; ++m)
          {
            v146 = v75;
            if (*(v75 + 23) < 0)
            {
              v146 = *v75;
            }

            LODWORD(v240) = std::string::find(v76, *(v146 + *m), 0);
            std::vector<int>::push_back[abi:ne200100](&v224, &v240);
          }

          for (n = 0; ; n = v240 + 1)
          {
            LODWORD(v240) = n;
            v148 = *(v75 + 87);
            v149 = v148 < 0 ? *(v75 + 72) : *(v75 + 87);
            if (v149 <= n)
            {
              break;
            }

            v150 = v76;
            if ((v148 & 0x80000000) != 0)
            {
              v150 = v76->__r_.__value_.__r.__words[0];
            }

            LOBYTE(__src) = v150->__r_.__value_.__s.__data_[n];
            if (std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>(v10 + 6, &__src) && !std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>((v75 + 24), &__src))
            {
              std::vector<int>::push_back[abi:ne200100](&v222, &v240);
            }
          }

          v151 = v10[11];
          v152 = v226;
          v154 = *v151;
          v153 = v151[1];
          __src = 0u;
          v220 = 0u;
          v221 = 1065353216;
          v156 = v237.__r_.__value_.__l.__size_;
          for (ii = v237.__r_.__value_.__r.__words[0]; ii != v156; ++ii)
          {
            v157 = v75;
            if (*(v75 + 23) < 0)
            {
              v157 = *v75;
            }

            LOBYTE(v240) = *(v157 + *ii);
            DWORD1(v240) = DWORD2(v220);
            std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::pair<char const,int> const&>(&__src, &v240, &v240);
          }

          v159 = v236.__r_.__value_.__l.__size_;
          for (jj = v236.__r_.__value_.__r.__words[0]; jj != v159; ++jj)
          {
            v160 = v75;
            if (*(v75 + 23) < 0)
            {
              v160 = *v75;
            }

            LOBYTE(v240) = *(v160 + *jj);
            DWORD1(v240) = DWORD2(v220);
            std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::pair<char const,int> const&>(&__src, &v240, &v240);
          }

          v162 = *(&v222 + 1);
          for (kk = v222; kk != v162; ++kk)
          {
            v163 = v76;
            if (*(v75 + 87) < 0)
            {
              v163 = v76->__r_.__value_.__r.__words[0];
            }

            LOBYTE(v240) = v163->__r_.__value_.__s.__data_[*kk];
            DWORD1(v240) = DWORD2(v220);
            std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::pair<char const,int> const&>(&__src, &v240, &v240);
          }

          v164 = *&v152[16 * v154];
          v218 = v164;
          if (*(&v164 + 1))
          {
            atomic_fetch_add_explicit((*(&v164 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v217 = *&v152[16 * v153];
          if (*(&v217 + 1))
          {
            atomic_fetch_add_explicit((*(&v217 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v165 = *&v238.__r_.__value_.__l.__data_;
          v216 = *&v238.__r_.__value_.__r.__words[1];
          memset(&v238, 0, sizeof(v238));
          v199 = *&v237.__r_.__value_.__l.__data_;
          v214 = v237;
          v215 = v165;
          memset(&v237, 0, sizeof(v237));
          v198 = *&v236.__r_.__value_.__l.__data_;
          v213 = v236;
          memset(&v236, 0, sizeof(v236));
          v202 = __p;
          v211 = __p;
          v212 = v231;
          __p = 0uLL;
          v231 = 0;
          v209 = v224;
          v210 = v225;
          v224 = 0uLL;
          v225 = 0;
          v197 = v222;
          v207 = v222;
          v208 = v223;
          v222 = 0uLL;
          v223 = 0;
          v234 = a3;
          v235 = a4;
          v240 = 0uLL;
          *&v241 = 0;
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v240, *v164, *(v164 + 8), (*(v164 + 8) - *v164) >> 2);
          memset(&__str, 0, sizeof(__str));
          std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__str, *v217, *(v217 + 8), (*(v217 + 8) - *v217) >> 2);
          v166 = a4;
          v167 = a3;
          if (*(&v165 + 1) != v165)
          {
            v168 = *v218;
            v169 = (*(v218 + 8) - *v218) >> 2;
            v170 = v217;
            v171 = v240;
            v172 = __str.__r_.__value_.__r.__words[0];
            v173 = (*(&v165 + 1) - v165) >> 2;
            if (v173 <= 1)
            {
              v173 = 1;
            }

            v174 = v202;
            v175 = v165;
            do
            {
              v177 = *v175++;
              v176 = v177;
              v178 = v169 + v177;
              if ((v177 & 0x80000000) == 0)
              {
                v178 = v176;
              }

              if (v169 <= v178)
              {
                std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
              }

              v179 = *v174;
              v180 = (v170[1] - *v170) >> 2;
              if ((v179 & 0x80000000) != 0)
              {
                v179 += v180;
              }

              if (v180 <= v179)
              {
                std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
              }

              v181 = *(v168 + 4 * v178);
              if (v181 <= *(*v170 + 4 * v179))
              {
                v181 = *(*v170 + 4 * v179);
              }

              *(v171 + 4 * v176) = v181;
              v182 = *v174++;
              *(v172 + 4 * v182) = v181;
              --v173;
            }

            while (v173);
            v167 = v234;
            v166 = v235;
          }

          mlx::core::broadcast_to(&v218, &v240, v167, v166, &v233);
          v183 = v233;
          v233 = 0uLL;
          v184 = *(&v218 + 1);
          v218 = v183;
          if (v184)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v184);
          }

          mlx::core::array::~array(&v233);
          mlx::core::broadcast_to(&v217, &__str, v234, v235, &v233);
          v185 = v233;
          v233 = 0uLL;
          v186 = *(&v217 + 1);
          v217 = v185;
          if (v186)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v186);
          }

          mlx::core::array::~array(&v233);
          if (__str.__r_.__value_.__r.__words[0])
          {
            __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
            operator delete(__str.__r_.__value_.__l.__data_);
          }

          if (v240)
          {
            *(&v240 + 1) = v240;
            operator delete(v240);
          }

          v232 = &v234;
          v240 = 0uLL;
          *&v241 = 0;
          for (mm = v199; mm != *(&v199 + 1); ++mm)
          {
            v188 = *mm;
            v189 = (*(v218 + 8) - *v218) >> 2;
            if ((v188 & 0x80000000) != 0)
            {
              v188 += v189;
            }

            if (v189 <= v188)
            {
              std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
            }

            LODWORD(__str.__r_.__value_.__l.__data_) = *(*v218 + 4 * v188);
            std::vector<int>::push_back[abi:ne200100](&v240, &__str);
          }

          for (nn = v198; nn != *(&v198 + 1); ++nn)
          {
            v191 = *nn;
            v192 = (*(v218 + 8) - *v218) >> 2;
            if ((v191 & 0x80000000) != 0)
            {
              v191 += v192;
            }

            if (v192 <= v191)
            {
              std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
            }

            LODWORD(__str.__r_.__value_.__l.__data_) = *(*v218 + 4 * v191);
            std::vector<int>::push_back[abi:ne200100](&v240, &__str);
          }

          for (i1 = v197; i1 != *(&v197 + 1); ++i1)
          {
            v194 = *i1;
            v195 = (*(v217 + 8) - *v217) >> 2;
            if ((v194 & 0x80000000) != 0)
            {
              v194 += v195;
            }

            if (v195 <= v194)
            {
              std::vector<mlx::core::array>::__throw_out_of_range[abi:ne200100]();
            }

            LODWORD(__str.__r_.__value_.__l.__data_) = *(*v217 + 4 * v194);
            std::vector<int>::push_back[abi:ne200100](&v240, &__str);
          }
        }
      }
    }

    memset(v204, 0, sizeof(v204));
    std::vector<mlx::core::array>::__init_with_size[abi:ne200100]<mlx::core::array*,mlx::core::array*>(v204, v226, v227, (v227 - v226) >> 4);
    v240 = 0u;
    v241 = 0u;
    LODWORD(v242) = 1065353216;
    v81 = v205;
    v82 = v206;
    if (v205 == v206)
    {
LABEL_185:
      v122 = *(v203 + 88);
      v123 = *(v204[0] + 16 * *v122);
      __p = v123;
      if (*(&v123 + 1))
      {
        atomic_fetch_add_explicit((*(&v123 + 1) + 8), 1uLL, memory_order_relaxed);
        v122 = *(v203 + 88);
      }

      if (*(v203 + 96) - v122 >= 5uLL)
      {
        mlx::core::multiply(&__p, (v204[0] + 16 * v122[1]), a3, a4);
      }

      __src = 0uLL;
      *&v220 = 0;
      v124 = v241;
      if (v241)
      {
        do
        {
          v238.__r_.__value_.__r.__words[0] = v124[2];
          if (!std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>((v203 + 48), &v238))
          {
            std::vector<int>::push_back[abi:ne200100](&__src, v238.__r_.__value_.__r.__words + 1);
          }

          v124 = *v124;
        }

        while (v124);
        if (__src != *(&__src + 1))
        {
          mlx::core::sum(&__p, &__src, 0, a3, a4, &v238);
          v125 = *&v238.__r_.__value_.__l.__data_;
          *&v238.__r_.__value_.__l.__data_ = 0uLL;
          v126 = *(&__p + 1);
          __p = v125;
          if (v126)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v126);
          }

          mlx::core::array::~array(&v238);
        }
      }

      memset(&v238, 0, sizeof(v238));
      v127 = *(v203 + 47);
      if (v127 >= 0)
      {
        v128 = v200;
      }

      else
      {
        v128 = *(v203 + 24);
      }

      if (v127 >= 0)
      {
        v129 = *(v203 + 47);
      }

      else
      {
        v129 = *(v203 + 32);
      }

      if (v129)
      {
        do
        {
          LOBYTE(v234) = *v128;
          v236.__r_.__value_.__r.__words[0] = &v234;
          v130 = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(&v240, &v234, &std::piecewise_construct, &v236.__r_.__value_.__l.__data_);
          std::vector<int>::push_back[abi:ne200100](&v238.__r_.__value_.__l.__data_, v130 + 5);
          v128 = (v128 + 1);
          --v129;
        }

        while (v129);
        v132 = v238.__r_.__value_.__l.__size_;
        v131 = v238.__r_.__value_.__r.__words[0];
        if (v238.__r_.__value_.__r.__words[0] != v238.__r_.__value_.__l.__size_)
        {
          v133 = __src;
          v134 = v238.__r_.__value_.__r.__words[0];
          do
          {
            v135 = *v134;
            if (v133 == *(&v133 + 1))
            {
              v136 = 0;
            }

            else
            {
              v136 = 0;
              v137 = v133;
              do
              {
                v138 = *v137++;
                if (v135 > v138)
                {
                  ++v136;
                }
              }

              while (v137 != *(&v133 + 1));
            }

            *v134++ = v135 - v136;
          }

          while (v134 != v132);
        }

        v139 = v132;
        v140 = v131;
      }

      else
      {
        v139 = 0;
        v140 = 0;
        v131 = 0;
        v132 = 0;
      }

      memset(&v236, 0, sizeof(v236));
      std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v236, v131, v132, (v139 - v140) >> 2);
      mlx::core::transpose(&__p, &v236, a3, a4);
    }

    while (1)
    {
      i2 = *(v81 + 23);
      if (i2 < 0)
      {
        v84 = *v81;
        for (i2 = *(v81 + 8); i2; --i2)
        {
LABEL_126:
          LOBYTE(__src) = *v84;
          DWORD1(__src) = DWORD2(v241);
          std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::pair<char const,int> const&>(&v240, &__src, &__src);
          ++v84;
        }
      }

      else
      {
        v84 = v81;
        if (*(v81 + 23))
        {
          goto LABEL_126;
        }
      }

      v81 += 64;
      if (v81 == v82)
      {
        v85 = v205;
        if (v206 != v205)
        {
          v86 = 0;
          do
          {
            v87 = v204[0] + 16 * *(*(v203 + 88) + 4 * v86);
            v88 = *v87;
            if (*(&v241 + 1) != (*(*v87 + 8) - **v87) >> 2)
            {
              __src = 0uLL;
              *&v220 = 0;
              std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&__src, *v88, v88[1], (v88[1] - *v88) >> 2);
              v89.__i_ = *(&__src + 1);
              LODWORD(v238.__r_.__value_.__l.__data_) = 1;
              std::vector<int>::insert(&__src, v89, *(&v241 + 1) - ((*(&__src + 1) - __src) >> 2), &v238);
              *&__str.__r_.__value_.__l.__data_ = __src;
              __str.__r_.__value_.__r.__words[2] = v220;
              __src = 0uLL;
              *&v220 = 0;
              mlx::core::reshape(v87, &__str, a3, a4, &v238);
              v90 = *&v238.__r_.__value_.__l.__data_;
              *&v238.__r_.__value_.__l.__data_ = 0uLL;
              v91 = *(v87 + 8);
              *v87 = v90;
              if (v91)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v91);
              }

              mlx::core::array::~array(&v238);
              if (__str.__r_.__value_.__r.__words[0])
              {
                __str.__r_.__value_.__l.__size_ = __str.__r_.__value_.__r.__words[0];
                operator delete(__str.__r_.__value_.__l.__data_);
              }

              if (__src)
              {
                *(&__src + 1) = __src;
                operator delete(__src);
              }

              v85 = v205;
            }

            __src = 0uLL;
            *&v220 = 0;
            v92 = v85 + (v86 << 6);
            v93 = *(v92 + 23);
            if (v93 < 0)
            {
              v92 = *v92;
              v93 = *(v85 + (v86 << 6) + 8);
            }

            v201 = v87;
            for (i3 = 0; v93; --v93)
            {
              v95 = *v92;
              v96 = __src;
              v97 = i3 - __src;
              if (i3 >= v220)
              {
                v98 = (v97 >> 3) + 1;
                if (v98 >> 61)
                {
                  std::vector<int>::__throw_length_error[abi:ne200100]();
                }

                v99 = v220 - __src;
                if ((v220 - __src) >> 2 > v98)
                {
                  v98 = v99 >> 2;
                }

                v33 = v99 >= 0x7FFFFFFFFFFFFFF8;
                v100 = 0x1FFFFFFFFFFFFFFFLL;
                if (!v33)
                {
                  v100 = v98;
                }

                if (v100)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,int>>>(&__src, v100);
                }

                v101 = i3 - __src;
                v102 = 8 * (v97 >> 3);
                *v102 = v95;
                *(v102 + 4) = v97 >> 3;
                i3 = v102 + 8;
                memcpy(0, v96, v101);
                v103 = __src;
                *&__src = 0;
                *(&__src + 1) = i3;
                *&v220 = 0;
                if (v103)
                {
                  operator delete(v103);
                }
              }

              else
              {
                *i3 = v95;
                *(i3 + 4) = v97 >> 3;
                i3 += 8;
              }

              *(&__src + 1) = i3;
              ++v92;
            }

            v104 = v241;
            if (v241)
            {
              do
              {
                v238.__r_.__value_.__r.__words[0] = v104[2];
                if (!std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>((v205 + (v86 << 6) + 24), &v238))
                {
                  v105 = __src;
                  v106 = *(&__src + 1) - __src;
                  if (*(&__src + 1) >= v220)
                  {
                    v108 = (v106 >> 3) + 1;
                    if (v108 >> 61)
                    {
                      std::vector<int>::__throw_length_error[abi:ne200100]();
                    }

                    v109 = v220 - __src;
                    if ((v220 - __src) >> 2 > v108)
                    {
                      v108 = v109 >> 2;
                    }

                    if (v109 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v108 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    if (v108)
                    {
                      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<char,int>>>(&__src, v108);
                    }

                    v110 = v106 >> 3;
                    v111 = *(&__src + 1) - __src;
                    v112 = 8 * (v106 >> 3);
                    *v112 = v238.__r_.__value_.__s.__data_[0];
                    *(v112 + 4) = v106 >> 3;
                    v107 = v112 + 8;
                    v113 = (v112 - 8 * v110);
                    memcpy(v113, v105, v111);
                    v114 = __src;
                    *&__src = v113;
                    *(&__src + 1) = v107;
                    *&v220 = 0;
                    if (v114)
                    {
                      operator delete(v114);
                    }
                  }

                  else
                  {
                    **(&__src + 1) = v238.__r_.__value_.__s.__data_[0];
                    *(*(&v105 + 1) + 4) = v106 >> 3;
                    v107 = *(&v105 + 1) + 8;
                  }

                  *(&__src + 1) = v107;
                }

                v104 = *v104;
              }

              while (v104);
              i3 = *(&__src + 1);
            }

            v115 = 126 - 2 * __clz((i3 - __src) >> 3);
            v238.__r_.__value_.__r.__words[0] = &v240;
            if (i3 == __src)
            {
              v116 = 0;
            }

            else
            {
              v116 = v115;
            }

            v117 = *(&__src + 1);
            v118 = __src;
            if (__src != *(&__src + 1))
            {
              for (i4 = __src + 8; i4 != *(&__src + 1); i4 += 8)
              {
                v120 = *(i4 + 4);
                v121 = *(i4 - 4);
                if (v120 < v121)
                {
                  memset(&v238, 0, sizeof(v238));
                  do
                  {
                    v236.__r_.__value_.__r.__words[0] = *v118;
                    std::vector<int>::push_back[abi:ne200100](&v238.__r_.__value_.__l.__data_, v236.__r_.__value_.__r.__words + 1);
                    ++v118;
                  }

                  while (v118 != v117);
                  memset(&v237, 0, sizeof(v237));
                  std::vector<int>::__init_with_size[abi:ne200100]<int *,int *>(&v237, v238.__r_.__value_.__l.__data_, v238.__r_.__value_.__l.__size_, (v238.__r_.__value_.__l.__size_ - v238.__r_.__value_.__r.__words[0]) >> 2);
                  mlx::core::transpose(v201, &v237, a3, a4);
                }
              }
            }

            if (__src)
            {
              *(&__src + 1) = __src;
              operator delete(__src);
            }

            ++v86;
            v85 = v205;
          }

          while (v86 < (v206 - v205) >> 6);
        }

        goto LABEL_185;
      }
    }
  }

  v196 = *(v226 + 1);
  *a5 = *v226;
  a5[1] = v196;
  if (v196)
  {
    atomic_fetch_add_explicit((v196 + 8), 1uLL, memory_order_relaxed);
  }

  *&v240 = &v226;
  std::vector<mlx::core::array>::__destroy_vector::operator()[abi:ne200100](&v240);
  *&v240 = v229;
}

void sub_25A3012A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, unint64_t *a63)
{
  a63 = &STACK[0x230];
  _Unwind_Resume(a1);
}

uint64_t *std::vector<mlx::core::anonymous namespace::Subscript>::vector[abi:ne200100](uint64_t *a1, uint64_t *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = a2[1];
  v3 = v2 - *a2;
  if (v2 != *a2)
  {
    if (!((v3 >> 6) >> 58))
    {
    }

    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  return a1;
}

void mlx::core::anonymous namespace::einsum_path_helper(std::string const&,std::vector<mlx::core::array> const&,std::string const&)::$_0::operator()<std::string>(void **a1, std::string *a2, uint64_t a3)
{
  v3 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  size = a2->__r_.__value_.__l.__size_;
  if ((v3 & 0x80000000) == 0)
  {
    size = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  if (!size)
  {
    return;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  LODWORD(v11) = 0;
  v12 = 0;
  v13 = v3 >> 63;
  v14 = MEMORY[0x277D85DE0];
  do
  {
    if (v13)
    {
      v15 = a2->__r_.__value_.__r.__words[0];
    }

    else
    {
      v15 = a2;
    }

    v16 = v15->__r_.__value_.__s.__data_[v8];
    if ((v16 & 0x80000000) != 0)
    {
      if (__maskrune(v16, 0x100uLL))
      {
LABEL_10:
        if (v9)
        {
          ++v12;
        }

        else
        {
          ++v10;
        }

        v9 = v9;
        goto LABEL_26;
      }
    }

    else if ((*(v14 + 4 * v16 + 60) & 0x100) != 0)
    {
      goto LABEL_10;
    }

    v17 = v11;
    v11 = v11 + 2;
    v18 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
    v19 = v18;
    if ((v18 & 0x80u) != 0)
    {
      v18 = a2->__r_.__value_.__l.__size_;
    }

    if (v18 <= v11 || (v19 >= 0 ? (v20 = a2) : (v20 = a2->__r_.__value_.__r.__words[0]), v20->__r_.__value_.__s.__data_[v8] != 46 || v20->__r_.__value_.__s.__data_[v17 + 1] != 46 || v20->__r_.__value_.__s.__data_[v11] != 46))
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](__p);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[", 1);
      v33 = *(*a1 + 23);
      if (v33 >= 0)
      {
        v34 = *a1;
      }

      else
      {
        v34 = **a1;
      }

      if (v33 >= 0)
      {
        v35 = *(*a1 + 23);
      }

      else
      {
        v35 = (*a1)[1];
      }

      v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v34, v35);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, "] Subscripts must be letters, but got '", 39);
      if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = a2;
      }

      else
      {
        v38 = a2->__r_.__value_.__r.__words[0];
      }

      v52.__r_.__value_.__s.__data_[0] = v38->__r_.__value_.__s.__data_[v8];
      v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, &v52, 1);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, "'.", 2);
      exception = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](__p, &v52);
      std::logic_error::logic_error(exception, &v52);
      exception->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(exception, off_279921408, MEMORY[0x277D82610]);
    }

    if (v9)
    {
      std::ostringstream::basic_ostringstream[abi:ne200100](__p);
      v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "[", 1);
      v42 = *(*a1 + 23);
      if (v42 >= 0)
      {
        v43 = *a1;
      }

      else
      {
        v43 = **a1;
      }

      if (v42 >= 0)
      {
        v44 = *(*a1 + 23);
      }

      else
      {
        v44 = (*a1)[1];
      }

      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v43, v44);
      v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "] Only one ellipsis per subscript is allowed but found more in '", 64);
      v47 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if (v47 >= 0)
      {
        v48 = a2;
      }

      else
      {
        v48 = a2->__r_.__value_.__r.__words[0];
      }

      if (v47 >= 0)
      {
        v49 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      }

      else
      {
        v49 = a2->__r_.__value_.__l.__size_;
      }

      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v48, v49);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "'.", 2);
      v51 = __cxa_allocate_exception(0x10uLL);
      std::ostringstream::str[abi:ne200100](__p, &v52);
      std::logic_error::logic_error(v51, &v52);
      v51->__vftable = (MEMORY[0x277D828F8] + 16);
      __cxa_throw(v51, off_279921408, MEMORY[0x277D82610]);
    }

    v9 = 1;
LABEL_26:
    LODWORD(v11) = v11 + 1;
    v8 = v11;
    v21 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    v13 = v21 >> 63;
    v22 = a2->__r_.__value_.__l.__size_;
    if ((v21 & 0x80000000) == 0)
    {
      v22 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
    }
  }

  while (v22 > v11);
  if (v9)
  {
    if (a3)
    {
      v23 = ((*(*a3 + 8) - **a3) >> 2) - (v12 + v10);
      v24 = a1[1];
      v25 = *v24;
      if (*v24 <= v23)
      {
        v25 = ((*(*a3 + 8) - **a3) >> 2) - (v12 + v10);
      }

      *v24 = v25;
      if ((*(&a2->__r_.__value_.__s + 23) & 0x80) == 0)
      {
LABEL_34:
        v26 = v10;
        v27 = a2;
        v28 = a2 + v10;
        goto LABEL_37;
      }
    }

    else
    {
      v23 = *a1[1];
      if ((v21 & 0x80) == 0)
      {
        goto LABEL_34;
      }
    }

    v27 = a2->__r_.__value_.__r.__words[0];
    v26 = v10;
    v28 = (a2->__r_.__value_.__r.__words[0] + v10);
LABEL_37:
    v29 = v27 + v26;
    v30 = a1[2];
    v31 = *(v30 + 23);
    if (v31 < 0)
    {
      v31 = *v30;
      v30 = v30[1];
    }

    std::string::__init_with_size[abi:ne200100]<std::__wrap_iter<char const*>,std::__wrap_iter<char const*>>(__p, v30 + v31 - v23, v30 + v31, v23);
    std::string::replace[abi:ne200100](a2, v28, (v29 + 3), __p);
    if (v54 < 0)
    {
      operator delete(__p[0]);
    }
  }
}

void sub_25A301C70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a15 < 0)
  {
    operator delete(__p);
    if ((v22 & 1) == 0)
    {
LABEL_6:
      std::ostringstream::~ostringstream(&a16);
      _Unwind_Resume(a1);
    }
  }

  else if (!v22)
  {
    goto LABEL_6;
  }

  __cxa_free_exception(v21);
  goto LABEL_6;
}

uint64_t mlx::core::anonymous namespace::term_size<std::string>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 23);
  if (v2 >= 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  if (v2 >= 0)
  {
    v4 = *(a1 + 23);
  }

  else
  {
    v4 = *(a1 + 8);
  }

  if (!v4)
  {
    return 1;
  }

  v6 = 1;
  do
  {
    v7 = *v3++;
    v9 = v7;
    v10 = &v9;
    v6 *= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(a2, &v9, &std::piecewise_construct, &v10) + 5);
    --v4;
  }

  while (v4);
  return v6;
}

uint64_t mlx::core::anonymous namespace::compute_cost_and_scaling(void *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0u;
  v20 = 0u;
  v21 = 1065353216;
  v5 = *a1;
  v6 = a1[1];
  if (*a1 == v6)
  {
    goto LABEL_9;
  }

  do
  {
    for (i = *(v5 + 40); i; i = *i)
    {
      std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__emplace_unique_key_args<char,char const&>(&v19, i + 16, i + 16);
    }

    v5 += 64;
  }

  while (v5 != v6);
  v9 = v20;
  if (!v20)
  {
LABEL_9:
    v11 = 0;
  }

  else
  {
    do
    {
      v18 = *(v9 + 16);
      v10 = std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>((a2 + 24), &v18);
      v11 = v10 == 0;
      if (!v10)
      {
        break;
      }

      v9 = *v9;
    }

    while (v9);
  }

  v14 = a1;
  v12 = *a1;
  v13 = v14[1];
  std::unordered_map<char,int>::unordered_map(v17, a3);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v17);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v19);
  return v15;
}

void sub_25A301E88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&a9);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void mlx::core::anonymous namespace::Subscript::~Subscript(void **this)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table((this + 3));
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

unsigned __int8 *std::remove[abi:ne200100]<std::__wrap_iter<char *>,char>(void *a1, unsigned __int8 *a2, char *a3)
{
  result = memchr(a1, *a3, a2 - a1);
  if (!result)
  {
    result = a2;
  }

  v6 = result + 1;
  if (result != a2 && v6 != a2)
  {
    do
    {
      v8 = *v6;
      if (v8 != *a3)
      {
        *result++ = v8;
      }

      ++v6;
    }

    while (v6 != a2);
  }

  return result;
}

uint64_t *std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](uint64_t *a1, const std::string *a2, uint64_t a3)
{
  v3 = a3;
  a1[22] = 0;
  v6 = MEMORY[0x277D82890] + 104;
  a1[16] = MEMORY[0x277D82890] + 104;
  v7 = a1 + 2;
  v8 = MEMORY[0x277D82890] + 64;
  a1[2] = MEMORY[0x277D82890] + 64;
  v9 = MEMORY[0x277D82818];
  v10 = *(MEMORY[0x277D82818] + 24);
  v11 = *(MEMORY[0x277D82818] + 16);
  *a1 = v11;
  *(a1 + *(v11 - 24)) = v10;
  a1[1] = 0;
  v12 = (a1 + *(*a1 - 24));
  std::ios_base::init(v12, a1 + 3);
  v13 = MEMORY[0x277D82890] + 24;
  v12[1].__vftable = 0;
  v12[1].__fmtflags_ = -1;
  v14 = v9[5];
  v15 = v9[4];
  a1[2] = v15;
  *(v7 + *(v15 - 24)) = v14;
  v16 = v9[1];
  *a1 = v16;
  *(a1 + *(v16 - 24)) = v9[6];
  *a1 = v13;
  a1[16] = v6;
  a1[2] = v8;
  std::stringbuf::basic_stringbuf[abi:ne200100]((a1 + 3), a2, v3);
  return a1;
}

void sub_25A3021E4(_Unwind_Exception *a1)
{
  std::iostream::~basic_iostream();
  MEMORY[0x25F8516C0](v1);
  _Unwind_Resume(a1);
}

void *std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(void *a1, uint64_t a2, unsigned __int8 a3)
{
  MEMORY[0x25F8512B0](&v11, a1, 1);
  if (v11 != 1)
  {
    return a1;
  }

  if (*(a2 + 23) < 0)
  {
    **a2 = 0;
    *(a2 + 8) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 23) = 0;
  }

  v6 = 0;
  while (1)
  {
    v7 = *(a1 + *(*a1 - 24) + 40);
    v8 = v7[3];
    if (v8 != v7[4])
    {
      v7[3] = v8 + 1;
      LOBYTE(v7) = *v8;
      goto LABEL_9;
    }

    LODWORD(v7) = (*(*v7 + 80))(v7);
    if (v7 == -1)
    {
      break;
    }

LABEL_9:
    if (v7 == a3)
    {
      v9 = 0;
      goto LABEL_17;
    }

    std::string::push_back(a2, v7);
    --v6;
    if (*(a2 + 23) < 0 && *(a2 + 8) == 0x7FFFFFFFFFFFFFF7)
    {
      v9 = 4;
      goto LABEL_17;
    }
  }

  if (v6)
  {
    v9 = 2;
  }

  else
  {
    v9 = 6;
  }

LABEL_17:
  std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | v9);
  return a1;
}

void sub_25A302370(void *a1)
{
  __cxa_begin_catch(a1);
  v2 = *v1;
  *(v1 + *(*v1 - 24) + 32) |= 1u;
  if ((*(v1 + *(v2 - 24) + 36) & 1) == 0)
  {
    __cxa_end_catch();
    JUMPOUT(0x25A302330);
  }

  __cxa_rethrow();
}

uint64_t std::stringbuf::basic_stringbuf[abi:ne200100](uint64_t a1, const std::string *a2, int a3)
{
  *a1 = MEMORY[0x277D82868] + 16;
  MEMORY[0x25F8515F0](a1 + 8);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 16) = 0u;
  *a1 = MEMORY[0x277D82878] + 16;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = a3;
  std::string::operator=((a1 + 64), a2);
  std::stringbuf::__init_buf_ptrs[abi:ne200100](a1);
  return a1;
}

void sub_25A3024AC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

std::string *std::pair<std::vector<std::string>,std::string>::pair[abi:ne200100]<std::vector<std::string>&,std::string&,0>(std::string *a1, void *a2, __int128 *a3)
{
  *&a1->__r_.__value_.__l.__data_ = 0uLL;
  a1->__r_.__value_.__r.__words[2] = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(a1, *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a1 + 1, *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    a1[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&a1[1].__r_.__value_.__l.__data_ = v5;
  }

  return a1;
}

void sub_25A302554(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + *(v3 - 24)) = a2[8];
  *(a1 + 16) = a2[9];
  *(a1 + 24) = MEMORY[0x277D82878] + 16;
  if (*(a1 + 111) < 0)
  {
    operator delete(*(a1 + 88));
  }

  *(a1 + 24) = MEMORY[0x277D82868] + 16;
  std::locale::~locale((a1 + 32));

  return std::iostream::~basic_iostream();
}

uint64_t std::unordered_set<char>::unordered_set<std::__wrap_iter<char const*>>(uint64_t a1, char *a2, char *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__emplace_unique_key_args<char,char const&>(a1, v5, v5);
      ++v5;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t **std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__emplace_unique_key_args<char,char const&>(void *a1, char *a2, _BYTE *a3)
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
    if (*&v4 <= v3)
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

  if (*(v8 + 16) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

std::string *std::string::replace[abi:ne200100](std::string *a1, uint64_t a2, uint64_t a3, const std::string::value_type *a4)
{
  v4 = a1;
  if (SHIBYTE(a1->__r_.__value_.__r.__words[2]) < 0)
  {
    v4 = a1->__r_.__value_.__r.__words[0];
  }

  v5 = a2 - v4;
  v6 = a3 - a2;
  v7 = *(a4 + 1);
  if (a4[23] >= 0)
  {
    v8 = *(a4 + 23);
  }

  else
  {
    a4 = *a4;
    v8 = v7;
  }

  return std::string::replace(a1, v5, v6, a4, v8);
}

uint64_t std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *a2 = 0;
  *result = v2;
  v5 = a2[2];
  v3 = a2 + 2;
  v4 = v5;
  v6 = *(v3 - 1);
  *(result + 16) = v5;
  *(result + 8) = v6;
  *(v3 - 1) = 0;
  v7 = v3[1];
  *(result + 24) = v7;
  *(result + 32) = *(v3 + 4);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 8);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 16;
    *v3 = 0;
    v3[1] = 0;
  }

  return result;
}

void std::allocator_traits<std::allocator<mlx::core::anonymous namespace::Subscript>>::construct[abi:ne200100]<mlx::core::anonymous namespace::Subscript,std::string &,std::unordered_set<char> &,void,0>(std::string *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v6, *a2, *(a2 + 8));
  }

  else
  {
    v6 = *a2;
  }

  std::unordered_set<char>::unordered_set(v5, a3);
  *a1 = v6;
  memset(&v6, 0, sizeof(v6));
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(&a1[1], v5);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v5);
  if (SHIBYTE(v6.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v6.__r_.__value_.__l.__data_);
  }
}

void sub_25A302AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_set<char>::unordered_set(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__emplace_unique_key_args<char,char const&>(a1, i + 16, i + 16);
  }

  return a1;
}

void std::vector<mlx::core::anonymous namespace::Subscript>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = v4 - (v6 - *result);
  if (v6 != *result)
  {
    v8 = v4 - ((v6 - *result) >> 6 << 6) + 24;
    v9 = v5;
    do
    {
      v10 = *v9;
      *(v8 - 8) = *(v9 + 16);
      *(v8 - 24) = v10;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = 0;
      v11 = std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(v8, (v9 + 24));
      v9 += 64;
      v8 = v11 + 64;
    }

    while (v9 != v6);
    do
    {
      v5 += 64;
    }

    while (v5 != v6);
  }

  a2[1] = v7;
  v12 = *result;
  *result = v7;
  result[1] = v12;
  a2[1] = v12;
  v13 = result[1];
  result[1] = a2[2];
  a2[2] = v13;
  v14 = result[2];
  result[2] = a2[3];
  a2[3] = v14;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<mlx::core::anonymous namespace::Subscript>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 64;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::anonymous namespace::Subscript>>(unint64_t a1)
{
  if (!(a1 >> 58))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator_traits<std::allocator<mlx::core::anonymous namespace::Subscript>>::destroy[abi:ne200100]<mlx::core::anonymous namespace::Subscript,void,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::unordered_map<char,int>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<unsigned int,mlx::core::Fence>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,mlx::core::Fence>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,mlx::core::Fence>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::pair<char const,int> const&>(a1, i + 16, i + 2);
  }

  return a1;
}

uint64_t **std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::pair<char const,int> const&>(void *a1, char *a2, void *a3)
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
    if (*&v4 <= v3)
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

  if (*(v8 + 16) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t mlx::core::anonymous namespace::flop_count(uint64_t a1, int a2, int a3, uint64_t a4)
{
  std::unordered_map<char,int>::unordered_map(v10, a4);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v10);
  v8 = a3 - 1;
  if (a3 <= 2)
  {
    v8 = 1;
  }

  return v7 * (v8 + a2);
}

void sub_25A303014(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t ***std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>(void *a1, char *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 16) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t mlx::core::anonymous namespace::term_size<std::unordered_set<char>>(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 1;
  do
  {
    v6 = *(v2 + 16);
    v7 = &v6;
    v4 *= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(a2, &v6, &std::piecewise_construct, &v7) + 5);
    v2 = *v2;
  }

  while (v2);
  return v4;
}

void std::allocator_traits<std::allocator<mlx::core::anonymous namespace::PathNode>>::construct[abi:ne200100]<mlx::core::anonymous namespace::PathNode,std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript,std::vector<int>,void,0>(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v6 = *(a2 + 2);
  v7 = *a2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  v10 = v7;
  *__p = *a3;
  v12 = *(a3 + 16);
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *a3 = 0;
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(v13, (a3 + 24));
  v8 = *(a4 + 2);
  v9 = *a4;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *a1 = v10;
  *(a1 + 16) = v6;
  memset(v14, 0, sizeof(v14));
  *(a1 + 24) = *__p;
  *(a1 + 40) = v12;
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(a1 + 48, v13);
  *(a1 + 88) = v9;
  *(a1 + 104) = v8;
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v13);
  v15 = v14;
}

void std::vector<mlx::core::anonymous namespace::PathNode>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v4 = a2[1];
  v5 = *result;
  v6 = result[1];
  v7 = v4 - (v6 - *result);
  if (v6 != *result)
  {
    v8 = v5 + 48;
    v9 = v4 - 16 * ((v6 - *result) >> 4) + 48;
    do
    {
      *(v9 - 48) = 0;
      *(v9 - 40) = 0;
      *(v9 - 32) = 0;
      *(v9 - 48) = *(v8 - 48);
      *(v9 - 32) = *(v8 - 32);
      *(v8 - 48) = 0;
      *(v8 - 40) = 0;
      *(v8 - 32) = 0;
      v10 = *(v8 - 24);
      *(v9 - 8) = *(v8 - 8);
      *(v9 - 24) = v10;
      *(v8 - 16) = 0;
      *(v8 - 8) = 0;
      *(v8 - 24) = 0;
      v11 = std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(v9, v8);
      v11[5] = 0;
      v11[6] = 0;
      v11[7] = 0;
      *(v11 + 5) = *(v8 + 40);
      v11[7] = *(v8 + 56);
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      v12 = v8 + 64;
      v8 += 112;
      v9 = (v11 + 14);
    }

    while (v12 != v6);
    do
    {
      v5 += 112;
    }

    while (v5 != v6);
  }

  a2[1] = v7;
  v13 = *result;
  *result = v7;
  result[1] = v13;
  a2[1] = v13;
  v14 = result[1];
  result[1] = a2[2];
  a2[2] = v14;
  v15 = result[2];
  result[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<mlx::core::anonymous namespace::PathNode>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 112;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<mlx::core::anonymous namespace::PathNode>>(unint64_t a1)
{
  if (a1 < 0x24924924924924ALL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::allocator_traits<std::allocator<mlx::core::anonymous namespace::PathNode>>::destroy[abi:ne200100]<mlx::core::anonymous namespace::PathNode,void,0>(uint64_t a1)
{
  v2 = *(a1 + 88);
  if (v2)
  {
    *(a1 + 96) = v2;
    operator delete(v2);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(a1 + 48);
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  v3 = a1;
}

uint64_t mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::$_2::operator()(uint64_t **a1, int a2, int a3)
{
  v44 = a3;
  v45 = a2;
  v41 = 0u;
  v42 = 0u;
  v43 = 1065353216;
  std::unordered_set<char>::unordered_set<std::__hash_const_iterator<std::__hash_node<char,void *> *>>(v39, *(**a1 + (a2 << 6) + 40), 0);
  v5 = *a1;
  v6 = **a1;
  v7 = *(v6 + (a3 << 6) + 40);
  if (v7)
  {
    do
    {
      std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__emplace_unique_key_args<char,char const&>(v39, v7 + 16, v7 + 16);
      v7 = *v7;
    }

    while (v7);
    v5 = *a1;
    v6 = **a1;
  }

  if (v5[1] != v6)
  {
    v8 = 0;
    v10 = v44;
    v9 = v45;
    do
    {
      if (v8 != v9 && v8 != v10)
      {
        v11 = *(v6 + (v8 << 6) + 40);
        if (v11)
        {
          do
          {
            LOBYTE(v46[0]) = *(v11 + 16);
            if (std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>(v39, v46))
            {
              std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__emplace_unique_key_args<char,char const&>(&v41, v46, v46);
            }

            v11 = *v11;
          }

          while (v11);
          v5 = *a1;
          v6 = **a1;
        }
      }

      ++v8;
    }

    while (v8 < (v5[1] - v6) >> 6);
  }

  for (i = a1[1][5]; i; i = *i)
  {
    LOBYTE(v46[0]) = *(i + 16);
    if (std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::find<char>(v39, v46))
    {
      std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__emplace_unique_key_args<char,char const&>(&v41, v46, v46);
    }
  }

  std::unordered_map<char,int>::unordered_map(v38, a1[2]);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v38);
  if (v13 <= *a1[3])
  {
    v14 = v45;
    v15 = **a1;
    std::unordered_map<char,int>::unordered_map(v36, a1[2]);
    v17 = v44;
    v18 = **a1;
    std::unordered_map<char,int>::unordered_map(v35, a1[2]);
    std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v35);
    std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v36);
    v37 = v19;
    v20 = v40;
    v21 = *(&v42 + 1);
    std::unordered_map<char,int>::unordered_map(v33, a1[2]);
    std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v33);
    v34 = v22;
    if (*a1[4] + v22 <= *a1[5])
    {
      v23 = a1[6];
      v32 = v40;
      v25 = v23[1];
      v24 = v23[2];
      if (v25 >= v24)
      {
        v27 = 0x8E38E38E38E38E39 * ((v25 - *v23) >> 3);
        if ((v27 + 1) > 0x38E38E38E38E38ELL)
        {
          std::vector<int>::__throw_length_error[abi:ne200100]();
        }

        v28 = 0x8E38E38E38E38E39 * ((v24 - *v23) >> 3);
        v29 = 2 * v28;
        if (2 * v28 <= v27 + 1)
        {
          v29 = v27 + 1;
        }

        if (v28 >= 0x1C71C71C71C71C7)
        {
          v30 = 0x38E38E38E38E38ELL;
        }

        else
        {
          v30 = v29;
        }

        v47 += 72;
        v26 = v23[1];
      }

      else
      {
        v26 = v25 + 72;
      }

      v23[1] = v26;
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v39);
  return std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(&v41);
}

void sub_25A303808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, ...)
{
  va_start(va, a31);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(va);
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v31 - 144);
  _Unwind_Resume(a1);
}

uint64_t std::vector<mlx::core::anonymous namespace::Subscript>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v8 = (v4 - *a1) >> 6;
    if ((v8 + 1) >> 58)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v9 = v3 - *a1;
    v10 = v9 >> 5;
    if (v9 >> 5 <= (v8 + 1))
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFC0)
    {
      v11 = 0x3FFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    v14[4] = a1;
    if (v11)
    {
    }

    v12 = v8 << 6;
    v14[0] = 0;
    v14[1] = v12;
    v14[3] = 0;
    v13 = *a2;
    *(v12 + 16) = *(a2 + 2);
    *v12 = v13;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(v12 + 24, a2 + 3);
    v14[2] = v12 + 64;
    v7 = a1[1];
  }

  else
  {
    v5 = *a2;
    *(v4 + 16) = *(a2 + 2);
    *v4 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    result = std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(v4 + 24, a2 + 3);
    v7 = v4 + 64;
  }

  a1[1] = v7;
  return result;
}

char **std::vector<mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::Contraction,std::allocator<mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::Contraction>>::~vector[abi:ne200100](char **a1)
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
        v5 = v3 - 72;
        std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table((v3 - 56));
        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

unint64_t std::unordered_set<char>::unordered_set<std::__hash_const_iterator<std::__hash_node<char,void *> *>>(unint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__emplace_unique_key_args<char,char const&>(a1, v5 + 16, v5 + 16);
      v5 = *v5;
    }

    while (v5 != a3);
  }

  return a1;
}

uint64_t std::allocator_traits<std::allocator<mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::Contraction>>::construct[abi:ne200100]<mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::Contraction,long long &,unsigned long &,std::unordered_set<char>,unsigned long,int &,int &,void,0>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, _DWORD *a6, _DWORD *a7)
{
  v11 = *a2;
  v12 = *a3;
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(v15, a4);
  v13 = *a5;
  LODWORD(a6) = *a6;
  LODWORD(a7) = *a7;
  *a1 = v11;
  *(a1 + 8) = v12;
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(a1 + 16, v15);
  *(a1 + 56) = v13;
  *(a1 + 60) = a6;
  *(a1 + 64) = a7;
  return std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v15);
}

uint64_t *std::__split_buffer<mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::Contraction,std::allocator<mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::Contraction> &>::__split_buffer(uint64_t *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    if (a2 < 0x38E38E38E38E38FLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *a1 = 0;
  a1[1] = 72 * a3;
  a1[2] = 72 * a3;
  a1[3] = 0;
  return a1;
}

uint64_t *std::vector<mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::Contraction,std::allocator<mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::Contraction>>::__swap_out_circular_buffer(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = a2[1];
  v6 = *result;
  v5 = result[1];
  v7 = v4 - (v5 - *result);
  if (v5 != *result)
  {
    v8 = v6 + 16;
    v9 = v4 - 8 * ((v5 - *result) >> 3) + 16;
    do
    {
      *(v9 - 16) = *(v8 - 16);
      v10 = std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(v9, v8);
      v11 = *(v8 + 40);
      *(v10 + 48) = *(v8 + 48);
      *(v10 + 40) = v11;
      v12 = v8 + 56;
      v8 += 72;
      v9 = v10 + 72;
    }

    while (v12 != v5);
    do
    {
      result = std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v6 + 16);
      v6 += 72;
    }

    while (v6 != v5);
  }

  a2[1] = v7;
  v13 = *v3;
  *v3 = v7;
  v3[1] = v13;
  a2[1] = v13;
  v14 = v3[1];
  v3[1] = a2[2];
  a2[2] = v14;
  v15 = v3[2];
  v3[2] = a2[3];
  a2[3] = v15;
  *a2 = a2[1];
  return result;
}

uint64_t std::__split_buffer<mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::Contraction,std::allocator<mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::Contraction> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 72;
    std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(i - 56);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator_traits<std::allocator<mlx::core::anonymous namespace::PathNode>>::construct[abi:ne200100]<mlx::core::anonymous namespace::PathNode,std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::vector<int>,void,0>(uint64_t a1, __int128 *a2, uint64_t a3, __int128 *a4)
{
  v11 = *a2;
  v12 = *(a2 + 2);
  *a2 = 0uLL;
  *(a2 + 2) = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v9, *a3, *(a3 + 8));
  }

  else
  {
    v9 = *a3;
  }

  std::unordered_set<char>::unordered_set(v10, a3 + 24);
  v7 = *(a4 + 2);
  v8 = *a4;
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *a4 = 0;
  *a1 = v11;
  *(a1 + 16) = v12;
  v11 = 0uLL;
  v12 = 0;
  *(a1 + 24) = v9;
  memset(&v9, 0, sizeof(v9));
  std::__hash_table<char,std::hash<char>,std::equal_to<char>,std::allocator<char>>::__hash_table(a1 + 48, v10);
  *(a1 + 88) = v8;
  *(a1 + 104) = v7;
  std::__hash_table<std::__hash_value_type<unsigned long,unsigned int>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,unsigned int>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,unsigned int>>>::~__hash_table(v10);
  if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v9.__r_.__value_.__l.__data_);
  }

  v13 = &v11;
}

void sub_25A303DDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  *(v16 - 40) = v16 - 64;
  _Unwind_Resume(a1);
}

_BYTE *std::string::__init_with_size[abi:ne200100]<std::__hash_const_iterator<std::__hash_node<char,void *> *>,std::__hash_const_iterator<std::__hash_node<char,void *> *>>(_BYTE *result, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = result;
  if (a4 > 0x16)
  {
    operator new();
  }

  result[23] = a4;
  while (a2 != a3)
  {
    *v5++ = *(a2 + 16);
    a2 = *a2;
  }

  *v5 = 0;
  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::$_1 &,char *,false>(uint64_t result, char *a2, uint64_t *a3, uint64_t a4, char a5)
{
  v7 = result;
  while (2)
  {
    v8 = a2;
    v166 = a2 - 1;
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v9 = v8 - v7;
          v10 = v8 - v7 - 2;
          if (v8 - v7 > 2)
          {
            switch(v9)
            {
              case 3:
              case 4:
              case 5:
            }
          }

          else
          {
            if ((v8 - v7) < 2)
            {
              return result;
            }

            v8 = a2;
            if (v9 == 2)
            {
              v82 = *v7;
              v176 = *(a2 - 1);
              v175 = v82;
              v83 = *a3;
              v177 = &v176;
              v84 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v83, &v176, &std::piecewise_construct, &v177) + 5);
              v85 = *a3;
              v177 = &v175;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v85, &v175, &std::piecewise_construct, &v177);
              if (v84 < *(result + 20))
              {
                v86 = *v7;
                *v7 = *(a2 - 1);
                *(a2 - 1) = v86;
              }

              return result;
            }
          }

          v174 = v7;
          if (v9 <= 23)
          {
            v87 = v7 + 1;
            v88 = v7 == v8 || v87 == v8;
            v89 = v88;
            if (a5)
            {
              if ((v89 & 1) == 0)
              {
                v90 = 0;
                v91 = v7;
                do
                {
                  v92 = v91[1];
                  v93 = *v91;
                  v91 = v87;
                  v176 = v92;
                  v175 = v93;
                  v94 = *a3;
                  v177 = &v176;
                  v95 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v94, &v176, &std::piecewise_construct, &v177) + 5);
                  v96 = *a3;
                  v177 = &v175;
                  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v96, &v175, &std::piecewise_construct, &v177);
                  if (v95 < *(result + 20))
                  {
                    v97 = *v91;
                    v98 = v90;
                    while (1)
                    {
                      v7[v98 + 1] = v7[v98];
                      if (!v98)
                      {
                        break;
                      }

                      v99 = v7[v98 - 1];
                      v176 = v97;
                      v175 = v99;
                      v100 = *a3;
                      v177 = &v176;
                      v101 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v100, &v176, &std::piecewise_construct, &v177) + 5);
                      v102 = *a3;
                      v177 = &v175;
                      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v102, &v175, &std::piecewise_construct, &v177);
                      --v98;
                      v103 = v101 < *(result + 20);
                      v7 = v174;
                      if (!v103)
                      {
                        v104 = &v174[v98 + 1];
                        goto LABEL_79;
                      }
                    }

                    v104 = v7;
LABEL_79:
                    *v104 = v97;
                  }

                  v87 = v91 + 1;
                  ++v90;
                }

                while (v91 + 1 != a2);
              }
            }

            else if ((v89 & 1) == 0)
            {
              do
              {
                v154 = v7[1];
                v155 = *v7;
                v7 = v87;
                v176 = v154;
                v175 = v155;
                v156 = *a3;
                v177 = &v176;
                v157 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v156, &v176, &std::piecewise_construct, &v177) + 5);
                v158 = *a3;
                v177 = &v175;
                result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v158, &v175, &std::piecewise_construct, &v177);
                if (v157 < *(result + 20))
                {
                  v159 = *v7;
                  v160 = v7;
                  do
                  {
                    v161 = v160;
                    v162 = *--v160;
                    *v161 = v162;
                    LOBYTE(v161) = *(v161 - 2);
                    v176 = v159;
                    v175 = v161;
                    v163 = *a3;
                    v177 = &v176;
                    v164 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v163, &v176, &std::piecewise_construct, &v177) + 5);
                    v165 = *a3;
                    v177 = &v175;
                    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v165, &v175, &std::piecewise_construct, &v177);
                  }

                  while (v164 < *(result + 20));
                  *v160 = v159;
                }

                v87 = v7 + 1;
              }

              while (v7 + 1 != a2);
            }

            return result;
          }

          if (!a4)
          {
            if (v7 != v8)
            {
              v105 = v10 >> 1;
              v171 = v105;
              do
              {
                v106 = v105;
                if (v171 >= v105)
                {
                  v107 = (2 * v105) | 1;
                  v108 = &v7[v107];
                  v109 = 2 * v105 + 2;
                  v167 = v105;
                  if (v109 < v9)
                  {
                    v110 = v108[1];
                    v176 = *v108;
                    v175 = v110;
                    v111 = *a3;
                    v177 = &v176;
                    v112 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v111, &v176, &std::piecewise_construct, &v177) + 5);
                    v113 = *a3;
                    v177 = &v175;
                    v114 = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v113, &v175, &std::piecewise_construct, &v177);
                    v106 = v167;
                    if (v112 < *(v114 + 5))
                    {
                      ++v108;
                      v107 = v109;
                    }
                  }

                  v115 = &v7[v106];
                  v116 = v7[v106];
                  v176 = *v108;
                  v175 = v116;
                  v117 = *a3;
                  v177 = &v176;
                  v118 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v117, &v176, &std::piecewise_construct, &v177) + 5);
                  v119 = *a3;
                  v177 = &v175;
                  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v119, &v175, &std::piecewise_construct, &v177);
                  v106 = v167;
                  if (v118 >= *(result + 20))
                  {
                    v169 = *v115;
                    do
                    {
                      v120 = v108;
                      *v115 = *v108;
                      if (v171 < v107)
                      {
                        break;
                      }

                      v121 = (2 * v107) | 1;
                      v108 = &v174[v121];
                      v122 = 2 * v107 + 2;
                      if (v122 < v9)
                      {
                        v123 = v108[1];
                        v176 = *v108;
                        v175 = v123;
                        v124 = *a3;
                        v177 = &v176;
                        v125 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v124, &v176, &std::piecewise_construct, &v177) + 5);
                        v126 = *a3;
                        v177 = &v175;
                        if (v125 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v126, &v175, &std::piecewise_construct, &v177) + 5))
                        {
                          ++v108;
                          v121 = v122;
                        }
                      }

                      v176 = *v108;
                      v175 = v169;
                      v127 = *a3;
                      v177 = &v176;
                      v128 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v127, &v176, &std::piecewise_construct, &v177) + 5);
                      v129 = *a3;
                      v177 = &v175;
                      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v129, &v175, &std::piecewise_construct, &v177);
                      v115 = v120;
                      v107 = v121;
                    }

                    while (v128 >= *(result + 20));
                    *v120 = v169;
                    v7 = v174;
                    v106 = v167;
                  }
                }

                v105 = v106 - 1;
              }

              while (v106);
              do
              {
                v130 = 0;
                v172 = *v7;
                do
                {
                  v131 = &v7[v130];
                  v132 = &v7[v130 + 1];
                  v133 = (2 * v130) | 1;
                  v134 = 2 * v130 + 2;
                  if (v134 >= v9)
                  {
                    v130 = (2 * v130) | 1;
                  }

                  else
                  {
                    v136 = v131[2];
                    v135 = v131 + 2;
                    v176 = *(v135 - 1);
                    v175 = v136;
                    v137 = *a3;
                    v177 = &v176;
                    v138 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v137, &v176, &std::piecewise_construct, &v177) + 5);
                    v139 = *a3;
                    v177 = &v175;
                    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v139, &v175, &std::piecewise_construct, &v177);
                    if (v138 >= *(result + 20))
                    {
                      v130 = v133;
                    }

                    else
                    {
                      v132 = v135;
                      v130 = v134;
                    }
                  }

                  *v7 = *v132;
                  v7 = v132;
                }

                while (v130 <= ((v9 - 2) >> 1));
                v140 = a2 - 1;
                v88 = v132 == --a2;
                if (v88)
                {
                  *v132 = v172;
                }

                else
                {
                  *v132 = *v140;
                  *v140 = v172;
                  v141 = v132 - v174 - 1;
                  if (v132 - v174 + 1 >= 2)
                  {
                    v142 = &v174[v141 >> 1];
                    v143 = *v132;
                    v176 = *v142;
                    v175 = v143;
                    v144 = *a3;
                    v177 = &v176;
                    v145 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v144, &v176, &std::piecewise_construct, &v177) + 5);
                    v146 = *a3;
                    v177 = &v175;
                    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v146, &v175, &std::piecewise_construct, &v177);
                    if (v145 < *(result + 20))
                    {
                      v147 = v141 >> 1;
                      v148 = *v132;
                      do
                      {
                        v149 = v142;
                        *v132 = *v142;
                        if (!v147)
                        {
                          break;
                        }

                        v150 = v147 - 1;
                        v147 = (v147 - 1) >> 1;
                        v142 = &v174[v150 >> 1];
                        v176 = *v142;
                        v175 = v148;
                        v151 = *a3;
                        v177 = &v176;
                        v152 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v151, &v176, &std::piecewise_construct, &v177) + 5);
                        v153 = *a3;
                        v177 = &v175;
                        result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v153, &v175, &std::piecewise_construct, &v177);
                        v132 = v149;
                      }

                      while (v152 < *(result + 20));
                      *v149 = v148;
                    }
                  }
                }

                v103 = v9-- <= 2;
                v7 = v174;
              }

              while (!v103);
            }

            return result;
          }

          v11 = &v7[v9 >> 1];
          if (v9 < 0x81)
          {
          }

          else
          {
            v12 = v9 >> 1;
            v13 = v7 + 1;
            v14 = a4;
            v15 = &v7[v12];
            v16 = &v7[v12 - 1];
            v17 = v16;
            v7 = v174;
            v18 = *v174;
            *v174 = *v15;
            *v15 = v18;
            a4 = v14;
            v8 = a2;
          }

          v19 = a4 - 1;
          if (a5)
          {
            break;
          }

          v20 = *v7;
          v176 = *(v7 - 1);
          v175 = v20;
          v21 = *a3;
          v177 = &v176;
          v22 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v21, &v176, &std::piecewise_construct, &v177) + 5);
          v23 = *a3;
          v177 = &v175;
          if (v22 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v23, &v175, &std::piecewise_construct, &v177) + 5))
          {
            break;
          }

          v53 = v19;
          v54 = *v7;
          v55 = *v166;
          v176 = *v7;
          v175 = v55;
          v56 = *a3;
          v177 = &v176;
          v57 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v56, &v176, &std::piecewise_construct, &v177) + 5);
          v58 = *a3;
          v177 = &v175;
          result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v58, &v175, &std::piecewise_construct, &v177);
          if (v57 >= *(result + 20))
          {
            v63 = v7 + 1;
            do
            {
              v7 = v63;
              if (v63 >= v8)
              {
                break;
              }

              ++v63;
              v64 = *v7;
              v176 = v54;
              v175 = v64;
              v65 = *a3;
              v177 = &v176;
              v66 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v65, &v176, &std::piecewise_construct, &v177) + 5);
              v67 = *a3;
              v177 = &v175;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v67, &v175, &std::piecewise_construct, &v177);
            }

            while (v66 >= *(result + 20));
          }

          else
          {
            do
            {
              v59 = *++v7;
              v176 = v54;
              v175 = v59;
              v60 = *a3;
              v177 = &v176;
              v61 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v60, &v176, &std::piecewise_construct, &v177) + 5);
              v62 = *a3;
              v177 = &v175;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v62, &v175, &std::piecewise_construct, &v177);
            }

            while (v61 >= *(result + 20));
          }

          if (v7 < v8)
          {
            v8 = a2;
            do
            {
              v68 = *--v8;
              v176 = v54;
              v175 = v68;
              v69 = *a3;
              v177 = &v176;
              v70 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v69, &v176, &std::piecewise_construct, &v177) + 5);
              v71 = *a3;
              v177 = &v175;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v71, &v175, &std::piecewise_construct, &v177);
            }

            while (v70 < *(result + 20));
          }

          a4 = v53;
          while (v7 < v8)
          {
            v72 = *v7;
            *v7 = *v8;
            *v8 = v72;
            do
            {
              v73 = *++v7;
              v176 = v54;
              v175 = v73;
              v74 = *a3;
              v177 = &v176;
              v75 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v74, &v176, &std::piecewise_construct, &v177) + 5);
              v76 = *a3;
              v177 = &v175;
            }

            while (v75 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v76, &v175, &std::piecewise_construct, &v177) + 5));
            do
            {
              v77 = *--v8;
              v176 = v54;
              v175 = v77;
              v78 = *a3;
              v177 = &v176;
              v79 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v78, &v176, &std::piecewise_construct, &v177) + 5);
              v80 = *a3;
              v177 = &v175;
              result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v80, &v175, &std::piecewise_construct, &v177);
            }

            while (v79 < *(result + 20));
          }

          v81 = v7 - 1;
          if (v7 - 1 != v174)
          {
            *v174 = *v81;
          }

          a5 = 0;
          *v81 = v54;
          v8 = a2;
        }

        v170 = v19;
        v24 = 0;
        v25 = *v7;
        do
        {
          v176 = v7[v24 + 1];
          v175 = v25;
          v26 = *a3;
          v177 = &v176;
          v27 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v26, &v176, &std::piecewise_construct, &v177) + 5);
          v28 = *a3;
          v177 = &v175;
          ++v24;
        }

        while (v27 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v28, &v175, &std::piecewise_construct, &v177) + 5));
        v29 = &v7[v24];
        v30 = v8;
        if (v24 == 1)
        {
          v30 = v8;
          do
          {
            if (v29 >= v30)
            {
              break;
            }

            v35 = *--v30;
            v176 = v35;
            v175 = v25;
            v36 = *a3;
            v177 = &v176;
            v37 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v36, &v176, &std::piecewise_construct, &v177) + 5);
            v38 = *a3;
            v177 = &v175;
          }

          while (v37 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v38, &v175, &std::piecewise_construct, &v177) + 5));
        }

        else
        {
          do
          {
            v31 = *--v30;
            v176 = v31;
            v175 = v25;
            v32 = *a3;
            v177 = &v176;
            v33 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v32, &v176, &std::piecewise_construct, &v177) + 5);
            v34 = *a3;
            v177 = &v175;
          }

          while (v33 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v34, &v175, &std::piecewise_construct, &v177) + 5));
        }

        if (v29 >= v30)
        {
          v50 = v29 - 1;
        }

        else
        {
          v39 = v29;
          v40 = v30;
          do
          {
            v41 = *v39;
            *v39 = *v40;
            *v40 = v41;
            do
            {
              v42 = *++v39;
              v176 = v42;
              v175 = v25;
              v43 = *a3;
              v177 = &v176;
              v44 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v43, &v176, &std::piecewise_construct, &v177) + 5);
              v45 = *a3;
              v177 = &v175;
            }

            while (v44 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v45, &v175, &std::piecewise_construct, &v177) + 5));
            do
            {
              v46 = *--v40;
              v176 = v46;
              v175 = v25;
              v47 = *a3;
              v177 = &v176;
              v48 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v47, &v176, &std::piecewise_construct, &v177) + 5);
              v49 = *a3;
              v177 = &v175;
            }

            while (v48 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v49, &v175, &std::piecewise_construct, &v177) + 5));
          }

          while (v39 < v40);
          v50 = v39 - 1;
          v8 = a2;
        }

        if (v50 != v174)
        {
          *v174 = *v50;
        }

        *v50 = v25;
        v51 = v29 >= v30;
        a4 = v170;
        if (v51)
        {
          break;
        }

LABEL_39:
        a5 = 0;
        v7 = v50 + 1;
      }

      v7 = v50 + 1;
      if (result)
      {
        break;
      }

      if (!v52)
      {
        goto LABEL_39;
      }
    }

    a2 = v50;
    v7 = v174;
    if (!v52)
    {
      continue;
    }

    return result;
  }
}

uint64_t **std::__sort3[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::$_1 &,char *,0>(char *a1, char *a2, char *a3, uint64_t *a4)
{
  v8 = *a1;
  v32 = *a2;
  v31 = v8;
  v9 = *a4;
  v33 = &v32;
  v10 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v9, &v32, &std::piecewise_construct, &v33) + 5);
  v11 = *a4;
  v33 = &v31;
  v12 = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v11, &v31, &std::piecewise_construct, &v33);
  v13 = *a2;
  if (v10 >= *(v12 + 5))
  {
    v32 = *a3;
    v31 = v13;
    v19 = *a4;
    v33 = &v32;
    v20 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v19, &v32, &std::piecewise_construct, &v33) + 5);
    v21 = *a4;
    v33 = &v31;
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v21, &v31, &std::piecewise_construct, &v33);
    if (v20 < *(result + 5))
    {
      v22 = *a2;
      *a2 = *a3;
      *a3 = v22;
      v23 = *a1;
      v32 = *a2;
      v31 = v23;
      v24 = *a4;
      v33 = &v32;
      v25 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v24, &v32, &std::piecewise_construct, &v33) + 5);
      v26 = *a4;
      v33 = &v31;
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v26, &v31, &std::piecewise_construct, &v33);
      if (v25 < *(result + 5))
      {
        v27 = *a1;
        *a1 = *a2;
        *a2 = v27;
      }
    }
  }

  else
  {
    v32 = *a3;
    v31 = v13;
    v14 = *a4;
    v33 = &v32;
    v15 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v14, &v32, &std::piecewise_construct, &v33) + 5);
    v16 = *a4;
    v33 = &v31;
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v16, &v31, &std::piecewise_construct, &v33);
    v18 = *a1;
    if (v15 >= *(result + 5))
    {
      *a1 = *a2;
      *a2 = v18;
      v32 = *a3;
      v31 = v18;
      v28 = *a4;
      v33 = &v32;
      v29 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v28, &v32, &std::piecewise_construct, &v33) + 5);
      v30 = *a4;
      v33 = &v31;
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v30, &v31, &std::piecewise_construct, &v33);
      if (v29 >= *(result + 5))
      {
        return result;
      }

      v18 = *a2;
      *a2 = *a3;
    }

    else
    {
      *a1 = *a3;
    }

    *a3 = v18;
  }

  return result;
}

uint64_t **std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::$_1 &,char *,0>(char *a1, char *a2, char *a3, char *a4, uint64_t *a5)
{
  v10 = *a3;
  v27 = *a4;
  v26 = v10;
  v11 = *a5;
  v28 = &v27;
  v12 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v11, &v27, &std::piecewise_construct, &v28) + 5);
  v13 = *a5;
  v28 = &v26;
  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v13, &v26, &std::piecewise_construct, &v28);
  if (v12 < *(result + 5))
  {
    v15 = *a3;
    *a3 = *a4;
    *a4 = v15;
    v16 = *a2;
    v27 = *a3;
    v26 = v16;
    v17 = *a5;
    v28 = &v27;
    v18 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v17, &v27, &std::piecewise_construct, &v28) + 5);
    v19 = *a5;
    v28 = &v26;
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v19, &v26, &std::piecewise_construct, &v28);
    if (v18 < *(result + 5))
    {
      v20 = *a2;
      *a2 = *a3;
      *a3 = v20;
      v21 = *a1;
      v27 = *a2;
      v26 = v21;
      v22 = *a5;
      v28 = &v27;
      v23 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v22, &v27, &std::piecewise_construct, &v28) + 5);
      v24 = *a5;
      v28 = &v26;
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v24, &v26, &std::piecewise_construct, &v28);
      if (v23 < *(result + 5))
      {
        v25 = *a1;
        *a1 = *a2;
        *a2 = v25;
      }
    }
  }

  return result;
}

uint64_t **std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::$_1 &,char *,0>(char *a1, char *a2, char *a3, char *a4, char *a5, uint64_t *a6)
{
  v12 = *a4;
  v34 = *a5;
  v33 = v12;
  v13 = *a6;
  v35 = &v34;
  v14 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v13, &v34, &std::piecewise_construct, &v35) + 5);
  v15 = *a6;
  v35 = &v33;
  result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v15, &v33, &std::piecewise_construct, &v35);
  if (v14 < *(result + 5))
  {
    v17 = *a4;
    *a4 = *a5;
    *a5 = v17;
    v18 = *a3;
    v34 = *a4;
    v33 = v18;
    v19 = *a6;
    v35 = &v34;
    v20 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v19, &v34, &std::piecewise_construct, &v35) + 5);
    v21 = *a6;
    v35 = &v33;
    result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v21, &v33, &std::piecewise_construct, &v35);
    if (v20 < *(result + 5))
    {
      v22 = *a3;
      *a3 = *a4;
      *a4 = v22;
      v23 = *a2;
      v34 = *a3;
      v33 = v23;
      v24 = *a6;
      v35 = &v34;
      v25 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v24, &v34, &std::piecewise_construct, &v35) + 5);
      v26 = *a6;
      v35 = &v33;
      result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v26, &v33, &std::piecewise_construct, &v35);
      if (v25 < *(result + 5))
      {
        v27 = *a2;
        *a2 = *a3;
        *a3 = v27;
        v28 = *a1;
        v34 = *a2;
        v33 = v28;
        v29 = *a6;
        v35 = &v34;
        v30 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v29, &v34, &std::piecewise_construct, &v35) + 5);
        v31 = *a6;
        v35 = &v33;
        result = std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v31, &v33, &std::piecewise_construct, &v35);
        if (v30 < *(result + 5))
        {
          v32 = *a1;
          *a1 = *a2;
          *a2 = v32;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,mlx::core::anonymous namespace::greedy_path(std::vector<mlx::core::anonymous namespace::Subscript>,mlx::core::anonymous namespace::Subscript const&,std::unordered_map<char,int>,unsigned long,unsigned long)::$_1 &,char *>(char *a1, char *a2, uint64_t *a3)
{
  v4 = a2;
  v6 = a2 - a1;
  if (a2 - a1 <= 2)
  {
    if ((a2 - a1) >= 2)
    {
      if (v6 == 2)
      {
        v7 = *a1;
        v32 = *(a2 - 1);
        v31 = v7;
        v8 = *a3;
        v33 = &v32;
        v9 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v8, &v32, &std::piecewise_construct, &v33) + 5);
        v10 = *a3;
        v33 = &v31;
        if (v9 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v10, &v31, &std::piecewise_construct, &v33) + 5))
        {
          v11 = *a1;
          *a1 = *(v4 - 1);
          *(v4 - 1) = v11;
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
      return 1;
    case 4:
      return 1;
    case 5:
      return 1;
  }

LABEL_11:
  v12 = a1 + 2;
  v13 = a1 + 3;
  if (a1 + 3 == v4)
  {
    return 1;
  }

  v14 = 0;
  v15 = 3;
  v29 = v4;
  while (1)
  {
    v16 = *v12;
    v32 = *v13;
    v31 = v16;
    v17 = *a3;
    v33 = &v32;
    v18 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v17, &v32, &std::piecewise_construct, &v33) + 5);
    v19 = *a3;
    v33 = &v31;
    if (v18 < *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v19, &v31, &std::piecewise_construct, &v33) + 5))
    {
      v30 = v14;
      v20 = *v13;
      v21 = v15;
      while (1)
      {
        v22 = &a1[v21];
        a1[v21] = a1[v21 - 1];
        if (!--v21)
        {
          break;
        }

        v23 = *(v22 - 2);
        v32 = v20;
        v31 = v23;
        v24 = *a3;
        v33 = &v32;
        v25 = *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v24, &v32, &std::piecewise_construct, &v33) + 5);
        v26 = *a3;
        v33 = &v31;
        if (v25 >= *(std::__hash_table<std::__hash_value_type<char,int>,std::__unordered_map_hasher<char,std::__hash_value_type<char,int>,std::hash<char>,std::equal_to<char>,true>,std::__unordered_map_equal<char,std::__hash_value_type<char,int>,std::equal_to<char>,std::hash<char>,true>,std::allocator<std::__hash_value_type<char,int>>>::__emplace_unique_key_args<char,std::piecewise_construct_t const&,std::tuple<char const&>,std::tuple<>>(v26, &v31, &std::piecewise_construct, &v33) + 5))
        {
          v27 = &a1[v21];
          goto LABEL_19;
        }
      }

      v27 = a1;
LABEL_19:
      *v27 = v20;
      v14 = v30 + 1;
      v4 = v29;
      if (v30 == 7)
      {
        return v13 + 1 == v29;
      }
    }

    v12 = v13;
    ++v15;
    if (++v13 == v4)
    {
      return 1;
    }
  }
}