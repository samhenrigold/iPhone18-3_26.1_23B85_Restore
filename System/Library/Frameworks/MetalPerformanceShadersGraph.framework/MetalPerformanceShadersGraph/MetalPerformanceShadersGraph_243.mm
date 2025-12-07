void llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 16 * v2;
    v5 = (v3 + 8);
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
    v3 = *a1;
    v6 = (16 * *(a1 + 16));
  }

  else
  {
    v6 = 0;
  }

  llvm::deallocate_buffer(v3, v6);
}

void GPU::MemrefBufferizer::createMemrefHeap(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unsigned int a5)
{
  v18 = [*(a2 + 16) metalDevice];
  v8 = objc_opt_new();
  v9 = v8;
  if (v8)
  {
    v10 = 0x400000;
    v11 = 0x2000000;
    v12 = 0x40000000;
    if (a3 >> 29)
    {
      v12 = (a3 + 0x1FFFFF) & 0xFFFFFFFFFFE00000;
    }

    if (a3 >= 0xA00000)
    {
      v11 = v12;
    }

    if (a3 > 0x100000)
    {
      v10 = v11;
    }

    if (a5)
    {
      v13 = a3;
    }

    else
    {
      v13 = v10;
    }

    [v8 setSize:v13];
    v14 = [v18 heapBufferSizeAndAlignWithLength:objc_msgSend(v9 options:{"size"), 0}];
    v16 = (v14 - (v14 != 0)) / v15;
    if (v14)
    {
      ++v16;
    }

    [v9 setSize:v16 * v15];
    [v9 setStorageMode:0];
    [v9 setCpuCacheMode:0];
    [v9 setHazardTrackingMode:2];
    [v9 setType:a5];
    v17 = [v18 newHeapWithDescriptor:v9];
    if (v17)
    {
      [v17 setPurgeableState:2];
      operator new();
    }

    *a1 = 0;
    a1[1] = 0;
  }

  else
  {
    *a1 = 0;
    a1[1] = 0;
  }
}

void sub_1E0785E98(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10, ...)
{
  va_start(va, a10);

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void GPU::MemrefBufferizer::allocateHeapForFusedAlloc(uint64_t a1, unint64_t a2)
{
  if (*(*(*(a2 + 8) & 0xFFFFFFFFFFFFFFF8) + 136) == &mlir::detail::TypeIDResolver<mlir::MemRefType,void>::id)
  {
    v4 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  }

  else
  {
    v4 = 0;
  }

  v45 = v4;
  getMPSDataType(v4);
  if (getMPSDataType(v4) != 536870920 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v5 = *(a1 + 120);
  v6 = *(a1 + 136);
  v7 = HIDWORD(a2);
  v8 = 8 * a2;
  if (!v6)
  {
LABEL_11:
    v11 = (v5 + 24 * v6);
    goto LABEL_12;
  }

  v9 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)));
  v10 = (v6 - 1) & (-348639895 * ((v9 >> 47) ^ v9));
  v11 = (v5 + 24 * v10);
  v12 = *v11;
  if (*v11 != a2)
  {
    v13 = 1;
    while (v12 != -4096)
    {
      v14 = v10 + v13++;
      v10 = v14 & (v6 - 1);
      v11 = (v5 + 24 * v10);
      v12 = *v11;
      if (*v11 == a2)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_11;
  }

LABEL_12:
  if (v11 != (v5 + 24 * v6) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (mlir::BaseMemRefType::hasRank(&v45))
  {
    mlir::ArrayAttr::getValue(&v45);
  }

  if (mlir::BaseMemRefType::hasRank(&v45))
  {
    Value = mlir::ArrayAttr::getValue(&v45);
    if (!v16)
    {
      goto LABEL_20;
    }

    v17 = 8 * v16;
    while (*Value != 0x8000000000000000)
    {
      ++Value;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_20;
      }
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_20:
  MemrefSizeInBytes = mlir::getMemrefSizeInBytes(v45, 1uLL);
  v19 = [*(a1 + 16) metalDevice];
  v20 = [v19 heapBufferSizeAndAlignWithLength:MemrefSizeInBytes options:0];
  v22 = v21;
  if (v20)
  {
    v23 = (v20 - (v20 != 0)) / v21 + 1;
  }

  else
  {
    v23 = 0 / v21;
  }

  v24 = v23 * v22;
  LODWORD(v46) = 0;
  v43 = &v46;
  v25 = std::__hash_table<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::__unordered_map_hasher<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::hash<GPU::MemrefBufferPool::Kind>,std::equal_to<GPU::MemrefBufferPool::Kind>,true>,std::__unordered_map_equal<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::equal_to<GPU::MemrefBufferPool::Kind>,std::hash<GPU::MemrefBufferPool::Kind>,true>,std::allocator<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>>>::__emplace_unique_key_args<GPU::MemrefBufferPool::Kind,std::piecewise_construct_t const&,std::tuple<GPU::MemrefBufferPool::Kind const&>,std::tuple<>>((a1 + 216), 0, &v43)[3];
  GPU::MemrefBufferizer::createMemrefHeap(&v43, a1, v24, v25, 1u);
  v26 = v43;
  if (!v43 && MTLReportFailureTypeEnabled())
  {
    v42 = v24;
    MTLReportFailure();
  }

  *(a1 + 88) += *(v26 + 1);
  v27 = *(a1 + 136);
  if (v27)
  {
    v28 = *(a1 + 120);
    v29 = 0x9DDFEA08EB382D69 * (v7 ^ ((0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)) >> 47) ^ (0x9DDFEA08EB382D69 * ((v8 - 0xAE502812AA7333) ^ v7)));
    v30 = v27 - 1;
    v31 = (v27 - 1) & (-348639895 * ((v29 >> 47) ^ v29));
    v32 = (v28 + 24 * v31);
    v33 = *v32;
    if (*v32 == a2)
    {
      goto LABEL_41;
    }

    v34 = 0;
    v35 = 1;
    while (v33 != -4096)
    {
      if (v34)
      {
        v36 = 0;
      }

      else
      {
        v36 = v33 == -8192;
      }

      if (v36)
      {
        v34 = v32;
      }

      v37 = v31 + v35++;
      v31 = v37 & v30;
      v32 = (v28 + 24 * (v37 & v30));
      v33 = *v32;
      if (*v32 == a2)
      {
        goto LABEL_41;
      }
    }

    if (v34)
    {
      v32 = v34;
    }
  }

  else
  {
    v32 = 0;
  }

  v46 = v32;
  v38 = *(a1 + 128);
  if (4 * v38 + 4 >= 3 * v27)
  {
    v27 *= 2;
LABEL_64:
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::grow(a1 + 120, v27);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::LookupBucketFor<mlir::Value>(*(a1 + 120), *(a1 + 136), a2, &v46);
    v32 = v46;
    ++*(a1 + 128);
    if (*v32 == -4096)
    {
      goto LABEL_40;
    }

    goto LABEL_39;
  }

  if (v27 + ~v38 - *(a1 + 132) <= v27 >> 3)
  {
    goto LABEL_64;
  }

  *(a1 + 128) = v38 + 1;
  if (*v32 != -4096)
  {
LABEL_39:
    --*(a1 + 132);
  }

LABEL_40:
  v32[1] = 0;
  v32[2] = 0;
  *v32 = a2;
LABEL_41:
  v39 = v44;
  if (v44)
  {
    atomic_fetch_add_explicit(&v44->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v40 = v32[2];
  v32[1] = v26;
  v32[2] = v39;
  if (v40 && !atomic_fetch_add(&v40->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v40->__on_zero_shared)(v40);
    std::__shared_weak_count::__release_weak(v40);
  }

  if (!*std::__tree<std::shared_ptr<GPU::MemrefHeap>,BOOL (*)(std::shared_ptr<GPU::MemrefHeap>,std::shared_ptr<GPU::MemrefHeap>),std::allocator<std::shared_ptr<GPU::MemrefHeap>>>::__find_equal<std::shared_ptr<GPU::MemrefHeap>>(v25 + 32, &v46, &v43))
  {
    operator new();
  }

  [*(a1 + 104) requestResidency];
  v41 = v44;
  if (v44)
  {
    if (!atomic_fetch_add(&v44->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
    }
  }
}

void sub_1E0786464(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

id GPU::MemrefBufferizer::allocateBufferFromFusedAlloc(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v69 = a2;
  if (*(a1 + 8) <= a4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v68 = 0uLL;
  v67 = 0uLL;
  std::recursive_mutex::lock((a1 + 24));
  v9 = *(a1 + 120);
  v10 = *(a1 + 136);
  if (v10)
  {
    v11 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v12 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v11 >> 47) ^ v11);
    v13 = (v10 - 1) & (-348639895 * ((v12 >> 47) ^ v12));
    v14 = (v9 + 24 * v13);
    v15 = *v14;
    if (*v14 == a3)
    {
      goto LABEL_9;
    }

    v16 = 1;
    while (v15 != -4096)
    {
      v17 = v13 + v16++;
      v13 = v17 & (v10 - 1);
      v14 = (v9 + 24 * v13);
      v15 = *v14;
      if (*v14 == a3)
      {
        goto LABEL_9;
      }
    }
  }

  v14 = (v9 + 24 * v10);
LABEL_9:
  if (v14 != (v9 + 24 * v10))
  {
    v18 = v14[1];
    v19 = v14[2];
    if (v19)
    {
      atomic_fetch_add_explicit((v19 + 8), 1uLL, memory_order_relaxed);
    }

    *&v67 = v18;
    *(&v67 + 1) = v19;
    v20 = *(v18 + 24);
    if (*(v18 + 16) >= a4)
    {
      if (v20)
      {
LABEL_14:
        if (!*(v20 + 80))
        {
          goto LABEL_22;
        }

LABEL_21:
        operator new();
      }
    }

    else if (*(v20 + 24) >= a4)
    {
      goto LABEL_14;
    }
  }

  if (a4 <= 0x100000)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  LODWORD(v70) = v21;
  *&v71 = &v70;
  v20 = std::__hash_table<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::__unordered_map_hasher<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::hash<GPU::MemrefBufferPool::Kind>,std::equal_to<GPU::MemrefBufferPool::Kind>,true>,std::__unordered_map_equal<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::equal_to<GPU::MemrefBufferPool::Kind>,std::hash<GPU::MemrefBufferPool::Kind>,true>,std::allocator<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>>>::__emplace_unique_key_args<GPU::MemrefBufferPool::Kind,std::piecewise_construct_t const&,std::tuple<GPU::MemrefBufferPool::Kind const&>,std::tuple<>>((a1 + 216), v21, &v71)[3];
  if (*(v20 + 80))
  {
    goto LABEL_21;
  }

LABEL_22:
  v70 = 0uLL;
  v22 = *(&v68 + 1);
  v68 = 0u;
  if (v22 && !atomic_fetch_add(&v22->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v22->__on_zero_shared)(v22);
    std::__shared_weak_count::__release_weak(v22);
  }

  v23 = *(&v70 + 1);
  if (*(&v70 + 1) && !atomic_fetch_add((*(&v70 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v23->__on_zero_shared)(v23);
    std::__shared_weak_count::__release_weak(v23);
    if (v68)
    {
      goto LABEL_28;
    }
  }

  else if (v68)
  {
LABEL_28:
    v24 = (v20 + 64);
    v25 = std::__tree<std::shared_ptr<GPU::MemrefBuffer>,BOOL (*)(std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer>),std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::__lower_bound<std::shared_ptr<GPU::MemrefBuffer>>(v20 + 64, &v68, *(v20 + 72), v20 + 72);
    v26 = v25;
    if (v20 + 72 != v25)
    {
      v27 = *(v20 + 88);
      v71 = v68;
      if (*(&v68 + 1))
      {
        atomic_fetch_add_explicit((*(&v68 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v28 = *(v25 + 40);
      *&v70 = *(v25 + 32);
      *(&v70 + 1) = v28;
      if (v28)
      {
        atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
      }

      v29 = v27(&v71, &v70);
      v30 = *(&v70 + 1);
      if (*(&v70 + 1) && !atomic_fetch_add((*(&v70 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v30->__on_zero_shared)(v30);
        std::__shared_weak_count::__release_weak(v30);
      }

      v31 = *(&v71 + 1);
      if (*(&v71 + 1) && !atomic_fetch_add((*(&v71 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
      {
        (v31->__on_zero_shared)(v31);
        std::__shared_weak_count::__release_weak(v31);
      }

      if ((v29 & 1) == 0)
      {
        v32 = v26[1];
        if (v32)
        {
          do
          {
            v33 = v32;
            v32 = *v32;
          }

          while (v32);
        }

        else
        {
          v44 = v26;
          do
          {
            v33 = v44[2];
            v45 = *v33 == v44;
            v44 = v33;
          }

          while (!v45);
        }

        if (*v24 == v26)
        {
          *v24 = v33;
        }

        v46 = *(v20 + 72);
        --*(v20 + 80);
        std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v46, v26);
        v47 = v26[5];
        if (v47 && !atomic_fetch_add(&v47->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v47->__on_zero_shared)(v47);
          std::__shared_weak_count::__release_weak(v47);
        }

        operator delete(v26);
      }
    }

    v48 = v68;
    *(v20 + 24) -= *(v68 + 8);
    goto LABEL_103;
  }

  v66 = 0uLL;
  if (*(v20 + 8))
  {
    operator new();
  }

  if (*(v67 + 16) < a4 && MTLReportFailureTypeEnabled())
  {
    v65 = a4;
    MTLReportFailure();
  }

  if (*(&v67 + 1))
  {
    atomic_fetch_add_explicit((*(&v67 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v66 = v67;
  v34 = (v20 + 32);
  v35 = std::__tree<std::shared_ptr<GPU::MemrefHeap>,BOOL (*)(std::shared_ptr<GPU::MemrefHeap>,std::shared_ptr<GPU::MemrefHeap>),std::allocator<std::shared_ptr<GPU::MemrefHeap>>>::__lower_bound<std::shared_ptr<GPU::MemrefHeap>>(v20 + 32, &v66, *(v20 + 40), v20 + 40);
  v36 = v35;
  if (v20 + 40 != v35)
  {
    v37 = *(v20 + 56);
    v71 = v66;
    if (*(&v66 + 1))
    {
      atomic_fetch_add_explicit((*(&v66 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    v38 = *(v35 + 40);
    *&v70 = *(v35 + 32);
    *(&v70 + 1) = v38;
    if (v38)
    {
      atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
    }

    v39 = v37(&v71, &v70);
    v40 = *(&v70 + 1);
    if (*(&v70 + 1) && !atomic_fetch_add((*(&v70 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v40->__on_zero_shared)(v40);
      std::__shared_weak_count::__release_weak(v40);
    }

    v41 = *(&v71 + 1);
    if (*(&v71 + 1) && !atomic_fetch_add((*(&v71 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
    {
      (v41->__on_zero_shared)(v41);
      std::__shared_weak_count::__release_weak(v41);
    }

    if ((v39 & 1) == 0)
    {
      v42 = v36[1];
      if (v42)
      {
        do
        {
          v43 = v42;
          v42 = *v42;
        }

        while (v42);
      }

      else
      {
        v49 = v36;
        do
        {
          v43 = v49[2];
          v45 = *v43 == v49;
          v49 = v43;
        }

        while (!v45);
      }

      if (*v34 == v36)
      {
        *v34 = v43;
      }

      v50 = *(v20 + 40);
      --*(v20 + 48);
      std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(v50, v36);
      v51 = v36[5];
      if (v51 && !atomic_fetch_add(&v51->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v51->__on_zero_shared)(v51);
        std::__shared_weak_count::__release_weak(v51);
      }

      operator delete(v36);
    }
  }

  v52 = v66;
  if (*(v66 + 16) < a4 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (*(v52 + 32) == 1)
  {
    if (*(v52 + 40) <= a5)
    {
      v53 = a5;
    }

    else
    {
      v53 = *(v52 + 40);
    }

    if (v53 + a4 > *(v52 + 8) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v54 = [*v52 newBufferWithLength:a4 options:0 offset:{v53, v65}];
    *(v52 + 40) += a4;
  }

  else
  {
    if (a5 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v54 = [*v52 newBufferWithLength:a4 options:{0, v65}];
  }

  if (v54)
  {
    v55 = *v52;
    if (*(v52 + 32) == 1)
    {
      v56 = [v55 size] - *(v52 + 40);
    }

    else
    {
      v56 = [v55 maxAvailableSizeWithAlignment:*(v52 + 48)];
    }

    *(v52 + 16) = v56;
    if (!*std::__tree<std::shared_ptr<GPU::MemrefHeap>,BOOL (*)(std::shared_ptr<GPU::MemrefHeap>,std::shared_ptr<GPU::MemrefHeap>),std::allocator<std::shared_ptr<GPU::MemrefHeap>>>::__find_equal<std::shared_ptr<GPU::MemrefHeap>>(v20 + 32, &v71, &v66))
    {
      operator new();
    }

    operator new();
  }

  v57 = *(&v66 + 1);
  if (*(&v66 + 1) && !atomic_fetch_add((*(&v66 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v57->__on_zero_shared)(v57);
    std::__shared_weak_count::__release_weak(v57);
  }

  v48 = v68;
  if (!v68)
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v48 = 0;
  }

LABEL_103:
  *(v48 + 24) = 1;
  v58 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>,mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>::operator[](a1 + 168, &v69);
  v59 = *(&v68 + 1);
  if (*(&v68 + 1))
  {
    atomic_fetch_add_explicit((*(&v68 + 1) + 8), 1uLL, memory_order_relaxed);
  }

  v60 = v58[1];
  *v58 = v48;
  v58[1] = v59;
  if (v60 && !atomic_fetch_add(&v60->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v60->__on_zero_shared)(v60);
    std::__shared_weak_count::__release_weak(v60);
  }

  v61 = *v68;
  std::recursive_mutex::unlock((a1 + 24));
  v62 = *(&v67 + 1);
  if (*(&v67 + 1) && !atomic_fetch_add((*(&v67 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v62->__on_zero_shared)(v62);
    std::__shared_weak_count::__release_weak(v62);
  }

  v63 = *(&v68 + 1);
  if (*(&v68 + 1) && !atomic_fetch_add((*(&v68 + 1) + 8), 0xFFFFFFFFFFFFFFFFLL))
  {
    (v63->__on_zero_shared)(v63);
    std::__shared_weak_count::__release_weak(v63);
  }

  return v61;
}

void sub_1E07873E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va2, a5);
  va_start(va1, a5);
  va_start(va, a5);
  v7 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  std::recursive_mutex::unlock((v5 + 24));
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va1);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va2);
  _Unwind_Resume(a1);
}

unint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>,mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>::operator[](uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 24 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v12 = 0;
    v13 = 1;
    while (v8 != -4096)
    {
      if (v12)
      {
        v14 = 0;
      }

      else
      {
        v14 = v8 == -8192;
      }

      if (v14)
      {
        v12 = v7;
      }

      v15 = v6 + v13++;
      v6 = v15 & v5;
      v7 = (*a1 + 24 * (v15 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v12)
    {
      v7 = v12;
    }
  }

  else
  {
    v7 = 0;
  }

  v18 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v16 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v16 = a2;
LABEL_24:
    v17 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::LookupBucketFor<mlir::Value>(*v17, *(v17 + 16), *v16, &v18);
    a1 = v17;
    a2 = v16;
    v7 = v18;
    ++*(v17 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  v11 = *a2;
  v7[1] = 0;
  v7[2] = 0;
  *v7 = v11;
  return v7 + 1;
}

uint64_t GPU::MemrefBufferizer::freeBufferForValue(uint64_t a1, unint64_t a2)
{
  v38 = a2;
  v3 = *(a1 + 120);
  v4 = *(a1 + 136);
  if (v4)
  {
    v5 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v6 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v5 >> 47) ^ v5);
    v7 = (v4 - 1) & (-348639895 * ((v6 >> 47) ^ v6));
    v8 = (v3 + 24 * v7);
    v9 = *v8;
    if (*v8 == a2)
    {
      goto LABEL_8;
    }

    v10 = 1;
    while (v9 != -4096)
    {
      v11 = v7 + v10++;
      v7 = v11 & (v4 - 1);
      v8 = (v3 + 24 * v7);
      v9 = *v8;
      if (*v8 == a2)
      {
        goto LABEL_8;
      }
    }
  }

  v8 = (v3 + 24 * v4);
LABEL_8:
  if (v8 != (v3 + 24 * v4))
  {
    v13 = v8[1];
    v12 = v8[2];
    v37 = v12;
    if (v12)
    {
      atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [*v13 setPurgeableState:4];
    *(v13 + 16) = 0;
    v14 = v8[2];
    if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v14->__on_zero_shared)(v14);
      std::__shared_weak_count::__release_weak(v14);
    }

    *v8 = -8192;
    *(a1 + 128) = vadd_s32(*(a1 + 128), 0x1FFFFFFFFLL);
    if (v37)
    {
      if (!atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v37->__on_zero_shared)(v37);
        std::__shared_weak_count::__release_weak(v37);
      }
    }

    return 1;
  }

  result = mlir::Value::getDefiningOp(&v38);
  if (result)
  {
    if (*(*(result + 48) + 16) != &mlir::detail::TypeIDResolver<mlir::memref::ViewOp,void>::id)
    {
      return 0;
    }

    std::recursive_mutex::lock((a1 + 24));
    v16 = *(a1 + 168);
    v17 = *(a1 + 184);
    if (v17)
    {
      v18 = 0x9DDFEA08EB382D69 * ((8 * v38 - 0xAE502812AA7333) ^ HIDWORD(v38));
      v19 = 0x9DDFEA08EB382D69 * (HIDWORD(v38) ^ (v18 >> 47) ^ v18);
      v20 = (-348639895 * ((v19 >> 47) ^ v19)) & (v17 - 1);
      v21 = (v16 + 24 * v20);
      v22 = *v21;
      if (v38 == *v21)
      {
        goto LABEL_28;
      }

      v23 = 1;
      while (v22 != -4096)
      {
        v24 = v20 + v23++;
        v20 = v24 & (v17 - 1);
        v21 = (v16 + 24 * v20);
        v22 = *v21;
        if (v38 == *v21)
        {
          goto LABEL_28;
        }
      }
    }

    v21 = (v16 + 24 * v17);
LABEL_28:
    if (v21 == (v16 + 24 * v17) && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v25 = v21[1];
    v26 = *(*(v25 + 32) + 24);
    if (*(v26 + 8))
    {
      if ((std::__hash_table<std::shared_ptr<GPU::MemrefBuffer>,std::hash<std::shared_ptr<GPU::MemrefBuffer>>,std::equal_to<std::shared_ptr<GPU::MemrefBuffer>>,std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::__emplace_unique_key_args<std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer> const&>((v26 + 96), v25, v21 + 1) & 1) == 0 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v27 = *(a1 + 160);
      if (v27)
      {
        v28 = *(a1 + 144);
        v29 = HIDWORD(*v21);
        v30 = 0x9DDFEA08EB382D69 * ((8 * *v21 - 0xAE502812AA7333) ^ v29);
        v31 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v29 ^ (v30 >> 47) ^ v30)) >> 32) >> 15) ^ (-348639895 * (v29 ^ (v30 >> 47) ^ v30)))) & (v27 - 1);
        v32 = *(v28 + 16 * v31);
        if (v32 == *v21)
        {
LABEL_33:
          if (v31 != v27)
          {
            v33 = v28 + 16 * v31;

            *v33 = -8192;
            *(a1 + 152) = vadd_s32(*(a1 + 152), 0x1FFFFFFFFLL);
          }
        }

        else
        {
          v35 = 1;
          while (v32 != -4096)
          {
            v36 = v31 + v35++;
            v31 = v36 & (v27 - 1);
            v32 = *(v28 + 16 * v31);
            if (v32 == *v21)
            {
              goto LABEL_33;
            }
          }
        }
      }

      v34 = v21[2];
      if (v34 && !atomic_fetch_add(&v34->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v34->__on_zero_shared)(v34);
        std::__shared_weak_count::__release_weak(v34);
      }

      *v21 = -8192;
      *(a1 + 176) = vadd_s32(*(a1 + 176), 0x1FFFFFFFFLL);
    }

    std::recursive_mutex::unlock((a1 + 24));
    return 1;
  }

  return result;
}

void sub_1E0787B1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void GPU::MemrefBufferizer::freeActiveBuffers(GPU::MemrefBufferizer *this)
{
  std::recursive_mutex::lock((this + 24));
  if (*(this + 44))
  {
    v2 = *(this + 21);
    v3 = *(this + 46);
    v4 = v2;
    if (*(this + 46))
    {
      v5 = 24 * v3;
      v4 = *(this + 21);
      while ((*v4 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v4 += 3;
        v5 -= 24;
        if (!v5)
        {
          goto LABEL_33;
        }
      }
    }

    v6 = &v2[3 * v3];
    if (v4 != v6)
    {
      do
      {
        v7 = v4[1];
        v8 = *(*(v7 + 32) + 24);
        if (*(v8 + 8))
        {
          if ((std::__hash_table<std::shared_ptr<GPU::MemrefBuffer>,std::hash<std::shared_ptr<GPU::MemrefBuffer>>,std::equal_to<std::shared_ptr<GPU::MemrefBuffer>>,std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::__emplace_unique_key_args<std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer> const&>((v8 + 96), v7, v4 + 1) & 1) == 0 && MTLReportFailureTypeEnabled())
          {
            MTLReportFailure();
          }

          v9 = *(this + 40);
          if (v9)
          {
            v10 = *(this + 18);
            v11 = HIDWORD(*v4);
            v12 = 0x9DDFEA08EB382D69 * ((8 * *v4 - 0xAE502812AA7333) ^ v11);
            v13 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v11 ^ (v12 >> 47) ^ v12)) >> 32) >> 15) ^ (-348639895 * (v11 ^ (v12 >> 47) ^ v12)))) & (v9 - 1);
            v14 = *(v10 + 16 * v13);
            if (v14 == *v4)
            {
LABEL_15:
              if (v13 != v9)
              {
                v15 = v10 + 16 * v13;

                *v15 = -8192;
                *(this + 19) = vadd_s32(*(this + 152), 0x1FFFFFFFFLL);
              }
            }

            else
            {
              v18 = 1;
              while (v14 != -4096)
              {
                v19 = v13 + v18++;
                v13 = v19 & (v9 - 1);
                v14 = *(v10 + 16 * v13);
                if (v14 == *v4)
                {
                  goto LABEL_15;
                }
              }
            }
          }

          for (i = v4 + 3; i != v6; i += 3)
          {
            if ((*i | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              break;
            }
          }

          v17 = v4[2];
          if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v17->__on_zero_shared)(v17);
            std::__shared_weak_count::__release_weak(v17);
          }

          *v4 = -8192;
          *(this + 22) = vadd_s32(*(this + 176), 0x1FFFFFFFFLL);
          v2 = *(this + 21);
          v3 = *(this + 46);
        }

        else
        {
          for (i = v4 + 3; i != v6; i += 3)
          {
            if ((*i | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              break;
            }
          }
        }

        v4 = i;
      }

      while (i != &v2[3 * v3]);
    }
  }

LABEL_33:

  std::recursive_mutex::unlock((this + 24));
}

void GPU::MemrefBufferizer::freeInactiveBuffers(GPU::MemrefBufferizer *this)
{
  std::recursive_mutex::lock((this + 24));
  v2 = *(this + 29);
  if (v2)
  {
    while (1)
    {
      v33 = v2;
      v3 = v2[3];
      if (v3[15])
      {
        v4 = v3[14];
        if (v4)
        {
          break;
        }
      }

LABEL_3:
      v2 = *v33;
      if (!*v33)
      {
        goto LABEL_74;
      }
    }

    v5 = v3 + 9;
    while (1)
    {
      v6 = v4;
      v7 = v4[3];
      v34 = v4[2];
      v35 = v7;
      if (v7)
      {
        atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v8 = v3[13];
      v4 = *v4;
      v9 = v6[1];
      v10 = vcnt_s8(v8);
      v10.i16[0] = vaddlv_u8(v10);
      if (v10.u32[0] > 1uLL)
      {
        if (v9 >= *&v8)
        {
          v9 %= *&v8;
        }
      }

      else
      {
        v9 &= *&v8 - 1;
      }

      v11 = v3[12];
      v12 = *(v11 + 8 * v9);
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12 != v6);
      if (v13 == v3 + 14)
      {
        goto LABEL_77;
      }

      v14 = v13[1];
      if (v10.u32[0] > 1uLL)
      {
        if (v14 >= *&v8)
        {
          v14 %= *&v8;
        }
      }

      else
      {
        v14 &= *&v8 - 1;
      }

      v15 = *v6;
      if (v14 != v9)
      {
LABEL_77:
        if (v4)
        {
          v16 = v4[1];
          if (v10.u32[0] > 1uLL)
          {
            v17 = v4[1];
            if (v16 >= *&v8)
            {
              v17 = v16 % *&v8;
            }
          }

          else
          {
            v17 = v16 & (*&v8 - 1);
          }

          v15 = *v6;
          if (v17 == v9)
          {
            goto LABEL_31;
          }
        }

        *(v11 + 8 * v9) = 0;
        v15 = *v6;
      }

      if (!v15)
      {
        goto LABEL_37;
      }

      v16 = *(v15 + 8);
LABEL_31:
      if (v10.u32[0] > 1uLL)
      {
        if (v16 >= *&v8)
        {
          v16 %= *&v8;
        }
      }

      else
      {
        v16 &= *&v8 - 1;
      }

      if (v16 != v9)
      {
        *(v11 + 8 * v16) = v13;
        v15 = *v6;
      }

LABEL_37:
      *v13 = v15;
      *v6 = 0;
      --v3[15];
      v18 = v6[3];
      if (!v18 || atomic_fetch_add(&v18->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        operator delete(v6);
        v19 = *v5;
        v20 = v3 + 9;
        if (*v5)
        {
          goto LABEL_40;
        }

        goto LABEL_67;
      }

      v32 = v6;
      (v18->__on_zero_shared)(v18);
      std::__shared_weak_count::__release_weak(v18);
      operator delete(v32);
      v19 = *v5;
      v20 = v3 + 9;
      if (*v5)
      {
LABEL_40:
        v20 = v3 + 9;
        while (1)
        {
          v21 = v19;
          v22 = v3[11];
          v42 = v34;
          v43 = v35;
          if (v35)
          {
            atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v23 = v21[5];
          v40 = v21[4];
          v41 = v23;
          if (v23)
          {
            atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v24 = v22(&v42, &v40);
          v25 = v41;
          if (v41 && !atomic_fetch_add(&v41->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v25->__on_zero_shared)(v25);
            std::__shared_weak_count::__release_weak(v25);
            v26 = v43;
            if (v43)
            {
LABEL_49:
              if (!atomic_fetch_add(&v26->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
              {
                (v26->__on_zero_shared)(v26);
                std::__shared_weak_count::__release_weak(v26);
              }
            }
          }

          else
          {
            v26 = v43;
            if (v43)
            {
              goto LABEL_49;
            }
          }

          if (v24)
          {
            v19 = *v21;
            v20 = v21;
            if (!*v21)
            {
              break;
            }
          }

          else
          {
            v27 = v3[11];
            v28 = v21[5];
            v38 = v21[4];
            v39 = v28;
            if (v28)
            {
              atomic_fetch_add_explicit(&v28->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v36 = v34;
            v37 = v35;
            if (v35)
            {
              atomic_fetch_add_explicit(&v35->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v29 = v27(&v38, &v36);
            v30 = v37;
            if (v37 && !atomic_fetch_add(&v37->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v30->__on_zero_shared)(v30);
              std::__shared_weak_count::__release_weak(v30);
              v31 = v39;
              if (v39)
              {
LABEL_60:
                if (!atomic_fetch_add(&v31->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
                {
                  (v31->__on_zero_shared)(v31);
                  std::__shared_weak_count::__release_weak(v31);
                }
              }
            }

            else
            {
              v31 = v39;
              if (v39)
              {
                goto LABEL_60;
              }
            }

            if (!v29)
            {
              break;
            }

            v20 = v21 + 1;
            v19 = v21[1];
            if (!v19)
            {
              break;
            }
          }
        }
      }

LABEL_67:
      if (!*v20)
      {
        operator new();
      }

      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }

      v3[3] += *(v34 + 8);
      *(v34 + 24) = 0;
      if (v35 && !atomic_fetch_add(&v35->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v35->__on_zero_shared)(v35);
        std::__shared_weak_count::__release_weak(v35);
      }

      if (!v4)
      {
        goto LABEL_3;
      }
    }
  }

LABEL_74:
  std::recursive_mutex::unlock((this + 24));
}

void sub_1E0788498(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  std::recursive_mutex::unlock((a4 + 24));
  _Unwind_Resume(a1);
}

MPSGraphTensorData *GPU::MemrefBufferizer::createViewTensorDataForStridedValue(uint64_t a1, unint64_t a2, void *a3, GPU::EncodeDescriptor *a4, int a5)
{
  v110 = a1;
  v130 = *MEMORY[0x1E69E9840];
  v111 = a3;
  v113 = (*(a2 + 8) & 0xFFFFFFFFFFFFFFF8);
  Value = mlir::ArrayAttr::getValue(&v113);
  v10 = v9;
  mlir::getStridesAndOffset(v113, &v126);
  if ((!v10 || !v127) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  MPSDataType = getMPSDataType(v113);
  v12 = MEMORY[0x1E69744C8];
  v13 = *&v111[*MEMORY[0x1E69744C8]] >> 3;
  v14 = MPSDataType >> 3;
  v106 = a2;
  v109 = a4;
  v108 = a5;
  if (v13 < v14 && v129 % v14)
  {
    v107 = &v106;
    if (v10)
    {
      v15 = 0;
      v16 = v126;
      v17 = 1;
      v18 = MEMORY[0x1E6974508];
      v19 = MEMORY[0x1E69744D8];
      v20 = MEMORY[0x1E6974518];
      v21 = v111;
      do
      {
        v22 = &v21[*v18];
        v112 = *&v21[*v19];
        v23 = *(&v112 | v15 & 0xF);
        v24 = *&v22[4 * (v23 & 0xF)];
        v16[v15] = *&v21[8 * ((v10 + ~v23) & 0xF) + *v20];
        v17 *= v24;
        ++v15;
      }

      while (v10 != v15);
    }

    else
    {
      v17 = 1;
      v21 = v111;
    }

    v37 = MEMORY[0x1E6974490];
    v38 = *&v21[*v12];
    v39 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{v17, v106, v107}];
    v125 = v39;
    v40 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v125 count:1];
    v41 = [v37 descriptorWithDataType:v38 shape:v40];

    [v41 setPreferPackedRows:1];
    v36 = [MEMORY[0x1E69744A8] temporaryNDArrayWithCommandBuffer:*(a4 + 1) descriptor:v41];
    *&v111[*MEMORY[0x1E69744F8]] = v129;
    v42 = *(v110 + 112);
    v43 = GPU::EncodeDescriptor::getcomputeEncoder(a4);
    v44 = *(a4 + 1);
    v124 = v111;
    v45 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v124 count:1];
    [v42 encodeToMPSCommandEncoder:v43 commandBuffer:v44 sourceArrays:v45 destinationArray:v36];

    v129 = 0;
  }

  else
  {
    v25 = MEMORY[0x1E6974490];
    v26 = MEMORY[0x1E696AD98];
    v27 = mlir::ArrayAttr::getValue(&v113);
    v29 = [v26 numberWithLongLong:{mlir::ShapedType::getNumElements(v27, v28), v106}];
    v123 = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v123 count:1];
    v31 = [v25 descriptorWithDataType:MPSDataType shape:v30];

    [v31 setPreferPackedRows:1];
    v32 = v129;
    v33 = *&v111[*v12];
    v34 = objc_alloc(MEMORY[0x1E6974488]);
    v35 = [v111 buffer];
    v36 = [v34 initWithBuffer:v35 offset:v32 * (v33 >> 3) descriptor:v31];
  }

  v46 = v122;
  v120 = v122;
  v121 = 0x600000000;
  v107 = v122;
  if (!v10)
  {
    v49 = v122;
LABEL_24:
    v50 = 0;
    v54 = 0;
    v117 = &v126;
LABEL_35:
    std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v46, v49, &v117, v50, 0, v54);
    goto LABEL_36;
  }

  if (v10 < 7)
  {
    v47 = 0;
    v48 = v10;
    goto LABEL_20;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v120, v122, v10, 8);
  v47 = v121;
  v46 = v120;
  v48 = v10 - v121;
  if (v10 != v121)
  {
LABEL_20:
    bzero(&v46[v47], 8 * v48);
  }

  LODWORD(v121) = v10;
  v49 = &v46[v10];
  if (!v10)
  {
    goto LABEL_24;
  }

  v50 = v10;
  v51 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v51 < 3)
  {
    v52 = 0;
    v53 = v46;
    do
    {
LABEL_28:
      *v53++ = v52++;
    }

    while (v53 != v49);
    goto LABEL_29;
  }

  v55 = v51 + 1;
  v52 = (v51 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v53 = &v46[v52];
  v56 = xmmword_1E09700F0;
  v57 = (v46 + 2);
  v58 = vdupq_n_s64(2uLL);
  v59 = vdupq_n_s64(4uLL);
  v60 = v52;
  do
  {
    v57[-1] = v56;
    *v57 = vaddq_s64(v56, v58);
    v56 = vaddq_s64(v56, v59);
    v57 += 2;
    v60 -= 4;
  }

  while (v60);
  if (v55 != v52)
  {
    goto LABEL_28;
  }

LABEL_29:
  v117 = &v126;
  if (v10 < 0x81)
  {
    v54 = 0;
    goto LABEL_35;
  }

  v61 = MEMORY[0x1E69E5398];
  v62 = v10;
  while (1)
  {
    v63 = operator new(8 * v62, v61);
    if (v63)
    {
      break;
    }

    v54 = v62 >> 1;
    v64 = v62 > 1;
    v62 >>= 1;
    if (!v64)
    {
      v49 = &v46[v10];
      v50 = v10;
      goto LABEL_35;
    }
  }

  v105 = v63;
  std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v46, &v46[v10], &v117, v10, v63, v62);
  operator delete(v105);
LABEL_36:
  v65 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
  v66 = [MEMORY[0x1E695DF70] arrayWithCapacity:v10];
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      v68 = [MEMORY[0x1E696AD98] numberWithInteger:v126[*(v120 + i)]];
      [v65 setObject:v68 atIndexedSubscript:i];

      v69 = [MEMORY[0x1E696AD98] numberWithInteger:*(Value + 8 * *(v120 + i))];
      [v66 setObject:v69 atIndexedSubscript:i];
    }
  }

  v70 = v10 - 1;
  v71 = v126[*(v120 + v10 - 1)];
  if (v71 != 1)
  {
    v72 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    [v65 addObject:v72];

    v73 = [MEMORY[0x1E696AD98] numberWithInteger:1];
    [v66 addObject:v73];
  }

  v74 = [v36 arrayViewWithShape:v66 strides:v65];

  if (!v74 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if (v71 == 1)
  {
    v75 = v74;
    v117 = v119;
    v118 = 0x600000000;
    if (v10)
    {
      goto LABEL_44;
    }

LABEL_48:
    v114 = v116;
    v115 = 0x600000000;
    goto LABEL_65;
  }

  [v66 removeObjectAtIndex:{objc_msgSend(v66, "count") - 1}];
  v79 = [*(v110 + 112) reshapeWithCommandBuffer:0 sourceArray:v74 shape:v66 destinationArray:0];

  v75 = v79;
  v117 = v119;
  v118 = 0x600000000;
  if (!v10)
  {
    goto LABEL_48;
  }

LABEL_44:
  if (v10 >= 7)
  {
    llvm::SmallVectorBase<unsigned int>::grow_pod(&v117, v119, v10, 8);
    v76 = v118;
    v77 = v117;
    v78 = v10 - v118;
    if (v10 == v118)
    {
      goto LABEL_51;
    }

    goto LABEL_50;
  }

  v76 = 0;
  v77 = v119;
  v78 = v10;
  if (v10)
  {
LABEL_50:
    bzero(&v77[8 * v76], 8 * v78);
  }

LABEL_51:
  v80 = 0;
  LODWORD(v118) = v10;
  v81 = v120;
  do
  {
    *&v77[8 * v81[v80]] = v80;
    ++v80;
  }

  while (v10 != v80);
  v114 = v116;
  v115 = 0x600000000;
  if (v10 < 7)
  {
    v82 = 0;
    v83 = v116;
    v84 = v10;
    if (!v10)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  llvm::SmallVectorBase<unsigned int>::grow_pod(&v114, v116, v10, 8);
  v82 = v115;
  v83 = v114;
  v84 = v10 - v115;
  if (v10 != v115)
  {
LABEL_57:
    bzero(v83 + 8 * v82, 8 * v84);
  }

LABEL_58:
  LODWORD(v115) = v10;
  if (!v10)
  {
    goto LABEL_65;
  }

  v85 = (v10 - 1) & 0x1FFFFFFFFFFFFFFFLL;
  if (v85 < 3)
  {
    v86 = 0;
    v87 = v83;
    do
    {
LABEL_64:
      *v87++ = v86++;
    }

    while (v87 != (v83 + 8 * v10));
    goto LABEL_65;
  }

  v88 = v85 + 1;
  v86 = (v85 + 1) & 0x3FFFFFFFFFFFFFFCLL;
  v87 = &v83->i64[v86];
  v89 = xmmword_1E09700F0;
  v90 = v83 + 1;
  v91 = vdupq_n_s64(2uLL);
  v92 = vdupq_n_s64(4uLL);
  v93 = v86;
  do
  {
    v90[-1] = v89;
    *v90 = vaddq_s64(v89, v91);
    v89 = vaddq_s64(v89, v92);
    v90 += 2;
    v93 -= 4;
  }

  while (v93);
  if (v88 != v86)
  {
    goto LABEL_64;
  }

LABEL_65:
  v94 = [v75 descriptor];
  [v94 setDataType:getMPSDataType(v113)];
  if (v10 >= 1)
  {
    do
    {
      v101 = v114 + 8 * v115;
      v102 = v114;
      if (v115)
      {
        v103 = 8 * v115;
        v102 = v114;
        while (*v102 != *(v117 + v70))
        {
          v102 += 8;
          v103 -= 8;
          if (!v103)
          {
            v102 = v114 + 8 * v115;
            break;
          }
        }
      }

      v104 = *(v114 + v70);
      *(v114 + v70) = *v102;
      *v102 = v104;
      if (v10 + ~v70 != ((v101 - v102) >> 3) - 1)
      {
        [v94 transposeDimension:? withDimension:?];
      }

      v64 = v70-- <= 0;
    }

    while (!v64);
  }

  v95 = 1;
  if (!v129)
  {
    v95 = 2;
  }

  if (v108)
  {
    v96 = 1;
  }

  else
  {
    v96 = v95;
  }

  v97 = [v75 safeArrayViewWithCommandBuffer:*(v109 + 1) descriptor:v94 aliasing:v96];
  if (!v97 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v98 = [MPSGraphTensorData alloc];
  v99 = [(MPSGraphTensorData *)v98 initWithMPSNDArray:v97 device:*(v110 + 16)];
  if (v99)
  {
    GPU::MemrefBufferizer::setTensorDataForMemref(v110, v106, v99);
  }

  if (v114 != v116)
  {
    free(v114);
  }

  if (v117 != v119)
  {
    free(v117);
  }

  if (v120 != v107)
  {
    free(v120);
  }

  if (v126 != &v128)
  {
    free(v126);
  }

  return v99;
}

void sub_1E0788F48(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, _Unwind_Exception *exception_object, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  if (a19 != v35)
  {
    free(a19);
  }

  if (a27 != v39)
  {
    free(a27);
  }

  if (a35 != a10)
  {
    free(a35);
  }

  v43 = *(v42 - 184);
  if (v43 != (v42 - 168))
  {
    free(v43);
  }

  _Unwind_Resume(a1);
}

uint64_t GPU::MemrefBufferizer::setTensorDataForMemref(uint64_t a1, unint64_t a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v8 = *(a1 + 144);
  v7 = a1 + 144;
  v6 = v8;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v11 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v10 >> 47) ^ v10);
    v12 = (v9 - 1) & (-348639895 * ((v11 >> 47) ^ v11));
    v13 = *(v6 + 16 * v12);
    if (v13 == a2)
    {
LABEL_3:
      if (v12 != v9 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    else
    {
      v14 = 1;
      while (v13 != -4096)
      {
        v15 = v12 + v14++;
        v12 = v15 & (v9 - 1);
        v13 = *(v6 + 16 * v12);
        if (v13 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::operator[](v7, &v17) = v5;

  return MEMORY[0x1EEE66BB8]();
}

unint64_t *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::operator[](uint64_t a1, unint64_t *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = HIDWORD(*a2);
    v4 = 0x9DDFEA08EB382D69 * ((8 * *a2 - 0xAE502812AA7333) ^ v3);
    LODWORD(v3) = -348639895 * ((((0x9DDFEA08EB382D69 * (v3 ^ (v4 >> 47) ^ v4)) >> 32) >> 15) ^ (-348639895 * (v3 ^ (v4 >> 47) ^ v4)));
    v5 = v2 - 1;
    v6 = v3 & (v2 - 1);
    v7 = (*a1 + 16 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      return v7 + 1;
    }

    v11 = 0;
    v12 = 1;
    while (v8 != -4096)
    {
      if (v11)
      {
        v13 = 0;
      }

      else
      {
        v13 = v8 == -8192;
      }

      if (v13)
      {
        v11 = v7;
      }

      v14 = v6 + v12++;
      v6 = v14 & v5;
      v7 = (*a1 + 16 * (v14 & v5));
      v8 = *v7;
      if (*a2 == *v7)
      {
        return v7 + 1;
      }
    }

    if (v11)
    {
      v7 = v11;
    }
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  v10 = *(a1 + 8);
  if (4 * v10 + 4 >= 3 * v2)
  {
    v15 = a2;
    v2 *= 2;
    goto LABEL_24;
  }

  if (v2 + ~v10 - *(a1 + 12) <= v2 >> 3)
  {
    v15 = a2;
LABEL_24:
    v16 = a1;
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::grow(a1, v2);
    llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::LookupBucketFor<mlir::Value>(*v16, *(v16 + 16), *v15, &v17);
    a1 = v16;
    a2 = v15;
    v7 = v17;
    ++*(v16 + 8);
    if (*v7 == -4096)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  *(a1 + 8) = v10 + 1;
  if (*v7 != -4096)
  {
LABEL_8:
    --*(a1 + 12);
  }

LABEL_9:
  *v7 = *a2;
  v7[1] = 0;
  return v7 + 1;
}

id GPU::MemrefBufferizer::getTensorDataForMemrefAtOffset(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = a2;
  v5 = *(a1 + 120);
  v6 = *(a1 + 136);
  if (!v6)
  {
LABEL_7:
    v10 = (v5 + 24 * v6);
    goto LABEL_8;
  }

  v7 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
  v8 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v7 >> 47) ^ v7);
  v9 = (v6 - 1) & (-348639895 * ((v8 >> 47) ^ v8));
  v10 = (v5 + 24 * v9);
  v11 = *v10;
  if (*v10 != a3)
  {
    v12 = 1;
    while (v11 != -4096)
    {
      v13 = v9 + v12++;
      v9 = v13 & (v6 - 1);
      v10 = (v5 + 24 * v9);
      v11 = *v10;
      if (*v10 == a3)
      {
        goto LABEL_8;
      }
    }

    goto LABEL_7;
  }

LABEL_8:
  if (v10 == (v5 + 24 * v6))
  {
    v38 = a4;
    v39 = MTLReportFailureTypeEnabled();
    a4 = v38;
    if (v39)
    {
      MTLReportFailure();
      a4 = v38;
    }
  }

  v14 = v10[1];
  v15 = v10[2];
  if (v15)
  {
    atomic_fetch_add_explicit(&v15->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (*(v14 + 40) <= a4)
  {
    v21 = 0;
    if (!v15)
    {
      goto LABEL_53;
    }

    goto LABEL_51;
  }

  v16 = *(a1 + 168);
  v17 = *(a1 + 184);
  v18 = (v16 + 24 * v17);
  if (*(a1 + 176))
  {
    v19 = *(a1 + 168);
    if (v17)
    {
      v20 = 24 * v17;
      v19 = *(a1 + 168);
      while ((*v19 | 0x1000) == 0xFFFFFFFFFFFFF000)
      {
        v19 += 3;
        v20 -= 24;
        if (!v20)
        {
          goto LABEL_33;
        }
      }
    }

    if (v19 != v18)
    {
LABEL_21:
      v22 = v19[1];
      v23 = v19[2];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        v24 = *(v22 + 16);
        if (atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          if (v24 != a4)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v25 = a4;
          (v23->__on_zero_shared)(v23);
          std::__shared_weak_count::__release_weak(v23);
          a4 = v25;
          if (v24 != v25)
          {
LABEL_28:
            while (1)
            {
              v19 += 3;
              if (v19 == v18)
              {
                break;
              }

              if ((*v19 | 0x1000) != 0xFFFFFFFFFFFFF000)
              {
                if (v19 != v18)
                {
                  goto LABEL_21;
                }

                break;
              }
            }

            v19 = v18;
          }
        }
      }

      else if (*(v22 + 16) != a4)
      {
        goto LABEL_28;
      }

      v16 = *(a1 + 168);
      LODWORD(v17) = *(a1 + 184);
      v18 = v19;
    }
  }

LABEL_33:
  if (v18 == (v16 + 24 * v17) && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v26 = *(a1 + 144);
  v27 = *(a1 + 160);
  if (v27)
  {
    v28 = HIDWORD(*v18);
    v29 = 0x9DDFEA08EB382D69 * ((8 * *v18 - 0xAE502812AA7333) ^ v28);
    v30 = (-348639895 * ((((0x9DDFEA08EB382D69 * (v28 ^ (v29 >> 47) ^ v29)) >> 32) >> 15) ^ (-348639895 * (v28 ^ (v29 >> 47) ^ v29)))) & (v27 - 1);
    v31 = *(v26 + 16 * v30);
    if (v31 == *v18)
    {
LABEL_36:
      v32 = v30 == v27;
      v27 = v30;
      if (!v32)
      {
        goto LABEL_40;
      }
    }

    else
    {
      v40 = 1;
      while (v31 != -4096)
      {
        v41 = v30 + v40++;
        v30 = v41 & (v27 - 1);
        v31 = *(v26 + 16 * v30);
        if (v31 == *v18)
        {
          goto LABEL_36;
        }
      }
    }
  }

  if (MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

LABEL_40:
  v34 = v18[1];
  v33 = v18[2];
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v21 = *(v26 + 16 * v27 + 8);
  GPU::MemrefBufferizer::setTensorDataForMemref(a1, v42, v21);
  v35 = llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>,mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>::operator[](a1 + 168, &v42);
  if (v33)
  {
    atomic_fetch_add_explicit(&v33->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v36 = v35[1];
  *v35 = v34;
  v35[1] = v33;
  if (v36 && !atomic_fetch_add(&v36->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v36->__on_zero_shared)(v36);
    std::__shared_weak_count::__release_weak(v36);
  }

  if (v33 && !atomic_fetch_add(&v33->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v33->__on_zero_shared)(v33);
    std::__shared_weak_count::__release_weak(v33);
  }

  if (v15)
  {
LABEL_51:
    if (!atomic_fetch_add(&v15->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      (v15->__on_zero_shared)(v15);
      std::__shared_weak_count::__release_weak(v15);
    }
  }

LABEL_53:

  return v21;
}

void sub_1E07898D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E07898EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E0789900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v5 = va_arg(va1, void);
  v7 = va_arg(va1, void);

  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

uint64_t GPU::MemrefBufferizer::setTensorDataForMemrefBackedResult(uint64_t a1, unint64_t a2, void *a3)
{
  v17 = a2;
  v5 = a3;
  v8 = *(a1 + 192);
  v7 = a1 + 192;
  v6 = v8;
  v9 = *(v7 + 16);
  if (v9)
  {
    v10 = 0x9DDFEA08EB382D69 * ((8 * a2 - 0xAE502812AA7333) ^ HIDWORD(a2));
    v11 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v10 >> 47) ^ v10);
    v12 = (v9 - 1) & (-348639895 * ((v11 >> 47) ^ v11));
    v13 = *(v6 + 16 * v12);
    if (v13 == a2)
    {
LABEL_3:
      if (v12 != v9 && MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }

    else
    {
      v14 = 1;
      while (v13 != -4096)
      {
        v15 = v12 + v14++;
        v12 = v15 & (v9 - 1);
        v13 = *(v6 + 16 * v12);
        if (v13 == a2)
        {
          goto LABEL_3;
        }
      }
    }
  }

  if (!v5 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::operator[](v7, &v17) = v5;

  return MEMORY[0x1EEE66BB8]();
}

void llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 24 * v2;
    v5 = (v3 + 16);
    do
    {
      if ((*(v5 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v5;
        if (*v5)
        {
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }
        }
      }

      v5 += 3;
      v4 -= 24;
    }

    while (v4);
    v3 = *a1;
    v7 = 24 * *(a1 + 16);
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

void llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefBuffer>>>::~DenseMap(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *a1;
  if (v2)
  {
    v4 = 24 * v2;
    v5 = (v3 + 16);
    do
    {
      if ((*(v5 - 2) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v6 = *v5;
        if (*v5)
        {
          if (!atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v6->__on_zero_shared)(v6);
            std::__shared_weak_count::__release_weak(v6);
          }
        }
      }

      v5 += 3;
      v4 -= 24;
    }

    while (v4);
    v3 = *a1;
    v7 = 24 * *(a1 + 16);
  }

  else
  {
    v7 = 0;
  }

  llvm::deallocate_buffer(v3, v7);
}

uint64_t std::unordered_map<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>::~unordered_map[abi:ne200100](uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      v2[3] = 0;
      if (v6)
      {
        std::default_delete<GPU::MemrefBufferPool>::operator()[abi:ne200100]((v2 + 3), v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

BOOL GPU::MemrefHeap::Comparator(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 16);
  v3 = *(*a2 + 16);
  v4 = v2 >= v3;
  if (v2 == v3)
  {
    v4 = **a1 >= **a2;
  }

  return !v4;
}

void std::__hash_table<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::__unordered_map_hasher<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::hash<GPU::MemrefBufferPool::Kind>,std::equal_to<GPU::MemrefBufferPool::Kind>,true>,std::__unordered_map_equal<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::equal_to<GPU::MemrefBufferPool::Kind>,std::hash<GPU::MemrefBufferPool::Kind>,true>,std::allocator<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>>>::__emplace_unique_key_args<GPU::MemrefBufferPool::Kind,GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>(void *a1, int a2, _DWORD *a3, uint64_t *a4)
{
  v4 = a1[1];
  if (!v4)
  {
    goto LABEL_22;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = a2;
    if (v4 <= a2)
    {
      v6 = a2 % v4;
    }
  }

  else
  {
    v6 = (v4 - 1) & a2;
  }

  v7 = *(*a1 + 8 * v6);
  if (!v7 || (v8 = *v7) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v5.u32[0] < 2uLL)
  {
    while (1)
    {
      v9 = v8[1];
      if (v9 == a2)
      {
        if (*(v8 + 4) == a2)
        {
          return;
        }
      }

      else if ((v9 & (v4 - 1)) != v6)
      {
        goto LABEL_22;
      }

      v8 = *v8;
      if (!v8)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v10 = v8[1];
    if (v10 == a2)
    {
      break;
    }

    if (v10 >= v4)
    {
      v10 %= v4;
    }

    if (v10 != v6)
    {
      goto LABEL_22;
    }

LABEL_17:
    v8 = *v8;
    if (!v8)
    {
      goto LABEL_22;
    }
  }

  if (*(v8 + 4) != a2)
  {
    goto LABEL_17;
  }
}

void sub_1E078A030(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      v2[3] = 0;
      if (v4)
      {
        v5 = v2;
        std::default_delete<GPU::MemrefBufferPool>::operator()[abi:ne200100]((v2 + 3), v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

void std::__shared_ptr_emplace<GPU::MemrefHeap>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B4BAA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12E5B90);
}

uint64_t *std::__hash_table<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::__unordered_map_hasher<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::hash<GPU::MemrefBufferPool::Kind>,std::equal_to<GPU::MemrefBufferPool::Kind>,true>,std::__unordered_map_equal<GPU::MemrefBufferPool::Kind,std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,std::equal_to<GPU::MemrefBufferPool::Kind>,std::hash<GPU::MemrefBufferPool::Kind>,true>,std::allocator<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>>>::__emplace_unique_key_args<GPU::MemrefBufferPool::Kind,std::piecewise_construct_t const&,std::tuple<GPU::MemrefBufferPool::Kind const&>,std::tuple<>>(void *a1, int a2, _DWORD **a3)
{
  v3 = a1[1];
  if (!v3)
  {
    goto LABEL_22;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % v3;
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v4.u32[0] < 2uLL)
  {
    while (1)
    {
      v8 = v7[1];
      if (v8 == a2)
      {
        if (*(v7 + 4) == a2)
        {
          return v7;
        }
      }

      else if ((v8 & (v3 - 1)) != v5)
      {
        goto LABEL_22;
      }

      v7 = *v7;
      if (!v7)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v9 = v7[1];
    if (v9 == a2)
    {
      break;
    }

    if (v9 >= v3)
    {
      v9 %= v3;
    }

    if (v9 != v5)
    {
      goto LABEL_22;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_22;
    }
  }

  if (*(v7 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void sub_1E078A438(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<GPU::MemrefBufferPool::Kind,std::unique_ptr<GPU::MemrefBufferPool>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::LookupBucketFor<mlir::Value>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (result + 24 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
LABEL_3:
      *a4 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v9 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == -8192;
        }

        if (v12)
        {
          v10 = v8;
        }

        v13 = v7 + v11++;
        v7 = v13 & v6;
        v8 = (result + 24 * (v13 & v6));
        v9 = *v8;
        if (*v8 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v10)
      {
        v8 = v10;
      }

      *a4 = v8;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>,mlir::Value,std::shared_ptr<GPU::MemrefHeap>,llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,std::shared_ptr<GPU::MemrefHeap>>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(24 * v8, 8uLL);
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v10 = *(a1 + 16);
    if (!v10)
    {
      goto LABEL_16;
    }

    v11 = 24 * v10 - 24;
    if (v11 >= 0x18)
    {
      v16 = v11 / 0x18 + 1;
      v12 = &result[3 * (v16 & 0x1FFFFFFFFFFFFFFELL)];
      v17 = result;
      v18 = v16 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *v17 = -4096;
        v17[3] = -4096;
        v17 += 6;
        v18 -= 2;
      }

      while (v18);
      if (v16 == (v16 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_16:
        if (v3)
        {
          v20 = v4;
          do
          {
            v26 = *v20;
            if ((*v20 | 0x1000) != 0xFFFFFFFFFFFFF000)
            {
              v27 = 0x9DDFEA08EB382D69 * ((8 * *v20 - 0xAE502812AA7333) ^ HIDWORD(*v20));
              v28 = 0x9DDFEA08EB382D69 * (HIDWORD(v26) ^ (v27 >> 47) ^ v27);
              LODWORD(v27) = -348639895 * ((v28 >> 47) ^ v28);
              v29 = *(a1 + 16) - 1;
              v30 = v29 & v27;
              v25 = *a1 + 24 * v30;
              v31 = *v25;
              if (v26 != *v25)
              {
                v32 = 0;
                v33 = 1;
                while (v31 != -4096)
                {
                  if (v32)
                  {
                    v34 = 0;
                  }

                  else
                  {
                    v34 = v31 == -8192;
                  }

                  if (v34)
                  {
                    v32 = v25;
                  }

                  v35 = v30 + v33++;
                  v30 = v35 & v29;
                  v25 = *a1 + 24 * (v35 & v29);
                  v31 = *v25;
                  if (v26 == *v25)
                  {
                    goto LABEL_26;
                  }
                }

                if (v32)
                {
                  v25 = v32;
                }
              }

LABEL_26:
              *v25 = v26;
              *(v25 + 8) = *(v20 + 8);
              *(v20 + 1) = 0;
              *(v20 + 2) = 0;
              ++*(a1 + 8);
            }

            v20 = (v20 + 24);
          }

          while (v20 != (v4 + 24 * v3));
        }

        llvm::deallocate_buffer(v4, (24 * v3));
      }
    }

    else
    {
      v12 = result;
    }

    v19 = &result[3 * v10];
    do
    {
      *v12 = -4096;
      v12 += 3;
    }

    while (v12 != v19);
    goto LABEL_16;
  }

  *(a1 + 8) = 0;
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = 24 * v13 - 24;
    if (v14 < 0x18)
    {
      v15 = result;
LABEL_21:
      v24 = &result[3 * v13];
      do
      {
        *v15 = -4096;
        v15 += 3;
      }

      while (v15 != v24);
      return result;
    }

    v21 = v14 / 0x18 + 1;
    v15 = &result[3 * (v21 & 0x1FFFFFFFFFFFFFFELL)];
    v22 = result;
    v23 = v21 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *v22 = -4096;
      v22[3] = -4096;
      v22 += 6;
      v23 -= 2;
    }

    while (v23);
    if (v21 != (v21 & 0x1FFFFFFFFFFFFFFELL))
    {
      goto LABEL_21;
    }
  }

  return result;
}

void *std::__tree<std::shared_ptr<GPU::MemrefHeap>,BOOL (*)(std::shared_ptr<GPU::MemrefHeap>,std::shared_ptr<GPU::MemrefHeap>),std::allocator<std::shared_ptr<GPU::MemrefHeap>>>::__find_equal<std::shared_ptr<GPU::MemrefHeap>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    while (1)
    {
      v8 = v4;
      v9 = *(a1 + 24);
      v10 = a3[1];
      v28 = *a3;
      v29 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = v8[5];
      v26 = v8[4];
      v27 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v12 = v9(&v28, &v26);
      v13 = v27;
      if (v27 && !atomic_fetch_add(&v27->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
        v14 = v29;
        if (v29)
        {
LABEL_11:
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }
        }
      }

      else
      {
        v14 = v29;
        if (v29)
        {
          goto LABEL_11;
        }
      }

      if (v12)
      {
        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v15 = *(a1 + 24);
        v16 = v8[5];
        v24 = v8[4];
        v25 = v16;
        if (v16)
        {
          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v17 = a3[1];
        v22 = *a3;
        v23 = v17;
        if (v17)
        {
          atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
        }

        v18 = v15(&v24, &v22);
        v19 = v23;
        if (v23 && !atomic_fetch_add(&v23->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          (v19->__on_zero_shared)(v19);
          std::__shared_weak_count::__release_weak(v19);
          v20 = v25;
          if (v25)
          {
LABEL_22:
            if (!atomic_fetch_add(&v20->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
            {
              (v20->__on_zero_shared)(v20);
              std::__shared_weak_count::__release_weak(v20);
            }
          }
        }

        else
        {
          v20 = v25;
          if (v25)
          {
            goto LABEL_22;
          }
        }

        if (!v18)
        {
          goto LABEL_29;
        }

        v5 = v8 + 1;
        v4 = v8[1];
        if (!v4)
        {
          goto LABEL_29;
        }
      }
    }
  }

  v8 = (a1 + 8);
LABEL_29:
  *a2 = v8;
  return v5;
}

void sub_1E078AA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void sub_1E078AA3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va1);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<GPU::MemrefBuffer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B4BAF0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12E5B90);
}

void std::__shared_ptr_emplace<GPU::MemrefBuffer>::__on_zero_shared(uint64_t a1)
{
  v1 = *(a1 + 64);
  if (v1 && !atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v1->__on_zero_shared)(v1);
    std::__shared_weak_count::__release_weak(v1);
    v2 = *(a1 + 24);
  }

  else
  {
    v2 = *(a1 + 24);
  }
}

uint64_t std::__tree<std::shared_ptr<GPU::MemrefBuffer>,BOOL (*)(std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer>),std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::__lower_bound<std::shared_ptr<GPU::MemrefBuffer>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v9 = *(a1 + 24);
      v10 = *(v5 + 40);
      v18 = *(v5 + 32);
      v19 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = a2[1];
      v16 = *a2;
      v17 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = v9(&v18, &v16);
      v13 = v17;
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
        v14 = v19;
        if (v19)
        {
LABEL_14:
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }
        }
      }

      else
      {
        v14 = v19;
        if (v19)
        {
          goto LABEL_14;
        }
      }

      if (v12)
      {
        v8 = 8;
      }

      else
      {
        a4 = v5;
        v8 = 0;
      }

      v5 = *(v5 + v8);
    }

    while (v5);
  }

  return a4;
}

void sub_1E078ACC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::shared_ptr<GPU::MemrefHeap>,BOOL (*)(std::shared_ptr<GPU::MemrefHeap>,std::shared_ptr<GPU::MemrefHeap>),std::allocator<std::shared_ptr<GPU::MemrefHeap>>>::__lower_bound<std::shared_ptr<GPU::MemrefHeap>>(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v5 = a3;
    do
    {
      v9 = *(a1 + 24);
      v10 = *(v5 + 40);
      v18 = *(v5 + 32);
      v19 = v10;
      if (v10)
      {
        atomic_fetch_add_explicit(&v10->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v11 = a2[1];
      v16 = *a2;
      v17 = v11;
      if (v11)
      {
        atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
      }

      v12 = v9(&v18, &v16);
      v13 = v17;
      if (v17 && !atomic_fetch_add(&v17->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
      {
        (v13->__on_zero_shared)(v13);
        std::__shared_weak_count::__release_weak(v13);
        v14 = v19;
        if (v19)
        {
LABEL_14:
          if (!atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
          {
            (v14->__on_zero_shared)(v14);
            std::__shared_weak_count::__release_weak(v14);
          }
        }
      }

      else
      {
        v14 = v19;
        if (v19)
        {
          goto LABEL_14;
        }
      }

      if (v12)
      {
        v8 = 8;
      }

      else
      {
        a4 = v5;
        v8 = 0;
      }

      v5 = *(v5 + v8);
    }

    while (v5);
  }

  return a4;
}

void sub_1E078AE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](&a9);
  std::shared_ptr<MPSKernelDAG>::~shared_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t **std::__tree_remove[abi:ne200100]<std::__tree_node_base<void *> *>(uint64_t **result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      v5 = 0;
      v6 = a2[2];
      *(v2 + 16) = v6;
      v7 = *v6;
      if (*v6 == a2)
      {
        goto LABEL_10;
      }

LABEL_6:
      *(v6 + 8) = v2;
      v8 = *(v3 + 24);
      if (v3 == a2)
      {
        goto LABEL_7;
      }

LABEL_16:
      v9 = a2[2];
      v9[*v9 != a2] = v3;
      v3[2] = v9;
      v11 = *a2;
      v10 = a2[1];
      *(v11 + 16) = v3;
      *v3 = v11;
      v3[1] = v10;
      if (v10)
      {
        *(v10 + 16) = v3;
      }

      *(v3 + 24) = *(a2 + 24);
      if (result == a2)
      {
        result = v3;
      }

      if (!result)
      {
        return result;
      }

      goto LABEL_21;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (!v2)
  {
    v6 = v3[2];
    v5 = 1;
    v7 = *v6;
    if (*v6 == v3)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  v5 = 0;
  v6 = v3[2];
  *(v2 + 16) = v6;
  v7 = *v6;
  if (*v6 != v3)
  {
    goto LABEL_6;
  }

LABEL_10:
  *v6 = v2;
  if (v3 == result)
  {
    v7 = 0;
    result = v2;
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v7 = *(v6 + 8);
    v8 = *(v3 + 24);
    if (v3 != a2)
    {
      goto LABEL_16;
    }
  }

LABEL_7:
  if (!result)
  {
    return result;
  }

LABEL_21:
  if (!v8)
  {
    return result;
  }

  if (!v5)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v14 = v7[2];
    v15 = *v14;
    if (*v14 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v14 + 24) = 0;
      v16 = *(v14 + 8);
      v17 = *v16;
      *(v14 + 8) = *v16;
      if (v17)
      {
        *(v17 + 16) = v14;
      }

      v18 = *(v14 + 16);
      v16[2] = v18;
      v18[*v18 != v14] = v16;
      *v16 = v14;
      *(v14 + 16) = v16;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v19 = *v7;
    if (*v7 && *(v19 + 24) != 1)
    {
      v20 = v7[1];
      if (v20 && (v20[3] & 1) == 0)
      {
LABEL_65:
        v19 = v7;
      }

      else
      {
        *(v19 + 24) = 1;
        *(v7 + 24) = 0;
        v28 = v19[1];
        *v7 = v28;
        if (v28)
        {
          *(v28 + 16) = v7;
        }

        v29 = v7[2];
        v29[*v29 != v7] = v19;
        v19[1] = v7;
        v19[2] = v29;
        v7[2] = v19;
        v20 = v7;
      }

      v30 = v19[2];
      *(v19 + 24) = *(v30 + 24);
      *(v30 + 24) = 1;
      *(v20 + 24) = 1;
      v31 = *(v30 + 8);
      v32 = *v31;
      *(v30 + 8) = *v31;
      if (v32)
      {
        *(v32 + 16) = v30;
      }

      v33 = *(v30 + 16);
      v31[2] = v33;
      v33[*v33 != v30] = v31;
      *v31 = v30;
      *(v30 + 16) = v31;
      return result;
    }

    v20 = v7[1];
    if (v20 && *(v20 + 24) != 1)
    {
      goto LABEL_65;
    }

    *(v7 + 24) = 0;
    v12 = v7[2];
    if (v12 == result || (v12[3] & 1) == 0)
    {
      goto LABEL_59;
    }

LABEL_28:
    v7 = v12[2][*v12[2] == v12];
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v14 + 24) = 0;
    v21 = v15[1];
    *v14 = v21;
    if (v21)
    {
      *(v21 + 16) = v14;
    }

    v22 = *(v14 + 16);
    v22[*v22 != v14] = v15;
    v15[1] = v14;
    v15[2] = v22;
    *(v14 + 16) = v15;
    v23 = v7[1];
    if (result == v23)
    {
      result = v7;
    }

    v7 = *v23;
  }

  v24 = *v7;
  if (*v7 && *(v24 + 24) != 1)
  {
    goto LABEL_69;
  }

  v25 = v7[1];
  if (!v25 || *(v25 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v12 = v7[2];
    if (*(v12 + 24) != 1 || v12 == result)
    {
LABEL_59:
      *(v12 + 24) = 1;
      return result;
    }

    goto LABEL_28;
  }

  if (v24 && (v24[3] & 1) == 0)
  {
LABEL_69:
    v25 = v7;
    goto LABEL_70;
  }

  *(v25 + 24) = 1;
  *(v7 + 24) = 0;
  v26 = *v25;
  v7[1] = *v25;
  if (v26)
  {
    *(v26 + 16) = v7;
  }

  v27 = v7[2];
  v25[2] = v27;
  v27[*v27 != v7] = v25;
  *v25 = v7;
  v7[2] = v25;
  v24 = v7;
LABEL_70:
  v34 = v25[2];
  *(v25 + 24) = *(v34 + 24);
  *(v34 + 24) = 1;
  *(v24 + 24) = 1;
  v35 = *v34;
  v36 = *(*v34 + 8);
  *v34 = v36;
  if (v36)
  {
    *(v36 + 16) = v34;
  }

  v37 = *(v34 + 16);
  v37[*v37 != v34] = v35;
  *(v35 + 8) = v34;
  *(v35 + 16) = v37;
  *(v34 + 16) = v35;
  return result;
}

uint64_t std::__hash_table<std::shared_ptr<GPU::MemrefBuffer>,std::hash<std::shared_ptr<GPU::MemrefBuffer>>,std::equal_to<std::shared_ptr<GPU::MemrefBuffer>>,std::allocator<std::shared_ptr<GPU::MemrefBuffer>>>::__emplace_unique_key_args<std::shared_ptr<GPU::MemrefBuffer>,std::shared_ptr<GPU::MemrefBuffer> const&>(float *a1, unint64_t a2, void *a3)
{
  v3 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v3 >> 47) ^ v3);
  v5 = v4 ^ (v4 >> 47);
  v6 = 0x9DDFEA08EB382D69 * v5;
  v7 = *(a1 + 2);
  if (!*&v7)
  {
    goto LABEL_23;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  if (v8.u32[0] > 1uLL)
  {
    v9 = 0x9DDFEA08EB382D69 * v5;
    if (v6 >= *&v7)
    {
      v9 = v6 % *&v7;
    }
  }

  else
  {
    v9 = (*&v7 - 1) & v6;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10 || (v11 = *v10) == 0)
  {
LABEL_23:
    operator new();
  }

  if (v8.u32[0] < 2uLL)
  {
    while (1)
    {
      v13 = v11[1];
      if (v13 == v6)
      {
        if (v11[2] == a2)
        {
          return 0;
        }
      }

      else if ((v13 & (*&v7 - 1)) != v9)
      {
        goto LABEL_23;
      }

      v11 = *v11;
      if (!v11)
      {
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    v12 = v11[1];
    if (v12 == v6)
    {
      break;
    }

    if (v12 >= *&v7)
    {
      v12 %= *&v7;
    }

    if (v12 != v9)
    {
      goto LABEL_23;
    }

LABEL_12:
    v11 = *v11;
    if (!v11)
    {
      goto LABEL_23;
    }
  }

  if (v11[2] != a2)
  {
    goto LABEL_12;
  }

  return 0;
}

void sub_1E078B700(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::shared_ptr<GPU::MemrefBuffer>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<GPU::MemrefBuffer>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void **std::unique_ptr<std::__hash_node<std::shared_ptr<GPU::MemrefBuffer>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::shared_ptr<GPU::MemrefBuffer>,void *>>>>::~unique_ptr[abi:ne200100](void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        if (!atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
        {
          v5 = v2;
          (v4->__on_zero_shared)(v4);
          std::__shared_weak_count::__release_weak(v4);
          v2 = v5;
        }
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t *std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, char *a5, int64_t a6)
{
  if (a4 >= 2)
  {
    if (a4 == 2)
    {
      v6 = *(a2 - 1);
      v7 = *result;
      if (*(**a3 + 8 * v6) > *(**a3 + 8 * *result))
      {
        *result = v6;
        *(a2 - 1) = v7;
      }

      return result;
    }

    if (a4 > 128)
    {
      v18 = a4 >> 1;
      v19 = &result[a4 >> 1];
      v20 = a4 - (a4 >> 1);
      v21 = result;
      if (a4 <= a6)
      {
        v27 = a5;
        std::__stable_sort_move<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(result, v19, a3, a4 >> 1, a5);
        v28 = &v27[8 * v18];
        result = std::__stable_sort_move<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v19, a2, a3, v20, v28);
        v29 = &v27[8 * a4];
        v30 = *a3;
        v31 = v21;
        v32 = v28;
        do
        {
          if (v32 == v29)
          {
            if (v27 == v28)
            {
              return result;
            }

            v48 = v28 - v27 - 8;
            if (v48 >= 0x38)
            {
              if ((v31 - v27) >= 0x20)
              {
                v50 = v21 + 16;
                v51 = (v48 >> 3) + 1;
                v52 = 8 * (v51 & 0x3FFFFFFFFFFFFFFCLL);
                v21 += v52;
                v49 = &v27[v52];
                v53 = (v27 + 16);
                v54 = v51 & 0x3FFFFFFFFFFFFFFCLL;
                do
                {
                  v55 = *v53;
                  *(v50 - 1) = *(v53 - 1);
                  *v50 = v55;
                  v53 += 2;
                  v50 += 2;
                  v54 -= 4;
                }

                while (v54);
                if (v51 == (v51 & 0x3FFFFFFFFFFFFFFCLL))
                {
                  return result;
                }
              }

              else
              {
                v49 = v27;
              }
            }

            else
            {
              v49 = v27;
            }

            do
            {
              v56 = *v49;
              v49 += 8;
              *v21 = v56;
              v21 += 8;
            }

            while (v49 != v28);
            return result;
          }

          v33 = v32;
          v34 = *v32;
          v35 = *(*v30 + 8 * v34) > *(*v30 + 8 * *v27);
          if (*(*v30 + 8 * v34) <= *(*v30 + 8 * *v27))
          {
            v36 = *v27;
          }

          else
          {
            v36 = v34;
          }

          v27 += 8 * (*(*v30 + 8 * v34) <= *(*v30 + 8 * *v27));
          v37 = 8 * v35;
          v32 = &v33[v37];
          *v21 = v36;
          v21 += 8;
          v31 += 8;
        }

        while (v27 != v28);
        if (v32 != v29)
        {
          v38 = v29 - v33 - v37 - 8;
          if (v38 <= 0x57)
          {
            goto LABEL_47;
          }

          if ((v31 - v33 - v37) < 0x20)
          {
            goto LABEL_47;
          }

          v39 = 0;
          v40 = (v38 >> 3) + 1;
          v41 = 8 * (v40 & 0x3FFFFFFFFFFFFFFCLL);
          v42 = &v21[v41];
          v32 += v41;
          v43 = &v33[v37 + 16];
          v44 = v40 & 0x3FFFFFFFFFFFFFFCLL;
          do
          {
            v45 = &v21[v39];
            v46 = *v43;
            *v45 = *(v43 - 1);
            *(v45 + 1) = v46;
            v43 += 32;
            v39 += 32;
            v44 -= 4;
          }

          while (v44);
          v21 = v42;
          if (v40 != (v40 & 0x3FFFFFFFFFFFFFFCLL))
          {
LABEL_47:
            do
            {
              v47 = *v32;
              v32 += 8;
              *v21 = v47;
              v21 += 8;
            }

            while (v32 != v29);
          }
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(result, v19, a3, a4 >> 1, a5, a6);
        std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v19, a2, a3, v20, a5, a6);

        return std::__inplace_merge<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v21, v19, a2, a3, v18, v20, a5, a6);
      }
    }

    else if (result != a2)
    {
      v8 = result + 1;
      if (result + 1 != a2)
      {
        v9 = **a3;
        v10 = 8;
        v11 = result;
        do
        {
          v14 = *v11;
          v13 = v11[1];
          v11 = v8;
          if (*(v9 + 8 * v13) > *(v9 + 8 * v14))
          {
            v15 = v10;
            do
            {
              *(result + v15) = v14;
              v16 = v15 - 8;
              if (v15 == 8)
              {
                v12 = result;
                goto LABEL_11;
              }

              v14 = *(result + v15 - 16);
              v15 -= 8;
            }

            while (*(v9 + 8 * v13) > *(v9 + 8 * v14));
            v12 = (result + v16);
LABEL_11:
            *v12 = v13;
          }

          v8 = v11 + 1;
          v10 += 8;
        }

        while (v11 + 1 != a2);
      }
    }
  }

  return result;
}

uint64_t *std::__stable_sort_move<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(uint64_t *result, uint64_t *a2, uint64_t **a3, unint64_t a4, char *a5)
{
  if (a4)
  {
    if (a4 == 1)
    {
LABEL_8:
      *a5 = *result;
      return result;
    }

    if (a4 == 2)
    {
      v7 = *(a2 - 1);
      v5 = a2 - 1;
      v6 = v7;
      v8 = **a3;
      v9 = *(v8 + 8 * v7);
      v10 = *(v8 + 8 * *result);
      if (v9 <= v10)
      {
        v6 = *result;
      }

      *a5 = v6;
      a5 += 8;
      if (v9 <= v10)
      {
        result = v5;
      }

      goto LABEL_8;
    }

    if (a4 > 8)
    {
      v23 = a4 >> 1;
      v24 = a4 >> 1;
      v25 = &result[v24];
      v26 = result;
      v30 = a5;
      std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(result, &result[v24], a3, v23, a5, v23);
      result = std::__stable_sort<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v25, a2, a3, a4 - v23, &v30[v24 * 8], a4 - v23);
      v31 = *a3;
      v32 = v30;
      v33 = v26;
      v34 = v25;
      do
      {
        if (v34 == a2)
        {
          if (v33 == v25)
          {
            return result;
          }

          v50 = &v26[v23] - v33 - 8;
          if (v50 >= 0x38)
          {
            if ((v32 - v33) >= 0x20)
            {
              v52 = v30 + 16;
              v53 = (v50 >> 3) + 1;
              v54 = v53 & 0x3FFFFFFFFFFFFFFCLL;
              v30 += v54 * 8;
              v51 = &v33[v54];
              v55 = (v33 + 2);
              v56 = v53 & 0x3FFFFFFFFFFFFFFCLL;
              do
              {
                v57 = *v55;
                *(v52 - 1) = *(v55 - 1);
                *v52 = v57;
                v55 += 2;
                v52 += 2;
                v56 -= 4;
              }

              while (v56);
              if (v53 == (v53 & 0x3FFFFFFFFFFFFFFCLL))
              {
                return result;
              }
            }

            else
            {
              v51 = v33;
            }
          }

          else
          {
            v51 = v33;
          }

          do
          {
            v58 = *v51++;
            *v30 = v58;
            v30 += 8;
          }

          while (v51 != v25);
          return result;
        }

        v35 = v34;
        v36 = *v34;
        v37 = *(*v31 + 8 * v36) <= *(*v31 + 8 * *v33);
        if (*(*v31 + 8 * v36) <= *(*v31 + 8 * *v33))
        {
          v38 = *v33;
        }

        else
        {
          v38 = v36;
        }

        v39 = *(*v31 + 8 * v36) > *(*v31 + 8 * *v33);
        v34 = &v35[v39];
        v33 += v37;
        *v30 = v38;
        v30 += 8;
        v32 += 8;
      }

      while (v33 != v25);
      if (v34 != a2)
      {
        v40 = a2 - v35 - v39 * 8 - 8;
        if (v40 < 0x58)
        {
          goto LABEL_48;
        }

        if ((v32 - &v35[v39]) < 0x20)
        {
          goto LABEL_48;
        }

        v41 = 0;
        v42 = (v40 >> 3) + 1;
        v43 = 8 * (v42 & 0x3FFFFFFFFFFFFFFCLL);
        v44 = &v30[v43];
        v34 = (v34 + v43);
        v45 = &v35[v39 + 2];
        v46 = v42 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v47 = &v30[v41];
          v48 = *v45;
          *v47 = *(v45 - 1);
          *(v47 + 1) = v48;
          v45 += 4;
          v41 += 32;
          v46 -= 4;
        }

        while (v46);
        v30 = v44;
        if (v42 != (v42 & 0x3FFFFFFFFFFFFFFCLL))
        {
LABEL_48:
          do
          {
            v49 = *v34++;
            *v30 = v49;
            v30 += 8;
          }

          while (v34 != a2);
        }
      }
    }

    else if (result != a2)
    {
      v11 = *a3;
      v12 = *result++;
      *a5 = v12;
      if (result != a2)
      {
        v13 = 0;
        v14 = *v11;
        v15 = a5;
        v16 = a5;
        do
        {
          while (1)
          {
            v18 = *v16;
            v16 += 8;
            v17 = v18;
            if (*(v14 + 8 * *result) > *(v14 + 8 * v18))
            {
              break;
            }

            *v16 = *result++;
            v13 += 8;
            v15 = v16;
            if (result == a2)
            {
              return result;
            }
          }

          *(v15 + 1) = v17;
          v19 = a5;
          if (v15 != a5)
          {
            v20 = v13;
            while (1)
            {
              v19 = &a5[v20];
              v21 = *&a5[v20 - 8];
              if (*(v14 + 8 * *result) <= *(v14 + 8 * v21))
              {
                break;
              }

              *v19 = v21;
              v20 -= 8;
              if (!v20)
              {
                v19 = a5;
                break;
              }
            }
          }

          v22 = *result++;
          *v19 = v22;
          v13 += 8;
          v15 = v16;
        }

        while (result != a2);
      }
    }
  }

  return result;
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(char *result, char *a2, char *a3, uint64_t **a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  if (!a6)
  {
    return result;
  }

  while (a5 > a8 && a6 > a8)
  {
    if (!a5)
    {
      return result;
    }

    v9 = 0;
    v10 = 0;
    v11 = **a4;
    while (1)
    {
      v12 = *&result[8 * v10];
      if (*(v11 + 8 * *a2) > *(v11 + 8 * v12))
      {
        break;
      }

      ++v10;
      v9 -= 8;
      if (a5 == v10)
      {
        return result;
      }
    }

    v13 = a5 - v10;
    v14 = &result[-v9];
    if (a5 - v10 >= a6)
    {
      if (a5 - 1 == v10)
      {
        *&result[8 * v10] = *a2;
        *a2 = v12;
        return result;
      }

      v23 = v13 / 2;
      v25 = &result[8 * (v13 / 2)];
      if (a3 == a2)
      {
        v16 = a2;
        v18 = &v25[-v9];
        v15 = 0;
        v24 = a2;
        if (&v25[-v9] != a2)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v26 = (a3 - a2) >> 3;
        v16 = a2;
        do
        {
          v27 = v26 >> 1;
          v28 = &v16[8 * (v26 >> 1)];
          v30 = *v28;
          v29 = v28 + 8;
          v26 += ~(v26 >> 1);
          if (*(v11 + 8 * v30) > *(v11 + 8 * *&v25[8 * v10]))
          {
            v16 = v29;
          }

          else
          {
            v26 = v27;
          }
        }

        while (v26);
        v18 = &v25[-v9];
        v15 = (v16 - a2) >> 3;
        v24 = v16;
        if (&v25[-v9] != a2)
        {
LABEL_29:
          v24 = v18;
          if (a2 != v16)
          {
            v31 = v18 + 8;
            if (v18 + 8 == a2)
            {
              v107 = *v18;
              v109 = a7;
              v38 = v16 - a2;
              v111 = &result[-v9];
              v113 = a3;
              v39 = a5;
              v40 = a6;
              v41 = a4;
              v42 = v23;
              memmove(v18, v18 + 8, v16 - a2);
              v23 = v42;
              a7 = v109;
              v14 = v111;
              a4 = v41;
              a6 = v40;
              a5 = v39;
              a3 = v113;
              v24 = &v18[v38];
              *&v18[v38] = v107;
            }

            else
            {
              v32 = a2 + 8;
              if (a2 + 8 == v16)
              {
                v43 = *(v16 - 1);
                v24 = v18 + 8;
                if (v16 - 8 != v18)
                {
                  v112 = &result[-v9];
                  v114 = a3;
                  v44 = a5;
                  v45 = a6;
                  v108 = *(v16 - 1);
                  v110 = a7;
                  v46 = a4;
                  v47 = v23;
                  memmove(v18 + 8, v18, v16 - 8 - v18);
                  v43 = v108;
                  a7 = v110;
                  v23 = v47;
                  v14 = v112;
                  a3 = v114;
                  a4 = v46;
                  a6 = v45;
                  a5 = v44;
                }

                *v18 = v43;
              }

              else
              {
                v33 = (a2 - v18);
                v34 = (a2 - v18) >> 3;
                v35 = (v16 - a2) >> 3;
                if (v34 == v35)
                {
                  do
                  {
                    v36 = *(v31 - 1);
                    *(v31 - 1) = *(v32 - 1);
                    *(v32 - 1) = v36;
                    if (v31 == a2)
                    {
                      break;
                    }

                    v31 += 8;
                    v37 = v32 == v16;
                    v32 += 8;
                  }

                  while (!v37);
                  v24 = a2;
                }

                else
                {
                  v48 = (a2 - v18) >> 3;
                  do
                  {
                    v49 = v48;
                    v48 = v35;
                    v35 = v49 % v35;
                  }

                  while (v35);
                  v50 = &v18[8 * v48];
                  do
                  {
                    v52 = *(v50 - 1);
                    v50 -= 8;
                    v51 = v52;
                    v53 = &v33[v50];
                    v54 = v50;
                    do
                    {
                      v55 = v54;
                      v54 = v53;
                      *v55 = *v53;
                      v56 = (v16 - v53) >> 3;
                      v57 = __OFSUB__(v34, v56);
                      v59 = v34 - v56;
                      v58 = (v59 < 0) ^ v57;
                      v53 = &v18[8 * v59];
                      if (v58)
                      {
                        v53 = &v33[v54];
                      }
                    }

                    while (v53 != v50);
                    *v54 = v51;
                  }

                  while (v50 != v18);
                  v24 = &v18[v16 - a2];
                }
              }
            }
          }
        }
      }
    }

    else
    {
      v15 = a6 / 2;
      v16 = &a2[8 * (a6 / 2)];
      if (v14 == a2)
      {
        v18 = &result[-v9];
        v23 = 0;
        v24 = &a2[8 * (a6 / 2)];
      }

      else
      {
        v17 = (a2 - result + v9) >> 3;
        v18 = &result[-v9];
        do
        {
          v19 = v17 >> 1;
          v20 = &v18[8 * (v17 >> 1)];
          v22 = *v20;
          v21 = v20 + 8;
          v17 += ~(v17 >> 1);
          if (*(v11 + 8 * *v16) > *(v11 + 8 * v22))
          {
            v17 = v19;
          }

          else
          {
            v18 = v21;
          }
        }

        while (v17);
        v23 = (v18 - v14) >> 3;
        v24 = &a2[8 * (a6 / 2)];
        if (v18 != a2)
        {
          goto LABEL_29;
        }
      }
    }

    v60 = a5 - v23 - v10;
    v61 = a6 - v15;
    if (v23 + v15 >= a6 + a5 - (v23 + v15) - v10)
    {
      v65 = a4;
      v66 = a5 - v23 - v10;
      v67 = a7;
      v68 = v23;
      v69 = v14;
      std::__inplace_merge<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v24, v16, a3, a4, v66, a6 - v15, a7, a8);
      result = v69;
      a3 = v24;
      a5 = v68;
      a6 = v15;
      a2 = v18;
      a7 = v67;
      a4 = v65;
      if (!v15)
      {
        return result;
      }
    }

    else
    {
      v62 = a3;
      v63 = a4;
      v64 = a7;
      std::__inplace_merge<std::_ClassicAlgPolicy,GPU::MemrefBufferizer::createViewTensorDataForStridedValue(mlir::detail::TypedValue<mlir::MemRefType>,MPSNDArray *,GPU::EncodeDescriptor *,BOOL)::$_0 &,long long *>(v14, v18, v24, a4, v23, v15, a7, a8);
      a3 = v62;
      result = v24;
      a5 = v60;
      a6 = v61;
      a2 = v16;
      a7 = v64;
      a4 = v63;
      if (!v61)
      {
        return result;
      }
    }
  }

  if (a5 <= a6)
  {
    if (result != a2)
    {
      v83 = a2 - result - 8;
      v84 = a7;
      v85 = result;
      if (v83 < 0x18)
      {
        goto LABEL_100;
      }

      v84 = a7;
      v85 = result;
      if ((a7 - result) <= 0x1F)
      {
        goto LABEL_100;
      }

      v86 = (v83 >> 3) + 1;
      v87 = 8 * (v86 & 0x3FFFFFFFFFFFFFFCLL);
      v84 = &a7[v87];
      v85 = &result[v87];
      v88 = result + 16;
      v89 = a7 + 16;
      v90 = v86 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v91 = *v88;
        *(v89 - 1) = *(v88 - 1);
        *v89 = v91;
        v88 += 32;
        v89 += 32;
        v90 -= 4;
      }

      while (v90);
      if (v86 != (v86 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_100:
        do
        {
          v92 = *v85;
          v85 += 8;
          *v84 = v92;
          v84 += 8;
        }

        while (v85 != a2);
      }

      v93 = *a4;
      while (a2 != a3)
      {
        v94 = *a2;
        v95 = *(*v93 + 8 * *a2) > *(*v93 + 8 * *a7);
        if (*(*v93 + 8 * *a2) <= *(*v93 + 8 * *a7))
        {
          v94 = *a7;
        }

        a7 += 8 * (*(*v93 + 8 * *a2) <= *(*v93 + 8 * *a7));
        a2 += 8 * v95;
        *result = v94;
        result += 8;
        if (a7 == v84)
        {
          return result;
        }
      }

      return memmove(result, a7, v84 - a7);
    }
  }

  else if (a2 != a3)
  {
    v70 = a3 - a2 - 8;
    v71 = a7;
    v72 = a2;
    if (v70 < 0x18)
    {
      goto LABEL_101;
    }

    v71 = a7;
    v72 = a2;
    if ((a7 - a2) <= 0x1F)
    {
      goto LABEL_101;
    }

    v73 = (v70 >> 3) + 1;
    v74 = 8 * (v73 & 0x3FFFFFFFFFFFFFFCLL);
    v71 = &a7[v74];
    v72 = &a2[v74];
    v75 = a2 + 16;
    v76 = a7 + 16;
    v77 = v73 & 0x3FFFFFFFFFFFFFFCLL;
    do
    {
      v78 = *v75;
      *(v76 - 1) = *(v75 - 1);
      *v76 = v78;
      v75 += 32;
      v76 += 32;
      v77 -= 4;
    }

    while (v77);
    if (v73 != (v73 & 0x3FFFFFFFFFFFFFFCLL))
    {
LABEL_101:
      do
      {
        v79 = *v72;
        v72 += 8;
        *v71 = v79;
        v71 += 8;
      }

      while (v72 != a3);
    }

    v80 = *a4;
    v81 = a3;
    while (a2 != result)
    {
      v82 = *(a2 - 1);
      if (*(*v80 + 8 * *(v71 - 1)) > *(*v80 + 8 * v82))
      {
        a2 -= 8;
      }

      else
      {
        v82 = *(v71 - 1);
        v71 -= 8;
      }

      *(a3 - 1) = v82;
      a3 -= 8;
      v81 -= 8;
      if (v71 == a7)
      {
        return result;
      }
    }

    v96 = v71 - a7;
    if (v71 != a7)
    {
      v97 = v96 - 8;
      if ((v96 - 8) < 0x48 || (v71 - v81) < 0x20)
      {
        v98 = v71;
        goto LABEL_88;
      }

      v101 = a3 - 16;
      v102 = (v97 >> 3) + 1;
      v103 = 8 * (v102 & 0x3FFFFFFFFFFFFFFCLL);
      v98 = &v71[-v103];
      a3 -= v103;
      v104 = v71 - 16;
      v105 = v102 & 0x3FFFFFFFFFFFFFFCLL;
      do
      {
        v106 = *v104;
        *(v101 - 1) = *(v104 - 1);
        *v101 = v106;
        v101 -= 32;
        v104 -= 32;
        v105 -= 4;
      }

      while (v105);
      if (v102 != (v102 & 0x3FFFFFFFFFFFFFFCLL))
      {
LABEL_88:
        v99 = a3 - 8;
        do
        {
          v100 = *(v98 - 1);
          v98 -= 8;
          *v99 = v100;
          v99 -= 8;
        }

        while (v98 != a7);
      }
    }
  }

  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::LookupBucketFor<mlir::Value>(uint64_t result, int a2, unint64_t a3, void *a4)
{
  if (a2)
  {
    v4 = 0x9DDFEA08EB382D69 * ((8 * a3 - 0xAE502812AA7333) ^ HIDWORD(a3));
    v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
    v6 = a2 - 1;
    v7 = (-348639895 * ((v5 >> 47) ^ v5)) & (a2 - 1);
    v8 = (result + 16 * v7);
    v9 = *v8;
    if (*v8 == a3)
    {
LABEL_3:
      *a4 = v8;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      while (v9 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v9 == -8192;
        }

        if (v12)
        {
          v10 = v8;
        }

        v13 = v7 + v11++;
        v7 = v13 & v6;
        v8 = (result + 16 * (v13 & v6));
        v9 = *v8;
        if (*v8 == a3)
        {
          goto LABEL_3;
        }
      }

      if (v10)
      {
        v8 = v10;
      }

      *a4 = v8;
    }
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>,mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::grow(uint64_t a1, int a2)
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
  result = llvm::allocate_buffer(16 * v8, 8uLL);
  v10 = result;
  *a1 = result;
  if (v4)
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      if (((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
      {
        goto LABEL_10;
      }

      v12 = ((v11 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
      v10 = &result[2 * (v12 & 0x1FFFFFFFFFFFFFFELL)];
      v13 = result + 2;
      v14 = v12 & 0x1FFFFFFFFFFFFFFELL;
      do
      {
        *(v13 - 2) = -4096;
        *v13 = -4096;
        v13 += 4;
        v14 -= 2;
      }

      while (v14);
      if (v12 != (v12 & 0x1FFFFFFFFFFFFFFELL))
      {
LABEL_10:
        v15 = &result[2 * v11];
        do
        {
          *v10 = -4096;
          v10 += 2;
        }

        while (v10 != v15);
      }
    }

    if (v3)
    {
      v16 = v4;
      do
      {
        v24 = *v16;
        if ((*v16 | 0x1000) != 0xFFFFFFFFFFFFF000)
        {
          v25 = 0x9DDFEA08EB382D69 * ((8 * *v16 - 0xAE502812AA7333) ^ (*v16 >> 32));
          v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v24) ^ (v25 >> 47) ^ v25);
          LODWORD(v25) = -348639895 * ((v26 >> 47) ^ v26);
          v27 = *(a1 + 16) - 1;
          v28 = v27 & v25;
          v22 = (*a1 + 16 * v28);
          v29 = *v22;
          if (v24 != *v22)
          {
            v30 = 0;
            v31 = 1;
            while (v29 != -4096)
            {
              if (v30)
              {
                v32 = 0;
              }

              else
              {
                v32 = v29 == -8192;
              }

              if (v32)
              {
                v30 = v22;
              }

              v33 = v28 + v31++;
              v28 = v33 & v27;
              v22 = (*a1 + 16 * (v33 & v27));
              v29 = *v22;
              if (v24 == *v22)
              {
                goto LABEL_24;
              }
            }

            if (v30)
            {
              v22 = v30;
            }
          }

LABEL_24:
          *v22 = v24;
          v23 = v16[1];
          v16[1] = 0;
          v22[1] = v23;
          ++*(a1 + 8);
        }

        v16 += 2;
      }

      while (v16 != (v4 + 16 * v3));
    }

    llvm::deallocate_buffer(v4, (16 * v3));
  }

  *(a1 + 8) = 0;
  v17 = *(a1 + 16);
  if (v17)
  {
    if (((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_19;
    }

    v18 = ((v17 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v10 = &result[2 * (v18 & 0x1FFFFFFFFFFFFFFELL)];
    v19 = result + 2;
    v20 = v18 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v19 - 2) = -4096;
      *v19 = -4096;
      v19 += 4;
      v20 -= 2;
    }

    while (v20);
    if (v18 != (v18 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_19:
      v21 = &result[2 * v17];
      do
      {
        *v10 = -4096;
        v10 += 2;
      }

      while (v10 != v21);
    }
  }

  return result;
}

void llvm::DenseMap<mlir::Value,MPSGraphTensorData * {__strong},llvm::DenseMapInfo<mlir::Value,void>,llvm::detail::DenseMapPair<mlir::Value,MPSGraphTensorData * {__strong}>>::shrink_and_clear(_DWORD *a1)
{
  v2 = a1[4];
  v3 = a1[2];
  if (v2)
  {
    v4 = 16 * v2;
    v5 = (*a1 + 8);
    do
    {
      if ((*(v5 - 1) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
      }

      v5 += 2;
      v4 -= 16;
    }

    while (v4);
  }

  if (v3)
  {
    v6 = 1 << (33 - __clz(v3 - 1));
    if (v6 <= 64)
    {
      v7 = 64;
    }

    else
    {
      v7 = v6;
    }

    v8 = *a1;
    if (v7 != a1[4])
    {
      llvm::deallocate_buffer(v8, (16 * v2));
    }

    *(a1 + 1) = 0;
    v9 = v8;
    if (((v7 - 1) & 0xFFFFFFFFFFFFFFFLL) == 0)
    {
      goto LABEL_23;
    }

    v10 = ((v7 - 1) & 0xFFFFFFFFFFFFFFFLL) + 1;
    v9 = (v8 + 16 * (v10 & 0x1FFFFFFFFFFFFFFELL));
    v11 = (v8 + 16);
    v12 = v10 & 0x1FFFFFFFFFFFFFFELL;
    do
    {
      *(v11 - 2) = -4096;
      *v11 = -4096;
      v11 += 4;
      v12 -= 2;
    }

    while (v12);
    if (v10 != (v10 & 0x1FFFFFFFFFFFFFFELL))
    {
LABEL_23:
      do
      {
        *v9 = -4096;
        v9 = (v9 + 16);
      }

      while (v9 != (v8 + 16 * v7));
    }
  }

  else
  {
    if (a1[4])
    {
      llvm::deallocate_buffer(*a1, (16 * v2));
    }

    *(a1 + 1) = 0;
  }
}

void MPSSymbolTable::insertOpInSymbolTable(llvm::StringMapImpl *a1@<X0>, std::string *a2@<X1>, std::string *a3@<X8>, const unsigned __int8 *a4@<X2>, unint64_t a5@<X3>)
{
  size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  v9 = size;
  v10 = a2->__r_.__value_.__r.__words[0];
  if ((size & 0x80u) != 0)
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  else
  {
    v10 = a2;
  }

  if (!size)
  {
    goto LABEL_66;
  }

  v11 = v10;
  if (size < 8)
  {
LABEL_99:
    v39 = (v10 + size);
    do
    {
      if (v11->__r_.__value_.__s.__data_[0] == 46)
      {
        v11->__r_.__value_.__s.__data_[0] = 95;
      }

      v11 = (v11 + 1);
    }

    while (v11 != v39);
    goto LABEL_65;
  }

  if (size < 0x10)
  {
    v12 = 0;
    goto LABEL_8;
  }

  v12 = size & 0xFFFFFFFFFFFFFFF0;
  v16 = &v10->__r_.__value_.__s.__data_[7];
  v17.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
  v17.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
  v18 = size & 0xFFFFFFFFFFFFFFF0;
  do
  {
    v19 = vceqq_s8(*(v16 - 7), v17);
    if (v19.i8[0])
    {
      *(v16 - 7) = 95;
      if ((v19.i8[1] & 1) == 0)
      {
LABEL_33:
        if ((v19.i8[2] & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_50;
      }
    }

    else if ((v19.i8[1] & 1) == 0)
    {
      goto LABEL_33;
    }

    *(v16 - 6) = 95;
    if ((v19.i8[2] & 1) == 0)
    {
LABEL_34:
      if ((v19.i8[3] & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_51;
    }

LABEL_50:
    *(v16 - 5) = 95;
    if ((v19.i8[3] & 1) == 0)
    {
LABEL_35:
      if ((v19.i8[4] & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_52;
    }

LABEL_51:
    *(v16 - 4) = 95;
    if ((v19.i8[4] & 1) == 0)
    {
LABEL_36:
      if ((v19.i8[5] & 1) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_53;
    }

LABEL_52:
    *(v16 - 3) = 95;
    if ((v19.i8[5] & 1) == 0)
    {
LABEL_37:
      if ((v19.i8[6] & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_54;
    }

LABEL_53:
    *(v16 - 2) = 95;
    if ((v19.i8[6] & 1) == 0)
    {
LABEL_38:
      if ((v19.i8[7] & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_55;
    }

LABEL_54:
    *(v16 - 1) = 95;
    if ((v19.i8[7] & 1) == 0)
    {
LABEL_39:
      if ((v19.i8[8] & 1) == 0)
      {
        goto LABEL_40;
      }

      goto LABEL_56;
    }

LABEL_55:
    *v16 = 95;
    if ((v19.i8[8] & 1) == 0)
    {
LABEL_40:
      if ((v19.i8[9] & 1) == 0)
      {
        goto LABEL_41;
      }

      goto LABEL_57;
    }

LABEL_56:
    v16[1] = 95;
    if ((v19.i8[9] & 1) == 0)
    {
LABEL_41:
      if ((v19.i8[10] & 1) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_58;
    }

LABEL_57:
    v16[2] = 95;
    if ((v19.i8[10] & 1) == 0)
    {
LABEL_42:
      if ((v19.i8[11] & 1) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_59;
    }

LABEL_58:
    v16[3] = 95;
    if ((v19.i8[11] & 1) == 0)
    {
LABEL_43:
      if ((v19.i8[12] & 1) == 0)
      {
        goto LABEL_44;
      }

      goto LABEL_60;
    }

LABEL_59:
    v16[4] = 95;
    if ((v19.i8[12] & 1) == 0)
    {
LABEL_44:
      if ((v19.i8[13] & 1) == 0)
      {
        goto LABEL_45;
      }

      goto LABEL_61;
    }

LABEL_60:
    v16[5] = 95;
    if ((v19.i8[13] & 1) == 0)
    {
LABEL_45:
      if (v19.i8[14])
      {
        goto LABEL_62;
      }

      goto LABEL_46;
    }

LABEL_61:
    v16[6] = 95;
    if (v19.i8[14])
    {
LABEL_62:
      v16[7] = 95;
      if ((v19.i8[15] & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_63;
    }

LABEL_46:
    if ((v19.i8[15] & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_63:
    v16[8] = 95;
LABEL_30:
    v16 += 16;
    v18 -= 16;
  }

  while (v18);
  if (size == v12)
  {
    goto LABEL_65;
  }

  if ((size & 8) == 0)
  {
    v11 = (v10 + v12);
    goto LABEL_99;
  }

LABEL_8:
  v11 = (v10 + (size & 0xFFFFFFFFFFFFFFF8));
  v13 = v12 - (size & 0xFFFFFFFFFFFFFFF8);
  v14 = &v10->__r_.__value_.__s.__data_[v12 + 3];
  while (2)
  {
    v15 = vceq_s8(*(v14 - 3), 0x2E2E2E2E2E2E2E2ELL);
    if (v15.i8[0])
    {
      *(v14 - 3) = 95;
      if (v15.i8[1])
      {
        goto LABEL_20;
      }

LABEL_12:
      if ((v15.i8[2] & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_21:
      *(v14 - 1) = 95;
      if (v15.i8[3])
      {
        goto LABEL_22;
      }

LABEL_14:
      if ((v15.i8[4] & 1) == 0)
      {
        goto LABEL_15;
      }

LABEL_23:
      v14[1] = 95;
      if (v15.i8[5])
      {
        goto LABEL_24;
      }

LABEL_16:
      if ((v15.i8[6] & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_25:
      v14[3] = 95;
      if (v15.i8[7])
      {
LABEL_26:
        v14[4] = 95;
      }
    }

    else
    {
      if ((v15.i8[1] & 1) == 0)
      {
        goto LABEL_12;
      }

LABEL_20:
      *(v14 - 2) = 95;
      if (v15.i8[2])
      {
        goto LABEL_21;
      }

LABEL_13:
      if ((v15.i8[3] & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_22:
      *v14 = 95;
      if (v15.i8[4])
      {
        goto LABEL_23;
      }

LABEL_15:
      if ((v15.i8[5] & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_24:
      v14[2] = 95;
      if (v15.i8[6])
      {
        goto LABEL_25;
      }

LABEL_17:
      if (v15.i8[7])
      {
        goto LABEL_26;
      }
    }

    v14 += 8;
    v13 += 8;
    if (v13)
    {
      continue;
    }

    break;
  }

  if (size != (size & 0xFFFFFFFFFFFFFFF8))
  {
    goto LABEL_99;
  }

LABEL_65:
  v9 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
LABEL_66:
  if ((v9 & 0x80) != 0)
  {
    v23 = a2->__r_.__value_.__r.__words[0];
    v22 = a2->__r_.__value_.__l.__size_;
    v44 = a2->__r_.__value_.__r.__words[0];
    v45 = v22;
    std::string::__init_copy_ctor_external(&__p, v23, v22);
    v21 = v44;
    v20 = v22;
  }

  else
  {
    v20 = v9;
    v44 = a2;
    v45 = v9;
    __p = *a2;
    v21 = a2;
    v22 = v9;
  }

  v24 = llvm::StringMapImpl::hash(v21, v20, a4, a5);
  v25 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<std::string>(a1, v21, v20, v24, &__p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    v26 = v25;
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((v26 & 1) == 0)
    {
LABEL_75:
      v27 = 1;
      do
      {
        std::string::resize(a2, v22, 0);
        std::string::push_back(a2, 95);
        std::to_string(&v43, v27);
        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v28 = &v43;
        }

        else
        {
          v28 = v43.__r_.__value_.__r.__words[0];
        }

        if ((v43.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v29 = HIBYTE(v43.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v29 = v43.__r_.__value_.__l.__size_;
        }

        std::string::append(a2, v28, v29);
        if (SHIBYTE(v43.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v43.__r_.__value_.__l.__data_);
        }

        v31 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        v32 = a2->__r_.__value_.__l.__size_;
        if (v31 >= 0)
        {
          v33 = a2;
        }

        else
        {
          v33 = a2->__r_.__value_.__r.__words[0];
        }

        if (v31 >= 0)
        {
          v34 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        }

        else
        {
          v34 = a2->__r_.__value_.__l.__size_;
        }

        v40 = v33;
        v41 = v34;
        if (v31 < 0)
        {
          std::string::__init_copy_ctor_external(&v42, a2->__r_.__value_.__l.__data_, v32);
          v35 = v40;
          v31 = v41;
        }

        else
        {
          v42 = *a2;
          v35 = a2;
        }

        v36 = llvm::StringMapImpl::hash(v35, v31, v32, v30);
        v37 = llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<std::string>(a1, v35, v31, v36, &v42);
        if (SHIBYTE(v42.__r_.__value_.__r.__words[2]) < 0)
        {
          v38 = v37;
          operator delete(v42.__r_.__value_.__l.__data_);
          v37 = v38;
        }

        ++v27;
      }

      while ((v37 & 1) == 0);
    }
  }

  else if ((v25 & 1) == 0)
  {
    goto LABEL_75;
  }

  if (SHIBYTE(a2->__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(a3, a2->__r_.__value_.__l.__data_, a2->__r_.__value_.__l.__size_);
  }

  else
  {
    *&a3->__r_.__value_.__l.__data_ = *&a2->__r_.__value_.__l.__data_;
    a3->__r_.__value_.__r.__words[2] = a2->__r_.__value_.__r.__words[2];
  }
}

void sub_1E078CECC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MPSSymbolTable::insertOp(int8x8_t *this@<X0>, unint64_t a2@<X1>, NSString *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a3;
  v8 = v7;
  if (v7)
  {
    v9 = [(NSString *)v7 UTF8String];
    v10 = strlen(v9);
    if (v10 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v13 = v10;
    if (v10 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v10;
    if (v10)
    {
      memmove(&__dst, v9, v10);
      __dst.__r_.__value_.__s.__data_[v13] = 0;
      if (!a2)
      {
LABEL_14:
        MPSSymbolTable::insertOpInSymbolTable(this, &__dst, a4, v11, v12);
        goto LABEL_50;
      }
    }

    else
    {
      __dst.__r_.__value_.__s.__data_[0] = 0;
      if (!a2)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    v32 = *(*(a2 + 48) + 8);
    AttrData = mlir::OpaqueAttr::getAttrData(&v32);
    if (AttrData)
    {
      v16 = v14;
      if (v14 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v14 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v14;
      if (v14)
      {
        memmove(&__dst, AttrData, v14);
      }

      __dst.__r_.__value_.__s.__data_[v16] = 0;
    }

    else
    {
      memset(&__dst, 0, sizeof(__dst));
    }
  }

  v32 = a2;
  v17 = std::__hash_table<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::__unordered_map_hasher<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::hash<mlir::Operation *>,std::equal_to<mlir::Operation *>,true>,std::__unordered_map_equal<mlir::Operation *,std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>,std::equal_to<mlir::Operation *>,std::hash<mlir::Operation *>,true>,std::allocator<std::__hash_value_type<mlir::Operation *,std::unordered_map<void *,MPSGraphTensorData * {__strong}>>>>::find<mlir::Operation *>(&this[3], &v32);
  if (v17)
  {
    if (*(v17 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(a4, v17[3], v17[4]);
      goto LABEL_50;
    }

    v20 = *(v17 + 3);
    *(a4 + 16) = v17[5];
    *a4 = v20;
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

LABEL_51:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_52;
  }

  MPSSymbolTable::insertOpInSymbolTable(this, &__dst, a4, v18, v19);
  v32 = a2;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a4, *(a4 + 8));
    a2 = v32;
  }

  else
  {
    __p = *a4;
  }

  v21 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v22 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v21 >> 47) ^ v21);
  v23 = v22 ^ (v22 >> 47);
  v24 = 0x9DDFEA08EB382D69 * v23;
  v25 = this[4];
  if (!*&v25)
  {
    goto LABEL_48;
  }

  v26 = vcnt_s8(v25);
  v26.i16[0] = vaddlv_u8(v26);
  if (v26.u32[0] > 1uLL)
  {
    v27 = 0x9DDFEA08EB382D69 * v23;
    if (v24 >= *&v25)
    {
      v27 = v24 % *&v25;
    }
  }

  else
  {
    v27 = v24 & (*&v25 - 1);
  }

  v28 = *(*&this[3] + 8 * v27);
  if (!v28 || (v29 = *v28) == 0)
  {
LABEL_48:
    operator new();
  }

  if (v26.u32[0] < 2uLL)
  {
    while (1)
    {
      v31 = v29[1];
      if (v31 == v24)
      {
        if (v29[2] == a2)
        {
          goto LABEL_49;
        }
      }

      else if ((v31 & (*&v25 - 1)) != v27)
      {
        goto LABEL_48;
      }

      v29 = *v29;
      if (!v29)
      {
        goto LABEL_48;
      }
    }
  }

  while (1)
  {
    v30 = v29[1];
    if (v30 == v24)
    {
      break;
    }

    if (v30 >= *&v25)
    {
      v30 %= *&v25;
    }

    if (v30 != v27)
    {
      goto LABEL_48;
    }

LABEL_38:
    v29 = *v29;
    if (!v29)
    {
      goto LABEL_48;
    }
  }

  if (v29[2] != a2)
  {
    goto LABEL_38;
  }

LABEL_49:
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_51;
  }

LABEL_50:
  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_51;
  }

LABEL_52:
}

void sub_1E078D494(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (*(v23 + 23) < 0)
  {
    operator delete(*v23);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E078EB88(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_1E078F59C(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v2 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

void std::vector<mlir::NamedAttribute>::push_back[abi:ne200100](uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 4;
  v9 = (v7 >> 4) + 1;
  if (v9 >> 60)
  {
    std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 3 > v9)
  {
    v9 = v10 >> 3;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF0)
  {
    v11 = 0xFFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  *(16 * v8) = *a2;
  v5 = 16 * v8 + 16;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void sub_1E07906A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, void *a25)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void sub_1E0790B98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, ...)
{
  va_start(va, a18);

  llvm::raw_ostream::~raw_ostream(va);
  if (*(v19 - 17) < 0)
  {
    operator delete(*(v19 - 40));
  }

  _Unwind_Resume(a1);
}

void sub_1E0792048(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, void *a12, void *a13, void *a14, void *a15, void *a16, void *a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37)
{
  std::__tree<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>>>::destroy(a37);

  _Unwind_Resume(a1);
}

llvm **llvm::unique_function<BOOL ()(mlir::Location)>::~unique_function(llvm *a1)
{
  v1 = a1;
  v2 = *(a1 + 3);
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(*v1, *(v1 + 1));
    }
  }

  return v1;
}

{
  v1 = a1;
  v2 = *(a1 + 3);
  if (v2 >= 8)
  {
    if ((v2 & 4) != 0)
    {
      if ((v2 & 2) == 0)
      {
        a1 = *a1;
      }

      (*((v2 & 0xFFFFFFFFFFFFFFF8) + 16))(a1);
    }

    if ((v2 & 2) == 0)
    {
      llvm::deallocate_buffer(*v1, *(v1 + 1));
    }
  }

  return v1;
}

uint64_t llvm::StringMap<std::string,llvm::MallocAllocator>::try_emplace_with_hash<std::string>(llvm::StringMapImpl *a1, const void *a2, size_t a3, unsigned int a4, uint64_t a5)
{
  v9 = llvm::StringMapImpl::LookupBucketFor(a1, a2, a3, a4);
  v10 = *a1;
  v11 = v9;
  v12 = *(*a1 + 8 * v9);
  if (v12 == -8)
  {
    --*(a1 + 4);
  }

  else if (v12)
  {
    return 0;
  }

  buffer = llvm::allocate_buffer(a3 + 33, 8uLL);
  v15 = buffer;
  v16 = buffer + 32;
  if (a3)
  {
    memcpy(buffer + 32, a2, a3);
  }

  v16[a3] = 0;
  *v15 = a3;
  *(v15 + 8) = *a5;
  *(v15 + 3) = *(a5 + 16);
  *(a5 + 8) = 0;
  *(a5 + 16) = 0;
  *a5 = 0;
  *(v10 + 8 * v11) = v15;
  ++*(a1 + 3);
  v17 = (*a1 + 8 * llvm::StringMapImpl::RehashTable(a1, v11));
  if (*v17)
  {
    v18 = *v17 == -8;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    do
    {
      v20 = v17[1];
      ++v17;
      v19 = v20;
      if (v20)
      {
        v21 = v19 == -8;
      }

      else
      {
        v21 = 1;
      }
    }

    while (v21);
  }

  return 1;
}

void std::__shared_ptr_emplace<mlir::MLIRContext>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5B4BBA0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E12E5B90);
}

void std::__tree<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::__map_value_compare<unsigned long,std::__value_type<unsigned long,MPSGraphTensor * {__strong}>,std::less<unsigned long>,true>,std::allocator<std::__value_type<unsigned long,MPSGraphTensor * {__strong}>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void sub_1E0793FE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, void *__p, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

std::vector<int>::iterator std::vector<int>::insert(std::vector<int> *this, std::vector<int>::const_iterator __position, std::vector<int>::size_type __n, std::vector<int>::const_reference __x)
{
  if (!__n)
  {
    return this;
  }

  v5 = this;
  end = this->__end_;
  value = this->__end_cap_.__value_;
  if (__n > value - end)
  {
    begin = this->__begin_;
    v9 = __n + end - this->__begin_;
    if (v9 >> 62)
    {
      std::vector<std::shared_ptr<MIL::IRArgument>>::__throw_length_error[abi:ne200100]();
    }

    v10 = value - begin;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:ne200100]();
    }

    v27 = 4 * (__position.__i_ - begin);
    v28 = (v27 + 4 * __n);
    v29 = *__x;
    v30 = (__n - 1) & 0x3FFFFFFFFFFFFFFFLL;
    v31 = v27;
    if (v30 < 7)
    {
      goto LABEL_59;
    }

    v32 = v30 + 1;
    v31 = (v27 + 4 * (v32 & 0x7FFFFFFFFFFFFFF8));
    v33 = vdupq_n_s32(v29);
    v34 = (v27 + 16);
    v35 = v32 & 0x7FFFFFFFFFFFFFF8;
    do
    {
      v34[-1] = v33;
      *v34 = v33;
      v34 += 2;
      v35 -= 8;
    }

    while (v35);
    if (v32 != (v32 & 0x7FFFFFFFFFFFFFF8))
    {
LABEL_59:
      do
      {
        *v31++ = v29;
      }

      while (v31 != v28);
    }

    v36 = this->__end_ - __position.__i_;
    memcpy((v27 + 4 * __n), __position.__i_, v36);
    v37 = (v28 + v36);
    v5[1].__i_ = __position.__i_;
    i = v5->__i_;
    v39 = (__position.__i_ - v5->__i_);
    v40 = (v27 - v39);
    this = memcpy((v27 - v39), v5->__i_, v39);
    v5->__i_ = v40;
    v5[1].__i_ = v37;
    v5[2].__i_ = 0;
    if (i)
    {

      operator delete(i);
    }

    return this;
  }

  v12 = end - __position.__i_;
  v13 = 4 * __n;
  if (__n <= v12)
  {
    v14 = this->__end_;
    v12 = __n;
    v22 = &__position.__i_[v13 / 4];
    v23 = &end[v13 / 0xFFFFFFFFFFFFFFFCLL];
    v24 = v14;
    if (end < v13)
    {
      goto LABEL_40;
    }

    goto LABEL_22;
  }

  v14 = &end[__n - v12];
  v15 = *__x;
  v16 = v13 - (end - __position.__i_) - 4;
  v17 = this->__end_;
  if (v16 < 0x1C)
  {
    goto LABEL_60;
  }

  v18 = (v16 >> 2) + 1;
  v17 = &end[v18 & 0x7FFFFFFFFFFFFFF8];
  v19 = vdupq_n_s32(v15);
  v20 = (end + 4);
  v21 = v18 & 0x7FFFFFFFFFFFFFF8;
  do
  {
    v20[-1] = v19;
    *v20 = v19;
    v20 += 2;
    v21 -= 8;
  }

  while (v21);
  if (v18 != (v18 & 0x7FFFFFFFFFFFFFF8))
  {
LABEL_60:
    do
    {
      *v17++ = v15;
    }

    while (v17 != v14);
  }

  this->__end_ = v14;
  if (end != __position.__i_)
  {
    v22 = &__position.__i_[v13 / 4];
    v23 = &v14[v13 / 0xFFFFFFFFFFFFFFFCLL];
    v24 = &end[__n - v12];
    if (&v14[v13 / 0xFFFFFFFFFFFFFFFCLL] >= end)
    {
      goto LABEL_40;
    }

LABEL_22:
    v25 = v23 + 1;
    if (end > v23 + 1)
    {
      v25 = end;
    }

    v26 = &v25[v13 / 4] + ~v14;
    if (v26 > 0x1B)
    {
      v24 = v14;
      if (4 * __n >= 0x20)
      {
        v41 = (v26 >> 2) + 1;
        v42 = v41 & 0x7FFFFFFFFFFFFFF8;
        v43 = &v23[v42];
        v24 = &v14[v42];
        v44 = v14 + 4;
        v45 = (v23 + 4);
        v46 = v41 & 0x7FFFFFFFFFFFFFF8;
        do
        {
          v47 = *v45;
          *(v44 - 1) = *(v45 - 1);
          *v44 = v47;
          v44 += 2;
          v45 += 2;
          v46 -= 8;
        }

        while (v46);
        v23 = v43;
        if (v41 == (v41 & 0x7FFFFFFFFFFFFFF8))
        {
LABEL_40:
          this->__end_ = v24;
          if (v14 != v22)
          {
            v49 = __n;
            v50 = __x;
            this = memmove(v22, __position.__i_, v14 - v22);
            __n = v49;
            __x = v50;
          }

          if (__position.__i_ <= __x)
          {
            if (v5[1].__i_ <= __x)
            {
              v51 = 0;
            }

            else
            {
              v51 = __n;
            }

            __x += v51;
          }

          v52 = *__x;
          if (v12 >= 8)
          {
            v53 = &__position.__i_[v12 & 0xFFFFFFFFFFFFFFF8];
            v54 = v12 & 7;
            v55 = vdupq_n_s32(v52);
            v56 = (__position.__i_ + 4);
            v57 = v12 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              *(v56 - 1) = v55;
              *v56 = v55;
              v56 += 8;
              v57 -= 8;
            }

            while (v57);
            if (v12 == (v12 & 0xFFFFFFFFFFFFFFF8))
            {
              return this;
            }
          }

          else
          {
            v53 = __position.__i_;
            v54 = v12;
          }

          do
          {
            *v53++ = v52;
            --v54;
          }

          while (v54);
          return this;
        }
      }
    }

    else
    {
      v24 = v14;
    }

    do
    {
      v48 = *v23++;
      *v24++ = v48;
    }

    while (v23 < end);
    goto LABEL_40;
  }

  return this;
}

id padSizeScaleOffsetForLayout(MPSGraph *a1, MPSGraphTensor *a2, MPSGraphTensor *a3, MPSGraphTensor *a4, MPSGraphTensorNamedDataLayout a5, NSString *a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v33 = a1;
  v34 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a6;
  if (a5 >= MPSGraphTensorNamedDataLayoutHW || ((0x33u >> a5) & 1) == 0)
  {
    v19 = v34;
    v16 = v11;
    v17 = v12;
    goto LABEL_7;
  }

  v14 = qword_1E86D4B60[a5];
  v32 = qword_1E86D4B90[a5];
  v15 = v34;
  v16 = v11;
  v17 = v12;
  if (!v15)
  {
    goto LABEL_26;
  }

  if (v13)
  {
    v18 = [(NSString *)v13 stringByAppendingString:@"/pad0"];
  }

  else
  {
    v18 = @"resize/pad0";
  }

  v19 = [(MPSGraph *)v33 padTensor:v15 withPaddingMode:0 leftPadding:v14 rightPadding:v32 constantValue:v18 name:-1.0];

  if (v13)
  {

    v15 = v19;
LABEL_26:
    if (!v16)
    {
LABEL_36:
      if (!v17)
      {
        v19 = v15;
        goto LABEL_7;
      }

      if (v13)
      {
        v28 = [(NSString *)v13 stringByAppendingString:@"/pad2"];
        v29 = 0;
      }

      else
      {
        v28 = @"resize/pad2";
        v29 = 1;
      }

      v19 = v15;
      goto LABEL_42;
    }

    if (v13)
    {
      v25 = [(NSString *)v13 stringByAppendingString:@"/pad1"];
      v31 = 0;
    }

    else
    {
      v25 = @"resize/pad1";
      v31 = 1;
    }

    v19 = v15;
LABEL_33:
    v26 = v14;
    v27 = [(MPSGraph *)v33 padTensor:v16 withPaddingMode:0 leftPadding:v14 rightPadding:v32 constantValue:v25 name:1.0];

    if ((v31 & 1) == 0)
    {
    }

    v15 = v19;
    v16 = v27;
    v14 = v26;
    goto LABEL_36;
  }

  if (v16)
  {
    v25 = @"resize/pad1";
    v31 = 1;
    goto LABEL_33;
  }

  if (!v17)
  {
    v17 = 0;
    goto LABEL_7;
  }

  v28 = @"resize/pad2";
  v29 = 1;
LABEL_42:
  v30 = [(MPSGraph *)v33 padTensor:v17 withPaddingMode:0 leftPadding:v14 rightPadding:v32 constantValue:v28 name:0.0];

  if ((v29 & 1) == 0)
  {
  }

  v17 = v30;
LABEL_7:
  v20 = v19;
  if (v19)
  {
    v35 = v19;
    v21 = v16;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_12:
    v21 = [MEMORY[0x1E695DFB0] null];
    v36 = v21;
    v22 = v17;
    if (v17)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v20 = [MEMORY[0x1E695DFB0] null];
  v35 = v20;
  v21 = v16;
  if (!v16)
  {
    goto LABEL_12;
  }

LABEL_9:
  v36 = v21;
  v22 = v17;
  if (v17)
  {
    goto LABEL_14;
  }

LABEL_13:
  v22 = [MEMORY[0x1E695DFB0] null];
LABEL_14:
  v37 = v22;
  v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:3];
  if (!v17)
  {
  }

  if (!v16)
  {
  }

  if (!v19)
  {
  }

  return v23;
}

void sub_1E0794AA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, int a10, _Unwind_Exception *exception_object, void *a12, void *a13)
{
  if ((v19 & 1) == 0)
  {
  }

  _Unwind_Resume(a1);
}

void GPU::MakeListOpHandler::encodeOp(GPU::MakeListOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v11 = *(this + 3);
  if (*(v11 + 9))
  {
    v3 = v11 - 16;
  }

  else
  {
    v3 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v3, 0);
  ResultElementType = mlir::mpsx::FPToIntClampedOp::getResultElementType(&v11);
  v6 = getMPSGraphType(ResultElementType);
  if ((mlir::mpsx::MakeListOp::getMaxSize(&v11) & 0x100000000) != 0)
  {
    MaxSize = mlir::mpsx::MakeListOp::getMaxSize(&v11);
    if ((MaxSize & 0x100000000) == 0)
    {
      std::__throw_bad_optional_access[abi:ne200100]();
    }

    v7 = MaxSize;
  }

  else
  {
    v7 = -1;
  }

  v9 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  if (v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v10 = [[MPSGraphListData alloc] initEmptyListWithDevice:*(*(this + 2) + 48) maxSize:v7 elementType:v6];

  BaseRuntime::setTensorDataToDataMap(*(this + 2), NextResultAtOffset, v10);
}

void GPU::ListPushBackOpHandler::encodeOp(GPU::ListPushBackOpHandler *this, GPU::EncodeDescriptor *a2)
{
  v3 = *(this + 3);
  v4 = *(*(v3 + 72) + 24);
  if (*(v3 + 36))
  {
    v5 = v3 - 16;
  }

  else
  {
    v5 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v5, 0);
  v7 = *(*(v3 + 72) + 56);
  v8 = (*(**(this + 2) + 48))(*(this + 2), v4, 0);
  if (!v8 || (objc_opt_class(), objc_opt_isKindOfClass(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v16 = v8;
  v9 = (*(**(this + 2) + 48))(*(this + 2), v7, 0);
  if (!v9 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  if ([v16 maxSize] != -1)
  {
    v10 = [v16 list];
    [v10 count];
    [v16 maxSize];
  }

  if ([v16 maxSize] != -1)
  {
    v11 = [v16 list];
    v12 = [v11 count];
    v13 = [v16 maxSize];

    if (v12 >= v13)
    {
      if (MTLReportFailureTypeEnabled())
      {
        MTLReportFailure();
      }
    }
  }

  v14 = (*(**(this + 2) + 48))(*(this + 2), NextResultAtOffset, 0);
  if (v14 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v15 = [v16 clonedList];

  BaseRuntime::setTensorDataToDataMap(*(this + 2), NextResultAtOffset, v15);
  [v15 pushBackElement:v9];
}

void GPU::ListPopBackOpHandler::encodeOp(GPU::ListPopBackOpHandler *this, void **a2)
{
  v4 = *(this + 3);
  v5 = *(*(v4 + 72) + 24);
  if (*(v4 + 36))
  {
    v6 = v4 - 16;
  }

  else
  {
    v6 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v6, 1);
  v8 = mlir::detail::OpResultImpl::getNextResultAtOffset(NextResultAtOffset, 0);
  if (*(v4 + 36))
  {
    v9 = v4 - 16;
  }

  else
  {
    v9 = 0;
  }

  v10 = mlir::detail::OpResultImpl::getNextResultAtOffset(v9, 0);
  v11 = (*(**(this + 2) + 48))(*(this + 2), v5, 0);
  if (!v11 || (objc_opt_class(), objc_opt_isKindOfClass(), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  v25 = v11;
  v12 = [v25 elementType];
  v13 = [v25 list];
  [v13 count];

  v14 = [v25 list];
  v15 = [v14 count];

  if (!v15 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v16 = (*(**(this + 2) + 48))(*(this + 2), v10, 0);
  if (v16 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  v17 = [v25 clonedList];

  v18 = [v17 popBackElement];
  if (!v18 && MTLReportFailureTypeEnabled())
  {
    MTLReportFailure();
  }

  BaseRuntime::setTensorDataToDataMap(*(this + 2), v10, v17);
  v19 = (*(**(this + 2) + 48))(*(this + 2), v8, 0);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v24 = v12;
    v20 = a2;
    v21 = [v18 mpsndarray];
    if (!v21 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    v22 = *(this + 2);
    v23 = GPU::EncodeDescriptor::getcomputeEncoder(v20);
    GPURegionRuntime::copyNDArrayToTarget(v22, v23, v20[1], this + 15, v21, v19, v8, 0);

    v12 = v24;
  }

  else
  {
    if (v19 && MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }

    BaseRuntime::setTensorDataToDataMap(*(this + 2), v8, v18);
  }
}

void GPU::MakeListOpHandler::~MakeListOpHandler(GPU::MakeListOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ListPushBackOpHandler::~ListPushBackOpHandler(GPU::ListPushBackOpHandler *this)
{
  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void GPU::ListPopBackOpHandler::~ListPopBackOpHandler(id *this)
{

  GPU::BaseOpHandler::~BaseOpHandler(this);
}

{

  GPU::BaseOpHandler::~BaseOpHandler(this);

  JUMPOUT(0x1E12E5B90);
}

void sub_1E07986D8(_Unwind_Exception *a1)
{
  if (v4)
  {

    _Unwind_Resume(a1);
  }

  JUMPOUT(0x1E07986C0);
}

void sub_1E0798810(_Unwind_Exception *a1)
{
  if (v3)
  {
  }

  _Unwind_Resume(a1);
}

void sub_1E0798E20()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E0798DD8);
}

void sub_1E0798E30()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E0798DDCLL);
}

void sub_1E0798E40()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E0798DE0);
}

void sub_1E0798E50()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E0798DE4);
}

void sub_1E0798E60()
{
  if (v1)
  {
  }

  JUMPOUT(0x1E0798DE8);
}

void sub_1E07998C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17, void *a18, void *a19, void *a20, void *a21, void *a22, void *a23, uint64_t a24, void *a25, void *a26, void *a27)
{
  if (*(v30 - 128))
  {
  }

  _Unwind_Resume(a1);
}

void sub_1E0799F68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, char a38)
{
  mlir::OperationState::~OperationState(&a38);

  _Unwind_Resume(a1);
}

void sub_1E079A18C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  v15 = v14;

  _Unwind_Resume(a1);
}

void sub_1E079C9F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, char a44)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1E079CF90(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

uint64_t MPSSymbolTable::getLocationByInsertingOp<mlir::mps::ConstantOp>(llvm::StringMapImpl *a1, mlir::StringAttr **a2, std::string *a3, unsigned int a4, void *a5)
{
  v9 = a5;
  v26 = 260;
  v25[0] = a3;
  StringAttr = mlir::Builder::getStringAttr(a2, v25);
  v13 = mlir::FileLineColLoc::get(StringAttr, a4, 0);
  if (v9)
  {
    v14 = [v9 UTF8String];
    v15 = strlen(v14);
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v16 = v15;
    if (v15 >= 0x17)
    {
      operator new();
    }

    *(&__dst.__r_.__value_.__s + 23) = v15;
    if (v15)
    {
      memmove(&__dst, v14, v15);
    }

    v17 = &__dst + v16;
  }

  else
  {
    *(&__dst.__r_.__value_.__s + 23) = 12;
    LODWORD(__dst.__r_.__value_.__r.__words[1]) = 1953390964;
    __dst.__r_.__value_.__r.__words[0] = *"mps.constant";
    v17 = &__dst.__r_.__value_.__s.__data_[12];
  }

  *v17 = 0;
  MPSSymbolTable::insertOpInSymbolTable(a1, &__dst, &__p, v11, v12);
  p_p = __p.__r_.__value_.__r.__words[0];
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  v19 = 1;
  HIBYTE(v26) = 1;
  if (p_p->__r_.__value_.__s.__data_[0])
  {
    v25[0] = p_p;
    v19 = 3;
  }

  LOBYTE(v26) = v19;
  v20 = mlir::Builder::getStringAttr(a2, v25);
  v21 = mlir::NameLoc::get(v20, v13);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_16;
    }

LABEL_18:
    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_16;
  }

  if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_18;
  }

LABEL_16:

  return v21;
}

void sub_1E079D7BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if ((a21 & 0x80000000) == 0)
  {

    _Unwind_Resume(a1);
  }

  operator delete(__p);

  _Unwind_Resume(a1);
}

void sub_1E079DAA4(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

void sub_1E079E1DC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a17 < 0)
  {
    operator delete(__p);
    if ((a23 & 0x80000000) == 0)
    {
LABEL_3:

      if ((SHIBYTE(a11) & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_7;
    }
  }

  else if ((a23 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a18);

  if ((SHIBYTE(a11) & 0x80000000) == 0)
  {
LABEL_4:

    _Unwind_Resume(a1);
  }

LABEL_7:
  JUMPOUT(0x1E079E240);
}

void sub_1E079E230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    JUMPOUT(0x1E079E240);
  }

  JUMPOUT(0x1E079E1FCLL);
}

void sub_1E079E4B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);

    if ((a14 & 0x80000000) == 0)
    {
LABEL_3:

      _Unwind_Resume(a1);
    }
  }

  else
  {

    if ((a14 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  operator delete(a9);

  _Unwind_Resume(a1);
}

void sub_1E079E8F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, int a34, __int16 a35, char a36, char a37, uint64_t a38, uint64_t a39, char a40)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void EmitterObjC::helper<mlir::mps::PoolAvgOp>(id *a1, uint64_t a2, uint64_t *a3)
{
  v150 = *MEMORY[0x1E69E9840];
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolAvgOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v146 = v5;
  v6 = *(*(v5 + 72) + 24);
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  WindowSizes = mlir::mps::PoolAvgGradientOp::getWindowSizes(&v146);
  Strides = mlir::mps::Conv3DOp::getStrides(&v146);
  v142 = 0;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v146);
  v141[0] = 0;
  v141[1] = 0;
  PaddingStyle = mlir::mps::Conv3DOp::getPaddingStyle(&v146);
  if (PaddingStyle >= 5)
  {
    MEMORY[0x1E12E55D0](v141, "MPSGraphPaddingStyleTF_SAME");
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    MEMORY[0x1E12E55D0](v141, off_1E86D4BC0[PaddingStyle]);
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v146);
  v140 = v10;
  *(&v138.__r_.__value_.__s + 23) = 2;
  strcpy(&v138, "@[");
  *(&v137.__r_.__value_.__s + 23) = 2;
  strcpy(&v137, "@[");
  *(&v136.__r_.__value_.__s + 23) = 2;
  strcpy(&v136, "@[");
  *(&v135.__r_.__value_.__s + 23) = 2;
  strcpy(&v135, "@[");
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&WindowSizes, &v147);
  v111 = v6;
  v113 = NextResultAtOffset;
  size = v147.__r_.__value_.__l.__size_;
  v121 = v147.__r_.__value_.__r.__words[0];
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&Strides, &v147);
  v12 = v147.__r_.__value_.__l.__size_;
  v119 = v147.__r_.__value_.__r.__words[0];
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&InputAttributeNames, &v147);
  v112 = a1;
  if ((v140 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v13 = v147.__r_.__value_.__l.__size_;
  v115 = a3;
  v117 = v147.__r_.__value_.__r.__words[0];
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&Offsets, &v147);
  v14 = *&v147.__r_.__value_.__l.__data_;
  v15 = 4;
  do
  {
    while (1)
    {
      if (v15 != 4)
      {
        v17 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = v138.__r_.__value_.__l.__size_;
        }

        if (v18 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v18 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v147, 0, sizeof(v147));
        *(&v147.__r_.__value_.__s + 23) = v18 + 2;
        if (v18)
        {
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v138;
          }

          else
          {
            v19 = v138.__r_.__value_.__r.__words[0];
          }

          memmove(&v147, v19, v18);
        }

        strcpy(&v147 + v18, ", ");
        if (v17 < 0)
        {
          operator delete(v138.__r_.__value_.__l.__data_);
        }

        v138 = v147;
        v20 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v137.__r_.__value_.__l.__size_;
        }

        if (v21 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v21 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v147, 0, sizeof(v147));
        *(&v147.__r_.__value_.__s + 23) = v21 + 2;
        if (v21)
        {
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v137;
          }

          else
          {
            v22 = v137.__r_.__value_.__r.__words[0];
          }

          memmove(&v147, v22, v21);
        }

        strcpy(&v147 + v21, ", ");
        if (v20 < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        v137 = v147;
        v23 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
        if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = v136.__r_.__value_.__l.__size_;
        }

        if (v24 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v24 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v147, 0, sizeof(v147));
        *(&v147.__r_.__value_.__s + 23) = v24 + 2;
        if (v24)
        {
          if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &v136;
          }

          else
          {
            v25 = v136.__r_.__value_.__r.__words[0];
          }

          memmove(&v147, v25, v24);
        }

        strcpy(&v147 + v24, ", ");
        if (v23 < 0)
        {
          operator delete(v136.__r_.__value_.__l.__data_);
        }

        v136 = v147;
      }

      v147.__r_.__value_.__r.__words[0] = v121;
      v147.__r_.__value_.__l.__size_ = size;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      UInt = mlir::IntegerAttr::getUInt(&__p);
      v124 = v15;
      v147.__r_.__value_.__r.__words[0] = v119;
      v147.__r_.__value_.__l.__size_ = v12;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      v27 = mlir::IntegerAttr::getUInt(&__p);
      v147.__r_.__value_.__r.__words[0] = v117;
      v147.__r_.__value_.__l.__size_ = v13;
      v28 = v13;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      v29 = mlir::IntegerAttr::getUInt(&__p);
      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v138.__r_.__value_.__l.__size_;
      }

      if (v30 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v31 = v29;
      if (v30 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v30 + 1;
      if (v30)
      {
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v138;
        }

        else
        {
          v32 = v138.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v32, v30);
      }

      *(&v147.__r_.__value_.__l.__data_ + v30) = 64;
      std::to_string(&__p, UInt);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = __p.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v147, p_p, v34);
      v36 = v35->__r_.__value_.__r.__words[0];
      *v148 = v35->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v35->__r_.__value_.__r.__words[1] + 7);
      v37 = HIBYTE(v35->__r_.__value_.__r.__words[2]);
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      v138.__r_.__value_.__r.__words[0] = v36;
      v138.__r_.__value_.__l.__size_ = *v148;
      *(&v138.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v138.__r_.__value_.__s + 23) = v37;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_77;
        }
      }

      else if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      operator delete(v147.__r_.__value_.__l.__data_);
LABEL_77:
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v137.__r_.__value_.__l.__size_;
      }

      if (v38 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v38 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v38 + 1;
      if (v38)
      {
        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v137;
        }

        else
        {
          v39 = v137.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v39, v38);
      }

      *(&v147.__r_.__value_.__l.__data_ + v38) = 64;
      std::to_string(&__p, v27);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &__p;
      }

      else
      {
        v40 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = __p.__r_.__value_.__l.__size_;
      }

      v42 = std::string::append(&v147, v40, v41);
      v43 = v42->__r_.__value_.__r.__words[0];
      *v148 = v42->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v42->__r_.__value_.__r.__words[1] + 7);
      v44 = HIBYTE(v42->__r_.__value_.__r.__words[2]);
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      v137.__r_.__value_.__r.__words[0] = v43;
      v137.__r_.__value_.__l.__size_ = *v148;
      *(&v137.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v137.__r_.__value_.__s + 23) = v44;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_98;
        }
      }

      else if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_98;
      }

      operator delete(v147.__r_.__value_.__l.__data_);
LABEL_98:
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v136.__r_.__value_.__l.__size_;
      }

      if (v45 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v45 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v45 + 1;
      if (v45)
      {
        if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v136;
        }

        else
        {
          v46 = v136.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v46, v45);
      }

      *(&v147.__r_.__value_.__l.__data_ + v45) = 64;
      std::to_string(&__p, v31);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &__p;
      }

      else
      {
        v47 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = __p.__r_.__value_.__l.__size_;
      }

      v49 = std::string::append(&v147, v47, v48);
      v50 = v49->__r_.__value_.__r.__words[0];
      *v148 = v49->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v49->__r_.__value_.__r.__words[1] + 7);
      v51 = HIBYTE(v49->__r_.__value_.__r.__words[2]);
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      v136.__r_.__value_.__r.__words[0] = v50;
      v136.__r_.__value_.__l.__size_ = *v148;
      *(&v136.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v136.__r_.__value_.__s + 23) = v51;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      v16 = v28;
      if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_119;
      }

LABEL_14:
      v13 = v16 + 1;
      ++v12;
      ++size;
      v15 = v124 - 1;
      if (v124 == 1)
      {
        goto LABEL_125;
      }
    }

    v16 = v28;
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_119:
    operator delete(v147.__r_.__value_.__l.__data_);
    v13 = v16 + 1;
    ++v12;
    ++size;
    v15 = v124 - 1;
  }

  while (v124 != 1);
LABEL_125:
  v52 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v138.__r_.__value_.__l.__size_;
  }

  if (v53 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v53 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v53 + 1;
  if (v53)
  {
    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v138;
    }

    else
    {
      v54 = v138.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v54, v53);
  }

  *(&v147.__r_.__value_.__l.__data_ + v53) = 93;
  if (v52 < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  v138 = v147;
  v55 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v56 = v137.__r_.__value_.__l.__size_;
  }

  if (v56 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v56 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v56 + 1;
  if (v56)
  {
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v137;
    }

    else
    {
      v57 = v137.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v57, v56);
  }

  *(&v147.__r_.__value_.__l.__data_ + v56) = 93;
  if (v55 < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  v137 = v147;
  v58 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = v136.__r_.__value_.__l.__size_;
  }

  if (v59 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v59 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v59 + 1;
  if (v59)
  {
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v136;
    }

    else
    {
      v60 = v136.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v60, v59);
  }

  *(&v147.__r_.__value_.__l.__data_ + v59) = 93;
  if (v58 < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  v136 = v147;
  *&v147.__r_.__value_.__l.__data_ = v14;
  __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
  v61 = mlir::IntegerAttr::getUInt(&__p);
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v62 = v135.__r_.__value_.__l.__size_;
  }

  if (v62 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_303:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v63 = v61;
  if (v62 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v62 + 1;
  if (v62)
  {
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v135;
    }

    else
    {
      v64 = v135.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v64, v62);
  }

  *(&v147.__r_.__value_.__l.__data_ + v62) = 64;
  std::to_string(&__p, v63);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = &__p;
  }

  else
  {
    v65 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v66 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v66 = __p.__r_.__value_.__l.__size_;
  }

  v67 = std::string::append(&v147, v65, v66);
  v68 = v67->__r_.__value_.__r.__words[0];
  *v148 = v67->__r_.__value_.__l.__size_;
  *&v148[7] = *(&v67->__r_.__value_.__r.__words[1] + 7);
  v69 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v135.__r_.__value_.__r.__words[0] = v68;
  v135.__r_.__value_.__l.__size_ = *v148;
  *(&v135.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
  *(&v135.__r_.__value_.__s + 23) = v69;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_290;
    }
  }

  else
  {
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_185;
    }

LABEL_290:
    operator delete(v147.__r_.__value_.__l.__data_);
  }

LABEL_185:
  v70 = *(&v14 + 1) + 1;
  v71 = 7;
  while (2)
  {
    while (2)
    {
      v72 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v73 = v135.__r_.__value_.__l.__size_;
      }

      if (v73 + 2 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v73 + 2 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v73 + 2;
      if (v73)
      {
        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = &v135;
        }

        else
        {
          v74 = v135.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v74, v73);
      }

      strcpy(&v147 + v73, ", ");
      if (v72 < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      v135 = v147;
      v147.__r_.__value_.__r.__words[0] = v14;
      v147.__r_.__value_.__l.__size_ = v70;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      v75 = mlir::IntegerAttr::getUInt(&__p);
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v76 = v135.__r_.__value_.__l.__size_;
      }

      if (v76 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_303;
      }

      v77 = v75;
      if (v76 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v76 + 1;
      if (v76)
      {
        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v78 = &v135;
        }

        else
        {
          v78 = v135.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v78, v76);
      }

      *(&v147.__r_.__value_.__l.__data_ + v76) = 64;
      std::to_string(&__p, v77);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = &__p;
      }

      else
      {
        v79 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v80 = __p.__r_.__value_.__l.__size_;
      }

      v81 = std::string::append(&v147, v79, v80);
      v82 = v81->__r_.__value_.__r.__words[0];
      *v148 = v81->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v81->__r_.__value_.__r.__words[1] + 7);
      v83 = HIBYTE(v81->__r_.__value_.__r.__words[2]);
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      v135.__r_.__value_.__r.__words[0] = v82;
      v135.__r_.__value_.__l.__size_ = *v148;
      *(&v135.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v135.__r_.__value_.__s + 23) = v83;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }

        goto LABEL_187;
      }

      if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_187:
        ++v70;
        if (!--v71)
        {
          goto LABEL_223;
        }

        continue;
      }

      break;
    }

    operator delete(v147.__r_.__value_.__l.__data_);
    ++v70;
    if (--v71)
    {
      continue;
    }

    break;
  }

LABEL_223:
  v84 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v85 = v135.__r_.__value_.__l.__size_;
  }

  if (v85 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v85 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v85 + 1;
  if (v85)
  {
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v86 = &v135;
    }

    else
    {
      v86 = v135.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v86, v85);
  }

  *(&v147.__r_.__value_.__l.__data_ + v85) = 93;
  if (v84 < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v135 = v147;
  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v146);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v146);
  v89 = MEMORY[0x1E696AEC0];
  (*(*v112 + 4))(&v147, v112, v113);
  if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = &v147;
  }

  else
  {
    v90 = v147.__r_.__value_.__r.__words[0];
  }

  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = &v138;
  }

  else
  {
    v91 = v138.__r_.__value_.__r.__words[0];
  }

  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v92 = &v137;
  }

  else
  {
    v92 = v137.__r_.__value_.__r.__words[0];
  }

  v93 = &v136;
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v93 = v136.__r_.__value_.__r.__words[0];
  }

  v123 = v93;
  v125 = v92;
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v94 = &v135;
  }

  else
  {
    v94 = v135.__r_.__value_.__r.__words[0];
  }

  v95 = v141;
  if (v142 < 0)
  {
    v95 = v141[0];
  }

  v120 = v95;
  v122 = v94;
  (*(*v112 + 4))(&__p, v112, v113);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = &__p;
  }

  else
  {
    v96 = __p.__r_.__value_.__r.__words[0];
  }

  v118 = v96;
  if (InferredResultTypes)
  {
    v97 = "YES";
  }

  else
  {
    v97 = "NO";
  }

  (*(*v112 + 4))(v148, v112, v113);
  v114 = v91;
  if (v149 >= 0)
  {
    v98 = v148;
  }

  else
  {
    v98 = *v148;
  }

  if (ResetAfter)
  {
    v99 = "YES";
  }

  else
  {
    v99 = "NO";
  }

  (*(*v112 + 4))(v132, v112, v113);
  if (v133 >= 0)
  {
    v100 = v132;
  }

  else
  {
    v100 = v132[0];
  }

  v101 = v115;
  if (*(v115 + 23) < 0)
  {
    v101 = *v115;
  }

  v116 = v101;
  v131 = v111;
  v129[0] = &v131;
  v102 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v112 + 32, &v131, &std::piecewise_construct, v129);
  v103 = v102 + 3;
  if (*(v102 + 47) < 0)
  {
    v103 = *v103;
  }

  (*(*v112 + 4))(v129, v112, v113);
  v104 = v130;
  v105 = v129[0];
  v127 = 0;
  LOBYTE(v126) = 0;
  EmitObjC::emitTensorName(v112, v113, &v126, &v128);
  v106 = v129;
  if (v104 < 0)
  {
    v106 = v105;
  }

  if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v107 = &v128;
  }

  else
  {
    v107 = v128.__r_.__value_.__r.__words[0];
  }

  v108 = [v89 stringWithFormat:@"\n    MPSGraphPooling4DOpDescriptor *%spoolDesc =\n    [MPSGraphPooling4DOpDescriptor descriptorWithKernelSizes:%s\n                                                     strides:%s\n                                               dilationRates:%s\n                                               paddingValues:%s\n                                                paddingStyle:%s]\n    %spoolDesc.ceilMode = %s;\n    %spoolDesc.includeZeroPadToAverage = %s;\n    \n    MPSGraphTensor *%s =\n    [graph %sPooling4DWithSourceTensor:%s\n                             descriptor:%spoolDesc\n                                   name:%s];\n    ", v90, v114, v125, v123, v122, v120, v118, v97, v98, v99, v100, v116, v103, v106, v107];;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
    if (v127 < 0)
    {
      goto LABEL_292;
    }

LABEL_278:
    if ((v130 & 0x80000000) == 0)
    {
      goto LABEL_279;
    }

LABEL_293:
    operator delete(v129[0]);
    if (v133 < 0)
    {
      goto LABEL_294;
    }

LABEL_280:
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_281;
    }

LABEL_295:
    operator delete(*v148);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_296;
    }

LABEL_282:
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_297:
      operator delete(v147.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((v127 & 0x80000000) == 0)
    {
      goto LABEL_278;
    }

LABEL_292:
    operator delete(v126);
    if (v130 < 0)
    {
      goto LABEL_293;
    }

LABEL_279:
    if ((v133 & 0x80000000) == 0)
    {
      goto LABEL_280;
    }

LABEL_294:
    operator delete(v132[0]);
    if (v149 < 0)
    {
      goto LABEL_295;
    }

LABEL_281:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_282;
    }

LABEL_296:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_297;
    }
  }

  v109 = [v112[27] stringByAppendingString:v108];
  v110 = v112[27];
  v112[27] = v109;

  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_299;
    }

LABEL_285:
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_286;
    }

LABEL_300:
    operator delete(v137.__r_.__value_.__l.__data_);
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_301;
    }

LABEL_287:
    if (SHIBYTE(v142) < 0)
    {
LABEL_302:
      operator delete(v141[0]);
    }
  }

  else
  {
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_285;
    }

LABEL_299:
    operator delete(v136.__r_.__value_.__l.__data_);
    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_300;
    }

LABEL_286:
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_287;
    }

LABEL_301:
    operator delete(v138.__r_.__value_.__l.__data_);
    if (SHIBYTE(v142) < 0)
    {
      goto LABEL_302;
    }
  }
}

void sub_1E07A0D94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52, int a53, __int16 a54, char a55, char a56, uint64_t a57, void *a58, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  if (a56 < 0)
  {
    operator delete(__p);
    if ((a63 & 0x80000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a63 & 0x80000000) == 0)
  {
LABEL_3:
    if (a66 < 0)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  operator delete(a58);
  if (a66 < 0)
  {
LABEL_4:
    operator delete(a65);
    if ((a68 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

LABEL_9:
  if ((a68 & 0x80000000) == 0)
  {
LABEL_5:
    if (*(v68 - 217) < 0)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_10:
  operator delete(a67);
  if (*(v68 - 217) < 0)
  {
LABEL_6:
    operator delete(*(v68 - 240));
    _Unwind_Resume(a1);
  }

LABEL_11:
  _Unwind_Resume(a1);
}

void EmitterObjC::helper<mlir::mps::PoolMaxOp>(id *a1, uint64_t a2, uint64_t *a3)
{
  v150 = *MEMORY[0x1E69E9840];
  if (*(*(a2 + 48) + 16) == &mlir::detail::TypeIDResolver<mlir::mps::PoolMaxOp,void>::id)
  {
    v5 = a2;
  }

  else
  {
    v5 = 0;
  }

  v146 = v5;
  v6 = *(*(v5 + 72) + 24);
  if (*(a2 + 36))
  {
    v7 = a2 - 16;
  }

  else
  {
    v7 = 0;
  }

  NextResultAtOffset = mlir::detail::OpResultImpl::getNextResultAtOffset(v7, 0);
  WindowSizes = mlir::mps::PoolMaxGradientOp::getWindowSizes(&v146);
  Strides = mlir::mps::PoolMaxGradientOp::getStrides(&v146);
  v142 = 0;
  InputAttributeNames = mlir::pdl_interp::CreateOperationOp::getInputAttributeNames(&v146);
  v141[0] = 0;
  v141[1] = 0;
  WeightsLayout = mlir::mps::Conv3DOp::getWeightsLayout(&v146);
  if (WeightsLayout >= 5)
  {
    MEMORY[0x1E12E55D0](v141, "MPSGraphPaddingStyleTF_SAME");
    if (MTLReportFailureTypeEnabled())
    {
      MTLReportFailure();
    }
  }

  else
  {
    MEMORY[0x1E12E55D0](v141, off_1E86D4BC0[WeightsLayout]);
  }

  Offsets = mlir::mps::StencilOp::getOffsets(&v146);
  v140 = v10;
  *(&v138.__r_.__value_.__s + 23) = 2;
  strcpy(&v138, "@[");
  *(&v137.__r_.__value_.__s + 23) = 2;
  strcpy(&v137, "@[");
  *(&v136.__r_.__value_.__s + 23) = 2;
  strcpy(&v136, "@[");
  *(&v135.__r_.__value_.__s + 23) = 2;
  strcpy(&v135, "@[");
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&WindowSizes, &v147);
  v111 = v6;
  v113 = NextResultAtOffset;
  size = v147.__r_.__value_.__l.__size_;
  v121 = v147.__r_.__value_.__r.__words[0];
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&Strides, &v147);
  v12 = v147.__r_.__value_.__l.__size_;
  v119 = v147.__r_.__value_.__r.__words[0];
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&InputAttributeNames, &v147);
  v112 = a1;
  if ((v140 & 1) == 0)
  {
    std::__throw_bad_optional_access[abi:ne200100]();
  }

  v13 = v147.__r_.__value_.__l.__size_;
  v115 = a3;
  v117 = v147.__r_.__value_.__r.__words[0];
  mlir::DenseElementsAttr::tryGetValues<mlir::BoolAttr,void>(&Offsets, &v147);
  v14 = *&v147.__r_.__value_.__l.__data_;
  v15 = 4;
  do
  {
    while (1)
    {
      if (v15 != 4)
      {
        v17 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v18 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v18 = v138.__r_.__value_.__l.__size_;
        }

        if (v18 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v18 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v147, 0, sizeof(v147));
        *(&v147.__r_.__value_.__s + 23) = v18 + 2;
        if (v18)
        {
          if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v19 = &v138;
          }

          else
          {
            v19 = v138.__r_.__value_.__r.__words[0];
          }

          memmove(&v147, v19, v18);
        }

        strcpy(&v147 + v18, ", ");
        if (v17 < 0)
        {
          operator delete(v138.__r_.__value_.__l.__data_);
        }

        v138 = v147;
        v20 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v21 = v137.__r_.__value_.__l.__size_;
        }

        if (v21 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v21 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v147, 0, sizeof(v147));
        *(&v147.__r_.__value_.__s + 23) = v21 + 2;
        if (v21)
        {
          if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &v137;
          }

          else
          {
            v22 = v137.__r_.__value_.__r.__words[0];
          }

          memmove(&v147, v22, v21);
        }

        strcpy(&v147 + v21, ", ");
        if (v20 < 0)
        {
          operator delete(v137.__r_.__value_.__l.__data_);
        }

        v137 = v147;
        v23 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
        if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v24 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v24 = v136.__r_.__value_.__l.__size_;
        }

        if (v24 + 2 > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        if (v24 + 2 >= 0x17)
        {
          operator new();
        }

        memset(&v147, 0, sizeof(v147));
        *(&v147.__r_.__value_.__s + 23) = v24 + 2;
        if (v24)
        {
          if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &v136;
          }

          else
          {
            v25 = v136.__r_.__value_.__r.__words[0];
          }

          memmove(&v147, v25, v24);
        }

        strcpy(&v147 + v24, ", ");
        if (v23 < 0)
        {
          operator delete(v136.__r_.__value_.__l.__data_);
        }

        v136 = v147;
      }

      v147.__r_.__value_.__r.__words[0] = v121;
      v147.__r_.__value_.__l.__size_ = size;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      UInt = mlir::IntegerAttr::getUInt(&__p);
      v124 = v15;
      v147.__r_.__value_.__r.__words[0] = v119;
      v147.__r_.__value_.__l.__size_ = v12;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      v27 = mlir::IntegerAttr::getUInt(&__p);
      v147.__r_.__value_.__r.__words[0] = v117;
      v147.__r_.__value_.__l.__size_ = v13;
      v28 = v13;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      v29 = mlir::IntegerAttr::getUInt(&__p);
      if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v30 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v30 = v138.__r_.__value_.__l.__size_;
      }

      if (v30 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      v31 = v29;
      if (v30 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v30 + 1;
      if (v30)
      {
        if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v32 = &v138;
        }

        else
        {
          v32 = v138.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v32, v30);
      }

      *(&v147.__r_.__value_.__l.__data_ + v30) = 64;
      std::to_string(&__p, UInt);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v34 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v34 = __p.__r_.__value_.__l.__size_;
      }

      v35 = std::string::append(&v147, p_p, v34);
      v36 = v35->__r_.__value_.__r.__words[0];
      *v148 = v35->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v35->__r_.__value_.__r.__words[1] + 7);
      v37 = HIBYTE(v35->__r_.__value_.__r.__words[2]);
      v35->__r_.__value_.__l.__size_ = 0;
      v35->__r_.__value_.__r.__words[2] = 0;
      v35->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v138.__r_.__value_.__l.__data_);
      }

      v138.__r_.__value_.__r.__words[0] = v36;
      v138.__r_.__value_.__l.__size_ = *v148;
      *(&v138.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v138.__r_.__value_.__s + 23) = v37;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_77;
        }
      }

      else if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_77;
      }

      operator delete(v147.__r_.__value_.__l.__data_);
LABEL_77:
      if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v38 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v38 = v137.__r_.__value_.__l.__size_;
      }

      if (v38 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v38 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v38 + 1;
      if (v38)
      {
        if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v39 = &v137;
        }

        else
        {
          v39 = v137.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v39, v38);
      }

      *(&v147.__r_.__value_.__l.__data_ + v38) = 64;
      std::to_string(&__p, v27);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v40 = &__p;
      }

      else
      {
        v40 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v41 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v41 = __p.__r_.__value_.__l.__size_;
      }

      v42 = std::string::append(&v147, v40, v41);
      v43 = v42->__r_.__value_.__r.__words[0];
      *v148 = v42->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v42->__r_.__value_.__r.__words[1] + 7);
      v44 = HIBYTE(v42->__r_.__value_.__r.__words[2]);
      v42->__r_.__value_.__l.__size_ = 0;
      v42->__r_.__value_.__r.__words[2] = 0;
      v42->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v137.__r_.__value_.__l.__data_);
      }

      v137.__r_.__value_.__r.__words[0] = v43;
      v137.__r_.__value_.__l.__size_ = *v148;
      *(&v137.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v137.__r_.__value_.__s + 23) = v44;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
        {
          goto LABEL_98;
        }
      }

      else if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_98;
      }

      operator delete(v147.__r_.__value_.__l.__data_);
LABEL_98:
      if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v45 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v45 = v136.__r_.__value_.__l.__size_;
      }

      if (v45 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v45 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v45 + 1;
      if (v45)
      {
        if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v46 = &v136;
        }

        else
        {
          v46 = v136.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v46, v45);
      }

      *(&v147.__r_.__value_.__l.__data_ + v45) = 64;
      std::to_string(&__p, v31);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v47 = &__p;
      }

      else
      {
        v47 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v48 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v48 = __p.__r_.__value_.__l.__size_;
      }

      v49 = std::string::append(&v147, v47, v48);
      v50 = v49->__r_.__value_.__r.__words[0];
      *v148 = v49->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v49->__r_.__value_.__r.__words[1] + 7);
      v51 = HIBYTE(v49->__r_.__value_.__r.__words[2]);
      v49->__r_.__value_.__l.__size_ = 0;
      v49->__r_.__value_.__r.__words[2] = 0;
      v49->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v136.__r_.__value_.__l.__data_);
      }

      v136.__r_.__value_.__r.__words[0] = v50;
      v136.__r_.__value_.__l.__size_ = *v148;
      *(&v136.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v136.__r_.__value_.__s + 23) = v51;
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        break;
      }

      operator delete(__p.__r_.__value_.__l.__data_);
      v16 = v28;
      if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_119;
      }

LABEL_14:
      v13 = v16 + 1;
      ++v12;
      ++size;
      v15 = v124 - 1;
      if (v124 == 1)
      {
        goto LABEL_125;
      }
    }

    v16 = v28;
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_14;
    }

LABEL_119:
    operator delete(v147.__r_.__value_.__l.__data_);
    v13 = v16 + 1;
    ++v12;
    ++size;
    v15 = v124 - 1;
  }

  while (v124 != 1);
LABEL_125:
  v52 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v138.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v138.__r_.__value_.__l.__size_;
  }

  if (v53 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v53 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v53 + 1;
  if (v53)
  {
    if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v54 = &v138;
    }

    else
    {
      v54 = v138.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v54, v53);
  }

  *(&v147.__r_.__value_.__l.__data_ + v53) = 93;
  if (v52 < 0)
  {
    operator delete(v138.__r_.__value_.__l.__data_);
  }

  v138 = v147;
  v55 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v56 = HIBYTE(v137.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v56 = v137.__r_.__value_.__l.__size_;
  }

  if (v56 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v56 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v56 + 1;
  if (v56)
  {
    if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v57 = &v137;
    }

    else
    {
      v57 = v137.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v57, v56);
  }

  *(&v147.__r_.__value_.__l.__data_ + v56) = 93;
  if (v55 < 0)
  {
    operator delete(v137.__r_.__value_.__l.__data_);
  }

  v137 = v147;
  v58 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v59 = HIBYTE(v136.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v59 = v136.__r_.__value_.__l.__size_;
  }

  if (v59 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v59 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v59 + 1;
  if (v59)
  {
    if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v60 = &v136;
    }

    else
    {
      v60 = v136.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v60, v59);
  }

  *(&v147.__r_.__value_.__l.__data_ + v59) = 93;
  if (v58 < 0)
  {
    operator delete(v136.__r_.__value_.__l.__data_);
  }

  v136 = v147;
  *&v147.__r_.__value_.__l.__data_ = v14;
  __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
  v61 = mlir::IntegerAttr::getUInt(&__p);
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v62 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v62 = v135.__r_.__value_.__l.__size_;
  }

  if (v62 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_303:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v63 = v61;
  if (v62 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v62 + 1;
  if (v62)
  {
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v64 = &v135;
    }

    else
    {
      v64 = v135.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v64, v62);
  }

  *(&v147.__r_.__value_.__l.__data_ + v62) = 64;
  std::to_string(&__p, v63);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v65 = &__p;
  }

  else
  {
    v65 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v66 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v66 = __p.__r_.__value_.__l.__size_;
  }

  v67 = std::string::append(&v147, v65, v66);
  v68 = v67->__r_.__value_.__r.__words[0];
  *v148 = v67->__r_.__value_.__l.__size_;
  *&v148[7] = *(&v67->__r_.__value_.__r.__words[1] + 7);
  v69 = HIBYTE(v67->__r_.__value_.__r.__words[2]);
  v67->__r_.__value_.__l.__size_ = 0;
  v67->__r_.__value_.__r.__words[2] = 0;
  v67->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v135.__r_.__value_.__r.__words[0] = v68;
  v135.__r_.__value_.__l.__size_ = *v148;
  *(&v135.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
  *(&v135.__r_.__value_.__s + 23) = v69;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_290;
    }
  }

  else
  {
    if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_185;
    }

LABEL_290:
    operator delete(v147.__r_.__value_.__l.__data_);
  }

LABEL_185:
  v70 = *(&v14 + 1) + 1;
  v71 = 7;
  while (2)
  {
    while (2)
    {
      v72 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v73 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v73 = v135.__r_.__value_.__l.__size_;
      }

      if (v73 + 2 > 0x7FFFFFFFFFFFFFF7)
      {
        std::string::__throw_length_error[abi:ne200100]();
      }

      if (v73 + 2 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v73 + 2;
      if (v73)
      {
        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v74 = &v135;
        }

        else
        {
          v74 = v135.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v74, v73);
      }

      strcpy(&v147 + v73, ", ");
      if (v72 < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      v135 = v147;
      v147.__r_.__value_.__r.__words[0] = v14;
      v147.__r_.__value_.__l.__size_ = v70;
      __p.__r_.__value_.__r.__words[0] = mlir::DenseElementsAttr::AttributeElementIterator::operator*(&v147);
      v75 = mlir::IntegerAttr::getUInt(&__p);
      if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v76 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v76 = v135.__r_.__value_.__l.__size_;
      }

      if (v76 + 1 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_303;
      }

      v77 = v75;
      if (v76 + 1 >= 0x17)
      {
        operator new();
      }

      memset(&v147, 0, sizeof(v147));
      *(&v147.__r_.__value_.__s + 23) = v76 + 1;
      if (v76)
      {
        if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v78 = &v135;
        }

        else
        {
          v78 = v135.__r_.__value_.__r.__words[0];
        }

        memmove(&v147, v78, v76);
      }

      *(&v147.__r_.__value_.__l.__data_ + v76) = 64;
      std::to_string(&__p, v77);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v79 = &__p;
      }

      else
      {
        v79 = __p.__r_.__value_.__r.__words[0];
      }

      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v80 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v80 = __p.__r_.__value_.__l.__size_;
      }

      v81 = std::string::append(&v147, v79, v80);
      v82 = v81->__r_.__value_.__r.__words[0];
      *v148 = v81->__r_.__value_.__l.__size_;
      *&v148[7] = *(&v81->__r_.__value_.__r.__words[1] + 7);
      v83 = HIBYTE(v81->__r_.__value_.__r.__words[2]);
      v81->__r_.__value_.__l.__size_ = 0;
      v81->__r_.__value_.__r.__words[2] = 0;
      v81->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v135.__r_.__value_.__l.__data_);
      }

      v135.__r_.__value_.__r.__words[0] = v82;
      v135.__r_.__value_.__l.__size_ = *v148;
      *(&v135.__r_.__value_.__r.__words[1] + 7) = *&v148[7];
      *(&v135.__r_.__value_.__s + 23) = v83;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
        if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
        {
          break;
        }

        goto LABEL_187;
      }

      if ((SHIBYTE(v147.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_187:
        ++v70;
        if (!--v71)
        {
          goto LABEL_223;
        }

        continue;
      }

      break;
    }

    operator delete(v147.__r_.__value_.__l.__data_);
    ++v70;
    if (--v71)
    {
      continue;
    }

    break;
  }

LABEL_223:
  v84 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v85 = HIBYTE(v135.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v85 = v135.__r_.__value_.__l.__size_;
  }

  if (v85 + 1 > 0x7FFFFFFFFFFFFFF7)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v85 + 1 >= 0x17)
  {
    operator new();
  }

  memset(&v147, 0, sizeof(v147));
  *(&v147.__r_.__value_.__s + 23) = v85 + 1;
  if (v85)
  {
    if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v86 = &v135;
    }

    else
    {
      v86 = v135.__r_.__value_.__r.__words[0];
    }

    memmove(&v147, v86, v85);
  }

  *(&v147.__r_.__value_.__l.__data_ + v85) = 93;
  if (v84 < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
  }

  v135 = v147;
  ResetAfter = mlir::mps::GRUOp::getResetAfter(&v146);
  InferredResultTypes = mlir::pdl_interp::CreateOperationOp::getInferredResultTypes(&v146);
  v89 = MEMORY[0x1E696AEC0];
  (*(*v112 + 4))(&v147, v112, v113);
  if ((v147.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v90 = &v147;
  }

  else
  {
    v90 = v147.__r_.__value_.__r.__words[0];
  }

  if ((v138.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v91 = &v138;
  }

  else
  {
    v91 = v138.__r_.__value_.__r.__words[0];
  }

  if ((v137.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v92 = &v137;
  }

  else
  {
    v92 = v137.__r_.__value_.__r.__words[0];
  }

  v93 = &v136;
  if ((v136.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v93 = v136.__r_.__value_.__r.__words[0];
  }

  v123 = v93;
  v125 = v92;
  if ((v135.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v94 = &v135;
  }

  else
  {
    v94 = v135.__r_.__value_.__r.__words[0];
  }

  v95 = v141;
  if (v142 < 0)
  {
    v95 = v141[0];
  }

  v120 = v95;
  v122 = v94;
  (*(*v112 + 4))(&__p, v112, v113);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v96 = &__p;
  }

  else
  {
    v96 = __p.__r_.__value_.__r.__words[0];
  }

  v118 = v96;
  if (InferredResultTypes)
  {
    v97 = "YES";
  }

  else
  {
    v97 = "NO";
  }

  (*(*v112 + 4))(v148, v112, v113);
  v114 = v91;
  if (v149 >= 0)
  {
    v98 = v148;
  }

  else
  {
    v98 = *v148;
  }

  if (ResetAfter)
  {
    v99 = "YES";
  }

  else
  {
    v99 = "NO";
  }

  (*(*v112 + 4))(v132, v112, v113);
  if (v133 >= 0)
  {
    v100 = v132;
  }

  else
  {
    v100 = v132[0];
  }

  v101 = v115;
  if (*(v115 + 23) < 0)
  {
    v101 = *v115;
  }

  v116 = v101;
  v131 = v111;
  v129[0] = &v131;
  v102 = std::__hash_table<std::__hash_value_type<void *,std::string>,std::__unordered_map_hasher<void *,std::__hash_value_type<void *,std::string>,std::hash<void *>,std::equal_to<void *>,true>,std::__unordered_map_equal<void *,std::__hash_value_type<void *,std::string>,std::equal_to<void *>,std::hash<void *>,true>,std::allocator<std::__hash_value_type<void *,std::string>>>::__emplace_unique_key_args<void *,std::piecewise_construct_t const&,std::tuple<void *&&>,std::tuple<>>(v112 + 32, &v131, &std::piecewise_construct, v129);
  v103 = v102 + 3;
  if (*(v102 + 47) < 0)
  {
    v103 = *v103;
  }

  (*(*v112 + 4))(v129, v112, v113);
  v104 = v130;
  v105 = v129[0];
  v127 = 0;
  LOBYTE(v126) = 0;
  EmitObjC::emitTensorName(v112, v113, &v126, &v128);
  v106 = v129;
  if (v104 < 0)
  {
    v106 = v105;
  }

  if ((v128.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v107 = &v128;
  }

  else
  {
    v107 = v128.__r_.__value_.__r.__words[0];
  }

  v108 = [v89 stringWithFormat:@"\n    MPSGraphPooling4DOpDescriptor *%spoolDesc =\n    [MPSGraphPooling4DOpDescriptor descriptorWithKernelSizes:%s\n                                                     strides:%s\n                                               dilationRates:%s\n                                               paddingValues:%s\n                                                paddingStyle:%s]\n    %spoolDesc.ceilMode = %s;\n    %spoolDesc.includeZeroPadToAverage = %s;\n    \n    MPSGraphTensor *%s =\n    [graph %sPooling4DWithSourceTensor:%s\n                             descriptor:%spoolDesc\n                                   name:%s];\n    ", v90, v114, v125, v123, v122, v120, v118, v97, v98, v99, v100, v116, v103, v106, v107];;
  if (SHIBYTE(v128.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v128.__r_.__value_.__l.__data_);
    if (v127 < 0)
    {
      goto LABEL_292;
    }

LABEL_278:
    if ((v130 & 0x80000000) == 0)
    {
      goto LABEL_279;
    }

LABEL_293:
    operator delete(v129[0]);
    if (v133 < 0)
    {
      goto LABEL_294;
    }

LABEL_280:
    if ((v149 & 0x80000000) == 0)
    {
      goto LABEL_281;
    }

LABEL_295:
    operator delete(*v148);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_296;
    }

LABEL_282:
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
LABEL_297:
      operator delete(v147.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    if ((v127 & 0x80000000) == 0)
    {
      goto LABEL_278;
    }

LABEL_292:
    operator delete(v126);
    if (v130 < 0)
    {
      goto LABEL_293;
    }

LABEL_279:
    if ((v133 & 0x80000000) == 0)
    {
      goto LABEL_280;
    }

LABEL_294:
    operator delete(v132[0]);
    if (v149 < 0)
    {
      goto LABEL_295;
    }

LABEL_281:
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_282;
    }

LABEL_296:
    operator delete(__p.__r_.__value_.__l.__data_);
    if (SHIBYTE(v147.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_297;
    }
  }

  v109 = [v112[27] stringByAppendingString:v108];
  v110 = v112[27];
  v112[27] = v109;

  if (SHIBYTE(v135.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v135.__r_.__value_.__l.__data_);
    if (SHIBYTE(v136.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_299;
    }

LABEL_285:
    if ((SHIBYTE(v137.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_286;
    }

LABEL_300:
    operator delete(v137.__r_.__value_.__l.__data_);
    if (SHIBYTE(v138.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_301;
    }

LABEL_287:
    if (SHIBYTE(v142) < 0)
    {
LABEL_302:
      operator delete(v141[0]);
    }
  }

  else
  {
    if ((SHIBYTE(v136.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_285;
    }

LABEL_299:
    operator delete(v136.__r_.__value_.__l.__data_);
    if (SHIBYTE(v137.__r_.__value_.__r.__words[2]) < 0)
    {
      goto LABEL_300;
    }

LABEL_286:
    if ((SHIBYTE(v138.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_287;
    }

LABEL_301:
    operator delete(v138.__r_.__value_.__l.__data_);
    if (SHIBYTE(v142) < 0)
    {
      goto LABEL_302;
    }
  }
}