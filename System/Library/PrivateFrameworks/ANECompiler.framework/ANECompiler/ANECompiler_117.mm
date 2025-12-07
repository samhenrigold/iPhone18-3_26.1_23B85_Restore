void sub_1A6A081FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, std::__shared_weak_count *a22)
{
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a12, a13);
  if (a22)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a22);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinMirL2HazardAnalysis::MaterializeParallelExecution(ZinMirL2HazardAnalysis *this)
{
  result = ZinIrDeviceMesh::GetNumAnes((**(this + 3) + 2248));
  if (result)
  {
    for (i = 0; i < result; ++i)
    {
      v19 = 0;
      memset(v17, 0, sizeof(v17));
      v18 = 1065353216;
      v4 = (*(this + 119) + 24 * i);
      v5 = *v4;
      v6 = v4[1];
      while (v5 != v6)
      {
        v14 = 0;
        v15 = 0;
        v16 = 0;
        std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&v14, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 3);
        v7 = v14;
        if (v14 == v15)
        {
          goto LABEL_8;
        }

        if ((v15 - v14) >= 9)
        {
          v19 = 0;
LABEL_8:
          if (v14)
          {
            goto LABEL_21;
          }

          goto LABEL_22;
        }

        if (std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(v17, &v19))
        {
          v7 = v14;
          v19 = *v14;
LABEL_21:
          v15 = v7;
          operator delete(v7);
          goto LABEL_22;
        }

        __p = 0;
        v12 = 0;
        v13 = 0;
        if (!ZinMirL2HazardAnalysis::TryEnablingParallelExecution(this, v19, *v14, &__p))
        {
          v10 = *v14;
LABEL_17:
          v8 = __p;
          goto LABEL_18;
        }

        v8 = __p;
        v9 = v12;
        if (__p != v12)
        {
          do
          {
            std::__hash_table<ZinIrOpLayer *,std::hash<ZinIrOpLayer *>,std::equal_to<ZinIrOpLayer *>,std::allocator<ZinIrOpLayer *>>::__emplace_unique_key_args<ZinIrOpLayer *,ZinIrOpLayer *>(v17, v8, v8);
            ++v8;
          }

          while (v8 != v9);
          v10 = 0;
          goto LABEL_17;
        }

        v10 = 0;
LABEL_18:
        v19 = v10;
        if (v8)
        {
          v12 = v8;
          operator delete(v8);
        }

        v7 = v14;
        if (v14)
        {
          goto LABEL_21;
        }

LABEL_22:
        v5 += 24;
      }

      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v17);
      result = ZinIrDeviceMesh::GetNumAnes((**(this + 3) + 2248));
    }
  }

  return result;
}

void sub_1A6A083EC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void **ZinMirL2HazardAnalysis::UpdateSymbolToHazardNodeMap(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v6 = a2;
  v7 = &v6;
  v4 = std::__hash_table<std::__hash_value_type<ZinIrOpLayerGraph *,std::vector<std::shared_ptr<ZinPattern>>>,std::__unordered_map_hasher<ZinIrOpLayerGraph *,std::__hash_value_type<ZinIrOpLayerGraph *,std::vector<std::shared_ptr<ZinPattern>>>,std::hash<ZinIrOpLayerGraph *>,std::equal_to<ZinIrOpLayerGraph *>,true>,std::__unordered_map_equal<ZinIrOpLayerGraph *,std::__hash_value_type<ZinIrOpLayerGraph *,std::vector<std::shared_ptr<ZinPattern>>>,std::equal_to<ZinIrOpLayerGraph *>,std::hash<ZinIrOpLayerGraph *>,true>,std::allocator<std::__hash_value_type<ZinIrOpLayerGraph *,std::vector<std::shared_ptr<ZinPattern>>>>>::__emplace_unique_key_args<ZinIrOpLayerGraph *,std::piecewise_construct_t const&,std::tuple<ZinIrOpLayerGraph * const&>,std::tuple<>>((a1 + 328), &v6, &std::piecewise_construct, &v7);
  return std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](v4 + 3, a3);
}

uint64_t *ZinMirL2HazardAnalysis::GetHazardNodes@<X0>(ZinMirL2HazardAnalysis *this@<X0>, ZinIrSymbol *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a2;
  result = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 41, &v5);
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (result)
  {
    return std::vector<std::shared_ptr<ZinIrHazardNode>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinIrHazardNode>*,std::shared_ptr<ZinIrHazardNode>*>(a3, result[3], result[4], (result[4] - result[3]) >> 4);
  }

  return result;
}

BOOL ZinIrNgraph<std::shared_ptr<ZinIrHazardNode>,HazardNodeCompare>::AddNode(uint64_t **a1, uint64_t *a2)
{
  v4 = std::__tree<std::shared_ptr<ZinIrHazardNode>,HazardNodeCompare,std::allocator<std::shared_ptr<ZinIrHazardNode>>>::__count_unique<std::shared_ptr<ZinIrHazardNode>>(a1, a2);
  if (!v4)
  {
    std::__tree<std::shared_ptr<ZinIrHazardNode>,HazardNodeCompare,std::allocator<std::shared_ptr<ZinIrHazardNode>>>::__emplace_unique_key_args<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode> const&>(a1, a2, a2);
  }

  return v4 == 0;
}

void ZinMirL2HazardAnalysis::CreateIntraEngineInvariantEdges(uint64_t *a1, uint64_t *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = *a2;
  if (a2[1] != *a2)
  {
    v11 = 0;
    do
    {
      v12 = *a1;
      v13 = *(v10 + 16 * v11);
      v37 = v13;
      if (*(&v13 + 1))
      {
        atomic_fetch_add_explicit((*(&v13 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v14 = *(*a3 + 16 * v11);
      v36 = v14;
      if (*(&v14 + 1))
      {
        atomic_fetch_add_explicit((*(&v14 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      ZinIrHazardGraph::AddInvariantEdge(v12, &v37, &v36);
      if (*(&v36 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v36 + 1));
      }

      if (*(&v37 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v37 + 1));
      }

      ++v11;
      v10 = *a2;
    }

    while (v11 < (a2[1] - *a2) >> 4);
  }

  v15 = *a1;
  v16 = a4[1];
  v34 = *a4;
  v35 = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v17 = a5[1];
  v32 = *a5;
  v33 = v17;
  if (v17)
  {
    atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinIrHazardGraph::AddInvariantEdge(v15, &v34, &v32);
  if (v33)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v33);
  }

  if (v35)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
  }

  v18 = *a2;
  if (a2[1] != *a2)
  {
    v19 = 0;
    do
    {
      v20 = *a1;
      v21 = *(v18 + 16 * v19);
      v31 = v21;
      if (*(&v21 + 1))
      {
        atomic_fetch_add_explicit((*(&v21 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v22 = a4[1];
      v29 = *a4;
      v30 = v22;
      if (v22)
      {
        atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ZinIrHazardGraph::AddInvariantEdge(v20, &v31, &v29);
      if (v30)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v30);
      }

      if (*(&v31 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v31 + 1));
      }

      v23 = *a1;
      v24 = *(*a3 + 16 * v19);
      v28 = v24;
      if (*(&v24 + 1))
      {
        atomic_fetch_add_explicit((*(&v24 + 1) + 8), 1uLL, memory_order_relaxed);
      }

      v25 = a5[1];
      v26 = *a5;
      v27 = v25;
      if (v25)
      {
        atomic_fetch_add_explicit(&v25->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ZinIrHazardGraph::AddInvariantEdge(v23, &v28, &v26);
      if (v27)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v27);
      }

      if (*(&v28 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v28 + 1));
      }

      ++v19;
      v18 = *a2;
    }

    while (v19 < (a2[1] - *a2) >> 4);
  }
}

void sub_1A6A08744(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, std::__shared_weak_count *a18, uint64_t a19, std::__shared_weak_count *a20, uint64_t a21, uint64_t a22)
{
  if (a18)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a18);
  }

  if (a20)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a20);
  }

  _Unwind_Resume(exception_object);
}

void ZinMirL2HazardAnalysis::CreateInterEngineInvariantEdges(uint64_t *a1, uint64_t *a2, uint64_t **a3, uint64_t **a4, uint64_t **a5, uint64_t *a6, uint64_t *a7, int a8)
{
  v8 = *a2;
  v43 = a2[1];
  if (v43 != *a2)
  {
    v10 = *a3;
    v9 = a3[1];
    if (v9 != *a3)
    {
      if (a8)
      {
        do
        {
          v14 = *v10;
          v13 = v10[1];
          if (v13)
          {
            atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v15 = *a4;
          v16 = a4[1];
          while (v15 != v16)
          {
            v17 = *v15;
            v18 = v15[1];
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v19 = *a1;
            v58 = v14;
            v59 = v13;
            if (v13)
            {
              atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v56 = v17;
            v57 = v18;
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            ZinIrHazardGraph::AddInvariantEdge(v19, &v58, &v56);
            if (v57)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v57);
            }

            if (v59)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v59);
            }

            if (v18)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v18);
            }

            v15 += 2;
          }

          if (v13)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v13);
          }

          v10 += 2;
        }

        while (v10 != v9);
      }

      else
      {
        do
        {
          v21 = *v8;
          v20 = *(v8 + 8);
          if (v20)
          {
            atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v23 = *a4;
          v22 = a4[1];
          while (v23 != v22)
          {
            v25 = *v23;
            v24 = v23[1];
            if (v24)
            {
              atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if ((ZinIrHazardNode::UsesRdmaForL2Read(v21) & 1) != 0 || (ZinIrHazardNode::UsesRdmaForL2Read(v25) & 1) == 0)
            {
              v26 = *a1;
              v54 = v21;
              v55 = v20;
              if (v20)
              {
                atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v52 = v25;
              v53 = v24;
              if (v24)
              {
                atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              ZinIrHazardGraph::AddInvariantEdge(v26, &v54, &v52);
              if (v53)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v53);
              }

              if (v55)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v55);
              }
            }

            if (v24)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v24);
            }

            v23 += 2;
          }

          if (v20)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v20);
          }

          v8 += 16;
        }

        while (v8 != v43);
        v27 = *a3;
        v28 = a3[1];
        if (*a3 != v28)
        {
          do
          {
            v30 = *v27;
            v29 = v27[1];
            if (v29)
            {
              atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v31 = *a5;
            v32 = a5[1];
            while (v31 != v32)
            {
              v33 = *v31;
              v34 = v31[1];
              if (v34)
              {
                atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v35 = *a1;
              v50 = v30;
              v51 = v29;
              if (v29)
              {
                atomic_fetch_add_explicit(&v29->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              v48 = v33;
              v49 = v34;
              if (v34)
              {
                atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              ZinIrHazardGraph::AddInvariantEdge(v35, &v50, &v48);
              if (v49)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v49);
              }

              if (v51)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v51);
              }

              if (v34)
              {
                std::__shared_weak_count::__release_shared[abi:ne200100](v34);
              }

              v31 += 2;
            }

            if (v29)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            }

            v27 += 2;
          }

          while (v27 != v28);
        }
      }

      v36 = *a1;
      v37 = a6[1];
      v46 = *a6;
      v47 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v38 = a7[1];
      v44 = *a7;
      v45 = v38;
      if (v38)
      {
        atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ZinIrHazardGraph::AddInvariantEdge(v36, &v46, &v44);
      if (v45)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v45);
      }

      if (v47)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v47);
      }
    }
  }
}

void sub_1A6A08AB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15, uint64_t a16, std::__shared_weak_count *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a15);
  }

  if (a17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a17);
  }

  _Unwind_Resume(exception_object);
}

void ZinMirL2HazardAnalysis::CreateHazardEdgesForLiveSymbols(ZinMirL2HazardAnalysis *a1, void *a2)
{
  NumAnes = ZinIrDeviceMesh::GetNumAnes((**(a1 + 3) + 2248));
  std::vector<std::vector<std::shared_ptr<ZinIrHazardNode>>>::vector[abi:ne200100](v47, NumAnes);
  std::vector<std::vector<std::shared_ptr<ZinIrHazardNode>>>::vector[abi:ne200100](v46, NumAnes);
  std::vector<std::vector<std::shared_ptr<ZinIrHazardNode>>>::vector[abi:ne200100](v45, NumAnes);
  v41 = a1;
  std::vector<std::vector<std::shared_ptr<ZinIrHazardNode>>>::vector[abi:ne200100](v44, NumAnes);
  v5 = *a2;
  v40 = a2 + 1;
  if (*a2 != a2 + 1)
  {
    do
    {
      ZinMirL2HazardAnalysis::GetHazardNodes(v41, v5[4], v43);
      v7 = v43[0];
      v6 = v43[1];
      while (v7 != v6)
      {
        v8 = *v7;
        v9 = v7[1];
        *&v42 = *v7;
        *(&v42 + 1) = v9;
        if (v9)
        {
          atomic_fetch_add_explicit(v9 + 1, 1uLL, memory_order_relaxed);
        }

        BondedInfo = ZinEngineLayer::GetBondedInfo(v8[2]);
        v11 = *ZinBondedInfo::GetAneIndex(BondedInfo);
        IsNELayer = ZinIrOpLayer::IsNELayer(*(v42 + 16));
        v13 = *(v42 + 32);
        v14 = v13 >= 3;
        if (v13 >= 3)
        {
          v15 = v45;
        }

        else
        {
          v15 = v47;
        }

        if (v14)
        {
          v16 = v44;
        }

        else
        {
          v16 = v46;
        }

        if (!IsNELayer)
        {
          v15 = v16;
        }

        std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100]((*v15 + 24 * v11), &v42);
        if (*(&v42 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v42 + 1));
        }

        v7 += 2;
      }

      *&v42 = v43;
      std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v42);
      v17 = v5[1];
      if (v17)
      {
        do
        {
          v18 = v17;
          v17 = *v17;
        }

        while (v17);
      }

      else
      {
        do
        {
          v18 = v5[2];
          v19 = *v18 == v5;
          v5 = v18;
        }

        while (!v19);
      }

      v5 = v18;
    }

    while (v18 != v40);
  }

  if (NumAnes)
  {
    v20 = 0;
    do
    {
      v21 = (v47[0] + v20 * 8);
      v22 = *(v47[0] + v20 * 8 + 8);
      v23 = 126 - 2 * __clz((v22 - *(v47[0] + v20 * 8)) >> 4);
      v24 = v45[0];
      v25 = v46[0];
      v26 = v44[0];
      if (v22 == *(v47[0] + v20 * 8))
      {
        v27 = 0;
      }

      else
      {
        v27 = v23;
      }

      std::__introsort<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,false>(*(v47[0] + v20 * 8), v22, &v42, v27, 1);
      v28 = v24[v20];
      v29 = v24[v20 + 1];
      v30 = 126 - 2 * __clz((v29 - v28) >> 4);
      if (v29 == v28)
      {
        v31 = 0;
      }

      else
      {
        v31 = v30;
      }

      std::__introsort<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,false>(v28, v29, &v42, v31, 1);
      v32 = v25[v20];
      v33 = v25[v20 + 1];
      v34 = 126 - 2 * __clz((v33 - v32) >> 4);
      if (v33 == v32)
      {
        v35 = 0;
      }

      else
      {
        v35 = v34;
      }

      std::__introsort<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,false>(v32, v33, &v42, v35, 1);
      v36 = v26[v20];
      v37 = v26[v20 + 1];
      v38 = 126 - 2 * __clz((v37 - v36) >> 4);
      if (v37 == v36)
      {
        v39 = 0;
      }

      else
      {
        v39 = v38;
      }

      std::__introsort<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,false>(v36, v37, &v42, v39, 1);
      ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(v41, v21, &v25[v20]);
      ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(v41, v21, &v26[v20]);
      ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(v41, &v24[v20], &v25[v20]);
      ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(v41, &v24[v20], &v26[v20]);
      ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(v41, v21, &v24[v20]);
      ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(v41, v21, v21);
      ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(v41, &v24[v20], &v24[v20]);
      ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(v41, &v24[v20], v21);
      ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(v41, &v25[v20], &v26[v20]);
      ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(v41, &v25[v20], &v25[v20]);
      ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(v41, &v26[v20], &v26[v20]);
      ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(v41, &v26[v20], &v25[v20]);
      v20 += 3;
    }

    while (3 * NumAnes != v20);
  }

  v43[0] = v44;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v43);
  v44[0] = v45;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v44);
  v45[0] = v46;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v45);
  v46[0] = v47;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](v46);
}

void sub_1A6A08EDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void ****a18, uint64_t a19, uint64_t a20, void ***a21, uint64_t a22, uint64_t a23, void **a24)
{
  a18 = &a21;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](&a18);
  a21 = &a24;
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](&a21);
  a24 = (v24 - 112);
  std::vector<std::vector<std::shared_ptr<ZinBondedAne::ZinDeploymentComponent<std::vector<ZinIrOpLayer *>>>>>::__destroy_vector::operator()[abi:ne200100](&a24);
  _Unwind_Resume(a1);
}

void ZinMirL2HazardAnalysis::GetWriteBeginHazardNodes(ZinMirL2HazardAnalysis *a1, uint64_t a2, void **a3)
{
  L2WrSymbol = ZinEngineLayerMirInfo::GetL2WrSymbol(*(a2 + 520));
  ZinMirL2HazardAnalysis::GetHazardNodes(a1, L2WrSymbol, &v12);
  v7 = v12;
  for (i = v13; v7 != i; v7 += 2)
  {
    v9 = *v7;
    v10 = v7[1];
    *&v11 = *v7;
    *(&v11 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(v9 + 16) == a2 && !*(v9 + 36) && *(v9 + 32) == 3)
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a3, &v11);
    }

    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
    }
  }

  *&v11 = &v12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_1A6A09038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  a10 = &a12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ZinMirL2HazardAnalysis::GetWriteEndHazardNodes(ZinMirL2HazardAnalysis *a1, uint64_t a2, void **a3)
{
  L2WrSymbol = ZinEngineLayerMirInfo::GetL2WrSymbol(*(a2 + 520));
  ZinMirL2HazardAnalysis::GetHazardNodes(a1, L2WrSymbol, &v12);
  v7 = v12;
  for (i = v13; v7 != i; v7 += 2)
  {
    v9 = *v7;
    v10 = v7[1];
    *&v11 = *v7;
    *(&v11 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(v9 + 16) == a2 && *(v9 + 36) == 1 && *(v9 + 32) == 3)
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a3, &v11);
    }

    if (*(&v11 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v11 + 1));
    }
  }

  *&v11 = &v12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v11);
}

void sub_1A6A09134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  a10 = &a12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void ZinMirL2HazardAnalysis::CreateL2BarrierEdges(ZinMirL2HazardAnalysis *this, ZinANELayer *a2, ZinEngineLayerMirInfo **a3)
{
  v59 = 0;
  v60 = 0;
  v61 = 0;
  L2RdSymbol = ZinEngineLayerMirInfo::GetL2RdSymbol(*(a2 + 65), 0);
  ZinMirL2HazardAnalysis::GetHazardNodes(this, L2RdSymbol, &v56);
  v7 = v56;
  for (i = v57; v7 != i; v7 += 2)
  {
    v9 = *v7;
    v10 = v7[1];
    *&__src = *v7;
    *(&__src + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit(v10 + 1, 1uLL, memory_order_relaxed);
    }

    if (v9[2] == a2 && !*(v9 + 9))
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](&v59, &__src);
    }

    if (*(&__src + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&__src + 1));
    }
  }

  *&__src = &v56;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__src);
  L2WrSymbol = ZinEngineLayerMirInfo::GetL2WrSymbol(*(a2 + 65));
  ZinMirL2HazardAnalysis::GetHazardNodes(this, L2WrSymbol, &v56);
  v12 = v56;
  for (j = v57; v12 != j; v12 += 2)
  {
    v14 = *v12;
    v15 = v12[1];
    *&__src = *v12;
    *(&__src + 1) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit(v15 + 1, 1uLL, memory_order_relaxed);
    }

    if (v14[2] == a2 && !*(v14 + 9))
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](&v59, &__src);
    }

    if (*(&__src + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&__src + 1));
    }
  }

  *&__src = &v56;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__src);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  ZinMirL2HazardAnalysis::GetReadBeginHazardNodes(this, a3, &v56);
  v16 = ZinEngineLayerMirInfo::GetL2WrSymbol(a3[65]);
  ZinMirL2HazardAnalysis::GetHazardNodes(this, v16, &__src);
  v18 = *(&__src + 1);
  for (k = __src; k != v18; k += 2)
  {
    v19 = *k;
    v20 = k[1];
    *&v53 = *k;
    *(&v53 + 1) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(v19 + 16) == a3 && !*(v19 + 36))
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](&v56, &v53);
    }

    if (*(&v53 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v53 + 1));
    }
  }

  *&v53 = &__src;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v53);
  __src = 0uLL;
  v55 = 0;
  MemoryPools = ZinIrContext::GetMemoryPools(a3);
  if (MemoryPools[1] != *MemoryPools)
  {
    v22 = 0;
    do
    {
      InputTensor = ZinIrOpLayer::GetInputTensor(a3, v22);
      ZinIrTensor::GetTensorFamily(&v53, InputTensor);
      v25 = *(&v53 + 1);
      v24 = v53;
      if (v53 != *(&v53 + 1))
      {
        do
        {
          if (*(*v24 + 152) == a2)
          {
            v62[0] = 0;
            if (ZinMemSourceIndexTranslator::GetL2SrcType(a3, v22, v62))
            {
              ZinAssertImpl("Error: Trying to create L2 barrier edges for invalid L2 source");
            }

            v26 = *(&__src + 1);
            if (*(&__src + 1) >= v55)
            {
              v28 = __src;
              v29 = *(&__src + 1) - __src;
              v30 = (*(&__src + 1) - __src) >> 2;
              v31 = v30 + 1;
              if ((v30 + 1) >> 62)
              {
                std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
              }

              v32 = v55 - __src;
              if ((v55 - __src) >> 1 > v31)
              {
                v31 = v32 >> 1;
              }

              v33 = v32 >= 0x7FFFFFFFFFFFFFFCLL;
              v34 = 0x3FFFFFFFFFFFFFFFLL;
              if (!v33)
              {
                v34 = v31;
              }

              if (v34)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrPaddingMode>>(&__src, v34);
              }

              *(4 * v30) = v62[0];
              v27 = 4 * v30 + 4;
              memcpy(0, v28, v29);
              v35 = __src;
              *&__src = 0;
              *(&__src + 1) = v27;
              v55 = 0;
              if (v35)
              {
                operator delete(v35);
              }
            }

            else
            {
              **(&__src + 1) = v62[0];
              v27 = v26 + 4;
            }

            *(&__src + 1) = v27;
          }

          v24 += 8;
        }

        while (v24 != v25);
        v24 = v53;
      }

      if (v24)
      {
        *(&v53 + 1) = v24;
        operator delete(v24);
      }

      ++v22;
    }

    while (v22 < (MemoryPools[1] - *MemoryPools) >> 3);
  }

  v36 = v59;
  v47 = v60;
  if (v59 != v60)
  {
    while (1)
    {
      v38 = *v36;
      v37 = v36[1];
      v48 = v36;
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v39 = v56;
      v40 = v57;
LABEL_54:
      if (v39 != v40)
      {
        break;
      }

      if (v37)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v37);
      }

      v36 = v48 + 2;
      if (v48 + 2 == v47)
      {
        goto LABEL_85;
      }
    }

    v42 = *v39;
    v41 = v39[1];
    if (v41)
    {
      atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v43 = *(&__src + 1);
    for (m = __src; ; ++m)
    {
      if (m == v43)
      {
        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        v39 += 2;
        goto LABEL_54;
      }

      v45 = *m;
      if (*m == 2)
      {
        if (*(v38 + 32) == 3 && *(v42 + 32) == 2)
        {
          continue;
        }
      }

      else if (v45 == 1)
      {
        if (*(v38 + 32) == 3 && *(v42 + 32) == 1)
        {
          continue;
        }
      }

      else if (!v45 && *(v38 + 32) == 3 && !*(v42 + 32))
      {
        continue;
      }

      v46 = *this;
      v51 = v38;
      v52 = v37;
      if (v37)
      {
        atomic_fetch_add_explicit(&v37->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v49 = v42;
      v50 = v41;
      if (v41)
      {
        atomic_fetch_add_explicit(&v41->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      ZinIrHazardGraph::AddInvariantEdge(v46, &v51, &v49);
      if (v50)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v50);
      }

      if (v52)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v52);
      }
    }
  }

LABEL_85:
  if (__src)
  {
    *(&__src + 1) = __src;
    operator delete(__src);
  }

  *&__src = &v56;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&__src);
  v56 = &v59;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v56);
}

void sub_1A6A09628(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, char a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  *(v24 - 96) = &a21;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v24 - 96));
  *(v24 - 96) = &a24;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v24 - 96));
  _Unwind_Resume(a1);
}

uint64_t ZinMirL2HazardAnalysis::IsQualifiedForDependentMode(uint64_t a1, ZinIrOpLayerGraph **a2, ZinIrOpLayer *a3, const void **a4, void *a5, int a6)
{
  v9 = a3;
  v76 = a3;
  v77 = a2;
  v12 = a2[21];
  v13 = (*(*a2 + 5))(a2, 0);
  RootTensor = ZinIrTensor::GetRootTensor(v13);
  v14 = std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>((a1 + 976), &RootTensor);
  v15 = a2[48];
  v16 = *(v9 + 48);
  if (a6)
  {
    if (v15 > v16)
    {
      return 0;
    }

    BondedInfo = ZinEngineLayer::GetBondedInfo(a2);
    AneIndex = ZinBondedInfo::GetAneIndex(BondedInfo);
    v9 = v76;
    v19 = *(v76 + 9);
    v20 = *(v77 + 9) + 1;
    if (v20 < v19)
    {
      v63 = v12;
      v64 = a5;
      v65 = a4;
      v21 = (*(a1 + 952) + 24 * *AneIndex);
      do
      {
        v22 = *v21 + 24 * v20;
        v23 = *v22;
        v24 = *(v22 + 8);
        while (v23 != v24)
        {
          v25 = *v23;
          IsNELayer = ZinIrOpLayer::IsNELayer(v77);
          if (IsNELayer == ZinIrOpLayer::IsNELayer(v25))
          {
            return 0;
          }

          ++v23;
        }

        ++v20;
      }

      while (v20 != v19);
      v9 = v76;
      a5 = v64;
      a4 = v65;
      v12 = v63;
    }
  }

  else if ((v15 + 1) != v16)
  {
    return 0;
  }

  if (*(*(v9 + 11) + 8) == 101)
  {
    return 0;
  }

  v27 = v77;
  v28 = *(v77 + 65);
  if (v28)
  {
    if (*(v28 + 1408) - 3 > 1)
    {
      return 0;
    }
  }

  if (*(**(a1 + 24) + 1167))
  {
    goto LABEL_16;
  }

  NumNeededNEs = MirInfoChannelAssignment::GetNumNeededNEs((v28 + 160));
  if (NumNeededNEs != (*(*v77 + 400))(v77, 3))
  {
    return 0;
  }

  v32 = MirInfoChannelAssignment::GetNumNeededNEs((*(v76 + 65) + 160));
  if (v32 != (*(*v76 + 400))(v76, 3))
  {
    return 0;
  }

  v9 = v76;
  v27 = v77;
LABEL_16:
  v74 = 0;
  ZinIrOpLayerGraph::GetIndicesOfMatchedIncomingLayer(&v72, *(v9 + 21), v9, v27);
  v29 = v72;
  if ((v73 - v72) > 8)
  {
    v30 = 0;
    goto LABEL_88;
  }

  if (v72 == v73)
  {
    L2RdSymbol = 0;
    v71 = -1;
  }

  else
  {
    v34 = *v72;
    v71 = v34;
    if ((v34 & 0x8000000000000000) != 0)
    {
      L2RdSymbol = 0;
    }

    else
    {
      v30 = 0;
      if (ZinMemSourceIndexTranslator::GetL2SrcType(v76, v34, &v74) || v74 == 2)
      {
        goto LABEL_87;
      }

      L2RdSymbol = ZinEngineLayerMirInfo::GetL2RdSymbol(*(v76 + 65), v74);
    }
  }

  if (ZinIrOpLayer::IsPELayer(v76))
  {
    if ((*(*v76 + 608))(v76))
    {
      LODWORD(__p) = 0;
      if (ZinMemSourceIndexTranslator::GetL2SrcType(v76, v71 == 0, &__p) || *(ZinMirL2Config::GetL2SrcDep(*(v76 + 65) + 112, __p) + 40))
      {
        goto LABEL_86;
      }
    }
  }

  if (ZinIrOpLayer::IsPELayer(v76) && (*(*v76 + 608))(v76))
  {
    LODWORD(__p) = 0;
    if (ZinMemSourceIndexTranslator::GetL2SrcType(v76, v71 == 0, &__p))
    {
      goto LABEL_86;
    }

    v36 = ZinEngineLayerMirInfo::GetL2RdSymbol(*(v76 + 65), __p);
    L2WrSymbol = ZinEngineLayerMirInfo::GetL2WrSymbol(*(v76 + 65));
    v38 = *(v36 + 32) != *(L2WrSymbol + 32) || !*(v36 + 248) || *(L2WrSymbol + 248) == 0;
    v39 = ZinEngineLayerMirInfo::GetL2RdSymbol(*(v77 + 65), 0);
    if (*(v36 + 32) == *(v39 + 32) && *(v36 + 248) && *(v39 + 248) && !v38)
    {
      goto LABEL_86;
    }
  }

  if ((v71 & 0x8000000000000000) == 0)
  {
    if (ZinEngineLayerMirInfo::GetL2WrSymbol(*(v77 + 65)) == L2RdSymbol)
    {
      v41 = (*(*v77 + 400))(v77, 2);
      v42 = (*(*v76 + 392))(v76, 2);
      if ((*(**(a1 + 24) + 1167) & 1) != 0 || *(*(v77 + 65) + 96) * v41 == *(*(v76 + 65) + 96) * v42)
      {
        __p = &v71;
        v43 = std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(a5, &v71, &std::piecewise_construct, &__p);
        v66.n128_u8[0] = 0;
        __p = &v66;
        std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::__emplace_unique_key_args<ZinDependencyOffsetDim,std::piecewise_construct_t const&,std::tuple<ZinDependencyOffsetDim const&>,std::tuple<>>(v43 + 3, &v66, &std::piecewise_construct, &__p)[3] = 0;
        goto LABEL_55;
      }
    }

LABEL_86:
    v30 = 0;
    goto LABEL_87;
  }

  if (v14 && *a4 == a4[1])
  {
    MemoryPools = ZinIrContext::GetMemoryPools(v76);
    __p = 0;
    v69 = 0;
    v70 = 0;
    std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, *MemoryPools, *(MemoryPools + 8), (*(MemoryPools + 8) - *MemoryPools) >> 3);
    v58 = __p;
    if (v69 == __p)
    {
LABEL_78:
      if (v58)
      {
        v69 = v58;
        operator delete(v58);
      }

      goto LABEL_86;
    }

    v59 = 0;
    while (1)
    {
      InputTensor = ZinIrOpLayer::GetInputTensor(v76, v59);
      v61 = ZinIrTensor::GetRootTensor(InputTensor);
      if (v61 == RootTensor)
      {
        break;
      }

      ++v59;
      v58 = __p;
      if (v59 >= (v69 - __p) >> 3)
      {
        goto LABEL_78;
      }
    }

    ZinMirL2HazardAnalysis::ComputeDependencyMap(v61, v77, v76, v12, **(a1 + 24), a5);
    if (a5[3])
    {
      IsConnected = 1;
    }

    else
    {
      RawOrShared<ZinIrOpLayer>::RawOrShared<ZinGOCLayer *&>(&v67, &v77);
      RawOrShared<ZinIrOpLayer>::RawOrShared<ZinGOCLayer *&>(&v66, &v76);
      IsConnected = ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::IsConnected(v12, &v67, &v66);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v66);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v67);
    }

    if (__p)
    {
      v69 = __p;
      operator delete(__p);
    }

    if ((IsConnected & 1) == 0)
    {
      goto LABEL_86;
    }
  }

  else if ((ZinMirL2HazardAnalysis::IsQualifiedForExtensiveL2Dependency(a1, v77, v76, v12, **(a1 + 24), a5) & 1) == 0)
  {
    goto LABEL_86;
  }

LABEL_55:
  v44 = a5[2];
  if (v44)
  {
    while (1)
    {
      v45 = v44[2];
      if ((v45 & 0x8000000000000000) != 0)
      {
        goto LABEL_86;
      }

      HasResidentSymbolAlias = ZinIrRegAllocUtil::HasResidentSymbolAlias(v77, v76, *(*(a1 + 16) + 40), v45);
      if ((HasResidentSymbolAlias & 1) != 0 || !ZinMirL2HazardAnalysis::ConfigureExtensiveL2Dependency(HasResidentSymbolAlias, v76, v44[2], (v44 + 3)))
      {
        goto LABEL_86;
      }

      v48 = a4[1];
      v47 = a4[2];
      if (v48 >= v47)
      {
        v50 = *a4;
        v51 = v48 - *a4;
        v52 = v51 >> 3;
        v53 = (v51 >> 3) + 1;
        if (v53 >> 61)
        {
          std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
        }

        v54 = v47 - v50;
        if (v54 >> 2 > v53)
        {
          v53 = v54 >> 2;
        }

        if (v54 >= 0x7FFFFFFFFFFFFFF8)
        {
          v55 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v55 = v53;
        }

        if (v55)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<double>>(a4, v55);
        }

        *(8 * v52) = v44[2];
        v49 = (8 * v52 + 8);
        memcpy(0, v50, v51);
        v56 = *a4;
        *a4 = 0;
        a4[1] = v49;
        a4[2] = 0;
        if (v56)
        {
          operator delete(v56);
        }
      }

      else
      {
        *v48 = v44[2];
        v49 = v48 + 8;
      }

      a4[1] = v49;
      v44 = *v44;
      v30 = 1;
      if (!v44)
      {
        goto LABEL_87;
      }
    }
  }

  v30 = 1;
LABEL_87:
  v29 = v72;
LABEL_88:
  if (v29)
  {
    v73 = v29;
    operator delete(v29);
  }

  return v30;
}

void sub_1A6A09EA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24)
{
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a13);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&a16);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  if (a23)
  {
    a24 = a23;
    operator delete(a23);
  }

  _Unwind_Resume(a1);
}

void ZinMirL2HazardAnalysis::GetReadBeginHazardNodes(ZinMirL2HazardAnalysis *a1, uint64_t a2, void **a3)
{
  L2RdSymbol = ZinEngineLayerMirInfo::GetL2RdSymbol(*(a2 + 520), 0);
  ZinMirL2HazardAnalysis::GetHazardNodes(a1, L2RdSymbol, &v22);
  v7 = v22;
  for (i = v23; v7 != i; v7 += 2)
  {
    v9 = *v7;
    v10 = v7[1];
    *&v21 = *v7;
    *(&v21 + 1) = v10;
    if (v10)
    {
      atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(v9 + 16) == a2 && *(v9 + 32) <= 2uLL)
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a3, &v21);
    }

    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
    }
  }

  *&v21 = &v22;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v11 = ZinEngineLayerMirInfo::GetL2RdSymbol(*(a2 + 520), 1u);
  ZinMirL2HazardAnalysis::GetHazardNodes(a1, v11, &v22);
  v12 = v22;
  for (j = v23; v12 != j; v12 += 2)
  {
    v14 = *v12;
    v15 = v12[1];
    *&v21 = *v12;
    *(&v21 + 1) = v15;
    if (v15)
    {
      atomic_fetch_add_explicit((v15 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(v14 + 16) == a2 && *(v14 + 32) <= 2uLL)
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a3, &v21);
    }

    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
    }
  }

  *&v21 = &v22;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v21);
  v16 = ZinEngineLayerMirInfo::GetL2RdSymbol(*(a2 + 520), 2u);
  ZinMirL2HazardAnalysis::GetHazardNodes(a1, v16, &v22);
  v17 = v22;
  for (k = v23; v17 != k; v17 += 2)
  {
    v19 = *v17;
    v20 = v17[1];
    *&v21 = *v17;
    *(&v21 + 1) = v20;
    if (v20)
    {
      atomic_fetch_add_explicit((v20 + 8), 1uLL, memory_order_relaxed);
    }

    if (*(v19 + 16) == a2 && *(v19 + 32) <= 2uLL)
    {
      std::vector<std::shared_ptr<ZinIrConstData>>::push_back[abi:ne200100](a3, &v21);
    }

    if (*(&v21 + 1))
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](*(&v21 + 1));
    }
  }

  *&v21 = &v22;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v21);
}

void sub_1A6A0A138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10, std::__shared_weak_count *a11, char a12)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  a10 = &a12;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

BOOL ZinMirL2HazardAnalysis::IsQualifiedHazardPair(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(*a3 + 16);
  result = 0;
  if (*(*a2 + 32) > 2u || *(v5 + 32) > 2u || *(*(*a2 + 24) + 216) != 2 || *(*(v5 + 24) + 216) != 2)
  {
    IsNELayer = ZinIrOpLayer::IsNELayer(*(*a2 + 16));
    if (IsNELayer != ZinIrOpLayer::IsNELayer(v6) || *(*a2 + 32) > 2u || *(*a3 + 32) != 3)
    {
      return 1;
    }
  }

  return result;
}

uint64_t ZinMirL2HazardAnalysis::CreateHazardEdge(uint64_t *a1, ZinIrHazardNode **a2, const ZinANELayer *a3)
{
  if (!ZinBondedUtils::AreAssignedToSameANE(*(*a2 + 2), *(*a3 + 16), a3))
  {
    return 0;
  }

  LayerTID = ZinIrHazardNode::GetLayerTID(*a2);
  if (LayerTID == ZinIrHazardNode::GetLayerTID(*a3) || ZinIrNgraph<std::shared_ptr<ZinIrHazardNode>,HazardNodeCompare>::IsConnected(*a1, a2, a3))
  {
    return 0;
  }

  v9 = ZinIrHazardNode::GetLayerTID(*a2);
  if (v9 >= ZinIrHazardNode::GetLayerTID(*a3))
  {
    v10 = a3;
  }

  else
  {
    v10 = a2;
  }

  v12 = *v10;
  v11 = v10[1];
  v24[0] = *v10;
  v24[1] = v11;
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v13 = ZinIrHazardNode::GetLayerTID(*a2);
  v14 = ZinIrHazardNode::GetLayerTID(*a3);
  if (v13 >= v14)
  {
    v15 = a2;
  }

  else
  {
    v15 = a3;
  }

  v17 = *v15;
  v16 = v15[1];
  v23[0] = *v15;
  v23[1] = v16;
  if (v16)
  {
    atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if (ZinMirL2HazardAnalysis::IsQualifiedHazardPair(v14, v24, v23))
  {
    v18 = *a1;
    v21 = v12;
    v22 = v11;
    if (v11)
    {
      atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v19 = v17;
    v20 = v16;
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v7 = ZinIrHazardGraph::AddSymbolAliasEdge(v18, &v21, &v19);
    if (v20)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v20);
    }

    if (v22)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v22);
    }
  }

  else
  {
    v7 = 0;
  }

  if (v16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
  }

  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  return v7;
}

void sub_1A6A0A3A0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
    if (!v13)
    {
LABEL_5:
      if (!v12)
      {
        goto LABEL_7;
      }

      goto LABEL_6;
    }
  }

  else if (!v13)
  {
    goto LABEL_5;
  }

  std::__shared_weak_count::__release_shared[abi:ne200100](v13);
  if (!v12)
  {
LABEL_7:
    _Unwind_Resume(exception_object);
  }

LABEL_6:
  std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  goto LABEL_7;
}

void sub_1A6A0A3F4()
{
  if (!v0)
  {
    JUMPOUT(0x1A6A0A3C8);
  }

  JUMPOUT(0x1A6A0A3C0);
}

void ZinMirL2HazardAnalysis::CreateHazardEdgesForHazardNodeGroups(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = 0;
  v6 = 0;
  v7 = **(a1 + 24);
  do
  {
    if (v6 >= (a2[1] - *a2) >> 4)
    {
      break;
    }

    v8 = *a3;
    if (v5 >= (a3[1] - *a3) >> 4)
    {
      break;
    }

    v9 = *(*a2 + 16 * v6);
    *v46 = v9;
    if (*(&v9 + 1))
    {
      atomic_fetch_add_explicit((*(&v9 + 1) + 8), 1uLL, memory_order_relaxed);
      v8 = *a3;
    }

    v10 = *(v8 + 16 * v5);
    *v45 = v10;
    if (*(&v10 + 1))
    {
      atomic_fetch_add_explicit((*(&v10 + 1) + 8), 1uLL, memory_order_relaxed);
    }

    LayerTID = ZinIrHazardNode::GetLayerTID(v9);
    if (LayerTID >= ZinIrHazardNode::GetLayerTID(v45[0]))
    {
      v16 = v5 + 1;
      if (v5 + 1 >= (a3[1] - *a3) >> 4 || (v17 = ZinIrHazardNode::GetLayerTID(*(*a3 + 16 * v16)), v17 >= ZinIrHazardNode::GetLayerTID(v46[0])))
      {
        if (*(v45[0] + 9) == 1 && !*(v46[0] + 9) && *(v45[0] + 2) != *(v46[0] + 2))
        {
          LayerSchedule = ZinIrHazardNode::GetLayerSchedule(v45[0]);
          if (LayerSchedule == ZinIrHazardNode::GetLayerSchedule(v46[0]) && *(v45[0] + 8) == 3 && *(v46[0] + 8) <= 2u)
          {
            ZinMirL2HazardAnalysis::CreateHazardEdge(a1, (*a3 + 16 * v5 - 16), v46);
            v19 = (*a2 + 16 * v6 + 16);
          }

          else
          {
            v19 = v46;
          }

          ZinMirL2HazardAnalysis::CreateHazardEdge(a1, v45, v19);
        }
      }

      if (*(v45[0] + 9) == 1 && *(v45[0] + 8) == 3 && v16 < (a3[1] - *a3) >> 4)
      {
        v31 = *a3 + 16 * v16;
        v33 = *v31;
        v32 = *(v31 + 8);
        if (v32)
        {
          atomic_fetch_add_explicit(&v32->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v42 = v32;
        v34 = v6 + 1;
        do
        {
          if (v34 >= (a2[1] - *a2) >> 4)
          {
            break;
          }

          v35 = ZinIrHazardNode::GetLayerTID(*(*a2 + 16 * v34));
          if (v35 > ZinIrHazardNode::GetLayerTID(v33))
          {
            break;
          }

          v36 = *(*a2 + 16 * v34);
          v44 = v36;
          if (*(&v36 + 1))
          {
            atomic_fetch_add_explicit((*(&v36 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v37 = ZinIrHazardNode::GetLayerTID(v36);
          v38 = v37 - ZinIrHazardNode::GetLayerTID(v45[0]);
          v39 = *(v7 + 1144);
          if (v38 < v39)
          {
            if (*(v44 + 32) <= 2u && !*(v44 + 36))
            {
              ZinMirL2HazardAnalysis::CreateHazardEdge(a1, v45, &v44);
            }

            ++v34;
          }

          if (*(&v44 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v44 + 1));
          }
        }

        while (v38 < v39);
        if (v42)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v42);
        }
      }

      if (v5 >= ((a3[1] - *a3) >> 4) - 1)
      {
        if (v6 + 1 >= (a2[1] - *a2) >> 4 || (v40 = ZinIrHazardNode::GetLayerTID(*(*a2 + 16 * (v6 + 1))), v40 >= *(v7 + 1144) + ZinIrHazardNode::GetLayerTID(v45[0])))
        {
LABEL_81:
          v29 = 0;
          goto LABEL_82;
        }

        v29 = 1;
        ++v6;
      }

      else
      {
        v29 = 1;
        ++v5;
      }
    }

    else
    {
      v12 = v6 + 1;
      if (v6 + 1 >= (a2[1] - *a2) >> 4 || (v13 = ZinIrHazardNode::GetLayerTID(*(*a2 + 16 * v12)), v13 >= ZinIrHazardNode::GetLayerTID(v45[0])))
      {
        if (*(v46[0] + 9) == 1 && !*(v45[0] + 9) && *(v46[0] + 2) != *(v45[0] + 2))
        {
          v14 = ZinIrHazardNode::GetLayerSchedule(v46[0]);
          if (v14 == ZinIrHazardNode::GetLayerSchedule(v45[0]) && *(v46[0] + 8) == 3 && *(v45[0] + 8) <= 2u)
          {
            ZinMirL2HazardAnalysis::CreateHazardEdge(a1, (*a2 + 16 * v6 - 16), v45);
            v15 = (*a3 + 16 * v5 + 16);
          }

          else
          {
            v15 = v45;
          }

          ZinMirL2HazardAnalysis::CreateHazardEdge(a1, v46, v15);
        }
      }

      if (*(v46[0] + 9) == 1 && *(v46[0] + 8) == 3 && v12 < (a2[1] - *a2) >> 4)
      {
        v20 = *a2 + 16 * v12;
        v22 = *v20;
        v21 = *(v20 + 8);
        if (v21)
        {
          atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v41 = v21;
        v23 = v5 + 1;
        do
        {
          if (v23 >= (a3[1] - *a3) >> 4)
          {
            break;
          }

          v24 = ZinIrHazardNode::GetLayerTID(*(*a3 + 16 * v23));
          if (v24 > ZinIrHazardNode::GetLayerTID(v22))
          {
            break;
          }

          v25 = *(*a3 + 16 * v23);
          v44 = v25;
          if (*(&v25 + 1))
          {
            atomic_fetch_add_explicit((*(&v25 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v26 = ZinIrHazardNode::GetLayerTID(v25);
          v27 = v26 - ZinIrHazardNode::GetLayerTID(v46[0]);
          v28 = *(v7 + 1144);
          if (v27 < v28)
          {
            if (*(v44 + 32) <= 2u && !*(v44 + 36))
            {
              ZinMirL2HazardAnalysis::CreateHazardEdge(a1, v46, &v44);
            }

            ++v23;
          }

          if (*(&v44 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v44 + 1));
          }
        }

        while (v27 < v28);
        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }
      }

      if (v6 >= ((a2[1] - *a2) >> 4) - 1)
      {
        if (v5 + 1 >= (a3[1] - *a3) >> 4)
        {
          goto LABEL_81;
        }

        v30 = ZinIrHazardNode::GetLayerTID(*(*a3 + 16 * (v5 + 1)));
        if (v30 >= *(v7 + 1144) + ZinIrHazardNode::GetLayerTID(v46[0]))
        {
          goto LABEL_81;
        }

        v29 = 1;
        ++v5;
      }

      else
      {
        v29 = 1;
        ++v6;
      }
    }

LABEL_82:
    if (v45[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v45[1]);
    }

    if (v46[1])
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v46[1]);
    }
  }

  while ((v29 & 1) != 0);
}

void sub_1A6A0A984(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, std::__shared_weak_count *a16)
{
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  if (a16)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a16);
  }

  _Unwind_Resume(exception_object);
}

void ZinMirL2HazardAnalysis::CreateDotFile(void **a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v99[20] = *MEMORY[0x1E69E9840];
  v4 = a1[1][48];
  if (a1[1][49] == v4)
  {
    ZinAssertImpl("Must run scheduler first", a2, a3, a4);
  }

  v9 = *(*v4 + 32);
  v10 = a1[3][1];
  if (*(v10 + 47) >= 0)
  {
    v11 = *(v10 + 47);
  }

  else
  {
    v11 = *(v10 + 32);
  }

  v12 = &v94;
  std::string::basic_string[abi:ne200100](&v94, v11 + 1);
  if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v12 = v94.__r_.__value_.__r.__words[0];
  }

  if (v11)
  {
    v15 = *(v10 + 24);
    v14 = (v10 + 24);
    v13 = v15;
    if (v14[23] >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    memmove(v12, v16, v11);
  }

  *(&v12->__r_.__value_.__l.__data_ + v11) = 46;
  v17 = *(v9 + 63);
  if (v17 >= 0)
  {
    v18 = (v9 + 40);
  }

  else
  {
    v18 = *(v9 + 40);
  }

  if (v17 >= 0)
  {
    v19 = *(v9 + 63);
  }

  else
  {
    v19 = *(v9 + 48);
  }

  v20 = std::string::append(&v94, v18, v19);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v89.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v89.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v89, ".", 1uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v98.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v98.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  v24 = *(a2 + 23);
  if (v24 >= 0)
  {
    v25 = a2;
  }

  else
  {
    v25 = *a2;
  }

  if (v24 >= 0)
  {
    v26 = *(a2 + 23);
  }

  else
  {
    v26 = *(a2 + 8);
  }

  v27 = std::string::append(&v98, v25, v26);
  v28 = *&v27->__r_.__value_.__l.__data_;
  v96 = v27->__r_.__value_.__r.__words[2];
  *v95 = v28;
  v27->__r_.__value_.__l.__size_ = 0;
  v27->__r_.__value_.__r.__words[2] = 0;
  v27->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v98.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v94.__r_.__value_.__l.__data_);
  }

  v99[6] = 0;
  v29 = MEMORY[0x1E69E5530] + 64;
  v99[0] = MEMORY[0x1E69E5530] + 64;
  v30 = *(MEMORY[0x1E69E54D0] + 16);
  v98.__r_.__value_.__r.__words[0] = *(MEMORY[0x1E69E54D0] + 8);
  *(v98.__r_.__value_.__r.__words + *(v98.__r_.__value_.__r.__words[0] - 24)) = v30;
  v31 = (&v98 + *(v98.__r_.__value_.__r.__words[0] - 24));
  std::ios_base::init(v31, &v98.__r_.__value_.__r.__words[1]);
  v32 = MEMORY[0x1E69E5530] + 24;
  v31[1].__vftable = 0;
  v31[1].__fmtflags_ = -1;
  v98.__r_.__value_.__r.__words[0] = v32;
  v99[0] = v29;
  MEMORY[0x1AC559A60](&v98.__r_.__value_.__r.__words[1]);
  std::ofstream::open();
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v98, "digraph D {", 11);
  std::ios_base::getloc((v33 + *(*v33 - 24)));
  v34 = std::locale::use_facet(&v89, MEMORY[0x1E69E5318]);
  (v34->__vftable[2].~facet_0)(v34, 10);
  std::locale::~locale(&v89);
  std::ostream::put();
  std::ostream::flush();
  v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v98, "\tnode [shape=box style=rounded, filled]", 41);
  std::ios_base::getloc((v35 + *(*v35 - 24)));
  v36 = std::locale::use_facet(&v89, MEMORY[0x1E69E5318]);
  (v36->__vftable[2].~facet_0)(v36, 10);
  std::locale::~locale(&v89);
  std::ostream::put();
  std::ostream::flush();
  v38 = *a1 + 1;
  v37 = **a1;
  if (v37 != v38)
  {
    v79 = *(MEMORY[0x1E69E54D8] + 64);
    v80 = *MEMORY[0x1E69E54D8];
    v78 = *(MEMORY[0x1E69E54D8] + 72);
    do
    {
      if (ZinIrHazardNode::GetLayerTID(v37[4]) >= a3 && ZinIrHazardNode::GetLayerTID(v37[4]) <= a4)
      {
        v39 = std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](&v89);
        ZinMirL2HazardAnalysis::DebugPrintNode(v39, v37 + 4, &v89, 1);
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](&v89, &v94);
        if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v40 = &v94;
        }

        else
        {
          v40 = v94.__r_.__value_.__r.__words[0];
        }

        if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v94.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v94.__r_.__value_.__l.__size_;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v98, v40, size);
        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        v89.__r_.__value_.__r.__words[0] = v80;
        *(v89.__r_.__value_.__r.__words + *(v80 - 24)) = v79;
        v89.__r_.__value_.__r.__words[2] = v78;
        v90 = MEMORY[0x1E69E5548] + 16;
        if (v92 < 0)
        {
          operator delete(v91[7].__locale_);
        }

        v90 = MEMORY[0x1E69E5538] + 16;
        std::locale::~locale(v91);
        std::iostream::~basic_iostream();
        MEMORY[0x1AC559F60](&v93);
      }

      v42 = v37[1];
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
        do
        {
          v43 = v37[2];
          v44 = *v43 == v37;
          v37 = v43;
        }

        while (!v44);
      }

      v37 = v43;
    }

    while (v43 != v38);
  }

  std::ios_base::getloc((&v98 + *(v98.__r_.__value_.__r.__words[0] - 24)));
  v45 = std::locale::use_facet(&v89, MEMORY[0x1E69E5318]);
  (v45->__vftable[2].~facet_0)(v45, 10);
  std::locale::~locale(&v89);
  std::ostream::put();
  std::ostream::flush();
  v46 = *a1 + 1;
  v47 = **a1;
  if (v47 != v46)
  {
    do
    {
      v48 = *a1;
      v89.__r_.__value_.__r.__words[0] = v47[4];
      v49 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(v48 + 3, &v89);
      v50 = v48 + 13;
      if (v49)
      {
        v50 = v49 + 3;
      }

      v52 = *v50;
      v51 = v50[1];
      while (v52 != v51)
      {
        std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v87, *v52);
        if (ZinIrHazardNode::GetLayerTID(v47[4]) >= a3 && ZinIrHazardNode::GetLayerTID(v47[4]) <= a4 && ZinIrHazardNode::GetLayerTID(v87) >= a3 && ZinIrHazardNode::GetLayerTID(v87) <= a4)
        {
          v86 = 0;
          v53 = *a1;
          v54 = v47[5];
          v84 = v47[4];
          v85 = v54;
          if (v54)
          {
            atomic_fetch_add_explicit(&v54->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          v82 = v87;
          v83 = v88;
          if (v88)
          {
            atomic_fetch_add_explicit(&v88->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          ZinIrHazardGraph::GetEdgeType(v53, &v84, &v82, &v86);
          if (v83)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v83);
          }

          if (v85)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v85);
          }

          if (v86)
          {
            v55 = "black";
          }

          else
          {
            v55 = "blue";
          }

          std::string::basic_string[abi:ne200100]<0>(&v89, v55);
          v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v98, "\t", 1);
          v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, "", 1);
          v58 = v47[4];
          if (*(v58 + 63) < 0)
          {
            std::string::__init_copy_ctor_external(&v94, *(v58 + 40), *(v58 + 48));
          }

          else
          {
            v94 = *(v58 + 40);
          }

          if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v59 = &v94;
          }

          else
          {
            v59 = v94.__r_.__value_.__r.__words[0];
          }

          if ((v94.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = HIBYTE(v94.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v60 = v94.__r_.__value_.__l.__size_;
          }

          v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v59, v60);
          v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "", 1);
          v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, " -> ", 4);
          v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, "", 1);
          if (*(v87 + 63) < 0)
          {
            std::string::__init_copy_ctor_external(&v81, *(v87 + 5), *(v87 + 6));
          }

          else
          {
            v81 = *(v87 + 40);
          }

          if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v65 = &v81;
          }

          else
          {
            v65 = v81.__r_.__value_.__r.__words[0];
          }

          if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v66 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v66 = v81.__r_.__value_.__l.__size_;
          }

          v67 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v64, v65, v66);
          v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "", 1);
          v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "[color=", 7);
          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v70 = &v89;
          }

          else
          {
            v70 = v89.__r_.__value_.__r.__words[0];
          }

          if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v71 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v71 = v89.__r_.__value_.__l.__size_;
          }

          v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, v70, v71);
          v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "]", 1);
          std::ios_base::getloc((v73 + *(*v73 - 24)));
          v74 = std::locale::use_facet(&v97, MEMORY[0x1E69E5318]);
          (v74->__vftable[2].~facet_0)(v74, 10);
          std::locale::~locale(&v97);
          std::ostream::put();
          std::ostream::flush();
          if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v81.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v94.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v89.__r_.__value_.__l.__data_);
          }
        }

        if (v88)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v88);
        }

        ++v52;
      }

      v75 = v47[1];
      if (v75)
      {
        do
        {
          v76 = v75;
          v75 = *v75;
        }

        while (v75);
      }

      else
      {
        do
        {
          v76 = v47[2];
          v44 = *v76 == v47;
          v47 = v76;
        }

        while (!v44);
      }

      v47 = v76;
    }

    while (v76 != v46);
  }

  std::ios_base::getloc((&v98 + *(v98.__r_.__value_.__r.__words[0] - 24)));
  v77 = std::locale::use_facet(&v89, MEMORY[0x1E69E5318]);
  (v77->__vftable[2].~facet_0)(v77, 10);
  std::locale::~locale(&v89);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v98, "}", 1);
  if (!std::filebuf::close())
  {
    std::ios_base::clear((&v98 + *(v98.__r_.__value_.__r.__words[0] - 24)), *(&v98 + *(v98.__r_.__value_.__r.__words[0] - 24) + 32) | 4);
  }

  v98.__r_.__value_.__r.__words[0] = *MEMORY[0x1E69E54D0];
  *(v98.__r_.__value_.__r.__words + *(v98.__r_.__value_.__r.__words[0] - 24)) = *(MEMORY[0x1E69E54D0] + 24);
  MEMORY[0x1AC559A70](&v98.__r_.__value_.__r.__words[1]);
  std::ostream::~ostream();
  MEMORY[0x1AC559F60](v99);
  if (SHIBYTE(v96) < 0)
  {
    operator delete(v95[0]);
  }
}

void sub_1A6A0B574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, uint64_t a61, uint64_t a62, void *__p)
{
  std::ostream::~ostream();
  MEMORY[0x1AC559F60](a9);
  if (a65 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrNgraphUtils::TransitiveReduction<ZinIrHazardGraph>(void *a1, unint64_t a2)
{
  v44 = &v44;
  v45 = &v44;
  v46 = 0;
  if (ZinIrNgraph<std::shared_ptr<ZinIrHazardNode>,HazardNodeCompare>::TopologicalSortImpl<std::list<std::shared_ptr<ZinIrHazardNode>>>(a1, &v44))
  {
    memset(v42, 0, sizeof(v42));
    v43 = 1065353216;
    if (a2 != -1)
    {
      ZinIrNgraphUtils::impl::CalculateAsapSchedules<ZinIrHazardGraph>(a1, v40);
      std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::__move_assign(v42, v40);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v40);
    }

    memset(v40, 0, sizeof(v40));
    v41 = 1065353216;
    v4 = v45;
    if (v45 != &v44)
    {
      do
      {
        *&v33[0] = v4[2];
        v38[0] = v33;
        *(std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinIrHazardNode>>&&>,std::tuple<>>(v40, v33, &std::piecewise_construct, v38) + 6) = 0;
        v4 = v4[1];
      }

      while (v4 != &v44);
      v4 = v45;
    }

    memset(v38, 0, sizeof(v38));
    v39 = 1065353216;
    if (v4 == &v44)
    {
      v5 = 0;
    }

    else
    {
      v5 = 0;
      do
      {
        *&v33[0] = v4[2];
        v6 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(a1 + 8, v33);
        v7 = (v6 + 3);
        if (!v6)
        {
          v7 = (a1 + 13);
        }

        v36 = 0;
        v37 = 0;
        __p = 0;
        std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, *v7, v7[1], (v7[1] - *v7) >> 3);
        memset(v33, 0, sizeof(v33));
        v34 = 1065353216;
        v8 = __p;
        v9 = v36;
        if (__p != v36)
        {
          do
          {
            v32 = *v8;
            v30 = &v32;
            for (i = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinIrHazardNode>> const&>,std::tuple<>>(v38, &v32, &std::piecewise_construct, &v30)[5]; i; i = *i)
            {
              v30 = i[2];
              if (a2 != -1)
              {
                v11 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(v42, &v32);
                v12 = v11 ? v11[3] : -1;
                v13 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(v42, &v30);
                v14 = v13 ? v13[3] : -1;
                if (v12 - v14 > a2)
                {
                  continue;
                }
              }

              std::__hash_table<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::allocator<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,NodeKey<std::shared_ptr<ZinIrHazardNode>> const&>(v33, &v30, &v30);
            }

            v15 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(v40, &v32);
            std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v30, v32);
            v47[0] = v30;
            v16 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(a1 + 3, v47);
            v17 = v16 + 3;
            if (!v16)
            {
              v17 = a1 + 13;
            }

            v18 = *v17;
            v19 = v17[1];
            v20 = *(v15 + 6);
            v21 = v20 + 1;
            *(v15 + 6) = v20 + 1;
            if (v31)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v31);
            }

            if ((v19 - v18) >> 3 == v21)
            {
              std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::__erase_unique<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(v38, &v32);
            }

            ++v8;
          }

          while (v8 != v9);
          v8 = __p;
          v9 = v36;
        }

        while (v8 != v9)
        {
          v30 = *v8;
          if (std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(v33, &v30))
          {
            std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v28, v30);
            v22 = v4[3];
            v26 = v4[2];
            v27 = v22;
            if (v22)
            {
              atomic_fetch_add_explicit(&v22->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v23 = ZinIrHazardGraph::RemoveEdge(a1, &v28, &v26);
            if (v27)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v27);
            }

            if (v29)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v29);
            }

            v5 |= v23;
          }

          else
          {
            std::__hash_table<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::allocator<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,NodeKey<std::shared_ptr<ZinIrHazardNode>> const&>(v33, &v30, &v30);
          }

          ++v8;
        }

        v47[0] = v4[2];
        v30 = v47;
        v24 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinIrHazardNode>> const&>,std::tuple<>>(v38, v47, &std::piecewise_construct, &v30);
        std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::__move_assign((v24 + 3), v33);
        std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v33);
        if (__p)
        {
          v36 = __p;
          operator delete(__p);
        }

        v4 = v4[1];
      }

      while (v4 != &v44);
    }

    std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::~__hash_table(v38);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v40);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v42);
  }

  else
  {
    v5 = 0;
  }

  std::__list_imp<std::shared_ptr<ZinRtBaseNode>>::clear(&v44);
  return v5 & 1;
}

void sub_1A6A0BAD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v31 - 176);
  std::__list_imp<std::shared_ptr<ZinRtBaseNode>>::clear((v31 - 128));
  _Unwind_Resume(a1);
}

BOOL ZinMirL2HazardAnalysis::TryDependencyBitSet(ZinMirL2HazardAnalysis *this, ZinIrOpLayerGraph **a2, ZinANELayer *a3, int a4)
{
  v38 = *MEMORY[0x1E69E9840];
  __p = 0;
  v30 = 0;
  v31 = 0;
  memset(v27, 0, sizeof(v27));
  v28 = 1065353216;
  if ((ZinMirL2HazardAnalysis::IsQualifiedForDependentMode(this, a2, a3, &__p, v27, a4) & 1) == 0)
  {
    v9 = 0;
    goto LABEL_6;
  }

  v7 = *(a3 + 65);
  v26 = 0;
  L2SrcType = ZinMemSourceIndexTranslator::GetL2SrcType(a3, *__p, &v26);
  v9 = L2SrcType == 0;
  if (L2SrcType)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinMirL2HazardAnalysis::TryDependencyBitSet();
    }

    goto LABEL_6;
  }

  if (ZinIrOpLayer::IsNELayer(a3))
  {
    v11 = "NE";
  }

  else
  {
    v11 = "PE";
  }

  std::string::basic_string[abi:ne200100]<0>(v24, v11);
  if (ZinIrOpLayer::IsNELayer(a2))
  {
    L2SrcDep = ZinMirL2Config::GetL2SrcDep(v7 + 112, v26);
    std::unordered_map<ZinDependencyOffsetDim,long>::unordered_map(v22, L2SrcDep);
    v23 = 1;
    ZinMirL2Config::SetL2SrcDep((v7 + 112), v22, v26);
    if ((*(*(*(this + 3) + 8) + 124) & 0x10) != 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v13 = a2[48];
      v14 = v24;
      if (v25 < 0)
      {
        v14 = v24[0];
      }

      v15 = *(a3 + 48);
      *buf = 134218498;
      v33 = v13;
      v34 = 2080;
      v35 = v14;
      v36 = 2048;
      v37 = v15;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "Info: kDependentConv is set to NE(TID=%zi) -> %s(TID=%zi)";
LABEL_23:
      _os_log_impl(&dword_1A617D000, v16, OS_LOG_TYPE_INFO, v17, buf, 0x20u);
    }
  }

  else
  {
    v18 = ZinMirL2Config::GetL2SrcDep(v7 + 112, v26);
    std::unordered_map<ZinDependencyOffsetDim,long>::unordered_map(v22, v18);
    v23 = 2;
    ZinMirL2Config::SetL2SrcDep((v7 + 112), v22, v26);
    if ((*(*(*(this + 3) + 8) + 124) & 0x10) != 0 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v19 = a2[48];
      v20 = v24;
      if (v25 < 0)
      {
        v20 = v24[0];
      }

      v21 = *(a3 + 48);
      *buf = 134218498;
      v33 = v19;
      v34 = 2080;
      v35 = v20;
      v36 = 2048;
      v37 = v21;
      v16 = MEMORY[0x1E69E9C10];
      v17 = "Info: kDependentPlanar is set to PE(TID=%zi) -> %s(TID=%zi)";
      goto LABEL_23;
    }
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v22);
  if (v25 < 0)
  {
    operator delete(v24[0]);
  }

LABEL_6:
  std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::~__hash_table(v27);
  if (__p)
  {
    v30 = __p;
    operator delete(__p);
  }

  return v9;
}

void sub_1A6A0BE54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a9);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::~__hash_table(&a22);
  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinMirL2HazardAnalysis::SetFirstTdL2HazardBits(ZinMirL2HazardAnalysis *this)
{
  result = ZinIrDeviceMesh::GetNumAnes((**(this + 3) + 2248));
  if (result)
  {
    v3 = 0;
    do
    {
      v4 = (*(this + 119) + 24 * v3);
      v5 = *v4;
      v6 = v4[1];
LABEL_4:
      if (v5 != v6)
      {
        v7 = *v5;
        v8 = v5[1];
        while (1)
        {
          if (v7 == v8)
          {
            v5 += 3;
            goto LABEL_4;
          }

          v9 = *v7;
          if (ZinIrOpLayer::IsANELayer(*v7))
          {
            break;
          }

          ++v7;
        }

        v10 = *(v9 + 65);
        *(v10 + 248) = 0x101010101010101;
        *(v10 + 256) = 0x101010101010101;
      }

      ++v3;
      result = ZinIrDeviceMesh::GetNumAnes((**(this + 3) + 2248));
    }

    while (v3 < result);
  }

  return result;
}

uint64_t ZinMirL2HazardAnalysis::DebugPrintHazardResults(uint64_t this)
{
  v94 = *MEMORY[0x1E69E9840];
  if ((*(*(*(this + 24) + 8) + 124) & 0x10) != 0)
  {
    v1 = this;
    if (*(this + 944) == 1)
    {
      std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v86);
      v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\n[DEBUG_BEGIN] Hazard results", 29);
      std::ios_base::getloc((v2 + *(*v2 - 24)));
      v3 = std::locale::use_facet(__dst, MEMORY[0x1E69E5318]);
      (v3->__vftable[2].~facet_0)(v3, 10);
      std::locale::~locale(__dst);
      std::ostream::put();
      std::ostream::flush();
      v4 = 0;
      v5 = MEMORY[0x1E69E5318];
      v73 = v1;
      while (v4 < ZinIrDeviceMesh::GetNumAnes((**(v1 + 24) + 2248)))
      {
        v6 = (*(v1 + 952) + 24 * v4);
        v8 = *v6;
        v7 = v6[1];
        v74 = v4;
        v75 = v7;
        while (v8 != v7)
        {
          buf = 0uLL;
          v93 = 0;
          v76 = v8;
          std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&buf, *v8, *(v8 + 8), (*(v8 + 8) - *v8) >> 3);
          v9 = *(&buf + 1);
          v10 = buf;
          if (buf != *(&buf + 1))
          {
            do
            {
              v11 = *v10;
              v12 = *(*v10 + 520);
              memcpy(__dst, v12 + 112, 0x15EuLL);
              std::unordered_map<ZinDependencyOffsetDim,long>::unordered_map(v83, (v12 + 464));
              v83[40] = v12[504];
              std::unordered_map<ZinDependencyOffsetDim,long>::unordered_map(v84, (v12 + 512));
              v84[40] = v12[552];
              std::unordered_map<ZinDependencyOffsetDim,long>::unordered_map(v85, (v12 + 560));
              v85[40] = v12[600];
              if (ZinIrOpLayer::IsNELayer(v11))
              {
                v13 = "(NE";
              }

              else
              {
                v13 = "(PE";
              }

              std::string::basic_string[abi:ne200100]<0>(&v81, v13);
              BondedInfo = ZinEngineLayer::GetBondedInfo(v11);
              AneIndex = ZinBondedInfo::GetAneIndex(BondedInfo);
              std::to_string(&v78, *AneIndex);
              v16 = std::string::insert(&v78, 0, ", ane_index=", 0xCuLL);
              v17 = *&v16->__r_.__value_.__l.__data_;
              v80 = v16->__r_.__value_.__r.__words[2];
              *__p = v17;
              v16->__r_.__value_.__l.__size_ = 0;
              v16->__r_.__value_.__r.__words[2] = 0;
              v16->__r_.__value_.__r.__words[0] = 0;
              if (v80 >= 0)
              {
                v18 = __p;
              }

              else
              {
                v18 = __p[0];
              }

              if (v80 >= 0)
              {
                v19 = HIBYTE(v80);
              }

              else
              {
                v19 = __p[1];
              }

              std::string::append(&v81, v18, v19);
              if (SHIBYTE(v80) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v78.__r_.__value_.__l.__data_);
              }

              std::to_string(&v78, *(v11 + 48));
              v20 = std::string::insert(&v78, 0, ", tid=", 6uLL);
              v21 = *&v20->__r_.__value_.__l.__data_;
              v80 = v20->__r_.__value_.__r.__words[2];
              *__p = v21;
              v20->__r_.__value_.__l.__size_ = 0;
              v20->__r_.__value_.__r.__words[2] = 0;
              v20->__r_.__value_.__r.__words[0] = 0;
              if (v80 >= 0)
              {
                v22 = __p;
              }

              else
              {
                v22 = __p[0];
              }

              if (v80 >= 0)
              {
                v23 = HIBYTE(v80);
              }

              else
              {
                v23 = __p[1];
              }

              std::string::append(&v81, v22, v23);
              if (SHIBYTE(v80) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v78.__r_.__value_.__l.__data_);
              }

              std::to_string(&v77, *(v11 + 9));
              v24 = std::string::insert(&v77, 0, ", sched=", 8uLL);
              v25 = *&v24->__r_.__value_.__l.__data_;
              v78.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
              *&v78.__r_.__value_.__l.__data_ = v25;
              v24->__r_.__value_.__l.__size_ = 0;
              v24->__r_.__value_.__r.__words[2] = 0;
              v24->__r_.__value_.__r.__words[0] = 0;
              v26 = std::string::append(&v78, ")", 1uLL);
              v27 = *&v26->__r_.__value_.__l.__data_;
              v80 = v26->__r_.__value_.__r.__words[2];
              *__p = v27;
              v26->__r_.__value_.__l.__size_ = 0;
              v26->__r_.__value_.__r.__words[2] = 0;
              v26->__r_.__value_.__r.__words[0] = 0;
              if (v80 >= 0)
              {
                v28 = __p;
              }

              else
              {
                v28 = __p[0];
              }

              if (v80 >= 0)
              {
                v29 = HIBYTE(v80);
              }

              else
              {
                v29 = __p[1];
              }

              std::string::append(&v81, v28, v29);
              if (SHIBYTE(v80) < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v78.__r_.__value_.__l.__data_);
              }

              if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v77.__r_.__value_.__l.__data_);
              }

              v32 = *(v11 + 6);
              v31 = (v11 + 48);
              v30 = v32;
              v33 = *(v31 + 23);
              if (v33 >= 0)
              {
                v34 = v31;
              }

              else
              {
                v34 = v30;
              }

              if (v33 >= 0)
              {
                v35 = *(v31 + 23);
              }

              else
              {
                v35 = v31[1];
              }

              v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, v34, v35);
              if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v37 = &v81;
              }

              else
              {
                v37 = v81.__r_.__value_.__r.__words[0];
              }

              if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                size = HIBYTE(v81.__r_.__value_.__r.__words[2]);
              }

              else
              {
                size = v81.__r_.__value_.__l.__size_;
              }

              v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, v37, size);
              v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " = {", 4);
              std::ios_base::getloc((v40 + *(*v40 - 24)));
              v41 = std::locale::use_facet(__p, v5);
              (v41->__vftable[2].~facet_0)(v41, 10);
              std::locale::~locale(__p);
              std::ostream::put();
              std::ostream::flush();
              if (LOBYTE(__dst[17].__locale_) == 1)
              {
                v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\tsource1_cfg_alias_conv_src,", 28);
                std::ios_base::getloc((v42 + *(*v42 - 24)));
                v43 = std::locale::use_facet(__p, v5);
                (v43->__vftable[2].~facet_0)(v43, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              if (BYTE1(__dst[17].__locale_) == 1)
              {
                v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\tsource1_cfg_alias_conv_rslt,", 29);
                std::ios_base::getloc((v44 + *(*v44 - 24)));
                v45 = std::locale::use_facet(__p, v5);
                (v45->__vftable[2].~facet_0)(v45, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              if (BYTE2(__dst[17].__locale_) == 1)
              {
                v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\tsource2_cfg_alias_conv_src,", 28);
                std::ios_base::getloc((v46 + *(*v46 - 24)));
                v47 = std::locale::use_facet(__p, v5);
                (v47->__vftable[2].~facet_0)(v47, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              if (BYTE3(__dst[17].__locale_) == 1)
              {
                v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\tsource2_cfg_alias_conv_rslt,", 29);
                std::ios_base::getloc((v48 + *(*v48 - 24)));
                v49 = std::locale::use_facet(__p, v5);
                (v49->__vftable[2].~facet_0)(v49, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              if (BYTE6(__dst[17].__locale_) == 1)
              {
                v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\tresult_cfg_alias_conv_src,", 27);
                std::ios_base::getloc((v50 + *(*v50 - 24)));
                v51 = std::locale::use_facet(__p, v5);
                (v51->__vftable[2].~facet_0)(v51, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              if (HIBYTE(__dst[17].__locale_) == 1)
              {
                v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\tresult_cfg_alias_conv_rslt,", 28);
                std::ios_base::getloc((v52 + *(*v52 - 24)));
                v53 = std::locale::use_facet(__p, v5);
                (v53->__vftable[2].~facet_0)(v53, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              if (LOBYTE(__dst[18].__locale_) == 1)
              {
                v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\tsource1_cfg_alias_planar_src,", 30);
                std::ios_base::getloc((v54 + *(*v54 - 24)));
                v55 = std::locale::use_facet(__p, v5);
                (v55->__vftable[2].~facet_0)(v55, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              if (BYTE1(__dst[18].__locale_) == 1)
              {
                v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\tsource1_cfg_alias_planar_rslt,", 31);
                std::ios_base::getloc((v56 + *(*v56 - 24)));
                v57 = std::locale::use_facet(__p, v5);
                (v57->__vftable[2].~facet_0)(v57, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              if (BYTE2(__dst[18].__locale_) == 1)
              {
                v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\tsource2_cfg_alias_planar_src,", 30);
                std::ios_base::getloc((v58 + *(*v58 - 24)));
                v59 = std::locale::use_facet(__p, v5);
                (v59->__vftable[2].~facet_0)(v59, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              if (BYTE3(__dst[18].__locale_) == 1)
              {
                v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\tsource2_cfg_alias_planar_rslt,", 31);
                std::ios_base::getloc((v60 + *(*v60 - 24)));
                v61 = std::locale::use_facet(__p, v5);
                (v61->__vftable[2].~facet_0)(v61, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              if (BYTE6(__dst[18].__locale_) == 1)
              {
                v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\tresult_cfg_alias_planar_src,", 29);
                std::ios_base::getloc((v62 + *(*v62 - 24)));
                v63 = std::locale::use_facet(__p, v5);
                (v63->__vftable[2].~facet_0)(v63, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              if (HIBYTE(__dst[18].__locale_) == 1)
              {
                v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\tresult_cfg_alias_planar_rslt,", 30);
                std::ios_base::getloc((v64 + *(*v64 - 24)));
                v65 = std::locale::use_facet(__p, v5);
                (v65->__vftable[2].~facet_0)(v65, 10);
                std::locale::~locale(__p);
                std::ostream::put();
                std::ostream::flush();
              }

              v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "}", 1);
              std::ios_base::getloc((v66 + *(*v66 - 24)));
              v67 = std::locale::use_facet(__p, v5);
              (v67->__vftable[2].~facet_0)(v67, 10);
              std::locale::~locale(__p);
              std::ostream::put();
              std::ostream::flush();
              if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v81.__r_.__value_.__l.__data_);
              }

              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v85);
              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v84);
              std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v83);
              v10 += 8;
            }

            while (v10 != v9);
            v10 = buf;
          }

          if (v10)
          {
            *(&buf + 1) = v10;
            operator delete(v10);
          }

          v7 = v75;
          v8 = v76 + 24;
        }

        v1 = v73;
        v4 = v74 + 1;
      }

      v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "\n[DEBUG_END] Hazard results", 27);
      std::ios_base::getloc((v68 + *(*v68 - 24)));
      v69 = std::locale::use_facet(__dst, MEMORY[0x1E69E5318]);
      (v69->__vftable[2].~facet_0)(v69, 10);
      std::locale::~locale(__dst);
      std::ostream::put();
      std::ostream::flush();
      std::ios_base::getloc((v68 + *(*v68 - 24)));
      v70 = std::locale::use_facet(__dst, MEMORY[0x1E69E5318]);
      (v70->__vftable[2].~facet_0)(v70, 10);
      std::locale::~locale(__dst);
      std::ostream::put();
      std::ostream::flush();
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v86, __dst);
        v71 = SHIBYTE(__dst[2].__locale_) >= 0 ? __dst : __dst[0].__locale_;
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v71;
        _os_log_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "%s", &buf, 0xCu);
        if (SHIBYTE(__dst[2].__locale_) < 0)
        {
          operator delete(__dst[0].__locale_);
        }
      }

      v86[0] = *MEMORY[0x1E69E54D8];
      v72 = *(MEMORY[0x1E69E54D8] + 72);
      *(v86 + *(v86[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
      v87 = v72;
      v88 = MEMORY[0x1E69E5548] + 16;
      if (v90 < 0)
      {
        operator delete(v89[7].__locale_);
      }

      v88 = MEMORY[0x1E69E5538] + 16;
      std::locale::~locale(v89);
      std::iostream::~basic_iostream();
      return MEMORY[0x1AC559F60](&v91);
    }
  }

  return this;
}

void sub_1A6A0CEEC(_Unwind_Exception *a1)
{
  v2 = MEMORY[0x1E69E54D8];
  v3 = *MEMORY[0x1E69E54D8];
  STACK[0x288] = *MEMORY[0x1E69E54D8];
  v4 = *(v2 + 72);
  *(&STACK[0x288] + *(v3 - 24)) = *(v2 + 64);
  STACK[0x298] = v4;
  STACK[0x2A0] = MEMORY[0x1E69E5548] + 16;
  if (SLOBYTE(STACK[0x2F7]) < 0)
  {
    operator delete(STACK[0x2E0]);
  }

  STACK[0x2A0] = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(&STACK[0x2A8]);
  std::iostream::~basic_iostream();
  MEMORY[0x1AC559F60](&STACK[0x308]);
  _Unwind_Resume(a1);
}

const void **std::vector<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>>::push_back[abi:ne200100](const void **result, uint64_t a2)
{
  v3 = result;
  v4 = result[1];
  v5 = result[2];
  if (v4 >= v5)
  {
    v7 = (v4 - *result) >> 5;
    v8 = v7 + 1;
    if ((v7 + 1) >> 59)
    {
      std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v5 - *result;
    if (v9 >> 4 > v8)
    {
      v8 = v9 >> 4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFE0)
    {
      v10 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v16[4] = result;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>>>(result, v10);
    }

    v11 = (32 * v7);
    *v11 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    v11[1] = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = 32 * v7 + 32;
    v12 = result[1] - *result;
    v13 = v11 - v12;
    memcpy(v11 - v12, *result, v12);
    v14 = *v3;
    *v3 = v13;
    v3[1] = v6;
    v15 = v3[2];
    v3[2] = 0;
    v16[2] = v14;
    v16[3] = v15;
    v16[0] = v14;
    v16[1] = v14;
    result = std::__split_buffer<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>>::~__split_buffer(v16);
  }

  else
  {
    *v4 = *a2;
    *a2 = 0;
    *(a2 + 8) = 0;
    *(v4 + 1) = *(a2 + 16);
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    v6 = (v4 + 32);
  }

  v3[1] = v6;
  return result;
}

uint64_t ZinMirL2HazardAnalysis::ConfigureExtensiveL2Dependency(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 520);
  v18 = 0;
  L2SrcType = ZinMemSourceIndexTranslator::GetL2SrcType(a2, a3, &v18);
  result = 0;
  if (L2SrcType || v18 == 2)
  {
    return result;
  }

  LOBYTE(v15[0]) = 1;
  if (std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::find<ZinDependencyOffsetDim>(a4, v15))
  {
    v9 = v18;
    if (v18 <= 1)
    {
      v10 = *(a2 + 520);
      if (v10[12] >= 2uLL)
      {
        if (v10[10] >= 2uLL)
        {
          v11 = *(ZinMirL2Config::GetTileSrc((v6 + 14), v18) + 24);
          v12 = *(*(a2 + 520) + 80);
          if (v11 != *(ZinMirL2Config::GetTileSrc((v6 + 14), v9) + 8) * v12)
          {
            return 0;
          }

          v10 = *(a2 + 520);
          if (v10[12] < 2uLL)
          {
            goto LABEL_11;
          }
        }

        v13 = v10[9];
        if (v13 < 2 || v6[26] == v6[25] * v13)
        {
          goto LABEL_11;
        }

        return 0;
      }
    }
  }

LABEL_11:
  L2SrcDep = ZinMirL2Config::GetL2SrcDep((v6 + 14), v18);
  std::unordered_map<ZinDependencyOffsetDim,long>::unordered_map(v15, L2SrcDep);
  v17 = *(L2SrcDep + 40);
  if (v15 != a4)
  {
    v16 = *(a4 + 32);
    std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::__assign_multi<std::__hash_const_iterator<std::__hash_node<std::__hash_value_type<ZinDependencyOffsetDim,long>,void *> *>>(v15, *(a4 + 16), 0);
  }

  ZinMirL2Config::SetL2SrcDep(v6 + 14, v15, v18);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v15);
  return 1;
}

void sub_1A6A0D404(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t ZinMirL2HazardAnalysis::IsQualifiedForExtensiveL2Dependency(uint64_t a1, const ZinIrOpLayer *a2, ZinIrContext *a3, ZinIrOpLayerGraph *a4, const ZinIrTensor *a5, uint64_t a6)
{
  v26 = a2;
  if (*(a5 + 1380) != 1)
  {
    return 0;
  }

  v11 = (*(*a2 + 40))(a2, 0);
  RootTensor = ZinIrTensor::GetRootTensor(v11);
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v19[0].n128_u8[0] = 0;
  v22 = 0;
  ShouldUseL2Dependent = ZinIrRegAllocUtil::ShouldUseL2Dependent(RootTensor, a5, &v23, v19);
  v14 = ShouldUseL2Dependent;
  if (v22 == 1)
  {
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v21, v21[1]);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v20);
    ShouldUseL2Dependent = std::__hash_table<std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>>>::~__hash_table(v19);
  }

  if (((v24 - v23 == 16) & v14) == 1 && *v23 == a2 && v23[1] == a3)
  {
    ZinMirL2HazardAnalysis::ComputeDependencyMap(ShouldUseL2Dependent, a2, a3, a4, a5, a6);
    if (*(a6 + 24))
    {
      IsConnected = 1;
    }

    else
    {
      RawOrShared<ZinIrOpLayer>::RawOrShared<ZinGOCLayer *&>(v19, &v26);
      v17 = a3;
      RawOrShared<ZinIrOpLayer>::RawOrShared<ZinGOCLayer *&>(&v18, &v17);
      IsConnected = ZinIrNgraph<RawOrShared<ZinIrOpLayer>,ZinIrIdComparator<RawOrShared<ZinIrOpLayer>>>::IsConnected(a4, v19, &v18);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v18);
      std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v19);
    }
  }

  else
  {
    IsConnected = 0;
  }

  if (v23)
  {
    v24 = v23;
    operator delete(v23);
  }

  return IsConnected;
}

void sub_1A6A0D5B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va1);
  v5 = *(v3 - 96);
  if (v5)
  {
    *(v3 - 88) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(a1);
}

void ZinMirL2HazardAnalysis::ComputeDependencyMap(uint64_t a1, const ZinIrOpLayer *a2, ZinIrContext *a3, ZinIrOpLayerGraph *a4, _BYTE *a5, uint64_t a6)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::clear(a6);
  if (!ZinTensorFamilyUtil::FindAllIntermediateLayerPaths(a2, a3, &v15) && v15 != v16 && 0xAAAAAAAAAAAAAAABLL * (v16 - v15) <= 1)
  {
    ZinIrRegAllocUtil::ComputeDependencyOffset(&v15, a2, a3, a4, a5, 0, v14);
    std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::__move_assign(a6, v14);
    std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::~__hash_table(v14);
    if (*(a6 + 24))
    {
      v11 = *(a6 + 16);
      if (v11)
      {
        while (1)
        {
          if ((a5[1388] & 1) == 0)
          {
            v12 = v11[5];
            if (v12)
            {
              break;
            }
          }

LABEL_11:
          LOBYTE(v14[0]) = 3;
          v13 = std::__hash_table<std::__hash_value_type<ZinDependencyOffsetDim,long>,std::__unordered_map_hasher<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::hash<ZinDependencyOffsetDim>,std::equal_to<ZinDependencyOffsetDim>,true>,std::__unordered_map_equal<ZinDependencyOffsetDim,std::__hash_value_type<ZinDependencyOffsetDim,long>,std::equal_to<ZinDependencyOffsetDim>,std::hash<ZinDependencyOffsetDim>,true>,std::allocator<std::__hash_value_type<ZinDependencyOffsetDim,long>>>::find<ZinDependencyOffsetDim>(v11 + 3, v14);
          if ((a5[1386] & 1) == 0 && v13 && v13[3])
          {
            goto LABEL_16;
          }

          v11 = *v11;
          if (!v11)
          {
            goto LABEL_2;
          }
        }

        while ((v12[3] & 0x8000000000000000) == 0)
        {
          v12 = *v12;
          if (!v12)
          {
            goto LABEL_11;
          }
        }

LABEL_16:
        std::__hash_table<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::__unordered_map_hasher<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::hash<long>,std::equal_to<long>,true>,std::__unordered_map_equal<long,std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,std::equal_to<long>,std::hash<long>,true>,std::allocator<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>>>::clear(a6);
      }
    }
  }

LABEL_2:
  v14[0] = &v15;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](v14);
}

void sub_1A6A0D748(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  a9 = &a14;
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

BOOL ZinMirL2HazardAnalysis::HasAliasBetweenEngineLayers(ZinMirL2HazardAnalysis *this, const ZinANELayer *a2, ZinEngineLayerMirInfo **a3)
{
  v50 = 0;
  v51 = 0;
  v52 = 0;
  ZinMirL2HazardAnalysis::GetReadBeginHazardNodes(this, a3, &v50);
  v5 = v50;
  v6 = v51;
  while (v5 != v6)
  {
    v8 = *v5;
    v7 = *(v5 + 1);
    if (v7)
    {
      atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v9 = *this;
    v44 = v8;
    v10 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>((v9 + 64), &v44);
    v11 = (v9 + 104);
    if (v10)
    {
      v11 = v10 + 3;
    }

    v12 = *v11;
    v13 = v11[1];
    if (*v11 == v13)
    {
      v18 = 1;
      if (v7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      while (1)
      {
        std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v44, *v12);
        LODWORD(v42) = 0;
        v14 = *this;
        v48 = &v44->__vftable;
        v49 = v45;
        if (v45)
        {
          atomic_fetch_add_explicit(&v45->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v46 = v8;
        v47 = v7;
        if (v7)
        {
          atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        EdgeType = ZinIrHazardGraph::GetEdgeType(v14, &v48, &v46, &v42);
        if (v42)
        {
          v16 = 0;
        }

        else
        {
          v16 = EdgeType;
        }

        if (v47)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v47);
        }

        if (v49)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v49);
        }

        if (v16)
        {
          v17 = 5;
        }

        else
        {
          v17 = *(v44->__shared_weak_owners_ + 384) == *(a2 + 48);
        }

        if (v45)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v45);
        }

        if (v17 != 5 && v17)
        {
          break;
        }

        if (++v12 == v13)
        {
          LOBYTE(v17) = 4;
          break;
        }
      }

      v18 = (v17 & 3) == 0;
      if (v7)
      {
LABEL_28:
        std::__shared_weak_count::__release_shared[abi:ne200100](v7);
      }
    }

    if (!v18)
    {
      v25 = 1;
      goto LABEL_75;
    }

    v5 += 16;
  }

  v19 = a3;
  L2WrSymbol = ZinEngineLayerMirInfo::GetL2WrSymbol(a3[65]);
  ZinMirL2HazardAnalysis::GetHazardNodes(this, L2WrSymbol, &v44);
  v21 = v44;
  v22 = v45;
  if (v44 != v45)
  {
    while (1)
    {
      v24 = *v21;
      v23 = v21[1];
      if (v23)
      {
        atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      if (*(v24 + 16) == v19)
      {
        break;
      }

      v25 = 0;
      if (v23)
      {
        goto LABEL_39;
      }

LABEL_40:
      v21 += 2;
      v26 = v21 == v22 || v25;
      if (v26 == 1)
      {
        goto LABEL_74;
      }
    }

    v27 = *this;
    v42 = v24;
    v28 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>((v27 + 64), &v42);
    v29 = (v27 + 104);
    if (v28)
    {
      v29 = v28 + 3;
    }

    v30 = *v29;
    v31 = v29[1];
    if (*v29 == v31)
    {
      v25 = 0;
    }

    else
    {
      while (1)
      {
        std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v42, *v30);
        v53 = 0;
        v32 = *this;
        v40 = v42;
        v41 = v43;
        if (v43)
        {
          atomic_fetch_add_explicit(&v43->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v38 = v24;
        v39 = v23;
        if (v23)
        {
          atomic_fetch_add_explicit(&v23->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v33 = ZinIrHazardGraph::GetEdgeType(v32, &v40, &v38, &v53);
        if (v53)
        {
          v34 = 0;
        }

        else
        {
          v34 = v33;
        }

        if (v39)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v39);
        }

        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        if (v34)
        {
          v35 = 9;
        }

        else
        {
          v35 = v42[2][16].__vftable == *(a2 + 48);
        }

        if (v43)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v43);
        }

        if (v35 != 9 && v35)
        {
          break;
        }

        if (++v30 == v31)
        {
          v35 = 0;
          break;
        }
      }

      v25 = v35 != 0;
    }

    v19 = a3;
    if (!v23)
    {
      goto LABEL_40;
    }

LABEL_39:
    std::__shared_weak_count::__release_shared[abi:ne200100](v23);
    goto LABEL_40;
  }

  v25 = 0;
LABEL_74:
  v42 = &v44;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v42);
LABEL_75:
  v44 = &v50;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v44);
  return v25;
}

void sub_1A6A0DAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23)
{
  *(v23 - 88) = &a23;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100]((v23 - 88));
  _Unwind_Resume(a1);
}

uint64_t ZinMirL2HazardAnalysis::TryEnablingParallelExecution(uint64_t a1, ZinBondedUtils *this, ZinANELayer *a3, ZinIrOpLayer ***a4)
{
  if (this && a3 && !ZinBondedUtils::AreAssignedToSameANE(this, a3, a3))
  {
    ZinAssertImpl("Layers must be assigned to the same ANE");
  }

  v8 = *(a1 + 8);
  v9 = *(v8 + 384);
  v10 = *(v8 + 392);
  if (v10 == v9)
  {
    ZinAssertImpl("Must run scheduler first");
  }

  __p = 0;
  v59 = 0;
  v60 = 0;
  std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, v9, v10, (v10 - v9) >> 3);
  if ((ZinIrRegAllocUtil::IsQualifiedForParallelExecution(this, a3, &__p, *(a1 + 24), a4) & 1) == 0)
  {
    goto LABEL_43;
  }

  if (*a4 == a4[1])
  {
    ZinAssertImpl("Parallel execution layer sequence should not be empty");
  }

  v11 = *(this + 65);
  v12 = ZinIrOpLayer::IsNELayer(this) ? 2 : 1;
  if (!ZinMirL2Config::HasL2DependentMode((v11 + 112), v12) && ZinMirL2Config::HasAlias((v11 + 112)))
  {
    v13 = *a4;
    if (*a4 != a4[1])
    {
      v14 = 0;
      while (1)
      {
        v15 = *v13;
        v16 = *(*v13 + 65);
        v17 = ZinIrOpLayer::IsNELayer(*v13) ? 2 : 1;
        if (ZinMirL2Config::HasL2DependentMode((v16 + 112), v17))
        {
          break;
        }

        HasAlias = ZinMirL2Config::HasAlias((v16 + 112));
        v19 = (*(*this + 40))(this, 0);
        RootTensor = ZinIrTensor::GetRootTensor(v19);
        MemoryPools = ZinIrContext::GetMemoryPools(v15);
        v22 = *MemoryPools;
        v23 = *(MemoryPools + 8);
        while (v22 != v23)
        {
          v24 = (*(**v22 + 40))(*v22, 0);
          if (RootTensor == ZinIrTensor::GetRootTensor(v24))
          {
            if (v15 == *(a4[1] - 1))
            {
              v25 = "True";
              if (ZinMirL2HazardAnalysis::TryDependencyBitSet(a1, this, v15, 1))
              {
                goto LABEL_25;
              }
            }

            break;
          }

          ++v22;
        }

        v25 = "False";
        if (ZinMirL2HazardAnalysis::HasAliasBetweenEngineLayers(a1, this, v15))
        {
          break;
        }

LABEL_25:
        IsNELayer = ZinIrOpLayer::IsNELayer(this);
        v27 = 256;
        if (IsNELayer)
        {
          v27 = 248;
        }

        *(*(v15 + 65) + v27) = 0;
        *(*(this + 65) + 264) = 1;
        v14 |= HasAlias;
        if (*(a1 + 504))
        {
          v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a1 + 376), "Parallel execution is materialized: ", 36);
          v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "TID", 3);
          v30 = MEMORY[0x1AC559B60](v29, *(this + 48));
          v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "->", 2);
          v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, "TID", 3);
          v33 = MEMORY[0x1AC559B60](v32, *(v15 + 48));
          v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, " ", 1);
          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, "(TID", 4);
          v36 = MEMORY[0x1AC559B60](v35, *(this + 48));
          v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " ", 1);
          v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, "L2 barrier=", 11);
          if (v14)
          {
            v39 = "True";
          }

          else
          {
            v39 = "False";
          }

          if (v14)
          {
            v40 = 4;
          }

          else
          {
            v40 = 5;
          }

          v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v39, v40);
          v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " / ", 3);
          v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "TID", 3);
          v44 = MEMORY[0x1AC559B60](v43, *(v15 + 48));
          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, " ", 1);
          v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "alias update=", 13);
          if (HasAlias)
          {
            v47 = "True";
          }

          else
          {
            v47 = "False";
          }

          if (HasAlias)
          {
            v48 = 4;
          }

          else
          {
            v48 = 5;
          }

          v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v47, v48);
          v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ", ", 2);
          v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "dependency bit=", 15);
          v52 = strlen(v25);
          v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v25, v52);
          v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v53, ")", 1);
          std::ios_base::getloc((v54 + *(*v54 - 24)));
          v55 = std::locale::use_facet(&v61, MEMORY[0x1E69E5318]);
          (v55->__vftable[2].~facet_0)(v55, 10);
          std::locale::~locale(&v61);
          std::ostream::put();
          std::ostream::flush();
        }

        ++v13;
        v56 = 1;
        if (v13 == a4[1])
        {
          goto LABEL_44;
        }
      }

      if (v13 != a4[1])
      {
        a4[1] = v13;
      }
    }

    v56 = 1;
  }

  else
  {
LABEL_43:
    v56 = 0;
  }

LABEL_44:
  if (__p)
  {
    v59 = __p;
    operator delete(__p);
  }

  return v56;
}

void sub_1A6A0E028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, std::locale a12)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinMirL2HazardAnalysis::DebugPrintNode(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  v7 = *(*a2 + 16);
  v8 = *(*a2 + 24);
  v9 = v8[4];
  v10 = v8[31];
  if (ZinIrOpLayer::IsNELayer(v7))
  {
    v11 = "(NE";
  }

  else
  {
    v11 = "(PE";
  }

  std::string::basic_string[abi:ne200100]<0>(&v109, v11);
  BondedInfo = ZinEngineLayer::GetBondedInfo(v7);
  AneIndex = ZinBondedInfo::GetAneIndex(BondedInfo);
  std::to_string(&v101, *AneIndex);
  v14 = std::string::insert(&v101, 0, ", ane_index=", 0xCuLL);
  v15 = *&v14->__r_.__value_.__l.__data_;
  v102.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
  *&v102.__r_.__value_.__l.__data_ = v15;
  v14->__r_.__value_.__l.__size_ = 0;
  v14->__r_.__value_.__r.__words[2] = 0;
  v14->__r_.__value_.__r.__words[0] = 0;
  v16 = std::string::append(&v102, ", sched=", 8uLL);
  v17 = *&v16->__r_.__value_.__l.__data_;
  v103.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
  *&v103.__r_.__value_.__l.__data_ = v17;
  v16->__r_.__value_.__l.__size_ = 0;
  v16->__r_.__value_.__r.__words[2] = 0;
  v16->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v100, v7[9]);
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v18 = &v100;
  }

  else
  {
    v18 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v100.__r_.__value_.__l.__size_;
  }

  v20 = std::string::append(&v103, v18, size);
  v21 = *&v20->__r_.__value_.__l.__data_;
  v104.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
  *&v104.__r_.__value_.__l.__data_ = v21;
  v20->__r_.__value_.__l.__size_ = 0;
  v20->__r_.__value_.__r.__words[2] = 0;
  v20->__r_.__value_.__r.__words[0] = 0;
  v22 = std::string::append(&v104, ", tid=", 6uLL);
  v23 = *&v22->__r_.__value_.__l.__data_;
  v105.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
  *&v105.__r_.__value_.__l.__data_ = v23;
  v22->__r_.__value_.__l.__size_ = 0;
  v22->__r_.__value_.__r.__words[2] = 0;
  v22->__r_.__value_.__r.__words[0] = 0;
  std::to_string(&v99, v7[48]);
  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v24 = &v99;
  }

  else
  {
    v24 = v99.__r_.__value_.__r.__words[0];
  }

  if ((v99.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v25 = HIBYTE(v99.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v25 = v99.__r_.__value_.__l.__size_;
  }

  v26 = std::string::append(&v105, v24, v25);
  v27 = *&v26->__r_.__value_.__l.__data_;
  v106.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
  *&v106.__r_.__value_.__l.__data_ = v27;
  v26->__r_.__value_.__l.__size_ = 0;
  v26->__r_.__value_.__r.__words[2] = 0;
  v26->__r_.__value_.__r.__words[0] = 0;
  v28 = std::string::append(&v106, ")", 1uLL);
  v29 = *&v28->__r_.__value_.__l.__data_;
  v108 = v28->__r_.__value_.__r.__words[2];
  v107 = v29;
  v28->__r_.__value_.__l.__size_ = 0;
  v28->__r_.__value_.__r.__words[2] = 0;
  v28->__r_.__value_.__r.__words[0] = 0;
  if (v108 >= 0)
  {
    v30 = &v107;
  }

  else
  {
    v30 = v107;
  }

  if (v108 >= 0)
  {
    v31 = HIBYTE(v108);
  }

  else
  {
    v31 = *(&v107 + 1);
  }

  std::string::append(&v109, v30, v31);
  if (SHIBYTE(v108) < 0)
  {
    operator delete(v107);
  }

  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v104.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v104.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v103.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v103.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v102.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v102.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v101.__r_.__value_.__l.__data_);
  }

  if (a4)
  {
    v32 = "\\l";
  }

  else
  {
    v32 = "\n";
  }

  std::string::basic_string[abi:ne200100]<0>(&v107, v32);
  v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "\t", 1);
  v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "", 1);
  v35 = *a2;
  if (*(*a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v106, *(v35 + 40), *(v35 + 48));
  }

  else
  {
    v106 = *(v35 + 40);
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v36 = &v106;
  }

  else
  {
    v36 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v37 = v106.__r_.__value_.__l.__size_;
  }

  v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, v36, v37);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " [", 3);
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "label=", 7);
  v39 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "L=", 2);
  v42 = v7[6];
  v41 = v7 + 6;
  v40 = v42;
  v43 = *(v41 + 23);
  if (v43 >= 0)
  {
    v44 = v41;
  }

  else
  {
    v44 = v40;
  }

  if (v43 >= 0)
  {
    v45 = *(v41 + 23);
  }

  else
  {
    v45 = v41[1];
  }

  v46 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, v44, v45);
  if (v108 >= 0)
  {
    v47 = &v107;
  }

  else
  {
    v47 = v107;
  }

  if (v108 >= 0)
  {
    v48 = HIBYTE(v108);
  }

  else
  {
    v48 = *(&v107 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v46, v47, v48);
  if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v49 = &v109;
  }

  else
  {
    v49 = v109.__r_.__value_.__r.__words[0];
  }

  if ((v109.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v50 = HIBYTE(v109.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v50 = v109.__r_.__value_.__l.__size_;
  }

  v51 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), v49, v50);
  if (v108 >= 0)
  {
    v52 = &v107;
  }

  else
  {
    v52 = v107;
  }

  if (v108 >= 0)
  {
    v53 = HIBYTE(v108);
  }

  else
  {
    v53 = *(&v107 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, v52, v53);
  v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "S=", 2);
  v57 = v8[28];
  v56 = v8 + 28;
  v55 = v57;
  v58 = *(v56 + 23);
  if (v58 >= 0)
  {
    v59 = v56;
  }

  else
  {
    v59 = v55;
  }

  if (v58 >= 0)
  {
    v60 = *(v56 + 23);
  }

  else
  {
    v60 = v56[1];
  }

  v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, v59, v60);
  if (v108 >= 0)
  {
    v62 = &v107;
  }

  else
  {
    v62 = v107;
  }

  if (v108 >= 0)
  {
    v63 = HIBYTE(v108);
  }

  else
  {
    v63 = *(&v107 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v62, v63);
  v64 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "range=[", 7);
  v65 = MEMORY[0x1AC559B70](v64, v9);
  v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, ", ", 2);
  v67 = MEMORY[0x1AC559B70](v66, v10 + v9);
  v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v67, "]", 1);
  if (v108 >= 0)
  {
    v69 = &v107;
  }

  else
  {
    v69 = v107;
  }

  if (v108 >= 0)
  {
    v70 = HIBYTE(v108);
  }

  else
  {
    v70 = *(&v107 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, v69, v70);
  if (*(*a2 + 36))
  {
    v71 = "End";
  }

  else
  {
    v71 = "Begin";
  }

  std::string::basic_string[abi:ne200100]<0>(&v106, v71);
  v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "ExecutionType=", 14);
  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v73 = &v106;
  }

  else
  {
    v73 = v106.__r_.__value_.__r.__words[0];
  }

  if ((v106.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v74 = HIBYTE(v106.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v74 = v106.__r_.__value_.__l.__size_;
  }

  v75 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, v73, v74);
  if (v108 >= 0)
  {
    v76 = &v107;
  }

  else
  {
    v76 = v107;
  }

  if (v108 >= 0)
  {
    v77 = HIBYTE(v108);
  }

  else
  {
    v77 = *(&v107 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, v76, v77);
  v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "Ty=", 3);
  v79 = *(*a2 + 32);
  if (v79 >= 4)
  {
    ZinAssertImpl("Unreachable.");
  }

  v80 = v78;
  std::string::basic_string[abi:ne200100]<0>(&v105, (&off_1E77C46D0)[v79]);
  if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v81 = &v105;
  }

  else
  {
    v81 = v105.__r_.__value_.__r.__words[0];
  }

  if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v82 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v82 = v105.__r_.__value_.__l.__size_;
  }

  v83 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v80, v81, v82);
  if (v108 >= 0)
  {
    v84 = &v107;
  }

  else
  {
    v84 = v107;
  }

  if (v108 >= 0)
  {
    v85 = HIBYTE(v108);
  }

  else
  {
    v85 = *(&v107 + 1);
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v83, v84, v85);
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "Name=", 5);
  v87 = *a2;
  if (*(*a2 + 63) < 0)
  {
    std::string::__init_copy_ctor_external(&v105, *(v87 + 40), *(v87 + 48));
  }

  else
  {
    v105 = *(v87 + 40);
  }

  if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v88 = &v105;
  }

  else
  {
    v88 = v105.__r_.__value_.__r.__words[0];
  }

  if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v89 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v89 = v105.__r_.__value_.__l.__size_;
  }

  v90 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, v88, v89);
  if (v108 >= 0)
  {
    v91 = &v107;
  }

  else
  {
    v91 = v107;
  }

  if (v108 >= 0)
  {
    v92 = HIBYTE(v108);
  }

  else
  {
    v92 = *(&v107 + 1);
  }

  v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v90, v91, v92);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, " ", 2);
  if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v105.__r_.__value_.__l.__data_);
  }

  v94 = *(*a2 + 32);
  if (v94 == 3)
  {
    v95 = ", fillcolor=grey";
  }

  else
  {
    v95 = ", fillcolor=white";
  }

  if (v94 == 3)
  {
    v96 = 16;
  }

  else
  {
    v96 = 17;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), v95, v96);
  v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>((a3 + 16), "]", 1);
  std::ios_base::getloc((v97 + *(*v97 - 24)));
  v98 = std::locale::use_facet(&v105, MEMORY[0x1E69E5318]);
  (v98->__vftable[2].~facet_0)(v98, 10);
  std::locale::~locale(&v105);
  std::ostream::put();
  std::ostream::flush();
  if (SHIBYTE(v106.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v106.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v108) < 0)
  {
    operator delete(v107);
  }

  if (SHIBYTE(v109.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v109.__r_.__value_.__l.__data_);
  }
}

void sub_1A6A0E7D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, std::locale a49, uint64_t a50, int a51, __int16 a52, char a53, char a54)
{
  if (*(v54 - 137) < 0)
  {
    operator delete(*(v54 - 160));
  }

  if (*(v54 - 105) < 0)
  {
    operator delete(*(v54 - 128));
  }

  if (*(v54 - 81) < 0)
  {
    operator delete(*(v54 - 104));
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(uint64_t a1, ZinIrHazardNode **a2, ZinIrHazardNode **a3)
{
  LayerTID = ZinIrHazardNode::GetLayerTID(*a2);
  if (LayerTID < ZinIrHazardNode::GetLayerTID(*a3))
  {
    return 1;
  }

  v7 = ZinIrHazardNode::GetLayerTID(*a2);
  if (v7 > ZinIrHazardNode::GetLayerTID(*a3))
  {
    return 0;
  }

  v8 = *(*a2 + 8);
  v9 = *(*a3 + 8);
  if (v8 < v9)
  {
    return 1;
  }

  if (v8 > v9)
  {
    return 0;
  }

  if (*(*a2 + 9))
  {
    v10 = 1;
  }

  else
  {
    v10 = *(*a3 + 9) == 0;
  }

  return !v10;
}

void std::vector<std::vector<std::vector<ZinANELayer *>>>::__vdeallocate(void ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v1)
    {
      do
      {
        v3 -= 3;
        v5 = v3;
        std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&v5);
      }

      while (v3 != v1);
      v4 = *a1;
    }

    a1[1] = v1;
    operator delete(v4);
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }
}

uint64_t *std::vector<std::shared_ptr<ZinIrHazardNode>>::__init_with_size[abi:ne200100]<std::shared_ptr<ZinIrHazardNode>*,std::shared_ptr<ZinIrHazardNode>*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<std::shared_ptr<ZinIrTensor>>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_1A6A0EAB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void *std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrHazardNode>>,std::shared_ptr<ZinIrHazardNode>*,std::shared_ptr<ZinIrHazardNode>*,std::shared_ptr<ZinIrHazardNode>*>(uint64_t a1, void *a2, void *a3, void *a4)
{
  v4 = a4;
  v10 = a4;
  v9 = a4;
  v7[0] = a1;
  v7[1] = &v9;
  v7[2] = &v10;
  if (a2 != a3)
  {
    do
    {
      v5 = a2[1];
      *v4 = *a2;
      v4[1] = v5;
      if (v5)
      {
        atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
      }

      a2 += 2;
      v4 += 2;
    }

    while (a2 != a3);
    v10 = v4;
  }

  v8 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ZinIrHazardNode>>,std::shared_ptr<ZinIrHazardNode>*>>::~__exception_guard_exceptions[abi:ne200100](v7);
  return v4;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ZinIrHazardNode>>,std::shared_ptr<ZinIrHazardNode>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<std::shared_ptr<ZinIrTensor>>,std::shared_ptr<ZinIrTensor>*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::vector<std::shared_ptr<ZinIrHazardNode>>::__assign_with_size[abi:ne200100]<std::shared_ptr<ZinIrHazardNode>*,std::shared_ptr<ZinIrHazardNode>*>(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v8 = *a1;
  if (a4 > (a1[2] - *a1) >> 4)
  {
    std::vector<std::shared_ptr<ZinIrConstData>>::__vdeallocate(a1);
    if (!(a4 >> 60))
    {
      v9 = a1[2] - *a1;
      v10 = v9 >> 3;
      if (v9 >> 3 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x7FFFFFFFFFFFFFF0)
      {
        v11 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<std::shared_ptr<ZinIrTensor>>::__vallocate[abi:ne200100](a1, v11);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v12 = a1[1] - v8;
  if (a4 <= v12 >> 4)
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData>*>(&v18, a2, a3, v8);
    v14 = v13;
    v15 = a1[1];
    if (v15 != v13)
    {
      do
      {
        v16 = *(v15 - 8);
        if (v16)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v16);
        }

        v15 -= 16;
      }

      while (v15 != v14);
    }

    a1[1] = v14;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData> const*,std::shared_ptr<ZinIrConstData>*>(&v17, a2, (a2 + v12), v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<std::shared_ptr<ZinIrHazardNode>>,std::shared_ptr<ZinIrHazardNode>*,std::shared_ptr<ZinIrHazardNode>*,std::shared_ptr<ZinIrHazardNode>*>(a1, (a2 + v12), a3, a1[1]);
  }
}

void std::__introsort<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,false>(uint64_t result, ZinIrHazardNode **a2, uint64_t a3, uint64_t a4, char a5)
{
  v5 = a3;
  v7 = result;
LABEL_2:
  v97 = a2 - 2;
  v92 = a2 - 1;
  v94 = a2 - 6;
  v95 = a2 - 4;
  v8 = v7;
LABEL_3:
  v9 = 1 - a4;
  while (1)
  {
    v7 = v8;
    v10 = v9;
    v11 = (a2 - v8) >> 4;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return;
      }

      if (v11 == 2)
      {
        if (ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(result, v97, v8))
        {
          v85 = *v8;
          *v8 = *(a2 - 2);
          *(a2 - 2) = v85;
          v86 = *(v8 + 8);
          *(v8 + 8) = *(a2 - 1);
          *(a2 - 1) = v86;
        }

        return;
      }

      goto LABEL_11;
    }

    if (v11 == 3)
    {
      v79 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(result, (v8 + 16), v8);
      v80 = v79;
      v81 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v79, v97, (v8 + 16));
      if (v80)
      {
        v83 = (v8 + 8);
        v82 = *v8;
        if (v81)
        {
          *v8 = *(a2 - 2);
        }

        else
        {
          v90 = *(v8 + 16);
          *(v8 + 24) = *(v8 + 8);
          v83 = (v8 + 24);
          *(v8 + 16) = v82;
          *v8 = v90;
          if (!ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v81, v97, (v8 + 16)))
          {
            return;
          }

          v82 = *(v8 + 16);
          *(v8 + 16) = *(a2 - 2);
        }

        *(a2 - 2) = v82;
      }

      else
      {
        if (!v81)
        {
          return;
        }

        v87 = *(v8 + 16);
        *(v8 + 16) = *(a2 - 2);
        *(a2 - 2) = v87;
        v88 = *(v8 + 24);
        v92 = (v8 + 24);
        *(v8 + 24) = *(a2 - 1);
        *(a2 - 1) = v88;
        if (!ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v81, (v8 + 16), v8))
        {
          return;
        }

        v89 = *v8;
        *v8 = *(v8 + 16);
        *(v8 + 16) = v89;
        v83 = (v8 + 8);
      }

      v91 = *v83;
      *v83 = *v92;
      *v92 = v91;
      return;
    }

    if (v11 == 4)
    {
      break;
    }

    if (v11 == 5)
    {

      std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,0>(v8, v8 + 16, v8 + 32, v8 + 48, v97);
      return;
    }

LABEL_11:
    if (v11 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(v8, a2);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(v8, a2);
      }

      return;
    }

    if (v10 == 1)
    {
      if (v8 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,std::shared_ptr<ZinIrHazardNode> *>(v8, a2, a2, v5);
      }

      return;
    }

    v12 = v11 >> 1;
    v13 = v8 + 16 * (v11 >> 1);
    if (v11 >= 0x81)
    {
      v14 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(result, (v8 + 16 * (v11 >> 1)), v8);
      v15 = v14;
      v16 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v14, v97, v13);
      if (v15)
      {
        v18 = (v7 + 8);
        v17 = *v7;
        if (v16)
        {
          v19 = a2 - 2;
          *v7 = *v97;
          goto LABEL_28;
        }

        v34 = *(v7 + 8);
        *v7 = *v13;
        *(v13 + 8) = v34;
        v18 = (v13 + 8);
        *v13 = v17;
        v16 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v16, v97, v13);
        if (v16)
        {
          v17 = *v13;
          v19 = a2 - 2;
          *v13 = *v97;
LABEL_28:
          *v19 = v17;
          v28 = a2 - 1;
LABEL_29:
          v35 = *v18;
          *v18 = *v28;
          *v28 = v35;
        }
      }

      else if (v16)
      {
        v26 = *v13;
        *v13 = *(a2 - 2);
        *(a2 - 2) = v26;
        v28 = (v13 + 8);
        v27 = *(v13 + 8);
        *(v13 + 8) = *(a2 - 1);
        *(a2 - 1) = v27;
        v16 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v16, v13, v7);
        if (v16)
        {
          v29 = *v7;
          *v7 = *v13;
          v18 = (v7 + 8);
          *v13 = v29;
          goto LABEL_29;
        }
      }

      v36 = (v13 - 16);
      v37 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v16, (v13 - 16), (v7 + 16));
      v38 = v37;
      v39 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v37, v95, (v13 - 16));
      if (v38)
      {
        v40 = *(v7 + 16);
        v41 = (v7 + 24);
        if (v39)
        {
          v42 = a2 - 4;
          *(v7 + 16) = *v95;
          goto LABEL_41;
        }

        v48 = *v41;
        *(v7 + 16) = *v36;
        *(v13 - 8) = v48;
        v41 = (v13 - 8);
        *v36 = v40;
        v39 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v39, v95, (v13 - 16));
        if (v39)
        {
          v40 = *v36;
          v42 = a2 - 4;
          *v36 = *v95;
LABEL_41:
          *v42 = v40;
          v45 = a2 - 3;
LABEL_42:
          v49 = *v41;
          *v41 = *v45;
          *v45 = v49;
        }
      }

      else if (v39)
      {
        v43 = *v36;
        *v36 = *(a2 - 4);
        *(a2 - 4) = v43;
        v45 = (v13 - 8);
        v44 = *(v13 - 8);
        *(v13 - 8) = *(a2 - 3);
        *(a2 - 3) = v44;
        v39 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v39, (v13 - 16), (v7 + 16));
        if (v39)
        {
          v46 = *(v7 + 16);
          *(v7 + 16) = *v36;
          *v36 = v46;
          v41 = (v7 + 24);
          goto LABEL_42;
        }
      }

      v50 = v12 + 1;
      v51 = v7 + 16 * (v12 + 1);
      v52 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v39, v51, (v7 + 32));
      v53 = v52;
      v54 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v52, v94, v51);
      if (v53)
      {
        v55 = *(v7 + 32);
        v56 = (v7 + 40);
        if (v54)
        {
          v57 = a2 - 6;
          *(v7 + 32) = *v94;
          goto LABEL_51;
        }

        v62 = *v56;
        *(v7 + 32) = *v51;
        *(v51 + 8) = v62;
        v56 = (v51 + 8);
        *v51 = v55;
        v54 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v54, v94, (v7 + 16 * (v12 + 1)));
        if (v54)
        {
          v55 = *v51;
          v57 = a2 - 6;
          *v51 = *v94;
LABEL_51:
          *v57 = v55;
          v60 = a2 - 5;
LABEL_52:
          v63 = *v56;
          *v56 = *v60;
          *v60 = v63;
        }
      }

      else if (v54)
      {
        v58 = *v51;
        *v51 = *(a2 - 6);
        *(a2 - 6) = v58;
        v60 = (v51 + 8);
        v59 = *(v51 + 8);
        *(v51 + 8) = *(a2 - 5);
        *(a2 - 5) = v59;
        v54 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v54, (v7 + 16 * (v12 + 1)), (v7 + 32));
        if (v54)
        {
          v61 = *(v7 + 32);
          *(v7 + 32) = *v51;
          *v51 = v61;
          v56 = (v7 + 40);
          goto LABEL_52;
        }
      }

      v64 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v54, v13, (v13 - 16));
      v65 = v64;
      v22 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v64, (v7 + 16 * (v12 + 1)), v13);
      if (v65)
      {
        v66 = *v36;
        if (v22)
        {
          *v36 = *v51;
          *v51 = v66;
          v67 = (v13 - 8);
          goto LABEL_61;
        }

        v70 = *v13;
        *(v13 + 8) = *(v13 - 8);
        *v13 = v66;
        *v36 = v70;
        v22 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v22, (v7 + 16 * (v12 + 1)), v13);
        if (v22)
        {
          v71 = *v13;
          *v13 = *v51;
          *v51 = v71;
          v67 = (v13 + 8);
LABEL_61:
          v72 = v7 + 16 * v50;
          v73 = *v67;
          *v67 = *(v72 + 8);
          *(v72 + 8) = v73;
        }
      }

      else if (v22)
      {
        v68 = *v13;
        *v13 = *v51;
        *v51 = v68;
        v22 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v22, v13, (v13 - 16));
        if (v22)
        {
          v69 = *v36;
          *v36 = *v13;
          v67 = (v13 - 8);
          *v13 = v69;
          v50 = v12;
          goto LABEL_61;
        }
      }

      v74 = *v7;
      *v7 = *v13;
      v24 = (v7 + 8);
      *v13 = v74;
      v33 = (v13 + 8);
      v5 = a3;
LABEL_63:
      v75 = *v24;
      *v24 = *v33;
      *v33 = v75;
      goto LABEL_64;
    }

    v20 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(result, v8, (v8 + 16 * (v11 >> 1)));
    v21 = v20;
    v22 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v20, v97, v8);
    if (v21)
    {
      v24 = (v13 + 8);
      v23 = *v13;
      if (v22)
      {
        v25 = a2 - 2;
        *v13 = *v97;
LABEL_38:
        *v25 = v23;
        v33 = a2 - 1;
        goto LABEL_63;
      }

      v47 = *(v13 + 8);
      *v13 = *v8;
      *(v8 + 8) = v47;
      v24 = (v8 + 8);
      *v8 = v23;
      v22 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v22, v97, v8);
      if (v22)
      {
        v23 = *v8;
        v25 = a2 - 2;
        *v8 = *v97;
        goto LABEL_38;
      }
    }

    else if (v22)
    {
      v30 = *v8;
      *v8 = *(a2 - 2);
      *(a2 - 2) = v30;
      v31 = *(v8 + 8);
      *(v8 + 8) = *(a2 - 1);
      *(a2 - 1) = v31;
      v22 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v22, v8, v13);
      if (v22)
      {
        v32 = *v13;
        *v13 = *v8;
        *v8 = v32;
        v24 = (v13 + 8);
        v33 = (v8 + 8);
        goto LABEL_63;
      }
    }

LABEL_64:
    if ((a5 & 1) == 0 && !ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v22, (v7 - 16), v7))
    {
      result = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<ZinIrHazardNode> *,ZinMirL2HazardAnalysis::HazardNodeSorter &>(v7, a2);
      v8 = result;
      goto LABEL_71;
    }

    v76 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<ZinIrHazardNode> *,ZinMirL2HazardAnalysis::HazardNodeSorter &>(v7, a2);
    if ((v77 & 1) == 0)
    {
      goto LABEL_69;
    }

    v78 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(v7, v76);
    v8 = (v76 + 1);
    result = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>((v76 + 1), a2);
    if (result)
    {
      a4 = -v10;
      a2 = v76;
      if (v78)
      {
        return;
      }

      goto LABEL_2;
    }

    v9 = v10 + 1;
    if (!v78)
    {
LABEL_69:
      result = std::__introsort<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,false>(v7, v76, v5, -v10, a5 & 1);
      v8 = (v76 + 1);
LABEL_71:
      a5 = 0;
      a4 = -v10;
      goto LABEL_3;
    }
  }

  std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,0>(v8, v8 + 16, v8 + 32, v97);
}

BOOL std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, a2, a1);
  v9 = v8;
  v10 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v8, a3, a2);
  if (v9)
  {
    v12 = (a1 + 8);
    v11 = *a1;
    if (v10)
    {
      *a1 = *a3;
LABEL_9:
      *a3 = v11;
      v15 = (a3 + 8);
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v11;
    v12 = (a2 + 8);
    v17 = *(a1 + 8);
    *(a1 + 8) = *(a2 + 8);
    *(a2 + 8) = v17;
    v10 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v10, a3, a2);
    if (v10)
    {
      v11 = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

  else if (v10)
  {
    v13 = *a2;
    *a2 = *a3;
    *a3 = v13;
    v15 = (a2 + 8);
    v14 = *(a2 + 8);
    *(a2 + 8) = *(a3 + 8);
    *(a3 + 8) = v14;
    v10 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v10, a2, a1);
    if (v10)
    {
      v16 = *a1;
      *a1 = *a2;
      v12 = (a1 + 8);
      *a2 = v16;
LABEL_10:
      v18 = *v12;
      *v12 = *v15;
      *v15 = v18;
    }
  }

  result = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v10, a4, a3);
  if (result)
  {
    v20 = *a3;
    *a3 = *a4;
    *a4 = v20;
    v21 = *(a3 + 8);
    *(a3 + 8) = *(a4 + 8);
    *(a4 + 8) = v21;
    result = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(result, a3, a2);
    if (result)
    {
      v22 = *a2;
      *a2 = *a3;
      *a3 = v22;
      v23 = *(a2 + 8);
      *(a2 + 8) = *(a3 + 8);
      *(a3 + 8) = v23;
      result = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(result, a2, a1);
      if (result)
      {
        v24 = *a1;
        *a1 = *a2;
        *a2 = v24;
        v25 = *(a1 + 8);
        *(a1 + 8) = *(a2 + 8);
        *(a2 + 8) = v25;
      }
    }
  }

  return result;
}

BOOL std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,0>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,0>(a1, a2, a3, a4);
  result = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v10, a5, a4);
  if (result)
  {
    v12 = *a4;
    *a4 = *a5;
    *a5 = v12;
    v13 = *(a4 + 8);
    *(a4 + 8) = *(a5 + 8);
    *(a5 + 8) = v13;
    result = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(result, a4, a3);
    if (result)
    {
      v14 = *a3;
      *a3 = *a4;
      *a4 = v14;
      v15 = *(a3 + 8);
      *(a3 + 8) = *(a4 + 8);
      *(a4 + 8) = v15;
      result = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(result, a3, a2);
      if (result)
      {
        v16 = *a2;
        *a2 = *a3;
        *a3 = v16;
        v17 = *(a2 + 8);
        *(a2 + 8) = *(a3 + 8);
        *(a3 + 8) = v17;
        result = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(result, a2, a1);
        if (result)
        {
          v18 = *a1;
          *a1 = *a2;
          *a2 = v18;
          v19 = *(a1 + 8);
          *(a1 + 8) = *(a2 + 8);
          *(a2 + 8) = v19;
        }
      }
    }
  }

  return result;
}

void std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = (a1 + 16);
    if (a1 + 16 != a2)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = v6;
        v6 = v4;
        LODWORD(a1) = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, v4, v7);
        if (a1)
        {
          v16 = *v6;
          *v6 = 0;
          *(v6 + 8) = 0;
          v8 = v5;
          while (1)
          {
            v9 = v3 + v8;
            v10 = *(v3 + v8);
            *v9 = 0;
            *(v9 + 8) = 0;
            v11 = *(v3 + v8 + 24);
            *(v9 + 16) = v10;
            if (v11)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v11);
            }

            if (!v8)
            {
              break;
            }

            v12 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v11, &v16, (v3 + v8 - 16));
            v8 -= 16;
            if (!v12)
            {
              v13 = v3 + v8 + 16;
              goto LABEL_12;
            }
          }

          v13 = v3;
LABEL_12:
          v14 = v16;
          v16 = 0uLL;
          v15 = *(v13 + 8);
          *v13 = v14;
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          a1 = *(&v16 + 1);
          if (*(&v16 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
          }
        }

        v4 = (v6 + 16);
        v5 += 16;
      }

      while (v6 + 16 != a2);
    }
  }
}

void sub_1A6A0F8E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    v4 = (a1 + 16);
    if (a1 + 16 != a2)
    {
      v5 = a1 - 16;
      do
      {
        v6 = v3;
        v3 = v4;
        LODWORD(a1) = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, v4, v6);
        if (a1)
        {
          v13 = *v3;
          *v3 = 0;
          *(v3 + 8) = 0;
          v7 = v5;
          do
          {
            v8 = *(v7 + 16);
            *(v7 + 16) = 0;
            *(v7 + 24) = 0;
            v9 = *(v7 + 40);
            *(v7 + 32) = v8;
            if (v9)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v9);
            }

            v10 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v9, &v13, v7);
            v7 -= 16;
          }

          while (v10);
          v11 = v13;
          v13 = 0uLL;
          v12 = *(v7 + 40);
          *(v7 + 32) = v11;
          if (v12)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v12);
          }

          a1 = *(&v13 + 1);
          if (*(&v13 + 1))
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](*(&v13 + 1));
          }
        }

        v4 = (v3 + 16);
        v5 += 16;
      }

      while (v3 + 16 != a2);
    }
  }
}

void sub_1A6A0F9D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

ZinIrHazardNode **std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<ZinIrHazardNode> *,ZinMirL2HazardAnalysis::HazardNodeSorter &>(ZinIrHazardNode **a1, unint64_t a2)
{
  v2 = a2;
  v4 = a1[1];
  *&v16 = *a1;
  *(&v16 + 1) = v4;
  *a1 = 0;
  a1[1] = 0;
  v5 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, &v16, (a2 - 16));
  if (v5)
  {
    v6 = a1;
    do
    {
      v6 += 2;
      v5 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v5, &v16, v6);
    }

    while (!v5);
  }

  else
  {
    v7 = a1 + 2;
    do
    {
      v6 = v7;
      if (v7 >= v2)
      {
        break;
      }

      v5 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v5, &v16, v7);
      v7 = v6 + 2;
    }

    while (!v5);
  }

  if (v6 < v2)
  {
    do
    {
      v2 -= 16;
      v5 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v5, &v16, v2);
    }

    while (v5);
  }

  while (v6 < v2)
  {
    v8 = *v6;
    *v6 = *v2;
    *v2 = v8;
    v9 = v6[1];
    v6[1] = *(v2 + 8);
    *(v2 + 8) = v9;
    do
    {
      v6 += 2;
      v5 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v5, &v16, v6);
    }

    while (!v5);
    do
    {
      v2 -= 16;
      v5 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v5, &v16, v2);
    }

    while (v5);
  }

  v10 = v6 - 2;
  if (v6 - 2 != a1)
  {
    v11 = *v10;
    *v10 = 0;
    *(v6 - 1) = 0;
    v12 = a1[1];
    *a1 = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  v13 = v16;
  v16 = 0uLL;
  v14 = *(v6 - 1);
  *(v6 - 1) = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
  }

  return v6;
}

void sub_1A6A0FB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  _Unwind_Resume(exception_object);
}

unint64_t std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,std::shared_ptr<ZinIrHazardNode> *,ZinMirL2HazardAnalysis::HazardNodeSorter &>(uint64_t a1, ZinIrHazardNode **a2)
{
  v3 = a1;
  v4 = 0;
  v16 = *a1;
  *a1 = 0;
  *(a1 + 8) = 0;
  do
  {
    a1 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, (v3 + v4 + 16), &v16);
    v4 += 16;
  }

  while ((a1 & 1) != 0);
  v5 = v3 + v4;
  if (v4 == 16)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      a2 -= 2;
      a1 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, a2, &v16);
    }

    while ((a1 & 1) == 0);
  }

  else
  {
    do
    {
      a2 -= 2;
      a1 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, a2, &v16);
    }

    while (!a1);
  }

  v6 = v3 + v4;
  if (v5 < a2)
  {
    v7 = a2;
    do
    {
      v8 = *v6;
      *v6 = *v7;
      *v7 = v8;
      v9 = *(v6 + 8);
      *(v6 + 8) = v7[1];
      v7[1] = v9;
      do
      {
        v6 += 16;
        a1 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, v6, &v16);
      }

      while ((a1 & 1) != 0);
      do
      {
        v7 -= 2;
        a1 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, v7, &v16);
      }

      while (!a1);
    }

    while (v6 < v7);
  }

  v10 = (v6 - 16);
  if (v6 - 16 != v3)
  {
    v11 = *v10;
    *v10 = 0;
    *(v6 - 8) = 0;
    v12 = *(v3 + 8);
    *v3 = v11;
    if (v12)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v12);
    }
  }

  v13 = v16;
  v16 = 0uLL;
  v14 = *(v6 - 8);
  *(v6 - 16) = v13;
  if (v14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v14);
  }

  if (*(&v16 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v16 + 1));
  }

  return v6 - 16;
}

void sub_1A6A0FCC0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(uint64_t a1, __int128 *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        v7 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, (a1 + 16), a1);
        v8 = v7;
        v9 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v7, a2 - 2, (a1 + 16));
        if (v8)
        {
          v11 = (a1 + 8);
          v10 = *a1;
          if (v9)
          {
            *a1 = *(a2 - 2);
          }

          else
          {
            v25 = *(a1 + 16);
            *(a1 + 24) = *(a1 + 8);
            v11 = (a1 + 24);
            *(a1 + 16) = v10;
            *a1 = v25;
            if (!ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v9, a2 - 2, (a1 + 16)))
            {
              return 1;
            }

            v10 = *(a1 + 16);
            *(a1 + 16) = *(a2 - 2);
          }

          *(a2 - 2) = v10;
          v20 = a2 - 1;
        }

        else
        {
          if (!v9)
          {
            return 1;
          }

          v18 = *(a1 + 16);
          *(a1 + 16) = *(a2 - 2);
          *(a2 - 2) = v18;
          v20 = (a1 + 24);
          v19 = *(a1 + 24);
          *(a1 + 24) = *(a2 - 1);
          *(a2 - 1) = v19;
          if (!ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v9, (a1 + 16), a1))
          {
            return 1;
          }

          v21 = *a1;
          *a1 = *(a1 + 16);
          *(a1 + 16) = v21;
          v11 = (a1 + 8);
        }

        v26 = *v11;
        *v11 = *v20;
        *v20 = v26;
        return 1;
      case 4:
        std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,0>(a1, a1 + 16, a1 + 32, (a2 - 1));
        break;
      case 5:
        std::__sort5[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,0>(a1, a1 + 16, a1 + 32, a1 + 48, (a2 - 1));
        break;
      default:
        goto LABEL_13;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, a2 - 2, a1))
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      v6 = *(a1 + 8);
      *(a1 + 8) = *(a2 - 1);
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_13:
  v12 = (a1 + 32);
  v13 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, (a1 + 16), a1);
  v14 = v13;
  v15 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v13, (a1 + 32), (a1 + 16));
  if (v14)
  {
    v17 = (a1 + 8);
    v16 = *a1;
    if (v15)
    {
      *a1 = *(a1 + 32);
    }

    else
    {
      v27 = *(a1 + 16);
      *(a1 + 24) = *(a1 + 8);
      v17 = (a1 + 24);
      *(a1 + 16) = v16;
      *a1 = v27;
      v15 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v15, (a1 + 32), (a1 + 16));
      if (!v15)
      {
        goto LABEL_31;
      }

      v16 = *(a1 + 16);
      *(a1 + 16) = *(a1 + 32);
    }

    *(a1 + 32) = v16;
    v23 = (a1 + 40);
    goto LABEL_30;
  }

  if (v15)
  {
    v22 = *(a1 + 16);
    *(a1 + 16) = *(a1 + 32);
    *(a1 + 32) = v22;
    v15 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v15, (a1 + 16), a1);
    if (v15)
    {
      v23 = (a1 + 24);
      v24 = *a1;
      *a1 = *(a1 + 16);
      *(a1 + 16) = v24;
      v17 = (a1 + 8);
LABEL_30:
      v28 = *v17;
      *v17 = *v23;
      *v23 = v28;
    }
  }

LABEL_31:
  v29 = (a1 + 48);
  if ((a1 + 48) == a2)
  {
    return 1;
  }

  v30 = 0;
  v31 = 0;
  while (1)
  {
    LODWORD(v15) = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v15, v29, v12);
    if (v15)
    {
      v41 = *v29;
      *v29 = 0;
      v29[1] = 0;
      v32 = v30;
      while (1)
      {
        v33 = a1 + v32;
        v34 = *(a1 + v32 + 32);
        *(v33 + 32) = 0;
        *(v33 + 40) = 0;
        v35 = *(a1 + v32 + 56);
        *(v33 + 48) = v34;
        if (v35)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v35);
        }

        if (v32 == -32)
        {
          break;
        }

        v36 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v35, &v41, (a1 + v32 + 16));
        v32 -= 16;
        if (!v36)
        {
          v37 = a1 + v32 + 48;
          goto LABEL_41;
        }
      }

      v37 = a1;
LABEL_41:
      v38 = v41;
      v41 = 0uLL;
      v39 = *(v37 + 8);
      *v37 = v38;
      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      v15 = *(&v41 + 1);
      if (*(&v41 + 1))
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](*(&v41 + 1));
      }

      if (++v31 == 8)
      {
        return v29 + 2 == a2;
      }
    }

    v12 = v29;
    v30 += 16;
    v29 += 2;
    if (v29 == a2)
    {
      return 1;
    }
  }
}

void sub_1A6A10040(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *,std::shared_ptr<ZinIrHazardNode> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v7 = a1;
    v8 = (a2 - a1) >> 4;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = (a1 + 16 * v9);
      do
      {
        std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(v7, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        LODWORD(a1) = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, v12, v7);
        if (a1)
        {
          v13 = *v12;
          *v12 = *v7;
          *v7 = v13;
          v14 = *(v12 + 8);
          *(v12 + 8) = *(v7 + 8);
          *(v7 + 8) = v14;
          std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(v7, a4, v8, v7);
        }

        v12 += 16;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter,std::shared_ptr<ZinIrHazardNode> *>(v7, v6, a4, v8);
        v6 -= 16;
      }

      while (v8-- > 2);
    }

    return v12;
  }

  return a3;
}

void std::__sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(_BOOL8 a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v4 = a3 - 2;
  if (a3 >= 2)
  {
    v5 = a4;
    v6 = a1;
    v7 = v4 >> 1;
    if ((v4 >> 1) >= (a4 - a1) >> 4)
    {
      v9 = (a4 - a1) >> 3;
      v10 = v9 + 1;
      v11 = a1 + 16 * (v9 + 1);
      v12 = v9 + 2;
      if (v9 + 2 < a3)
      {
        a1 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, (a1 + 16 * (v9 + 1)), (v11 + 16));
        if (a1)
        {
          v11 += 16;
          v10 = v12;
        }
      }

      if (!ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, v11, v5))
      {
        v19 = *v5;
        *v5 = 0;
        *(v5 + 1) = 0;
        do
        {
          v13 = v11;
          v14 = *v11;
          *v11 = 0;
          *(v11 + 8) = 0;
          v15 = *(v5 + 1);
          *v5 = v14;
          if (v15)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v15);
          }

          if (v7 < v10)
          {
            break;
          }

          v16 = (2 * v10) | 1;
          v11 = v6 + 16 * v16;
          v10 = 2 * v10 + 2;
          if (v10 >= a3)
          {
            v10 = v16;
          }

          else
          {
            v15 = ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v15, (v6 + 16 * v16), (v11 + 16));
            if (v15)
            {
              v11 += 16;
            }

            else
            {
              v10 = v16;
            }
          }

          v5 = v13;
        }

        while (!ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v15, v11, &v19));
        v17 = v19;
        v19 = 0uLL;
        v18 = *(v13 + 8);
        *v13 = v17;
        if (v18)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }

        if (*(&v19 + 1))
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](*(&v19 + 1));
        }
      }
    }
  }
}

void sub_1A6A102C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

void std::__pop_heap[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter,std::shared_ptr<ZinIrHazardNode> *>(std::__shared_weak_count *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 >= 2)
  {
    v8 = a1->__vftable;
    shared_owners = a1->__shared_owners_;
    a1->__vftable = 0;
    a1->__shared_owners_ = 0;
    v9 = std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(a1, a3, a4);
    v10 = &v9->__vftable;
    if (v9 == (a2 - 16))
    {
      v15 = v9->__shared_owners_;
      *v10 = v8;
      v10[1] = shared_owners;
      if (v15)
      {

        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }
    }

    else
    {
      v11 = *(a2 - 16);
      *(a2 - 16) = 0;
      *(a2 - 8) = 0;
      v12 = v9->__shared_owners_;
      *v10 = v11;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }

      v13 = (v10 + 2);
      v14 = *(a2 - 8);
      *(a2 - 16) = v8;
      *(a2 - 8) = shared_owners;
      if (v14)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v14);
      }

      std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(a1, v13, a3, (v13 - a1) >> 4);
    }
  }
}

void sub_1A6A103D4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

std::__shared_weak_count *std::__floyd_sift_down[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(std::__shared_weak_count *shared_owners, uint64_t a2, uint64_t a3)
{
  v4 = shared_owners;
  v5 = 0;
  v6 = (a3 - 2) / 2;
  do
  {
    v7 = (v4 + 16 * v5);
    v8 = &v7[1];
    v9 = 2 * v5;
    v5 = (2 * v5) | 1;
    v10 = v9 + 2;
    if (v9 + 2 < a3)
    {
      v11 = &v7[2];
      if (ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(shared_owners, &v7[1], &v7[2]))
      {
        v8 = v11;
        v5 = v10;
      }
    }

    v12 = v8->std::__shared_count;
    v8->__vftable = 0;
    v8->__shared_owners_ = 0;
    shared_owners = v4->__shared_owners_;
    v4->std::__shared_count = v12;
    if (shared_owners)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](shared_owners);
    }

    v4 = v8;
  }

  while (v5 <= v6);
  return v8;
}

void std::__sift_up[abi:ne200100]<std::_ClassicAlgPolicy,ZinMirL2HazardAnalysis::HazardNodeSorter &,std::shared_ptr<ZinIrHazardNode> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - 2;
  if (a4 >= 2)
  {
    v6 = v4 >> 1;
    v7 = (a1 + 16 * (v4 >> 1));
    v8 = (a2 - 16);
    if (ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(a1, v7, (a2 - 16)))
    {
      v13 = *v8;
      *v8 = 0;
      *(v8 + 1) = 0;
      do
      {
        v9 = v7;
        v10 = *v7;
        *v7 = 0;
        *(v7 + 1) = 0;
        v11 = *(v8 + 1);
        *v8 = v10;
        if (v11)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v11);
        }

        if (!v6)
        {
          break;
        }

        v6 = (v6 - 1) >> 1;
        v7 = (a1 + 16 * v6);
        v8 = v9;
      }

      while (ZinMirL2HazardAnalysis::HazardNodeSorter::operator()(v11, v7, &v13));
      v12 = *(v9 + 1);
      *v9 = v13;
      if (v12)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v12);
      }
    }
  }
}

void sub_1A6A1055C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<std::vector<std::shared_ptr<ZinIrHazardNode>>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<std::vector<ZinLinearPattern::AtomItemDesc>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
    std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>> const,ZinIrHazardGraph::EdgeType>,0>(i - 32);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 32;
        std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>> const,ZinIrHazardGraph::EdgeType>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__tree<std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>,std::__map_value_compare<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>,HazardEdgeCompare,true>,std::allocator<std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>,std::__map_value_compare<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>,HazardEdgeCompare,true>,std::allocator<std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>,std::__map_value_compare<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>,HazardEdgeCompare,true>,std::allocator<std::__value_type<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,ZinIrHazardGraph::EdgeType>>>::destroy(a1, a2[1]);
    std::__destroy_at[abi:ne200100]<std::pair<std::pair<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>> const,ZinIrHazardGraph::EdgeType>,0>((a2 + 4));

    operator delete(a2);
  }
}

void *std::__shared_ptr_emplace<ZinIrHazardNode>::__shared_ptr_emplace[abi:ne200100]<ZinIrSymbol *&,ZinANELayer *&,ZinIrHazardNode::OperandType &,ZinIrHazardNode::ExecutionType,long,std::allocator<ZinIrHazardNode>,0>(void *a1, uint64_t *a2, uint64_t *a3, int *a4, int *a5, uint64_t *a6)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F4448;
  ZinIrHazardNode::ZinIrHazardNode((a1 + 3), *a2, *a3, *a4, *a5, *a6);
  return a1;
}

void std::__shared_ptr_emplace<ZinIrHazardNode>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F4448;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void ZinIrHazardNode::~ZinIrHazardNode(void **this)
{
  if (*(this + 63) < 0)
  {
    operator delete(this[5]);
  }

  v2 = this[1];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }
}

void *std::__tree<std::shared_ptr<ZinIrHazardNode>,HazardNodeCompare,std::allocator<std::shared_ptr<ZinIrHazardNode>>>::__emplace_unique_key_args<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode> const&>(uint64_t **a1, uint64_t a2, void *a3)
{
  v3 = *std::__tree<std::shared_ptr<ZinIrHazardNode>,HazardNodeCompare,std::allocator<std::shared_ptr<ZinIrHazardNode>>>::__find_equal<std::shared_ptr<ZinIrHazardNode>>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

void *std::__tree<std::shared_ptr<ZinIrHazardNode>,HazardNodeCompare,std::allocator<std::shared_ptr<ZinIrHazardNode>>>::__find_equal<std::shared_ptr<ZinIrHazardNode>>(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = (a1 + 8);
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        if (!HazardNodeCompare::operator()(a1, a3, (v4 + 4)))
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_9;
        }
      }

      if (!HazardNodeCompare::operator()(a1, (v8 + 4), a3))
      {
        break;
      }

      v5 = v8 + 1;
      v4 = v8[1];
    }

    while (v4);
  }

  else
  {
    v8 = (a1 + 8);
  }

LABEL_9:
  *a2 = v8;
  return v5;
}

unint64_t std::unordered_set<std::shared_ptr<ZinIrHazardNode>>::unordered_set<std::__wrap_iter<std::shared_ptr<ZinIrHazardNode>*>>(unint64_t a1, void *a2, void *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a2 != a3)
  {
    v5 = a2;
    do
    {
      std::__hash_table<std::shared_ptr<ZinMirUnit>,std::hash<std::shared_ptr<ZinMirUnit>>,std::equal_to<std::shared_ptr<ZinMirUnit>>,std::allocator<std::shared_ptr<ZinMirUnit>>>::__emplace_unique_key_args<std::shared_ptr<ZinMirUnit>,std::shared_ptr<ZinMirUnit> const&>(a1, v5, v5);
      v5 += 2;
    }

    while (v5 != a3);
  }

  return a1;
}

void ZinIrNgraphUtils::impl::CalculateAsapSchedules<ZinIrHazardGraph>(void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  v14 = &v14;
  v15 = &v14;
  v16 = 0;
  ZinIrNgraph<std::shared_ptr<ZinIrHazardNode>,HazardNodeCompare>::TopologicalSortImpl<std::list<std::shared_ptr<ZinIrHazardNode>>>(a1, &v14);
  for (i = v15; i != &v14; i = i[1])
  {
    v6 = i[2];
    v5 = i[3];
    if (v5)
    {
      atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v17 = v6;
    v7 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(a1 + 8, &v17);
    v8 = v7 + 3;
    if (!v7)
    {
      v8 = a1 + 13;
    }

    v10 = *v8;
    v9 = v8[1];
    if (*v8 == v9)
    {
      v13 = v6;
      v17 = &v13;
      std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,long>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,long>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,long>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,long>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinIrHazardNode>>&&>,std::tuple<>>(a2, &v13, &std::piecewise_construct, &v17)[3] = 0;
      if (!v5)
      {
        continue;
      }
    }

    else
    {
      v11 = 0;
      do
      {
        v12 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(a2, v10);
        if (v11 <= v12[3])
        {
          v11 = v12[3];
        }

        v10 += 8;
      }

      while (v10 != v9);
      v13 = v6;
      v17 = &v13;
      std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,long>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,long>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,long>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,long>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinIrHazardNode>>&&>,std::tuple<>>(a2, &v13, &std::piecewise_construct, &v17)[3] = v11 + 1;
      if (!v5)
      {
        continue;
      }
    }

    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  std::__list_imp<std::shared_ptr<ZinRtBaseNode>>::clear(&v14);
}

void sub_1A6A10D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__list_imp<std::shared_ptr<ZinRtBaseNode>>::clear(va);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v3);
  _Unwind_Resume(a1);
}

BOOL ZinIrNgraph<std::shared_ptr<ZinIrHazardNode>,HazardNodeCompare>::TopologicalSortImpl<std::list<std::shared_ptr<ZinIrHazardNode>>>(void *a1, uint64_t *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  std::__list_imp<std::shared_ptr<ZinRtBaseNode>>::clear(a2);
  if (!a1[2])
  {
    return 1;
  }

  v46 = 0;
  v47 = 0;
  v45 = &v46;
  v3 = a1 + 1;
  v4 = *a1;
  if (*a1 == a1 + 1)
  {
    goto LABEL_65;
  }

  do
  {
    *&v38[0] = v4[4];
    v5 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(a1 + 8, v38);
    v6 = v5 + 3;
    if (!v5)
    {
      v6 = a1 + 13;
    }

    if (v6[1] == *v6)
    {
      *&v38[0] = v4[4];
      std::__tree<NodeKey<std::shared_ptr<ZinIrHazardNode>>,HazardNodeCompare,std::allocator<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,NodeKey<std::shared_ptr<ZinIrHazardNode>>>(&v45, v38, v38);
    }

    v7 = v4[1];
    if (v7)
    {
      do
      {
        v8 = v7;
        v7 = *v7;
      }

      while (v7);
    }

    else
    {
      do
      {
        v8 = v4[2];
        v9 = *v8 == v4;
        v4 = v8;
      }

      while (!v9);
    }

    v4 = v8;
  }

  while (v8 != v3);
  if (!v47)
  {
LABEL_65:
    v27 = 0;
  }

  else
  {
    v44[0] = 0;
    v44[1] = 0;
    v43 = v44;
    v10 = *a1;
    if (*a1 != v3)
    {
      do
      {
        v42[0] = v10[4];
        *&v38[0] = v42;
        *(std::__tree<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::__map_value_compare<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::less<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinIrHazardNode>>&&>,std::tuple<>>(&v43, v42, &std::piecewise_construct, v38) + 40) = 0;
        v11 = v10[1];
        if (v11)
        {
          do
          {
            v12 = v11;
            v11 = *v11;
          }

          while (v11);
        }

        else
        {
          do
          {
            v12 = v10[2];
            v9 = *v12 == v10;
            v10 = v12;
          }

          while (!v9);
        }

        v10 = v12;
      }

      while (v12 != v3);
    }

    v42[0] = v42;
    v42[1] = v42;
    v42[2] = 0;
    v13 = v45;
    if (v45 == &v46)
    {
      v27 = 1;
    }

    else
    {
      v32 = a1;
      do
      {
        std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v40, v13[4]);
        v39 = 0u;
        memset(v38, 0, sizeof(v38));
        v49 = v40;
        std::list<NodeKey<std::shared_ptr<ZinIrHazardNode>>>::list(v36, &v49, 1);
        std::deque<std::list<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::push_back(v38, v36);
        std::__list_imp<ZinIrSection *>::clear(v36);
        v14 = *(&v39 + 1);
        if (*(&v39 + 1))
        {
          while (1)
          {
            std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v49, *(*(*(*(&v38[0] + 1) + 8 * ((v14 + v39 - 1) / 0xAAuLL)) + 24 * ((v14 + v39 - 1) % 0xAAuLL) + 8) + 16));
            v36[0] = v49;
            v15 = std::__tree<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::__map_value_compare<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::less<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(&v43, v36);
            v16 = *(v15 + 40);
            if (v16 < 1)
            {
              v34 = v49;
              v36[0] = &v34;
              v22 = std::__tree<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::__map_value_compare<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::less<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinIrHazardNode>>&&>,std::tuple<>>(&v43, &v34, &std::piecewise_construct, v36);
              ++*(v22 + 40);
              v36[0] = v36;
              v36[1] = v36;
              v37 = 0;
              v34 = v49;
              v23 = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(v32 + 3, &v34);
              if (v23)
              {
                v25 = v23[3];
                v24 = v23[4];
                while (v25 != v24)
                {
                  std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v34, *v25);
                  v33 = v34;
                  v48 = &v33;
                  v26 = *(std::__tree<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::__map_value_compare<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::less<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinIrHazardNode>>&&>,std::tuple<>>(&v43, &v33, &std::piecewise_construct, &v48) + 40);
                  if (!v26)
                  {
                    operator new();
                  }

                  if (v26 == 1)
                  {
                    if (v35)
                    {
                      std::__shared_weak_count::__release_shared[abi:ne200100](v35);
                    }

                    v21 = 1;
                    goto LABEL_44;
                  }

                  if (v35)
                  {
                    std::__shared_weak_count::__release_shared[abi:ne200100](v35);
                  }

                  ++v25;
                }
              }

              if (v37)
              {
                std::deque<std::list<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::push_back(v38, v36);
              }

              v21 = 0;
LABEL_44:
              std::__list_imp<ZinIrSection *>::clear(v36);
            }

            else
            {
              if (v16 == 1)
              {
                *(v15 + 40) = 2;
                std::list<std::shared_ptr<ZinRtBaseNode>>::emplace_front<std::shared_ptr<ZinRtBaseNode> const&>(a2, &v49);
              }

              v17 = *(*(&v38[0] + 1) + 8 * ((*(&v39 + 1) + v39 - 1) / 0xAAuLL)) + 24 * ((*(&v39 + 1) + v39 - 1) % 0xAAuLL);
              v18 = *(v17 + 8);
              v20 = *v18;
              v19 = v18[1];
              *(v20 + 8) = v19;
              *v19 = v20;
              --*(v17 + 16);
              operator delete(v18);
              if (!*(*(*(&v38[0] + 1) + 8 * ((*(&v39 + 1) + v39 - 1) / 0xAAuLL)) + 24 * ((*(&v39 + 1) + v39 - 1) % 0xAAuLL) + 16))
              {
                std::deque<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>>::pop_back(v38);
              }

              v21 = 8;
            }

            if (v50)
            {
              std::__shared_weak_count::__release_shared[abi:ne200100](v50);
            }

            if ((v21 | 8) != 8)
            {
              break;
            }

            v14 = *(&v39 + 1);
            if (!*(&v39 + 1))
            {
              v21 = 0;
              break;
            }
          }

          v27 = v21 == 0;
        }

        else
        {
          v27 = 1;
        }

        std::deque<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>>::~deque[abi:ne200100](v38);
        if (v41)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        }

        if (!v27)
        {
          break;
        }

        v28 = v13[1];
        if (v28)
        {
          do
          {
            v29 = v28;
            v28 = *v28;
          }

          while (v28);
        }

        else
        {
          do
          {
            v29 = v13[2];
            v9 = *v29 == v13;
            v13 = v29;
          }

          while (!v9);
        }

        v13 = v29;
      }

      while (v29 != &v46);
    }

    std::__list_imp<ZinIrSection *>::clear(v42);
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v43, v44[0]);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v45, v46);
  return v27;
}

void sub_1A6A112B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, std::__shared_weak_count *a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32)
{
  std::__list_imp<ZinIrSection *>::clear(&a16);
  std::deque<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>>::~deque[abi:ne200100](&a19);
  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  std::__list_imp<ZinIrSection *>::clear(&a28);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&a31, a32);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v32 - 152, *(v32 - 144));
  _Unwind_Resume(a1);
}

void *std::__tree<NodeKey<std::shared_ptr<ZinIrHazardNode>>,HazardNodeCompare,std::allocator<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,NodeKey<std::shared_ptr<ZinIrHazardNode>>>(uint64_t **a1, void **a2, void *a3)
{
  v3 = *std::__tree<NodeKey<std::shared_ptr<ZinIrHazardNode>>,HazardNodeCompare,std::allocator<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::__find_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::__tree<NodeKey<std::shared_ptr<ZinIrHazardNode>>,HazardNodeCompare,std::allocator<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::__find_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(uint64_t a1, uint64_t *a2, void **a3)
{
  v5 = a1 + 8;
  v4 = *(a1 + 8);
  if (v4)
  {
    do
    {
      while (1)
      {
        v8 = v4;
        std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v14, *a3);
        std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v12, *(v8 + 32));
        v9 = HazardNodeCompare::operator()(a1, &v14, &v12);
        if (v13)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v13);
        }

        if (v15)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v15);
        }

        if (!v9)
        {
          break;
        }

        v4 = *v8;
        v5 = v8;
        if (!*v8)
        {
          goto LABEL_17;
        }
      }

      std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v14, *(v8 + 32));
      std::shared_ptr<ZinIrIrObject>::shared_ptr[abi:ne200100]<ZinIrIrObject,0>(&v12, *a3);
      v10 = HazardNodeCompare::operator()(a1, &v14, &v12);
      if (v13)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v13);
      }

      if (v15)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v15);
      }

      if (!v10)
      {
        break;
      }

      v5 = v8 + 8;
      v4 = *(v8 + 8);
    }

    while (v4);
  }

  else
  {
    v8 = a1 + 8;
  }

LABEL_17:
  *a2 = v8;
  return v5;
}

void sub_1A6A11514(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::__shared_weak_count *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::__map_value_compare<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::less<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinIrHazardNode>>&&>,std::tuple<>>(uint64_t **a1, uint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *std::__tree<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::__map_value_compare<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::less<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>>>::__find_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::__map_value_compare<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::less<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>>>::__find_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(uint64_t a1, void *a2, uint64_t *a3)
{
  v5 = *(a1 + 8);
  result = (a1 + 8);
  v4 = v5;
  if (v5)
  {
    v6 = *a3;
    while (1)
    {
      v7 = v4;
      v8 = v4[4];
      if (v6 && v8)
      {
        if (*(v6 + 64) >= *(v8 + 64))
        {
          goto LABEL_11;
        }

LABEL_9:
        v4 = *v7;
        result = v7;
        if (!*v7)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v6 && !v8)
        {
          goto LABEL_9;
        }

LABEL_11:
        if (v6 && v8)
        {
          if (*(v8 + 64) >= *(v6 + 64))
          {
            goto LABEL_20;
          }
        }

        else if (v6 || !v8)
        {
          goto LABEL_20;
        }

        result = v7 + 1;
        v4 = v7[1];
        if (!v4)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v7 = result;
LABEL_20:
  *a2 = v7;
  return result;
}

uint64_t *std::deque<std::list<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::push_back(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::list<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  result = std::construct_at[abi:ne200100]<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>,std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>,std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>>*>(v8, a2);
  ++a1[5];
  return result;
}

void std::deque<std::list<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0xAA;
  v3 = v1 - 170;
  if (!v2)
  {
    v5 = a1[2];
    v6 = a1[3];
    v7 = v6 - *a1;
    if (v5 - a1[1] < v7)
    {
      if (v6 != v5)
      {
        operator new();
      }

      operator new();
    }

    if (v6 == *a1)
    {
      v8 = 1;
    }

    else
    {
      v8 = v7 >> 2;
    }

    v10 = a1;
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>> *,std::allocator<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>> *>>::emplace_back<std::list<NodeKey<std::shared_ptr<ZinRtBaseNode>>> *&>(a1, &v9);
}

void sub_1A6A118A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t *std::list<NodeKey<std::shared_ptr<ZinIrHazardNode>>>::list(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (a3)
  {
    operator new();
  }

  return a1;
}

uint64_t std::__tree<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::__map_value_compare<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::less<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = v2;
  do
  {
    v7 = *(v3 + 32);
    if (v7)
    {
      v8 = v5 == 0;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      if (v7)
      {
        v9 = v5 == 0;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;
    }

    else
    {
      v10 = *(v7 + 64) < *(v5 + 64);
    }

    v11 = !v10;
    if (v10)
    {
      v12 = 8;
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v6 = v3;
    }

    v3 = *(v3 + v12);
  }

  while (v3);
  if (v6 == v2)
  {
    return v2;
  }

  v13 = *(v6 + 32);
  if (v5 && v13)
  {
    if (*(v5 + 64) >= *(v13 + 64))
    {
      return v6;
    }

    return v2;
  }

  if (v5 && !v13)
  {
    return v2;
  }

  return v6;
}

uint64_t *std::deque<std::list<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = 170 * ((v5 - v4) >> 3) - 1;
  if (v5 == v4)
  {
    v6 = 0;
  }

  if (v6 == a1[5] + a1[4])
  {
    std::deque<std::list<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::__add_back_capacity(a1);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v8 = 0;
  }

  else
  {
    v7 = a1[5] + a1[4];
    v8 = (*(v4 + 8 * (v7 / 0xAA)) + 24 * (v7 % 0xAA));
  }

  result = std::list<NodeKey<std::shared_ptr<ZinIrHazardNode>>>::list(v8, a2);
  ++a1[5];
  return result;
}

uint64_t *std::list<NodeKey<std::shared_ptr<ZinIrHazardNode>>>::list(uint64_t *a1, uint64_t a2)
{
  *a1 = a1;
  a1[1] = a1;
  a1[2] = 0;
  if (*(a2 + 8) != a2)
  {
    operator new();
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,long>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,long>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,long>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,long>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinIrHazardNode>>&&>,std::tuple<>>(void *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = *(*a2 + 64);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *(*a2 + 64);
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

  if (*(v9[2] + 64) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,int>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinIrHazardNode>>&&>,std::tuple<>>(void *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = *(*a2 + 64);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *(*a2 + 64);
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

  if (*(v9[2] + 64) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::piecewise_construct_t const&,std::tuple<NodeKey<std::shared_ptr<ZinIrHazardNode>> const&>,std::tuple<>>(void *a1, uint64_t a2, uint64_t a3, void **a4)
{
  v4 = *(*a2 + 64);
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *(*a2 + 64);
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

  if (*(v9[2] + 64) != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1A6A1224C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void *std::__hash_table<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::allocator<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>::__emplace_unique_key_args<NodeKey<std::shared_ptr<ZinIrHazardNode>>,NodeKey<std::shared_ptr<ZinIrHazardNode>> const&>(void *a1, uint64_t a2, void *a3)
{
  v3 = *(*a2 + 64);
  v4 = a1[1];
  if (!*&v4)
  {
    goto LABEL_18;
  }

  v5 = vcnt_s8(v4);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = *(*a2 + 64);
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

  if (*(v8[2] + 64) != v3)
  {
    goto LABEL_17;
  }

  return v8;
}

uint64_t std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::unordered_set<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::__erase_unique<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(void *a1, uint64_t a2)
{
  result = std::__hash_table<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::__unordered_map_hasher<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::__unordered_map_equal<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>,std::equal_to<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,std::hash<NodeKey<std::shared_ptr<ZinIrHazardNode>>>,true>,std::allocator<std::__hash_value_type<NodeKey<std::shared_ptr<ZinIrHazardNode>>,std::vector<NodeKey<std::shared_ptr<ZinIrHazardNode>>>>>>::find<NodeKey<std::shared_ptr<ZinIrHazardNode>>>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::remove(a1, result, v4);
    std::unique_ptr<std::__hash_node<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<long,std::unordered_map<ZinDependencyOffsetDim,long>>,void *>>>>::~unique_ptr[abi:ne200100](v4);
    return 1;
  }

  return result;
}

void *std::__tree<std::__value_type<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,std::__map_value_compare<std::shared_ptr<ZinIrHazardNode>,std::__value_type<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>,std::less<std::shared_ptr<ZinIrHazardNode>>,true>,std::allocator<std::__value_type<std::shared_ptr<ZinIrHazardNode>,std::shared_ptr<ZinIrHazardNode>>>>::__emplace_unique_key_args<std::shared_ptr<ZinIrHazardNode>,std::piecewise_construct_t const&,std::tuple<std::shared_ptr<ZinIrHazardNode>&&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, _OWORD **a4)
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
      v7 = v4[4];
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

void ZinMirL2HazardAnalysis::CreateHazardNodes(uint8_t *buf, uint64_t a2, void *a3)
{
  v3 = (*a2 + 48);
  if (*(*a2 + 71) < 0)
  {
    v3 = *v3;
  }

  *buf = 136315138;
  *a3 = v3;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: Engine layer %s has invalid L2 source", buf, 0xCu);
}

void ZinMirL2HazardAnalysis::SetL2HazardBits(uint8_t *buf, _BYTE *a2)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1A617D000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Error: (RAW) Dst read node cannot have Rslt operand type", buf, 2u);
}

__int128 *ZinIrHalM9::GetParams(ZinIrHalM9 *this)
{
  *(&v24 + 1) = *MEMORY[0x1E69E9840];
  {
    ZinIrHalM9::GetParams(void)const::ZinIrHalM9Parameters = xmmword_1A75D64B0;
    *algn_1EB29EAF0 = xmmword_1A75A2900;
    xmmword_1EB29EB00 = xmmword_1A7595A10;
    unk_1EB29EB10 = xmmword_1A7595A20;
    xmmword_1EB29EB20 = xmmword_1A7595A30;
    unk_1EB29EB30 = xmmword_1A7595A40;
    xmmword_1EB29EB40 = xmmword_1A7595A20;
    unk_1EB29EB50 = vdupq_n_s64(1uLL);
    xmmword_1EB29EB60 = xmmword_1A75A2910;
    unk_1EB29EB70 = xmmword_1A75A2920;
    xmmword_1EB29EB80 = unk_1EB29EB50;
    unk_1EB29EB90 = vdupq_n_s64(4uLL);
    qword_1EB29EBA0 = 1;
    unk_1EB29EBA8 = xmmword_1A75D64D0;
    unk_1EB29EBB8 = unk_1A75D64E0;
    unk_1EB29EBD8 = unk_1A75D64E0;
    unk_1EB29EBC8 = xmmword_1A75D64D0;
    qword_1EB29EBF8 = 4;
    xmmword_1EB29EBE8 = xmmword_1A75D64F0;
    xmmword_1EB29EC00 = xmmword_1A75A2930;
    unk_1EB29EC10 = xmmword_1A7595AA0;
    xmmword_1EB29EC20 = xmmword_1A7595AA0;
    unk_1EB29EC30 = unk_1EB29EB50;
    xmmword_1EB29EC40 = xmmword_1A7595AB0;
    unk_1EB29EC50 = xmmword_1A7595AC0;
    xmmword_1EB29EC60 = xmmword_1A75A2940;
    unk_1EB29EC70 = vdupq_n_s64(0x10000uLL);
    xmmword_1EB29EC80 = unk_1EB29EC70;
    unk_1EB29EC90 = xmmword_1A75D64C0;
    xmmword_1EB29ECA0 = xmmword_1A7595AE0;
    unk_1EB29ECB0 = xmmword_1A7595AF0;
    xmmword_1EB29ECC0 = xmmword_1A75A2950;
    unk_1EB29ECD0 = xmmword_1A75A2960;
    xmmword_1EB29ECE0 = xmmword_1A7595B20;
    unk_1EB29ECF0 = xmmword_1A75A2970;
    xmmword_1EB29ED00 = xmmword_1A7597A80;
    unk_1EB29ED10 = xmmword_1A75967B0;
    xmmword_1EB29ED20 = vdupq_n_s64(2uLL);
    unk_1EB29ED30 = xmmword_1A75A2980;
    xmmword_1EB29ED40 = xmmword_1A75A2990;
    unk_1EB29ED50 = xmmword_1A7595B80;
    qword_1EB29ED70 = 0;
    xmmword_1EB29ED60 = 0u;
    qword_1EB29ED78 = 0x40000000;
    xmmword_1EB29ED80 = 0u;
    word_1EB29ED90 = 257;
    xmmword_1EB29ED98 = xmmword_1A7595B90;
    xmmword_1EB29EDA8 = xmmword_1A7595BA0;
    xmmword_1EB29EDB8 = xmmword_1A7595BB0;
    qword_1EB29EDC8 = 0x10000;
    byte_1EB29EDD0 = 8;
    dword_1EB29EDE8 = 520097776;
    qword_1EB29EDEC = 0xFFFFFFEB0000000BLL;
    xmmword_1EB29EDF8 = xmmword_1A75A29A0;
    xmmword_1EB29EE08 = xmmword_1A75A29B0;
    xmmword_1EB29EE18 = xmmword_1A7595BF0;
    xmmword_1EB29EDD8 = xmmword_1A7595BC0;
    v23 = vdupq_n_s64(8uLL);
    xmmword_1EB29EE28 = 0u;
    qword_1EB29EE38 = 0;
    std::vector<std::pair<unsigned long,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,unsigned long> const*,std::pair<unsigned long,unsigned long> const*>(&xmmword_1EB29EE28, v23.i8, &v24, 1uLL);
    xmmword_1EB29EE40 = xmmword_1A7595C00;
    *algn_1EB29EE50 = xmmword_1A7595C10;
    xmmword_1EB29EE60 = vdupq_n_s64(0x20uLL);
    unk_1EB29EE70 = xmmword_1A7595A50;
    xmmword_1EB29EE80 = vdupq_n_s64(8uLL);
    unk_1EB29EE90 = xmmword_1A7595C20;
    qword_1EB29EEA0 = 1;
    unk_1EB29EEA8 = 0u;
    unk_1EB29EEB8 = 0u;
    unk_1EB29EEC8 = 0u;
    unk_1EB29EED8 = 0u;
    unk_1EB29EEE8 = 0u;
    unk_1EB29EEF8 = 0u;
    unk_1EB29EF08 = 0u;
    unk_1EB29EF18 = xmmword_1A75989F0;
    unk_1EB29EF28 = xmmword_1A7595BC0;
    xmmword_1EB29EF38 = 0u;
    xmmword_1EB29EF48 = 0u;
    qword_1EB29EF58 = 12;
    qword_1EB29EF60 = 0x100000101;
    byte_1EB29EF68 = 1;
    dword_1EB29EF69 = 0;
    byte_1EB29EF6D = 1;
    *(&xmmword_1EB29EF6E + 13) = 0;
    xmmword_1EB29EF6E = 0u;
    byte_1EB29EF83 = 1;
    dword_1EB29EF84 = 0;
    word_1EB29EF88 = 256;
    word_1EB29EF8E = 0;
    dword_1EB29EF8A = 0;
    dword_1EB29EF90 = 257;
    byte_1EB29EF94 = 0;
    xmmword_1EB29EF98 = xmmword_1A7595CA0;
    xmmword_1EB29EFA8 = xmmword_1A7595CB0;
    qword_1EB29EFB8 = 40;
    xmmword_1EB29EFC0 = 0u;
    *(&xmmword_1EB29EFC0 + 13) = 0;
    byte_1EB29EFD5 = 1;
    *(&qword_1EB29EFD6 + 5) = 0;
    qword_1EB29EFD6 = 0;
    xmmword_1EB29EFE8 = 0u;
    dword_1EB29EFF8 = 0;
    word_1EB29EFFC = 1;
    byte_1EB29EFFE = 1;
    qword_1EB29EFFF = 0;
    word_1EB29F007 = 0;
    dword_1EB29F009 = 65793;
    word_1EB29F00D = 0;
    byte_1EB29F00F = 1;
    dword_1EB29F010 = 0;
    word_1EB29F014 = 256;
    dword_1EB29F016 = 0;
    word_1EB29F01A = 0;
    dword_1EB29F01C = 256;
    qword_1EB29F028 = -1;
    unk_1EB29F030 = -1;
    qword_1EB29F020 = 128;
    word_1EB29F038 = 0;
    dword_1EB29F03C = 0;
    word_1EB29F040 = 257;
    *(&qword_1EB29F042 + 7) = 0;
    qword_1EB29F042 = 0;
    qword_1EB29F051 = 0x1000100000606;
    word_1EB29F059 = 0;
    std::string::__init(&qword_1EB29F060, "None", 4uLL);
    qword_1EB29F078 = 0;
    unk_1EB29F090 = xmmword_1A7595CC0;
    dword_1EB29F084 = 0;
    unk_1EB29F088 = 0;
    dword_1EB29F080 = 1071225242;
    unk_1EB29F0A0 = vdupq_n_s64(0x40uLL);
    unk_1EB29F0B0 = xmmword_1A7595C00;
    qword_1EB29F0C0 = 8;
    byte_1EB29F0C8 = 0;
    unk_1EB29F0CC = 1048576000;
    byte_1EB29F0D4 = 0;
    v20 = 0x200000001;
    v21 = 4;
    qword_1EB29F0E0 = 0;
    unk_1EB29F0E8 = 0;
    qword_1EB29F0D8 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29F0D8, &v20, &v22, 3uLL);
    v17 = xmmword_1A75D6508;
    *v18 = unk_1A75D6518;
    *&v18[12] = unk_1A75D6524;
    qword_1EB29F0F8 = 0;
    unk_1EB29F100 = 0;
    qword_1EB29F0F0 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29F0F0, &v17, &v19, 0xBuLL);
    v15 = 7;
    v14[0] = xmmword_1A75D6534;
    v14[1] = unk_1A75D6544;
    v14[2] = xmmword_1A75D6554;
    qword_1EB29F110 = 0;
    unk_1EB29F118 = 0;
    qword_1EB29F108 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29F108, v14, v16, 0xDuLL);
    v11[0] = xmmword_1A75D6568;
    v11[1] = unk_1A75D6578;
    *v12 = xmmword_1A75D6588;
    *&v12[12] = *(&xmmword_1A75D6588 + 12);
    qword_1EB29F128 = 0;
    unk_1EB29F130 = 0;
    qword_1EB29F120 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29F120, v11, &v13, 0xFuLL);
    xmmword_1EB29F140 = 0u;
    qword_1EB29F138 = &xmmword_1EB29F140;
    word_1EB29F150 = 0;
    byte_1EB29F152 = 1;
    *algn_1EB29F153 = 0;
    qword_1EB29F158 = 0;
    *(&qword_1EB29F158 + 7) = 0;
    byte_1EB29F167 = 1;
    xmmword_1EB29F168 = vdupq_n_s64(0x10000uLL);
    unk_1EB29F178 = xmmword_1EB29F168;
    qword_1EB29F188 = 0x10000;
    unk_1EB29F190 = 0u;
    unk_1EB29F1A0 = 0u;
    dword_1EB29F1B0 = 1;
    word_1EB29F1B4 = 1;
    xmmword_1EB29F1F0 = 0u;
    unk_1EB29F1D8 = 8;
    unk_1EB29F1C8 = unk_1A75D65B8;
    unk_1EB29F1B8 = xmmword_1A75D65A8;
    unk_1EB29F1E0 = xmmword_1A75A29C0;
    v10 = 0x41B7D78400000000;
    qword_1EB29F200 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&xmmword_1EB29F1F0, &v10, v11, 1uLL);
    v9 = 0x41B1E1A300000000;
    qword_1EB29F210 = 0;
    unk_1EB29F218 = 0;
    qword_1EB29F208 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29F208, &v9, &v10, 1uLL);
    v8 = 0x41D5DC2930000000;
    qword_1EB29F228 = 0;
    unk_1EB29F230 = 0;
    qword_1EB29F220 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29F220, &v8, &v9, 1uLL);
    v7 = vdupq_n_s64(0x41B7D78400000000uLL);
    std::map<double,double>::map[abi:ne200100](qword_1EB29F238, v7.i64, 1);
    xmmword_1EB29F250 = xmmword_1A7595D10;
    *v5 = xmmword_1A75D65D0;
    *&v5[12] = *(&xmmword_1A75D65D0 + 12);
    qword_1EB29F268 = 0;
    unk_1EB29F270 = 0;
    qword_1EB29F260 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29F260, v5, &v6, 7uLL);
    xmmword_1EB29F278 = xmmword_1A7595BC0;
    unk_1EB29F288 = xmmword_1A7595AF0;
    qword_1EB29F298 = 64;
    word_1EB29F2A0 = 256;
    dword_1EB29F358 = 0;
    word_1EB29F35C = 0;
    qword_1EB29F378 = 0;
    byte_1EB29F380 = 0;
    qword_1EB29F388 = 0;
    byte_1EB29F390 = 0;
    unk_1EB29F2A2 = 0;
    unk_1EB29F2A9 = 0;
    xmmword_1EB29F2B8 = 0u;
    unk_1EB29F2C8 = 0u;
    xmmword_1EB29F2D8 = 0u;
    unk_1EB29F2E8 = 0u;
    xmmword_1EB29F2F8 = 0u;
    unk_1EB29F308 = 0u;
    xmmword_1EB29F318 = 0u;
    unk_1EB29F328 = 0u;
    xmmword_1EB29F338 = 0u;
    *(&xmmword_1EB29F338 + 10) = 0u;
    qword_1EB29F360 = 0;
    unk_1EB29F368 = 0;
    byte_1EB29F370 = 0;
    word_1EB29F391 = 257;
    qword_1EB29F398 = 0x40000000;
    byte_1EB29F3A0 = 0;
    dword_1EB29F3A4 = 1;
    *v5 = 1;
    v3 = 0;
    v4 = 0;
    __p = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, v5, &v5[2], 1);
    qword_1EB29F3A8 = 0;
    unk_1EB29F3B0 = 0;
    qword_1EB29F3B8 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&qword_1EB29F3A8, __p, v3, (v3 - __p) >> 1);
    word_1EB29F3C0 = 0;
    if (__p)
    {
      v3 = __p;
      operator delete(__p);
    }

    __cxa_atexit(ZinIrHalParameters::~ZinIrHalParameters, &ZinIrHalM9::GetParams(void)const::ZinIrHalM9Parameters, &dword_1A617D000);
  }

  return &ZinIrHalM9::GetParams(void)const::ZinIrHalM9Parameters;
}

void sub_1A6A12F4C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (qword_1EB29F260)
  {
    qword_1EB29F268 = qword_1EB29F260;
    operator delete(qword_1EB29F260);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v17, *(v17 + 8));
  if (qword_1EB29F220)
  {
    qword_1EB29F228 = qword_1EB29F220;
    operator delete(qword_1EB29F220);
  }

  if (qword_1EB29F208)
  {
    qword_1EB29F210 = qword_1EB29F208;
    operator delete(qword_1EB29F208);
  }

  if (xmmword_1EB29F1F0)
  {
    *(&xmmword_1EB29F1F0 + 1) = xmmword_1EB29F1F0;
    operator delete(xmmword_1EB29F1F0);
  }

  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(v16 + 24, *(v16 + 32));
  v19 = *v16;
  if (*v16)
  {
    qword_1EB29F128 = *v16;
    operator delete(v19);
  }

  if (qword_1EB29F108)
  {
    qword_1EB29F110 = qword_1EB29F108;
    operator delete(qword_1EB29F108);
  }

  if (qword_1EB29F0F0)
  {
    qword_1EB29F0F8 = qword_1EB29F0F0;
    operator delete(qword_1EB29F0F0);
  }

  if (qword_1EB29F0D8)
  {
    qword_1EB29F0E0 = qword_1EB29F0D8;
    operator delete(qword_1EB29F0D8);
  }

  if (byte_1EB29F077 < 0)
  {
    operator delete(qword_1EB29F060);
  }

  if (xmmword_1EB29EE28)
  {
    *(&xmmword_1EB29EE28 + 1) = xmmword_1EB29EE28;
    operator delete(xmmword_1EB29EE28);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinParseAllGatherUnit(const __CFDictionary *a1, ZinIrCollectiveCommunicationUnitInfo *a2, CFArrayRef *a3)
{
  Value = CFDictionaryGetValue(a1, @"Params");
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFDictionaryGetTypeID()))
  {
    if (ZinParseShardingMap(v6, (a2 + 80), a3, 1))
    {
      return 3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinParseAllGatherUnit();
    }

    ZinIrUnitStatus::SetError(a3, @"InvalidParamSyntax");
    return 3;
  }
}

uint64_t ZinIrRegSpill::ZinIrRegSpill(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a5;
  std::set<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::set[abi:ne200100]((a1 + 24), a4);
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 1065353216;
  *(a1 + 88) = a7;
  *(a1 + 96) = a6;
  return a1;
}

BOOL ZinIrRegSpill::IsStressTestMode(ZinIrRegSpill *this, const ZinIrCompilerParameters *a2)
{
  v2 = (this + 312);
  v3 = *(this + 335);
  if (v3 < 0)
  {
    if (*(this + 40) != 15)
    {
      return 0;
    }

    v2 = *v2;
  }

  else if (v3 != 15)
  {
    return 0;
  }

  v4 = *v2;
  v5 = *(v2 + 7);
  return v4 == 0x6572646568636163 && v5 == 0x6574697277646165;
}

unint64_t ZinIrRegSpill::Run(ZinIrLocalRegAlloc **this)
{
  ZinIrRegSpill::InitSpillCandidates(this);
  v2 = ZinIrRegSpill::ClearCandidateL2Symbols(this);
  if (v2)
  {
    v3 = v2;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrRegSpill::Run();
    }

    return v3;
  }

  v4 = ZinIrRegSpill::DoSpillOnCandidates(this);
  if (v4)
  {
    v3 = v4;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrRegSpill::Run();
    }

    return v3;
  }

  v5 = ZinIrLocalRegAlloc::LowerKernelAfterChannelAssignmentParamUpdate(this[2], 0);
  if (v5)
  {
    v3 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrRegSpill::Run();
    }

    return v3;
  }

  v6 = ZinIrRegSpill::VerifyL2Symbols(this);
  if (v6)
  {
    v3 = v6;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrRegSpill::Run();
    }

    return v3;
  }

  return ZinIrRegSpill::VerifyChainSymbols(this);
}

uint64_t ZinIrRegSpill::InitSpillCandidates(ZinIrRegSpill *this)
{
  if (*(this + 88) == 1)
  {
    v2 = (this + 32);
    v3 = (this + 24);
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(this + 24, *(this + 4));
    *v2 = 0;
    v2[1] = 0;
    *(v2 - 1) = v2;
    v4 = *(v2 - 3);
    v5 = *v4;
    v6 = *(v4 + 8);
    if (*v4 != v6)
    {
      while (1)
      {
        v7 = (*(**v5 + 40))(*v5, 0);
        if (!ZinIrTensor::HasParent(v7))
        {
          break;
        }

LABEL_21:
        if (++v5 == v6)
        {
          return 0;
        }
      }

      v29[0] = v7;
      ZinIrTensor::GetSymbols(&v27, v7);
      v8 = v27;
      if (v27 == v28)
      {
        IsQualifiedForSpill = 1;
        if (!v27)
        {
LABEL_19:
          if (IsQualifiedForSpill)
          {
            std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(v3, v29, v29);
          }

          goto LABEL_21;
        }

LABEL_18:
        v28 = v8;
        operator delete(v8);
        goto LABEL_19;
      }

      ZinIrTensor::GetSymbols(v26, v29[0]);
      v9 = v26[0];
      if (*v26[0])
      {
        ZinIrTensor::GetSymbols(__p, v29[0]);
        if (ZinIrSymbol::GetMemType(*__p[0]) == 2)
        {
          LOBYTE(v21[0]) = 0;
          v24 = 0;
          IsQualifiedForSpill = ZinIrRegSpill::IsQualifiedForSpill(v7, v21);
          if (v24 == 1)
          {
            std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v23, v23[1]);
            std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v22);
            std::__hash_table<std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>>>::~__hash_table(v21);
          }
        }

        else
        {
          IsQualifiedForSpill = 0;
        }

        if (__p[0])
        {
          __p[1] = __p[0];
          operator delete(__p[0]);
        }

        v9 = v26[0];
        if (!v26[0])
        {
LABEL_17:
          v8 = v27;
          if (!v27)
          {
            goto LABEL_19;
          }

          goto LABEL_18;
        }
      }

      else
      {
        IsQualifiedForSpill = 0;
      }

      v26[1] = v9;
      operator delete(v9);
      goto LABEL_17;
    }
  }

  else
  {
    v11 = *(this + 1);
    v12 = *v11;
    v13 = v11[1];
    if (*v11 != v13)
    {
      do
      {
        (*(**v12 + 80))(v21);
        v14 = v21[0];
        v15 = v21[1];
        while (v14 != v15)
        {
          v16 = *v14;
          v17 = *(v14 + 8);
          if (v17)
          {
            atomic_fetch_add_explicit(&v17->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          if (!ZinIrTensor::HasParent(v16))
          {
            ZinIrTensor::GetSymbols(&v27, v16);
            v18 = v27;
            v19 = v28;
            if (v27)
            {
              v28 = v27;
              operator delete(v27);
            }

            if (v18 == v19)
            {
              v27 = v16;
              std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(this + 3, &v27, &v27);
            }
          }

          if (v17)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v17);
          }

          v14 += 16;
        }

        v27 = v21;
        std::vector<std::shared_ptr<ZinIrTensor>>::__destroy_vector::operator()[abi:ne200100](&v27);
        v12 += 8;
      }

      while (v12 != v13);
    }
  }

  return 0;
}

void sub_1A6A13620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, uint64_t a26, void *a27, uint64_t a28)
{
  std::optional<ZinTensorFamilyUtil>::~optional(&a10);
  if (__p)
  {
    a25 = __p;
    operator delete(__p);
  }

  if (a27)
  {
    a28 = a27;
    operator delete(a27);
  }

  v30 = *(v28 - 120);
  if (v30)
  {
    *(v28 - 112) = v30;
    operator delete(v30);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinIrRegSpill::ClearCandidateL2Symbols(uint64_t **this)
{
  std::set<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::set[abi:ne200100](&v11, (this + 3));
  v2 = v11;
  if (v11 == v12)
  {
LABEL_13:
    v6 = 0;
  }

  else
  {
    while (1)
    {
      RootTensor = ZinIrTensor::GetRootTensor(v2[4]);
      v4 = *(RootTensor + 20);
      if (v4)
      {
        v5 = *(v4 + 40);
        if (v5 != *(v4 + 48))
        {
          if (*v5)
          {
            if (ZinIrSymbol::GetMemType(*v5) == 2)
            {
              v6 = ZinIrRegSpill::SpillResidentTensor(this, RootTensor, this + 3);
              if (v6)
              {
                break;
              }
            }
          }
        }
      }

      v7 = v2[1];
      if (v7)
      {
        do
        {
          v8 = v7;
          v7 = *v7;
        }

        while (v7);
      }

      else
      {
        do
        {
          v8 = v2[2];
          v9 = *v8 == v2;
          v2 = v8;
        }

        while (!v9);
      }

      v2 = v8;
      if (v8 == v12)
      {
        goto LABEL_13;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrRegSpill::ClearCandidateL2Symbols();
    }
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v11, v12[0]);
  return v6;
}

uint64_t ZinIrRegSpill::DoSpillOnCandidates(uint64_t **this)
{
  std::set<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::set[abi:ne200100](&v17, (this + 3));
  v2 = v17;
  if (v17 == v18)
  {
    goto LABEL_17;
  }

  do
  {
    v16 = v2[4];
    RootTensor = ZinIrTensor::GetRootTensor(v16);
    v11[0] = 0;
    v14 = 0;
    IsQualifiedForSpill = ZinIrRegSpill::IsQualifiedForSpill(RootTensor, v11);
    if (v14 == 1)
    {
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v13, v13[1]);
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v12);
      std::__hash_table<std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::__unordered_map_hasher<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::hash<ZinIrTensor *>,std::equal_to<ZinIrTensor *>,true>,std::__unordered_map_equal<ZinIrTensor *,std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>,std::equal_to<ZinIrTensor *>,std::hash<ZinIrTensor *>,true>,std::allocator<std::__hash_value_type<ZinIrTensor *,TensorFamilyAttributes>>>::~__hash_table(v11);
    }

    if (!IsQualifiedForSpill)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinIrRegSpill::DoSpillOnCandidates();
      }

      DMABuffers = 3;
      goto LABEL_24;
    }

    if (v16 != RootTensor)
    {
      std::__tree<std::__value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,float>,std::__map_value_compare<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,float>,std::less<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,float>>>::__erase_unique<NodeKey<RawOrShared<ZinIrOpLayer>>>(this + 3, &v16);
      std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(this + 3, &RootTensor, &RootTensor);
    }

    v4 = v2[1];
    if (v4)
    {
      do
      {
        v5 = v4;
        v4 = *v4;
      }

      while (v4);
    }

    else
    {
      do
      {
        v5 = v2[2];
        v6 = *v5 == v2;
        v2 = v5;
      }

      while (!v6);
    }

    v2 = v5;
  }

  while (v5 != v18);
  do
  {
LABEL_17:
    if (!this[5])
    {
      DMABuffers = 0;
      goto LABEL_24;
    }

    v7 = this[3];
    v8 = v7[4];
    std::__tree<ZinIrDimension>::__remove_node_pointer(this + 3, v7);
    operator delete(v7);
    if ((*(**(v8 + 152) + 64))(*(v8 + 152), v8))
    {
      ZinIrRegSpill::SpillL2CachedTensor(this, v8);
    }

    DMABuffers = ZinIrRegSpill::SpillAndAllocateDMABuffers(this, v8);
  }

  while (!DMABuffers);
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinIrRegSpill::DoSpillOnCandidates();
  }

LABEL_24:
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v17, v18[0]);
  return DMABuffers;
}

void sub_1A6A139A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::optional<ZinTensorFamilyUtil>::~optional(va);
  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v3 - 72, *(v3 - 64));
  _Unwind_Resume(a1);
}

unint64_t ZinIrRegSpill::VerifyL2Symbols(ZinIrRegSpill *this)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v1 = *this;
  v4[0] = &unk_1F19F44D8;
  v4[3] = v4;
  v2 = ZinIrControlFlowGraph::TraverseForward(v1, v4, 1);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](v4);
  return v2;
}

void sub_1A6A13A64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

unint64_t ZinIrRegSpill::VerifyChainSymbols(ZinIrRegSpill *this)
{
  v4[4] = *MEMORY[0x1E69E9840];
  v1 = *this;
  v4[0] = &unk_1F19F4558;
  v4[3] = v4;
  v2 = ZinIrControlFlowGraph::TraverseForward(v1, v4, 1);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](v4);
  return v2;
}

void sub_1A6A13B0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrRegSpill::MustBeInL2(ZinIrTensor *this, ZinTensorFamilyUtil *a2)
{
  if (*(a2 + 104) == 1)
  {
    RootTensor = ZinTensorFamilyUtil::GetRootTensor(a2, this);
  }

  else
  {
    RootTensor = ZinIrTensor::GetRootTensor(this);
  }

  v5 = RootTensor;
  if (*(a2 + 104) == 1)
  {
    TensorFamily = ZinTensorFamilyUtil::GetTensorFamily(a2, this);
    v39 = 0;
    v40 = 0;
    __p = 0;
    std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, *TensorFamily, TensorFamily[1], (TensorFamily[1] - *TensorFamily) >> 3);
  }

  else
  {
    ZinIrTensor::GetTensorFamily(&__p, this);
  }

  v7 = *(v5 + 20);
  if (v7 && *(v7 + 96) == 1 && (v9 = __p, v8 = v39, __p != v39))
  {
    v34 = v39;
    while (1)
    {
      v10 = *(*v9 + 152);
      v11 = *(v10 + 11);
      if (*(v11 + 8) == 7 && *(v11 + 12) == 3)
      {
        __src = 0;
        v36 = 0;
        v37 = 0;
        v12 = *ZinIrContext::GetMemoryPools(v10);
        v13 = *(ZinIrContext::GetMemoryPools(v10) + 8);
        while (v12 != v13)
        {
          v14 = (*(**v12 + 40))(*v12, 0);
          v15 = v36;
          if (v36 >= v37)
          {
            v19 = __src;
            v20 = v36 - __src;
            v21 = 0xCCCCCCCCCCCCCCCDLL * ((v36 - __src) >> 3);
            v22 = v21 + 1;
            if (v21 + 1 > 0x666666666666666)
            {
              std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
            }

            if (0x999999999999999ALL * ((v37 - __src) >> 3) > v22)
            {
              v22 = 0x999999999999999ALL * ((v37 - __src) >> 3);
            }

            if (0xCCCCCCCCCCCCCCCDLL * ((v37 - __src) >> 3) >= 0x333333333333333)
            {
              v22 = 0x666666666666666;
            }

            if (v22)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<ZinTensorDimensions>>(&__src, v22);
            }

            v23 = 8 * ((v36 - __src) >> 3);
            v24 = *(v14 + 64);
            v25 = *(v14 + 80);
            *(v23 + 32) = *(v14 + 96);
            *v23 = v24;
            *(v23 + 16) = v25;
            v18 = 40 * v21 + 40;
            v26 = (v23 - v20);
            memcpy((v23 - v20), v19, v20);
            v27 = __src;
            __src = v26;
            v36 = v18;
            v37 = 0;
            if (v27)
            {
              operator delete(v27);
            }
          }

          else
          {
            v16 = *(v14 + 64);
            v17 = *(v14 + 80);
            *(v36 + 4) = *(v14 + 96);
            *v15 = v16;
            v15[1] = v17;
            v18 = v15 + 40;
          }

          v36 = v18;
          ++v12;
        }

        Hal = ZinIrTarget::GetHal(*(*(v10 + 4) + 200));
        v29 = (*(*Hal + 16))(Hal);
        v30 = (*(*v10 + 40))(v10, 0);
        IsWidthAlign = ZinConcatLayerUtils::IsWidthAlign(&__src, *(v30 + 104), *(v29 + 560));
        if (__src)
        {
          v36 = __src;
          operator delete(__src);
        }

        v8 = v34;
        if (!IsWidthAlign)
        {
          break;
        }
      }

      v9 += 8;
      if (v9 == v8)
      {
        goto LABEL_31;
      }
    }

    v32 = 1;
  }

  else
  {
LABEL_31:
    v32 = 0;
  }

  if (__p)
  {
    v39 = __p;
    operator delete(__p);
  }

  return v32;
}

void sub_1A6A13E20(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14)
  {
    operator delete(a14);
  }

  _Unwind_Resume(exception_object);
}

BOOL ZinIrRegSpill::IsQualifiedForSpill(ZinIrTensor *a1, ZinTensorFamilyUtil *a2)
{
  if (ZinIrRegSpill::MustBeInL2(a1, a2))
  {
    return 0;
  }

  if (*(a2 + 104) == 1)
  {
    TensorFamily = ZinTensorFamilyUtil::GetTensorFamily(a2, a1);
    v18 = 0;
    v19 = 0;
    __p = 0;
    std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<ZinIrOpLayer **,ZinIrOpLayer **>(&__p, *TensorFamily, TensorFamily[1], (TensorFamily[1] - *TensorFamily) >> 3);
  }

  else
  {
    ZinIrTensor::GetTensorFamily(&__p, a1);
  }

  v6 = __p;
  v7 = v18;
  if (__p == v18)
  {
    v4 = 1;
  }

  else
  {
    while (2)
    {
      v8 = *(*v6 + 152);
      v9 = *(*(v8 + 11) + 8);
      v4 = v9 != 33;
      if (v9 != 33)
      {
        OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(v8);
        v11 = *OutgoingLayers;
        v12 = *(OutgoingLayers + 8);
        while (v11 != v12)
        {
          v13 = *v11;
          if (ZinIrOpLayer::IsNELayer(*v11) && (MemoryPools = ZinIrContext::GetMemoryPools(v13), MemoryPools[1] - *MemoryPools == 16) && (InputTensor = ZinIrOpLayer::GetInputTensor(v13, 1uLL), !(*(*v13 + 224))(v13, InputTensor)) || *(*(v13 + 11) + 8) == 89 && RawOrShared<ZinIndexLayer>::unwrap_const_ptr(v13 + 816))
          {
            v4 = 0;
            goto LABEL_20;
          }

          ++v11;
        }

        v6 += 8;
        if (v6 != v7)
        {
          continue;
        }
      }

      break;
    }
  }

LABEL_20:
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v4;
}

void sub_1A6A13FD8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrRegSpill::InsertL2Copy(ZinIrRegSpill *this, ZinPELayer *a2, uint64_t a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v22 = a2;
  v4 = *(*ZinIrContext::GetMemoryPools(a2) + 8 * a3);
  if (*(a2 + 71) >= 0)
  {
    v5 = *(a2 + 71);
  }

  else
  {
    v5 = *(a2 + 7);
  }

  v6 = &v16;
  std::string::basic_string[abi:ne200100](&v16, v5 + 1);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v6 = v16.__r_.__value_.__r.__words[0];
  }

  if (v5)
  {
    if (*(a2 + 71) >= 0)
    {
      v7 = a2 + 48;
    }

    else
    {
      v7 = *(a2 + 6);
    }

    memmove(v6, v7, v5);
  }

  *(&v6->__r_.__value_.__l.__data_ + v5) = 95;
  *(&v20.__r_.__value_.__s + 23) = 13;
  strcpy(&v20, "spill_l2_copy");
  v8 = std::string::append(&v20, "_xfm", 4uLL);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v24 = v8->__r_.__value_.__r.__words[2];
  v23 = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  if (v24 >= 0)
  {
    v10 = &v23;
  }

  else
  {
    v10 = v23;
  }

  if (v24 >= 0)
  {
    v11 = HIBYTE(v24);
  }

  else
  {
    v11 = *(&v23 + 1);
  }

  v12 = std::string::append(&v16, v10, v11);
  v13 = *&v12->__r_.__value_.__l.__data_;
  __p[0].__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
  *&__p[0].__r_.__value_.__l.__data_ = v13;
  v12->__r_.__value_.__l.__size_ = 0;
  v12->__r_.__value_.__r.__words[2] = 0;
  v12->__r_.__value_.__r.__words[0] = 0;
  ZinObjectNameFactory::ZinObjectNameFactory(v21, __p);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v24) < 0)
  {
    operator delete(v23);
  }

  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v16.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  v14 = v4[4];
  v15 = *((*(*v4 + 40))(v4, 0) + 104);
  v19 = 0;
  __p[0].__r_.__value_.__s.__data_[0] = 0;
  v18 = 0;
  ZinBuilder::CreateNEBypass(v14, v21, v4, v15, &v19, 0, __p, 1.0);
}

void sub_1A6A14548(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](v24 - 128);
  std::unique_ptr<ZinEngineLayerMirInfo>::~unique_ptr[abi:ne200100]((v24 - 96));
  a18 = &unk_1F19C3950;
  __p = &a19;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100](&__p);
  *(v23 + 32) = &unk_1F19D0088;
  if (*(v24 - 145) < 0)
  {
    operator delete(*(v23 + 40));
  }

  _Unwind_Resume(a1);
}

BOOL ZinIrRegSpill::HasMismatchedDualInput(ZinIrRegSpill *this, ZinIrOpLayer *a2)
{
  if (!ZinIrOpLayer::IsPELayer(this))
  {
    return 0;
  }

  MemoryPools = ZinIrContext::GetMemoryPools(this);
  if (MemoryPools[1] - *MemoryPools != 16)
  {
    return 0;
  }

  InputTensor = ZinIrOpLayer::GetInputTensor(this, 0);
  v5 = 1;
  v6 = ZinIrOpLayer::GetInputTensor(this, 1uLL);
  if (ZinTensorDimensionsEqual((InputTensor + 64), (v6 + 64)))
  {
    if (*(InputTensor + 104) != *(v6 + 104))
    {
      return 1;
    }

    Interleave = ZinIrTensor::GetInterleave(InputTensor);
    v9 = v8;
    v10 = v8;
    v11 = ZinIrTensor::GetInterleave(v6);
    if (v10 == v12 && (v9 & 1) != 0)
    {
      if (Interleave != v11)
      {
        return 1;
      }
    }

    else if (v10 != v12)
    {
      return 1;
    }

    v13 = *(InputTensor + 160);
    if (v13)
    {
      v14 = *(v13 + 40);
      if (v14 != *(v13 + 48))
      {
        if (*v14)
        {
          v15 = *(v6 + 160);
          if (v15)
          {
            v16 = *(v15 + 40);
            if (v16 != *(v15 + 48))
            {
              if (*v16)
              {
                PostAllocationInterleave = ZinIrRegAllocUtil::GetPostAllocationInterleave(InputTensor, v12);
                return PostAllocationInterleave != ZinIrRegAllocUtil::GetPostAllocationInterleave(v6, v18);
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return v5;
}

void ZinIrRegSpill::SpillL2CachedTensor(ZinIrLocalRegAlloc **this, const ZinIrTensor **a2)
{
  v9[3] = a2;
  v2 = a2[19];
  v3 = (*(*v2 + 64))(v2);
  if ((v3 - 1) < 2)
  {
    v4 = v3 != 1;
    (*(*v2 + 544))(v9, v2);
    v5 = *(v9[0] + v4);
    v8 = 0;
    if (ZinIrOpLayerGraphUtil::GetIncomingIndex(v5, v2, &v8, v6))
    {
      memset(__p, 0, sizeof(__p));
      std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrOpLayer *>>(__p, 1uLL);
    }

    ZinAssertImpl("can't find incoming index");
  }

  ZinAssertImpl("L2 cached tensor for DMADst is not supported");
}

void sub_1A6A14ACC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a17)
  {
    operator delete(a17);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrRegSpill::SpillRead(ZinIrRegSpill *this, ZinANELayer *a2, unint64_t a3)
{
  ZinIrLocalRegAlloc::FreeDMABuffers(*(this + 2), a2);
  InputTensor = ZinIrOpLayer::GetInputTensor(a2, a3);
  v18 = 0;
  if (ZinMemSourceIndexTranslator::GetL2SrcType(a2, a3, &v18))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrRegSpill::SpillRead();
    }

    return 3;
  }

  else
  {
    while (1)
    {
      v7 = *(InputTensor + 160);
      if (!v7 || *(v7 + 96) != 1 || (v8 = *(this + 2), *&v15 = *(a2 + 9), *(&v15 + 1) = v15, ZinIrLocalRegAlloc::AllocateInputDMACachedBuffer(v8, a2, v18, &v15)))
      {
        if (ZinIrLocalRegAlloc::AllocateOptimizedDMABuffer(*(this + 2), a2))
        {
          break;
        }
      }

      ZinIrLocalRegAlloc::FreeCachedDMAInputBuffer(*(this + 2), a2, v18);
      ZinIrLocalRegAlloc::FreeDMABuffers(*(this + 2), a2);
      v17[0] = *(a2 + 9);
      v17[1] = v17[0];
      *(&v15 + 1) = 0;
      v16 = 0;
      *&v15 = &v15 + 8;
      if (ZinIrRegSpill::SpillResidentTensor(this, v17, &v15))
      {
        std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v15, *(&v15 + 1));
        return 3;
      }

      if (!v16)
      {
        ZinAssertImpl("It should have rollbackable tensor");
      }

      v9 = v15;
      if (v15 != (&v15 + 8))
      {
        do
        {
          RootTensor = ZinIrTensor::GetRootTensor(*(v9 + 4));
          std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(this + 3, &RootTensor, &RootTensor);
          v10 = *(v9 + 1);
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
              v11 = *(v9 + 2);
              v12 = *v11 == v9;
              v9 = v11;
            }

            while (!v12);
          }

          v9 = v11;
        }

        while (v11 != (&v15 + 8));
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v15, *(&v15 + 1));
    }

    return 0;
  }
}

uint64_t ZinIrRegSpill::SpillAndAllocateDMABuffers(ZinIrRegSpill *this, ZinIrTensor *a2)
{
  v29 = a2;
  if (ZinIrTensor::HasParent(a2))
  {
    ZinAssertImpl("Spiller: non-root tensor.");
  }

  ZinIrTensor::GetSymbols(&__p, a2);
  v4 = __p;
  v5 = v28;
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  if (v4 != v5)
  {
    ZinAssertImpl("Spiller: symbol not freed.");
  }

  Section = ZinIrLocalRegAlloc::GetSection(*(this + 2), 0, 4);
  if (!ZinIrLocalRegAlloc::AllocateNonResidentTensor(*(this + 2), v29, Section, Section[48], 1))
  {
    return 3;
  }

  ZinIrTensor::GetTensorFamily(&__p, v29);
  std::__tree<std::__value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,float>,std::__map_value_compare<NodeKey<RawOrShared<ZinIrOpLayer>>,std::__value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,float>,std::less<NodeKey<RawOrShared<ZinIrOpLayer>>>,true>,std::allocator<std::__value_type<NodeKey<RawOrShared<ZinIrOpLayer>>,float>>>::__erase_unique<NodeKey<RawOrShared<ZinIrOpLayer>>>((*(this + 2) + 352), &v29);
  v7 = __p;
  v8 = v28;
  if (__p == v28)
  {
LABEL_30:
    v11 = ZinIrRegSpill::RevertL2DepOrChain(this, v29, this + 3);
  }

  else
  {
    while (1)
    {
      v9 = *v7;
      v10 = *(*v7 + 152);
      if (ZinIrOpLayer::IsANELayer(v10))
      {
        v11 = ZinIrRegSpill::SpillWrite(this, v10);
        if (v11)
        {
          break;
        }
      }

      v26[0] = 0;
      v26[1] = 0;
      v25 = v26;
      v12 = *ZinIrOpLayer::GetOutgoingLayers(v10);
      v13 = *(ZinIrOpLayer::GetOutgoingLayers(v10) + 8);
      while (v12 != v13)
      {
        std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_hint_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(&v25, v26, v12, v12);
        ++v12;
      }

      v14 = v25;
      if (v25 != v26)
      {
        do
        {
          v15 = v14[4];
          if (ZinIrOpLayer::IsANELayer(v15))
          {
            for (i = 0; ; ++i)
            {
              MemoryPools = ZinIrContext::GetMemoryPools(v15);
              if (i >= (MemoryPools[1] - *MemoryPools) >> 3)
              {
                break;
              }

              if (ZinIrOpLayer::GetInputTensor(v15, i) == v9)
              {
                if (!ZinIrOpLayer::IsPELayer(v15) || (v24 = v15, !std::__hash_table<std::__hash_value_type<ZinANELayer const*,int>,std::__unordered_map_hasher<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::hash<ZinANELayer const*>,std::equal_to<ZinANELayer const*>,true>,std::__unordered_map_equal<ZinANELayer const*,std::__hash_value_type<ZinANELayer const*,int>,std::equal_to<ZinANELayer const*>,std::hash<ZinANELayer const*>,true>,std::allocator<std::__hash_value_type<ZinANELayer const*,int>>>::find<ZinANELayer const*>(this + 6, &v24)))
                {
                  if (ZinIrRegSpill::NeedMemCopyCache(*(this + 12), v15, i, v18, v19))
                  {
                    ZinIrRegSpill::InsertL2Copy(this, v15, i);
                  }
                }

                v11 = ZinIrRegSpill::SpillRead(this, v15, i);
                if (v11)
                {
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    ZinIrRegSpill::SpillAndAllocateDMABuffers();
                  }

                  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v25, v26[0]);
                  goto LABEL_35;
                }
              }
            }
          }

          v20 = v14[1];
          if (v20)
          {
            do
            {
              v21 = v20;
              v20 = *v20;
            }

            while (v20);
          }

          else
          {
            do
            {
              v21 = v14[2];
              v22 = *v21 == v14;
              v14 = v21;
            }

            while (!v22);
          }

          v14 = v21;
        }

        while (v21 != v26);
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v25, v26[0]);
      v7 += 8;
      if (v7 == v8)
      {
        goto LABEL_30;
      }
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinIrRegSpill::SpillAndAllocateDMABuffers();
    }
  }

LABEL_35:
  if (__p)
  {
    v28 = __p;
    operator delete(__p);
  }

  return v11;
}

void sub_1A6A15028(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinIrRegSpill::SpillWrite(ZinIrRegSpill *this, ZinANELayer *a2)
{
  ZinIrLocalRegAlloc::FreeDMABuffers(*(this + 2), a2);
  v4 = (*(*a2 + 40))(a2, 0);
  while (1)
  {
    v5 = *(v4 + 160);
    if (!v5 || *(v5 + 96) != 1 || (v6 = *(this + 2), v13 = *(a2 + 9), v14 = v13, ZinIrLocalRegAlloc::AllocateOutputDMACachedBuffer(v6, a2, &v13)))
    {
      if (ZinIrLocalRegAlloc::AllocateOptimizedDMABuffer(*(this + 2), a2))
      {
        break;
      }
    }

    ZinIrLocalRegAlloc::FreeCachedDMAOutputBuffer(*(this + 2), a2);
    ZinIrLocalRegAlloc::FreeDMABuffers(*(this + 2), a2);
    v16[0] = *(a2 + 9);
    v16[1] = v16[0];
    v14 = 0;
    v15 = 0;
    v13 = &v14;
    if (ZinIrRegSpill::SpillResidentTensor(this, v16, &v13))
    {
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v13, v14);
      return 3;
    }

    if (!v15)
    {
      ZinAssertImpl("It should have rollbackable tensor");
    }

    v7 = v13;
    if (v13 != &v14)
    {
      do
      {
        RootTensor = ZinIrTensor::GetRootTensor(v7[4]);
        std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(this + 3, &RootTensor, &RootTensor);
        v8 = v7[1];
        if (v8)
        {
          do
          {
            v9 = v8;
            v8 = *v8;
          }

          while (v8);
        }

        else
        {
          do
          {
            v9 = v7[2];
            v10 = *v9 == v7;
            v7 = v9;
          }

          while (!v10);
        }

        v7 = v9;
      }

      while (v9 != &v14);
    }

    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v13, v14);
  }

  return 0;
}

uint64_t ZinIrRegSpill::NeedMemCopyCache(ZinIrRegSpill *this, const ZinIrHalParameters *a2, ZinIrOpLayer *a3, unint64_t a4, ZinIrTensor *a5)
{
  result = ZinIrOpLayer::IsPELayer(a2);
  if (result)
  {
    result = (*(*a2 + 608))(a2);
    if (result)
    {
      if ((!RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a2 + 392) || *(a2 + 47)) && (!RawOrShared<ZinTextureLayer>::unwrap_const_ptr(a2 + 392) || *(a2 + 47) != 1))
      {
        if (*(this + 1316))
        {
          return 0;
        }

        result = ZinIrRegSpill::HasMismatchedDualInput(a2, v9);
        if (!result)
        {
          return result;
        }
      }

      if (*(this + 1331))
      {
        goto LABEL_15;
      }

      v10 = *a2;
      if (a3)
      {
        v11 = (*(v10 + 744))(a2);
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      else
      {
        v11 = (*(v10 + 736))(a2);
        if (!v11)
        {
          goto LABEL_15;
        }
      }

      if (ZinIrBroadcastInfo::HasDimension(*(v11 + 88), 3))
      {
        return 1;
      }

LABEL_15:
      MemoryPools = ZinIrContext::GetMemoryPools(a2);
      return MemoryPools[1] - *MemoryPools != 16 || !ZinEngineLayerMirInfo::HasL2Read(*(a2 + 65), a3 == 0);
    }
  }

  return result;
}

uint64_t ZinIrRegSpill::SpillReadWithCopy(ZinIrRegSpill *this, ZinNEBypassLayer *a2, ZinPELayer *a3, const ZinANELayer *a4)
{
  ZinIrLocalRegAlloc::FreeDMABuffers(*(this + 2), a3);
  ZinIrLocalRegAlloc::FreeInputDMABufferForL2CacheCopy(*(this + 2), a2);
  while (!ZinIrLocalRegAlloc::AllocateReadL2CacheCopyTensor(*(this + 2), a2, a3, a4) || !ZinIrLocalRegAlloc::AllocateOptimizedDMABuffer(*(this + 2), a3) || (ZinIrLocalRegAlloc::AllocateInputDMAbufferForL2CacheCopy(*(this + 2), a2) & 1) == 0)
  {
    v8 = *(this + 2);
    v9 = (*(*a2 + 40))(a2, 0);
    ZinIrLocalRegAlloc::RemoveSymbolFromLayerAndTensor(v8, v9);
    ZinIrLocalRegAlloc::FreeDMABuffers(*(this + 2), a3);
    ZinIrLocalRegAlloc::FreeDMABuffers(*(this + 2), a2);
    v10 = *(a3 + 9);
    v23[0] = *(a2 + 9);
    v23[1] = v10;
    v21 = 0;
    v22 = 0;
    v20 = &v21;
    if (ZinIrRegSpill::SpillResidentTensor(this, v23, &v20))
    {
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v20, v21);
      return 3;
    }

    if (!v22)
    {
      ZinAssertImpl("It should have rollbackable tensor");
    }

    v11 = v20;
    if (v20 != &v21)
    {
      do
      {
        RootTensor = ZinIrTensor::GetRootTensor(v11[4]);
        std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(this + 3, &RootTensor, &RootTensor);
        v12 = v11[1];
        if (v12)
        {
          do
          {
            v13 = v12;
            v12 = *v12;
          }

          while (v12);
        }

        else
        {
          do
          {
            v13 = v11[2];
            v14 = *v13 == v11;
            v11 = v13;
          }

          while (!v14);
        }

        v11 = v13;
      }

      while (v13 != &v21);
    }

    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v20, v21);
  }

  v16 = *(ZinIrOpLayer::GetInputTensor(a2, 0) + 160);
  if (!v16 || (v17 = *(v16 + 40), v17 == *(v16 + 48)))
  {
    v18 = 0;
  }

  else
  {
    v18 = *v17;
  }

  (*(*a2 + 488))(a2, 0, v18, *(this + 12));
  return 0;
}

uint64_t ZinIrRegSpill::RevertL2DepOrChain(uint64_t a1, ZinIrTensor *a2, uint64_t **a3)
{
  v37[0] = 0;
  v37[1] = 0;
  v36 = v37;
  ZinIrTensor::GetTensorFamily(&__p, a2);
  v6 = __p;
  v7 = v33;
  if (__p == v33)
  {
LABEL_29:
    v20 = 1;
    goto LABEL_33;
  }

  v34 = 0;
  v35 = 0;
LABEL_3:
  v8 = *v6;
  if (ZinIrRegSpill::IsL2DepOrChain(OutgoingLayers, *v6, &v35, &v34) && ZinIrRegSpill::SpillL2DepOrChain(a1, &v35, &v34, &v36))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    goto LABEL_32;
  }

  OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(v8[19]);
  v10 = *OutgoingLayers;
  v9 = *(OutgoingLayers + 8);
  while (1)
  {
    if (v10 == v9)
    {
      if (++v6 != v7)
      {
        goto LABEL_3;
      }

      goto LABEL_29;
    }

    v11 = *v10;
    if (ZinIrOpLayer::IsANELayer(*v10))
    {
      v12 = (*(*v11 + 40))(v11, 0);
      RootTensor = ZinIrTensor::GetRootTensor(v12);
      if (ZinIrRegSpill::IsChained(RootTensor, RootTensor, &v35, &v34))
      {
        if (ZinIrRegSpill::SpillL2DepOrChain(a1, &v35, &v34, &v36))
        {
          break;
        }
      }
    }

    OutgoingLayers = ZinIrOpLayer::IsANELayer(v11);
    if (!OutgoingLayers)
    {
      goto LABEL_27;
    }

    OutgoingLayers = (*(*v11 + 544))(&v30, v11);
    v15 = v30;
    v14 = v31;
    if (v30)
    {
      v31 = v30;
      operator delete(v30);
    }

    if (v14 - v15 != 16)
    {
      goto LABEL_27;
    }

    OutgoingLayers = (*(*v11 + 544))(&v30, v11);
    v16 = v30;
    v17 = v31;
    if (v30 == v31)
    {
      v19 = 1;
      if (v30)
      {
        goto LABEL_25;
      }
    }

    else
    {
      while (1)
      {
        v18 = ZinIrTensor::GetRootTensor(*v16);
        OutgoingLayers = ZinIrRegSpill::IsChained(v18, v18, &v35, &v34);
        if (OutgoingLayers)
        {
          OutgoingLayers = ZinIrRegSpill::SpillL2DepOrChain(a1, &v35, &v34, &v36);
          if (OutgoingLayers)
          {
            break;
          }
        }

        if (++v16 == v17)
        {
          v19 = 1;
          goto LABEL_24;
        }
      }

      OutgoingLayers = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (OutgoingLayers)
      {
        ZinIrRegSpill::RevertL2DepOrChain(v29, &v29[1]);
      }

      v19 = 0;
LABEL_24:
      v16 = v30;
      if (v30)
      {
LABEL_25:
        v31 = v16;
        operator delete(v16);
      }
    }

    if (!v19)
    {
      goto LABEL_32;
    }

LABEL_27:
    ++v10;
  }

  if (!os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    goto LABEL_32;
  }

LABEL_31:
  ZinIrRegSpill::RevertL2DepOrChain();
LABEL_32:
  v20 = 0;
LABEL_33:
  if (__p)
  {
    v33 = __p;
    operator delete(__p);
  }

  if (v20)
  {
    v21 = v36;
    if (v36 == v37)
    {
LABEL_45:
      if (v21 != v37)
      {
        do
        {
          __p = v21[4];
          if (!ZinIrTensor::HasParent(__p))
          {
            std::__tree<ZinIrTensor *,ZinIrIdComparator<ZinIrTensor *>,std::allocator<ZinIrTensor *>>::__emplace_unique_key_args<ZinIrTensor *,ZinIrTensor * const&>(a3, &__p, &__p);
          }

          v26 = v21[1];
          if (v26)
          {
            do
            {
              v27 = v26;
              v26 = *v26;
            }

            while (v26);
          }

          else
          {
            do
            {
              v27 = v21[2];
              v25 = *v27 == v21;
              v21 = v27;
            }

            while (!v25);
          }

          v21 = v27;
        }

        while (v27 != v37);
      }

      v22 = 0;
    }

    else
    {
      while (1)
      {
        v22 = ZinIrRegSpill::RevertL2DepOrChain(a1, v21[4], a3);
        if (v22)
        {
          break;
        }

        v23 = v21[1];
        if (v23)
        {
          do
          {
            v24 = v23;
            v23 = *v23;
          }

          while (v23);
        }

        else
        {
          do
          {
            v24 = v21[2];
            v25 = *v24 == v21;
            v21 = v24;
          }

          while (!v25);
        }

        v21 = v24;
        if (v24 == v37)
        {
          v21 = v36;
          goto LABEL_45;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinIrRegSpill::RevertL2DepOrChain();
      }
    }
  }

  else
  {
    v22 = 3;
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v36, v37[0]);
  return v22;
}