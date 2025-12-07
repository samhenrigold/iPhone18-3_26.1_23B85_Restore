float llvm::BalancedPartitioning::logCost(llvm::BalancedPartitioning *this, unsigned int a2, unsigned int a3)
{
  v6 = a2 + 1;
  if ((a2 + 1) >> 14)
  {
    v7 = log2(v6);
    v8 = a3 + 1;
    if ((a3 + 1) >> 14)
    {
      goto LABEL_3;
    }

LABEL_5:
    v9 = *(this + v8 + 2);
    return -((v9 * a3) + (a2 * v7));
  }

  v7 = *(this + v6 + 2);
  v8 = a3 + 1;
  if (!((a3 + 1) >> 14))
  {
    goto LABEL_5;
  }

LABEL_3:
  v9 = log2(v8);
  return -((v9 * a3) + (a2 * v7));
}

float llvm::BalancedPartitioning::moveGain(uint64_t a1, char a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return 0.0;
  }

  v4 = *(a1 + 8);
  v5 = (v4 + 4 * v3);
  v6 = *a3;
  v7 = (v3 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  v8 = v7 + 1;
  if (a2)
  {
    if (v7)
    {
      v9 = (v4 + 4 * (v8 & 0x7FFFFFFFFFFFFFFELL));
      v10 = (v4 + 4);
      result = 0.0;
      v12 = v8 & 0x7FFFFFFFFFFFFFFELL;
      do
      {
        result = (result + *(v6 + 20 * *(v10 - 1) + 8)) + *(v6 + 20 * *v10 + 8);
        v10 += 2;
        v12 -= 2;
      }

      while (v12);
      if (v8 == (v8 & 0x7FFFFFFFFFFFFFFELL))
      {
        return result;
      }
    }

    else
    {
      result = 0.0;
      v9 = *(a1 + 8);
    }

    do
    {
      v16 = *v9++;
      result = result + *(v6 + 20 * v16 + 8);
    }

    while (v9 != v5);
    return result;
  }

  if (!v7)
  {
    result = 0.0;
    v13 = *(a1 + 8);
    do
    {
LABEL_18:
      v17 = *v13++;
      result = result + *(v6 + 20 * v17 + 12);
    }

    while (v13 != v5);
    return result;
  }

  v13 = (v4 + 4 * (v8 & 0x7FFFFFFFFFFFFFFELL));
  v14 = (v4 + 4);
  result = 0.0;
  v15 = v8 & 0x7FFFFFFFFFFFFFFELL;
  do
  {
    result = (result + *(v6 + 20 * *(v14 - 1) + 12)) + *(v6 + 20 * *v14 + 12);
    v14 += 2;
    v15 -= 2;
  }

  while (v15);
  if (v8 != (v8 & 0x7FFFFFFFFFFFFFFELL))
  {
    goto LABEL_18;
  }

  return result;
}

BOOL llvm::BalancedPartitioning::moveFunctionNode(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t *a5, uint64_t a6)
{
  v6 = *(a6 + 2496);
  v7 = (v6 + 1) % 0x270uLL;
  v8 = *(a6 + 4 * v7);
  if (v8)
  {
    v9 = -1727483681;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9 ^ *(a6 + 4 * ((v6 + 397) % 0x270uLL)) ^ ((v8 & 0x7FFFFFFE | *(a6 + 4 * v6) & 0x80000000) >> 1);
  *(a6 + 4 * v6) = v10;
  *(a6 + 2496) = v7;
  v11 = ((v10 ^ (v10 >> 11)) << 7) & 0x9D2C5680 ^ v10 ^ (v10 >> 11);
  v12 = vcvts_n_f32_u32((v11 << 15) & 0xEFC60000 ^ v11 ^ (((v11 << 15) & 0xEFC60000 ^ v11) >> 18), 0x20uLL);
  v13 = *(*a1 + 8);
  if (v12 > v13)
  {
    v14 = *(a2 + 44) & (*(a2 + 40) == a3);
    if ((*(a2 + 44) & (*(a2 + 40) == a3)) == 0)
    {
      a4 = a3;
    }

    *(a2 + 40) = a4;
    *(a2 + 44) = 1;
    v16 = *(a2 + 8);
    v17 = *(a2 + 16);
    if (v14 == 1)
    {
      if (v17)
      {
        v18 = *a5;
        v19 = 4 * v17;
        do
        {
          v20 = *v16++;
          v21 = (v18 + 20 * v20);
          *v21 = vadd_s32(*v21, 0x1FFFFFFFFLL);
          v21[2].i8[0] = 0;
          v19 -= 4;
        }

        while (v19);
      }
    }

    else if (v17)
    {
      v22 = *a5;
      v23 = 4 * v17;
      do
      {
        v24 = *v16++;
        v25 = (v22 + 20 * v24);
        *v25 = vadd_s32(*v25, 0xFFFFFFFF00000001);
        v25[2].i8[0] = 0;
        v23 -= 4;
      }

      while (v23);
    }
  }

  return v12 > v13;
}

float llvm::BalancedPartitioning::log2Cached(llvm::BalancedPartitioning *this, unsigned int a2)
{
  if (a2 >> 14)
  {
    return log2(a2);
  }

  else
  {
    return *(this + a2 + 2);
  }
}

void *llvm::format_provider<llvm::iterator_range<unsigned int const*>,void>::format(unsigned int **a1, llvm::StringRef *a2, unsigned __int8 *a3, size_t a4)
{
  result = llvm::format_provider<llvm::iterator_range<unsigned int *>,void>::parseOptions(a3, a4, &v14);
  v7 = v14;
  v8 = v15;
  v9 = v16;
  v10 = v17;
  v11 = *a1;
  v12 = a1[1];
  if (v11 != v12)
  {
    v14 = &unk_28689E5A0;
    v15 = v11;
    result = llvm::format_provider<unsigned int,void>::format(v11++, a2, v16, v17);
  }

  if (v11 != v12)
  {
    if (v8)
    {
      do
      {
        v13 = *(a2 + 4);
        if (v8 <= *(a2 + 3) - v13)
        {
          memcpy(v13, v7, v8);
          *(a2 + 4) += v8;
        }

        else
        {
          llvm::raw_ostream::write(a2, v7, v8);
        }

        v14 = &unk_28689E5A0;
        v15 = v11;
        result = llvm::format_provider<unsigned int,void>::format(v11++, a2, v9, v10);
      }

      while (v11 != v12);
    }

    else
    {
      do
      {
        v14 = &unk_28689E5A0;
        v15 = v11;
        result = llvm::format_provider<unsigned int,void>::format(v11++, a2, v9, v10);
      }

      while (v11 != v12);
    }
  }

  return result;
}

llvm::raw_ostream *llvm::support::detail::stream_operator_format_adapter<std::optional<unsigned int> const&>::format(uint64_t a1, llvm::raw_ostream *a2)
{
  v2 = *(a1 + 8);
  if (*(v2 + 4) == 1)
  {
    return llvm::raw_ostream::operator<<(a2, *v2);
  }

  else
  {
    return llvm::operator<<(a2);
  }
}

void std::swap[abi:nn200100]<llvm::BPFunctionNode>(const void **a1, const void **a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = *a1;
  v10 = v12;
  v11 = 0x400000000;
  if (*(a1 + 4))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v10, a1 + 1);
  }

  v13 = *(a1 + 5);
  *a1 = *a2;
  llvm::SmallVectorImpl<unsigned int>::operator=((a1 + 1), a2 + 1);
  *(a1 + 5) = *(a2 + 5);
  v4 = v10;
  *a2 = v9;
  if (&v9 != a2)
  {
    if (v4 != v12)
    {
      v5 = a2[1];
      if (v5 != a2 + 3)
      {
        free(v5);
        v4 = v10;
      }

      a2[1] = v4;
      a2[2] = v11;
      v10 = v12;
      HIDWORD(v11) = 0;
      goto LABEL_17;
    }

    v6 = v11;
    v7 = *(a2 + 4);
    if (v7 >= v11)
    {
      if (v11)
      {
        memmove(a2[1], v4, 4 * v11);
      }

      goto LABEL_16;
    }

    if (*(a2 + 5) < v11)
    {
      *(a2 + 4) = 0;
      llvm::SmallVectorBase<unsigned int>::grow_pod();
    }

    if (v7)
    {
      memmove(a2[1], v4, 4 * v7);
      v8 = v11 - v7;
      if (v11 == v7)
      {
LABEL_16:
        *(a2 + 4) = v6;
LABEL_17:
        LODWORD(v11) = 0;
        v4 = v10;
        goto LABEL_18;
      }
    }

    else
    {
      v7 = 0;
      v8 = v11;
      if (!v11)
      {
        goto LABEL_16;
      }
    }

    memcpy(a2[1] + 4 * v7, &v10[4 * v7], 4 * v8);
    goto LABEL_16;
  }

LABEL_18:
  *(a2 + 5) = v13;
  if (v4 != v12)
  {
    free(v4);
  }
}

__n128 std::__function::__func<void llvm::BalancedPartitioning::BPThreadPool::async<llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0>(llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0 &&)::{lambda(void)#1},std::allocator<llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689E630;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void llvm::BalancedPartitioning::BPThreadPool::async<llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0>(llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0 &&)::{lambda(void)#1},std::allocator<llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0 &&>,void ()(void)>::operator()(uint64_t *a1)
{
  v1 = a1[5];
  llvm::BalancedPartitioning::bisect(a1[2], a1[3], a1[4], 0, 1u, 0, a1[1]);
  if (atomic_fetch_add((v1 + 120), 0xFFFFFFFF) == 1)
  {
    std::mutex::lock((v1 + 8));
    *(v1 + 124) = 1;
    std::mutex::unlock((v1 + 8));

    std::condition_variable::notify_one((v1 + 72));
  }
}

uint64_t std::__function::__func<void llvm::BalancedPartitioning::BPThreadPool::async<llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0>(llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0 &&)::{lambda(void)#1},std::allocator<llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_0 &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_3runERNSt3__16vectorINS_14BPFunctionNodeENS3_9allocatorIS5_EEEEE3$_0EEvOT_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_3runERNSt3__16vectorINS_14BPFunctionNodeENS3_9allocatorIS5_EEEEE3$_0EEvOT_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_3runERNSt3__16vectorINS_14BPFunctionNodeENS3_9allocatorIS5_EEEEE3$_0EEvOT_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_3runERNSt3__16vectorINS_14BPFunctionNodeENS3_9allocatorIS5_EEEEE3$_0EEvOT_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

void std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(uint64_t a1, void *a2, unint64_t a3, void *a4, int64_t a5)
{
  v51 = *MEMORY[0x277D85DE8];
  if (a3 < 2)
  {
    return;
  }

  if (a3 == 2)
  {
    if (*(a1 + 44) == 1 && ((*(a2 - 12) & 1) == 0 || *(a2 - 4) < *(a1 + 40)))
    {
      v7 = (a2 - 7);

      std::swap[abi:nn200100]<llvm::BPFunctionNode>(a1, v7);
    }

    return;
  }

  v8 = a3;
  if (a3 > 0)
  {
    v10 = a3 >> 1;
    v11 = (a1 + 56 * (a3 >> 1));
    v12 = a3 - (a3 >> 1);
    v13 = a3 >> 1;
    if (v8 <= a5)
    {
      std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(a1, v11, v13, a4);
      v35 = &a4[7 * v10];
      std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(a1 + 56 * (v8 >> 1), a2, v8 - (v8 >> 1), v35);
      v36 = &a4[7 * v8];
      v37 = (a1 + 40);
      v38 = v35;
      v39 = a4;
      while (v38 != v36)
      {
        if (*(v39 + 44) != 1 || (*(v38 + 44) & 1) != 0 && *(v38 + 10) >= *(v39 + 10))
        {
          *(v37 - 5) = *v39;
          llvm::SmallVectorImpl<unsigned int>::operator=((v37 - 2), v39 + 1);
          *v37 = *(v39 + 5);
          v37 = (v37 + 56);
          v39 += 7;
          if (v39 == v35)
          {
            goto LABEL_73;
          }
        }

        else
        {
          *(v37 - 5) = *v38;
          llvm::SmallVectorImpl<unsigned int>::operator=((v37 - 2), v38 + 1);
          *v37 = *(v38 + 5);
          v37 = (v37 + 56);
          v38 += 7;
          if (v39 == v35)
          {
LABEL_73:
            if (v38 != v36)
            {
              v40 = 0;
              do
              {
                v41 = &v38[v40];
                *(v37 + v40 * 8 - 40) = v38[v40];
                llvm::SmallVectorImpl<unsigned int>::operator=(v37 + v40 * 8 - 32, &v38[v40 + 1]);
                *(v37 + v40 * 8) = *&v38[v40 + 5];
                v40 += 7;
              }

              while (v41 + 7 != v36);
            }

            goto LABEL_80;
          }
        }
      }

      if (v39 != v35)
      {
        v42 = 0;
        do
        {
          v43 = &v39[v42];
          *(v37 + v42 * 8 - 40) = v39[v42];
          llvm::SmallVectorImpl<unsigned int>::operator=(v37 + v42 * 8 - 32, &v39[v42 + 1]);
          *(v37 + v42 * 8) = *&v39[v42 + 5];
          v42 += 7;
        }

        while (v43 + 7 != v35);
      }

LABEL_80:
      if (a4)
      {
        v44 = a4 + 3;
        do
        {
          v45 = *(v44 - 2);
          if (v44 != v45)
          {
            free(v45);
          }

          v44 += 7;
          --v8;
        }

        while (v8);
      }
    }

    else
    {
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(a1, v11, v13, a4, a5);
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(a1 + 56 * (v8 >> 1), a2, v8 - (v8 >> 1), a4, a5);

      std::__inplace_merge<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(a1, v11, a2, v10, v12, a4, a5);
    }

    return;
  }

  if (a1 == a2)
  {
    return;
  }

  v15 = (a1 + 56);
  if ((a1 + 56) == a2)
  {
    return;
  }

  v16 = 0;
  v17 = a1;
  while (2)
  {
    v18 = v17;
    v17 = v15;
    if (*(v18 + 44) != 1 || (*(v18 + 100) & 1) != 0 && *(v18 + 96) >= *(v18 + 40))
    {
      goto LABEL_18;
    }

    v46 = *v15;
    v47 = v49;
    v48 = 0x400000000;
    if (*(v18 + 72))
    {
      llvm::SmallVectorImpl<unsigned int>::operator=(&v47, (v18 + 64));
    }

    v50 = *(v18 + 96);
    v19 = v16;
    while (1)
    {
      v20 = v19;
      v21 = a1 + v19;
      v22 = *(a1 + v19 + 8);
      *(a1 + v19 + 56) = *(a1 + v19);
      if ((a1 + v19 + 24) != v22)
      {
        break;
      }

      v27 = (v21 + 16);
      v26 = *(v21 + 16);
      v28 = *(v21 + 72);
      if (v28 >= v26)
      {
        if (v26)
        {
          memmove(*(v21 + 64), v22, 4 * v26);
        }
      }

      else
      {
        if (*(a1 + v19 + 76) < v26)
        {
          *(v21 + 72) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v28)
        {
          memmove(*(v21 + 64), v22, 4 * v28);
          v29 = *v27 - v28;
          if (!v29)
          {
            goto LABEL_38;
          }

LABEL_37:
          memcpy((*(v21 + 64) + 4 * v28), (*(v21 + 8) + 4 * v28), 4 * v29);
          goto LABEL_38;
        }

        v28 = 0;
        v29 = *v27;
        if (*v27)
        {
          goto LABEL_37;
        }
      }

LABEL_38:
      *(v21 + 72) = v26;
      *v27 = 0;
      v25 = a1 + v20;
      *(a1 + v20 + 96) = *(a1 + v20 + 40);
      if (!v20)
      {
        goto LABEL_47;
      }

LABEL_39:
      if (*(v25 - 12) == 1)
      {
        v18 -= 56;
        v19 = v20 - 56;
        if ((BYTE4(v50) & 1) == 0 || v50 < *(a1 + v20 - 16))
        {
          continue;
        }
      }

      v30 = a1 + v20;
      v31 = v47;
      *(a1 + v20) = v46;
      if ((a1 + v20) == &v46)
      {
        goto LABEL_64;
      }

      goto LABEL_48;
    }

    v23 = *(v21 + 64);
    if ((v21 + 80) != v23)
    {
      free(v23);
      v22 = *(v21 + 8);
    }

    v24 = a1 + v20;
    *(v21 + 64) = v22;
    *(v24 + 72) = *(a1 + v20 + 16);
    *(v21 + 8) = v21 + 24;
    *(v24 + 20) = 0;
    *(v18 + 16) = 0;
    v25 = a1 + v20;
    *(a1 + v20 + 96) = *(a1 + v20 + 40);
    if (v20)
    {
      goto LABEL_39;
    }

LABEL_47:
    v30 = a1;
    v31 = v47;
    *a1 = v46;
    if (a1 == &v46)
    {
      goto LABEL_64;
    }

LABEL_48:
    if (v31 == v49)
    {
      v33 = v48;
      v34 = *(v30 + 16);
      if (v34 >= v48)
      {
        if (v48)
        {
          memmove(*(v25 + 8), v31, 4 * v48);
        }
      }

      else
      {
        if (*(v30 + 20) < v48)
        {
          *(v30 + 16) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v34)
        {
          memmove(*(v25 + 8), v31, 4 * v34);
        }

        else
        {
          v34 = 0;
        }

        if (v48 != v34)
        {
          memcpy((*(v25 + 8) + 4 * v34), &v47[4 * v34], 4 * (v48 - v34));
        }
      }

      *(v30 + 16) = v33;
    }

    else
    {
      v32 = *(v25 + 8);
      if (v32 != (v30 + 24))
      {
        free(v32);
        v31 = v47;
      }

      *(v25 + 8) = v31;
      *(v30 + 16) = v48;
      v47 = v49;
      HIDWORD(v48) = 0;
    }

    LODWORD(v48) = 0;
    v31 = v47;
LABEL_64:
    *(v25 + 40) = v50;
    if (v31 != v49)
    {
      free(v31);
    }

LABEL_18:
    v15 = (v17 + 56);
    v16 += 56;
    if ((v17 + 56) != a2)
    {
      continue;
    }

    break;
  }
}

void std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(uint64_t a1, const void **a2, unint64_t a3, void *a4)
{
  if (!a3)
  {
    return;
  }

  v4 = a4;
  v5 = a2;
  v6 = a1;
  if (a3 == 2)
  {
    v7 = a2 - 2;
    if (*(a1 + 44) == 1 && ((*(a2 - 12) & 1) == 0 || *(a2 - 4) < *(a1 + 40)))
    {
      *a4 = *(a2 - 7);
      a4[1] = a4 + 3;
      a4[2] = 0x400000000;
      if (*(a2 - 10))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=((a4 + 1), a2 - 6);
      }

      v39 = *v7;
      v4[8] = v4 + 10;
      *(v4 + 5) = v39;
      v4[7] = *v6;
      v4[9] = 0x400000000;
      if (*(v6 + 16))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=((v4 + 8), (v6 + 8));
      }

      v9 = *(v6 + 40);
    }

    else
    {
      *a4 = *a1;
      a4[1] = a4 + 3;
      a4[2] = 0x400000000;
      if (*(a1 + 16))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=((a4 + 1), (a1 + 8));
      }

      v8 = *(v6 + 40);
      v4[8] = v4 + 10;
      *(v4 + 5) = v8;
      v4[7] = *(v5 - 7);
      v4[9] = 0x400000000;
      if (*(v5 - 10))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=((v4 + 8), v5 - 6);
      }

      v9 = *v7;
    }

    *(v4 + 6) = v9;
  }

  else
  {
    if (a3 == 1)
    {
      *a4 = *a1;
      a4[1] = a4 + 3;
      a4[2] = 0x400000000;
      if (*(a1 + 16))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=((a4 + 1), (a1 + 8));
      }

      *(v4 + 5) = *(v6 + 40);
      return;
    }

    if (a3 > 8)
    {
      v28 = a3 >> 1;
      v29 = 56 * (a3 >> 1);
      v30 = v29 + a1;
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(a1, (v29 + a1), v28, a4, v28);
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(v29 + v6, v5, a3 - v28, &v4[v29 / 8], a3 - v28);
      v32 = v29 + v6;
      while (v32 != v5)
      {
        if (*(v6 + 44) == 1 && ((*(v32 + 44) & 1) == 0 || *(v32 + 40) < *(v6 + 40)))
        {
          *v4 = *v32;
          v4[1] = v4 + 3;
          v4[2] = 0x400000000;
          if (*(v32 + 16))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=((v4 + 1), (v32 + 8));
          }

          *(v4 + 5) = *(v32 + 40);
          v32 += 56;
          v4 += 7;
          if (v6 == v30)
          {
LABEL_67:
            if (v32 != v5)
            {
              v33 = 0;
              do
              {
                v34 = v32 + v33 * 8;
                v35 = &v4[v33];
                *v35 = *(v32 + v33 * 8);
                v4[v33 + 1] = &v4[v33 + 3];
                v35[2] = 0x400000000;
                if (*(v32 + v33 * 8 + 16))
                {
                  llvm::SmallVectorImpl<unsigned int>::operator=(&v4[v33 + 1], (v34 + 8));
                }

                *(v35 + 5) = *(v34 + 40);
                v33 += 7;
              }

              while ((v34 + 56) != v5);
            }

            return;
          }
        }

        else
        {
          *v4 = *v6;
          v4[1] = v4 + 3;
          v4[2] = 0x400000000;
          if (*(v6 + 16))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=((v4 + 1), (v6 + 8));
          }

          *(v4 + 5) = *(v6 + 40);
          v6 += 56;
          v4 += 7;
          if (v6 == v30)
          {
            goto LABEL_67;
          }
        }
      }

      if (v6 != v30)
      {
        v36 = 0;
        do
        {
          v37 = v6 + v36 * 8;
          v38 = &v4[v36];
          *v38 = *(v6 + v36 * 8);
          v4[v36 + 1] = &v4[v36 + 3];
          v38[2] = 0x400000000;
          if (*(v6 + v36 * 8 + 16))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=(&v4[v36 + 1], (v37 + 8));
          }

          *(v38 + 5) = *(v37 + 40);
          v36 += 7;
        }

        while (v37 + 56 != v30);
      }
    }

    else if (a1 != a2)
    {
      *a4 = *a1;
      a4[1] = a4 + 3;
      a4[2] = 0x400000000;
      if (*(a1 + 16))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=((a4 + 1), (a1 + 8));
      }

      *(v4 + 5) = *(v6 + 40);
      v10 = (v6 + 56);
      if ((v6 + 56) != v5)
      {
        v11 = 0;
        v12 = v4;
        v40 = v5;
        do
        {
          v14 = v10;
          if (*(v12 + 44) != 1 || (*(v6 + 100) & 1) != 0 && *(v6 + 96) >= *(v12 + 10))
          {
            v15 = *v10;
            v12[8] = v12 + 10;
            v12[7] = v15;
            v12[9] = 0x400000000;
            if (*(v6 + 72))
            {
              llvm::SmallVectorImpl<unsigned int>::operator=((v12 + 8), (v6 + 64));
            }

            v13 = v12 + 12;
            goto LABEL_22;
          }

          v42 = v10;
          v12[7] = *v12;
          v12[8] = v12 + 10;
          v12[9] = 0x400000000;
          if (*(v12 + 4))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=((v12 + 8), v12 + 1);
          }

          *(v12 + 6) = *(v12 + 5);
          v16 = v4;
          if (v12 == v4)
          {
            goto LABEL_55;
          }

          v41 = v11;
          v16 = v12;
          do
          {
            v17 = v4 + v11;
            if (*(v4 + v11 - 12) != 1)
            {
              v16 = (v4 + v11);
              goto LABEL_54;
            }

            v18 = v17 - 16;
            if ((*(v6 + 100) & 1) != 0 && *(v6 + 96) >= *v18)
            {
              goto LABEL_54;
            }

            v19 = (v4 + v11);
            *(v4 + v11) = *(v17 - 7);
            v20 = *(v4 + v11 - 48);
            v21 = v4 + v11 - 32;
            if (v21 == v20)
            {
              v24 = (v19 - 5);
              v25 = *(v19 - 10);
              v26 = *(v19 + 4);
              if (v26 >= v25)
              {
                if (v25)
                {
                  memmove(v19[1], v20, 4 * v25);
                }
              }

              else
              {
                if (*(v4 + v11 + 20) < v25)
                {
                  *(v19 + 4) = 0;
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                if (v26)
                {
                  memmove(v19[1], v20, 4 * v26);
                  v27 = *v24 - v26;
                  if (v27)
                  {
                    goto LABEL_32;
                  }
                }

                else
                {
                  v26 = 0;
                  v27 = *v24;
                  if (*v24)
                  {
LABEL_32:
                    memcpy(v19[1] + 4 * v26, *(v19 - 6) + 4 * v26, 4 * v27);
                  }
                }
              }

              *(v19 + 4) = v25;
              goto LABEL_34;
            }

            v22 = v19[1];
            if (v19 + 3 != v22)
            {
              free(v22);
              v20 = *(v19 - 6);
            }

            v23 = v4 + v11;
            v19[1] = v20;
            v24 = (v16 - 5);
            *(v23 + 2) = *(v4 + v11 - 40);
            *(v19 - 6) = v21;
            *(v23 - 9) = 0;
LABEL_34:
            v16 -= 7;
            *v24 = 0;
            *(v4 + v11 + 40) = *v18;
            v11 -= 56;
          }

          while (v11);
          v16 = v4;
LABEL_54:
          v5 = v40;
          v11 = v41;
LABEL_55:
          v14 = v42;
          *v16 = *v42;
          v13 = v16 + 5;
          llvm::SmallVectorImpl<unsigned int>::operator=((v16 + 1), (v6 + 64));
LABEL_22:
          v12 += 7;
          *v13 = *(v6 + 96);
          v10 = v14 + 7;
          v11 += 56;
          v6 = v14;
        }

        while (v14 + 7 != v5);
      }
    }
  }
}

void std::__inplace_merge<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(const void **a1, const void **a2, const void **a3, uint64_t a4, uint64_t a5, const void **a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  v11 = 0x6DB6DB6DB6DB6DB7;
  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return;
    }

    v12 = 0;
    v13 = -a4;
    while (BYTE4(a1[v12 / 8 + 5]) != 1 || (*(a2 + 44) & 1) != 0 && *(a2 + 10) >= LODWORD(a1[v12 / 8 + 5]))
    {
      v12 += 56;
      if (__CFADD__(v13++, 1))
      {
        return;
      }
    }

    v15 = -v13;
    v16 = &a1[v12 / 8];
    v71 = a3;
    v72 = a6;
    if (-v13 >= a5)
    {
      if (v13 == -1)
      {

        std::swap[abi:nn200100]<llvm::BPFunctionNode>(&a1[v12 / 8], a2);
        return;
      }

      v23 = v15 / 2;
      v24 = (&a1[7 * (v15 / 2)] + v12);
      if (a2 == a3 || (*(&a1[7 * v23 + 5] + v12 + 4) & 1) == 0)
      {
        v18 = a2;
      }

      else
      {
        v25 = (a3 - a2) * v11;
        v18 = a2;
        do
        {
          v26 = v25 >> 1;
          v27 = &v18[7 * (v25 >> 1)];
          v28 = *(v27 + 44);
          v29 = *(v27 + 10) >= *(v24 + 10);
          v30 = v27 + 7;
          v25 += ~(v25 >> 1);
          if ((v28 & v29) != 0)
          {
            v25 = v26;
          }

          else
          {
            v18 = v30;
          }
        }

        while (v25);
      }

      v17 = (v18 - a2) * v11;
      v19 = (&a1[7 * v23] + v12);
      a3 = v18;
      if (a2 != v19)
      {
LABEL_38:
        a3 = v19;
        if (a2 != v18)
        {
          v68 = v17;
          v69 = a7;
          v70 = a5;
          std::swap[abi:nn200100]<llvm::BPFunctionNode>(v24, a2);
          a3 = v24 + 7;
          for (i = a2 + 7; i != v18; i += 7)
          {
            if (a3 == a2)
            {
              a2 = i;
            }

            std::swap[abi:nn200100]<llvm::BPFunctionNode>(a3, i);
            a3 += 7;
          }

          if (a3 != a2)
          {
            v36 = a3;
            v37 = a2;
            while (1)
            {
              std::swap[abi:nn200100]<llvm::BPFunctionNode>(v36, v37);
              v37 += 7;
              v38 = v36 + 7 == a2;
              if (v37 == v18)
              {
                if (v36 + 7 == a2)
                {
                  break;
                }

                v37 = a2 + 7;
                v36 += 14;
                while (1)
                {
                  std::swap[abi:nn200100]<llvm::BPFunctionNode>(v36 - 7, a2);
                  v38 = v36 == a2;
                  if (v37 != v18)
                  {
                    break;
                  }

                  v39 = v36 == a2;
                  v36 += 7;
                  if (v39)
                  {
                    goto LABEL_55;
                  }
                }
              }

              else
              {
                v36 += 7;
              }

              if (v38)
              {
                a2 = v37;
              }
            }
          }

LABEL_55:
          a7 = v69;
          a5 = v70;
          v11 = 0x6DB6DB6DB6DB6DB7;
          v17 = v68;
          v16 = &a1[v12 / 8];
        }
      }
    }

    else
    {
      v17 = a5 / 2;
      v18 = &a2[7 * (a5 / 2)];
      v19 = &a1[v12 / 8];
      if (a2 - a1 != v12)
      {
        v20 = ((a2 - a1 - v12) >> 3) * v11;
        if (*(v18 + 44))
        {
          v19 = &a1[v12 / 8];
          do
          {
            v21 = v20 >> 1;
            v22 = &v19[7 * (v20 >> 1)];
            if (*(v22 + 44) != 1 || *(v22 + 10) <= *(v18 + 10))
            {
              v19 = v22 + 7;
              v21 = v20 + ~v21;
            }

            v20 = v21;
          }

          while (v21);
        }

        else
        {
          v19 = &a1[v12 / 8];
          do
          {
            v31 = v20 >> 1;
            v32 = &v19[7 * (v20 >> 1)];
            v33 = *(v32 + 44);
            v34 = v32 + 7;
            v20 += ~(v20 >> 1);
            if (v33)
            {
              v20 = v31;
            }

            else
            {
              v19 = v34;
            }
          }

          while (v20);
        }
      }

      v23 = ((v19 - a1 - v12) >> 3) * v11;
      v24 = v19;
      a3 = &a2[7 * (a5 / 2)];
      if (a2 != v19)
      {
        goto LABEL_38;
      }
    }

    v40 = v11;
    v41 = -v13 - v23;
    v42 = a5 - v17;
    if (v23 + v17 >= a5 - (v23 + v17) - v13)
    {
      v46 = a7;
      v48 = v16;
      v49 = v17;
      std::__inplace_merge<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(a3, v18, v71, v41, a5 - v17, v72, a7);
      v47 = v48;
      v42 = v49;
      a4 = v23;
      a6 = v72;
    }

    else
    {
      v43 = &a1[v12 / 8];
      v44 = -v13 - v23;
      v45 = v23;
      a6 = v72;
      v46 = a7;
      std::__inplace_merge<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::run(std::vector<llvm::BPFunctionNode> &)::$_1 &,std::__wrap_iter<llvm::BPFunctionNode*>>(v43, v19, a3, v45, v17, v72, a7);
      a4 = v44;
      v47 = a3;
      v19 = v18;
      a3 = v71;
    }

    a5 = v42;
    a1 = v47;
    a2 = v19;
    a7 = v46;
    v11 = v40;
    if (!v42)
    {
      return;
    }
  }

  if (a4 <= a5)
  {
    if (a2 == a1)
    {
      return;
    }

    v54 = 0;
    v51 = 0;
    do
    {
      v55 = &a6[v54];
      v56 = &a1[v54];
      *v55 = a1[v54];
      a6[v54 + 1] = &a6[v54 + 3];
      v55[2] = 0x400000000;
      if (LODWORD(a1[v54 + 2]))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=(&a6[v54 + 1], v56 + 1);
      }

      *(v55 + 5) = *(v56 + 5);
      ++v51;
      v54 += 7;
    }

    while (v56 + 7 != a2);
    v60 = &a6[v54];
    v61 = &a6[v54 - 7];
    v62 = a6;
    while (a2 != a3)
    {
      if (*(v62 + 44) != 1 || (*(a2 + 44) & 1) != 0 && *(a2 + 10) >= *(v62 + 40))
      {
        *a1 = *v62;
        llvm::SmallVectorImpl<unsigned int>::operator=((a1 + 1), (v62 + 8));
        *(a1 + 5) = *(v62 + 40);
        v62 += 56;
        a1 += 7;
        if (v60 == v62)
        {
          goto LABEL_97;
        }
      }

      else
      {
        *a1 = *a2;
        llvm::SmallVectorImpl<unsigned int>::operator=((a1 + 1), a2 + 1);
        *(a1 + 5) = *(a2 + 5);
        a2 += 7;
        a1 += 7;
        if (v60 == v62)
        {
          goto LABEL_97;
        }
      }
    }

    v64 = 0;
    do
    {
      v65 = v62 + v64 * 8;
      a1[v64] = *(v62 + v64 * 8);
      llvm::SmallVectorImpl<unsigned int>::operator=(&a1[v64 + 1], (v62 + v64 * 8 + 8));
      *&a1[v64 + 5] = *(v62 + v64 * 8 + 40);
      v64 += 7;
    }

    while (v61 != v65);
  }

  else
  {
    if (a2 == a3)
    {
      return;
    }

    v50 = 0;
    v51 = 0;
    do
    {
      v52 = &a6[v50];
      v53 = &a2[v50];
      *v52 = a2[v50];
      a6[v50 + 1] = &a6[v50 + 3];
      v52[2] = 0x400000000;
      if (LODWORD(a2[v50 + 2]))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=(&a6[v50 + 1], v53 + 1);
      }

      *(v52 + 5) = *(v53 + 5);
      ++v51;
      v50 += 7;
    }

    while (v53 + 7 != a3);
    v57 = &a6[v50];
    while (a2 != a1)
    {
      if (*(a2 - 12) != 1 || (v58 = a2 - 2, (*(v57 - 12) & 1) != 0) && *(v57 - 4) >= *(a2 - 4))
      {
        v58 = v57 - 2;
        v59 = v57;
        v57 -= 7;
      }

      else
      {
        v59 = a2;
        a2 -= 7;
      }

      *(a3 - 7) = *(v59 - 7);
      a3 -= 7;
      llvm::SmallVectorImpl<unsigned int>::operator=((a3 + 1), v59 - 6);
      *(a3 + 5) = *v58;
      if (v57 == a6)
      {
        goto LABEL_97;
      }
    }

    if (v57 != a6)
    {
      v63 = 0;
      do
      {
        a3[v63 - 7] = v57[v63 - 7];
        llvm::SmallVectorImpl<unsigned int>::operator=(&a3[v63 - 6], &v57[v63 - 6]);
        *&a3[v63 - 2] = *&v57[v63 - 2];
        v63 -= 7;
      }

      while (&v57[v63] != a6);
    }
  }

LABEL_97:
  if (a6 && v51)
  {
    v66 = a6 + 3;
    do
    {
      v67 = *(v66 - 2);
      if (v66 != v67)
      {
        free(v67);
      }

      v66 += 7;
      --v51;
    }

    while (v51);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_1 &,llvm::BPFunctionNode *,false>(unint64_t a1, const void **a2, uint64_t a3, char a4)
{
  v188 = *MEMORY[0x277D85DE8];
LABEL_2:
  v6 = a2;
  v174 = a2 - 7;
  v7 = a1;
  while (1)
  {
    a1 = v7;
    v8 = v6 - v7;
    v9 = 0x6DB6DB6DB6DB6DB7 * ((v6 - v7) >> 3);
    v10 = v9 - 2;
    if (v9 > 2)
    {
      switch(v9)
      {
        case 3uLL:
          v69 = *(v7 + 104);
          v70 = *(v6 - 1);
          if (v69 >= *(v7 + 48))
          {
            if (v70 >= v69)
            {
              return;
            }

            v67 = (v7 + 56);
            v68 = a2 - 7;
LABEL_361:
            std::swap[abi:nn200100]<llvm::BPFunctionNode>(v67, v68);
            if (*(v7 + 104) < *(v7 + 48))
            {
              std::swap[abi:nn200100]<llvm::BPFunctionNode>(v7, (v7 + 56));
            }

            return;
          }

          if (v70 >= v69)
          {
            std::swap[abi:nn200100]<llvm::BPFunctionNode>(v7, (v7 + 56));
            if (*(v6 - 1) >= *(v7 + 104))
            {
              return;
            }

            v71 = (v7 + 56);
          }

          else
          {
LABEL_153:
            v71 = v7;
          }

          std::swap[abi:nn200100]<llvm::BPFunctionNode>(v71, v174);
          return;
        case 4uLL:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_1 &,llvm::BPFunctionNode *,0>(v7, v7 + 56, v7 + 112, v174);
          return;
        case 5uLL:
          std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_1 &,llvm::BPFunctionNode *,0>(v7, v7 + 56, v7 + 112, v7 + 168);
          if (*(v6 - 1) >= *(v7 + 216))
          {
            return;
          }

          std::swap[abi:nn200100]<llvm::BPFunctionNode>((v7 + 168), v174);
          if (*(v7 + 216) >= *(v7 + 160))
          {
            return;
          }

          std::swap[abi:nn200100]<llvm::BPFunctionNode>((v7 + 112), (v7 + 168));
          if (*(v7 + 160) >= *(v7 + 104))
          {
            return;
          }

          v67 = (v7 + 56);
          v68 = (v7 + 112);
          goto LABEL_361;
      }
    }

    else
    {
      if (v9 < 2)
      {
        return;
      }

      v6 = a2;
      if (v9 == 2)
      {
        if (*(a2 - 1) >= *(v7 + 48))
        {
          return;
        }

        goto LABEL_153;
      }
    }

    if (v8 <= 1343)
    {
      break;
    }

    if (!a3)
    {
      if (v7 == v6)
      {
        return;
      }

      v92 = v10 >> 1;
      v93 = v10 >> 1;
      do
      {
        v94 = v93;
        if (v92 >= v93)
        {
          v95 = (2 * v93) | 1;
          v96 = v7 + 56 * v95;
          if (2 * v93 + 2 < v9)
          {
            v97 = *(v96 + 48);
            v98 = *(v96 + 104);
            v99 = v97 >= v98;
            v100 = v97 >= v98 ? 0 : 56;
            v96 += v100;
            if (!v99)
            {
              v95 = 2 * v93 + 2;
            }
          }

          v101 = v7 + 56 * v93;
          if (*(v96 + 48) >= *(v101 + 48))
          {
            v183 = *v101;
            __src = v186;
            v185 = 0x400000000;
            if (*(v101 + 16))
            {
              llvm::SmallVectorImpl<unsigned int>::operator=(&__src, (v101 + 8));
            }

            v187 = *(v101 + 40);
            do
            {
              v102 = v96;
              *v101 = *v96;
              llvm::SmallVectorImpl<unsigned int>::operator=(v101 + 8, (v96 + 8));
              *(v101 + 40) = *(v96 + 40);
              if (v92 < v95)
              {
                break;
              }

              v103 = (2 * v95) | 1;
              v96 = v7 + 56 * v103;
              if (2 * v95 + 2 < v9)
              {
                v104 = *(v96 + 48);
                v105 = *(v96 + 104);
                v106 = v104 >= v105;
                v107 = v104 >= v105 ? 0 : 56;
                v96 += v107;
                if (!v106)
                {
                  v103 = 2 * v95 + 2;
                }
              }

              v101 = v102;
              v95 = v103;
            }

            while (*(v96 + 48) >= *(&v187 + 1));
            *v102 = v183;
            v108 = __src;
            if (v102 != &v183)
            {
              if (__src == v186)
              {
                v110 = v185;
                v111 = *(v102 + 16);
                if (v111 >= v185)
                {
                  if (v185)
                  {
                    memmove(*(v102 + 8), __src, 4 * v185);
                  }
                }

                else
                {
                  if (*(v102 + 20) < v185)
                  {
                    *(v102 + 16) = 0;
                    llvm::SmallVectorBase<unsigned int>::grow_pod();
                  }

                  if (v111)
                  {
                    memmove(*(v102 + 8), __src, 4 * v111);
                  }

                  else
                  {
                    v111 = 0;
                  }

                  if (v185 != v111)
                  {
                    memcpy((*(v102 + 8) + 4 * v111), __src + 4 * v111, 4 * (v185 - v111));
                  }
                }

                *(v102 + 16) = v110;
              }

              else
              {
                v109 = *(v102 + 8);
                if (v109 != (v102 + 24))
                {
                  free(v109);
                  v108 = __src;
                }

                *(v102 + 8) = v108;
                *(v102 + 16) = v185;
                __src = v186;
                HIDWORD(v185) = 0;
              }

              LODWORD(v185) = 0;
              v108 = __src;
            }

            *(v102 + 40) = v187;
            if (v108 != v186)
            {
              free(v108);
            }
          }
        }

        v93 = v94 - 1;
      }

      while (v94);
      v112 = 0x6DB6DB6DB6DB6DB7 * (v8 >> 3);
      v176 = v7;
LABEL_248:
      v178 = *a1;
      v179 = v181;
      v180 = 0x400000000;
      if (*(a1 + 16))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=(&v179, (a1 + 8));
      }

      v114 = 0;
      v182 = *(a1 + 40);
      v115 = (v112 - 2) >> 1;
      v116 = a1;
      while (1)
      {
        v117 = v116 + 56 * v114;
        v118 = v117 + 56;
        if (2 * v114 + 2 >= v112)
        {
          v114 = (2 * v114) | 1;
          v122 = (v117 + 64);
          *v116 = *v118;
          v123 = (v116 + 8);
          if (v116 == v118)
          {
            goto LABEL_254;
          }
        }

        else
        {
          v119 = *(v117 + 104);
          v120 = *(v117 + 160);
          v121 = v117 + 112;
          if (v119 >= v120)
          {
            v114 = (2 * v114) | 1;
          }

          else
          {
            v118 = v121;
            v114 = 2 * v114 + 2;
          }

          v122 = (v118 + 8);
          *v116 = *v118;
          v123 = (v116 + 8);
          if (v116 == v118)
          {
            goto LABEL_254;
          }
        }

        v124 = *(v118 + 8);
        if (v124 != (v118 + 24))
        {
          v125 = *(v116 + 8);
          if (v125 != (v116 + 24))
          {
            free(v125);
            v124 = *v122;
          }

          *(v116 + 8) = v124;
          v126 = (v118 + 16);
          *(v116 + 16) = *(v118 + 16);
          *(v118 + 8) = v118 + 24;
          *(v118 + 20) = 0;
          goto LABEL_253;
        }

        v127 = v112;
        v126 = (v118 + 16);
        v128 = *(v118 + 16);
        v129 = *(v116 + 16);
        if (v129 >= v128)
        {
          if (v128)
          {
            memmove(*v123, v124, 4 * v128);
          }

          goto LABEL_252;
        }

        if (*(v116 + 20) < v128)
        {
          *(v116 + 16) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v129)
        {
          memmove(*v123, v124, 4 * v129);
          v130 = *v126 - v129;
          if (!v130)
          {
            goto LABEL_252;
          }
        }

        else
        {
          v129 = 0;
          v130 = *v126;
          if (!*v126)
          {
            goto LABEL_252;
          }
        }

        memcpy(*v123 + 4 * v129, *v122 + 4 * v129, 4 * v130);
LABEL_252:
        *(v116 + 16) = v128;
        v112 = v127;
        a1 = v176;
LABEL_253:
        *v126 = 0;
LABEL_254:
        *(v116 + 40) = *(v118 + 40);
        v116 = v118;
        if (v114 > v115)
        {
          if (v118 == a2 - 7)
          {
            *v118 = v178;
            if (v118 == &v178)
            {
              goto LABEL_340;
            }

            v135 = v179;
            if (v179 != v181)
            {
              v136 = *(v118 + 8);
              if (v136 != (v118 + 24))
              {
                free(v136);
                v135 = v179;
              }

              *(v118 + 8) = v135;
              *(v118 + 16) = v180;
              v179 = v181;
              HIDWORD(v180) = 0;
LABEL_339:
              LODWORD(v180) = 0;
LABEL_340:
              *(v118 + 40) = v182;
              goto LABEL_355;
            }

            v139 = v180;
            v140 = *(v118 + 16);
            if (v140 >= v180)
            {
              if (v180)
              {
                memmove(*v122, v179, 4 * v180);
              }
            }

            else
            {
              if (*(v118 + 20) < v180)
              {
                *(v118 + 16) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              if (v140)
              {
                memmove(*v122, v179, 4 * v140);
                v158 = v180 - v140;
                if (v180 != v140)
                {
                  goto LABEL_337;
                }
              }

              else
              {
                v140 = 0;
                v158 = v180;
                if (v180)
                {
LABEL_337:
                  memcpy(*v122 + 4 * v140, v179 + 4 * v140, 4 * v158);
                }
              }
            }

            *(v118 + 16) = v139;
            goto LABEL_339;
          }

          *v118 = *(a2 - 7);
          v131 = v118 + 56;
          v132 = (a2 - 6);
          llvm::SmallVectorImpl<unsigned int>::operator=(v122, a2 - 6);
          *(v118 + 40) = *(a2 - 1);
          *(a2 - 7) = v178;
          if (a2 - 6 == &v179)
          {
            goto LABEL_302;
          }

          v133 = v179;
          if (v179 == v181)
          {
            v137 = v180;
            v138 = *(a2 - 10);
            if (v138 >= v180)
            {
              if (v180)
              {
                memmove(*v132, v179, 4 * v180);
              }
            }

            else
            {
              if (*(a2 - 9) < v180)
              {
                *(a2 - 10) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              if (v138)
              {
                memmove(*v132, v179, 4 * v138);
                v141 = v180 - v138;
                if (v180 != v138)
                {
                  goto LABEL_299;
                }
              }

              else
              {
                v138 = 0;
                v141 = v180;
                if (v180)
                {
LABEL_299:
                  memcpy(*v132 + 4 * v138, v179 + 4 * v138, 4 * v141);
                }
              }
            }

            *(a2 - 10) = v137;
            goto LABEL_301;
          }

          v134 = *(a2 - 6);
          if (v134 != a2 - 4)
          {
            free(v134);
            v133 = v179;
          }

          *(a2 - 6) = v133;
          *(a2 - 5) = v180;
          v179 = v181;
          HIDWORD(v180) = 0;
LABEL_301:
          LODWORD(v180) = 0;
LABEL_302:
          *(a2 - 1) = v182;
          if ((v131 - a1) < 57)
          {
            goto LABEL_355;
          }

          v142 = (0x6DB6DB6DB6DB6DB7 * ((v131 - a1) >> 3) - 2) >> 1;
          v143 = a1 + 56 * v142;
          if (*(v143 + 48) >= *(v118 + 48))
          {
            goto LABEL_355;
          }

          v183 = *v118;
          __src = v186;
          v185 = 0x400000000;
          if (*(v118 + 16))
          {
            llvm::SmallVectorImpl<unsigned int>::operator=(&__src, v122);
          }

          v187 = *(v118 + 40);
          while (2)
          {
            v144 = v143;
            v145 = (v143 + 8);
            *v118 = *v143;
            v146 = (v118 + 8);
            if (v118 == v143)
            {
              goto LABEL_322;
            }

            v147 = *(v143 + 8);
            if (v147 == (v143 + 24))
            {
              v150 = v112;
              v149 = (v143 + 16);
              v151 = *(v143 + 16);
              v152 = *(v118 + 16);
              if (v152 >= v151)
              {
                if (v151)
                {
                  memmove(*v146, v147, 4 * v151);
                }
              }

              else
              {
                if (*(v118 + 20) < v151)
                {
                  *(v118 + 16) = 0;
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                if (v152)
                {
                  memmove(*v146, v147, 4 * v152);
                  v153 = *v149 - v152;
                  if (v153)
                  {
                    goto LABEL_319;
                  }
                }

                else
                {
                  v152 = 0;
                  v153 = *v149;
                  if (*v149)
                  {
LABEL_319:
                    memcpy(*v146 + 4 * v152, *v145 + 4 * v152, 4 * v153);
                  }
                }
              }

              *(v118 + 16) = v151;
              v112 = v150;
              a1 = v176;
              goto LABEL_321;
            }

            v148 = *(v118 + 8);
            if (v148 != (v118 + 24))
            {
              free(v148);
              v147 = *v145;
            }

            *(v118 + 8) = v147;
            v149 = (v143 + 16);
            *(v118 + 16) = *(v143 + 16);
            *(v143 + 8) = v143 + 24;
            *(v143 + 20) = 0;
LABEL_321:
            *v149 = 0;
LABEL_322:
            *(v118 + 40) = *(v144 + 40);
            if (v142)
            {
              v142 = (v142 - 1) >> 1;
              v143 = a1 + 56 * v142;
              v118 = v144;
              if (*(v143 + 48) < *(&v187 + 1))
              {
                continue;
              }
            }

            break;
          }

          *v144 = v183;
          v154 = __src;
          if (v144 != &v183)
          {
            if (__src == v186)
            {
              v156 = v185;
              v157 = *(v144 + 16);
              if (v157 >= v185)
              {
                if (v185)
                {
                  memmove(*v145, __src, 4 * v185);
                }

                *(v144 + 16) = v156;
              }

              else
              {
                if (*(v144 + 20) < v185)
                {
                  *(v144 + 16) = 0;
                  llvm::SmallVectorBase<unsigned int>::grow_pod();
                }

                if (v157)
                {
                  memmove(*v145, __src, 4 * v157);
                }

                else
                {
                  v157 = 0;
                }

                if (v185 != v157)
                {
                  memcpy(*v145 + 4 * v157, __src + 4 * v157, 4 * (v185 - v157));
                }

                *(v144 + 16) = v156;
              }
            }

            else
            {
              v155 = *(v144 + 8);
              if (v155 != (v144 + 24))
              {
                free(v155);
                v154 = __src;
              }

              *(v144 + 8) = v154;
              *(v144 + 16) = v185;
              __src = v186;
              HIDWORD(v185) = 0;
            }

            LODWORD(v185) = 0;
            v154 = __src;
          }

          *(v144 + 40) = v187;
          if (v154 != v186)
          {
            free(v154);
          }

LABEL_355:
          if (v179 != v181)
          {
            free(v179);
          }

          a2 -= 7;
          if (v112-- <= 2)
          {
            return;
          }

          goto LABEL_248;
        }
      }
    }

    v11 = v9 >> 1;
    v12 = v7 + 56 * (v9 >> 1);
    v13 = *(v6 - 1);
    if (v8 >= 0x1C01)
    {
      v14 = *(v12 + 48);
      if (v14 >= *(a1 + 48))
      {
        if (v13 >= v14 || (std::swap[abi:nn200100]<llvm::BPFunctionNode>((a1 + 56 * (v9 >> 1)), v174), *(v12 + 48) >= *(a1 + 48)))
        {
LABEL_27:
          v20 = a1 + 56 * v11;
          v21 = v20 - 56;
          v22 = *(v20 - 8);
          v23 = *(v6 - 8);
          if (v22 >= *(a1 + 104))
          {
            if (v23 >= v22 || (std::swap[abi:nn200100]<llvm::BPFunctionNode>(v21, a2 - 14), *(v21 + 48) >= *(a1 + 104)))
            {
LABEL_39:
              v26 = a1 + 56 * v11;
              v27 = *(v26 + 104);
              v28 = *(v6 - 15);
              if (v27 >= *(a1 + 160))
              {
                if (v28 >= v27 || (std::swap[abi:nn200100]<llvm::BPFunctionNode>((v26 + 56), a2 - 21), *(v26 + 104) >= *(a1 + 160)))
                {
LABEL_48:
                  v31 = *(v12 + 48);
                  v32 = *(v26 + 104);
                  if (v31 >= *(v21 + 48))
                  {
                    if (v32 >= v31)
                    {
                      goto LABEL_57;
                    }

                    std::swap[abi:nn200100]<llvm::BPFunctionNode>((a1 + 56 * (v9 >> 1)), (v26 + 56));
                    if (*(v12 + 48) >= *(v21 + 48))
                    {
                      goto LABEL_57;
                    }

                    v34 = v21;
                    v33 = (a1 + 56 * (v9 >> 1));
                  }

                  else if (v32 >= v31)
                  {
                    std::swap[abi:nn200100]<llvm::BPFunctionNode>(v21, (a1 + 56 * (v9 >> 1)));
                    if (*(v26 + 104) >= *(v12 + 48))
                    {
LABEL_57:
                      v18 = a1;
                      v19 = (a1 + 56 * (v9 >> 1));
                      goto LABEL_58;
                    }

                    v33 = (v26 + 56);
                    v34 = (a1 + 56 * (v9 >> 1));
                  }

                  else
                  {
                    v33 = (v26 + 56);
                    v34 = v21;
                  }

                  std::swap[abi:nn200100]<llvm::BPFunctionNode>(v34, v33);
                  goto LABEL_57;
                }

                v29 = (a1 + 112);
                v30 = (v26 + 56);
              }

              else
              {
                v29 = (a1 + 112);
                if (v28 >= v27)
                {
                  std::swap[abi:nn200100]<llvm::BPFunctionNode>(v29, (v26 + 56));
                  if (*(v6 - 15) >= *(v26 + 104))
                  {
                    goto LABEL_48;
                  }

                  v29 = (v26 + 56);
                }

                v30 = a2 - 21;
              }

              std::swap[abi:nn200100]<llvm::BPFunctionNode>(v29, v30);
              goto LABEL_48;
            }

            v24 = (a1 + 56);
            v25 = v21;
          }

          else
          {
            v24 = (a1 + 56);
            if (v23 >= v22)
            {
              std::swap[abi:nn200100]<llvm::BPFunctionNode>(v24, v21);
              if (*(v6 - 8) >= *(v21 + 48))
              {
                goto LABEL_39;
              }

              v24 = v21;
            }

            v25 = a2 - 14;
          }

          std::swap[abi:nn200100]<llvm::BPFunctionNode>(v24, v25);
          goto LABEL_39;
        }

        v15 = a1;
        v16 = (a1 + 56 * (v9 >> 1));
      }

      else
      {
        v15 = a1;
        if (v13 >= v14)
        {
          std::swap[abi:nn200100]<llvm::BPFunctionNode>(a1, (a1 + 56 * (v9 >> 1)));
          if (*(v6 - 1) >= *(v12 + 48))
          {
            goto LABEL_27;
          }

          v15 = (a1 + 56 * (v9 >> 1));
        }

        v16 = a2 - 7;
      }

      std::swap[abi:nn200100]<llvm::BPFunctionNode>(v15, v16);
      goto LABEL_27;
    }

    v17 = *(a1 + 48);
    if (v17 >= *(v12 + 48))
    {
      if (v13 < v17)
      {
        std::swap[abi:nn200100]<llvm::BPFunctionNode>(a1, v174);
        if (*(a1 + 48) < *(v12 + 48))
        {
          v18 = (a1 + 56 * (v9 >> 1));
          v19 = a1;
          goto LABEL_58;
        }
      }
    }

    else
    {
      v18 = (a1 + 56 * (v9 >> 1));
      if (v13 < v17)
      {
        goto LABEL_22;
      }

      std::swap[abi:nn200100]<llvm::BPFunctionNode>(v18, a1);
      if (*(v6 - 1) < *(a1 + 48))
      {
        v18 = a1;
LABEL_22:
        v19 = a2 - 7;
LABEL_58:
        std::swap[abi:nn200100]<llvm::BPFunctionNode>(v18, v19);
      }
    }

    --a3;
    if ((a4 & 1) != 0 || *(a1 - 8) < *(a1 + 48))
    {
      v183 = *a1;
      __src = v186;
      v185 = 0x400000000;
      if (*(a1 + 16))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=(&__src, (a1 + 8));
      }

      v35 = 0;
      v187 = *(a1 + 40);
      do
      {
        v36 = *(a1 + v35 + 104);
        v35 += 56;
      }

      while (v36 < *(&v187 + 1));
      v37 = a1 + v35;
      v38 = v6;
      if (v35 == 56)
      {
        v41 = a2;
        while (v37 < v41)
        {
          v39 = v41 - 7;
          v42 = *(v41 - 1);
          v41 -= 7;
          if (v42 < *(&v187 + 1))
          {
            goto LABEL_71;
          }
        }

        v39 = v41;
        v7 = v37;
      }

      else
      {
        do
        {
          v39 = v38 - 7;
          v40 = *(v38 - 1);
          v38 -= 7;
        }

        while (v40 >= *(&v187 + 1));
LABEL_71:
        v7 = v37;
        if (v37 < v39)
        {
          v43 = v39;
          do
          {
            std::swap[abi:nn200100]<llvm::BPFunctionNode>(v7, v43);
            do
            {
              v44 = *(v7 + 104);
              v7 += 56;
            }

            while (v44 < *(&v187 + 1));
            do
            {
              v45 = *(v43 - 1);
              v43 -= 7;
            }

            while (v45 >= *(&v187 + 1));
          }

          while (v7 < v43);
        }
      }

      if (v7 - 56 != a1)
      {
        *a1 = *(v7 - 56);
        llvm::SmallVectorImpl<unsigned int>::operator=(a1 + 8, (v7 - 48));
        *(a1 + 40) = *(v7 - 16);
      }

      *(v7 - 56) = v183;
      v46 = (v7 - 48);
      if ((v7 - 48) != &__src)
      {
        v47 = __src;
        if (__src != v186)
        {
          v48 = *(v7 - 48);
          if (v48 != (v7 - 32))
          {
            free(v48);
            v47 = __src;
          }

          *(v7 - 48) = v47;
          *(v7 - 40) = v185;
          __src = v186;
          HIDWORD(v185) = 0;
          goto LABEL_94;
        }

        v49 = v185;
        v50 = *(v7 - 40);
        if (v50 >= v185)
        {
          if (v185)
          {
            memmove(*v46, __src, 4 * v185);
          }
        }

        else
        {
          if (*(v7 - 36) < v185)
          {
            *(v7 - 40) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v50)
          {
            memmove(*v46, __src, 4 * v50);
            v51 = v185 - v50;
            if (v185 != v50)
            {
              goto LABEL_92;
            }
          }

          else
          {
            v50 = 0;
            v51 = v185;
            if (v185)
            {
LABEL_92:
              memcpy(*v46 + 4 * v50, __src + 4 * v50, 4 * v51);
            }
          }
        }

        *(v7 - 40) = v49;
LABEL_94:
        LODWORD(v185) = 0;
      }

      *(v7 - 16) = v187;
      if (__src != v186)
      {
        free(__src);
      }

      v99 = v37 >= v39;
      v6 = a2;
      if (v99)
      {
        v52 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_1 &,llvm::BPFunctionNode *>(a1, v7 - 56);
        if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_1 &,llvm::BPFunctionNode *>(v7, a2))
        {
          a2 = (v7 - 56);
          if (v52)
          {
            return;
          }

          goto LABEL_2;
        }

        if (!v52)
        {
          goto LABEL_101;
        }
      }

      else
      {
LABEL_101:
        std::__introsort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_1 &,llvm::BPFunctionNode *,false>(a1, (v7 - 56), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v183 = *a1;
      __src = v186;
      v185 = 0x400000000;
      if (*(a1 + 16))
      {
        llvm::SmallVectorImpl<unsigned int>::operator=(&__src, (a1 + 8));
      }

      v187 = *(a1 + 40);
      if (*(&v187 + 1) >= *(v6 - 1))
      {
        v55 = a1 + 56;
        do
        {
          v7 = v55;
          if (v55 >= v6)
          {
            break;
          }

          v56 = *(v55 + 48);
          v55 += 56;
        }

        while (*(&v187 + 1) >= v56);
      }

      else
      {
        v53 = a1;
        do
        {
          v7 = v53 + 56;
          v54 = *(v53 + 104);
          v53 += 56;
        }

        while (*(&v187 + 1) >= v54);
      }

      v57 = v6;
      if (v7 < v6)
      {
        v58 = v6;
        do
        {
          v57 = v58 - 7;
          v59 = *(v58 - 1);
          v58 -= 7;
        }

        while (*(&v187 + 1) < v59);
      }

      while (v7 < v57)
      {
        std::swap[abi:nn200100]<llvm::BPFunctionNode>(v7, v57);
        do
        {
          v60 = *(v7 + 104);
          v7 += 56;
        }

        while (*(&v187 + 1) >= v60);
        do
        {
          v61 = *(v57 - 1);
          v57 -= 7;
        }

        while (*(&v187 + 1) < v61);
      }

      if (v7 - 56 != a1)
      {
        *a1 = *(v7 - 56);
        llvm::SmallVectorImpl<unsigned int>::operator=(a1 + 8, (v7 - 48));
        *(a1 + 40) = *(v7 - 16);
      }

      *(v7 - 56) = v183;
      v62 = (v7 - 48);
      if ((v7 - 48) != &__src)
      {
        v63 = __src;
        if (__src == v186)
        {
          v65 = v185;
          v66 = *(v7 - 40);
          if (v66 >= v185)
          {
            if (v185)
            {
              memmove(*v62, __src, 4 * v185);
            }
          }

          else
          {
            if (*(v7 - 36) < v185)
            {
              *(v7 - 40) = 0;
              llvm::SmallVectorBase<unsigned int>::grow_pod();
            }

            if (v66)
            {
              memmove(*v62, __src, 4 * v66);
            }

            else
            {
              v66 = 0;
            }

            if (v185 != v66)
            {
              memcpy(*v62 + 4 * v66, __src + 4 * v66, 4 * (v185 - v66));
            }
          }

          *(v7 - 40) = v65;
        }

        else
        {
          v64 = *(v7 - 48);
          if (v64 != (v7 - 32))
          {
            free(v64);
            v63 = __src;
          }

          *(v7 - 48) = v63;
          *(v7 - 40) = v185;
          __src = v186;
          HIDWORD(v185) = 0;
        }

        LODWORD(v185) = 0;
      }

      *(v7 - 16) = v187;
      if (__src != v186)
      {
        free(__src);
      }

      a4 = 0;
    }
  }

  if ((a4 & 1) == 0)
  {
    if (v7 == v6)
    {
      return;
    }

    v159 = (v7 + 56);
    if ((v7 + 56) == a2)
    {
      return;
    }

    while (1)
    {
      v160 = v159;
      v161 = a2;
      if (*(a1 + 104) < *(a1 + 48))
      {
        break;
      }

LABEL_366:
      v159 = (v160 + 56);
      a1 = v160;
      if ((v160 + 56) == v161)
      {
        return;
      }
    }

    v183 = *v159;
    __src = v186;
    v185 = 0x400000000;
    if (*(a1 + 72))
    {
      llvm::SmallVectorImpl<unsigned int>::operator=(&__src, (a1 + 64));
    }

    v187 = *(a1 + 96);
    v162 = v160;
    while (1)
    {
      v164 = *(v162 - 48);
      *v162 = *(v162 - 56);
      if ((v162 - 32) != v164)
      {
        v165 = *(v162 + 8);
        if ((v162 + 24) != v165)
        {
          free(v165);
          v164 = *(v162 - 48);
        }

        *(v162 + 8) = v164;
        v166 = (a1 + 16);
        *(v162 + 16) = *(v162 - 40);
        *(v162 - 48) = v162 - 32;
        *(v162 - 36) = 0;
        goto LABEL_373;
      }

      v166 = (v162 - 40);
      v167 = *(v162 - 40);
      v168 = *(v162 + 16);
      if (v168 >= v167)
      {
        if (v167)
        {
          memmove(*(v162 + 8), v164, 4 * v167);
        }

        goto LABEL_372;
      }

      if (*(v162 + 20) < v167)
      {
        *(v162 + 16) = 0;
        llvm::SmallVectorBase<unsigned int>::grow_pod();
      }

      if (v168)
      {
        memmove(*(v162 + 8), v164, 4 * v168);
        v169 = *v166 - v168;
        if (!v169)
        {
          goto LABEL_372;
        }
      }

      else
      {
        v168 = 0;
        v169 = *v166;
        if (!*v166)
        {
          goto LABEL_372;
        }
      }

      memcpy((*(v162 + 8) + 4 * v168), (*(v162 - 48) + 4 * v168), 4 * v169);
LABEL_372:
      *(v162 + 16) = v167;
      v161 = a2;
LABEL_373:
      *v166 = 0;
      *(v162 + 40) = *(v162 - 16);
      a1 -= 56;
      v163 = *(v162 - 64);
      v162 -= 56;
      if (*(&v187 + 1) >= v163)
      {
        *v162 = v183;
        v170 = (v162 + 8);
        v171 = __src;
        if (v162 != &v183)
        {
          if (__src == v186)
          {
            v172 = v185;
            v173 = *(v162 + 16);
            if (v173 >= v185)
            {
              if (v185)
              {
                memmove(*v170, __src, 4 * v185);
              }
            }

            else
            {
              if (*(v162 + 20) < v185)
              {
                *(v162 + 16) = 0;
                llvm::SmallVectorBase<unsigned int>::grow_pod();
              }

              if (v173)
              {
                memmove(*v170, __src, 4 * v173);
              }

              else
              {
                v173 = 0;
              }

              if (v185 != v173)
              {
                memcpy(*v170 + 4 * v173, __src + 4 * v173, 4 * (v185 - v173));
              }
            }

            *(v162 + 16) = v172;
          }

          else
          {
            if ((v162 + 24) != *v170)
            {
              free(*v170);
              v171 = __src;
            }

            *(v162 + 8) = v171;
            *(v162 + 16) = v185;
            __src = v186;
            HIDWORD(v185) = 0;
          }

          LODWORD(v185) = 0;
          v171 = __src;
        }

        *(v162 + 40) = v187;
        if (v171 != v186)
        {
          free(v171);
        }

        goto LABEL_366;
      }
    }
  }

  if (v7 == v6)
  {
    return;
  }

  v72 = (v7 + 56);
  if ((v7 + 56) == a2)
  {
    return;
  }

  v73 = 0;
  v74 = v7;
  while (2)
  {
    v75 = v72;
    if (*(v74 + 104) >= *(v74 + 48))
    {
      goto LABEL_160;
    }

    v183 = *v72;
    __src = v186;
    v185 = 0x400000000;
    if (*(v74 + 72))
    {
      llvm::SmallVectorImpl<unsigned int>::operator=(&__src, (v74 + 64));
    }

    v187 = *(v74 + 96);
    v76 = v73;
    while (2)
    {
      v78 = a1 + v76;
      v79 = *(a1 + v76 + 8);
      *(a1 + v76 + 56) = *(a1 + v76);
      v80 = a1 + v76 + 24;
      if (v80 == v79)
      {
        v84 = (v78 + 16);
        v83 = *(v78 + 16);
        v85 = *(v78 + 72);
        if (v85 >= v83)
        {
          if (v83)
          {
            memmove(*(v78 + 64), v79, 4 * v83);
          }
        }

        else
        {
          if (*(a1 + v76 + 76) < v83)
          {
            *(v78 + 72) = 0;
            llvm::SmallVectorBase<unsigned int>::grow_pod();
          }

          if (v85)
          {
            memmove(*(v78 + 64), v79, 4 * v85);
            v86 = *v84 - v85;
            if (v86)
            {
              goto LABEL_165;
            }
          }

          else
          {
            v85 = 0;
            v86 = *v84;
            if (*v84)
            {
LABEL_165:
              memcpy((*(v78 + 64) + 4 * v85), (*(v78 + 8) + 4 * v85), 4 * v86);
            }
          }
        }

        *(v78 + 72) = v83;
        *v84 = 0;
        v77 = a1 + v76;
        *(a1 + v76 + 96) = *(a1 + v76 + 40);
        if (!v76)
        {
          goto LABEL_183;
        }

        goto LABEL_167;
      }

      v81 = *(v78 + 64);
      if ((v78 + 80) != v81)
      {
        free(v81);
        v79 = *(v78 + 8);
      }

      v82 = a1 + v76;
      *(v78 + 64) = v79;
      *(v82 + 72) = *(a1 + v76 + 16);
      *(v78 + 8) = v80;
      *(v82 + 20) = 0;
      *(v74 + 16) = 0;
      v77 = a1 + v76;
      *(a1 + v76 + 96) = *(a1 + v76 + 40);
      if (!v76)
      {
LABEL_183:
        v87 = a1;
        *a1 = v183;
        v88 = __src;
        if (a1 == &v183)
        {
          goto LABEL_202;
        }

        goto LABEL_186;
      }

LABEL_167:
      v74 -= 56;
      v76 -= 56;
      if (*(&v187 + 1) < *(v77 - 8))
      {
        continue;
      }

      break;
    }

    v87 = a1 + v76 + 56;
    *v87 = v183;
    v88 = __src;
    if (v87 == &v183)
    {
      goto LABEL_202;
    }

LABEL_186:
    if (v88 == v186)
    {
      v90 = v185;
      v91 = *(v87 + 16);
      if (v91 >= v185)
      {
        if (v185)
        {
          memmove(*(v77 + 8), v88, 4 * v185);
        }
      }

      else
      {
        if (*(v87 + 20) < v185)
        {
          *(v87 + 16) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v91)
        {
          memmove(*(v77 + 8), v88, 4 * v91);
        }

        else
        {
          v91 = 0;
        }

        if (v185 != v91)
        {
          memcpy((*(v77 + 8) + 4 * v91), __src + 4 * v91, 4 * (v185 - v91));
        }
      }

      *(v87 + 16) = v90;
    }

    else
    {
      v89 = *(v77 + 8);
      if (v89 != (v87 + 24))
      {
        free(v89);
        v88 = __src;
      }

      *(v77 + 8) = v88;
      *(v87 + 16) = v185;
      __src = v186;
      HIDWORD(v185) = 0;
    }

    LODWORD(v185) = 0;
    v88 = __src;
LABEL_202:
    *(v77 + 40) = v187;
    if (v88 != v186)
    {
      free(v88);
    }

LABEL_160:
    v72 = v75 + 7;
    v73 += 56;
    v74 = v75;
    if (v75 + 7 != a2)
    {
      continue;
    }

    break;
  }
}

void std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_1 &,llvm::BPFunctionNode *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = *(a2 + 48);
  v9 = *(a3 + 48);
  if (v8 >= *(a1 + 48))
  {
    if (v9 < v8)
    {
      std::swap[abi:nn200100]<llvm::BPFunctionNode>(a2, a3);
      if (*(a2 + 48) < *(v7 + 48))
      {
        a1 = v7;
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
      std::swap[abi:nn200100]<llvm::BPFunctionNode>(a1, v10);
      goto LABEL_10;
    }

    std::swap[abi:nn200100]<llvm::BPFunctionNode>(a1, a2);
    if (*(a3 + 48) < *(a2 + 48))
    {
      a1 = a2;
      goto LABEL_5;
    }
  }

LABEL_10:
  if (*(a4 + 48) < *(a3 + 48))
  {
    std::swap[abi:nn200100]<llvm::BPFunctionNode>(a3, a4);
    if (*(a3 + 48) < *(a2 + 48))
    {
      std::swap[abi:nn200100]<llvm::BPFunctionNode>(a2, a3);
      if (*(a2 + 48) < *(v7 + 48))
      {

        std::swap[abi:nn200100]<llvm::BPFunctionNode>(v7, a2);
      }
    }
  }
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_1 &,llvm::BPFunctionNode *>(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v30 = *MEMORY[0x277D85DE8];
  v4 = 0x6DB6DB6DB6DB6DB7 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v5 = (a2 - 56);
        v6 = *(a1 + 104);
        v7 = *(a2 - 8);
        if (v6 < *(a1 + 48))
        {
          if (v7 < v6)
          {
            goto LABEL_25;
          }

          std::swap[abi:nn200100]<llvm::BPFunctionNode>(a1, (a1 + 56));
          if (*(a2 - 8) < *(v3 + 104))
          {
            v8 = (v3 + 56);
            v5 = (a2 - 56);
LABEL_26:
            std::swap[abi:nn200100]<llvm::BPFunctionNode>(v8, v5);
            return 1;
          }

          return 1;
        }

        if (v7 >= v6)
        {
          return 1;
        }

        std::swap[abi:nn200100]<llvm::BPFunctionNode>((a1 + 56), v5);
        if (*(v3 + 104) >= *(v3 + 48))
        {
          return 1;
        }

        break;
      case 4:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_1 &,llvm::BPFunctionNode *,0>(a1, a1 + 56, a1 + 112, a2 - 56);
        return 1;
      case 5:
        std::__sort4[abi:nn200100]<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_1 &,llvm::BPFunctionNode *,0>(a1, a1 + 56, a1 + 112, a1 + 168);
        if (*(a2 - 8) >= *(v3 + 216))
        {
          return 1;
        }

        std::swap[abi:nn200100]<llvm::BPFunctionNode>((v3 + 168), (a2 - 56));
        if (*(v3 + 216) >= *(v3 + 160))
        {
          return 1;
        }

        std::swap[abi:nn200100]<llvm::BPFunctionNode>((v3 + 112), (v3 + 168));
        if (*(v3 + 160) >= *(v3 + 104))
        {
          return 1;
        }

        std::swap[abi:nn200100]<llvm::BPFunctionNode>((v3 + 56), (v3 + 112));
        if (*(v3 + 104) >= *(v3 + 48))
        {
          return 1;
        }

        break;
      default:
        goto LABEL_18;
    }

    v5 = (v3 + 56);
    goto LABEL_25;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 8) < *(a1 + 48))
    {
      v5 = (a2 - 56);
LABEL_25:
      v8 = v3;
      goto LABEL_26;
    }

    return 1;
  }

LABEL_18:
  v9 = a1 + 112;
  v10 = *(a1 + 104);
  v11 = *(a1 + 160);
  if (v10 >= *(a1 + 48))
  {
    if (v11 >= v10)
    {
      goto LABEL_34;
    }

    std::swap[abi:nn200100]<llvm::BPFunctionNode>((a1 + 56), (a1 + 112));
    if (*(v3 + 104) >= *(v3 + 48))
    {
      goto LABEL_34;
    }

    v12 = (v3 + 56);
    a1 = v3;
    goto LABEL_33;
  }

  if (v11 < v10)
  {
LABEL_32:
    v12 = (v3 + 112);
LABEL_33:
    std::swap[abi:nn200100]<llvm::BPFunctionNode>(a1, v12);
    goto LABEL_34;
  }

  std::swap[abi:nn200100]<llvm::BPFunctionNode>(a1, (a1 + 56));
  if (*(v3 + 160) < *(v3 + 104))
  {
    a1 = v3 + 56;
    goto LABEL_32;
  }

LABEL_34:
  v13 = v3 + 168;
  if (v3 + 168 == a2)
  {
    return 1;
  }

  v14 = 0;
  v15 = 0;
  while (*(v13 + 48) >= *(v9 + 48))
  {
LABEL_37:
    v9 = v13;
    v14 += 56;
    v13 += 56;
    if (v13 == a2)
    {
      return 1;
    }
  }

  v25 = *v13;
  v26 = v28;
  v27 = 0x400000000;
  if (*(v13 + 16))
  {
    llvm::SmallVectorImpl<unsigned int>::operator=(&v26, (v13 + 8));
  }

  v29 = *(v13 + 40);
  v16 = v14;
  while (1)
  {
    v17 = v3 + v16;
    *(v3 + v16 + 168) = *(v3 + v16 + 112);
    llvm::SmallVectorImpl<unsigned int>::operator=(v3 + v16 + 176, (v3 + v16 + 120));
    *(v3 + v16 + 208) = *(v3 + v16 + 152);
    if (v16 == -112)
    {
      break;
    }

    v16 -= 56;
    if (*(&v29 + 1) >= *(v17 + 104))
    {
      v18 = v3 + v16 + 168;
      v19 = v26;
      *v18 = v25;
      if (v18 == &v25)
      {
        goto LABEL_61;
      }

      goto LABEL_47;
    }
  }

  v18 = v3;
  v19 = v26;
  *v3 = v25;
  if (v3 == &v25)
  {
    goto LABEL_61;
  }

LABEL_47:
  if (v19 != v28)
  {
    v20 = *(v17 + 120);
    if (v20 != (v18 + 24))
    {
      free(v20);
      v19 = v26;
    }

    *(v17 + 120) = v19;
    *(v18 + 16) = v27;
    v26 = v28;
    HIDWORD(v27) = 0;
    goto LABEL_60;
  }

  v21 = v27;
  v22 = *(v18 + 16);
  if (v22 >= v27)
  {
    if (v27)
    {
      memmove(*(v17 + 120), v19, 4 * v27);
    }

    goto LABEL_59;
  }

  if (*(v18 + 20) < v27)
  {
    *(v18 + 16) = 0;
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  if (!v22)
  {
    v22 = 0;
    v23 = v27;
    if (!v27)
    {
      goto LABEL_59;
    }

    goto LABEL_58;
  }

  memmove(*(v17 + 120), v19, 4 * v22);
  v23 = v27 - v22;
  if (v27 != v22)
  {
LABEL_58:
    memcpy((*(v17 + 120) + 4 * v22), &v26[4 * v22], 4 * v23);
  }

LABEL_59:
  *(v18 + 16) = v21;
LABEL_60:
  LODWORD(v27) = 0;
  v19 = v26;
LABEL_61:
  *(v17 + 152) = v29;
  if (v19 != v28)
  {
    free(v19);
  }

  if (++v15 != 8)
  {
    goto LABEL_37;
  }

  return v13 + 56 == a2;
}

__n128 std::__function::__func<void llvm::BalancedPartitioning::BPThreadPool::async<llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_2>(llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_2 &&)::{lambda(void)#1},std::allocator<llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_2 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689E6B0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void llvm::BalancedPartitioning::BPThreadPool::async<llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_2>(llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_2 &&)::{lambda(void)#1},std::allocator<llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_2 &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 56);
  llvm::BalancedPartitioning::bisect(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40) + 1, *(a1 + 44), *(a1 + 48), *(a1 + 8));
  if (atomic_fetch_add((v1 + 120), 0xFFFFFFFF) == 1)
  {
    std::mutex::lock((v1 + 8));
    *(v1 + 124) = 1;
    std::mutex::unlock((v1 + 8));

    std::condition_variable::notify_one((v1 + 72));
  }
}

uint64_t std::__function::__func<void llvm::BalancedPartitioning::BPThreadPool::async<llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_2>(llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_2 &&)::{lambda(void)#1},std::allocator<llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_2 &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_6bisectENS_14iterator_rangeINSt3__111__wrap_iterIPNS_14BPFunctionNodeEEEEEjjjRNS4_8optionalIS1_EEE3$_2EEvOT_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_6bisectENS_14iterator_rangeINSt3__111__wrap_iterIPNS_14BPFunctionNodeEEEEEjjjRNS4_8optionalIS1_EEE3$_2EEvOT_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_6bisectENS_14iterator_rangeINSt3__111__wrap_iterIPNS_14BPFunctionNodeEEEEEjjjRNS4_8optionalIS1_EEE3$_2EEvOT_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_6bisectENS_14iterator_rangeINSt3__111__wrap_iterIPNS_14BPFunctionNodeEEEEEjjjRNS4_8optionalIS1_EEE3$_2EEvOT_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

__n128 std::__function::__func<void llvm::BalancedPartitioning::BPThreadPool::async<llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_3>(llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_3 &&)::{lambda(void)#1},std::allocator<llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_3 &&>,void ()(void)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_28689E730;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<void llvm::BalancedPartitioning::BPThreadPool::async<llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_3>(llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_3 &&)::{lambda(void)#1},std::allocator<llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_3 &&>,void ()(void)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 56);
  llvm::BalancedPartitioning::bisect(*(a1 + 16), *(a1 + 24), *(a1 + 32), *(a1 + 40) + 1, *(a1 + 44), *(a1 + 48), *(a1 + 8));
  if (atomic_fetch_add((v1 + 120), 0xFFFFFFFF) == 1)
  {
    std::mutex::lock((v1 + 8));
    *(v1 + 124) = 1;
    std::mutex::unlock((v1 + 8));

    std::condition_variable::notify_one((v1 + 72));
  }
}

uint64_t std::__function::__func<void llvm::BalancedPartitioning::BPThreadPool::async<llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_3>(llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_3 &&)::{lambda(void)#1},std::allocator<llvm::BalancedPartitioning::bisect(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,unsigned int,std::optional<llvm::BalancedPartitioning::BPThreadPool> &)::$_3 &&>,void ()(void)>::target(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 == "ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_6bisectENS_14iterator_rangeINSt3__111__wrap_iterIPNS_14BPFunctionNodeEEEEEjjjRNS4_8optionalIS1_EEE3$_3EEvOT_EUlvE_")
  {
    return a1 + 8;
  }

  if (((v2 & "ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_6bisectENS_14iterator_rangeINSt3__111__wrap_iterIPNS_14BPFunctionNodeEEEEEjjjRNS4_8optionalIS1_EEE3$_3EEvOT_EUlvE_" & 0x8000000000000000) != 0) == __OFSUB__(v2, "ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_6bisectENS_14iterator_rangeINSt3__111__wrap_iterIPNS_14BPFunctionNodeEEEEEjjjRNS4_8optionalIS1_EEE3$_3EEvOT_EUlvE_"))
  {
    return 0;
  }

  v4 = a1;
  v5 = strcmp((v2 & 0x7FFFFFFFFFFFFFFFLL), ("ZN4llvm20BalancedPartitioning12BPThreadPool5asyncIZNKS0_6bisectENS_14iterator_rangeINSt3__111__wrap_iterIPNS_14BPFunctionNodeEEEEEjjjRNS4_8optionalIS1_EEE3$_3EEvOT_EUlvE_" & 0x7FFFFFFFFFFFFFFFLL));
  a1 = v4;
  if (!v5)
  {
    return a1 + 8;
  }

  return 0;
}

float std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(uint64_t result, float *a2, unint64_t a3, __n128 *a4, int64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    if (a3 == 2)
    {
      a6.n128_f32[0] = *(a2 - 4);
      v6 = *result;
      if (a6.n128_f32[0] > *result)
      {
        *result = a6.n128_u32[0];
        *(a2 - 4) = v6;
        v7 = *(result + 8);
        *(result + 8) = *(a2 - 1);
        *(a2 - 1) = v7;
      }
    }

    else if (a3 <= 0)
    {
      if (result != a2)
      {
        v16 = (result + 16);
        if ((result + 16) != a2)
        {
          v17 = 0;
          v18 = result;
          do
          {
            v20 = v16;
            a6.n128_u32[0] = *v16;
            v21 = *v18;
            if (*v16 > *v18)
            {
              v22 = *(v18 + 24);
              v23 = v17;
              do
              {
                v24 = result + v23;
                *(v24 + 16) = v21;
                *(v24 + 24) = *(result + v23 + 8);
                if (!v23)
                {
                  v19 = result;
                  goto LABEL_15;
                }

                v21 = *(v24 - 16);
                v23 -= 16;
              }

              while (a6.n128_f32[0] > v21);
              v19 = result + v23 + 16;
LABEL_15:
              *v19 = a6.n128_u32[0];
              *(v19 + 8) = v22;
            }

            v16 = v20 + 4;
            v17 += 16;
            v18 = v20;
          }

          while (v20 + 4 != a2);
        }
      }
    }

    else
    {
      v9 = a3 >> 1;
      v10 = (result + 16 * (a3 >> 1));
      v11 = a3 - (a3 >> 1);
      v12 = result;
      if (a3 <= a5)
      {
        v26 = a4;
        v27.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(result, v10, a3 >> 1, a4, a6);
        v28 = &v26[v9];
        a6.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(v10, a2, v11, v28, v27);
        v29 = &v26[a3];
        v30 = v28;
        while (v30 != v29)
        {
          a6.n128_u32[0] = *v30;
          v33 = v26->n128_f32[0];
          if (*v30 <= v26->n128_f32[0])
          {
            v31 = v26++;
            a6.n128_f32[0] = v33;
          }

          else
          {
            v31 = v30;
            v30 += 4;
          }

          v32 = v31->n128_u64[1];
          *v12 = a6.n128_u32[0];
          *(v12 + 8) = v32;
          v12 += 16;
          if (v26 == v28)
          {
            if (v30 != v29)
            {
              v37 = 0;
              do
              {
                v38 = &v30[v37];
                v39 = v12 + v37 * 4;
                a6.n128_u32[0] = v30[v37];
                *v39 = a6.n128_u32[0];
                *(v39 + 8) = *&v30[v37 + 2];
                v37 += 4;
              }

              while (v38 + 4 != v29);
            }

            return a6.n128_f32[0];
          }
        }

        if (v26 != v28)
        {
          v34 = 0;
          do
          {
            v35 = &v26[v34];
            v36 = v12 + v34 * 16;
            a6.n128_u32[0] = v26[v34].n128_u32[0];
            *v36 = a6.n128_u32[0];
            *(v36 + 8) = v26[v34++].n128_u64[1];
          }

          while (&v35[1] != v28);
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(result, v10, a3 >> 1, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(v10, a2, v11, a4, a5);

        a6.n128_f32[0] = std::__inplace_merge<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(v12, v10, a2, v9, v11, a4, a5, v15);
      }
    }
  }

  return a6.n128_f32[0];
}

double std::__stable_sort_move<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(float *a1, float *a2, unint64_t a3, __n128 *a4, __n128 a5)
{
  if (a3)
  {
    if (a3 == 2)
    {
      v6 = *(a2 - 4);
      v5 = (a2 - 4);
      if (v6 <= *a1)
      {
        *a4 = *a1;
        a5 = *v5;
      }

      else
      {
        *a4 = *v5;
        a5 = *a1;
      }

      a4[1] = a5;
    }

    else if (a3 == 1)
    {
      a5 = *a1;
      *a4 = *a1;
    }

    else if (a3 > 8)
    {
      v16 = a3 >> 1;
      v17 = 16 * (a3 >> 1);
      v18 = &a1[v17 / 4];
      v19 = a1;
      v22 = a4;
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(a1, &a1[v17 / 4], v16, a4, v16);
      std::__stable_sort<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(v18, a2, a3 - v16, &v22[v17 / 0x10], a3 - v16);
      v23 = v18;
      while (v23 != a2)
      {
        if (*v23 <= *v19)
        {
          v24 = *v19;
          v19 += 4;
          a5.n128_u64[0] = v24.n128_u64[0];
          *v22++ = v24;
          if (v19 == v18)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v25 = *v23;
          v23 += 4;
          a5.n128_u64[0] = v25.n128_u64[0];
          *v22++ = v25;
          if (v19 == v18)
          {
LABEL_32:
            while (v23 != a2)
            {
              v27 = *v23;
              v23 += 4;
              a5.n128_u64[0] = v27.n128_u64[0];
              *v22++ = v27;
            }

            return a5.n128_f64[0];
          }
        }
      }

      while (v19 != v18)
      {
        v26 = *v19;
        v19 += 4;
        a5.n128_u64[0] = v26.n128_u64[0];
        *v22++ = v26;
      }
    }

    else if (a1 != a2)
    {
      a5 = *a1;
      *a4 = *a1;
      v7 = a1 + 4;
      if (a1 + 4 != a2)
      {
        v8 = 0;
        v9 = a4;
        v10 = a4;
        do
        {
          while (1)
          {
            v11 = v7;
            v12 = v10->n128_f32[0];
            ++v10;
            if (*v7 > v12)
            {
              break;
            }

            a5 = *v7;
            *v10 = *v7;
            v7 += 4;
            v8 += 16;
            v9 = v10;
            a1 = v11;
            if (v11 + 4 == a2)
            {
              return a5.n128_f64[0];
            }
          }

          a5 = *v9;
          *v10 = *v9;
          v13 = a4;
          if (v9 != a4)
          {
            v14 = v8;
            while (1)
            {
              v13 = (a4 + v14);
              v15 = *(a4[-1].n128_f32 + v14);
              if (*v11 <= v15)
              {
                break;
              }

              v13->n128_f32[0] = v15;
              v13->n128_u64[1] = v13[-1].n128_u64[1];
              v14 -= 16;
              if (!v14)
              {
                v13 = a4;
                break;
              }
            }
          }

          a5.n128_f32[0] = *v11;
          v13->n128_f32[0] = *v11;
          v13->n128_u64[1] = *(a1 + 3);
          v7 = v11 + 4;
          v8 += 16;
          v9 = v10;
          a1 = v11;
        }

        while (v11 + 4 != a2);
      }
    }
  }

  return a5.n128_f64[0];
}

float std::__inplace_merge<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(float *a1, float *a2, float *a3, uint64_t a4, uint64_t a5, float *a6, uint64_t a7, __n128 a8)
{
  if (!a5)
  {
    return a8.n128_f32[0];
  }

  while (a5 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return a8.n128_f32[0];
    }

    v10 = 0;
    a8.n128_f32[0] = *a2;
    v11 = -a4;
    while (1)
    {
      v12 = a1[v10 / 4];
      if (a8.n128_f32[0] > v12)
      {
        break;
      }

      v10 += 16;
      if (__CFADD__(v11++, 1))
      {
        return a8.n128_f32[0];
      }
    }

    v14 = -v11;
    v15 = &a1[v10 / 4];
    if (-v11 >= a5)
    {
      if (v11 == -1)
      {
        v61 = &a1[v10 / 4];
        *v61 = a8.n128_f32[0];
        *a2 = v12;
        v62 = *(v61 + 1);
        *(v61 + 1) = *(a2 + 1);
        *(a2 + 1) = v62;
        return a8.n128_f32[0];
      }

      v24 = v14 / 2;
      v18 = &a1[4 * (v14 / 2) + v10 / 4];
      v17 = a2;
      if (a2 != a3)
      {
        v26 = (a3 - a2) >> 4;
        v17 = a2;
        do
        {
          v27 = v26 >> 1;
          v28 = &v17[4 * (v26 >> 1)];
          v30 = *v28;
          v29 = v28 + 4;
          v26 += ~(v26 >> 1);
          if (v30 > *v18)
          {
            v17 = v29;
          }

          else
          {
            v26 = v27;
          }
        }

        while (v26);
      }

      v16 = (v17 - a2) >> 4;
      v25 = v17;
      if (a2 != v18)
      {
LABEL_27:
        v25 = v18;
        if (a2 != v17)
        {
          v31 = *v18;
          *v18 = a8.n128_f32[0];
          *a2 = v31;
          v32 = *(v18 + 1);
          *(v18 + 1) = *(a2 + 1);
          *(a2 + 1) = v32;
          v25 = v18 + 4;
          for (i = a2 + 4; i != v17; i += 4)
          {
            if (v25 == a2)
            {
              a2 = i;
            }

            a8.n128_f32[0] = *v25;
            *v25 = *i;
            *i = a8.n128_f32[0];
            v34 = *(v25 + 1);
            *(v25 + 1) = *(i + 1);
            *(i + 1) = v34;
            v25 += 4;
          }

          if (v25 != a2)
          {
            v35 = v25;
            v36 = a2;
            while (1)
            {
              a8.n128_f32[0] = *v35;
              *v35 = *v36;
              *v36 = a8.n128_f32[0];
              v37 = *(v35 + 1);
              *(v35 + 1) = *(v36 + 1);
              *(v36 + 1) = v37;
              v35 += 4;
              v36 += 4;
              v38 = v35 == a2;
              if (v36 == v17)
              {
                if (v35 == a2)
                {
                  break;
                }

                v36 = a2 + 4;
                while (1)
                {
                  a8.n128_f32[0] = *v35;
                  *v35 = *a2;
                  *a2 = a8.n128_f32[0];
                  v39 = *(v35 + 1);
                  *(v35 + 1) = *(a2 + 1);
                  *(a2 + 1) = v39;
                  v35 += 4;
                  v38 = v35 == a2;
                  if (v36 != v17)
                  {
                    break;
                  }

                  if (v35 == a2)
                  {
                    goto LABEL_41;
                  }
                }
              }

              if (v38)
              {
                a2 = v36;
              }
            }
          }
        }
      }
    }

    else
    {
      v16 = a5 / 2;
      v17 = &a2[4 * (a5 / 2)];
      v18 = a2;
      if (a2 - a1 != v10)
      {
        v19 = (a2 - a1 - v10) >> 4;
        v18 = &a1[v10 / 4];
        do
        {
          v20 = v19 >> 1;
          v21 = &v18[4 * (v19 >> 1)];
          v23 = *v21;
          v22 = v21 + 4;
          v19 += ~(v19 >> 1);
          if (v23 < *v17)
          {
            v19 = v20;
          }

          else
          {
            v18 = v22;
          }
        }

        while (v19);
      }

      v24 = (v18 - a1 - v10) >> 4;
      v25 = &a2[4 * (a5 / 2)];
      if (a2 != v18)
      {
        goto LABEL_27;
      }
    }

LABEL_41:
    v40 = a5 - v16;
    if (v24 + v16 >= a5 - (v24 + v16) - v11)
    {
      a8.n128_f32[0] = std::__inplace_merge<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(v25, v17, a3, -(v24 + v11), a5 - v16, a6, a7, a8);
      a2 = v18;
      a4 = v24;
      a3 = v25;
      a5 = v16;
      a1 = v15;
      if (!v16)
      {
        return a8.n128_f32[0];
      }
    }

    else
    {
      v41 = v18;
      v42 = a3;
      v43 = -(v24 + v11);
      a8.n128_f32[0] = std::__inplace_merge<std::_ClassicAlgPolicy,llvm::BalancedPartitioning::runIteration(llvm::iterator_range<std::__wrap_iter<llvm::BPFunctionNode *>>,unsigned int,unsigned int,llvm::SmallVector<llvm::BalancedPartitioning::UtilitySignature,4u> &,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u> &)::$_1 &,std::__wrap_iter<std::pair<float,llvm::BPFunctionNode *> *>>(&a1[v10 / 4], v41, v25, v24, v16, a6, a7, a8);
      a4 = v43;
      a3 = v42;
      a2 = v17;
      a5 = v40;
      a1 = v25;
      if (!v40)
      {
        return a8.n128_f32[0];
      }
    }
  }

  if (a4 <= a5)
  {
    if (a2 != a1)
    {
      v54 = a6;
      v55 = a1;
      do
      {
        v56 = *v55;
        v55 += 4;
        *v54 = v56;
        v54 += 4;
      }

      while (v55 != a2);
      v57 = v54 - 4;
      while (a2 != a3)
      {
        a8.n128_f32[0] = *a2;
        v60 = *a6;
        if (*a2 <= *a6)
        {
          v58 = a6;
          a6 += 4;
          a8.n128_u32[0] = v60;
        }

        else
        {
          v58 = a2;
          a2 += 4;
        }

        v59 = *(v58 + 1);
        *a1 = a8.n128_f32[0];
        *(a1 + 1) = v59;
        a1 += 4;
        if (v54 == a6)
        {
          return a8.n128_f32[0];
        }
      }

      v63 = 0;
      do
      {
        v64 = &a1[v63];
        v65 = &a6[v63];
        a8.n128_f32[0] = a6[v63];
        *v64 = a8.n128_f32[0];
        *(v64 + 1) = *&a6[v63 + 2];
        v63 += 4;
      }

      while (v57 != v65);
    }
  }

  else if (a2 != a3)
  {
    v44 = 0;
    do
    {
      a8 = *&a2[v44];
      *&a6[v44] = a8;
      v44 += 4;
    }

    while (&a2[v44] != a3);
    v45 = a3 - 2;
    v46 = &a6[v44];
    while (a2 != a1)
    {
      a8.n128_f32[0] = *(a2 - 4);
      v49 = v46 - 4;
      v50 = *(v46 - 4);
      if (v50 <= a8.n128_f32[0])
      {
        a8.n128_f32[0] = *(v46 - 4);
        v47 = v46;
        v46 -= 4;
        v48 = *(v47 - 1);
        *(v45 - 2) = v50;
        *v45 = v48;
        v45 -= 4;
        if (v49 == a6)
        {
          return a8.n128_f32[0];
        }
      }

      else
      {
        v51 = a2;
        a2 -= 4;
        v52 = *(v51 - 1);
        *(v45 - 2) = a8.n128_f32[0];
        *v45 = v52;
        v45 -= 4;
        if (v46 == a6)
        {
          return a8.n128_f32[0];
        }
      }
    }

    while (v46 != a6)
    {
      v53 = *(v46 - 4);
      v46 -= 4;
      a8.n128_u32[0] = v53;
      *(v45 - 2) = v53;
      *v45 = *(v46 + 1);
      v45 -= 4;
    }
  }

  return a8.n128_f32[0];
}

uint64_t llvm::BinaryStreamError::BinaryStreamError(uint64_t a1, unsigned int a2)
{
  *a1 = &unk_28689E7B0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  MEMORY[0x259C62C80](a1 + 8, "Stream Error: ");
  if (a2 <= 4)
  {
    std::string::append(v4, off_27983C0F0[a2]);
  }

  return a1;
}

{
  *a1 = &unk_28689E7B0;
  *(a1 + 8) = 0;
  v4 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  MEMORY[0x259C62C80](a1 + 8, "Stream Error: ");
  if (a2 <= 4)
  {
    std::string::append(v4, off_27983C0F0[a2]);
  }

  return a1;
}

uint64_t llvm::BinaryStreamError::BinaryStreamError(uint64_t a1, unsigned int a2, const std::string::value_type *a3, std::string::size_type a4)
{
  *a1 = &unk_28689E7B0;
  *(a1 + 8) = 0;
  v8 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  MEMORY[0x259C62C80](a1 + 8, "Stream Error: ");
  if (a2 <= 4)
  {
    std::string::append(v8, off_27983C0F0[a2]);
  }

  if (a4)
  {
    std::string::append(v8, "  ");
    std::string::append(v8, a3, a4);
  }

  return a1;
}

{
  *a1 = &unk_28689E7B0;
  *(a1 + 8) = 0;
  v8 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  MEMORY[0x259C62C80](a1 + 8, "Stream Error: ");
  if (a2 <= 4)
  {
    std::string::append(v8, off_27983C0F0[a2]);
  }

  if (a4)
  {
    std::string::append(v8, "  ");
    std::string::append(v8, a3, a4);
  }

  return a1;
}

uint64_t llvm::BinaryStreamError::BinaryStreamError(uint64_t a1, const std::string::value_type *a2, std::string::size_type a3)
{
  *a1 = &unk_28689E7B0;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  MEMORY[0x259C62C80](a1 + 8, "Stream Error: ");
  std::string::append(v6, "An unspecified error has occurred.");
  if (a3)
  {
    std::string::append(v6, "  ");
    std::string::append(v6, a2, a3);
  }

  return a1;
}

{
  *a1 = &unk_28689E7B0;
  *(a1 + 8) = 0;
  v6 = (a1 + 8);
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  MEMORY[0x259C62C80](a1 + 8, "Stream Error: ");
  std::string::append(v6, "An unspecified error has occurred.");
  if (a3)
  {
    std::string::append(v6, "  ");
    std::string::append(v6, a2, a3);
  }

  return a1;
}

void *llvm::BinaryStreamError::log(llvm::BinaryStreamError *this, llvm::raw_ostream *a2)
{
  v5 = *(this + 1);
  v3 = this + 8;
  v4 = v5;
  v6 = v3[23];
  if (v6 >= 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  if (v6 >= 0)
  {
    v8 = v3[23];
  }

  else
  {
    v8 = *(v3 + 1);
  }

  return llvm::raw_ostream::write(a2, v7, v8);
}

char *llvm::BinaryStreamError::getErrorMessage(llvm::BinaryStreamError *this)
{
  v3 = *(this + 1);
  v1 = this + 8;
  v2 = v3;
  if (v1[23] >= 0)
  {
    return v1;
  }

  return v2;
}

void llvm::BinaryStreamError::~BinaryStreamError(void **this)
{
  *this = &unk_28689E7B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }
}

{
  *this = &unk_28689E7B0;
  if (*(this + 31) < 0)
  {
    operator delete(this[1]);
  }

  JUMPOUT(0x259C63180);
}

void llvm::ErrorInfoBase::message(llvm::ErrorInfoBase *this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = 0;
  v8 = 0;
  v9 = 1;
  v6 = 0;
  v7 = 0;
  v5 = 0;
  v3 = &unk_2868A3EF8;
  v10 = a2;
  llvm::raw_ostream::SetBufferAndMode(&v3, 0, 0, 0);
  (*(*this + 16))(this, &v3);
  llvm::raw_ostream::~raw_ostream(&v3);
}

__n128 llvm::BinaryStreamReader::BinaryStreamReader(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a1 = &unk_28689E830;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 1);
  *(a1 + 33) = *(a2 + 25);
  *(a1 + 24) = result;
  *(a1 + 56) = 0;
  return result;
}

{
  v3 = *a2;
  v2 = a2[1];
  *a1 = &unk_28689E830;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 1);
  *(a1 + 33) = *(a2 + 25);
  *(a1 + 24) = result;
  *(a1 + 56) = 0;
  return result;
}

llvm::BinaryStreamReader *llvm::BinaryStreamReader::BinaryStreamReader(llvm::BinaryStreamReader *this, llvm::BinaryStream *a2)
{
  *this = &unk_28689E830;
  llvm::BinaryStreamRef::BinaryStreamRef(this + 8, a2);
  *(this + 7) = 0;
  return this;
}

{
  *this = &unk_28689E830;
  llvm::BinaryStreamRef::BinaryStreamRef(this + 8, a2);
  *(this + 7) = 0;
  return this;
}

void llvm::BinaryStreamReader::BinaryStreamReader(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_28689E830;
  llvm::BinaryStreamRef::BinaryStreamRef(a1 + 1, a2, a3, a4);
}

{
  *a1 = &unk_28689E830;
  llvm::BinaryStreamRef::BinaryStreamRef(a1 + 1, a2, a3, a4);
}

{
  *a1 = &unk_28689E830;
  llvm::BinaryStreamRef::BinaryStreamRef(a1 + 1, a2, a3, a4);
}

{
  *a1 = &unk_28689E830;
  llvm::BinaryStreamRef::BinaryStreamRef(a1 + 1, a2, a3, a4);
}

uint64_t llvm::BinaryStreamReader::readLongestContiguousChunk@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = llvm::BinaryStreamRef::readLongestContiguousChunk(a1 + 8, *(a1 + 56), a2, a3);
  if (!*a3)
  {
    *(a1 + 56) += *(a2 + 8);
  }

  return result;
}

uint64_t llvm::BinaryStreamReader::readBytes@<X0>(uint64_t a1@<X0>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v6 = a3;
  result = llvm::BinaryStreamRef::readBytes(a1 + 8, *(a1 + 56), a3, a4);
  if (!*a4)
  {
    *(a1 + 56) += v6;
  }

  return result;
}

void llvm::BinaryStreamReader::readULEB128(llvm::BinaryStreamReader *this@<X0>, unint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = 0;
  while (1)
  {
    llvm::BinaryStreamRef::readBytes(this + 8, *(this + 7), 1, a3);
    if (*a3)
    {
      break;
    }

    ++*(this + 7);
    if ((v13 + 1) > 0xA)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v14[v13] = MEMORY[0];
    v6 = ++v13;
    if ((MEMORY[0] & 0x80000000) == 0)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      while (v6 != v7)
      {
        v10 = v14[v7];
        v11 = v10 & 0x7F;
        if (v9 >= 0x3F)
        {
          v12 = v11 > 1;
          if (v9 != 63)
          {
            v12 = v11 != 0;
          }

          if (v12)
          {
            break;
          }
        }

        v8 += v11 << v9;
        v9 += 7;
        ++v7;
        if ((v10 & 0x80) == 0)
        {
          goto LABEL_16;
        }
      }

      v8 = 0;
LABEL_16:
      *a2 = v8;
      *a3 = 0;
      return;
    }
  }
}

void llvm::BinaryStreamReader::readSLEB128(llvm::BinaryStreamReader *this@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = 0;
  while (1)
  {
    llvm::BinaryStreamRef::readBytes(this + 8, *(this + 7), 1, a3);
    if (*a3)
    {
      break;
    }

    ++*(this + 7);
    if ((v16 + 1) > 0xA)
    {
      llvm::SmallVectorBase<unsigned long long>::grow_pod();
    }

    v17[v16] = MEMORY[0];
    v6 = ++v16;
    if ((MEMORY[0] & 0x80000000) == 0)
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      do
      {
        if (v6 == v7)
        {
LABEL_20:
          v13 = 0;
          goto LABEL_27;
        }

        v10 = v17[v7];
        v11 = v10 & 0x7F;
        if (v9 >= 0x3F)
        {
          if (v9 == 63)
          {
            v12 = v10 - 127 < 2 || v10 == 0;
            if (!v12 && v10 != 255)
            {
              goto LABEL_20;
            }
          }

          else if (((v8 >> 63) & 0x7F) != v11)
          {
            goto LABEL_20;
          }
        }

        v8 |= v11 << v9;
        v9 += 7;
        ++v7;
      }

      while ((v10 & 0x80) != 0);
      v14 = v10 < 0x40 || v9 > 0x3F;
      v15 = -1 << v9;
      if (v14)
      {
        v15 = 0;
      }

      v13 = v8 | v15;
LABEL_27:
      *a2 = v13;
      *a3 = 0;
      return;
    }
  }
}

uint64_t llvm::BinaryStreamReader::readCString@<X0>(llvm::BinaryStreamReader *this@<X0>, llvm::StringRef *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(this + 7);
  __s = 0;
  __n = 0;
  result = llvm::BinaryStreamRef::readLongestContiguousChunk(this + 8, v6, &__s, a3);
  if (!*a3)
  {
    v8 = v6;
    while (1)
    {
      v9 = __n;
      v10 = *(this + 7) + __n;
      *(this + 7) = v10;
      if (v9)
      {
        v11 = __s;
        v12 = memchr(__s, 0, v9);
        v13 = v12 - v11;
        if (v12 && v13 != -1)
        {
          break;
        }
      }

      __s = 0;
      __n = 0;
      result = llvm::BinaryStreamRef::readLongestContiguousChunk(this + 8, v10, &__s, a3);
      v8 = v10;
      if (*a3)
      {
        return result;
      }
    }

    v15 = v13 + v8;
    *(this + 7) = v6;
    __s = 0;
    __n = 0;
    result = llvm::BinaryStreamRef::readBytes(this + 8, v6, (v13 + v8 - v6), a3);
    if (!*a3)
    {
      v16 = __n;
      *a2 = __s;
      *(a2 + 1) = v16;
      *(this + 7) = v15 + 1;
    }
  }

  return result;
}

uint64_t llvm::BinaryStreamReader::readFixedString@<X0>(llvm::BinaryStreamReader *this@<X0>, llvm::StringRef *a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v7 = a3;
  result = llvm::BinaryStreamRef::readBytes(this + 8, *(this + 7), a3, a4);
  if (!*a4)
  {
    *(this + 7) += v7;
    *a2 = 0;
    *(a2 + 1) = 0;
  }

  return result;
}

uint64_t llvm::BinaryStreamReader::readWideString@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a1 + 56);
  result = llvm::BinaryStreamRef::readBytes(a1 + 8, v6, 2, a3);
  if (!*a3)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v10 = *(a1 + 56) + 2;
      *(a1 + 56) = v10;
      if (!MEMORY[0])
      {
        break;
      }

      ++v9;
      result = llvm::BinaryStreamRef::readBytes(a1 + 8, v10, 2, a3);
      v8 += 2;
      if (*a3)
      {
        return result;
      }
    }

    *(a1 + 56) = v6;
    if (!v9)
    {
      *a2 = 0;
      a2[1] = 0;
      goto LABEL_11;
    }

    if ((v9 & 0x80000000) != 0)
    {
      operator new();
    }

    v11 = v10;
    result = llvm::BinaryStreamRef::readBytes(a1 + 8, v6, v8 & 0xFFFFFFFE, a3);
    if (!*a3)
    {
      *a2 = 0;
      a2[1] = v9;
      v10 = v11;
LABEL_11:
      *(a1 + 56) = v10;
      *a3 = 0;
    }
  }

  return result;
}

uint64_t llvm::BinaryStreamReader::readStreamRef@<X0>(uint64_t a1@<X0>, llvm::BinaryStreamRef *a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(a1 + 48) == 1)
  {
    v4 = *(a1 + 40);
    goto LABEL_3;
  }

  v4 = *(a1 + 24);
  if (!v4)
  {
LABEL_3:
    v5 = v4 - *(a1 + 56);

    return llvm::BinaryStreamReader::readStreamRef(a1, a2, v5, a3);
  }

  v7 = a1;
  v8 = a2;
  v9 = a3;
  v10 = (*(*v4 + 40))(v4);
  a3 = v9;
  a2 = v8;
  v11 = v10;
  a1 = v7;
  v5 = v11 - *(v7 + 32) - *(v7 + 56);

  return llvm::BinaryStreamReader::readStreamRef(a1, a2, v5, a3);
}

uint64_t llvm::BinaryStreamReader::readStreamRef@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 48) == 1)
  {
    v7 = *(a1 + 56);
    v8 = a3;
    if (*(a1 + 40) - v7 >= a3)
    {
      goto LABEL_8;
    }

LABEL_6:
    operator new();
  }

  v9 = *(a1 + 24);
  if (v9)
  {
    LODWORD(v8) = a3;
    v10 = (*(*v9 + 40))(v9);
    v7 = *(a1 + 56);
    v8 = v8;
    if (v10 - *(a1 + 32) - v7 < v8)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v7 = *(a1 + 56);
    v8 = a3;
    if (-v7 < a3)
    {
      goto LABEL_6;
    }
  }

LABEL_8:
  llvm::BinaryStreamRefBase<llvm::BinaryStreamRef,llvm::BinaryStream>::slice((a1 + 8), v7, v8, &v15);
  v11 = v15;
  v15 = 0uLL;
  v12 = *(a2 + 8);
  *a2 = v11;
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  *(a2 + 16) = v16[0];
  *(a2 + 25) = *(v16 + 9);
  v13 = *(&v15 + 1);
  if (*(&v15 + 1) && !atomic_fetch_add((*(&v15 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
  }

  result = 0;
  *(a1 + 56) += v8;
  *a4 = 0;
  return result;
}

void llvm::BinaryStreamRefBase<llvm::BinaryStreamRef,llvm::BinaryStream>::slice(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a1[2];
  if (!v5)
  {
    v8 = 0;
    goto LABEL_30;
  }

  if (*(a1 + 40) == 1)
  {
    v7 = a1[4];
    if (v7 >= a2)
    {
      v7 = a2;
    }

    v9 = *a1;
    v8 = a1[1];
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_11:
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  v10 = a1;
  v12 = (*(*v5 + 40))(a1[2]);
  a1 = v10;
  v7 = v12 - v10[3];
  if (v7 >= a2)
  {
    v7 = a2;
  }

  v9 = *v10;
  v8 = v10[1];
  if (v8)
  {
    goto LABEL_11;
  }

LABEL_12:
  v13 = a1[2];
  v14 = *(a1 + 40);
  v15 = a1[3] + v7;
  if (v14)
  {
    v16 = v7;
  }

  else
  {
    v16 = 0;
  }

  if (v7)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = a1[4] - v17;
  if ((a1[5] & 1) == 0)
  {
    if (v13)
    {
      v19 = (*(*v13 + 40))(a1[2]) - a3 - v15;
      *a4 = v9;
      *(a4 + 8) = v8;
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_24;
    }

LABEL_30:
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    goto LABEL_36;
  }

  if (!v13)
  {
    goto LABEL_30;
  }

  v19 = v18 - a3;
  *a4 = v9;
  *(a4 + 8) = v8;
  if (v8)
  {
LABEL_24:
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

LABEL_25:
  *(a4 + 16) = v13;
  *(a4 + 24) = v15;
  *(a4 + 32) = v18;
  *(a4 + 40) = v14;
  if (v14)
  {
    if (v18 < v19)
    {
      v19 = v18;
    }

    if (!v19)
    {
      goto LABEL_36;
    }

LABEL_35:
    *(a4 + 32) = v18 - v19;
    goto LABEL_36;
  }

  v20 = (*(*v13 + 40))(v13);
  if (v20 - v15 < v19)
  {
    v19 = v20 - v15;
  }

  if (v19)
  {
    v18 = (*(*v13 + 40))(v13) - v15;
    *(a4 + 40) = 1;
    goto LABEL_35;
  }

LABEL_36:
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);

    std::__shared_weak_count::__release_weak(v8);
  }
}

uint64_t llvm::BinaryStreamReader::skip@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(this + 48) == 1)
  {
    v4 = *(this + 40);
  }

  else
  {
    v4 = *(this + 24);
    if (v4)
    {
      v5 = this;
      v6 = a2;
      v7 = (*(*v4 + 40))(*(this + 24));
      a2 = v6;
      v8 = v7;
      this = v5;
      v4 = v8 - *(v5 + 32);
    }
  }

  v9 = *(this + 56);
  if (v4 - v9 < a2)
  {
    operator new();
  }

  *(this + 56) = v9 + a2;
  *a3 = 0;
  return this;
}

uint64_t llvm::BinaryStreamReader::padToAlignment@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, uint64_t *a3@<X8>)
{
  v4 = *(this + 56);
  v5 = (v4 - (v4 != 0)) / a2;
  if (v4)
  {
    LODWORD(v5) = v5 + 1;
  }

  v6 = v5 * a2 - v4;
  if (*(this + 48) == 1)
  {
    v7 = *(this + 40);
  }

  else
  {
    v7 = *(this + 24);
    if (v7)
    {
      v8 = this;
      v9 = (*(*v7 + 40))(*(this + 24));
      this = v8;
      v7 = v9 - *(v8 + 32);
      v4 = *(v8 + 56);
    }
  }

  if (v7 - v4 < v6)
  {
    operator new();
  }

  *(this + 56) = v4 + v6;
  *a3 = 0;
  return this;
}

uint64_t llvm::BinaryStreamReader::peek(llvm::BinaryStreamReader *this)
{
  v5 = 0;
  v6 = 0;
  llvm::BinaryStreamRef::readBytes(this + 8, *(this + 7), 1, &v4);
  v1 = v4;
  v4 = 0;
  v7 = v1;
  llvm::handleErrors<llvm::consumeError(llvm::Error)::{lambda(llvm::ErrorInfoBase const&)#1}>(&v7, &v8);
  if (v7)
  {
    (*(*v7 + 8))(v7);
  }

  v2 = *v5;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return v2;
}

void llvm::BinaryStreamReader::split(llvm::BinaryStreamReader *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 3);
  if (v4)
  {
    v6 = *(this + 7);
    if (*(this + 48) == 1)
    {
      v7 = *(this + 5);
      if (v7 >= v6)
      {
        v7 = *(this + 7);
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v20 = this;
      v21 = (*(*v4 + 40))(*(this + 3));
      this = v20;
      v7 = v21 - *(v20 + 4);
      if (v7 >= v6)
      {
        v7 = v6;
      }

      v9 = *(v20 + 1);
      v8 = *(v20 + 2);
      if (!v8)
      {
LABEL_12:
        v14 = *(this + 3);
        v10 = *(this + 48);
        if (v10)
        {
          v22 = v7;
        }

        else
        {
          v22 = 0;
        }

        if (!v7)
        {
          v22 = 0;
        }

        if (!v14)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v15 = 0;
          v13 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          if (!v8)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        v38 = v9;
        v19 = *(this + 4) + v7;
        v17 = *(this + 5) - v22;
        v23 = v17;
        if ((*(this + 48) & 1) == 0)
        {
          v23 = (*(*v14 + 40))(v14) - v19;
        }

        if (v23 >= a2)
        {
          v24 = a2;
        }

        else
        {
          v24 = v23;
        }

        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        if (v10)
        {
          v27 = v17 - a2;
          v12 = v24 + v19;
          v11 = v17 - v26;
          if (!v8)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v27 = (*(*v14 + 40))(v14) - a2 - v19;
          v12 = v24 + v19;
          v11 = v17 - v26;
          if (!v8)
          {
LABEL_38:
            if (v10)
            {
              if (v17 < v27)
              {
                v27 = v17;
              }

              v18 = v10;
              v15 = v9;
              if (!v27)
              {
                v13 = v8;
                v18 = v10;
                if (!v8)
                {
                  goto LABEL_52;
                }

                goto LABEL_51;
              }

LABEL_48:
              v17 -= v27;
              v13 = v8;
              if (!v8)
              {
                goto LABEL_52;
              }

              goto LABEL_51;
            }

            v28 = v12;
            v29 = v11;
            v30 = (*(*v14 + 40))(v14);
            if (v30 - v19 < v27)
            {
              v27 = v30 - v19;
            }

            if (v27)
            {
              v17 = (*(*v14 + 40))(v14) - v19;
              v18 = 1;
              v15 = v38;
              v11 = v29;
              v12 = v28;
              goto LABEL_48;
            }

            v13 = v8;
            v18 = v10;
            v15 = v38;
            v11 = v29;
            v12 = v28;
            if (!v8)
            {
              goto LABEL_52;
            }

LABEL_51:
            if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v39 = v15;
              v32 = v11;
              v33 = v12;
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
              v12 = v33;
              v11 = v32;
              v15 = v39;
              if (v13)
              {
                goto LABEL_53;
              }

LABEL_55:
              v16 = 0;
              goto LABEL_56;
            }

LABEL_52:
            if (v13)
            {
LABEL_53:
              v31 = 0;
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
              v16 = v13;
              goto LABEL_57;
            }

            goto LABEL_55;
          }
        }

        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_38;
      }
    }

    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_56:
  v31 = 1;
LABEL_57:
  v43 = v15;
  v40 = v31;
  if (v31)
  {
    *v44 = v14;
    *&v44[8] = v19;
    *&v44[16] = v17;
    v44[24] = v18;
  }

  else
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    *v44 = v14;
    *&v44[8] = v19;
    *&v44[16] = v17;
    v44[24] = v18;
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v34 = v15;
      v35 = v11;
      v36 = v12;
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
      v12 = v36;
      v11 = v35;
      v15 = v34;
    }
  }

  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v41 = v15;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *v42 = v14;
    *&v42[8] = v12;
    *&v42[16] = v11;
    v42[24] = v10;
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    *v42 = v14;
    *&v42[8] = v12;
    *&v42[16] = v11;
    v42[24] = v10;
  }

  *a3 = &unk_28689E830;
  *(a3 + 8) = v43;
  *(a3 + 16) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = *v44;
  *(a3 + 33) = *&v44[9];
  *(a3 + 56) = 0;
  *(a3 + 64) = &unk_28689E830;
  *(a3 + 72) = v41;
  *(a3 + 80) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a3 + 88) = *v42;
    *(a3 + 97) = *&v42[9];
    *(a3 + 120) = 0;
    v37 = v40;
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    *(a3 + 88) = *v42;
    *(a3 + 97) = *&v42[9];
    *(a3 + 120) = 0;
    v37 = v40;
  }

  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    if (!v13)
    {
      goto LABEL_77;
    }
  }

  else if (!v13)
  {
    goto LABEL_77;
  }

  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (v37)
    {
      return;
    }

    goto LABEL_78;
  }

LABEL_77:
  if (v37)
  {
    return;
  }

LABEL_78:
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }
}

void llvm::BinaryStreamReader::~BinaryStreamReader(llvm::BinaryStreamReader *this)
{
  *this = &unk_28689E830;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_28689E830;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::BinaryStreamRef::BinaryStreamRef(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (((*(*a2 + 48))(a2) & 2) == 0)
  {
    *(a1 + 32) = (*(*a2 + 40))(a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (((*(*a2 + 48))(a2) & 2) == 0)
  {
    *(a1 + 32) = (*(*a2 + 40))(a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

void *llvm::BinaryStreamRef::BinaryStreamRef(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  result[1] = 0;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

void llvm::BinaryStreamRef::BinaryStreamRef(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

{
  operator new();
}

uint64_t llvm::BinaryStreamRef::readBytes@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 32) < a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      if ((*(*v8 + 40))(v8) - *(a1 + 24) < a2)
      {
        goto LABEL_13;
      }
    }

    else if (a2)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 40) != 1)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      if ((*(*v9 + 40))(v9) - *(a1 + 24) >= a3 + a2)
      {
        goto LABEL_15;
      }
    }

    else if (!(a3 + a2))
    {
      goto LABEL_15;
    }

LABEL_13:
    operator new();
  }

  if (*(a1 + 32) < a3 + a2)
  {
    goto LABEL_13;
  }

LABEL_15:
  *a4 = 0;
  v10 = *(**(a1 + 16) + 24);

  return v10();
}

uint64_t llvm::BinaryStreamRef::readLongestContiguousChunk@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*(a1 + 40) == 1)
  {
    if (*(a1 + 32) < a2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      if ((*(*v8 + 40))(v8) - *(a1 + 24) < a2)
      {
        goto LABEL_13;
      }
    }

    else if (a2)
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 40) != 1)
  {
    v9 = *(a1 + 16);
    if (v9)
    {
      if ((*(*v9 + 40))(v9) - *(a1 + 24) >= (a2 + 1))
      {
        goto LABEL_17;
      }
    }

    else if (a2 == -1)
    {
      goto LABEL_17;
    }

LABEL_13:
    operator new();
  }

  if (*(a1 + 32) < (a2 + 1))
  {
    goto LABEL_13;
  }

LABEL_17:
  *a4 = 0;
  result = (*(**(a1 + 16) + 32))(*(a1 + 16), *(a1 + 24) + a2, a3);
  if (!*a4)
  {
    if (*(a1 + 40) == 1)
    {
      v11 = *(a1 + 32) - a2;
      if (*(a3 + 8) <= v11)
      {
        goto LABEL_25;
      }

LABEL_23:
      result = 0;
      *(a3 + 8) = v11;
LABEL_14:
      *a4 = 0;
      return result;
    }

    v12 = *(a1 + 16);
    if (v12)
    {
      v11 = (*(*v12 + 40))(v12) - *(a1 + 24) - a2;
      if (*(a3 + 8) > v11)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v11 = -a2;
      if (*(a3 + 8) > -a2)
      {
        goto LABEL_23;
      }
    }

LABEL_25:
    result = 0;
    goto LABEL_14;
  }

  return result;
}

uint64_t llvm::WritableBinaryStreamRef::WritableBinaryStreamRef(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (((*(*a2 + 48))(a2) & 2) == 0)
  {
    *(a1 + 32) = (*(*a2 + 40))(a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = a2;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  if (((*(*a2 + 48))(a2) & 2) == 0)
  {
    *(a1 + 32) = (*(*a2 + 40))(a2);
    *(a1 + 40) = 1;
  }

  return a1;
}

void *llvm::WritableBinaryStreamRef::WritableBinaryStreamRef(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *result = 0;
  result[1] = 0;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

{
  *result = 0;
  result[1] = 0;
  result[2] = a2;
  result[3] = a3;
  result[4] = a4;
  result[5] = a5;
  return result;
}

void llvm::WritableBinaryStreamRef::WritableBinaryStreamRef(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  operator new();
}

{
  operator new();
}

uint64_t llvm::WritableBinaryStreamRef::writeBytes@<X0>(llvm::WritableBinaryStreamRef *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  result = llvm::WritableBinaryStreamRef::checkOffsetForWrite(a1, a2, a3, a4);
  if (!*a4)
  {
    v7 = *(**(a1 + 2) + 56);

    return v7();
  }

  return result;
}

uint64_t llvm::WritableBinaryStreamRef::checkOffsetForWrite@<X0>(llvm::WritableBinaryStreamRef *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  if (((*(**(this + 2) + 48))(*(this + 2)) & 2) != 0)
  {
    if (*(this + 40))
    {
      if (*(this + 4) < a2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v9 = *(this + 2);
      if (v9)
      {
        if ((*(*v9 + 40))(v9) - *(this + 3) < a2)
        {
          goto LABEL_22;
        }
      }

      else if (a2)
      {
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (*(this + 40))
    {
      if (*(this + 4) < a2)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v8 = *(this + 2);
      if (v8)
      {
        if ((*(*v8 + 40))(v8) - *(this + 3) < a2)
        {
          goto LABEL_22;
        }
      }

      else if (a2)
      {
        goto LABEL_22;
      }
    }

    if (*(this + 40) == 1)
    {
      if (*(this + 4) >= a3 + a2)
      {
        goto LABEL_25;
      }

LABEL_22:
      operator new();
    }

    v10 = *(this + 2);
    if (v10)
    {
      if ((*(*v10 + 40))(v10) - *(this + 3) < a3 + a2)
      {
        goto LABEL_22;
      }
    }

    else if (a3 + a2)
    {
      goto LABEL_22;
    }
  }

LABEL_25:
  result = 0;
  *a4 = 0;
  return result;
}

__n128 llvm::WritableBinaryStreamRef::operator llvm::BinaryStreamRef@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = v2;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v3;
  return result;
}

void std::__shared_ptr_emplace<anonymous namespace::ArrayRefImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689E860;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::ArrayRefImpl::readBytes@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1 + 8;
  if ((*(*(a1 + 8) + 40))(a1 + 8) < a2 || (*(*v10 + 40))(v10) < a3 + a2)
  {
    operator new();
  }

  result = 0;
  *a4 = *(a1 + 24) + a2;
  a4[1] = a3;
  *a5 = 0;
  return result;
}

uint64_t anonymous namespace::ArrayRefImpl::readLongestContiguousChunk@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a1 + 1;
  if ((*(a1[1] + 40))(a1 + 1) < a2 || (*(*v8 + 40))(v8) < a2 + 1)
  {
    operator new();
  }

  result = 0;
  v10 = a1[4] - a2;
  *a3 = a1[3] + a2;
  a3[1] = v10;
  *a4 = 0;
  return result;
}

uint64_t llvm::BinaryByteStream::readBytes@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  if ((*(*a1 + 40))(a1) < a2 || (*(*a1 + 40))(a1) < a3 + a2)
  {
    operator new();
  }

  result = 0;
  *a4 = a1[2] + a2;
  a4[1] = a3;
  *a5 = 0;
  return result;
}

uint64_t llvm::BinaryByteStream::readLongestContiguousChunk@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  if ((*(*a1 + 40))(a1) < a2 || (*(*a1 + 40))(a1) < a2 + 1)
  {
    operator new();
  }

  result = 0;
  v9 = a1[3] - a2;
  *a3 = a1[2] + a2;
  a3[1] = v9;
  *a4 = 0;
  return result;
}

void std::__shared_ptr_emplace<anonymous namespace::MutableArrayRefImpl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_28689E980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C63180);
}

uint64_t anonymous namespace::MutableArrayRefImpl::readBytes@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1 + 32;
  if ((*(*(a1 + 32) + 40))(a1 + 32) < a2 || (*(*v10 + 40))(v10) < a3 + a2)
  {
    operator new();
  }

  result = 0;
  *a4 = *(a1 + 48) + a2;
  a4[1] = a3;
  *a5 = 0;
  return result;
}

uint64_t anonymous namespace::MutableArrayRefImpl::readLongestContiguousChunk@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a1 + 4;
  if ((*(a1[4] + 40))(a1 + 4) < a2 || (*(*v8 + 40))(v8) < a2 + 1)
  {
    operator new();
  }

  result = 0;
  v10 = a1[7] - a2;
  *a3 = a1[6] + a2;
  a3[1] = v10;
  *a4 = 0;
  return result;
}

uint64_t anonymous namespace::MutableArrayRefImpl::writeBytes@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a4)
  {
    v10 = a1 + 8;
    v11 = (*(*(a1 + 8) + 48))(a1 + 8);
    v12 = (*(*v10 + 40))(v10);
    if ((v11 & 2) != 0)
    {
      if (v12 < a2)
      {
        goto LABEL_7;
      }
    }

    else if (v12 < a2 || (*(*v10 + 40))(v10) < a4 + a2)
    {
LABEL_7:
      operator new();
    }

    memcpy((*(a1 + 16) + a2), a3, a4);
  }

  result = 0;
  *a5 = 0;
  return result;
}

uint64_t llvm::MutableBinaryByteStream::readBytes@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1 + 24;
  if ((*(*(a1 + 24) + 40))(a1 + 24) < a2 || (*(*v10 + 40))(v10) < a3 + a2)
  {
    operator new();
  }

  result = 0;
  *a4 = *(a1 + 40) + a2;
  a4[1] = a3;
  *a5 = 0;
  return result;
}

uint64_t llvm::MutableBinaryByteStream::readLongestContiguousChunk@<X0>(void *a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = a1 + 3;
  if ((*(a1[3] + 40))(a1 + 3) < a2 || (*(*v8 + 40))(v8) < a2 + 1)
  {
    operator new();
  }

  result = 0;
  v10 = a1[6] - a2;
  *a3 = a1[5] + a2;
  a3[1] = v10;
  *a4 = 0;
  return result;
}

uint64_t llvm::MutableBinaryByteStream::writeBytes@<X0>(void *a1@<X0>, unint64_t a2@<X1>, const void *a3@<X2>, size_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a4)
  {
    v10 = (*(*a1 + 48))(a1);
    v11 = (*(*a1 + 40))(a1);
    if ((v10 & 2) != 0)
    {
      if (v11 < a2)
      {
        goto LABEL_7;
      }
    }

    else if (v11 < a2 || (*(*a1 + 40))(a1) < a4 + a2)
    {
LABEL_7:
      operator new();
    }

    memcpy((a1[1] + a2), a3, a4);
  }

  result = 0;
  *a5 = 0;
  return result;
}

__n128 llvm::BinaryStreamWriter::BinaryStreamWriter(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  *a1 = &unk_28689EAC8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 1);
  *(a1 + 33) = *(a2 + 25);
  *(a1 + 24) = result;
  *(a1 + 56) = 0;
  return result;
}

{
  v3 = *a2;
  v2 = a2[1];
  *a1 = &unk_28689EAC8;
  *(a1 + 8) = v3;
  *(a1 + 16) = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 8), 1uLL, memory_order_relaxed);
  }

  result = *(a2 + 1);
  *(a1 + 33) = *(a2 + 25);
  *(a1 + 24) = result;
  *(a1 + 56) = 0;
  return result;
}

llvm::BinaryStreamWriter *llvm::BinaryStreamWriter::BinaryStreamWriter(llvm::BinaryStreamWriter *this, llvm::WritableBinaryStream *a2)
{
  *this = &unk_28689EAC8;
  llvm::WritableBinaryStreamRef::WritableBinaryStreamRef(this + 8, a2);
  *(this + 7) = 0;
  return this;
}

{
  *this = &unk_28689EAC8;
  llvm::WritableBinaryStreamRef::WritableBinaryStreamRef(this + 8, a2);
  *(this + 7) = 0;
  return this;
}

void llvm::BinaryStreamWriter::BinaryStreamWriter(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  *a1 = &unk_28689EAC8;
  llvm::WritableBinaryStreamRef::WritableBinaryStreamRef(a1 + 1, a2, a3, a4);
}

{
  *a1 = &unk_28689EAC8;
  llvm::WritableBinaryStreamRef::WritableBinaryStreamRef(a1 + 1, a2, a3, a4);
}

uint64_t llvm::BinaryStreamWriter::writeBytes@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = llvm::WritableBinaryStreamRef::writeBytes((a1 + 8), *(a1 + 56), a2, a3);
  if (!*a3)
  {
    *(a1 + 56) += a2;
  }

  return result;
}

uint64_t llvm::BinaryStreamWriter::writeULEB128@<X0>(llvm::BinaryStreamWriter *this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = 0;
  v11 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v9 = 0;
  do
  {
    v6 = a2 | 0x80;
    v7 = a2 > 0x7F;
    if (a2 <= 0x7F)
    {
      v6 = a2;
    }

    a2 >>= 7;
    *(&v9 + v5++) = v6;
  }

  while (v7);
  result = llvm::WritableBinaryStreamRef::writeBytes((this + 8), *(this + 7), v5, a3);
  if (!*a3)
  {
    *(this + 7) += v5;
  }

  return result;
}

uint64_t llvm::BinaryStreamWriter::writeSLEB128@<X0>(llvm::BinaryStreamWriter *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v12 = *MEMORY[0x277D85DE8];
  v11 = 0;
  v10 = 0;
  v5 = &v10;
  while (a2 > 0x3F)
  {
    v6 = (a2 & 0x40) != 0 && a2 >> 7 == -1;
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = 0x80;
    }

    *v5 = v7 & 0x80 | a2 & 0x7F;
    v5 = (v5 + 1);
    a2 >>= 7;
    if (v6)
    {
      goto LABEL_13;
    }
  }

  *v5 = a2;
  LODWORD(v5) = v5 + 1;
LABEL_13:
  v8 = v5 - &v10;
  result = llvm::WritableBinaryStreamRef::writeBytes((this + 8), *(this + 7), v8, a3);
  if (!*a3)
  {
    *(this + 7) += v8;
  }

  return result;
}

uint64_t llvm::BinaryStreamWriter::writeCString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = llvm::WritableBinaryStreamRef::writeBytes((a1 + 8), *(a1 + 56), a2, a3);
  if (!*a3)
  {
    v7 = *(a1 + 56) + a2;
    *(a1 + 56) = v7;
    result = llvm::WritableBinaryStreamRef::writeBytes((a1 + 8), v7, 1, a3);
    if (!*a3)
    {
      ++*(a1 + 56);
    }
  }

  return result;
}

uint64_t llvm::BinaryStreamWriter::writeFixedString@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  result = llvm::WritableBinaryStreamRef::writeBytes((a1 + 8), *(a1 + 56), a2, a3);
  if (!*a3)
  {
    *(a1 + 56) += a2;
  }

  return result;
}

void llvm::BinaryStreamWriter::writeStreamRef(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2[1];
  v10 = *a2;
  v11 = v3;
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  v12[0] = *(a2 + 1);
  *(v12 + 9) = *(a2 + 25);
  if (*(a2 + 40) == 1)
  {
    llvm::BinaryStreamWriter::writeStreamRef(a1, &v10, a2[4], a3);
    v4 = v11;
    if (!v11)
    {
      return;
    }
  }

  else
  {
    v5 = a2[2];
    if (v5)
    {
      v9 = (*(*v5 + 40))(a2[2]);
      llvm::BinaryStreamWriter::writeStreamRef(a1, &v10, v9 - a2[3], a3);
      v4 = v11;
      if (!v11)
      {
        return;
      }
    }

    else
    {
      llvm::BinaryStreamWriter::writeStreamRef(a1, &v10, 0, a3);
      v4 = v11;
      if (!v11)
      {
        return;
      }
    }
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }
}

void llvm::BinaryStreamWriter::writeStreamRef(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  llvm::BinaryStreamRefBase<llvm::BinaryStreamRef,llvm::BinaryStream>::slice(a2, 0, a3, &v13);
  v6 = llvm::BinaryStreamReader::BinaryStreamReader(v15, &v13);
  v7 = v14;
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7, v6);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v20 != 1)
  {
    goto LABEL_7;
  }

LABEL_5:
  if (v19 == v21)
  {
LABEL_15:
    *a4 = 0;
  }

  else
  {
    while (1)
    {
      v11 = 0;
      v12 = 0;
      llvm::BinaryStreamReader::readLongestContiguousChunk(v15, &v11, a4);
      if (*a4)
      {
        break;
      }

      v9 = v12;
      llvm::WritableBinaryStreamRef::writeBytes((a1 + 8), *(a1 + 56), v12, a4);
      if (*a4)
      {
        break;
      }

      *(a1 + 56) += v9;
      if (v20 == 1)
      {
        goto LABEL_5;
      }

LABEL_7:
      if (v17)
      {
        v8 = (*(*v17 + 40))(v17);
        if (v8 - v18 == v21)
        {
          goto LABEL_15;
        }
      }

      else if (!v21)
      {
        goto LABEL_15;
      }
    }
  }

  v15[0] = &unk_28689E830;
  v10 = v16;
  if (v16)
  {
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }
  }
}

void llvm::BinaryStreamWriter::split(llvm::BinaryStreamWriter *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 3);
  if (v4)
  {
    v6 = *(this + 7);
    if (*(this + 48) == 1)
    {
      v7 = *(this + 5);
      if (v7 >= v6)
      {
        v7 = *(this + 7);
      }

      v9 = *(this + 1);
      v8 = *(this + 2);
      if (!v8)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v20 = this;
      v21 = (*(*v4 + 40))(*(this + 3));
      this = v20;
      v7 = v21 - *(v20 + 4);
      if (v7 >= v6)
      {
        v7 = v6;
      }

      v9 = *(v20 + 1);
      v8 = *(v20 + 2);
      if (!v8)
      {
LABEL_12:
        v14 = *(this + 3);
        v10 = *(this + 48);
        if (v10)
        {
          v22 = v7;
        }

        else
        {
          v22 = 0;
        }

        if (!v7)
        {
          v22 = 0;
        }

        if (!v14)
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
          v15 = 0;
          v13 = 0;
          v17 = 0;
          v18 = 0;
          v19 = 0;
          if (!v8)
          {
            goto LABEL_52;
          }

          goto LABEL_51;
        }

        v38 = v9;
        v19 = *(this + 4) + v7;
        v17 = *(this + 5) - v22;
        v23 = v17;
        if ((*(this + 48) & 1) == 0)
        {
          v23 = (*(*v14 + 40))(v14) - v19;
        }

        if (v23 >= a2)
        {
          v24 = a2;
        }

        else
        {
          v24 = v23;
        }

        if (v8)
        {
          atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v10)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
          v26 = v25;
        }

        else
        {
          v26 = 0;
        }

        if (v10)
        {
          v27 = v17 - a2;
          v12 = v24 + v19;
          v11 = v17 - v26;
          if (!v8)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v27 = (*(*v14 + 40))(v14) - a2 - v19;
          v12 = v24 + v19;
          v11 = v17 - v26;
          if (!v8)
          {
LABEL_38:
            if (v10)
            {
              if (v17 < v27)
              {
                v27 = v17;
              }

              v18 = v10;
              v15 = v9;
              if (!v27)
              {
                v13 = v8;
                v18 = v10;
                if (!v8)
                {
                  goto LABEL_52;
                }

                goto LABEL_51;
              }

LABEL_48:
              v17 -= v27;
              v13 = v8;
              if (!v8)
              {
                goto LABEL_52;
              }

              goto LABEL_51;
            }

            v28 = v12;
            v29 = v11;
            v30 = (*(*v14 + 40))(v14);
            if (v30 - v19 < v27)
            {
              v27 = v30 - v19;
            }

            if (v27)
            {
              v17 = (*(*v14 + 40))(v14) - v19;
              v18 = 1;
              v15 = v38;
              v11 = v29;
              v12 = v28;
              goto LABEL_48;
            }

            v13 = v8;
            v18 = v10;
            v15 = v38;
            v11 = v29;
            v12 = v28;
            if (!v8)
            {
              goto LABEL_52;
            }

LABEL_51:
            if (!atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              v39 = v15;
              v32 = v11;
              v33 = v12;
              (v8->__on_zero_shared)(v8);
              std::__shared_weak_count::__release_weak(v8);
              v12 = v33;
              v11 = v32;
              v15 = v39;
              if (v13)
              {
                goto LABEL_53;
              }

LABEL_55:
              v16 = 0;
              goto LABEL_56;
            }

LABEL_52:
            if (v13)
            {
LABEL_53:
              v31 = 0;
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
              v16 = v13;
              goto LABEL_57;
            }

            goto LABEL_55;
          }
        }

        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
        goto LABEL_38;
      }
    }

    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    goto LABEL_12;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = 0;
LABEL_56:
  v31 = 1;
LABEL_57:
  v43 = v15;
  v40 = v31;
  if (v31)
  {
    *v44 = v14;
    *&v44[8] = v19;
    *&v44[16] = v17;
    v44[24] = v18;
  }

  else
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    *v44 = v14;
    *&v44[8] = v19;
    *&v44[16] = v17;
    v44[24] = v18;
    if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v34 = v15;
      v35 = v11;
      v36 = v12;
      (v16->__on_zero_shared)(v16);
      std::__shared_weak_count::__release_weak(v16);
      v12 = v36;
      v11 = v35;
      v15 = v34;
    }
  }

  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v41 = v15;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *v42 = v14;
    *&v42[8] = v12;
    *&v42[16] = v11;
    v42[24] = v10;
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    *v42 = v14;
    *&v42[8] = v12;
    *&v42[16] = v11;
    v42[24] = v10;
  }

  *a3 = &unk_28689EAC8;
  *(a3 + 8) = v43;
  *(a3 + 16) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  *(a3 + 24) = *v44;
  *(a3 + 33) = *&v44[9];
  *(a3 + 56) = 0;
  *(a3 + 64) = &unk_28689EAC8;
  *(a3 + 72) = v41;
  *(a3 + 80) = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    *(a3 + 88) = *v42;
    *(a3 + 97) = *&v42[9];
    *(a3 + 120) = 0;
    v37 = v40;
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    *(a3 + 88) = *v42;
    *(a3 + 97) = *&v42[9];
    *(a3 + 120) = 0;
    v37 = v40;
  }

  if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
    if (!v13)
    {
      goto LABEL_77;
    }
  }

  else if (!v13)
  {
    goto LABEL_77;
  }

  if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v13->__on_zero_shared)(v13);
    std::__shared_weak_count::__release_weak(v13);
    if (v37)
    {
      return;
    }

    goto LABEL_78;
  }

LABEL_77:
  if (v37)
  {
    return;
  }

LABEL_78:
  if (!atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }
}

void llvm::BinaryStreamWriter::~BinaryStreamWriter(llvm::BinaryStreamWriter *this)
{
  *this = &unk_28689EAC8;
  v1 = *(this + 2);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
    }
  }
}

{
  *this = &unk_28689EAC8;
  v1 = *(this + 2);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x259C63180);
}

uint64_t llvm::BinaryStreamWriter::padToAlignment@<X0>(uint64_t this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v5 = *(this + 56);
  v6 = (v5 - (v5 != 0)) / a2;
  if (v5)
  {
    ++v6;
  }

  v7 = v6 * a2;
  if (v5 >= v7)
  {
LABEL_10:
    *a3 = 0;
  }

  else
  {
    v8 = this;
    while (1)
    {
      v9 = v7 - v5 >= 0x40 ? 64 : v7 - v5;
      this = llvm::WritableBinaryStreamRef::writeBytes((v8 + 8), v5, v9, a3);
      if (*a3)
      {
        break;
      }

      v5 = *(v8 + 56) + v9;
      *(v8 + 56) = v5;
      if (v5 >= v7)
      {
        goto LABEL_10;
      }
    }
  }

  return this;
}

void llvm::Bisector<std::string>::resetAndStartLearning(uint64_t a1)
{
  v2 = (a1 + 8);
  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *(a1 + 8));
  *a1 = v2;
  *(a1 + 16) = 0;
  *v2 = 0;
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = 32 * v3;
    v5 = 32 * v3 + *(a1 + 24) - 9;
    v6 = -v4;
    v7 = v5;
    do
    {
      v8 = *v7;
      v7 -= 32;
      if (v8 < 0)
      {
        operator delete(*(v5 - 23));
      }

      v5 = v7;
      v6 += 32;
    }

    while (v6);
  }

  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = 1;
}

uint64_t llvm::Bisector<std::string>::startBisect(uint64_t result)
{
  *(result + 112) = 0;
  v1 = *(result + 32) >> 1;
  v2 = *(result + 48);
  if (v2 >= *(result + 52))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(*(result + 40) + 4 * v2) = v1;
  ++*(result + 48);
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *(result + 24);
    if (v3 == 1)
    {
      v5 = 0;
LABEL_8:
      v8 = (v4 + 32 * v5 + 24);
      do
      {
        *v8 = v5 < v1;
        v8 += 32;
        ++v5;
      }

      while (v3 != v5);
      goto LABEL_10;
    }

    v6 = 0;
    v5 = v3 & 0xFFFFFFFE;
    v7 = (v4 + 56);
    do
    {
      *(v7 - 32) = v6 < v1;
      *v7 = v6 + 1 < v1;
      v7 += 64;
      v6 += 2;
    }

    while (v6 != v5);
    if (v5 != v3)
    {
      goto LABEL_8;
    }
  }

LABEL_10:
  *(result + 104) = v3;
  *(result + 108) = 0;
  return result;
}

uint64_t llvm::Bisector<std::string>::updateMapForNewCounter(uint64_t result, int a2)
{
  v2 = *(result + 32);
  if (v2)
  {
    v3 = *(result + 24);
    if (v2 == 1)
    {
      v4 = 0;
LABEL_7:
      v7 = (v3 + 32 * v4 + 24);
      do
      {
        *v7 = v4 < a2;
        v7 += 32;
        ++v4;
      }

      while (v2 != v4);
      return result;
    }

    v5 = 0;
    v4 = v2 & 0xFFFFFFFE;
    v6 = (v3 + 56);
    do
    {
      *(v6 - 32) = v5 < a2;
      *v6 = v5 + 1 < a2;
      v6 += 64;
      v5 += 2;
    }

    while (v5 != v4);
    if (v4 != v2)
    {
      goto LABEL_7;
    }
  }

  return result;
}

void llvm::Bisector<std::string>::learnKey(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 23) < 0)
  {
    v2 = a1;
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
    a1 = v2;
  }

  else
  {
    __p = *a2;
  }

  v4[0] = 1;
  llvm::MapVector<std::string,BOOL,std::map<std::string,unsigned int>,llvm::SmallVector<std::pair<std::string,BOOL>,0u>>::try_emplace<BOOL>(a1, &__p, v4);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t llvm::Bisector<std::string>::shouldPerformActionOnKey(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 114) == 1)
  {
    return *(a1 + 113);
  }

  else
  {
    return llvm::MapVector<std::string,BOOL,std::map<std::string,unsigned int>,llvm::SmallVector<std::pair<std::string,BOOL>,0u>>::lookup(a1, a2);
  }
}

uint64_t llvm::MapVector<std::string,BOOL,std::map<std::string,unsigned int>,llvm::SmallVector<std::pair<std::string,BOOL>,0u>>::lookup(uint64_t a1, uint64_t a2)
{
  v2 = a1 + 8;
  v3 = *(a1 + 8);
  if (!v3)
  {
    goto LABEL_40;
  }

  v5 = *(a2 + 23);
  v6 = v5 >= 0 ? *(a2 + 23) : *(a2 + 8);
  v7 = v5 >= 0 ? a2 : *a2;
  v8 = a1 + 8;
  do
  {
    v9 = *(v3 + 55);
    if (v9 >= 0)
    {
      v10 = *(v3 + 55);
    }

    else
    {
      v10 = *(v3 + 40);
    }

    if (v9 >= 0)
    {
      v11 = (v3 + 32);
    }

    else
    {
      v11 = *(v3 + 32);
    }

    if (v6 >= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }

    v13 = memcmp(v11, v7, v12);
    v14 = v10 < v6;
    if (v13)
    {
      v14 = v13 < 0;
    }

    v15 = !v14;
    if (v14)
    {
      v16 = 8;
    }

    else
    {
      v16 = 0;
    }

    if (v15)
    {
      v8 = v3;
    }

    v3 = *(v3 + v16);
  }

  while (v3);
  if (v8 == v2)
  {
    goto LABEL_40;
  }

  v17 = *(v8 + 55);
  v18 = v17 >= 0 ? *(v8 + 55) : *(v8 + 40);
  v19 = v17 >= 0 ? (v8 + 32) : *(v8 + 32);
  v20 = v18 >= v6 ? v6 : v18;
  v21 = memcmp(v7, v19, v20);
  v22 = v6 < v18;
  if (v21)
  {
    v22 = v21 < 0;
  }

  if (v22)
  {
LABEL_40:
    v23 = 0;
  }

  else
  {
    v23 = *(*(a1 + 24) + 32 * *(v8 + 56) + 24);
  }

  return v23 & 1;
}

void llvm::Bisector<std::string>::finishBisectionRound(uint64_t a1@<X0>, int a2@<W1>, std::string *a3@<X8>)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(v4 + 4 * v5 - 4);
  if (a2)
  {
    *(a1 + 108) = v6;
    v7 = *(a1 + 104);
  }

  else
  {
    *(a1 + 104) = v6;
    v7 = v6;
    v6 = *(a1 + 108);
  }

  v8 = (v7 + v6) / 2;
  if (v5 >= *(a1 + 52))
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod();
  }

  *(v4 + 4 * v5) = v8;
  ++*(a1 + 48);
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = *(a1 + 24);
    if (v9 == 1)
    {
      v11 = 0;
LABEL_11:
      v14 = (v10 + 32 * v11 + 24);
      do
      {
        *v14 = v11 < v8;
        v14 += 32;
        ++v11;
      }

      while (v9 != v11);
      goto LABEL_13;
    }

    v12 = 0;
    v11 = v9 & 0xFFFFFFFE;
    v13 = (v10 + 56);
    do
    {
      *(v13 - 32) = v12 < v8;
      *v13 = v12 + 1 < v8;
      v13 += 64;
      v12 += 2;
    }

    while (v12 != v11);
    if (v11 != v9)
    {
      goto LABEL_11;
    }
  }

LABEL_13:
  v15 = *(a1 + 108) + 1;
  if (v15 != *(a1 + 104))
  {
    if ((*(a1 + 151) & 0x8000000000000000) != 0)
    {
      if (*(a1 + 136))
      {
LABEL_19:
        llvm::Bisector<std::string>::serializeToFile();
      }
    }

    else if (*(a1 + 151))
    {
      goto LABEL_19;
    }

    a3->__r_.__value_.__s.__data_[0] = 0;
    a3[1].__r_.__value_.__s.__data_[0] = 0;
    return;
  }

  v16 = *(a1 + 24) + 32 * v15;
  if (*(v16 - 9) < 0)
  {
    std::string::__init_copy_ctor_external(a3, *(v16 - 32), *(v16 - 24));
  }

  else
  {
    v17 = *(v16 - 32);
    a3->__r_.__value_.__r.__words[2] = *(v16 - 16);
    *&a3->__r_.__value_.__l.__data_ = v17;
  }

  a3[1].__r_.__value_.__s.__data_[0] = 1;
}

void llvm::Bisector<std::string>::serializeToFile(uint64_t a1, const char *a2, const char *a3)
{
  v175 = *MEMORY[0x277D85DE8];
  v136 = 0;
  v137 = std::system_category();
  llvm::raw_fd_ostream::raw_fd_ostream(v135, a2, a3, &v136);
  if (!v136)
  {
    v133[0] = 0;
    v133[1] = 0;
    v134 = 0;
    v131[0] = 0;
    v131[1] = 0;
    v132 = 0;
    __p[0] = 0;
    __p[1] = 0;
    v130 = 0;
    v7 = *(a1 + 32);
    if (v7)
    {
      v8 = *(a1 + 24);
      v9 = 32 * v7;
      do
      {
        if (*(v8 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v128, *v8, *(v8 + 1));
        }

        else
        {
          v17 = *v8;
          v128.__r_.__value_.__r.__words[2] = *(v8 + 2);
          *&v128.__r_.__value_.__l.__data_ = v17;
        }

        LOWORD(v169) = 6;
        if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = &v128;
        }

        else
        {
          v18 = v128.__r_.__value_.__r.__words[0];
        }

        if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = SHIBYTE(v128.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v128.__r_.__value_.__l.__size_;
        }

        if (!llvm::json::isUTF8(v18, size, 0))
        {
          llvm::Bisector<std::string>::serializeToFile(&v128.__r_.__value_.__r.__words[2] + 7, &v128, &v128.__r_.__value_.__l.__size_, v21);
        }

        v170[0] = v128;
        memset(&v128, 0, sizeof(v128));
        v22 = v131[1];
        if (v131[1] >= v132)
        {
          v25 = std::vector<llvm::json::Value>::__emplace_back_slow_path<llvm::json::Value&>(v131, &v169, v20, v21);
        }

        else
        {
          llvm::json::Value::copyFrom(v131[1], &v169, v20, v21);
          v25 = (v22 + 32);
        }

        v131[1] = v25;
        v26 = *(v8 + 24);
        LOWORD(v166) = 1;
        LOBYTE(v167) = v26;
        v27 = __p[1];
        if (__p[1] >= v130)
        {
          v10 = std::vector<llvm::json::Value>::__emplace_back_slow_path<llvm::json::Value&>(__p, &v166, v23, v24);
        }

        else
        {
          llvm::json::Value::copyFrom(__p[1], &v166, v23, v24);
          v10 = (v27 + 32);
        }

        __p[1] = v10;
        llvm::json::Value::destroy(&v166, v11, v12, v13);
        llvm::json::Value::destroy(&v169, v14, v15, v16);
        v8 += 2;
        v9 -= 32;
      }

      while (v9);
    }

    v28 = *(a1 + 48);
    v29 = 0;
    if (v28)
    {
      v30 = *(a1 + 40);
      v31 = &v30[v28];
      do
      {
        if (((v29 >> 5) + 1) >> 59)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

        if (v29 >> 5 != -1)
        {
          if (!(((v29 >> 5) + 1) >> 59))
          {
            operator new();
          }

          std::string::__throw_length_error[abi:nn200100]();
        }

        v32 = *v30;
        v33 = 32 * (v29 >> 5);
        *v33 = 3;
        *(v33 + 8) = v32;
        if (v29)
        {
          v34 = 0;
          v35 = 0;
          do
          {
            llvm::json::Value::moveFrom(v35, v34);
            v34 += 16;
            v35 += 32;
          }

          while (v34 != v29);
          for (i = 0; i != v29; i += 4)
          {
            llvm::json::Value::destroy(i, v36, v37, v38);
          }
        }

        v29 = (v33 + 32);
        ++v30;
      }

      while (v30 != v31);
    }

    LOWORD(v166) = 8;
    v167 = *v131;
    v168 = v132;
    v131[0] = 0;
    v131[1] = 0;
    v132 = 0;
    LOWORD(v163) = 8;
    v164 = *__p;
    v165 = v130;
    __p[0] = 0;
    __p[1] = 0;
    v130 = 0;
    LOWORD(v162[0]) = 8;
    v162[1] = 0;
    v162[2] = v29;
    v162[3] = 0;
    LOWORD(v161[0]) = 3;
    v40 = *(a1 + 108);
    v161[1] = *(a1 + 104);
    LOWORD(v160[0]) = 3;
    v160[1] = v40;
    v41 = *(a1 + 112);
    LOWORD(v158) = 1;
    v159 = v41;
    llvm::json::ObjectKey::ObjectKey(&v155, "key_state_strings");
    llvm::json::Value::copyFrom(v157, &v166, v42, v43);
    v169 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(v133, &v155, &v169) & 1) == 0)
    {
      v47 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucketImpl<llvm::json::ObjectKey>(v133, &v155, v169);
      v48 = v155;
      v155 = 0;
      v49 = *v47;
      *v47 = v48;
      if (v49)
      {
        if (*(v49 + 23) < 0)
        {
          operator delete(*v49);
        }

        MEMORY[0x259C63180](v49, 0x1012C40EC159624);
      }

      *(v47 + 8) = v156;
      llvm::json::Value::moveFrom(v47 + 24, v157);
    }

    llvm::json::Value::destroy(v157, v44, v45, v46);
    v50 = v155;
    v155 = 0;
    if (v50)
    {
      if (*(v50 + 23) < 0)
      {
        operator delete(*v50);
      }

      MEMORY[0x259C63180](v50, 0x1012C40EC159624);
    }

    llvm::json::ObjectKey::ObjectKey(&v152, "key_state_BOOLs");
    llvm::json::Value::copyFrom(v154, &v163, v51, v52);
    v169 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(v133, &v152, &v169) & 1) == 0)
    {
      v56 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucketImpl<llvm::json::ObjectKey>(v133, &v152, v169);
      v57 = v152;
      v152 = 0;
      v58 = *v56;
      *v56 = v57;
      if (v58)
      {
        if (*(v58 + 23) < 0)
        {
          operator delete(*v58);
        }

        MEMORY[0x259C63180](v58, 0x1012C40EC159624);
      }

      *(v56 + 8) = v153;
      llvm::json::Value::moveFrom(v56 + 24, v154);
    }

    llvm::json::Value::destroy(v154, v53, v54, v55);
    v59 = v152;
    v152 = 0;
    if (v59)
    {
      if (*(v59 + 23) < 0)
      {
        operator delete(*v59);
      }

      MEMORY[0x259C63180](v59, 0x1012C40EC159624);
    }

    llvm::json::ObjectKey::ObjectKey(&v149, "bisect_history");
    llvm::json::Value::copyFrom(v151, v162, v60, v61);
    v169 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(v133, &v149, &v169) & 1) == 0)
    {
      v65 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucketImpl<llvm::json::ObjectKey>(v133, &v149, v169);
      v66 = v149;
      v149 = 0;
      v67 = *v65;
      *v65 = v66;
      if (v67)
      {
        if (*(v67 + 23) < 0)
        {
          operator delete(*v67);
        }

        MEMORY[0x259C63180](v67, 0x1012C40EC159624);
      }

      *(v65 + 8) = v150;
      llvm::json::Value::moveFrom(v65 + 24, v151);
    }

    llvm::json::Value::destroy(v151, v62, v63, v64);
    v68 = v149;
    v149 = 0;
    if (v68)
    {
      if (*(v68 + 23) < 0)
      {
        operator delete(*v68);
      }

      MEMORY[0x259C63180](v68, 0x1012C40EC159624);
    }

    llvm::json::ObjectKey::ObjectKey(&v146, "last_fail_counter");
    llvm::json::Value::copyFrom(v148, v161, v69, v70);
    v169 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(v133, &v146, &v169) & 1) == 0)
    {
      v74 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucketImpl<llvm::json::ObjectKey>(v133, &v146, v169);
      v75 = v146;
      v146 = 0;
      v76 = *v74;
      *v74 = v75;
      if (v76)
      {
        if (*(v76 + 23) < 0)
        {
          operator delete(*v76);
        }

        MEMORY[0x259C63180](v76, 0x1012C40EC159624);
      }

      *(v74 + 8) = v147;
      llvm::json::Value::moveFrom(v74 + 24, v148);
    }

    llvm::json::Value::destroy(v148, v71, v72, v73);
    v77 = v146;
    v146 = 0;
    if (v77)
    {
      if (*(v77 + 23) < 0)
      {
        operator delete(*v77);
      }

      MEMORY[0x259C63180](v77, 0x1012C40EC159624);
    }

    llvm::json::ObjectKey::ObjectKey(&v143, "last_pass_counter");
    llvm::json::Value::copyFrom(v145, v160, v78, v79);
    v169 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(v133, &v143, &v169) & 1) == 0)
    {
      v83 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucketImpl<llvm::json::ObjectKey>(v133, &v143, v169);
      v84 = v143;
      v143 = 0;
      v85 = *v83;
      *v83 = v84;
      if (v85)
      {
        if (*(v85 + 23) < 0)
        {
          operator delete(*v85);
        }

        MEMORY[0x259C63180](v85, 0x1012C40EC159624);
      }

      *(v83 + 8) = v144;
      llvm::json::Value::moveFrom(v83 + 24, v145);
    }

    llvm::json::Value::destroy(v145, v80, v81, v82);
    v86 = v143;
    v143 = 0;
    if (v86)
    {
      if (*(v86 + 23) < 0)
      {
        operator delete(*v86);
      }

      MEMORY[0x259C63180](v86, 0x1012C40EC159624);
    }

    llvm::json::ObjectKey::ObjectKey(&v140, "learning_mode");
    llvm::json::Value::copyFrom(v142, &v158, v87, v88);
    v169 = 0;
    if ((llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(v133, &v140, &v169) & 1) == 0)
    {
      v92 = llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucketImpl<llvm::json::ObjectKey>(v133, &v140, v169);
      v93 = v140;
      v140 = 0;
      v94 = *v92;
      *v92 = v93;
      if (v94)
      {
        if (*(v94 + 23) < 0)
        {
          operator delete(*v94);
        }

        MEMORY[0x259C63180](v94, 0x1012C40EC159624);
      }

      *(v92 + 8) = v141;
      llvm::json::Value::moveFrom(v92 + 24, v142);
    }

    llvm::json::Value::destroy(v142, v89, v90, v91);
    v96 = v140;
    v140 = 0;
    if (v96)
    {
      if (*(v96 + 23) < 0)
      {
        operator delete(*v96);
      }

      v95 = MEMORY[0x259C63180](v96, 0x1012C40EC159624);
    }

    v95.n128_u64[0] = 0;
    LOWORD(v138[0]) = 7;
    v138[1] = v133[0];
    v97 = v133[1];
    *v133 = v95;
    v138[2] = v97;
    v139 = v134;
    v134 = 0;
    v172 = 0;
    v173 = v135;
    v174 = 0;
    v171 = 0;
    v169 = &v170[0].__r_.__value_.__r.__words[1];
    *&v170[0].__r_.__value_.__l.__data_ = 0x1000000001uLL;
    llvm::json::OStream::value(&v169, v138);
    if (v169 != &v170[0].__r_.__value_.__r.__words[1])
    {
      free(v169);
    }

    llvm::json::Value::destroy(v138, v98, v99, v100);
    llvm::raw_fd_ostream::close(v135);
    llvm::json::Value::destroy(&v158, v101, v102, v103);
    llvm::json::Value::destroy(v160, v104, v105, v106);
    llvm::json::Value::destroy(v161, v107, v108, v109);
    llvm::json::Value::destroy(v162, v110, v111, v112);
    llvm::json::Value::destroy(&v163, v113, v114, v115);
    llvm::json::Value::destroy(&v166, v116, v117, v118);
    v122 = __p[0];
    if (__p[0])
    {
      v123 = __p[1];
      v124 = __p[0];
      if (__p[1] != __p[0])
      {
        do
        {
          v123 -= 4;
          llvm::json::Value::destroy(v123, v119, v120, v121);
        }

        while (v123 != v122);
        v124 = __p[0];
      }

      __p[1] = v122;
      operator delete(v124);
    }

    v125 = v131[0];
    if (v131[0])
    {
      v126 = v131[1];
      v127 = v131[0];
      if (v131[1] != v131[0])
      {
        do
        {
          v126 -= 4;
          llvm::json::Value::destroy(v126, v119, v120, v121);
        }

        while (v126 != v125);
        v127 = v131[0];
      }

      v131[1] = v125;
      operator delete(v127);
    }

    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(v133);
    llvm::deallocate_buffer(v133[0], (56 * v134));
  }

  llvm::report_fatal_error("Could not open file for saving", 1, v6);
}

uint64_t llvm::Bisector<std::string>::disableForceReply(uint64_t result)
{
  if (*(result + 114) == 1)
  {
    *(result + 114) = 0;
  }

  return result;
}

uint64_t llvm::Bisector<std::string>::isForceReplyEnabled(uint64_t a1, _BYTE *a2)
{
  result = *(a1 + 114);
  if (result == 1)
  {
    *a2 = *(a1 + 113);
  }

  return result;
}

uint64_t llvm::Bisector<std::string>::enableForceCounter(uint64_t result, int a2)
{
  v2 = *(result + 40) + 4 * *(result + 48);
  *(result + 124) = *(v2 - 4);
  *(result + 116) = a2;
  *(result + 120) = 1;
  *(v2 - 4) = a2;
  v3 = *(result + 32);
  if (v3)
  {
    v4 = *(result + 24);
    if (v3 == 1)
    {
      v5 = 0;
LABEL_7:
      v8 = (v4 + 32 * v5 + 24);
      do
      {
        *v8 = v5 < a2;
        v8 += 32;
        ++v5;
      }

      while (v3 != v5);
      return result;
    }

    v6 = 0;
    v5 = v3 & 0xFFFFFFFE;
    v7 = (v4 + 56);
    do
    {
      *(v7 - 32) = v6 < a2;
      *v7 = v6 + 1 < a2;
      v7 += 64;
      v6 += 2;
    }

    while (v6 != v5);
    if (v5 != v3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t llvm::Bisector<std::string>::disableForceCounter(uint64_t result)
{
  if (*(result + 120) == 1)
  {
    v1 = *(result + 124);
    *(*(result + 40) + 4 * *(result + 48) - 4) = v1;
    v2 = *(result + 32);
    if (v2)
    {
      v3 = *(result + 24);
      if (v2 == 1)
      {
        v4 = 0;
      }

      else
      {
        v5 = 0;
        v4 = v2 & 0xFFFFFFFE;
        v6 = (v3 + 56);
        do
        {
          *(v6 - 32) = v5 < v1;
          *v6 = v5 + 1 < v1;
          v6 += 64;
          v5 += 2;
        }

        while (v5 != v4);
        if (v4 == v2)
        {
          goto LABEL_10;
        }
      }

      v7 = (v3 + 32 * v4 + 24);
      do
      {
        *v7 = v4 < v1;
        v7 += 32;
        ++v4;
      }

      while (v2 != v4);
    }

LABEL_10:
    *(result + 120) = 0;
  }

  return result;
}

uint64_t llvm::Bisector<std::string>::getForceCounterValue(uint64_t a1)
{
  if (*(a1 + 120))
  {
    return *(a1 + 116);
  }

  v2 = std::__throw_bad_optional_access[abi:nn200100]();
  return llvm::json::Value::Value(v2, v3);
}

uint64_t llvm::json::Value::Value(uint64_t a1, uint64_t *a2)
{
  *a1 = 6;
  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  if (v4 >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  if (!llvm::json::isUTF8(v5, v6, 0))
  {
    llvm::Bisector<std::string>::serializeToFile(a2 + 23, a2, a2 + 1, v7);
  }

  v8 = *a2;
  *(a1 + 24) = a2[2];
  *(a1 + 8) = v8;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  return a1;
}

llvm::json::ObjectKey *llvm::json::ObjectKey::ObjectKey(llvm::json::ObjectKey *this, char *__s)
{
  if (__s)
  {
    v4 = strlen(__s);
  }

  else
  {
    v4 = 0;
  }

  *this = 0;
  *(this + 1) = __s;
  *(this + 2) = v4;
  if (!llvm::json::isUTF8(__s, v4, 0))
  {
    llvm::json::ObjectKey::ObjectKey(&v6, __s, v4);
  }

  return this;
}

void llvm::Bisector<std::string>::loadFromFile(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v95 = *MEMORY[0x277D85DE8];
  v89 = 261;
  *&__len[1] = a2;
  v88[0] = a3;
  llvm::MemoryBuffer::getFile(&__len[1], 1, 1, 0, 0, &v90);
  if (v91)
  {
    llvm::report_fatal_error("Cannot open json file", 1, v6);
  }

  std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *(a1 + 8));
  *a1 = a1 + 8;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  v9 = *(a1 + 32);
  if (v9)
  {
    v10 = 32 * v9;
    v11 = 32 * v9 + *(a1 + 24) - 9;
    v12 = -v10;
    v13 = v11;
    do
    {
      v14 = *v13;
      v13 -= 32;
      if (v14 < 0)
      {
        operator delete(*(v11 - 23));
      }

      v11 = v13;
      v12 += 32;
    }

    while (v12);
  }

  *(a1 + 32) = 0;
  *(a1 + 48) = 0;
  *(a1 + 112) = 1;
  llvm::json::parse(*(v90 + 8), *(v90 + 16) - *(v90 + 8), v7, &__len[1], v8);
  if (v89)
  {
    llvm::report_fatal_error("Could not parse json", 1, v15);
  }

  if (*&__len[1] != 7)
  {
    llvm::report_fatal_error("JSON: Top level object should be an object/dict", 1, v15);
  }

  Array = llvm::json::Object::getArray(v88, "key_state_strings", 0x11uLL);
  if (!Array)
  {
    llvm::report_fatal_error("JSON: key_state_strings key not found", 1, v17);
  }

  v18 = Array;
  v19 = llvm::json::Object::getArray(v88, "key_state_BOOLs", 0xFuLL);
  if (!v19)
  {
    llvm::report_fatal_error("JSON: key_state_BOOLs key not found", 1, v20);
  }

  v21 = v19;
  v22 = llvm::json::Object::getArray(v88, "bisect_history", 0xEuLL);
  if (!v22)
  {
    llvm::report_fatal_error("JSON: bisect_history key not found", 1, v23);
  }

  v24 = v22;
  Integer = llvm::json::Object::getInteger(v88, "last_fail_counter", 0x11uLL);
  if ((v27 & 1) == 0)
  {
    llvm::report_fatal_error("JSON: last_fail_counter key not found", 1, v26);
  }

  v28 = Integer;
  v29 = llvm::json::Object::getInteger(v88, "last_pass_counter", 0x11uLL);
  if ((v31 & 1) == 0)
  {
    llvm::report_fatal_error("JSON: last_pass_counter key not found", 1, v30);
  }

  v32 = v29;
  v80 = v24;
  Boolean = llvm::json::Object::getBoolean(v88, "learning_mode", 0xDuLL);
  if ((Boolean & 0x100) == 0)
  {
    llvm::report_fatal_error("JSON: learning_mode key not found", 1, v35);
  }

  v37 = *v18;
  v38 = v18[1];
  if (v38 - *v18 != v21[1] - *v21)
  {
    llvm::report_fatal_error("key_state_strings and key_state_BOOLs have different sizes", 1, v35);
  }

  v79 = Boolean;
  if (v38 != v37)
  {
    v39 = 0;
    v40 = 1;
    while (1)
    {
      v44 = (v37 + 32 * v39);
      v45 = *v44;
      if (v45 == 6)
      {
        break;
      }

      if (v45 == 5)
      {
        v50 = *(v44 + 1);
        v52 = *(v44 + 2);
LABEL_28:
        llvm::json::Value::Value(&__y, v50, v52);
        goto LABEL_29;
      }

      LOWORD(__y) = 0;
LABEL_29:
      llvm::json::Value::moveFrom(&v85, &__y);
      llvm::json::Value::destroy(&__y, v53, v54, v55);
      v56 = *v21 + 32 * v39;
      if (*v56 == 1)
      {
        BYTE8(__y) = *(v56 + 8);
        v57 = 1;
      }

      else
      {
        v57 = 0;
      }

      LOWORD(__y) = v57;
      llvm::json::Value::moveFrom(&v83, &__y);
      llvm::json::Value::destroy(&__y, v58, v59, v60);
      if (v85 == 6)
      {
        v3 = __len[0];
        v4 = v86;
        if ((__len[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_37;
        }

LABEL_35:
        v4 = v86[0];
        v3 = v86[1];
        if (v86[0])
        {
          goto LABEL_36;
        }

        goto LABEL_46;
      }

      if (v85 == 5)
      {
        goto LABEL_35;
      }

      v4 &= 0xFFFFFFFFFFFFFF00;
      if (v4)
      {
LABEL_36:
        if (v3 >= 0x7FFFFFFFFFFFFFF8)
        {
          std::string::__throw_length_error[abi:nn200100]();
        }

LABEL_37:
        if (v3 >= 0x17)
        {
          operator new();
        }

        HIBYTE(v82) = v3;
        if (v3)
        {
          memmove(&__dst, v4, v3);
        }

        *(&__dst + v3) = 0;
        goto LABEL_47;
      }

LABEL_46:
      __dst = 0uLL;
      v82 = 0;
LABEL_47:
      if (v83 == 1)
      {
        v61 = v84;
      }

      else
      {
        v61 = 0;
      }

      __y = __dst;
      v93 = v82;
      v94[0] = v61;
      llvm::MapVector<std::string,BOOL,std::map<std::string,unsigned int>,llvm::SmallVector<std::pair<std::string,BOOL>,0u>>::try_emplace<BOOL>(a1, &__y, v94);
      if (SHIBYTE(v93) < 0)
      {
        operator delete(__y);
      }

      llvm::json::Value::destroy(&v83, v62, v63, v64);
      llvm::json::Value::destroy(&v85, v41, v42, v43);
      v39 = v40;
      v37 = *v18;
      ++v40;
      if (v39 >= (v18[1] - *v18) >> 5)
      {
        goto LABEL_52;
      }
    }

    v48 = *(v44 + 1);
    v46 = v44 + 4;
    v47 = v48;
    v49 = *(v46 + 23);
    if (v49 >= 0)
    {
      v50 = v46;
    }

    else
    {
      v50 = v47;
    }

    v51 = *(v46 + 1);
    if (v49 >= 0)
    {
      v52 = v49;
    }

    else
    {
      v52 = v51;
    }

    goto LABEL_28;
  }

LABEL_52:
  v65 = v80;
  v67 = *v80;
  v66 = v80[1];
  if (v66 != *v80)
  {
    v68 = 0;
    v69 = 1;
    do
    {
      while (1)
      {
        v70 = (v67 + 32 * v68);
        v71 = *v70;
        if (v71 == 3)
        {
          v72 = *(v70 + 1);
          v73 = v72 & 0xFFFFFFFFFFFFFF00;
          v74 = 1;
        }

        else if (v71 == 4)
        {
          v72 = *(v70 + 1);
          v73 = v72 & 0x7FFFFFFFFFFFFF00;
          v74 = v72 >= 0;
          if (v72 < 0)
          {
            LOBYTE(v72) = 0;
            v73 = 0;
          }
        }

        else
        {
          if (v71 == 2 && (*&__y = *(v70 + 1), modf(*&__y, &__y) == 0.0) && fabs(*&__y) <= 9.22337204e18)
          {
            v72 = *&__y;
            v73 = *&__y & 0xFFFFFFFFFFFFFF00;
            v74 = 1;
          }

          else
          {
            v74 = 0;
            LOBYTE(v72) = 0;
            v73 = 0;
          }

          v65 = v80;
        }

        v75 = v73 | v72;
        *&__y = v75;
        BYTE8(__y) = v74;
        v76 = *(a1 + 48);
        if (v76 >= *(a1 + 52))
        {
          break;
        }

        *(*(a1 + 40) + 4 * v76) = v75;
        ++*(a1 + 48);
        v68 = v69++;
        if (v68 >= (v66 - v67) >> 5)
        {
          goto LABEL_71;
        }
      }

      llvm::SmallVectorTemplateBase<int,true>::growAndEmplaceBack<unsigned long>(a1 + 40, &__y);
      v67 = *v65;
      v66 = v65[1];
      v68 = v69++;
    }

    while (v68 < (v66 - *v65) >> 5);
  }

LABEL_71:
  *(a1 + 104) = v28;
  *(a1 + 108) = v32;
  *(a1 + 112) = v79;
  if ((v89 & 1) == 0)
  {
    llvm::json::Value::destroy(&__len[1], v34, v35, v36);
    if (v91)
    {
      return;
    }

    goto LABEL_77;
  }

  v77 = *&__len[1];
  *&__len[1] = 0;
  if (v77)
  {
    (*(*v77 + 8))(v77);
  }

  if ((v91 & 1) == 0)
  {
LABEL_77:
    v78 = v90;
    v90 = 0;
    if (v78)
    {
      (*(*v78 + 8))(v78);
    }
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::initEmpty(uint64_t *a1)
{
  a1[1] = 0;
  v6 = 0;
  v7 = xmmword_25736B6D0;
  if (!llvm::json::isUTF8(0xFFFFFFFFFFFFFFFFLL, 0, 0))
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::initEmpty();
  }

  v2 = *(a1 + 4);
  if (v2)
  {
    v3 = *a1;
    v4 = 56 * v2;
    do
    {
      *v3 = 0;
      *(v3 + 8) = 0;
      *(v3 + 16) = 0;
      llvm::json::ObjectKey::operator=(v3, &v6);
      v3 += 56;
      v4 -= 56;
    }

    while (v4);
  }

  v5 = v6;
  v6 = 0;
  if (v5)
  {
    if (*(v5 + 23) < 0)
    {
      operator delete(*v5);
    }

    MEMORY[0x259C63180](v5, 0x1012C40EC159624);
  }
}

void llvm::json::ObjectKey::~ObjectKey(llvm::json::ObjectKey *this)
{
  v1 = *this;
  *this = 0;
  if (v1)
  {
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    MEMORY[0x259C63180](v1, 0x1012C40EC159624);
  }
}

__n128 llvm::json::ObjectKey::operator=(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  *a2 = 0;
  v4 = *a1;
  *a1 = v3;
  if (v4)
  {
    v5 = a1;
    if (*(v4 + 23) < 0)
    {
      operator delete(*v4);
    }

    MEMORY[0x259C63180](v4, 0x1012C40EC159624);
    a1 = v5;
  }

  result = *(a2 + 1);
  *(a1 + 1) = result;
  return result;
}

__n128 llvm::json::ObjectKey::operator=(std::string **result, __int128 **a2)
{
  if (*a2)
  {
    operator new();
  }

  v2 = *(a2 + 1);
  *(result + 1) = v2;
  return v2;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 4);
  if (!v4)
  {
    v21 = 0;
    *a3 = 0;
    return v21;
  }

  v6 = *a1;
  if (!llvm::json::isUTF8(0xFFFFFFFFFFFFFFFFLL, 0, 0))
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::initEmpty();
  }

  if (!llvm::json::isUTF8(0xFFFFFFFFFFFFFFFELL, 0, 0))
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>();
  }

  HashValue = llvm::DenseMapInfo<llvm::StringRef,void>::getHashValue(*(a2 + 8), *(a2 + 16));
  v8 = 0;
  v9 = v4 - 1;
  v10 = 1;
  v11 = HashValue & (v4 - 1);
  v12 = v6 + 56 * v11;
  v13 = *(a2 + 8);
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);
  if (v14 == -2)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v14 == -1)
  {
    if (v13 != -1)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v16 = *(a2 + 16);
    if (v16 != v15 || v16 && (v17 = v8, v18 = memcmp(v13, v14, v16), v8 = v17, v18))
    {
LABEL_13:
      while (1)
      {
        v23 = v8;
        if (llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0))
        {
          break;
        }

        isEqual = llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(*(v12 + 8), *(v12 + 16), 0xFFFFFFFFFFFFFFFELL, 0);
        v8 = v23;
        if ((isEqual & (v23 == 0)) != 0)
        {
          v8 = v12;
        }

        v20 = v10 + v11;
        ++v10;
        v11 = v20 & v9;
        v12 = v6 + 56 * (v20 & v9);
        v13 = *(a2 + 8);
        v14 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (v14 != -2)
        {
          goto LABEL_5;
        }

LABEL_12:
        if (v13 == -2)
        {
          goto LABEL_18;
        }
      }

      v21 = 0;
      if (v23)
      {
        v12 = v23;
      }

      goto LABEL_19;
    }
  }

LABEL_18:
  v21 = 1;
LABEL_19:
  *a3 = v12;
  return v21;
}

uint64_t llvm::DenseMapInfo<llvm::StringRef,void>::isEqual(const void *a1, size_t __n, void *__s2, uint64_t a4)
{
  if (__s2 == -2)
  {
    return a1 == -2;
  }

  if (__s2 == -1)
  {
    return a1 == -1;
  }

  if (__n != a4)
  {
    return 0;
  }

  if (__n)
  {
    return memcmp(a1, __s2, __n) == 0;
  }

  return 1;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::InsertIntoBucketImpl<llvm::json::ObjectKey>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a3;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (4 * v5 + 4 >= 3 * v6)
  {
    v6 *= 2;
  }

  else if (v6 + ~v5 - *(a1 + 12) > v6 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::grow(a1, v6);
  llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(a1, a2, &v9);
LABEL_3:
  ++*(a1 + 8);
  if (!llvm::json::isUTF8(0xFFFFFFFFFFFFFFFFLL, 0, 0))
  {
    llvm::json::fixUTF8(0xFFFFFFFFFFFFFFFFLL, 0, &__p);
    llvm::json::ObjectKey::ObjectKey(v11, &__p);
  }

  v7 = v9;
  if (*(v9 + 8) != -1)
  {
    --*(a1 + 12);
  }

  return v7;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = v7 + 1;
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = llvm::allocate_buffer(56 * v8, 8uLL);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::moveFromOldBuckets(a1, v4, v4 + 56 * v3);

    llvm::deallocate_buffer(v4, (56 * v3));
  }

  llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::initEmpty(a1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::moveFromOldBuckets(uint64_t a1, uint64_t a2, uint64_t a3)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::initEmpty(a1);
  if (!llvm::json::isUTF8(0xFFFFFFFFFFFFFFFFLL, 0, 0))
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::initEmpty();
  }

  result = llvm::json::isUTF8(0xFFFFFFFFFFFFFFFELL, 0, 0);
  if ((result & 1) == 0)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>();
  }

  while (a2 != a3)
  {
    if (*(a2 + 8) < 0xFFFFFFFFFFFFFFFELL)
    {
      v14[0] = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>(a1, a2, v14);
      v7 = v14[0];
      v8 = *a2;
      *a2 = 0;
      v9 = *v7;
      *v7 = v8;
      v10 = v7;
      if (v9)
      {
        if (*(v9 + 23) < 0)
        {
          operator delete(*v9);
        }

        MEMORY[0x259C63180](v9, 0x1012C40EC159624);
        v10 = v14[0];
      }

      *(v7 + 1) = *(a2 + 8);
      llvm::json::Value::moveFrom((v10 + 3), (a2 + 24));
      ++*(a1 + 8);
      llvm::json::Value::destroy((a2 + 24), v11, v12, v13);
    }

    result = *a2;
    *a2 = 0;
    if (result)
    {
      if (*(result + 23) < 0)
      {
        operator delete(*result);
      }

      result = MEMORY[0x259C63180]();
    }

    a2 += 56;
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::destroyAll(unsigned int *result)
{
  if (result[4])
  {
    if (!llvm::json::isUTF8(0xFFFFFFFFFFFFFFFFLL, 0, 0))
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::initEmpty();
    }

    if (!llvm::json::isUTF8(0xFFFFFFFFFFFFFFFELL, 0, 0))
    {
      llvm::DenseMapBase<llvm::DenseMap<llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>,llvm::json::ObjectKey,llvm::json::Value,llvm::DenseMapInfo<llvm::StringRef,void>,llvm::detail::DenseMapPair<llvm::json::ObjectKey,llvm::json::Value>>::LookupBucketFor<llvm::json::ObjectKey>();
    }

    v2 = result[4];
    if (v2)
    {
      v3 = 56 * v2;
      v4 = (*result + 24);
      do
      {
        if (*(v4 - 2) < 0xFFFFFFFFFFFFFFFELL)
        {
          llvm::json::Value::destroy(v4);
        }

        v5 = *(v4 - 3);
        *(v4 - 3) = 0;
        if (v5)
        {
          if (*(v5 + 23) < 0)
          {
            operator delete(*v5);
          }

          MEMORY[0x259C63180](v5, 0x1012C40EC159624);
        }

        v4 += 7;
        v3 -= 56;
      }

      while (v3);
    }
  }
}

void std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(uint64_t a1, char *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::destroy(a1, *(a2 + 1));
    if (a2[55] < 0)
    {
      operator delete(*(a2 + 4));
      v4 = a2;
    }

    else
    {
      v4 = a2;
    }

    operator delete(v4);
  }
}

uint64_t llvm::MapVector<std::string,BOOL,std::map<std::string,unsigned int>,llvm::SmallVector<std::pair<std::string,BOOL>,0u>>::try_emplace<BOOL>(uint64_t a1, __int128 *a2, _BYTE *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v14, *a2, *(a2 + 1));
  }

  else
  {
    v14 = *a2;
  }

  v15 = 0;
  v7 = std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,int>>(a1, &v14.__r_.__value_.__l.__data_, &v14);
  v8 = v6;
  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
    if (v8)
    {
      goto LABEL_6;
    }

    return *(a1 + 24) + 32 * *(v7 + 14);
  }

  if ((v6 & 1) == 0)
  {
    return *(a1 + 24) + 32 * *(v7 + 14);
  }

LABEL_6:
  v9 = *(a1 + 32);
  *(v7 + 14) = v9;
  v13 = a3;
  v14.__r_.__value_.__r.__words[0] = a2;
  if (v9 >= *(a1 + 36))
  {
    llvm::SmallVectorTemplateBase<std::pair<std::string,BOOL>,false>::growAndEmplaceBack<std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<BOOL &&>>(a1 + 24, &std::piecewise_construct, &v14, &v13);
  }

  v10 = *(a1 + 24) + 32 * v9;
  v11 = *a2;
  *(v10 + 16) = *(a2 + 2);
  *v10 = v11;
  *(a2 + 1) = 0;
  *(a2 + 2) = 0;
  *a2 = 0;
  *(v10 + 24) = *a3;
  LODWORD(v10) = *(a1 + 32) + 1;
  *(a1 + 32) = v10;
  return *(a1 + 24) + 32 * v10 - 32;
}

uint64_t *std::__tree<std::__value_type<std::string,unsigned int>,std::__map_value_compare<std::string,std::__value_type<std::string,unsigned int>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::pair<std::string,int>>(uint64_t **a1, const void **a2, uint64_t a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_25:
    operator new();
  }

  v4 = *(a2 + 23);
  if (v4 >= 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = a2[1];
  }

  if (v4 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  while (1)
  {
    while (1)
    {
      v7 = v3;
      v10 = v3[4];
      v8 = v3 + 4;
      v9 = v10;
      v11 = *(v8 + 23);
      if (v11 >= 0)
      {
        v12 = *(v8 + 23);
      }

      else
      {
        v12 = v8[1];
      }

      if (v11 >= 0)
      {
        v13 = v8;
      }

      else
      {
        v13 = v9;
      }

      if (v12 >= v5)
      {
        v14 = v5;
      }

      else
      {
        v14 = v12;
      }

      v15 = memcmp(v6, v13, v14);
      v16 = v5 < v12;
      if (v15)
      {
        v16 = v15 < 0;
      }

      if (!v16)
      {
        break;
      }

      v3 = *v7;
      if (!*v7)
      {
        goto LABEL_25;
      }
    }

    v17 = memcmp(v13, v6, v14);
    v18 = v12 < v5;
    if (v17)
    {
      v18 = v17 < 0;
    }

    if (!v18)
    {
      return v7;
    }

    v3 = v7[1];
    if (!v3)
    {
      goto LABEL_25;
    }
  }
}

llvm::json::Value *std::vector<llvm::json::Value>::__emplace_back_slow_path<llvm::json::Value&>(void ****a1, const llvm::json::Value *a2, uint64_t a3, unint64_t a4)
{
  v4 = (a1[1] - *a1) >> 5;
  v5 = v4 + 1;
  if ((v4 + 1) >> 59)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v7 = a1[2] - *a1;
  if (v7 >> 4 > v5)
  {
    v5 = v7 >> 4;
  }

  if (v7 >= 0x7FFFFFFFFFFFFFE0)
  {
    v8 = 0x7FFFFFFFFFFFFFFLL;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    if (!(v8 >> 59))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v9 = 32 * v4;
  llvm::json::Value::copyFrom(32 * v4, a2, a3, a4);
  v10 = (32 * v4 + 32);
  v11 = *a1;
  v12 = a1[1];
  v13 = (v9 + *a1 - v12);
  if (v12 != *a1)
  {
    v14 = *a1;
    v15 = v13;
    do
    {
      llvm::json::Value::moveFrom(v15, v14);
      v14 += 16;
      v15 += 32;
    }

    while (v14 != v12);
    do
    {
      llvm::json::Value::destroy(v11, v16, v17, v18);
      v11 += 4;
    }

    while (v11 != v12);
    v11 = *a1;
  }

  *a1 = v13;
  a1[1] = v10;
  a1[2] = 0;
  if (v11)
  {
    operator delete(v11);
  }

  return v10;
}

uint64_t llvm::json::Value::Value(uint64_t a1, unsigned __int8 *a2, unint64_t a3)
{
  *a1 = 5;
  *(a1 + 8) = a2;
  *(a1 + 16) = a3;
  if (!llvm::json::isUTF8(a2, a3, 0))
  {
    llvm::json::Value::Value(v7, a2, a3, a1);
  }

  return a1;
}

void OUTLINED_FUNCTION_3_13(char *a1, unsigned __int8 **a2, unint64_t *a3, uint64_t a4, ...)
{
  v5 = *a1;
  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v5 >= 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = *a3;
  }

  llvm::json::fixUTF8(v6, v7, &v8);
}

__n128 OUTLINED_FUNCTION_4_12(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a10, uint64_t a9, __n128 a11, unint64_t a12)
{
  result = a11;
  *v12 = a11;
  v12[1].n128_u64[0] = a12;
  return result;
}

void OUTLINED_FUNCTION_5_15(std::string *a1@<X8>)
{

  llvm::json::fixUTF8(0xFFFFFFFFFFFFFFFFLL, 0, a1);
}

unint64_t *llvm::BlockFrequency::operator*=(unint64_t *a1, int a2)
{
  v4 = a2;
  *a1 = llvm::BranchProbability::scale(&v4, *a1);
  return a1;
}

unint64_t llvm::BlockFrequency::operator*(unint64_t *a1, int a2)
{
  v2 = *a1;
  v4 = a2;
  return llvm::BranchProbability::scale(&v4, v2);
}

unint64_t *llvm::BlockFrequency::operator/=(unint64_t *a1, int a2)
{
  v4 = a2;
  *a1 = llvm::BranchProbability::scaleByInverse(&v4, *a1);
  return a1;
}

unint64_t llvm::BlockFrequency::operator/(unint64_t *a1, int a2)
{
  v2 = *a1;
  v4 = a2;
  return llvm::BranchProbability::scaleByInverse(&v4, v2);
}

unint64_t llvm::BlockFrequency::mul(llvm::BlockFrequency *this, unint64_t a2)
{
  v2 = *this;
  v3 = __clz(*this) + __clz(a2);
  if (v3 >= 0x40)
  {
    return v2 * a2;
  }

  if (v3 == 63)
  {
    v6 = (v2 >> 1) * a2;
    if ((v6 & 0x8000000000000000) == 0)
    {
      v4 = 2 * v6;
      if ((v2 & 1) == 0)
      {
        return v4;
      }

      v7 = __CFADD__(v4, a2);
      v4 += a2;
      if (!v7)
      {
        return v4;
      }
    }
  }

  return 0;
}

llvm::raw_ostream *llvm::printRelativeBlockFreq(llvm::raw_ostream *result, unint64_t a2, llvm::ScaledNumbers *a3)
{
  if (!a3)
  {
    v8 = *(result + 4);
    if (*(result + 3) != v8)
    {
      *v8 = 48;
      ++*(result + 4);
      return result;
    }

    v10 = "0";
    v11 = 1;

    return llvm::raw_ostream::write(result, v10, v11);
  }

  if (a2)
  {
    v4 = result;
    v12 = llvm::ScaledNumbers::divide64(a3, a2);
    LOWORD(v13) = v5;
    llvm::ScaledNumber<unsigned long long>::shiftLeft(&v12, 0, v6, v7);
    return llvm::ScaledNumberBase::print(v4, v12, v13, 64, 10);
  }

  v9 = *(result + 4);
  if (*(result + 3) - v9 <= 0xCuLL)
  {
    v10 = "<invalid BFI>";
    v11 = 13;

    return llvm::raw_ostream::write(result, v10, v11);
  }

  qmemcpy(v9, "<invalid BFI>", 13);
  *(result + 4) += 13;
  return result;
}

unint64_t *llvm::ScaledNumber<unsigned long long>::shiftLeft(unint64_t *result, int a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v4 = *result;
    if (*result)
    {
      if (a2 < 0)
      {
        v20 = -a2;

        return llvm::ScaledNumber<unsigned long long>::shiftRight(result, v20, a3, a4);
      }

      else
      {
        v5 = *(result + 4);
        v6 = 0x3FFF - v5;
        if (0x3FFF - v5 >= a2)
        {
          v7 = a2;
        }

        else
        {
          v7 = 0x3FFF - v5;
        }

        v8 = v5 + v7;
        *(result + 4) = v8;
        if (v6 < a2)
        {
          v9 = __clz(v4);
          v10 = (v9 ^ 0x3Fu) + v8;
          v11 = 1 << (v9 ^ 0x3Fu);
          v12 = 1 << (62 - v9);
          v13 = (v12 & v4) == 0;
          if ((v12 & v4) != 0)
          {
            v14 = (v10 + 1);
          }

          else
          {
            v14 = v10;
          }

          v15 = 0x100000000;
          if (v13)
          {
            v15 = 0xFFFFFFFF00000000;
          }

          v16 = v15 | v14;
          if (v11 == v4)
          {
            v16 = v10;
          }

          if (v16 - (SHIDWORD(v16) > 0) != 16446)
          {
            goto LABEL_24;
          }

          v17 = a2;
          v18 = result;
          if (v8 > 16382)
          {
            result = llvm::ScaledNumbers::compareImpl(0xFFFFFFFFFFFFFFFFLL, v4, v8 + 1);
            v19 = -result;
          }

          else
          {
            result = llvm::ScaledNumbers::compareImpl(v4, 0xFFFFFFFFFFFFFFFFLL, -1 - v8);
            v19 = result;
          }

          if (v19)
          {
            result = v18;
            a2 = v17;
            v4 = *v18;
LABEL_24:
            if (a2 - v7 <= __clz(v4))
            {
              *result = v4 << (a2 - v7);
            }

            else
            {
              *result = -1;
              *(result + 4) = 0x3FFF;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t *llvm::ScaledNumber<unsigned long long>::shiftRight(unint64_t *result, int a2, uint64_t a3, int a4)
{
  if (a2)
  {
    v4 = *result;
    if (*result)
    {
      if (a2 < 0)
      {
        return llvm::ScaledNumber<unsigned long long>::shiftLeft(result, -a2, a3, a4);
      }

      else
      {
        v5 = *(result + 4);
        if (v5 + 16382 >= a2)
        {
          v6 = a2;
        }

        else
        {
          v6 = v5 + 16382;
        }

        *(result + 4) = v5 - v6;
        if (v5 + 16382 < a2)
        {
          v7 = a2 - v6;
          if (v7 < 64)
          {
            *result = v4 >> v7;
          }

          else
          {
            *result = 0;
            *(result + 4) = 0;
          }
        }
      }
    }
  }

  return result;
}

llvm::raw_ostream *llvm::BranchProbability::print(llvm::BranchProbability *this, llvm::raw_ostream *a2)
{
  v4 = *this;
  if (*this == -1)
  {
    v6 = *(a2 + 4);
    if (*(a2 + 3) - v6 > 1uLL)
    {
      *v6 = 9535;
      *(a2 + 4) += 2;
      return a2;
    }

    else
    {

      return llvm::raw_ostream::write(a2, "?%", 2uLL);
    }
  }

  else
  {
    v11 = v2;
    v12 = v3;
    v7[0] = &unk_28689EAF8;
    v7[1] = "0x%08x / 0x%08x = %.2f%%";
    v8 = v4;
    v9 = 0x80000000;
    v10 = rint(vcvtd_n_f64_u32(v4, 0x1FuLL) * 100.0 * 100.0) / 100.0;
    return llvm::raw_ostream::operator<<(a2, v7);
  }
}

_DWORD *llvm::BranchProbability::BranchProbability(_DWORD *this, unint64_t a2, unsigned int a3)
{
  if (a3 != 0x80000000)
  {
    a2 = ((a3 >> 1) | (a2 << 31)) / a3;
  }

  *this = a2;
  return this;
}

{
  if (a3 != 0x80000000)
  {
    a2 = ((a3 >> 1) | (a2 << 31)) / a3;
  }

  *this = a2;
  return this;
}

uint64_t llvm::BranchProbability::getBranchProbability(unint64_t this, unint64_t a2)
{
  v2 = HIDWORD(a2);
  if (HIDWORD(a2))
  {
    LOBYTE(v2) = 0;
    v3 = a2;
    do
    {
      a2 = v3 >> 1;
      LOBYTE(v2) = v2 + 1;
      v4 = v3 >> 33;
      v3 >>= 1;
    }

    while (v4);
  }

  result = this >> v2;
  if (a2 != 0x80000000)
  {
    return ((result << 31) | (a2 >> 1)) / a2;
  }

  return result;
}

unint64_t llvm::BranchProbability::scale(llvm::BranchProbability *this, uint64_t a2)
{
  if (!a2)
  {
    return a2;
  }

  v2 = *this;
  if (*this == 0x80000000)
  {
    return a2;
  }

  v3 = a2 * v2;
  v4 = HIDWORD(v3) + HIDWORD(a2) * v2;
  v5 = ((v4 < HIDWORD(a2) * v2) << 32) + HIDWORD(a2) * v2;
  if ((v5 & 0x8000000000000000) == 0)
  {
    return ((v3 & 0x80000000 | ((v4 & 0x7FFFFFFF) << 32)) >> 31) | (((v5 & 0xFFFFFFFF00000000 | v4) >> 31) << 32);
  }

  return -1;
}

unint64_t llvm::BranchProbability::scaleByInverse(llvm::BranchProbability *this, unint64_t a2)
{
  if (!a2)
  {
    return a2;
  }

  v2 = *this;
  if (v2 == 0x80000000)
  {
    return a2;
  }

  v3 = a2 >> 33;
  if (((a2 >> 1) & 0x80000000) > (a2 >> 1))
  {
    LODWORD(v3) = v3 + 1;
  }

  v4 = (a2 >> 1) | (v3 << 32);
  v5 = v4 / v2;
  if ((v4 / v2) >> 32)
  {
    return -1;
  }

  v7 = ((a2 << 31) & 0x80000000 | ((v4 % v2) << 32)) / v2;
  v8 = __CFADD__(v7, v5 << 32);
  v9 = v7 + (v5 << 32);
  if (v8)
  {
    return -1;
  }

  else
  {
    return v9;
  }
}

uint64_t llvm::BuryPointer(uint64_t this, const void *a2)
{
  add = atomic_fetch_add(llvm::BuryPointer(void const*)::GraveYardSize, 1u);
  if (add <= 0xF)
  {
    llvm::BuryPointer(void const*)::GraveYard[add] = this;
  }

  return this;
}

unint64_t llvm::parseCachePruningPolicy@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v42 = *MEMORY[0x277D85DE8];
  v34 = "";
  v35 = 0;
  v36 = result;
  v37 = a2;
  if (!a2)
  {
    v22 = 0;
    v23 = *(a3 + 48);
    v4 = 75;
    v24 = 1000000;
    v6 = 604800;
    v5 = 1200;
LABEL_68:
    *(a3 + 48) = v23 & 0xFE;
    *a3 = v5;
    *(a3 + 8) = 1;
    *(a3 + 16) = v6;
    *(a3 + 24) = v4;
    *(a3 + 32) = v22;
    *(a3 + 40) = v24;
    return result;
  }

  v27 = *(a3 + 48);
  v4 = 75;
  v5 = 1200;
  v6 = 604800;
  v28 = 0;
  v29 = 1000000;
  while (1)
  {
    LOBYTE(v38) = 58;
    v7 = llvm::StringRef::find(&v36, &v38, 1uLL, 0);
    if (v7 == -1)
    {
      v12 = 0;
      v11 = 0;
      v8 = v36;
      v9 = v37;
    }

    else
    {
      v8 = v36;
      v9 = v7 >= v37 ? v37 : v7;
      v10 = v37 >= v7 + 1 ? v7 + 1 : v37;
      v11 = v36 + v10;
      v12 = v37 - v10;
    }

    v34 = v8;
    v35 = v9;
    v36 = v11;
    v37 = v12;
    LOBYTE(v38) = 61;
    result = llvm::StringRef::find(&v34, &v38, 1uLL, 0);
    if (result == -1)
    {
      v17 = 0;
      v16 = 0;
      v13 = v34;
      v14 = v35;
      if (v35 <= 13)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v13 = v34;
      if (result >= v35)
      {
        v14 = v35;
      }

      else
      {
        v14 = result;
      }

      if (v35 >= result + 1)
      {
        v15 = result + 1;
      }

      else
      {
        v15 = v35;
      }

      v16 = &v34[v15];
      v17 = v35 - v15;
      if (v14 <= 13)
      {
LABEL_21:
        if (v14 == 10)
        {
          result = memcmp(v13, "cache_size", 0xAuLL);
          if (!result)
          {
            if (*(v16 + v17 - 1) == 37)
            {
              if (v17 >= v17 - 1)
              {
                --v17;
              }

              v38 = 0;
              result = llvm::getAsUnsignedInteger(v16, v17, 0, &v38);
              if (result)
              {
                goto LABEL_70;
              }

              v4 = v38;
              if (v38 >= 0x65)
              {
                v33 = 1283;
                v30 = "'";
                v31 = v16;
                v32 = v17;
                v26 = "' must be between 0 and 100";
                goto LABEL_75;
              }

              goto LABEL_3;
            }

            v33 = 1283;
            v30 = "'";
            v31 = v16;
            v32 = v17;
            v26 = "' must be a percentage";
LABEL_75:
            v38 = &v30;
            v40 = v26;
            v41 = 770;
            llvm::inconvertibleErrorCode(result);
            operator new();
          }

          v14 = 10;
        }

        else
        {
          if (v14 != 11)
          {
            goto LABEL_74;
          }

          result = memcmp(v13, "prune_after", 0xBuLL);
          if (!result)
          {
            result = parseDuration(&v38, v16, v17);
            if (v39)
            {
              goto LABEL_69;
            }

            v6 = v38;
            goto LABEL_3;
          }

          v14 = 11;
        }

LABEL_74:
        v33 = 1283;
        v30 = "Unknown key: '";
        v31 = v13;
        v32 = v14;
        v26 = "'";
        goto LABEL_75;
      }
    }

    if (v14 != 16)
    {
      break;
    }

    result = memcmp(v13, "cache_size_bytes", 0x10uLL);
    if (result)
    {
      if (*v13 == 0x69735F6568636163 && *(v13 + 1) == 0x73656C69665F657ALL)
      {
        v38 = 0;
        result = llvm::getAsUnsignedInteger(v16, v17, 0, &v38);
        if (result)
        {
          goto LABEL_70;
        }

        v29 = v38;
        goto LABEL_3;
      }

      v14 = 16;
      goto LABEL_74;
    }

    v20 = __tolower(*(v16 + v17 - 1));
    switch(v20)
    {
      case 'g':
        if (v17 >= v17 - 1)
        {
          --v17;
        }

        v21 = 0x40000000;
        break;
      case 'm':
        if (v17 >= v17 - 1)
        {
          --v17;
        }

        v21 = 0x100000;
        break;
      case 'k':
        if (v17 >= v17 - 1)
        {
          --v17;
        }

        v21 = 1024;
        break;
      default:
        v21 = 1;
        break;
    }

    v38 = 0;
    result = llvm::getAsUnsignedInteger(v16, v17, 0, &v38);
    if (result)
    {
LABEL_70:
      v33 = 1283;
      v30 = "'";
      v31 = v16;
      v32 = v17;
      v26 = "' not an integer";
      goto LABEL_75;
    }

    v28 = v38 * v21;
LABEL_3:
    if (!v37)
    {
      v23 = v27;
      v22 = v28;
      v24 = v29;
      goto LABEL_68;
    }
  }

  if (v14 != 14)
  {
    goto LABEL_74;
  }

  if (*v13 != 0x6E695F656E757270 || *(v13 + 6) != 0x6C61767265746E69)
  {
    v14 = 14;
    goto LABEL_74;
  }

  result = parseDuration(&v38, v16, v17);
  if ((v39 & 1) == 0)
  {
    v5 = v38;
    goto LABEL_3;
  }

LABEL_69:
  v25 = v38;
  *(a3 + 48) = v27 | 1;
  *a3 = v25;
  return result;
}