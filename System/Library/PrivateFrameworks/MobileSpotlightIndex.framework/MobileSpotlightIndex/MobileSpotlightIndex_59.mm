void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::subvert(uint64_t a1, uint64_t a2)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::compactForTest(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::compactForTest<vi_onefixedsize_disk_allocator>(a1 + 48, a2 + 48, a3);
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

int *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::compact(uint64_t a1, uint64_t a2)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::dump(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v18 = ___ZNK22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke;
  v19 = &unk_1E8195688;
  v20 = a6;
  v21 = a4;
  v31 = 0u;
  v32 = 0u;
  for (i = 0; i != 1; (v18)(v17, &v31, &i))
  {
    IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::enumerator_s::next(&v28, &v25);
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

void ___ZNK22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke()
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::mergeIndexForTest(uint64_t a1, uint64_t a2)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::mergeUpdateSetForTest(uint64_t a1, uint64_t a2)
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

int *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::mergeUpdateSet(int *result, uint64_t a2, char *a3, unsigned int a4, uint64_t a5)
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
    v13 = *(IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator->(v8, v7) + 3088);
    v14 = IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator->(v8, v7);
    memcpy(__dst, v14, sizeof(__dst));
    v15 = IVFVectorIndexTemplate<float,768>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator->(v8, v7);
    if (*(v15 + 3072))
    {
      if (*(v15 + 3076))
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

    v12 = IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert((v5 + 12), v13, __dst, 0xFFFFFFFF, 3.4028e38);
    result = vi_memory_postings::push_posting(a3, v10, v12 + 768, v11);
    ++v7;
  }

  return result;
}

char *vi_memory_postings::push_posting(char *result, int a2, unsigned int *__src, uint64_t a4)
{
  v7 = *__src & 1;
  if (__src[2])
  {
    if (v7)
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    v9 = (result + 12);
    v10 = atomic_load(result + 3);
    v11 = v10 + v8;
    v12 = *(result + 2);
    if (v11 >= v12)
    {
      v18 = 2 * v12;
      if (!v12)
      {
        v18 = 0x4000;
      }

      *(result + 2) = v18;
      v19 = result;
      v20 = my_vm_reallocate(result, 12 * v12, 12 * v18, 0xF3u, *(result + 2));
      result = v19;
      if (v20)
      {
        v21 = __si_assert_copy_extra_332();
        v22 = v21;
        v23 = "";
        if (v21)
        {
          v23 = v21;
        }

        __message_assert("%s:%u: failed assertion '%s' %s ", "DocPosting.h", 250, "0 == kr", v23);
        free(v22);
        if (__valid_fs(-1))
        {
          MEMORY[0xBAD] = -559038737;
          abort();
        }

        MEMORY[0xC00] = -559038737;
        abort();
      }
    }

    add = atomic_fetch_add(v9, v8);
    v14 = (*result + 12 * add);
    if (v7)
    {
      v15 = 16;
    }

    else
    {
      v15 = 12;
    }

    result = memcpy(v14, __src, v15);
    v7 = 2 * add;
  }

  if (a2)
  {
    v16 = v7 | 1;
    *(__src + 1) = a4;
    v17 = 2 * (a2 != 2);
  }

  else
  {
    __src[2] = a4;
    v16 = v7 & 0xFFFFFFFE;
    v17 = 1;
  }

  *__src = v16;
  __src[1] = v17;
  return result;
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::mergeUpdateSet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::train(uint64_t a1, void *a2)
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

_DWORD *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::insertForTest(_DWORD *a1, int a2, unsigned int a3, const void *a4, int a5, int a6, int a7)
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

  result = IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert((a1 + 12), a3, a4, 0xFFFFFFFF, 3.4028e38);
  if (result[770])
  {
    v9 = result[769] + 1;
  }

  else
  {
    result[770] = a7;
    v9 = 1;
  }

  result[769] = v9;
  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::insertForMerge(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
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

char *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::insertVector(_DWORD *a1, int a2, unsigned int a3, const void *a4, int a5, int a6, int a7, uint64_t a8, char *a9)
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

  v11 = IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert((a1 + 12), a3, a4, 0xFFFFFFFF, 3.4028e38) + 768;

  return vi_memory_postings::push_posting(a9, a7, v11, a8);
}

_DWORD *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::bulkInsertForTest(_DWORD *result, char *a2, int *a3, unsigned int a4, unsigned int *a5)
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
        result = IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert((v8 + 12), v20, a2, 0xFFFFFFFF, 3.4028e38);
        if (result[770])
        {
          v19 = result[769] + 1;
        }

        else
        {
          result[770] = v22;
          v19 = 1;
        }

        result[769] = v19;
        a2 += 3072;
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
        result = IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert((v8 + 12), a5[v9], a2, 0xFFFFFFFF, 3.4028e38);
        if (result[770])
        {
          v13 = result[769] + 1;
        }

        else
        {
          result[770] = v17;
          v13 = 1;
        }

        result[769] = v13;
        a2 += 3072;
        ++v9;
      }

      while (v11 != v14);
    }
  }

  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::shadow(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::validAddress(uint64_t a1, uint64_t a2)
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::allExist(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 <= 0x3E8)
    {
      v12 = a3;
      while (IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::exists(a1 + 48, a2))
      {
        a2 += 3072;
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

        if (!IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::exists(a1 + 48, a2))
        {
          break;
        }

        a2 += 3072;
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

BOOL IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::exists(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = 3.4028e38;
  v24 = -1;
  Vector = IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::findVector(a1, a2, &v24, &v23, 0);
  if (Vector == -1)
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
    v20[2] = ___ZN22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIfLi768EE_block_invoke;
    v20[3] = &unk_1E8195638;
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
      v15[2] = ___ZN22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIfLi768EE_block_invoke_1132;
      v15[3] = &unk_1F427FAD8;
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

  return Vector != -1;
}

int *___ZN22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIfLi768EE_block_invoke(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(*(a1 + 40) + 32) + 16), *a3, 3092);
  result = memcmp(v8, Ptr, 0xC00uLL);
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

void ___ZN22IVFVectorIndexTemplateIfLi768EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIfLi768EE_block_invoke_1132(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v116 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v9 + 32) + 16), *a3, 3092);
  if (!memcmp(v8, Ptr, 0xC00uLL))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v40 = a3[1];
      __C = 4.8153e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2819;
      v100 = 1024;
      v101 = a2;
      v102 = 2048;
      *v103 = v40;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found actually in partID=%u distsq=%e", &__C, 0x22u);
    }

    *__error() = v11;
    v13 = *(a1 + 48);
    v14 = (*(**(a1 + 56) + 72))(*(a1 + 56), *(a1 + 88));
    __C = 3.4028e38;
    vDSP_distancesq(v13, 1, v14, 1, &__C, 0x300uLL);
    v15 = __C;
    v16 = *__error();
    v17 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a1 + 88);
      __C = 4.8153e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2821;
      v100 = 1024;
      v101 = v41;
      v102 = 2048;
      *v103 = v15;
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Vec distance to centroid %u distsq=%e", &__C, 0x22u);
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
      __C = 4.8156e-34;
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
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(vec, 2) <%u, %e>, <%u, %e>, %d", &__C, 0x38u);
    }

    *__error() = v18;
    v20 = *__error();
    v21 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v47 = *v93;
      v48 = *(v93 + 2);
      v49 = *(v93 + 1) == *(v93 + 3);
      __C = 4.8154e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2824;
      v100 = 1024;
      v101 = v47;
      v102 = 1024;
      *v103 = v48;
      *&v103[4] = 1024;
      *&v103[6] = v49;
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v20;
    v22 = *__error();
    v23 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v50 = *v93;
      v51 = *(v93 + 2);
      v52 = *(v93 + 1) < *(v93 + 3);
      __C = 4.8154e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2825;
      v100 = 1024;
      v101 = v50;
      v102 = 1024;
      *v103 = v51;
      *&v103[4] = 1024;
      *&v103[6] = v52;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v22;
    v24 = *__error();
    v25 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v53 = *v93;
      v54 = *(v93 + 2);
      v55 = *(v93 + 1) > *(v93 + 3);
      __C = 4.8154e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2826;
      v100 = 1024;
      v101 = v53;
      v102 = 1024;
      *v103 = v54;
      *&v103[4] = 1024;
      *&v103[6] = v55;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", &__C, 0x24u);
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

      __C = 4.8161e-34;
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
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", &__C, 0x54u);
    }

    *__error() = v26;
    v91 = 0;
    v92 = 0;
    __p = 0;
    v28 = *(a1 + 56);
    v29 = vi_onefixedsize_memory_allocator::getPtr(*(*(v9 + 32) + 16), *a3, 3092);
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
      __C = 4.8156e-34;
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
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(entry->vec, 2) <%u, %e>, <%u, %e>, %d", &__C, 0x38u);
    }

    *__error() = v30;
    v32 = *__error();
    v33 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v69 = *__p;
      v70 = *(__p + 2);
      v71 = *(__p + 1) == *(__p + 3);
      __C = 4.8154e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2831;
      v100 = 1024;
      v101 = v69;
      v102 = 1024;
      *v103 = v70;
      *&v103[4] = 1024;
      *&v103[6] = v71;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v32;
    v34 = *__error();
    v35 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v72 = *__p;
      v73 = *(__p + 2);
      v74 = *(__p + 1) < *(__p + 3);
      __C = 4.8154e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2832;
      v100 = 1024;
      v101 = v72;
      v102 = 1024;
      *v103 = v73;
      *&v103[4] = 1024;
      *&v103[6] = v74;
      _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v34;
    v36 = *__error();
    v37 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v75 = *__p;
      v76 = *(__p + 2);
      v77 = *(__p + 1) > *(__p + 3);
      __C = 4.8154e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2833;
      v100 = 1024;
      v101 = v75;
      v102 = 1024;
      *v103 = v76;
      *&v103[4] = 1024;
      *&v103[6] = v77;
      _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", &__C, 0x24u);
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

      __C = 4.8161e-34;
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
      _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", &__C, 0x54u);
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::~IVFVectorIndexInstance(uint64_t a1)
{
  *a1 = &unk_1F427F790;
  IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,768>::~IVFVectorIndexInstance(uint64_t a1)
{
  *a1 = &unk_1F427F790;
  IVFVectorIndexTemplate<float,768>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void std::__shared_ptr_emplace<IVFVectorIndexTemplate<float,512>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>,std::allocator<IVFVectorIndexTemplate<float,512>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>>>::__on_zero_shared(uint64_t a1)
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

void std::__shared_ptr_emplace<IVFVectorIndexTemplate<float,512>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>,std::allocator<IVFVectorIndexTemplate<float,512>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427F438;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::replaceQuantizer(uint64_t a1, void *a2, void *a3)
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

void IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::newPartitions(uint64_t a1)
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

int *___ZNK22IVFVectorIndexTemplateIfLi512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13newPartitionsENSt3__110shared_ptrI9QuantizerIfLi512EEEE_block_invoke(uint64_t a1)
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
      Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v3 + 16), v4, 2068);
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

void IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getPartitions(uint64_t a1@<X0>, void *a2@<X8>)
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

void IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getQuantizer(uint64_t a1@<X0>, void *a2@<X8>)
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

void IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s(void *a1)
{
  IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s(a1);

  JUMPOUT(0x1C691FEF0);
}

void *IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s(void *a1)
{
  *a1 = &unk_1F427F3F0;
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::diagnoseDump(uint64_t a1, uint64_t a2, void *a3, int a4)
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
  IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getQuantizer(a1 + 48, &v75);
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
  IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getPartitions(a1 + 48, &v73);
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
          Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v39 + 16), v58, 2068);
          v61 = MEMORY[0x1C691FC90](a3, v58);
          v62 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v61, ",", 1);
          v63 = MEMORY[0x1C691FC90](v62, *(Ptr + 2064));
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
          v47 = vi_onefixedsize_memory_allocator::getPtr(*(v39 + 16), v44, 2068);
          v48 = MEMORY[0x1C691FC90](a3, v44);
          v49 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, ",", 1);
          v50 = MEMORY[0x1C691FC90](v49, *(v47 + 2064));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, ",", 1);
          v51 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "{length = ", 10);
          v52 = MEMORY[0x1C691FCA0](v51, 2048);
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
          data2hexString(&v78, v47 + 2040, 8);
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::status(uint64_t a1, uint64_t a2)
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
  IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getPartitions(a1 + 48, &v29);
  if (v29)
  {
    IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getPartitions(a1 + 48, &v27);
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::updateVectorStorageOffsets(uint64_t a1, unint64_t a2)
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

      Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 80) + 16), i, 2068);
      if ((*(v2 + 184) & 1) == 0)
      {
        v7 = *(Ptr + 2064);
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

      vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 80) + 16), v2++, 2068);
    }
  }

  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::getDataForOffset(void *a1, uint64_t a2, int *a3)
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
    v7 = 2048;
  }

  *a3 = v7;
  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::storageSize(uint64_t a1)
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::aNNForDebugProcessResult(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::aNNProcessResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIfLi512EE16aNNProcessResultEPvU13block_pointerFvS5_fjE_block_invoke;
  v4[3] = &unk_1E81955D0;
  v4[4] = a3;
  return _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE16aNNProcessResultEP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorIS7_NS8_9allocatorIS7_EEEENS8_4lessIS7_EEEU13block_pointerFvPNS3_12storage_formEfjE(a2, v4);
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::aNN(uint64_t a1, int a2, int a3, const float *a4, int a5, int a6, uint64_t a7, int *a8, float a9)
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

  IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::aNN(v9, a4, a7, a8, 0, a9);
}

void IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::aNN(uint64_t a1, const float *a2, char a3, int *a4, CFIndex AppIntegerValue, float a6)
{
  v125 = *MEMORY[0x1E69E9840];
  v11 = *a4;
  *__str = 0u;
  v124 = 0u;
  snprintf(__str, 0x20uLL, "%02x%02x%02x%02x...%02x%02x%02x%02x", *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 2044), *(a2 + 2045), *(a2 + 2046), *(a2 + 2047));
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
    v50 = *__error();
    v51 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
      v53 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      v54 = a6;
      *keyExistsAndHasValidFormat = 136316162;
      *&keyExistsAndHasValidFormat[4] = __str;
      *&keyExistsAndHasValidFormat[12] = 1024;
      *&keyExistsAndHasValidFormat[14] = v11;
      *&keyExistsAndHasValidFormat[18] = 1024;
      *&keyExistsAndHasValidFormat[20] = v52;
      *&keyExistsAndHasValidFormat[24] = 1024;
      *&keyExistsAndHasValidFormat[26] = v53;
      *&keyExistsAndHasValidFormat[30] = 2048;
      *&keyExistsAndHasValidFormat[32] = a6;
      _os_log_impl(&dword_1C278D000, v51, OS_LOG_TYPE_DEFAULT, "brute force search %s top %u of %u vectors in %u partitions max_distance=%f", keyExistsAndHasValidFormat, 0x28u);
    }

    else
    {
      v54 = a6;
    }

    *__error() = v50;
    v90 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
    v55 = 0;
    v56 = *(a1 + 32);
    v57 = v56;
    while (v55 != *(v57 + 24))
    {
      ++*(v111 + 6);
      v58 = IVFVectorIndexTemplate<float,512>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator*(v56, v55);
      v59 = *(v58 + 2064);
      *keyExistsAndHasValidFormat = 2139095039;
      v60 = 1;
      vDSP_distancesq(a2, 1, v58, 1, keyExistsAndHasValidFormat, 0x200uLL);
      if (v103[1])
      {
        v61 = vcnt_s8(v103[1]);
        v61.i16[0] = vaddlv_u8(v61);
        if (v61.u32[0] > 1uLL)
        {
          v62 = v59;
          if (v103[1] <= v59)
          {
            v62 = v59 % LODWORD(v103[1]);
          }
        }

        else
        {
          v62 = (LODWORD(v103[1]) - 1) & v59;
        }

        v63 = *(v103[0] + v62);
        if (!v63 || (v64 = *v63) == 0)
        {
LABEL_79:
          v60 = 1;
          goto LABEL_80;
        }

        if (v61.u32[0] < 2uLL)
        {
          while (1)
          {
            v65 = v64[1];
            if (v65 == v59)
            {
              if (*(v64 + 4) == v59)
              {
                goto LABEL_71;
              }
            }

            else if ((v65 & (v103[1] - 1)) != v62)
            {
              goto LABEL_79;
            }

            v64 = *v64;
            if (!v64)
            {
              goto LABEL_79;
            }
          }
        }

        while (1)
        {
          v66 = v64[1];
          if (v66 == v59)
          {
            if (*(v64 + 4) == v59)
            {
LABEL_71:
              v60 = 0;
              break;
            }
          }

          else
          {
            if (v66 >= v103[1])
            {
              v66 %= v103[1];
            }

            if (v66 != v62)
            {
              goto LABEL_79;
            }
          }

          v64 = *v64;
          if (!v64)
          {
            goto LABEL_79;
          }
        }
      }

LABEL_80:
      v67 = *keyExistsAndHasValidFormat;
      if (a6 == 0.0 || *keyExistsAndHasValidFormat <= a6)
      {
        if ((v60 & 1) == 0)
        {
          v70 = *__error();
          v71 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 67109376;
            *&keyExistsAndHasValidFormat[4] = v59;
            *&keyExistsAndHasValidFormat[8] = 2048;
            *&keyExistsAndHasValidFormat[10] = v67;
            _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_DEFAULT, "Include vec_id: %u distance %f", keyExistsAndHasValidFormat, 0x12u);
          }

          *__error() = v70;
        }

        *keyExistsAndHasValidFormat = *(v58 + 2048);
        *&keyExistsAndHasValidFormat[16] = v59;
        *&keyExistsAndHasValidFormat[20] = v67;
        _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(a4, keyExistsAndHasValidFormat);
      }

      else
      {
        if ((v60 & 1) == 0)
        {
          v68 = *__error();
          v69 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 67109632;
            *&keyExistsAndHasValidFormat[4] = v59;
            *&keyExistsAndHasValidFormat[8] = 2048;
            *&keyExistsAndHasValidFormat[10] = v67;
            *&keyExistsAndHasValidFormat[18] = 2048;
            *&keyExistsAndHasValidFormat[20] = v54;
            _os_log_impl(&dword_1C278D000, v69, OS_LOG_TYPE_DEFAULT, "Skip vec_id: %u distance %f > %f", keyExistsAndHasValidFormat, 0x1Cu);
          }

          *__error() = v68;
        }

        ++*(v107 + 6);
      }

      ++v55;
      v57 = *(a1 + 32);
      if (v56 != v57)
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

  else
  {
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
      v28 = v11;
      v29 = 8 * v26;
      v30 = v25 * v25;
      keyExistsAndHasValidFormat[0] = 0;
      v31 = CFPreferencesGetAppIntegerValue(@"IVFpartitionProbeDecayExponent", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
      v32 = keyExistsAndHasValidFormat[0];
      if (v31 <= 0x12)
      {
        v33 = 18;
      }

      else
      {
        v33 = v31;
      }

      v34 = v33 - 3;
      v35 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
      if (v32)
      {
        v36 = v34;
      }

      else
      {
        v36 = 17;
      }

      v37 = v35 >> v36;
      if (v37 <= 8)
      {
        v38 = 8;
      }

      else
      {
        v38 = v37;
      }

      v39 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      if (v27)
      {
        v40 = v29;
      }

      else
      {
        v40 = 800;
      }

      v11 = v28;
      v41 = v40 * v39 / (v30 * v38);
      if (v23 < v41)
      {
        v41 = v23;
      }

      if (v41 <= v20)
      {
        AppIntegerValue = v20;
      }

      else
      {
        AppIntegerValue = v41;
      }
    }

    v42 = *__error();
    v43 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
      v45 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      *keyExistsAndHasValidFormat = 136316418;
      *&keyExistsAndHasValidFormat[4] = __str;
      *&keyExistsAndHasValidFormat[12] = 1024;
      *&keyExistsAndHasValidFormat[14] = v11;
      *&keyExistsAndHasValidFormat[18] = 1024;
      *&keyExistsAndHasValidFormat[20] = v44;
      *&keyExistsAndHasValidFormat[24] = 1024;
      *&keyExistsAndHasValidFormat[26] = AppIntegerValue;
      *&keyExistsAndHasValidFormat[30] = 1024;
      *&keyExistsAndHasValidFormat[32] = v45;
      *&keyExistsAndHasValidFormat[36] = 2048;
      *&keyExistsAndHasValidFormat[38] = a6;
      _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "aNN search %s top %u of %u vectors in %u of %u partitions max_distance=%f", keyExistsAndHasValidFormat, 0x2Eu);
    }

    *__error() = v42;
    os_unfair_lock_lock((a1 + 136));
    os_unfair_lock_lock((a1 + 96));
    v47 = *(a1 + 64);
    v46 = *(a1 + 72);
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v49 = *(a1 + 80);
    v48 = *(a1 + 88);
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v93 = v48;
    os_unfair_lock_unlock((a1 + 96));
    memset(keyExistsAndHasValidFormat, 0, 24);
    (*(*v47 + 80))(keyExistsAndHasValidFormat, v47, a2, AppIntegerValue);
    v92 = *&keyExistsAndHasValidFormat[8] - *keyExistsAndHasValidFormat;
    if (*&keyExistsAndHasValidFormat[8] != *keyExistsAndHasValidFormat)
    {
      operator new();
    }

    v100 = 0;
    v101 = 0;
    v102 = 0;
    v11 = v91;
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 1174405120;
    v95[2] = ___ZNK22IVFVectorIndexTemplateIfLi512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIfLi512EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj_block_invoke;
    v95[3] = &unk_1F427F750;
    v95[6] = a1;
    v95[7] = a2;
    v95[4] = &v110;
    std::unordered_set<unsigned int>::unordered_set(&v96, v103);
    v99 = a6;
    v95[5] = &v106;
    v98 = a4;
    (*(*v49 + 72))(v49, &v100, v95);
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
    if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }
  }

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
    *&keyExistsAndHasValidFormat[14] = v11;
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

unint64_t IVFVectorIndexTemplate<float,512>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator*(uint64_t a1, unsigned int a2)
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

  return vi_onefixedsize_memory_allocator::getPtr(v2, a2, 2068);
}

void ___ZNK22IVFVectorIndexTemplateIfLi512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIfLi512EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj_block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  ++*(*(*(a1 + 32) + 8) + 24);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), *a3, 2068);
  v6 = *(a1 + 56);
  *v25 = 2139095039;
  v7 = 1;
  vDSP_distancesq(v6, 1, Ptr, 1, v25, 0x200uLL);
  v8 = *v25;
  v9 = *(Ptr + 2064);
  v10 = *(a1 + 72);
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = *(Ptr + 2064);
    if (*&v10 <= v9)
    {
      v12 = v9 % v10.i32[0];
    }
  }

  else
  {
    v12 = (v10.i32[0] - 1) & v9;
  }

  v13 = *(*(a1 + 64) + 8 * v12);
  if (v13)
  {
    v14 = *v13;
    if (v14)
    {
      if (v11.u32[0] < 2uLL)
      {
        v15 = *&v10 - 1;
        while (1)
        {
          v17 = v14[1];
          if (v17 == v9)
          {
            if (*(v14 + 4) == v9)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 & v15) != v12)
          {
            goto LABEL_22;
          }

          v14 = *v14;
          if (!v14)
          {
            goto LABEL_22;
          }
        }
      }

      do
      {
        v16 = v14[1];
        if (v16 == v9)
        {
          if (*(v14 + 4) == v9)
          {
LABEL_21:
            v7 = 0;
            goto LABEL_23;
          }
        }

        else
        {
          if (v16 >= *&v10)
          {
            v16 %= *&v10;
          }

          if (v16 != v12)
          {
            break;
          }
        }

        v14 = *v14;
      }

      while (v14);
    }
  }

LABEL_22:
  v7 = 1;
LABEL_23:
  v18 = *(a1 + 112);
  if (v18 == 0.0 || *v25 <= v18)
  {
    if ((v7 & 1) == 0)
    {
      v20 = *__error();
      v21 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 67109376;
        *&v25[4] = v9;
        *&v25[8] = 2048;
        *&v25[10] = v8;
        _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "Include vec_id: %u distance %f", v25, 0x12u);
      }

      *__error() = v20;
    }

    *v25 = *(Ptr + 2048);
    *&v25[16] = v9;
    *&v26 = v8;
    _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(*(a1 + 104), v25);
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      v22 = *__error();
      v23 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 112);
        *v25 = 67109632;
        *&v25[4] = v9;
        *&v25[8] = 2048;
        *&v25[10] = v8;
        *&v25[18] = 2048;
        v26 = v24;
        _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "Skip vec_id: %u distance %f > %f", v25, 0x1Cu);
      }

      *__error() = v22;
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::aNNForTest(uint64_t a1, int a2, int a3, unsigned __int8 *a4, int a5, int a6, int a7, char a8, float a9, uint64_t a10, unsigned int a11)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::aNN(uint64_t a1, int a2, int a3, unsigned __int8 *a4, int a5, int a6, int a7, char a8, float a9, uint64_t a10)
{
  if (*(a1 + 8) == a2 && *(a1 + 20) == a3 && a6 <= 2 && *(a1 + 12) == vector_dimension_vec_sizes_15424[a5] && vector_size_elem_sizes_15423[a6] == *(a1 + 16))
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 0x40000000;
    v16 = ___ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIfLi512EE3aNNEjtPKv14vec_dimensions15vec_data_formatfjbU13block_pointerFvPvfjE_block_invoke;
    v17 = &unk_1E81955A8;
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

BOOL IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::restoreUpdateSet(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  vint32 = store_stream_read_vint32(a3);
  if (!vint32)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v39 = 0;
    v40 = 0;
    v9 = __dst;
    bzero(__dst, 0x800uLL);
    v37 = 0;
    CIReadPostings(a3, a2, &v39, &v37);
    v10 = *(a3 + 4);
    v11 = *(a3 + 5);
    if (v11 + 2048 <= v10)
    {
      v12 = 2048;
LABEL_6:
      memcpy(v9, (*(a3 + 6) + v11), v12);
      *(a3 + 5) = v11 + v12;
      goto LABEL_7;
    }

    v22 = *(a3 + 6);
    v23 = v10 - v11;
    if (v10 != v11)
    {
      memcpy(__dst, &v22[v11], v10 - v11);
      *(a3 + 5) = v10;
      v11 = v10;
    }

    v24 = prot_pread(*a3, v22, v11, *(a3 + 3));
    if (v24 != -1)
    {
      *(a3 + 4) = v24;
      *(a3 + 5) = 0;
      v25 = *(a3 + 3) + v24;
      *(a3 + 3) = v25;
      if (!v24)
      {
        goto LABEL_7;
      }

      v9 = &__dst[v23];
      v12 = 2048 - v23;
      if (v12 <= v24)
      {
        v11 = 0;
        goto LABEL_6;
      }

      __offseta = v25;
      v26 = v24;
      while (1)
      {
        v27 = *(a3 + 6);
        v28 = v26;
        memcpy(v9, v27, v26);
        *(a3 + 5) = v28;
        v29 = prot_pread(*a3, v27, v28, __offseta);
        if (v29 == -1)
        {
          break;
        }

        *(a3 + 4) = v29;
        *(a3 + 5) = 0;
        v30 = *(a3 + 3) + v29;
        *(a3 + 3) = v30;
        if (!v29)
        {
          goto LABEL_7;
        }

        __offseta = v30;
        v11 = 0;
        v9 += v28;
        v12 -= v28;
        v26 = v29;
        if (v12 <= v29)
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
    v15 = v39;
    v16 = v40;
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
      v19 = IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert(a1 + 48, v14, __dst, 0xFFFFFFFF, 3.4028e38);
      *(v19 + 256) = v15;
      *(v19 + 257) = v16;
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 144));
      v21 = IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert(a1 + 48, v14, __dst, 0xFFFFFFFF, 3.4028e38);
      *(v21 + 256) = v15;
      *(v21 + 257) = v16;
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
    data_map_restore_data(*(a1 + 176), v14, __dst, 0x800uLL, buf, v20);
    v5 = ++v6 >= vint32;
    if (v6 == vint32)
    {
      return 1;
    }
  }

  v31 = *__error();
  v32 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v42 = "restoreUpdateSet";
    v43 = 1024;
    v44 = 3162;
    _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: IVF restoreUpdateSet bad vectorID", buf, 0x12u);
  }

  *__error() = v31;
  return v5;
}

_DWORD *IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4, float a5)
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

  Vector = IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::findVector(a1, a3, &v74, &v73, a2);
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

  if (Vector != -1)
  {
    Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 32) + 16), Vector, 2068);
    if (Ptr[516] == a2)
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

    if (v72 == 2048)
    {
      if (!data || !memcmp(data, a3, 0x800uLL))
      {
LABEL_46:
        v33 = data_map_get_data(*(a1 + 128), Ptr[516], &v72);
        v34 = *__error();
        v35 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v49 = Ptr[516];
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
          if (v72 != 2048)
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

          v36 = 2048;
          if (!v33 || !memcmp(v33, Ptr, 0x800uLL))
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
            v50 = Ptr[516];
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
  OffsetFromEnd = vi_onefixedsize_memory_allocator::allocateOffsetFromEnd(*(v26 + 16), 0x814u);
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
  v30 = vi_onefixedsize_memory_allocator::getPtr(*(v26 + 16), OffsetFromEnd, 2068);
  memcpy(v30, v23, 0x800uLL);
  *(v30 + 2048) = 0u;
  *(v30 + 2064) = a2;
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

  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v31 + 16), OffsetFromEnd, 2068);
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

uint64_t IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::findVector(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4, int a5)
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
  v33[2] = ___ZN22IVFVectorIndexTemplateIfLi512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIfLi512EERjRfj_block_invoke;
  v33[3] = &unk_1E81954C8;
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

unint64_t ___ZN22IVFVectorIndexTemplateIfLi512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIfLi512EERjRfj_block_invoke(unint64_t result, uint64_t a2, float *a3, _BYTE *a4)
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
      result = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), v5, 2068);
      if (v15 != *(result + 2064))
      {
        return result;
      }

      *&v5 = *a3;
    }

    v16 = *(v7 + 56);
    Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), v5, 2068);
    result = memcmp(v16, Ptr, 0x800uLL);
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

void *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::storeUpdateSet(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = store_stream_write_vint32(a3, *(*(a1 + 80) + 24));
  v7 = 0;
  v8 = *(a1 + 80);
  v9 = v8;
  while (v7 != *(v9 + 24))
  {
    v10 = IVFVectorIndexTemplate<float,512>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator*(v8, v7);
    CIWritePostings(a3, a2, 0, (v10 + 2048), 0, 0);
    v12 = *(a3 + 4);
    v11 = *(a3 + 5);
    if (v11 + 2048 >= v12)
    {
      v14 = 2048;
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
      v14 = 2048;
LABEL_5:
      memcpy((*(a3 + 6) + v11), v13, v14);
      *(a3 + 5) += v14;
    }

    result = store_stream_write_vint32(a3, *(v10 + 2064));
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::rename(uint64_t a1, const char *a2)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::makePurgeable(uint64_t a1)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::makeReadOnly(uint64_t a1)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::truncate(uint64_t a1)
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::unlink(uint64_t a1)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::subvert(uint64_t a1, uint64_t a2)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::compactForTest(uint64_t a1, uint64_t a2, uint64_t a3)
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
    IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_disk_allocator,vi_disk_postings>::compactForTest<vi_onefixedsize_disk_allocator>(a1 + 48, a2 + 48, a3);
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

int *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::compact(uint64_t a1, uint64_t a2)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::dump(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
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
  v18 = ___ZNK22IVFVectorIndexTemplateIfLi512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke;
  v19 = &unk_1E81954F0;
  v20 = a6;
  v21 = a4;
  v31 = 0u;
  v32 = 0u;
  for (i = 0; i != 1; (v18)(v17, &v31, &i))
  {
    IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::enumerator_s::next(&v28, &v25);
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

void ___ZNK22IVFVectorIndexTemplateIfLi512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE4dumpEbbPViPvU13block_pointerFbjPKvybjfE_block_invoke()
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::mergeIndexForTest(uint64_t a1, uint64_t a2)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::mergeUpdateSetForTest(uint64_t a1, uint64_t a2)
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

_DWORD *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::mergeUpdateSet(_DWORD *result, uint64_t a2, char *a3, unsigned int a4, uint64_t a5)
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
    v13 = *(IVFVectorIndexTemplate<float,512>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator->(v8, v7) + 2064);
    v14 = IVFVectorIndexTemplate<float,512>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator->(v8, v7);
    memcpy(__dst, v14, sizeof(__dst));
    v15 = IVFVectorIndexTemplate<float,512>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>::Iterator::operator->(v8, v7);
    if (*(v15 + 2048))
    {
      if (*(v15 + 2052))
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

    v12 = IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert((v5 + 12), v13, __dst, 0xFFFFFFFF, 3.4028e38);
    result = vi_memory_postings::push_posting(a3, v10, v12 + 512, v11);
    ++v7;
  }

  return result;
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::mergeUpdateSet(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::train(uint64_t a1, void *a2)
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

_DWORD *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::insertForTest(_DWORD *a1, int a2, unsigned int a3, const void *a4, int a5, int a6, int a7)
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

  result = IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert((a1 + 12), a3, a4, 0xFFFFFFFF, 3.4028e38);
  if (result[514])
  {
    v9 = result[513] + 1;
  }

  else
  {
    result[514] = a7;
    v9 = 1;
  }

  result[513] = v9;
  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::insertForMerge(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5, int a6, int a7)
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

char *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::insertVector(_DWORD *a1, int a2, unsigned int a3, const void *a4, int a5, int a6, int a7, uint64_t a8, char *a9)
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

  v11 = IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert((a1 + 12), a3, a4, 0xFFFFFFFF, 3.4028e38) + 512;

  return vi_memory_postings::push_posting(a9, a7, v11, a8);
}

_DWORD *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::bulkInsertForTest(_DWORD *result, char *a2, int *a3, unsigned int a4, unsigned int *a5)
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
        result = IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert((v8 + 12), v20, a2, 0xFFFFFFFF, 3.4028e38);
        if (result[514])
        {
          v19 = result[513] + 1;
        }

        else
        {
          result[514] = v22;
          v19 = 1;
        }

        result[513] = v19;
        a2 += 2048;
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
        result = IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert((v8 + 12), a5[v9], a2, 0xFFFFFFFF, 3.4028e38);
        if (result[514])
        {
          v13 = result[513] + 1;
        }

        else
        {
          result[514] = v17;
          v13 = 1;
        }

        result[513] = v13;
        a2 += 2048;
        ++v9;
      }

      while (v11 != v14);
    }
  }

  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::shadow(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::validAddress(uint64_t a1, uint64_t a2)
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::allExist(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (a3 <= 0x3E8)
    {
      v12 = a3;
      while (IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::exists(a1 + 48, a2))
      {
        a2 += 2048;
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

        if (!IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::exists(a1 + 48, a2))
        {
          break;
        }

        a2 += 2048;
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

BOOL IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::exists(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v23 = 3.4028e38;
  v24 = -1;
  Vector = IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::findVector(a1, a2, &v24, &v23, 0);
  if (Vector == -1)
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
    v20[2] = ___ZN22IVFVectorIndexTemplateIfLi512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIfLi512EE_block_invoke;
    v20[3] = &unk_1E81954A0;
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
      v15[2] = ___ZN22IVFVectorIndexTemplateIfLi512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIfLi512EE_block_invoke_973;
      v15[3] = &unk_1F427F5E0;
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

  return Vector != -1;
}

int *___ZN22IVFVectorIndexTemplateIfLi512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIfLi512EE_block_invoke(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 48);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(*(a1 + 40) + 32) + 16), *a3, 2068);
  result = memcmp(v8, Ptr, 0x800uLL);
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

void ___ZN22IVFVectorIndexTemplateIfLi512EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE6existsERK10CIVector_sIfLi512EE_block_invoke_973(uint64_t a1, int a2, float *a3, _BYTE *a4)
{
  v116 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 40);
  v8 = *(a1 + 48);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v9 + 32) + 16), *a3, 2068);
  if (!memcmp(v8, Ptr, 0x800uLL))
  {
    v11 = *__error();
    v12 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v40 = a3[1];
      __C = 4.8153e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2819;
      v100 = 1024;
      v101 = a2;
      v102 = 2048;
      *v103 = v40;
      _os_log_error_impl(&dword_1C278D000, v12, OS_LOG_TYPE_ERROR, "%s:%d: Vector not found actually in partID=%u distsq=%e", &__C, 0x22u);
    }

    *__error() = v11;
    v13 = *(a1 + 48);
    v14 = (*(**(a1 + 56) + 72))(*(a1 + 56), *(a1 + 88));
    __C = 3.4028e38;
    vDSP_distancesq(v13, 1, v14, 1, &__C, 0x200uLL);
    v15 = __C;
    v16 = *__error();
    v17 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v41 = *(a1 + 88);
      __C = 4.8153e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2821;
      v100 = 1024;
      v101 = v41;
      v102 = 2048;
      *v103 = v15;
      _os_log_error_impl(&dword_1C278D000, v17, OS_LOG_TYPE_ERROR, "%s:%d: Vec distance to centroid %u distsq=%e", &__C, 0x22u);
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
      __C = 4.8156e-34;
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
      _os_log_error_impl(&dword_1C278D000, v19, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(vec, 2) <%u, %e>, <%u, %e>, %d", &__C, 0x38u);
    }

    *__error() = v18;
    v20 = *__error();
    v21 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v47 = *v93;
      v48 = *(v93 + 2);
      v49 = *(v93 + 1) == *(v93 + 3);
      __C = 4.8154e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2824;
      v100 = 1024;
      v101 = v47;
      v102 = 1024;
      *v103 = v48;
      *&v103[4] = 1024;
      *&v103[6] = v49;
      _os_log_error_impl(&dword_1C278D000, v21, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v20;
    v22 = *__error();
    v23 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v50 = *v93;
      v51 = *(v93 + 2);
      v52 = *(v93 + 1) < *(v93 + 3);
      __C = 4.8154e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2825;
      v100 = 1024;
      v101 = v50;
      v102 = 1024;
      *v103 = v51;
      *&v103[4] = 1024;
      *&v103[6] = v52;
      _os_log_error_impl(&dword_1C278D000, v23, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v22;
    v24 = *__error();
    v25 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v53 = *v93;
      v54 = *(v93 + 2);
      v55 = *(v93 + 1) > *(v93 + 3);
      __C = 4.8154e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2826;
      v100 = 1024;
      v101 = v53;
      v102 = 1024;
      *v103 = v54;
      *&v103[4] = 1024;
      *&v103[6] = v55;
      _os_log_error_impl(&dword_1C278D000, v25, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", &__C, 0x24u);
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

      __C = 4.8161e-34;
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
      _os_log_error_impl(&dword_1C278D000, v27, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", &__C, 0x54u);
    }

    *__error() = v26;
    v91 = 0;
    v92 = 0;
    __p = 0;
    v28 = *(a1 + 56);
    v29 = vi_onefixedsize_memory_allocator::getPtr(*(*(v9 + 32) + 16), *a3, 2068);
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
      __C = 4.8156e-34;
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
      _os_log_error_impl(&dword_1C278D000, v31, OS_LOG_TYPE_ERROR, "%s:%d: topKPartition(entry->vec, 2) <%u, %e>, <%u, %e>, %d", &__C, 0x38u);
    }

    *__error() = v30;
    v32 = *__error();
    v33 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      v69 = *__p;
      v70 = *(__p + 2);
      v71 = *(__p + 1) == *(__p + 3);
      __C = 4.8154e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2831;
      v100 = 1024;
      v101 = v69;
      v102 = 1024;
      *v103 = v70;
      *&v103[4] = 1024;
      *&v103[6] = v71;
      _os_log_error_impl(&dword_1C278D000, v33, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) == distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v32;
    v34 = *__error();
    v35 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      v72 = *__p;
      v73 = *(__p + 2);
      v74 = *(__p + 1) < *(__p + 3);
      __C = 4.8154e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2832;
      v100 = 1024;
      v101 = v72;
      v102 = 1024;
      *v103 = v73;
      *&v103[4] = 1024;
      *&v103[6] = v74;
      _os_log_error_impl(&dword_1C278D000, v35, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) < distsq(%u) is %d", &__C, 0x24u);
    }

    *__error() = v34;
    v36 = *__error();
    v37 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      v75 = *__p;
      v76 = *(__p + 2);
      v77 = *(__p + 1) > *(__p + 3);
      __C = 4.8154e-34;
      v97 = "exists_block_invoke";
      v98 = 1024;
      v99 = 2833;
      v100 = 1024;
      v101 = v75;
      v102 = 1024;
      *v103 = v76;
      *&v103[4] = 1024;
      *&v103[6] = v77;
      _os_log_error_impl(&dword_1C278D000, v37, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) > distsq(%u) is %d", &__C, 0x24u);
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

      __C = 4.8161e-34;
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
      _os_log_error_impl(&dword_1C278D000, v39, OS_LOG_TYPE_ERROR, "%s:%d: distsq(%u) - distsq(%u) = %e, FLT_MIN=%e, EPSILON=%e, %d, %d, %d, %d", &__C, 0x54u);
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::~IVFVectorIndexInstance(uint64_t a1)
{
  *a1 = &unk_1F427F298;
  IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  JUMPOUT(0x1C691FEF0);
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,512>::~IVFVectorIndexInstance(uint64_t a1)
{
  *a1 = &unk_1F427F298;
  IVFVectorIndexTemplate<float,512>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s((a1 + 48));
  *a1 = &unk_1F427DB40;
  if (*(a1 + 47) < 0)
  {
    operator delete(*(a1 + 24));
  }

  return a1;
}

void std::__shared_ptr_emplace<IVFVectorIndexTemplate<float,256>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>,std::allocator<IVFVectorIndexTemplate<float,256>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>>>::__on_zero_shared(uint64_t a1)
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

void std::__shared_ptr_emplace<IVFVectorIndexTemplate<float,256>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>,std::allocator<IVFVectorIndexTemplate<float,256>::VectorStore<vi_onefixedsize_memory_allocator,vi_memory_postings>>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F427EF40;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1C691FEF0);
}

void IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::replaceQuantizer(uint64_t a1, void *a2, void *a3)
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

void IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::newPartitions(uint64_t a1)
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

int *___ZNK22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE13newPartitionsENSt3__110shared_ptrI9QuantizerIfLi256EEEE_block_invoke(uint64_t a1)
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
      Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v3 + 16), v4, 1044);
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

void IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getPartitions(uint64_t a1@<X0>, void *a2@<X8>)
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

void IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getQuantizer(uint64_t a1@<X0>, void *a2@<X8>)
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

void IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s(void *a1)
{
  IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s(a1);

  JUMPOUT(0x1C691FEF0);
}

void *IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::~IVFVectorIndexRoot_s(void *a1)
{
  *a1 = &unk_1F427EEF8;
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::diagnoseDump(uint64_t a1, uint64_t a2, void *a3, int a4)
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
  IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getQuantizer(a1 + 48, &v75);
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
  IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getPartitions(a1 + 48, &v73);
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
          Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v39 + 16), v58, 1044);
          v61 = MEMORY[0x1C691FC90](a3, v58);
          v62 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v61, ",", 1);
          v63 = MEMORY[0x1C691FC90](v62, *(Ptr + 1040));
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
          v47 = vi_onefixedsize_memory_allocator::getPtr(*(v39 + 16), v44, 1044);
          v48 = MEMORY[0x1C691FC90](a3, v44);
          v49 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v48, ",", 1);
          v50 = MEMORY[0x1C691FC90](v49, *(v47 + 1040));
          std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(v50, ",", 1);
          v51 = std::__put_character_sequence[abi:nn200100]<char,std::char_traits<char>>(a3, "{length = ", 10);
          v52 = MEMORY[0x1C691FCA0](v51, 1024);
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
          data2hexString(&v78, v47 + 1016, 8);
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::status(uint64_t a1, uint64_t a2)
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
  IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getPartitions(a1 + 48, &v29);
  if (v29)
  {
    IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::getPartitions(a1 + 48, &v27);
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::updateVectorStorageOffsets(uint64_t a1, unint64_t a2)
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

      Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 80) + 16), i, 1044);
      if ((*(v2 + 184) & 1) == 0)
      {
        v7 = *(Ptr + 1040);
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

      vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 80) + 16), v2++, 1044);
    }
  }

  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::getDataForOffset(void *a1, uint64_t a2, int *a3)
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
    v7 = 1024;
  }

  *a3 = v7;
  return result;
}

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::storageSize(uint64_t a1)
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::aNNForDebugProcessResult(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::aNNProcessResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIfLi256EE16aNNProcessResultEPvU13block_pointerFvS5_fjE_block_invoke;
  v4[3] = &unk_1E8195438;
  v4[4] = a3;
  return _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE16aNNProcessResultEP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorIS7_NS8_9allocatorIS7_EEEENS8_4lessIS7_EEEU13block_pointerFvPNS3_12storage_formEfjE(a2, v4);
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::aNN(uint64_t a1, int a2, int a3, const float *a4, int a5, int a6, uint64_t a7, int *a8, float a9)
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

  IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::aNN(v9, a4, a7, a8, 0, a9);
}

void IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::aNN(uint64_t a1, const float *a2, char a3, int *a4, CFIndex AppIntegerValue, float a6)
{
  v125 = *MEMORY[0x1E69E9840];
  v11 = *a4;
  *__str = 0u;
  v124 = 0u;
  snprintf(__str, 0x20uLL, "%02x%02x%02x%02x...%02x%02x%02x%02x", *a2, *(a2 + 1), *(a2 + 2), *(a2 + 3), *(a2 + 1020), *(a2 + 1021), *(a2 + 1022), *(a2 + 1023));
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
    v50 = *__error();
    v51 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v52 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
      v53 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      v54 = a6;
      *keyExistsAndHasValidFormat = 136316162;
      *&keyExistsAndHasValidFormat[4] = __str;
      *&keyExistsAndHasValidFormat[12] = 1024;
      *&keyExistsAndHasValidFormat[14] = v11;
      *&keyExistsAndHasValidFormat[18] = 1024;
      *&keyExistsAndHasValidFormat[20] = v52;
      *&keyExistsAndHasValidFormat[24] = 1024;
      *&keyExistsAndHasValidFormat[26] = v53;
      *&keyExistsAndHasValidFormat[30] = 2048;
      *&keyExistsAndHasValidFormat[32] = a6;
      _os_log_impl(&dword_1C278D000, v51, OS_LOG_TYPE_DEFAULT, "brute force search %s top %u of %u vectors in %u partitions max_distance=%f", keyExistsAndHasValidFormat, 0x28u);
    }

    else
    {
      v54 = a6;
    }

    *__error() = v50;
    v90 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
    v55 = 0;
    v56 = *(a1 + 32);
    v57 = v56;
    while (v55 != *(v57 + 24))
    {
      ++*(v111 + 6);
      v58 = _ZNK22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratordeEv(v56, v55);
      v59 = *(v58 + 1040);
      *keyExistsAndHasValidFormat = 2139095039;
      v60 = 1;
      vDSP_distancesq(a2, 1, v58, 1, keyExistsAndHasValidFormat, 0x100uLL);
      if (v103[1])
      {
        v61 = vcnt_s8(v103[1]);
        v61.i16[0] = vaddlv_u8(v61);
        if (v61.u32[0] > 1uLL)
        {
          v62 = v59;
          if (v103[1] <= v59)
          {
            v62 = v59 % LODWORD(v103[1]);
          }
        }

        else
        {
          v62 = (LODWORD(v103[1]) - 1) & v59;
        }

        v63 = *(v103[0] + v62);
        if (!v63 || (v64 = *v63) == 0)
        {
LABEL_79:
          v60 = 1;
          goto LABEL_80;
        }

        if (v61.u32[0] < 2uLL)
        {
          while (1)
          {
            v65 = v64[1];
            if (v65 == v59)
            {
              if (*(v64 + 4) == v59)
              {
                goto LABEL_71;
              }
            }

            else if ((v65 & (v103[1] - 1)) != v62)
            {
              goto LABEL_79;
            }

            v64 = *v64;
            if (!v64)
            {
              goto LABEL_79;
            }
          }
        }

        while (1)
        {
          v66 = v64[1];
          if (v66 == v59)
          {
            if (*(v64 + 4) == v59)
            {
LABEL_71:
              v60 = 0;
              break;
            }
          }

          else
          {
            if (v66 >= v103[1])
            {
              v66 %= v103[1];
            }

            if (v66 != v62)
            {
              goto LABEL_79;
            }
          }

          v64 = *v64;
          if (!v64)
          {
            goto LABEL_79;
          }
        }
      }

LABEL_80:
      v67 = *keyExistsAndHasValidFormat;
      if (a6 == 0.0 || *keyExistsAndHasValidFormat <= a6)
      {
        if ((v60 & 1) == 0)
        {
          v70 = *__error();
          v71 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 67109376;
            *&keyExistsAndHasValidFormat[4] = v59;
            *&keyExistsAndHasValidFormat[8] = 2048;
            *&keyExistsAndHasValidFormat[10] = v67;
            _os_log_impl(&dword_1C278D000, v71, OS_LOG_TYPE_DEFAULT, "Include vec_id: %u distance %f", keyExistsAndHasValidFormat, 0x12u);
          }

          *__error() = v70;
        }

        *keyExistsAndHasValidFormat = *(v58 + 1024);
        *&keyExistsAndHasValidFormat[16] = v59;
        *&keyExistsAndHasValidFormat[20] = v67;
        _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(a4, keyExistsAndHasValidFormat);
      }

      else
      {
        if ((v60 & 1) == 0)
        {
          v68 = *__error();
          v69 = _SILogForLogForCategory(16);
          if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
          {
            *keyExistsAndHasValidFormat = 67109632;
            *&keyExistsAndHasValidFormat[4] = v59;
            *&keyExistsAndHasValidFormat[8] = 2048;
            *&keyExistsAndHasValidFormat[10] = v67;
            *&keyExistsAndHasValidFormat[18] = 2048;
            *&keyExistsAndHasValidFormat[20] = v54;
            _os_log_impl(&dword_1C278D000, v69, OS_LOG_TYPE_DEFAULT, "Skip vec_id: %u distance %f > %f", keyExistsAndHasValidFormat, 0x1Cu);
          }

          *__error() = v68;
        }

        ++*(v107 + 6);
      }

      ++v55;
      v57 = *(a1 + 32);
      if (v56 != v57)
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

  else
  {
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
      v28 = v11;
      v29 = 8 * v26;
      v30 = v25 * v25;
      keyExistsAndHasValidFormat[0] = 0;
      v31 = CFPreferencesGetAppIntegerValue(@"IVFpartitionProbeDecayExponent", @"com.apple.Spotlight", keyExistsAndHasValidFormat);
      v32 = keyExistsAndHasValidFormat[0];
      if (v31 <= 0x12)
      {
        v33 = 18;
      }

      else
      {
        v33 = v31;
      }

      v34 = v33 - 3;
      v35 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
      if (v32)
      {
        v36 = v34;
      }

      else
      {
        v36 = 17;
      }

      v37 = v35 >> v36;
      if (v37 <= 8)
      {
        v38 = 8;
      }

      else
      {
        v38 = v37;
      }

      v39 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      if (v27)
      {
        v40 = v29;
      }

      else
      {
        v40 = 800;
      }

      v11 = v28;
      v41 = v40 * v39 / (v30 * v38);
      if (v23 < v41)
      {
        v41 = v23;
      }

      if (v41 <= v20)
      {
        AppIntegerValue = v20;
      }

      else
      {
        AppIntegerValue = v41;
      }
    }

    v42 = *__error();
    v43 = _SILogForLogForCategory(16);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8nVectorsEv(a1);
      v45 = _ZNK22IVFVectorIndexTemplateIDF16_Li256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE11nPartitionsEv(a1);
      *keyExistsAndHasValidFormat = 136316418;
      *&keyExistsAndHasValidFormat[4] = __str;
      *&keyExistsAndHasValidFormat[12] = 1024;
      *&keyExistsAndHasValidFormat[14] = v11;
      *&keyExistsAndHasValidFormat[18] = 1024;
      *&keyExistsAndHasValidFormat[20] = v44;
      *&keyExistsAndHasValidFormat[24] = 1024;
      *&keyExistsAndHasValidFormat[26] = AppIntegerValue;
      *&keyExistsAndHasValidFormat[30] = 1024;
      *&keyExistsAndHasValidFormat[32] = v45;
      *&keyExistsAndHasValidFormat[36] = 2048;
      *&keyExistsAndHasValidFormat[38] = a6;
      _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "aNN search %s top %u of %u vectors in %u of %u partitions max_distance=%f", keyExistsAndHasValidFormat, 0x2Eu);
    }

    *__error() = v42;
    os_unfair_lock_lock((a1 + 136));
    os_unfair_lock_lock((a1 + 96));
    v47 = *(a1 + 64);
    v46 = *(a1 + 72);
    if (v46)
    {
      atomic_fetch_add_explicit(&v46->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v49 = *(a1 + 80);
    v48 = *(a1 + 88);
    if (v48)
    {
      atomic_fetch_add_explicit(&v48->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v93 = v48;
    os_unfair_lock_unlock((a1 + 96));
    memset(keyExistsAndHasValidFormat, 0, 24);
    (*(*v47 + 80))(keyExistsAndHasValidFormat, v47, a2, AppIntegerValue);
    v92 = *&keyExistsAndHasValidFormat[8] - *keyExistsAndHasValidFormat;
    if (*&keyExistsAndHasValidFormat[8] != *keyExistsAndHasValidFormat)
    {
      operator new();
    }

    v100 = 0;
    v101 = 0;
    v102 = 0;
    v11 = v91;
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 1174405120;
    v95[2] = ___ZNK22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIfLi256EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj_block_invoke;
    v95[3] = &unk_1F427F258;
    v95[6] = a1;
    v95[7] = a2;
    v95[4] = &v110;
    std::unordered_set<unsigned int>::unordered_set(&v96, v103);
    v99 = a6;
    v95[5] = &v106;
    v98 = a4;
    (*(*v49 + 72))(v49, &v100, v95);
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
    if (v46 && !atomic_fetch_add(&v46->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v46->__on_zero_shared)(v46);
      std::__shared_weak_count::__release_weak(v46);
    }
  }

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
    *&keyExistsAndHasValidFormat[14] = v11;
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

void ___ZNK22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE3aNNERK10CIVector_sIfLi256EEfbP20MaxSizePriorityQueueINS0_18candidate_result_sIS3_EENSt3__16vectorISB_NSC_9allocatorISB_EEEENSC_4lessISB_EEEj_block_invoke(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  ++*(*(*(a1 + 32) + 8) + 24);
  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), *a3, 1044);
  v6 = *(a1 + 56);
  *v25 = 2139095039;
  v7 = 1;
  vDSP_distancesq(v6, 1, Ptr, 1, v25, 0x100uLL);
  v8 = *v25;
  v9 = *(Ptr + 1040);
  v10 = *(a1 + 72);
  if (!*&v10)
  {
    goto LABEL_23;
  }

  v11 = vcnt_s8(v10);
  v11.i16[0] = vaddlv_u8(v11);
  if (v11.u32[0] > 1uLL)
  {
    v12 = *(Ptr + 1040);
    if (*&v10 <= v9)
    {
      v12 = v9 % v10.i32[0];
    }
  }

  else
  {
    v12 = (v10.i32[0] - 1) & v9;
  }

  v13 = *(*(a1 + 64) + 8 * v12);
  if (v13)
  {
    v14 = *v13;
    if (v14)
    {
      if (v11.u32[0] < 2uLL)
      {
        v15 = *&v10 - 1;
        while (1)
        {
          v17 = v14[1];
          if (v17 == v9)
          {
            if (*(v14 + 4) == v9)
            {
              goto LABEL_21;
            }
          }

          else if ((v17 & v15) != v12)
          {
            goto LABEL_22;
          }

          v14 = *v14;
          if (!v14)
          {
            goto LABEL_22;
          }
        }
      }

      do
      {
        v16 = v14[1];
        if (v16 == v9)
        {
          if (*(v14 + 4) == v9)
          {
LABEL_21:
            v7 = 0;
            goto LABEL_23;
          }
        }

        else
        {
          if (v16 >= *&v10)
          {
            v16 %= *&v10;
          }

          if (v16 != v12)
          {
            break;
          }
        }

        v14 = *v14;
      }

      while (v14);
    }
  }

LABEL_22:
  v7 = 1;
LABEL_23:
  v18 = *(a1 + 112);
  if (v18 == 0.0 || *v25 <= v18)
  {
    if ((v7 & 1) == 0)
    {
      v20 = *__error();
      v21 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *v25 = 67109376;
        *&v25[4] = v9;
        *&v25[8] = 2048;
        *&v25[10] = v8;
        _os_log_impl(&dword_1C278D000, v21, OS_LOG_TYPE_DEFAULT, "Include vec_id: %u distance %f", v25, 0x12u);
      }

      *__error() = v20;
    }

    *v25 = *(Ptr + 1024);
    *&v25[16] = v9;
    *&v26 = v8;
    _ZN20MaxSizePriorityQueueIN22IVFVectorIndexTemplateIDF16_Li256EE18candidate_result_sI18vi_memory_postingsEENSt3__16vectorIS4_NS5_9allocatorIS4_EEEENS5_4lessIS4_EEE4pushERKS4_(*(a1 + 104), v25);
  }

  else
  {
    if ((v7 & 1) == 0)
    {
      v22 = *__error();
      v23 = _SILogForLogForCategory(16);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        v24 = *(a1 + 112);
        *v25 = 67109632;
        *&v25[4] = v9;
        *&v25[8] = 2048;
        *&v25[10] = v8;
        *&v25[18] = 2048;
        v26 = v24;
        _os_log_impl(&dword_1C278D000, v23, OS_LOG_TYPE_DEFAULT, "Skip vec_id: %u distance %f > %f", v25, 0x1Cu);
      }

      *__error() = v22;
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::aNNForTest(uint64_t a1, int a2, int a3, unsigned __int8 *a4, int a5, int a6, int a7, char a8, float a9, uint64_t a10, unsigned int a11)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::aNN(uint64_t a1, int a2, int a3, unsigned __int8 *a4, int a5, int a6, int a7, char a8, float a9, uint64_t a10)
{
  if (*(a1 + 8) == a2 && *(a1 + 20) == a3 && a6 <= 2 && *(a1 + 12) == vector_dimension_vec_sizes_15424[a5] && vector_size_elem_sizes_15423[a6] == *(a1 + 16))
  {
    v14 = MEMORY[0x1E69E9820];
    v15 = 0x40000000;
    v16 = ___ZNK16IVFVectorIndexenI32vi_onefixedsize_memory_allocator18vi_memory_postingsE22IVFVectorIndexInstanceIfLi256EE3aNNEjtPKv14vec_dimensions15vec_data_formatfjbU13block_pointerFvPvfjE_block_invoke;
    v17 = &unk_1E8195410;
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

BOOL IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::restoreUpdateSet(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  v45 = *MEMORY[0x1E69E9840];
  vint32 = store_stream_read_vint32(a3);
  if (!vint32)
  {
    return 1;
  }

  v5 = 0;
  v6 = 0;
  while (1)
  {
    v39 = 0;
    v40 = 0;
    v9 = __dst;
    bzero(__dst, 0x400uLL);
    v37 = 0;
    CIReadPostings(a3, a2, &v39, &v37);
    v10 = *(a3 + 4);
    v11 = *(a3 + 5);
    if (v11 + 1024 <= v10)
    {
      v12 = 1024;
LABEL_6:
      memcpy(v9, (*(a3 + 6) + v11), v12);
      *(a3 + 5) = v11 + v12;
      goto LABEL_7;
    }

    v22 = *(a3 + 6);
    v23 = v10 - v11;
    if (v10 != v11)
    {
      memcpy(__dst, &v22[v11], v10 - v11);
      *(a3 + 5) = v10;
      v11 = v10;
    }

    v24 = prot_pread(*a3, v22, v11, *(a3 + 3));
    if (v24 != -1)
    {
      *(a3 + 4) = v24;
      *(a3 + 5) = 0;
      v25 = *(a3 + 3) + v24;
      *(a3 + 3) = v25;
      if (!v24)
      {
        goto LABEL_7;
      }

      v9 = &__dst[v23];
      v12 = 1024 - v23;
      if (v12 <= v24)
      {
        v11 = 0;
        goto LABEL_6;
      }

      __offseta = v25;
      v26 = v24;
      while (1)
      {
        v27 = *(a3 + 6);
        v28 = v26;
        memcpy(v9, v27, v26);
        *(a3 + 5) = v28;
        v29 = prot_pread(*a3, v27, v28, __offseta);
        if (v29 == -1)
        {
          break;
        }

        *(a3 + 4) = v29;
        *(a3 + 5) = 0;
        v30 = *(a3 + 3) + v29;
        *(a3 + 3) = v30;
        if (!v29)
        {
          goto LABEL_7;
        }

        __offseta = v30;
        v11 = 0;
        v9 += v28;
        v12 -= v28;
        v26 = v29;
        if (v12 <= v29)
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
    v15 = v39;
    v16 = v40;
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
      v19 = IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert(a1 + 48, v14, __dst, 0xFFFFFFFF, 3.4028e38);
      *(v19 + 128) = v15;
      *(v19 + 129) = v16;
      if (!atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v18->__on_zero_shared)(v18);
        std::__shared_weak_count::__release_weak(v18);
      }
    }

    else
    {
      os_unfair_lock_unlock((a1 + 144));
      v21 = IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert(a1 + 48, v14, __dst, 0xFFFFFFFF, 3.4028e38);
      *(v21 + 128) = v15;
      *(v21 + 129) = v16;
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
    data_map_restore_data(*(a1 + 176), v14, __dst, 0x400uLL, buf, v20);
    v5 = ++v6 >= vint32;
    if (v6 == vint32)
    {
      return 1;
    }
  }

  v31 = *__error();
  v32 = _SILogForLogForCategory(16);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v42 = "restoreUpdateSet";
    v43 = 1024;
    v44 = 3162;
    _os_log_error_impl(&dword_1C278D000, v32, OS_LOG_TYPE_ERROR, "%s:%d: IVF restoreUpdateSet bad vectorID", buf, 0x12u);
  }

  *__error() = v31;
  return v5;
}

_DWORD *IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::lookupForInsert(uint64_t a1, unsigned int a2, const void *a3, unsigned int a4, float a5)
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

  Vector = IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::findVector(a1, a3, &v74, &v73, a2);
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

  if (Vector != -1)
  {
    Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(a1 + 32) + 16), Vector, 1044);
    if (Ptr[260] == a2)
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

    if (v72 == 1024)
    {
      if (!data || !memcmp(data, a3, 0x400uLL))
      {
LABEL_46:
        v33 = data_map_get_data(*(a1 + 128), Ptr[260], &v72);
        v34 = *__error();
        v35 = _SILogForLogForCategory(16);
        if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
        {
          v49 = Ptr[260];
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
          if (v72 != 1024)
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

          v36 = 1024;
          if (!v33 || !memcmp(v33, Ptr, 0x400uLL))
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
            v50 = Ptr[260];
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
  OffsetFromEnd = vi_onefixedsize_memory_allocator::allocateOffsetFromEnd(*(v26 + 16), 0x414u);
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
  v30 = vi_onefixedsize_memory_allocator::getPtr(*(v26 + 16), OffsetFromEnd, 1044);
  memcpy(v30, v23, 0x400uLL);
  *(v30 + 1024) = 0u;
  *(v30 + 1040) = a2;
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

  Ptr = vi_onefixedsize_memory_allocator::getPtr(*(v31 + 16), OffsetFromEnd, 1044);
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

uint64_t IVFVectorIndexTemplate<float,256>::IVFVectorIndexRoot_s<vi_onefixedsize_memory_allocator,vi_memory_postings>::findVector(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4, int a5)
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
  v33[2] = ___ZN22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIfLi256EERjRfj_block_invoke;
  v33[3] = &unk_1E8195330;
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

unint64_t ___ZN22IVFVectorIndexTemplateIfLi256EE20IVFVectorIndexRoot_sI32vi_onefixedsize_memory_allocator18vi_memory_postingsE10findVectorERK10CIVector_sIfLi256EERjRfj_block_invoke(unint64_t result, uint64_t a2, float *a3, _BYTE *a4)
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
      result = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), v5, 1044);
      if (v15 != *(result + 1040))
      {
        return result;
      }

      *&v5 = *a3;
    }

    v16 = *(v7 + 56);
    Ptr = vi_onefixedsize_memory_allocator::getPtr(*(*(v4 + 32) + 16), v5, 1044);
    result = memcmp(v16, Ptr, 0x400uLL);
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

void *IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::storeUpdateSet(uint64_t a1, uint64_t a2, unsigned int *a3)
{
  result = store_stream_write_vint32(a3, *(*(a1 + 80) + 24));
  v7 = 0;
  v8 = *(a1 + 80);
  v9 = v8;
  while (v7 != *(v9 + 24))
  {
    v10 = _ZNK22IVFVectorIndexTemplateIDF16_Li512EE11VectorStoreI32vi_onefixedsize_memory_allocator18vi_memory_postingsE8IteratordeEv(v8, v7);
    CIWritePostings(a3, a2, 0, (v10 + 1024), 0, 0);
    v12 = *(a3 + 4);
    v11 = *(a3 + 5);
    if (v11 + 1024 >= v12)
    {
      v14 = 1024;
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
      v14 = 1024;
LABEL_5:
      memcpy((*(a3 + 6) + v11), v13, v14);
      *(a3 + 5) += v14;
    }

    result = store_stream_write_vint32(a3, *(v10 + 1040));
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::rename(uint64_t a1, const char *a2)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::makePurgeable(uint64_t a1)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::makeReadOnly(uint64_t a1)
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

void IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::truncate(uint64_t a1)
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

uint64_t IVFVectorIndexen<vi_onefixedsize_memory_allocator,vi_memory_postings>::IVFVectorIndexInstance<float,256>::unlink(uint64_t a1)
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