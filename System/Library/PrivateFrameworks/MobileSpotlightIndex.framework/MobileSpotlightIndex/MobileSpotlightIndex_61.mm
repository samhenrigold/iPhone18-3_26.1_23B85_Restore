void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE8truncateEv(uint64_t a1)
{
  if (*(a1 + 192))
  {
    v1 = *__error();
    v2 = _SILogForLogForCategory(16);
    v3 = dword_1EBF46B0C < 3;
    if (os_log_type_enabled(v2, (dword_1EBF46B0C < 3)))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C278D000, v2, v3, "*warn* call truncate on readOnly index.", v8, 2u);
    }

    *__error() = v1;
  }

  else
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE5flushEy(a1 + 48, 0);
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8truncateEv(*(a1 + 80));
    os_unfair_lock_lock((a1 + 144));
    v5 = *(a1 + 120);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 128);
    v6 = *(a1 + 136);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 144));
    (*(*v7 + 136))(v7);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      if (!v5)
      {
        return;
      }
    }

    else if (!v5)
    {
      return;
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE6unlinkEv(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 144));
  v2 = *(a1 + 120);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v4 + 184))(v4);
  v5 = *(a1 + 80);
  v6 = *__error();
  v7 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__p, v5);
    v8 = v11 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v13 = v8;
    _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "unlink VectorStore %s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *__error() = v6;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  return 1;
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE7subvertEPK22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 20) != *(a2 + 20) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v12);
    free(v11);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  os_unfair_lock_lock((a1 + 144));
  v4 = *(a1 + 120);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  os_unfair_lock_lock((a2 + 144));
  v7 = *(a2 + 120);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 128);
  v8 = *(a2 + 136);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a2 + 144));
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  (*(*v6 + 176))(v6, v9);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE14compactForTestEP22AnyVectorIndexInstancePVi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(16);
    v8 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = (*(*a1 + 16))(a1);
      v10 = (*(*a1 + 24))(a1);
      v11 = (*(*a2 + 16))(a2);
      v12 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v17 = v9;
      v18 = 1024;
      v19 = v10;
      v20 = 1024;
      v21 = v11;
      v22 = 1024;
      v23 = v12;
      _os_log_impl(&dword_1C278D000, v7, v8, "compactForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v6;
    _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE14compactForTestIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEbE4typeEPS4_PVi(a1 + 48, a2 + 48, a3);
  }

  v13 = __si_assert_copy_extra_332();
  v14 = v13;
  v15 = "";
  if (v13)
  {
    v15 = v13;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v15);
  free(v14);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

int *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE7compactEP22AnyVectorIndexInstanceP12uint32_map_tP11TermIdStore18CICompactCallbacksPVi(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(16);
  v6 = 2 * (dword_1EBF46B0C < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = (*(*a1 + 24))(a1);
    v9 = (*(*a2 + 16))(a2);
    v10 = (*(*a2 + 24))(a2);
    *buf = 67109888;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&dword_1C278D000, v5, v6, "compact %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
  }

  result = __error();
  *result = v4;
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 20) != *(a2 + 20) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    v12 = __si_assert_copy_extra_332();
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

void _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE4dumpEbbPViPvU13block_pointerFbjPKvybjfE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  os_unfair_lock_lock((a1 + 144));
  v9 = *(a1 + 120);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v25 = 0u;
  v23 = v11;
  v24 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v22[0] = v12;
  v22[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12enumerator_sC2ENSt3__110shared_ptrI17AnyPartitionStoreEENS7_INS0_11VectorStoreIS2_S3_EEEE(&v25, &v23, v22);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12enumerator_sC2ENSt3__110shared_ptrI17AnyPartitionStoreEENS7_INS0_11VectorStoreIS2_S3_EEEE(&v25, &v23, v22);
  }

  v14 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = ___ZNK22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke;
  v19 = &unk_1E8195028;
  v20 = a6;
  v21 = a4;
  v31 = 0u;
  v32 = 0u;
  for (i = 0; i != 1; (v18)(v17, &v31, &i))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12enumerator_s4nextEv(&v28, &v25);
    v31 = v28;
    v32 = v29;
    if (!v29)
    {
      break;
    }
  }

  std::queue<std::shared_ptr<AnyPartitionStore::Enumerator>>::~queue(v27);
  v15 = *(&v26 + 1);
  if (*(&v26 + 1) && !atomic_fetch_add((*(&v26 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(&v25 + 1);
  if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void ___ZNK22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke()
{
  v0 = __si_assert_copy_extra_332();
  v1 = v0;
  v2 = "";
  if (v0)
  {
    v2 = v0;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 2544, "0", v2);
  free(v1);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE17mergeIndexForTestEP22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v16 = v7;
      v17[0] = 1024;
      *&v17[1] = v8;
      v17[3] = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "mergeIndexForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE10enumeratorEv(a2 + 48);
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
  free(v12);
  if (__valid_fs(-1))
  {
    v14 = 2989;
  }

  else
  {
    v14 = 3072;
  }

  *v14 = -559038737;
  abort();
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE21mergeUpdateSetForTestEPK22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v16 = v7;
      v17[0] = 1024;
      *&v17[1] = v8;
      v17[3] = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "mergeUpdateSetForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    operator new();
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
  free(v12);
  if (__valid_fs(-1))
  {
    v14 = 2989;
  }

  else
  {
    v14 = 3072;
  }

  *v14 = -559038737;
  abort();
}

_DWORD *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE14mergeUpdateSetEPK22AnyVectorIndexInstanceP15PostingBaseInfojy(_DWORD *result, uint64_t a2, char *a3, unsigned int a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (result[2] != *(a2 + 8) || (v5 = result, *(result + 10) != *(a2 + 20)) || result[3] != *(a2 + 12) || result[4] != *(a2 + 16))
  {
    v16 = __si_assert_copy_extra_332();
    v17 = v16;
    v18 = "";
    if (v16)
    {
      v18 = v16;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v18);
    free(v17);
    if (__valid_fs(-1))
    {
      v19 = 2989;
    }

    else
    {
      v19 = 3072;
    }

    *v19 = -559038737;
    abort();
  }

  if (dword_1EBF46B0C >= 5)
  {
    v20 = a2;
    v27 = a4;
    v21 = *__error();
    v22 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = (*(*v5 + 16))(v5);
      v24 = (*(*v5 + 24))(v5);
      v25 = (*(*v20 + 16))(v20);
      v26 = (*(*v20 + 24))(v20);
      __dst[0] = 67109888;
      __dst[1] = v23;
      LOWORD(__dst[2]) = 1024;
      *(&__dst[2] + 2) = v24;
      HIWORD(__dst[3]) = 1024;
      __dst[4] = v25;
      LOWORD(__dst[5]) = 1024;
      *(&__dst[5] + 2) = v26;
      _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "mergeUpdateSet(DocID) %u vectors in %u partitions and %u vectors in %u partitions", __dst, 0x1Au);
    }

    result = __error();
    *result = v21;
    a4 = v27;
    a2 = v20;
  }

  v7 = 0;
  v8 = *(a2 + 80);
  v9 = a4;
  while (v7 != *(v8 + 24))
  {
    v13 = *(_ZNK22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v8, v7) + 1040);
    v14 = _ZNK22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v8, v7);
    memcpy(__dst, v14, sizeof(__dst));
    v15 = _ZNK22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v8, v7);
    if (*(v15 + 1024))
    {
      if (*(v15 + 1028))
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v11 = a5;
    }

    else
    {
      v10 = 0;
      v11 = v9;
    }

    inserted = _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li512EEjfb((v5 + 12), v13, __dst, 0xFFFFFFFF, 3.4028e38);
    result = vi_memory_postings::push_posting(a3, v10, inserted + 256, v11);
    ++v7;
  }

  return result;
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE14mergeUpdateSetEPK22AnyVectorIndexInstanceP15PostingBaseInfoP17TermIdContainer_s(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(16);
    v8 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = (*(*a1 + 16))(a1);
      v10 = (*(*a1 + 24))(a1);
      v11 = (*(*a2 + 16))(a2);
      v12 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v17 = v9;
      v18[0] = 1024;
      *&v18[1] = v10;
      v18[3] = 1024;
      __src = v11;
      __src_4 = 1024;
      __src_6 = v12;
      _os_log_impl(&dword_1C278D000, v7, v8, "mergeUpdateSet(termIds) %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v6;
    operator new();
  }

  v13 = __si_assert_copy_extra_332();
  v14 = v13;
  v15 = "";
  if (v13)
  {
    v15 = v13;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v15);
  free(v14);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE5trainERKNSt3__16vectorIP22AnyVectorIndexInstanceNS5_9allocatorIS8_EEEE(uint64_t a1, void *a2)
{
  if (a2[1] == *a2)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    v4 = "";
    if (v2)
    {
      v4 = v2;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3350, "vi.size() > 0", v4);
  }

  else
  {
    if (**a2 == a1)
    {
      operator new();
    }

    v5 = __si_assert_copy_extra_332();
    v3 = v5;
    v6 = "";
    if (v5)
    {
      v6 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3351, "this == vi[0]", v6);
  }

  free(v3);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

_DWORD *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE13insertForTestEjjPKv14vec_dimensions15vec_data_formatj(_DWORD *a1, int a2, unsigned int a3, const void *a4, int a5, int a6, int a7)
{
  if (a1[2] != a2 || a6 > 2 || a1[3] != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != a1[4])
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v12);
    free(v11);
    if (__valid_fs(-1))
    {
      v13 = 2989;
    }

    else
    {
      v13 = 3072;
    }

    *v13 = -559038737;
    abort();
  }

  result = _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li512EEjfb((a1 + 12), a3, a4, 0xFFFFFFFF, 3.4028e38);
  if (result[258])
  {
    v9 = result[257] + 1;
  }

  else
  {
    result[258] = a7;
    v9 = 1;
  }

  result[257] = v9;
  return result;
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE14insertForMergeEjtjPKv14vec_dimensions15vec_data_formatyjf(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (*(a1 + 8) != a2 || *(a1 + 20) != a3 || a7 > 2 || *(a1 + 12) != vector_dimension_vec_sizes_15424[a6] || vector_size_elem_sizes_15423[a7] != *(a1 + 16))
  {
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  return 1;
}

char *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE12insertVectorEjjPKv14vec_dimensions15vec_data_format14docInvertStateyP15PostingBaseInfo(_DWORD *a1, int a2, unsigned int a3, const void *a4, int a5, int a6, int a7, uint64_t a8, char *a9)
{
  if (a1[2] != a2 || a6 > 2 || a1[3] != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != a1[4])
  {
    v13 = __si_assert_copy_extra_332();
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v15);
    free(v14);
    if (__valid_fs(-1))
    {
      v16 = 2989;
    }

    else
    {
      v16 = 3072;
    }

    *v16 = -559038737;
    abort();
  }

  v11 = _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li512EEjfb((a1 + 12), a3, a4, 0xFFFFFFFF, 3.4028e38) + 256;

  return vi_memory_postings::push_posting(a9, a7, v11, a8);
}

_DWORD *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE17bulkInsertForTestEPKvPKjjS8_(_DWORD *result, char *a2, int *a3, unsigned int a4, unsigned int *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = result;
    if (a4 <= 0x3E8)
    {
      v18 = a4;
      do
      {
        v21 = *a5++;
        v20 = v21;
        v23 = *a3++;
        v22 = v23;
        result = _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li512EEjfb((v8 + 12), v20, a2, 0xFFFFFFFF, 3.4028e38);
        if (result[258])
        {
          v19 = result[257] + 1;
        }

        else
        {
          result[258] = v22;
          v19 = 1;
        }

        result[257] = v19;
        a2 += 1024;
        --v18;
      }

      while (v18);
    }

    else
    {
      v9 = 0;
      v10 = a4 / 0xA;
      v11 = a4;
      v12 = 1.0 / a4;
      do
      {
        v14 = v9 + 1;
        if (!((v9 + 1) % v10))
        {
          v15 = *__error();
          v16 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v25 = ((v9 * 100.0) * v12);
            _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "bulkInsertForTest: %.0f%%", buf, 0xCu);
          }

          *__error() = v15;
        }

        v17 = a3[v9];
        result = _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li512EEjfb((v8 + 12), a5[v9], a2, 0xFFFFFFFF, 3.4028e38);
        if (result[258])
        {
          v13 = result[257] + 1;
        }

        else
        {
          result[258] = v17;
          v13 = 1;
        }

        result[257] = v13;
        a2 += 1024;
        ++v9;
      }

      while (v11 != v14);
    }
  }

  return result;
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE6shadowEbPVi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 144));
  v6 = *(a1 + 120);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 128);
  v7 = *(a1 + 136);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v8 + 168))(v8, a2, a3);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return 0;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE12validAddressEPKv(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 144));
  v5 = *(a1 + 112);
  v4 = *(a1 + 120);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  if (*(a1 + 80) || v7 && ((*(*v7 + 144))(v7, a2) & 1) != 0 || v5 && ((*(*v5 + 56))(v5, a2) & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v10 = *(a1 + 96);
    if (v10)
    {
      v8 = _ZNK16QuantizerManagerIDF16_Li256EE12validAddressEPKv(v10, a2);
    }

    else
    {
      v8 = 0;
    }
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  return v8;
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EE8allExistEPKvj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 <= 0x3E8)
    {
      v12 = a3;
      while (_ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE(a1 + 48, a2))
      {
        a2 += 1024;
        if (!--v12)
        {
          return a3;
        }
      }
    }

    else
    {
      v6 = 0;
      v7 = a3 / 0xA;
      v8 = 1.0 / a3;
      while (1)
      {
        v9 = v6 + 1;
        if (!((v6 + 1) % v7))
        {
          v10 = *__error();
          v11 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v18 = ((v6 * 100.0) * v8);
            _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "allExist: %.0f%%", buf, 0xCu);
          }

          *__error() = v10;
        }

        if (!_ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE(a1 + 48, a2))
        {
          break;
        }

        a2 += 1024;
        ++v6;
        if (a3 == v9)
        {
          return a3;
        }
      }
    }

    v14 = __si_assert_copy_extra_332();
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3331, "false", v16);
    free(v15);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return a3;
}

BOOL _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = 3.4028e38;
  v24 = -1;
  v4 = _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIDF16_Li512EERjRfj(a1, a2, &v24, &v23, 0);
  if (v4 == -1)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "exists";
      *&buf[12] = 1024;
      *&buf[14] = 2804;
      *&buf[18] = 1024;
      *&buf[20] = v24;
      LOWORD(v26[0]) = 2048;
      *(v26 + 2) = v23;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found partID=%u distsq=%e", buf, 0x22u);
    }

    *__error() = v6;
    os_unfair_lock_lock((a1 + 96));
    v9 = *(a1 + 64);
    v8 = *(a1 + 72);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 80);
    v10 = *(a1 + 88);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 96));
    *buf = 0;
    *&buf[8] = buf;
    v26[0] = -1;
    *&buf[16] = 0x2000000000;
    v12 = v24;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE_block_invoke;
    v20[3] = &unk_1E8194FD8;
    v20[5] = a1;
    v20[6] = a2;
    v21 = v24;
    v22 = v23;
    v20[4] = buf;
    (*(*v11 + 80))(v11, v24, v20);
    if (*(*&buf[8] + 24) == -1)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1174405120;
      v15[2] = ___ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE_block_invoke_498;
      v15[3] = &unk_1F427E688;
      v15[5] = a1;
      v15[6] = a2;
      v15[7] = v9;
      v16 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = v11;
      v18 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = v12;
      v15[4] = buf;
      (*(*v11 + 64))(v11, v15);
      v13 = v18;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v14 = v16;
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }

    _Block_object_dispose(buf, 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  return v4 != -1;
}

int *___ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE_block_invoke(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(*(a1 + 40) + 32) + 16), *a3, 1044);
  result = memcmp(v8, Ptr, 0x400uLL);
  if (!result)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = a3[1];
      v27 = 136315906;
      v28 = "exists_block_invoke";
      v29 = 1024;
      v30 = 2809;
      v31 = 1024;
      *v32 = a2;
      *&v32[4] = 2048;
      *&v32[6] = v17;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found actually in partID=%u distsq=%e", &v27, 0x22u);
    }

    *__error() = v11;
    v13 = *__error();
    v14 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 56);
      v19 = *(a1 + 60);
      v27 = 136315906;
      v28 = "exists_block_invoke";
      v29 = 1024;
      v30 = 2810;
      v31 = 1024;
      *v32 = v18;
      *&v32[4] = 2048;
      *&v32[6] = v19;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Vec distance to centroid %u distsq=%e", &v27, 0x22u);
    }

    *__error() = v13;
    v15 = *__error();
    v16 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 60);
      v21 = a3[1];
      v22 = vabds_f32(v20, v21);
      if (v20 == v21)
      {
        v23 = 1;
        v24 = 1;
      }

      else
      {
        v25 = fabsf(v20);
        v26 = fabsf(v21);
        v23 = v22 <= fmaxf(fminf(v26, v25) * 0.000015259, 0.000015259);
        v24 = v22 <= (fmaxf(v25, v26) * 0.000015259);
      }

      v27 = 136317186;
      v28 = "exists_block_invoke";
      v29 = 1024;
      v30 = 2811;
      v31 = 2048;
      *v32 = v22;
      *&v32[8] = 2048;
      *&v32[10] = 0x3810000000000000;
      v33 = 2048;
      v34 = 0x3E80000000000000;
      v35 = 1024;
      v36 = v22 < 1.1755e-38;
      v37 = 1024;
      v38 = v22 < 0.00000011921;
      v39 = 1024;
      v40 = v23;
      v41 = 1024;
      v42 = v24;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: |distancesq - ve.distsq|=%e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", &v27, 0x48u);
    }

    result = __error();
    *result = v15;
    *(*(*(a1 + 32) + 8) + 24) = *a3;
    *a4 = 1;
  }

  return result;
}

void ___ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li512EE_block_invoke_498(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v141 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v9 + 32) + 16), *a3, 1044);
  if (!memcmp(v8, Ptr, 0x400uLL))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v45 = a3[1];
      *buf = 136315906;
      v122 = "exists_block_invoke";
      v123 = 1024;
      v124 = 2819;
      v125 = 1024;
      v126 = a2;
      v127 = 2048;
      *v128 = v45;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found actually in partID=%u distsq=%e", buf, 0x22u);
    }

    *__error() = v11;
    v13 = *(a1 + 48);
    v14 = (*(**(a1 + 56) + 72))(*(a1 + 56), *(a1 + 88));
    v15 = 0uLL;
    v16 = -8;
    do
    {
      v17 = *v13++;
      v18 = v17;
      v19 = *v14++;
      v20 = vsubq_f16(v18, v19);
      v15 = vmlaq_f16(v15, v20, v20);
      v16 += 8;
    }

    while (v16 < 0x1F8);
    v114 = v15;
    v21 = *__error();
    v22 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      _H3 = v114.i16[0];
      __asm { FCVT            S0, H3 }

      _H1 = v114.i16[1];
      __asm { FCVT            S1, H1 }

      v54 = _S0 + _S1;
      LOWORD(_S1) = v114.i16[2];
      __asm { FCVT            S1, H1 }

      _H2 = v114.i16[3];
      __asm { FCVT            S2, H2 }

      v58 = v54 + (_S1 + _S2);
      LOWORD(_S1) = v114.i16[4];
      __asm { FCVT            S1, H1 }

      LOWORD(_S2) = v114.i16[5];
      __asm { FCVT            S2, H2 }

      _S1 = _S1 + _S2;
      LOWORD(_S2) = v114.i16[6];
      __asm { FCVT            S2, H2 }

      v63 = v58 + (_S1 + _S2);
      LOWORD(_S1) = v114.i16[7];
      __asm { FCVT            S1, H1 }

      v65 = *(a1 + 88);
      *buf = 136315906;
      v122 = "exists_block_invoke";
      v123 = 1024;
      v124 = 2821;
      v125 = 1024;
      v126 = v65;
      v127 = 2048;
      *v128 = (v63 + _S1);
      _os_log_error_impl(&dword_1C278D000, v22, OS_LOG_TYPE_ERROR, "%s:%d: Vec distance to centroid %u distsq=%e", buf, 0x22u);
    }

    *__error() = v21;
    v118 = 0;
    v119 = 0;
    v120 = 0;
    (*(**(a1 + 56) + 80))(&v118);
    v23 = *__error();
    v24 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v66 = *v118;
      v67 = *(v118 + 1);
      v68 = *(v118 + 2);
      v69 = *(v118 + 3);
      v70 = v67 == v69 || vabds_f32(v67, v69) <= fmaxf(fminf(fabsf(v69), fabsf(v67)) * 0.000015259, 0.000015259);
      *buf = 136316674;
      v122 = "exists_block_invoke";
      v123 = 1024;
      v124 = 2823;
      v125 = 1024;
      v126 = v66;
      v127 = 2048;
      *v128 = v67;
      *&v128[8] = 1024;
      *&v128[10] = v68;
      v129 = 2048;
      v130 = v69;
      v131 = 1024;
      LODWORD(v132) = v70;
      _os_log_error_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(vec, 2) <%u, %e>, <%u, %e>, %d", buf, 0x38u);
    }

    *__error() = v23;
    v25 = *__error();
    v26 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v71 = *v118;
      v72 = *(v118 + 2);
      v73 = *(v118 + 1) == *(v118 + 3);
      *buf = 136316162;
      v122 = "exists_block_invoke";
      v123 = 1024;
      v124 = 2824;
      v125 = 1024;
      v126 = v71;
      v127 = 1024;
      *v128 = v72;
      *&v128[4] = 1024;
      *&v128[6] = v73;
      _os_log_error_impl(&dword_1C278D000, v26, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v25;
    v27 = *__error();
    v28 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      v74 = *v118;
      v75 = *(v118 + 2);
      v76 = *(v118 + 1) < *(v118 + 3);
      *buf = 136316162;
      v122 = "exists_block_invoke";
      v123 = 1024;
      v124 = 2825;
      v125 = 1024;
      v126 = v74;
      v127 = 1024;
      *v128 = v75;
      *&v128[4] = 1024;
      *&v128[6] = v76;
      _os_log_error_impl(&dword_1C278D000, v28, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v27;
    v29 = *__error();
    v30 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      v77 = *v118;
      v78 = *(v118 + 2);
      v79 = *(v118 + 1) > *(v118 + 3);
      *buf = 136316162;
      v122 = "exists_block_invoke";
      v123 = 1024;
      v124 = 2826;
      v125 = 1024;
      v126 = v77;
      v127 = 1024;
      *v128 = v78;
      *&v128[4] = 1024;
      *&v128[6] = v79;
      _os_log_error_impl(&dword_1C278D000, v30, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v29;
    v31 = *__error();
    v32 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      v80 = *v118;
      v81 = *(v118 + 2);
      v82 = *(v118 + 1);
      v83 = *(v118 + 3);
      v84 = (v82 - v83);
      v85 = vabds_f32(v82, v83);
      if (v82 == v83)
      {
        v86 = 1;
        v87 = 1;
      }

      else
      {
        v110 = fabsf(v82);
        v111 = fabsf(v83);
        v86 = v85 <= fmaxf(fminf(v111, v110) * 0.000015259, 0.000015259);
        v87 = v85 <= (fmaxf(v110, v111) * 0.000015259);
      }

      *buf = 136317698;
      v122 = "exists_block_invoke";
      v123 = 1024;
      v124 = 2827;
      v125 = 1024;
      v126 = v80;
      v127 = 1024;
      *v128 = v81;
      *&v128[4] = 2048;
      *&v128[6] = v84;
      v129 = 2048;
      v130 = 1.17549435e-38;
      v131 = 2048;
      v132 = 0x3E80000000000000;
      v133 = 1024;
      v134 = v85 < 1.1755e-38;
      v135 = 1024;
      v136 = v85 < 0.00000011921;
      v137 = 1024;
      v138 = v86;
      v139 = 1024;
      v140 = v87;
      _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", buf, 0x54u);
    }

    *__error() = v31;
    v116 = 0;
    v117 = 0;
    __p = 0;
    v33 = *(a1 + 56);
    v34 = vi_onefixedsize_memory_allocator::getPtr(*(*(v9 + 32) + 16), *a3, 1044);
    (*(*v33 + 80))(&__p, v33, v34, 2);
    v35 = *__error();
    v36 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      v88 = *__p;
      v89 = *(__p + 1);
      v90 = *(__p + 2);
      v91 = *(__p + 3);
      v92 = v89 == v91 || vabds_f32(v89, v91) <= fmaxf(fminf(fabsf(v91), fabsf(v89)) * 0.000015259, 0.000015259);
      *buf = 136316674;
      v122 = "exists_block_invoke";
      v123 = 1024;
      v124 = 2830;
      v125 = 1024;
      v126 = v88;
      v127 = 2048;
      *v128 = v89;
      *&v128[8] = 1024;
      *&v128[10] = v90;
      v129 = 2048;
      v130 = v91;
      v131 = 1024;
      LODWORD(v132) = v92;
      _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(entry->vec, 2) <%u, %e>, <%u, %e>, %d", buf, 0x38u);
    }

    *__error() = v35;
    v37 = *__error();
    v38 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      v93 = *__p;
      v94 = *(__p + 2);
      v95 = *(__p + 1) == *(__p + 3);
      *buf = 136316162;
      v122 = "exists_block_invoke";
      v123 = 1024;
      v124 = 2831;
      v125 = 1024;
      v126 = v93;
      v127 = 1024;
      *v128 = v94;
      *&v128[4] = 1024;
      *&v128[6] = v95;
      _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v37;
    v39 = *__error();
    v40 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      v96 = *__p;
      v97 = *(__p + 2);
      v98 = *(__p + 1) < *(__p + 3);
      *buf = 136316162;
      v122 = "exists_block_invoke";
      v123 = 1024;
      v124 = 2832;
      v125 = 1024;
      v126 = v96;
      v127 = 1024;
      *v128 = v97;
      *&v128[4] = 1024;
      *&v128[6] = v98;
      _os_log_error_impl(&dword_1C278D000, v40, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v39;
    v41 = *__error();
    v42 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
    {
      v99 = *__p;
      v100 = *(__p + 2);
      v101 = *(__p + 1) > *(__p + 3);
      *buf = 136316162;
      v122 = "exists_block_invoke";
      v123 = 1024;
      v124 = 2833;
      v125 = 1024;
      v126 = v99;
      v127 = 1024;
      *v128 = v100;
      *&v128[4] = 1024;
      *&v128[6] = v101;
      _os_log_error_impl(&dword_1C278D000, v42, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v41;
    v43 = *__error();
    v44 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      v102 = *__p;
      v103 = *(__p + 2);
      v104 = *(__p + 1);
      v105 = *(__p + 3);
      v106 = vabds_f32(v104, v105);
      v107 = (v104 - v105) < 1.1755e-38;
      if (v104 == v105)
      {
        v108 = 1;
        v109 = 1;
      }

      else
      {
        v112 = fabsf(v104);
        v113 = fabsf(v105);
        v108 = v106 <= fmaxf(fminf(v113, v112) * 0.000015259, 0.000015259);
        v109 = v106 <= (fmaxf(v112, v113) * 0.000015259);
      }

      *buf = 136317698;
      v122 = "exists_block_invoke";
      v123 = 1024;
      v124 = 2834;
      v125 = 1024;
      v126 = v102;
      v127 = 1024;
      *v128 = v103;
      *&v128[4] = 2048;
      *&v128[6] = v106;
      v129 = 2048;
      v130 = 1.17549435e-38;
      v131 = 2048;
      v132 = 0x3E80000000000000;
      v133 = 1024;
      v134 = v107;
      v135 = 1024;
      v136 = v106 < 0.00000011921;
      v137 = 1024;
      v138 = v108;
      v139 = 1024;
      v140 = v109;
      _os_log_error_impl(&dword_1C278D000, v44, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", buf, 0x54u);
    }

    *__error() = v43;
    *(*(*(a1 + 32) + 8) + 24) = *a3;
    *a4 = 1;
    if (__p)
    {
      v116 = __p;
      operator delete(__p);
    }

    if (v118)
    {
      v119 = v118;
      operator delete(v118);
    }
  }
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F427E340;
  _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED2Ev((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li512EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F427E340;
  _ZN22IVFVectorIndexTemplateIDF16_Li512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED2Ev((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void _ZNSt3__120__shared_ptr_emplaceIN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsEENS_9allocatorIS6_EEE16__on_zero_sharedEv(uint64_t a1)
{
  if (*(a1 + 95) < 0)
  {
    operator delete(*(a1 + 72));
  }

  v2 = *(a1 + 40);
  *(a1 + 40) = 0;
  if (v2)
  {
    malloc_zone_free(*v2, *(v2 + 8));

    JUMPOUT(0x1C691FEF0);
  }
}

void _ZNSt3__120__shared_ptr_emplaceIN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsEENS_9allocatorIS6_EEED0Ev(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427DCE0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE16replaceQuantizerENSt3__110shared_ptrI9QuantizerIDF16_Li256EEEENS6_I17AnyPartitionStoreEE(uint64_t a1, void *a2, void *a3)
{
  v67 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 136));
  os_unfair_lock_lock((a1 + 96));
  v7 = *(a1 + 64);
  v6 = *(a1 + 72);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a1 + 80);
  v8 = *(a1 + 88);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  v10 = (*(**a2 + 24))();
  v11 = *a3;
  if (v10 != *(*a3 + 68))
  {
    v27 = __si_assert_copy_extra_332();
    v28 = v27;
    v29 = "";
    if (v27)
    {
      v29 = v27;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2559, "newQuantizer->count() == newPartitions->nPartitions()", v29);
    free(v28);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  if (*(*(a1 + 32) + 24) != v11[18])
  {
    v30 = __si_assert_copy_extra_332();
    v31 = v30;
    v32 = "";
    if (v30)
    {
      v32 = v30;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2560, "vectors->count() == newPartitions->nVectors()", v32);
    free(v31);
    if (__valid_fs(-1))
    {
      v33 = 2989;
    }

    else
    {
      v33 = 3072;
    }

    *v33 = -559038737;
    abort();
  }

  if (v7 && v9)
  {
    v12 = *__error();
    v13 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = v7 + 8;
      if (v7[31] < 0)
      {
        v14 = *v14;
      }

      v39 = v14;
      v15 = (*(*v7 + 16))(v7);
      v16 = (*a2 + 8);
      v36 = v15;
      v37 = v12;
      if (*(*a2 + 31) < 0)
      {
        v16 = *v16;
      }

      v38 = v16;
      v35 = (*(**a2 + 16))(*a2);
      v17 = v45;
      (*(*v9 + 152))(v45, v9);
      if (v46 < 0)
      {
        v17 = v45[0];
      }

      v18 = v9[18];
      v34 = v9[17];
      (*(**a3 + 152))(__p);
      v19 = __p;
      if (v44 < 0)
      {
        v19 = __p[0];
      }

      v20 = *(*a3 + 68);
      v21 = *(*a3 + 72);
      *buf = 136317442;
      v48 = v39;
      v49 = 1024;
      v50 = v36;
      v51 = 2080;
      v52 = v38;
      v53 = 1024;
      v54 = v35;
      v55 = 2080;
      v56 = v17;
      v57 = 1024;
      v58 = v18;
      v59 = 1024;
      v60 = v34;
      v61 = 2080;
      v62 = v19;
      v63 = 1024;
      v64 = v21;
      v65 = 1024;
      v66 = v20;
      _os_log_impl(&dword_1C278D000, v13, OS_LOG_TYPE_DEFAULT, "Replace quantizer %s(%u) -> %s(%u), partitions %s(%u/%u) -> %s(%u/%u)", buf, 0x4Eu);
      if (v44 < 0)
      {
        operator delete(__p[0]);
      }

      v12 = v37;
      if (v46 < 0)
      {
        operator delete(v45[0]);
      }
    }

    *__error() = v12;
    v11 = *a3;
  }

  if ((*(*v11 + 24))(v11))
  {
    v22 = v9 == 0;
  }

  else
  {
    v22 = 1;
  }

  if (!v22 && (*(*v9 + 24))(v9))
  {
    (*(**a3 + 176))(*a3, v9);
  }

  v23 = a2[1];
  *&v40 = *a2;
  *(&v40 + 1) = v23;
  if (v23)
  {
    atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
  }

  v24 = a3[1];
  v41 = *a3;
  v42 = v24;
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_lock((a1 + 96));
  _ZNSt3__14swapB8nn200100IN22IVFVectorIndexTemplateIDF16_Li256EE19QuantizerPartitionsEEENS_9enable_ifIXaasr21is_move_constructibleIT_EE5valuesr18is_move_assignableIS5_EE5valueEvE4typeERS5_S8_((a1 + 64), &v40);
  os_unfair_lock_unlock((a1 + 96));
  v25 = v42;
  if (v42 && !atomic_fetch_add(&v42->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v25->__on_zero_shared)(v25);
    std::__shared_weak_count::__release_weak(v25);
  }

  v26 = *(&v40 + 1);
  if (*(&v40 + 1) && !atomic_fetch_add((*(&v40 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v26->__on_zero_shared)(v26);
    std::__shared_weak_count::__release_weak(v26);
  }

  os_unfair_lock_unlock((a1 + 136));
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
  }

  if (v6)
  {
    if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
    }
  }
}

void _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13newPartitionsENSt3__110shared_ptrI9QuantizerIDF16_Li256EEEE(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 96));
  v4 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 80);
  v5 = *(a1 + 88);
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  v7 = ".partitions";
  if (v6 && (*(*v6 + 24))(v6))
  {
    v7 = ".tmp.partitions";
  }

  v8 = strlen(v7);
  if (v8 < 0x7FFFFFFFFFFFFFF8)
  {
    v9 = v8;
    if (v8 < 0x17)
    {
      v11 = v8;
      if (v8)
      {
        memcpy(&__dst, v7, v8);
      }

      *(&__dst + v9) = 0;
      malloc_default_zone();
      if (v11 < 0)
      {
        operator delete(__dst);
      }

      operator new();
    }

    operator new();
  }

  std::vector<long long>::__throw_length_error[abi:nn200100]();
}

int *___ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13newPartitionsENSt3__110shared_ptrI9QuantizerIDF16_Li256EEEE_block_invoke(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  if (*(v3 + 24))
  {
    v4 = 0;
    do
    {
      memset(__p, 0, sizeof(__p));
      v5 = *(a1 + 40);
      Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v3 + 16), v4, 532);
      (*(*v5 + 80))(__p, v5, Ptr, 1);
      (*(**(a1 + 56) + 56))(*(a1 + 56), *__p[0], v4, *(__p[0] + 1));
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v4;
      v3 = *(v2 + 32);
    }

    while (v4 < *(v3 + 24));
  }

  result = (*(**(a1 + 56) + 112))(*(a1 + 56), 0);
  v8 = *(*(v2 + 32) + 24);
  if (v8)
  {
    v9 = *__error();
    v10 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      (*(**(a1 + 56) + 152))(v21);
      if (v22 >= 0)
      {
        v11 = v21;
      }

      else
      {
        v11 = v21[0];
      }

      v12 = *(a1 + 56);
      v13 = *(v12 + 68);
      v14 = *(v12 + 72);
      v15 = *(a1 + 40);
      v16 = v15 + 8;
      if (v15[31] < 0)
      {
        v16 = *v16;
      }

      v17 = (*(*v15 + 16))(v15);
      LODWORD(__p[0]) = 136316162;
      *(__p + 4) = v11;
      WORD2(__p[1]) = 1024;
      *(&__p[1] + 6) = v14;
      WORD1(__p[2]) = 1024;
      HIDWORD(__p[2]) = v13;
      v24 = 2080;
      v25 = v16;
      v26 = 1024;
      v27 = v17;
      _os_log_impl(&dword_1C278D000, v10, OS_LOG_TYPE_DEFAULT, "Create new partitions %s(%u/%u) for new quantizer %s(%u)", __p, 0x28u);
      if (v22 < 0)
      {
        operator delete(v21[0]);
      }
    }

    result = __error();
    *result = v9;
    v8 = *(*(v2 + 32) + 24);
  }

  if (*(*(a1 + 56) + 72) != v8)
  {
    v18 = __si_assert_copy_extra_332();
    v19 = v18;
    v20 = "";
    if (v18)
    {
      v20 = v18;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2538, "newPartitions->nVectors() == vectors->count()", v20);
    free(v19);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

void _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13getPartitionsEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 96));
  v4 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 80);
  v5 = *(a1 + 88);
  if (!v5)
  {
    os_unfair_lock_unlock((a1 + 96));
    *a2 = v6;
    a2[1] = 0;
    if (!v4)
    {
      return;
    }

    goto LABEL_9;
  }

  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock((a1 + 96));
  *a2 = v6;
  a2[1] = v5;
  atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  if (v4)
  {
LABEL_9:
    if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v4->__on_zero_shared)(v4);

      std::__shared_weak_count::__release_weak(v4);
    }
  }
}

void _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12getQuantizerEv(uint64_t a1@<X0>, void *a2@<X8>)
{
  os_unfair_lock_lock((a1 + 96));
  v5 = *(a1 + 64);
  v4 = *(a1 + 72);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 88);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  *a2 = v5;
  a2[1] = v4;
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
    if (!v4)
    {
      return;
    }
  }

  else if (!v4)
  {
    return;
  }

  if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);

    std::__shared_weak_count::__release_weak(v4);
  }
}

void _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED0Ev(void *a1)
{
  _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED2Ev(a1);

  JUMPOUT(0x1C691FEF0);
}

void *_ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED2Ev(void *a1)
{
  *a1 = &unk_1F427DC98;
  v2 = a1[11];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[9];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[7];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[5];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE12diagnoseDumpERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEERNS5_13basic_ostreamIcS8_EEi(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v7 = *(a2 + 8);
  if (*(a2 + 23) >= 0)
  {
    v8 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v8 = v7;
  }

  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, a2, v8);
  v10 = *(a1 + 47);
  if (v10 >= 0)
  {
    v11 = a1 + 24;
  }

  else
  {
    v11 = *(a1 + 24);
  }

  if (v10 >= 0)
  {
    v12 = *(a1 + 47);
  }

  else
  {
    v12 = *(a1 + 32);
  }

  v13 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, v11, v12);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ": ", 2);
  v14 = (*(*a1 + 16))(a1);
  v15 = MEMORY[0x1C691FC90](a3, v14);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, " vectors ", 9);
  v16 = (*(*a1 + 24))(a1);
  v17 = MEMORY[0x1C691FC90](v15, v16);
  v18 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, " partitions.", 12);
  if (*(a1 + 192))
  {
    v19 = "(readOnly)";
  }

  else
  {
    v19 = "(readWrite)";
  }

  if (*(a1 + 192))
  {
    v20 = 10;
  }

  else
  {
    v20 = 11;
  }

  v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v18, v19, v20);
  std::ios_base::getloc((v21 + *(*v21 - 24)));
  v22 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
  (v22->__vftable[2].~facet_0)(v22, 10);
  std::locale::~locale(&v78);
  std::ostream::put();
  std::ostream::flush();
  v75 = 0;
  v76 = 0;
  _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12getQuantizerEv(a1 + 48, &v75);
  v23 = v75;
  if (v75)
  {
    v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "Quantizer: ", 11);
    v25 = *(v23 + 31);
    if (v25 >= 0)
    {
      v26 = v23 + 8;
    }

    else
    {
      v26 = *(v23 + 8);
    }

    if (v25 >= 0)
    {
      v27 = *(v23 + 31);
    }

    else
    {
      v27 = *(v23 + 16);
    }

    v28 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v24, v26, v27);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v28, "(", 1);
    v29 = (*(*v23 + 16))(v23);
    v30 = MEMORY[0x1C691FC80](a3, v29);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v30, ") ", 2);
    v31 = (*(*v23 + 24))(v23);
    v32 = MEMORY[0x1C691FC90](v30, v31);
    v33 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v32, " centroids.", 11);
    std::ios_base::getloc((v33 + *(*v33 - 24)));
    v34 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
    (v34->__vftable[2].~facet_0)(v34, 10);
    std::locale::~locale(&v78);
    std::ostream::put();
    std::ostream::flush();
  }

  v73 = 0;
  v74 = 0;
  _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13getPartitionsEv(a1 + 48, &v73);
  v35 = v73;
  if (v73)
  {
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "Partition: ", 11);
    (*(*v35 + 152))(&v78, v35);
    v36 = (v80 & 0x80u) == 0 ? &v78 : v78.__locale_;
    v37 = (v80 & 0x80u) == 0 ? v80 : v79;
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, v36, v37);
    std::ios_base::getloc((a3 + *(*a3 - 24)));
    v38 = std::locale::use_facet(&v77, MEMORY[0x1E69E5318]);
    (v38->__vftable[2].~facet_0)(v38, 10);
    std::locale::~locale(&v77);
    std::ostream::put();
    std::ostream::flush();
    if (v80 < 0)
    {
      operator delete(v78.__locale_);
    }
  }

  if (a4)
  {
    v71 = v35;
    v39 = *(a1 + 80);
    v40 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "offset,vid", 10);
    v72 = a4;
    if (a4 <= 1)
    {
      v41 = ",";
    }

    else
    {
      v41 = ",vector";
    }

    if (a4 <= 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = 7;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v40, v41, v42);
    std::ios_base::getloc((a3 + *(*a3 - 24)));
    v43 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
    (v43->__vftable[2].~facet_0)(v43, 10);
    std::locale::~locale(&v78);
    std::ostream::put();
    std::ostream::flush();
    if (*(v39 + 24))
    {
      if (a4 <= 1)
      {
        v58 = 0;
        v59 = MEMORY[0x1E69E5318];
        do
        {
          Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v39 + 16), v58, 532);
          v61 = MEMORY[0x1C691FC90](a3, v58);
          v62 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v61, ",", 1);
          v63 = MEMORY[0x1C691FC90](v62, *(Ptr + 528));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v63, ",", 1);
          std::ios_base::getloc((a3 + *(*a3 - 24)));
          v64 = std::locale::use_facet(&v78, v59);
          (v64->__vftable[2].~facet_0)(v64, 10);
          std::locale::~locale(&v78);
          std::ostream::put();
          std::ostream::flush();
          ++v58;
        }

        while (v58 < *(v39 + 24));
      }

      else
      {
        v44 = 0;
        v45 = MEMORY[0x1E69E5318];
        do
        {
          v47 = vi_onefixedsize_memory_allocator::getPtr(*(v39 + 16), v44, 532);
          v48 = MEMORY[0x1C691FC90](a3, v44);
          v49 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, ",", 1);
          v50 = MEMORY[0x1C691FC90](v49, *(v47 + 528));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, ",", 1);
          v51 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "{length = ", 10);
          v52 = MEMORY[0x1C691FCA0](v51, 512);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, ", bytes = 0x", 12);
          data2hexString(&v78, v47, 16);
          if ((v80 & 0x80u) == 0)
          {
            locale = &v78;
          }

          else
          {
            locale = v78.__locale_;
          }

          if ((v80 & 0x80u) == 0)
          {
            v54 = v80;
          }

          else
          {
            v54 = v79;
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v52, locale, v54);
          if (v80 < 0)
          {
            operator delete(v78.__locale_);
          }

          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, " ... ", 5);
          data2hexString(&v78, v47 + 504, 8);
          if ((v80 & 0x80u) == 0)
          {
            v55 = &v78;
          }

          else
          {
            v55 = v78.__locale_;
          }

          if ((v80 & 0x80u) == 0)
          {
            v56 = v80;
          }

          else
          {
            v56 = v79;
          }

          v57 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, v55, v56);
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v57, " }", 2);
          if (v80 < 0)
          {
            operator delete(v78.__locale_);
          }

          std::ios_base::getloc((a3 + *(*a3 - 24)));
          v46 = std::locale::use_facet(&v78, v45);
          (v46->__vftable[2].~facet_0)(v46, 10);
          std::locale::~locale(&v78);
          std::ostream::put();
          std::ostream::flush();
          ++v44;
        }

        while (v44 < *(v39 + 24));
      }
    }

    std::ios_base::getloc((a3 + *(*a3 - 24)));
    v65 = std::locale::use_facet(&v78, MEMORY[0x1E69E5318]);
    (v65->__vftable[2].~facet_0)(v65, 10);
    std::locale::~locale(&v78);
    std::ostream::put();
    std::ostream::flush();
    if (v71)
    {
      (*(*v71 + 104))(v71, a3, v72);
    }
  }

  result = (*(*a1 + 16))(a1);
  v67 = v74;
  if (v74 && !atomic_fetch_add(&v74->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    v68 = result;
    (v67->__on_zero_shared)(v67);
    std::__shared_weak_count::__release_weak(v67);
    result = v68;
  }

  v69 = v76;
  if (v76)
  {
    if (!atomic_fetch_add(&v76->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v70 = result;
      (v69->__on_zero_shared)(v69);
      std::__shared_weak_count::__release_weak(v69);
      return v70;
    }
  }

  return result;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE6statusERKNSt3__112basic_stringIcNS5_11char_traitsIcEENS5_9allocatorIcEEEE(uint64_t a1, uint64_t a2)
{
  v38 = 0;
  v36 = 0u;
  memset(v37, 0, sizeof(v37));
  *__p = 0u;
  v35 = 0u;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  v31 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v31);
  v5 = *(a2 + 23);
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
    v7 = *(a2 + 23);
  }

  else
  {
    v7 = *(a2 + 8);
  }

  v8 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, v6, v7);
  v9 = *(a1 + 47);
  if (v9 >= 0)
  {
    v10 = a1 + 24;
  }

  else
  {
    v10 = *(a1 + 24);
  }

  if (v9 >= 0)
  {
    v11 = *(a1 + 47);
  }

  else
  {
    v11 = *(a1 + 32);
  }

  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v8, v10, v11);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v12, "(", 1);
  v13 = (*(*a1 + 16))(a1);
  v14 = MEMORY[0x1C691FC90](&v32, v13);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, "/", 1);
  v15 = (*(*a1 + 24))(a1);
  v16 = MEMORY[0x1C691FC90](v14, v15);
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, "v", 1);
  _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13getPartitionsEv(a1 + 48, &v29);
  if (v29)
  {
    _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13getPartitionsEv(a1 + 48, &v27);
    v17 = MEMORY[0x1C691FC80](v16, *(v27 + 76));
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v17, ")", 1);
    v18 = v28;
    if (v28 && !atomic_fetch_add(&v28->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
    }
  }

  else
  {
    v19 = MEMORY[0x1C691FC80](v16, 0);
    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v19, ")", 1);
  }

  v20 = v30;
  if (v30 && !atomic_fetch_add(&v30->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v20->__on_zero_shared)(v20);
    std::__shared_weak_count::__release_weak(v20);
  }

  v21 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, "[", 1);
  MEMORY[0x1C691FC90](v21, *(*(a1 + 80) + 36));
  v22 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v32, ",", 1);
  v23 = MEMORY[0x1C691FC90](v22, *(*(a1 + 80) + 40));
  v24 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v23, "] indexId: ", 11);
  MEMORY[0x1C691FCB0](v24, *(a1 + 152));
  std::stringbuf::str();
  *&v31 = *MEMORY[0x1E69E54D8];
  v25 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v31 + *(v31 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v32 = v25;
  *(&v32 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v35) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v32 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v33);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C691FE80](v37);
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE26updateVectorStorageOffsetsEP13__SIUINT64Set(uint64_t a1, unint64_t a2)
{
  v2 = a2;
  if (a2)
  {
    for (i = 0; ; ++i)
    {
      result = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1 + 48);
      if (i >= result)
      {
        break;
      }

      Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 80) + 16), i, 532);
      if ((*(v2 + 184) & 1) == 0)
      {
        v7 = *(Ptr + 528);
        v8 = *(v2 + 24);
        if (!v8 || !((*(v2 + 16) ^ v7) >> (-4 * v8)))
        {
          v9 = *(v2 + 56 + 8 * ((v7 >> (60 - 4 * v8)) & 0xF));
          if (v9)
          {
            v10 = v8 + 2;
            do
            {
              v9 = *((v9 & 0xFFFFFFFFFFFFFFFELL) + 8 * ((v7 >> (64 - 4 * v10++)) & 0xF));
            }

            while ((v9 & 1) != 0);
          }

          if (v9)
          {
            (*(*v9 + 16))(v9);
          }
        }
      }
    }
  }

  else
  {
    while (1)
    {
      result = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1 + 48);
      if (v2 >= result)
      {
        break;
      }

      vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 80) + 16), v2++, 532);
    }
  }

  return result;
}

uint64_t _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 96));
  v2 = *(a1 + 72);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (!v3)
  {
    os_unfair_lock_unlock((a1 + 96));
    if (v4)
    {
      v5 = *(v4 + 72);
      goto LABEL_9;
    }

LABEL_13:
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2476, "cur.partitions != nullptr", v9);
    free(v8);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock((a1 + 96));
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 72);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

LABEL_9:
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  return v5;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE16getDataForOffsetEjPj(void *a1, uint64_t a2, int *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if ((*(*a1 + 16))(a1) <= a2)
  {
    v8 = *__error();
    v9 = _SILogForLogForCategory(2);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = (*(*a1 + 16))(a1);
      v12 = 136315906;
      v13 = "getDataForOffset";
      v14 = 1024;
      v15 = 3635;
      v16 = 1024;
      v17 = a2;
      v18 = 1024;
      v19 = v11;
      _os_log_error_impl(&dword_1C278D000, v9, OS_LOG_TYPE_ERROR, "%s:%d: offset out of range: %u >= %u", &v12, 0x1Eu);
    }

    v10 = __error();
    v7 = 0;
    result = 0;
    *v10 = v8;
  }

  else
  {
    result = (*(a1[6] + 32))(a1 + 6, a2);
    v7 = 512;
  }

  *a3 = v7;
  return result;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE11storageSizeEv(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 144));
  v2 = *(a1 + 120);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  v5 = *(*(*(a1 + 80) + 16) + 24);
  v6 = (*(*v4 + 192))(v4);
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  return v6 + v5;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE24aNNForDebugProcessResultEPvU13block_pointerFvjjfE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = *MEMORY[0x1E69E9840];
  v5 = *__error();
  v6 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 16) - *(a2 + 8)) >> 3);
    *buf = 134217984;
    *&buf[4] = v7;
    _os_log_impl(&dword_1C278D000, v6, OS_LOG_TYPE_DEFAULT, "search return %zu results", buf, 0xCu);
  }

  *__error() = v5;
  buf[0] = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IVFANNLogQueryResult", @"com.apple.Spotlight", buf);
  v9 = buf[0];
  v49 = 0;
  v47 = 0u;
  memset(v48, 0, sizeof(v48));
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  memset(v44, 0, sizeof(v44));
  *buf = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](buf);
  v34 = 0;
  v35 = 0;
  v36 = 0;
  v32 = a2;
  _ZNK20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE8allItemsEv(&v34, *(a2 + 8), *(a2 + 16));
  v10 = v35;
  v33 = v34;
  if (v34 != v35)
  {
    if (AppIntegerValue)
    {
      v11 = v9 == 0;
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      v23 = v34;
      do
      {
        (*(a3 + 16))(a3, *(v23 + 2), *(v23 + 4), v23[5]);
        v23 += 6;
      }

      while (v23 != v10);
    }

    else
    {
      v12 = 0;
      v13 = ",";
      v14 = v34;
      do
      {
        (*(a3 + 16))(a3, *(v14 + 2), *(v14 + 4), v14[5]);
        v15 = MEMORY[0x1C691FC90](&v43, *(v14 + 4));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, v13, 1);
        v16 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, ";", 1);
        v17 = &v44[-2] + *(v43 - 24);
        if ((v17[32] & 5) == 0 && ((*(**(v17 + 5) + 32))(__p), v41 > 1000) || (++v12, HIDWORD(v18) = -1030792151 * v12 + 85899344, LODWORD(v18) = HIDWORD(v18), (v18 >> 1) < 0x51EB851))
        {
          v19 = v13;
          v20 = *__error();
          v21 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            std::stringbuf::str();
            v22 = __p;
            if (v40 < 0)
            {
              v22 = __p[0];
            }

            *v37 = 136315138;
            v38 = v22;
            _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "%s", v37, 0xCu);
            if (SHIBYTE(v40) < 0)
            {
              operator delete(__p[0]);
            }
          }

          *__error() = v20;
          __p[0] = 0;
          __p[1] = 0;
          v40 = 0;
          std::stringbuf::str();
          if (SHIBYTE(v40) < 0)
          {
            operator delete(__p[0]);
          }

          v13 = v19;
        }

        v14 += 6;
      }

      while (v14 != v10);
    }
  }

  v24 = &v44[-2] + *(v43 - 24);
  if ((v24[32] & 5) != 0)
  {
    v25 = v32;
  }

  else
  {
    (*(**(v24 + 5) + 32))(__p);
    v25 = v32;
    if (v41 > 0)
    {
      v26 = *__error();
      v27 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        v28 = v40 >= 0 ? __p : __p[0];
        *v37 = 136315138;
        v38 = v28;
        _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "%s", v37, 0xCu);
        if (SHIBYTE(v40) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *__error() = v26;
    }
  }

  if (v25)
  {
    v29 = *(v25 + 8);
    if (v29)
    {
      *(v25 + 16) = v29;
      operator delete(v29);
    }

    MEMORY[0x1C691FEF0](v25, 0x1020C403EC25235);
  }

  if (v33)
  {
    operator delete(v33);
  }

  *buf = *MEMORY[0x1E69E54D8];
  v30 = *(MEMORY[0x1E69E54D8] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
  *&v43 = v30;
  *(&v43 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v46) < 0)
  {
    operator delete(*(&v45 + 1));
  }

  *(&v43 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v44);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C691FE80](v48);
}

void *_ZNK20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE8allItemsEv(void *result, _BYTE *a2, _BYTE *a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3 != a2)
  {
    if (0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 3) < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  return result;
}

uint64_t _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE23aNNForTestProcessResultEP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorIS7_NS8_9allocatorIS7_EEEENS8_4lessIS7_EEEU13block_pointerFvjfE(uint64_t a1, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3);
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "search return %zu results", buf, 0xCu);
  }

  *__error() = v4;
  buf[0] = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IVFANNLogQueryResult", @"com.apple.Spotlight", buf);
  v8 = buf[0];
  v48 = 0;
  v46 = 0u;
  memset(v47, 0, sizeof(v47));
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  memset(v43, 0, sizeof(v43));
  *buf = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](buf);
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v31 = a1;
  _ZNK20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE8allItemsEv(&v33, *(a1 + 8), *(a1 + 16));
  v9 = v34;
  v32 = v33;
  if (v33 != v34)
  {
    if (AppIntegerValue)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v22 = v33;
      do
      {
        (*(a2 + 16))(a2, *(v22 + 2), v22[5]);
        v22 += 6;
      }

      while (v22 != v9);
    }

    else
    {
      v11 = 0;
      v12 = ",";
      v13 = v33;
      do
      {
        (*(a2 + 16))(a2, *(v13 + 2), v13[5]);
        v14 = MEMORY[0x1C691FC90](&v42, *(v13 + 4));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v14, v12, 1);
        v15 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, ";", 1);
        v16 = &v43[-2] + *(v42 - 24);
        if ((v16[32] & 5) == 0 && ((*(**(v16 + 5) + 32))(__p), v40 > 1000) || (++v11, HIDWORD(v17) = -1030792151 * v11 + 85899344, LODWORD(v17) = HIDWORD(v17), (v17 >> 1) < 0x51EB851))
        {
          v18 = v12;
          v19 = *__error();
          v20 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
          {
            std::stringbuf::str();
            v21 = __p;
            if (v39 < 0)
            {
              v21 = __p[0];
            }

            *v36 = 136315138;
            v37 = v21;
            _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "%s", v36, 0xCu);
            if (SHIBYTE(v39) < 0)
            {
              operator delete(__p[0]);
            }
          }

          *__error() = v19;
          __p[0] = 0;
          __p[1] = 0;
          v39 = 0;
          std::stringbuf::str();
          if (SHIBYTE(v39) < 0)
          {
            operator delete(__p[0]);
          }

          v12 = v18;
        }

        v13 += 6;
      }

      while (v13 != v9);
    }
  }

  v23 = &v43[-2] + *(v42 - 24);
  if ((v23[32] & 5) != 0)
  {
    v24 = v31;
  }

  else
  {
    (*(**(v23 + 5) + 32))(__p);
    v24 = v31;
    if (v40 > 0)
    {
      v25 = *__error();
      v26 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        v27 = v39 >= 0 ? __p : __p[0];
        *v36 = 136315138;
        v37 = v27;
        _os_log_impl(&dword_1C278D000, v26, OS_LOG_TYPE_DEFAULT, "%s", v36, 0xCu);
        if (SHIBYTE(v39) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *__error() = v25;
    }
  }

  if (v24)
  {
    v28 = *(v24 + 8);
    if (v28)
    {
      *(v24 + 16) = v28;
      operator delete(v28);
    }

    MEMORY[0x1C691FEF0](v24, 0x1020C403EC25235);
  }

  if (v32)
  {
    operator delete(v32);
  }

  *buf = *MEMORY[0x1E69E54D8];
  v29 = *(MEMORY[0x1E69E54D8] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
  *&v42 = v29;
  *(&v42 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v45) < 0)
  {
    operator delete(*(&v44 + 1));
  }

  *(&v42 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v43);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C691FE80](v47);
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE16aNNProcessResultEPvU13block_pointerFvS5_fjE(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE16aNNProcessResultEPvU13block_pointerFvS5_fjE_block_invoke;
  v4[3] = &unk_1E8194F70;
  v4[4] = a3;
  return _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE16aNNProcessResultEP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorIS7_NS8_9allocatorIS7_EEEENS8_4lessIS7_EEEU13block_pointerFvPNS3_12storage_formEfjE(a2, v4);
}

uint64_t _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE16aNNProcessResultEP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorIS7_NS8_9allocatorIS7_EEEENS8_4lessIS7_EEEU13block_pointerFvPNS3_12storage_formEfjE(uint64_t a1, uint64_t a2)
{
  v52 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *(a1 + 8)) >> 3);
    *buf = 134217984;
    *&buf[4] = v6;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "search return %zu results", buf, 0xCu);
  }

  *__error() = v4;
  buf[0] = 0;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IVFANNLogQueryResult", @"com.apple.Spotlight", buf);
  v8 = buf[0];
  v51 = 0;
  v49 = 0u;
  memset(v50, 0, sizeof(v50));
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  *buf = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](buf);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  v33 = a1;
  _ZNK20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE8allItemsEv(&v35, *(a1 + 8), *(a1 + 16));
  v9 = v36;
  v34 = v35;
  if (v35 != v36)
  {
    if (AppIntegerValue)
    {
      v10 = v8 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      v24 = v35;
      do
      {
        v43 = *v24;
        (*(a2 + 16))(a2, &v43, *(v24 + 4), v24[5]);
        v24 += 6;
      }

      while (v24 != v9);
    }

    else
    {
      v11 = 0;
      v12 = ",";
      v13 = ";";
      v14 = v35;
      do
      {
        v43 = *v14;
        (*(a2 + 16))(a2, &v43, *(v14 + 4), v14[5]);
        v15 = MEMORY[0x1C691FC90](&v45, *(v14 + 4));
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, v12, 1);
        v16 = std::ostream::operator<<();
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v16, v13, 1);
        v17 = &v46[-2] + *(v45 - 24);
        if ((v17[32] & 5) == 0 && ((*(**(v17 + 5) + 32))(__p), v42 > 1000) || (++v11, HIDWORD(v18) = -1030792151 * v11 + 85899344, LODWORD(v18) = HIDWORD(v18), (v18 >> 1) < 0x51EB851))
        {
          v19 = v13;
          v20 = v12;
          v21 = *__error();
          v22 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            std::stringbuf::str();
            v23 = __p;
            if (v41 < 0)
            {
              v23 = __p[0];
            }

            *v38 = 136315138;
            v39 = v23;
            _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "%s", v38, 0xCu);
            if (SHIBYTE(v41) < 0)
            {
              operator delete(__p[0]);
            }
          }

          *__error() = v21;
          __p[0] = 0;
          __p[1] = 0;
          v41 = 0;
          std::stringbuf::str();
          if (SHIBYTE(v41) < 0)
          {
            operator delete(__p[0]);
          }

          v12 = v20;
          v13 = v19;
        }

        v14 += 6;
      }

      while (v14 != v9);
    }
  }

  v25 = &v46[-2] + *(v45 - 24);
  if ((v25[32] & 5) != 0)
  {
    v26 = v33;
  }

  else
  {
    (*(**(v25 + 5) + 32))(__p);
    v26 = v33;
    if (v42 > 0)
    {
      v27 = *__error();
      v28 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        std::stringbuf::str();
        v29 = v41 >= 0 ? __p : __p[0];
        LODWORD(v43) = 136315138;
        *(&v43 + 4) = v29;
        _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "%s", &v43, 0xCu);
        if (SHIBYTE(v41) < 0)
        {
          operator delete(__p[0]);
        }
      }

      *__error() = v27;
    }
  }

  if (v26)
  {
    v30 = *(v26 + 8);
    if (v30)
    {
      *(v26 + 16) = v30;
      operator delete(v30);
    }

    MEMORY[0x1C691FEF0](v26, 0x1020C403EC25235);
  }

  if (v34)
  {
    operator delete(v34);
  }

  *buf = *MEMORY[0x1E69E54D8];
  v31 = *(MEMORY[0x1E69E54D8] + 72);
  *&buf[*(*buf - 24)] = *(MEMORY[0x1E69E54D8] + 64);
  *&v45 = v31;
  *(&v45 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v48) < 0)
  {
    operator delete(*(&v47 + 1));
  }

  *(&v45 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v46);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C691FE80](v50);
}

void _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE3aNNEjtPKv14vec_dimensions15vec_data_formatfbPv(uint64_t a1, int a2, int a3, float16x8_t *a4, int a5, int a6, uint64_t a7, int *a8, float a9)
{
  if (*(a1 + 8) != a2 || *(a1 + 20) != a3 || a6 > 2 || *(a1 + 12) != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != *(a1 + 16))
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v12);
    free(v11);
    if (__valid_fs(-1))
    {
      v13 = 2989;
    }

    else
    {
      v13 = 3072;
    }

    *v13 = -559038737;
    abort();
  }

  v9 = a1 + 48;

  _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIDF16_Li256EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj(v9, a4, a7, a8, 0, a9);
}

void _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIDF16_Li256EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj(uint64_t a1, float16x8_t *a2, char a3, int *a4, CFIndex AppIntegerValue, float a6)
{
  v125 = *MEMORY[0x1E69E9840];
  v11 = *a4;
  *__str = 0u;
  v124 = 0u;
  snprintf(__str, 0x20uLL, "%02x%02x%02x%02x...%02x%02x%02x%02x", a2->u8[0], a2->u8[1], a2->u8[2], a2->u8[3], a2[31].u8[12], a2[31].u8[13], a2[31].u8[14], a2[31].u8[15]);
  if (!AppIntegerValue)
  {
    AppIntegerValue = CFPreferencesGetAppIntegerValue(@"IVFNumberOfParitionsProbe", @"com.apple.Spotlight", 0);
  }

  keyExistsAndHasValidFormat[0] = 0;
  v12 = CFPreferencesGetAppIntegerValue(@"IVFMinVectorsUseANN", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    v13 = v12;
  }

  else
  {
    v13 = 10000;
  }

  if (10 * v11 <= v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = 10 * v11;
  }

  v15 = v14 * _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
  v16 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
  keyExistsAndHasValidFormat[0] = 0;
  v17 = v15 / v16;
  v18 = CFPreferencesGetAppIntegerValue(@"IVFPartitionProbeMin", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat[0])
  {
    v19 = v18;
  }

  else
  {
    v19 = 7;
  }

  v110 = 0;
  v111 = &v110;
  if (v17 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v17;
  }

  v113 = 0;
  v112 = 0x2000000000;
  v106 = 0;
  v107 = &v106;
  v109 = 0;
  v108 = 0x2000000000;
  v105 = 0;
  *v103 = 0u;
  *__p = 0u;
  _ZN16QuantizerManagerIDF16_Li256EE17aNNLogQueryVecIdsEv(v103);
  Current = CFAbsoluteTimeGetCurrent();
  v91 = v11;
  if ((a3 & 1) != 0 || _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1) <= v20 || _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1) <= v14)
  {
    v49 = *__error();
    v50 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
    {
      v51 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
      v52 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      v53 = a6;
      *keyExistsAndHasValidFormat = 136316162;
      *&keyExistsAndHasValidFormat[4] = __str;
      *&keyExistsAndHasValidFormat[12] = 1024;
      *&keyExistsAndHasValidFormat[14] = v11;
      *&keyExistsAndHasValidFormat[18] = 1024;
      *&keyExistsAndHasValidFormat[20] = v51;
      *&keyExistsAndHasValidFormat[24] = 1024;
      *&keyExistsAndHasValidFormat[26] = v52;
      *&keyExistsAndHasValidFormat[30] = 2048;
      *&keyExistsAndHasValidFormat[32] = a6;
      _os_log_impl(&dword_1C278D000, v50, OS_LOG_TYPE_DEFAULT, "brute force search %s top %u of %u vectors in %u partitions max_distance=%f", keyExistsAndHasValidFormat, 0x28u);
    }

    else
    {
      v53 = a6;
    }

    *__error() = v49;
    v90 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
    v54 = 0;
    v55 = *(a1 + 32);
    v56 = v55;
    while (1)
    {
      if (v54 == *(v56 + 24))
      {
        v71 = v91;
        goto LABEL_91;
      }

      ++*(v111 + 6);
      v57 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratordeEv(v55, v54);
      v58 = *(v57 + 528);
      v59 = _ZNK10CIVector_sIDF16_Li256EE8distanceERKS0_(a2, v57);
      if (!v103[1])
      {
        goto LABEL_80;
      }

      v60 = vcnt_s8(v103[1]);
      v60.i16[0] = vaddlv_u8(v60);
      if (v60.u32[0] > 1uLL)
      {
        v61 = v58;
        if (v103[1] <= v58)
        {
          v61 = v58 % LODWORD(v103[1]);
        }
      }

      else
      {
        v61 = (LODWORD(v103[1]) - 1) & v58;
      }

      v62 = *(v103[0] + v61);
      if (!v62 || (v63 = *v62) == 0)
      {
LABEL_80:
        v65 = 1;
        if (a6 == 0.0)
        {
          goto LABEL_87;
        }

        goto LABEL_81;
      }

      if (v60.u32[0] < 2uLL)
      {
        while (1)
        {
          v64 = v63[1];
          if (v64 == v58)
          {
            if (*(v63 + 4) == v58)
            {
              goto LABEL_71;
            }
          }

          else if ((v64 & (v103[1] - 1)) != v61)
          {
            goto LABEL_80;
          }

          v63 = *v63;
          if (!v63)
          {
            goto LABEL_80;
          }
        }
      }

      while (1)
      {
        v66 = v63[1];
        if (v66 == v58)
        {
          break;
        }

        if (v66 >= v103[1])
        {
          v66 %= v103[1];
        }

        if (v66 != v61)
        {
          goto LABEL_80;
        }

LABEL_74:
        v63 = *v63;
        if (!v63)
        {
          goto LABEL_80;
        }
      }

      if (*(v63 + 4) != v58)
      {
        goto LABEL_74;
      }

LABEL_71:
      v65 = 0;
      if (a6 == 0.0)
      {
LABEL_87:
        if ((v65 & 1) == 0)
        {
          v69 = *__error();
          v70 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v70, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 67109376;
            *&keyExistsAndHasValidFormat[4] = v58;
            *&keyExistsAndHasValidFormat[8] = 2048;
            *&keyExistsAndHasValidFormat[10] = v59;
            _os_log_impl(&dword_1C278D000, v70, OS_LOG_TYPE_DEFAULT, "Include vec_id: %u distance %f", keyExistsAndHasValidFormat, 0x12u);
          }

          *__error() = v69;
        }

        *keyExistsAndHasValidFormat = *(v57 + 512);
        *&keyExistsAndHasValidFormat[16] = v58;
        *&keyExistsAndHasValidFormat[20] = v59;
        _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(a4, keyExistsAndHasValidFormat);
        goto LABEL_56;
      }

LABEL_81:
      if (v59 <= a6)
      {
        goto LABEL_87;
      }

      if ((v65 & 1) == 0)
      {
        v67 = *__error();
        v68 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
        {
          *keyExistsAndHasValidFormat = 67109632;
          *&keyExistsAndHasValidFormat[4] = v58;
          *&keyExistsAndHasValidFormat[8] = 2048;
          *&keyExistsAndHasValidFormat[10] = v59;
          *&keyExistsAndHasValidFormat[18] = 2048;
          *&keyExistsAndHasValidFormat[20] = v53;
          _os_log_impl(&dword_1C278D000, v68, OS_LOG_TYPE_DEFAULT, "Skip vec_id: %u distance %f > %f", keyExistsAndHasValidFormat, 0x1Cu);
        }

        *__error() = v67;
      }

      ++*(v107 + 6);
LABEL_56:
      ++v54;
      v56 = *(a1 + 32);
      if (v55 != v56)
      {
        v86 = __si_assert_copy_extra_332();
        v87 = v86;
        v88 = "";
        if (v86)
        {
          v88 = v86;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1953, "store == other.store", v88);
        free(v87);
        if (__valid_fs(-1))
        {
          v89 = 2989;
        }

        else
        {
          v89 = 3072;
        }

        *v89 = -559038737;
        abort();
      }
    }
  }

  if (!AppIntegerValue)
  {
    keyExistsAndHasValidFormat[0] = 0;
    v22 = CFPreferencesGetAppIntegerValue(@"IVFPartitionProbeMax", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat[0])
    {
      v23 = v22;
    }

    else
    {
      v23 = 40;
    }

    keyExistsAndHasValidFormat[0] = 0;
    v24 = CFPreferencesGetAppIntegerValue(@"IVFPartitionSizeFactor", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
    if (keyExistsAndHasValidFormat[0])
    {
      v25 = v24;
    }

    else
    {
      v25 = 45;
    }

    keyExistsAndHasValidFormat[0] = 0;
    v26 = CFPreferencesGetAppIntegerValue(@"IVFPartitionProbeNumerator", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
    v27 = keyExistsAndHasValidFormat[0];
    v28 = 8 * v26;
    v29 = v25 * v25;
    keyExistsAndHasValidFormat[0] = 0;
    v30 = CFPreferencesGetAppIntegerValue(@"IVFpartitionProbeDecayExponent", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
    v31 = keyExistsAndHasValidFormat[0];
    if (v30 <= 0x12)
    {
      v32 = 18;
    }

    else
    {
      v32 = v30;
    }

    v33 = v32 - 3;
    v34 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
    if (v31)
    {
      v35 = v33;
    }

    else
    {
      v35 = 17;
    }

    v36 = v34 >> v35;
    if (v36 <= 8)
    {
      v37 = 8;
    }

    else
    {
      v37 = v36;
    }

    v38 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
    if (v27)
    {
      v39 = v28;
    }

    else
    {
      v39 = 800;
    }

    v40 = v39 * v38 / (v29 * v37);
    if (v23 < v40)
    {
      v40 = v23;
    }

    if (v40 <= v20)
    {
      AppIntegerValue = v20;
    }

    else
    {
      AppIntegerValue = v40;
    }
  }

  v41 = *__error();
  v42 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    v43 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
    v44 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
    *keyExistsAndHasValidFormat = 136316418;
    *&keyExistsAndHasValidFormat[4] = __str;
    *&keyExistsAndHasValidFormat[12] = 1024;
    *&keyExistsAndHasValidFormat[14] = v11;
    *&keyExistsAndHasValidFormat[18] = 1024;
    *&keyExistsAndHasValidFormat[20] = v43;
    *&keyExistsAndHasValidFormat[24] = 1024;
    *&keyExistsAndHasValidFormat[26] = AppIntegerValue;
    *&keyExistsAndHasValidFormat[30] = 1024;
    *&keyExistsAndHasValidFormat[32] = v44;
    *&keyExistsAndHasValidFormat[36] = 2048;
    *&keyExistsAndHasValidFormat[38] = a6;
    _os_log_impl(&dword_1C278D000, v42, OS_LOG_TYPE_DEFAULT, "aNN search %s top %u of %u vectors in %u of %u partitions max_distance=%f", keyExistsAndHasValidFormat, 0x2Eu);
  }

  *__error() = v41;
  os_unfair_lock_lock((a1 + 136));
  os_unfair_lock_lock((a1 + 96));
  v46 = *(a1 + 64);
  v45 = *(a1 + 72);
  if (v45)
  {
    atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v48 = *(a1 + 80);
  v47 = *(a1 + 88);
  if (v47)
  {
    atomic_fetch_add_explicit(&v47->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v93 = v47;
  os_unfair_lock_unlock((a1 + 96));
  memset(keyExistsAndHasValidFormat, 0, 24);
  (*(*v46 + 80))(keyExistsAndHasValidFormat, v46, a2, AppIntegerValue);
  v92 = *&keyExistsAndHasValidFormat[8] - *keyExistsAndHasValidFormat;
  if (*&keyExistsAndHasValidFormat[8] != *keyExistsAndHasValidFormat)
  {
    operator new();
  }

  v100 = 0;
  v101 = 0;
  v102 = 0;
  v71 = v11;
  v95[0] = MEMORY[0x1E69E9820];
  v95[1] = 1174405120;
  v95[2] = ___ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIDF16_Li256EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj_block_invoke;
  v95[3] = &unk_1F427E300;
  v95[6] = a1;
  v95[7] = a2;
  v95[4] = &v110;
  std::unordered_set<unsigned int>::unordered_set(&v96, v103);
  v99 = a6;
  v95[5] = &v106;
  v98 = a4;
  (*(*v48 + 72))(v48, &v100, v95);
  if (v100)
  {
    v101 = v100;
    operator delete(v100);
  }

  os_unfair_lock_unlock((a1 + 136));
  v83 = v97;
  if (v97)
  {
    do
    {
      v84 = *v83;
      operator delete(v83);
      v83 = v84;
    }

    while (v84);
  }

  v85 = v96;
  v96 = 0;
  if (v85)
  {
    operator delete(v85);
  }

  if (*keyExistsAndHasValidFormat)
  {
    *&keyExistsAndHasValidFormat[8] = *keyExistsAndHasValidFormat;
    operator delete(*keyExistsAndHasValidFormat);
  }

  if (v93 && !atomic_fetch_add(&v93->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v93->__on_zero_shared)(v93);
    std::__shared_weak_count::__release_weak(v93);
  }

  v90 = v92 >> 3;
  if (v45 && !atomic_fetch_add(&v45->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v45->__on_zero_shared)(v45);
    std::__shared_weak_count::__release_weak(v45);
  }

LABEL_91:
  v72 = *__error();
  v73 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
  {
    v74 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
    v75 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
    v76 = *(v107 + 6);
    v77 = *(v111 + 6);
    v78 = 0xAAAAAAAAAAAAAAABLL * ((*(a4 + 2) - *(a4 + 1)) >> 3);
    v79 = CFAbsoluteTimeGetCurrent();
    *keyExistsAndHasValidFormat = 136317442;
    *&keyExistsAndHasValidFormat[4] = __str;
    *&keyExistsAndHasValidFormat[12] = 1024;
    *&keyExistsAndHasValidFormat[14] = v71;
    *&keyExistsAndHasValidFormat[18] = 1024;
    *&keyExistsAndHasValidFormat[20] = v74;
    *&keyExistsAndHasValidFormat[24] = 2048;
    *&keyExistsAndHasValidFormat[26] = a6;
    *&keyExistsAndHasValidFormat[34] = 1024;
    *&keyExistsAndHasValidFormat[36] = v90;
    *&keyExistsAndHasValidFormat[40] = 1024;
    *&keyExistsAndHasValidFormat[42] = v75;
    v115 = 1024;
    v116 = v76;
    v117 = 1024;
    v118 = v77;
    v119 = 2048;
    v120 = v78;
    v121 = 2048;
    v122 = v79 - Current;
    _os_log_impl(&dword_1C278D000, v73, OS_LOG_TYPE_DEFAULT, "search %s top %u of %u vectors max_distance=%f in %u of %u partitions skip %u of %u populate %zu results in duration: %f", keyExistsAndHasValidFormat, 0x4Eu);
  }

  *__error() = v72;
  v80 = __p[0];
  if (__p[0])
  {
    do
    {
      v81 = *v80;
      operator delete(v80);
      v80 = v81;
    }

    while (v81);
  }

  v82 = v103[0];
  v103[0] = 0;
  if (v82)
  {
    operator delete(v82);
  }

  _Block_object_dispose(&v106, 8);
  _Block_object_dispose(&v110, 8);
}

uint64_t _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 96));
  v2 = *(a1 + 72);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (!v3)
  {
    os_unfair_lock_unlock((a1 + 96));
    if (v4)
    {
      v5 = *(v4 + 68);
      goto LABEL_9;
    }

LABEL_13:
    v7 = __si_assert_copy_extra_332();
    v8 = v7;
    v9 = "";
    if (v7)
    {
      v9 = v7;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2470, "cur.partitions != nullptr", v9);
    free(v8);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  os_unfair_lock_unlock((a1 + 96));
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = *(v4 + 68);
  if (!atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

LABEL_9:
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  return v5;
}

unint64_t _ZNK22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratordeEv(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 24) <= a2)
  {
    v4 = __si_assert_copy_extra_332();
    v5 = v4;
    v6 = "";
    if (v4)
    {
      v6 = v4;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1937, "offset < store->endOffset()", v6);
    free(v5);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v2 = *(a1 + 16);

  return vi_onefixedsize_memory_allocator::getPtr(v2, a2, 532);
}

void _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(void *a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 3);
  if (v5 >= *a1)
  {
    if (*(a2 + 5) < v4[5])
    {
      if ((v3 - v4) >= 25)
      {
        v9 = 0;
        v42 = *v4;
        v44 = *(v4 + 2);
        v10 = a1[1];
        do
        {
          v12 = v10;
          v10 += 6 * v9 + 6;
          v13 = 2 * v9;
          v9 = (2 * v9) | 1;
          v14 = v13 + 2;
          if (v14 < v5 && v10[5] < v10[11])
          {
            v10 += 6;
            v9 = v14;
          }

          v11 = *v10;
          *(v12 + 2) = *(v10 + 2);
          *v12 = v11;
        }

        while (v9 <= ((v5 - 2) >> 1));
        v18 = (v3 - 24);
        if (v10 == v18)
        {
          *(v10 + 2) = v44;
          *v10 = v42;
        }

        else
        {
          v19 = *v18;
          *(v10 + 2) = *(v18 + 2);
          *v10 = v19;
          *v18 = v42;
          *(v18 + 2) = v44;
          v20 = v10 - v4 + 24;
          if (v20 >= 25)
          {
            v21 = (0xAAAAAAAAAAAAAAABLL * (v20 >> 3) - 2) >> 1;
            v22 = &v4[6 * v21];
            v23 = v10[5];
            if (v22[5] < v23)
            {
              v47 = *(v10 + 4);
              v46 = *v10;
              do
              {
                v24 = v22;
                v25 = *v22;
                *(v10 + 2) = *(v22 + 2);
                *v10 = v25;
                if (!v21)
                {
                  break;
                }

                v21 = (v21 - 1) >> 1;
                v22 = &v4[6 * v21];
                v10 = v24;
              }

              while (v22[5] < v23);
              *v24 = v46;
              *(v24 + 4) = v47;
              v24[5] = v23;
            }
          }
        }

        v3 = a1[2];
      }

      v35 = *a2;
      *(v3 - 8) = *(a2 + 2);
      *(v3 - 24) = v35;
      v36 = a1[1];
      v37 = a1[2];
      if (v37 - v36 >= 25)
      {
        v38 = (0xAAAAAAAAAAAAAAABLL * ((v37 - v36) >> 3) - 2) >> 1;
        v39 = (v36 + 24 * v38);
        v31 = *(v37 - 4);
        if (*(v39 + 5) < v31)
        {
          v40 = v37 - 24;
          v43 = *(v37 - 24);
          v45 = *(v37 - 8);
          do
          {
            v33 = v39;
            v41 = *v39;
            *(v40 + 16) = *(v39 + 2);
            *v40 = v41;
            if (!v38)
            {
              break;
            }

            v38 = (v38 - 1) >> 1;
            v39 = (v36 + 24 * v38);
            v40 = v33;
          }

          while (*(v39 + 5) < v31);
          goto LABEL_42;
        }
      }
    }
  }

  else
  {
    v6 = a1[3];
    if (v3 >= v6)
    {
      v15 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v4) >> 3);
      if (2 * v15 <= v5 + 1)
      {
        v16 = v5 + 1;
      }

      else
      {
        v16 = 2 * v15;
      }

      if (v15 >= 0x555555555555555)
      {
        v17 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v17 = v16;
      }

      if (v17)
      {
        if (v17 <= 0xAAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::vector<long long>::__throw_length_error[abi:nn200100]();
      }

      v26 = 8 * ((v3 - v4) >> 3);
      *v26 = *a2;
      *(v26 + 16) = *(a2 + 2);
      v8 = v26 + 24;
      v27 = (v26 - (v3 - v4));
      memcpy(v27, v4, v3 - v4);
      a1[1] = v27;
      a1[2] = v8;
      a1[3] = 0;
      if (v4)
      {
        operator delete(v4);
      }
    }

    else
    {
      v7 = *a2;
      *(v3 + 16) = *(a2 + 2);
      *v3 = v7;
      v8 = v3 + 24;
    }

    a1[2] = v8;
    v28 = a1[1];
    if (v8 - v28 >= 25)
    {
      v29 = (0xAAAAAAAAAAAAAAABLL * ((v8 - v28) >> 3) - 2) >> 1;
      v30 = (v28 + 24 * v29);
      v31 = *(v8 - 4);
      if (*(v30 + 5) < v31)
      {
        v32 = v8 - 24;
        v45 = *(v8 - 8);
        v43 = *(v8 - 24);
        do
        {
          v33 = v30;
          v34 = *v30;
          *(v32 + 16) = *(v30 + 2);
          *v32 = v34;
          if (!v29)
          {
            break;
          }

          v29 = (v29 - 1) >> 1;
          v30 = (v28 + 24 * v29);
          v32 = v33;
        }

        while (*(v30 + 5) < v31);
LABEL_42:
        *v33 = v43;
        *(v33 + 16) = v45;
        *(v33 + 20) = v31;
      }
    }
  }
}

void ___ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIDF16_Li256EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj_block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  ++*(*(*(a1 + 32) + 8) + 24);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), *a3, 532);
  v6 = _ZNK10CIVector_sIDF16_Li256EE8distanceERKS0_(*(a1 + 56), Ptr);
  v7 = *(Ptr + 528);
  v8 = *(a1 + 72);
  if (v8)
  {
    v9 = vcnt_s8(v8);
    v9.i16[0] = vaddlv_u8(v9);
    if (v9.u32[0] > 1uLL)
    {
      v10 = *(Ptr + 528);
      if (*&v8 <= v7)
      {
        v10 = v7 % v8.i32[0];
      }
    }

    else
    {
      v10 = (v8.i32[0] - 1) & v7;
    }

    v11 = *(*(a1 + 64) + 8 * v10);
    if (v11)
    {
      v12 = *v11;
      if (v12)
      {
        if (v9.u32[0] < 2uLL)
        {
          v13 = *&v8 - 1;
          while (1)
          {
            v15 = v12[1];
            if (v15 == v7)
            {
              if (*(v12 + 4) == v7)
              {
                goto LABEL_21;
              }
            }

            else if ((v15 & v13) != v10)
            {
              goto LABEL_22;
            }

            v12 = *v12;
            if (!v12)
            {
              goto LABEL_22;
            }
          }
        }

        do
        {
          v14 = v12[1];
          if (v14 == v7)
          {
            if (*(v12 + 4) == v7)
            {
LABEL_21:
              v16 = 0;
              goto LABEL_23;
            }
          }

          else
          {
            if (v14 >= *&v8)
            {
              v14 %= *&v8;
            }

            if (v14 != v10)
            {
              break;
            }
          }

          v12 = *v12;
        }

        while (v12);
      }
    }
  }

LABEL_22:
  v16 = 1;
LABEL_23:
  v17 = *(a1 + 112);
  if (v17 == 0.0 || v6 <= v17)
  {
    if ((v16 & 1) == 0)
    {
      v19 = *__error();
      v20 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 67109376;
        *&v24[4] = v7;
        *&v24[8] = 2048;
        *&v24[10] = v6;
        _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "Include vec_id: %u distance %f", v24, 0x12u);
      }

      *__error() = v19;
    }

    *v24 = *(Ptr + 512);
    *&v24[16] = v7;
    *&v25 = v6;
    _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(*(a1 + 104), v24);
  }

  else
  {
    if ((v16 & 1) == 0)
    {
      v21 = *__error();
      v22 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = *(a1 + 112);
        *v24 = 67109632;
        *&v24[4] = v7;
        *&v24[8] = 2048;
        *&v24[10] = v6;
        *&v24[18] = 2048;
        v25 = v23;
        _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "Skip vec_id: %u distance %f > %f", v24, 0x1Cu);
      }

      *__error() = v21;
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE10aNNForTestEjtPKv14vec_dimensions15vec_data_formatfjbU13block_pointerFvjfEj(uint64_t a1, int a2, int a3, float16x8_t *a4, int a5, int a6, int a7, char a8, float a9, uint64_t a10, unsigned int a11)
{
  if (*(a1 + 8) == a2 && *(a1 + 20) == a3 && a6 <= 2 && *(a1 + 12) == vector_dimension_vec_sizes_15424[a5] && vector_size_elem_sizes_15423[a6] == *(a1 + 16))
  {
    operator new();
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v13);
  free(v12);
  if (__valid_fs(-1))
  {
    v14 = 2989;
  }

  else
  {
    v14 = 3072;
  }

  *v14 = -559038737;
  abort();
}

void _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE3aNNEjtPKv14vec_dimensions15vec_data_formatfjbU13block_pointerFvPvfjE(uint64_t a1, int a2, int a3, float16x8_t *a4, int a5, int a6, int a7, char a8, float a9, uint64_t a10)
{
  if (*(a1 + 8) == a2 && *(a1 + 20) == a3 && a6 <= 2 && *(a1 + 12) == vector_dimension_vec_sizes_15424[a5] && vector_size_elem_sizes_15423[a6] == *(a1 + 16))
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 0x40000000;
    v16 = ___ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE3aNNEjtPKv14vec_dimensions15vec_data_formatfjbU13block_pointerFvPvfjE_block_invoke;
    v17 = &unk_1E8194F48;
    v18 = a10;
    operator new();
  }

  v10 = __si_assert_copy_extra_332();
  v11 = v10;
  v12 = "";
  if (v10)
  {
    v12 = v10;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v12);
  free(v11);
  if (__valid_fs(-1))
  {
    v13 = 2989;
  }

  else
  {
    v13 = 3072;
  }

  *v13 = -559038737;
  abort();
}

BOOL _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE16restoreUpdateSetEP15PostingBaseInfoP14store_stream_t(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v49 = *MEMORY[0x1E69E9840];
  vint32 = store_stream_read_vint32(a3);
  if (!vint32)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v44 = 0;
    v43 = 0;
    memset(__dst, 0, sizeof(__dst));
    v41 = 0;
    CIReadPostings(a3, a2, &v43, &v41);
    v9 = *(a3 + 4);
    v10 = *(a3 + 5);
    if (v10 + 512 <= v9)
    {
      v11 = __dst;
      v12 = 512;
LABEL_6:
      memcpy(v11, (*(a3 + 6) + v10), v12);
      *(a3 + 5) = v10 + v12;
      goto LABEL_7;
    }

    v22 = *(a3 + 6);
    v23 = v9 - v10;
    if (v9 != v10)
    {
      memcpy(__dst, &v22[v10], v9 - v10);
      *(a3 + 5) = v9;
      v10 = v9;
    }

    v24 = prot_pread(*a3, v22, v10, *(a3 + 3));
    if (v24 != -1)
    {
      v25 = v24;
      *(a3 + 4) = v24;
      *(a3 + 5) = 0;
      v26 = *(a3 + 3) + v24;
      *(a3 + 3) = v26;
      if (!v24)
      {
        goto LABEL_7;
      }

      v11 = __dst + v23;
      v12 = 512 - v23;
      if (512 - v23 <= v25)
      {
        v10 = 0;
        goto LABEL_6;
      }

      __offseta = v26;
      v27 = v25;
      while (1)
      {
        v28 = *(a3 + 6);
        v29 = v11;
        v30 = v27;
        memcpy(v11, v28, v27);
        *(a3 + 5) = v30;
        v31 = prot_pread(*a3, v28, v30, __offseta);
        if (v31 == -1)
        {
          break;
        }

        v32 = v31;
        *(a3 + 4) = v31;
        *(a3 + 5) = 0;
        v33 = *(a3 + 3) + v31;
        *(a3 + 3) = v33;
        if (!v31)
        {
          goto LABEL_7;
        }

        v34 = v30;
        __offseta = v33;
        v10 = 0;
        v11 = &v29[v34];
        v12 -= v34;
        v27 = v32;
        if (v12 <= v32)
        {
          goto LABEL_6;
        }
      }
    }

    a3[4] = *__error();
LABEL_7:
    v13 = store_stream_read_vint32(a3);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    v15 = v43;
    v16 = v44;
    os_unfair_lock_lock((a1 + 144));
    v17 = *(a1 + 120);
    if (v17)
    {
      atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v18 = *(a1 + 136);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
      os_unfair_lock_unlock((a1 + 144));
      inserted = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb(a1 + 48, v14, __dst, 0xFFFFFFFF, 3.4028e38);
      *(inserted + 64) = v15;
      *(inserted + 65) = v16;
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 144));
      v21 = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb(a1 + 48, v14, __dst, 0xFFFFFFFF, 3.4028e38);
      *(v21 + 64) = v15;
      *(v21 + 65) = v16;
    }

    if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v17->__on_zero_shared)(v17);
      std::__shared_weak_count::__release_weak(v17);
    }

    v7 = *(a1 + 76);
    v8 = *(a1 + 156);
    buf[0] = *(a1 + 160);
    buf[1] = v8;
    *&buf[2] = v7;
    data_map_restore_data(*(a1 + 176), v14, __dst, 0x200uLL, buf, v20);
    v5 = ++v6 >= vint32;
    if (v6 == vint32)
    {
      return 1;
    }
  }

  v35 = *__error();
  v36 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v46 = "restoreUpdateSet";
    v47 = 1024;
    v48 = 3162;
    _os_log_error_impl(&dword_1C278D000, v36, OS_LOG_TYPE_ERROR, "%s:%d: IVF restoreUpdateSet bad vectorID", buf, 0x12u);
  }

  *__error() = v35;
  return v5;
}

_DWORD *_ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4, float a5)
{
  v84 = *MEMORY[0x1E69E9840];
  v74 = a4;
  v73 = a5;
  if (*(a1 + 144) == 1)
  {
    v52 = __si_assert_copy_extra_332();
    v53 = v52;
    v54 = "";
    if (v52)
    {
      v54 = v52;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2608, "!readOnly", v54);
    goto LABEL_102;
  }

  if (!a2)
  {
    v55 = __si_assert_copy_extra_332();
    v56 = v55;
    v57 = "";
    if (v55)
    {
      v57 = v55;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2609, "vectorId > 0", v57);
    goto LABEL_95;
  }

  v8 = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIDF16_Li256EERjRfj(a1, a3, &v74, &v73, a2);
  v9 = v74;
  if (v74 == -1)
  {
    v58 = __si_assert_copy_extra_332();
    v53 = v58;
    v59 = "";
    if (v58)
    {
      v59 = v58;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2614, "partID != VECTOR_NOT_FOUND", v59);
    goto LABEL_102;
  }

  if (v8 != -1)
  {
    Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 32) + 16), v8, 532);
    if (Ptr[132] == a2)
    {
      return Ptr;
    }

    v72 = 0;
    data = data_map_get_data(*(a1 + 128), a2, &v72);
    v12 = *__error();
    v13 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *__p = 136316162;
      *&__p[4] = "lookupForInsert";
      v78 = 1024;
      v79 = 2633;
      v80 = 1024;
      *v81 = a2;
      *&v81[4] = 2048;
      *&v81[6] = data;
      v82 = 2048;
      v83 = v72;
      _os_log_error_impl(&dword_1C278D000, v13, OS_LOG_TYPE_ERROR, "%s:%d: vectorId=%u in datamap: %p size=%zd", __p, 0x2Cu);
    }

    *__error() = v12;
    if (v72 < 1)
    {
      v19 = *__error();
      v32 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "lookupForInsert";
        v78 = 1024;
        v79 = 2642;
        _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: vectorId is invalid", __p, 0x12u);
      }

      goto LABEL_45;
    }

    if (v72 == 512)
    {
      if (!data || !memcmp(data, a3, 0x200uLL))
      {
LABEL_46:
        v33 = data_map_get_data(*(a1 + 128), Ptr[132], &v72);
        v34 = *__error();
        v35 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v49 = Ptr[132];
          *__p = 136316162;
          *&__p[4] = "lookupForInsert";
          v78 = 1024;
          v79 = 2645;
          v80 = 1024;
          *v81 = v49;
          *&v81[4] = 2048;
          *&v81[6] = v33;
          v82 = 2048;
          v83 = v72;
          _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: old vectorId=%u in datamap: %p size=%zd", __p, 0x2Cu);
        }

        *__error() = v34;
        if (v72 < 1)
        {
          v42 = *__error();
          v45 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "lookupForInsert";
            v78 = 1024;
            v79 = 2654;
            _os_log_error_impl(&dword_1C278D000, v45, OS_LOG_TYPE_ERROR, "%s:%d: old vectorId is invalid", __p, 0x12u);
          }
        }

        else
        {
          if (v72 != 512)
          {
            v69 = __si_assert_copy_extra_332();
            v53 = v69;
            v70 = "";
            if (v69)
            {
              v70 = v69;
            }

            __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2647, "size == D * sizeof(ELEM_TYPE)", v70);
            goto LABEL_102;
          }

          v36 = 512;
          if (!v33 || !memcmp(v33, Ptr, 0x200uLL))
          {
            goto LABEL_69;
          }

          v37 = *__error();
          v38 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
          {
            *__p = 136315394;
            *&__p[4] = "lookupForInsert";
            v78 = 1024;
            v79 = 2649;
            _os_log_error_impl(&dword_1C278D000, v38, OS_LOG_TYPE_ERROR, "%s:%d: vector in datamap is not same as vector passed in", __p, 0x12u);
          }

          *__error() = v37;
          v39 = *__error();
          v40 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            data2hexString(__p, v33, v72);
            v41 = v81[3] >= 0 ? __p : *__p;
            *buf = 136315138;
            v76 = v41;
            _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "vector in datamap: %s", buf, 0xCu);
            if ((v81[3] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }

          *__error() = v39;
          v42 = *__error();
          v43 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
          {
            data2hexString(__p, Ptr, v72);
            v44 = v81[3] >= 0 ? __p : *__p;
            *buf = 136315138;
            v76 = v44;
            _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "vector in vector store: %s", buf, 0xCu);
            if ((v81[3] & 0x80000000) != 0)
            {
              operator delete(*__p);
            }
          }
        }

        *__error() = v42;
        v36 = v72;
LABEL_69:
        if (!memcmp(a3, Ptr, v36))
        {
          v46 = *__error();
          v47 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v47, OS_LOG_TYPE_FAULT))
          {
            v50 = Ptr[132];
            *__p = 136315906;
            *&__p[4] = "lookupForInsert";
            v78 = 1024;
            v79 = 2657;
            v80 = 1024;
            *v81 = a2;
            *&v81[4] = 1024;
            *&v81[6] = v50;
            _os_log_fault_impl(&dword_1C278D000, v47, OS_LOG_TYPE_FAULT, "%s:%d: Dup vector with new vectorId=%u old=%u", __p, 0x1Eu);
          }

          *__error() = v46;
          return Ptr;
        }

        v64 = __si_assert_copy_extra_332();
        v53 = v64;
        v65 = "";
        if (v64)
        {
          v65 = v64;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2656, "memcmp(vec.vec, entry->vec.vec, size) == 0", v65);
LABEL_102:
        free(v53);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }

      v14 = *__error();
      v15 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *__p = 136315394;
        *&__p[4] = "lookupForInsert";
        v78 = 1024;
        v79 = 2637;
        _os_log_error_impl(&dword_1C278D000, v15, OS_LOG_TYPE_ERROR, "%s:%d: vector in datamap is not same as vector passed in", __p, 0x12u);
      }

      *__error() = v14;
      v16 = *__error();
      v17 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        data2hexString(__p, data, v72);
        v18 = v81[3] >= 0 ? __p : *__p;
        *buf = 136315138;
        v76 = v18;
        _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "vector in datamap: %s", buf, 0xCu);
        if ((v81[3] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

      *__error() = v16;
      v19 = *__error();
      v20 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        data2hexString(__p, a3, v72);
        v21 = v81[3] >= 0 ? __p : *__p;
        *buf = 136315138;
        v76 = v21;
        _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "vector passed in: %s", buf, 0xCu);
        if ((v81[3] & 0x80000000) != 0)
        {
          operator delete(*__p);
        }
      }

LABEL_45:
      *__error() = v19;
      goto LABEL_46;
    }

    v66 = __si_assert_copy_extra_332();
    v56 = v66;
    v67 = "";
    if (v66)
    {
      v67 = v66;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2635, "size == D * sizeof(ELEM_TYPE)", v67);
LABEL_95:
    free(v56);
    if (__valid_fs(-1))
    {
      v68 = 2989;
    }

    else
    {
      v68 = 3072;
    }

    *v68 = -559038737;
    abort();
  }

  os_unfair_lock_lock((a1 + 96));
  v22 = *(a1 + 72);
  if (v22)
  {
    atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v23 = a3;
  v25 = *(a1 + 80);
  v24 = *(a1 + 88);
  if (v24)
  {
    atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  v26 = *(a1 + 32);
  OffsetFromEnd = vi_onefixedsize_memory_allocator::allocateOffsetFromEnd(*(v26 + 16), 0x214u);
  v28 = *(v26 + 24);
  if (OffsetFromEnd != v28)
  {
    v71 = *__error();
    v29 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v51 = *(v26 + 24);
      *__p = 136315906;
      *&__p[4] = "newEntry";
      v78 = 1024;
      v79 = 1909;
      v80 = 2048;
      *v81 = OffsetFromEnd;
      *&v81[8] = 1024;
      *&v81[10] = v51;
      _os_log_error_impl(&dword_1C278D000, v29, OS_LOG_TYPE_ERROR, "%s:%d: offset: %llu, nVectors: %u", __p, 0x22u);
    }

    *__error() = v71;
    v28 = *(v26 + 24);
    if (OffsetFromEnd != v28)
    {
      v60 = __si_assert_copy_extra_332();
      v56 = v60;
      v61 = "";
      if (v60)
      {
        v61 = v60;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1912, "offset == nVectors", v61);
      goto LABEL_95;
    }
  }

  *(v26 + 24) = v28 + 1;
  v30 = vi_onefixedsize_memory_allocator::getPtr(*(v26 + 16), OffsetFromEnd, 532);
  memcpy(v30, v23, 0x200uLL);
  *(v30 + 512) = 0u;
  *(v30 + 528) = a2;
  if (*(v26 + 24) == 1)
  {
    *(v26 + 36) = a2;
  }

  *(v26 + 40) = a2;
  (*(*v25 + 56))(v25, v9, OffsetFromEnd, v73);
  v31 = *(a1 + 32);
  if (v25[18] != *(v31 + 24))
  {
    v62 = __si_assert_copy_extra_332();
    v53 = v62;
    v63 = "";
    if (v62)
    {
      v63 = v62;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2619, "cur.partitions->nVectors() == vectors->count()", v63);
    goto LABEL_102;
  }

  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v31 + 16), OffsetFromEnd, 532);
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v24->__on_zero_shared)(v24);
    std::__shared_weak_count::__release_weak(v24);
  }

  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  return Ptr;
}

uint64_t _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIDF16_Li256EERjRfj(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4, int a5)
{
  os_unfair_lock_lock((a1 + 96));
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = *(a1 + 80);
  v12 = *(a1 + 88);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  v14 = *a3;
  if (v14 == -1)
  {
    if (*(a1 + 140) != -1)
    {
      v19 = __si_assert_copy_extra_332();
      v20 = v19;
      v21 = "";
      if (v19)
      {
        v21 = v19;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2574, "mergeBeginVectorOffset == VECTOR_NOT_FOUND", v21);
      free(v20);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    v35 = 0;
    v36 = 0;
    v37 = 0;
    (*(*v11 + 80))(&v35, v11, a2, 1);
    v15 = v35;
    if (v36 - v35 != 8)
    {
      v22 = __si_assert_copy_extra_332();
      v23 = v22;
      v24 = "";
      if (v22)
      {
        v24 = v22;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2576, "topPartition.size() == 1", v24);
      free(v23);
      if (__valid_fs(-1))
      {
        v25 = 2989;
      }

      else
      {
        v25 = 3072;
      }

      *v25 = -559038737;
      abort();
    }

    v16 = *v35;
    *a3 = *v35;
    *a4 = v15[1];
    if (v16 >= _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1))
    {
      v26 = __si_assert_copy_extra_332();
      v27 = v26;
      if (v26)
      {
        v28 = v26;
      }

      else
      {
        v28 = "";
      }

      v29 = *a3;
      v30 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      v31 = v13[19];
      v32 = (*(*v11 + 16))(v11);
      __message_assert("%s:%u: failed assertion '%s' %s Invalid partId %u >= %u (partitions: v%u quantizer v%u", "IVFVectorIndex.hh", 2581, "partID < nPartitions()", v28, v29, v30, v31, v32);
      free(v27);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }

    if (v35)
    {
      v36 = v35;
      operator delete(v35);
    }

    v14 = *a3;
  }

  v35 = 0;
  v36 = &v35;
  v38 = -1;
  v37 = 0x2000000000;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 0x40000000;
  v33[2] = ___ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIDF16_Li256EERjRfj_block_invoke;
  v33[3] = &unk_1E8194E68;
  v34 = a5;
  v33[6] = a4;
  v33[7] = a2;
  v33[4] = &v35;
  v33[5] = a1;
  (*(*v13 + 80))(v13, v14, v33);
  v17 = *(v36 + 6);
  _Block_object_dispose(&v35, 8);
  if (v12 && !atomic_fetch_add(&v12->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v12->__on_zero_shared)(v12);
    std::__shared_weak_count::__release_weak(v12);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  return v17;
}

unint64_t ___ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIDF16_Li256EERjRfj_block_invoke(unint64_t result, uint64_t a2, float *a3, _BYTE *a4)
{
  v4 = *(result + 40);
  v5 = *a3;
  if (v5 >= *(v4 + 140))
  {
    goto LABEL_12;
  }

  v7 = result;
  v8 = **(result + 48);
  v9 = a3[1];
  v10 = v8 == v9;
  v11 = vabds_f32(v8, v9);
  v12 = fmaxf(fminf(fabsf(v9), fabsf(v8)) * 0.000015259, 0.000015259);
  if (v10 || v11 <= v12)
  {
    v14 = a4;
    v15 = *(result + 64);
    if (v15)
    {
      result = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), v5, 532);
      if (v15 != *(result + 528))
      {
        return result;
      }

      *&v5 = *a3;
    }

    v16 = *(v7 + 56);
    Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), v5, 532);
    result = memcmp(v16, Ptr, 0x200uLL);
    if (!result)
    {
      *(*(*(v7 + 32) + 8) + 24) = *a3;
      a4 = v14;
LABEL_12:
      *a4 = 1;
    }
  }

  return result;
}

void *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE14storeUpdateSetEP15RelativePostingP14store_stream_t(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = store_stream_write_vint32(a3, *(*(a1 + 80) + 24));
  v7 = 0;
  v8 = *(a1 + 80);
  v9 = v8;
  while (v7 != *(v9 + 24))
  {
    v10 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratordeEv(v8, v7);
    CIWritePostings(a3, a2, 0, (v10 + 512), 0, 0);
    v12 = *(a3 + 4);
    v11 = *(a3 + 5);
    if (v11 + 512 >= v12)
    {
      v14 = 512;
      v13 = v10;
      while (1)
      {
        v15 = v12 - v11;
        v16 = v13;
        memcpy((*(a3 + 6) + v11), v13, v12 - v11);
        *(a3 + 5) += v15;
        if (store_stream_flush(a3, 0))
        {
          break;
        }

        v13 = &v16[v15];
        v14 -= v15;
        v12 = *(a3 + 4);
        v11 = *(a3 + 5);
        if (v11 + v14 < v12)
        {
          goto LABEL_5;
        }
      }
    }

    else
    {
      v13 = v10;
      v14 = 512;
LABEL_5:
      memcpy((*(a3 + 6) + v11), v13, v14);
      *(a3 + 5) += v14;
    }

    result = store_stream_write_vint32(a3, *(v10 + 528));
    ++v7;
    v9 = *(a1 + 80);
    if (v8 != v9)
    {
      v17 = __si_assert_copy_extra_332();
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 1953, "store == other.store", v19);
      free(v18);
      if (__valid_fs(-1))
      {
        MEMORY[0xBAD] = -559038737;
        abort();
      }

      MEMORY[0xC00] = -559038737;
      abort();
    }
  }

  return result;
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE6renameEPKc(uint64_t a1, const char *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315138;
    *(buf.__r_.__value_.__r.__words + 4) = a2;
    _os_log_impl(&dword_1C278D000, v5, OS_LOG_TYPE_DEFAULT, "rename: %s", &buf, 0xCu);
  }

  *__error() = v4;
  v6 = strlen(a2);
  if (v6 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v7 = v6;
  if (v6 >= 0x17)
  {
    operator new();
  }

  *(&buf.__r_.__value_.__s + 23) = v6;
  if (v6)
  {
    memcpy(&buf, a2, v6);
  }

  buf.__r_.__value_.__s.__data_[v7] = 0;
  v20 = 11;
  strcpy(__s, ".partitions");
  memset(&__p, 0, sizeof(__p));
  v8 = SHIBYTE(buf.__r_.__value_.__r.__words[2]);
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, buf.__r_.__value_.__l.__data_, buf.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = buf;
  }

  std::string::append(&__p, __s, 0xBuLL);
  if (v20 < 0)
  {
    operator delete(*__s);
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_14;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_14;
  }

  operator delete(buf.__r_.__value_.__l.__data_);
LABEL_14:
  os_unfair_lock_lock((a1 + 144));
  v9 = *(a1 + 120);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  (*(*v11 + 160))(v11, p_p);
  v13 = *(a1 + 80);
  memset(&buf, 0, sizeof(buf));
  if (*(v13 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&buf, *(v13 + 48), *(v13 + 56));
  }

  else
  {
    buf = *(v13 + 48);
  }

  MEMORY[0x1C691FAE0](v13 + 48, a2);
  v14 = *__error();
  v15 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = (buf.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &buf : buf.__r_.__value_.__r.__words[0];
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__s, v13);
    v17 = v20 >= 0 ? __s : *__s;
    *v21 = 136315394;
    v22 = v16;
    v23 = 2080;
    v24 = v17;
    _os_log_impl(&dword_1C278D000, v15, OS_LOG_TYPE_DEFAULT, "rename VectorStore %s -> %s", v21, 0x16u);
    if (v20 < 0)
    {
      operator delete(*__s);
    }
  }

  *__error() = v14;
  if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(buf.__r_.__value_.__l.__data_);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (!v9 || atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

    goto LABEL_43;
  }

  (v9->__on_zero_shared)(v9);
  std::__shared_weak_count::__release_weak(v9);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
LABEL_43:
    operator delete(__p.__r_.__value_.__l.__data_);
  }
}

uint64_t _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(void *a1, uint64_t a2)
{
  v25 = 0;
  v23 = 0u;
  memset(v24, 0, sizeof(v24));
  *__p = 0u;
  v22 = 0u;
  v19 = 0u;
  memset(v20, 0, sizeof(v20));
  v18 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v18);
  v5 = *(a2 + 48);
  v4 = a2 + 48;
  v3 = v5;
  v6 = *(v4 + 23);
  if (v6 >= 0)
  {
    v7 = v4;
  }

  else
  {
    v7 = v3;
  }

  if (v6 >= 0)
  {
    v8 = *(v4 + 23);
  }

  else
  {
    v8 = *(v4 + 8);
  }

  v9 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v19, v7, v8);
  v10 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v9, "(", 1);
  v11 = MEMORY[0x1C691FC90](v10, *(v4 - 24));
  v12 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v11, ")[", 2);
  v13 = MEMORY[0x1C691FC90](v12, *(v4 - 12));
  v14 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v13, ",", 1);
  v15 = MEMORY[0x1C691FC90](v14, *(v4 - 8));
  std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v15, "]", 1);
  std::stringbuf::str();
  *&v18 = *MEMORY[0x1E69E54D8];
  v16 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v18 + *(v18 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v19 = v16;
  *(&v19 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v22) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v19 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v20);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C691FE80](v24);
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE13makePurgeableEv(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v3 = *__error();
  v4 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__p, v2);
    v5 = v10 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v12 = v5;
    _os_log_impl(&dword_1C278D000, v4, OS_LOG_TYPE_DEFAULT, "makePurgeable VectorStore %s", buf, 0xCu);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *__error() = v3;
  os_unfair_lock_lock((a1 + 144));
  v6 = *(a1 + 120);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 128);
  v7 = *(a1 + 136);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v8 + 128))(v8);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
    if (!v6)
    {
      return;
    }
  }

  else if (!v6)
  {
    return;
  }

  if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);

    std::__shared_weak_count::__release_weak(v6);
  }
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE12makeReadOnlyEv(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  if (*(a1 + 192))
  {
    v1 = *__error();
    v2 = _SILogForLogForCategory(16);
    v3 = dword_1EBF46B0C < 3;
    if (os_log_type_enabled(v2, (dword_1EBF46B0C < 3)))
    {
      LOWORD(__p[0]) = 0;
      _os_log_impl(&dword_1C278D000, v2, v3, "*warn* call makeReadOnly on readOnly index.", __p, 2u);
    }

    *__error() = v1;
  }

  else
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE5flushEy(a1 + 48, 0);
    v5 = *(a1 + 80);
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8truncateEv(v5);
    v6 = *__error();
    v7 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__p, v5);
      v8 = v13 >= 0 ? __p : __p[0];
      *buf = 136315138;
      v15 = v8;
      _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "makeReadOnly VectorStore %s", buf, 0xCu);
      if (v13 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *__error() = v6;
    os_unfair_lock_lock((a1 + 144));
    v9 = *(a1 + 120);
    if (v9)
    {
      atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 128);
    v10 = *(a1 + 136);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 144));
    (*(*v11 + 120))(v11);
    *(a1 + 192) = 1;
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
      if (!v9)
      {
        return;
      }
    }

    else if (!v9)
    {
      return;
    }

    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);

      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE5flushEy(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144))
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(16);
    v4 = dword_1EBF46B0C < 3;
    if (os_log_type_enabled(v3, (dword_1EBF46B0C < 3)))
    {
      *v10 = 0;
      _os_log_impl(&dword_1C278D000, v3, v4, "*warn* call flush on readOnly index.", v10, 2u);
    }

    *__error() = v2;
  }

  else
  {
    *(*(*(a1 + 32) + 16) + 40) = 0;
    os_unfair_lock_lock((a1 + 96));
    v7 = *(a1 + 72);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *(a1 + 80);
    v8 = *(a1 + 88);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 96));
    (*(*v9 + 112))(v9, a2);
    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
      if (!v7)
      {
        return;
      }
    }

    else if (!v7)
    {
      return;
    }

    if (!atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v7->__on_zero_shared)(v7);

      std::__shared_weak_count::__release_weak(v7);
    }
  }
}

int *_ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8truncateEv(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *__error();
  v3 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__p, a1);
    if (v7 >= 0)
    {
      v4 = __p;
    }

    else
    {
      v4 = __p[0];
    }

    *buf = 136315138;
    v9 = v4;
    _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "truncate VectorStore %s", buf, 0xCu);
    if (v7 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = __error();
  *result = v2;
  return result;
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE8truncateEv(uint64_t a1)
{
  if (*(a1 + 192))
  {
    v1 = *__error();
    v2 = _SILogForLogForCategory(16);
    v3 = dword_1EBF46B0C < 3;
    if (os_log_type_enabled(v2, (dword_1EBF46B0C < 3)))
    {
      *v8 = 0;
      _os_log_impl(&dword_1C278D000, v2, v3, "*warn* call truncate on readOnly index.", v8, 2u);
    }

    *__error() = v1;
  }

  else
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE5flushEy(a1 + 48, 0);
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8truncateEv(*(a1 + 80));
    os_unfair_lock_lock((a1 + 144));
    v5 = *(a1 + 120);
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = *(a1 + 128);
    v6 = *(a1 + 136);
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 144));
    (*(*v7 + 136))(v7);
    if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v6->__on_zero_shared)(v6);
      std::__shared_weak_count::__release_weak(v6);
      if (!v5)
      {
        return;
      }
    }

    else if (!v5)
    {
      return;
    }

    if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v5->__on_zero_shared)(v5);

      std::__shared_weak_count::__release_weak(v5);
    }
  }
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE6unlinkEv(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 144));
  v2 = *(a1 + 120);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 128);
  v3 = *(a1 + 136);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v4 + 184))(v4);
  v5 = *(a1 + 80);
  v6 = *__error();
  v7 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6statusEv(__p, v5);
    v8 = v11 >= 0 ? __p : __p[0];
    *buf = 136315138;
    v13 = v8;
    _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "unlink VectorStore %s", buf, 0xCu);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }
  }

  *__error() = v6;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  return 1;
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE7subvertEPK22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 20) != *(a2 + 20) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v12);
    free(v11);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  os_unfair_lock_lock((a1 + 144));
  v4 = *(a1 + 120);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v6 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  os_unfair_lock_lock((a2 + 144));
  v7 = *(a2 + 120);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 128);
  v8 = *(a2 + 136);
  if (v8)
  {
    atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a2 + 144));
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  (*(*v6 + 176))(v6, v9);
  if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v8->__on_zero_shared)(v8);
    std::__shared_weak_count::__release_weak(v8);
    if (!v5)
    {
      return;
    }
  }

  else if (!v5)
  {
    return;
  }

  if (!atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);

    std::__shared_weak_count::__release_weak(v5);
  }
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE14compactForTestEP22AnyVectorIndexInstancePVi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(16);
    v8 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = (*(*a1 + 16))(a1);
      v10 = (*(*a1 + 24))(a1);
      v11 = (*(*a2 + 16))(a2);
      v12 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v17 = v9;
      v18 = 1024;
      v19 = v10;
      v20 = 1024;
      v21 = v11;
      v22 = 1024;
      v23 = v12;
      _os_log_impl(&dword_1C278D000, v7, v8, "compactForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v6;
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE14compactForTestIS2_EENSt3__19enable_ifIXsr13is_persistentIT_EE5valueEbE4typeEPS4_PVi(a1 + 48, a2 + 48, a3);
  }

  v13 = __si_assert_copy_extra_332();
  v14 = v13;
  v15 = "";
  if (v13)
  {
    v15 = v13;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v15);
  free(v14);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

int *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE7compactEP22AnyVectorIndexInstanceP12uint32_map_tP11TermIdStore18CICompactCallbacksPVi(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *__error();
  v5 = _SILogForLogForCategory(16);
  v6 = 2 * (dword_1EBF46B0C < 4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = (*(*a1 + 16))(a1);
    v8 = (*(*a1 + 24))(a1);
    v9 = (*(*a2 + 16))(a2);
    v10 = (*(*a2 + 24))(a2);
    *buf = 67109888;
    v16 = v7;
    v17 = 1024;
    v18 = v8;
    v19 = 1024;
    v20 = v9;
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&dword_1C278D000, v5, v6, "compact %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
  }

  result = __error();
  *result = v4;
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 20) != *(a2 + 20) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    v12 = __si_assert_copy_extra_332();
    v13 = v12;
    v14 = "";
    if (v12)
    {
      v14 = v12;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v14);
    free(v13);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return result;
}

void _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE4dumpEbbPViPvU13block_pointerFbjPKvybjfE(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  os_unfair_lock_lock((a1 + 144));
  v9 = *(a1 + 120);
  if (v9)
  {
    atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v11 = *(a1 + 128);
  v10 = *(a1 + 136);
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  v26 = 0u;
  memset(v27, 0, sizeof(v27));
  v25 = 0u;
  v23 = v11;
  v24 = v10;
  if (v10)
  {
    atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(a1 + 80);
  v13 = *(a1 + 88);
  v22[0] = v12;
  v22[1] = v13;
  if (v13)
  {
    atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12enumerator_sC2ENSt3__110shared_ptrI17AnyPartitionStoreEENS7_INS0_11VectorStoreIS2_S3_EEEE(&v25, &v23, v22);
    if (!atomic_fetch_add(&v13->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v13->__on_zero_shared)(v13);
      std::__shared_weak_count::__release_weak(v13);
    }
  }

  else
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12enumerator_sC2ENSt3__110shared_ptrI17AnyPartitionStoreEENS7_INS0_11VectorStoreIS2_S3_EEEE(&v25, &v23, v22);
  }

  v14 = v24;
  if (v24 && !atomic_fetch_add(&v24->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 0x40000000;
  v18 = ___ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke;
  v19 = &unk_1E8194E90;
  v20 = a6;
  v21 = a4;
  v31 = 0u;
  v32 = 0u;
  for (i = 0; i != 1; (v18)(v17, &v31, &i))
  {
    _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE12enumerator_s4nextEv(&v28, &v25);
    v31 = v28;
    v32 = v29;
    if (!v29)
    {
      break;
    }
  }

  std::queue<std::shared_ptr<AnyPartitionStore::Enumerator>>::~queue(v27);
  v15 = *(&v26 + 1);
  if (*(&v26 + 1) && !atomic_fetch_add((*(&v26 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v15->__on_zero_shared)(v15);
    std::__shared_weak_count::__release_weak(v15);
  }

  v16 = *(&v25 + 1);
  if (*(&v25 + 1) && !atomic_fetch_add((*(&v25 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v16->__on_zero_shared)(v16);
    std::__shared_weak_count::__release_weak(v16);
  }

  if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v10->__on_zero_shared)(v10);
    std::__shared_weak_count::__release_weak(v10);
  }

  if (v9)
  {
    if (!atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v9->__on_zero_shared)(v9);
      std::__shared_weak_count::__release_weak(v9);
    }
  }
}

void ___ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke()
{
  v0 = __si_assert_copy_extra_332();
  v1 = v0;
  v2 = "";
  if (v0)
  {
    v2 = v0;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "VectorIndexSupport.hh", 2544, "0", v2);
  free(v1);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE17mergeIndexForTestEP22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v16 = v7;
      v17[0] = 1024;
      *&v17[1] = v8;
      v17[3] = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "mergeIndexForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI30vi_onefixedsize_disk_allocator16vi_disk_postingsE10enumeratorEv(a2 + 48);
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
  free(v12);
  if (__valid_fs(-1))
  {
    v14 = 2989;
  }

  else
  {
    v14 = 3072;
  }

  *v14 = -559038737;
  abort();
}

uint64_t _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10beginMergeEv(uint64_t a1)
{
  if (*(a1 + 140) != -1)
  {
    v3 = __si_assert_copy_extra_332();
    v4 = v3;
    v5 = "";
    if (v3)
    {
      v5 = v3;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2846, "mergeBeginVectorOffset == VECTOR_NOT_FOUND", v5);
    free(v4);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  result = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
  *(a1 + 140) = result;
  return result;
}

uint64_t _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8endMergeEv(uint64_t a1)
{
  v26 = *MEMORY[0x1E69E9840];
  if (*(a1 + 140) == -1)
  {
    v11 = __si_assert_copy_extra_332();
    v12 = v11;
    v13 = "";
    if (v11)
    {
      v13 = v11;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 2851, "mergeBeginVectorOffset < VECTOR_NOT_FOUND", v13);
    free(v12);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  *(a1 + 140) = -1;
  v23 = 0;
  v21 = 0u;
  memset(v22, 0, sizeof(v22));
  *v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v16 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v16);
  os_unfair_lock_lock((a1 + 96));
  v2 = *(a1 + 72);
  if (v2)
  {
    atomic_fetch_add_explicit(&v2->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v4 = *(a1 + 80);
  v3 = *(a1 + 88);
  if (v3)
  {
    atomic_fetch_add_explicit(&v3->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 96));
  (*(*v4 + 104))(v4, &v17, 0);
  v5 = *__error();
  v6 = _SILogForLogForCategory(16);
  v7 = 2 * (dword_1EBF46B0C < 4);
  if (os_log_type_enabled(v6, v7))
  {
    std::stringbuf::str();
    v8 = v15 >= 0 ? &__p : __p;
    *buf = 136315138;
    v25 = v8;
    _os_log_impl(&dword_1C278D000, v6, v7, "%s", buf, 0xCu);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  *__error() = v5;
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  *&v16 = *MEMORY[0x1E69E54D8];
  v9 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v16 + *(v16 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v17 = v9;
  *(&v17 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v20) < 0)
  {
    operator delete(v19[1]);
  }

  *(&v17 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v18);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C691FE80](v22);
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE21mergeUpdateSetForTestEPK22AnyVectorIndexInstance(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v4 = *__error();
    v5 = _SILogForLogForCategory(16);
    v6 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v5, v6))
    {
      v7 = (*(*a1 + 16))(a1);
      v8 = (*(*a1 + 24))(a1);
      v9 = (*(*a2 + 16))(a2);
      v10 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v16 = v7;
      v17[0] = 1024;
      *&v17[1] = v8;
      v17[3] = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      _os_log_impl(&dword_1C278D000, v5, v6, "mergeUpdateSetForTest %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v4;
    operator new();
  }

  v11 = __si_assert_copy_extra_332();
  v12 = v11;
  v13 = "";
  if (v11)
  {
    v13 = v11;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v13);
  free(v12);
  if (__valid_fs(-1))
  {
    v14 = 2989;
  }

  else
  {
    v14 = 3072;
  }

  *v14 = -559038737;
  abort();
}

_DWORD *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE14mergeUpdateSetEPK22AnyVectorIndexInstanceP15PostingBaseInfojy(_DWORD *result, uint64_t a2, char *a3, unsigned int a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  if (result[2] != *(a2 + 8) || (v5 = result, *(result + 10) != *(a2 + 20)) || result[3] != *(a2 + 12) || result[4] != *(a2 + 16))
  {
    v16 = __si_assert_copy_extra_332();
    v17 = v16;
    v18 = "";
    if (v16)
    {
      v18 = v16;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v18);
    free(v17);
    if (__valid_fs(-1))
    {
      v19 = 2989;
    }

    else
    {
      v19 = 3072;
    }

    *v19 = -559038737;
    abort();
  }

  if (dword_1EBF46B0C >= 5)
  {
    v20 = a2;
    v27 = a4;
    v21 = *__error();
    v22 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = (*(*v5 + 16))(v5);
      v24 = (*(*v5 + 24))(v5);
      v25 = (*(*v20 + 16))(v20);
      v26 = (*(*v20 + 24))(v20);
      __dst[0] = 67109888;
      __dst[1] = v23;
      LOWORD(__dst[2]) = 1024;
      *(&__dst[2] + 2) = v24;
      HIWORD(__dst[3]) = 1024;
      __dst[4] = v25;
      LOWORD(__dst[5]) = 1024;
      *(&__dst[5] + 2) = v26;
      _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "mergeUpdateSet(DocID) %u vectors in %u partitions and %u vectors in %u partitions", __dst, 0x1Au);
    }

    result = __error();
    *result = v21;
    a4 = v27;
    a2 = v20;
  }

  v7 = 0;
  v8 = *(a2 + 80);
  v9 = a4;
  while (v7 != *(v8 + 24))
  {
    v13 = *(_ZNK22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v8, v7) + 528);
    v14 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v8, v7);
    memcpy(__dst, v14, sizeof(__dst));
    v15 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratorptEv(v8, v7);
    if (*(v15 + 512))
    {
      if (*(v15 + 516))
      {
        v10 = 1;
      }

      else
      {
        v10 = 2;
      }

      v11 = a5;
    }

    else
    {
      v10 = 0;
      v11 = v9;
    }

    inserted = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb((v5 + 12), v13, __dst, 0xFFFFFFFF, 3.4028e38);
    result = vi_memory_postings::push_posting(a3, v10, inserted + 128, v11);
    ++v7;
  }

  return result;
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE14mergeUpdateSetEPK22AnyVectorIndexInstanceP15PostingBaseInfoP17TermIdContainer_s(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == *(a2 + 8) && *(a1 + 20) == *(a2 + 20) && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16))
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(16);
    v8 = 2 * (dword_1EBF46B0C < 4);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = (*(*a1 + 16))(a1);
      v10 = (*(*a1 + 24))(a1);
      v11 = (*(*a2 + 16))(a2);
      v12 = (*(*a2 + 24))(a2);
      *buf = 67109888;
      v17 = v9;
      v18[0] = 1024;
      *&v18[1] = v10;
      v18[3] = 1024;
      __src = v11;
      __src_4 = 1024;
      __src_6 = v12;
      _os_log_impl(&dword_1C278D000, v7, v8, "mergeUpdateSet(termIds) %u vectors in %u partitions and %u vectors in %u partitions", buf, 0x1Au);
    }

    *__error() = v6;
    operator new();
  }

  v13 = __si_assert_copy_extra_332();
  v14 = v13;
  v15 = "";
  if (v13)
  {
    v15 = v13;
  }

  __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3255, "compatible", v15);
  free(v14);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE5trainERKNSt3__16vectorIP22AnyVectorIndexInstanceNS5_9allocatorIS8_EEEE(uint64_t a1, void *a2)
{
  if (a2[1] == *a2)
  {
    v2 = __si_assert_copy_extra_332();
    v3 = v2;
    v4 = "";
    if (v2)
    {
      v4 = v2;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3350, "vi.size() > 0", v4);
  }

  else
  {
    if (**a2 == a1)
    {
      operator new();
    }

    v5 = __si_assert_copy_extra_332();
    v3 = v5;
    v6 = "";
    if (v5)
    {
      v6 = v5;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3351, "this == vi[0]", v6);
  }

  free(v3);
  if (__valid_fs(-1))
  {
    MEMORY[0xBAD] = -559038737;
    abort();
  }

  MEMORY[0xC00] = -559038737;
  abort();
}

_DWORD *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE13insertForTestEjjPKv14vec_dimensions15vec_data_formatj(_DWORD *a1, int a2, unsigned int a3, const void *a4, int a5, int a6, int a7)
{
  if (a1[2] != a2 || a6 > 2 || a1[3] != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != a1[4])
  {
    v10 = __si_assert_copy_extra_332();
    v11 = v10;
    v12 = "";
    if (v10)
    {
      v12 = v10;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v12);
    free(v11);
    if (__valid_fs(-1))
    {
      v13 = 2989;
    }

    else
    {
      v13 = 3072;
    }

    *v13 = -559038737;
    abort();
  }

  result = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb((a1 + 12), a3, a4, 0xFFFFFFFF, 3.4028e38);
  if (result[130])
  {
    v9 = result[129] + 1;
  }

  else
  {
    result[130] = a7;
    v9 = 1;
  }

  result[129] = v9;
  return result;
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE14insertForMergeEjtjPKv14vec_dimensions15vec_data_formatyjf(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
{
  if (*(a1 + 8) != a2 || *(a1 + 20) != a3 || a7 > 2 || *(a1 + 12) != vector_dimension_vec_sizes_15424[a6] || vector_size_elem_sizes_15423[a7] != *(a1 + 16))
  {
    v8 = __si_assert_copy_extra_332();
    v9 = v8;
    v10 = "";
    if (v8)
    {
      v10 = v8;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v10);
    free(v9);
    if (__valid_fs(-1))
    {
      v11 = 2989;
    }

    else
    {
      v11 = 3072;
    }

    *v11 = -559038737;
    abort();
  }

  return 1;
}

char *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE12insertVectorEjjPKv14vec_dimensions15vec_data_format14docInvertStateyP15PostingBaseInfo(_DWORD *a1, int a2, unsigned int a3, const void *a4, int a5, int a6, int a7, uint64_t a8, char *a9)
{
  if (a1[2] != a2 || a6 > 2 || a1[3] != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != a1[4])
  {
    v13 = __si_assert_copy_extra_332();
    v14 = v13;
    v15 = "";
    if (v13)
    {
      v15 = v13;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3250, "compatible", v15);
    free(v14);
    if (__valid_fs(-1))
    {
      v16 = 2989;
    }

    else
    {
      v16 = 3072;
    }

    *v16 = -559038737;
    abort();
  }

  v11 = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb((a1 + 12), a3, a4, 0xFFFFFFFF, 3.4028e38) + 128;

  return vi_memory_postings::push_posting(a9, a7, v11, a8);
}

_DWORD *_ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE17bulkInsertForTestEPKvPKjjS8_(_DWORD *result, char *a2, int *a3, unsigned int a4, unsigned int *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v8 = result;
    if (a4 <= 0x3E8)
    {
      v18 = a4;
      do
      {
        v21 = *a5++;
        v20 = v21;
        v23 = *a3++;
        v22 = v23;
        result = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb((v8 + 12), v20, a2, 0xFFFFFFFF, 3.4028e38);
        if (result[130])
        {
          v19 = result[129] + 1;
        }

        else
        {
          result[130] = v22;
          v19 = 1;
        }

        result[129] = v19;
        a2 += 512;
        --v18;
      }

      while (v18);
    }

    else
    {
      v9 = 0;
      v10 = a4 / 0xA;
      v11 = a4;
      v12 = 1.0 / a4;
      do
      {
        v14 = v9 + 1;
        if (!((v9 + 1) % v10))
        {
          v15 = *__error();
          v16 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v25 = ((v9 * 100.0) * v12);
            _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "bulkInsertForTest: %.0f%%", buf, 0xCu);
          }

          *__error() = v15;
        }

        v17 = a3[v9];
        result = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE15lookupForInsertEjRK10CIVector_sIDF16_Li256EEjfb((v8 + 12), a5[v9], a2, 0xFFFFFFFF, 3.4028e38);
        if (result[130])
        {
          v13 = result[129] + 1;
        }

        else
        {
          result[130] = v17;
          v13 = 1;
        }

        result[129] = v13;
        a2 += 512;
        ++v9;
      }

      while (v11 != v14);
    }
  }

  return result;
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE6shadowEbPVi(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 144));
  v6 = *(a1 + 120);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 128);
  v7 = *(a1 + 136);
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  (*(*v8 + 168))(v8, a2, a3);
  if (v7 && !atomic_fetch_add(&v7->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v7->__on_zero_shared)(v7);
    std::__shared_weak_count::__release_weak(v7);
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return 0;
}

uint64_t _ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE12validAddressEPKv(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 144));
  v5 = *(a1 + 112);
  v4 = *(a1 + 120);
  if (v4)
  {
    atomic_fetch_add_explicit(&v4->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = *(a1 + 128);
  v6 = *(a1 + 136);
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  os_unfair_lock_unlock((a1 + 144));
  if (*(a1 + 80) || v7 && ((*(*v7 + 144))(v7, a2) & 1) != 0 || v5 && ((*(*v5 + 56))(v5, a2) & 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v10 = *(a1 + 96);
    if (v10)
    {
      v8 = _ZNK16QuantizerManagerIDF16_Li256EE12validAddressEPKv(v10, a2);
    }

    else
    {
      v8 = 0;
    }
  }

  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  return v8;
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EE8allExistEPKvj(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 <= 0x3E8)
    {
      v12 = a3;
      while (_ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE(a1 + 48, a2))
      {
        a2 += 512;
        if (!--v12)
        {
          return a3;
        }
      }
    }

    else
    {
      v6 = 0;
      v7 = a3 / 0xA;
      v8 = 1.0 / a3;
      while (1)
      {
        v9 = v6 + 1;
        if (!((v6 + 1) % v7))
        {
          v10 = *__error();
          v11 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v18 = ((v6 * 100.0) * v8);
            _os_log_impl(&dword_1C278D000, v11, OS_LOG_TYPE_DEFAULT, "allExist: %.0f%%", buf, 0xCu);
          }

          *__error() = v10;
        }

        if (!_ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE(a1 + 48, a2))
        {
          break;
        }

        a2 += 512;
        ++v6;
        if (a3 == v9)
        {
          return a3;
        }
      }
    }

    v14 = __si_assert_copy_extra_332();
    v15 = v14;
    v16 = "";
    if (v14)
    {
      v16 = v14;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3331, "false", v16);
    free(v15);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  return a3;
}

BOOL _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = 3.4028e38;
  v24 = -1;
  v4 = _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIDF16_Li256EERjRfj(a1, a2, &v24, &v23, 0);
  if (v4 == -1)
  {
    v6 = *__error();
    v7 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      *&buf[4] = "exists";
      *&buf[12] = 1024;
      *&buf[14] = 2804;
      *&buf[18] = 1024;
      *&buf[20] = v24;
      LOWORD(v26[0]) = 2048;
      *(v26 + 2) = v23;
      _os_log_error_impl(&dword_1C278D000, v7, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found partID=%u distsq=%e", buf, 0x22u);
    }

    *__error() = v6;
    os_unfair_lock_lock((a1 + 96));
    v9 = *(a1 + 64);
    v8 = *(a1 + 72);
    if (v8)
    {
      atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v11 = *(a1 + 80);
    v10 = *(a1 + 88);
    if (v10)
    {
      atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    os_unfair_lock_unlock((a1 + 96));
    *buf = 0;
    *&buf[8] = buf;
    v26[0] = -1;
    *&buf[16] = 0x2000000000;
    v12 = v24;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 0x40000000;
    v20[2] = ___ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE_block_invoke;
    v20[3] = &unk_1E8194E40;
    v20[5] = a1;
    v20[6] = a2;
    v21 = v24;
    v22 = v23;
    v20[4] = buf;
    (*(*v11 + 80))(v11, v24, v20);
    if (*(*&buf[8] + 24) == -1)
    {
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 1174405120;
      v15[2] = ___ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE_block_invoke_303;
      v15[3] = &unk_1F427E158;
      v15[5] = a1;
      v15[6] = a2;
      v15[7] = v9;
      v16 = v8;
      if (v8)
      {
        atomic_fetch_add_explicit(&v8->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v17 = v11;
      v18 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v19 = v12;
      v15[4] = buf;
      (*(*v11 + 64))(v11, v15);
      v13 = v18;
      if (v18 && !atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
      }

      v14 = v16;
      if (v16 && !atomic_fetch_add(&v16->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v14->__on_zero_shared)(v14);
        std::__shared_weak_count::__release_weak(v14);
      }
    }

    _Block_object_dispose(buf, 8);
    if (v10 && !atomic_fetch_add(&v10->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v10->__on_zero_shared)(v10);
      std::__shared_weak_count::__release_weak(v10);
    }

    if (v8 && !atomic_fetch_add(&v8->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v8->__on_zero_shared)(v8);
      std::__shared_weak_count::__release_weak(v8);
    }
  }

  return v4 != -1;
}

int *___ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE_block_invoke(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(*(a1 + 40) + 32) + 16), *a3, 532);
  result = memcmp(v8, Ptr, 0x200uLL);
  if (!result)
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v17 = a3[1];
      v27 = 136315906;
      v28 = "exists_block_invoke";
      v29 = 1024;
      v30 = 2809;
      v31 = 1024;
      *v32 = a2;
      *&v32[4] = 2048;
      *&v32[6] = v17;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found actually in partID=%u distsq=%e", &v27, 0x22u);
    }

    *__error() = v11;
    v13 = *__error();
    v14 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v18 = *(a1 + 56);
      v19 = *(a1 + 60);
      v27 = 136315906;
      v28 = "exists_block_invoke";
      v29 = 1024;
      v30 = 2810;
      v31 = 1024;
      *v32 = v18;
      *&v32[4] = 2048;
      *&v32[6] = v19;
      _os_log_error_impl(&dword_1C278D000, v14, OS_LOG_TYPE_ERROR, "%s:%d: Vec distance to centroid %u distsq=%e", &v27, 0x22u);
    }

    *__error() = v13;
    v15 = *__error();
    v16 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 60);
      v21 = a3[1];
      v22 = vabds_f32(v20, v21);
      if (v20 == v21)
      {
        v23 = 1;
        v24 = 1;
      }

      else
      {
        v25 = fabsf(v20);
        v26 = fabsf(v21);
        v23 = v22 <= fmaxf(fminf(v26, v25) * 0.000015259, 0.000015259);
        v24 = v22 <= (fmaxf(v25, v26) * 0.000015259);
      }

      v27 = 136317186;
      v28 = "exists_block_invoke";
      v29 = 1024;
      v30 = 2811;
      v31 = 2048;
      *v32 = v22;
      *&v32[8] = 2048;
      *&v32[10] = 0x3810000000000000;
      v33 = 2048;
      v34 = 0x3E80000000000000;
      v35 = 1024;
      v36 = v22 < 1.1755e-38;
      v37 = 1024;
      v38 = v22 < 0.00000011921;
      v39 = 1024;
      v40 = v23;
      v41 = 1024;
      v42 = v24;
      _os_log_error_impl(&dword_1C278D000, v16, OS_LOG_TYPE_ERROR, "%s:%d: |distancesq - ve.distsq|=%e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", &v27, 0x48u);
    }

    result = __error();
    *result = v15;
    *(*(*(a1 + 32) + 8) + 24) = *a3;
    *a4 = 1;
  }

  return result;
}

void ___ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIDF16_Li256EE_block_invoke_303(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v116 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v9 + 32) + 16), *a3, 532);
  if (!memcmp(v8, Ptr, 0x200uLL))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v40 = a3[1];
      *buf = 136315906;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2819;
      v100 = 1024;
      v101 = a2;
      v102 = 2048;
      *v103 = v40;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found actually in partID=%u distsq=%e", buf, 0x22u);
    }

    *__error() = v11;
    v13 = *(a1 + 48);
    v14 = (*(**(a1 + 56) + 72))(*(a1 + 56), *(a1 + 88));
    v15 = _ZNK10CIVector_sIDF16_Li256EE8distanceERKS0_(v13, v14);
    v16 = *__error();
    v17 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a1 + 88);
      *buf = 136315906;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2821;
      v100 = 1024;
      v101 = v41;
      v102 = 2048;
      *v103 = v15;
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Vec distance to centroid %u distsq=%e", buf, 0x22u);
    }

    *__error() = v16;
    v93 = 0;
    v94 = 0;
    v95 = 0;
    (*(**(a1 + 56) + 80))(&v93);
    v18 = *__error();
    v19 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v42 = *v93;
      v43 = *(v93 + 1);
      v44 = *(v93 + 2);
      v45 = *(v93 + 3);
      v46 = v43 == v45 || vabds_f32(v43, v45) <= fmaxf(fminf(fabsf(v45), fabsf(v43)) * 0.000015259, 0.000015259);
      *buf = 136316674;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2823;
      v100 = 1024;
      v101 = v42;
      v102 = 2048;
      *v103 = v43;
      *&v103[8] = 1024;
      *&v103[10] = v44;
      v104 = 2048;
      v105 = v45;
      v106 = 1024;
      LODWORD(v107) = v46;
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(vec, 2) <%u, %e>, <%u, %e>, %d", buf, 0x38u);
    }

    *__error() = v18;
    v20 = *__error();
    v21 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v47 = *v93;
      v48 = *(v93 + 2);
      v49 = *(v93 + 1) == *(v93 + 3);
      *buf = 136316162;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2824;
      v100 = 1024;
      v101 = v47;
      v102 = 1024;
      *v103 = v48;
      *&v103[4] = 1024;
      *&v103[6] = v49;
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v20;
    v22 = *__error();
    v23 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v50 = *v93;
      v51 = *(v93 + 2);
      v52 = *(v93 + 1) < *(v93 + 3);
      *buf = 136316162;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2825;
      v100 = 1024;
      v101 = v50;
      v102 = 1024;
      *v103 = v51;
      *&v103[4] = 1024;
      *&v103[6] = v52;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v22;
    v24 = *__error();
    v25 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v53 = *v93;
      v54 = *(v93 + 2);
      v55 = *(v93 + 1) > *(v93 + 3);
      *buf = 136316162;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2826;
      v100 = 1024;
      v101 = v53;
      v102 = 1024;
      *v103 = v54;
      *&v103[4] = 1024;
      *&v103[6] = v55;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v24;
    v26 = *__error();
    v27 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v56 = *v93;
      v57 = *(v93 + 2);
      v58 = *(v93 + 1);
      v59 = *(v93 + 3);
      v60 = (v58 - v59);
      v61 = vabds_f32(v58, v59);
      if (v58 == v59)
      {
        v62 = 1;
        v63 = 1;
      }

      else
      {
        v86 = fabsf(v58);
        v87 = fabsf(v59);
        v62 = v61 <= fmaxf(fminf(v87, v86) * 0.000015259, 0.000015259);
        v63 = v61 <= (fmaxf(v86, v87) * 0.000015259);
      }

      *buf = 136317698;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2827;
      v100 = 1024;
      v101 = v56;
      v102 = 1024;
      *v103 = v57;
      *&v103[4] = 2048;
      *&v103[6] = v60;
      v104 = 2048;
      v105 = 1.17549435e-38;
      v106 = 2048;
      v107 = 0x3E80000000000000;
      v108 = 1024;
      v109 = v61 < 1.1755e-38;
      v110 = 1024;
      v111 = v61 < 0.00000011921;
      v112 = 1024;
      v113 = v62;
      v114 = 1024;
      v115 = v63;
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", buf, 0x54u);
    }

    *__error() = v26;
    v91 = 0;
    v92 = 0;
    __p = 0;
    v28 = *(a1 + 56);
    v29 = vi_onefixedsize_memory_allocator::getPtr(*(*(v9 + 32) + 16), *a3, 532);
    (*(*v28 + 80))(&__p, v28, v29, 2);
    v30 = *__error();
    v31 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      v64 = *__p;
      v65 = *(__p + 1);
      v66 = *(__p + 2);
      v67 = *(__p + 3);
      v68 = v65 == v67 || vabds_f32(v65, v67) <= fmaxf(fminf(fabsf(v67), fabsf(v65)) * 0.000015259, 0.000015259);
      *buf = 136316674;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2830;
      v100 = 1024;
      v101 = v64;
      v102 = 2048;
      *v103 = v65;
      *&v103[8] = 1024;
      *&v103[10] = v66;
      v104 = 2048;
      v105 = v67;
      v106 = 1024;
      LODWORD(v107) = v68;
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(entry->vec, 2) <%u, %e>, <%u, %e>, %d", buf, 0x38u);
    }

    *__error() = v30;
    v32 = *__error();
    v33 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v69 = *__p;
      v70 = *(__p + 2);
      v71 = *(__p + 1) == *(__p + 3);
      *buf = 136316162;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2831;
      v100 = 1024;
      v101 = v69;
      v102 = 1024;
      *v103 = v70;
      *&v103[4] = 1024;
      *&v103[6] = v71;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v32;
    v34 = *__error();
    v35 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v72 = *__p;
      v73 = *(__p + 2);
      v74 = *(__p + 1) < *(__p + 3);
      *buf = 136316162;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2832;
      v100 = 1024;
      v101 = v72;
      v102 = 1024;
      *v103 = v73;
      *&v103[4] = 1024;
      *&v103[6] = v74;
      _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v34;
    v36 = *__error();
    v37 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v75 = *__p;
      v76 = *(__p + 2);
      v77 = *(__p + 1) > *(__p + 3);
      *buf = 136316162;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2833;
      v100 = 1024;
      v101 = v75;
      v102 = 1024;
      *v103 = v76;
      *&v103[4] = 1024;
      *&v103[6] = v77;
      _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", buf, 0x24u);
    }

    *__error() = v36;
    v38 = *__error();
    v39 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v78 = *__p;
      v79 = *(__p + 2);
      v80 = *(__p + 1);
      v81 = *(__p + 3);
      v82 = vabds_f32(v80, v81);
      v83 = (v80 - v81) < 1.1755e-38;
      if (v80 == v81)
      {
        v84 = 1;
        v85 = 1;
      }

      else
      {
        v88 = fabsf(v80);
        v89 = fabsf(v81);
        v84 = v82 <= fmaxf(fminf(v89, v88) * 0.000015259, 0.000015259);
        v85 = v82 <= (fmaxf(v88, v89) * 0.000015259);
      }

      *buf = 136317698;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2834;
      v100 = 1024;
      v101 = v78;
      v102 = 1024;
      *v103 = v79;
      *&v103[4] = 2048;
      *&v103[6] = v82;
      v104 = 2048;
      v105 = 1.17549435e-38;
      v106 = 2048;
      v107 = 0x3E80000000000000;
      v108 = 1024;
      v109 = v83;
      v110 = 1024;
      v111 = v82 < 0.00000011921;
      v112 = 1024;
      v113 = v84;
      v114 = 1024;
      v115 = v85;
      _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", buf, 0x54u);
    }

    *__error() = v38;
    *(*(*(a1 + 32) + 8) + 24) = *a3;
    *a4 = 1;
    if (__p)
    {
      v91 = __p;
      operator delete(__p);
    }

    if (v93)
    {
      v94 = v93;
      operator delete(v93);
    }
  }
}

void _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EED0Ev(uint64_t a1)
{
  *a1 = &unk_1F427D9E8;
  _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED2Ev((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t _ZN16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIDF16_Li256EED1Ev(uint64_t a1)
{
  *a1 = &unk_1F427D9E8;
  _ZN22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsED2Ev((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void IVFVectorIndexUpdateSet::~IVFVectorIndexUpdateSet(IVFVectorIndexUpdateSet *this)
{
  v6 = *MEMORY[0x1E69E9840];
  if (dword_1EBF46B0C >= 5)
  {
    v2 = *__error();
    v3 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 134217984;
      v5 = this;
      _os_log_impl(&dword_1C278D000, v3, OS_LOG_TYPE_DEFAULT, "Delete <UpdateSet> %p", &v4, 0xCu);
    }

    *__error() = v2;
  }

  std::__tree<std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::shared_ptr<AnyVectorIndexInstance>>>>::destroy(*(this + 1));
}

void *IVFVectorIndexUpdateSet::getVectorIndex(void *result, uint64_t a2, unsigned int a3, uint64_t a4, int a5, int a6, unsigned int a7)
{
  v9 = *(a2 + 8);
  v7 = (a2 + 8);
  v8 = v9;
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = a7 | (2 * (((a5 & 3) << 50) | ((a6 & 3) << 48) | (a4 << 32) | a3));
  v11 = v7;
  do
  {
    v12 = v8[4];
    v13 = v12 >= v10;
    v14 = v12 < v10;
    if (v13)
    {
      v11 = v8;
    }

    v8 = v8[v14];
  }

  while (v8);
  if (v11 != v7 && v10 >= v11[4])
  {
    v15 = v11[5];
    if (*(v15 + 8) != a3 || *(v15 + 20) != a4 || a6 > 2 || *(v15 + 12) != vector_dimension_vec_sizes_15424[a5] || vector_size_elem_sizes_15423[a6] != *(v15 + 16) || *(v15 + 22) != a7)
    {
      v17 = __si_assert_copy_extra_332();
      v18 = v17;
      v19 = "";
      if (v17)
      {
        v19 = v17;
      }

      __message_assert("%s:%u: failed assertion '%s' %s ", "IVFVectorIndex.hh", 3807, "it->second->isCompatible(propertyId, vecVersion, dim, form, purgeable)", v19);
      free(v18);
      if (__valid_fs(-1))
      {
        v20 = 2989;
      }

      else
      {
        v20 = 3072;
      }

      *v20 = -559038737;
      abort();
    }

    v16 = v11[6];
    *result = v15;
    result[1] = v16;
    if (v16)
    {
      atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
    }
  }

  else
  {
LABEL_9:
    *result = 0;
    result[1] = 0;
  }

  return result;
}

void __vectorIndexANN_block_invoke(uint64_t a1, uint64_t *a2, size_t size, float a4)
{
  v4 = *(a1 + 32);
  if ((*v4 & 1) == 0)
  {
    v22 = __si_assert_copy_extra_332();
    v23 = v22;
    v24 = "";
    if (v22)
    {
      v24 = v22;
    }

    __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 338, "oqueue->has_meta", v24);
    free(v23);
    if (__valid_fs(-1))
    {
      MEMORY[0xBAD] = -559038737;
      abort();
    }

    MEMORY[0xC00] = -559038737;
    abort();
  }

  v6 = *a2;
  if (*(v4 + 56))
  {
    if (*(v4 + 64) < (v6 & 0x3FFFFFFFFFFFFFFFuLL))
    {
      v25 = __si_assert_copy_extra_332();
      v9 = v25;
      v10 = "";
      if (v25)
      {
        v10 = v25;
      }

      v11 = "!queue->split || queue->splitPoint >= offset_with_meta_t_GET_VALUE(value)";
LABEL_26:
      __message_assert("%s:%u: failed assertion '%s' %s ", "OQueue.h", 250, v11, v10);
      free(v9);
      if (__valid_fs(-1))
      {
        v26 = 2989;
      }

      else
      {
        v26 = 3072;
      }

      *v26 = -559038737;
      abort();
    }

    v7 = *(v4 + 32);
    if (v7 >= *(v4 + 24))
    {
      v8 = __si_assert_copy_extra_332();
      v9 = v8;
      v10 = "";
      if (v8)
      {
        v10 = v8;
      }

      v11 = "!queue->split";
      goto LABEL_26;
    }
  }

  else
  {
    v12 = *(v4 + 24);
    v7 = *(v4 + 32);
    if (v7 >= v12)
    {
      v13 = a4;
      v14 = 2 * v12;
      if (!v12)
      {
        v14 = 4;
      }

      *(v4 + 24) = v14;
      v15 = *(v4 + 16);
      v16 = 16 * v14;
      if (v15)
      {
        v17 = malloc_type_zone_realloc(queryZone, v15, v16, 0xA1A7ADA0uLL);
      }

      else
      {
        v17 = malloc_type_zone_malloc(queryZone, v16, 0x566E289CuLL);
      }

      v18 = v17;
      a4 = v13;
      if (!v17)
      {
        v19 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
        a4 = v13;
        if (v19)
        {
          *buf = 0;
          _os_log_fault_impl(&dword_1C278D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "allocation function returned null", buf, 2u);
          a4 = v13;
        }
      }

      *(v4 + 16) = v18;
      v7 = *(v4 + 32);
    }
  }

  v20 = *(v4 + 16);
  *(v4 + 32) = v7 + 1;
  v21 = (v20 + 16 * v7);
  *v21 = v6;
  v21[1] = LODWORD(a4) | (size << 32);
}

unint64_t dumpVectorIndex(void *a1, unsigned int a2, _DWORD *a3, uint64_t a4, uint64_t a5)
{
  v57 = *MEMORY[0x1E69E9840];
  if (__THREAD_SLOT_KEY[0])
  {
    v8 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v8)
    {
      goto LABEL_47;
    }
  }

  else
  {
    makeThreadId();
    v8 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v8)
    {
LABEL_47:
      makeThreadId();
      v8 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      v29 = 0;
      if (!v8)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  if (v8 >= 0x801)
  {
    goto LABEL_47;
  }

  v29 = 0;
LABEL_5:
  if (v8 <= 0x800)
  {
    v9 = &threadData[9 * v8];
    v29 = *(v9 - 11);
    *(v9 - 11) = 1;
  }

LABEL_7:
  v10 = a1[19];
  v33 = a1;
  v36 = a1 + 20;
  if (v10 != a1 + 20)
  {
    v34 = a1 + 16;
    v11 = "centroids";
    if (!a2)
    {
      v11 = "";
    }

    v30 = v11;
    v31 = a1 + 1;
    v35 = a3;
    v32 = a5;
    do
    {
      if (*a3)
      {
        break;
      }

      v12 = v10[5];
      v13 = *(v12 + 12);
      switch(v13)
      {
        case 256:
          v14 = 0;
          break;
        case 768:
          v14 = 2;
          break;
        case 512:
          v14 = 1;
          break;
        default:
          v14 = 3;
          break;
      }

      v15 = *(v12 + 8);
      v16 = *(v12 + 20);
      v17 = *(v12 + 16);
      if (v17 == 2)
      {
        v18 = 1;
      }

      else
      {
        v18 = 3;
      }

      if (v17 == 4)
      {
        v19 = 0;
      }

      else
      {
        v19 = v18;
      }

      v20 = *(v12 + 22);
      v21 = *__error();
      v22 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
      {
        v23 = v34;
        if (*(v33 + 151) < 0)
        {
          v23 = *v34;
        }

        (*(*v12 + 312))(__p, v12, v33 + 13);
        v24 = __p;
        if (v46 < 0)
        {
          v24 = __p[0];
        }

        *buf = 136316162;
        v48 = v23;
        v49 = 2048;
        v50 = v31;
        v51 = 2080;
        v52 = v24;
        v53 = 2080;
        v54 = "";
        v55 = 2080;
        v56 = v30;
        _os_log_impl(&dword_1C278D000, v22, OS_LOG_TYPE_DEFAULT, "[%s] dump %p %s %s %s", buf, 0x34u);
        if (v46 < 0)
        {
          operator delete(__p[0]);
        }

        a5 = v32;
      }

      a3 = v35;
      *__error() = v21;
      v39[0] = MEMORY[0x1E69E9820];
      v39[1] = 0x40000000;
      v39[2] = ___ZN16IVFVectorIndex_s4dumpEbbPViPvU13block_pointerFbjtjPKv14vec_dimensions15vec_data_formatybjfbE_block_invoke;
      v39[3] = &unk_1E8194D78;
      v39[4] = a5;
      v43 = v16;
      v40 = v15;
      v41 = v14;
      v42 = v19;
      v44 = v20;
      (*(*v12 + 128))(v12, 0, a2, v35, a4, v39);
      v25 = v10[1];
      if (v25)
      {
        do
        {
          v26 = v25;
          v25 = *v25;
        }

        while (v25);
      }

      else
      {
        do
        {
          v26 = v10[2];
          v27 = *v26 == v10;
          v10 = v26;
        }

        while (!v27);
      }

      v10 = v26;
    }

    while (v26 != v36);
  }

  if (__THREAD_SLOT_KEY[0])
  {
    result = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!result)
    {
      goto LABEL_50;
    }
  }

  else
  {
    makeThreadId();
    result = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!result)
    {
LABEL_50:
      makeThreadId();
      result = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!result)
      {
        return result;
      }

      goto LABEL_43;
    }
  }

  if (result >= 0x801)
  {
    goto LABEL_50;
  }

LABEL_43:
  if (result <= 0x800)
  {
    *(&threadData[9 * result - 5] - 1) = v29;
  }

  return result;
}

uint64_t ___ZN16IVFVectorIndex_s4dumpEbbPViPvU13block_pointerFbjtjPKv14vec_dimensions15vec_data_formatybjfbE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, int a6)
{
  v8 = *(a1 + 54);
  HIDWORD(v7) = a6;
  LOBYTE(v7) = a5;
  return (*(*(a1 + 32) + 16))(*(a1 + 32), *(a1 + 40), *(a1 + 52), a2, a3, *(a1 + 44), *(a1 + 48), a4, v7, v8);
}

void ___ZN16IVFVectorIndex_s20completeChangePrefixEiPKcS1_S1__block_invoke(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, const void **a7, uint64_t a8, char a9)
{
  v9 = *(a7 + 23);
  if (v9 >= 0)
  {
    v10 = *(a7 + 23);
  }

  else
  {
    v10 = a7[1];
  }

  if (v10 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_46;
  }

  if (v10 + 7 >= 0x17)
  {
    operator new();
  }

  v38[1] = 0;
  v39 = 0;
  v38[0] = 0;
  HIBYTE(v39) = v10 + 7;
  if (v10)
  {
    if ((v9 & 0x80u) == 0)
    {
      v15 = a7;
    }

    else
    {
      v15 = *a7;
    }

    memmove(v38, v15, v10);
  }

  strcpy(v38 + v10, ".shadow");
  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  v16 = *(a1 + 32);
  v17 = strlen(v16);
  if (v17 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_46:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  v34 = v17;
  if (v17)
  {
    memmove(__dst, v16, v17);
  }

  *(__dst + v18) = 0;
  IVFIndexName(&v40, a2, a3, a4, a5, a6);
  if ((v34 & 0x80u) == 0)
  {
    v19 = __dst;
  }

  else
  {
    v19 = __dst[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v20 = v34;
  }

  else
  {
    v20 = __dst[1];
  }

  v21 = std::string::insert(&v40, 0, v19, v20);
  v22 = v21->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (a9)
  {
    v23 = ".partitions.shadow";
  }

  else
  {
    v23 = ".shadow";
  }

  v24 = std::string::append(&v35, v23);
  v25 = v24->__r_.__value_.__r.__words[2];
  *__p = *&v24->__r_.__value_.__l.__data_;
  v37 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(__dst[0]);
LABEL_31:
  if (v39 >= 0)
  {
    v26 = v38;
  }

  else
  {
    v26 = v38[0];
  }

  LODWORD(v27) = SHIBYTE(v37);
  v28 = __p[0];
  v29 = fd_create_protected(*(a1 + 40), v26, 0, 0);
  if (v29)
  {
    if (v27 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = v28;
    }

    v27 = v29;
    fd_rename(v29, v30);
    fd_release(v27);
    LOBYTE(v27) = HIBYTE(v37);
  }

  if ((v27 & 0x80) == 0)
  {
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_45:
    operator delete(v38[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_45;
  }
}

void ___ZN16IVFVectorIndex_s20completeChangePrefixEiPKcS1_S1__block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3, int a4, int a5, int a6, const void **a7, uint64_t a8, char a9)
{
  v9 = *(a7 + 23);
  if (v9 >= 0)
  {
    v10 = *(a7 + 23);
  }

  else
  {
    v10 = a7[1];
  }

  if (v10 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_46;
  }

  if (v10 + 7 >= 0x17)
  {
    operator new();
  }

  v38[1] = 0;
  v39 = 0;
  v38[0] = 0;
  HIBYTE(v39) = v10 + 7;
  if (v10)
  {
    if ((v9 & 0x80u) == 0)
    {
      v15 = a7;
    }

    else
    {
      v15 = *a7;
    }

    memmove(v38, v15, v10);
  }

  strcpy(v38 + v10, ".shadow");
  __p[0] = 0;
  __p[1] = 0;
  v37 = 0;
  v16 = *(a1 + 32);
  v17 = strlen(v16);
  if (v17 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_46:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v18 = v17;
  if (v17 >= 0x17)
  {
    operator new();
  }

  v34 = v17;
  if (v17)
  {
    memmove(__dst, v16, v17);
  }

  *(__dst + v18) = 0;
  IVFIndexName(&v40, a2, a3, a4, a5, a6);
  if ((v34 & 0x80u) == 0)
  {
    v19 = __dst;
  }

  else
  {
    v19 = __dst[0];
  }

  if ((v34 & 0x80u) == 0)
  {
    v20 = v34;
  }

  else
  {
    v20 = __dst[1];
  }

  v21 = std::string::insert(&v40, 0, v19, v20);
  v22 = v21->__r_.__value_.__r.__words[2];
  *&v35.__r_.__value_.__l.__data_ = *&v21->__r_.__value_.__l.__data_;
  v35.__r_.__value_.__r.__words[2] = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v40.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v40.__r_.__value_.__l.__data_);
  }

  if (a9)
  {
    v23 = ".partitions.shadow";
  }

  else
  {
    v23 = ".shadow";
  }

  v24 = std::string::append(&v35, v23);
  v25 = v24->__r_.__value_.__r.__words[2];
  *__p = *&v24->__r_.__value_.__l.__data_;
  v37 = v25;
  v24->__r_.__value_.__l.__size_ = 0;
  v24->__r_.__value_.__r.__words[2] = 0;
  v24->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v35.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v35.__r_.__value_.__l.__data_);
    if ((v34 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((v34 & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(__dst[0]);
LABEL_31:
  if (v39 >= 0)
  {
    v26 = v38;
  }

  else
  {
    v26 = v38[0];
  }

  LODWORD(v27) = SHIBYTE(v37);
  v28 = __p[0];
  v29 = fd_create_protected(*(a1 + 40), v26, 0, 0);
  if (v29)
  {
    if (v27 >= 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = v28;
    }

    v27 = v29;
    fd_rename(v29, v30);
    fd_release(v27);
    LOBYTE(v27) = HIBYTE(v37);
  }

  if ((v27 & 0x80) == 0)
  {
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return;
    }

LABEL_45:
    operator delete(v38[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v39) < 0)
  {
    goto LABEL_45;
  }
}

void ___ZN16IVFVectorIndex_s12changePrefixEPKc_block_invoke(uint64_t a1, unsigned int a2, unsigned int a3, int a4, int a5, int a6, const void **a7, uint64_t a8, char a9)
{
  v46 = *MEMORY[0x1E69E9840];
  v9 = *(a7 + 23);
  if (v9 >= 0)
  {
    v10 = *(a7 + 23);
  }

  else
  {
    v10 = a7[1];
  }

  if (v10 + 7 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_52;
  }

  v15 = *(a1 + 32);
  if (v10 + 7 >= 0x17)
  {
    operator new();
  }

  v42[1] = 0;
  v43 = 0;
  v42[0] = 0;
  HIBYTE(v43) = v10 + 7;
  if (v10)
  {
    if ((v9 & 0x80u) == 0)
    {
      v16 = a7;
    }

    else
    {
      v16 = *a7;
    }

    memmove(v42, v16, v10);
  }

  strcpy(v42 + v10, ".shadow");
  __p[0] = 0;
  __p[1] = 0;
  v41 = 0;
  v17 = *(a1 + 40);
  v18 = strlen(v17);
  if (v18 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_52:
    std::vector<long long>::__throw_length_error[abi:nn200100]();
  }

  v19 = v18;
  if (v18 >= 0x17)
  {
    operator new();
  }

  v38 = v18;
  if (v18)
  {
    memmove(__dst, v17, v18);
  }

  *(__dst + v19) = 0;
  IVFIndexName(&v44, a2, a3, a4, a5, a6);
  if ((v38 & 0x80u) == 0)
  {
    v20 = __dst;
  }

  else
  {
    v20 = __dst[0];
  }

  if ((v38 & 0x80u) == 0)
  {
    v21 = v38;
  }

  else
  {
    v21 = __dst[1];
  }

  v22 = std::string::insert(&v44, 0, v20, v21);
  v23 = v22->__r_.__value_.__r.__words[2];
  *&v39.__r_.__value_.__l.__data_ = *&v22->__r_.__value_.__l.__data_;
  v39.__r_.__value_.__r.__words[2] = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (a9)
  {
    v24 = ".partitions.shadow";
  }

  else
  {
    v24 = ".shadow";
  }

  v25 = std::string::append(&v39, v24);
  v26 = v25->__r_.__value_.__r.__words[2];
  *__p = *&v25->__r_.__value_.__l.__data_;
  v41 = v26;
  v25->__r_.__value_.__l.__size_ = 0;
  v25->__r_.__value_.__r.__words[2] = 0;
  v25->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v39.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v39.__r_.__value_.__l.__data_);
    if ((v38 & 0x80000000) == 0)
    {
      goto LABEL_31;
    }
  }

  else if ((v38 & 0x80000000) == 0)
  {
    goto LABEL_31;
  }

  operator delete(__dst[0]);
LABEL_31:
  v27 = *__error();
  v28 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    v29 = v15 + 30;
    if (*(v15 + 143) < 0)
    {
      v29 = *v29;
    }

    v30 = v42;
    if (v43 < 0)
    {
      v30 = v42[0];
    }

    v31 = __p;
    if (v41 < 0)
    {
      v31 = __p[0];
    }

    LODWORD(v44.__r_.__value_.__l.__data_) = 136315650;
    *(v44.__r_.__value_.__r.__words + 4) = v29;
    WORD2(v44.__r_.__value_.__r.__words[1]) = 2080;
    *(&v44.__r_.__value_.__r.__words[1] + 6) = v30;
    HIWORD(v44.__r_.__value_.__r.__words[2]) = 2080;
    v45 = v31;
    _os_log_impl(&dword_1C278D000, v28, OS_LOG_TYPE_DEFAULT, "[%s] rename file: %s to %s", &v44, 0x20u);
  }

  *__error() = v27;
  if (v43 >= 0)
  {
    v33 = v42;
  }

  else
  {
    v33 = v42[0];
  }

  if (v41 >= 0)
  {
    v34 = __p;
  }

  else
  {
    v34 = __p[0];
  }

  IVFVectorIndex_s::rename(*v15, v33, v34, v32);
  if ((SHIBYTE(v41) & 0x80000000) == 0)
  {
    if ((SHIBYTE(v43) & 0x80000000) == 0)
    {
      return;
    }

LABEL_51:
    operator delete(v42[0]);
    return;
  }

  operator delete(__p[0]);
  if (SHIBYTE(v43) < 0)
  {
    goto LABEL_51;
  }
}

void *truncateVectorIndex(void *result)
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = result[19];
  v2 = result + 20;
  if (v1 != result + 20)
  {
    v3 = result;
    v4 = result + 16;
    do
    {
      v5 = v1[5];
      v6 = *__error();
      v7 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v4;
        if (*(v3 + 151) < 0)
        {
          v8 = *v4;
        }

        (*(*v5 + 312))(__p, v5, v3 + 104);
        v9 = __p;
        if (v14 < 0)
        {
          v9 = __p[0];
        }

        *buf = 136315394;
        v16 = v8;
        v17 = 2080;
        v18 = v9;
        _os_log_impl(&dword_1C278D000, v7, OS_LOG_TYPE_DEFAULT, "[%s] truncate %s", buf, 0x16u);
        if (v14 < 0)
        {
          operator delete(__p[0]);
        }
      }

      *__error() = v6;
      result = (*(*v5 + 176))(v5);
      v10 = v1[1];
      if (v10)
      {
        do
        {
          v11 = v10;
          v10 = *v10;
        }

        while (v10);
      }

      else
      {
        do
        {
          v11 = v1[2];
          v12 = *v11 == v1;
          v1 = v11;
        }

        while (!v12);
      }

      v1 = v11;
    }

    while (v11 != v2);
  }

  return result;
}

void indexFileName(std::string *a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6, int a7)
{
  IVFIndexName(&v13, a3, a4, a5, a6, a7);
  v9 = *(a2 + 23);
  if (v9 >= 0)
  {
    v10 = a2;
  }

  else
  {
    v10 = *a2;
  }

  if (v9 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  v12 = std::string::insert(&v13, 0, v10, v11);
  *a1 = *v12;
  v12->__r_.__value_.__r.__words[0] = 0;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  if (SHIBYTE(v13.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v13.__r_.__value_.__l.__data_);
  }
}

uint64_t vectorIndexValidAddress(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 152);
  v3 = (a1 + 160);
  if (v2 == (a1 + 160))
  {
    return 0;
  }

  do
  {
    result = (*(*v2[5] + 40))(v2[5], a2);
    if (result)
    {
      break;
    }

    v6 = v2[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        v7 = v2[2];
        v8 = *v7 == v2;
        v2 = v7;
      }

      while (!v8);
    }

    v2 = v7;
  }

  while (v7 != v3);
  return result;
}

uint64_t processVectorIndexDumpContexts(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v57 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    return result;
  }

  v7 = result;
  v50 = 0;
  v48 = 0u;
  memset(v49, 0, sizeof(v49));
  *__p = 0u;
  v47 = 0u;
  v44 = 0u;
  memset(v45, 0, sizeof(v45));
  v43 = 0u;
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:nn200100](&v43);
  if (a3 >= 1)
  {
    v8 = *a4;
    if (*a4)
    {
      v11 = *(v8 + 96);
      v9 = v8 + 96;
      v10 = v11;
      v12 = *(v9 + 23);
      v13 = (v12 >= 0 ? v9 : v10);
      v14 = v12 >= 0 ? *(v9 + 23) : *(v9 + 8);
    }

    else
    {
      v13 = "<null>";
      v14 = 6;
    }

    std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, v13, v14);
    v15 = a3 - 1;
    if (a3 != 1)
    {
      v30 = a4 + 1;
      do
      {
        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, ", ", 2);
        v33 = *v30;
        if (*v30)
        {
          v36 = *(v33 + 96);
          v34 = v33 + 96;
          v35 = v36;
          v37 = *(v34 + 23);
          if (v37 >= 0)
          {
            v31 = v34;
          }

          else
          {
            v31 = v35;
          }

          if (v37 >= 0)
          {
            v32 = *(v34 + 23);
          }

          else
          {
            v32 = *(v34 + 8);
          }
        }

        else
        {
          v31 = "<null>";
          v32 = 6;
        }

        std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(&v44, v31, v32);
        ++v30;
        --v15;
      }

      while (v15);
    }
  }

  v16 = *__error();
  v17 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v7 + 8;
    v19 = (v7 + 128);
    if (*(v7 + 151) < 0)
    {
      v19 = *v19;
    }

    v20 = &v42;
    IVFVectorIndex_s::name(&v42, v18);
    if ((v42.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v42.__r_.__value_.__r.__words[0];
    }

    std::stringbuf::str();
    if (v41 >= 0)
    {
      v21 = &v40;
    }

    else
    {
      v21 = v40;
    }

    *buf = 136316162;
    *&buf[4] = v19;
    *&buf[12] = 2048;
    *&buf[14] = v18;
    *&buf[22] = 2080;
    v52 = v20;
    v53 = 2048;
    v54 = a2;
    v55 = 2080;
    v56 = v21;
    _os_log_impl(&dword_1C278D000, v17, OS_LOG_TYPE_DEFAULT, "[%s] processVectorIndexDumpContexts: %p %s %lu [%s]", buf, 0x34u);
    if (v41 < 0)
    {
      operator delete(v40);
      if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_22;
      }
    }

    else if ((SHIBYTE(v42.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }

    operator delete(v42.__r_.__value_.__l.__data_);
  }

LABEL_22:
  *__error() = v16;
  *&buf[8] = 0;
  *&buf[16] = 0;
  *buf = &buf[8];
  if (a3 >= 1)
  {
    v22 = 0;
    do
    {
      v39 = v22;
      v23 = a4[v22];
      if (v23 && *(v23 + 144) != v23 + 152)
      {
        operator new();
      }

      ++v22;
    }

    while (v39 + 1 != a3);
    v24 = *buf;
    if (*buf != &buf[8])
    {
      do
      {
        v26 = v24[5];
        if (v24[6] != v26)
        {
          (*(**v26 + 88))(*v26, v24 + 5);
        }

        v27 = v24[1];
        if (v27)
        {
          do
          {
            v28 = v27;
            v27 = *v27;
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v24[2];
            v29 = *v28 == v24;
            v24 = v28;
          }

          while (!v29);
        }

        v24 = v28;
      }

      while (v28 != &buf[8]);
    }
  }

  std::__tree<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>>>::destroy(*&buf[8]);
  *&v43 = *MEMORY[0x1E69E54D8];
  v25 = *(MEMORY[0x1E69E54D8] + 72);
  *(&v43 + *(v43 - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  *&v44 = v25;
  *(&v44 + 1) = MEMORY[0x1E69E5548] + 16;
  if (SHIBYTE(v47) < 0)
  {
    operator delete(__p[1]);
  }

  *(&v44 + 1) = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v45);
  std::iostream::~basic_iostream();
  return MEMORY[0x1C691FE80](v49);
}

void std::__tree<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AnyVectorIndexInstance *>>>>::destroy(a1[1]);
    v2 = a1[5];
    if (v2)
    {
      a1[6] = v2;
      operator delete(v2);
    }

    operator delete(a1);
  }
}

unint64_t vectorIndexFinalizeMerge()
{
  if (__THREAD_SLOT_KEY[0])
  {
    v0 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v0)
    {
      goto LABEL_14;
    }
  }

  else
  {
    makeThreadId();
    v0 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!v0)
    {
LABEL_14:
      makeThreadId();
      v0 = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      v1 = 0;
      if (!v0)
      {
        goto LABEL_7;
      }

      goto LABEL_5;
    }
  }

  if (v0 >= 0x801)
  {
    goto LABEL_14;
  }

  v1 = 0;
LABEL_5:
  if (v0 <= 0x800)
  {
    v2 = &threadData[9 * v0];
    v1 = *(v2 - 11);
    *(v2 - 11) = 1;
  }

LABEL_7:
  if (__THREAD_SLOT_KEY[0])
  {
    result = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!result)
    {
      goto LABEL_17;
    }
  }

  else
  {
    makeThreadId();
    result = pthread_getspecific(__THREAD_SLOT_KEY[0]);
    if (!result)
    {
LABEL_17:
      makeThreadId();
      result = pthread_getspecific(__THREAD_SLOT_KEY[0]);
      if (!result)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  if (result >= 0x801)
  {
    goto LABEL_17;
  }

LABEL_10:
  if (result <= 0x800)
  {
    *(&threadData[9 * result - 5] - 1) = v1;
  }

  return result;
}

char *__vectorIndexDiagnoseDump_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v16 = *MEMORY[0x1E69E9840];
  result = db_get_field_name_for_id(*(a1 + 32), a2);
  if (!result)
  {
    v5 = *__error();
    v6 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v7 = *(a1 + 32);
      v8 = 136315906;
      v9 = "vectorIndexDiagnoseDump_block_invoke";
      v10 = 1024;
      v11 = 482;
      v12 = 2048;
      v13 = v7;
      v14 = 1024;
      v15 = v2;
      _os_log_fault_impl(&dword_1C278D000, v6, OS_LOG_TYPE_FAULT, "%s:%d: db_get_field_name_for_id(%p, %u) return NULL", &v8, 0x22u);
    }

    *__error() = v5;
    return "<NULL>";
  }

  return result;
}

BOOL processContext(CFDictionaryRef theDict, uint64_t *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return 0;
  }

  v2 = theDict;
  v3 = *(a2 + 7);
  if ((v3 & 0x10000) != 0)
  {
    if (theDict && CFDictionaryGetCount(theDict))
    {
      v37 = 0;
      v38 = &v37;
      v39 = 0x2020000000;
      v7 = getkQPQueryParserOptionU2EnabledKeySymbolLoc(void)::ptr;
      v40 = getkQPQueryParserOptionU2EnabledKeySymbolLoc(void)::ptr;
      if (!getkQPQueryParserOptionU2EnabledKeySymbolLoc(void)::ptr)
      {
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = ___ZL44getkQPQueryParserOptionU2EnabledKeySymbolLocv_block_invoke;
        v47 = &unk_1E8199698;
        *v48 = &v37;
        ParserLibrary = QueryParserLibrary();
        v9 = dlsym(ParserLibrary, "kQPQueryParserOptionU2EnabledKey");
        *(*(*v48 + 8) + 24) = v9;
        getkQPQueryParserOptionU2EnabledKeySymbolLoc(void)::ptr = *(*(*v48 + 8) + 24);
        v7 = *(v38 + 24);
      }

      _Block_object_dispose(&v37, 8);
      if (!v7)
      {
        v33 = [MEMORY[0x1E696AAA8] currentHandler];
        [v33 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQueryParserOptionU2EnabledKey()") description:{@"PRQUUtils.mm", 16, @"%s", dlerror()}];
        goto LABEL_46;
      }

      if ([CFDictionaryGetValue(v2 *v7)])
      {
        v4 = 0x10000;
      }

      else
      {
        v4 = 0;
      }
    }

    else
    {
      v4 = 0;
    }

    v5 = a2;
    v3 = *(a2 + 7);
  }

  else
  {
    v4 = 0;
    v5 = a2;
  }

  *(v5 + 28) = v3 & 0xFFFEFFFF | v4;
  if ((v3 & 0x20000) == 0)
  {
    return 1;
  }

  if (!v2)
  {
    goto LABEL_42;
  }

  if (CFDictionaryGetCount(v2))
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v10 = getkQPQueryParserOptionUseLLMParseKeySymbolLoc(void)::ptr;
    v40 = getkQPQueryParserOptionUseLLMParseKeySymbolLoc(void)::ptr;
    if (!getkQPQueryParserOptionUseLLMParseKeySymbolLoc(void)::ptr)
    {
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 3221225472;
      *&buf[16] = ___ZL46getkQPQueryParserOptionUseLLMParseKeySymbolLocv_block_invoke;
      v47 = &unk_1E8199698;
      *v48 = &v37;
      v11 = QueryParserLibrary();
      v12 = dlsym(v11, "kQPQueryParserOptionUseLLMParseKey");
      *(*(*v48 + 8) + 24) = v12;
      getkQPQueryParserOptionUseLLMParseKeySymbolLoc(void)::ptr = *(*(*v48 + 8) + 24);
      v10 = *(v38 + 24);
    }

    _Block_object_dispose(&v37, 8);
    if (v10)
    {
      if ([CFDictionaryGetValue(v2 *v10)])
      {
        TokensInfoFromQueryUnderstanding = getTokensInfoFromQueryUnderstanding(v2);
        if (TokensInfoFromQueryUnderstanding)
        {
          v14 = TokensInfoFromQueryUnderstanding;
          if (CFArrayGetCount(TokensInfoFromQueryUnderstanding) >= 1)
          {
            LLMParseFromQueryUnderstanding = getLLMParseFromQueryUnderstanding(v2);
            if (LLMParseFromQueryUnderstanding)
            {
              v15 = 0;
              v17 = *a2;
              v16 = a2[1];
              while (v15 < CFArrayGetCount(v14))
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v14, v15);
                TopTokenIDFromTokenInfo = getTopTokenIDFromTokenInfo(ValueAtIndex);
                TokenRangeFromTokenInfo = getTokenRangeFromTokenInfo(ValueAtIndex);
                v22 = v20;
                if (TokenRangeFromTokenInfo == 0x7FFFFFFFFFFFFFFFLL || TokenRangeFromTokenInfo + v20 > [(NSAttributedString *)LLMParseFromQueryUnderstanding length])
                {
                  v23 = *__error();
                  v24 = _SILogForLogForCategory(17);
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                  {
                    v25 = "Unknown";
                    if (TopTokenIDFromTokenInfo <= 0xD2)
                    {
                      v25 = off_1E8196D10[TopTokenIDFromTokenInfo];
                    }

                    v57.location = TokenRangeFromTokenInfo;
                    v57.length = v22;
                    v26 = NSStringFromRange(v57);
                    v27 = [(NSAttributedString *)LLMParseFromQueryUnderstanding length];
                    *buf = 134219778;
                    *&buf[4] = v17;
                    *&buf[12] = 2080;
                    *&buf[14] = v16;
                    *&buf[22] = 2048;
                    v47 = v15;
                    *v48 = 2080;
                    *&v48[2] = v25;
                    v49 = 2112;
                    v50 = v26;
                    v51 = 2112;
                    v52 = @"Use LLM for query with llmParse:";
                    v53 = 2112;
                    v54 = @"Invalid range provided for llmParse of length";
                    v55[0] = 2048;
                    *&v55[1] = v27;
                    _os_log_impl(&dword_1C278D000, v24, OS_LOG_TYPE_ERROR, "[qid=%lld][%s][POMMES][QU][%ld][%s][%@] %@ %@ %lu", buf, 0x52u);
                  }

                  *__error() = v23;
                }

                else
                {
                  v37 = MEMORY[0x1E69E9820];
                  v38 = 3221225472;
                  v39 = ___Z19logAttributedStringyPKcP8NSStringP18NSAttributedStringPK9__CFArray_block_invoke;
                  v40 = &unk_1E8190B48;
                  v43 = v16;
                  v44 = v15;
                  v45 = TopTokenIDFromTokenInfo;
                  v41 = @"Use LLM for query with llmParse:";
                  v42 = v17;
                  [(NSAttributedString *)LLMParseFromQueryUnderstanding enumerateAttributesInRange:TokenRangeFromTokenInfo options:v22 usingBlock:0, &v37];
                }

                ++v15;
              }

              operator new();
            }
          }
        }

        v29 = *__error();
        v30 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = *a2;
          v32 = a2[1];
          *buf = 134218498;
          *&buf[4] = v31;
          *&buf[12] = 2080;
          *&buf[14] = v32;
          *&buf[22] = 2112;
          v47 = 0;
          _os_log_impl(&dword_1C278D000, v30, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][LLM] No LLM parse is provided (using ALWAYS_FALSE_NODE) with llmParse:'%@'", buf, 0x20u);
        }

        v2 = 0;
        *__error() = v29;
LABEL_42:
        v28 = a2;
        goto LABEL_43;
      }

      goto LABEL_37;
    }

    v34 = [MEMORY[0x1E696AAA8] currentHandler];
    [v34 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"CFStringRef  _Nullable getkQPQueryParserOptionUseLLMParseKey()") description:{@"PRLLMParse.mm", 14, @"%s", dlerror()}];
LABEL_46:
    __break(1u);
  }

LABEL_37:
  v2 = 0;
  v28 = a2;
  *(a2 + 7) &= ~0x20000u;
LABEL_43:
  *(v28 + 16) = v2;
  return *(v28 + 24) != 0;
}

void sub_1C2B1E0B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53)
{
  a48 = &a39;
  std::vector<std::string>::__destroy_vector::operator()[abi:nn200100](&a48);
  _Unwind_Resume(a1);
}

query_node *pommesCustomTrees(query_node *a1, __CFString *a2, __CFAttributedString *a3, __CFDictionary *a4, PRContext *a5)
{
  v8 = a2;
  v753 = *MEMORY[0x1E69E9840];
  v706 = a5;
  var3 = a5->var3;
  v10 = *(a5 + 7);
  if (var3 == 16)
  {
    if ((v10 & 0x28) == 0)
    {
      goto LABEL_31;
    }

    if (![objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")] || (objc_msgSend(objc_msgSend(MEMORY[0x1E695E000], "standardUserDefaults"), "BOOLForKey:", @"EnableLegacyMessagesTree") & 1) == 0)
    {
      v25 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
      if (v25)
      {
        v26 = v25;
      }

      else
      {
        v26 = @"en";
      }

      v27 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = @"en";
      }

      v29 = logHeader(a5, &v28->isa);
      v30 = *__error();
      v31 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v29;
        *&buf[12] = 2112;
        *&buf[14] = redactedString(&v8->isa);
        _os_log_impl(&dword_1C278D000, v31, OS_LOG_TYPE_DEFAULT, "%@ Processing AST query: %@", buf, 0x16u);
      }

      *__error() = v30;
      v32 = [[PRAstBuilder alloc] initWithLanguageCode:v26 context:a5 logHeader:v29];
      v33 = [(PRAstBuilder *)v32 buildASTFromQuery:v8 queryUnderstanding:a4];
      v34 = v33;
      if (v33)
      {
        LogASTIfDebuggingEnabled(v33, v8, a5);
        Node = convertASTNodeToQueryNode(v34, a5);

        if ((*(a5 + 28) & 2) != 0)
        {
          v37 = 0;
        }

        else
        {
          v37 = MessagesSemanticNode(a5->var23, v26, v29, v36);
        }

        FalseNode = makeOrNode(v37, Node);
        if (FalseNode)
        {
          return FalseNode;
        }

        v82 = *__error();
        v83 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v29;
          _os_log_impl(&dword_1C278D000, v83, OS_LOG_TYPE_DEFAULT, "%@ Skipping metadata search (ERROR: metadata node is null)", buf, 0xCu);
        }

        *__error() = v82;
        FalseNode = makeFalseNode();
        if (FalseNode)
        {
          return FalseNode;
        }
      }

      else
      {
        v64 = *__error();
        v65 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v29;
          _os_log_impl(&dword_1C278D000, v65, OS_LOG_TYPE_DEFAULT, "%@ Failed to build AST from query", buf, 0xCu);
        }

        *__error() = v64;
      }
    }

    v66 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
    if (v66)
    {
      v67 = v66;
    }

    else
    {
      v67 = @"en";
    }

    v702 = logHeader(a5, &v67->isa);
    v68 = *__error();
    v69 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      v70 = redactedString(&v8->isa);
      *buf = 138412546;
      *&buf[4] = v702;
      *&buf[12] = 2112;
      *&buf[14] = v70;
      _os_log_impl(&dword_1C278D000, v69, OS_LOG_TYPE_DEFAULT, "%@ Processing query: %@", buf, 0x16u);
    }

    *__error() = v68;
    v718[0] = 0;
    v716 = 0u;
    v717 = 0u;
    std::string::basic_string[abi:nn200100]<0>(buf, "kMDItemAttachmentNames");
    LODWORD(v720[0]) = 1045220557;
    std::string::basic_string[abi:nn200100]<0>(&v720[1], "kMDItemAuthors");
    LODWORD(v721) = 1053609165;
    std::string::basic_string[abi:nn200100]<0>(&v722, "kMDItemAuthorAddresses");
    v723 = 1053609165;
    std::string::basic_string[abi:nn200100]<0>(v724, "kMDItemDescription");
    v725 = 1053609165;
    std::string::basic_string[abi:nn200100]<0>(v726, "kMDItemDisplayName");
    v727 = 1036831949;
    std::string::basic_string[abi:nn200100]<0>(v728, "kMDItemFilename");
    v729 = 1036831949;
    std::string::basic_string[abi:nn200100]<0>(v730, "kMDItemPhotosPeopleNames ");
    v731 = 1061997773;
    std::string::basic_string[abi:nn200100]<0>(v732, "kMDItemPhotosPeopleNamesAlternatives");
    v733 = 1061997773;
    std::string::basic_string[abi:nn200100]<0>(v734, "kMDItemPhotosSceneClassificationLabels");
    v735 = 1058642330;
    std::string::basic_string[abi:nn200100]<0>(v736, "kMDItemPhotosSceneClassificationSynonyms");
    v737 = 1058642330;
    std::string::basic_string[abi:nn200100]<0>(v738, "kMDItemRecipients");
    v739 = 1045220557;
    std::string::basic_string[abi:nn200100]<0>(v740, "kMDItemRecipientAddresses");
    v741 = 1045220557;
    std::string::basic_string[abi:nn200100]<0>(v742, "kMDItemTextContent");
    v743 = 1058642330;
    std::string::basic_string[abi:nn200100]<0>(v744, "kMDItemTitle");
    v745 = 1036831949;
    std::string::basic_string[abi:nn200100]<0>(v746, "kMDItemURL");
    v747 = 1036831949;
    std::unordered_map<std::string,float>::unordered_map(&v716, buf, 15);
    v71 = 60;
    do
    {
      if (SHIBYTE(v718[v71]) < 0)
      {
        operator delete(v718[v71 - 2]);
      }

      v71 -= 4;
    }

    while (v71 * 8);
    QueryTokens = CreateQueryTokens(v8, 1);
    if (QueryTokens)
    {
      v679 = QueryTokens;
      v73 = *QueryTokens;
      if (v73)
      {
        Count = CFArrayGetCount(v73);
        if (Count)
        {
          theArray = v679->super.isa;
          alloc = v679[1].super.isa;
          isa = v679[2].super.isa;
          v677 = [MEMORY[0x1E695DF70] array];
          v668 = [MEMORY[0x1E695DF70] array];
          if (a4 && CFDictionaryContainsKey(a4, @"attributedParses"))
          {
            Value = CFDictionaryGetValue(a4, @"attributedParses");
            if ([Value count])
            {
              v76 = [Value objectAtIndexedSubscript:0];
            }

            else
            {
              v76 = 0;
            }

            *v748 = 0;
            *&v748[8] = v748;
            *&v748[16] = 0x3052000000;
            *&v748[24] = __Block_byref_object_copy_;
            *&v749 = __Block_byref_object_dispose_;
            *(&v749 + 1) = 0;
            v139 = [v76 length];
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 3221225472;
            *&buf[16] = ___ZL31MessagePopulateFiltersFromParsePK14__CFDictionaryP14NSMutableArrayIP8NSStringEPS2_IP7NSValueES4__block_invoke;
            *&v720[0] = &unk_1E8197980;
            *&v720[1] = v677;
            *&v720[2] = v668;
            *&v720[3] = v748;
            [v76 enumerateAttributesInRange:0 options:v139 usingBlock:{0, buf}];
            _Block_object_dispose(v748, 8);
          }

          else
          {
            v96 = *__error();
            v97 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v702;
              _os_log_impl(&dword_1C278D000, v97, OS_LOG_TYPE_DEFAULT, "%@ Skipping QP filters (Reason: QP output not present)", buf, 0xCu);
            }

            *__error() = v96;
          }

          if ([v677 count])
          {
            v140 = *__error();
            v141 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v141, OS_LOG_TYPE_DEFAULT))
            {
              v142 = [v677 count];
              *buf = 138412546;
              *&buf[4] = v702;
              *&buf[12] = 2048;
              *&buf[14] = v142;
              _os_log_impl(&dword_1C278D000, v141, OS_LOG_TYPE_DEFAULT, "%@ Populated %lu QP filters", buf, 0x16u);
            }

            *__error() = v140;
          }

          v662 = [MEMORY[0x1E695DF70] array];
          v661 = [MEMORY[0x1E695DF70] array];
          if (a4 && CFDictionaryContainsKey(a4, @"kQPQUOutputTokenInfo"))
          {
            v143 = [(__CFDictionary *)a4 objectForKeyedSubscript:@"kQPQUOutputTokenInfo"];
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              if ([v143 count])
              {
                v144 = 0;
                while (1)
                {
                  v145 = [v143 objectAtIndexedSubscript:v144];
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && [v145 objectForKeyedSubscript:@"kQPQUOutputTokenRange"] && objc_msgSend(v145, "objectForKeyedSubscript:", @"kQPQUOutputTokenArgIds") && objc_msgSend(v145, "objectForKeyedSubscript:", @"kQPQUOutputTokenArgScores") && objc_msgSend(v145, "objectForKeyedSubscript:", @"kQPQUOutputToken"))
                  {
                    v146 = [v145 objectForKeyedSubscript:@"kQPQUOutputTokenRange"];
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v146 rangeValue] != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v150 = [v145 objectForKeyedSubscript:@"kQPQUOutputTokenArgIds"];
                      objc_opt_class();
                      if ((objc_opt_isKindOfClass() & 1) != 0 && [v150 count])
                      {
                        [(query_node *)v662 addObject:v146];
                        [v661 addObject:{objc_msgSend(v150, "objectAtIndexedSubscript:", 0)}];
                      }

                      goto LABEL_203;
                    }

                    v147 = *__error();
                    v148 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v148, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v702;
                      *&buf[12] = 2048;
                      *&buf[14] = v144;
                      _os_log_impl(&dword_1C278D000, v148, OS_LOG_TYPE_DEFAULT, "%@ Skip U2 label for token %lu (ERROR: invalid range)", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v147 = *__error();
                    v149 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v149, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v702;
                      *&buf[12] = 2048;
                      *&buf[14] = v144;
                      _os_log_impl(&dword_1C278D000, v149, OS_LOG_TYPE_DEFAULT, "%@ Skip U2 label for token %lu (ERROR: it is missing essential keys)", buf, 0x16u);
                    }
                  }

                  *__error() = v147;
LABEL_203:
                  if (++v144 >= [v143 count])
                  {
                    goto LABEL_214;
                  }
                }
              }

              goto LABEL_214;
            }

            v151 = *__error();
            v152 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v702;
              v153 = "%@ Skipping populating U2 labels (ERROR: U2 token info not present or invalid)";
              goto LABEL_212;
            }
          }

          else
          {
            v151 = *__error();
            v152 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v152, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = v702;
              v153 = "%@ Skipping populating U2 labels (ERROR: U2 output not present)";
LABEL_212:
              _os_log_impl(&dword_1C278D000, v152, OS_LOG_TYPE_DEFAULT, v153, buf, 0xCu);
            }
          }

          *__error() = v151;
LABEL_214:
          v154 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
          if (v154)
          {
            v155 = v154;
          }

          else
          {
            v155 = @"en";
          }

          v156 = [MEMORY[0x1E695DF90] dictionary];
          if ([(__CFString *)v155 isEqualToString:@"en"])
          {
            [(query_node *)v156 setObject:&unk_1F428F350 forKeyedSubscript:@"about"];
            [(query_node *)v156 setObject:&unk_1F428F350 forKeyedSubscript:@"with"];
            [(query_node *)v156 setObject:&unk_1F428F350 forKeyedSubscript:@"and"];
            [(query_node *)v156 setObject:&unk_1F428F350 forKeyedSubscript:@"by"];
            [(query_node *)v156 setObject:&unk_1F428F350 forKeyedSubscript:@"in"];
            [(query_node *)v156 setObject:&unk_1F428F350 forKeyedSubscript:@"on"];
            [(query_node *)v156 setObject:&unk_1F428F350 forKeyedSubscript:@"sent"];
            [(query_node *)v156 setObject:&unk_1F428F350 forKeyedSubscript:@"shared"];
            [(query_node *)v156 setObject:&unk_1F428F368 forKeyedSubscript:@"from"];
            [(query_node *)v156 setObject:&unk_1F428F380 forKeyedSubscript:@"to"];
            [(query_node *)v156 setObject:&unk_1F428F398 forKeyedSubscript:@"address"];
            [(query_node *)v156 setObject:&unk_1F428F398 forKeyedSubscript:@"addresses"];
            [(query_node *)v156 setObject:&unk_1F428F3B0 forKeyedSubscript:@"link"];
            [(query_node *)v156 setObject:&unk_1F428F3B0 forKeyedSubscript:@"links"];
            [(query_node *)v156 setObject:&unk_1F428F3C8 forKeyedSubscript:@"message"];
            [(query_node *)v156 setObject:&unk_1F428F3C8 forKeyedSubscript:@"messages"];
            [(query_node *)v156 setObject:&unk_1F428F3E0 forKeyedSubscript:@"photo"];
            [(query_node *)v156 setObject:&unk_1F428F3E0 forKeyedSubscript:@"photos"];
            [(query_node *)v156 setObject:&unk_1F428F3E0 forKeyedSubscript:@"pic"];
            [(query_node *)v156 setObject:&unk_1F428F3E0 forKeyedSubscript:@"pics"];
            [(query_node *)v156 setObject:&unk_1F428F3E0 forKeyedSubscript:@"picture"];
            [(query_node *)v156 setObject:&unk_1F428F3E0 forKeyedSubscript:@"pictures"];
            [(query_node *)v156 setObject:&unk_1F428F3E0 forKeyedSubscript:@"image"];
            [(query_node *)v156 setObject:&unk_1F428F3E0 forKeyedSubscript:@"images"];
          }

          v659 = v155;
          memset(v751, 0, 24);
          v684 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'‘’“”«»„“‹›"];
          if (Count < 1)
          {
            goto LABEL_344;
          }

          v665 = v156;
          v157 = 0;
          v158 = 0;
          v674 = -1;
          while (1)
          {
            RangeAtIndex = getRangeAtIndex(alloc, isa, v158);
            v161 = v160;
            if (RangeAtIndex == -1)
            {
              v166 = *__error();
              v167 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v167, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138413058;
                *&buf[4] = v702;
                *&buf[12] = 2048;
                *&buf[14] = v158;
                *&buf[22] = 2048;
                v720[0] = NAN;
                LOWORD(v720[1]) = 2048;
                *(&v720[1] + 2) = v161;
                _os_log_impl(&dword_1C278D000, v167, OS_LOG_TYPE_DEFAULT, "%@ Skipping query token %lu (ERROR: invalid range: (%ld, %ld))", buf, 0x2Au);
              }

              *__error() = v166;
              goto LABEL_255;
            }

            v162 = RangeAtIndex;
            ValueAtIndex = CFArrayGetValueAtIndex(theArray, v158);
            if (!CFStringGetLength(ValueAtIndex))
            {
              break;
            }

            if (![(__CFString *)ValueAtIndex UTF8String])
            {
              v168 = *__error();
              v170 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v170, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v702;
                *&buf[12] = 2048;
                *&buf[14] = v158;
                _os_log_impl(&dword_1C278D000, v170, OS_LOG_TYPE_DEFAULT, "%@ Skipping query token %lu (ERROR: UTF8 encoding of token failed)", buf, 0x16u);
              }

LABEL_238:
              *__error() = v168;
              goto LABEL_255;
            }

            if ((v157 & 1) == 0)
            {
              if (![v684 characterIsMember:{-[__CFString characterAtIndex:](ValueAtIndex, "characterAtIndex:", -[__CFString rangeOfComposedCharacterSequenceAtIndex:](ValueAtIndex, "rangeOfComposedCharacterSequenceAtIndex:", 0))}])
              {
                *buf = v162;
                *&buf[8] = v161;
                *&buf[16] = _rangeIntersection(v162, v161, v668);
                v175 = [(__CFString *)ValueAtIndex lowercaseString];
                if ([(query_node *)v665 objectForKeyedSubscript:v175])
                {
                  v176 = [-[query_node objectForKeyedSubscript:](v665 objectForKeyedSubscript:{v175), "intValue"}];
                }

                else
                {
                  v176 = -1;
                }

                LODWORD(v720[0]) = v176;
                v177 = _rangeIntersection(v162, v161, v662);
                if (v177 == -1)
                {
                  v178 = -1;
                }

                else
                {
                  v178 = [objc_msgSend(v661 objectAtIndexedSubscript:{v177), "intValue"}];
                }

                HIDWORD(v720[0]) = v178;
                std::vector<MessageTokenInfo>::push_back[abi:nn200100](v751, buf);
LABEL_254:
                v157 = 0;
                goto LABEL_255;
              }

              v171 = *__error();
              v172 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v172, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v702;
                *&buf[12] = 2048;
                *&buf[14] = v158;
                _os_log_impl(&dword_1C278D000, v172, OS_LOG_TYPE_DEFAULT, "%@ Query token %lu started double quote mode", buf, 0x16u);
              }

              *__error() = v171;
              v173 = [(__CFString *)ValueAtIndex length];
              [(__CFString *)ValueAtIndex rangeOfComposedCharacterSequenceAtIndex:0];
              if (v173 == v174 || ![v684 characterIsMember:{-[__CFString characterAtIndex:](ValueAtIndex, "characterAtIndex:", -[__CFString rangeOfComposedCharacterSequenceAtIndex:](ValueAtIndex, "rangeOfComposedCharacterSequenceAtIndex:", -[__CFString length](ValueAtIndex, "length") - 1))}])
              {
                v157 = 1;
                v674 = v162;
                goto LABEL_255;
              }

              v674 = v162;
            }

            if (Count - 1 == v158 || [v684 characterIsMember:{-[__CFString characterAtIndex:](ValueAtIndex, "characterAtIndex:", -[__CFString rangeOfComposedCharacterSequenceAtIndex:](ValueAtIndex, "rangeOfComposedCharacterSequenceAtIndex:", -[__CFString length](ValueAtIndex, "length") - 1))}])
            {
              v164 = *__error();
              v165 = _SILogForLogForCategory(19);
              if (os_log_type_enabled(v165, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138412546;
                *&buf[4] = v702;
                *&buf[12] = 2048;
                *&buf[14] = v158;
                _os_log_impl(&dword_1C278D000, v165, OS_LOG_TYPE_DEFAULT, "%@ Query token %lu ended double quote mode", buf, 0x16u);
              }

              *__error() = v164;
              *&buf[16] = -1;
              v720[0] = NAN;
              *buf = v674;
              *&buf[8] = v162 + v161 - v674;
              std::vector<MessageTokenInfo>::push_back[abi:nn200100](v751, buf);
              goto LABEL_254;
            }

            v157 = 1;
LABEL_255:
            if (Count == ++v158)
            {
              v179 = *v751;
              if (*&v751[8] != *v751)
              {
                v675 = 0;
                v696 = 0;
                theArrayb = 0;
                v180 = 0;
                allocb = *MEMORY[0x1E695E480];
                while (1)
                {
                  v181 = (v179 + 32 * v180);
                  v182 = *__error();
                  v183 = _SILogForLogForCategory(19);
                  if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
                  {
                    v184 = *(v181 + 2);
                    v185 = *(v181 + 6);
                    *buf = 138413058;
                    *&buf[4] = v702;
                    *&buf[12] = 2048;
                    *&buf[14] = v180;
                    *&buf[22] = 2048;
                    v720[0] = v184;
                    LOWORD(v720[1]) = 1024;
                    *(&v720[1] + 2) = v185;
                    _os_log_impl(&dword_1C278D000, v183, OS_LOG_TYPE_DEFAULT, "%@ Processing Search Token %lu (QP parse = %lu, tokType = %d)", buf, 0x26u);
                  }

                  *__error() = v182;
                  if (*(v181 + 6) == 10)
                  {
                    v186 = *__error();
                    v187 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v187, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v702;
                      *&buf[12] = 2048;
                      *&buf[14] = v180;
                      _os_log_impl(&dword_1C278D000, v187, OS_LOG_TYPE_DEFAULT, "%@ Search token %ld has double quote", buf, 0x16u);
                    }

                    *__error() = v186;
                    v188 = CFStringCreateWithSubstring(allocb, v8, *v181);
                    v189 = v188;
                    if (!v188)
                    {
LABEL_281:
                      v196 = *__error();
                      v198 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        *&buf[4] = v702;
                        *&buf[12] = 2048;
                        *&buf[14] = v180;
                        _os_log_impl(&dword_1C278D000, v198, OS_LOG_TYPE_DEFAULT, "%@ Search token %ld skipped (ERROR: Its nil)", buf, 0x16u);
                      }

                      goto LABEL_291;
                    }

                    if (![(__CFString *)v188 length])
                    {
                      goto LABEL_271;
                    }

                    v190 = [(__CFString *)v189 rangeOfComposedCharacterSequenceAtIndex:0];
                    v192 = v191;
                    v193 = v189;
                    if ([v684 characterIsMember:{-[__CFString characterAtIndex:](v189, "characterAtIndex:", v190)}])
                    {
                      v193 = [(__CFString *)v189 substringFromIndex:v190 + v192];
                    }

                    if ([(__CFString *)v193 length])
                    {
                      v194 = [(__CFString *)v193 rangeOfComposedCharacterSequenceAtIndex:[(__CFString *)v193 length]- 1];
                      if ([v684 characterIsMember:{-[__CFString characterAtIndex:](v193, "characterAtIndex:", v194)}])
                      {
                        v193 = [(__CFString *)v193 substringToIndex:v194];
                      }
                    }

                    else
                    {
LABEL_271:
                      v193 = 0;
                    }

                    CFRelease(v189);
                  }

                  else
                  {
                    v193 = [(__CFString *)v8 substringWithRange:*v181, v181[1]];
                  }

                  if (!v193)
                  {
                    goto LABEL_281;
                  }

                  v195 = [(__CFString *)v193 UTF8String];
                  if (v195)
                  {
                    if ((*(v181 + 6) - 3) < 0xFFFFFFFE || v180 == ((*&v751[8] - *v751) >> 5) - 1 || *(*v751 + 32 * v180 + 48) == -1)
                    {
                      v199 = v181[2];
                      if (v199 != -1)
                      {
                        v200 = [objc_msgSend(v677 objectAtIndexedSubscript:{v181[2]), "UTF8String"}];
                        if (v200)
                        {
                          query_node_with_ann = db_make_query_node_with_ann(v200, 0);
                          v202 = query_node_with_ann;
                          if ((*(a5 + 28) & 2) != 0)
                          {
                            *v748 = MEMORY[0x1E69E9820];
                            *&v748[8] = 3221225472;
                            *&v748[16] = ___ZL18MessageNodeFromStrP9PRContextPKcf_block_invoke;
                            *&v748[24] = &__block_descriptor_36_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
                            LODWORD(v749) = 1065353216;
                            *buf = MEMORY[0x1E69E9820];
                            *&buf[8] = 0x40000000;
                            *&buf[16] = __db_query_tree_apply_block_block_invoke;
                            *&v720[0] = &unk_1E8198ED0;
                            *&v720[1] = v748;
                            db_query_tree_apply_block_with_meta(query_node_with_ann, buf, 0);
                          }

                          theArrayb = makeAndNode(theArrayb, v202);
                        }

                        else
                        {
                          v204 = *__error();
                          v205 = _SILogForLogForCategory(19);
                          if (os_log_type_enabled(v205, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412546;
                            *&buf[4] = v702;
                            *&buf[12] = 2048;
                            *&buf[14] = v180;
                            _os_log_impl(&dword_1C278D000, v205, OS_LOG_TYPE_DEFAULT, "%@ Search token %ld QP parse skipped (ERROR: UTF8 encoding failed)", buf, 0x16u);
                          }

                          *__error() = v204;
                        }
                      }

                      if ((*(a5 + 28) & 2) != 0)
                      {
                        v206 = 0.3;
                      }

                      else
                      {
                        v206 = 0.0;
                      }

                      if (v199 != -1 || (v207 = *(v181 + 6)) == 0 || (v208 = *(v181 + 7), v208 <= 0x24) && ((1 << v208) & 0x1000C00000) != 0)
                      {
                        v209 = *__error();
                        v210 = _SILogForLogForCategory(19);
                        if (os_log_type_enabled(v210, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          *&buf[4] = v702;
                          *&buf[12] = 2048;
                          *&buf[14] = v180;
                          _os_log_impl(&dword_1C278D000, v210, OS_LOG_TYPE_DEFAULT, "%@ Search token %lu is a regular word", buf, 0x16u);
                        }

                        *__error() = v209;
                        QueryNode = createQueryNode("kMDItemTextContent", v195, 112, 1, 0, v206, 0.0);
                        v696 = makeAndNode(v696, QueryNode);
                        goto LABEL_292;
                      }

                      v212 = *__error();
                      v213 = _SILogForLogForCategory(19);
                      if (os_log_type_enabled(v213, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412546;
                        *&buf[4] = v702;
                        *&buf[12] = 2048;
                        *&buf[14] = v180;
                        _os_log_impl(&dword_1C278D000, v213, OS_LOG_TYPE_DEFAULT, "%@ Search token %lu is a keyword", buf, 0x16u);
                      }

                      *__error() = v212;
                      v214 = v717;
                      if ((*(a5 + 28) & 2) == 0)
                      {
                        if (v717)
                        {
                          v215 = 0;
                          do
                          {
                            v216 = (v214 + 2);
                            if (*(v214 + 39) < 0)
                            {
                              v216 = *v216;
                            }

                            v217 = createQueryNode(v216, v195, 112, 1, -1, 0.0, 0.0);
                            v215 = makeOrNode(v215, v217);
                            v214 = *v214;
                          }

                          while (v214);
                          goto LABEL_325;
                        }

LABEL_324:
                        v215 = 0;
                        goto LABEL_325;
                      }

                      if (!v717)
                      {
                        goto LABEL_324;
                      }

                      v215 = 0;
                      do
                      {
                        v218 = *(v214 + 10);
                        if (v218 != 0.0)
                        {
                          v219 = (v214 + 2);
                          if (*(v214 + 39) < 0)
                          {
                            v219 = *v219;
                          }

                          v220 = createQueryNode(v219, v195, 112, 1, -1, v218, 0.0);
                          v215 = makeOrNode(v215, v220);
                        }

                        v214 = *v214;
                      }

                      while (v214);
LABEL_325:
                      if (v207 > 4)
                      {
                        if (v207 == 5)
                        {
                          v229 = *__error();
                          v230 = _SILogForLogForCategory(19);
                          if (os_log_type_enabled(v230, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412546;
                            *&buf[4] = v702;
                            *&buf[12] = 2048;
                            *&buf[14] = v180;
                            _os_log_impl(&dword_1C278D000, v230, OS_LOG_TYPE_DEFAULT, "%@ Search token %lu is message", buf, 0x16u);
                          }

                          *__error() = v229;
                          v223 = "kMDItemContentTypeTree";
                          v224 = "public.message";
                        }

                        else
                        {
                          if (v207 != 6)
                          {
                            goto LABEL_343;
                          }

                          v225 = *__error();
                          v226 = _SILogForLogForCategory(19);
                          if (os_log_type_enabled(v226, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412546;
                            *&buf[4] = v702;
                            *&buf[12] = 2048;
                            *&buf[14] = v180;
                            _os_log_impl(&dword_1C278D000, v226, OS_LOG_TYPE_DEFAULT, "%@ Search token %lu is photo", buf, 0x16u);
                          }

                          *__error() = v225;
                          v223 = "kMDItemContentTypeTree";
                          v224 = "public.image";
                        }
                      }

                      else
                      {
                        if (v207 != 3)
                        {
                          if (v207 == 4)
                          {
                            v221 = *__error();
                            v222 = _SILogForLogForCategory(19);
                            if (os_log_type_enabled(v222, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412546;
                              *&buf[4] = v702;
                              *&buf[12] = 2048;
                              *&buf[14] = v180;
                              _os_log_impl(&dword_1C278D000, v222, OS_LOG_TYPE_DEFAULT, "%@ Search token %lu is link", buf, 0x16u);
                            }

                            *__error() = v221;
                            v223 = "kMDItemURL";
                            v224 = "*";
                            goto LABEL_342;
                          }

LABEL_343:
                          v675 = makeAndNode(v675, v215);
                          goto LABEL_292;
                        }

                        v227 = *__error();
                        v228 = _SILogForLogForCategory(19);
                        if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 138412546;
                          *&buf[4] = v702;
                          *&buf[12] = 2048;
                          *&buf[14] = v180;
                          _os_log_impl(&dword_1C278D000, v228, OS_LOG_TYPE_DEFAULT, "%@ Search token %lu is address", buf, 0x16u);
                        }

                        *__error() = v227;
                        v223 = "kMDItemExtractedAddressesLabels";
                        v224 = "*";
                      }

LABEL_342:
                      v231 = createQueryNode(v223, v224, 112, 1, 0, v206, 0.0);
                      v215 = makeOrNode(v215, v231);
                      goto LABEL_343;
                    }

                    v196 = *__error();
                    v197 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v197, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v702;
                      *&buf[12] = 2048;
                      *&buf[14] = v180;
                      _os_log_impl(&dword_1C278D000, v197, OS_LOG_TYPE_DEFAULT, "%@ Search token %ld skipped (Reason: It is optional and subsequent token has QP parse)", buf, 0x16u);
                    }
                  }

                  else
                  {
                    v196 = *__error();
                    v203 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      *&buf[4] = v702;
                      *&buf[12] = 2048;
                      *&buf[14] = v180;
                      _os_log_impl(&dword_1C278D000, v203, OS_LOG_TYPE_DEFAULT, "%@ Search token %ld skipped (ERROR: UTF8 encoding of token failed)", buf, 0x16u);
                    }
                  }

LABEL_291:
                  *__error() = v196;
LABEL_292:
                  ++v180;
                  v179 = *v751;
                  if (v180 >= (*&v751[8] - *v751) >> 5)
                  {
                    freeQueryTokensContext(&v679->super.isa);
                    if (v675)
                    {
                      if ((*(a5 + 28) & 2) != 0)
                      {
                        v239 = 0;
                        if (!theArrayb)
                        {
                          goto LABEL_361;
                        }
                      }

                      else
                      {
                        v238 = MessagesSemanticNode(a5->var23, v659, v702, v237);
                        v239 = v238;
                        if (!theArrayb)
                        {
                          if (v238)
                          {
                            v240 = *__error();
                            v241 = _SILogForLogForCategory(19);
                            if (os_log_type_enabled(v241, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *&buf[4] = v702;
                              _os_log_impl(&dword_1C278D000, v241, OS_LOG_TYPE_DEFAULT, "%@ Running ANN search with no filters (Reason: QP node is empty)", buf, 0xCu);
                            }

                            *__error() = v240;
                          }

LABEL_361:
                          v245 = makeAndNode(v675, v696);
                          v244 = makeOrNode(v239, v245);
LABEL_362:
                          v24 = v244;
                          if (!v244)
                          {
                            v246 = *__error();
                            v247 = _SILogForLogForCategory(19);
                            if (os_log_type_enabled(v247, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *&buf[4] = v702;
                              _os_log_impl(&dword_1C278D000, v247, OS_LOG_TYPE_DEFAULT, "%@ Skipping metadata search (ERROR: metadata node is null)", buf, 0xCu);
                            }

                            *__error() = v246;
                            v236 = makeFalseNode();
                            goto LABEL_348;
                          }

                          goto LABEL_349;
                        }
                      }

                      v242 = makeOrNode(v239, v675);
                      v243 = makeOrNode(theArrayb, v696);
                      v244 = makeAndNode(v242, v243);
                      goto LABEL_362;
                    }

                    v232 = v696;
                    v233 = theArrayb;
LABEL_345:
                    v234 = *__error();
                    v235 = _SILogForLogForCategory(19);
                    if (os_log_type_enabled(v235, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412290;
                      *&buf[4] = v702;
                      _os_log_impl(&dword_1C278D000, v235, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (Reason: no keywords in the query)", buf, 0xCu);
                    }

                    *__error() = v234;
                    v236 = makeOrNode(v233, v232);
LABEL_348:
                    v24 = v236;
LABEL_349:
                    if (*v751)
                    {
                      operator delete(*v751);
                    }

LABEL_96:
                    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v717);
                    v80 = v716;
                    *&v716 = 0;
                    if (v80)
                    {
                      operator delete(v80);
                    }

                    return v24;
                  }
                }
              }

LABEL_344:
              freeQueryTokensContext(&v679->super.isa);
              v232 = 0;
              v233 = 0;
              goto LABEL_345;
            }
          }

          v168 = *__error();
          v169 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v169, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = v702;
            *&buf[12] = 2048;
            *&buf[14] = v158;
            _os_log_impl(&dword_1C278D000, v169, OS_LOG_TYPE_DEFAULT, "%@ Skipping query token %lu (Reason: Its zero-length)", buf, 0x16u);
          }

          goto LABEL_238;
        }
      }

      freeQueryTokensContext(&v679->super.isa);
      v77 = *__error();
      v78 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v702;
        _os_log_impl(&dword_1C278D000, v78, OS_LOG_TYPE_DEFAULT, "%@ Return no results (ERROR: zero tokens found from the userQuery)", buf, 0xCu);
      }
    }

    else
    {
      v77 = *__error();
      v79 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v702;
        _os_log_impl(&dword_1C278D000, v79, OS_LOG_TYPE_DEFAULT, "%@ Return no results (ERROR: missing tokenization context on userQuery)", buf, 0xCu);
      }
    }

    v24 = 0;
    *__error() = v77;
    goto LABEL_96;
  }

  if (var3 == 1 && (*(a5 + 7) & 0x18) != 0)
  {
    v12 = [objc_msgSend(MEMORY[0x1E695DF58] "currentLocale")];
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = @"en";
    }

    v14 = logHeader(a5, &v13->isa);
    if (!a4)
    {
      goto LABEL_38;
    }

    if (!CFDictionaryContainsKey(a4, @"suggestionFilter"))
    {
      goto LABEL_38;
    }

    v15 = CFDictionaryGetValue(a4, @"suggestionFilter");
    if (!v15)
    {
      goto LABEL_38;
    }

    v16 = v15;
    v17 = *__error();
    v18 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_impl(&dword_1C278D000, v18, OS_LOG_TYPE_DEFAULT, "%@ Query has suggestions", buf, 0xCu);
    }

    *__error() = v17;
    v19 = [v16 UTF8String];
    v20 = *(a5 + 7);
    v21 = db_make_query_node_with_ann(v19, 0);
    if (v21)
    {
      v22 = v21;
      processNode(v21, (v20 >> 1) & 1);
      v24 = v23;
      *buf = MEMORY[0x1E69E9820];
      *&buf[8] = 0x40000000;
      *&buf[16] = __db_query_tree_apply_block_block_invoke;
      *&v720[0] = &unk_1E8198ED0;
      *&v720[1] = &__block_literal_global_174;
      db_query_tree_apply_block_with_meta(v22, buf, 0);
      if (!v8)
      {
LABEL_61:
        v57 = *__error();
        v58 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v14;
          _os_log_impl(&dword_1C278D000, v58, OS_LOG_TYPE_DEFAULT, "%@ Skipping query (Reason: it is empty)", buf, 0xCu);
        }

LABEL_172:
        *__error() = v57;
        return v24;
      }
    }

    else
    {
LABEL_38:
      v24 = 0;
      if (!v8)
      {
        goto LABEL_61;
      }
    }

    if (!CFStringGetLength(v8))
    {
      goto LABEL_61;
    }

    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v8);
    v40 = CFLocaleCopyCurrent();
    CFStringLowercase(MutableCopy, v40);
    if (v40)
    {
      CFRelease(v40);
    }

    v41 = redactedString(&MutableCopy->isa);
    v42 = *__error();
    v43 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v41;
      _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "%@ Processing query: %@", buf, 0x16u);
    }

    *__error() = v42;
    v44 = [[PRAstBuilder alloc] initWithLanguageCode:v13 context:a5 logHeader:v14];
    v45 = [(PRAstBuilder *)v44 buildASTFromQuery:MutableCopy queryUnderstanding:a4];
    CFRelease(MutableCopy);
    if (!v45)
    {
      v93 = *__error();
      v94 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_1C278D000, v94, OS_LOG_TYPE_DEFAULT, "%@ Failed to build AST from query", buf, 0xCu);
      }

      *__error() = v93;

      return v24;
    }

    LogASTIfDebuggingEnabled(v45, v8, a5);
    v46 = convertASTNodeToQueryNode(v45, a5);

    if (!v46)
    {
      v57 = *__error();
      v98 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_1C278D000, v98, OS_LOG_TYPE_DEFAULT, "%@ Failed to convert AST to query tree", buf, 0xCu);
      }

      goto LABEL_172;
    }

    v47 = *(a5 + 7);
    if ((v47 & 2) != 0)
    {
      v99 = makeAndNode(v46, v24);
      v100 = [MEMORY[0x1E695DF00] date];
      v101 = 0;
      v102 = &dword_1C2BFF12C;
      v103 = 4;
      do
      {
        v104 = *v102;
        [objc_msgSend(v100 dateByAddingTimeInterval:{(-86400 * *(v102 - 1))), "timeIntervalSinceReferenceDate"}];
        if (v103 == 4)
        {
          v106 = 0.01;
        }

        else
        {
          v106 = 0.0;
        }

        v107 = createQueryNode("kMDItemInterestingDate_Ranking", [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%f", v105), "UTF8String"], 0, 4, 0, v104, v106);
        v101 = makeOrNode(v101, v107);
        v102 += 2;
        --v103;
      }

      while (v103);
      v108 = v99;
      v109 = v101;
      goto LABEL_170;
    }

    if ((v47 & 0x800) != 0)
    {
LABEL_169:
      v108 = v46;
      v109 = v24;
LABEL_170:
      v24 = makeAndNode(v108, v109);
      v57 = *__error();
      v135 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v135, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_1C278D000, v135, OS_LOG_TYPE_DEFAULT, "%@ AST conversion completed successfully", buf, 0xCu);
      }

      goto LABEL_172;
    }

    var23 = a5->var23;
    if (!var23 || !CFDictionaryContainsKey(a5->var23, @"vec_dimensions") || !CFDictionaryContainsKey(var23, @"vec_data_format") || !CFDictionaryContainsKey(var23, @"vec_version"))
    {
      v53 = *__error();
      v54 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        v55 = "%@ Skipping ANN node (ERROR: missing essential ann params)";
        goto LABEL_167;
      }

LABEL_168:
      *__error() = v53;
      goto LABEL_169;
    }

    if (!CFDictionaryContainsKey(var23, @"vectors"))
    {
      v53 = *__error();
      v54 = _SILogForLogForCategory(19);
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_168;
      }

      *buf = 138412290;
      *&buf[4] = v14;
      v55 = "%@ Skipping ANN node (ERROR: missing vectors in ann params)";
      goto LABEL_167;
    }

    v49 = CFDictionaryGetValue(var23, @"vectors");
    v50 = v49;
    if (!v49 || ![v49 count])
    {
      v53 = *__error();
      v54 = _SILogForLogForCategory(19);
      if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_168;
      }

      *buf = 138412290;
      *&buf[4] = v14;
      v55 = "%@ Skipping ANN node (ERROR: missing query embedding)";
      goto LABEL_167;
    }

    v51 = [v50 objectAtIndexedSubscript:0];
    v52 = v51;
    if (!v51 || [v51 length] <= 1)
    {
      v53 = *__error();
      v54 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        v55 = "%@ Skipping ANN node (ERROR: embedding has 0 dimensionality)";
LABEL_167:
        _os_log_impl(&dword_1C278D000, v54, OS_LOG_TYPE_DEFAULT, v55, buf, 0xCu);
        goto LABEL_168;
      }

      goto LABEL_168;
    }

    v629 = CFDictionaryGetValue(var23, @"vec_dimensions");
    v630 = CFDictionaryGetValue(var23, @"vec_data_format");
    v631 = CFDictionaryGetValue(var23, @"vec_version");
    if ([(__CFString *)v13 isEqualToString:@"en"])
    {
      v632 = 1.2;
    }

    else
    {
      v632 = 1.4;
    }

    v633 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v633)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v633 floatValue];
        v632 = v634;
        v635 = *__error();
        v636 = _SILogForLogForCategory(19);
        if (os_log_type_enabled(v636, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          *&buf[4] = v14;
          *&buf[12] = 2048;
          *&buf[14] = v632;
          _os_log_impl(&dword_1C278D000, v636, OS_LOG_TYPE_DEFAULT, "%@ Using user specified ann threshold: %f", buf, 0x16u);
        }

        *__error() = v635;
      }
    }

    v637 = [v631 intValue];
    v638 = [v629 intValue];
    v639 = [v630 intValue];
    v640 = [v52 length];
    if (v640 > 1)
    {
      v643 = [v52 bytes];
      if (v643)
      {
        if (*MEMORY[0x1E69E9AC8] <= 0x12FuLL)
        {
          ++sTotal;
        }

        v644 = malloc_type_zone_calloc(queryZone, 1uLL, 0x130uLL, 0x5BAF1CEAuLL);
        if (!v644)
        {
          _log_fault_for_malloc_failure();
        }

        *v644 = strdup("_kMDItemPrimaryTextEmbedding");
        *(v644 + 6) = 15;
        v644[16] = v632;
        *(v644 + 15) = v638 & 3 | (4 * (v639 & 3)) | (v637 << 25) | 0x50;
        *(v644 + 10) = 5;
        *(v644 + 40) |= 0x10000u;
        v645 = malloc_type_zone_malloc(queryZone, v640 & 0xFFFFFFFFFFFFFFFELL, 0xA4971684uLL);
        v646 = v640 >> 1;
        if (!v645)
        {
          _log_fault_for_malloc_failure();
        }

        v647 = 0;
        *(v644 + 37) = v645;
        if (v646 <= 1)
        {
          v648 = 1;
        }

        else
        {
          v648 = v646;
        }

        do
        {
          *(*(v644 + 37) + 2 * v647) = *(v643 + 2 * v647);
          ++v647;
        }

        while (v648 != v647);
        if (*MEMORY[0x1E69E9AC8] <= 0x4FuLL)
        {
          ++sTotal;
        }

        v649 = malloc_type_zone_calloc(queryZone, 1uLL, 0x50uLL, 0x5BAF1CEAuLL);
        v650 = v649;
        if (v649)
        {
          v649->var6 = 4;
          v649->var2 = v644;
          v651 = *__error();
          v652 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v652, OS_LOG_TYPE_DEFAULT))
          {
            v653 = [v52 length];
            *buf = 138413058;
            *&buf[4] = v14;
            *&buf[12] = 2048;
            *&buf[14] = v653 >> 1;
            *&buf[22] = 2048;
            v720[0] = v632;
            LOWORD(v720[1]) = 1024;
            *(&v720[1] + 2) = 5;
            _os_log_impl(&dword_1C278D000, v652, OS_LOG_TYPE_DEFAULT, "%@ Adding ANN node (dim: %lu, thresh: %f, num results: %d)", buf, 0x26u);
          }

          *__error() = v651;
          v46 = makeOrNode(v46, v650);
          goto LABEL_169;
        }

        _log_fault_for_malloc_failure();
        MEMORY[0x30] = 4;
        MEMORY[0x10] = v644;
        goto LABEL_877;
      }

      v641 = *__error();
      v654 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v654, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_1C278D000, v654, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: Failed to get bytes from embedding)", buf, 0xCu);
      }
    }

    else
    {
      v641 = *__error();
      v642 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v642, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = v14;
        _os_log_impl(&dword_1C278D000, v642, OS_LOG_TYPE_DEFAULT, "%@ Skipping ANN node (ERROR: embedding has 0 dimensionality)", buf, 0xCu);
      }
    }

    *__error() = v641;
LABEL_877:
    v53 = *__error();
    v54 = _SILogForLogForCategory(19);
    if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_168;
    }

    *buf = 138412290;
    *&buf[4] = v14;
    v55 = "%@ Skipping ANN node (ERROR: failed to create it)";
    goto LABEL_167;
  }

LABEL_31:
  if ((v10 & 0x80) != 0)
  {

    return pommesDefaultTree(a1, a5, 1);
  }

  if ((v10 & 0x2000) != 0)
  {
    if ((v10 & 0x20000) == 0)
    {
      Tree = PhotosQueryTree(a2, a3, a4, a5);
LABEL_70:
      v24 = Tree;
LABEL_487:
      v319 = a5->var3;
      if (v319 == 4 && (*(a5 + 28) & 0x48) != 0)
      {
        return v24;
      }

      if (!v24)
      {
        v10 = *(a5 + 7);
        goto LABEL_493;
      }

      v10 = *(a5 + 7);
      if (v24->var6 == 16)
      {
        v320 = 0;
        goto LABEL_494;
      }

      if ((v10 & 0x8000) != 0 || v319 != 4)
      {
        if ((v10 & 0x200) != 0)
        {
          operator new();
        }

        v342 = 1;
        QueryNodeForPhotosMediaType = createQueryNodeForPhotosMediaType(1, a5);
        v24 = makeAndNode(v24, QueryNodeForPhotosMediaType);
      }

      else
      {
        v342 = 0;
      }

      v433 = (*(v706 + 7) & 2) == 0;
      v59 = *__error();
      if (v433)
      {
        v434 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v434, OS_LOG_TYPE_DEFAULT))
        {
          var0 = v706->var0;
          var1 = v706->var1;
          *buf = 134218754;
          *&buf[4] = var0;
          *&buf[12] = 2080;
          *&buf[14] = var1;
          *&buf[22] = 1024;
          LODWORD(v720[0]) = v24 == 0;
          WORD2(v720[0]) = 1024;
          *(v720 + 6) = v342;
          _os_log_impl(&dword_1C278D000, v434, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added Photos query node to the POMMES query tree (empty: %d) (filter: %d)", buf, 0x22u);
        }
      }

      else
      {
        v437 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v437, OS_LOG_TYPE_DEFAULT))
        {
          v439 = v706->var0;
          v438 = v706->var1;
          *buf = 134218754;
          *&buf[4] = v439;
          *&buf[12] = 2080;
          *&buf[14] = v438;
          *&buf[22] = 1024;
          LODWORD(v720[0]) = v24 == 0;
          WORD2(v720[0]) = 1024;
          *(v720 + 6) = v342;
          _os_log_impl(&dword_1C278D000, v437, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added Photos query node to the POMMES query tree (empty: %d) (filter: %d)", buf, 0x22u);
        }
      }

      v88 = __error();
LABEL_107:
      *v88 = v59;
      goto LABEL_500;
    }

    if ((v10 & 2) == 0)
    {
      Tree = PhotosLLMRetrievalTree(a2, a3, a4, a5);
      goto LABEL_70;
    }

    theArraya = [MEMORY[0x1E696AEC0] stringWithFormat:@"[qid=%llu][%s][POMMES][LLM][Ph]", a5->var0, a5->var1];
    v89 = a5->var23;
    if (v89)
    {
      v90 = CFDictionaryGetValue(v89, @"disableMetadataSearch");
      buf[0] = 0;
      if (v90)
      {
        CFNumberGetValue(v90, kCFNumberSInt8Type, buf);
        if (buf[0])
        {
          v91 = *__error();
          v92 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = theArraya;
            _os_log_impl(&dword_1C278D000, v92, OS_LOG_TYPE_DEFAULT, "%@ Skipping ranking nodes (Reason: metadata search is disabled)", buf, 0xCu);
          }

          *__error() = v91;
          Tree = makeFalseNode();
          goto LABEL_70;
        }
      }
    }

    v664 = mach_absolute_time();
    v703 = [MEMORY[0x1E695DF70] array];
    *&v711 = 0;
    if (a3 && CFAttributedStringGetLength(a3) >= 1)
    {
      *buf = 0;
      PhPopulateFiltersFromQuery(a3, buf, &v711, v703, [MEMORY[0x1E695DF70] array], 1, theArraya, (*(a5 + 7) >> 9) & 1);
      db_free_query_node(*buf);
    }

    -[NSCharacterSet formUnionWithCharacterSet:](v680, "formUnionWithCharacterSet:", [MEMORY[0x1E696AB08] whitespaceCharacterSet]);
    if (isValidQueryUnderstanding(a4))
    {
      v95 = PhRankingTreeFromLLMParse(a4, v703, v680, theArraya);
      goto LABEL_472;
    }

    RuleBasedQPParseFromQueryUnderstanding = getRuleBasedQPParseFromQueryUnderstanding(a4);
    v111 = *__error();
    v112 = _SILogForLogForCategory(20);
    if (os_log_type_enabled(v112, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = theArraya;
      _os_log_impl(&dword_1C278D000, v112, OS_LOG_TYPE_DEFAULT, "%@ {QP} Processing rule-based query parse output to create ranking tree", buf, 0xCu);
    }

    *__error() = v111;
    v660 = [MEMORY[0x1E695DF70] array];
    alloca = [MEMORY[0x1E695DF70] array];
    v695 = [MEMORY[0x1E695DF70] array];
    v683 = [MEMORY[0x1E695DF70] array];
    v685 = [MEMORY[0x1E695DF70] array];
    v113 = [RuleBasedQPParseFromQueryUnderstanding length];
    *buf = MEMORY[0x1E69E9820];
    *&buf[8] = 3221225472;
    *&buf[16] = ___ZL28PhPopulateAllFilterFromParseP18NSAttributedStringP14NSMutableArrayIP8NSStringEPS1_IP7NSValueES9_S9_S9__block_invoke;
    *&v720[0] = &unk_1E8199768;
    *&v720[1] = v695;
    *&v720[2] = v683;
    *&v720[3] = v685;
    v721 = v660;
    v722 = alloca;
    [RuleBasedQPParseFromQueryUnderstanding enumerateAttributesInRange:0 options:v113 usingBlock:{0, buf}];
    if ([alloca count] || objc_msgSend(v695, "count") || objc_msgSend(v685, "count") || objc_msgSend(v683, "count"))
    {
      v114 = *__error();
      v115 = _SILogForLogForCategory(20);
      if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
      {
        v116 = [alloca count];
        v117 = [v695 count];
        v118 = [v685 count];
        v119 = [v683 count];
        *buf = 138413314;
        *&buf[4] = theArraya;
        *&buf[12] = 2048;
        *&buf[14] = v116;
        *&buf[22] = 2048;
        *&v720[0] = v117;
        LOWORD(v720[1]) = 2048;
        *(&v720[1] + 2) = v118;
        WORD1(v720[2]) = 2048;
        *(&v720[2] + 4) = v119;
        _os_log_impl(&dword_1C278D000, v115, OS_LOG_TYPE_DEFAULT, "%@ {QP} Populated filters: time = %lu, fav = %lu, person = %lu, mediatype = %lu", buf, 0x34u);
      }

      *__error() = v114;
    }

    v658 = [MEMORY[0x1E695DFA8] set];
    v120 = CreateQueryTokens(v8, 1);
    if (v120)
    {
      v121 = v120;
      v122 = *v120;
      if (v122)
      {
        v673 = v121;
        v678 = CFArrayGetCount(v122);
        v121 = v673;
        if (v678)
        {
          v657 = *v673;
          v669 = v673[2];
          v671 = v673[1];
          if ([(__CFString *)v8 length])
          {
            if (![(NSString *)v703 count])
            {
              goto LABEL_882;
            }

            v8 = [(__CFString *)v8 mutableCopy];
            v749 = 0u;
            v750 = 0u;
            memset(v748, 0, sizeof(v748));
            v123 = [(NSString *)v703 reverseObjectEnumerator];
            v124 = [v123 countByEnumeratingWithState:v748 objects:buf count:16];
            if (v124)
            {
              v125 = **&v748[16];
              do
              {
                for (i = 0; i != v124; ++i)
                {
                  if (**&v748[16] != v125)
                  {
                    objc_enumerationMutation(v123);
                  }

                  v127 = [*(*&v748[8] + 8 * i) rangeValue];
                  [(__CFString *)v8 replaceCharactersInRange:v127 withString:v128, &stru_1F4284FD0];
                }

                v124 = [v123 countByEnumeratingWithState:v748 objects:buf count:16];
              }

              while (v124);
            }

            if (![(__CFString *)v8 length])
            {
              v132 = *__error();
              v133 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
              {
                *v751 = 138412290;
                *&v751[4] = theArraya;
                v134 = "%@ {Exact Match} Skipping query (Reason: empty query after suggestion filtering)";
                goto LABEL_378;
              }
            }

            else
            {
LABEL_882:
              if ([(__CFString *)v8 length])
              {
                v8 = [(__CFString *)v8 stringByTrimmingCharactersInSet:v680];
              }

              if ([(__CFString *)v8 length])
              {
                v129 = [(__CFString *)v8 UTF8String];
                if (v129)
                {
                  v130 = std::string::basic_string[abi:nn200100]<0>(v751, v129);
                  v131 = isOptionalWord(v130);
                  if (v751[23] < 0)
                  {
                    operator delete(*v751);
                  }

                  if (!v131)
                  {
                    PhExactMatchRankingAttribs();
                    v623 = qword_1EBF483C0;
                    if (qword_1EBF483C0)
                    {
                      v624 = 0;
                      v625 = 0;
                      do
                      {
                        v626 = (v623 + 16);
                        if (*(v623 + 39) < 0)
                        {
                          v626 = *v626;
                        }

                        v627 = createQueryNode(v626, v129, 48, 1, 0, *(v623 + 40) + 100.0, 0.0);
                        v624 = makeOrNode(v624, v627);
                        ++v625;
                        v623 = *v623;
                      }

                      while (v623);
                    }

                    else
                    {
                      v625 = 0;
                      v624 = 0;
                    }

                    v656 = v624;
                    if (v678 == 1)
                    {
                      v655 = createQueryNode("kMDItemTextContent", v129, 112, 1, 0, 100.0, 0.0);
                      ++v625;
                    }

                    else
                    {
                      v655 = 0;
                    }

                    v132 = *__error();
                    v628 = _SILogForLogForCategory(20);
                    if (os_log_type_enabled(v628, OS_LOG_TYPE_DEFAULT))
                    {
                      *v751 = 138412546;
                      *&v751[4] = theArraya;
                      *&v751[12] = 1024;
                      *&v751[14] = v625;
                      _os_log_impl(&dword_1C278D000, v628, OS_LOG_TYPE_DEFAULT, "%@ {Exact Match} Added %d nodes", v751, 0x12u);
                    }

                    goto LABEL_381;
                  }

                  v132 = *__error();
                  v133 = _SILogForLogForCategory(20);
                  if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
                  {
                    *v751 = 138412290;
                    *&v751[4] = theArraya;
                    v134 = "%@ {Exact Match} Skipping query (Reason: query is optional word)";
LABEL_378:
                    v248 = v751;
                    goto LABEL_379;
                  }
                }

                else
                {
                  v132 = *__error();
                  v133 = _SILogForLogForCategory(20);
                  if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
                  {
                    *v751 = 138412290;
                    *&v751[4] = theArraya;
                    v134 = "%@ {Exact Match} Skipping query (ERROR: UTF8 encoding of trimmed query failed)";
                    goto LABEL_378;
                  }
                }
              }

              else
              {
                v132 = *__error();
                v133 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
                {
                  *v751 = 138412290;
                  *&v751[4] = theArraya;
                  v134 = "%@ {Exact Match} Skipping query (Reason: empty query after removing special chars)";
                  goto LABEL_378;
                }
              }
            }
          }

          else
          {
            v132 = *__error();
            v133 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v133, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = theArraya;
              v134 = "%@ {Exact Match} Skipping query (Reason: empty query)";
              v248 = buf;
LABEL_379:
              _os_log_impl(&dword_1C278D000, v133, OS_LOG_TYPE_DEFAULT, v134, v248, 0xCu);
            }
          }

          v655 = 0;
          v656 = 0;
LABEL_381:
          *__error() = v132;
          *v751 = 0;
          if (v678 >= 1)
          {
            v663 = 0;
            v249 = 0;
            while (1)
            {
              v250 = getRangeAtIndex(v671, v669, v249);
              v252 = v251;
              if (v250 == -1)
              {
                break;
              }

              v253 = v250;
              if ([(NSString *)v703 count])
              {
                v254 = 0;
                while (1)
                {
                  v762.location = [-[NSString objectAtIndexedSubscript:](v703 objectAtIndexedSubscript:{v254), "rangeValue"}];
                  v762.length = v255;
                  v755.location = v253;
                  v755.length = v252;
                  if (NSIntersectionRange(v755, v762).length)
                  {
                    break;
                  }

                  if (++v254 >= [(NSString *)v703 count])
                  {
                    goto LABEL_388;
                  }
                }

                v261 = *__error();
                v264 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v264, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v249;
                  _os_log_impl(&dword_1C278D000, v264, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (Reason: It is a suggestion token)", buf, 0x16u);
                }

                goto LABEL_405;
              }

LABEL_388:
              if ([alloca count])
              {
                v256 = 0.0;
                while (1)
                {
                  v763.location = [objc_msgSend(alloca objectAtIndexedSubscript:{*&v256), "rangeValue"}];
                  v763.length = v257;
                  v756.location = v253;
                  v756.length = v252;
                  if (NSIntersectionRange(v756, v763).length)
                  {
                    break;
                  }

                  if (++*&v256 >= [alloca count])
                  {
                    goto LABEL_392;
                  }
                }

                v266 = *__error();
                v267 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v267, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v249;
                  *&buf[22] = 2048;
                  v720[0] = v256;
                  _os_log_impl(&dword_1C278D000, v267, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu has a date parse (Date parse idx: %lu)", buf, 0x20u);
                }

                *__error() = v266;
                if (([v658 containsObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", *&v256)}] & 1) == 0)
                {
                  [v658 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLong:", *&v256)}];
                  v268 = PhRankingTreeFromStr([objc_msgSend(v660 objectAtIndexedSubscript:{*&v256), "UTF8String"}], 0.13, v751);
                  v663 = makeAndNode(v663, v268);
                }

                goto LABEL_406;
              }

LABEL_392:
              if ([v695 count])
              {
                v258 = 0.0;
                while (1)
                {
                  v764.location = [objc_msgSend(v695 objectAtIndexedSubscript:{*&v258), "rangeValue"}];
                  v764.length = v259;
                  v757.location = v253;
                  v757.length = v252;
                  if (NSIntersectionRange(v757, v764).length)
                  {
                    break;
                  }

                  if (++*&v258 >= [v695 count])
                  {
                    goto LABEL_396;
                  }
                }

                v276 = *__error();
                v277 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v277, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v249;
                  *&buf[22] = 2048;
                  v720[0] = v258;
                  _os_log_impl(&dword_1C278D000, v277, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu has a fav parse (Fav parse idx: %lu)", buf, 0x20u);
                }

                *__error() = v276;
                v278 = "kMDItemPhotosFavorited";
                v279 = "1";
                v280 = 0;
                v281 = 0.18;
                goto LABEL_431;
              }

LABEL_396:
              v260 = CFArrayGetValueAtIndex(v657, v249);
              if (_containsOnlyCharsInCharset(v260, v680))
              {
                v261 = *__error();
                v262 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v262, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v249;
                  _os_log_impl(&dword_1C278D000, v262, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu is skipped (Reason: It has only trimmable chars)", buf, 0x16u);
                }

                goto LABEL_405;
              }

              v269 = [(NSString *)v260 UTF8String];
              if (!v269)
              {
                v261 = *__error();
                v284 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v249;
                  _os_log_impl(&dword_1C278D000, v284, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu is skipped (ERROR: UTF8 encoding of token failed)", buf, 0x16u);
                }

                goto LABEL_405;
              }

              if ([v685 count])
              {
                v270 = 0.0;
                while (1)
                {
                  v765.location = [objc_msgSend(v685 objectAtIndexedSubscript:{*&v270), "rangeValue"}];
                  v765.length = v271;
                  v758.location = v253;
                  v758.length = v252;
                  if (NSIntersectionRange(v758, v765).length)
                  {
                    break;
                  }

                  if (++*&v270 >= [v685 count])
                  {
                    goto LABEL_418;
                  }
                }

                v285 = *__error();
                v286 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v286, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v249;
                  *&buf[22] = 2048;
                  v720[0] = v270;
                  _os_log_impl(&dword_1C278D000, v286, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu has a person parse (Person parse idx: %lu)", buf, 0x20u);
                }

                *__error() = v285;
                v287 = createQueryNode("kMDItemPhotosPeopleNames", v269, 112, 1, 0, 0.17, 0.0);
                v288 = createQueryNode("kMDItemPhotosPeopleNamesAlternatives", v269, 112, 1, 0, 0.17, 0.0);
                v289 = makeOrNode(v287, v288);
                v663 = makeAndNode(v663, v289);
                v283 = *v751 + 2;
LABEL_432:
                *v751 = v283;
LABEL_406:
                v265 = v673;
                goto LABEL_407;
              }

LABEL_418:
              if ([v683 count])
              {
                v272 = 0.0;
                while (1)
                {
                  v766.location = [objc_msgSend(v683 objectAtIndexedSubscript:{*&v272), "rangeValue"}];
                  v766.length = v273;
                  v759.location = v253;
                  v759.length = v252;
                  if (NSIntersectionRange(v759, v766).length)
                  {
                    break;
                  }

                  if (++*&v272 >= [v683 count])
                  {
                    goto LABEL_422;
                  }
                }

                v293 = *__error();
                v294 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v294, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412802;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v249;
                  *&buf[22] = 2048;
                  v720[0] = v272;
                  _os_log_impl(&dword_1C278D000, v294, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu has a media parse (Media parse idx: %lu)", buf, 0x20u);
                }

                *__error() = v293;
                v278 = "kMDItemPhotosMediaTypes";
                v279 = v269;
                v280 = 112;
                v281 = 0.1;
LABEL_431:
                v282 = createQueryNode(v278, v279, v280, 1, 0, v281, 0.0);
                v663 = makeAndNode(v663, v282);
                v283 = *v751 + 1;
                goto LABEL_432;
              }

LABEL_422:
              std::string::basic_string[abi:nn200100]<0>(buf, v269);
              v274 = isOptionalWord(buf);
              if (buf[23] < 0)
              {
                operator delete(*buf);
              }

              if (v274)
              {
                v261 = *__error();
                v275 = _SILogForLogForCategory(20);
                if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412546;
                  *&buf[4] = theArraya;
                  *&buf[12] = 2048;
                  *&buf[14] = v249;
                  _os_log_impl(&dword_1C278D000, v275, OS_LOG_TYPE_DEFAULT, "%@ {QP} Token: %lu is skipped (Reason: It is optional as per optional dictionary)", buf, 0x16u);
                }

                goto LABEL_405;
              }

              memset(buf, 0, sizeof(buf));
              std::string::basic_string[abi:nn200100]<0>(v748, v269);
              getSynonym(buf, v748);
              if (v748[23] < 0)
              {
                operator delete(*v748);
              }

              if (v249 == v678 - 1)
              {
                v290 = PhImpAttributesPrefixRankingNode(v269);
                v291 = makeAndNode(v663, v290);
                if (buf[23] < 0)
                {
                  if (!*&buf[8])
                  {
                    goto LABEL_464;
                  }

                  v292 = *buf;
                }

                else
                {
                  if (!buf[23])
                  {
                    goto LABEL_451;
                  }

                  v292 = buf;
                }

                v297 = PhImpAttributesPrefixRankingNode(v292);
                v663 = makeOrNode(v291, v297);
                v298 = *v751;
                v299 = *__error();
                v300 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v300, OS_LOG_TYPE_DEFAULT))
                {
                  *v748 = 138412546;
                  *&v748[4] = theArraya;
                  *&v748[12] = 2048;
                  *&v748[14] = v678 - 1;
                  _os_log_impl(&dword_1C278D000, v300, OS_LOG_TYPE_DEFAULT, "%@ {QP} Adding synonym for token %lu", v748, 0x16u);
                }

                v301 = __error();
                v302 = v298 + 5;
              }

              else
              {
                v295 = PhImpAttributesRankingNode(v269);
                v291 = makeAndNode(v663, v295);
                if (buf[23] < 0)
                {
                  if (!*&buf[8])
                  {
LABEL_464:
                    v663 = v291;
                    v265 = v673;
                    *v751 += 5;
LABEL_465:
                    operator delete(*buf);
                    goto LABEL_407;
                  }

                  v296 = *buf;
                }

                else
                {
                  if (!buf[23])
                  {
LABEL_451:
                    v663 = v291;
                    v265 = v673;
                    *v751 += 5;
                    goto LABEL_407;
                  }

                  v296 = buf;
                }

                v303 = PhImpAttributesRankingNode(v296);
                v663 = makeOrNode(v291, v303);
                v302 = *v751 + 5;
                *v751 += 5;
                v299 = *__error();
                v304 = _SILogForLogForCategory(19);
                if (os_log_type_enabled(v304, OS_LOG_TYPE_DEFAULT))
                {
                  *v748 = 138412546;
                  *&v748[4] = theArraya;
                  *&v748[12] = 2048;
                  *&v748[14] = v249;
                  _os_log_impl(&dword_1C278D000, v304, OS_LOG_TYPE_DEFAULT, "%@ {QP} Adding synonym for token %lu", v748, 0x16u);
                }

                v301 = __error();
              }

              *v301 = v299;
              *v751 = v302 + 5;
              v265 = v673;
              if (buf[23] < 0)
              {
                goto LABEL_465;
              }

LABEL_407:
              if (++v249 == v678)
              {
                goto LABEL_467;
              }
            }

            v261 = *__error();
            v263 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v263, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138413058;
              *&buf[4] = theArraya;
              *&buf[12] = 2048;
              *&buf[14] = v249;
              *&buf[22] = 2048;
              v720[0] = NAN;
              LOWORD(v720[1]) = 2048;
              *(&v720[1] + 2) = v252;
              _os_log_impl(&dword_1C278D000, v263, OS_LOG_TYPE_DEFAULT, "%@ {QP} Skipping token %lu (ERROR: invalid range: (%ld, %ld))", buf, 0x2Au);
            }

LABEL_405:
            *__error() = v261;
            goto LABEL_406;
          }

          v663 = 0;
          v265 = v673;
LABEL_467:
          freeQueryTokensContext(v265);
          v305 = *__error();
          v306 = _SILogForLogForCategory(20);
          if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            *&buf[4] = theArraya;
            *&buf[12] = 1024;
            *&buf[14] = *v751;
            _os_log_impl(&dword_1C278D000, v306, OS_LOG_TYPE_DEFAULT, "%@ {QP} Added %d nodes", buf, 0x12u);
          }

          *__error() = v305;
          v307 = makeOrNode(v656, v663);
          if (v307)
          {
            v308 = v307;
            v309 = PhRankingBoostTree();
            v307 = makeAndNode(v308, v309);
          }

          v95 = makeOrNode(v307, v655);
LABEL_472:
          v24 = v95;
          if (v711)
          {
            if (v95)
            {
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = __db_query_tree_apply_block_block_invoke;
              *&v720[0] = &unk_1E8198ED0;
              *&v720[1] = &__block_literal_global_174;
              db_query_tree_apply_block_with_meta(v711, buf, 0);
LABEL_482:
              v316 = *__error();
              v317 = _SILogForLogForCategory(20);
              if (os_log_type_enabled(v317, OS_LOG_TYPE_DEFAULT))
              {
                v318 = mach_absolute_time();
                if (NanoSecondsSinceAbsoluteTime(unsigned long long)::onceToken != -1)
                {
                  dispatch_once(&NanoSecondsSinceAbsoluteTime(unsigned long long)::onceToken, &__block_literal_global_225);
                }

                *buf = 138412546;
                *&buf[4] = theArraya;
                *&buf[12] = 2048;
                *&buf[14] = ((v318 - v664) * NanoSecondsSinceAbsoluteTime(unsigned long long)::sTimebaseInfo / *algn_1EBF482A4) / 1000.0;
                _os_log_impl(&dword_1C278D000, v317, OS_LOG_TYPE_DEFAULT, "%@ Created ranking tree in %f micro seconds", buf, 0x16u);
              }

              *__error() = v316;
              goto LABEL_487;
            }

            v310 = *__error();
            v311 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v311, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              *&buf[4] = theArraya;
              *&buf[12] = 2048;
              *&buf[14] = 0x4059066660000000;
              _os_log_impl(&dword_1C278D000, v311, OS_LOG_TYPE_DEFAULT, "%@ Assigning weight: %f to metadata filter as there are no free tokens in the query", buf, 0x16u);
            }

            *__error() = v310;
            *&v716 = MEMORY[0x1E69E9820];
            *(&v716 + 1) = 3221225472;
            *&v717 = ___ZL20PhotosLLMRankingTreePK10__CFStringPK20__CFAttributedStringPK14__CFDictionaryP9PRContext_block_invoke;
            *(&v717 + 1) = &__block_descriptor_36_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
            LODWORD(v718[0]) = 1120416563;
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __db_query_tree_apply_block_block_invoke;
            *&v720[0] = &unk_1E8198ED0;
            *&v720[1] = &v716;
            db_query_tree_apply_block_with_meta(v711, buf, 0);
            v312 = v711;
            v313 = PhRankingBoostTree();
            v24 = makeAndNode(v312, v313);
          }

          if (!v24)
          {
            v314 = *__error();
            v315 = _SILogForLogForCategory(20);
            if (os_log_type_enabled(v315, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              *&buf[4] = theArraya;
              _os_log_impl(&dword_1C278D000, v315, OS_LOG_TYPE_DEFAULT, "%@ Returning false tree (Reason: query tree is empty)", buf, 0xCu);
            }

            *__error() = v314;
            v24 = makeFalseNode();
          }

          goto LABEL_482;
        }
      }

      freeQueryTokensContext(v121);
      v136 = *__error();
      v137 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v137, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = theArraya;
        _os_log_impl(&dword_1C278D000, v137, OS_LOG_TYPE_DEFAULT, "%@ {QP} Return no results (ERROR: zero tokens found from the userQuery)", buf, 0xCu);
      }
    }

    else
    {
      v136 = *__error();
      v138 = _SILogForLogForCategory(19);
      if (os_log_type_enabled(v138, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        *&buf[4] = theArraya;
        _os_log_impl(&dword_1C278D000, v138, OS_LOG_TYPE_DEFAULT, "%@ {QP} Return no results (ERROR: missing tokenization context on userQuery)", buf, 0xCu);
      }
    }

    *__error() = v136;
    v95 = makeFalseNode();
    goto LABEL_472;
  }

  if ((var3 & 4) != 0)
  {
    v59 = *__error();
    if ((v10 & 2) != 0)
    {
      v84 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
      {
        v85 = a5->var0;
        v86 = a5->var1;
        v87 = *(a5 + 7);
        *buf = 134218754;
        *&buf[4] = v85;
        *&buf[12] = 2080;
        *&buf[14] = v86;
        *&buf[22] = 1024;
        LODWORD(v720[0]) = HIWORD(v87) & 1;
        WORD2(v720[0]) = 1024;
        *(v720 + 6) = (v87 >> 17) & 1;
        _os_log_impl(&dword_1C278D000, v84, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Skip adding photos query node to the POMMES tree (useQU: %d) (useLLM: %d)", buf, 0x22u);
      }
    }

    else
    {
      v60 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        v61 = a5->var0;
        v62 = a5->var1;
        v63 = *(a5 + 7);
        *buf = 134218754;
        *&buf[4] = v61;
        *&buf[12] = 2080;
        *&buf[14] = v62;
        *&buf[22] = 1024;
        LODWORD(v720[0]) = HIWORD(v63) & 1;
        WORD2(v720[0]) = 1024;
        *(v720 + 6) = (v63 >> 17) & 1;
        _os_log_impl(&dword_1C278D000, v60, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Skip adding photos query node to the POMMES tree (useQU: %d) (useLLM: %d)", buf, 0x22u);
      }
    }

    v88 = __error();
    v24 = 0;
    goto LABEL_107;
  }

  v24 = 0;
LABEL_493:
  v320 = 1;
LABEL_494:
  v321 = *__error();
  if ((v10 & 2) != 0)
  {
    v322 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v322, OS_LOG_TYPE_DEFAULT))
    {
LABEL_498:
      v323 = a5->var0;
      v324 = a5->var1;
      *buf = 134218498;
      *&buf[4] = v323;
      *&buf[12] = 2080;
      *&buf[14] = v324;
      *&buf[22] = 1024;
      LODWORD(v720[0]) = v320;
      _os_log_impl(&dword_1C278D000, v322, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Photos query node is empty / ALWAYS_FALSE_NODE (empty: %d)", buf, 0x1Cu);
    }
  }

  else
  {
    v322 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v322, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_498;
    }
  }

  *__error() = v321;
  db_free_query_node(v24);
  v24 = 0;
LABEL_500:
  v325 = v706;
  v326 = *(v706 + 7);
  if ((v326 & 0x8000) == 0)
  {
    v327 = (*(v706 + 7) & 2) == 0;
    v328 = *__error();
    if (v327)
    {
      v329 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v329, OS_LOG_TYPE_DEFAULT))
      {
        v330 = v706->var0;
        v331 = v706->var1;
        v332 = *(v706 + 7);
        *buf = 134218754;
        *&buf[4] = v330;
        *&buf[12] = 2080;
        *&buf[14] = v331;
        *&buf[22] = 1024;
        LODWORD(v720[0]) = HIWORD(v332) & 1;
        WORD2(v720[0]) = 1024;
        *(v720 + 6) = (v332 >> 17) & 1;
        _os_log_impl(&dword_1C278D000, v329, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Skip adding non-photos QU query node to the POMMES tree (useQU: %d) (useLLM: %d)", buf, 0x22u);
      }
    }

    else
    {
      v338 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v338, OS_LOG_TYPE_DEFAULT))
      {
        v339 = v706->var0;
        v340 = v706->var1;
        v341 = *(v706 + 7);
        *buf = 134218754;
        *&buf[4] = v339;
        *&buf[12] = 2080;
        *&buf[14] = v340;
        *&buf[22] = 1024;
        LODWORD(v720[0]) = HIWORD(v341) & 1;
        WORD2(v720[0]) = 1024;
        *(v720 + 6) = (v341 >> 17) & 1;
        _os_log_impl(&dword_1C278D000, v338, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Skip adding non-photos QU query node to the POMMES tree (useQU: %d) (useLLM: %d)", buf, 0x22u);
      }
    }

    v333 = __error();
    goto LABEL_614;
  }

  v705 = (*(v706 + 7) & 2) != 0;
  v704 = v24;
  if ((v326 & 0x20000) != 0)
  {
    v337 = pommesLLMQueryTree(a4, v706, &v705);
LABEL_534:
    v355 = v337;
    goto LABEL_535;
  }

  if ((v326 & 0x10000) == 0)
  {
LABEL_538:
    v356 = 0;
    v357 = 1;
LABEL_539:
    v358 = (*(v706 + 7) & 2) == 0;
    v359 = *__error();
    if (v358)
    {
      v360 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v360, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_543;
      }
    }

    else
    {
      v360 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v360, OS_LOG_TYPE_DEFAULT))
      {
LABEL_543:
        v362 = v706->var0;
        v361 = v706->var1;
        *buf = 134218498;
        *&buf[4] = v362;
        *&buf[12] = 2080;
        *&buf[14] = v361;
        *&buf[22] = 1024;
        LODWORD(v720[0]) = v357;
        _os_log_impl(&dword_1C278D000, v360, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES]Non-photos QU query node is empty / ALWAYS_FALSE_NODE (empty: %d)", buf, 0x1Cu);
      }
    }

    *__error() = v359;
    db_free_query_node(v356);
    v363 = 0;
    v364 = v706;
    goto LABEL_545;
  }

  allocc = getTokensInfoFromQueryUnderstanding(a4);
  if (!a4 || !CFDictionaryGetCount(a4) || (v686 = CFDictionaryGetValue(a4, @"attributedParse")) == 0)
  {
    v343 = getRuleBasedQPParseFromQueryUnderstanding(a4);
    v344 = (*(v706 + 7) & 2) == 0;
    v345 = *__error();
    if (v344)
    {
      v346 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v346, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_526;
      }
    }

    else
    {
      v346 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v346, OS_LOG_TYPE_DEFAULT))
      {
LABEL_526:
        v348 = v706->var0;
        v349 = v706->var1;
        *buf = 134218498;
        *&buf[4] = v348;
        *&buf[12] = 2080;
        *&buf[14] = v349;
        *&buf[22] = 2112;
        *&v720[0] = v343;
        _os_log_impl(&dword_1C278D000, v346, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU] Not using U2 for non-photos but rule based QP for query with QPParse:'%@'.", buf, 0x20u);
      }
    }

    *__error() = v345;
    goto LABEL_528;
  }

  v334 = (*(v706 + 7) & 2) == 0;
  v335 = *__error();
  if (v334)
  {
    v336 = _SILogForLogForCategory(17);
    if (!os_log_type_enabled(v336, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_636;
    }
  }

  else
  {
    v336 = _SILogForLogForCategory(18);
    if (!os_log_type_enabled(v336, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_636;
    }
  }

  v447 = v706->var0;
  v448 = v706->var1;
  *buf = 134218498;
  *&buf[4] = v447;
  *&buf[12] = 2080;
  *&buf[14] = v448;
  *&buf[22] = 2112;
  *&v720[0] = v686;
  _os_log_impl(&dword_1C278D000, v336, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU] Use U2 for non-photos query with QPParse:'%@'", buf, 0x20u);
LABEL_636:
  *__error() = v335;
  if (!allocc)
  {
LABEL_528:
    v350 = (*(v325 + 7) & 2) == 0;
    v351 = *__error();
    if (v350)
    {
      v352 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v352, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_532;
      }
    }

    else
    {
      v352 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v352, OS_LOG_TYPE_DEFAULT))
      {
LABEL_532:
        v353 = v325->var0;
        v354 = v325->var1;
        *buf = 134218242;
        *&buf[4] = v353;
        *&buf[12] = 2080;
        *&buf[14] = v354;
        _os_log_impl(&dword_1C278D000, v352, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU] Skip adding non-photos tree, Got no U2 parse (using ALWAYS_FALSE_NODE)", buf, 0x16u);
      }
    }

    *__error() = v351;
    v337 = makeFalseNode();
    goto LABEL_534;
  }

  if ((*(v325 + 28) & 2) != 0)
  {
    v718[0] = 1065353216;
    v716 = 0u;
    v717 = 0u;
    RankingAttributeScores = getRankingAttributeScores(v325);
    v752 = 1065353216;
    memset(v751, 0, sizeof(v751));
    v529 = CFArrayGetCount(allocc);
    *&v748[24] = 0;
    v749 = 0uLL;
    v530 = 112;
    if (v529 == 1)
    {
      v530 = 1073741936;
    }

    *v748 = v530;
    *&v748[8] = 1065353216;
    std::string::basic_string[abi:nn200100]<0>(v714, "");
    *&v748[16] = v714;
    *&v748[24] = 1;
    v748[28] = 0;
    *&v749 = getWildCardAllowedFields(v325->var4);
    DWORD2(v749) = 0;
    *(&v749 + 11) = 0;
    if (v529 < 1)
    {
      v606 = 0;
      v550 = 0;
      v532 = 0.0;
      LOBYTE(v682) = 1;
LABEL_822:
      v615 = *__error();
      v616 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v616, OS_LOG_TYPE_DEFAULT))
      {
        v617 = v325->var0;
        v618 = v325->var1;
        *buf = 134219010;
        *&buf[4] = v617;
        *&buf[12] = 2080;
        *&buf[14] = v618;
        *&buf[22] = 2048;
        v720[0] = v532;
        LOWORD(v720[1]) = 1024;
        *(&v720[1] + 2) = v550;
        HIWORD(v720[1]) = 1024;
        LODWORD(v720[2]) = v682 & 1;
        _os_log_impl(&dword_1C278D000, v616, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][lastIdx=%lu] Skipping non-Photos QU tree: {malformed=%d, allKeyword=%d}", buf, 0x2Cu);
      }

      *__error() = v615;
      db_free_query_node(v606);
      goto LABEL_825;
    }

    theArrayd = v529;
    v697 = 0;
    v672 = RankingAttributeScores;
    v531 = 1;
    v682 = 1;
    while (1)
    {
      v532 = *&v531;
      *&v533 = v531 - 1;
      v534 = CFArrayGetValueAtIndex(allocc, v531 - 1);
      v535 = getkQPQUOutputTokenRangeKey();
      if (!CFDictionaryContainsKey(v534, v535) || (v536 = getkQPQUOutputTokenArgIdsKey(), !CFDictionaryContainsKey(v534, v536)) || (v537 = getkQPQUOutputTokenArgScoresKey(), !CFDictionaryContainsKey(v534, v537)) || (v538 = getkQPQUOutputTokenKey(), !CFDictionaryContainsKey(v534, v538)))
      {
        v542 = *__error();
        v547 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v547, OS_LOG_TYPE_DEFAULT))
        {
          v548 = v325->var0;
          v549 = v325->var1;
          *buf = 134218498;
          *&buf[4] = v548;
          *&buf[12] = 2080;
          *&buf[14] = v549;
          *&buf[22] = 2048;
          v720[0] = v533;
          _os_log_impl(&dword_1C278D000, v547, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping token (ERROR: token info is missing essential keys)", buf, 0x20u);
        }

        goto LABEL_739;
      }

      v539 = getkQPQUOutputTokenRangeKey();
      if ([CFDictionaryGetValue(v534 v539)] == 0x7FFFFFFFFFFFFFFFLL)
      {
        v541 = v540;
        v542 = *__error();
        v543 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v543, OS_LOG_TYPE_DEFAULT))
        {
          v545 = v325->var0;
          v544 = v325->var1;
          v761.location = 0x7FFFFFFFFFFFFFFFLL;
          v761.length = v541;
          v546 = NSStringFromRange(v761);
          *buf = 134218754;
          *&buf[4] = v545;
          *&buf[12] = 2080;
          *&buf[14] = v544;
          *&buf[22] = 2048;
          v720[0] = v533;
          LOWORD(v720[1]) = 2112;
          *(&v720[1] + 2) = v546;
          _os_log_impl(&dword_1C278D000, v543, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping token (ERROR: invalid range: %@)", buf, 0x2Au);
        }

LABEL_739:
        v550 = 0;
        *__error() = v542;
        goto LABEL_740;
      }

      v711 = 0u;
      v712 = 0u;
      v713 = 1065353216;
      v710 = -1;
      v551 = getkQPQUOutputTokenKey();
      v552 = CFDictionaryGetValue(v534, v551);
      v553 = v552;
      v709 = v552;
      if (!v552 || !CFStringGetLength(v552))
      {
        v558 = *__error();
        v559 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v559, OS_LOG_TYPE_DEFAULT))
        {
          v560 = v325->var0;
          v561 = v325->var1;
          *buf = 134218754;
          *&buf[4] = v560;
          *&buf[12] = 2080;
          *&buf[14] = v561;
          *&buf[22] = 2048;
          v720[0] = v533;
          LOWORD(v720[1]) = 1024;
          *(&v720[1] + 2) = -1;
          _os_log_impl(&dword_1C278D000, v559, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping tokenID %d (ERROR: nil / empty token length)", buf, 0x26u);
        }

        goto LABEL_750;
      }

      v554 = populateU2LabelsAndDescriptions(&v710, &v711, v534, v686);
      if (theArrayd != 1 && std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&v711, 0) && !v554)
      {
        v558 = *__error();
        v563 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v563, OS_LOG_TYPE_DEFAULT))
        {
          v564 = v325->var0;
          v565 = v325->var1;
          *buf = 134218754;
          *&buf[4] = v564;
          *&buf[12] = 2080;
          *&buf[14] = v565;
          *&buf[22] = 2048;
          v720[0] = v533;
          LOWORD(v720[1]) = 1024;
          *(&v720[1] + 2) = v710;
          _os_log_impl(&dword_1C278D000, v563, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping tokenID %d (it is optional)", buf, 0x26u);
        }

        v562 = __error();
        v550 = 0;
        v682 = 0;
        goto LABEL_751;
      }

      v555 = v710;
      v556 = isKeywordArgId(v710);
      if ([v554 length] == 0 && !v556)
      {
        break;
      }

      if ([v554 length] != 0 && v556)
      {
        v557 = 0x800000;
      }

      else
      {
        v557 = 0;
        if (!v556 && (v682 & 1) != 0)
        {
          v570 = *__error();
          v571 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v571, OS_LOG_TYPE_DEFAULT))
          {
            v572 = v325->var0;
            v573 = v325->var1;
            *buf = 134218498;
            *&buf[4] = v572;
            *&buf[12] = 2080;
            *&buf[14] = v573;
            *&buf[22] = 2048;
            v720[0] = v533;
            _os_log_impl(&dword_1C278D000, v571, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Non-photos QU tree is not *all* keywords.", buf, 0x20u);
          }

          v682 = 0;
          *__error() = v570;
        }
      }

      if (*(&v712 + 1) == 0 && !v556)
      {
        v566 = *__error();
        v578 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v578, OS_LOG_TYPE_DEFAULT))
        {
          v579 = v325->var0;
          v580 = v325->var1;
          *buf = 134218754;
          *&buf[4] = v579;
          *&buf[12] = 2080;
          *&buf[14] = v580;
          *&buf[22] = 2048;
          v720[0] = v533;
          LOWORD(v720[1]) = 1024;
          *(&v720[1] + 2) = v555;
          _os_log_impl(&dword_1C278D000, v578, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping non-keyword tokenID %d (ERROR: no IDs or scores found)", buf, 0x26u);
        }

LABEL_771:
        *__error() = v566;
        v550 = 1;
        goto LABEL_772;
      }

      if (hasOnlyOptionalSpecialChar(v553))
      {
        v558 = *__error();
        v574 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v574, OS_LOG_TYPE_DEFAULT))
        {
          v576 = v325->var0;
          v575 = v325->var1;
          Length = CFStringGetLength(v553);
          *buf = 134219010;
          *&buf[4] = v576;
          *&buf[12] = 2080;
          *&buf[14] = v575;
          *&buf[22] = 2048;
          v720[0] = v533;
          LOWORD(v720[1]) = 1024;
          *(&v720[1] + 2) = v555;
          HIWORD(v720[1]) = 2048;
          *&v720[2] = Length;
          _os_log_impl(&dword_1C278D000, v574, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping all special chars tokenID %d with length: %ld", buf, 0x30u);
        }

LABEL_750:
        v562 = __error();
        v550 = 0;
LABEL_751:
        *v562 = v558;
        goto LABEL_772;
      }

      memset(&__p, 0, sizeof(__p));
      utf8QueryString(&__p, &v709, 1, 0);
      v581 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::find<std::string>(*v751, *&v751[8], &__p);
      if (!v581 || *(v581 + 10) != v555)
      {
        v582 = v555;
        if (v556)
        {
          *&v748[12] = v557;
          memset(&v707, 0, sizeof(v707));
          BYTE13(v749) = theArrayd == *&v532;
          if (theArrayd == *&v532)
          {
            std::operator+[abi:nn200100]<char,std::char_traits<char>,std::allocator<char>>(&v707, &__p.__r_.__value_.__l.__data_, "*");
          }

          else if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(&v707, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v707 = __p;
          }

          if ((v707.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v583 = &v707;
          }

          else
          {
            v583 = v707.__r_.__value_.__r.__words[0];
          }

          NodeForToken = queryNodeForToken(v583, v672, v748, v325);
          v584 = *__error();
          v585 = _SILogForLogForCategory(18);
          if (os_log_type_enabled(v585, OS_LOG_TYPE_DEFAULT))
          {
            v586 = v325->var0;
            v587 = v325->var1;
            *buf = 134219010;
            *&buf[4] = v586;
            *&buf[12] = 2080;
            *&buf[14] = v587;
            *&buf[22] = 2048;
            v720[0] = v533;
            LOWORD(v720[1]) = 1024;
            *(&v720[1] + 2) = v555;
            HIWORD(v720[1]) = 1024;
            LODWORD(v720[2]) = NodeForToken == 0;
            _os_log_impl(&dword_1C278D000, v585, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Including keyword match for ranking for tokenID %d (invalid: %d)", buf, 0x2Cu);
          }

          *__error() = v584;
          if (SHIBYTE(v707.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v707.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          NodeForToken = 0;
        }

        if ([v554 length])
        {
          v588 = [v554 UTF8String];
          v589 = *&v748[8];
          v590 = db_make_query_node_with_ann(v588, 0);
          *buf = MEMORY[0x1E69E9820];
          *&buf[8] = 3221225472;
          *&buf[16] = ___ZL13QURankingNodePKcRKNSt3__113unordered_mapIifNS1_4hashIiEENS1_8equal_toIiEENS1_9allocatorINS1_4pairIKifEEEEEEffRKNS2_INS1_12basic_stringIcNS1_11char_traitsIcEENS7_IcEEEEfNS3_ISJ_EENS5_ISJ_EENS7_INS8_IKSJ_fEEEEEE_block_invoke;
          *&v720[0] = &__block_descriptor_56_e87__v16__0__query_node___query_node___query_node___query_piece_____v___v__v_Sib8b1b1b1Qf_8l;
          v720[3] = v589;
          *&v720[1] = v672;
          *&v720[2] = &v711;
          db_query_tree_apply_block(v590, buf, 0);
          NodeForToken = makeAndNode(NodeForToken, v590);
          v591 = *__error();
          v592 = _SILogForLogForCategory(18);
          if (os_log_type_enabled(v592, OS_LOG_TYPE_DEFAULT))
          {
            v593 = v325->var0;
            v594 = v325->var1;
            *buf = 134219010;
            *&buf[4] = v593;
            *&buf[12] = 2080;
            *&buf[14] = v594;
            *&buf[22] = 2048;
            v720[0] = v533;
            LOWORD(v720[1]) = 1024;
            *(&v720[1] + 2) = v582;
            HIWORD(v720[1]) = 1024;
            LODWORD(v720[2]) = v590 == 0;
            _os_log_impl(&dword_1C278D000, v592, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Adding parsed query tree for tokenID %d (invalid: %d)", buf, 0x2Cu);
          }

          *__error() = v591;
          v595 = v590 != 0;
        }

        else
        {
          v596 = *__error();
          v597 = _SILogForLogForCategory(18);
          if (os_log_type_enabled(v597, OS_LOG_TYPE_DEFAULT))
          {
            v598 = v325->var0;
            v599 = v325->var1;
            *buf = 134218754;
            *&buf[4] = v598;
            *&buf[12] = 2080;
            *&buf[14] = v599;
            *&buf[22] = 2048;
            v720[0] = v533;
            LOWORD(v720[1]) = 1024;
            *(&v720[1] + 2) = v555;
            _os_log_impl(&dword_1C278D000, v597, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Not adding parsed query tree for tokenID %d because tokenDescription is empty", buf, 0x26u);
          }

          v595 = 0;
          *__error() = v596;
        }

        if (NodeForToken)
        {
          *buf = &__p;
          v600 = std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v751, &__p, buf);
          v601 = v682;
          if ((v595 & v682) != 0)
          {
            v601 = 0;
          }

          v682 = v601;
          *(v600 + 10) = v582;
          v697 = makeAndNode(v697, NodeForToken);
        }

        else
        {
          v602 = *__error();
          v603 = _SILogForLogForCategory(18);
          if (os_log_type_enabled(v603, OS_LOG_TYPE_DEFAULT))
          {
            v604 = v325->var0;
            v605 = v325->var1;
            *buf = 134218754;
            *&buf[4] = v604;
            *&buf[12] = 2080;
            *&buf[14] = v605;
            *&buf[22] = 2048;
            v720[0] = v533;
            LOWORD(v720[1]) = 1024;
            *(&v720[1] + 2) = v582;
            _os_log_impl(&dword_1C278D000, v603, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Got an empty ranking tree for tokenID %d", buf, 0x26u);
          }

          *__error() = v602;
        }
      }

      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v550 = 0;
LABEL_772:
      std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(&v711);
      if (v550)
      {
LABEL_810:
        if ((v550 | v682))
        {
          v606 = v697;
          goto LABEL_822;
        }

        v355 = v697;
        if (!v697)
        {
LABEL_825:
          v619 = *__error();
          v620 = _SILogForLogForCategory(18);
          if (os_log_type_enabled(v620, OS_LOG_TYPE_DEFAULT))
          {
            v621 = v325->var0;
            v622 = v325->var1;
            *buf = 134218242;
            *&buf[4] = v621;
            *&buf[12] = 2080;
            *&buf[14] = v622;
            _os_log_impl(&dword_1C278D000, v620, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]Got an empty ranking query tree (using ALWAYS_FALSE_NODE)", buf, 0x16u);
          }

          *__error() = v619;
          v355 = makeFalseNode();
        }

        if (v715 < 0)
        {
          operator delete(v714[0]);
        }

        std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::~__hash_table(v751);
        std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(&v716);
        goto LABEL_535;
      }

LABEL_740:
      v531 = *&v532 + 1;
      if (*&v532 >= theArrayd)
      {
        goto LABEL_810;
      }
    }

    v566 = *__error();
    v567 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v567, OS_LOG_TYPE_DEFAULT))
    {
      v568 = v325->var0;
      v569 = v325->var1;
      *buf = 134218754;
      *&buf[4] = v568;
      *&buf[12] = 2080;
      *&buf[14] = v569;
      *&buf[22] = 2048;
      v720[0] = v533;
      LOWORD(v720[1]) = 1024;
      *(&v720[1] + 2) = v555;
      _os_log_impl(&dword_1C278D000, v567, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping non-keyword tokenID %d (ERROR: nil / empty token description length)", buf, 0x26u);
    }

    goto LABEL_771;
  }

  *&v749 = 1065353216;
  memset(v748, 0, sizeof(v748));
  v449 = CFArrayGetCount(allocc);
  v450 = 112;
  if (v449 == 1)
  {
    v450 = 1073741936;
  }

  v681 = v450;
  IndexAttributeScores = getIndexAttributeScores(v325->var4);
  if (v449 < 1)
  {
    v355 = 0;
    v470 = 0;
    v452 = 0;
    LOBYTE(theArrayc) = 1;
    goto LABEL_813;
  }

  v676 = IndexAttributeScores;
  v355 = 0;
  v452 = 0;
  theArrayc = 1;
  do
  {
    v453 = CFArrayGetValueAtIndex(allocc, v452);
    v454 = getkQPQUOutputTokenRangeKey();
    if (!CFDictionaryContainsKey(v453, v454) || (v455 = getkQPQUOutputTokenArgIdsKey(), !CFDictionaryContainsKey(v453, v455)) || (v456 = getkQPQUOutputTokenArgScoresKey(), !CFDictionaryContainsKey(v453, v456)) || (v457 = getkQPQUOutputTokenKey(), !CFDictionaryContainsKey(v453, v457)))
    {
      v461 = *__error();
      v467 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v467, OS_LOG_TYPE_DEFAULT))
      {
        v468 = v325->var0;
        v469 = v325->var1;
        *buf = 134218498;
        *&buf[4] = v468;
        *&buf[12] = 2080;
        *&buf[14] = v469;
        *&buf[22] = 2048;
        *&v720[0] = v452;
        _os_log_impl(&dword_1C278D000, v467, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping token (ERROR: token info is missing essential keys)", buf, 0x20u);
      }

      goto LABEL_652;
    }

    v458 = getkQPQUOutputTokenRangeKey();
    if ([CFDictionaryGetValue(v453 v458)] != 0x7FFFFFFFFFFFFFFFLL)
    {
      v718[0] = 1065353216;
      v716 = 0u;
      v717 = 0u;
      *v751 = -1;
      v471 = getkQPQUOutputTokenKey();
      v472 = CFDictionaryGetValue(v453, v471);
      if (hasOnlyOptionalSpecialChar(v472))
      {
        v470 = 0;
LABEL_688:
        std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::~__hash_table(&v716);
        goto LABEL_653;
      }

      if (![(__CFString *)v472 length])
      {
        v487 = *__error();
        v488 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v488, OS_LOG_TYPE_DEFAULT))
        {
          v489 = v325->var0;
          v490 = v325->var1;
          *buf = 134218754;
          *&buf[4] = v489;
          *&buf[12] = 2080;
          *&buf[14] = v490;
          *&buf[22] = 2048;
          *&v720[0] = v452;
          LOWORD(v720[1]) = 1024;
          *(&v720[1] + 2) = -1;
          _os_log_impl(&dword_1C278D000, v488, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping tokenID %d (ERROR: nil / empty token length)", buf, 0x26u);
        }

        goto LABEL_675;
      }

      v473 = populateU2LabelsAndDescriptions(v751, &v716, v453, v686);
      if (v449 != 1 && std::__hash_table<std::__hash_value_type<int,float>,std::__unordered_map_hasher<int,std::__hash_value_type<int,float>,std::hash<int>,std::equal_to<int>,true>,std::__unordered_map_equal<int,std::__hash_value_type<int,float>,std::equal_to<int>,std::hash<int>,true>,std::allocator<std::__hash_value_type<int,float>>>::find<int>(&v716, 0) && !v473)
      {
        v487 = *__error();
        v492 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v492, OS_LOG_TYPE_DEFAULT))
        {
          v493 = v325->var0;
          v494 = v325->var1;
          *buf = 134218754;
          *&buf[4] = v493;
          *&buf[12] = 2080;
          *&buf[14] = v494;
          *&buf[22] = 2048;
          *&v720[0] = v452;
          LOWORD(v720[1]) = 1024;
          *(&v720[1] + 2) = *v751;
          _os_log_impl(&dword_1C278D000, v492, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping tokenID %d (it is optional)", buf, 0x26u);
        }

        v491 = __error();
        v470 = 0;
        theArrayc = 0;
        goto LABEL_681;
      }

      v474 = *v751;
      v475 = isKeywordArgId(*v751);
      if ([v473 length] != 0 || v475)
      {
        v476 = theArrayc;
        if (v475)
        {
          v477 = theArrayc;
        }

        else
        {
          v477 = 0;
        }

        if (theArrayc)
        {
          v476 = v477;
        }

        theArrayc = v476;
        if (*(&v717 + 1) != 0 || v475)
        {
          v666 = v474;
          if (v474 - 51 > 1)
          {
            if (v475)
            {
              v502 = [(__CFString *)v472 UTF8String];
              v503 = *(v676 + 2);
              if (v503)
              {
                v504 = v502;
                v486 = 0;
                if (v452 == v449 - 1)
                {
                  v505 = -1;
                }

                else
                {
                  v505 = 0;
                }

                v670 = v505;
                do
                {
                  v506 = (v503 + 2);
                  if (*(v503 + 39) < 0)
                  {
                    v506 = *v506;
                  }

                  v507 = createQueryNode(v506, v504, v681, 1, v670, *(v503 + 10), *(v503 + 10));
                  if ((*(v325 + 29) & 0x40) != 0 && !strcmp(v506, "kMDItemTextContent"))
                  {
                    v508 = createQueryNode("_kMDItemBundleID", "com.apple.mobilesafari", 0, 5, 0, 0.0, 0.0);
                    v507 = makeAndNode(v507, v508);
                  }

                  v486 = makeOrNode(v486, v507);
                  v503 = *v503;
                }

                while (v503);
              }

              else
              {
                v486 = 0;
              }

              v517 = *__error();
              v518 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v518, OS_LOG_TYPE_DEFAULT))
              {
                v519 = v325->var0;
                v520 = v325->var1;
                *buf = 134219010;
                *&buf[4] = v519;
                *&buf[12] = 2080;
                *&buf[14] = v520;
                *&buf[22] = 2048;
                *&v720[0] = v452;
                LOWORD(v720[1]) = 1024;
                *(&v720[1] + 2) = v666;
                HIWORD(v720[1]) = 1024;
                LODWORD(v720[2]) = v486 == 0;
                _os_log_impl(&dword_1C278D000, v518, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Including keyword match for retrieval for tokenID %d (invalid: %d)", buf, 0x2Cu);
              }

              *__error() = v517;
              RetrievalNodeFromQueryString = 0;
              if (!v473 || v666 > 9 || ((1 << v666) & 0x302) == 0)
              {
                goto LABEL_718;
              }

              RetrievalNodeFromQueryString = makeRetrievalNodeFromQueryString([v473 UTF8String]);
              v486 = makeOrNode(v486, RetrievalNodeFromQueryString);
              v509 = *__error();
              v521 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v521, OS_LOG_TYPE_DEFAULT))
              {
                v522 = v325->var0;
                v523 = v325->var1;
                *buf = 134219010;
                *&buf[4] = v522;
                *&buf[12] = 2080;
                *&buf[14] = v523;
                *&buf[22] = 2048;
                *&v720[0] = v452;
                LOWORD(v720[1]) = 1024;
                *(&v720[1] + 2) = v666;
                HIWORD(v720[1]) = 1024;
                LODWORD(v720[2]) = RetrievalNodeFromQueryString == 0;
                _os_log_impl(&dword_1C278D000, v521, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Adding parsed query tree for tokenID %d (invalid: %d)", buf, 0x2Cu);
              }

              v513 = __error();
            }

            else
            {
              v486 = makeRetrievalNodeFromQueryString([v473 UTF8String]);
              v509 = *__error();
              v510 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v510, OS_LOG_TYPE_DEFAULT))
              {
                v511 = v325->var0;
                v512 = v325->var1;
                *buf = 134219010;
                *&buf[4] = v511;
                *&buf[12] = 2080;
                *&buf[14] = v512;
                *&buf[22] = 2048;
                *&v720[0] = v452;
                LOWORD(v720[1]) = 1024;
                *(&v720[1] + 2) = v666;
                HIWORD(v720[1]) = 1024;
                LODWORD(v720[2]) = v486 == 0;
                _os_log_impl(&dword_1C278D000, v510, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Adding parsed query tree for tokenID %d (invalid: %d)", buf, 0x2Cu);
              }

              v513 = __error();
              RetrievalNodeFromQueryString = 0;
            }

            *v513 = v509;
            goto LABEL_718;
          }

          if (v473)
          {
            v478 = makeRetrievalNodeFromQueryString([v473 UTF8String]);
            v479 = *__error();
            v480 = _SILogForLogForCategory(17);
            if (os_log_type_enabled(v480, OS_LOG_TYPE_DEFAULT))
            {
              v481 = v325->var0;
              v482 = v325->var1;
              *buf = 134219010;
              *&buf[4] = v481;
              *&buf[12] = 2080;
              *&buf[14] = v482;
              *&buf[22] = 2048;
              *&v720[0] = v452;
              LOWORD(v720[1]) = 1024;
              *(&v720[1] + 2) = v474;
              HIWORD(v720[1]) = 1024;
              LODWORD(v720[2]) = v478 == 0;
              _os_log_impl(&dword_1C278D000, v480, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Adding parsed query tree for earliest/latest tokenID %d (invalid: %d)", buf, 0x2Cu);
            }

            *__error() = v479;
            if (!v478)
            {
LABEL_722:
              v487 = *__error();
              v525 = _SILogForLogForCategory(17);
              if (os_log_type_enabled(v525, OS_LOG_TYPE_DEFAULT))
              {
                v526 = v325->var0;
                v527 = v325->var1;
                *buf = 134218754;
                *&buf[4] = v526;
                *&buf[12] = 2080;
                *&buf[14] = v527;
                *&buf[22] = 2048;
                *&v720[0] = v452;
                LOWORD(v720[1]) = 1024;
                *(&v720[1] + 2) = v666;
                _os_log_impl(&dword_1C278D000, v525, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Got an empty retrieval tree for tokenID %d", buf, 0x26u);
              }

LABEL_675:
              v491 = __error();
              v470 = 0;
LABEL_681:
              *v491 = v487;
              goto LABEL_688;
            }

            v483 = createQueryNode("_kMDItemBundleID", "com.apple.mobilecal", 0, 1, 0, 0.0, 0.0);
            RetrievalNodeFromQueryString = makeAndNode(v478, v483);
            v485 = createQueryNode("_kMDItemBundleID", "com.apple.mobilecal", 0, 5, 0, 0.0, 0.0);
            v486 = makeOrNode(RetrievalNodeFromQueryString, v485);
LABEL_718:
            if (v486)
            {
              v355 = makeAndNode(v355, v486);
              v470 = 0;
              v524 = theArrayc;
              if (((RetrievalNodeFromQueryString != 0) & theArrayc) != 0)
              {
                v524 = 0;
              }

              theArrayc = v524;
              goto LABEL_688;
            }

            goto LABEL_722;
          }

          v495 = *__error();
          v514 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v514, OS_LOG_TYPE_DEFAULT))
          {
            v515 = v325->var0;
            v516 = v325->var1;
            *buf = 134218754;
            *&buf[4] = v515;
            *&buf[12] = 2080;
            *&buf[14] = v516;
            *&buf[22] = 2048;
            *&v720[0] = v452;
            LOWORD(v720[1]) = 1024;
            *(&v720[1] + 2) = v474;
            _os_log_impl(&dword_1C278D000, v514, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping earliest/latest tokenID %d (ERROR: no IDs or scores found)", buf, 0x26u);
          }
        }

        else
        {
          v495 = *__error();
          v499 = _SILogForLogForCategory(17);
          if (os_log_type_enabled(v499, OS_LOG_TYPE_DEFAULT))
          {
            v500 = v325->var0;
            v501 = v325->var1;
            *buf = 134218754;
            *&buf[4] = v500;
            *&buf[12] = 2080;
            *&buf[14] = v501;
            *&buf[22] = 2048;
            *&v720[0] = v452;
            LOWORD(v720[1]) = 1024;
            *(&v720[1] + 2) = v474;
            _os_log_impl(&dword_1C278D000, v499, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping non-keyword tokenID %d (ERROR: no IDs or scores found)", buf, 0x26u);
          }
        }
      }

      else
      {
        v495 = *__error();
        v496 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v496, OS_LOG_TYPE_DEFAULT))
        {
          v497 = v325->var0;
          v498 = v325->var1;
          *buf = 134218754;
          *&buf[4] = v497;
          *&buf[12] = 2080;
          *&buf[14] = v498;
          *&buf[22] = 2048;
          *&v720[0] = v452;
          LOWORD(v720[1]) = 1024;
          *(&v720[1] + 2) = v474;
          _os_log_impl(&dword_1C278D000, v496, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping non-keyword tokenID %d (ERROR: nil / empty token description length)", buf, 0x26u);
        }
      }

      *__error() = v495;
      v470 = 1;
      goto LABEL_688;
    }

    v460 = v459;
    v461 = *__error();
    v462 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v462, OS_LOG_TYPE_DEFAULT))
    {
      v463 = v355;
      v465 = v325->var0;
      v464 = v325->var1;
      v760.location = 0x7FFFFFFFFFFFFFFFLL;
      v760.length = v460;
      v466 = NSStringFromRange(v760);
      *buf = 134218754;
      *&buf[4] = v465;
      *&buf[12] = 2080;
      *&buf[14] = v464;
      *&buf[22] = 2048;
      *&v720[0] = v452;
      LOWORD(v720[1]) = 2112;
      *(&v720[1] + 2) = v466;
      _os_log_impl(&dword_1C278D000, v462, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][tokenIdx=%lu] Skipping tokenID (ERROR: invalid range: %@)", buf, 0x2Au);
      v355 = v463;
    }

LABEL_652:
    v470 = 0;
    *__error() = v461;
LABEL_653:
    ++v452;
  }

  while ((v470 & 1) == 0 && v452 < v449);
  if (((v470 | theArrayc) & 1) == 0)
  {
    if (!v355)
    {
      goto LABEL_816;
    }

    goto LABEL_819;
  }

LABEL_813:
  v607 = *__error();
  v608 = _SILogForLogForCategory(17);
  if (os_log_type_enabled(v608, OS_LOG_TYPE_DEFAULT))
  {
    v609 = v325->var0;
    v610 = v325->var1;
    *buf = 134219010;
    *&buf[4] = v609;
    *&buf[12] = 2080;
    *&buf[14] = v610;
    *&buf[22] = 2048;
    *&v720[0] = v452;
    LOWORD(v720[1]) = 1024;
    *(&v720[1] + 2) = v470;
    HIWORD(v720[1]) = 1024;
    LODWORD(v720[2]) = theArrayc & 1;
    _os_log_impl(&dword_1C278D000, v608, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU][lastIdx=%lu] Skipping non-Photos QU tree: {malformed=%d, allKeyword=%d}", buf, 0x2Cu);
  }

  *__error() = v607;
  db_free_query_node(v355);
LABEL_816:
  v611 = *__error();
  v612 = _SILogForLogForCategory(17);
  if (os_log_type_enabled(v612, OS_LOG_TYPE_DEFAULT))
  {
    v613 = v325->var0;
    v614 = v325->var1;
    *buf = 134218242;
    *&buf[4] = v613;
    *&buf[12] = 2080;
    *&buf[14] = v614;
    _os_log_impl(&dword_1C278D000, v612, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES][QU]Got an empty retrieval query tree (using ALWAYS_FALSE_NODE)", buf, 0x16u);
  }

  *__error() = v611;
  v355 = makeFalseNode();
LABEL_819:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(*&v748[16]);
  if (*v748)
  {
    operator delete(*v748);
  }

LABEL_535:
  if (!v355)
  {
    goto LABEL_538;
  }

  if (v355->var6 == 16)
  {
    v356 = v355;
    v357 = 0;
    goto LABEL_539;
  }

  if (v705)
  {
    v376 = *(v706 + 7);
    if ((v376 & 0x20000) != 0)
    {
      db_dump_pommes_query_node_with_prefix(v706->var0, &v706, v706->var1, "[QU][base]", v355, (v376 >> 9) & 1);
    }

    v377 = normalizeQueryNode(v355, 1.0);
    v378 = (*(v706 + 7) & 2) == 0;
    v379 = *__error();
    if (v378)
    {
      v380 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v380, OS_LOG_TYPE_DEFAULT))
      {
LABEL_625:
        v441 = v706->var0;
        v440 = v706->var1;
        *buf = 134218498;
        *&buf[4] = v441;
        *&buf[12] = 2080;
        *&buf[14] = v440;
        *&buf[22] = 2048;
        v720[0] = v377;
        _os_log_impl(&dword_1C278D000, v380, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] QU node maxScore = %f", buf, 0x20u);
      }
    }

    else
    {
      v380 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v380, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_625;
      }
    }

    *__error() = v379;
  }

  v442 = (*(v706 + 7) & 2) == 0;
  v443 = *__error();
  if (v442)
  {
    v444 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v444, OS_LOG_TYPE_DEFAULT))
    {
LABEL_631:
      v446 = v706->var0;
      v445 = v706->var1;
      *buf = 134218242;
      *&buf[4] = v446;
      *&buf[12] = 2080;
      *&buf[14] = v445;
      _os_log_impl(&dword_1C278D000, v444, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added non-photos QU query node to the non-Photos query tree", buf, 0x16u);
    }
  }

  else
  {
    v444 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v444, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_631;
    }
  }

  *__error() = v443;
  v364 = v706;
  v363 = v355;
  if ((~*(v706 + 7) & 0x20200) != 0)
  {
LABEL_545:
    v365 = pommesDefaultTree(a1, v364, v705);
    v366 = v365;
    if (!v365 || v365->var6 == 16)
    {
      v367 = (*(v706 + 7) & 2) == 0;
      v368 = *__error();
      if (v367)
      {
        v369 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v369, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_551;
        }
      }

      else
      {
        v369 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v369, OS_LOG_TYPE_DEFAULT))
        {
LABEL_551:
          v371 = v706->var0;
          v370 = v706->var1;
          *buf = 134218498;
          *&buf[4] = v371;
          *&buf[12] = 2080;
          *&buf[14] = v370;
          *&buf[22] = 1024;
          LODWORD(v720[0]) = v366 == 0;
          _os_log_impl(&dword_1C278D000, v369, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Default query node is empty / ALWAYS_FALSE_NODE (empty: %d)", buf, 0x1Cu);
        }
      }

      *__error() = v368;
      db_free_query_node(v366);
LABEL_573:
      v364 = v706;
      if (v363)
      {
        goto LABEL_574;
      }

      v393 = 1;
LABEL_580:
      v394 = (*(v364 + 7) & 2) == 0;
      v395 = *__error();
      if (v394)
      {
        v396 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v396, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_584;
        }
      }

      else
      {
        v396 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v396, OS_LOG_TYPE_DEFAULT))
        {
LABEL_584:
          v398 = v706->var0;
          v397 = v706->var1;
          *buf = 134218498;
          *&buf[4] = v398;
          *&buf[12] = 2080;
          *&buf[14] = v397;
          *&buf[22] = 1024;
          LODWORD(v720[0]) = v393;
          _os_log_impl(&dword_1C278D000, v396, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Non-photos query node is empty / ALWAYS_FALSE_NODE (empty: %d)", buf, 0x1Cu);
        }
      }

      *__error() = v395;
      db_free_query_node(v363);
      return v704;
    }

    if (!v705)
    {
LABEL_566:
      v363 = makeOrNode(v363, v366);
      v383 = (*(v706 + 7) & 2) == 0;
      v384 = *__error();
      if (v383)
      {
        v385 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v385, OS_LOG_TYPE_DEFAULT))
        {
          v387 = v706->var0;
          v386 = v706->var1;
          var6 = v366->var6;
          *buf = 134218498;
          *&buf[4] = v387;
          *&buf[12] = 2080;
          *&buf[14] = v386;
          *&buf[22] = 1024;
          LODWORD(v720[0]) = var6;
          _os_log_impl(&dword_1C278D000, v385, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added default query node to the non-Photos tree (type: %d)", buf, 0x1Cu);
        }
      }

      else
      {
        v389 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v389, OS_LOG_TYPE_DEFAULT))
        {
          v391 = v706->var0;
          v390 = v706->var1;
          v392 = v366->var6;
          *buf = 134218498;
          *&buf[4] = v391;
          *&buf[12] = 2080;
          *&buf[14] = v390;
          *&buf[22] = 1024;
          LODWORD(v720[0]) = v392;
          _os_log_impl(&dword_1C278D000, v389, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added default query node to the non-Photos tree (type: %d)", buf, 0x1Cu);
        }
      }

      *__error() = v384;
      goto LABEL_573;
    }

    v372 = normalizeQueryNode(v365, 1.0);
    v373 = (*(v706 + 7) & 2) == 0;
    v374 = *__error();
    if (v373)
    {
      v375 = _SILogForLogForCategory(17);
      if (os_log_type_enabled(v375, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_564;
      }
    }

    else
    {
      v375 = _SILogForLogForCategory(18);
      if (os_log_type_enabled(v375, OS_LOG_TYPE_DEFAULT))
      {
LABEL_564:
        v382 = v706->var0;
        v381 = v706->var1;
        *buf = 134218498;
        *&buf[4] = v382;
        *&buf[12] = 2080;
        *&buf[14] = v381;
        *&buf[22] = 2048;
        v720[0] = v372;
        _os_log_impl(&dword_1C278D000, v375, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Default node maxScore = %f", buf, 0x20u);
      }
    }

    *__error() = v374;
    goto LABEL_566;
  }

LABEL_574:
  if (v363->var6 == 16)
  {
    v393 = 0;
    goto LABEL_580;
  }

  if ((*(v364 + 29) & 0x20) != 0 || (v364->var3 & 4) != 0)
  {
    v399 = createQueryNodeForPhotosMediaType(0, v364);
    v400 = makeAndNode(v363, v399);
    v363 = v400;
    if (v705)
    {
      normalizeQueryNode(v400, 1.0);
    }

    v693 = 1;
  }

  else
  {
    v693 = 0;
  }

  v401 = *(v706 + 7);
  if ((~v401 & 0x402) == 0)
  {
    if ([objc_msgSend(objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
    {
      v401 = *(v706 + 7);
      goto LABEL_592;
    }

    v411 = [MEMORY[0x1E695DF00] date];
    v412 = 0;
    v413 = &dword_1C2BFF940;
    v414 = 5;
    while (2)
    {
      v415 = *(v413 - 1);
      v416 = *v413;
      [objc_msgSend(v411 dateByAddingTimeInterval:{(-86400 * v415)), "timeIntervalSinceReferenceDate"}];
      v418 = createQueryNode("kMDItemInterestingDate_Ranking", [objc_msgSend(MEMORY[0x1E696AEC0] stringWithFormat:@"%f", v417), "UTF8String"], 0, 4, 0, v416, 0.05);
      v412 = makeOrNode(v412, v418);
      v419 = (*(v706 + 7) & 2) == 0;
      v420 = *__error();
      if (v419)
      {
        v421 = _SILogForLogForCategory(17);
        if (os_log_type_enabled(v421, OS_LOG_TYPE_DEFAULT))
        {
LABEL_604:
          v423 = v706->var0;
          v422 = v706->var1;
          *buf = 134218754;
          *&buf[4] = v423;
          *&buf[12] = 2080;
          *&buf[14] = v422;
          *&buf[22] = 2048;
          v720[0] = v416;
          LOWORD(v720[1]) = 1024;
          *(&v720[1] + 2) = v415;
          _os_log_impl(&dword_1C278D000, v421, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES]Adding recency nodes weight=%f, dayold=%d", buf, 0x26u);
        }
      }

      else
      {
        v421 = _SILogForLogForCategory(18);
        if (os_log_type_enabled(v421, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_604;
        }
      }

      *__error() = v420;
      v413 += 2;
      if (!--v414)
      {
        v410 = makeAndNode(v363, v412);
        goto LABEL_607;
      }

      continue;
    }
  }

LABEL_592:
  v402 = (v401 & 2) == 0;
  v403 = *__error();
  if (v402)
  {
    v404 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v404, OS_LOG_TYPE_DEFAULT))
    {
      v406 = v706->var0;
      v405 = v706->var1;
      *buf = 134218242;
      *&buf[4] = v406;
      *&buf[12] = 2080;
      *&buf[14] = v405;
      _os_log_impl(&dword_1C278D000, v404, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES]Not Adding recency nodes", buf, 0x16u);
    }
  }

  else
  {
    v407 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v407, OS_LOG_TYPE_DEFAULT))
    {
      v409 = v706->var0;
      v408 = v706->var1;
      *buf = 134218242;
      *&buf[4] = v409;
      *&buf[12] = 2080;
      *&buf[14] = v408;
      _os_log_impl(&dword_1C278D000, v407, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES]Not Adding recency nodes", buf, 0x16u);
    }
  }

  *__error() = v403;
  v410 = v363;
LABEL_607:
  v24 = makeOrNode(v704, v410);
  v424 = (*(v706 + 7) & 2) == 0;
  v328 = *__error();
  if (v424)
  {
    v425 = _SILogForLogForCategory(17);
    if (os_log_type_enabled(v425, OS_LOG_TYPE_DEFAULT))
    {
      v426 = v706->var0;
      v427 = v706->var1;
      v428 = *(v706 + 7);
      *buf = 134219010;
      *&buf[4] = v426;
      *&buf[12] = 2080;
      *&buf[14] = v427;
      *&buf[22] = 1024;
      LODWORD(v720[0]) = HIWORD(v428) & 1;
      WORD2(v720[0]) = 1024;
      *(v720 + 6) = (v428 >> 17) & 1;
      WORD1(v720[1]) = 1024;
      HIDWORD(v720[1]) = v693;
      _os_log_impl(&dword_1C278D000, v425, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added non-photos query node to the POMMES query tree (useQU: %d) (useLLM: %d) (filter: %d)", buf, 0x28u);
    }
  }

  else
  {
    v429 = _SILogForLogForCategory(18);
    if (os_log_type_enabled(v429, OS_LOG_TYPE_DEFAULT))
    {
      v430 = v706->var0;
      v431 = v706->var1;
      v432 = *(v706 + 7);
      *buf = 134219010;
      *&buf[4] = v430;
      *&buf[12] = 2080;
      *&buf[14] = v431;
      *&buf[22] = 1024;
      LODWORD(v720[0]) = HIWORD(v432) & 1;
      WORD2(v720[0]) = 1024;
      *(v720 + 6) = (v432 >> 17) & 1;
      WORD1(v720[1]) = 1024;
      HIDWORD(v720[1]) = v693;
      _os_log_impl(&dword_1C278D000, v429, OS_LOG_TYPE_DEFAULT, "[qid=%lld][%s][POMMES] Added non-photos query node to the POMMES query tree (useQU: %d) (useLLM: %d) (filter: %d)", buf, 0x28u);
    }
  }

  v333 = __error();
LABEL_614:
  *v333 = v328;
  return v24;
}