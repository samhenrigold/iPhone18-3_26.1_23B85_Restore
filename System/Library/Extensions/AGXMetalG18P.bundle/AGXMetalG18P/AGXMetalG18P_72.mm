BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *>(__int128 *a1, __int128 *a2, __n128 a3)
{
  v3 = 0xCCCCCCCCCCCCCCCDLL * ((a2 - a1) >> 3);
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v10 = (a2 - 40);
      v11 = *(a1 + 8);
      v12 = *(a2 - 2);
      if (v11 < *(a1 + 3))
      {
        if (v12 >= v11)
        {
          v56 = *(a1 + 4);
          v58 = *a1;
          v57 = a1[1];
          v59 = *(a1 + 56);
          *a1 = *(a1 + 40);
          a1[1] = v59;
          *(a1 + 8) = *(a1 + 18);
          *(a1 + 40) = v58;
          *(a1 + 56) = v57;
          *(a1 + 18) = v56;
          if (*(a2 - 2) >= *(a1 + 8))
          {
            return 1;
          }

          v13 = *(a1 + 9);
          v14 = *(a1 + 40);
          v15 = *(a1 + 56);
          v60 = *(a2 - 2);
          v61 = *(a2 - 24);
          *(a1 + 40) = *v10;
          *(a1 + 56) = v61;
          *(a1 + 18) = v60;
        }

        else
        {
          v13 = *(a1 + 4);
          v14 = *a1;
          v15 = a1[1];
          v16 = *(a2 - 2);
          v17 = *(a2 - 24);
          *a1 = *v10;
          a1[1] = v17;
          *(a1 + 8) = v16;
        }

        *v10 = v14;
        *(a2 - 24) = v15;
        result = 1;
        *(a2 - 2) = v13;
        return result;
      }

      if (v12 >= v11)
      {
        return 1;
      }

      v33 = *(a1 + 9);
      v34 = *(a1 + 40);
      v35 = *(a1 + 56);
      v36 = *(a2 - 2);
      v37 = *(a2 - 24);
      *(a1 + 40) = *v10;
      *(a1 + 56) = v37;
      *(a1 + 18) = v36;
      *v10 = v34;
      *(a2 - 24) = v35;
      *(a2 - 2) = v33;
      if (*(a1 + 8) >= *(a1 + 3))
      {
        return 1;
      }

LABEL_50:
      v92 = *(a1 + 4);
      v94 = *a1;
      v93 = a1[1];
      v95 = *(a1 + 56);
      *a1 = *(a1 + 40);
      a1[1] = v95;
      *(a1 + 8) = *(a1 + 18);
      *(a1 + 40) = v94;
      *(a1 + 56) = v93;
      *(a1 + 18) = v92;
      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),void>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupDirectESL<false>(AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes> const&,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,unsigned long,unsigned long,AGCDeserializedReply const&,BOOL,BOOL)::UniformData *,0>(a1, a1 + 40, (a1 + 5), a1 + 120, a2 - 40, a3);
      return 1;
    }

    v26 = *(a1 + 8);
    v27 = *(a1 + 3);
    v28 = *(a1 + 13);
    if (v26 >= v27)
    {
      if (v28 < v26)
      {
        v47 = *(a1 + 56);
        v48 = *(a1 + 40);
        v49 = a1[6];
        *(a1 + 40) = a1[5];
        *(a1 + 56) = v49;
        v51 = *(a1 + 8);
        v50 = *(a1 + 9);
        *(a1 + 18) = *(a1 + 28);
        a1[5] = v48;
        a1[6] = v47;
        *(a1 + 28) = v50;
        if (v51 < v27)
        {
          v52 = *(a1 + 4);
          v54 = *a1;
          v53 = a1[1];
          v55 = *(a1 + 56);
          *a1 = *(a1 + 40);
          a1[1] = v55;
          *(a1 + 8) = *(a1 + 18);
          *(a1 + 40) = v54;
          *(a1 + 56) = v53;
          *(a1 + 18) = v52;
        }
      }
    }

    else
    {
      if (v28 < v26)
      {
        v29 = *(a1 + 4);
        v31 = *a1;
        v30 = a1[1];
        v32 = a1[6];
        *a1 = a1[5];
        a1[1] = v32;
        *(a1 + 8) = *(a1 + 28);
LABEL_46:
        a1[5] = v31;
        a1[6] = v30;
        *(a1 + 28) = v29;
        goto LABEL_47;
      }

      v76 = *(a1 + 4);
      v78 = *a1;
      v77 = a1[1];
      v79 = *(a1 + 56);
      *a1 = *(a1 + 40);
      a1[1] = v79;
      *(a1 + 8) = *(a1 + 18);
      *(a1 + 40) = v78;
      *(a1 + 56) = v77;
      *(a1 + 18) = v76;
      if (v28 < *(a1 + 8))
      {
        v29 = *(a1 + 9);
        v30 = *(a1 + 56);
        v31 = *(a1 + 40);
        v80 = a1[6];
        *(a1 + 40) = a1[5];
        *(a1 + 56) = v80;
        *(a1 + 18) = *(a1 + 28);
        goto LABEL_46;
      }
    }

LABEL_47:
    if (*(a2 - 2) >= *(a1 + 13))
    {
      return 1;
    }

    v81 = a2 - 40;
    v82 = *(a1 + 14);
    v83 = a1[5];
    v84 = a1[6];
    v85 = *(a2 - 2);
    v86 = *(a2 - 24);
    a1[5] = *(a2 - 40);
    a1[6] = v86;
    *(a1 + 28) = v85;
    *v81 = v83;
    *(v81 + 16) = v84;
    *(v81 + 32) = v82;
    if (*(a1 + 13) >= *(a1 + 8))
    {
      return 1;
    }

    v87 = *(a1 + 56);
    v88 = a1[5];
    *(a1 + 56) = a1[6];
    v90 = *(a1 + 8);
    v89 = *(a1 + 9);
    *(a1 + 18) = *(a1 + 28);
    v91 = *(a1 + 40);
    *(a1 + 40) = v88;
    a1[5] = v91;
    a1[6] = v87;
    *(a1 + 28) = v89;
    if (v90 >= *(a1 + 3))
    {
      return 1;
    }

    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    if (*(a2 - 2) < *(a1 + 3))
    {
      v4 = *(a1 + 4);
      v5 = *a1;
      v6 = a1[1];
      v7 = *(a2 - 2);
      v8 = *(a2 - 24);
      *a1 = *(a2 - 40);
      a1[1] = v8;
      *(a1 + 8) = v7;
      *(a2 - 24) = v6;
      *(a2 - 40) = v5;
      result = 1;
      *(a2 - 2) = v4;
      return result;
    }

    return 1;
  }

LABEL_13:
  v18 = a1 + 5;
  v19 = *(a1 + 8);
  v20 = *(a1 + 3);
  v21 = *(a1 + 13);
  if (v19 >= v20)
  {
    if (v21 < v19)
    {
      v38 = *(a1 + 56);
      v39 = *(a1 + 40);
      v40 = a1[6];
      *(a1 + 40) = *v18;
      *(a1 + 56) = v40;
      v42 = *(a1 + 8);
      v41 = *(a1 + 9);
      *(a1 + 18) = *(a1 + 28);
      *v18 = v39;
      a1[6] = v38;
      *(a1 + 28) = v41;
      if (v42 < v20)
      {
        v43 = *(a1 + 4);
        v45 = *a1;
        v44 = a1[1];
        v46 = *(a1 + 56);
        *a1 = *(a1 + 40);
        a1[1] = v46;
        *(a1 + 8) = *(a1 + 18);
        *(a1 + 40) = v45;
        *(a1 + 56) = v44;
        *(a1 + 18) = v43;
      }
    }
  }

  else
  {
    if (v21 >= v19)
    {
      v62 = *(a1 + 4);
      v64 = *a1;
      v63 = a1[1];
      v65 = *(a1 + 56);
      *a1 = *(a1 + 40);
      a1[1] = v65;
      *(a1 + 8) = *(a1 + 18);
      *(a1 + 40) = v64;
      *(a1 + 56) = v63;
      *(a1 + 18) = v62;
      if (v21 >= *(a1 + 8))
      {
        goto LABEL_34;
      }

      v22 = *(a1 + 9);
      v23 = *(a1 + 56);
      v24 = *(a1 + 40);
      v66 = a1[6];
      *(a1 + 40) = *v18;
      *(a1 + 56) = v66;
      *(a1 + 18) = *(a1 + 28);
    }

    else
    {
      v22 = *(a1 + 4);
      v24 = *a1;
      v23 = a1[1];
      v25 = a1[6];
      *a1 = *v18;
      a1[1] = v25;
      *(a1 + 8) = *(a1 + 28);
    }

    *v18 = v24;
    a1[6] = v23;
    *(a1 + 28) = v22;
  }

LABEL_34:
  v67 = (a1 + 120);
  if ((a1 + 120) == a2)
  {
    return 1;
  }

  v68 = 0;
  v69 = 0;
  while (1)
  {
    v71 = *(v67 + 3);
    if (v71 < *(v18 + 3))
    {
      v96 = *v67;
      v97 = *(v67 + 2);
      v72 = *(v67 + 8);
      v73 = v68;
      do
      {
        v74 = a1 + v73;
        v75 = *(a1 + v73 + 96);
        *(v74 + 120) = *(a1 + v73 + 80);
        *(v74 + 136) = v75;
        *(v74 + 152) = *(a1 + v73 + 112);
        if (v73 == -80)
        {
          v70 = a1;
          goto LABEL_37;
        }

        v73 -= 40;
      }

      while (v71 < *(v74 + 64));
      v70 = a1 + v73 + 120;
LABEL_37:
      *v70 = v96;
      *(v70 + 16) = v97;
      *(v70 + 24) = v71;
      *(v70 + 32) = v72;
      if (++v69 == 8)
      {
        return (v67 + 40) == a2;
      }
    }

    v18 = v67;
    v68 += 40;
    v67 = (v67 + 40);
    if (v67 == a2)
    {
      return 1;
    }
  }
}

uint64_t *AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(uint64_t *a1)
{
  if ((a1[93] & 1) == 0)
  {
    v20 = a1[101];
    if (v20)
    {
      os_unfair_lock_lock((v20 + 16696));
      v21 = *(v20 + 16728);
      v22 = *(v20 + 16736);
      if (v21 != v22)
      {
        while (*v21 != a1 + 94)
        {
          if (++v21 == v22)
          {
            v21 = *(v20 + 16736);
            break;
          }
        }
      }

      v23 = v22 - (v21 + 1);
      if (v22 != v21 + 1)
      {
        memmove(v21, v21 + 1, v22 - (v21 + 1));
      }

      *(v20 + 16736) = v21 + v23;
      os_unfair_lock_unlock((v20 + 16696));
      if (a1[90])
      {
        v24 = a1[91];
        v25 = *(v24 + 16);
        v32 = MEMORY[0x29EDCA5F8];
        v33 = 3221225472;
        v34 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v35 = &__block_descriptor_48_e5_v8__0l;
        v36 = v24;
        v37 = a1 + 87;
        dispatch_sync(v25, &v32);
        *(a1 + 721) = 0u;
        *(a1 + 87) = 0u;
        *(a1 + 89) = 0u;
      }

      if (a1[106])
      {
        v26 = a1[107];
        v27 = *(v26 + 16);
        v32 = MEMORY[0x29EDCA5F8];
        v33 = 3221225472;
        v34 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v35 = &__block_descriptor_48_e5_v8__0l;
        v36 = v26;
        v37 = a1 + 103;
        dispatch_sync(v27, &v32);
        *(a1 + 849) = 0u;
        *(a1 + 103) = 0u;
        *(a1 + 105) = 0u;
      }

      if (a1[138])
      {
        v28 = a1[139];
        v29 = *(v28 + 16);
        v32 = MEMORY[0x29EDCA5F8];
        v33 = 3221225472;
        v34 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v35 = &__block_descriptor_48_e5_v8__0l;
        v36 = v28;
        v37 = a1 + 135;
        dispatch_sync(v29, &v32);
        *(a1 + 1105) = 0u;
        *(a1 + 135) = 0u;
        *(a1 + 137) = 0u;
      }

      if (a1[146])
      {
        v30 = a1[147];
        v31 = *(v30 + 16);
        v32 = MEMORY[0x29EDCA5F8];
        v33 = 3221225472;
        v34 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v35 = &__block_descriptor_48_e5_v8__0l;
        v36 = v30;
        v37 = a1 + 143;
        dispatch_sync(v31, &v32);
        *(a1 + 1169) = 0u;
        *(a1 + 143) = 0u;
        *(a1 + 145) = 0u;
      }
    }
  }

  v2 = a1[110];
  if (v2)
  {
    v3 = *(v2 + 248);
    if (v3)
    {
      *(v2 + 256) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 224);
    if (v4)
    {
      *(v2 + 232) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      *(v2 + 32) = v5;
      operator delete(v5);
    }

    v6 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v6;
      operator delete(v6);
    }

    MEMORY[0x29ED520D0](v2, 0x1030C408593E319);
    a1[110] = 0;
  }

  v7 = *a1;
  if (*a1)
  {
    v8 = *(v7 + 248);
    if (v8)
    {
      *(v7 + 256) = v8;
      operator delete(v8);
    }

    v9 = *(v7 + 224);
    if (v9)
    {
      *(v7 + 232) = v9;
      operator delete(v9);
    }

    v10 = *(v7 + 24);
    if (v10)
    {
      *(v7 + 32) = v10;
      operator delete(v10);
    }

    v11 = *v7;
    if (*v7)
    {
      *(v7 + 8) = v11;
      operator delete(v11);
    }

    MEMORY[0x29ED520D0](v7, 0x1030C408593E319);
    *a1 = 0;
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(a1[160]);
  v12 = a1[156];
  if (v12)
  {
    a1[157] = v12;
    operator delete(v12);
  }

  v13 = a1[98];
  if (v13)
  {
    v14 = a1[99];
    v15 = a1[98];
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 8);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        v14 -= 16;
      }

      while (v14 != v13);
      v15 = a1[98];
    }

    a1[99] = v13;
    operator delete(v15);
  }

  v17 = a1[94];
  if (v17)
  {
    a1[95] = v17;
    operator delete(v17);
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(a1[62]);
    if ((*(a1 + 487) & 0x80000000) == 0)
    {
LABEL_37:
      if ((*(a1 + 463) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_59;
    }
  }

  else if ((*(a1 + 487) & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(a1[58]);
  if ((*(a1 + 463) & 0x80000000) == 0)
  {
LABEL_38:
    if ((*(a1 + 439) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_60:
    operator delete(a1[52]);
    v18 = a1[47];
    if (!v18)
    {
      return a1;
    }

    goto LABEL_40;
  }

LABEL_59:
  operator delete(a1[55]);
  if (*(a1 + 439) < 0)
  {
    goto LABEL_60;
  }

LABEL_39:
  v18 = a1[47];
  if (v18)
  {
LABEL_40:
    a1[48] = v18;
    operator delete(v18);
  }

  return a1;
}

char *std::vector<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::BufferPointer,std::allocator<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::BufferPointer>>::__assign_with_size[abi:nn200100]<AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::BufferPointer*,AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::BufferPointer*>(char **a1, char *a2, uint64_t a3, unint64_t a4)
{
  v6 = a1[2];
  result = *a1;
  if (0xAAAAAAAAAAAAAAABLL * ((v6 - result) >> 2) < a4)
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

    if (a4 <= 0x1555555555555555)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v6 >> 2);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0xAAAAAAAAAAAAAAALL)
      {
        v11 = 0x1555555555555555;
      }

      else
      {
        v11 = v10;
      }

      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v12 = a1[1];
  v13 = v12 - result;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - result) >> 2) >= a4)
  {
    v17 = a3 - a2;
    if (v17)
    {
      v18 = result;
      memmove(result, a2, v17);
      result = v18;
    }

    v16 = &result[v17];
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

    v16 = &v12[v15];
  }

  a1[1] = v16;
  return result;
}

uint64_t agxsGetShaderPassInfo(uint64_t result, const _AGCDrawBufferState *a2, unint64_t a3, unint64_t a4, unsigned int *a5, BOOL *a6)
{
  v61 = *MEMORY[0x29EDCA608];
  *a6 = 0;
  v59 = 0;
  v60 = 0;
  key_low = LOBYTE(a2->state.representation.key);
  if (a2->state.representation.var0)
  {
    v7 = 0;
    v8 = LOBYTE(a2->state.representation.key);
    do
    {
      v9 = __clz(__rbit32(v8));
      v10.var0 = a2->encoded.__elems_[v9].representation;
      if ((*&v10.var0 & 0x1F) == 0x17)
      {
LABEL_77:
        std::__throw_bad_optional_access[abi:nn200100]();
      }

      v11 = 1 << v9;
      v12 = *&v10.var0 >> 5;
      ++*(&v59 + (v12 - 1));
      v7 += v12;
      v13 = v11 == v8;
      v8 ^= v11;
    }

    while (!v13);
    v15 = v60;
    v14 = HIDWORD(v60);
    v16 = HIDWORD(v59);
  }

  else
  {
    v16 = 0;
    v15 = 0;
    v14 = 0;
    v7 = 0;
  }

  v17 = v7 > result;
  if (v7 <= result)
  {
    v18 = 0;
  }

  else
  {
    v18 = v14;
  }

  v19 = v7 - v18;
  if (v19 <= result)
  {
    v20 = 0;
  }

  else
  {
    v20 = v15;
  }

  if (v19 > result)
  {
    v17 = 2;
  }

  v21 = v19 - v20;
  v22 = v15 + v16 + v14;
  if (v21 > result)
  {
    v23 = 3;
  }

  else
  {
    v22 = 0;
    v23 = v17;
  }

  if (v21 - v22 <= result)
  {
    v24 = v23;
  }

  else
  {
    v24 = 4;
  }

  if (key_low)
  {
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    do
    {
      v30 = __clz(__rbit32(key_low));
      v31.var0 = a2->encoded.__elems_[v30].representation;
      if ((*&v31.var0 & 0x1F) == 0x17)
      {
        goto LABEL_77;
      }

      v32 = *&v31.var0 >> 5;
      v33 = -1 << v32;
      v34 = ~(-1 << v32);
      v35 = a3 >> (4 * v30);
      v36 = v35 & v34;
      v37 = a4 >> (4 * v30);
      v38 = v37 & v34;
      if (v24 > 2)
      {
        if (v24 == 3)
        {
          if (v32 >= 2)
          {
            v46 = (2 * v35) & 4;
            if (v32 != 2)
            {
              v46 = 0;
            }

            v47 = v36 & 7 | v46;
            v48 = (2 * v37) & 4;
            if (v32 != 2)
            {
              v48 = 0;
            }

            v36 = (v36 >> 2) & 2;
            if (v47)
            {
              ++v36;
            }

            v49 = v38 & 7 | v48;
            v38 = (v38 >> 2) & 2;
            if (v49)
            {
              ++v38;
            }

            v50 = v49 != 7 && v49 != 0;
            v28 |= v50;
            *a6 = v28;
            if (v32 == 4)
            {
              v32 = 2;
            }

            else
            {
              v32 = 1;
            }
          }
        }

        else
        {
          v39 = (v33 + 16);
          v40 = (1 << (v32 - 1));
          if ((v36 & v40) != 0)
          {
            v41 = (v33 + 16);
          }

          else
          {
            v41 = 0;
          }

          v42 = v41 | v36;
          if ((v38 & v40) == 0)
          {
            v39 = 0;
          }

          v43 = v39 | v38;
          if (v32 > 3)
          {
            v44 = v38;
          }

          else
          {
            v36 = v42;
            v44 = v43;
          }

          v36 = v36 != 0;
          v38 = v44 != 0;
          v45 = v44 != 15 && v44 != 0;
          v28 |= v45;
          *a6 = v28;
          v32 = 1;
        }
      }

      else if (v24 == 1)
      {
        if (v32 == 4)
        {
          v36 = (v36 >> 1) & 6 | (a3 >> (4 * v30)) & 3;
          v28 = (((v38 >> 1) ^ v38) & 2 | v28) != 0;
          *a6 = v28;
          v38 = (v38 >> 1) & 6 | (a4 >> (4 * v30)) & 3;
          v32 = 3;
        }
      }

      else if (v24 == 2 && v32 >= 3)
      {
        v36 = (v36 >> 1) & 6 | v36 & 3;
        v28 = (((v38 >> 1) ^ v38) & 2 | v28) != 0;
        *a6 = v28;
        v38 = (v38 >> 1) & 6 | v38 & 3;
        --v32;
      }

      v29 = 1 << v30;
      v25 |= v36 << v27;
      v26 |= v38 << v27;
      v27 += v32;
      v13 = v29 == key_low;
      key_low ^= v29;
    }

    while (!v13);
    if (v27 > result)
    {
      v51 = ~(-1 << result);
      v52 = v25 & v51;
      v53 = v26 & v51;
      do
      {
        v25 >>= result;
        v26 >>= result;
        v54 = v27 - result;
        if (result >= v27 - result)
        {
          v55 = v27 - result;
        }

        else
        {
          v55 = result;
        }

        v56 = ~(-1 << v55);
        LOBYTE(v28) = ((v26 ^ v53) & v56 | v28) != 0;
        v52 |= v25 & v56;
        v53 |= v26 & v56;
        v27 = v54;
      }

      while (v54 > result);
      v27 = result;
      v26 = v53;
      v25 = v52;
    }

    *a6 = (v25 & v26 | v28) != 0;
    if (v27)
    {
      v57 = (-1 << v27) + (1 << result);
      if ((v26 & (1 << (v27 - 1))) == 0)
      {
        v57 = 0;
      }

      v58 = v57 | v26;
      if (v27 < result)
      {
        LODWORD(v26) = v58;
      }
    }

    else
    {
      LODWORD(v26) = 0;
    }
  }

  else
  {
    LODWORD(v26) = 0;
    *a6 = 0;
  }

  *a5 = v26;
  return result;
}

uint64_t AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::buildUniqueResourceMask(uint64_t result)
{
  v1 = *(result + 536) != 0;
  *(result + 336) = v1;
  if (*(result + 544))
  {
    v1 |= 2u;
    *(result + 336) = v1;
  }

  if (*(result + 552))
  {
    v1 |= 4u;
    *(result + 336) = v1;
  }

  if (*(result + 560))
  {
    v1 |= 8u;
    *(result + 336) = v1;
  }

  if (*(result + 568))
  {
    v1 |= 0x10u;
    *(result + 336) = v1;
  }

  if (*(result + 576))
  {
    v1 |= 0x20u;
    *(result + 336) = v1;
  }

  if (*(result + 584))
  {
    v1 |= 0x40u;
    *(result + 336) = v1;
  }

  if (*(result + 592))
  {
    v1 |= 0x80u;
    *(result + 336) = v1;
  }

  if (*(result + 600))
  {
    v1 |= 0x100u;
    *(result + 336) = v1;
  }

  v2 = result + 536;
  v3 = MEMORY[0x29EDC5638];
  v4 = v1;
  do
  {
    v5 = __clz(__rbit32(v4));
    v4 &= ~(1 << v5);
    if (!v4)
    {
      break;
    }

    v6 = *v3;
    v7 = *(*(v2 + 8 * v5) + v6 + 48);
    v8 = v4;
    do
    {
      v9 = __clz(__rbit32(v8));
      v10 = 1 << v9;
      if (v7 == *(*(v2 + 8 * v9) + v6 + 48))
      {
        v1 &= ~v10;
        *(result + 336) = v1;
        v4 &= ~v10;
      }

      v8 &= ~v10;
    }

    while (v8);
  }

  while (v4);
  return result;
}

uint64_t *AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::enumerateExecuteIndirectResources(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v4 = result[107];
  if (v4)
  {
    v11 = *(v4 + 296);
    v5 = *(a2 + 24);
    if (!v5)
    {
      goto LABEL_11;
    }

    result = (*(*v5 + 48))(v5, &v11);
  }

  v6 = v3[139];
  if (v6)
  {
    v11 = *(v6 + 296);
    v7 = *(a2 + 24);
    if (!v7)
    {
      goto LABEL_11;
    }

    result = (*(*v7 + 48))(v7, &v11);
  }

  v8 = v3[147];
  if (!v8)
  {
    return result;
  }

  v11 = *(v8 + 296);
  v9 = *(a2 + 24);
  if (!v9)
  {
LABEL_11:
    v10 = std::__throw_bad_function_call[abi:nn200100]();
    return AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::~ProgramVariantESLState(v10);
  }

  return (*(*v9 + 48))(v9, &v11);
}

uint64_t *AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::~ProgramVariantESLState(uint64_t *a1)
{
  if ((a1[94] & 1) == 0)
  {
    v20 = a1[102];
    if (v20)
    {
      os_unfair_lock_lock((v20 + 16696));
      v21 = *(v20 + 16728);
      v22 = *(v20 + 16736);
      if (v21 != v22)
      {
        while (*v21 != a1 + 95)
        {
          if (++v21 == v22)
          {
            v21 = *(v20 + 16736);
            break;
          }
        }
      }

      v23 = v22 - (v21 + 1);
      if (v22 != v21 + 1)
      {
        memmove(v21, v21 + 1, v22 - (v21 + 1));
      }

      *(v20 + 16736) = v21 + v23;
      os_unfair_lock_unlock((v20 + 16696));
      if (a1[91])
      {
        v24 = a1[92];
        v25 = *(v24 + 16);
        v32 = MEMORY[0x29EDCA5F8];
        v33 = 3221225472;
        v34 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v35 = &__block_descriptor_48_e5_v8__0l;
        v36 = v24;
        v37 = a1 + 88;
        dispatch_sync(v25, &v32);
        *(a1 + 729) = 0u;
        *(a1 + 44) = 0u;
        *(a1 + 45) = 0u;
      }

      if (a1[107])
      {
        v26 = a1[108];
        v27 = *(v26 + 16);
        v32 = MEMORY[0x29EDCA5F8];
        v33 = 3221225472;
        v34 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v35 = &__block_descriptor_48_e5_v8__0l;
        v36 = v26;
        v37 = a1 + 104;
        dispatch_sync(v27, &v32);
        *(a1 + 857) = 0u;
        *(a1 + 52) = 0u;
        *(a1 + 53) = 0u;
      }

      if (a1[139])
      {
        v28 = a1[140];
        v29 = *(v28 + 16);
        v32 = MEMORY[0x29EDCA5F8];
        v33 = 3221225472;
        v34 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v35 = &__block_descriptor_48_e5_v8__0l;
        v36 = v28;
        v37 = a1 + 136;
        dispatch_sync(v29, &v32);
        *(a1 + 1113) = 0u;
        *(a1 + 69) = 0u;
        *(a1 + 68) = 0u;
      }

      if (a1[147])
      {
        v30 = a1[148];
        v31 = *(v30 + 16);
        v32 = MEMORY[0x29EDCA5F8];
        v33 = 3221225472;
        v34 = ___ZN3AGX4HeapILb1EE14deallocateImplERKNS1_10AllocationE_block_invoke;
        v35 = &__block_descriptor_48_e5_v8__0l;
        v36 = v30;
        v37 = a1 + 144;
        dispatch_sync(v31, &v32);
        *(a1 + 1177) = 0u;
        *(a1 + 73) = 0u;
        *(a1 + 72) = 0u;
      }
    }
  }

  v2 = a1[111];
  if (v2)
  {
    v3 = *(v2 + 248);
    if (v3)
    {
      *(v2 + 256) = v3;
      operator delete(v3);
    }

    v4 = *(v2 + 224);
    if (v4)
    {
      *(v2 + 232) = v4;
      operator delete(v4);
    }

    v5 = *(v2 + 24);
    if (v5)
    {
      *(v2 + 32) = v5;
      operator delete(v5);
    }

    v6 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v6;
      operator delete(v6);
    }

    MEMORY[0x29ED520D0](v2, 0x1030C408593E319);
    a1[111] = 0;
  }

  v7 = *a1;
  if (*a1)
  {
    v8 = *(v7 + 248);
    if (v8)
    {
      *(v7 + 256) = v8;
      operator delete(v8);
    }

    v9 = *(v7 + 224);
    if (v9)
    {
      *(v7 + 232) = v9;
      operator delete(v9);
    }

    v10 = *(v7 + 24);
    if (v10)
    {
      *(v7 + 32) = v10;
      operator delete(v10);
    }

    v11 = *v7;
    if (*v7)
    {
      *(v7 + 8) = v11;
      operator delete(v11);
    }

    MEMORY[0x29ED520D0](v7, 0x1030C408593E319);
    *a1 = 0;
  }

  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(a1[161]);
  v12 = a1[157];
  if (v12)
  {
    a1[158] = v12;
    operator delete(v12);
  }

  v13 = a1[99];
  if (v13)
  {
    v14 = a1[100];
    v15 = a1[99];
    if (v14 != v13)
    {
      do
      {
        v16 = *(v14 - 8);
        if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v16->__on_zero_shared)(v16);
          std::__shared_weak_count::__release_weak(v16);
        }

        v14 -= 16;
      }

      while (v14 != v13);
      v15 = a1[99];
    }

    a1[100] = v13;
    operator delete(v15);
  }

  v17 = a1[95];
  if (v17)
  {
    a1[96] = v17;
    operator delete(v17);
  }

  if (*(a1 + 519) < 0)
  {
    operator delete(a1[62]);
    if ((*(a1 + 487) & 0x80000000) == 0)
    {
LABEL_37:
      if ((*(a1 + 463) & 0x80000000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_59;
    }
  }

  else if ((*(a1 + 487) & 0x80000000) == 0)
  {
    goto LABEL_37;
  }

  operator delete(a1[58]);
  if ((*(a1 + 463) & 0x80000000) == 0)
  {
LABEL_38:
    if ((*(a1 + 439) & 0x80000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_60:
    operator delete(a1[52]);
    v18 = a1[47];
    if (!v18)
    {
      return a1;
    }

    goto LABEL_40;
  }

LABEL_59:
  operator delete(a1[55]);
  if (*(a1 + 439) < 0)
  {
    goto LABEL_60;
  }

LABEL_39:
  v18 = a1[47];
  if (v18)
  {
LABEL_40:
    a1[48] = v18;
    operator delete(v18);
  }

  return a1;
}

uint64_t AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserFragmentArgumentTableLayout,true,9ul>::getShaderPassInfoExplicitLIB(int a1, int *a2, int *a3, char *a4)
{
  v4 = *a4;
  v5 = (a3 - *a3);
  v6 = *v5;
  if (v6 < 0xF)
  {
    goto LABEL_15;
  }

  v7 = a1 - 1;
  v8 = a2 - *a2;
  v9 = a2 + *(v8 + 2) + *(a2 + *(v8 + 2));
  v10 = a2 + *(v8 + 3) + *(a2 + *(v8 + 3));
  v11 = v5[7];
  if (v6 >= 0x13)
  {
    v12 = v5[9];
    v13 = v5[8];
    if (v5[7])
    {
      v14 = *(a3 + v11);
      if (v5[9])
      {
        goto LABEL_5;
      }
    }

    else
    {
      v14 = 0;
      if (v5[9])
      {
LABEL_5:
        v15 = *(a3 + v12);
        if (v5[8])
        {
LABEL_6:
          v16 = *(a3 + v13);
          goto LABEL_20;
        }

LABEL_19:
        v16 = 0;
LABEL_20:
        v29 = *(v9 + 4);
        v30 = *(v10 + 4);
        if (v6 < 0x15)
        {
          v31 = 0;
        }

        else
        {
          v31 = v5[10];
          if (v5[10])
          {
            v31 = *(a3 + v31);
          }
        }

        v248 = (v15 & v30 | v14 & v29) != 0;
        v32 = v16 & v29;
        v33 = v31 & v30;
        v34 = (v33 | v32) != 0;
        if (*a4)
        {
          v35 = 1;
        }

        else
        {
          v36 = v32 == v29 && v33 == v30;
          v35 = !v36 && (v33 | v32) != 0;
        }

        if (v5[7])
        {
          v38 = *(a3 + v11);
          if (v5[9])
          {
            goto LABEL_37;
          }
        }

        else
        {
          v38 = 0;
          if (v5[9])
          {
LABEL_37:
            v39 = *(a3 + v12);
            if (v5[8])
            {
LABEL_38:
              v40 = *(a3 + v13);
              goto LABEL_42;
            }

LABEL_41:
            v40 = 0;
LABEL_42:
            v41 = *(v9 + 12);
            v42 = *(v10 + 12);
            if (v6 < 0x15)
            {
              v43 = 0;
            }

            else
            {
              v43 = v5[10];
              if (v5[10])
              {
                v43 = *(a3 + v43);
              }
            }

            v44 = v39 & v42 | v38 & v41;
            v45 = v40 & v41;
            v46 = v43 & v42;
            v47 = v46 | v40 & v41;
            v48 = 1;
            if (v44)
            {
              v49 = 1 << (v7 != 0);
            }

            else
            {
              v49 = 0;
            }

            if (v47)
            {
              v50 = 1 << (v7 != 0);
            }

            else
            {
              v50 = 0;
            }

            if ((v35 & 1) == 0)
            {
              v48 = (v45 != v41 || v46 != v42) && v47 != 0;
            }

            if (v7 >= 2)
            {
              v53 = 2;
            }

            else
            {
              v53 = v7;
            }

            if (v5[7])
            {
              v54 = *(a3 + v11);
              if (v5[9])
              {
                goto LABEL_67;
              }
            }

            else
            {
              v54 = 0;
              if (v5[9])
              {
LABEL_67:
                v55 = *(a3 + v12);
                if (v5[8])
                {
LABEL_68:
                  v56 = *(a3 + v13);
                  goto LABEL_72;
                }

LABEL_71:
                v56 = 0;
LABEL_72:
                v57 = *(v9 + 20);
                v58 = *(v10 + 20);
                if (v6 < 0x15)
                {
                  v59 = 0;
                }

                else
                {
                  v59 = v5[10];
                  if (v5[10])
                  {
                    v59 = *(a3 + v59);
                  }
                }

                v60 = v55 & v58 | v54 & v57;
                v61 = v56 & v57;
                v62 = v59 & v58;
                v63 = v62 | v56 & v57;
                v64 = 1;
                v65 = 1 << v53;
                if (v60)
                {
                  v66 = 1 << v53;
                }

                else
                {
                  v66 = 0;
                }

                if (v63)
                {
                  v67 = v65;
                }

                else
                {
                  v67 = 0;
                }

                if (!v48)
                {
                  v64 = (v61 != v57 || v62 != v58) && v63 != 0;
                }

                if (v7 >= 3)
                {
                  v70 = 3;
                }

                else
                {
                  v70 = v7;
                }

                if (v5[7])
                {
                  v71 = *(a3 + v11);
                  if (v5[9])
                  {
                    goto LABEL_97;
                  }
                }

                else
                {
                  v71 = 0;
                  if (v5[9])
                  {
LABEL_97:
                    v72 = *(a3 + v12);
                    if (v5[8])
                    {
LABEL_98:
                      v73 = *(a3 + v13);
                      goto LABEL_102;
                    }

LABEL_101:
                    v73 = 0;
LABEL_102:
                    v74 = *(v9 + 28);
                    v75 = *(v10 + 28);
                    if (v6 < 0x15)
                    {
                      v76 = 0;
                    }

                    else
                    {
                      v76 = v5[10];
                      if (v5[10])
                      {
                        v76 = *(a3 + v76);
                      }
                    }

                    v77 = v72 & v75 | v71 & v74;
                    v78 = v73 & v74;
                    v79 = v76 & v75;
                    v80 = v79 | v73 & v74;
                    v81 = 1;
                    v82 = 1 << v70;
                    if (v77)
                    {
                      v83 = 1 << v70;
                    }

                    else
                    {
                      v83 = 0;
                    }

                    if (v80)
                    {
                      v84 = v82;
                    }

                    else
                    {
                      v84 = 0;
                    }

                    if (!v64)
                    {
                      v81 = (v78 != v74 || v79 != v75) && v80 != 0;
                    }

                    if (v7 >= 4)
                    {
                      v87 = 4;
                    }

                    else
                    {
                      v87 = v7;
                    }

                    if (v5[7])
                    {
                      v88 = *(a3 + v11);
                      if (v5[9])
                      {
                        goto LABEL_127;
                      }
                    }

                    else
                    {
                      v88 = 0;
                      if (v5[9])
                      {
LABEL_127:
                        v89 = *(a3 + v12);
                        if (v5[8])
                        {
LABEL_128:
                          v90 = *(a3 + v13);
                          goto LABEL_132;
                        }

LABEL_131:
                        v90 = 0;
LABEL_132:
                        v91 = *(v9 + 36);
                        v92 = *(v10 + 36);
                        if (v6 < 0x15)
                        {
                          v93 = 0;
                        }

                        else
                        {
                          v93 = v5[10];
                          if (v5[10])
                          {
                            v93 = *(a3 + v93);
                          }
                        }

                        v94 = v89 & v92 | v88 & v91;
                        v95 = v90 & v91;
                        v96 = v93 & v92;
                        v97 = v96 | v90 & v91;
                        v98 = 1;
                        v99 = 1 << v87;
                        if (v94)
                        {
                          v100 = 1 << v87;
                        }

                        else
                        {
                          v100 = 0;
                        }

                        if (v97)
                        {
                          v101 = v99;
                        }

                        else
                        {
                          v101 = 0;
                        }

                        if (!v81)
                        {
                          v98 = (v95 != v91 || v96 != v92) && v97 != 0;
                        }

                        if (v7 >= 5)
                        {
                          v104 = 5;
                        }

                        else
                        {
                          v104 = v7;
                        }

                        if (v5[7])
                        {
                          v105 = *(a3 + v11);
                          if (v5[9])
                          {
                            goto LABEL_157;
                          }
                        }

                        else
                        {
                          v105 = 0;
                          if (v5[9])
                          {
LABEL_157:
                            v106 = *(a3 + v12);
                            if (v5[8])
                            {
LABEL_158:
                              v107 = *(a3 + v13);
                              goto LABEL_162;
                            }

LABEL_161:
                            v107 = 0;
LABEL_162:
                            v108 = *(v9 + 44);
                            v109 = *(v10 + 44);
                            if (v6 < 0x15)
                            {
                              v110 = 0;
                            }

                            else
                            {
                              v110 = v5[10];
                              if (v5[10])
                              {
                                v110 = *(a3 + v110);
                              }
                            }

                            v111 = v106 & v109 | v105 & v108;
                            v112 = v107 & v108;
                            v113 = v110 & v109;
                            v114 = v113 | v112;
                            v115 = 1;
                            v116 = 1 << v104;
                            if (v111)
                            {
                              v117 = 1 << v104;
                            }

                            else
                            {
                              v117 = 0;
                            }

                            if (v114)
                            {
                              v118 = v116;
                            }

                            else
                            {
                              v118 = 0;
                            }

                            if (!v98)
                            {
                              v115 = (v112 != v108 || v113 != v109) && v114 != 0;
                            }

                            if (v7 >= 6)
                            {
                              v121 = 6;
                            }

                            else
                            {
                              v121 = v7;
                            }

                            if (v5[7])
                            {
                              v122 = *(a3 + v11);
                              if (v5[9])
                              {
                                goto LABEL_187;
                              }
                            }

                            else
                            {
                              v122 = 0;
                              if (v5[9])
                              {
LABEL_187:
                                v123 = *(a3 + v12);
                                if (v5[8])
                                {
LABEL_188:
                                  v124 = *(a3 + v13);
LABEL_192:
                                  v125 = v49 | v248;
                                  v126 = v50 | v34;
                                  v127 = *(v9 + 52);
                                  v128 = *(v10 + 52);
                                  if (v6 < 0x15)
                                  {
                                    v129 = 0;
                                  }

                                  else
                                  {
                                    v129 = v5[10];
                                    if (v5[10])
                                    {
                                      v129 = *(a3 + v129);
                                    }
                                  }

                                  v130 = v66 | v125;
                                  v131 = v67 | v126;
                                  v132 = v123 & v128 | v122 & v127;
                                  v133 = v124 & v127;
                                  v134 = v129 & v128;
                                  v135 = v129 & v128 | v124 & v127;
                                  v136 = 1;
                                  v137 = 1 << v121;
                                  if (v132)
                                  {
                                    v138 = 1 << v121;
                                  }

                                  else
                                  {
                                    v138 = 0;
                                  }

                                  if (!v135)
                                  {
                                    v137 = 0;
                                  }

                                  if (!v115)
                                  {
                                    v136 = (v133 != v127 || v134 != v128) && v135 != 0;
                                  }

                                  if (v7 >= 7)
                                  {
                                    LOBYTE(v7) = 7;
                                  }

                                  if (v5[7])
                                  {
                                    v141 = *(a3 + v11);
                                  }

                                  else
                                  {
                                    v141 = 0;
                                  }

                                  if (v5[9])
                                  {
                                    v142 = *(a3 + v12);
                                  }

                                  else
                                  {
                                    v142 = 0;
                                  }

                                  v143 = v117 | v100 | v83 | v130;
                                  v144 = v118 | v101 | v84 | v131;
                                  if (v5[8])
                                  {
                                    v145 = *(a3 + v13);
                                  }

                                  else
                                  {
                                    v145 = 0;
                                  }

                                  v146 = v138 | v143;
                                  v147 = *(v9 + 60);
                                  v148 = *(v10 + 60);
                                  if (v6 < 0x15)
                                  {
                                    v149 = 0;
                                  }

                                  else
                                  {
                                    v149 = v5[10];
                                    if (v5[10])
                                    {
                                      v149 = *(a3 + v149);
                                    }
                                  }

                                  v150 = v142 & v148 | v141 & v147;
                                  v151 = v145 & v147;
                                  v152 = v149 & v148;
                                  v153 = v149 & v148 | v145 & v147;
                                  v4 = 1;
                                  v154 = 1 << v7;
                                  if (v150)
                                  {
                                    v155 = v154;
                                  }

                                  else
                                  {
                                    v155 = 0;
                                  }

                                  v28 = v155 | v146;
                                  if (!v153)
                                  {
                                    v154 = 0;
                                  }

                                  result = v154 | v137 | v144;
                                  if (!v136)
                                  {
                                    v4 = (v151 != v147 || v152 != v148) && v153 != 0;
                                  }

                                  goto LABEL_16;
                                }

LABEL_191:
                                v124 = 0;
                                goto LABEL_192;
                              }
                            }

                            v123 = 0;
                            if (v5[8])
                            {
                              goto LABEL_188;
                            }

                            goto LABEL_191;
                          }
                        }

                        v106 = 0;
                        if (v5[8])
                        {
                          goto LABEL_158;
                        }

                        goto LABEL_161;
                      }
                    }

                    v89 = 0;
                    if (v5[8])
                    {
                      goto LABEL_128;
                    }

                    goto LABEL_131;
                  }
                }

                v72 = 0;
                if (v5[8])
                {
                  goto LABEL_98;
                }

                goto LABEL_101;
              }
            }

            v55 = 0;
            if (v5[8])
            {
              goto LABEL_68;
            }

            goto LABEL_71;
          }
        }

        v39 = 0;
        if (v5[8])
        {
          goto LABEL_38;
        }

        goto LABEL_41;
      }
    }

    v15 = 0;
    if (v5[8])
    {
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  if (v6 >= 0x11)
  {
    v17 = v5[8];
    if (v11)
    {
      v18 = *(a3 + v11);
      v19 = *(v9 + 4);
      if (v17)
      {
LABEL_10:
        v20 = *(a3 + v17);
        goto LABEL_243;
      }
    }

    else
    {
      v18 = 0;
      v19 = *(v9 + 4);
      if (v17)
      {
        goto LABEL_10;
      }
    }

    v20 = 0;
LABEL_243:
    v158 = (v18 & v19) != 0;
    v159 = v20 & v19;
    v160 = (v20 & v19) != 0;
    v161 = (*a4 & 1) != 0 || (v159 != v19 || *(v10 + 4) != 0) && v159 != 0;
    if (v11)
    {
      v164 = *(a3 + v11);
      v165 = *(v9 + 12);
      if (v17)
      {
LABEL_256:
        v166 = *(a3 + v17);
        goto LABEL_259;
      }
    }

    else
    {
      v164 = 0;
      v165 = *(v9 + 12);
      if (v17)
      {
        goto LABEL_256;
      }
    }

    v166 = 0;
LABEL_259:
    v167 = 1;
    if ((v164 & v165) != 0)
    {
      v168 = 1 << (v7 != 0);
    }

    else
    {
      v168 = 0;
    }

    v169 = v166 & v165;
    if (v169)
    {
      v170 = 1 << (v7 != 0);
    }

    else
    {
      v170 = 0;
    }

    if (!v161)
    {
      v167 = (v169 != v165 || *(v10 + 12) != 0) && v169 != 0;
    }

    if (v7 >= 2)
    {
      v173 = 2;
    }

    else
    {
      v173 = v7;
    }

    if (v11)
    {
      v174 = *(a3 + v11);
      v175 = *(v9 + 20);
      if (v17)
      {
LABEL_280:
        v176 = *(a3 + v17);
        goto LABEL_283;
      }
    }

    else
    {
      v174 = 0;
      v175 = *(v9 + 20);
      if (v17)
      {
        goto LABEL_280;
      }
    }

    v176 = 0;
LABEL_283:
    v177 = 1;
    v178 = 1 << v173;
    if ((v174 & v175) != 0)
    {
      v179 = 1 << v173;
    }

    else
    {
      v179 = 0;
    }

    v180 = v176 & v175;
    if (v180)
    {
      v181 = v178;
    }

    else
    {
      v181 = 0;
    }

    if (!v167)
    {
      v177 = (v180 != v175 || *(v10 + 20) != 0) && v180 != 0;
    }

    if (v7 >= 3)
    {
      v184 = 3;
    }

    else
    {
      v184 = v7;
    }

    if (v11)
    {
      v185 = *(a3 + v11);
      v186 = *(v9 + 28);
      if (v17)
      {
LABEL_304:
        v187 = *(a3 + v17);
        goto LABEL_307;
      }
    }

    else
    {
      v185 = 0;
      v186 = *(v9 + 28);
      if (v17)
      {
        goto LABEL_304;
      }
    }

    v187 = 0;
LABEL_307:
    v188 = 1;
    v189 = 1 << v184;
    if ((v185 & v186) != 0)
    {
      v190 = 1 << v184;
    }

    else
    {
      v190 = 0;
    }

    v191 = v187 & v186;
    if (v191)
    {
      v192 = v189;
    }

    else
    {
      v192 = 0;
    }

    if (!v177)
    {
      v188 = (v191 != v186 || *(v10 + 28) != 0) && v191 != 0;
    }

    if (v7 >= 4)
    {
      v195 = 4;
    }

    else
    {
      v195 = v7;
    }

    if (v11)
    {
      v196 = *(a3 + v11);
      v197 = *(v9 + 36);
      if (v17)
      {
LABEL_328:
        v198 = *(a3 + v17);
        goto LABEL_331;
      }
    }

    else
    {
      v196 = 0;
      v197 = *(v9 + 36);
      if (v17)
      {
        goto LABEL_328;
      }
    }

    v198 = 0;
LABEL_331:
    v199 = 1;
    v200 = 1 << v195;
    if ((v196 & v197) != 0)
    {
      v201 = 1 << v195;
    }

    else
    {
      v201 = 0;
    }

    v202 = v198 & v197;
    if (v202)
    {
      v203 = v200;
    }

    else
    {
      v203 = 0;
    }

    if (!v188)
    {
      v199 = (v202 != v197 || *(v10 + 36) != 0) && v202 != 0;
    }

    if (v7 >= 5)
    {
      v206 = 5;
    }

    else
    {
      v206 = v7;
    }

    if (v11)
    {
      v207 = *(a3 + v11);
      v208 = *(v9 + 44);
      if (v17)
      {
LABEL_352:
        v209 = *(a3 + v17);
LABEL_355:
        v210 = v168 | v158;
        v211 = v170 | v160;
        v212 = 1;
        v213 = 1 << v206;
        if ((v207 & v208) != 0)
        {
          v214 = 1 << v206;
        }

        else
        {
          v214 = 0;
        }

        v215 = v209 & v208;
        if ((v209 & v208) == 0)
        {
          v213 = 0;
        }

        if (!v199)
        {
          v212 = (v215 != v208 || *(v10 + 44) != 0) && v215 != 0;
        }

        v218 = v179 | v210;
        v219 = v181 | v211;
        if (v7 >= 6)
        {
          v220 = 6;
        }

        else
        {
          v220 = v7;
        }

        if (v11)
        {
          v221 = *(a3 + v11);
        }

        else
        {
          v221 = 0;
        }

        v222 = v190 | v218;
        v223 = v192 | v219;
        v224 = *(v9 + 52);
        if (v17)
        {
          v225 = *(a3 + v17);
        }

        else
        {
          v225 = 0;
        }

        v226 = v201 | v222;
        v227 = v203 | v223;
        v228 = 1;
        v229 = 1 << v220;
        if ((v221 & v224) != 0)
        {
          v230 = 1 << v220;
        }

        else
        {
          v230 = 0;
        }

        v231 = v225 & v224;
        if ((v225 & v224) != 0)
        {
          v232 = v229;
        }

        else
        {
          v232 = 0;
        }

        if (!v212)
        {
          v228 = (v231 != v224 || *(v10 + 52) != 0) && v231 != 0;
        }

        v235 = v214 | v226;
        v236 = v213 | v227;
        if (v7 >= 7)
        {
          LOBYTE(v7) = 7;
        }

        if (v11)
        {
          v237 = *(a3 + v11);
        }

        else
        {
          v237 = 0;
        }

        v238 = v230 | v235;
        v239 = v232 | v236;
        v240 = *(v9 + 60);
        if (v17)
        {
          v241 = *(a3 + v17);
        }

        else
        {
          v241 = 0;
        }

        v4 = 1;
        v242 = 1 << v7;
        if ((v237 & v240) != 0)
        {
          v243 = 1 << v7;
        }

        else
        {
          v243 = 0;
        }

        v244 = v241 & v240;
        v36 = (v241 & v240) == 0;
        v28 = v243 | v238;
        if (v36)
        {
          v242 = 0;
        }

        result = v242 | v239;
        if (!v228)
        {
          v245 = *(v10 + 60);
          v4 = (v244 != v240 || v245 != 0) && v244 != 0;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v207 = 0;
      v208 = *(v9 + 44);
      if (v17)
      {
        goto LABEL_352;
      }
    }

    v209 = 0;
    goto LABEL_355;
  }

  if (!v5[7])
  {
LABEL_15:
    result = 0;
    v28 = 0;
    goto LABEL_16;
  }

  result = 0;
  v22 = *(a3 + v11);
  v23 = 1 << (v7 != 0);
  if ((v22 & *(v9 + 12)) == 0)
  {
    v23 = 0;
  }

  v24 = vdupq_n_s32(v7);
  v25 = vdupq_n_s64(v22);
  v26.i64[0] = 0x100000001;
  v26.i64[1] = 0x100000001;
  v27 = vbicq_s8(vshlq_u32(v26, vminq_u32(v24, xmmword_29D2F2160)), vuzp1q_s32(vceqzq_s64(vandq_s8(v25, *(v9 + 20))), vceqzq_s64(vandq_s8(v25, *(v9 + 36)))));
  *v24.i8 = vbic_s8(vshl_u32(0x100000001, vmin_u32(*v24.i8, 0x700000006)), vmovn_s64(vceqzq_s64(vandq_s8(v25, *(v9 + 52)))));
  *v27.i8 = vorr_s8(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
  v28 = v27.i32[0] | v23 | v27.i32[1] | vorr_s8(*v24.i8, vdup_lane_s32(*v24.i8, 1)).u32[0] | ((v22 & *(v9 + 4)) != 0);
LABEL_16:
  *a4 = ((v28 & result) != 0) | v4 & 1;
  return result;
}

uint64_t AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::BackgroundObjectArgumentTable,false,8ul>::getShaderPassInfo(uint64_t result, void *a2, int a3, unsigned int *a4, int *a5, _BYTE *a6, char *a7)
{
  v9 = a2 + 98;
  if (a2[28])
  {
    v10 = a2[29] == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = 28;
  if (v10)
  {
    v11 = 98;
  }

  else
  {
    v9 = a2 + 28;
  }

  v12 = a2[v11];
  v13 = v9[1];
  if (v12)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = (v12 + *v12);
  }

  v16 = (v15 - *v15);
  if (*v16 < 9u)
  {
    return result;
  }

  v17 = v16[4];
  if (!v17)
  {
    return result;
  }

  v18 = (v15 + v17);
  v19 = *v18;
  v20 = a2 + 58;
  if (a2[58])
  {
    v21 = a2[59] == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = 58;
  if (v21)
  {
    v22 = 128;
    v20 = a2 + 128;
  }

  v23 = a2[v22];
  v24 = v20[1];
  if (v23)
  {
    v25 = v24 == 0;
  }

  else
  {
    v25 = 1;
  }

  v26 = !v25;
  if (v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = (v23 + *v23);
  }

  v28 = (v27 - *v27);
  if (*v28 < 0xFu || (v29 = v28[7]) == 0)
  {
    v30 = 0;
    if (!v26)
    {
      goto LABEL_32;
    }

LABEL_34:
    v31 = (v23 + *v23);
    goto LABEL_35;
  }

  v30 = (v27 + v29 + *(v27 + v29));
  if (v26)
  {
    goto LABEL_34;
  }

LABEL_32:
  v31 = 0;
LABEL_35:
  v32 = (v31 - *v31);
  if (*v32 < 9u)
  {
    return result;
  }

  v33 = v32[4];
  if (!v33)
  {
    return result;
  }

  v327[13] = v7;
  v327[14] = v8;
  v34 = (v18 + v19);
  v35 = v31 + v33;
  v36 = *(v31 + v33);
  v322 = v30 && (v37 = (v30 - *v30), *v37 >= 0x1Bu) && (v38 = v37[13]) != 0 && *(v30 + v38) != 0;
  v39 = &v35[v36];
  v40 = (v34 - *v34);
  if (*v40 >= 7u && (v41 = v40[3]) != 0)
  {
    v42 = *(v34 + v41);
    if (!v30)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v42 = 0;
    if (!v30)
    {
      goto LABEL_50;
    }
  }

  v43 = (v30 - *v30);
  if (*v43 >= 0x13u)
  {
    v44 = v43[9];
    if (v44)
    {
      v323 = *(v30 + v44) != 0;
      goto LABEL_51;
    }
  }

LABEL_50:
  v323 = 0;
LABEL_51:
  v45 = &v39[-*v39];
  v46 = *v45;
  if (v46 < 7)
  {
    v47 = 0;
    goto LABEL_56;
  }

  if (!*(v45 + 3))
  {
    v47 = 0;
    if (v46 >= 9)
    {
      goto LABEL_84;
    }

LABEL_56:
    v48 = 0;
    goto LABEL_57;
  }

  v47 = *&v39[*(v45 + 3)];
  if (v46 < 9)
  {
    goto LABEL_56;
  }

LABEL_84:
  v70 = *(v45 + 4);
  if (!v70)
  {
    goto LABEL_56;
  }

  v48 = *&v39[v70];
LABEL_57:
  v49 = a2 + 63;
  v50 = a2[63];
  v54 = 0;
  if (v50)
  {
    v55 = a2 + 133;
    v56 = 63;
    if (a2[64])
    {
      v55 = a2 + 63;
    }

    else
    {
      v56 = 133;
    }

    if (!v55[1])
    {
      goto LABEL_91;
    }

    v57 = a2[v56];
    if (!v57)
    {
      goto LABEL_91;
    }

LABEL_66:
    v58 = (v57 + *v57);
    v59 = (v58 - *v58);
    if (*v59 >= 7u && (v60 = v59[3]) != 0)
    {
      v61 = (v58 + v60 + *(v58 + v60));
    }

    else
    {
      v61 = 0;
    }

    v62 = (v61 - *v61);
    if (*v62 < 9u || !v62[4])
    {
      goto LABEL_90;
    }

    if (v50)
    {
      v63 = a2[64] == 0;
    }

    else
    {
      v63 = 1;
    }

    v64 = 63;
    if (v63)
    {
      v64 = 133;
      v49 = a2 + 133;
    }

    v65 = v49[1] ? a2[v64] : 0;
    v66 = (v65 + *v65);
    v67 = (v66 - *v66);
    if (*v67 >= 7u && (v68 = v67[3]) != 0)
    {
      v69 = (v66 + v68 + *(v66 + v68));
    }

    else
    {
      v69 = 0;
    }

    v71 = (v69 - *v69);
    if (*v71 >= 9u && (v72 = v71[4]) != 0)
    {
      v54 = (v69 + v72 + *(v69 + v72));
    }

    else
    {
LABEL_90:
      v54 = 0;
    }

    goto LABEL_91;
  }

  if (a2[134])
  {
    v57 = a2[133];
    if (v57)
    {
      goto LABEL_66;
    }
  }

LABEL_91:
  v326 = 0;
  v325 = 0;
  v327[0] = _AGCDrawBufferState::isRtFormatUnknown;
  v327[1] = 0;
  v74 = result;
  v327[2] = result;
  result = _AGCDrawBufferState::anyFunction<std::__bind<BOOL (_AGCDrawBufferState::*)(unsigned char)const,_AGCDrawBufferState const*,std::placeholders::__ph<1> const&>>(v327);
  if ((result & 1) == 0)
  {
    result = agxsGetShaderPassInfo((17 - a3), v74, v47, v48, &v325, &v326);
    if (v54)
    {
      v75 = v326;
      v76 = (v34 - *v34);
      v77 = *v76;
      if (v77 < 0xF)
      {
        v88 = 0;
        v89 = 0;
        v86 = a4;
        v78 = a3;
      }

      else
      {
        v78 = a3;
        v79 = a3 - 1;
        v80 = v54 - *v54;
        v81 = v54 + *(v80 + 2) + *(v54 + *(v80 + 2));
        v82 = v54 + *(v80 + 3) + *(v54 + *(v80 + 3));
        v83 = v76[7];
        if (v77 < 0x13)
        {
          v86 = a4;
          if (v77 < 0x11)
          {
            v88 = 0;
            if (v83)
            {
              v94 = *(v34 + v83);
              v95 = 1 << (a3 != 1);
              if ((v94 & *(v81 + 12)) == 0)
              {
                v95 = 0;
              }

              v96 = vdupq_n_s32(v79);
              v97 = vdupq_n_s64(v94);
              v98.i64[0] = 0x100000001;
              v98.i64[1] = 0x100000001;
              v99 = vbicq_s8(vshlq_u32(v98, vminq_u32(v96, xmmword_29D2F2160)), vuzp1q_s32(vceqzq_s64(vandq_s8(v97, *(v81 + 20))), vceqzq_s64(vandq_s8(v97, *(v81 + 36)))));
              *v96.i8 = vbic_s8(vshl_u32(0x100000001, vmin_u32(*v96.i8, 0x700000006)), vmovn_s64(vceqzq_s64(vandq_s8(v97, *(v81 + 52)))));
              *v99.i8 = vorr_s8(*v99.i8, *&vextq_s8(v99, v99, 8uLL));
              v89 = v99.i32[0] | v95 | v99.i32[1] | vorr_s8(*v96.i8, vdup_lane_s32(*v96.i8, 1)).u32[0] | ((v94 & *(v81 + 4)) != 0);
            }

            else
            {
              v89 = 0;
            }
          }

          else
          {
            v92 = v76[8];
            if (v83)
            {
              v93 = *(v34 + v83);
            }

            else
            {
              v93 = 0;
            }

            v224 = *(v81 + 4);
            if (v92)
            {
              v225 = *(v34 + v92);
            }

            else
            {
              v225 = 0;
            }

            v226 = (v93 & v224) != 0;
            v227 = v225 & v224;
            v228 = (v225 & v224) != 0;
            v229 = v326 || (v227 != v224 || *(v82 + 4) != 0) && v227 != 0;
            if (v83)
            {
              v232 = *(v34 + v83);
            }

            else
            {
              v232 = 0;
            }

            v233 = *(v81 + 12);
            if (v92)
            {
              v234 = *(v34 + v92);
            }

            else
            {
              v234 = 0;
            }

            v235 = 1;
            if ((v232 & v233) != 0)
            {
              v236 = 1 << (a3 != 1);
            }

            else
            {
              v236 = 0;
            }

            v237 = v234 & v233;
            if (v237)
            {
              v238 = 1 << (a3 != 1);
            }

            else
            {
              v238 = 0;
            }

            if (!v229)
            {
              v235 = (v237 != v233 || *(v82 + 12) != 0) && v237 != 0;
            }

            if (v79 >= 2)
            {
              v241 = 2;
            }

            else
            {
              v241 = a3 - 1;
            }

            if (v83)
            {
              v242 = *(v34 + v83);
            }

            else
            {
              v242 = 0;
            }

            v243 = *(v81 + 20);
            if (v92)
            {
              v244 = *(v34 + v92);
            }

            else
            {
              v244 = 0;
            }

            v245 = 1;
            v246 = 1 << v241;
            if ((v242 & v243) != 0)
            {
              v247 = 1 << v241;
            }

            else
            {
              v247 = 0;
            }

            v248 = v244 & v243;
            if (v248)
            {
              v249 = v246;
            }

            else
            {
              v249 = 0;
            }

            if (!v235)
            {
              v245 = (v248 != v243 || *(v82 + 20) != 0) && v248 != 0;
            }

            if (v79 >= 3)
            {
              v252 = 3;
            }

            else
            {
              v252 = a3 - 1;
            }

            if (v83)
            {
              v253 = *(v34 + v83);
            }

            else
            {
              v253 = 0;
            }

            v254 = *(v81 + 28);
            if (v92)
            {
              v255 = *(v34 + v92);
            }

            else
            {
              v255 = 0;
            }

            v256 = 1;
            v257 = 1 << v252;
            if ((v253 & v254) != 0)
            {
              v258 = 1 << v252;
            }

            else
            {
              v258 = 0;
            }

            v259 = v255 & v254;
            if (v259)
            {
              v260 = v257;
            }

            else
            {
              v260 = 0;
            }

            if (!v245)
            {
              v256 = (v259 != v254 || *(v82 + 28) != 0) && v259 != 0;
            }

            if (v79 >= 4)
            {
              v263 = 4;
            }

            else
            {
              v263 = a3 - 1;
            }

            if (v83)
            {
              v264 = *(v34 + v83);
            }

            else
            {
              v264 = 0;
            }

            v265 = *(v81 + 36);
            if (v92)
            {
              v266 = *(v34 + v92);
            }

            else
            {
              v266 = 0;
            }

            v267 = 1;
            v268 = 1 << v263;
            if ((v264 & v265) != 0)
            {
              v269 = 1 << v263;
            }

            else
            {
              v269 = 0;
            }

            v270 = v266 & v265;
            if (v270)
            {
              v271 = v268;
            }

            else
            {
              v271 = 0;
            }

            if (!v256)
            {
              v267 = (v270 != v265 || *(v82 + 36) != 0) && v270 != 0;
            }

            if (v79 >= 5)
            {
              v274 = 5;
            }

            else
            {
              v274 = v79;
            }

            if (v83)
            {
              v275 = *(v34 + v83);
            }

            else
            {
              v275 = 0;
            }

            v276 = *(v81 + 44);
            if (v92)
            {
              v277 = *(v34 + v92);
            }

            else
            {
              v277 = 0;
            }

            v278 = v236 | v226;
            v279 = v238 | v228;
            v280 = 1;
            v281 = 1 << v274;
            if ((v275 & v276) != 0)
            {
              v282 = 1 << v274;
            }

            else
            {
              v282 = 0;
            }

            v283 = v277 & v276;
            if ((v277 & v276) == 0)
            {
              v281 = 0;
            }

            if (!v267)
            {
              v280 = (v283 != v276 || *(v82 + 44) != 0) && v283 != 0;
            }

            v286 = v247 | v278;
            v287 = v249 | v279;
            if (v79 >= 6)
            {
              v288 = 6;
            }

            else
            {
              v288 = v79;
            }

            if (v83)
            {
              v289 = *(v34 + v83);
            }

            else
            {
              v289 = 0;
            }

            v290 = v258 | v286;
            v291 = v260 | v287;
            v292 = *(v81 + 52);
            if (v92)
            {
              v293 = *(v34 + v92);
            }

            else
            {
              v293 = 0;
            }

            v294 = v269 | v290;
            v295 = v271 | v291;
            v296 = 1;
            v297 = 1 << v288;
            if ((v289 & v292) != 0)
            {
              v298 = 1 << v288;
            }

            else
            {
              v298 = 0;
            }

            v299 = v293 & v292;
            if ((v293 & v292) != 0)
            {
              v300 = v297;
            }

            else
            {
              v300 = 0;
            }

            if (!v280)
            {
              v296 = (v299 != v292 || *(v82 + 52) != 0) && v299 != 0;
            }

            v303 = v282 | v294;
            v304 = v281 | v295;
            if (v79 >= 7)
            {
              LOBYTE(v79) = 7;
            }

            if (v83)
            {
              v305 = *(v34 + v83);
            }

            else
            {
              v305 = 0;
            }

            result = v298 | v303;
            v306 = v300 | v304;
            v307 = *(v81 + 60);
            if (v92)
            {
              v308 = *(v34 + v92);
            }

            else
            {
              v308 = 0;
            }

            v75 = 1;
            v309 = 1 << v79;
            if ((v305 & v307) != 0)
            {
              v310 = 1 << v79;
            }

            else
            {
              v310 = 0;
            }

            v311 = v308 & v307;
            v10 = (v308 & v307) == 0;
            v89 = v310 | result;
            if (v10)
            {
              v309 = 0;
            }

            v88 = v309 | v306;
            if (!v296)
            {
              v312 = *(v82 + 60);
              v75 = (v311 != v307 || v312 != 0) && v311 != 0;
            }
          }
        }

        else
        {
          v84 = v76[9];
          v85 = v76[8];
          v86 = a4;
          if (v76[7])
          {
            v87 = *(v34 + v83);
          }

          else
          {
            v87 = 0;
          }

          if (v76[9])
          {
            v100 = *(v34 + v84);
          }

          else
          {
            v100 = 0;
          }

          if (v76[8])
          {
            v101 = *(v34 + v85);
          }

          else
          {
            v101 = 0;
          }

          v102 = *(v81 + 4);
          v103 = *(v82 + 4);
          if (v77 < 0x15)
          {
            v104 = 0;
          }

          else
          {
            v104 = v76[10];
            if (v76[10])
            {
              v104 = *(v34 + v104);
            }
          }

          v105 = (v100 & v103 | v87 & v102) != 0;
          v106 = v101 & v102;
          v107 = v104 & v103 | v101 & v102;
          v320 = v107 != 0;
          v321 = v105;
          v108 = v326 || (v106 != v102 || (v104 & v103) != v103) && v107 != 0;
          if (v76[7])
          {
            v111 = *(v34 + v83);
          }

          else
          {
            v111 = 0;
          }

          if (v76[9])
          {
            v112 = *(v34 + v84);
          }

          else
          {
            v112 = 0;
          }

          if (v76[8])
          {
            v113 = *(v34 + v85);
          }

          else
          {
            v113 = 0;
          }

          v114 = *(v81 + 12);
          v115 = *(v82 + 12);
          if (v77 < 0x15)
          {
            v116 = 0;
          }

          else
          {
            v116 = v76[10];
            if (v76[10])
            {
              v116 = *(v34 + v116);
            }
          }

          v117 = v112 & v115 | v111 & v114;
          v118 = v113 & v114;
          v119 = v116 & v115;
          v120 = v119 | v113 & v114;
          v121 = 1;
          if (v117)
          {
            v122 = 1 << (a3 != 1);
          }

          else
          {
            v122 = 0;
          }

          v319 = v122;
          if (v120)
          {
            v123 = 1 << (a3 != 1);
          }

          else
          {
            v123 = 0;
          }

          if (!v108)
          {
            v121 = (v118 != v114 || v119 != v115) && v120 != 0;
          }

          if (v79 >= 2)
          {
            v126 = 2;
          }

          else
          {
            v126 = a3 - 1;
          }

          if (v76[7])
          {
            v127 = *(v34 + v83);
          }

          else
          {
            v127 = 0;
          }

          if (v76[9])
          {
            v128 = *(v34 + v84);
          }

          else
          {
            v128 = 0;
          }

          if (v76[8])
          {
            v129 = *(v34 + v85);
          }

          else
          {
            v129 = 0;
          }

          v130 = *(v81 + 20);
          v131 = *(v82 + 20);
          if (v77 < 0x15)
          {
            v132 = 0;
          }

          else
          {
            v132 = v76[10];
            if (v76[10])
            {
              v132 = *(v34 + v132);
            }
          }

          v133 = v128 & v131 | v127 & v130;
          v134 = v129 & v130;
          v135 = v132 & v131;
          v136 = v132 & v131 | v134;
          v137 = 1;
          v138 = 1 << v126;
          if (v133)
          {
            v139 = v138;
          }

          else
          {
            v139 = 0;
          }

          if (!v136)
          {
            v138 = 0;
          }

          v318 = v138;
          if (!v121)
          {
            v137 = (v134 != v130 || v135 != v131) && v136 != 0;
          }

          if (v79 >= 3)
          {
            v142 = 3;
          }

          else
          {
            v142 = a3 - 1;
          }

          if (v76[7])
          {
            v143 = *(v34 + v83);
          }

          else
          {
            v143 = 0;
          }

          if (v76[9])
          {
            v144 = *(v34 + v84);
          }

          else
          {
            v144 = 0;
          }

          if (v76[8])
          {
            v145 = *(v34 + v85);
          }

          else
          {
            v145 = 0;
          }

          v146 = *(v81 + 28);
          v147 = *(v82 + 28);
          if (v77 < 0x15)
          {
            v148 = 0;
          }

          else
          {
            v148 = v76[10];
            if (v76[10])
            {
              v148 = *(v34 + v148);
            }
          }

          v149 = v144 & v147 | v143 & v146;
          v150 = v145 & v146;
          v151 = v148 & v147;
          v152 = v151 | v145 & v146;
          v153 = 1;
          v154 = 1 << v142;
          if (v149)
          {
            v155 = v154;
          }

          else
          {
            v155 = 0;
          }

          if (!v152)
          {
            v154 = 0;
          }

          v316 = v154;
          v317 = v155;
          if (!v137)
          {
            v153 = (v150 != v146 || v151 != v147) && v152 != 0;
          }

          if (v79 >= 4)
          {
            v158 = 4;
          }

          else
          {
            v158 = a3 - 1;
          }

          if (v76[7])
          {
            v159 = *(v34 + v83);
          }

          else
          {
            v159 = 0;
          }

          if (v76[9])
          {
            v160 = *(v34 + v84);
          }

          else
          {
            v160 = 0;
          }

          if (v76[8])
          {
            v161 = *(v34 + v85);
          }

          else
          {
            v161 = 0;
          }

          v162 = *(v81 + 36);
          v163 = *(v82 + 36);
          if (v77 < 0x15)
          {
            v164 = 0;
          }

          else
          {
            v164 = v76[10];
            if (v76[10])
            {
              v164 = *(v34 + v164);
            }
          }

          v165 = v160 & v163 | v159 & v162;
          v166 = v161 & v162;
          v167 = v164 & v163;
          v168 = v167 | v161 & v162;
          v169 = 1;
          if (v165)
          {
            v170 = 1 << v158;
          }

          else
          {
            v170 = 0;
          }

          v315 = v170;
          if (v168)
          {
            v171 = 1 << v158;
          }

          else
          {
            v171 = 0;
          }

          if (!v153)
          {
            v169 = (v166 != v162 || v167 != v163) && v168 != 0;
          }

          if (v79 >= 5)
          {
            v174 = 5;
          }

          else
          {
            v174 = v79;
          }

          if (v76[7])
          {
            v175 = *(v34 + v83);
          }

          else
          {
            v175 = 0;
          }

          if (v76[9])
          {
            v176 = *(v34 + v84);
          }

          else
          {
            v176 = 0;
          }

          if (v76[8])
          {
            v177 = *(v34 + v85);
          }

          else
          {
            v177 = 0;
          }

          v178 = *(v81 + 44);
          v179 = *(v82 + 44);
          if (v77 < 0x15)
          {
            v180 = 0;
          }

          else
          {
            v180 = v76[10];
            if (v76[10])
            {
              v180 = *(v34 + v180);
            }
          }

          v181 = v176 & v179 | v175 & v178;
          v182 = v177 & v178;
          v183 = v180 & v179;
          v184 = v183 | v177 & v178;
          v185 = 1;
          v186 = 1 << v174;
          if (v181)
          {
            v187 = 1 << v174;
          }

          else
          {
            v187 = 0;
          }

          if (v184)
          {
            v188 = v186;
          }

          else
          {
            v188 = 0;
          }

          if (!v169)
          {
            v185 = (v182 != v178 || v183 != v179) && v184 != 0;
          }

          if (v79 >= 6)
          {
            v191 = 6;
          }

          else
          {
            v191 = v79;
          }

          if (v76[7])
          {
            v192 = *(v34 + v83);
          }

          else
          {
            v192 = 0;
          }

          if (v76[9])
          {
            v193 = *(v34 + v84);
          }

          else
          {
            v193 = 0;
          }

          if (v76[8])
          {
            v194 = *(v34 + v85);
          }

          else
          {
            v194 = 0;
          }

          v195 = v123 | v320;
          v196 = *(v81 + 52);
          v197 = *(v82 + 52);
          if (v77 < 0x15)
          {
            v198 = 0;
          }

          else
          {
            v198 = v76[10];
            if (v76[10])
            {
              v198 = *(v34 + v198);
            }
          }

          v199 = v139 | v319 | v321;
          v200 = v318 | v195;
          v201 = v193 & v197 | v192 & v196;
          v202 = v194 & v196;
          v203 = v198 & v197;
          v204 = v203 | v194 & v196;
          result = 1;
          v205 = 1 << v191;
          if (v201)
          {
            v206 = 1 << v191;
          }

          else
          {
            v206 = 0;
          }

          if (!v204)
          {
            v205 = 0;
          }

          if (!v185)
          {
            result = (v202 != v196 || v203 != v197) && v204 != 0;
          }

          if (v79 >= 7)
          {
            LOBYTE(v79) = 7;
          }

          if (v76[7])
          {
            v209 = *(v34 + v83);
          }

          else
          {
            v209 = 0;
          }

          if (v76[9])
          {
            v210 = *(v34 + v84);
          }

          else
          {
            v210 = 0;
          }

          if (v76[8])
          {
            v211 = *(v34 + v85);
          }

          else
          {
            v211 = 0;
          }

          v212 = v206 | v187 | v315 | v317 | v199;
          v213 = v205 | v188 | v171 | v316 | v200;
          v214 = *(v81 + 60);
          v215 = *(v82 + 60);
          if (v77 < 0x15)
          {
            v216 = 0;
          }

          else
          {
            v216 = v76[10];
            if (v76[10])
            {
              v216 = *(v34 + v216);
            }
          }

          v217 = v210 & v215 | v209 & v214;
          v218 = v216 & v215;
          v219 = v216 & v215 | v211 & v214;
          v75 = 1;
          v220 = 1 << v79;
          if (v217)
          {
            v221 = v220;
          }

          else
          {
            v221 = 0;
          }

          v89 = v221 | v212;
          if (!v219)
          {
            v220 = 0;
          }

          v88 = v220 | v213;
          if ((result & 1) == 0)
          {
            v75 = ((v211 & v214) != v214 || v218 != v215) && v219 != 0;
          }
        }
      }

      v326 = (v89 & v88) != 0 || v75;
    }

    else
    {
      v88 = 0;
      v86 = a4;
      v78 = a3;
    }

    *v86 = (v325 << v78) | v88;
  }

  if ((v42 - 1) >= 2)
  {
    if (v42)
    {
      v90 = 0;
      v91 = 0;
    }

    else
    {
      v91 = 0;
      v90 = v326;
    }
  }

  else
  {
    if (v322 || v326)
    {
      v90 = 3;
    }

    else
    {
      v90 = 2;
    }

    v91 = 1;
  }

  *a5 = v90;
  *a6 = 0;
  *a7 = v91;
  if (v323)
  {
    *a6 = 0;
  }

  return result;
}

void AGX::VertexProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::VertexProgramVariantESLState(uint64_t a1, uint64_t a2, AGCDeserializedReply *a3, const std::string *a4, uint64_t a5, __int128 *a6, uint64_t a7, uint64_t a8, char a9, _BYTE *a10)
{
  v10 = a5;
  v13 = a2;
  v253[5] = *MEMORY[0x29EDCA608];
  v14 = *(a6 + 2);
  v15 = *a6;
  *(a1 + 88) = 0u;
  v16 = a1 + 88;
  v252 = v15;
  *(a1 + 40) = 0u;
  v17 = a1 + 40;
  v253[0] = v14;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0u;
  v18 = (a1 + 528);
  *(a1 + 640) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 480) = 0;
  v230 = a1 + 464;
  v231 = a1 + 416;
  *(a1 + 464) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  v19 = v252;
  *(a1 + 648) = 0u;
  *(a1 + 664) = v19;
  *(a1 + 680) = v253[0];
  v20 = (a1 + 748);
  *(a1 + 784) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 729) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 770) = 0;
  *(a1 + 764) = 0;
  *(a1 + 748) = 0u;
  *(a1 + 808) = a2;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 916) = 107;
  *(a1 + 976) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 976) = 3;
  *(a1 + 972) = 166;
  *(a1 + 1024) = 0u;
  *(a1 + 996) = 0u;
  *(a1 + 1012) = 0u;
  *(a1 + 1024) = 0x3000000A5;
  *(a1 + 1040) = 0u;
  *(a1 + 920) = 0x300000003;
  *(a1 + 936) = 1;
  *(a1 + 1124) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1216) = 0x600000000;
  *(a1 + 1264) = 0;
  *(a1 + 1248) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1272) = a1 + 1280;
  *(a1 + 1296) = -1;
  *(a1 + 1304) = 0;
  *(a1 + 1308) = a9;
  *(a1 + 1309) = 0;
  *(a1 + 1312) = -1;
  *(a1 + 1324) = 0;
  *(a1 + 1316) = 0;
  v21 = *(a5 + 465);
  bzero((a1 + 40), 0x30uLL);
  bzero(v16, 0x30uLL);
  v22 = 0;
  *(v16 + 656) = 0;
  v240 = v16;
  *(v16 + 1223) = 0;
  if (*(a3 + 28))
  {
    v23 = *(a3 + 29) == 0;
  }

  else
  {
    v23 = 1;
  }

  v24 = 224;
  if (v23)
  {
    v24 = 784;
    v25 = a3 + 784;
  }

  else
  {
    v25 = a3 + 224;
  }

  v26 = *(a3 + v24);
  if (v26 && *(v25 + 1))
  {
    v22 = (v26 + *v26);
  }

  v27 = (v22 - *v22);
  if (*v27 >= 5u && (v28 = v27[2]) != 0)
  {
    v239 = (v22 + v28 + *(v22 + v28));
  }

  else
  {
    v239 = 0;
  }

  v29 = 0;
  if (*(a3 + 58))
  {
    v30 = *(a3 + 59) == 0;
  }

  else
  {
    v30 = 1;
  }

  v31 = 464;
  if (v30)
  {
    v31 = 1024;
    v32 = a3 + 1024;
  }

  else
  {
    v32 = a3 + 464;
  }

  v33 = *(a3 + v31);
  if (v33 && *(v32 + 1))
  {
    v29 = (v33 + *v33);
  }

  v34 = (v29 - *v29);
  if (*v34 < 5u)
  {
    v35 = 0;
  }

  else
  {
    v35 = v34[2];
    if (v35)
    {
      v35 = (v35 + v29 + *(v35 + v29));
    }
  }

  v237 = v35;
  v36 = (v35 - *v35);
  if (*v36 < 0x11u)
  {
    LODWORD(v37) = 0;
  }

  else
  {
    v37 = v36[8];
    if (v37)
    {
      LODWORD(v37) = *(v35 + v37);
    }
  }

  *v20 = v37;
  v38 = (v35 - *v35);
  if (*v38 <= 6u)
  {
    LODWORD(v39) = 0;
  }

  else
  {
    v39 = v38[3];
    if (v39)
    {
      LODWORD(v39) = *(v35 + v39);
    }
  }

  *(a1 + 408) = v39;
  v40 = (v35 - *v35);
  if (*v40 >= 0x13u && (v41 = v40[9]) != 0)
  {
    v42 = v35 + v41 + *(v35 + v41) + 4;
  }

  else
  {
    v42 = "";
  }

  v236 = (v16 + 664);
  MEMORY[0x29ED51E00](v231, v42);
  v43 = (v237 - *v237);
  if (*v43 >= 0x51u && (v44 = v43[40]) != 0)
  {
    v45 = v237 + v44 + *(v237 + v44) + 4;
  }

  else
  {
    v45 = "";
  }

  MEMORY[0x29ED51E00](v16 + 408, v45);
  std::string::operator=((v16 + 352), a4);
  v46 = (v237 - *v237);
  if (*v46 >= 9u && (v47 = v46[4]) != 0)
  {
    v48 = v237 + v47 + *(v237 + v47) + 4;
  }

  else
  {
    v48 = "";
  }

  MEMORY[0x29ED51E00](v230, v48);
  v49 = (v237 - *v237);
  if (*v49 < 0x29u)
  {
    LOBYTE(v50) = 0;
  }

  else
  {
    v50 = v49[20];
    if (v50)
    {
      LOBYTE(v50) = *(v237 + v50) != 0;
    }
  }

  *(a1 + 488) = v50;
  v51 = *(a3 + 58);
  if (v51)
  {
    v52 = *(a3 + 59) == 0;
  }

  else
  {
    v52 = 1;
  }

  v53 = 464;
  if (v52)
  {
    v53 = 1024;
  }

  v54 = a3 + 464;
  if (v52)
  {
    v54 = a3 + 1024;
  }

  v55 = *(a3 + v53);
  v56 = *(v54 + 1);
  if (v55)
  {
    v57 = v56 == 0;
  }

  else
  {
    v57 = 1;
  }

  v58 = !v57;
  if (v57)
  {
    v59 = 0;
  }

  else
  {
    v59 = (v55 + *v55);
  }

  v60 = (v59 - *v59);
  if (*v60 >= 7u && v60[3] && (!v58 ? (v61 = 0) : (v61 = (v55 + *v55)), (v62 = (v61 - *v61), *v62 < 7u) || (v63 = v62[3]) == 0 ? (v64 = 0) : (v64 = (v61 + v63 + *(v61 + v63))), (v65 = (v64 - *v64), *v65 >= 0xBu) && (v66 = v65[5]) != 0))
  {
    v67 = *(v64 + v66);
  }

  else
  {
    v67 = 0;
  }

  *(a1 + 600) = v67;
  if (v51)
  {
    v68 = *(a3 + 59) == 0;
  }

  else
  {
    v68 = 1;
  }

  v69 = 464;
  if (v68)
  {
    v69 = 1024;
  }

  v70 = a3 + 464;
  if (v68)
  {
    v70 = a3 + 1024;
  }

  v71 = *(a3 + v69);
  v72 = *(v70 + 1);
  if (v71)
  {
    v73 = v72 == 0;
  }

  else
  {
    v73 = 1;
  }

  v74 = !v73;
  if (v73)
  {
    v75 = 0;
  }

  else
  {
    v75 = (v71 + *v71);
  }

  v76 = (v75 - *v75);
  if (*v76 >= 7u && v76[3] && (!v74 ? (v77 = 0) : (v77 = (v71 + *v71)), (v78 = (v77 - *v77), *v78 < 7u) || (v79 = v78[3]) == 0 ? (v80 = 0) : (v80 = (v77 + v79 + *(v77 + v79))), (v81 = (v80 - *v80), *v81 >= 0xDu) && (v82 = v81[6]) != 0))
  {
    v83 = *(v80 + v82);
  }

  else
  {
    v83 = 0;
  }

  *(a1 + 604) = v83;
  *(a1 + 776) = *(v10 + 465);
  v84 = (v239 - *v239);
  if (*v84 < 0x4Du)
  {
    LODWORD(v85) = 0;
  }

  else
  {
    v85 = v84[38];
    if (v85)
    {
      LODWORD(v85) = *(v239 + v85);
    }
  }

  *(a1 + 400) = v85;
  v86 = (v239 - *v239);
  if (*v86 < 0x53u)
  {
    LODWORD(v87) = 0;
  }

  else
  {
    v87 = v86[41];
    if (v87)
    {
      LODWORD(v87) = *(v239 + v87);
    }
  }

  *(a1 + 404) = v87;
  v88 = (v239 - *v239);
  if (*v88 < 0x43u)
  {
    LODWORD(v89) = 0;
  }

  else
  {
    v89 = v88[33];
    if (v89)
    {
      LODWORD(v89) = *(v239 + v89);
    }
  }

  *(a1 + 608) = v89;
  *(a1 + 612) = 0;
  v90 = (v239 - *v239);
  if (*v90 >= 0x21u && (v91 = v90[16]) != 0)
  {
    v92 = *(v239 + v91);
  }

  else
  {
    v92 = 0;
  }

  {
    getAdditionalSpillBufferBytes(void)::extra = 0;
  }

  *(a1 + 616) = getAdditionalSpillBufferBytes(void)::extra + v92;
  *(a1 + 620) = *(a1 + 608);
  v93 = (v239 - *v239);
  if (*v93 < 5u)
  {
    LODWORD(v94) = 0;
  }

  else
  {
    v94 = v93[2];
    if (v94)
    {
      LODWORD(v94) = *(v239 + v94);
    }
  }

  *(a1 + 624) = v94;
  v95 = (v239 - *v239);
  if (*v95 < 0x51u)
  {
    LODWORD(v96) = 0;
  }

  else
  {
    v96 = v95[40];
    if (v96)
    {
      LODWORD(v96) = *(v239 + v96);
    }
  }

  *(a1 + 628) = v96;
  v97 = (v239 - *v239);
  if (*v97 < 0x4Fu)
  {
    LODWORD(v98) = 0;
  }

  else
  {
    v98 = v97[39];
    if (v98)
    {
      LODWORD(v98) = *(v239 + v98);
    }
  }

  *(a1 + 632) = v98;
  *(a1 + 776) = *(v10 + 465);
  *(a1 + 520) = 0;
  v99 = v239 - *v239;
  v100 = *(v239 + *(v99 + 15) + *(v239 + *(v99 + 15)));
  v101 = *(v99 + 13);
  if (v101)
  {
    LODWORD(v101) = *(v239 + v101);
  }

  v102 = v101;
  v103 = *(v10 + 152);
  if (*(v10 + 416) == 1)
  {
    v104 = vaddq_s64(*(v10 + 240), *(v10 + 216));
    v105 = (vsubq_s64(vdupq_laneq_s64(v104, 1), v104).u64[0] & 0xFFFFFFFFFFFFFFFCLL) + ((*(v10 + 400) + *(v10 + 352) - (*(v10 + 392) + *(v10 + 344))) & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    v105 = 0;
  }

  v106 = (v100 + 31) & 0x1FFFFFFE0;
  if (v101)
  {
    v107 = (v100 + 31) & 0x1FFFFFFE0;
  }

  else
  {
    v107 = v100;
  }

  v246 = v107;
  v108 = v107 + v101;
  if (v103)
  {
    v105 = ((v108 + v105 + 31) & 0xFFFFFFFFFFFFFFE0) - v108;
  }

  v242 = v10;
  v243 = v105;
  v109 = v108 + 8 * v103 + v105;
  v234 = v17;
  v229 = v13;
  if (!v109)
  {
    goto LABEL_224;
  }

  v238 = *(v10 + 152);
  if (a9)
  {
    AGX::Heap<true>::allocateImpl(&v248, v13 + 6832, v109, 0);
    v110 = a1;
    v111 = *(a1 + 1304) + *v249;
    v112 = *v249;
    *(v240 + 1056) = v248;
    *(v240 + 1072) = v112;
    v113 = *&v249[9];
    *(v240 + 1081) = *&v249[9];
    __dst = *(a1 + 1152);
    v233 = *(a1 + 1144) + 0x1000000000;
    *(a1 + 1056) = v233;
  }

  else
  {
    v110 = a1;
    AGX::Heap<true>::allocateImpl(&v248, v13 + 6328, v109, (a1 + 584));
    v111 = *(a1 + 1304) + *v249;
    v114 = *v249;
    *(v240 + 608) = v248;
    *(v240 + 624) = v114;
    v113 = *&v249[9];
    *(v240 + 633) = *&v249[9];
    __dst = *(a1 + 704);
    v233 = *(a1 + 696);
  }

  *(v110 + 1304) = v111;
  v115 = v238;
  if (v100)
  {
    v116 = (v239 - *v239);
    if (*v116 < 0x1Fu)
    {
      v117 = 0;
    }

    else
    {
      v117 = v116[15];
      if (v117)
      {
        v117 += v239 + *(v239 + v117);
      }
    }

    memcpy(__dst, (v117 + 4), v100);
    *(a1 + 640) = v233;
    *(a1 + 648) = __dst;
    *(a1 + 656) = v246;
  }

  if (!v102)
  {
    v150 = v243;
    if (v243)
    {
      goto LABEL_205;
    }

LABEL_207:
    if (!v115)
    {
      goto LABEL_223;
    }

    goto LABEL_208;
  }

  if (a9)
  {
    *(a1 + 1064) = v233 + v106;
  }

  v118 = (v237 - *v237);
  v119 = v239;
  if (*v118 >= 0xBu && (v120 = v118[5]) != 0)
  {
    v121 = v237 + v120 + *(v237 + v120);
  }

  else
  {
    v121 = 0;
  }

  v122 = *(v239 - *v239 + 28);
  v123 = *(v239 + v122);
  if (!*(v239 + v122 + v123))
  {
    v13 = v229;
    v150 = v243;
    if (!v243)
    {
      goto LABEL_207;
    }

    goto LABEL_205;
  }

  v232 = v18;
  v124 = 0;
  v125 = 0;
  v244 = &__dst[v106];
  v126 = v121 + 4;
  v127 = 8;
  if (v21)
  {
    v127 = 24;
  }

  v235 = v127;
  while (1)
  {
    v128 = v122;
    v129 = v122 + v123;
    v130 = *(&v119[v124 + 1] + v129);
    v131 = v129 + v130;
    v132 = &v119[v124] + v129 + v130;
    v133 = *(v132 + 1);
    v134 = &v119[v124] + v131 - v133;
    v135 = *(v134 + 2);
    if (v135 < 5)
    {
      goto LABEL_171;
    }

    v136 = *(v134 + 4);
    if (!v136)
    {
      goto LABEL_171;
    }

    v137 = *(v239 + v128 + v123 + v130 + v124 * 4 + v136 + 4);
    if (v137 != 114)
    {
      if (v137 == 18)
      {
        if (v135 < 9)
        {
          v139 = 0;
        }

        else
        {
          v138 = v128 + v123 + v130;
          v139 = *(&v239[v124 + 3] + v138 - v133);
          if (v139)
          {
            v139 = *(v239 + v138 + v124 * 4 + v139 + 4);
          }
        }

        v142 = &v244[8 * v139];
        bzero(v142, v235);
        v144 = &v239[v124] + v128 + v123 + v130 - *(v132 + 1);
        if (*(v144 + 2) < 7u)
        {
          v145 = 0;
        }

        else
        {
          v145 = *(v144 + 5);
          if (v145)
          {
            v145 = 4 * *(v239 + v128 + v123 + v130 + v124 * 4 + v145 + 4);
          }
        }

        AGX::SamplerDescriptor::SamplerDescriptor(&v248, &v126[v145 + *&v126[v145]], v143);
        AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v247, &v248);
        *v142 = v247;
        if (v251 < 0)
        {
          operator delete(__p);
        }

        *&v248 = v142;
        std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v236, &v248);
      }

      goto LABEL_171;
    }

    if (v135 < 7)
    {
      v141 = 0;
    }

    else
    {
      v140 = v128 + v123 + v130;
      v141 = *(&v239[v124 + 2] + v140 - v133 + 2);
      if (v141)
      {
        v141 = 4 * *(v239 + v140 + v124 * 4 + v141 + 4);
      }
    }

    AGX::SamplerDescriptor::SamplerDescriptor(&v248, &v126[v141 + *&v126[v141]], v113);
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v247, *(a1 + 808), &v248);
    v146 = *(v247 + 96);
    std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](v240 + 696, &v247);
    v147 = &v239[v124] + v128 + v123 + v130 - *(v132 + 1);
    if (*(v147 + 2) < 9u)
    {
      v148 = 0;
    }

    else
    {
      v148 = *(v147 + 6);
      if (v148)
      {
        v148 = *(v239 + v128 + v123 + v130 + v124 * 4 + v148 + 4);
      }
    }

    *&v244[4 * v148] = v146;
    v149 = *(&v247 + 1);
    if (*(&v247 + 1))
    {
      if (!atomic_fetch_add((*(&v247 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        break;
      }
    }

    if (v251 < 0)
    {
      goto LABEL_197;
    }

LABEL_171:
    ++v125;
    v119 = v239;
    v122 = *(v239 - *v239 + 28);
    v123 = *(v239 + v122);
    ++v124;
    if (v125 >= *(v239 + v122 + v123))
    {
      v17 = v234;
      v13 = v229;
      v18 = v232;
      v115 = v238;
      v150 = v243;
      if (!v243)
      {
        goto LABEL_207;
      }

LABEL_205:
      v151 = v242;
      *(a1 + 520) = v108 + v233;
      v152 = &__dst[v246 + v102];
      v153 = *(v242 + 216);
      v154 = *(v242 + 224) - v153;
      *v152 = v154 >> 2;
      *(v152 + 1) = (*(v242 + 248) - *(v242 + 240)) >> 2;
      *(v152 + 2) = (*(v242 + 352) - *(v242 + 344)) >> 1;
      *(v152 + 3) = (*(v242 + 400) - *(v242 + 392)) >> 1;
      memcpy(v152 + 8, v153, v154);
      v155 = &v152[*(v151 + 224) - *(v151 + 216) + 8];
      memcpy(v155, *(v151 + 240), *(v151 + 248) - *(v151 + 240));
      v156 = &v155[*(v151 + 248) - *(v151 + 240)];
      memcpy(v156, *(v151 + 344), *(v151 + 352) - *(v151 + 344));
      memcpy(&v156[*(v151 + 352) - *(v151 + 344)], *(v151 + 392), *(v151 + 400) - *(v151 + 392));
      if (*(v152 + 2))
      {
        if (*(v152 + 3))
        {
          goto LABEL_207;
        }
      }

      else
      {
        *(v152 + 2) = *v152;
        if (*(v152 + 3))
        {
          goto LABEL_207;
        }
      }

      *(v152 + 3) = *(v152 + 1);
      if (!v115)
      {
LABEL_223:
        v10 = v242;
        goto LABEL_224;
      }

LABEL_208:
      *v18 = &__dst[v246 + v102 + v150];
      v157 = (v237 - *v237);
      v10 = v242;
      if (*v157 >= 0xBu && (v158 = v157[5]) != 0)
      {
        v159 = (v237 + v158 + *(v237 + v158));
        if (!a9)
        {
LABEL_214:
          if (v159 && *v159)
          {
            v160 = 0;
            v161 = 1;
            do
            {
              v162 = (*v18 + 8 * (((v161 * 4) - 4) & 0xFFFFFFFC));
              AGX::SamplerDescriptor::SamplerDescriptor(&v248, (&v159[v161] + v159[v161]), v113);
              AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v247, &v248);
              *v162 = v247;
              if (v251 < 0)
              {
                operator delete(__p);
              }

              *&v248 = v162;
              std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v236, &v248);
              ++v160;
              ++v161;
            }

            while (v160 < *v159);
            goto LABEL_223;
          }

LABEL_224:
          AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerConstantSamplerList(v13, v236);
          v163 = (v239 - *v239);
          v164 = v163[8];
          v165 = *(v239 + v164);
          v166 = (v239 + v164 + v165);
          v167 = *v166;
          if (v167)
          {
            v168 = 0;
            v169 = 4 * v167;
            v170 = v239 + v164 + v165;
            do
            {
              v175 = v166[v168 / 4 + 1];
              v176 = &v170[v168 + v175 - *(&v166[v168 / 4 + 1] + v175)];
              if (*(v176 + 2) < 7u)
              {
                LODWORD(v171) = 0;
              }

              else
              {
                v171 = *(v176 + 5);
                if (v171)
                {
                  v177 = *&v170[v168 + 4 + v175 + v171];
                  LODWORD(v171) = v177;
                  if ((v177 & 0x80000000) != 0)
                  {
                    *(v240 + 8 * ((v177 & 0x7C000000) != 0)) |= 1 << (v177 >> 20);
                    v172 = 0x11800000000000;
                    v174 = v240;
                    goto LABEL_228;
                  }
                }
              }

              v172 = 1 << v171;
              v173 = 8 * ((v171 & 0xFFFC0) != 0);
              *(a1 + 56 + v173) |= v172;
              v174 = (a1 + 104 + v173);
LABEL_228:
              *v174 |= v172;
              v168 += 4;
            }

            while (v169 != v168);
          }

          v178 = v163[10];
          v179 = *(v239 + v178);
          v180 = (v239 + v178 + v179);
          v181 = *v180;
          if (v181)
          {
            v182 = 0;
            v183 = 4 * v181;
            v184 = v239 + v178 + v179;
            do
            {
              v189 = v180[v182 / 4 + 1];
              v190 = &v184[v182 + v189 - *(&v180[v182 / 4 + 1] + v189)];
              if (*(v190 + 2) < 7u)
              {
                LODWORD(v185) = 0;
              }

              else
              {
                v185 = *(v190 + 5);
                if (v185)
                {
                  v191 = *&v184[v182 + 4 + v189 + v185];
                  LODWORD(v185) = v191;
                  if ((v191 & 0x80000000) != 0)
                  {
                    *(v240 + 8 * ((v191 & 0x7C000000) != 0)) |= 1 << (v191 >> 20);
                    v186 = 0x10000000000000;
                    v188 = v240;
                    goto LABEL_237;
                  }
                }
              }

              v186 = 1 << v185;
              v187 = 8 * ((v185 & 0xFFFC0) != 0);
              *(a1 + 72 + v187) |= v186;
              v188 = (a1 + 120 + v187);
LABEL_237:
              *v188 |= v186;
              v182 += 4;
            }

            while (v183 != v182);
          }

          v192 = v163[6];
          v193 = *(v239 + v192);
          v194 = (v239 + v192 + v193);
          v195 = *v194;
          if (v195)
          {
            v196 = 0;
            v197 = 4 * v195;
            v198 = v239 + v192 + v193;
            do
            {
              v202 = v194[v196 / 4 + 1];
              v203 = &v198[v196 + v202 - *(&v194[v196 / 4 + 1] + v202)];
              if (*(v203 + 2) < 7u)
              {
                LODWORD(v199) = 0;
              }

              else
              {
                v199 = *(v203 + 5);
                if (v199)
                {
                  v199 = *&v198[v196 + 4 + v202 + v199];
                  if ((v199 & 0x80000000) != 0)
                  {
                    v200 = 1 << (v199 >> 20);
                    v201 = (v199 & 0x7C000000) != 0;
                    goto LABEL_246;
                  }

                  LODWORD(v199) = v199 & 0xFFFFF;
                  if (v199 <= 0x35 && ((1 << v199) & 0x26000000000000) != 0)
                  {
                    goto LABEL_247;
                  }
                }
              }

              v200 = 1 << v199;
              v201 = v199 > 0x3F;
              *(v17 + 8 * v201) |= v200;
LABEL_246:
              *(v240 + 8 * v201) |= v200;
LABEL_247:
              v196 += 4;
            }

            while (v197 != v196);
          }

          v205 = *(v10 + 160);
          if (*&v205 != 0)
          {
            *(a1 + 56) = vorrq_s8(*(a1 + 56), v205);
            *(a1 + 104) = vorrq_s8(*(a1 + 104), v205);
          }

          v206 = *(v10 + 192);
          if (*&v206 != 0)
          {
            *(a1 + 72) = vorrq_s8(*(a1 + 72), v206);
            *(a1 + 120) = vorrq_s8(*(a1 + 120), v206);
          }

          v207 = v163[12];
          v208 = *(v239 + v207);
          v209 = (v239 + v207 + v208);
          v210 = *v209;
          if (!v210)
          {
LABEL_299:
            if ((*(a1 + 1311) & 1) == 0)
            {
              *(a1 + 200) = *(v10 + 424);
              *(a1 + 248) = *(v10 + 440);
              *(v240 + 224) = vorrq_s8(*(v10 + 440), *(v10 + 424));
            }

            operator new();
          }

          v211 = 0;
          v212 = a1 + 136;
          v213 = 4 * v210;
          v214 = v239 + v207 + v208;
          while (2)
          {
            v217 = *&v214[v211 + 4];
            v218 = v217 - *(&v209[v211 / 4 + 1] + v217);
            v219 = &v214[v211 + v218];
            v220 = *(v219 + 2);
            if (v220 < 7)
            {
              if (v220 >= 5)
              {
                goto LABEL_271;
              }
            }

            else
            {
              v221 = *(v219 + 5);
              if (v221)
              {
                v222 = *&v214[v211 + 4 + v217 + v221];
                goto LABEL_272;
              }

LABEL_271:
              v222 = 0;
LABEL_272:
              v223 = *&v214[v211 + 8 + v218];
              if (v223)
              {
                v224 = v214[v211 + 4 + v217 + v223];
                v216 = (a1 + 184);
                v215 = 1;
                switch(v214[v211 + 4 + v217 + v223])
                {
                  case 11:
                  case 12:
                  case 13:
                  case 16:
                  case 17:
                  case 62:
                  case 93:
                  case 97:
                  case 98:
                  case 113:
                    if ((v222 & 0x80000000) != 0)
                    {
                      v215 = 1 << (v222 >> 20);
                      v216 = (v240 + 8 * ((v222 & 0x7C000000) != 0));
                      goto LABEL_265;
                    }

                    if ((v222 & 0x7FF00000) != 0x400000)
                    {
                      if (v224 == 113 || v224 == 98)
                      {
                        v226 = 32;
                      }

                      else
                      {
                        v226 = 16;
                      }

                      v227 = 8 * ((v222 & 0xFFFC0) != 0);
                      v215 = 1 << v222;
                      *(v212 + v226 + v227) |= 1 << v222;
                      v216 = (v240 + v227 + v226);
LABEL_265:
                      *v216 |= v215;
                    }

                    break;
                  case 24:
                    v216 = (a1 + 184);
                    v215 = 4;
                    goto LABEL_265;
                  case 25:
                    v216 = (a1 + 184);
                    v215 = 8;
                    goto LABEL_265;
                  case 27:
                    goto LABEL_265;
                  case 28:
                    v216 = (a1 + 184);
                    v215 = 2;
                    goto LABEL_265;
                  case 59:
                    v216 = (a1 + 184);
                    v215 = 16;
                    goto LABEL_265;
                  case 60:
                  case 61:
                    v216 = (a1 + 184);
                    v215 = 32;
                    goto LABEL_265;
                  case 75:
                    v216 = (a1 + 184);
                    v215 = 64;
                    goto LABEL_265;
                  case 84:
                  case 85:
                    v216 = (a1 + 184);
                    v215 = 128;
                    goto LABEL_265;
                  case 108:
                    v216 = (a1 + 184);
                    v215 = 256;
                    goto LABEL_265;
                  case 109:
                  case 110:
                    v215 = 1 << v222;
                    v228 = 8 * ((v222 & 0xFFFC0) != 0);
                    *(v212 + v228) |= 1 << v222;
                    goto LABEL_290;
                  case 111:
                    v216 = (a1 + 184);
                    v215 = 512;
                    goto LABEL_265;
                  case 112:
                    v216 = (a1 + 184);
                    v215 = 1024;
                    goto LABEL_265;
                  case 118:
                    v216 = (a1 + 184);
                    v215 = 2048;
                    goto LABEL_265;
                  case 119:
                    v216 = (a1 + 184);
                    v215 = 4096;
                    goto LABEL_265;
                  case 120:
                    v216 = (a1 + 184);
                    v215 = 0x2000;
                    goto LABEL_265;
                  case -117:
                    v215 = 1 << v222;
                    v228 = 8 * ((v222 & 0xFFFC0) != 0);
                    *(v17 + v228) |= 1 << v222;
LABEL_290:
                    v216 = (v240 + v228);
                    goto LABEL_265;
                  default:
                    break;
                }
              }
            }

            v211 += 4;
            if (v213 == v211)
            {
              goto LABEL_299;
            }

            continue;
          }
        }
      }

      else
      {
        v159 = 0;
        if (!a9)
        {
          goto LABEL_214;
        }
      }

      *(a1 + 1072) = v108 + v150 + v233;
      goto LABEL_214;
    }
  }

  (v149->__on_zero_shared)(v149);
  std::__shared_weak_count::__release_weak(v149);
  if ((v251 & 0x80000000) == 0)
  {
    goto LABEL_171;
  }

LABEL_197:
  operator delete(__p);
  goto LABEL_171;
}

void sub_29CE2275C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(&a65);
  if (__p)
  {
    operator delete(__p);
  }

  if (a47)
  {
    operator delete(a47);
  }

  std::unordered_map<std::string,objc_object  {objcproto11MTLFunction}*>::~unordered_map[abi:nn200100](a46);
  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(a41);
  _Unwind_Resume(a1);
}

void sub_29CE228E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void **a21, void **a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void **a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *__p, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::~EslBuilder(&a65);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(a51);
  if (__p)
  {
    operator delete(__p);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::ExecuteIndirectState::~ExecuteIndirectState(a15);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((a40 + 696));
  v66 = *a36;
  if (*a36)
  {
    *(a41 + 760) = v66;
    operator delete(v66);
  }

  if (*(a41 + 519) < 0)
  {
    operator delete(*(a40 + 408));
  }

  if (*(a41 + 487) < 0)
  {
    operator delete(*a21);
  }

  if (*(a41 + 463) < 0)
  {
    operator delete(*(a40 + 352));
  }

  if (*(a41 + 439) < 0)
  {
    operator delete(*a22);
  }

  v67 = *(a40 + 288);
  if (v67)
  {
    *(a41 + 384) = v67;
    operator delete(v67);
  }

  _Unwind_Resume(a1);
}

void std::vector<DriverEIOffset>::__append(uint64_t a1, unint64_t a2, unsigned int *a3)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (a2 <= (v5 - v4) >> 2)
  {
    v10 = &v4[a2];
    v11 = *a3;
    v12 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
    if (v12 >= 7)
    {
      v13 = v12 + 1;
      v14 = vdupq_n_s32(v11);
      v15 = (v4 + 4);
      v16 = v13 & 0x7FFFFFFFFFFFFFF8;
      do
      {
        v15[-1] = v14;
        *v15 = v14;
        v15 += 2;
        v16 -= 8;
      }

      while (v16);
      if (v13 == (v13 & 0x7FFFFFFFFFFFFFF8))
      {
        goto LABEL_17;
      }

      v4 += v13 & 0x7FFFFFFFFFFFFFF8;
    }

    do
    {
      *v4++ = v11;
    }

    while (v4 != v10);
LABEL_17:
    *(a1 + 8) = v10;
    return;
  }

  v6 = (v4 - *a1) >> 2;
  v7 = v6 + a2;
  if ((v6 + a2) >> 62)
  {
    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v8 = v5 - *a1;
  if (v8 >> 1 > v7)
  {
    v7 = v8 >> 1;
  }

  if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v9 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    if (!(v9 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:nn200100]();
  }

  v17 = 4 * v6;
  v18 = 4 * v6 + 4 * a2;
  v19 = *a3;
  v20 = (a2 - 1) & 0x3FFFFFFFFFFFFFFFLL;
  v21 = (4 * v6);
  if (v20 < 7)
  {
    goto LABEL_23;
  }

  v22 = (v20 + 1) & 0x7FFFFFFFFFFFFFF8;
  v23 = vdupq_n_s32(v19);
  v24 = (v17 + 16);
  v25 = v22;
  do
  {
    v24[-1] = v23;
    *v24 = v23;
    v24 += 2;
    v25 -= 8;
  }

  while (v25);
  if (v20 + 1 != v22)
  {
    v21 = (v17 + 4 * v22);
    do
    {
LABEL_23:
      *v21++ = v19;
    }

    while (v21 != v18);
  }

  v26 = *a1;
  v27 = *(a1 + 8) - *a1;
  v28 = v17 - v27;
  memcpy((v17 - v27), *a1, v27);
  *a1 = v28;
  *(a1 + 8) = v18;
  *(a1 + 16) = 0;
  if (v26)
  {

    operator delete(v26);
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<std::string,unsigned int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,unsigned int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,unsigned int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,unsigned int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(void *a1, uint64_t a2, __int128 **a3)
{
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
    v6 = *(a2 + 8);
  }

  v7 = std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:nn200100](v5, v6);
  v8 = v7;
  v9 = a1[1];
  if (!*&v9)
  {
    goto LABEL_41;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = v7;
    if (v7 >= *&v9)
    {
      v11 = v7 % *&v9;
    }
  }

  else
  {
    v11 = (*&v9 - 1) & v7;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_41:
    operator new();
  }

  if (v10.u32[0] < 2uLL)
  {
    while (1)
    {
      v14 = v13[1];
      if (v14 == v8)
      {
        v15 = *(v13 + 39);
        v16 = v15;
        if (v15 < 0)
        {
          v15 = v13[3];
        }

        if (v15 == v6)
        {
          v17 = v16 >= 0 ? (v13 + 2) : v13[2];
          if (!memcmp(v17, v5, v6))
          {
            return v13;
          }
        }
      }

      else if ((v14 & (*&v9 - 1)) != v11)
      {
        goto LABEL_41;
      }

      v13 = *v13;
      if (!v13)
      {
        goto LABEL_41;
      }
    }
  }

  while (1)
  {
    v18 = v13[1];
    if (v18 == v8)
    {
      break;
    }

    if (v18 >= *&v9)
    {
      v18 %= *&v9;
    }

    if (v18 != v11)
    {
      goto LABEL_41;
    }

LABEL_29:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_41;
    }
  }

  v19 = *(v13 + 39);
  v20 = v19;
  if (v19 < 0)
  {
    v19 = v13[3];
  }

  if (v19 != v6)
  {
    goto LABEL_29;
  }

  v21 = v20 >= 0 ? (v13 + 2) : v13[2];
  if (memcmp(v21, v5, v6))
  {
    goto LABEL_29;
  }

  return v13;
}

void sub_29CE23134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,unsigned int>,void *>>>>::~unique_ptr[abi:nn200100](va);
  _Unwind_Resume(a1);
}

unint64_t AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupExecuteIndirectESL<false>(AGCDeserializedReply const&,AGX::HAL300::IndirectArgumentLayout const* const*,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,std::vector<DriverEIOffset> const&,BOOL,AGX::HAL300::HeapSet &,LoadShaderEmitType)::{lambda(unsigned int,unsigned int)#1}::operator()(char a1, int a2, uint64_t a3, unsigned int a4)
{
  if (a3 >= 0x23)
  {
    if (a1)
    {
      if (a3 <= 57)
      {
        if (a3 > 36)
        {
          if (a3 == 37)
          {
            a3 = 2;
            a4 = 4;
            return a4 | (a3 << 35);
          }

          if (a3 != 40)
          {
            if (a3 != 56)
            {
              goto LABEL_54;
            }

            goto LABEL_49;
          }

          goto LABEL_33;
        }

        if (a3 != 35)
        {
          if (a3 == 36)
          {
            a3 = 2;
            goto LABEL_58;
          }

          goto LABEL_54;
        }

LABEL_46:
        a3 = 1;
        goto LABEL_58;
      }

      if (a3 > 62)
      {
        if (a3 != 63)
        {
          if (a3 != 67)
          {
            if (a3 != 68)
            {
              goto LABEL_54;
            }

            goto LABEL_44;
          }

LABEL_55:
          a3 = 4;
          goto LABEL_58;
        }

        goto LABEL_40;
      }

      if (a3 != 58)
      {
        if (a3 != 62)
        {
          goto LABEL_54;
        }

LABEL_45:
        a3 = 2;
        a4 = 8;
        return a4 | (a3 << 35);
      }

LABEL_48:
      a3 = 1;
      a4 = 8;
      return a4 | (a3 << 35);
    }

    if (a2 == 7)
    {
      if (a3 <= 60)
      {
        if (a3 <= 58)
        {
          if (a3 == 35)
          {
            a3 = 9;
            goto LABEL_58;
          }

          if (a3 == 36)
          {
            a3 = 10;
LABEL_58:
            a4 = 2;
            return a4 | (a3 << 35);
          }

LABEL_54:
          a4 = 4;
          a3 = (a3 - 35);
          return a4 | (a3 << 35);
        }

        if (a3 != 59)
        {
          goto LABEL_48;
        }

LABEL_49:
        a3 = 0;
        a4 = 8;
        return a4 | (a3 << 35);
      }

      if (a3 <= 64)
      {
        if (a3 != 61)
        {
          if (a3 != 62)
          {
            goto LABEL_54;
          }

          goto LABEL_50;
        }

LABEL_40:
        a3 = 0;
        return a4 | (a3 << 35);
      }
    }

    else
    {
      if (a3 <= 58)
      {
        if (a3 > 43)
        {
          if (a3 != 44)
          {
            if (a3 == 45)
            {
              a4 = 2;
              a3 = 2;
              return a4 | (a3 << 35);
            }

            if (a3 != 46)
            {
              goto LABEL_54;
            }

LABEL_33:
            a3 = 3;
            goto LABEL_58;
          }

          goto LABEL_46;
        }

        if (a3 != 39)
        {
          if (a3 == 41)
          {
            a3 = 5;
            goto LABEL_58;
          }

          goto LABEL_54;
        }

        goto LABEL_55;
      }

      if (a3 <= 61)
      {
        if (a3 == 59)
        {
          goto LABEL_49;
        }

        if (a3 == 60)
        {
          goto LABEL_48;
        }

        goto LABEL_40;
      }

      if (a3 == 62)
      {
LABEL_50:
        a3 = 7;
        goto LABEL_58;
      }
    }

    if (a3 != 65)
    {
      if (a3 != 67)
      {
        goto LABEL_54;
      }

LABEL_44:
      a3 = 0;
      goto LABEL_58;
    }

    goto LABEL_45;
  }

  return a4 | (a3 << 35);
}

__n128 std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),BOOL>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupExecuteIndirectESL<false>(AGCDeserializedReply const&,AGX::HAL300::IndirectArgumentLayout const* const*,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,std::vector<DriverEIOffset> const&,BOOL,AGX::HAL300::HeapSet &,LoadShaderEmitType)::UniformData *,false>(unint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v9 = a2 - 3;
  v10 = a2 - 6;
  v11 = a2 - 9;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = a2 - v12;
    v14 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v12) >> 4);
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
      if (a2[-1].n128_u64[0] >= *(v12 + 32))
      {
        return result;
      }

LABEL_112:
      *v253 = *(v12 + 16);
      *&v253[16] = *(v12 + 32);
      v220 = *v12;
      v120 = *v9;
      v121 = a2[-2];
      *(v12 + 28) = *(a2 - 20);
      *v12 = v120;
      *(v12 + 16) = v121;
      result = v220;
      v122 = *v253;
LABEL_113:
      *(a2 - 20) = *&v253[12];
      *v9 = result;
      a2[-2] = v122;
      return result;
    }

LABEL_9:
    if (v13 <= 1151)
    {
      v126 = (v12 + 48);
      v128 = v12 == a2 || v126 == a2;
      if (a4)
      {
        if (!v128)
        {
          v129 = 0;
          v130 = v12;
          do
          {
            v132 = v126;
            v133 = *(v130 + 80);
            if (v133 < *(v130 + 32))
            {
              v222 = *v132;
              v255 = v132[1];
              v134 = *(v130 + 88);
              v135 = v129;
              do
              {
                v136 = (v12 + v135);
                v137 = *(v12 + v135 + 16);
                v136[3] = *(v12 + v135);
                v136[4] = v137;
                *(v136 + 76) = *(v12 + v135 + 28);
                if (!v135)
                {
                  v131 = v12;
                  goto LABEL_127;
                }

                v135 -= 48;
              }

              while (v133 < *(v136 - 2));
              v131 = v12 + v135 + 48;
LABEL_127:
              result = v222;
              *v131 = v222;
              *(v131 + 16) = v255;
              *(v131 + 32) = v133;
              *(v131 + 40) = v134;
            }

            v126 = v132 + 3;
            v129 += 48;
            v130 = v132;
          }

          while (&v132[3] != a2);
        }
      }

      else if (!v128)
      {
        do
        {
          v185 = v126;
          v186 = *(a1 + 80);
          if (v186 < *(a1 + 32))
          {
            v226 = *v126;
            v261 = v126[1];
            v187 = *(a1 + 88);
            v188 = v185;
            do
            {
              v189 = v188[-2];
              *v188 = v188[-3];
              v188[1] = v189;
              *(v188 + 28) = *(v188 - 20);
              v190 = v188[-4].n128_u64[0];
              v188 -= 3;
            }

            while (v186 < v190);
            result = v226;
            *v188 = v226;
            v188[1] = v261;
            v188[2].n128_u64[0] = v186;
            v188[2].n128_u32[2] = v187;
          }

          v126 = v185 + 3;
          a1 = v185;
        }

        while (&v185[3] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v138 = (v14 - 2) >> 1;
        v139 = v138;
        do
        {
          if (v138 >= v139)
          {
            v141 = (2 * (v139 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
            v142 = v12 + 48 * v141;
            if (2 * v139 + 2 < v14)
            {
              v143 = *(v142 + 32);
              v144 = *(v142 + 80);
              v145 = v143 >= v144;
              v146 = v143 >= v144 ? 0 : 48;
              v142 += v146;
              if (!v145)
              {
                v141 = 2 * v139 + 2;
              }
            }

            v147 = v12 + 48 * v139;
            v148 = *(v147 + 32);
            if (*(v142 + 32) >= v148)
            {
              v223 = *v147;
              v256 = *(v147 + 16);
              v149 = *(v147 + 40);
              do
              {
                v150 = v147;
                v147 = v142;
                v151 = *v142;
                v152 = *(v142 + 16);
                *(v150 + 28) = *(v142 + 28);
                *v150 = v151;
                v150[1] = v152;
                if (v138 < v141)
                {
                  break;
                }

                v153 = (2 * v141) | 1;
                v142 = v12 + 48 * v153;
                v154 = 2 * v141 + 2;
                if (v154 < v14)
                {
                  v155 = *(v142 + 32);
                  v156 = *(v142 + 80);
                  v157 = v155 >= v156;
                  v158 = v155 >= v156 ? 0 : 48;
                  v142 += v158;
                  if (!v157)
                  {
                    v153 = v154;
                  }
                }

                v141 = v153;
              }

              while (*(v142 + 32) >= v148);
              *v147 = v223;
              *(v147 + 16) = v256;
              *(v147 + 32) = v148;
              *(v147 + 40) = v149;
            }
          }

          v140 = v139-- <= 0;
        }

        while (!v140);
        v159 = 0xAAAAAAAAAAAAAAABLL * (v13 >> 4);
        do
        {
          v160 = 0;
          *v257 = *(v12 + 16);
          *&v257[16] = *(v12 + 32);
          v224 = *v12;
          v161 = v12;
          do
          {
            v168 = &v161[3 * v160];
            v165 = v168 + 3;
            v169 = (2 * v160) | 1;
            v160 = 2 * v160 + 2;
            if (v160 < v159)
            {
              v162 = v168[5].n128_u64[0];
              v163 = v168[8].n128_u64[0];
              v164 = v168 + 6;
              if (v162 >= v163)
              {
                v160 = v169;
              }

              else
              {
                v165 = v164;
              }
            }

            else
            {
              v160 = v169;
            }

            v166 = *v165;
            v167 = v165[1];
            *(v161 + 28) = *(&v165[1] + 12);
            *v161 = v166;
            v161[1] = v167;
            v161 = v165;
          }

          while (v160 <= ((v159 - 2) >> 1));
          a2 -= 3;
          if (v165 == a2)
          {
            result = v224;
            *(v165 + 28) = *&v257[12];
            *v165 = v224;
            v165[1] = *v257;
          }

          else
          {
            v170 = *a2;
            v171 = a2[1];
            *(v165 + 28) = *(a2 + 28);
            *v165 = v170;
            v165[1] = v171;
            result = v224;
            *(a2 + 28) = *&v257[12];
            *a2 = v224;
            a2[1] = *v257;
            v172 = &v165[3] - v12;
            if (v172 >= 49)
            {
              v173 = (-2 - 0x5555555555555555 * (v172 >> 4)) >> 1;
              v174 = v12 + 48 * v173;
              v175 = v165[2].n128_u64[0];
              if (*(v174 + 32) < v175)
              {
                v269 = *v165;
                v272 = v165[1];
                v176 = v165[2].n128_i32[2];
                do
                {
                  v177 = v165;
                  v165 = v174;
                  v178 = *v174;
                  v179 = *(v174 + 16);
                  *(v177 + 28) = *(v174 + 28);
                  *v177 = v178;
                  v177[1] = v179;
                  if (!v173)
                  {
                    break;
                  }

                  v173 = (v173 - 1) >> 1;
                  v174 = v12 + 48 * v173;
                }

                while (*(v174 + 32) < v175);
                result = v269;
                *v165 = v269;
                v165[1] = v272;
                v165[2].n128_u64[0] = v175;
                v165[2].n128_u32[2] = v176;
              }
            }
          }

          v140 = v159-- <= 2;
        }

        while (!v140);
      }

      return result;
    }

    v15 = v14 >> 1;
    v16 = v12 + 48 * (v14 >> 1);
    v17 = a2[-1].n128_u64[0];
    if (v13 < 0x1801)
    {
      v21 = *(v12 + 32);
      if (v21 < *(v16 + 32))
      {
        if (v17 < v21)
        {
          *v231 = *(v16 + 16);
          *&v231[16] = *(v16 + 32);
          v203 = *v16;
          v22 = *v9;
          v23 = a2[-2];
          *(v16 + 28) = *(a2 - 20);
          *v16 = v22;
          *(v16 + 16) = v23;
          goto LABEL_36;
        }

        *v240 = *(v16 + 16);
        *&v240[16] = *(v16 + 32);
        v210 = *v16;
        v49 = *v12;
        v50 = *(v12 + 16);
        *(v16 + 28) = *(v12 + 28);
        *v16 = v49;
        *(v16 + 16) = v50;
        *(v12 + 28) = *&v240[12];
        *v12 = v210;
        *(v12 + 16) = *v240;
        if (a2[-1].n128_u64[0] < *(v12 + 32))
        {
          *v231 = *(v12 + 16);
          *&v231[16] = *(v12 + 32);
          v203 = *v12;
          v51 = *v9;
          v52 = a2[-2];
          *(v12 + 28) = *(a2 - 20);
          *v12 = v51;
          *(v12 + 16) = v52;
LABEL_36:
          *(a2 - 20) = *&v231[12];
          *v9 = v203;
          a2[-2] = *v231;
        }

LABEL_37:
        --a3;
        if ((a4 & 1) == 0)
        {
          goto LABEL_61;
        }

        goto LABEL_38;
      }

      if (v17 >= v21)
      {
        goto LABEL_37;
      }

      *v234 = *(v12 + 16);
      *&v234[16] = *(v12 + 32);
      v206 = *v12;
      v28 = *v9;
      v29 = a2[-2];
      *(v12 + 28) = *(a2 - 20);
      *v12 = v28;
      *(v12 + 16) = v29;
      *(a2 - 20) = *&v234[12];
      *v9 = v206;
      a2[-2] = *v234;
      if (*(v12 + 32) >= *(v16 + 32))
      {
        goto LABEL_37;
      }

      *v235 = *(v16 + 16);
      *&v235[16] = *(v16 + 32);
      v207 = *v16;
      v30 = *v12;
      v31 = *(v12 + 16);
      *(v16 + 28) = *(v12 + 28);
      *v16 = v30;
      *(v16 + 16) = v31;
      *(v12 + 28) = *&v235[12];
      *v12 = v207;
      *(v12 + 16) = *v235;
      --a3;
      if (a4)
      {
        goto LABEL_38;
      }

LABEL_61:
      v53 = *(v12 + 32);
      if (*(v12 - 16) < v53)
      {
        goto LABEL_62;
      }

      v268 = *v12;
      v271 = *(v12 + 16);
      if (v53 >= a2[-1].n128_u64[0])
      {
        v105 = v12 + 48;
        do
        {
          v12 = v105;
          if (v105 >= a2)
          {
            break;
          }

          v106 = *(v105 + 32);
          v105 += 48;
        }

        while (v53 >= v106);
      }

      else
      {
        v103 = v12;
        do
        {
          v12 = v103 + 48;
          v104 = *(v103 + 80);
          v103 += 48;
        }

        while (v53 >= v104);
      }

      v107 = a2;
      if (v12 < a2)
      {
        v108 = a2;
        do
        {
          v107 = v108 - 3;
          v109 = v108[-1].n128_u64[0];
          v108 -= 3;
        }

        while (v53 < v109);
      }

      v110 = *(a1 + 40);
      while (v12 < v107)
      {
        *v252 = *(v12 + 16);
        *&v252[16] = *(v12 + 32);
        v219 = *v12;
        v111 = *v107;
        v112 = v107[1];
        *(v12 + 28) = *(v107 + 28);
        *v12 = v111;
        *(v12 + 16) = v112;
        *(v107 + 28) = *&v252[12];
        *v107 = v219;
        v107[1] = *v252;
        do
        {
          v113 = *(v12 + 80);
          v12 += 48;
        }

        while (v53 >= v113);
        do
        {
          v114 = v107[-1].n128_u64[0];
          v107 -= 3;
        }

        while (v53 < v114);
      }

      v115 = (v12 - 48);
      if (v12 - 48 != a1)
      {
        v116 = *v115;
        v117 = *(v12 - 32);
        *(a1 + 28) = *(v12 - 20);
        *a1 = v116;
        *(a1 + 16) = v117;
      }

      a4 = 0;
      result = v268;
      *v115 = v268;
      *(v12 - 32) = v271;
      *(v12 - 16) = v53;
      *(v12 - 8) = v110;
    }

    else
    {
      v18 = *(v16 + 32);
      if (v18 >= *(v12 + 32))
      {
        if (v17 < v18)
        {
          *v232 = *(v16 + 16);
          *&v232[16] = *(v16 + 32);
          v204 = *v16;
          v24 = *v9;
          v25 = a2[-2];
          *(v16 + 28) = *(a2 - 20);
          *v16 = v24;
          *(v16 + 16) = v25;
          *(a2 - 20) = *&v232[12];
          *v9 = v204;
          a2[-2] = *v232;
          if (*(v16 + 32) < *(v12 + 32))
          {
            *v233 = *(v12 + 16);
            *&v233[16] = *(v12 + 32);
            v205 = *v12;
            v26 = *v16;
            v27 = *(v16 + 16);
            *(v12 + 28) = *(v16 + 28);
            *v12 = v26;
            *(v12 + 16) = v27;
            *(v16 + 28) = *&v233[12];
            *v16 = v205;
            *(v16 + 16) = *v233;
          }
        }
      }

      else
      {
        if (v17 >= v18)
        {
          *v236 = *(v12 + 16);
          *&v236[16] = *(v12 + 32);
          v208 = *v12;
          v32 = *v16;
          v33 = *(v16 + 16);
          *(v12 + 28) = *(v16 + 28);
          *v12 = v32;
          *(v12 + 16) = v33;
          *(v16 + 28) = *&v236[12];
          *v16 = v208;
          *(v16 + 16) = *v236;
          if (a2[-1].n128_u64[0] >= *(v16 + 32))
          {
            goto LABEL_28;
          }

          *v230 = *(v16 + 16);
          *&v230[16] = *(v16 + 32);
          v202 = *v16;
          v34 = *v9;
          v35 = a2[-2];
          *(v16 + 28) = *(a2 - 20);
          *v16 = v34;
          *(v16 + 16) = v35;
        }

        else
        {
          *v230 = *(v12 + 16);
          *&v230[16] = *(v12 + 32);
          v202 = *v12;
          v19 = *v9;
          v20 = a2[-2];
          *(v12 + 28) = *(a2 - 20);
          *v12 = v19;
          *(v12 + 16) = v20;
        }

        *(a2 - 20) = *&v230[12];
        *v9 = v202;
        a2[-2] = *v230;
      }

LABEL_28:
      v36 = v12 + 48 * v15;
      v37 = v36 - 48;
      v38 = *(v36 - 16);
      v39 = a2[-4].n128_u64[0];
      if (v38 >= *(v12 + 80))
      {
        if (v39 < v38)
        {
          *v238 = *(v37 + 16);
          *&v238[16] = *(v37 + 32);
          v209 = *v37;
          v44 = *v10;
          v45 = a2[-5];
          *(v37 + 28) = *(a2 - 68);
          *v37 = v44;
          *(v37 + 16) = v45;
          *(a2 - 68) = *&v238[12];
          *v10 = v209;
          a2[-5] = *v238;
          if (*(v37 + 32) < *(v12 + 80))
          {
            *v239 = *(v12 + 64);
            *&v239[16] = *(v12 + 80);
            v46 = *(v12 + 48);
            v48 = *v37;
            v47 = *(v37 + 16);
            *(v12 + 76) = *(v37 + 28);
            *(v12 + 48) = v48;
            *(v12 + 64) = v47;
            *(v37 + 28) = *&v239[12];
            *v37 = v46;
            *(v37 + 16) = *v239;
          }
        }
      }

      else
      {
        if (v39 >= v38)
        {
          *v241 = *(v12 + 64);
          *&v241[16] = *(v12 + 80);
          v54 = *(v12 + 48);
          v56 = *v37;
          v55 = *(v37 + 16);
          *(v12 + 76) = *(v37 + 28);
          *(v12 + 48) = v56;
          *(v12 + 64) = v55;
          *(v37 + 28) = *&v241[12];
          *v37 = v54;
          *(v37 + 16) = *v241;
          if (a2[-4].n128_u64[0] >= *(v37 + 32))
          {
            goto LABEL_42;
          }

          *v237 = *(v37 + 16);
          *&v237[16] = *(v37 + 32);
          v211 = *v37;
          v57 = *v10;
          v58 = a2[-5];
          *(v37 + 28) = *(a2 - 68);
          *v37 = v57;
          *(v37 + 16) = v58;
          v41 = v211;
          v40 = *v237;
        }

        else
        {
          v40 = *(v12 + 64);
          *&v237[12] = v40.n128_u32[3];
          *&v237[16] = *(v12 + 80);
          v41 = *(v12 + 48);
          v43 = *v10;
          v42 = a2[-5];
          *(v12 + 76) = *(a2 - 68);
          *(v12 + 48) = v43;
          *(v12 + 64) = v42;
        }

        *(a2 - 68) = *&v237[12];
        *v10 = v41;
        a2[-5] = v40;
      }

LABEL_42:
      v59 = v12 + 48 * v15;
      v60 = *(v59 + 80);
      v61 = a2[-7].n128_u64[0];
      if (v60 >= *(v12 + 128))
      {
        if (v61 < v60)
        {
          *v243 = *(v59 + 64);
          *&v243[16] = *(v59 + 80);
          v212 = *(v59 + 48);
          v66 = *v11;
          v67 = a2[-8];
          *(v59 + 76) = *(a2 - 116);
          *(v59 + 48) = v66;
          *(v59 + 64) = v67;
          *(a2 - 116) = *&v243[12];
          *v11 = v212;
          a2[-8] = *v243;
          if (*(v59 + 80) < *(v12 + 128))
          {
            *v244 = *(v12 + 112);
            *&v244[16] = *(v12 + 128);
            v68 = *(v12 + 96);
            v70 = *(v59 + 48);
            v69 = *(v59 + 64);
            *(v12 + 124) = *(v59 + 76);
            *(v12 + 96) = v70;
            *(v12 + 112) = v69;
            *(v59 + 76) = *&v244[12];
            *(v59 + 48) = v68;
            *(v59 + 64) = *v244;
          }
        }
      }

      else
      {
        if (v61 >= v60)
        {
          *v245 = *(v12 + 112);
          *&v245[16] = *(v12 + 128);
          v71 = *(v12 + 96);
          v73 = *(v59 + 48);
          v72 = *(v59 + 64);
          *(v12 + 124) = *(v59 + 76);
          *(v12 + 96) = v73;
          *(v12 + 112) = v72;
          *(v59 + 76) = *&v245[12];
          *(v59 + 48) = v71;
          *(v59 + 64) = *v245;
          if (a2[-7].n128_u64[0] >= *(v59 + 80))
          {
            goto LABEL_51;
          }

          *v242 = *(v59 + 64);
          *&v242[16] = *(v59 + 80);
          v213 = *(v59 + 48);
          v74 = *v11;
          v75 = a2[-8];
          *(v59 + 76) = *(a2 - 116);
          *(v59 + 48) = v74;
          *(v59 + 64) = v75;
          v63 = v213;
          v62 = *v242;
        }

        else
        {
          v62 = *(v12 + 112);
          *&v242[12] = v62.n128_u32[3];
          *&v242[16] = *(v12 + 128);
          v63 = *(v12 + 96);
          v65 = *v11;
          v64 = a2[-8];
          *(v12 + 124) = *(a2 - 116);
          *(v12 + 96) = v65;
          *(v12 + 112) = v64;
        }

        *(a2 - 116) = *&v242[12];
        *v11 = v63;
        a2[-8] = v62;
      }

LABEL_51:
      v76 = *(v16 + 32);
      v77 = *(v59 + 80);
      if (v76 >= *(v37 + 32))
      {
        if (v77 < v76)
        {
          *v247 = *(v16 + 16);
          *&v247[16] = *(v16 + 32);
          v215 = *v16;
          v79 = *(v59 + 64);
          *v16 = *(v59 + 48);
          *(v16 + 16) = v79;
          *(v16 + 28) = *(v59 + 76);
          *(v59 + 76) = *&v247[12];
          *(v59 + 48) = v215;
          *(v59 + 64) = *v247;
          if (*(v16 + 32) < *(v37 + 32))
          {
            *v248 = *(v37 + 16);
            *&v248[16] = *(v37 + 32);
            v216 = *v37;
            v80 = *(v16 + 16);
            *v37 = *v16;
            *(v37 + 16) = v80;
            *(v37 + 28) = *(v16 + 28);
            *(v16 + 28) = *&v248[12];
            *v16 = v216;
            *(v16 + 16) = *v248;
          }
        }
      }

      else
      {
        if (v77 >= v76)
        {
          *v249 = *(v37 + 16);
          *&v249[16] = *(v37 + 32);
          v217 = *v37;
          v81 = *(v16 + 16);
          *v37 = *v16;
          *(v37 + 16) = v81;
          *(v37 + 28) = *(v16 + 28);
          *(v16 + 28) = *&v249[12];
          *v16 = v217;
          *(v16 + 16) = *v249;
          if (*(v59 + 80) >= *(v16 + 32))
          {
            goto LABEL_60;
          }

          *v246 = *(v16 + 16);
          *&v246[16] = *(v16 + 32);
          v214 = *v16;
          v82 = *(v59 + 64);
          *v16 = *(v59 + 48);
          *(v16 + 16) = v82;
          *(v16 + 28) = *(v59 + 76);
        }

        else
        {
          *v246 = *(v37 + 16);
          *&v246[16] = *(v37 + 32);
          v214 = *v37;
          v78 = *(v59 + 64);
          *v37 = *(v59 + 48);
          *(v37 + 16) = v78;
          *(v37 + 28) = *(v59 + 76);
        }

        *(v59 + 76) = *&v246[12];
        *(v59 + 48) = v214;
        *(v59 + 64) = *v246;
      }

LABEL_60:
      *v250 = *(v12 + 16);
      *&v250[16] = *(v12 + 32);
      v218 = *v12;
      v83 = *v16;
      v84 = *(v16 + 16);
      *(v12 + 28) = *(v16 + 28);
      *v12 = v83;
      *(v12 + 16) = v84;
      *(v16 + 28) = *&v250[12];
      *v16 = v218;
      *(v16 + 16) = *v250;
      --a3;
      if ((a4 & 1) == 0)
      {
        goto LABEL_61;
      }

LABEL_38:
      v53 = *(v12 + 32);
LABEL_62:
      v267 = *v12;
      v270 = *(v12 + 16);
      v85 = *(v12 + 40);
      v86 = v12;
      do
      {
        v87 = v86;
        v86 += 48;
      }

      while (*(v87 + 80) < v53);
      v88 = a2;
      if (v87 == v12)
      {
        v91 = a2;
        while (v86 < v91)
        {
          v89 = v91 - 3;
          v92 = v91[-1].n128_u64[0];
          v91 -= 3;
          if (v92 < v53)
          {
            goto LABEL_72;
          }
        }

        v89 = v91;
      }

      else
      {
        do
        {
          v89 = v88 - 3;
          v90 = v88[-1].n128_u64[0];
          v88 -= 3;
        }

        while (v90 >= v53);
      }

LABEL_72:
      v12 = v86;
      if (v86 < v89)
      {
        v93 = v89;
        do
        {
          *v251 = *(v12 + 16);
          *&v251[16] = *(v12 + 32);
          v94 = *v12;
          v96 = *v93;
          v95 = v93[1];
          *(v12 + 28) = *(v93 + 28);
          *v12 = v96;
          *(v12 + 16) = v95;
          *(v93 + 28) = *&v251[12];
          *v93 = v94;
          v93[1] = *v251;
          do
          {
            v97 = *(v12 + 80);
            v12 += 48;
          }

          while (v97 < v53);
          do
          {
            v98 = v93[-1].n128_u64[0];
            v93 -= 3;
          }

          while (v98 >= v53);
        }

        while (v12 < v93);
      }

      v99 = (v12 - 48);
      if (v12 - 48 != a1)
      {
        v100 = *v99;
        v101 = *(v12 - 32);
        *(a1 + 28) = *(v12 - 20);
        *a1 = v100;
        *(a1 + 16) = v101;
      }

      result = v267;
      *v99 = v267;
      *(v12 - 32) = v270;
      *(v12 - 16) = v53;
      *(v12 - 8) = v85;
      if (v86 < v89)
      {
        goto LABEL_83;
      }

      v102 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),BOOL>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupExecuteIndirectESL<false>(AGCDeserializedReply const&,AGX::HAL300::IndirectArgumentLayout const* const*,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,std::vector<DriverEIOffset> const&,BOOL,AGX::HAL300::HeapSet &,LoadShaderEmitType)::UniformData *>(a1, (v12 - 48));
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),BOOL>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupExecuteIndirectESL<false>(AGCDeserializedReply const&,AGX::HAL300::IndirectArgumentLayout const* const*,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,std::vector<DriverEIOffset> const&,BOOL,AGX::HAL300::HeapSet &,LoadShaderEmitType)::UniformData *>(v12, a2))
      {
        a2 = (v12 - 48);
        if (!v102)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v102)
      {
LABEL_83:
        result.n128_u64[0] = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),BOOL>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupExecuteIndirectESL<false>(AGCDeserializedReply const&,AGX::HAL300::IndirectArgumentLayout const* const*,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,std::vector<DriverEIOffset> const&,BOOL,AGX::HAL300::HeapSet &,LoadShaderEmitType)::UniformData *,false>(a1, (v12 - 48), a3, a4 & 1, result).n128_u64[0];
        a4 = 0;
      }
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      v123 = *(v12 + 80);
      v124 = *(v12 + 128);
      if (v123 >= *(v12 + 32))
      {
        if (v124 < v123)
        {
          v182 = *(v12 + 48);
          *v259 = *(v12 + 64);
          *&v259[16] = *(v12 + 80);
          v183 = *(v12 + 112);
          *(v12 + 48) = *(v12 + 96);
          *(v12 + 64) = v183;
          *(v12 + 76) = *(v12 + 124);
          *(v12 + 96) = v182;
          *(v12 + 112) = *v259;
          result = *&v259[12];
          *(v12 + 124) = *&v259[12];
          if (*(v12 + 80) < *(v12 + 32))
          {
            *v260 = *(v12 + 16);
            *&v260[16] = *(v12 + 32);
            v225 = *v12;
            v184 = *(v12 + 64);
            *v12 = *(v12 + 48);
            *(v12 + 16) = v184;
            *(v12 + 28) = *(v12 + 76);
            *(v12 + 48) = v225;
            *(v12 + 64) = *v260;
            result = *&v260[12];
            *(v12 + 76) = *&v260[12];
          }
        }
      }

      else
      {
        if (v124 < v123)
        {
          *v254 = *(v12 + 16);
          *&v254[16] = *(v12 + 32);
          v221 = *v12;
          v125 = *(v12 + 112);
          *v12 = *(v12 + 96);
          *(v12 + 16) = v125;
          *(v12 + 28) = *(v12 + 124);
          *(v12 + 96) = v221;
          *(v12 + 112) = *v254;
          goto LABEL_189;
        }

        *v263 = *(v12 + 16);
        *&v263[16] = *(v12 + 32);
        v228 = *v12;
        v194 = *(v12 + 64);
        *v12 = *(v12 + 48);
        *(v12 + 16) = v194;
        *(v12 + 28) = *(v12 + 76);
        *(v12 + 48) = v228;
        *(v12 + 64) = *v263;
        result = *&v263[12];
        *(v12 + 76) = *&v263[12];
        if (v124 < *(v12 + 80))
        {
          v195 = *(v12 + 48);
          *v254 = *(v12 + 64);
          *&v254[16] = *(v12 + 80);
          v196 = *(v12 + 112);
          *(v12 + 48) = *(v12 + 96);
          *(v12 + 64) = v196;
          *(v12 + 76) = *(v12 + 124);
          *(v12 + 96) = v195;
          *(v12 + 112) = *v254;
LABEL_189:
          result = *&v254[12];
          *(v12 + 124) = *&v254[12];
        }
      }

      if (a2[-1].n128_u64[0] >= *(v12 + 128))
      {
        return result;
      }

      *v264 = *(v12 + 112);
      *&v264[16] = *(v12 + 128);
      result = *(v12 + 96);
      v198 = *v9;
      v197 = a2[-2];
      *(v12 + 124) = *(a2 - 20);
      *(v12 + 96) = v198;
      *(v12 + 112) = v197;
      *(a2 - 20) = *&v264[12];
      *v9 = result;
      a2[-2] = *v264;
      if (*(v12 + 128) >= *(v12 + 80))
      {
        return result;
      }

      v199 = *(v12 + 48);
      *v265 = *(v12 + 64);
      *&v265[16] = *(v12 + 80);
      v200 = *(v12 + 112);
      *(v12 + 48) = *(v12 + 96);
      *(v12 + 64) = v200;
      *(v12 + 76) = *(v12 + 124);
      *(v12 + 96) = v199;
      *(v12 + 112) = *v265;
      result = *&v265[12];
      *(v12 + 124) = *&v265[12];
LABEL_193:
      if (*(v12 + 80) < *(v12 + 32))
      {
        *v266 = *(v12 + 16);
        *&v266[16] = *(v12 + 32);
        v229 = *v12;
        v201 = *(v12 + 64);
        *v12 = *(v12 + 48);
        *(v12 + 16) = v201;
        *(v12 + 28) = *(v12 + 76);
        *(v12 + 48) = v229;
        *(v12 + 64) = *v266;
        result = *&v266[12];
        *(v12 + 76) = *&v266[12];
      }

      return result;
    }

    if (v14 == 5)
    {

      result.n128_u64[0] = std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),BOOL>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupExecuteIndirectESL<false>(AGCDeserializedReply const&,AGX::HAL300::IndirectArgumentLayout const* const*,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,std::vector<DriverEIOffset> const&,BOOL,AGX::HAL300::HeapSet &,LoadShaderEmitType)::UniformData *,0>(v12, (v12 + 48), (v12 + 96), (v12 + 144), &a2[-3]).n128_u64[0];
      return result;
    }

    goto LABEL_9;
  }

  v118 = *(v12 + 80);
  v119 = a2[-1].n128_u64[0];
  if (v118 >= *(v12 + 32))
  {
    if (v119 >= v118)
    {
      return result;
    }

    *v258 = *(v12 + 64);
    *&v258[16] = *(v12 + 80);
    result = *(v12 + 48);
    v181 = *v9;
    v180 = a2[-2];
    *(v12 + 76) = *(a2 - 20);
    *(v12 + 48) = v181;
    *(v12 + 64) = v180;
    *(a2 - 20) = *&v258[12];
    *v9 = result;
    a2[-2] = *v258;
    goto LABEL_193;
  }

  if (v119 < v118)
  {
    goto LABEL_112;
  }

  *v262 = *(v12 + 16);
  *&v262[16] = *(v12 + 32);
  v227 = *v12;
  v191 = *(v12 + 64);
  *v12 = *(v12 + 48);
  *(v12 + 16) = v191;
  *(v12 + 28) = *(v12 + 76);
  *(v12 + 48) = v227;
  *(v12 + 64) = *v262;
  result = *&v262[12];
  *(v12 + 76) = *&v262[12];
  if (a2[-1].n128_u64[0] < *(v12 + 80))
  {
    v122 = *(v12 + 64);
    *&v253[12] = v122.n128_u32[3];
    *&v253[16] = *(v12 + 80);
    result = *(v12 + 48);
    v193 = *v9;
    v192 = a2[-2];
    *(v12 + 76) = *(a2 - 20);
    *(v12 + 48) = v193;
    *(v12 + 64) = v192;
    goto LABEL_113;
  }

  return result;
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),BOOL>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupExecuteIndirectESL<false>(AGCDeserializedReply const&,AGX::HAL300::IndirectArgumentLayout const* const*,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,std::vector<DriverEIOffset> const&,BOOL,AGX::HAL300::HeapSet &,LoadShaderEmitType)::UniformData *,0>(__int128 *a1, __int128 *a2, __int128 *a3, __int128 *a4, __int128 *a5)
{
  v5 = *(a2 + 4);
  v6 = *(a3 + 4);
  if (v5 >= *(a1 + 4))
  {
    if (v6 < v5)
    {
      v11 = *a2;
      *v44 = a2[1];
      *&v44[16] = a2[2];
      v12 = *(a3 + 28);
      v13 = a3[1];
      *a2 = *a3;
      a2[1] = v13;
      *(a2 + 28) = v12;
      *a3 = v11;
      a3[1] = *v44;
      result = *&v44[12];
      *(a3 + 28) = *&v44[12];
      if (*(a2 + 4) < *(a1 + 4))
      {
        v15 = *a1;
        *v45 = a1[1];
        *&v45[16] = a1[2];
        v16 = *(a2 + 28);
        v17 = a2[1];
        *a1 = *a2;
        a1[1] = v17;
        *(a1 + 28) = v16;
        *a2 = v15;
        a2[1] = *v45;
        result = *&v45[12];
        *(a2 + 28) = *&v45[12];
      }
    }
  }

  else
  {
    if (v6 < v5)
    {
      v7 = a1[1];
      v8 = *a1;
      *v54 = HIDWORD(v7);
      *&v54[4] = a1[2];
      v9 = *(a3 + 28);
      v10 = a3[1];
      *a1 = *a3;
      a1[1] = v10;
      *(a1 + 28) = v9;
LABEL_9:
      *a3 = v8;
      a3[1] = v7;
      result = *v54;
      *(a3 + 28) = *v54;
      goto LABEL_10;
    }

    v18 = *a1;
    *v46 = a1[1];
    *&v46[16] = a1[2];
    v19 = *(a2 + 28);
    v20 = a2[1];
    *a1 = *a2;
    a1[1] = v20;
    *(a1 + 28) = v19;
    *a2 = v18;
    a2[1] = *v46;
    result = *&v46[12];
    *(a2 + 28) = *&v46[12];
    if (*(a3 + 4) < *(a2 + 4))
    {
      v7 = a2[1];
      v8 = *a2;
      *v54 = HIDWORD(v7);
      *&v54[4] = a2[2];
      v21 = *(a3 + 28);
      v22 = a3[1];
      *a2 = *a3;
      a2[1] = v22;
      *(a2 + 28) = v21;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*(a4 + 4) < *(a3 + 4))
  {
    v23 = *a3;
    *v47 = a3[1];
    *&v47[16] = a3[2];
    v24 = *(a4 + 28);
    v25 = a4[1];
    *a3 = *a4;
    a3[1] = v25;
    *(a3 + 28) = v24;
    *a4 = v23;
    a4[1] = *v47;
    result = *&v47[12];
    *(a4 + 28) = *&v47[12];
    if (*(a3 + 4) < *(a2 + 4))
    {
      v26 = *a2;
      *v48 = a2[1];
      *&v48[16] = a2[2];
      v27 = *(a3 + 28);
      v28 = a3[1];
      *a2 = *a3;
      a2[1] = v28;
      *(a2 + 28) = v27;
      *a3 = v26;
      a3[1] = *v48;
      result = *&v48[12];
      *(a3 + 28) = *&v48[12];
      if (*(a2 + 4) < *(a1 + 4))
      {
        v29 = *a1;
        *v49 = a1[1];
        *&v49[16] = a1[2];
        v30 = *(a2 + 28);
        v31 = a2[1];
        *a1 = *a2;
        a1[1] = v31;
        *(a1 + 28) = v30;
        *a2 = v29;
        a2[1] = *v49;
        result = *&v49[12];
        *(a2 + 28) = *&v49[12];
      }
    }
  }

  if (*(a5 + 4) < *(a4 + 4))
  {
    v32 = *a4;
    *v50 = a4[1];
    *&v50[16] = a4[2];
    v33 = *(a5 + 28);
    v34 = a5[1];
    *a4 = *a5;
    a4[1] = v34;
    *(a4 + 28) = v33;
    *a5 = v32;
    a5[1] = *v50;
    result = *&v50[12];
    *(a5 + 28) = *&v50[12];
    if (*(a4 + 4) < *(a3 + 4))
    {
      v35 = *a3;
      *v51 = a3[1];
      *&v51[16] = a3[2];
      v36 = *(a4 + 28);
      v37 = a4[1];
      *a3 = *a4;
      a3[1] = v37;
      *(a3 + 28) = v36;
      *a4 = v35;
      a4[1] = *v51;
      result = *&v51[12];
      *(a4 + 28) = *&v51[12];
      if (*(a3 + 4) < *(a2 + 4))
      {
        v38 = *a2;
        *v52 = a2[1];
        *&v52[16] = a2[2];
        v39 = *(a3 + 28);
        v40 = a3[1];
        *a2 = *a3;
        a2[1] = v40;
        *(a2 + 28) = v39;
        *a3 = v38;
        a3[1] = *v52;
        result = *&v52[12];
        *(a3 + 28) = *&v52[12];
        if (*(a2 + 4) < *(a1 + 4))
        {
          v41 = *a1;
          *v53 = a1[1];
          *&v53[16] = a1[2];
          v42 = *(a2 + 28);
          v43 = a2[1];
          *a1 = *a2;
          a1[1] = v43;
          *(a1 + 28) = v42;
          *a2 = v41;
          a2[1] = *v53;
          result = *&v53[12];
          *(a2 + 28) = *&v53[12];
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),BOOL>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupExecuteIndirectESL<false>(AGCDeserializedReply const&,AGX::HAL300::IndirectArgumentLayout const* const*,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,std::vector<DriverEIOffset> const&,BOOL,AGX::HAL300::HeapSet &,LoadShaderEmitType)::UniformData *>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a2 - a1) >> 4);
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v6 = a2 - 3;
      v7 = *(a1 + 80);
      v8 = *(a2 - 2);
      if (v7 < *(a1 + 32))
      {
        if (v8 >= v7)
        {
          v36 = *a1;
          *v73 = *(a1 + 16);
          *&v73[16] = *(a1 + 32);
          v37 = *(a1 + 64);
          *a1 = *(a1 + 48);
          *(a1 + 16) = v37;
          *(a1 + 28) = *(a1 + 76);
          *(a1 + 48) = v36;
          *(a1 + 64) = *v73;
          *(a1 + 76) = *&v73[12];
          if (*(a2 - 2) >= *(a1 + 80))
          {
            return 1;
          }

          v9 = *(a1 + 64);
          v10 = *(a1 + 48);
          *v80 = HIDWORD(v9);
          *&v80[4] = *(a1 + 80);
          v38 = *(a2 - 20);
          v39 = *(a2 - 2);
          *(a1 + 48) = *v6;
          *(a1 + 64) = v39;
          *(a1 + 76) = v38;
        }

        else
        {
          v9 = *(a1 + 16);
          v10 = *a1;
          *v80 = HIDWORD(v9);
          *&v80[4] = *(a1 + 32);
          v11 = *(a2 - 20);
          v12 = *(a2 - 2);
          *a1 = *v6;
          *(a1 + 16) = v12;
          *(a1 + 28) = v11;
        }

        *v6 = v10;
        *(a2 - 2) = v9;
        *(a2 - 20) = *v80;
        return 1;
      }

      if (v8 >= v7)
      {
        return 1;
      }

      v25 = *(a1 + 48);
      *v68 = *(a1 + 64);
      *&v68[16] = *(a1 + 80);
      v26 = *(a2 - 20);
      v27 = *(a2 - 2);
      *(a1 + 48) = *v6;
      *(a1 + 64) = v27;
      *(a1 + 76) = v26;
      *v6 = v25;
      *(a2 - 2) = *v68;
      *(a2 - 20) = *&v68[12];
LABEL_49:
      if (*(a1 + 80) < *(a1 + 32))
      {
        v62 = *a1;
        *v79 = *(a1 + 16);
        *&v79[16] = *(a1 + 32);
        v63 = *(a1 + 64);
        *a1 = *(a1 + 48);
        *(a1 + 16) = v63;
        *(a1 + 28) = *(a1 + 76);
        *(a1 + 48) = v62;
        *(a1 + 64) = *v79;
        *(a1 + 76) = *&v79[12];
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::enable_if<!(false),BOOL>::type AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::setupExecuteIndirectESL<false>(AGCDeserializedReply const&,AGX::HAL300::IndirectArgumentLayout const* const*,AGX::USCProfileControlGen1<AGX::HAL300::Encoders,AGX::HAL300::Classes> const*,std::vector<DriverEIOffset> const&,BOOL,AGX::HAL300::HeapSet &,LoadShaderEmitType)::UniformData *,0>(a1, (a1 + 48), (a1 + 96), (a1 + 144), a2 - 3);
      return 1;
    }

    v20 = *(a1 + 80);
    v21 = *(a1 + 32);
    v22 = *(a1 + 128);
    if (v20 >= v21)
    {
      if (v22 < v20)
      {
        v32 = *(a1 + 48);
        *v71 = *(a1 + 64);
        *&v71[16] = *(a1 + 80);
        v33 = *(a1 + 112);
        *(a1 + 48) = *(a1 + 96);
        *(a1 + 64) = v33;
        *(a1 + 76) = *(a1 + 124);
        *(a1 + 96) = v32;
        *(a1 + 112) = *v71;
        *(a1 + 124) = *&v71[12];
        if (*(a1 + 80) < v21)
        {
          v34 = *a1;
          *v72 = *(a1 + 16);
          *&v72[16] = *(a1 + 32);
          v35 = *(a1 + 64);
          *a1 = *(a1 + 48);
          *(a1 + 16) = v35;
          *(a1 + 28) = *(a1 + 76);
          *(a1 + 48) = v34;
          *(a1 + 64) = *v72;
          *(a1 + 76) = *&v72[12];
        }
      }

      goto LABEL_46;
    }

    if (v22 >= v20)
    {
      v52 = *a1;
      *v76 = *(a1 + 16);
      *&v76[16] = *(a1 + 32);
      v53 = *(a1 + 64);
      *a1 = *(a1 + 48);
      *(a1 + 16) = v53;
      *(a1 + 28) = *(a1 + 76);
      *(a1 + 48) = v52;
      *(a1 + 64) = *v76;
      *(a1 + 76) = *&v76[12];
      if (v22 >= *(a1 + 80))
      {
        goto LABEL_46;
      }

      v54 = *(a1 + 48);
      *v67 = *(a1 + 64);
      *&v67[16] = *(a1 + 80);
      v55 = *(a1 + 112);
      *(a1 + 48) = *(a1 + 96);
      *(a1 + 64) = v55;
      *(a1 + 76) = *(a1 + 124);
      *(a1 + 96) = v54;
      *(a1 + 112) = *v67;
    }

    else
    {
      v23 = *a1;
      *v67 = *(a1 + 16);
      *&v67[16] = *(a1 + 32);
      v24 = *(a1 + 112);
      *a1 = *(a1 + 96);
      *(a1 + 16) = v24;
      *(a1 + 28) = *(a1 + 124);
      *(a1 + 96) = v23;
      *(a1 + 112) = *v67;
    }

    *(a1 + 124) = *&v67[12];
LABEL_46:
    if (*(a2 - 2) >= *(a1 + 128))
    {
      return 1;
    }

    v56 = a2 - 3;
    v57 = *(a1 + 96);
    *v77 = *(a1 + 112);
    *&v77[16] = *(a1 + 128);
    v58 = *(a2 - 20);
    v59 = *(a2 - 2);
    *(a1 + 96) = *(a2 - 3);
    *(a1 + 112) = v59;
    *(a1 + 124) = v58;
    *v56 = v57;
    v56[1] = *v77;
    *(v56 + 28) = *&v77[12];
    if (*(a1 + 128) >= *(a1 + 80))
    {
      return 1;
    }

    v60 = *(a1 + 48);
    *v78 = *(a1 + 64);
    *&v78[16] = *(a1 + 80);
    v61 = *(a1 + 112);
    *(a1 + 48) = *(a1 + 96);
    *(a1 + 64) = v61;
    *(a1 + 76) = *(a1 + 124);
    *(a1 + 96) = v60;
    *(a1 + 112) = *v78;
    *(a1 + 124) = *&v78[12];
    goto LABEL_49;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    if (*(a2 - 2) < *(a1 + 32))
    {
      v3 = *a1;
      *v66 = *(a1 + 16);
      *&v66[16] = *(a1 + 32);
      v4 = *(a2 - 20);
      v5 = *(a2 - 2);
      *a1 = *(a2 - 3);
      *(a1 + 16) = v5;
      *(a1 + 28) = v4;
      *(a2 - 3) = v3;
      *(a2 - 2) = *v66;
      *(a2 - 20) = *&v66[12];
    }

    return 1;
  }

LABEL_13:
  v13 = (a1 + 96);
  v14 = *(a1 + 80);
  v15 = *(a1 + 32);
  v16 = *(a1 + 128);
  if (v14 >= v15)
  {
    if (v16 < v14)
    {
      v28 = *(a1 + 48);
      *v69 = *(a1 + 64);
      *&v69[16] = *(a1 + 80);
      v29 = *(a1 + 112);
      *(a1 + 48) = *v13;
      *(a1 + 64) = v29;
      *(a1 + 76) = *(a1 + 124);
      *v13 = v28;
      *(a1 + 112) = *v69;
      *(a1 + 124) = *&v69[12];
      if (*(a1 + 80) < v15)
      {
        v30 = *a1;
        *v70 = *(a1 + 16);
        *&v70[16] = *(a1 + 32);
        v31 = *(a1 + 64);
        *a1 = *(a1 + 48);
        *(a1 + 16) = v31;
        *(a1 + 28) = *(a1 + 76);
        *(a1 + 48) = v30;
        *(a1 + 64) = *v70;
        *(a1 + 76) = *&v70[12];
      }
    }
  }

  else
  {
    if (v16 >= v14)
    {
      v40 = *a1;
      *v74 = *(a1 + 16);
      *&v74[16] = *(a1 + 32);
      v41 = *(a1 + 64);
      *a1 = *(a1 + 48);
      *(a1 + 16) = v41;
      *(a1 + 28) = *(a1 + 76);
      *(a1 + 48) = v40;
      *(a1 + 64) = *v74;
      *(a1 + 76) = *&v74[12];
      if (v16 >= *(a1 + 80))
      {
        goto LABEL_33;
      }

      v17 = *(a1 + 64);
      v18 = *(a1 + 48);
      *v81 = HIDWORD(v17);
      *&v81[4] = *(a1 + 80);
      v42 = *(a1 + 112);
      *(a1 + 48) = *v13;
      *(a1 + 64) = v42;
      *(a1 + 76) = *(a1 + 124);
    }

    else
    {
      v17 = *(a1 + 16);
      v18 = *a1;
      *v81 = HIDWORD(v17);
      *&v81[4] = *(a1 + 32);
      v19 = *(a1 + 112);
      *a1 = *v13;
      *(a1 + 16) = v19;
      *(a1 + 28) = *(a1 + 124);
    }

    *v13 = v18;
    *(a1 + 112) = v17;
    *(a1 + 124) = *v81;
  }

LABEL_33:
  v43 = (a1 + 144);
  if ((a1 + 144) == a2)
  {
    return 1;
  }

  v44 = 0;
  v45 = 0;
  while (1)
  {
    v47 = *(v43 + 4);
    if (v47 < *(v13 + 4))
    {
      v65 = *v43;
      v75 = v43[1];
      v48 = *(v43 + 10);
      v49 = v44;
      do
      {
        v50 = a1 + v49;
        v51 = *(a1 + v49 + 112);
        *(v50 + 144) = *(a1 + v49 + 96);
        *(v50 + 160) = v51;
        *(v50 + 172) = *(a1 + v49 + 124);
        if (v49 == -96)
        {
          v46 = a1;
          goto LABEL_36;
        }

        v49 -= 48;
      }

      while (v47 < *(v50 + 80));
      v46 = a1 + v49 + 144;
LABEL_36:
      *v46 = v65;
      *(v46 + 16) = v75;
      *(v46 + 32) = v47;
      *(v46 + 40) = v48;
      if (++v45 == 8)
      {
        return v43 + 3 == a2;
      }
    }

    v13 = v43;
    v44 += 48;
    v43 += 3;
    if (v43 == a2)
    {
      return 1;
    }
  }
}

void AGX::ObjectProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::ObjectProgramVariantESLState(uint64_t a1, uint64_t a2, void *a3, const std::string *a4, _BYTE *a5, __int128 *a6, uint64_t a7, int a8, _BYTE *a9)
{
  v9 = a5;
  v259[5] = *MEMORY[0x29EDCA608];
  v12 = *(a6 + 2);
  v13 = *a6;
  *(a1 + 88) = 0u;
  v14 = a1 + 88;
  v258 = v13;
  *(a1 + 40) = 0u;
  v15 = a1 + 40;
  v259[0] = v12;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0u;
  v16 = (a1 + 528);
  *(a1 + 640) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 480) = 0;
  v233 = a1 + 464;
  v234 = a1 + 416;
  *(a1 + 464) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  v17 = v258;
  *(a1 + 648) = 0u;
  *(a1 + 664) = v17;
  *(a1 + 680) = v259[0];
  *(a1 + 784) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 729) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 770) = 0;
  *(a1 + 764) = 0;
  v235 = (a1 + 748);
  *(a1 + 748) = 0u;
  *(a1 + 808) = a2;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 916) = 107;
  *(a1 + 976) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 976) = 3;
  *(a1 + 972) = 166;
  *(a1 + 1024) = 0u;
  *(a1 + 996) = 0u;
  *(a1 + 1012) = 0u;
  *(a1 + 1024) = 0x3000000A5;
  *(a1 + 1040) = 0u;
  *(a1 + 920) = 0x300000003;
  *(a1 + 936) = 1;
  *(a1 + 1124) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1216) = 0x600000000;
  *(a1 + 1264) = 0;
  *(a1 + 1248) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1272) = a1 + 1280;
  *(a1 + 1296) = -1;
  *(a1 + 1304) = 0;
  *(a1 + 1308) = a8;
  *(a1 + 1309) = 0;
  *(a1 + 1312) = -1;
  *(a1 + 1324) = 0;
  *(a1 + 1316) = 0;
  v18 = a5[465];
  bzero((a1 + 40), 0x30uLL);
  bzero(v14, 0x30uLL);
  v19 = 0;
  *(v14 + 656) = 0;
  v246 = v14;
  *(v14 + 1223) = 0;
  if (a3[28])
  {
    v20 = a3[29] == 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = 28;
  if (v20)
  {
    v21 = 98;
    v22 = a3 + 98;
  }

  else
  {
    v22 = a3 + 28;
  }

  v23 = a3[v21];
  if (v23 && v22[1])
  {
    v19 = (v23 + *v23);
  }

  v24 = (v19 - *v19);
  if (*v24 >= 5u && (v25 = v24[2]) != 0)
  {
    v245 = (v19 + v25 + *(v19 + v25));
  }

  else
  {
    v245 = 0;
  }

  v26 = 0;
  if (a3[58])
  {
    v27 = a3[59] == 0;
  }

  else
  {
    v27 = 1;
  }

  v28 = 58;
  if (v27)
  {
    v28 = 128;
    v29 = a3 + 128;
  }

  else
  {
    v29 = a3 + 58;
  }

  v30 = a3[v28];
  if (v30 && v29[1])
  {
    v26 = (v30 + *v30);
  }

  v31 = (v26 - *v26);
  if (*v31 < 5u)
  {
    v32 = 0;
  }

  else
  {
    v32 = v31[2];
    if (v32)
    {
      v32 = (v32 + v26 + *(v32 + v26));
    }
  }

  v243 = v32;
  v33 = (v32 - *v32);
  if (*v33 < 0x11u)
  {
    LODWORD(v34) = 0;
  }

  else
  {
    v34 = v33[8];
    if (v34)
    {
      LODWORD(v34) = *(v32 + v34);
    }
  }

  *v235 = v34;
  v35 = (v32 - *v32);
  if (*v35 <= 6u)
  {
    LODWORD(v36) = 0;
  }

  else
  {
    v36 = v35[3];
    if (v36)
    {
      LODWORD(v36) = *(v32 + v36);
    }
  }

  *(a1 + 408) = v36;
  v37 = (v32 - *v32);
  if (*v37 >= 0x13u && (v38 = v37[9]) != 0)
  {
    v39 = v32 + v38 + *(v32 + v38) + 4;
  }

  else
  {
    v39 = "";
  }

  v242 = (v14 + 664);
  MEMORY[0x29ED51E00](v234, v39);
  v40 = (v243 - *v243);
  if (*v40 >= 0x51u && (v41 = v40[40]) != 0)
  {
    v42 = v243 + v41 + *(v243 + v41) + 4;
  }

  else
  {
    v42 = "";
  }

  MEMORY[0x29ED51E00](v14 + 408, v42);
  std::string::operator=((v14 + 352), a4);
  v43 = (v243 - *v243);
  if (*v43 >= 9u && (v44 = v43[4]) != 0)
  {
    v45 = v243 + v44 + *(v243 + v44) + 4;
  }

  else
  {
    v45 = "";
  }

  MEMORY[0x29ED51E00](v233, v45);
  v46 = (v243 - *v243);
  if (*v46 < 0x29u)
  {
    LOBYTE(v47) = 0;
  }

  else
  {
    v47 = v46[20];
    if (v47)
    {
      LOBYTE(v47) = *(v243 + v47) != 0;
    }
  }

  *(a1 + 488) = v47;
  v48 = a3[58];
  if (v48)
  {
    v49 = a3[59] == 0;
  }

  else
  {
    v49 = 1;
  }

  v50 = 58;
  if (v49)
  {
    v50 = 128;
  }

  v51 = a3 + 58;
  if (v49)
  {
    v51 = a3 + 128;
  }

  v52 = a3[v50];
  v53 = v51[1];
  if (v52)
  {
    v54 = v53 == 0;
  }

  else
  {
    v54 = 1;
  }

  v55 = !v54;
  if (v54)
  {
    v56 = 0;
  }

  else
  {
    v56 = (v52 + *v52);
  }

  v57 = (v56 - *v56);
  if (*v57 >= 7u && v57[3] && (!v55 ? (v58 = 0) : (v58 = (v52 + *v52)), (v59 = (v58 - *v58), *v59 < 7u) || (v60 = v59[3]) == 0 ? (v61 = 0) : (v61 = (v58 + v60 + *(v58 + v60))), (v62 = (v61 - *v61), *v62 >= 0xBu) && (v63 = v62[5]) != 0))
  {
    v64 = *(v61 + v63);
  }

  else
  {
    v64 = 0;
  }

  *(a1 + 600) = v64;
  if (v48)
  {
    v65 = a3[59] == 0;
  }

  else
  {
    v65 = 1;
  }

  v66 = 58;
  if (v65)
  {
    v66 = 128;
  }

  v67 = a3 + 58;
  if (v65)
  {
    v67 = a3 + 128;
  }

  v68 = a3[v66];
  v69 = v67[1];
  if (v68)
  {
    v70 = v69 == 0;
  }

  else
  {
    v70 = 1;
  }

  v71 = !v70;
  if (v70)
  {
    v72 = 0;
  }

  else
  {
    v72 = (v68 + *v68);
  }

  v73 = (v72 - *v72);
  if (*v73 >= 7u && v73[3] && (!v71 ? (v74 = 0) : (v74 = (v68 + *v68)), (v75 = (v74 - *v74), *v75 < 7u) || (v76 = v75[3]) == 0 ? (v77 = 0) : (v77 = (v74 + v76 + *(v74 + v76))), (v78 = (v77 - *v77), *v78 >= 0xDu) && (v79 = v78[6]) != 0))
  {
    v80 = *(v77 + v79);
  }

  else
  {
    v80 = 0;
  }

  *(a1 + 604) = v80;
  *(a1 + 776) = v9[465];
  v81 = (v245 - *v245);
  if (*v81 < 0x4Du)
  {
    LODWORD(v82) = 0;
  }

  else
  {
    v82 = v81[38];
    if (v82)
    {
      LODWORD(v82) = *(v245 + v82);
    }
  }

  *(a1 + 400) = v82;
  v83 = (v245 - *v245);
  if (*v83 < 0x53u)
  {
    LODWORD(v84) = 0;
  }

  else
  {
    v84 = v83[41];
    if (v84)
    {
      LODWORD(v84) = *(v245 + v84);
    }
  }

  *(a1 + 404) = v84;
  v85 = (v245 - *v245);
  if (*v85 < 0x43u)
  {
    LODWORD(v86) = 0;
  }

  else
  {
    v86 = v85[33];
    if (v86)
    {
      LODWORD(v86) = *(v245 + v86);
    }
  }

  *(a1 + 608) = v86;
  *(a1 + 612) = 0;
  v87 = (v245 - *v245);
  if (*v87 >= 0x21u && (v88 = v87[16]) != 0)
  {
    v89 = *(v245 + v88);
  }

  else
  {
    v89 = 0;
  }

  {
    getAdditionalSpillBufferBytes(void)::extra = 0;
  }

  *(a1 + 616) = getAdditionalSpillBufferBytes(void)::extra + v89;
  *(a1 + 620) = *(a1 + 608);
  v90 = (v245 - *v245);
  if (*v90 < 5u)
  {
    LODWORD(v91) = 0;
  }

  else
  {
    v91 = v90[2];
    if (v91)
    {
      LODWORD(v91) = *(v245 + v91);
    }
  }

  *(a1 + 624) = v91;
  v92 = (v245 - *v245);
  if (*v92 < 0x51u)
  {
    LODWORD(v93) = 0;
  }

  else
  {
    v93 = v92[40];
    if (v93)
    {
      LODWORD(v93) = *(v245 + v93);
    }
  }

  *(a1 + 628) = v93;
  v94 = (v245 - *v245);
  if (*v94 < 0x4Fu)
  {
    LODWORD(v95) = 0;
  }

  else
  {
    v95 = v94[39];
    if (v95)
    {
      LODWORD(v95) = *(v245 + v95);
    }
  }

  *(a1 + 632) = v95;
  *(a1 + 776) = v9[465];
  *(a1 + 520) = 0;
  v96 = v245 - *v245;
  v97 = *(v245 + *(v96 + 15) + *(v245 + *(v96 + 15)));
  v98 = *(v96 + 13);
  if (v98)
  {
    LODWORD(v98) = *(v245 + v98);
  }

  v99 = v98;
  v100 = *(v9 + 38);
  v239 = v15;
  if (v9[416] == 1)
  {
    v101 = vaddq_s64(*(v9 + 15), *(v9 + 216));
    v102 = (vsubq_s64(vdupq_laneq_s64(v101, 1), v101).u64[0] & 0xFFFFFFFFFFFFFFFCLL) + ((*(v9 + 50) + *(v9 + 44) - (*(v9 + 49) + *(v9 + 43))) & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    v102 = 0;
  }

  v103 = (v97 + 31) & 0x1FFFFFFE0;
  if (v98)
  {
    v104 = (v97 + 31) & 0x1FFFFFFE0;
  }

  else
  {
    v104 = v97;
  }

  __src = v104;
  v105 = v104 + v98;
  if (v100)
  {
    v106 = ((v105 + v102 + 31) & 0xFFFFFFFFFFFFFFE0) - v105;
  }

  else
  {
    v106 = v102;
  }

  v107 = v105 + 8 * v100 + v106;
  v248 = v9;
  if (!v107)
  {
    goto LABEL_224;
  }

  if (a8)
  {
    AGX::Heap<true>::allocateImpl(&v254, a2 + 6832, v107, 0);
    v108 = a1;
    v109 = *(a1 + 1304) + *v255;
    v110 = *v255;
    *(v246 + 1056) = v254;
    *(v246 + 1072) = v110;
    v111 = *&v255[9];
    *(v246 + 1081) = *&v255[9];
    __dst = *(a1 + 1152);
    v240 = *(a1 + 1144) + 0x1000000000;
    *(a1 + 1056) = v240;
  }

  else
  {
    v108 = a1;
    AGX::Heap<true>::allocateImpl(&v254, a2 + 6328, v107, (a1 + 584));
    v109 = *(a1 + 1304) + *v255;
    v112 = *v255;
    *(v246 + 608) = v254;
    *(v246 + 624) = v112;
    v111 = *&v255[9];
    *(v246 + 633) = *&v255[9];
    __dst = *(a1 + 704);
    v240 = *(a1 + 696);
  }

  *(v108 + 1304) = v109;
  v113 = v243;
  if (v97)
  {
    v114 = v106;
    v115 = v105;
    v116 = v99;
    v117 = (v245 - *v245);
    v118 = v16;
    if (*v117 < 0x1Fu)
    {
      v120 = v18;
      v119 = 0;
    }

    else
    {
      v119 = v117[15];
      v120 = v18;
      if (v119)
      {
        v119 += v245 + *(v245 + v119);
      }
    }

    memcpy(__dst, (v119 + 4), v97);
    *(a1 + 640) = v240;
    *(a1 + 648) = __dst;
    *(a1 + 656) = __src;
    v18 = v120;
    v16 = v118;
    v99 = v116;
    v105 = v115;
    v106 = v114;
    v113 = v243;
  }

  if (!v99)
  {
    if (v106)
    {
      goto LABEL_206;
    }

LABEL_208:
    if (!v100)
    {
      goto LABEL_224;
    }

    goto LABEL_209;
  }

  if (a8)
  {
    *(a1 + 1064) = v240 + v103;
  }

  v121 = (v113 - *v113);
  v244 = v100;
  if (*v121 >= 0xBu && (v122 = v121[5]) != 0)
  {
    v123 = v113 + v122 + *(v113 + v122);
  }

  else
  {
    v123 = 0;
  }

  v124 = *(v245 - *v245 + 28);
  v125 = *(v245 + v124);
  if (!*(v245 + v124 + v125))
  {
    LODWORD(v100) = v244;
    if (!v106)
    {
      goto LABEL_208;
    }

    goto LABEL_206;
  }

  v236 = v106;
  v241 = v16;
  v126 = 0;
  v127 = 0;
  v250 = __dst + v103;
  v128 = v123 + 4;
  v129 = 8;
  if (v18)
  {
    v129 = 24;
  }

  v249 = v129;
  v130 = v245;
  while (1)
  {
    v131 = v124;
    v132 = v124 + v125;
    v133 = &v130[v126];
    v134 = *(&v130[v126 + 1] + v132);
    v135 = v132 + v134;
    v136 = v133 + v132 + v134;
    v137 = *(v136 + 4);
    v138 = v133 + v135 - v137;
    v139 = *(v138 + 4);
    if (v139 < 5)
    {
      goto LABEL_172;
    }

    v140 = *(v138 + 8);
    if (!v140)
    {
      goto LABEL_172;
    }

    v141 = *(v245 + v131 + v125 + v134 + v126 * 4 + v140 + 4);
    if (v141 != 114)
    {
      if (v141 == 18)
      {
        if (v139 < 9)
        {
          v143 = 0;
        }

        else
        {
          v142 = v131 + v125 + v134;
          v143 = *(&v245[v126 + 3] + v142 - v137);
          if (v143)
          {
            v143 = *(v245 + v142 + v126 * 4 + v143 + 4);
          }
        }

        v146 = &v250[8 * v143];
        bzero(v146, v249);
        v148 = &v245[v126] + v131 + v125 + v134 - *(v136 + 4);
        if (*(v148 + 2) < 7u)
        {
          v149 = 0;
        }

        else
        {
          v149 = *(v148 + 5);
          if (v149)
          {
            v149 = 4 * *(v245 + v131 + v125 + v134 + v126 * 4 + v149 + 4);
          }
        }

        AGX::SamplerDescriptor::SamplerDescriptor(&v254, &v128[v149 + *&v128[v149]], v147);
        AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v253, &v254);
        *v146 = v253;
        if (v257 < 0)
        {
          operator delete(__p);
        }

        *&v254 = v146;
        std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v242, &v254);
      }

      goto LABEL_172;
    }

    if (v139 < 7)
    {
      v145 = 0;
    }

    else
    {
      v144 = v131 + v125 + v134;
      v145 = *(&v245[v126 + 2] + v144 - v137 + 2);
      if (v145)
      {
        v145 = 4 * *(v245 + v144 + v126 * 4 + v145 + 4);
      }
    }

    AGX::SamplerDescriptor::SamplerDescriptor(&v254, &v128[v145 + *&v128[v145]], v111);
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v253, *(a1 + 808), &v254);
    v150 = *(v253 + 96);
    std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](v246 + 696, &v253);
    v151 = &v245[v126] + v131 + v125 + v134 - *(v136 + 4);
    if (*(v151 + 2) < 9u)
    {
      v152 = 0;
    }

    else
    {
      v152 = *(v151 + 6);
      if (v152)
      {
        v152 = *(v245 + v131 + v125 + v134 + v126 * 4 + v152 + 4);
      }
    }

    *&v250[4 * v152] = v150;
    v153 = *(&v253 + 1);
    if (*(&v253 + 1))
    {
      if (!atomic_fetch_add((*(&v253 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        break;
      }
    }

    if (v257 < 0)
    {
      goto LABEL_198;
    }

LABEL_172:
    ++v127;
    v130 = v245;
    v124 = *(v245 - *v245 + 28);
    v125 = *(v245 + v124);
    ++v126;
    if (v127 >= *(v245 + v124 + v125))
    {
      v9 = v248;
      v113 = v243;
      LODWORD(v100) = v244;
      v16 = v241;
      v106 = v236;
      if (!v236)
      {
        goto LABEL_208;
      }

LABEL_206:
      *(a1 + 520) = v105 + v240;
      v154 = &__src[__dst + v99];
      v155 = *(v9 + 27);
      v156 = *(v9 + 28) - v155;
      *v154 = v156 >> 2;
      *(v154 + 1) = (*(v9 + 62) - *(v9 + 60)) >> 2;
      *(v154 + 2) = (*(v9 + 88) - *(v9 + 86)) >> 1;
      *(v154 + 3) = (*(v9 + 100) - *(v9 + 98)) >> 1;
      memcpy(v154 + 8, v155, v156);
      v157 = &v154[*(v9 + 28) - *(v9 + 27) + 8];
      memcpy(v157, *(v9 + 30), *(v9 + 31) - *(v9 + 30));
      v158 = &v157[*(v9 + 31) - *(v9 + 30)];
      memcpy(v158, *(v9 + 43), *(v9 + 44) - *(v9 + 43));
      memcpy(&v158[*(v9 + 44) - *(v9 + 43)], *(v9 + 49), *(v9 + 50) - *(v9 + 49));
      if (*(v154 + 2))
      {
        if (*(v154 + 3))
        {
          goto LABEL_208;
        }
      }

      else
      {
        *(v154 + 2) = *v154;
        if (*(v154 + 3))
        {
          goto LABEL_208;
        }
      }

      *(v154 + 3) = *(v154 + 1);
      if (!v100)
      {
LABEL_224:
        v162 = v239;
        v163 = v245;
        goto LABEL_225;
      }

LABEL_209:
      *v16 = &__src[__dst + v99 + v106];
      v159 = (v113 - *v113);
      if (*v159 >= 0xBu && (v160 = v159[5]) != 0)
      {
        v161 = (v113 + v160 + *(v113 + v160));
        if (!a8)
        {
          goto LABEL_215;
        }

LABEL_214:
        *(a1 + 1072) = v105 + v106 + v240;
      }

      else
      {
        v161 = 0;
        if (a8)
        {
          goto LABEL_214;
        }
      }

LABEL_215:
      if (!v161)
      {
        goto LABEL_224;
      }

      v162 = v239;
      v163 = v245;
      if (*v161)
      {
        v164 = 0;
        v165 = 1;
        do
        {
          v166 = (*v16 + 8 * (((v165 * 4) - 4) & 0xFFFFFFFC));
          AGX::SamplerDescriptor::SamplerDescriptor(&v254, (&v161[v165] + v161[v165]), v111);
          AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v253, &v254);
          *v166 = v253;
          if (v257 < 0)
          {
            operator delete(__p);
          }

          *&v254 = v166;
          std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v242, &v254);
          ++v164;
          ++v165;
        }

        while (v164 < *v161);
        v9 = v248;
      }

LABEL_225:
      AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerConstantSamplerList(a2, v242);
      v167 = (v163 - *v163);
      v168 = v167[8];
      v169 = *(v163 + v168);
      v170 = (v163 + v168 + v169);
      v171 = *v170;
      if (v171)
      {
        v172 = 0;
        v173 = 4 * v171;
        v174 = v163 + v168 + v169;
        do
        {
          v179 = v170[v172 / 4 + 1];
          v180 = &v174[v172 + v179 - *(&v170[v172 / 4 + 1] + v179)];
          if (*(v180 + 2) < 7u)
          {
            LODWORD(v175) = 0;
          }

          else
          {
            v175 = *(v180 + 5);
            if (v175)
            {
              v181 = *&v174[v172 + 4 + v179 + v175];
              LODWORD(v175) = v181;
              if ((v181 & 0x80000000) != 0)
              {
                *(v246 + 8 * ((v181 & 0x7C000000) != 0)) |= 1 << (v181 >> 20);
                v176 = 0x11800000000000;
                v178 = v246;
                goto LABEL_229;
              }
            }
          }

          v176 = 1 << v175;
          v177 = 8 * ((v175 & 0xFFFC0) != 0);
          *(a1 + 56 + v177) |= v176;
          v178 = (a1 + 104 + v177);
LABEL_229:
          *v178 |= v176;
          v172 += 4;
        }

        while (v173 != v172);
      }

      v182 = v167[10];
      v183 = *(v163 + v182);
      v184 = (v163 + v182 + v183);
      v185 = *v184;
      if (v185)
      {
        v186 = 0;
        v187 = 4 * v185;
        v188 = v163 + v182 + v183;
        do
        {
          v193 = v184[v186 / 4 + 1];
          v194 = &v188[v186 + v193 - *(&v184[v186 / 4 + 1] + v193)];
          if (*(v194 + 2) < 7u)
          {
            LODWORD(v189) = 0;
          }

          else
          {
            v189 = *(v194 + 5);
            if (v189)
            {
              v195 = *&v188[v186 + 4 + v193 + v189];
              LODWORD(v189) = v195;
              if ((v195 & 0x80000000) != 0)
              {
                *(v246 + 8 * ((v195 & 0x7C000000) != 0)) |= 1 << (v195 >> 20);
                v190 = 0x10000000000000;
                v192 = v246;
                goto LABEL_238;
              }
            }
          }

          v190 = 1 << v189;
          v191 = 8 * ((v189 & 0xFFFC0) != 0);
          *(a1 + 72 + v191) |= v190;
          v192 = (a1 + 120 + v191);
LABEL_238:
          *v192 |= v190;
          v186 += 4;
        }

        while (v187 != v186);
      }

      v196 = v167[6];
      v197 = *(v163 + v196);
      v198 = (v163 + v196 + v197);
      v199 = *v198;
      if (v199)
      {
        v200 = 0;
        v201 = 4 * v199;
        v202 = v163 + v196 + v197;
        do
        {
          v206 = v198[v200 / 4 + 1];
          v207 = &v202[v200 + v206 - *(&v198[v200 / 4 + 1] + v206)];
          if (*(v207 + 2) < 7u)
          {
            LODWORD(v203) = 0;
          }

          else
          {
            v203 = *(v207 + 5);
            if (v203)
            {
              v203 = *&v202[v200 + 4 + v206 + v203];
              if ((v203 & 0x80000000) != 0)
              {
                v204 = 1 << (v203 >> 20);
                v205 = (v203 & 0x7C000000) != 0;
                goto LABEL_247;
              }

              LODWORD(v203) = v203 & 0xFFFFF;
              if (v203 <= 0x35 && ((1 << v203) & 0x26000000000000) != 0)
              {
                goto LABEL_248;
              }
            }
          }

          v204 = 1 << v203;
          v205 = v203 > 0x3F;
          *(v162 + 8 * v205) |= v204;
LABEL_247:
          *(v246 + 8 * v205) |= v204;
LABEL_248:
          v200 += 4;
        }

        while (v201 != v200);
      }

      v209 = *(v9 + 10);
      if (*&v209 != 0)
      {
        *(a1 + 56) = vorrq_s8(*(a1 + 56), v209);
        *(a1 + 104) = vorrq_s8(*(a1 + 104), v209);
      }

      v210 = *(v9 + 12);
      if (*&v210 != 0)
      {
        *(a1 + 72) = vorrq_s8(*(a1 + 72), v210);
        *(a1 + 120) = vorrq_s8(*(a1 + 120), v210);
      }

      v211 = v167[12];
      v212 = *(v163 + v211);
      v213 = (v163 + v211 + v212);
      v214 = *v213;
      if (!v214)
      {
LABEL_300:
        if ((*(a1 + 1311) & 1) == 0)
        {
          *(a1 + 200) = *(v9 + 424);
          *(a1 + 248) = *(v9 + 440);
          *(v246 + 224) = vorrq_s8(*(v9 + 440), *(v9 + 424));
        }

        operator new();
      }

      v215 = 0;
      v216 = a1 + 136;
      v217 = 4 * v214;
      v218 = v163 + v211 + v212;
      while (2)
      {
        v221 = *&v218[v215 + 4];
        v222 = v221 - *(&v213[v215 / 4 + 1] + v221);
        v223 = &v218[v215 + v222];
        v224 = *(v223 + 2);
        if (v224 < 7)
        {
          if (v224 >= 5)
          {
            goto LABEL_272;
          }
        }

        else
        {
          v225 = *(v223 + 5);
          if (v225)
          {
            v226 = *&v218[v215 + 4 + v221 + v225];
            goto LABEL_273;
          }

LABEL_272:
          v226 = 0;
LABEL_273:
          v227 = *&v218[v215 + 8 + v222];
          if (v227)
          {
            v228 = v218[v215 + 4 + v221 + v227];
            v220 = (a1 + 184);
            v219 = 1;
            switch(v218[v215 + 4 + v221 + v227])
            {
              case 11:
              case 12:
              case 13:
              case 16:
              case 17:
              case 62:
              case 93:
              case 97:
              case 98:
              case 113:
                if ((v226 & 0x80000000) != 0)
                {
                  v219 = 1 << (v226 >> 20);
                  v220 = (v246 + 8 * ((v226 & 0x7C000000) != 0));
                  goto LABEL_266;
                }

                if ((v226 & 0x7FF00000) != 0x400000)
                {
                  if (v228 == 113 || v228 == 98)
                  {
                    v230 = 32;
                  }

                  else
                  {
                    v230 = 16;
                  }

                  v231 = 8 * ((v226 & 0xFFFC0) != 0);
                  v219 = 1 << v226;
                  *(v216 + v230 + v231) |= 1 << v226;
                  v220 = (v246 + v231 + v230);
LABEL_266:
                  *v220 |= v219;
                }

                break;
              case 24:
                v220 = (a1 + 184);
                v219 = 4;
                goto LABEL_266;
              case 25:
                v220 = (a1 + 184);
                v219 = 8;
                goto LABEL_266;
              case 27:
                goto LABEL_266;
              case 28:
                v220 = (a1 + 184);
                v219 = 2;
                goto LABEL_266;
              case 59:
                v220 = (a1 + 184);
                v219 = 16;
                goto LABEL_266;
              case 60:
              case 61:
                v220 = (a1 + 184);
                v219 = 32;
                goto LABEL_266;
              case 75:
                v220 = (a1 + 184);
                v219 = 64;
                goto LABEL_266;
              case 84:
              case 85:
                v220 = (a1 + 184);
                v219 = 128;
                goto LABEL_266;
              case 108:
                v220 = (a1 + 184);
                v219 = 256;
                goto LABEL_266;
              case 109:
              case 110:
                v219 = 1 << v226;
                v232 = 8 * ((v226 & 0xFFFC0) != 0);
                *(v216 + v232) |= 1 << v226;
                goto LABEL_291;
              case 111:
                v220 = (a1 + 184);
                v219 = 512;
                goto LABEL_266;
              case 112:
                v220 = (a1 + 184);
                v219 = 1024;
                goto LABEL_266;
              case 118:
                v220 = (a1 + 184);
                v219 = 2048;
                goto LABEL_266;
              case 119:
                v220 = (a1 + 184);
                v219 = 4096;
                goto LABEL_266;
              case 120:
                v220 = (a1 + 184);
                v219 = 0x2000;
                goto LABEL_266;
              case -117:
                v219 = 1 << v226;
                v232 = 8 * ((v226 & 0xFFFC0) != 0);
                *(v162 + v232) |= 1 << v226;
LABEL_291:
                v220 = (v246 + v232);
                goto LABEL_266;
              default:
                break;
            }
          }
        }

        v215 += 4;
        if (v217 == v215)
        {
          goto LABEL_300;
        }

        continue;
      }
    }
  }

  (v153->__on_zero_shared)(v153);
  std::__shared_weak_count::__release_weak(v153);
  if ((v257 & 0x80000000) == 0)
  {
    goto LABEL_172;
  }

LABEL_198:
  operator delete(__p);
  goto LABEL_172;
}

void sub_29CE2A320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t *a39, uint64_t a40, uint64_t a41, uint64_t a42, void *a43, void *__p, void *a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  AGX::ProgramBindingRemap<AGX::HAL300::Encoders,AGX::HAL300::Classes>::~ProgramBindingRemap(&a64);
  if (__p)
  {
    operator delete(__p);
  }

  if (a45)
  {
    operator delete(a45);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::~ProgramVariantESLState(a39);
  _Unwind_Resume(a1);
}

void sub_29CE2A480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void **a19, void **a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void **a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63, ...)
{
  va_start(va, a63);
  AGX::ESLStateLoadEncoderGen2<AGX::HAL300::Classes,AGX::HAL300::Encoders>::EslBuilder::~EslBuilder(va);
  std::__tree<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval,AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::IntervalRangeComparator,std::allocator<AGX::Mempool<16u,0u,true,0u,0u,unsigned long long>::FreeIntervalList::Interval>>::destroy(a49);
  if (__p)
  {
    operator delete(__p);
  }

  AGX::ProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::UserVertexArgumentTableLayout,true,8ul>::ExecuteIndirectState::~ExecuteIndirectState(a15);
  std::vector<std::shared_ptr<AGX::HAL300::IntersectionPipelineSet>>::~vector[abi:nn200100]((a38 + 696));
  v64 = *a34;
  if (*a34)
  {
    *(a39 + 760) = v64;
    operator delete(v64);
  }

  if (*(a39 + 519) < 0)
  {
    operator delete(*(a38 + 408));
  }

  if (*(a39 + 487) < 0)
  {
    operator delete(*a19);
  }

  if (*(a39 + 463) < 0)
  {
    operator delete(*(a38 + 352));
  }

  if (*(a39 + 439) < 0)
  {
    operator delete(*a20);
  }

  v65 = *(a38 + 288);
  if (v65)
  {
    *(a39 + 384) = v65;
    operator delete(v65);
  }

  _Unwind_Resume(a1);
}

void AGX::MeshProgramVariantESLState<AGX::HAL300::Encoders,AGX::HAL300::Classes>::MeshProgramVariantESLState(uint64_t a1, uint64_t a2, void *a3, const std::string *a4, _BYTE *a5, __int128 *a6, uint64_t a7, uint64_t a8, char a9, _BYTE *a10)
{
  v10 = a5;
  v261[5] = *MEMORY[0x29EDCA608];
  v13 = *(a6 + 2);
  v14 = *a6;
  *(a1 + 88) = 0u;
  v15 = a1 + 88;
  v260 = v14;
  *(a1 + 40) = 0u;
  v16 = a1 + 40;
  v261[0] = v13;
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0u;
  v17 = (a1 + 528);
  *(a1 + 640) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 356) = 0u;
  *(a1 + 480) = 0;
  v235 = a1 + 464;
  v236 = a1 + 416;
  *(a1 + 464) = 0u;
  *(a1 + 448) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  v18 = v260;
  *(a1 + 648) = 0u;
  *(a1 + 664) = v18;
  *(a1 + 680) = v261[0];
  *(a1 + 784) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 729) = 0u;
  *(a1 + 720) = 0u;
  *(a1 + 704) = 0u;
  *(a1 + 688) = 0u;
  *(a1 + 770) = 0;
  *(a1 + 764) = 0;
  v237 = (a1 + 748);
  *(a1 + 748) = 0u;
  *(a1 + 808) = a2;
  *(a1 + 816) = 0;
  *(a1 + 824) = 0u;
  *(a1 + 840) = 0u;
  *(a1 + 856) = 0u;
  *(a1 + 872) = 0u;
  *(a1 + 888) = 0u;
  *(a1 + 904) = 0u;
  *(a1 + 920) = 0u;
  *(a1 + 916) = 107;
  *(a1 + 976) = 0u;
  *(a1 + 960) = 0u;
  *(a1 + 944) = 0u;
  *(a1 + 992) = 0;
  *(a1 + 976) = 3;
  *(a1 + 972) = 166;
  *(a1 + 1024) = 0u;
  *(a1 + 996) = 0u;
  *(a1 + 1012) = 0u;
  *(a1 + 1024) = 0x3000000A5;
  *(a1 + 1040) = 0u;
  *(a1 + 920) = 0x300000003;
  *(a1 + 936) = 1;
  *(a1 + 1124) = 0u;
  *(a1 + 1096) = 0u;
  *(a1 + 1112) = 0u;
  *(a1 + 1080) = 0u;
  *(a1 + 1176) = 0u;
  *(a1 + 1160) = 0u;
  *(a1 + 1144) = 0u;
  *(a1 + 1216) = 0x600000000;
  *(a1 + 1264) = 0;
  *(a1 + 1248) = 0u;
  *(a1 + 1280) = 0u;
  *(a1 + 1272) = a1 + 1280;
  *(a1 + 1296) = -1;
  *(a1 + 1304) = 0;
  *(a1 + 1308) = a9;
  *(a1 + 1309) = 0;
  *(a1 + 1312) = -1;
  *(a1 + 1324) = 0;
  *(a1 + 1316) = 0;
  v19 = a5[465];
  bzero((a1 + 40), 0x30uLL);
  bzero(v15, 0x30uLL);
  v20 = 0;
  *(v15 + 656) = 0;
  v247 = v15;
  *(v15 + 1223) = 0;
  if (a3[28])
  {
    v21 = a3[29] == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = 28;
  if (v21)
  {
    v22 = 98;
    v23 = a3 + 98;
  }

  else
  {
    v23 = a3 + 28;
  }

  v24 = a3[v22];
  if (v24 && v23[1])
  {
    v20 = (v24 + *v24);
  }

  v25 = (v20 - *v20);
  if (*v25 >= 5u && (v26 = v25[2]) != 0)
  {
    v27 = (v20 + v26 + *(v20 + v26));
  }

  else
  {
    v27 = 0;
  }

  v28 = 0;
  if (a3[58])
  {
    v29 = a3[59] == 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = 58;
  if (v29)
  {
    v30 = 128;
    v31 = a3 + 128;
  }

  else
  {
    v31 = a3 + 58;
  }

  v32 = a3[v30];
  if (v32 && v31[1])
  {
    v28 = (v32 + *v32);
  }

  v33 = (v28 - *v28);
  if (*v33 < 5u)
  {
    v34 = 0;
  }

  else
  {
    v34 = v33[2];
    if (v34)
    {
      v34 = (v34 + v28 + *(v34 + v28));
    }
  }

  v244 = v34;
  v35 = (v34 - *v34);
  if (*v35 < 0x11u)
  {
    LODWORD(v36) = 0;
  }

  else
  {
    v36 = v35[8];
    if (v36)
    {
      LODWORD(v36) = *(v34 + v36);
    }
  }

  *v237 = v36;
  v37 = (v34 - *v34);
  if (*v37 <= 6u)
  {
    LODWORD(v38) = 0;
  }

  else
  {
    v38 = v37[3];
    if (v38)
    {
      LODWORD(v38) = *(v34 + v38);
    }
  }

  *(a1 + 408) = v38;
  v39 = (v34 - *v34);
  if (*v39 >= 0x13u && (v40 = v39[9]) != 0)
  {
    v41 = v34 + v40 + *(v34 + v40) + 4;
  }

  else
  {
    v41 = "";
  }

  v243 = (v15 + 664);
  MEMORY[0x29ED51E00](v236, v41);
  v42 = (v244 - *v244);
  if (*v42 >= 0x51u && (v43 = v42[40]) != 0)
  {
    v44 = v244 + v43 + *(v244 + v43) + 4;
  }

  else
  {
    v44 = "";
  }

  MEMORY[0x29ED51E00](v15 + 408, v44);
  std::string::operator=((v15 + 352), a4);
  v45 = (v244 - *v244);
  if (*v45 >= 9u && (v46 = v45[4]) != 0)
  {
    v47 = v244 + v46 + *(v244 + v46) + 4;
  }

  else
  {
    v47 = "";
  }

  MEMORY[0x29ED51E00](v235, v47);
  v48 = (v244 - *v244);
  if (*v48 < 0x29u)
  {
    LOBYTE(v49) = 0;
  }

  else
  {
    v49 = v48[20];
    if (v49)
    {
      LOBYTE(v49) = *(v244 + v49) != 0;
    }
  }

  *(a1 + 488) = v49;
  v50 = a3[58];
  if (v50)
  {
    v51 = a3[59] == 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = 58;
  if (v51)
  {
    v52 = 128;
  }

  v53 = a3 + 58;
  if (v51)
  {
    v53 = a3 + 128;
  }

  v54 = a3[v52];
  v55 = v53[1];
  if (v54)
  {
    v56 = v55 == 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = !v56;
  if (v56)
  {
    v58 = 0;
  }

  else
  {
    v58 = (v54 + *v54);
  }

  v59 = (v58 - *v58);
  if (*v59 >= 7u && v59[3] && (!v57 ? (v60 = 0) : (v60 = (v54 + *v54)), (v61 = (v60 - *v60), *v61 < 7u) || (v62 = v61[3]) == 0 ? (v63 = 0) : (v63 = (v60 + v62 + *(v60 + v62))), (v64 = (v63 - *v63), *v64 >= 0xBu) && (v65 = v64[5]) != 0))
  {
    v66 = *(v63 + v65);
  }

  else
  {
    v66 = 0;
  }

  *(a1 + 600) = v66;
  if (v50)
  {
    v67 = a3[59] == 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = 58;
  if (v67)
  {
    v68 = 128;
  }

  v69 = a3 + 58;
  if (v67)
  {
    v69 = a3 + 128;
  }

  v70 = a3[v68];
  v71 = v69[1];
  if (v70)
  {
    v72 = v71 == 0;
  }

  else
  {
    v72 = 1;
  }

  v73 = !v72;
  if (v72)
  {
    v74 = 0;
  }

  else
  {
    v74 = (v70 + *v70);
  }

  v75 = (v74 - *v74);
  if (*v75 >= 7u && v75[3] && (!v73 ? (v76 = 0) : (v76 = (v70 + *v70)), (v77 = (v76 - *v76), *v77 < 7u) || (v78 = v77[3]) == 0 ? (v79 = 0) : (v79 = (v76 + v78 + *(v76 + v78))), (v80 = (v79 - *v79), *v80 >= 0xDu) && (v81 = v80[6]) != 0))
  {
    v82 = *(v79 + v81);
  }

  else
  {
    v82 = 0;
  }

  *(a1 + 604) = v82;
  *(a1 + 776) = v10[465];
  v83 = (v27 - *v27);
  if (*v83 < 0x4Du)
  {
    LODWORD(v84) = 0;
  }

  else
  {
    v84 = v83[38];
    if (v84)
    {
      LODWORD(v84) = *(v27 + v84);
    }
  }

  *(a1 + 400) = v84;
  v85 = (v27 - *v27);
  if (*v85 < 0x53u)
  {
    LODWORD(v86) = 0;
  }

  else
  {
    v86 = v85[41];
    if (v86)
    {
      LODWORD(v86) = *(v27 + v86);
    }
  }

  *(a1 + 404) = v86;
  v87 = (v27 - *v27);
  if (*v87 < 0x43u)
  {
    LODWORD(v88) = 0;
  }

  else
  {
    v88 = v87[33];
    if (v88)
    {
      LODWORD(v88) = *(v27 + v88);
    }
  }

  *(a1 + 608) = v88;
  *(a1 + 612) = 0;
  v89 = (v27 - *v27);
  if (*v89 >= 0x21u && (v90 = v89[16]) != 0)
  {
    v91 = *(v27 + v90);
  }

  else
  {
    v91 = 0;
  }

  {
    getAdditionalSpillBufferBytes(void)::extra = 0;
  }

  *(a1 + 616) = getAdditionalSpillBufferBytes(void)::extra + v91;
  *(a1 + 620) = *(a1 + 608);
  v92 = (v27 - *v27);
  if (*v92 < 5u)
  {
    LODWORD(v93) = 0;
  }

  else
  {
    v93 = v92[2];
    if (v93)
    {
      LODWORD(v93) = *(v27 + v93);
    }
  }

  *(a1 + 624) = v93;
  v94 = (v27 - *v27);
  if (*v94 < 0x51u)
  {
    LODWORD(v95) = 0;
  }

  else
  {
    v95 = v94[40];
    if (v95)
    {
      LODWORD(v95) = *(v27 + v95);
    }
  }

  *(a1 + 628) = v95;
  v96 = (v27 - *v27);
  if (*v96 < 0x4Fu)
  {
    LODWORD(v97) = 0;
  }

  else
  {
    v97 = v96[39];
    if (v97)
    {
      LODWORD(v97) = *(v27 + v97);
    }
  }

  *(a1 + 632) = v97;
  *(a1 + 776) = v10[465];
  *(a1 + 520) = 0;
  v98 = v27 - *v27;
  v99 = *(v27 + *(v98 + 15) + *(v27 + *(v98 + 15)));
  v100 = *(v98 + 13);
  v246 = v27;
  if (v100)
  {
    LODWORD(v100) = *(v27 + v100);
  }

  v101 = v100;
  v102 = *(v10 + 38);
  v240 = v16;
  if (v10[416] == 1)
  {
    v103 = vaddq_s64(*(v10 + 15), *(v10 + 216));
    v104 = (vsubq_s64(vdupq_laneq_s64(v103, 1), v103).u64[0] & 0xFFFFFFFFFFFFFFFCLL) + ((*(v10 + 50) + *(v10 + 44) - (*(v10 + 49) + *(v10 + 43))) & 0xFFFFFFFFFFFFFFFELL) + 8;
  }

  else
  {
    v104 = 0;
  }

  v105 = (v99 + 31) & 0x1FFFFFFE0;
  if (v100)
  {
    v106 = (v99 + 31) & 0x1FFFFFFE0;
  }

  else
  {
    v106 = v99;
  }

  v107 = (v106 + v100);
  if (v102)
  {
    v108 = ((v106 + v100 + v104 + 31) & 0xFFFFFFFFFFFFFFE0) - (v106 + v100);
  }

  else
  {
    v108 = v104;
  }

  v109 = &v107[8 * v102 + v108];
  v249 = v10;
  if (!v109)
  {
    goto LABEL_224;
  }

  v251 = v106;
  if (a9)
  {
    AGX::Heap<true>::allocateImpl(&v256, a2 + 6832, v109, 0);
    v110 = a1;
    v111 = *(a1 + 1304) + *v257;
    v112 = *v257;
    *(v247 + 1056) = v256;
    *(v247 + 1072) = v112;
    v113 = *&v257[9];
    *(v247 + 1081) = *&v257[9];
    __dst = *(a1 + 1152);
    v241 = *(a1 + 1144) + 0x1000000000;
    *(a1 + 1056) = v241;
  }

  else
  {
    v110 = a1;
    AGX::Heap<true>::allocateImpl(&v256, a2 + 6328, v109, (a1 + 584));
    v111 = *(a1 + 1304) + *v257;
    v114 = *v257;
    *(v247 + 608) = v256;
    *(v247 + 624) = v114;
    v113 = *&v257[9];
    *(v247 + 633) = *&v257[9];
    __dst = *(a1 + 704);
    v241 = *(a1 + 696);
  }

  *(v110 + 1304) = v111;
  v115 = v251;
  if (v99)
  {
    __src = v107;
    v116 = v101;
    v117 = (v246 - *v246);
    v118 = v108;
    if (*v117 < 0x1Fu)
    {
      v121 = v251;
      v119 = v17;
      v122 = v19;
      v120 = 0;
    }

    else
    {
      v119 = v17;
      v120 = v117[15];
      v121 = v251;
      v122 = v19;
      if (v120)
      {
        v120 += v246 + *(v246 + v120);
      }
    }

    memcpy(__dst, (v120 + 4), v99);
    *(a1 + 640) = v241;
    *(a1 + 648) = __dst;
    v115 = v121;
    *(a1 + 656) = v121;
    v19 = v122;
    v17 = v119;
    v101 = v116;
    v107 = __src;
    v108 = v118;
  }

  if (!v101)
  {
    if (v108)
    {
      goto LABEL_206;
    }

    goto LABEL_209;
  }

  if (a9)
  {
    *(a1 + 1064) = v241 + v105;
  }

  v123 = (v244 - *v244);
  v245 = v102;
  if (*v123 >= 0xBu && (v124 = v123[5]) != 0)
  {
    v125 = v244 + v124 + *(v244 + v124);
  }

  else
  {
    v125 = 0;
  }

  v126 = *(v246 - *v246 + 28);
  v127 = *(v246 + v126);
  if (!*(v246 + v126 + v127))
  {
    LODWORD(v102) = v245;
    if (!v108)
    {
      goto LABEL_209;
    }

    goto LABEL_206;
  }

  v238 = v108;
  v242 = v17;
  v128 = 0;
  v129 = 0;
  __srca = &__dst[v105];
  v130 = v125 + 4;
  v131 = 8;
  if (v19)
  {
    v131 = 24;
  }

  v250 = v131;
  v132 = v246;
  while (1)
  {
    v133 = v126;
    v134 = v126 + v127;
    v135 = &v132[v128];
    v136 = *(&v132[v128 + 1] + v134);
    v137 = v134 + v136;
    v138 = v135 + v134 + v136;
    v139 = *(v138 + 4);
    v140 = v135 + v137 - v139;
    v141 = *(v140 + 4);
    if (v141 < 5)
    {
      goto LABEL_172;
    }

    v142 = *(v140 + 8);
    if (!v142)
    {
      goto LABEL_172;
    }

    v143 = *(v246 + v133 + v127 + v136 + v128 * 4 + v142 + 4);
    if (v143 != 114)
    {
      if (v143 == 18)
      {
        if (v141 < 9)
        {
          v145 = 0;
        }

        else
        {
          v144 = v133 + v127 + v136;
          v145 = *(&v246[v128 + 3] + v144 - v139);
          if (v145)
          {
            v145 = *(v246 + v144 + v128 * 4 + v145 + 4);
          }
        }

        v148 = &__srca[8 * v145];
        bzero(v148, v250);
        v150 = &v246[v128] + v133 + v127 + v136 - *(v138 + 4);
        if (*(v150 + 2) < 7u)
        {
          v151 = 0;
        }

        else
        {
          v151 = *(v150 + 5);
          if (v151)
          {
            v151 = 4 * *(v246 + v133 + v127 + v136 + v128 * 4 + v151 + 4);
          }
        }

        AGX::SamplerDescriptor::SamplerDescriptor(&v256, &v130[v151 + *&v130[v151]], v149);
        AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v255, &v256);
        *v148 = v255;
        if (v259 < 0)
        {
          operator delete(__p);
        }

        *&v256 = v148;
        std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v243, &v256);
      }

      goto LABEL_172;
    }

    if (v141 < 7)
    {
      v147 = 0;
    }

    else
    {
      v146 = v133 + v127 + v136;
      v147 = *(&v246[v128 + 2] + v146 - v139 + 2);
      if (v147)
      {
        v147 = 4 * *(v246 + v146 + v128 * 4 + v147 + 4);
      }
    }

    AGX::SamplerDescriptor::SamplerDescriptor(&v256, &v130[v147 + *&v130[v147]], v113);
    AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::allocateBindlessConstantSampler(&v255, *(a1 + 808), &v256);
    v152 = *(v255 + 96);
    std::vector<std::shared_ptr<AGX::HAL300::DynamicLibrary>>::push_back[abi:nn200100](v247 + 696, &v255);
    v153 = &v246[v128] + v133 + v127 + v136 - *(v138 + 4);
    if (*(v153 + 2) < 9u)
    {
      v154 = 0;
    }

    else
    {
      v154 = *(v153 + 6);
      if (v154)
      {
        v154 = *(v246 + v133 + v127 + v136 + v128 * 4 + v154 + 4);
      }
    }

    *&__srca[4 * v154] = v152;
    v155 = *(&v255 + 1);
    if (*(&v255 + 1))
    {
      if (!atomic_fetch_add((*(&v255 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        break;
      }
    }

    if (v259 < 0)
    {
      goto LABEL_198;
    }

LABEL_172:
    ++v129;
    v132 = v246;
    v126 = *(v246 - *v246 + 28);
    v127 = *(v246 + v126);
    ++v128;
    if (v129 >= *(v246 + v126 + v127))
    {
      v10 = v249;
      v17 = v242;
      LODWORD(v102) = v245;
      v108 = v238;
      v115 = v251;
      if (!v238)
      {
        goto LABEL_209;
      }

LABEL_206:
      *(a1 + 520) = &v107[v241];
      v156 = v115;
      v157 = &__dst[v115 + v101];
      v158 = *(v10 + 27);
      v159 = *(v10 + 28) - v158;
      *v157 = v159 >> 2;
      *(v157 + 1) = (*(v10 + 62) - *(v10 + 60)) >> 2;
      *(v157 + 2) = (*(v10 + 88) - *(v10 + 86)) >> 1;
      *(v157 + 3) = (*(v10 + 100) - *(v10 + 98)) >> 1;
      memcpy(v157 + 8, v158, v159);
      v160 = &v157[*(v10 + 28) - *(v10 + 27) + 8];
      memcpy(v160, *(v10 + 30), *(v10 + 31) - *(v10 + 30));
      v161 = &v160[*(v10 + 31) - *(v10 + 30)];
      memcpy(v161, *(v10 + 43), *(v10 + 44) - *(v10 + 43));
      memcpy(&v161[*(v10 + 44) - *(v10 + 43)], *(v10 + 49), *(v10 + 50) - *(v10 + 49));
      if (!*(v157 + 2))
      {
        *(v157 + 2) = *v157;
      }

      v115 = v156;
      if (!*(v157 + 3))
      {
        *(v157 + 3) = *(v157 + 1);
        if (v102)
        {
          goto LABEL_210;
        }

        goto LABEL_224;
      }

LABEL_209:
      if (v102)
      {
LABEL_210:
        *v17 = &__dst[v115 + v101 + v108];
        v162 = (v244 - *v244);
        if (*v162 >= 0xBu && (v163 = v162[5]) != 0)
        {
          v164 = (v244 + v163 + *(v244 + v163));
          if (!a9)
          {
LABEL_216:
            if (v164)
            {
              v165 = v240;
              if (*v164)
              {
                v166 = 0;
                v167 = 1;
                do
                {
                  v168 = (*v17 + 8 * (((v167 * 4) - 4) & 0xFFFFFFFC));
                  AGX::SamplerDescriptor::SamplerDescriptor(&v256, (&v164[v167] + v164[v167]), v113);
                  AGX::SamplerStateEncoderGen5<AGX::HAL300::TextureFormatTable>::SamplerStateFields::SamplerStateFields(&v255, &v256);
                  *v168 = v255;
                  if (v259 < 0)
                  {
                    operator delete(__p);
                  }

                  *&v256 = v168;
                  std::vector<ProgramBindingsAndDMAList::GatherTableEntry *>::push_back[abi:nn200100](v243, &v256);
                  ++v166;
                  ++v167;
                }

                while (v166 < *v164);
                v10 = v249;
              }

LABEL_225:
              AGX::Device<AGX::HAL300::Encoders,AGX::HAL300::Classes,AGX::HAL300::ObjClasses>::registerConstantSamplerList(a2, v243);
              v169 = (v246 - *v246);
              v170 = v169[8];
              v171 = *(v246 + v170);
              v172 = (v246 + v170 + v171);
              v173 = *v172;
              if (v173)
              {
                v174 = 0;
                v175 = 4 * v173;
                v176 = v246 + v170 + v171;
                do
                {
                  v181 = v172[v174 / 4 + 1];
                  v182 = &v176[v174 + v181 - *(&v172[v174 / 4 + 1] + v181)];
                  if (*(v182 + 2) < 7u)
                  {
                    LODWORD(v177) = 0;
                  }

                  else
                  {
                    v177 = *(v182 + 5);
                    if (v177)
                    {
                      v183 = *&v176[v174 + 4 + v181 + v177];
                      LODWORD(v177) = v183;
                      if ((v183 & 0x80000000) != 0)
                      {
                        *(v247 + 8 * ((v183 & 0x7C000000) != 0)) |= 1 << (v183 >> 20);
                        v178 = 0x11800000000000;
                        v180 = v247;
                        goto LABEL_229;
                      }
                    }
                  }

                  v178 = 1 << v177;
                  v179 = 8 * ((v177 & 0xFFFC0) != 0);
                  *(a1 + 56 + v179) |= v178;
                  v180 = (a1 + 104 + v179);
LABEL_229:
                  *v180 |= v178;
                  v174 += 4;
                }

                while (v175 != v174);
              }

              v184 = v169[10];
              v185 = *(v246 + v184);
              v186 = (v246 + v184 + v185);
              v187 = *v186;
              if (v187)
              {
                v188 = 0;
                v189 = 4 * v187;
                v190 = v246 + v184 + v185;
                do
                {
                  v195 = v186[v188 / 4 + 1];
                  v196 = &v190[v188 + v195 - *(&v186[v188 / 4 + 1] + v195)];
                  if (*(v196 + 2) < 7u)
                  {
                    LODWORD(v191) = 0;
                  }

                  else
                  {
                    v191 = *(v196 + 5);
                    if (v191)
                    {
                      v197 = *&v190[v188 + 4 + v195 + v191];
                      LODWORD(v191) = v197;
                      if ((v197 & 0x80000000) != 0)
                      {
                        *(v247 + 8 * ((v197 & 0x7C000000) != 0)) |= 1 << (v197 >> 20);
                        v192 = 0x10000000000000;
                        v194 = v247;
                        goto LABEL_238;
                      }
                    }
                  }

                  v192 = 1 << v191;
                  v193 = 8 * ((v191 & 0xFFFC0) != 0);
                  *(a1 + 72 + v193) |= v192;
                  v194 = (a1 + 120 + v193);
LABEL_238:
                  *v194 |= v192;
                  v188 += 4;
                }

                while (v189 != v188);
              }

              v198 = v169[6];
              v199 = *(v246 + v198);
              v200 = (v246 + v198 + v199);
              v201 = *v200;
              if (v201)
              {
                v202 = 0;
                v203 = 4 * v201;
                v204 = v246 + v198 + v199;
                do
                {
                  v208 = v200[v202 / 4 + 1];
                  v209 = &v204[v202 + v208 - *(&v200[v202 / 4 + 1] + v208)];
                  if (*(v209 + 2) < 7u)
                  {
                    LODWORD(v205) = 0;
                  }

                  else
                  {
                    v205 = *(v209 + 5);
                    if (v205)
                    {
                      v205 = *&v204[v202 + 4 + v208 + v205];
                      if ((v205 & 0x80000000) != 0)
                      {
                        v206 = 1 << (v205 >> 20);
                        v207 = (v205 & 0x7C000000) != 0;
                        goto LABEL_247;
                      }

                      LODWORD(v205) = v205 & 0xFFFFF;
                      if (v205 <= 0x35 && ((1 << v205) & 0x26000000000000) != 0)
                      {
                        goto LABEL_248;
                      }
                    }
                  }

                  v206 = 1 << v205;
                  v207 = v205 > 0x3F;
                  *(v165 + 8 * v207) |= v206;
LABEL_247:
                  *(v247 + 8 * v207) |= v206;
LABEL_248:
                  v202 += 4;
                }

                while (v203 != v202);
              }

              v211 = *(v10 + 10);
              if (*&v211 != 0)
              {
                *(a1 + 56) = vorrq_s8(*(a1 + 56), v211);
                *(a1 + 104) = vorrq_s8(*(a1 + 104), v211);
              }

              v212 = *(v10 + 12);
              if (*&v212 != 0)
              {
                *(a1 + 72) = vorrq_s8(*(a1 + 72), v212);
                *(a1 + 120) = vorrq_s8(*(a1 + 120), v212);
              }

              v213 = v169[12];
              v214 = *(v246 + v213);
              v215 = (v246 + v213 + v214);
              v216 = *v215;
              if (!v216)
              {
LABEL_300:
                if ((*(a1 + 1311) & 1) == 0)
                {
                  *(a1 + 200) = *(v10 + 424);
                  *(a1 + 248) = *(v10 + 440);
                  *(v247 + 224) = vorrq_s8(*(v10 + 440), *(v10 + 424));
                }

                operator new();
              }

              v217 = 0;
              v218 = a1 + 136;
              v219 = 4 * v216;
              v220 = v246 + v213 + v214;
              while (2)
              {
                v223 = *&v220[v217 + 4];
                v224 = v223 - *(&v215[v217 / 4 + 1] + v223);
                v225 = &v220[v217 + v224];
                v226 = *(v225 + 2);
                if (v226 < 7)
                {
                  if (v226 >= 5)
                  {
                    goto LABEL_272;
                  }
                }

                else
                {
                  v227 = *(v225 + 5);
                  if (v227)
                  {
                    v228 = *&v220[v217 + 4 + v223 + v227];
                    goto LABEL_273;
                  }

LABEL_272:
                  v228 = 0;
LABEL_273:
                  v229 = *&v220[v217 + 8 + v224];
                  if (v229)
                  {
                    v230 = v220[v217 + 4 + v223 + v229];
                    v222 = (a1 + 184);
                    v221 = 1;
                    switch(v220[v217 + 4 + v223 + v229])
                    {
                      case 11:
                      case 12:
                      case 13:
                      case 16:
                      case 17:
                      case 62:
                      case 93:
                      case 97:
                      case 98:
                      case 113:
                        if ((v228 & 0x80000000) != 0)
                        {
                          v221 = 1 << (v228 >> 20);
                          v222 = (v247 + 8 * ((v228 & 0x7C000000) != 0));
                          goto LABEL_266;
                        }

                        if ((v228 & 0x7FF00000) != 0x400000)
                        {
                          if (v230 == 113 || v230 == 98)
                          {
                            v232 = 32;
                          }

                          else
                          {
                            v232 = 16;
                          }

                          v233 = 8 * ((v228 & 0xFFFC0) != 0);
                          v221 = 1 << v228;
                          *(v218 + v232 + v233) |= 1 << v228;
                          v222 = (v247 + v233 + v232);
LABEL_266:
                          *v222 |= v221;
                        }

                        break;
                      case 24:
                        v222 = (a1 + 184);
                        v221 = 4;
                        goto LABEL_266;
                      case 25:
                        v222 = (a1 + 184);
                        v221 = 8;
                        goto LABEL_266;
                      case 27:
                        goto LABEL_266;
                      case 28:
                        v222 = (a1 + 184);
                        v221 = 2;
                        goto LABEL_266;
                      case 59:
                        v222 = (a1 + 184);
                        v221 = 16;
                        goto LABEL_266;
                      case 60:
                      case 61:
                        v222 = (a1 + 184);
                        v221 = 32;
                        goto LABEL_266;
                      case 75:
                        v222 = (a1 + 184);
                        v221 = 64;
                        goto LABEL_266;
                      case 84:
                      case 85:
                        v222 = (a1 + 184);
                        v221 = 128;
                        goto LABEL_266;
                      case 108:
                        v222 = (a1 + 184);
                        v221 = 256;
                        goto LABEL_266;
                      case 109:
                      case 110:
                        v221 = 1 << v228;
                        v234 = 8 * ((v228 & 0xFFFC0) != 0);
                        *(v218 + v234) |= 1 << v228;
                        goto LABEL_291;
                      case 111:
                        v222 = (a1 + 184);
                        v221 = 512;
                        goto LABEL_266;
                      case 112:
                        v222 = (a1 + 184);
                        v221 = 1024;
                        goto LABEL_266;
                      case 118:
                        v222 = (a1 + 184);
                        v221 = 2048;
                        goto LABEL_266;
                      case 119:
                        v222 = (a1 + 184);
                        v221 = 4096;
                        goto LABEL_266;
                      case 120:
                        v222 = (a1 + 184);
                        v221 = 0x2000;
                        goto LABEL_266;
                      case -117:
                        v221 = 1 << v228;
                        v234 = 8 * ((v228 & 0xFFFC0) != 0);
                        *(v165 + v234) |= 1 << v228;
LABEL_291:
                        v222 = (v247 + v234);
                        goto LABEL_266;
                      default:
                        break;
                    }
                  }
                }

                v217 += 4;
                if (v219 == v217)
                {
                  goto LABEL_300;
                }

                continue;
              }
            }

            goto LABEL_224;
          }
        }

        else
        {
          v164 = 0;
          if (!a9)
          {
            goto LABEL_216;
          }
        }

        *(a1 + 1072) = &v107[v108 + v241];
        goto LABEL_216;
      }

LABEL_224:
      v165 = v240;
      goto LABEL_225;
    }
  }

  (v155->__on_zero_shared)(v155);
  std::__shared_weak_count::__release_weak(v155);
  if ((v259 & 0x80000000) == 0)
  {
    goto LABEL_172;
  }

LABEL_198:
  operator delete(__p);
  goto LABEL_172;
}