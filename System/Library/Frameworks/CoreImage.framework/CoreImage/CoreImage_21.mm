void std::__tree<std::__value_type<CI::Node *,CI::roiList>,std::__map_value_compare<CI::Node *,std::__value_type<CI::Node *,CI::roiList>,std::less<CI::Node *>,true>,std::allocator<std::__value_type<CI::Node *,CI::roiList>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<CI::Node *,CI::roiList>,std::__map_value_compare<CI::Node *,std::__value_type<CI::Node *,CI::roiList>,std::less<CI::Node *>,true>,std::allocator<std::__value_type<CI::Node *,CI::roiList>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<CI::Node *,CI::roiList>,std::__map_value_compare<CI::Node *,std::__value_type<CI::Node *,CI::roiList>,std::less<CI::Node *>,true>,std::allocator<std::__value_type<CI::Node *,CI::roiList>>>::destroy(a1, a2[1]);
    v4 = a2[5];
    if (v4)
    {
      a2[6] = v4;
      operator delete(v4);
    }

    operator delete(a2);
  }
}

void CI::SerialRectArray::updateParents(void *this, int a2, uint64_t a3)
{
  v3 = *this + 120 * a2;
  v4 = *(v3 + 32);
  for (i = *(v3 + 40); v4 != i; v4 += 48)
  {
    v7 = *v4;
    if (*v4)
    {
      v8 = *(v4 + 8);
      v9 = CI::Node::rois(*v4);
      v10 = (*(*v7 + 40))(v7);
      CI::SerialRectArray::updateSubGraphLoad(v9, v8, a3, v10);
    }
  }
}

void CI::SerialRectArray::updateSubGraphLoad(CI::SerialRectArray *this, int a2, uint64_t a3, int a4)
{
  v8 = (*this + 120 * a2);
  v10 = v8[13];
  v9 = v8[14];
  if (v10 >= v9)
  {
    v12 = v8[12];
    v13 = v10 - v12;
    v14 = (v10 - v12) >> 3;
    v15 = v14 + 1;
    if ((v14 + 1) >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 2 > v15)
    {
      v15 = v16 >> 2;
    }

    v17 = v16 >= 0x7FFFFFFFFFFFFFF8;
    v18 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v17)
    {
      v18 = v15;
    }

    if (v18)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>((v8 + 12), v18);
    }

    v19 = (v10 - v12) >> 3;
    v20 = (8 * v14);
    v21 = (8 * v14 - 8 * v19);
    *v20 = a3;
    v11 = v20 + 1;
    memcpy(v21, v12, v13);
    v22 = v8[12];
    v8[12] = v21;
    v8[13] = v11;
    v8[14] = 0;
    if (v22)
    {
      operator delete(v22);
    }
  }

  else
  {
    *v10 = a3;
    v11 = v10 + 8;
  }

  v8[13] = v11;
  v23 = (*this + 120 * a2);
  v25 = v23[12];
  v24 = v23[13];
  if (a4 == v24 - v25)
  {
    v26 = v23[11];
    if (v25 != v24)
    {
      v27 = 0;
      v28 = v25;
      do
      {
        v30 = *v28++;
        v29 = v30;
        if (v27 <= v30)
        {
          v27 = v29;
        }
      }

      while (v28 != v24);
      if (v26 <= v27)
      {
        v26 = 0;
        do
        {
          v32 = *v25++;
          v31 = v32;
          if (v26 <= v32)
          {
            v26 = v31;
          }
        }

        while (v25 != v24);
      }
    }

    CI::SerialRectArray::updateParents(this, a2, v26);
  }
}

void CI::_traverse_program_graph(CI::Node *a1, uint64_t a2, CI::liveROIs *a3, CI::liveROIs *a4)
{
  v7 = a2;
  v53 = a1;
  v54 = a2;
  for (i = *a3; i != *(a3 + 1); i += 24)
  {
    if (*i == a1 && *(i + 8) == a2)
    {
      return;
    }
  }

  v10 = CI::Node::rois(a1);
  v51 = 0;
  v52 = 0;
  v50 = 0;
  if ((v7 & 0x80000000) == 0)
  {
    v11 = *v10 + 120 * (v7 & 0x7FFFFFFF);
    v12 = *(v11 + 80);
    v13 = *(v11 + 16);
    v43 = *v11;
    v44 = v13;
    CI::SerialRectArray::recurseSubdivide(&v43, v12, &v50);
    v14 = v50;
    if (v51 != v50)
    {
      v39 = 0;
      v40 = a4;
      do
      {
        __p = 0;
        v48 = 0;
        v49 = 0;
        v38 = (*(*a1 + 40))(a1);
        if (v38)
        {
          v15 = 0;
          do
          {
            *&v43 = a1;
            *(&v43 + 1) = __PAIR64__(v39, v54);
            v44 = v15 | 0xFFFFFFFF00000000;
            v45 = 0;
            v46 = 0;
            v16 = (*(*a1 + 48))(a1, v15);
            v17 = CI::Node::rois(v16);
            CI::SerialRectArray::findParentROI(v17, &v43, &__block_literal_global_242, &v41);
            v18 = v41;
            if (v41 != v42)
            {
              do
              {
                v19 = (*(*a1 + 48))(a1, v15);
                v20 = v19;
                v4 = v4 & 0xFFFFFFFF00000000 | *(v18 + 7);
                v21 = v48;
                if (v48 >= v49)
                {
                  v23 = (v48 - __p) >> 4;
                  v24 = v23 + 1;
                  if ((v23 + 1) >> 60)
                  {
                    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
                  }

                  v25 = v49 - __p;
                  if ((v49 - __p) >> 3 > v24)
                  {
                    v24 = v25 >> 3;
                  }

                  if (v25 >= 0x7FFFFFFFFFFFFFF0)
                  {
                    v26 = 0xFFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v26 = v24;
                  }

                  if (v26)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::roiKey>>(&__p, v26);
                  }

                  v27 = (16 * v23);
                  *v27 = v19;
                  v27[1] = v4;
                  v22 = 16 * v23 + 16;
                  v28 = (16 * v23 - (v48 - __p));
                  memcpy(v27 - (v48 - __p), __p, v48 - __p);
                  v29 = __p;
                  __p = v28;
                  v48 = v22;
                  v49 = 0;
                  if (v29)
                  {
                    operator delete(v29);
                  }

                  a4 = v40;
                }

                else
                {
                  *v48 = v19;
                  *(v21 + 1) = v4;
                  v22 = (v21 + 16);
                }

                v48 = v22;
                CI::_traverse_program_graph(v20, v4, a3, a4);
                v30 = v18[1];
                if (v30)
                {
                  do
                  {
                    v31 = v30;
                    v30 = *v30;
                  }

                  while (v30);
                }

                else
                {
                  do
                  {
                    v31 = v18[2];
                    v32 = *v31 == v18;
                    v18 = v31;
                  }

                  while (!v32);
                }

                v18 = v31;
              }

              while (v31 != v42);
            }

            std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v41, v42[0]);
            v15 = (v15 + 1);
          }

          while (v15 != v38);
        }

        CI::liveROIs::add_roi(a3, &v53);
        v33 = CI::liveROIs::currentMemory(a3);
        v34 = CI::liveROIs::currentMemory(a4);
        if (a4 != a3 && v33 > v34)
        {
          std::vector<CI::roiTuple>::__assign_with_size[abi:nn200100]<CI::roiTuple*,CI::roiTuple*>(a4, *a3, *(a3 + 1), 0xAAAAAAAAAAAAAAABLL * ((*(a3 + 1) - *a3) >> 3));
        }

        v35 = __p;
        v36 = v48;
        if (__p != v48)
        {
          do
          {
            v37 = *v35;
            v35 += 16;
            v43 = v37;
            CI::liveROIs::unref_roi(a3, &v43);
          }

          while (v35 != v36);
          v35 = __p;
        }

        if (v35)
        {
          v48 = v35;
          operator delete(v35);
        }

        v14 = v50;
        ++v39;
      }

      while (v39 < (v51 - v50) >> 5);
    }

    if (v14)
    {
      v51 = v14;
      operator delete(v14);
    }
  }
}

void CI::liveROIs::add_roi(uint64_t a1, uint64_t a2)
{
  v4 = CI::Node::rois(*a2);
  v5 = *(a2 + 8);
  v6 = *v4 + 120 * v5;
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);
  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = *a2;
  if (*a1 == v10)
  {
    goto LABEL_6;
  }

  v12 = *a1;
  while (*v12 != v11 || *(v12 + 2) != v5)
  {
    v12 += 24;
    if (v12 == v10)
    {
      goto LABEL_6;
    }
  }

  if (v12 == v10)
  {
LABEL_6:
    v13 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v8) >> 4);
    v14 = *(a1 + 16);
    if (v10 >= v14)
    {
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v10 - v9) >> 3);
      v17 = v16 + 1;
      if (v16 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v14 - v9) >> 3);
      if (2 * v18 > v17)
      {
        v17 = 2 * v18;
      }

      if (v18 >= 0x555555555555555)
      {
        v19 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v19 = v17;
      }

      if (v19)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<CI::roiTuple>>(a1, v19);
      }

      v20 = 24 * v16;
      *v20 = v11;
      *(v20 + 8) = v5;
      *(v20 + 16) = v13;
      v15 = 24 * v16 + 24;
      v21 = *(a1 + 8) - *a1;
      v22 = (24 * v16 - v21);
      memcpy(v22, *a1, v21);
      v23 = *a1;
      *a1 = v22;
      *(a1 + 8) = v15;
      *(a1 + 16) = 0;
      if (v23)
      {
        operator delete(v23);
      }
    }

    else
    {
      *v10 = v11;
      *(v10 + 2) = v5;
      v15 = (v10 + 24);
      *(v10 + 2) = v13;
    }

    *(a1 + 8) = v15;
  }
}

void *CI::liveROIs::unref_roi(void *result, uint64_t a2)
{
  v2 = result;
  v4 = *result;
  v3 = result[1];
  if (*result == v3)
  {
LABEL_5:
    v4 = result[1];
  }

  else
  {
    while (*v4 != *a2 || *(v4 + 8) != *(a2 + 8))
    {
      v4 += 24;
      if (v4 == v3)
      {
        goto LABEL_5;
      }
    }
  }

  v5 = *(v4 + 16) - 1;
  *(v4 + 16) = v5;
  if (!v5)
  {
    v6 = v3 - (v4 + 24);
    if (v3 != v4 + 24)
    {
      result = memmove(v4, (v4 + 24), v3 - (v4 + 24));
    }

    v2[1] = v4 + v6;
  }

  return result;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<CI::roiTuple>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void **std::vector<CI::roiTuple>::__assign_with_size[abi:nn200100]<CI::roiTuple*,CI::roiTuple*>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 3) < a4)
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

    if (a4 <= 0xAAAAAAAAAAAAAAALL)
    {
      v9 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
      v10 = 2 * v9;
      if (2 * v9 <= a4)
      {
        v10 = a4;
      }

      if (v9 >= 0x555555555555555)
      {
        v11 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v11 = v10;
      }

      std::vector<CI::roiTuple>::__vallocate[abi:nn200100](v6, v11);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }

  v12 = result[1];
  v13 = v12 - v8;
  if (0xAAAAAAAAAAAAAAABLL * ((v12 - v8) >> 3) >= a4)
  {
    v16 = a3 - __src;
    if (v16)
    {
      result = memmove(*result, __src, v16);
    }

    v15 = &v8[v16];
  }

  else
  {
    v14 = &__src[v13];
    if (v12 != v8)
    {
      result = memmove(*result, __src, v13);
      v12 = v6[1];
    }

    if (a3 != v14)
    {
      result = memmove(v12, v14, a3 - v14);
    }

    v15 = &v12[a3 - v14];
  }

  v6[1] = v15;
  return result;
}

void std::vector<CI::roiTuple>::__vallocate[abi:nn200100](void *a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<CI::roiTuple>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void CI::NodeToNodeMap::~NodeToNodeMap(CI::NodeToNodeMap *this)
{
  CI::NodeToNodeMap::~NodeToNodeMap(this);

  JUMPOUT(0x19EAF5590);
}

{
  *this = &unk_1F103CE08;
  v2 = this + 8;
  v3 = *(this + 1);
  v4 = this + 16;
  if (v3 != this + 16)
  {
    do
    {
      v5 = *(v3 + 4);
      if (v5)
      {
        CI::Object::unref(v5);
      }

      v6 = *(v3 + 5);
      if (v6)
      {
        CI::Object::unref(v6);
      }

      v7 = *(v3 + 1);
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
          v8 = *(v3 + 2);
          v9 = *v8 == v3;
          v3 = v8;
        }

        while (!v9);
      }

      v3 = v8;
    }

    while (v8 != v4);
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(v2, *(this + 2));
}

void ___ZN2CI11ObjectCacheINS_11ProgramNodeEyLb0EE6insertEyPS1_j_block_invoke(void *a1)
{
  v2 = a1[4];
  ++v2[1];
  v3 = a1 + 5;
  v4 = std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::find<CI::ProgramDigest>(v2 + 2, a1 + 5);
  if (!v4)
  {
    if (v2[5] == *v2)
    {
      CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::evict(v2);
    }

    *&v6 = a1 + 6;
    *(&v6 + 1) = v2 + 1;
    v7 = a1 + 7;
    v8 = v3;
    std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>>>::__emplace_unique_impl<std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<CI::ProgramNode* const&,unsigned long long &,unsigned int const&>>((v2 + 2), &std::piecewise_construct, &v8, &v6);
  }

  v4[4] = v2[1];
  v5 = a1[6];
  if (v5)
  {

    CI::Object::unref(v5);
  }
}

uint64_t CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::evict(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 32);
    do
    {
      if (v2[4] < v1[4])
      {
        v1 = v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::remove((a1 + 16), v1, v5);
  return std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,void *>>>>::~unique_ptr[abi:nn200100](v5, v3);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    if (*(a1 + 16) == 1)
    {
      CI::ObjectCache<CI::ProgramNode,unsigned long long,false>::Entry::~Entry(v3 + 24, a2);
    }

    operator delete(v3);
  }

  return a1;
}

uint64_t ___ZN2CIL22dump_program_graph_preEPNS_7ContextEPKNS_17RenderDestinationEPKcPNS_4NodeERK6CGRectNS_11PixelFormatE_block_invoke(uint64_t a1, FILE *__stream)
{
  if (*(a1 + 32))
  {
    fprintf(__stream, "[%s] ", *(a1 + 40));
  }

  fwrite("program graph ", 0xEuLL, 1uLL, __stream);
  if (*(*(a1 + 48) + 344))
  {
    fwrite("prepare ", 8uLL, 1uLL, __stream);
  }

  fprintf(__stream, "%s ", *(a1 + 56));
  v4 = (*(**(a1 + 48) + 272))() - 1;
  v5 = "";
  if (v4 <= 2)
  {
    v5 = off_1E75C8040[v4];
  }

  v6 = (*(**(a1 + 48) + 312))(*(a1 + 48));
  v7 = (*(**(a1 + 48) + 280))();
  v8 = *(a1 + 48);
  v10 = *(v8 + 236);
  v9 = (v8 + 236);
  if (v10)
  {
    v11 = ":";
  }

  else
  {
    v11 = "";
  }

  fprintf(__stream, "(%s%s context %d%s%s frame %lu tile %lu) ", v5, v6, v7, v11, v9, *(v9 - 84), *(v9 - 44));
  if ((*(**(a1 + 48) + 16))(*(a1 + 48)) == 85)
  {
    v12 = CI::MetalContext::queue(*(a1 + 48));
    fprintf(__stream, "commandQueue=%p ", v12);
  }

  v13 = *(a1 + 88);
  if (!v13)
  {
    v14 = *(a1 + 64);
    if (v14)
    {
      v13 = *(v14 + 32);
    }

    else
    {
      v13 = 0;
    }
  }

  v15 = CI::name_for_format(v13);
  fprintf(__stream, "format=%s roi=", v15);
  CI::fprintf(__stream, v16, **(a1 + 72));
  fwrite(" = \n", 4uLL, 1uLL, __stream);
  v17 = CI_TEMP_DIR();
  v18 = *(a1 + 80);
  v20 = CI_PRINT_TREE_graphviz(v17, v19);
  fprintf(__stream, "  %s/%s.%s\n", v17, v18, v20);

  return fputc(10, __stream);
}

uint64_t ___ZN2CIL19print_program_graphEPKNS_7ContextEmmPKNS_17RenderDestinationEdPKNS_8TileTaskEPKcPNS_4NodeERK6CGRectNS_11PixelFormatE_block_invoke(uint64_t a1, FILE *__stream)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = *(v4 + 16);
    if (v5)
    {
      fputc(91, __stream);
      CI::fprintf(__stream, v5, v6);
      fwrite("] ", 2uLL, 1uLL, __stream);
    }
  }

  fwrite("program graph ", 0xEuLL, 1uLL, __stream);
  if (*(*(a1 + 40) + 344))
  {
    fwrite("prepare ", 8uLL, 1uLL, __stream);
  }

  fprintf(__stream, "%s ", *(a1 + 48));
  v7 = *(a1 + 32);
  if (v7)
  {
    if ((*(*v7 + 40))(v7))
    {
      v8 = (*(**(a1 + 32) + 40))(*(a1 + 32));
      fprintf(__stream, "%p ", v8);
    }

    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = (*(*v9 + 48))(v9);
      v11 = (*(**(a1 + 32) + 56))(*(a1 + 32));
      fprintf(__stream, "%ldx%ld ", v10, v11);
    }
  }

  v12 = (*(**(a1 + 40) + 272))(*(a1 + 40)) - 1;
  v13 = "";
  if (v12 <= 2)
  {
    v13 = off_1E75C8040[v12];
  }

  v14 = (*(**(a1 + 40) + 312))(*(a1 + 40));
  v15 = (*(**(a1 + 40) + 280))();
  v16 = *(a1 + 40);
  v18 = *(v16 + 236);
  v17 = (v16 + 236);
  if (v18)
  {
    v19 = ":";
  }

  else
  {
    v19 = "";
  }

  fprintf(__stream, "(%s%s context %d%s%s frame %lu tile %lu) ", v13, v14, v15, v19, v17, *(a1 + 56), *(a1 + 64));
  if ((*(**(a1 + 40) + 16))(*(a1 + 40)) == 85)
  {
    v20 = CI::MetalContext::queue(*(a1 + 40));
    fprintf(__stream, "commandQueue=%p ", v20);
  }

  v21 = *(a1 + 104);
  if (!v21)
  {
    v22 = *(a1 + 32);
    if (v22)
    {
      v21 = *(v22 + 32);
    }

    else
    {
      v21 = 0;
    }
  }

  v23 = CI::name_for_format(v21);
  fprintf(__stream, "format=%s roi=", v23);
  CI::fprintf(__stream, v24, **(a1 + 72));
  v25 = *(a1 + 80);
  if (v25)
  {
    v26 = CI::TileTask::executionNanoSec(v25);
    v27 = CI::TileTask::executionCycles(*(a1 + 80));
    v28 = CI::TileTask::compileTime(*(a1 + 80));
    v29 = CI::TileTask::compileWaitTime(*(a1 + 80));
    fprintf(__stream, " frameTime=%dms", (*(a1 + 88) * 1000.0 + 0.5));
    SurfaceCachePeakNonVolatileSize = GetSurfaceCachePeakNonVolatileSize();
    fprintf(__stream, " peakNonVolatile=%ldMB", SurfaceCachePeakNonVolatileSize >> 20);
    if (v26)
    {
      v31 = v26 / 1000000.0 + 0.5;
    }

    else
    {
      v31 = CI::TileTask::executionTime(*(a1 + 80)) * 1000.0 + 0.5;
    }

    fprintf(__stream, " executionTime=%dms", v31);
    v33 = CI::TileTask::pixelsProcessed(*(a1 + 80));
    fprintf(__stream, " pixels=%dMP", (v33 / 1000000.0 + 0.5));
    v34 = CI::TileTask::fillPixels(*(a1 + 80));
    fprintf(__stream, " filled=%dMP", (v34 / 1000000.0 + 0.5));
    fprintf(__stream, " compileTime=%.1fms", v28 * 1000.0);
    fprintf(__stream, " compileWait=%.1fms", v29 * 1000.0);
    if (v27)
    {
      fprintf(__stream, " kernelCycles=%d", v27);
    }

    fwrite(" = \n", 4uLL, 1uLL, __stream);
    CI::Node::print_graph(*(a1 + 96), __stream, *(a1 + 80) + 88);
  }

  else
  {
    fwrite(" = \n", 4uLL, 1uLL, __stream);
    v32 = *(a1 + 96);
    memset(v36, 0, sizeof(v36));
    v37 = 1065353216;
    CI::Node::print_graph(v32, __stream, v36);
    std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::~__hash_table(v36);
  }

  return fputc(10, __stream);
}

uint64_t ___ZN2CIL23dump_program_graph_postEPNS_10RenderTaskE_block_invoke(uint64_t a1, FILE *a2)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = *(v4 + 96);
  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  *buffer = 0u;
  v41 = 0u;
  if (v5)
  {
    CFStringGetCString(v5, buffer, 256, 0x8000100u);
  }

  else
  {
    strlcpy(buffer, (*(v4 + 24) + 236), 0x100uLL);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  *__str = 0u;
  v25 = 0u;
  v6 = getpid();
  if (buffer[0])
  {
    v7 = "_";
  }

  else
  {
    v7 = "";
  }

  v8 = (*(**(*(a1 + 32) + 24) + 280))();
  snprintf(__str, 0x100uLL, "%d%s%s_%d_%lu_program_graph", v6, v7, buffer, v8, *(*(a1 + 32) + 32));
  if (v5)
  {
    fprintf(a2, "[%s] ", buffer);
  }

  fprintf(a2, "program graph file %s ", *(*(a1 + 32) + 16));
  v9 = (*(**(*(a1 + 32) + 24) + 312))();
  v10 = (*(**(*(a1 + 32) + 24) + 280))();
  v11 = *(a1 + 32);
  v13 = *(v11 + 24);
  v12 = *(v11 + 32);
  v15 = *(v13 + 236);
  v14 = (v13 + 236);
  if (v15)
  {
    v16 = ":";
  }

  else
  {
    v16 = "";
  }

  fprintf(a2, "(%s%s context %d%s%s frame %lu) ", "", v9, v10, v16, v14, v12);
  v17 = CI::name_for_format(*(*(a1 + 32) + 80));
  fprintf(a2, "format=%s roi=", v17);
  CI::fprintf(a2, v18, *(*(a1 + 32) + 48));
  fwrite(" = \n", 4uLL, 1uLL, a2);
  v19 = CI_TEMP_DIR();
  v21 = CI_PRINT_TREE_graphviz(v19, v20);
  fprintf(a2, "  %s/%s.%s\n", v19, __str, v21);
  v22 = *(a1 + 32);
  if (CI::format_for_graphviz(void)::onceToken != -1)
  {
    CI::prepare_initial_graph();
  }

  CI::RenderTask::dump_for_graphviz(v22, __str, CI::format_for_graphviz(void)::fmt);
  return fputc(10, a2);
}

void ___ZN2CIL13_image_renderEPKcPNS_7ContextEPNS_5ImageE6CGRectNS_11PixelFormatEmRK7CGPoint_block_invoke(uint64_t a1, CI::ProgramNode *a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v6.origin.x = a3;
  v6.origin.y = a4;
  v6.size.width = a5;
  v6.size.height = a6;
  CI::Context::render(*(a1 + 32), a2, &v6);
}

uint64_t ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE4findEy_block_invoke(void *a1)
{
  v2 = a1[5];
  result = std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::find<CI::ProgramDigest>((v2 + 16), a1 + 6);
  if (result)
  {
    v4 = *(v2 + 8) + 1;
    *(v2 + 8) = v4;
    *(result + 32) = v4;
    result = *(result + 24);
    if (result)
    {
      result = CI::Object::ref(result);
    }

    *(*(a1[4] + 8) + 24) = result;
  }

  return result;
}

uint64_t std::map<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>::insert[abi:nn200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::__tree_node<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,void *> *,long>>>(uint64_t result, unsigned int *a2, unsigned int *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::__map_value_compare<CI::ImageIndex,std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::less<CI::ImageIndex>,true>,std::allocator<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>>>::__emplace_hint_unique_key_args<CI::ImageIndex,std::pair<CI::ImageIndex const,CI::ImageDigestForRenderGraphCache> const&>(v5, (v5 + 8), v4 + 8, v4 + 2);
      v6 = *(v4 + 1);
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
          v7 = *(v4 + 2);
          v8 = *v7 == v4;
          v4 = v7;
        }

        while (!v8);
      }

      v4 = v7;
    }

    while (v7 != a3);
  }

  return result;
}

uint64_t std::__tree<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::__map_value_compare<CI::ImageIndex,std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::less<CI::ImageIndex>,true>,std::allocator<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>>>::__emplace_hint_unique_key_args<CI::ImageIndex,std::pair<CI::ImageIndex const,CI::ImageDigestForRenderGraphCache> const&>(uint64_t **a1, uint64_t *a2, unsigned int *a3, _OWORD *a4)
{
  v4 = *std::__tree<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::__map_value_compare<CI::ImageIndex,std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::less<CI::ImageIndex>,true>,std::allocator<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>>>::__find_equal<CI::ImageIndex>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t *std::__tree<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::__map_value_compare<CI::ImageIndex,std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>,std::less<CI::ImageIndex>,true>,std::allocator<std::__value_type<CI::ImageIndex,CI::ImageDigestForRenderGraphCache>>>::__find_equal<CI::ImageIndex>(uint64_t **a1, uint64_t *a2, uint64_t **a3, uint64_t *a4, unsigned int *a5)
{
  v5 = (a1 + 1);
  if (a1 + 1 == a2 || (v6 = *a5, v7 = *(a2 + 8), *a5 < v7))
  {
    v8 = *a2;
    if (*a1 == a2)
    {
      v10 = a2;
LABEL_17:
      if (v8)
      {
        *a3 = v10;
        return v10 + 1;
      }

      else
      {
        *a3 = a2;
        return a2;
      }
    }

    if (v8)
    {
      v9 = *a2;
      do
      {
        v10 = v9;
        v9 = *(v9 + 8);
      }

      while (v9);
    }

    else
    {
      v13 = a2;
      do
      {
        v10 = v13[2];
        v14 = *v10 == v13;
        v13 = v10;
      }

      while (v14);
    }

    v15 = *a5;
    if (*(v10 + 8) < *a5)
    {
      goto LABEL_17;
    }

    v16 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v17 = v16;
          v18 = *(v16 + 32);
          if (v15 >= v18)
          {
            break;
          }

          v16 = *v17;
          v5 = v17;
          if (!*v17)
          {
            goto LABEL_29;
          }
        }

        if (v18 >= v15)
        {
          break;
        }

        v5 = v17 + 1;
        v16 = v17[1];
      }

      while (v16);
    }

    else
    {
      v17 = (a1 + 1);
    }

LABEL_29:
    *a3 = v17;
    return v5;
  }

  if (v7 >= v6)
  {
    *a3 = a2;
    *a4 = a2;
    return a4;
  }

  v11 = a2[1];
  if (v11)
  {
    v12 = a2[1];
    do
    {
      a4 = v12;
      v12 = *v12;
    }

    while (v12);
  }

  else
  {
    v19 = a2;
    do
    {
      a4 = v19[2];
      v14 = *a4 == v19;
      v19 = a4;
    }

    while (!v14);
  }

  if (a4 != v5 && v6 >= *(a4 + 8))
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = *(v20 + 32);
          if (v6 >= v22)
          {
            break;
          }

          v20 = *v21;
          v5 = v21;
          if (!*v21)
          {
            goto LABEL_48;
          }
        }

        if (v22 >= v6)
        {
          break;
        }

        v5 = v21 + 1;
        v20 = v21[1];
      }

      while (v20);
    }

    else
    {
      v21 = (a1 + 1);
    }

LABEL_48:
    *a3 = v21;
    return v5;
  }

  if (v11)
  {
    *a3 = a4;
  }

  else
  {
    *a3 = a2;
    return a2 + 1;
  }

  return a4;
}

void ___ZN2CI11ObjectCacheINS_4NodeEyLb0EE6insertEyPS1_j_block_invoke(void *a1)
{
  v2 = a1[4];
  ++v2[1];
  v3 = a1 + 5;
  v4 = std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::find<CI::ProgramDigest>(v2 + 2, a1 + 5);
  if (!v4)
  {
    if (v2[5] == *v2)
    {
      CI::ObjectCache<CI::Node,unsigned long long,false>::evict(v2);
    }

    *&v6 = a1 + 6;
    *(&v6 + 1) = v2 + 1;
    v7 = a1 + 7;
    v8 = v3;
    std::__hash_table<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>>>::__emplace_unique_impl<std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<CI::Node* const&,unsigned long long &,unsigned int const&>>((v2 + 2), &std::piecewise_construct, &v8, &v6);
  }

  v4[4] = v2[1];
  v5 = a1[6];
  if (v5)
  {

    CI::Object::unref(v5);
  }
}

uint64_t CI::ObjectCache<CI::Node,unsigned long long,false>::evict(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = *(a1 + 32);
    do
    {
      if (v2[4] < v1[4])
      {
        v1 = v2;
      }

      v2 = *v2;
    }

    while (v2);
  }

  std::__hash_table<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::__unordered_map_hasher<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::hash<CI::ProgramDigest>,std::equal_to<CI::ProgramDigest>,true>,std::__unordered_map_equal<CI::ProgramDigest,std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>,std::equal_to<CI::ProgramDigest>,std::hash<CI::ProgramDigest>,true>,std::allocator<std::__hash_value_type<CI::ProgramDigest,CI::ObjectCache<CI::MainProgram,CI::ProgramDigest,false>::Entry>>>::remove((a1 + 16), v1, v5);
  return std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,void *>>>>::~unique_ptr[abi:nn200100](v5, v3);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CI::ObjectCache<CI::Node,unsigned long long,false>::Entry>,void *>>>>::~unique_ptr[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    if (*(a1 + 16) == 1)
    {
      CI::ObjectCache<CI::Node,unsigned long long,false>::Entry::~Entry(v3 + 24, a2);
    }

    operator delete(v3);
  }

  return a1;
}

uint64_t *CI::ShaderBuilder::ShaderBuilder(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = a4;
  CI::FoslAdapter::FoslAdapter((a1 + 3), a2, a4, a5, a6, a7);
  a1[36] = 0;
  x_stream_init(a1 + 37);
  return a1;
}

void CI::ShaderBuilder::convert_tree(CI::ShaderBuilder *this, size_t a2, int a3)
{
  v6 = malloc_type_calloc(0x400uLL, 1uLL, 0x100004077774924uLL);
  memset(v6, 48, a2);
  *(this + 36) = CI::FoslAdapter::convertTree((this + 24), *(this + 1), v6, a2, a3);

  free(v6);
}

char *CI::ShaderBuilder::construct_shader(CI::ShaderBuilder *this, const char *a2)
{
  v270 = *MEMORY[0x1E69E9840];
  v3 = CI_VERBOSE_SIGNPOSTS();
  if (v3)
  {
    v5 = ci_signpost_log_render(v3, v4);
    v6 = *(*(this + 2) + 36) | ((*(**this + 280))(*this) << 32);
    if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v5))
    {
      LOWORD(buf) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v6, "construct_shader", &unk_19CFBCBAE, &buf, 2u);
    }
  }

  v7 = (*(**this + 280))(*this);
  TimerBase::TimerBase(&buf, v7, *(*(this + 2) + 36), "construct_shader", 4u);
  x_stream_grow(this + 37, 0x1000uLL);
  if (*(*(this + 2) + 137) == 1)
  {
    if ((*(**this + 16))() == 82)
    {
      v8 = "static constant float4 _ci_constants = (float4)(1.0,0.0,1.0/257.0,256.0/257.0);\n";
      v9 = this + 296;
      v10 = 80;
    }

    else if ((*(**this + 16))() == 84)
    {
      v8 = "const lowp vec4 _ci_constants = vec4(1.0,0.0,1.0/257.0,256.0/257.0);\n";
      v9 = this + 296;
      v10 = 69;
    }

    else
    {
      if ((*(**this + 16))() != 85)
      {
        goto LABEL_13;
      }

      v8 = "static constant metal::float4 _ci_constants = metal::float4(1.0,0.0,1.0/257.0,256.0/257.0);\n";
      v9 = this + 296;
      v10 = 92;
    }

    x_stream_write(v9, v8, v10);
  }

LABEL_13:
  if ((*(**this + 16))() == 82)
  {
    x_stream_write(this + 296, "#define writeImage(c, p, _dc) write_imagef(_outputTexture, (int2)p, c)\n", 0x47uLL);
    x_stream_write(this + 296, "#define writeImagePlane(c, p, _dc) write_imagef(_outputTexturePlane, (int2)p, c)\n", 0x51uLL);
    v11 = "#define writeCoord(_dc) (float2)_writeLoc\n\n";
    v12 = this + 296;
    v13 = 43;
LABEL_19:
    x_stream_write(v12, v11, v13);
    goto LABEL_20;
  }

  if ((*(**this + 16))() == 84)
  {
    x_stream_write(this + 296, "#define writeImage(c, p) gl_FragData[0] = c\n", 0x2CuLL);
    x_stream_write(this + 296, "#define writeImagePlane(c, p) gl_FragData[1] = c\n", 0x31uLL);
    v11 = "#define writeCoord() p0\n\n";
    v12 = this + 296;
    v13 = 25;
    goto LABEL_19;
  }

  if ((*(**this + 16))() == 85)
  {
    x_stream_write(this + 296, "#define writeImage(c, p, _dc) _outputTexture.write(c, static_cast<uint2>(p))\n", 0x4DuLL);
    x_stream_write(this + 296, "#define writeImagePlane(c, p, _dc) _outputTexturePlane.write(c, static_cast<uint2>(p))\n", 0x57uLL);
    v11 = "#define writeCoord(_dc) static_cast<float2>(_wc)\n\n";
    v12 = this + 296;
    v13 = 50;
    goto LABEL_19;
  }

LABEL_20:
  CI::FoslAdapter::addLibraryFunctions((this + 24), aCopyright2022A);
  (*(**this + 16))();
  v14 = CI::FoslAdapter::constructShader((this + 24), a2, *(this + 36));
  std::string::basic_string[abi:nn200100]<0>(&__str, v14);
  if ((*(**this + 16))() == 85 && fosl_filter_interface_version() <= 0)
  {
    std::string::basic_string[abi:nn200100]<0>(v265, "gid += static_cast<uint2>(params.outputRect.xy * step(params.outputRect.w, 0.0));");
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

    v17 = HIBYTE(v267);
    if (v267 >= 0)
    {
      v18 = v265;
    }

    else
    {
      v18 = *v265;
    }

    if (v267 >= 0)
    {
      v19 = HIBYTE(v267);
    }

    else
    {
      v19 = v266;
    }

    if (v19)
    {
      if (size >= v19)
      {
        v20 = p_str + size;
        v21 = *v18;
        v22 = p_str;
        do
        {
          v23 = size - v19;
          if (v23 == -1)
          {
            break;
          }

          v24 = memchr(v22, v21, v23 + 1);
          if (!v24)
          {
            break;
          }

          v25 = v24;
          if (!memcmp(v24, v18, v19))
          {
            if (v25 != v20)
            {
              v26 = v25 - p_str;
              if (v25 - p_str != -1)
              {
                goto LABEL_42;
              }
            }

            break;
          }

          v22 = (v25 + 1);
          size = v20 - (v25 + 1);
        }

        while (size >= v19);
      }
    }

    else
    {
      v26 = 0;
LABEL_42:
      std::string::erase(&__str, v26, v19);
      std::string::insert(&__str, v26, "gid.y += lessThan(params.outputRect.w, 0) * ((-params.outputRect.w-1)-2*gid.y);\n  gid += static_cast<uint2>(params.outputRect.xy);", 0x82uLL);
      v17 = HIBYTE(v267);
    }

    if (v17 < 0)
    {
      operator delete(*v265);
    }
  }

  v248 = this;
  if ((*(**this + 16))() != 84)
  {
    goto LABEL_371;
  }

  v27 = *(this + 2);
  if ((*(v27 + 136) & 1) != 0 || *(v27 + 137) != 1)
  {
    goto LABEL_371;
  }

  v28 = v265;
  std::string::basic_string[abi:nn200100]<0>(v265, "sampler2D _i");
  v247 = 0;
  v29 = 0;
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v30 = &__str;
  }

  else
  {
    v30 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v31 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v31 = __str.__r_.__value_.__l.__size_;
  }

  if (v267 >= 0)
  {
    v32 = HIBYTE(v267);
  }

  else
  {
    v28 = *v265;
    v32 = v266;
  }

  v33 = v30 + v31;
  while (!v32)
  {
LABEL_68:
    if (v29 != -1)
    {
      ++v247;
      v29 += v32;
      if (v31 >= v29)
      {
        continue;
      }
    }

    goto LABEL_70;
  }

  v34 = v31 - v29;
  if ((v31 - v29) >= v32)
  {
    v35 = v30 + v29;
    v36 = *v28;
    do
    {
      if (v34 - v32 == -1)
      {
        break;
      }

      v37 = memchr(v35, v36, v34 - v32 + 1);
      if (!v37)
      {
        break;
      }

      v38 = v37;
      if (!memcmp(v37, v28, v32))
      {
        if (v38 == v33)
        {
          break;
        }

        v29 = v38 - v30;
        goto LABEL_68;
      }

      v35 = v38 + 1;
      v34 = v33 - (v38 + 1);
    }

    while (v34 >= v32);
  }

LABEL_70:
  std::string::basic_string[abi:nn200100]<0>(&v260, "uniform highp sampler2D _samplers [");
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &__str;
  }

  else
  {
    v39 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v40 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v40 = __str.__r_.__value_.__l.__size_;
  }

  if (v261 >= 0)
  {
    v41 = &v260;
  }

  else
  {
    v41 = v260;
  }

  if (v261 >= 0)
  {
    v42 = HIBYTE(v261);
  }

  else
  {
    v42 = v261;
  }

  if (!v42)
  {
    v45 = 0;
LABEL_91:
    v47 = v39 + v40;
    v48 = v40 - v45;
    if ((v40 - v45) >= 1)
    {
      v49 = v39 + v45;
      do
      {
        v50 = memchr(v49, 59, v48);
        if (!v50)
        {
          break;
        }

        if (*v50 == 59)
        {
          goto LABEL_97;
        }

        v49 = v50 + 1;
        v48 = v47 - v49;
      }

      while (v47 - v49 > 0);
    }

    v50 = v39 + v40;
LABEL_97:
    if (v50 == v47)
    {
      v46 = -1;
    }

    else
    {
      v46 = v50 - v39;
    }

    goto LABEL_100;
  }

  v43 = v39 + v40;
  if (v40 >= v42)
  {
    v233 = *v41;
    v234 = v40;
    v235 = v39;
    do
    {
      v236 = v234 - v42;
      if (v236 == -1)
      {
        break;
      }

      v237 = memchr(v235, v233, v236 + 1);
      if (!v237)
      {
        break;
      }

      v44 = v237;
      if (!memcmp(v237, v41, v42))
      {
        goto LABEL_85;
      }

      v235 = (v44 + 1);
      v234 = v43 - (v44 + 1);
    }

    while (v234 >= v42);
  }

  v44 = v39 + v40;
LABEL_85:
  if (v44 == v43)
  {
    v45 = -1;
  }

  else
  {
    v45 = v44 - v39;
  }

  if (v40 >= v45)
  {
    goto LABEL_91;
  }

  v46 = -1;
LABEL_100:
  std::string::basic_string(&v259, &__str, v45 + v42, v46 - (v45 + v42), &__p);
  v51 = std::stoi(&v259, 0, 10);
  std::string::erase(&__str, v45, v46 - v45 + 1);
  std::to_string(&v269, v51 + v247);
  v52 = std::string::insert(&v269, 0, "uniform highp sampler2D _samplers [", 0x23uLL);
  v53 = v52->__r_.__value_.__r.__words[2];
  *&v257.__r_.__value_.__l.__data_ = *&v52->__r_.__value_.__l.__data_;
  v257.__r_.__value_.__r.__words[2] = v53;
  v52->__r_.__value_.__l.__size_ = 0;
  v52->__r_.__value_.__r.__words[2] = 0;
  v52->__r_.__value_.__r.__words[0] = 0;
  v54 = std::string::append(&v257, "];", 2uLL);
  v55 = v54->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v54->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v55;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
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
    v57 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v57 = __p.__r_.__value_.__l.__size_;
  }

  std::string::insert(&__str, v45, p_p, v57);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v269.__r_.__value_.__l.__data_);
  }

  std::to_string(&v257, v51);
  v58 = std::string::insert(&v257, 0, "uniform highp mat3 _transforms [", 0x20uLL);
  v59 = v58->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v58->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v59;
  v58->__r_.__value_.__l.__size_ = 0;
  v58->__r_.__value_.__r.__words[2] = 0;
  v58->__r_.__value_.__r.__words[0] = 0;
  v60 = std::string::append(&__p, "];", 2uLL);
  v61 = v60->__r_.__value_.__r.__words[0];
  v269.__r_.__value_.__r.__words[0] = v60->__r_.__value_.__l.__size_;
  *(v269.__r_.__value_.__r.__words + 7) = *(&v60->__r_.__value_.__r.__words[1] + 7);
  v62 = HIBYTE(v60->__r_.__value_.__r.__words[2]);
  v60->__r_.__value_.__l.__size_ = 0;
  v60->__r_.__value_.__r.__words[2] = 0;
  v60->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v261) < 0)
  {
    operator delete(v260);
  }

  v260 = v61;
  *&v261 = v269.__r_.__value_.__r.__words[0];
  *(&v261 + 7) = *(v269.__r_.__value_.__r.__words + 7);
  HIBYTE(v261) = v62;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  v63 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v64 = &__str;
  }

  else
  {
    v64 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v63 = __str.__r_.__value_.__l.__size_;
  }

  if (v261 >= 0)
  {
    v65 = &v260;
  }

  else
  {
    v65 = v260;
  }

  if (v261 >= 0)
  {
    v66 = HIBYTE(v261);
  }

  else
  {
    v66 = v261;
  }

  if (v66)
  {
    v67 = v64 + v63;
    if (v63 >= v66)
    {
      v238 = *v65;
      v239 = v64;
      do
      {
        v240 = v63 - v66;
        if (v240 == -1)
        {
          break;
        }

        v241 = memchr(v239, v238, v240 + 1);
        if (!v241)
        {
          break;
        }

        v68 = v241;
        if (!memcmp(v241, v65, v66))
        {
          goto LABEL_132;
        }

        v239 = (v68 + 1);
        v63 = v67 - (v68 + 1);
      }

      while (v63 >= v66);
    }

    v68 = v67;
LABEL_132:
    if (v68 == v67)
    {
      v69 = -1;
    }

    else
    {
      v69 = v68 - v64;
    }
  }

  else
  {
    v69 = 0;
  }

  std::string::erase(&__str, v69, v66);
  std::to_string(&v269, v51 + v247);
  v70 = std::string::insert(&v269, 0, "uniform highp mat3 _transforms [", 0x20uLL);
  v71 = v70->__r_.__value_.__r.__words[2];
  *&v257.__r_.__value_.__l.__data_ = *&v70->__r_.__value_.__l.__data_;
  v257.__r_.__value_.__r.__words[2] = v71;
  v70->__r_.__value_.__l.__size_ = 0;
  v70->__r_.__value_.__r.__words[2] = 0;
  v70->__r_.__value_.__r.__words[0] = 0;
  v72 = std::string::append(&v257, "];", 2uLL);
  v73 = v72->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v72->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v73;
  v72->__r_.__value_.__l.__size_ = 0;
  v72->__r_.__value_.__r.__words[2] = 0;
  v72->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v74 = &__p;
  }

  else
  {
    v74 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v75 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v75 = __p.__r_.__value_.__l.__size_;
  }

  std::string::insert(&__str, v69, v74, v75);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v269.__r_.__value_.__l.__data_);
  }

  std::to_string(&v257, v51);
  v76 = std::string::insert(&v257, 0, "uniform highp vec4 _extents [", 0x1DuLL);
  v77 = v76->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v76->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v77;
  v76->__r_.__value_.__l.__size_ = 0;
  v76->__r_.__value_.__r.__words[2] = 0;
  v76->__r_.__value_.__r.__words[0] = 0;
  v78 = std::string::append(&__p, "];", 2uLL);
  v79 = v78->__r_.__value_.__r.__words[0];
  v269.__r_.__value_.__r.__words[0] = v78->__r_.__value_.__l.__size_;
  *(v269.__r_.__value_.__r.__words + 7) = *(&v78->__r_.__value_.__r.__words[1] + 7);
  v80 = HIBYTE(v78->__r_.__value_.__r.__words[2]);
  v78->__r_.__value_.__l.__size_ = 0;
  v78->__r_.__value_.__r.__words[2] = 0;
  v78->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v261) < 0)
  {
    operator delete(v260);
  }

  v260 = v79;
  *&v261 = v269.__r_.__value_.__r.__words[0];
  *(&v261 + 7) = *(v269.__r_.__value_.__r.__words + 7);
  HIBYTE(v261) = v80;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  v81 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v82 = &__str;
  }

  else
  {
    v82 = __str.__r_.__value_.__r.__words[0];
  }

  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v81 = __str.__r_.__value_.__l.__size_;
  }

  if (v261 >= 0)
  {
    v83 = &v260;
  }

  else
  {
    v83 = v260;
  }

  if (v261 >= 0)
  {
    v84 = HIBYTE(v261);
  }

  else
  {
    v84 = v261;
  }

  if (v84)
  {
    v85 = v82 + v81;
    if (v81 >= v84)
    {
      v242 = *v83;
      v243 = v82;
      do
      {
        v244 = v81 - v84;
        if (v244 == -1)
        {
          break;
        }

        v245 = memchr(v243, v242, v244 + 1);
        if (!v245)
        {
          break;
        }

        v86 = v245;
        if (!memcmp(v245, v83, v84))
        {
          goto LABEL_168;
        }

        v243 = (v86 + 1);
        v81 = v85 - (v86 + 1);
      }

      while (v81 >= v84);
    }

    v86 = v85;
LABEL_168:
    if (v86 == v85)
    {
      v87 = -1;
    }

    else
    {
      v87 = v86 - v82;
    }
  }

  else
  {
    v87 = 0;
  }

  std::string::erase(&__str, v87, v84);
  std::to_string(&v269, v51 + v247);
  v88 = std::string::insert(&v269, 0, "uniform highp vec4 _extents [", 0x1DuLL);
  v89 = v88->__r_.__value_.__r.__words[2];
  *&v257.__r_.__value_.__l.__data_ = *&v88->__r_.__value_.__l.__data_;
  v257.__r_.__value_.__r.__words[2] = v89;
  v88->__r_.__value_.__l.__size_ = 0;
  v88->__r_.__value_.__r.__words[2] = 0;
  v88->__r_.__value_.__r.__words[0] = 0;
  v90 = std::string::append(&v257, "];", 2uLL);
  v91 = v90->__r_.__value_.__r.__words[2];
  *&__p.__r_.__value_.__l.__data_ = *&v90->__r_.__value_.__l.__data_;
  __p.__r_.__value_.__r.__words[2] = v91;
  v90->__r_.__value_.__l.__size_ = 0;
  v90->__r_.__value_.__r.__words[2] = 0;
  v90->__r_.__value_.__r.__words[0] = 0;
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v92 = &__p;
  }

  else
  {
    v92 = __p.__r_.__value_.__r.__words[0];
  }

  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v93 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v93 = __p.__r_.__value_.__l.__size_;
  }

  std::string::insert(&__str, v87, v92, v93);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v257.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v269.__r_.__value_.__l.__data_);
  }

  if (v247)
  {
    v94 = 0;
    while (1)
    {
      std::string::basic_string[abi:nn200100]<0>(&__p, "uniform lowp sampler2D _i");
      v95 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__str : __str.__r_.__value_.__r.__words[0];
      v96 = (__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__str.__r_.__value_.__r.__words[2]) : __str.__r_.__value_.__l.__size_;
      v97 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v98 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      v249 = v94;
      if (!v98)
      {
        break;
      }

      v99 = v95 + v96;
      if (v96 >= v98)
      {
        v102 = v97->__r_.__value_.__s.__data_[0];
        v103 = v96;
        v104 = v95;
        do
        {
          v105 = v103 - v98;
          if (v105 == -1)
          {
            break;
          }

          v106 = memchr(v104, v102, v105 + 1);
          if (!v106)
          {
            break;
          }

          v100 = v106;
          if (!memcmp(v106, v97, v98))
          {
            goto LABEL_208;
          }

          v104 = (v100 + 1);
          v103 = v99 - (v100 + 1);
        }

        while (v103 >= v98);
        v100 = v95 + v96;
      }

      else
      {
        v100 = v95 + v96;
      }

LABEL_208:
      if (v100 == v99)
      {
        v101 = -1;
      }

      else
      {
        v101 = v100 - v95;
      }

      if (v96 >= v101)
      {
        goto LABEL_213;
      }

      v107 = -1;
LABEL_222:
      std::string::basic_string(&v257, &__str, v101 + v98, v107 - (v101 + v98), &v269);
      v112 = std::stoi(&v257, 0, 10);
      std::string::erase(&__str, v101, v107 - v101 + 1);
      std::to_string(&v269, v112);
      v113 = std::string::insert(&v269, 0, "_i", 2uLL);
      v114 = v113->__r_.__value_.__r.__words[0];
      v268.__r_.__value_.__r.__words[0] = v113->__r_.__value_.__l.__size_;
      *(v268.__r_.__value_.__r.__words + 7) = *(&v113->__r_.__value_.__r.__words[1] + 7);
      v115 = HIBYTE(v113->__r_.__value_.__r.__words[2]);
      v113->__r_.__value_.__r.__words[0] = 0;
      v113->__r_.__value_.__l.__size_ = 0;
      v113->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v114;
      __p.__r_.__value_.__l.__size_ = v268.__r_.__value_.__r.__words[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v268.__r_.__value_.__r.__words + 7);
      *(&__p.__r_.__value_.__s + 23) = v115;
      if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v269.__r_.__value_.__l.__data_);
        v115 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v114 = __p.__r_.__value_.__r.__words[0];
      }

      v116 = 0;
      v117 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v118 = &__str;
      }

      else
      {
        v118 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v117 = __str.__r_.__value_.__l.__size_;
      }

      LOBYTE(v119) = (v115 & 0x80u) != 0;
      v120 = __p.__r_.__value_.__l.__size_;
      if ((v115 & 0x80u) == 0)
      {
        v121 = &__p;
      }

      else
      {
        v121 = v114;
      }

      if ((v115 & 0x80u) == 0)
      {
        v122 = v115;
      }

      else
      {
        v122 = __p.__r_.__value_.__l.__size_;
      }

      while (!v122)
      {
LABEL_247:
        if (v116 != -1)
        {
          if (v119)
          {
            v129 = v120;
          }

          else
          {
            v129 = v115;
          }

          std::string::erase(&__str, v116, v129);
          std::to_string(&v256, v112);
          v130 = std::string::insert(&v256, 0, "_samplers[", 0xAuLL);
          v131 = v130->__r_.__value_.__r.__words[2];
          *&v268.__r_.__value_.__l.__data_ = *&v130->__r_.__value_.__l.__data_;
          v268.__r_.__value_.__r.__words[2] = v131;
          v130->__r_.__value_.__l.__size_ = 0;
          v130->__r_.__value_.__r.__words[2] = 0;
          v130->__r_.__value_.__r.__words[0] = 0;
          v132 = std::string::append(&v268, "]", 1uLL);
          v133 = v132->__r_.__value_.__r.__words[2];
          *&v269.__r_.__value_.__l.__data_ = *&v132->__r_.__value_.__l.__data_;
          v269.__r_.__value_.__r.__words[2] = v133;
          v132->__r_.__value_.__l.__size_ = 0;
          v132->__r_.__value_.__r.__words[2] = 0;
          v132->__r_.__value_.__r.__words[0] = 0;
          if ((v269.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v134 = &v269;
          }

          else
          {
            v134 = v269.__r_.__value_.__r.__words[0];
          }

          if ((v269.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v135 = HIBYTE(v269.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v135 = v269.__r_.__value_.__l.__size_;
          }

          std::string::insert(&__str, v116, v134, v135);
          if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v269.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v268.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v256.__r_.__value_.__l.__data_);
          }

          v136 = HIBYTE(v267);
          if (v267 < 0)
          {
            v136 = v266;
          }

          v116 += v136;
          v117 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v118 = &__str;
          }

          else
          {
            v118 = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v117 = __str.__r_.__value_.__l.__size_;
          }

          v115 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v119 = SHIBYTE(__p.__r_.__value_.__r.__words[2]) >> 63;
          v120 = __p.__r_.__value_.__l.__size_;
          v121 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v122 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? SHIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          if (v117 >= v116)
          {
            continue;
          }
        }

        goto LABEL_277;
      }

      v123 = v117 - v116;
      if ((v117 - v116) >= v122)
      {
        v124 = v118 + v117;
        v125 = v118 + v116;
        v126 = v121->__r_.__value_.__s.__data_[0];
        do
        {
          if (v123 - v122 == -1)
          {
            break;
          }

          v127 = memchr(v125, v126, v123 - v122 + 1);
          if (!v127)
          {
            break;
          }

          v128 = v127;
          if (!memcmp(v127, v121, v122))
          {
            if (v128 == v124)
            {
              break;
            }

            v116 = v128 - v118;
            goto LABEL_247;
          }

          v125 = v128 + 1;
          v123 = v124 - (v128 + 1);
        }

        while (v123 >= v122);
      }

LABEL_277:
      std::to_string(&v269, v112);
      v137 = std::string::insert(&v269, 0, "uniform highp mat3 _t", 0x15uLL);
      v138 = v137->__r_.__value_.__r.__words[0];
      v268.__r_.__value_.__r.__words[0] = v137->__r_.__value_.__l.__size_;
      *(v268.__r_.__value_.__r.__words + 7) = *(&v137->__r_.__value_.__r.__words[1] + 7);
      v139 = HIBYTE(v137->__r_.__value_.__r.__words[2]);
      v137->__r_.__value_.__r.__words[0] = 0;
      v137->__r_.__value_.__l.__size_ = 0;
      v137->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v138;
      __p.__r_.__value_.__l.__size_ = v268.__r_.__value_.__r.__words[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v268.__r_.__value_.__r.__words + 7);
      *(&__p.__r_.__value_.__s + 23) = v139;
      if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v269.__r_.__value_.__l.__data_);
        v139 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v138 = __p.__r_.__value_.__r.__words[0];
      }

      v140 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v141 = &__str;
      }

      else
      {
        v141 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v140 = __str.__r_.__value_.__l.__size_;
      }

      if ((v139 & 0x80u) == 0)
      {
        v142 = &__p;
      }

      else
      {
        v142 = v138;
      }

      if ((v139 & 0x80u) == 0)
      {
        v143 = v139;
      }

      else
      {
        v143 = __p.__r_.__value_.__l.__size_;
      }

      if (v143)
      {
        v144 = v141 + v140;
        if (v140 >= v143)
        {
          v147 = v142->__r_.__value_.__s.__data_[0];
          v148 = v141;
          do
          {
            v149 = v140 - v143;
            if (v149 == -1)
            {
              break;
            }

            v150 = memchr(v148, v147, v149 + 1);
            if (!v150)
            {
              break;
            }

            v145 = v150;
            if (!memcmp(v150, v142, v143))
            {
              goto LABEL_302;
            }

            v148 = (v145 + 1);
            v140 = v144 - (v145 + 1);
          }

          while (v140 >= v143);
          v145 = v144;
        }

        else
        {
          v145 = v141 + v140;
        }

LABEL_302:
        if (v145 == v144)
        {
          v146 = -1;
        }

        else
        {
          v146 = v145 - v141;
        }
      }

      else
      {
        v146 = 0;
      }

      std::string::erase(&__str, v146, v143 + 1);
      std::to_string(&v269, v112);
      v151 = std::string::insert(&v269, 0, "_t", 2uLL);
      v152 = v151->__r_.__value_.__r.__words[0];
      v268.__r_.__value_.__r.__words[0] = v151->__r_.__value_.__l.__size_;
      *(v268.__r_.__value_.__r.__words + 7) = *(&v151->__r_.__value_.__r.__words[1] + 7);
      v153 = HIBYTE(v151->__r_.__value_.__r.__words[2]);
      v151->__r_.__value_.__r.__words[0] = 0;
      v151->__r_.__value_.__l.__size_ = 0;
      v151->__r_.__value_.__r.__words[2] = 0;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      __p.__r_.__value_.__r.__words[0] = v152;
      __p.__r_.__value_.__l.__size_ = v268.__r_.__value_.__r.__words[0];
      *(&__p.__r_.__value_.__r.__words[1] + 7) = *(v268.__r_.__value_.__r.__words + 7);
      *(&__p.__r_.__value_.__s + 23) = v153;
      if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v269.__r_.__value_.__l.__data_);
        v153 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        v152 = __p.__r_.__value_.__r.__words[0];
      }

      v154 = 0;
      v155 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v156 = &__str;
      }

      else
      {
        v156 = __str.__r_.__value_.__r.__words[0];
      }

      if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v155 = __str.__r_.__value_.__l.__size_;
      }

      v157 = (v153 & 0x80u) != 0;
      v158 = __p.__r_.__value_.__l.__size_;
      if ((v153 & 0x80u) == 0)
      {
        v159 = &__p;
      }

      else
      {
        v159 = v152;
      }

      if ((v153 & 0x80u) == 0)
      {
        v160 = v153;
      }

      else
      {
        v160 = __p.__r_.__value_.__l.__size_;
      }

      while (!v160)
      {
LABEL_330:
        if (v154 != -1)
        {
          if (v157)
          {
            v167 = v158;
          }

          else
          {
            v167 = v153;
          }

          std::string::erase(&__str, v154, v167);
          std::to_string(&v256, v112);
          v168 = std::string::insert(&v256, 0, "_transforms[", 0xCuLL);
          v169 = v168->__r_.__value_.__r.__words[2];
          *&v268.__r_.__value_.__l.__data_ = *&v168->__r_.__value_.__l.__data_;
          v268.__r_.__value_.__r.__words[2] = v169;
          v168->__r_.__value_.__l.__size_ = 0;
          v168->__r_.__value_.__r.__words[2] = 0;
          v168->__r_.__value_.__r.__words[0] = 0;
          v170 = std::string::append(&v268, "]", 1uLL);
          v171 = v170->__r_.__value_.__r.__words[2];
          *&v269.__r_.__value_.__l.__data_ = *&v170->__r_.__value_.__l.__data_;
          v269.__r_.__value_.__r.__words[2] = v171;
          v170->__r_.__value_.__l.__size_ = 0;
          v170->__r_.__value_.__r.__words[2] = 0;
          v170->__r_.__value_.__r.__words[0] = 0;
          if ((v269.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v172 = &v269;
          }

          else
          {
            v172 = v269.__r_.__value_.__r.__words[0];
          }

          if ((v269.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v173 = HIBYTE(v269.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v173 = v269.__r_.__value_.__l.__size_;
          }

          std::string::insert(&__str, v154, v172, v173);
          if (SHIBYTE(v269.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v269.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v268.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v268.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v256.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v256.__r_.__value_.__l.__data_);
          }

          v174 = HIBYTE(v267);
          if (v267 < 0)
          {
            v174 = v266;
          }

          v154 += v174;
          v155 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v156 = &__str;
          }

          else
          {
            v156 = __str.__r_.__value_.__r.__words[0];
          }

          if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v155 = __str.__r_.__value_.__l.__size_;
          }

          v153 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          v157 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0;
          v158 = __p.__r_.__value_.__l.__size_;
          v159 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v160 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          if (v155 >= v154)
          {
            continue;
          }
        }

        goto LABEL_360;
      }

      v161 = v155 - v154;
      if ((v155 - v154) >= v160)
      {
        v162 = v156 + v155;
        v163 = v156 + v154;
        v164 = v159->__r_.__value_.__s.__data_[0];
        do
        {
          if (v161 - v160 == -1)
          {
            break;
          }

          v165 = memchr(v163, v164, v161 - v160 + 1);
          if (!v165)
          {
            break;
          }

          v166 = v165;
          if (!memcmp(v165, v159, v160))
          {
            if (v166 == v162)
            {
              break;
            }

            v154 = v166 - v156;
            goto LABEL_330;
          }

          v163 = v166 + 1;
          v161 = v162 - (v166 + 1);
        }

        while (v161 >= v160);
      }

LABEL_360:
      if (SHIBYTE(v257.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v257.__r_.__value_.__l.__data_);
        LOBYTE(v153) = *(&__p.__r_.__value_.__s + 23);
      }

      this = v248;
      if ((v153 & 0x80) != 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v94 = v249 + 1;
      if (v249 + 1 == v247)
      {
        goto LABEL_365;
      }
    }

    v101 = 0;
LABEL_213:
    v108 = v95 + v96;
    v109 = v96 - v101;
    if ((v96 - v101) >= 1)
    {
      v110 = v95 + v101;
      do
      {
        v111 = memchr(v110, 59, v109);
        if (!v111)
        {
          break;
        }

        if (*v111 == 59)
        {
          goto LABEL_219;
        }

        v110 = v111 + 1;
        v109 = v108 - v110;
      }

      while (v108 - v110 > 0);
    }

    v111 = v95 + v96;
LABEL_219:
    if (v111 == v108)
    {
      v107 = -1;
    }

    else
    {
      v107 = v111 - v95;
    }

    goto LABEL_222;
  }

LABEL_365:
  if (SHIBYTE(v259.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v259.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v261) < 0)
  {
    operator delete(v260);
  }

  if (SHIBYTE(v267) < 0)
  {
    operator delete(*v265);
  }

LABEL_371:
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v175 = &__str;
  }

  else
  {
    v175 = __str.__r_.__value_.__r.__words[0];
  }

  if ((*(**this + 16))() == 82)
  {
    v176 = "write_only image2d_t out";
  }

  else if ((*(**this + 16))() == 85)
  {
    v176 = "texture2d<float, access::write> outputTexture";
  }

  else
  {
    v176 = 0;
  }

  if ((*(**this + 16))() == 82)
  {
    v177 = "write_imagef";
  }

  else if ((*(**this + 16))() == 84)
  {
    v177 = "gl_FragColor";
  }

  else if ((*(**this + 16))() == 85)
  {
    v177 = "outputTexture.write";
  }

  else
  {
    v177 = 0;
  }

  v178 = *(this + 1);
  if ((*(*v178 + 240))(v178))
  {
    do
    {
      v178 = (*(*v178 + 48))(v178, 0);
    }

    while (((*(*v178 + 240))(v178) & 1) != 0);
  }

  v179 = (*(*v178 + 16))(v178);
  v180 = *v178;
  if (v179 == 55)
  {
    v181 = (*(v180 + 424))(v178);
    if ((v181 - 54) >= 8 && v181 != 46)
    {
      goto LABEL_422;
    }

    v182 = (*(*v178 + 424))(v178);
    v184 = CI::Kernel::builtin(v182, v183);
  }

  else
  {
    if ((*(v180 + 16))(v178) != 57)
    {
      goto LABEL_422;
    }

    v184 = v178[6];
    if (*(v184 + 4))
    {
      goto LABEL_422;
    }
  }

  v185 = strstr(v175, "writeImage");
  if (v185 > v175)
  {
    v186 = v185;
    x_stream_write(this + 296, v175, v185 - v175);
    x_stream_write(this + 296, "_STUB_", 6uLL);
    v175 = v186;
  }

  v187 = strstr(v175, "writeImagePlane");
  if (v187 > v175)
  {
    v188 = v187;
    x_stream_write(this + 296, v175, v187 - v175);
    x_stream_write(this + 296, "_STUB_", 6uLL);
    v175 = v188;
  }

  v189 = strstr(v175, "writeCoord");
  if (v189 > v175)
  {
    v190 = v189;
    x_stream_write(this + 296, v175, v189 - v175);
    x_stream_write(this + 296, "_STUB_", 6uLL);
    v175 = v190;
  }

  if ((*(**this + 16))() != 84)
  {
    *v265 = 0;
    v266 = 0;
    v267 = 0;
    v260 = 0;
    v261 = 0uLL;
    if ((*(**this + 16))() == 82)
    {
      v259.__r_.__value_.__r.__words[0] = "write_only image2d_t _outputTexture";
      std::vector<char const*>::push_back[abi:nn200100](v265, &v259);
      v259.__r_.__value_.__r.__words[0] = "write_only image2d_t _outputTexturePlane";
      std::vector<char const*>::push_back[abi:nn200100](v265, &v259);
      v259.__r_.__value_.__r.__words[0] = "int2 _writeLoc";
      std::vector<char const*>::push_back[abi:nn200100](v265, &v259);
      v259.__r_.__value_.__r.__words[0] = "out";
      std::vector<char const*>::push_back[abi:nn200100](&v260, &v259);
      v259.__r_.__value_.__r.__words[0] = "out1";
      std::vector<char const*>::push_back[abi:nn200100](&v260, &v259);
      v191 = "_writeLoc";
    }

    else
    {
      if ((*(**this + 16))() != 85)
      {
LABEL_406:
        v192 = v184[3];
        __dst = 0;
        v255 = 0;
        v253 = 0;
        if (v266 != *v265)
        {
          std::vector<char const*>::__vallocate[abi:nn200100](&v253, &v266[-*v265] >> 3);
        }

        this = v248;
        appended = CI::append_arguments_to_kernel(v248 + 296, v175, v192, &v253);
        if (v253)
        {
          __dst = v253;
          operator delete(v253);
        }

        v194 = strstr(appended, a2);
        v195 = strstr(v194, v176);
        if (v195 > appended)
        {
          v196 = v195;
          x_stream_write(v248 + 296, appended, v195 - appended);
          x_stream_printf(v248 + 296, "%s,", v197, v198, v199, v200, v201, v202, v176);
          x_stream_printf(v248 + 296, " %s1,", v203, v204, v205, v206, v207, v208, v176);
          v209 = strlen(v176);
          appended = strchr(&v196[v209], 44) + 1;
        }

        v210 = v184[3];
        v251 = 0;
        v252 = 0;
        v250 = 0;
        if (v261 != v260)
        {
          std::vector<char const*>::__vallocate[abi:nn200100](&v250, (v261 - v260) >> 3);
        }

        v175 = CI::append_arguments_to_kernel(v248 + 296, appended, v210, &v250);
        if (v250)
        {
          v251 = v250;
          operator delete(v250);
        }

        if (v260)
        {
          *&v261 = v260;
          operator delete(v260);
        }

        if (*v265)
        {
          v266 = *v265;
          operator delete(*v265);
        }

        goto LABEL_420;
      }

      v259.__r_.__value_.__r.__words[0] = "texture2d<float, access::write> _outputTexture";
      std::vector<char const*>::push_back[abi:nn200100](v265, &v259);
      v259.__r_.__value_.__r.__words[0] = "texture2d<float, access::write> _outputTexturePlane";
      std::vector<char const*>::push_back[abi:nn200100](v265, &v259);
      v259.__r_.__value_.__r.__words[0] = "uint2 _wc";
      std::vector<char const*>::push_back[abi:nn200100](v265, &v259);
      v259.__r_.__value_.__r.__words[0] = "outputTexture";
      std::vector<char const*>::push_back[abi:nn200100](&v260, &v259);
      v259.__r_.__value_.__r.__words[0] = "outputTexture1";
      std::vector<char const*>::push_back[abi:nn200100](&v260, &v259);
      v191 = "_wc";
    }

    v259.__r_.__value_.__r.__words[0] = v191;
    std::vector<char const*>::push_back[abi:nn200100](&v260, &v259);
    goto LABEL_406;
  }

LABEL_420:
  v211 = strstr(v175, v177);
  if (v211 > v175)
  {
    v212 = v211;
    x_stream_write(this + 296, v175, v211 - v175);
    x_stream_write(this + 296, "//", 2uLL);
    v175 = v212;
  }

LABEL_422:
  if ((*(**this + 16))() != 85 || !CI::MetalContext::use_imageblocks_for_format(*this, *(*(this + 2) + 140)))
  {
LABEL_436:
    if (!v175)
    {
      goto LABEL_438;
    }

    goto LABEL_437;
  }

  v213 = strstr(v175, "kernel void");
  x_stream_write(this + 296, v175, v213 - v175);
  x_stream_write(this + 296, "struct PixelData {\n  float4 c", 0x1DuLL);
  if (CI_ENABLE_METAL_IMAGEBLOCKS() == 2)
  {
    x_stream_write(this + 296, " [[color(0)]]", 0xDuLL);
  }

  x_stream_write(this + 296, ";\n};\n\n", 6uLL);
  v214 = strstr(v213, v176);
  if (v214 > v213)
  {
    v215 = v214;
    x_stream_write(this + 296, v213, v214 - v213);
    x_stream_write(this + 296, "imageblock<PixelData> imageBlock, ushort2 lid [[ thread_position_in_threadgroup ]],\n", 0x54uLL);
    v213 = v215;
  }

  v216 = strstr(v213, "if (gid.x >= abs(params.outputRect.z) || gid.y >= abs(params.outputRect.w)) return;");
  if (v216 > v213)
  {
    v217 = v216;
    x_stream_write(this + 296, v213, v216 - v213);
    x_stream_write(this + 296, "if (any(static_cast<float2>(gid) < params.outputRect.xy)) return;\n  ", 0x44uLL);
    x_stream_write(this + 296, "if (any(static_cast<float2>(gid) >= params.outputRect.xy + abs(params.outputRect.zw))) return;", 0x5EuLL);
    v213 = v217 + 83;
  }

  v218 = strstr(v213, " + params.outputRect.xy");
  if (v218 > v213)
  {
    v219 = v218;
    x_stream_write(this + 296, v213, v218 - v213);
    v213 = v219 + 23;
  }

  v220 = strstr(v213, v177);
  if (v220 <= v213)
  {
    v175 = v213;
    goto LABEL_436;
  }

  v221 = v220;
  x_stream_write(this + 296, v213, v220 - v213);
  if (CI_ENABLE_METAL_IMAGEBLOCKS() == 2)
  {
    x_stream_write(this + 296, "\n  PixelData output = { ", 0x18uLL);
    v222 = &v221[strlen(v177) + 1];
    v223 = strchr(v221, 44);
    x_stream_write(this + 296, v222, v223 - v222);
    x_stream_write(this + 296, " };\n", 4uLL);
    x_stream_write(this + 296, "  imageBlock.write(output, lid);\n", 0x21uLL);
    v175 = (strchr(v223, 59) + 2);
LABEL_437:
    v224 = strlen(v175);
    x_stream_write(this + 296, v175, v224);
    goto LABEL_438;
  }

  x_stream_write(this + 296, "\n  threadgroup_imageblock PixelData* output = imageBlock.data(lid);\n", 0x44uLL);
  x_stream_write(this + 296, "  output->c = ", 0xEuLL);
  v232 = &v221[strlen(v177) + 1];
  v175 = strchr(v221, 44);
  x_stream_write(this + 296, v232, v175 - v232);
  x_stream_write(this + 296, ";\n", 2uLL);
  x_stream_write(this + 296, "  threadgroup_barrier(mem_flags::mem_threadgroup_imageblock);\n", 0x3EuLL);
  x_stream_write(this + 296, "  if (lid.x == 0 && lid.y == 0)\n", 0x20uLL);
  x_stream_write(this + 296, "    outputTexture.write(imageBlock.slice(output->c)", 0x33uLL);
  if (v175)
  {
    goto LABEL_437;
  }

LABEL_438:
  v225 = x_stream_get(this + 37);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  v226 = CI_VERBOSE_SIGNPOSTS();
  if (v226)
  {
    v228 = ci_signpost_log_render(v226, v227);
    v229 = v264;
    if (v264 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
    {
      v230 = v228;
      if (os_signpost_enabled(v228))
      {
        *v265 = 0;
        _os_signpost_emit_with_name_impl(&dword_19CC36000, v230, OS_SIGNPOST_INTERVAL_END, v229, "construct_shader", &unk_19CFBCBAE, v265, 2u);
      }
    }
  }

  TimerBase::~TimerBase(&buf, v227);
  return v225;
}

void std::vector<char const*>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

char *CI::append_arguments_to_kernel(uint64_t a1, char *__s1, char *__s2, void *a4)
{
  v5 = __s1;
  v7 = strstr(__s1, __s2);
  if (v7 > v5)
  {
    v8 = strchr(v7, 41);
    x_stream_write(a1, v5, v8 - v5);
    v15 = a4[1] - *a4;
    if (v15)
    {
      v16 = 0;
      v17 = v15 >> 3;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      do
      {
        x_stream_printf(a1, ", %s", v9, v10, v11, v12, v13, v14, *(*a4 + 8 * v16++));
      }

      while (v18 != v16);
    }

    return v8;
  }

  return v5;
}

void CI::FoslAdapter::~FoslAdapter(CI::FoslAdapter *this)
{
  fosl_filter_destroyGraph(*(this + 3));
  v2 = *(this + 22);
  if (v2 != (this + 184))
  {
    do
    {
      free(*(v2 + 5));
      v3 = *(v2 + 1);
      if (v3)
      {
        do
        {
          v4 = v3;
          v3 = *v3;
        }

        while (v3);
      }

      else
      {
        do
        {
          v4 = *(v2 + 2);
          v5 = *v4 == v2;
          v2 = v4;
        }

        while (!v5);
      }

      v2 = v4;
    }

    while (v4 != (this + 184));
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 232, *(this + 30));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 176, *(this + 23));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 152, *(this + 20));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 128, *(this + 17));
  for (i = 0; i != -48; i -= 24)
  {
    std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + i + 104, *(this + i + 112));
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 56, *(this + 8));
  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(this + 32, *(this + 5));
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

void std::vector<char const*>::__vallocate[abi:nn200100](void *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:nn200100]<std::allocator<char const*>>(a1, a2);
  }

  std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
}

uint64_t CI::gReleaseSurfaceBlockMap(CI *this)
{
  if ((atomic_load_explicit(byte_1ED7C4670, memory_order_acquire) & 1) == 0)
  {
    CI::gReleaseSurfaceBlockMap();
  }

  return _MergedGlobals_13;
}

uint64_t CI::SurfaceCacheEntry::SurfaceCacheEntry(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, int a7, int a8, const void *a9, NSObject *a10, const void *a11)
{
  v13 = a5;
  v56[3] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F103C4D0;
  *(a1 + 8) = 1;
  *(a1 + 16) = &unk_1F103CF48;
  atomic_fetch_add(&dword_1ED7C47D8[77], 1u);
  *a1 = &unk_1F103CE28;
  *(a1 + 16) = &unk_1F103CE60;
  *(a1 + 112) = a3;
  *(a1 + 120) = a4;
  v18 = *a6;
  *(a1 + 152) = *(a6 + 2);
  *(a1 + 136) = v18;
  *info = *a6;
  *&info[16] = *(a6 + 2);
  CachedSurface = CreateCachedSurface(a3, a4, 0x20uLL, a5, info, 0);
  *(a1 + 24) = CachedSurface;
  if (CachedSurface)
  {
    CachedSurface = IOSurfaceGetPixelFormat(CachedSurface);
    v21 = *(a1 + 24);
    *(a1 + 128) = CachedSurface;
    if (v21)
    {
      goto LABEL_52;
    }
  }

  else
  {
    *(a1 + 128) = 0;
  }

  v22 = a7;
  v23 = a8;
  v54 = bswap32(v13);
  v24 = ci_logger_render(CachedSurface, v20);
  v25 = os_log_type_enabled(v24, OS_LOG_TYPE_FAULT);
  if (v13 < 0x29)
  {
    if (!v25)
    {
      goto LABEL_9;
    }

    *info = 134218496;
    *&info[4] = a3;
    *&info[12] = 2048;
    *&info[14] = a4;
    *&info[22] = 2048;
    v56[0] = v54;
    v26 = "Failed to allocate IOSurface (%zux%zu format:%ld)";
    v27 = v24;
    v28 = 32;
  }

  else
  {
    if (!v25)
    {
      goto LABEL_9;
    }

    *info = 134218754;
    *&info[4] = a3;
    *&info[12] = 2048;
    *&info[14] = a4;
    *&info[22] = 1040;
    LODWORD(v56[0]) = 4;
    WORD2(v56[0]) = 2080;
    *(v56 + 6) = &v54;
    v26 = "Failed to allocate IOSurface (%zux%zu format:%.4s)";
    v27 = v24;
    v28 = 38;
  }

  _os_log_fault_impl(&dword_19CC36000, v27, OS_LOG_TYPE_FAULT, v26, info, v28);
LABEL_9:
  v29 = mach_timebase_info(info);
  CurrentCacheVolatileSize = CI::GetCurrentCacheVolatileSize(v29);
  v31 = atomic_load(&CI::gCacheSize);
  v32 = v31 - CurrentCacheVolatileSize;
  v34 = ci_logger_render(CurrentCacheVolatileSize, v33);
  if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
  {
    CI::SurfaceCacheEntry::SurfaceCacheEntry(v32, v34);
  }

  v35 = CI::gCacheList;
  a8 = v23;
  if (CI::gCacheList)
  {
    v35 = *(CI::gCacheList + 16);
  }

  a7 = v22;
  v36 = atomic_load(&CI::gCacheSize);
  if (v36 >= 0x80000001)
  {
    v37 = vcvtd_n_f64_u64(v36, 0x1EuLL);
LABEL_19:
    v36 = llround(v37);
    goto LABEL_20;
  }

  if (v36 > 0x200000)
  {
    v37 = vcvtd_n_f64_u64(v36, 0x14uLL);
    goto LABEL_19;
  }

  if (v36 >= 0x801)
  {
    v37 = vcvtd_n_f64_u64(v36, 0xAuLL);
    goto LABEL_19;
  }

LABEL_20:
  v38 = atomic_load(&CI::gCacheSize);
  if (v38 <= 0x80000000)
  {
    if (v38 <= 0x200000)
    {
      if (v38 <= 0x800)
      {
        v39 = "B";
      }

      else
      {
        v39 = "KB";
      }
    }

    else
    {
      v39 = "MB";
    }
  }

  else
  {
    v39 = "GB";
  }

  if (v32 <= 0x80000000)
  {
    if (v32 <= 0x200000)
    {
      v40 = llround(vcvtd_n_f64_u64(v32, 0xAuLL));
      if (v32 <= 0x800)
      {
        v40 = v32;
      }

      v41 = "B";
      if (v32 > 0x800)
      {
        v41 = "KB";
      }
    }

    else
    {
      v40 = llround(vcvtd_n_f64_u64(v32, 0x14uLL));
      v41 = "MB";
    }
  }

  else
  {
    v40 = llround(vcvtd_n_f64_u64(v32, 0x1EuLL));
    v41 = "GB";
  }

  v42 = CI::gCacheSizePeak;
  if (CI::gCacheSizePeak <= 0x80000000)
  {
    if (CI::gCacheSizePeak <= 0x200000)
    {
      v44 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0xAuLL));
      if (CI::gCacheSizePeak > 0x800)
      {
        v42 = v44;
      }

      v43 = "B";
      if (CI::gCacheSizePeak > 0x800)
      {
        v43 = "KB";
      }
    }

    else
    {
      v42 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0x14uLL));
      v43 = "MB";
    }
  }

  else
  {
    v42 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0x1EuLL));
    v43 = "GB";
  }

  v45 = CI::gCacheNonVolatileSizePeak;
  if (CI::gCacheNonVolatileSizePeak <= 0x80000000)
  {
    if (CI::gCacheNonVolatileSizePeak <= 0x200000)
    {
      v47 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0xAuLL));
      if (CI::gCacheNonVolatileSizePeak > 0x800)
      {
        v45 = v47;
      }

      v46 = "B";
      if (CI::gCacheNonVolatileSizePeak > 0x800)
      {
        v46 = "KB";
      }
    }

    else
    {
      v45 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0x14uLL));
      v46 = "MB";
    }
  }

  else
  {
    v45 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0x1EuLL));
    v46 = "GB";
  }

  snprintf(CI::SurfaceCacheEntry::SurfaceCacheEntry(IRect,ISize,unsigned int,iosurface_properties_t,unsigned int,unsigned int,__CFString const*,dispatch_queue_s *,void({block_pointer})(__IOSurface *))::msg, 0x400uLL, "Cache Stats: count=%ld size=%ld%s non-volatile=%ld%s peakCount=%ld peakSize=%ld%s peakNVSize=%ld%s", v35, v36, v39, v40, v41, CI::gCacheCountPeak, v42, v43, v45, v46);
  qword_1ED7C3F80 = CI::SurfaceCacheEntry::SurfaceCacheEntry(IRect,ISize,unsigned int,iosurface_properties_t,unsigned int,unsigned int,__CFString const*,dispatch_queue_s *,void({block_pointer})(__IOSurface *))::msg;
LABEL_52:
  v48 = *a2;
  *(a1 + 48) = *(a2 + 2);
  *(a1 + 32) = v48;
  *(a1 + 56) = a7;
  *(a1 + 60) = a8;
  *(a1 + 64) = CFRetain(a9);
  if (a10)
  {
    dispatch_retain(a10);
  }

  *(a1 + 72) = a10;
  *(a1 + 80) = 0;
  if (a11)
  {
    *(a1 + 80) = _Block_copy(a11);
  }

  MemorySize = SurfaceGetMemorySize(*(a1 + 24));
  *(a1 + 104) = MemorySize;
  atomic_fetch_add(&CI::gCacheSize, MemorySize);
  v50 = CI::gCacheSizePeak;
  v51 = atomic_load(&CI::gCacheSize);
  if (v50 < v51)
  {
    v52 = atomic_load(&CI::gCacheSize);
    CI::gCacheSizePeak = v52;
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 1;
  return a1;
}

uint64_t CI::GetCurrentCacheVolatileSize(CI *this)
{
  if (!CI::gCacheList)
  {
    return 0;
  }

  v1 = *(CI::gCacheList + 8);
  if (v1 == CI::gCacheList)
  {
    return 0;
  }

  result = 0;
  do
  {
    v3 = *(v1 + 16);
    if (!*(v3 + 88) && *(v3 + 96) != 8)
    {
      result += *(v3 + 104);
    }

    v1 = *(v1 + 8);
  }

  while (v1 != CI::gCacheList);
  return result;
}

void CI::SurfaceCacheEntry::~SurfaceCacheEntry(CI::SurfaceCacheEntry *this)
{
  *this = &unk_1F103CE28;
  *(this + 2) = &unk_1F103CE60;
  atomic_fetch_add(&CI::gCacheSize, -*(this + 13));
  v2 = *(this + 3);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 3) = 0;
  *(this + 7) = 0;
  v3 = *(this + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 8) = 0;
  v4 = *(this + 9);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(this + 9) = 0;
  v5 = *(this + 10);
  if (v5)
  {
    _Block_release(v5);
  }

  *(this + 10) = 0;
  *(this + 2) = &unk_1F103CF48;
  atomic_fetch_add(&dword_1ED7C47D8[77], 0xFFFFFFFF);
}

{
  CI::SurfaceCacheEntry::~SurfaceCacheEntry(this);

  JUMPOUT(0x19EAF5590);
}

void CI::SurfaceCacheEntry::setFillQueue(CI::SurfaceCacheEntry *this, dispatch_object_t object)
{
  if (object)
  {
    dispatch_retain(object);
  }

  v4 = *(this + 9);
  if (v4)
  {
    dispatch_release(v4);
  }

  *(this + 9) = object;
}

void CI::SurfaceCacheEntry::setFillBlock(uint64_t a1, void *aBlock)
{
  if (aBlock)
  {
    v3 = _Block_copy(aBlock);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    _Block_release(v4);
  }

  *(a1 + 80) = v3;
}

void non-virtual thunk toCI::SurfaceCacheEntry::~SurfaceCacheEntry(CI::SurfaceCacheEntry *this)
{
  CI::SurfaceCacheEntry::~SurfaceCacheEntry((this - 16));
}

{
  CI::SurfaceCacheEntry::~SurfaceCacheEntry((this - 16));

  JUMPOUT(0x19EAF5590);
}

void CI::SurfaceCacheEntry::fillAsync(CI::SurfaceCacheEntry *this)
{
  v2 = *(this + 9);
  if (v2)
  {
    if (*(this + 10))
    {
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = ___ZN2CI17SurfaceCacheEntry9fillAsyncEv_block_invoke;
      block[3] = &__block_descriptor_tmp_3_7;
      block[4] = this;
      dispatch_async(v2, block);
      CI::gCacheBytesFilled += *(this + 13);
    }
  }
}

void ___ZN2CI17SurfaceCacheEntry9fillAsyncEv_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_cache(v2, v3);
    if (os_signpost_enabled(v4))
    {
      *v6 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "CacheEntryFillAsync", &unk_19CFBCBAE, v6, 2u);
    }
  }

  v5 = mach_absolute_time();
  (*(*(v1 + 80) + 16))();
  atomic_fetch_add_explicit(&CI::gTimeFilling, mach_absolute_time() - v5, memory_order_relaxed);
  ___ZN2CI17SurfaceCacheEntry9fillAsyncEv_block_invoke_1();
}

void ___ZN2CI17SurfaceCacheEntry9fillAsyncEv_block_invoke_1()
{
  v0 = CI_VERBOSE_SIGNPOSTS();
  if (v0)
  {
    v2 = ci_signpost_log_cache(v0, v1);
    if (os_signpost_enabled(v2))
    {
      *v3 = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v2, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "CacheEntryFillAsync", &unk_19CFBCBAE, v3, 2u);
    }
  }
}

uint64_t CI::SurfaceCacheEntry::print_core(CI::SurfaceCacheEntry *this, __sFILE *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(this + 8);
  if (v4)
  {
    CStringPtr = CFStringGetCStringPtr(*(this + 8), 0x8000100u);
    if (!CStringPtr)
    {
      CStringPtr = buffer;
      if (!CFStringGetCString(v4, buffer, 1024, 0x8000100u))
      {
        CStringPtr = 0;
      }
    }
  }

  else
  {
    CStringPtr = buffer;
  }

  v6 = *(this + 3);
  ID = IOSurfaceGetID(v6);
  fprintf(a2, "surface=%p(%0.4u)", v6, ID);
  if (*(this + 32) < 0x29u)
  {
    fprintf(a2, " fmt=%-4d");
  }

  else
  {
    fprintf(a2, " fmt=%.4s");
  }

  fprintf(a2, " width=%-4zu height=%-4zu", *(this + 14), *(this + 15));
  fprintf(a2, " x=%-4d y=%-4d w=%-4zu h=%-4zu ctx=%-4u img=%-4u vol=%-2d", *(this + 8), *(this + 9), *(this + 5), *(this + 6), *(this + 14), *(this + 15), *(this + 24));
  v8 = *(this + 13);
  v9 = llround(vcvtd_n_f64_u64(v8, 0x1EuLL));
  v10 = llround(vcvtd_n_f64_u64(v8, 0x14uLL));
  v11 = "MB";
  v12 = llround(vcvtd_n_f64_u64(v8, 0xAuLL));
  if (v8 <= 0x800)
  {
    v12 = *(this + 13);
  }

  v13 = "B";
  if (v8 > 0x800)
  {
    v13 = "KB";
  }

  if (v8 <= 0x200000)
  {
    v10 = v12;
    v11 = v13;
  }

  v14 = v8 > 0x80000000;
  if (v8 <= 0x80000000)
  {
    v15 = v10;
  }

  else
  {
    v15 = v9;
  }

  if (v14)
  {
    v16 = "GB";
  }

  else
  {
    v16 = v11;
  }

  fprintf(a2, " size=%ld%s", v15, v16);
  if (v4)
  {
    fprintf(a2, " id='%s'", CStringPtr);
  }

  else
  {
    fwrite(" id=nil", 7uLL, 1uLL, a2);
  }

  if (!*(this + 8) || SurfaceIsVolatileEmpty(*(this + 3)))
  {
    fwrite(" empty", 6uLL, 1uLL, a2);
  }

  if (*(this + 11))
  {
    fprintf(a2, " use=%ld", *(this + 11));
  }

  if (*(this + 19))
  {
    fprintf(a2, " pool=%lld", *(this + 19));
  }

  return fputc(10, a2);
}

uint64_t CI::SurfaceCacheEntry::print(CI::SurfaceCacheEntry *this, __sFILE *__stream)
{
  fwrite("SurfaceCacheEntry ", 0x12uLL, 1uLL, __stream);

  return CI::SurfaceCacheEntry::print_core(this, __stream);
}

uint64_t GetSurfaceFromCacheAndFill(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v41 = *MEMORY[0x1E69E9840];
  v36 = 0;
  v37 = &v36;
  v38 = 0x2000000000;
  v39 = 0;
  if (*(a1 + 8))
  {
    v8 = 0;
    if (a5)
    {
      v9 = a2;
      if (a2)
      {
        v10 = a1;
        if (*(a1 + 16))
        {
          v8 = 0;
          if (a6)
          {
            if (a7)
            {
              if ((a2 & 0xFD000000) == 0x2D000000 || a2 >> 24 == 124 || a2 >> 24 == 38)
              {
                v35 = bswap32(a2);
                v15 = ci_logger_cache(a1, a2);
                if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 136446722;
                  *&buf[4] = "GetSurfaceFromCacheAndFill";
                  *&buf[12] = 1042;
                  *&buf[14] = 4;
                  *&buf[18] = 2082;
                  *&buf[20] = &v35;
                  _os_log_impl(&dword_19CC36000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s  was passed compressed format '%{public}.4s'.  Ignoring compression.\n", buf, 0x1Cu);
                }

                a1 = equivalent_uncompressed_format(v9);
                LODWORD(v9) = a1;
              }

              if (a3 && a4)
              {
                v16 = ci_logger_cache(a1, a2);
                v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
                v18 = 0;
                if (v17)
                {
                  *buf = 136446722;
                  *&buf[4] = "GetSurfaceFromCacheAndFill";
                  *&buf[12] = 1024;
                  *&buf[14] = a3;
                  *&buf[18] = 1024;
                  *&buf[20] = a4;
                  _os_log_impl(&dword_19CC36000, v16, OS_LOG_TYPE_DEFAULT, "%{public}s  was passed contextIndex=%d and imageIndex=%d.  Ignoring imageIndex.\n", buf, 0x18u);
                  v18 = 0;
                }
              }

              else
              {
                v18 = a4;
              }

              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x2000000000;
              *&buf[24] = 0;
              if (GetQueue(void)::onceToken != -1)
              {
                v24 = v18;
                GetSurfaceFromCacheAndFill_cold_1();
                v18 = v24;
              }

              block[0] = MEMORY[0x1E69E9820];
              block[1] = 0x40000000;
              block[2] = __GetSurfaceFromCacheAndFill_block_invoke;
              block[3] = &unk_1E75C80C0;
              v32 = a3;
              v33 = v18;
              v28 = *v10;
              v19 = *(v10 + 16);
              v34 = v9;
              v29 = v19;
              v30 = a5;
              block[4] = a7;
              block[5] = &v36;
              v31 = a6;
              block[6] = buf;
              dispatch_sync(gSurfaceCacheQueue, block);
              v20 = *(*&buf[8] + 24);
              if (v20)
              {
                if (*(v20 + 72))
                {
                  dispatch_sync(*(v20 + 72), &__block_literal_global_6_0);
                  v20 = *(*&buf[8] + 24);
                }

                CI::Object::unref(v20);
              }

              v21 = CI_LOG_SURFACE_CACHE();
              if (v21)
              {
                v22 = v21;
                if (GetQueue(void)::onceToken != -1)
                {
                  GetSurfaceFromCacheAndFill_cold_1();
                }

                v25[0] = MEMORY[0x1E69E9820];
                v25[1] = 0x40000000;
                v25[2] = __GetSurfaceFromCacheAndFill_block_invoke_23;
                v25[3] = &__block_descriptor_tmp_24_5;
                v26 = v22;
                dispatch_sync(gSurfaceCacheQueue, v25);
              }

              v8 = v37[3];
              _Block_object_dispose(buf, 8);
            }
          }
        }
      }
    }
  }

  else
  {
    v8 = 0;
  }

  _Block_object_dispose(&v36, 8);
  return v8;
}

void __GetSurfaceFromCacheAndFill_block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_cache(v2, v3);
    if (os_signpost_enabled(v4))
    {
      v5 = *(a1 + 96);
      v6 = *(a1 + 100);
      v7 = *(a1 + 56);
      v8 = *(a1 + 60);
      v9 = *(a1 + 64);
      v10 = *(a1 + 72);
      *buf = 67110400;
      *&buf[4] = v5;
      *&buf[8] = 1024;
      *&buf[10] = v6;
      *&buf[14] = 1024;
      *v37 = v7;
      *&v37[4] = 1024;
      *&v37[6] = v8;
      v38 = 2048;
      v39 = v9;
      v40 = 2048;
      v41 = v10;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetSurfaceFromCacheAndFill", "cid:%u iid:%u [%d %d %zu %zu]", buf, 0x2Eu);
    }
  }

  v31[3] = MEMORY[0x1E69E9820];
  v31[4] = 0x40000000;
  v31[5] = __GetSurfaceFromCacheAndFill_block_invoke_20;
  v31[6] = &__block_descriptor_tmp_21_5;
  v11 = *(a1 + 100);
  v34 = *(a1 + 96);
  v35 = v11;
  v32 = *(a1 + 56);
  v12 = *(a1 + 80);
  v33 = *(a1 + 72);
  ++CI::gCacheGetCount;
  *buf = *(a1 + 56);
  *v37 = *(a1 + 72);
  v13 = *(a1 + 104);
  memset(v31, 0, 24);
  CacheEntryWithInfo = CI::FindCacheEntryWithInfo(buf, v13, v31, v34, v11, v12);
  if (CacheEntryWithInfo)
  {
    v15 = CacheEntryWithInfo;
    v16 = *(CacheEntryWithInfo + 24);
    if (v16)
    {
      *(*(*(a1 + 40) + 8) + 24) = CFRetain(v16);
    }

    *(v15 + 96) = 1;
    CI::SurfaceCacheEntry::setIdentifier(v15, *(a1 + 80));
    ++*(v15 + 88);
    if (!SurfaceSetNonVolatile(*(*(*(a1 + 40) + 8) + 24)))
    {
      CI::SurfaceCacheEntry::setFillBlock(v15, *(a1 + 32));
      CI::SurfaceCacheEntry::setFillQueue(v15, *(a1 + 88));
      CI::SurfaceCacheEntry::fillAsync(v15);
      ++CI::gCacheGetCountPurged;
    }

    *(*(*(a1 + 48) + 8) + 24) = v15;
    v17 = *(*(*(a1 + 48) + 8) + 24);
    if (v17)
    {
      CI::Object::ref(v17);
    }

    *buf = v15;
    std::list<CI::attached_surface_t *>::remove(CI::gCacheList, buf);
    operator new();
  }

  ++CI::gCacheGetCountMissed;
  v18 = atomic_load(&CI::gCacheSize);
  SurfaceMemorySize = CreateSurfaceMemorySize(*(a1 + 64), *(a1 + 72), 0x20uLL, *(a1 + 104));
  v30 = 0;
  v20 = SurfaceMemorySize + v18;
  v21 = CI_SURFACE_CACHE_CAPACITY();
  v22 = 0;
  if (v20 < v21)
  {
    if (CI::gCacheList)
    {
      v22 = *(CI::gCacheList + 16) < 0x100uLL;
    }

    else
    {
      v22 = 1;
    }
  }

  v23 = *(a1 + 64);
  v24 = *(a1 + 72);
  v26 = *(a1 + 100);
  v25 = *(a1 + 104);
  memset(buf, 0, sizeof(buf));
  *v37 = 0;
  UnusedCacheEntryWithInfo = CI::FindUnusedCacheEntryWithInfo(v23, v24, v23, v24, v25, buf, *(a1 + 96), v26, v22, &v30, 0);
  v28 = UnusedCacheEntryWithInfo;
  if (v30 == 1)
  {
    ++CI::gCacheGetCountInUseMissed;
  }

  if (UnusedCacheEntryWithInfo)
  {
    ++CI::gCacheGetCountRecycled;
    v29 = *(a1 + 72);
    *(UnusedCacheEntryWithInfo + 32) = *(a1 + 56);
    *(UnusedCacheEntryWithInfo + 48) = v29;
    *(UnusedCacheEntryWithInfo + 56) = *(a1 + 96);
    *(UnusedCacheEntryWithInfo + 60) = *(a1 + 100);
    *(UnusedCacheEntryWithInfo + 96) = 1;
    CI::SurfaceCacheEntry::setIdentifier(UnusedCacheEntryWithInfo, *(a1 + 80));
    CI::SurfaceCacheEntry::setFillBlock(v28, *(a1 + 32));
    CI::SurfaceCacheEntry::setFillQueue(v28, *(a1 + 88));
    ++*(v28 + 11);
    *buf = v28;
    std::list<CI::attached_surface_t *>::remove(CI::gCacheList, buf);
    operator new();
  }

  ++CI::gCacheCountAllocated;
  operator new();
}

void __GetSurfaceFromCacheAndFill_block_invoke_20(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_cache(v2, v3);
    if (os_signpost_enabled(v4))
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 60);
      v7 = *(a1 + 32);
      v8 = *(a1 + 36);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11[0] = 67110400;
      v11[1] = v5;
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetSurfaceFromCacheAndFill", "cid:%u iid:%u [%d %d %zu %zu]", v11, 0x2Eu);
    }
  }
}

uint64_t CI::FindCacheEntryWithInfo(uint64_t a1, int a2, uint64_t a3, int a4, int a5, CFStringRef theString1)
{
  v6 = CI::gCacheList;
  if (!CI::gCacheList)
  {
    return 0;
  }

  v7 = *(CI::gCacheList + 8);
  if (v7 == CI::gCacheList)
  {
    return 0;
  }

  while (1)
  {
    v14 = *(v7 + 16);
    if (*(v14 + 56) == a4 && *(v14 + 60) == a5 && *(v14 + 24))
    {
      v15 = *(v14 + 32) == *a1 && *(v14 + 36) == *(a1 + 4);
      v16 = v15 && *(v14 + 40) == *(a1 + 8);
      if (v16 && *(v14 + 48) == *(a1 + 16) && *(v14 + 128) == a2 && *(v14 + 144) == *(a3 + 8) && *(v14 + 136) == *a3 && *(v14 + 152) == *(a3 + 16))
      {
        v18 = *(v14 + 64);
        if (v18)
        {
          if (CFStringCompare(theString1, v18, 0) == kCFCompareEqualTo)
          {
            break;
          }
        }
      }
    }

    v7 = *(v7 + 8);
    if (v7 == v6)
    {
      return 0;
    }
  }

  return v14;
}

void CI::SurfaceCacheEntry::setIdentifier(CI::SurfaceCacheEntry *this, CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  v4 = *(this + 8);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 8) = cf;
}

CFIndex CI::FindUnusedCacheEntryWithInfo(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7, int a8, char a9, _BYTE *a10, CFArrayRef theArray)
{
  v12 = a5;
  if (a10)
  {
    *a10 = 0;
  }

  v17 = CI::gCacheList;
  if (!CI::gCacheList)
  {
    return 0;
  }

  v18 = theArray;
  if (theArray)
  {
    v19 = a7;
    result = CFArrayGetCount(theArray);
    if (!result)
    {
      return result;
    }

    v17 = CI::gCacheList;
    a7 = v19;
    v18 = theArray;
    v12 = a5;
  }

  else
  {
    result = 0;
  }

  v21 = *(v17 + 8);
  if (v21 == v17)
  {
    LOBYTE(v25) = 0;
    v24 = 0;
    v23 = 0;
    v57 = 0;
    v22 = 0;
    goto LABEL_97;
  }

  range = result;
  v44 = a7;
  v45 = 0;
  v22 = 0;
  v57 = 0;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  while (1)
  {
    v26 = *(v21 + 16);
    v27 = *(v26 + 112);
    v28 = *(v26 + 120);
    v31 = v27 < a1 || v27 > a3 || v28 < a2 || v28 > a4;
    if (v31 || *(v26 + 128) != v12 || *(v26 + 144) != *(a6 + 8) || *(v26 + 136) != *a6 || *(v26 + 152) != *(a6 + 16))
    {
      goto LABEL_82;
    }

    v59 = v23;
    if (!*(v26 + 88))
    {
      break;
    }

    v51 = v22;
    v54 = v18;
    v46 = v25;
    v32 = v24;
    v33 = CI_USE_INFLIGHT_INTERMEDIATES();
    v24 = v32;
    if (v33 && !v32 && *(v26 + 88) == 1 && *(v26 + 96) == -1 && *(v26 + 56) == v44)
    {
      v24 = v26;
      v23 = v26;
      v22 = v26;
      v18 = v54;
      v25 = v46;
      goto LABEL_72;
    }

    v25 = v46;
    if (v46)
    {
      v18 = v54;
LABEL_47:
      v22 = v51;
      v23 = v59;
      goto LABEL_72;
    }

    v22 = v51;
    v18 = v54;
    v23 = v59;
    if (v24)
    {
      goto LABEL_72;
    }

    v25 = (*(v26 + 88) > 0) | v46;
LABEL_82:
    v21 = *(v21 + 8);
    if (v21 == v17)
    {
      goto LABEL_97;
    }
  }

  v34.length = range;
  if (range < 1)
  {
    if (v23)
    {
LABEL_41:
      if (!v22)
      {
        if (*(v26 + 96) > 6)
        {
          v22 = 0;
        }

        else if (*(v26 + 60))
        {
          v22 = 0;
        }

        else
        {
          v22 = v26;
        }
      }

      if (!v57)
      {
        if (*(v26 + 96) > 6)
        {
          v57 = 0;
        }

        else
        {
          if (*(v26 + 60))
          {
            v37 = v26;
          }

          else
          {
            v37 = 0;
          }

          v57 = v37;
        }
      }

      goto LABEL_72;
    }

    v36 = *(v26 + 64);
    if (*(v26 + 60))
    {
      if (v36)
      {
        if (v45)
        {
          v23 = 0;
          goto LABEL_41;
        }

        v53 = v22;
        v56 = v18;
        v49 = v24;
        IsVolatileEmpty = SurfaceIsVolatileEmpty(*(v26 + 24));
        v22 = v53;
        v24 = v49;
        if (IsVolatileEmpty)
        {
          v45 = 0;
          v23 = v26;
LABEL_95:
          v18 = v56;
          goto LABEL_41;
        }

        goto LABEL_94;
      }
    }

    else if (v36)
    {
      v52 = v22;
      v56 = v18;
      v48 = v24;
      if (SurfaceIsVolatileEmpty(*(v26 + 24)))
      {
        v23 = v26;
        v22 = v52;
        v18 = v56;
        v24 = v48;
        goto LABEL_41;
      }

      v24 = v48;
      v22 = v52;
      if (v45)
      {
        v23 = 0;
        goto LABEL_95;
      }

LABEL_94:
      v23 = 0;
      v45 = *(v26 + 60);
      goto LABEL_95;
    }

    v23 = *(v21 + 16);
    goto LABEL_41;
  }

  v51 = v22;
  v55 = v18;
  v47 = v24;
  v34.location = 0;
  if (CFArrayGetFirstIndexOfValue(v18, v34, *(v26 + 24)) < 0)
  {
    v18 = v55;
    v24 = v47;
    goto LABEL_47;
  }

  v22 = v51;
  v23 = v59;
  if (v59)
  {
    goto LABEL_37;
  }

  v35 = *(v26 + 64);
  if (!*(v26 + 60))
  {
    v18 = v55;
    v24 = v47;
    if (v35)
    {
      goto LABEL_66;
    }

LABEL_84:
    v23 = v26;
    if (v51)
    {
      goto LABEL_72;
    }

LABEL_69:
    if (*(v26 + 96) >= 7)
    {
      v22 = 0;
    }

    else
    {
      v22 = v26;
    }

    goto LABEL_72;
  }

  v18 = v55;
  v24 = v47;
  if (!v35)
  {
    goto LABEL_84;
  }

  if (v45)
  {
    v23 = 0;
    if (v51)
    {
      goto LABEL_72;
    }

    goto LABEL_69;
  }

LABEL_66:
  v38 = SurfaceIsVolatileEmpty(*(v26 + 24));
  v23 = 0;
  v22 = v51;
  if (v38)
  {
    v23 = v26;
    goto LABEL_68;
  }

LABEL_37:
  if (!v45)
  {
    v45 = *(v26 + 60);
  }

LABEL_68:
  v18 = v55;
  v24 = v47;
  if (!v22)
  {
    goto LABEL_69;
  }

LABEL_72:
  if (v22)
  {
    v39 = v23 == 0;
  }

  else
  {
    v39 = 1;
  }

  v41 = !v39 && v24 != 0;
  if ((v41 & v25 & 1) == 0)
  {
    goto LABEL_82;
  }

  LOBYTE(v25) = 1;
LABEL_97:
  if (a10)
  {
    *a10 = v25 & 1;
  }

  if (v24)
  {
    result = v24;
  }

  else
  {
    result = v23;
  }

  if (!v24 && (a9 & 1) == 0)
  {
    result = v23;
    if (!v23)
    {
      result = v22;
      if (!v22)
      {
        if (!a8)
        {
          return 0;
        }

        result = v57;
        if (*(CI::gCacheList + 16) < 0x201uLL || v57 == 0)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

void CI::AppendCacheEntry(CI *this, CI::SurfaceCacheEntry *a2)
{
  if (!CI::gCacheList)
  {
    operator new();
  }

  operator new();
}

unint64_t CI::RemoveFromStartUntilAtOrBelowCapacity(CI *this)
{
  result = CI_SURFACE_CACHE_CAPACITY();
  if (CI::gCacheList)
  {
    v3 = result;
    v4 = atomic_load(&CI::gCacheSize);
    v5 = CI::gCacheList;
    v6 = *(CI::gCacheList + 16);
    v24 = 0u;
    v25 = 0u;
    v23 = 0u;
    for (i = *(CI::gCacheList + 8); i != v5; i = *(i + 8))
    {
      v8 = *(i + 16);
      v22 = v8;
      if (v4 <= v3 && v6 < 0x101)
      {
        break;
      }

      if (*(v8 + 88) > 0)
      {
        continue;
      }

      if (*(v8 + 96) >= 7 && *(v8 + 64))
      {
        if (!SurfaceIsVolatileEmpty(*(v8 + 24)))
        {
          continue;
        }

        v8 = v22;
      }

      v4 -= *(v8 + 104);
      std::deque<CI::SurfaceCacheEntry *>::push_back(&v23, &v22);
      --v6;
    }

    v9 = CI::gCacheList;
    for (j = *(CI::gCacheList + 8); j != v9; j = *(j + 8))
    {
      v11 = *(j + 16);
      v22 = v11;
      if (v4 <= v3 && v6 < 0x101)
      {
        break;
      }

      if (*(v11 + 88) <= 0 && *(v11 + 96) >= 7 && *(v11 + 64) && !SurfaceIsVolatileEmpty(*(v11 + 24)) && !*(v22 + 88))
      {
        v4 -= *(v22 + 104);
        std::deque<CI::SurfaceCacheEntry *>::push_back(&v23, &v22);
        --v6;
      }
    }

    v12 = v25.i64[1];
    if (v25.i64[1] && *(CI::gCacheList + 16) >= 0x401uLL)
    {
      v13 = v25.i64[0];
      do
      {
        v14 = *(*(*(&v23 + 1) + ((v13 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v13 & 0x1FF));
        CI::RemoveCacheEntry(v14, v2);
        if (v14)
        {
          (*(*v14 + 8))(v14);
        }

        v15 = vaddq_s64(v25, xmmword_19CF2DE60);
        v25 = v15;
        v13 = v15.i64[0];
        if (v15.i64[0] >= 0x400uLL)
        {
          operator delete(**(&v23 + 1));
          v13 = v25.i64[0] - 512;
          *(&v23 + 1) += 8;
          v25.i64[0] -= 512;
          v12 = v25.i64[1];
          if (!v25.i64[1])
          {
            break;
          }
        }

        else
        {
          v12 = v15.i64[1];
          if (!v15.i64[1])
          {
            break;
          }
        }
      }

      while (*(CI::gCacheList + 16) >= 0x401uLL);
    }

    if (v24 != *(&v23 + 1))
    {
      v16 = (*(&v23 + 1) + 8 * (v25.i64[0] >> 9));
      v17 = *v16 + 8 * (v25.i16[0] & 0x1FF);
      v18 = *(*(&v23 + 1) + (((v25.i64[0] + v12) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v25.i64[0] + v12) & 0x1FF);
      if (v17 != v18)
      {
        v19 = 0;
        while (1)
        {
          v20 = *v17;
          if (!*(*v17 + 60))
          {
            goto LABEL_42;
          }

          if (!v19)
          {
            break;
          }

LABEL_43:
          v17 += 8;
          if (v17 - *v16 == 4096)
          {
            v21 = v16[1];
            ++v16;
            v17 = v21;
          }

          if (v17 == v18)
          {
            return std::deque<CI::SurfaceCacheEntry *>::~deque[abi:nn200100](&v23);
          }
        }

        if (!*(v20 + 64))
        {
          v19 = *(*v17 + 60);
          goto LABEL_43;
        }

        if (!SurfaceIsVolatileEmpty(*(v20 + 24)))
        {
          v19 = *(v20 + 60);
          goto LABEL_43;
        }

        v19 = 0;
LABEL_42:
        CI::RemoveCacheEntry(v20, v2);
        (*(*v20 + 8))(v20);
        goto LABEL_43;
      }
    }

    return std::deque<CI::SurfaceCacheEntry *>::~deque[abi:nn200100](&v23);
  }

  return result;
}

void CI::UpdateVolatilityStats(CI *this)
{
  v1 = CI::gCacheNonVolatileSizePeak;
  atomic_store(CI::GetCurrentCacheVolatileSize(this), &CI::gVolatileSize);
  v2 = atomic_load(&CI::gCacheSize);
  v3 = atomic_load(&CI::gVolatileSize);
  v4 = v2 - v3;
  if (v2 - v3 > v1)
  {
    if (CI_TRACE_PEAK_SURFACE_CACHE())
    {
      if (CI::gPeakNonVolatileList)
      {
        CFArrayRemoveAllValues(CI::gPeakNonVolatileList);
      }

      else
      {
        CI::gPeakNonVolatileList = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
      }

      v5 = CI::gCacheList;
      if (CI::gCacheList)
      {
        v6 = *(CI::gCacheList + 8);
        if (v6 != CI::gCacheList)
        {
          do
          {
            v7 = *(v6 + 16);
            if (*(v7 + 88) || *(v7 + 96) == 8)
            {
              Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              __CFDictionary::setValue(Mutable, @"id", *(v7 + 64), v9);
              __CFDictionary::setValue(Mutable, @"x", *(v7 + 32));
              __CFDictionary::setValue(Mutable, @"y", *(v7 + 36));
              __CFDictionary::setValue(Mutable, @"w", *(v7 + 40));
              __CFDictionary::setValue(Mutable, @"h", *(v7 + 48));
              __CFDictionary::setValue(Mutable, @"size", *(v7 + 104));
              v10 = *(v7 + 56);
              if (v10)
              {
                __CFDictionary::setValue(Mutable, @"ctxIndex", v10);
              }

              v11 = *(v7 + 60);
              if (v11)
              {
                __CFDictionary::setValue(Mutable, @"imgIndex", v11);
              }

              if (CI::gPeakNonVolatileList)
              {
                CFArrayAppendValue(CI::gPeakNonVolatileList, Mutable);
              }
            }

            v6 = *(v6 + 8);
          }

          while (v6 != v5);
        }
      }
    }

    CI::gCacheNonVolatileSizePeak = v4;
  }
}

void CI::LogCacheState(CI *this, uint64_t a2, const char *a3)
{
  v4 = this;
  v21 = *MEMORY[0x1E69E9840];
  v5 = CI_SURFACE_CACHE_CAPACITY();
  if (CI::gCacheList)
  {
    v6 = *(CI::gCacheList + 16);
    if (v6)
    {
      v7 = v5;
      CurrentCacheVolatileSize = CI::GetCurrentCacheVolatileSize(v5);
      v9 = atomic_load(&CI::gCacheSize);
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 0x40000000;
      v18[2] = ___ZN2CIL13LogCacheStateEbPKc_block_invoke;
      v18[3] = &__block_descriptor_tmp_120;
      v18[4] = a2;
      v18[5] = v6;
      v18[6] = v9 - CurrentCacheVolatileSize;
      v18[7] = CurrentCacheVolatileSize;
      v18[8] = v7;
      v10 = stream_to_string(v18);
      if (v10)
      {
        v12 = v10;
        v13 = ci_logger_cache(v10, v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v20 = v12;
          _os_log_impl(&dword_19CC36000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
        }

        CFRelease(v12);
      }

      if (v4)
      {
        v14 = stream_to_string(&__block_literal_global_124_0);
        if (v14)
        {
          v16 = v14;
          v17 = ci_logger_cache(v14, v15);
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v20 = v16;
            _os_log_impl(&dword_19CC36000, v17, OS_LOG_TYPE_DEFAULT, "%{public}@", buf, 0xCu);
          }

          CFRelease(v16);
        }
      }
    }
  }
}

uint64_t GetValidSurfaceFromCache(__int128 *a1, uint64_t a2, __int128 *a3, int a4, int a5, int a6, uint64_t a7)
{
  v35 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 1))
  {
    return 0;
  }

  v8 = 0;
  if (a7)
  {
    v9 = a2;
    if (a2)
    {
      if (*(a1 + 2))
      {
        if (a4 && a5)
        {
          v15 = ci_logger_cache(a1, a2);
          v16 = 0;
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136446722;
            *&buf[4] = "GetValidSurfaceFromCache";
            *&buf[12] = 1024;
            *&buf[14] = a4;
            *&buf[18] = 1024;
            *&buf[20] = a5;
            _os_log_impl(&dword_19CC36000, v15, OS_LOG_TYPE_DEFAULT, "%{public}s  was passed contextIndex=%d and imageIndex=%d.  Ignoring imageIndex.\n", buf, 0x18u);
            v16 = 0;
          }
        }

        else
        {
          v16 = a5;
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2000000000;
        v34 = 0;
        if (GetQueue(void)::onceToken != -1)
        {
          GetSurfaceFromCacheAndFill_cold_1();
        }

        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = __GetValidSurfaceFromCache_block_invoke;
        block[3] = &unk_1E75C8108;
        v24 = *a1;
        v25 = *(a1 + 2);
        v26 = *a3;
        v17 = *(a3 + 2);
        v29 = v9;
        v30 = a4;
        v27 = v17;
        v28 = a7;
        block[4] = buf;
        v31 = v16;
        v32 = a6;
        dispatch_sync(gSurfaceCacheQueue, block);
        v18 = CI_LOG_SURFACE_CACHE();
        if (v18)
        {
          v19 = v18;
          if (GetQueue(void)::onceToken != -1)
          {
            GetSurfaceFromCacheAndFill_cold_1();
          }

          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 0x40000000;
          v21[2] = __GetValidSurfaceFromCache_block_invoke_2;
          v21[3] = &__block_descriptor_tmp_26_1;
          v22 = v19;
          dispatch_sync(gSurfaceCacheQueue, v21);
        }

        v8 = *(*&buf[8] + 24);
        _Block_object_dispose(buf, 8);
      }
    }
  }

  return v8;
}

void __GetValidSurfaceFromCache_block_invoke(uint64_t a1)
{
  v11 = *(a1 + 40);
  v12 = *(a1 + 56);
  v9 = *(a1 + 64);
  v2 = *(a1 + 88);
  v10 = *(a1 + 80);
  CacheEntryWithInfo = CI::FindCacheEntryWithInfo(&v11, *(a1 + 96), &v9, *(a1 + 100), *(a1 + 104), v2);
  if (!CacheEntryWithInfo)
  {
LABEL_13:
    CI::UpdateVolatilityStats(CacheEntryWithInfo);
    return;
  }

  v4 = CacheEntryWithInfo;
  v5 = *(CacheEntryWithInfo + 3);
  if (v5 && !SurfaceIsVolatileEmpty(v5))
  {
    if (SurfaceSetNonVolatile(*(v4 + 3)))
    {
      ++CI::gCacheGetCount;
      *(*(*(a1 + 32) + 8) + 24) = *(v4 + 3);
      CFRetain(*(*(*(a1 + 32) + 8) + 24));
      v6 = *(a1 + 108);
      if (v6 < 7)
      {
        ++v6;
      }

      *(v4 + 24) = v6;
      CI::SurfaceCacheEntry::setIdentifier(v4, *(a1 + 88));
      v7 = *(v4 + 10);
      if (v7)
      {
        _Block_release(v7);
      }

      *(v4 + 10) = 0;
      v8 = *(v4 + 9);
      if (v8)
      {
        dispatch_release(v8);
      }

      *(v4 + 9) = 0;
      ++*(v4 + 11);
      *&v11 = v4;
      std::list<CI::attached_surface_t *>::remove(CI::gCacheList, &v11);
      operator new();
    }

    CI::SurfaceCacheEntry::empty(v4);
    goto LABEL_13;
  }
}

void CI::SurfaceCacheEntry::empty(IOSurfaceRef *this)
{
  SurfaceSetVolatileEmpty(this[3]);
  v2 = this[8];
  if (v2)
  {
    CFRelease(v2);
  }

  this[8] = 0;
  *(this + 15) = 0;
}

uint64_t GetSurfaceFromCache(CFIndex Count, uint64_t a2, uint64_t a3, int a4, __int128 *a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, CFArrayRef theArray)
{
  v18 = Count;
  v54 = *MEMORY[0x1E69E9840];
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    v19 = Count;
  }

  else
  {
    v19 = 0;
  }

  v44 = 0;
  v45 = &v44;
  v46 = 0x2000000000;
  v47 = 0;
  if (*(v18 + 8))
  {
    v26 = a3;
    v20 = 0;
    if (a10 && a9 && a4 && *(v18 + 16))
    {
      if (a6 && a7)
      {
        log = ci_logger_cache(Count, a2);
        v21 = 0;
        if (os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136446722;
          v49 = "GetSurfaceFromCache";
          v50 = 1024;
          v51 = a6;
          v52 = 1024;
          v53 = a7;
          _os_log_impl(&dword_19CC36000, log, OS_LOG_TYPE_DEFAULT, "%{public}s  was passed contextIndex=%d and imageIndex=%d.  Ignoring imageIndex.\n", buf, 0x18u);
          v21 = 0;
        }
      }

      else
      {
        v21 = a7;
      }

      if (GetQueue(void)::onceToken != -1)
      {
        GetSurfaceFromCacheAndFill_cold_1();
      }

      block[0] = MEMORY[0x1E69E9820];
      block[1] = 0x40000000;
      block[2] = __GetSurfaceFromCache_block_invoke;
      block[3] = &unk_1E75C8170;
      v40 = a6;
      v41 = v21;
      v30 = *v18;
      v31 = *(v18 + 16);
      v32 = *a5;
      v33 = *(a5 + 2);
      v34 = a9;
      block[4] = &v44;
      v42 = a4;
      v43 = a8;
      v35 = a10;
      v36 = a2;
      v37 = v26;
      v38 = v19;
      v39 = theArray;
      dispatch_sync(gSurfaceCacheQueue, block);
      v22 = CI_LOG_SURFACE_CACHE();
      if (v22)
      {
        v23 = v22;
        if (GetQueue(void)::onceToken != -1)
        {
          GetSurfaceFromCacheAndFill_cold_1();
        }

        v27[0] = MEMORY[0x1E69E9820];
        v27[1] = 0x40000000;
        v27[2] = __GetSurfaceFromCache_block_invoke_30;
        v27[3] = &__block_descriptor_tmp_31_2;
        v28 = v23;
        dispatch_sync(gSurfaceCacheQueue, v27);
      }

      v20 = v45[3];
    }
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v44, 8);
  return v20;
}

void __GetSurfaceFromCache_block_invoke(uint64_t a1)
{
  v57 = *MEMORY[0x1E69E9840];
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_cache(v2, v3);
    if (os_signpost_enabled(v4))
    {
      v5 = *(a1 + 136);
      v6 = *(a1 + 140);
      v7 = *(a1 + 40);
      v8 = *(a1 + 44);
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *buf = 67110400;
      *&buf[4] = v5;
      *&buf[8] = 1024;
      *&buf[10] = v6;
      *&buf[14] = 1024;
      *v52 = v7;
      *&v52[4] = 1024;
      *&v52[6] = v8;
      v53 = 2048;
      v54 = v9;
      v55 = 2048;
      v56 = v10;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "GetSurfaceFromCache", "cid:%u iid:%u [%d %d %zu %zu]", buf, 0x2Eu);
    }
  }

  v43 = MEMORY[0x1E69E9820];
  v44 = 0x40000000;
  v45 = __GetSurfaceFromCache_block_invoke_27;
  v46 = &__block_descriptor_tmp_28_1;
  v11 = *(a1 + 140);
  v49 = *(a1 + 136);
  v50 = v11;
  v47 = *(a1 + 40);
  v48 = *(a1 + 56);
  ++CI::gCacheGetCount;
  *buf = *(a1 + 40);
  *v52 = *(a1 + 56);
  v12 = *(a1 + 88);
  v42 = *(a1 + 80);
  v13 = *(a1 + 144);
  v41 = *(a1 + 64);
  CacheEntryWithInfo = CI::FindCacheEntryWithInfo(buf, v13, &v41, v49, v11, v12);
  if (CacheEntryWithInfo)
  {
    v15 = CacheEntryWithInfo;
    v16 = *(CacheEntryWithInfo + 24);
    if (v16)
    {
      *(*(*(a1 + 32) + 8) + 24) = CFRetain(v16);
    }

    v17 = *(a1 + 148);
    if (v17 < 7)
    {
      ++v17;
    }

    *(v15 + 96) = v17;
    CI::SurfaceCacheEntry::setIdentifier(v15, *(a1 + 88));
    v18 = *(v15 + 80);
    if (v18)
    {
      _Block_release(v18);
    }

    *(v15 + 80) = 0;
    v19 = *(v15 + 72);
    if (v19)
    {
      dispatch_release(v19);
    }

    *(v15 + 72) = 0;
    ++*(v15 + 88);
    v20 = SurfaceSetNonVolatile(*(*(*(a1 + 32) + 8) + 24));
    v21 = *(a1 + 96);
    if (v20)
    {
      *v21 = 0;
    }

    else
    {
      *v21 = 1;
      ++CI::gCacheGetCountPurged;
    }

    *buf = v15;
    std::list<CI::attached_surface_t *>::remove(CI::gCacheList, buf);
    operator new();
  }

  ++CI::gCacheGetCountMissed;
  v22 = (*(a1 + 48) + *(a1 + 104) - 1) / *(a1 + 104) * *(a1 + 104);
  v23 = (*(a1 + 56) + *(a1 + 112) - 1) / *(a1 + 112) * *(a1 + 112);
  v24 = atomic_load(&CI::gCacheSize);
  v25 = equivalent_uncompressed_format(*(a1 + 144));
  v40 = 0;
  v26 = CreateSurfaceMemorySize(v22, v23, 0x20uLL, v25) + v24;
  v27 = 0;
  if (v26 < CI_SURFACE_CACHE_CAPACITY())
  {
    if (CI::gCacheList)
    {
      v27 = *(CI::gCacheList + 16) < 0x100uLL;
    }

    else
    {
      v27 = 1;
    }
  }

  if (!*(a1 + 120) || (v28 = *(a1 + 48), v29 = *(a1 + 56), v31 = *(a1 + 140), v30 = *(a1 + 144), *buf = *(a1 + 64), *v52 = *(a1 + 80), (UnusedCacheEntryWithInfo = CI::FindUnusedCacheEntryWithInfo(v28, v29, v22, v23, v30, buf, *(a1 + 136), v31, 1, &v40, *(a1 + 128))) == 0))
  {
    v33 = *(a1 + 48);
    v34 = *(a1 + 56);
    v36 = *(a1 + 140);
    v35 = *(a1 + 144);
    *buf = *(a1 + 64);
    *v52 = *(a1 + 80);
    UnusedCacheEntryWithInfo = CI::FindUnusedCacheEntryWithInfo(v33, v34, v22, v23, v35, buf, *(a1 + 136), v36, v27, &v40, 0);
  }

  if (v40 == 1)
  {
    ++CI::gCacheGetCountInUseMissed;
  }

  if (UnusedCacheEntryWithInfo)
  {
    ++CI::gCacheGetCountRecycled;
    v37 = *(a1 + 56);
    *(UnusedCacheEntryWithInfo + 32) = *(a1 + 40);
    *(UnusedCacheEntryWithInfo + 48) = v37;
    *(UnusedCacheEntryWithInfo + 56) = *(a1 + 136);
    *(UnusedCacheEntryWithInfo + 60) = *(a1 + 140);
    *(UnusedCacheEntryWithInfo + 96) = *(a1 + 148);
    CI::SurfaceCacheEntry::setIdentifier(UnusedCacheEntryWithInfo, *(a1 + 88));
    v38 = *(UnusedCacheEntryWithInfo + 80);
    if (v38)
    {
      _Block_release(v38);
    }

    *(UnusedCacheEntryWithInfo + 80) = 0;
    v39 = *(UnusedCacheEntryWithInfo + 72);
    if (v39)
    {
      dispatch_release(v39);
    }

    *(UnusedCacheEntryWithInfo + 72) = 0;
    ++*(UnusedCacheEntryWithInfo + 88);
    *buf = UnusedCacheEntryWithInfo;
    std::list<CI::attached_surface_t *>::remove(CI::gCacheList, buf);
    operator new();
  }

  ++CI::gCacheCountAllocated;
  operator new();
}

void __GetSurfaceFromCache_block_invoke_27(uint64_t a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = CI_VERBOSE_SIGNPOSTS();
  if (v2)
  {
    v4 = ci_signpost_log_cache(v2, v3);
    if (os_signpost_enabled(v4))
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 60);
      v7 = *(a1 + 32);
      v8 = *(a1 + 36);
      v9 = *(a1 + 40);
      v10 = *(a1 + 48);
      v11[0] = 67110400;
      v11[1] = v5;
      v12 = 1024;
      v13 = v6;
      v14 = 1024;
      v15 = v7;
      v16 = 1024;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v4, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "GetSurfaceFromCache", "cid:%u iid:%u [%d %d %zu %zu]", v11, 0x2Eu);
    }
  }
}

void RetainSurfaceFromCache(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __RetainSurfaceFromCache_block_invoke;
  block[3] = &__block_descriptor_tmp_33_1;
  block[4] = cf;
  dispatch_async(gSurfaceCacheQueue, block);
}

void __RetainSurfaceFromCache_block_invoke(CI *a1)
{
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = CI::gCacheList == 0;
  }

  else
  {
    v2 = 1;
  }

  if (!v2)
  {
    v3 = CI::gCacheList;
    while (1)
    {
      v3 = *(v3 + 8);
      if (v3 == CI::gCacheList)
      {
        break;
      }

      v4 = *(v3 + 16);
      if (*(v4 + 24) == v1)
      {
        ++*(v4 + 88);
        CI::UpdateVolatilityStats(a1);
        v5 = CI_LOG_SURFACE_CACHE();
        if (v5)
        {
          v7 = v5 > 1;

          CI::LogCacheState(v7, "RetainSurfaceFromCache", v6);
        }

        return;
      }
    }
  }
}

void ReturnSurfaceToCache(uint64_t a1)
{
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __ReturnSurfaceToCache_block_invoke;
  block[3] = &__block_descriptor_tmp_35_0;
  block[4] = a1;
  dispatch_async(gSurfaceCacheQueue, block);
}

void __ReturnSurfaceToCache_block_invoke(uint64_t a1, CI::SurfaceCacheEntry *a2)
{
  v2 = *(a1 + 32);
  v3 = CI::gCacheList;
  if (v2)
  {
    v4 = CI::gCacheList == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v6 = CI::gCacheList;
    while (1)
    {
      v6 = *(v6 + 8);
      if (v6 == CI::gCacheList)
      {
        break;
      }

      v7 = *(v6 + 16);
      v8 = *(v7 + 24);
      if (v8 == v2)
      {
        v9 = *(v7 + 88);
        if (v9 <= 0)
        {
          __ReturnSurfaceToCache_block_invoke_cold_1();
        }

        v10 = v9 - 1;
        *(v7 + 88) = v10;
        if (!v10)
        {
          if (*(v7 + 152))
          {
            CI::RemoveCacheEntry(v7, a2);
            v8 = (*(*v7 + 8))(v7);
            goto LABEL_12;
          }

          v13 = *(v7 + 96);
          if (v13 != 8)
          {
            if (v13 == -1)
            {
              goto LABEL_23;
            }

            if (v13 > 6 || *(v7 + 60) || (v14 = *(v3 + 8), v14 == v3))
            {
LABEL_35:
              v8 = SurfaceSetVolatile(v8, v13);
            }

            else
            {
              while (1)
              {
                v15 = *(v14 + 16);
                if (*(v15 + 96) >= 7 && !*(v15 + 88) && *(v15 + 56) && *(v15 + 64) && SurfaceIsVolatileNonEmpty(*(v15 + 24)))
                {
                  break;
                }

                v14 = *(v14 + 8);
                if (v14 == v3)
                {
                  v8 = *(v7 + 24);
                  v13 = *(v7 + 96);
                  goto LABEL_35;
                }
              }

LABEL_23:
              CI::SurfaceCacheEntry::empty(v7);
            }
          }

LABEL_12:
          v8 = CI::RemoveFromStartUntilAtOrBelowCapacity(v8);
        }

        CI::UpdateVolatilityStats(v8);
        v11 = CI_LOG_SURFACE_CACHE();
        if (v11)
        {
          CI::LogCacheState((v11 > 1), "ReturnSurfaceToCache", v12);
        }

        break;
      }
    }

    v2 = *(a1 + 32);
  }

  if (v2)
  {

    CFRelease(v2);
  }
}

void CI::RemoveCacheEntry(CI *this, CI::SurfaceCacheEntry *a2)
{
  v13 = this;
  if (CI::gCacheList)
  {
    v2 = std::list<CI::attached_surface_t *>::remove(CI::gCacheList, &v13);
    v3 = *(v13 + 3);
    v4 = CI::gReleaseSurfaceBlockMap(v2);
    v5 = v4 + 1;
    v6 = *v4;
    if (*v4 != v4 + 1)
    {
      do
      {
        v7 = _Block_copy(v6[5]);
        CFRetain(v3);
        v8 = v6[4];
        block[0] = MEMORY[0x1E69E9820];
        block[1] = 0x40000000;
        block[2] = ___ZN2CIL16RemoveCacheEntryEPNS_17SurfaceCacheEntryE_block_invoke;
        block[3] = &unk_1E75C84D0;
        block[4] = v7;
        block[5] = v3;
        dispatch_async(v8, block);
        v9 = v6[1];
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
            v10 = v6[2];
            v11 = *v10 == v6;
            v6 = v10;
          }

          while (!v11);
        }

        v6 = v10;
      }

      while (v10 != v5);
    }
  }
}

void AddReleaseSurfaceBlock(uint64_t a1, uint64_t a2)
{
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __AddReleaseSurfaceBlock_block_invoke;
  v4[3] = &unk_1E75C81F8;
  v4[4] = a2;
  v4[5] = a1;
  dispatch_sync(gSurfaceCacheQueue, v4);
}

void *__AddReleaseSurfaceBlock_block_invoke(uint64_t a1)
{
  v2 = CI::gReleaseSurfaceBlockMap(a1);
  v3 = (a1 + 40);
  v6 = *(v2 + 8);
  v4 = (v2 + 8);
  v5 = v6;
  if (!v6)
  {
    goto LABEL_9;
  }

  v7 = *v3;
  v8 = v4;
  do
  {
    v9 = *(v5 + 4);
    v10 = v9 >= v7;
    v11 = v9 < v7;
    if (v10)
    {
      v8 = v5;
    }

    v5 = *(v5 + v11);
  }

  while (v5);
  if (v8 == v4 || v7 < *(v8 + 4))
  {
LABEL_9:
    v8 = v4;
  }

  if (v8 != (CI::gReleaseSurfaceBlockMap(v4) + 8))
  {
    __AddReleaseSurfaceBlock_block_invoke_cold_1();
  }

  dispatch_retain(*(a1 + 40));
  v12 = _Block_copy(*(a1 + 32));
  v13 = CI::gReleaseSurfaceBlockMap(v12);
  v15 = v3;
  result = std::__tree<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::__map_value_compare<dispatch_queue_s *,std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::less<dispatch_queue_s *>,true>,std::allocator<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>>>::__emplace_unique_key_args<dispatch_queue_s *,std::piecewise_construct_t const&,std::tuple<dispatch_queue_s * const&>,std::tuple<>>(v13, v3, &std::piecewise_construct, &v15);
  result[5] = v12;
  return result;
}

void RemoveReleaseSurfaceBlock(uint64_t a1)
{
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __RemoveReleaseSurfaceBlock_block_invoke;
  block[3] = &__block_descriptor_tmp_45_1;
  block[4] = a1;
  dispatch_sync(gSurfaceCacheQueue, block);
}

uint64_t __RemoveReleaseSurfaceBlock_block_invoke(dispatch_object_t *a1)
{
  v2 = CI::gReleaseSurfaceBlockMap(a1);
  v5 = *(v2 + 8);
  v3 = (v2 + 8);
  v4 = v5;
  if (!v5)
  {
    goto LABEL_9;
  }

  v6 = a1[4];
  v7 = v3;
  do
  {
    v8 = v4[4];
    v9 = v8 >= v6;
    v10 = v8 < v6;
    if (v9)
    {
      v7 = v4;
    }

    v4 = v4[v10];
  }

  while (v4);
  if (v7 == v3 || v6 < *(v7 + 4))
  {
LABEL_9:
    v7 = v3;
  }

  result = CI::gReleaseSurfaceBlockMap(v3);
  if (v7 != (result + 8))
  {
    _Block_release(*(v7 + 5));
    dispatch_release(a1[4]);
    v13 = CI::gReleaseSurfaceBlockMap(v12);

    return std::__tree<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::__map_value_compare<dispatch_queue_s *,std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::less<dispatch_queue_s *>,true>,std::allocator<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>>>::__erase_unique<dispatch_queue_s *>(v13, a1 + 4);
  }

  return result;
}

void RegularizePriorityForContextEntries(uint64_t a1)
{
  v1 = a1;
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __RegularizePriorityForContextEntries_block_invoke;
  block[3] = &__block_descriptor_tmp_48;
  v3 = v1;
  dispatch_async(gSurfaceCacheQueue, block);
}

uint64_t __RegularizePriorityForContextEntries_block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  v2 = CI::gCacheList;
  if (v1)
  {
    v3 = CI::gCacheList == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = *(CI::gCacheList + 8);
    if (v4 != CI::gCacheList)
    {
      do
      {
        v5 = *(v4 + 16);
        if (*(v5 + 56) == v1 && *(v5 + 96) >= 7)
        {
          *(v5 + 96) = 6;
        }

        v4 = *(v4 + 8);
      }

      while (v4 != v2);
    }
  }

  return result;
}

void RemoveCacheEntriesForContext(uint64_t a1)
{
  v1 = a1;
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __RemoveCacheEntriesForContext_block_invoke;
  block[3] = &__block_descriptor_tmp_50_0;
  v3 = v1;
  dispatch_sync(gSurfaceCacheQueue, block);
}

void __RemoveCacheEntriesForContext_block_invoke(CI *a1, CI::SurfaceCacheEntry *a2)
{
  v2 = *(a1 + 8);
  v3 = CI::gCacheList;
  if (v2)
  {
    v4 = CI::gCacheList == 0;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    goto LABEL_21;
  }

  v15 = 0;
  v16 = 0;
  v14 = 0;
  v5 = *(CI::gCacheList + 8);
  if (v5 == CI::gCacheList)
  {
    goto LABEL_21;
  }

  v6 = 0;
  do
  {
    v7 = *(v5 + 16);
    v13 = v7;
    if (*(v7 + 56) == v2 && !*(v7 + 88))
    {
      std::vector<CI::SurfaceCacheEntry *>::push_back[abi:nn200100](&v14, &v13);
      v6 = 1;
    }

    v5 = *(v5 + 8);
  }

  while (v5 != v3);
  v8 = v14;
  v9 = v15;
  if (v14 != v15)
  {
    do
    {
      v10 = *v8;
      CI::RemoveCacheEntry(*v8, a2);
      if (v10)
      {
        a1 = (*(*v10 + 8))(v10);
      }

      ++v8;
    }

    while (v8 != v9);
    v8 = v14;
  }

  if (v8)
  {
    v15 = v8;
    operator delete(v8);
  }

  if ((v6 & 1) == 0)
  {
LABEL_21:
    CI_LOG_SURFACE_CACHE();
  }

  else
  {
    CI::UpdateVolatilityStats(a1);
    v11 = CI_LOG_SURFACE_CACHE();
    if (v11)
    {
      CI::LogCacheState((v11 > 1), "RemoveCacheEntriesForContext", v12);
    }
  }
}

void PurgeCacheEntriesForImage(uint64_t a1)
{
  v1 = a1;
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __PurgeCacheEntriesForImage_block_invoke;
  block[3] = &__block_descriptor_tmp_52;
  v3 = v1;
  dispatch_async(gSurfaceCacheQueue, block);
}

void __PurgeCacheEntriesForImage_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = CI::gCacheList;
  if (v1)
  {
    v3 = CI::gCacheList == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3)
  {
    goto LABEL_18;
  }

  v4 = *(CI::gCacheList + 8);
  if (v4 == CI::gCacheList)
  {
    goto LABEL_18;
  }

  v5 = 0;
  do
  {
    v6 = *(v4 + 16);
    if (*(v6 + 60) == v1)
    {
      if (*(v6 + 88))
      {
        *(v6 + 96) = -1;
      }

      else
      {
        CI::SurfaceCacheEntry::empty(v6);
      }

      v5 = 1;
    }

    v4 = *(v4 + 8);
  }

  while (v4 != v2);
  if ((v5 & 1) == 0)
  {
LABEL_18:

    CI_LOG_SURFACE_CACHE();
  }

  else
  {
    CI::UpdateVolatilityStats(v6);
    v7 = CI_LOG_SURFACE_CACHE();
    if (v7)
    {
      v9 = v7 > 1;

      CI::LogCacheState(v9, "PurgeCacheEntriesForImage", v8);
    }
  }
}

float GetSurfaceCacheFillTime()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (GetQueue(void)::onceToken != -1)
  {
    GetSurfaceFromCacheAndFill_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __GetSurfaceCacheFillTime_block_invoke;
  block[3] = &unk_1E75C82A0;
  block[4] = &v3;
  dispatch_sync(gSurfaceCacheQueue, block);
  v0 = v4[6];
  _Block_object_dispose(&v3, 8);
  return v0;
}

float __GetSurfaceCacheFillTime_block_invoke(uint64_t a1)
{
  mach_timebase_info(&info);
  v2.i64[0] = info.numer;
  v2.i64[1] = info.denom;
  v3 = &qword_19CF237D0;
  v4 = vld1q_dup_f64(v3);
  v4.f64[0] = CI::gTimeFilling;
  v5 = vmulq_f64(v4, vcvtq_f64_u64(v2));
  result = vdivq_f64(v5, vdupq_laneq_s64(v5, 1)).f64[0];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

uint64_t GetSurfaceCacheNonVolatileSize()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (GetQueue(void)::onceToken != -1)
  {
    GetSurfaceFromCacheAndFill_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __GetSurfaceCacheNonVolatileSize_block_invoke;
  block[3] = &unk_1E75C82C8;
  block[4] = &v3;
  dispatch_sync(gSurfaceCacheQueue, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t __GetSurfaceCacheNonVolatileSize_block_invoke(uint64_t result)
{
  v1 = atomic_load(&CI::gCacheSize);
  v2 = atomic_load(&CI::gVolatileSize);
  *(*(*(result + 32) + 8) + 24) = v1 - v2;
  return result;
}

uint64_t GetSurfaceCachePeakNonVolatileSize()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (GetQueue(void)::onceToken != -1)
  {
    GetSurfaceFromCacheAndFill_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __GetSurfaceCachePeakNonVolatileSize_block_invoke;
  block[3] = &unk_1E75C82F0;
  block[4] = &v3;
  dispatch_sync(gSurfaceCacheQueue, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t GetSurfaceCacheNonVolatileSizeForContext(int a1)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (GetQueue(void)::onceToken != -1)
  {
    GetSurfaceFromCacheAndFill_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __GetSurfaceCacheNonVolatileSizeForContext_block_invoke;
  v4[3] = &unk_1E75C8318;
  v4[4] = &v6;
  v5 = a1;
  dispatch_sync(gSurfaceCacheQueue, v4);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t __GetSurfaceCacheNonVolatileSizeForContext_block_invoke(uint64_t result)
{
  v1 = *(result + 40);
  if (v1)
  {
    v2 = CI::gCacheList == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || (v3 = *(CI::gCacheList + 8), v3 == CI::gCacheList))
  {
    v4 = 0;
  }

  else
  {
    v4 = 0;
    do
    {
      v5 = *(v3 + 16);
      if (*(v5 + 56) == v1 && *(v5 + 88))
      {
        v4 += *(v5 + 104);
      }

      v3 = *(v3 + 8);
    }

    while (v3 != CI::gCacheList);
  }

  *(*(*(result + 32) + 8) + 24) = v4;
  return result;
}

uint64_t CopyPeakNonVolatileList()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (GetQueue(void)::onceToken != -1)
  {
    GetSurfaceFromCacheAndFill_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CopyPeakNonVolatileList_block_invoke;
  block[3] = &unk_1E75C8340;
  block[4] = &v3;
  dispatch_sync(gSurfaceCacheQueue, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

CFArrayRef __CopyPeakNonVolatileList_block_invoke(uint64_t a1, const __CFArray *a2)
{
  result = __CFArray::createCopy(CI::gPeakNonVolatileList, a2);
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

CFMutableArrayRef CopyContextPeakNonVolatileList(int a1)
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __CopyContextPeakNonVolatileList_block_invoke;
  v4[3] = &__block_descriptor_tmp_61;
  v5 = a1;
  v4[4] = Mutable;
  dispatch_sync(gSurfaceCacheQueue, v4);
  return Mutable;
}

void __CopyContextPeakNonVolatileList_block_invoke(uint64_t a1, const __CFArray *a2)
{
  Copy = __CFArray::createCopy(CI::gPeakNonVolatileList, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __CopyContextPeakNonVolatileList_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_60_0;
  v5 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  __CFArray::for_each(Copy, v4);
  CFRelease(Copy);
}

void __CopyContextPeakNonVolatileList_block_invoke_2(uint64_t a1, __CFDictionary *this)
{
  if (__CFDictionary::getInt32(this, @"ctxIndex", 0) == *(a1 + 40))
  {
    v4 = *(a1 + 32);
    if (v4)
    {

      CFArrayAppendValue(v4, this);
    }
  }
}

CFMutableArrayRef CopyAnyImagePeakNonVolatileList()
{
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CopyAnyImagePeakNonVolatileList_block_invoke;
  block[3] = &__block_descriptor_tmp_68;
  block[4] = Mutable;
  dispatch_sync(gSurfaceCacheQueue, block);
  return Mutable;
}

void __CopyAnyImagePeakNonVolatileList_block_invoke(uint64_t a1, const __CFArray *a2)
{
  Copy = __CFArray::createCopy(CI::gPeakNonVolatileList, a2);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __CopyAnyImagePeakNonVolatileList_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_67_1;
  v4[4] = *(a1 + 32);
  __CFArray::for_each(Copy, v4);
  CFRelease(Copy);
}

void __CopyAnyImagePeakNonVolatileList_block_invoke_2(uint64_t a1, __CFDictionary *this)
{
  if (__CFDictionary::getInt32(this, @"imgIndex", 0))
  {
    v4 = *(a1 + 32);
    if (v4)
    {

      CFArrayAppendValue(v4, this);
    }
  }
}

uint64_t GetSurfaceCacheCountAllocated()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0;
  if (GetQueue(void)::onceToken != -1)
  {
    GetSurfaceFromCacheAndFill_cold_1();
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __GetSurfaceCacheCountAllocated_block_invoke;
  block[3] = &unk_1E75C83E8;
  block[4] = &v3;
  dispatch_sync(gSurfaceCacheQueue, block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

void ResetCacheStatistics(uint64_t a1)
{
  if (GetQueue(void)::onceToken != -1)
  {
    RetainSurfaceFromCache_cold_1();
  }

  v2 = gSurfaceCacheQueue;

  dispatch_sync(v2, &__block_literal_global_74);
}

void __ResetCacheStatistics_block_invoke()
{
  CI::gCacheCountPeak = 0;
  CI::gCacheSizePeak = 0;
  CI::gCacheNonVolatileSizePeak = 0;
  CI::gCacheCountAllocated = 0;
  CI::gCacheBytesAllocated = 0;
  CI::gCacheBytesFilled = 0;
  if (CI::gPeakNonVolatileList)
  {
    CFArrayRemoveAllValues(CI::gPeakNonVolatileList);
  }

  if (CI_LOG_SURFACE_CACHE())
  {

    CI::LogCacheState(1, "ResetCacheStatistics", v0);
  }
}

void ___ZL8GetQueuev_block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  gSurfaceCacheQueue = dispatch_queue_create("CI::SurfaceCacheQueue", v0);
  global_queue = dispatch_get_global_queue(2, 0);
  gMemoryPressure = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, global_queue);
  dispatch_source_set_event_handler(gMemoryPressure, &__block_literal_global_86_1);
  v2 = gMemoryPressure;

  dispatch_resume(v2);
}

void ___ZL8GetQueuev_block_invoke_3(uint64_t a1, CI::SurfaceCacheEntry *a2)
{
  v2 = CI::gCacheList;
  if (!CI::gCacheList || (v12 = 0, v13 = 0, v11 = 0, v3 = *(CI::gCacheList + 8), v3 == CI::gCacheList))
  {

    CI_LOG_SURFACE_CACHE();
  }

  else
  {
    v4 = 0;
    do
    {
      v10 = *(v3 + 16);
      if (!*(v10 + 88))
      {
        std::vector<CI::SurfaceCacheEntry *>::push_back[abi:nn200100](&v11, &v10);
        v4 = 1;
      }

      v3 = *(v3 + 8);
    }

    while (v3 != v2);
    v5 = v11;
    v6 = v12;
    if (v11 != v12)
    {
      do
      {
        v7 = *v5;
        CI::RemoveCacheEntry(*v5, a2);
        if (v7)
        {
          (*(*v7 + 8))(v7);
        }

        ++v5;
      }

      while (v5 != v6);
      v5 = v11;
    }

    if (v5)
    {
      v12 = v5;
      operator delete(v5);
    }

    v8 = CI_LOG_SURFACE_CACHE();
    if ((v4 & (v8 != 0)) == 1)
    {
      CI::LogCacheState((v8 > 1), "MemoryPreasure", v9);
    }
  }
}

void std::vector<CI::SurfaceCacheEntry *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v8 = v4 - *a1;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Queue *>>(a1, v10);
    }

    v11 = (8 * v7);
    *v11 = *a2;
    v6 = 8 * v7 + 8;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

void std::deque<CI::SurfaceCacheEntry *>::push_back(unint64_t *result, void *a2)
{
  v4 = result[2];
  v5 = result[1];
  if (v4 == v5)
  {
    v6 = 0;
  }

  else
  {
    v6 = ((v4 - v5) << 6) - 1;
  }

  v7 = result[5];
  v8 = v7 + result[4];
  if (v6 == v8)
  {
    std::deque<CI::SurfaceCacheEntry *>::__add_back_capacity(result);
    v5 = result[1];
    v7 = result[5];
    v8 = result[4] + v7;
  }

  *(*(v5 + ((v8 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v8 & 0x1FF)) = *a2;
  result[5] = v7 + 1;
}

void std::deque<CI::SurfaceCacheEntry *>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x200;
  v3 = v1 - 512;
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
    std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<CI::SurfaceCacheEntry **>::emplace_back<CI::SurfaceCacheEntry **&>(a1, &v9);
}

void std::__split_buffer<CI::SurfaceCacheEntry **>::emplace_back<CI::SurfaceCacheEntry **&>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(a1, v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<CI::SurfaceCacheEntry **>::emplace_front<CI::SurfaceCacheEntry **>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(a1, v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = (v6 + 8 * v8);
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 8) = *a2;
  a1[1] = a1[1] - 8;
}

void std::__split_buffer<CI::SurfaceCacheEntry **>::emplace_back<CI::SurfaceCacheEntry **>(unint64_t *a1, void *a2)
{
  v4 = a1[2];
  if (v4 == a1[3])
  {
    v5 = a1[1];
    v6 = &v5[-*a1];
    if (v5 <= *a1)
    {
      if (v4 == *a1)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*a1] >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(a1[4], v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = a1[1];
    }

    v4 = &v9[v10];
    a1[1] = &v5[8 * v7];
    a1[2] = &v9[v10];
  }

  *v4 = *a2;
  a1[2] += 8;
}

void std::__split_buffer<CI::SurfaceCacheEntry **>::emplace_front<CI::SurfaceCacheEntry **&>(const void **a1, void *a2)
{
  v4 = a1[1];
  if (v4 == *a1)
  {
    v6 = a1[2];
    v7 = a1[3];
    if (v6 >= v7)
    {
      if (v7 == v4)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v7 - v4) >> 2;
      }

      std::__allocate_at_least[abi:nn200100]<std::allocator<NSString *>>(a1[4], v9);
    }

    v8 = (((v7 - v6) >> 3) + 1) / 2;
    v5 = &v4[8 * v8];
    if (v6 != v4)
    {
      memmove(&v4[8 * v8], v4, v6 - v4);
      v6 = a1[2];
    }

    a1[1] = v5;
    a1[2] = &v6[8 * v8];
  }

  else
  {
    v5 = a1[1];
  }

  *(v5 - 1) = *a2;
  a1[1] = a1[1] - 8;
}

uint64_t std::deque<CI::SurfaceCacheEntry *>::~deque[abi:nn200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  a1[5] = 0;
  v4 = v3 - v2;
  if (v4 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v4 = v3 - v2;
    }

    while (v4 > 2);
  }

  if (v4 == 1)
  {
    v5 = 256;
  }

  else
  {
    if (v4 != 2)
    {
      goto LABEL_9;
    }

    v5 = 512;
  }

  a1[4] = v5;
LABEL_9:
  while (v2 != v3)
  {
    v6 = *v2++;
    operator delete(v6);
  }

  return std::__split_buffer<CI::SurfaceCacheEntry **>::~__split_buffer(a1);
}

uint64_t std::__split_buffer<CI::SurfaceCacheEntry **>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    operator delete(v4);
  }

  return a1;
}

uint64_t ___ZN2CIL13LogCacheStateEbPKc_block_invoke(uint64_t a1, FILE *a2)
{
  fprintf(a2, "SurfaceCache: %s\n", *(a1 + 32));
  fprintf(a2, "  count: %ld\n", *(a1 + 40));
  v6 = atomic_load(&CI::gCacheSize);
  if (v6 < 0x80000001)
  {
    if (v6 <= 0x200000)
    {
      if (v6 < 0x801)
      {
        goto LABEL_8;
      }

      v7 = vcvtd_n_f64_u64(v6, 0xAuLL);
    }

    else
    {
      v7 = vcvtd_n_f64_u64(v6, 0x14uLL);
    }
  }

  else
  {
    v7 = vcvtd_n_f64_u64(v6, 0x1EuLL);
  }

  v6 = llround(v7);
LABEL_8:
  v8 = atomic_load(&CI::gCacheSize);
  if (v8 <= 0x80000000)
  {
    if (v8 <= 0x200000)
    {
      if (v8 <= 0x800)
      {
        v9 = "B";
      }

      else
      {
        v9 = "KB";
      }
    }

    else
    {
      v9 = "MB";
    }
  }

  else
  {
    v9 = "GB";
  }

  fprintf(a2, "  size: %ld%s\n", v6, v9);
  v10 = *(a1 + 48);
  v11 = llround(vcvtd_n_f64_u64(v10, 0x1EuLL));
  v12 = llround(vcvtd_n_f64_u64(v10, 0x14uLL));
  v13 = "MB";
  v14 = llround(vcvtd_n_f64_u64(v10, 0xAuLL));
  if (v10 > 0x800)
  {
    v15 = "KB";
  }

  else
  {
    v14 = *(a1 + 48);
    v15 = "B";
  }

  if (v10 <= 0x200000)
  {
    v12 = v14;
    v13 = v15;
  }

  v16 = v10 > 0x80000000;
  if (v10 <= 0x80000000)
  {
    v17 = v12;
  }

  else
  {
    v17 = v11;
  }

  if (v16)
  {
    v18 = "GB";
  }

  else
  {
    v18 = v13;
  }

  fprintf(a2, "  non-volatile: %ld%s\n", v17, v18);
  v19 = *(a1 + 56);
  v20 = llround(vcvtd_n_f64_u64(v19, 0x1EuLL));
  v21 = llround(vcvtd_n_f64_u64(v19, 0x14uLL));
  v22 = "MB";
  v23 = llround(vcvtd_n_f64_u64(v19, 0xAuLL));
  if (v19 > 0x800)
  {
    v24 = "KB";
  }

  else
  {
    v23 = *(a1 + 56);
    v24 = "B";
  }

  if (v19 <= 0x200000)
  {
    v21 = v23;
    v22 = v24;
  }

  v25 = v19 > 0x80000000;
  if (v19 <= 0x80000000)
  {
    v26 = v21;
  }

  else
  {
    v26 = v20;
  }

  if (v25)
  {
    v27 = "GB";
  }

  else
  {
    v27 = v22;
  }

  result = fprintf(a2, "  volatile: %ld%s\n", v26, v27);
  v29 = *(a1 + 64);
  if (v29 != -1)
  {
    v30 = llround(vcvtd_n_f64_u64(v29, 0x1EuLL));
    v31 = llround(vcvtd_n_f64_u64(v29, 0x14uLL));
    v32 = "MB";
    v33 = llround(vcvtd_n_f64_u64(v29, 0xAuLL));
    if (v29 > 0x800)
    {
      v34 = "KB";
    }

    else
    {
      v33 = *(a1 + 64);
      v34 = "B";
    }

    if (v29 <= 0x200000)
    {
      v31 = v33;
      v32 = v34;
    }

    v35 = v29 > 0x80000000;
    if (v29 <= 0x80000000)
    {
      v36 = v31;
    }

    else
    {
      v36 = v30;
    }

    if (v35)
    {
      v37 = "GB";
    }

    else
    {
      v37 = v32;
    }

    result = fprintf(a2, "  capacity: %ld%s\n", v36, v37);
  }

  if (CI::gCacheGetCount)
  {
    mach_timebase_info(&info);
    v38 = CI::gTimeFilling;
    LODWORD(v2) = info.numer;
    LODWORD(v3) = info.denom;
    fwrite("  cumulativeStats:\n", 0x13uLL, 1uLL, a2);
    v39 = CI::gCacheSizePeak;
    if (CI::gCacheSizePeak <= 0x80000000)
    {
      if (CI::gCacheSizePeak <= 0x200000)
      {
        v41 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0xAuLL));
        if (CI::gCacheSizePeak <= 0x800)
        {
          v40 = "B";
        }

        else
        {
          v39 = v41;
          v40 = "KB";
        }
      }

      else
      {
        v39 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0x14uLL));
        v40 = "MB";
      }
    }

    else
    {
      v39 = llround(vcvtd_n_f64_u64(CI::gCacheSizePeak, 0x1EuLL));
      v40 = "GB";
    }

    v42 = CI::gCacheNonVolatileSizePeak;
    if (CI::gCacheNonVolatileSizePeak <= 0x80000000)
    {
      if (CI::gCacheNonVolatileSizePeak <= 0x200000)
      {
        v44 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0xAuLL));
        if (CI::gCacheNonVolatileSizePeak <= 0x800)
        {
          v43 = "B";
        }

        else
        {
          v42 = v44;
          v43 = "KB";
        }
      }

      else
      {
        v42 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0x14uLL));
        v43 = "MB";
      }
    }

    else
    {
      v42 = llround(vcvtd_n_f64_u64(CI::gCacheNonVolatileSizePeak, 0x1EuLL));
      v43 = "GB";
    }

    v45 = CI::gCacheBytesAllocated;
    if (CI::gCacheBytesAllocated <= 0x80000000)
    {
      if (CI::gCacheBytesAllocated <= 0x200000)
      {
        v47 = llround(vcvtd_n_f64_u64(CI::gCacheBytesAllocated, 0xAuLL));
        if (CI::gCacheBytesAllocated <= 0x800)
        {
          v46 = "B";
        }

        else
        {
          v45 = v47;
          v46 = "KB";
        }
      }

      else
      {
        v45 = llround(vcvtd_n_f64_u64(CI::gCacheBytesAllocated, 0x14uLL));
        v46 = "MB";
      }
    }

    else
    {
      v45 = llround(vcvtd_n_f64_u64(CI::gCacheBytesAllocated, 0x1EuLL));
      v46 = "GB";
    }

    v48 = CI::gCacheBytesFilled;
    if (CI::gCacheBytesFilled <= 0x80000000)
    {
      if (CI::gCacheBytesFilled <= 0x200000)
      {
        v50 = llround(vcvtd_n_f64_u64(CI::gCacheBytesFilled, 0xAuLL));
        if (CI::gCacheBytesFilled <= 0x800)
        {
          v49 = "B";
        }

        else
        {
          v48 = v50;
          v49 = "KB";
        }
      }

      else
      {
        v48 = llround(vcvtd_n_f64_u64(CI::gCacheBytesFilled, 0x14uLL));
        v49 = "MB";
      }
    }

    else
    {
      v48 = llround(vcvtd_n_f64_u64(CI::gCacheBytesFilled, 0x1EuLL));
      v49 = "GB";
    }

    fprintf(a2, "    allocCount=%ld peakCount=%ld peakSize=%ld%s peakNVSize=%ld%s totalAlloced=%ld%s totalFilled=%ld%s timeFilling=%.3gms\n", CI::gCacheCountAllocated, CI::gCacheCountPeak, v39, v40, v42, v43, v45, v46, v48, v49, v38 * 1000.0 * v2 / (v3 * 1000000000.0));
    return fprintf(a2, "    hits=%ld (%lu%%)  purgedHits=%ld (%lu%%)  recycledMisses=%ld (%lu%%)  misses=%ld (%lu%%)  inusemisses=%ld (%lu%%)\n", CI::gCacheGetCount - (CI::gCacheGetCountMissed + CI::gCacheGetCountPurged), 100 * (CI::gCacheGetCount - (CI::gCacheGetCountMissed + CI::gCacheGetCountPurged)) / CI::gCacheGetCount, CI::gCacheGetCountPurged, 100 * CI::gCacheGetCountPurged / CI::gCacheGetCount, CI::gCacheGetCountRecycled, 100 * CI::gCacheGetCountRecycled / CI::gCacheGetCount, CI::gCacheGetCountMissed - CI::gCacheGetCountRecycled, 100 * (CI::gCacheGetCountMissed - CI::gCacheGetCountRecycled) / CI::gCacheGetCount, CI::gCacheGetCountInUseMissed, 100 * CI::gCacheGetCountInUseMissed / CI::gCacheGetCount);
  }

  return result;
}

uint64_t ___ZN2CIL13LogCacheStateEbPKc_block_invoke_121(int a1, FILE *__stream)
{
  v2 = CI::gCacheList;
  v3 = *(CI::gCacheList + 8);
  if (v3 != CI::gCacheList)
  {
    do
    {
      v5 = *(v3 + 16);
      fwrite("  ", 2uLL, 1uLL, __stream);
      result = CI::SurfaceCacheEntry::print_core(v5, __stream);
      v3 = *(v3 + 8);
    }

    while (v3 != v2);
  }

  return result;
}

void ___ZN2CIL16RemoveCacheEntryEPNS_17SurfaceCacheEntryE_block_invoke(uint64_t a1)
{
  (*(*(a1 + 32) + 16))();
  _Block_release(*(a1 + 32));
  v2 = *(a1 + 40);

  CFRelease(v2);
}

CFArrayRef __CFArray::createCopy(CFArrayRef theArray, const __CFArray *a2)
{
  if (theArray)
  {
    return CFArrayCreateCopy(0, theArray);
  }

  else
  {
    return CFArrayCreate(0, 0, 0, MEMORY[0x1E695E9C0]);
  }
}

void *CI::InstanceCounted<(CI::Type)86>::~InstanceCounted(void *result)
{
  *result = &unk_1F103CF48;
  atomic_fetch_add(&dword_1ED7C47D8[77], 0xFFFFFFFF);
  return result;
}

void CI::InstanceCounted<(CI::Type)86>::~InstanceCounted(void *a1)
{
  *a1 = &unk_1F103CF48;
  atomic_fetch_add(&dword_1ED7C47D8[77], 0xFFFFFFFF);
  JUMPOUT(0x19EAF5590);
}

void *std::__tree<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::__map_value_compare<dispatch_queue_s *,std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::less<dispatch_queue_s *>,true>,std::allocator<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>>>::__emplace_unique_key_args<dispatch_queue_s *,std::piecewise_construct_t const&,std::tuple<dispatch_queue_s * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

uint64_t std::__tree<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::__map_value_compare<dispatch_queue_s *,std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>,std::less<dispatch_queue_s *>,true>,std::allocator<std::__value_type<dispatch_queue_s *,void({block_pointer})(__IOSurface *)>>>::__erase_unique<dispatch_queue_s *>(uint64_t **a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = (a1 + 1);
  do
  {
    v5 = v2[4];
    v6 = v5 >= v3;
    v7 = v5 < v3;
    if (v6)
    {
      v4 = v2;
    }

    v2 = v2[v7];
  }

  while (v2);
  if (v4 == (a1 + 1) || v3 < v4[4])
  {
    return 0;
  }

  std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::TextureReadFunction>>>::__remove_node_pointer(a1, v4);
  operator delete(v4);
  return 1;
}

CI::TileTask *CI::TileTask::TileTask(CI::TileTask *this, CI::Context *a2, CI::ProgramNode *a3, const CGRect *a4)
{
  *(this + 2) = 1;
  *this = &unk_1F103CF70;
  *(this + 2) = dispatch_group_create();
  v8 = dispatch_group_create();
  v9 = *(a2 + 24);
  *(this + 3) = v8;
  *(this + 4) = v9;
  *(this + 5) = 0;
  if (a3)
  {
    v10 = CI::Object::ref(a3);
  }

  else
  {
    v10 = 0;
  }

  *(this + 6) = v10;
  origin = a4->origin;
  *(this + 72) = a4->size;
  *(this + 56) = origin;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 1065353216;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 40) = 1065353216;
  v12 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v13 = dispatch_queue_create("CI::TileTaskQueue", v12);
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 21) = v13;
  return this;
}

void CI::TileTask::~TileTask(dispatch_queue_t *this)
{
  *this = &unk_1F103CF70;
  dispatch_sync(this[21], &__block_literal_global_95);
  v2 = this[6];
  if (v2)
  {
    CI::Object::unref(v2);
  }

  dispatch_release(this[2]);
  dispatch_release(this[3]);
  dispatch_release(this[21]);
  v3 = this[22];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = this[23];
  if (v4)
  {
    CFRelease(v4);
  }

  for (i = this[13]; i; i = i->isa)
  {
    isa = i[14].isa;
    if (isa)
    {
      CFRelease(isa);
    }
  }

  std::__hash_table<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::__unordered_map_hasher<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::hash<CI::ProgramNode *>,std::equal_to<CI::ProgramNode *>,true>,std::__unordered_map_equal<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::equal_to<CI::ProgramNode *>,std::hash<CI::ProgramNode *>,true>,std::allocator<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>>>::~__hash_table(this + 16);
  std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::~__hash_table((this + 11));
}

{
  CI::TileTask::~TileTask(this);

  JUMPOUT(0x19EAF5590);
}

void *CI::TileTask::setTaskError(void *this, CFTypeRef cf)
{
  if (!this[23])
  {
    this[23] = cf;
    return CFRetain(cf);
  }

  return this;
}

void CI::TileTask::setCommandBufferError(CI::TileTask *this, CFTypeRef cf)
{
  CFRetain(cf);
  v4 = *(this + 21);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___ZN2CI8TileTask21setCommandBufferErrorEP9__CFError_block_invoke;
  v5[3] = &__block_descriptor_tmp_2_3;
  v5[4] = this;
  v5[5] = cf;
  dispatch_async(v4, v5);
}

void ___ZN2CI8TileTask21setCommandBufferErrorEP9__CFError_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 176))
  {
    *(v1 + 176) = CFRetain(*(a1 + 40));
    v3 = *(a1 + 40);

    CFRelease(v3);
  }
}

uint64_t CI::TileTask::commandBufferError(CI::TileTask *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 21);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI8TileTask18commandBufferErrorEv_block_invoke;
  v4[3] = &unk_1E75C8538;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void CI::TileTask::setCompileTimeForNode(CI::TileTask *this, const CI::ProgramNode *a2, double a3)
{
  if (a3 != 0.0)
  {
    block[7] = v3;
    block[8] = v4;
    v5 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask21setCompileTimeForNodeEPKNS_11ProgramNodeEd_block_invoke;
    block[3] = &__block_descriptor_tmp_4_6;
    block[4] = this;
    block[5] = a2;
    *&block[6] = a3;
    dispatch_async(v5, block);
  }
}

uint64_t *___ZN2CI8TileTask21setCompileTimeForNodeEPKNS_11ProgramNodeEd_block_invoke(void *a1)
{
  v2 = a1[4];
  v5 = (a1[5] + 36);
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v5, &std::piecewise_construct, &v5) + 176) = 1;
  v3 = a1[6];
  v5 = (a1[5] + 36);
  result = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v5, &std::piecewise_construct, &v5);
  result[16] = v3;
  return result;
}

void CI::TileTask::incrementCompileWaitTimeForNode(CI::TileTask *this, const CI::ProgramNode *a2, double a3)
{
  if (a3 != 0.0)
  {
    block[7] = v3;
    block[8] = v4;
    v5 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask31incrementCompileWaitTimeForNodeEPKNS_11ProgramNodeEd_block_invoke;
    block[3] = &__block_descriptor_tmp_5_4;
    block[4] = this;
    block[5] = a2;
    *&block[6] = a3;
    dispatch_async(v5, block);
  }
}

double ___ZN2CI8TileTask31incrementCompileWaitTimeForNodeEPKNS_11ProgramNodeEd_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = (*(a1 + 40) + 36);
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v6, &std::piecewise_construct, &v6) + 176) = 1;
  v3 = *(a1 + 48);
  v6 = (*(a1 + 40) + 36);
  v4 = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v6, &std::piecewise_construct, &v6);
  result = v3 + *(v4 + 17);
  *(v4 + 17) = result;
  return result;
}

void CI::TileTask::incrementTimeForNode(CI::TileTask *this, const CI::ProgramNode *a2, double a3)
{
  if (a3 != 0.0)
  {
    block[7] = v3;
    block[8] = v4;
    v5 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask20incrementTimeForNodeEPKNS_11ProgramNodeEd_block_invoke;
    block[3] = &__block_descriptor_tmp_6_6;
    block[4] = this;
    block[5] = a2;
    *&block[6] = a3;
    dispatch_async(v5, block);
  }
}

double ___ZN2CI8TileTask20incrementTimeForNodeEPKNS_11ProgramNodeEd_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = (*(a1 + 40) + 36);
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v6, &std::piecewise_construct, &v6) + 176) = 1;
  v3 = *(a1 + 48);
  v6 = (*(a1 + 40) + 36);
  v4 = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v6, &std::piecewise_construct, &v6);
  result = v3 + *(v4 + 15);
  *(v4 + 15) = result;
  return result;
}

void CI::TileTask::incrementCyclesForNode(CI::TileTask *this, const CI::ProgramNode *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask22incrementCyclesForNodeEPKNS_11ProgramNodeEy_block_invoke;
    block[3] = &__block_descriptor_tmp_7_8;
    block[4] = this;
    block[5] = a2;
    block[6] = a3;
    dispatch_async(v3, block);
  }
}

uint64_t *___ZN2CI8TileTask22incrementCyclesForNodeEPKNS_11ProgramNodeEy_block_invoke(void *a1)
{
  v2 = a1[4];
  v5 = (a1[5] + 36);
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v5, &std::piecewise_construct, &v5) + 176) = 1;
  v3 = a1[6];
  v5 = (a1[5] + 36);
  result = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v5, &std::piecewise_construct, &v5);
  result[20] += v3;
  return result;
}

void CI::TileTask::incrementNanoSecForNode(CI::TileTask *this, const CI::ProgramNode *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask23incrementNanoSecForNodeEPKNS_11ProgramNodeEy_block_invoke;
    block[3] = &__block_descriptor_tmp_8_4;
    block[4] = this;
    block[5] = a2;
    block[6] = a3;
    dispatch_async(v3, block);
  }
}

uint64_t *___ZN2CI8TileTask23incrementNanoSecForNodeEPKNS_11ProgramNodeEy_block_invoke(void *a1)
{
  v2 = a1[4];
  v5 = (a1[5] + 36);
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v5, &std::piecewise_construct, &v5) + 176) = 1;
  v3 = a1[6];
  v5 = (a1[5] + 36);
  result = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v5, &std::piecewise_construct, &v5);
  result[21] += v3;
  return result;
}

void CI::TileTask::incrementFillTimeForNode(CI::TileTask *this, const CI::Node *a2, double a3)
{
  if (a3 != 0.0)
  {
    block[7] = v3;
    block[8] = v4;
    v5 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask24incrementFillTimeForNodeEPKNS_4NodeEd_block_invoke;
    block[3] = &__block_descriptor_tmp_9_5;
    block[4] = this;
    block[5] = a2;
    *&block[6] = a3;
    dispatch_async(v5, block);
  }
}

uint64_t *___ZN2CI8TileTask24incrementFillTimeForNodeEPKNS_4NodeEd_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v7 = (*(a1 + 40) + 36);
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v7, &std::piecewise_construct, &v7) + 176) = 1;
  v3 = *(a1 + 48);
  v7 = (*(a1 + 40) + 36);
  v4 = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v7, &std::piecewise_construct, &v7);
  *(v4 + 18) = v3 + *(v4 + 18);
  v5 = (*(**(a1 + 40) + 96))(*(a1 + 40));
  v7 = (*(a1 + 40) + 36);
  result = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v7, &std::piecewise_construct, &v7);
  *(result + 26) = v5;
  return result;
}

void CI::TileTask::incrementFillPixelsForNode(CI::TileTask *this, const CI::Node *a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *(this + 21);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___ZN2CI8TileTask26incrementFillPixelsForNodeEPKNS_4NodeEy_block_invoke;
    block[3] = &__block_descriptor_tmp_10_2;
    block[4] = this;
    block[5] = a2;
    block[6] = a3;
    dispatch_async(v3, block);
  }
}

uint64_t *___ZN2CI8TileTask26incrementFillPixelsForNodeEPKNS_4NodeEy_block_invoke(void *a1)
{
  v2 = a1[4];
  v5 = (a1[5] + 36);
  *(std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v5, &std::piecewise_construct, &v5) + 176) = 1;
  v3 = a1[6];
  v5 = (a1[5] + 36);
  result = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v5, &std::piecewise_construct, &v5);
  result[19] += v3;
  return result;
}

void CI::TileTask::addAssembledIntermediate(CI::TileTask *this, const CI::Node *a2, CFTypeRef cf, CGRect a4)
{
  height = a4.size.height;
  width = a4.size.width;
  y = a4.origin.y;
  x = a4.origin.x;
  CFRetain(cf);
  v11 = *(this + 21);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI8TileTask24addAssembledIntermediateEPKNS_4NodeEPK10__CFString6CGRect_block_invoke;
  block[3] = &__block_descriptor_tmp_11_6;
  block[4] = this;
  block[5] = a2;
  block[6] = cf;
  *&block[7] = x;
  *&block[8] = y;
  *&block[9] = width;
  *&block[10] = height;
  dispatch_async(v11, block);
}

void ___ZN2CI8TileTask24addAssembledIntermediateEPKNS_4NodeEPK10__CFString6CGRect_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v6 = (*(a1 + 40) + 36);
  v3 = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v6, &std::piecewise_construct, &v6)[14];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 48);
  v6 = (*(a1 + 40) + 36);
  std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v6, &std::piecewise_construct, &v6)[14] = v4;
  v6 = (*(a1 + 40) + 36);
  v5 = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v6, &std::piecewise_construct, &v6);
  std::vector<CGRect>::push_back[abi:nn200100]((v5 + 9), (a1 + 56));
}

void CI::TileTask::addROIForNode(CI::TileTask *this, CI::ProgramNode *a2, CGRect a3)
{
  *&v8 = a3.origin.x;
  *(&v8 + 1) = *&a3.origin.y;
  width = a3.size.width;
  height = a3.size.height;
  v7 = a2;
  v11 = &v7;
  v4 = std::__hash_table<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::__unordered_map_hasher<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::hash<CI::ProgramNode *>,std::equal_to<CI::ProgramNode *>,true>,std::__unordered_map_equal<CI::ProgramNode *,std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>,std::equal_to<CI::ProgramNode *>,std::hash<CI::ProgramNode *>,true>,std::allocator<std::__hash_value_type<CI::ProgramNode *,CI::CGRectArray>>>::__emplace_unique_key_args<CI::ProgramNode *,std::piecewise_construct_t const&,std::tuple<CI::ProgramNode * const&>,std::tuple<>>(this + 16, &v7, &std::piecewise_construct, &v11);
  std::vector<CGRect>::push_back[abi:nn200100]((v4 + 3), &v8);
  v5 = *(this + 21);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = ___ZN2CI8TileTask13addROIForNodeEPNS_11ProgramNodeE6CGRect_block_invoke;
  block[3] = &__block_descriptor_tmp_12_6;
  block[4] = this;
  block[5] = v7;
  dispatch_async(v5, block);
}

uint64_t *___ZN2CI8TileTask13addROIForNodeEPNS_11ProgramNodeE6CGRect_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = (*(**(a1 + 40) + 400))(*(a1 + 40));
  v5 = (*(a1 + 40) + 36);
  result = std::__hash_table<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::__unordered_map_hasher<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::hash<CI::NodeIndex>,std::equal_to<CI::NodeIndex>,true>,std::__unordered_map_equal<CI::NodeIndex,std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>,std::equal_to<CI::NodeIndex>,std::hash<CI::NodeIndex>,true>,std::allocator<std::__hash_value_type<CI::NodeIndex,CI::Node::NodeStats>>>::__emplace_unique_key_args<CI::NodeIndex,std::piecewise_construct_t const&,std::tuple<CI::NodeIndex const&>,std::tuple<>>((v2 + 88), v5, &std::piecewise_construct, &v5);
  result[12] = v3;
  return result;
}

void CI::TileTask::updatePeakList(CI::TileTask *this, const __CFArray *a2)
{
  v2 = *(this + 21);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___ZN2CI8TileTask14updatePeakListEPK9__CFArray_block_invoke;
  v3[3] = &__block_descriptor_tmp_35_1;
  v3[4] = this;
  v3[5] = a2;
  dispatch_sync(v2, v3);
}

CFIndex ___ZN2CI8TileTask14updatePeakListEPK9__CFArray_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZN2CI8TileTask14updatePeakListEPK9__CFArray_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_34_0;
  v4[4] = v2;
  return __CFArray::for_each(v1, v4);
}

void ___ZN2CI8TileTask14updatePeakListEPK9__CFArray_block_invoke_2(uint64_t a1, __CFDictionary *this, const __CFString *a3)
{
  v4 = *(a1 + 32);
  String = __CFDictionary::getString(this, @"id", a3);
  Int32 = __CFDictionary::getInt32(this, @"imgIndex", 0);
  v17.origin.x = __CFDictionary::getInt32(this, @"x", 0);
  v17.origin.y = __CFDictionary::getInt32(this, @"y", 0);
  v17.size.width = __CFDictionary::getInt32(this, @"w", 0);
  v17.size.height = __CFDictionary::getInt32(this, @"h", 0);
  v7 = __CFDictionary::getInt32(this, @"size", 0);
  v8 = *(v4 + 104);
  if (Int32)
  {
    if (v8)
    {
      v9 = v7;
      do
      {
        if (*(v8 + 26) == Int32)
        {
          v15 = v17;
          v16 = v9;
          std::vector<std::pair<CGRect,unsigned long>>::push_back[abi:nn200100]((v8 + 6), &v15);
        }

        v8 = *v8;
      }

      while (v8);
    }
  }

  else if (v8)
  {
    v10 = v7;
    v11 = (v4 + 144);
    do
    {
      v12 = v8[14];
      if (!v12)
      {
        v12 = __CFString::createWithFormat("%llX", 0, v8[12]);
      }

      if (String && v12 && CFStringHasPrefix(String, v12))
      {
        if (*(v8 + 26))
        {
          v13 = (v8 + 9);
        }

        else
        {
          v14 = v11;
          do
          {
            v14 = *v14;
          }

          while (v14 && *(v14[2] + 36) != *(v8 + 4));
          v13 = (v14 + 3);
        }

        if (CI::CGRectArray::contains(v13, &v17))
        {
          v15 = v17;
          v16 = v10;
          std::vector<std::pair<CGRect,unsigned long>>::push_back[abi:nn200100]((v8 + 3), &v15);
        }
      }

      v8 = *v8;
    }

    while (v8);
  }
}

void std::vector<std::pair<CGRect,unsigned long>>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - *a1) >> 3);
    v10 = v9 + 1;
    if (v9 + 1 > 0x666666666666666)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v11 = 0xCCCCCCCCCCCCCCCDLL * ((v5 - *a1) >> 3);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x333333333333333)
    {
      v12 = 0x666666666666666;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<CGRect,unsigned long>>>(a1, v12);
    }

    v13 = 40 * v9;
    v14 = *a2;
    v15 = a2[1];
    *(v13 + 32) = *(a2 + 4);
    *v13 = v14;
    *(v13 + 16) = v15;
    v8 = 40 * v9 + 40;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[1];
    *(v4 + 32) = *(a2 + 4);
    *v4 = v6;
    *(v4 + 16) = v7;
    v8 = v4 + 40;
  }

  *(a1 + 8) = v8;
}

BOOL CI::CGRectArray::contains(CGRect **this, const CGRect *a2)
{
  v2 = *this;
  v3 = this[1];
  if (*this == v3)
  {
    return 0;
  }

  do
  {
    result = CGRectEqualToRect(*a2, *v2);
    if (result)
    {
      break;
    }

    ++v2;
  }

  while (v2 != v3);
  return result;
}

double CI::TileTask::executionTime(CI::TileTask *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 21);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI8TileTask13executionTimeEv_block_invoke;
  v4[3] = &unk_1E75C86C0;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

double ___ZNK2CI8TileTask13executionTimeEv_block_invoke(uint64_t a1)
{
  for (i = *(*(a1 + 40) + 104); i; i = *i)
  {
    v2 = *(*(a1 + 32) + 8);
    result = i[15] + *(v2 + 24);
    *(v2 + 24) = result;
  }

  return result;
}

double CI::TileTask::compileWaitTime(CI::TileTask *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 21);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI8TileTask15compileWaitTimeEv_block_invoke;
  v4[3] = &unk_1E75C86E8;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

double ___ZNK2CI8TileTask15compileWaitTimeEv_block_invoke(uint64_t a1)
{
  for (i = *(*(a1 + 40) + 104); i; i = *i)
  {
    v2 = *(*(a1 + 32) + 8);
    result = i[17] + *(v2 + 24);
    *(v2 + 24) = result;
  }

  return result;
}

double CI::TileTask::compileTime(CI::TileTask *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 21);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI8TileTask11compileTimeEv_block_invoke;
  v4[3] = &unk_1E75C8710;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

double ___ZNK2CI8TileTask11compileTimeEv_block_invoke(uint64_t a1)
{
  for (i = *(*(a1 + 40) + 104); i; i = *i)
  {
    v2 = *(*(a1 + 32) + 8);
    result = i[16] + *(v2 + 24);
    *(v2 + 24) = result;
  }

  return result;
}

uint64_t CI::TileTask::executionCycles(CI::TileTask *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 21);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI8TileTask15executionCyclesEv_block_invoke;
  v4[3] = &unk_1E75C8738;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZNK2CI8TileTask15executionCyclesEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 104);
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      v3 = v1[20];
      if (!v3)
      {
        break;
      }

      v2 += v3;
      v1 = *v1;
      if (!v1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v2 = 0;
LABEL_7:
    *(*(*(result + 32) + 8) + 24) = v2;
  }

  return result;
}

uint64_t CI::TileTask::executionNanoSec(CI::TileTask *this)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  v1 = *(this + 21);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___ZNK2CI8TileTask16executionNanoSecEv_block_invoke;
  v4[3] = &unk_1E75C8760;
  v4[4] = &v5;
  v4[5] = this;
  dispatch_sync(v1, v4);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___ZNK2CI8TileTask16executionNanoSecEv_block_invoke(uint64_t result)
{
  v1 = *(*(result + 40) + 104);
  if (v1)
  {
    v2 = 0;
    while (1)
    {
      v3 = v1[21];
      if (!v3)
      {
        break;
      }

      v2 += v3;
      v1 = *v1;
      if (!v1)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v2 = 0;
LABEL_7:
    *(*(*(result + 32) + 8) + 24) = v2;
  }

  return result;
}

unint64_t CI::TileTask::pixelsProcessed(CI::TileTask *this)
{
  v1 = *(this + 18);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    for (i = v1[3]; i != v1[4]; i += 32)
    {
      result = (result + ceil(*(i + 16)) * ceil(*(i + 24)));
    }

    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t CI::TileTask::fillPixels(CI::TileTask *this)
{
  v1 = *(this + 13);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += v1[19];
    v1 = *v1;
  }

  while (v1);
  return result;
}

uint64_t CI::TileTask::pixelsOverdrawn(CI::TileTask *this)
{
  v1 = *(this + 18);
  if (v1)
  {
    v2 = 0;
    do
    {
      __p = 0;
      v41 = 0;
      v42 = 0;
      v38 = 0;
      v39 = 0;
      v37 = &v38;
      v4 = v1[3];
      v3 = v1[4];
      if (v4 == v3)
      {
        v5 = 0;
      }

      else
      {
        do
        {
          std::__tree<double>::__emplace_unique_key_args<double,double const&>(&v37, v4, v4);
          *v36 = *v4 + v4[2];
          std::__tree<double>::__emplace_unique_key_args<double,double const&>(&v37, v36, v36);
          v4 += 4;
        }

        while (v4 != v3);
        v5 = v39;
      }

      std::vector<double>::reserve(&__p, v5);
      std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>,std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>,std::back_insert_iterator<std::vector<double>>>(v36, v37, &v38, &__p);
      std::__sort<std::__less<double,double> &,double *>();
      std::vector<std::vector<IRect>>::vector[abi:nn200100](v36, (v41 - __p) >> 3);
      v7 = v1[3];
      v6 = v1[4];
      if (v7 != v6)
      {
        v9 = __p;
        v8 = v41;
        v10 = v41;
        do
        {
          *&v35 = *(v7 + 8);
          DWORD2(v35) = 1;
          *&v34 = *&v35 + *(v7 + 24);
          DWORD2(v34) = -1;
          if (v10 == v9)
          {
            v10 = v9;
          }

          else
          {
            v11 = *v7;
            v12 = *v7 + *(v7 + 16);
            v13 = *v9;
            if (*v9 < v12)
            {
              v14 = 0;
              v15 = 1;
              while (1)
              {
                if (v13 >= v11)
                {
                  std::vector<std::pair<double,int>>::push_back[abi:nn200100](v36[0] + v14, &v35);
                  std::vector<std::pair<double,int>>::push_back[abi:nn200100](v36[0] + v14, &v34);
                  v9 = __p;
                  v8 = v41;
                }

                if (v15 >= v8 - v9)
                {
                  break;
                }

                v13 = v9[v15];
                v14 += 24;
                ++v15;
                v10 = v8;
                if (v13 >= v12)
                {
                  goto LABEL_19;
                }
              }

              v10 = v8;
            }
          }

LABEL_19:
          v7 += 32;
        }

        while (v7 != v6);
      }

      v16 = v36[0];
      v17 = v36[1];
      while (v16 != v17)
      {
        v18 = *v16;
        v19 = v16[1];
        v16 += 3;
        v20 = 126 - 2 * __clz((v19 - v18) >> 4);
        if (v19 == v18)
        {
          v21 = 0;
        }

        else
        {
          v21 = v20;
        }

        std::__introsort<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*,false>(v18, v19, v21, 1);
      }

      v22 = 0;
      if ((v41 - __p) >> 3 != 1)
      {
        v23 = 0;
        v24 = *__p;
        do
        {
          v25 = v24;
          v26 = (v36[0] + 24 * v23++);
          v24 = *(__p + v23);
          v27 = *v26;
          v28 = v26[1];
          if (v27 != v28)
          {
            v29 = 0;
            v30 = v24 - v25;
            v31 = 0.0;
            do
            {
              if (v29)
              {
                v29 += *(v27 + 8);
                if (!v29)
                {
                  v22 = (v22 + v30 * (*v27 - v31));
                }
              }

              else
              {
                v31 = *v27;
                v29 = *(v27 + 8);
              }

              v27 += 16;
            }

            while (v27 != v28);
          }
        }

        while (v23 != ((v41 - __p) >> 3) - 1);
      }

      *&v35 = v36;
      std::vector<std::vector<IRect>>::__destroy_vector::operator()[abi:nn200100](&v35);
      std::__tree<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,CI::DAGHelper::ImageArgInfo>>>::destroy(&v37, v38);
      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      v2 += v22;
      v1 = *v1;
    }

    while (v1);
  }

  else
  {
    v2 = 0;
  }

  return CI::TileTask::pixelsProcessed(this) - v2;
}

void *CI::TileTask::graphviz_representation(CI::TileTask *this, const CI::RenderTask *a2)
{
  v4 = *(this + 6);
  v5 = CIGVGraphCreate(this);
  v6 = v5;
  if (v5)
  {
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x5002000000;
    v32[3] = __Block_byref_object_copy__28;
    v32[4] = __Block_byref_object_dispose__28;
    memset(v33, 0, sizeof(v33));
    v34 = 1065353216;
    v29[0] = 0;
    v29[1] = v29;
    v29[2] = 0x5002000000;
    v29[3] = __Block_byref_object_copy__41;
    v29[4] = __Block_byref_object_dispose__42;
    memset(v30, 0, sizeof(v30));
    v31 = 1065353216;
    v22 = 0;
    v23 = &v22;
    v24 = 0x5002000000;
    v25 = __Block_byref_object_copy__43;
    v26 = __Block_byref_object_dispose__44;
    memset(v27, 0, sizeof(v27));
    v28 = 1065353216;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 0x40000000;
    v21[2] = ___ZNK2CI8TileTask23graphviz_representationEPKNS_10RenderTaskE_block_invoke;
    v21[3] = &unk_1E75C8788;
    v21[4] = v32;
    v21[5] = v29;
    v21[7] = this;
    v21[8] = v5;
    v21[6] = &v22;
    v14 = MEMORY[0x1E69E9820];
    v15 = 0x40000000;
    v16 = ___ZN2CI4Node15traverse_uniqueEU13block_pointerFvPKS0_E_block_invoke;
    v17 = &unk_1E75C87F8;
    v18 = v21;
    CI::GraphObject::traverse_unique(v4, &v14);
    v14 = 0;
    v15 = &v14;
    v16 = 0x5002000000;
    v17 = __Block_byref_object_copy__47;
    v18 = __Block_byref_object_dispose__48;
    memset(v19, 0, sizeof(v19));
    v20 = 1065353216;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 0x40000000;
    v13[2] = ___ZNK2CI8TileTask23graphviz_representationEPKNS_10RenderTaskE_block_invoke_49;
    v13[3] = &unk_1E75C87B0;
    v13[4] = &v14;
    v13[5] = &v22;
    v13[6] = v6;
    v35[0] = MEMORY[0x1E69E9820];
    v35[1] = 0x40000000;
    v35[2] = ___ZNK2CI4Node27traverse_preorder_stoppableEU13block_pointerFbPKS0_E_block_invoke_0;
    v35[3] = &unk_1E75C8820;
    v35[4] = v13;
    CI::GraphObject::traverse_preorder_stoppable(v4, 0, 0, 0, v35);
    v7 = CIGVNodeCreate();
    CIGVNodeSetColor(v7, 0xD);
    CIGVNodeSetShape(v7, 0);
    if (*(a2 + 12))
    {
      v8 = CFStringCreateWithFormat(0, 0, @"destination=%@\n", *(a2 + 12));
    }

    else
    {
      v8 = &stru_1F1040378;
    }

    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 0x40000000;
    v12[2] = ___ZNK2CI8TileTask23graphviz_representationEPKNS_10RenderTaskE_block_invoke_2;
    v12[3] = &__block_descriptor_tmp_71;
    v12[4] = this;
    v12[5] = a2;
    v9 = stream_to_string(v12);
    CIGVNodeSetLabel(v7, v9);
    CFRelease(v8);
    CFRelease(v9);
    CIGVGraphAddNode(v6, v7);
    v35[0] = v4;
    v10 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>(v23 + 5, v35);
    CIGVGraphAddEdge(v6, v10[3], v7);
    CFRelease(v7);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::clear(v23 + 5);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::clear((v15 + 40));
    _Block_object_dispose(&v14, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v19);
    _Block_object_dispose(&v22, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v27);
    _Block_object_dispose(v29, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v30);
    _Block_object_dispose(v32, 8);
    std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::~__hash_table(v33);
  }

  return v6;
}

void ___ZNK2CI8TileTask23graphviz_representationEPKNS_10RenderTaskE_block_invoke(uint64_t a1, unsigned int *a2)
{
  v37 = a2;
  v4 = *(a1 + 56);
  if (!CI_GRAPHVIZ_INTERNAL() && (*(*a2 + 40))(a2) >= 2 && (*(*a2 + 40))(a2) >= 1)
  {
    v5 = 0;
    do
    {
      v38 = (*(*a2 + 48))(a2, v5);
      if (!std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>((*(*(a1 + 32) + 8) + 40), &v38))
      {
        v6 = *(*(a1 + 32) + 8);
        v7 = *(v6 + 64);
        *&v28 = &v38;
        *(std::__hash_table<std::__hash_value_type<CI::Node *,int>,std::__unordered_map_hasher<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::hash<CI::Node *>,std::equal_to<CI::Node *>,true>,std::__unordered_map_equal<CI::Node *,std::__hash_value_type<CI::Node *,int>,std::equal_to<CI::Node *>,std::hash<CI::Node *>,true>,std::allocator<std::__hash_value_type<CI::Node *,int>>>::__emplace_unique_key_args<CI::Node *,std::piecewise_construct_t const&,std::tuple<CI::Node * const&>,std::tuple<>>((v6 + 40), &v38, &std::piecewise_construct, &v28) + 6) = v7;
      }

      v5 = (v5 + 1);
    }

    while (v5 < (*(*a2 + 40))(a2));
  }

  v8 = (*(*a2 + 16))(a2);
  if (CI::is_any_TypeNode(v8))
  {
    memset(v31, 0, 36);
    v29 = 0u;
    v30 = 0u;
    v28 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0;
    v9 = std::__hash_table<std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::__unordered_map_hasher<CI::ImageIndex,std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::hash<CI::ImageIndex>,std::equal_to<CI::ImageIndex>,true>,std::__unordered_map_equal<CI::ImageIndex,std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>,std::equal_to<CI::ImageIndex>,std::hash<CI::ImageIndex>,true>,std::allocator<std::__hash_value_type<CI::ImageIndex,CI::Image::ImageStats>>>::find<CI::ImageIndex>((v4 + 88), a2 + 9);
    if (v9)
    {
      v10 = v9;
      if (&v28 != (v9 + 3))
      {
        std::vector<std::pair<CGRect,unsigned long>>::__assign_with_size[abi:nn200100]<std::pair<CGRect,unsigned long>*,std::pair<CGRect,unsigned long>*>(&v28, v9[3], v9[4], 0xCCCCCCCCCCCCCCCDLL * ((v9[4] - v9[3]) >> 3));
        std::vector<std::pair<CGRect,unsigned long>>::__assign_with_size[abi:nn200100]<std::pair<CGRect,unsigned long>*,std::pair<CGRect,unsigned long>*>(&v29 + 1, v10[6], v10[7], 0xCCCCCCCCCCCCCCCDLL * ((v10[7] - v10[6]) >> 3));
        std::vector<CGRect>::__assign_with_size[abi:nn200100]<CGRect*,CGRect*>(v31, v10[9], v10[10], (v10[10] - v10[9]) >> 5);
      }

      v11 = *(v10 + 9);
      v33 = *(v10 + 8);
      v34 = v11;
      v35 = *(v10 + 10);
      v36 = *(v10 + 176);
      v12 = *(v10 + 7);
      *&v31[24] = *(v10 + 6);
      v32 = v12;
    }

    else
    {
      v36 = 0;
    }

    v13 = *(*(a1 + 32) + 8);
    std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v17, &v28);
    std::vector<std::pair<CGRect,unsigned long>>::vector[abi:nn200100](v18, &v29 + 1);
    __p = 0;
    __dst = 0;
    v21 = 0;
    if (*&v31[8] != *v31)
    {
      std::vector<CGRect>::__vallocate[abi:nn200100](&__p, (*&v31[8] - *v31) >> 5);
    }

    v27 = v36;
    v24 = v33;
    v25 = v34;
    v26 = v35;
    v22 = *&v31[24];
    v23 = v32;
    v14 = (*(*a2 + 152))(a2, v13 + 40, v17);
    if (__p)
    {
      __dst = __p;
      operator delete(__p);
    }

    if (v18[0])
    {
      v18[1] = v18[0];
      operator delete(v18[0]);
    }

    if (v17[0])
    {
      v17[1] = v17[0];
      operator delete(v17[0]);
    }

    v16 = (*(*a2 + 400))(a2);
    if (std::__hash_table<CI::OtherDigest,std::hash<CI::OtherDigest>,std::equal_to<CI::OtherDigest>,std::allocator<CI::OtherDigest>>::find<CI::OtherDigest>((*(*(a1 + 40) + 8) + 40), &v16))
    {
      CIGVNodeSetColor(v14, 0xF);
    }

    std::__hash_table<CI::OtherDigest,std::hash<CI::OtherDigest>,std::equal_to<CI::OtherDigest>,std::allocator<CI::OtherDigest>>::__emplace_unique_key_args<CI::OtherDigest,CI::OtherDigest const&>((*(*(a1 + 40) + 8) + 40), &v16, &v16);
    CIGVGraphAddNode(*(a1 + 64), v14);
    v15 = *(*(a1 + 48) + 8);
    v38 = &v37;
    std::__hash_table<std::__hash_value_type<CI::GraphObject const*,void const*>,std::__unordered_map_hasher<CI::GraphObject const*,std::__hash_value_type<CI::GraphObject const*,void const*>,std::hash<CI::GraphObject const*>,std::equal_to<CI::GraphObject const*>,true>,std::__unordered_map_equal<CI::GraphObject const*,std::__hash_value_type<CI::GraphObject const*,void const*>,std::equal_to<CI::GraphObject const*>,std::hash<CI::GraphObject const*>,true>,std::allocator<std::__hash_value_type<CI::GraphObject const*,void const*>>>::__emplace_unique_key_args<CI::GraphObject const*,std::piecewise_construct_t const&,std::tuple<CI::GraphObject const* const&>,std::tuple<>>((v15 + 40), &v37, &std::piecewise_construct, &v38)[3] = v14;
    CFRelease(v14);
    if (*v31)
    {
      *&v31[8] = *v31;
      operator delete(*v31);
    }

    if (*(&v29 + 1))
    {
      *&v30 = *(&v29 + 1);
      operator delete(*(&v29 + 1));
    }

    if (v28)
    {
      *(&v28 + 1) = v28;
      operator delete(v28);
    }
  }
}

BOOL ___ZNK2CI8TileTask23graphviz_representationEPKNS_10RenderTaskE_block_invoke_49(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v3 = std::__hash_table<void const*,std::hash<void const*>,std::equal_to<void const*>,std::allocator<void const*>>::find<void const*>((*(*(a1 + 32) + 8) + 40), &v10);
  if (!v3)
  {
    std::__hash_table<CI::Node const*,std::hash<CI::Node const*>,std::equal_to<CI::Node const*>,std::allocator<CI::Node const*>>::__emplace_unique_key_args<CI::Node const*,CI::Node const* const&>((*(*(a1 + 32) + 8) + 40), &v10, &v10);
    v4 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((*(*(a1 + 40) + 8) + 40), &v10)[3];
    if ((*(*v10 + 40))(v10) >= 1)
    {
      v5 = 0;
      do
      {
        v6 = *(*(a1 + 40) + 8);
        v9 = (*(*v10 + 48))(v10, v5);
        v7 = std::__hash_table<CI::Image const*,std::hash<CI::Image const*>,std::equal_to<CI::Image const*>,std::allocator<CI::Image const*>>::find<CI::Image const*>((v6 + 40), &v9);
        CIGVGraphAddEdge(*(a1 + 48), v7[3], v4);
        v5 = (v5 + 1);
      }

      while (v5 < (*(*v10 + 40))(v10));
    }
  }

  return v3 != 0;
}

uint64_t ___ZNK2CI8TileTask23graphviz_representationEPKNS_10RenderTaskE_block_invoke_2(uint64_t a1, FILE *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = v4[2];
  v7 = v4[13];
  v8 = (*(*v4 + 40))(v4);
  v9 = (*(**(a1 + 40) + 48))(*(a1 + 40));
  fprintf(a2, "program graph\n%s %p %ldx%ld\n", v6, v7, v8, v9);
  v10 = (*(**(*(a1 + 40) + 24) + 312))();
  v11 = (*(**(*(a1 + 40) + 24) + 280))();
  v12 = *(a1 + 40);
  v14 = *(v12 + 24);
  v13 = *(v12 + 32);
  v16 = *(v14 + 236);
  v15 = (v14 + 236);
  if (v16)
  {
    v17 = ":";
  }

  else
  {
    v17 = "";
  }

  fprintf(a2, "(%s%s context %d%s%s frame %lu tile %lu)\n", "", v10, v11, v17, v15, v13, *(v5 + 32));
  v18 = *(a1 + 40);
  v19 = *(v18 + 96);
  if (v19)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    *buffer = 0u;
    v39 = 0u;
    CFStringGetCString(v19, buffer, 256, 0x8000100u);
    fprintf(a2, "destination=%s\n", buffer);
    v18 = *(a1 + 40);
  }

  v20 = (*(**(v18 + 24) + 320))(*(v18 + 24));
  if ((*(**(*(a1 + 40) + 24) + 240))(*(*(a1 + 40) + 24)) == -1)
  {
    v21 = "false";
  }

  else
  {
    v21 = "true";
  }

  v22 = (*(**(*(a1 + 40) + 24) + 496))() >> 20;
  v23 = CI::name_for_format(*(*(*(a1 + 40) + 24) + 32));
  if ((*(**(*(a1 + 40) + 24) + 176))(*(*(a1 + 40) + 24)))
  {
    v24 = "(lossyAllowed)";
  }

  else
  {
    v24 = "";
  }

  v25 = CI::name_for_format(*(*(a1 + 40) + 80));
  v26 = *(v5 + 72);
  v27 = *(v5 + 80);
  v28 = *(a1 + 40);
  v36 = *(v28 + 200);
  v37 = *(v5 + 56);
  v29 = *(v28 + 216);
  v30 = GetSurfaceCachePeakNonVolatileSize() >> 20;
  v32 = CI::RenderTask::completionTime(*(a1 + 40), v31);
  fprintf(a2, "deviceName=%s\ncacheIntermediates=%s\nintermediatesLimit=%ldMB\nworkingFormat=%s%s\nformat=%s\nroi=[%g %g %g %g]\npassCount=%ld\npixelsProcessed=%ld\npixelsOverdrawn=%ld\npeakNonVolatile=%ldMB\ncompletionTime=%.3fs", v20, v21, v22, v23, v24, v25, *&v37, *(&v37 + 1), v26, v27, v36, *(&v36 + 1), v29, v30, v32);
  fprintf(a2, "\ncompileTime=%.3fms", *(*(a1 + 40) + 176) * 1000.0);
  result = fprintf(a2, "\ncompileWaitTime=%.3fms", *(*(a1 + 40) + 184) * 1000.0);
  v34 = *(a1 + 40);
  v35 = *(v34 + 168);
  if (v35 != 0.0)
  {
    return fprintf(a2, "\nkernelExecutionTime=%.3fms\nrate=%.3fMP/s", v35 * 1000.0, *(v34 + 208) / 1000000.0 / v35);
  }

  return result;
}

double CI::RenderTask::completionTime(CI::RenderTask *this, uint64_t a2)
{
  v2 = *(this + 18);
  v3 = 0.0;
  if (v2 != *(this + 17))
  {
    v4 = *(*(v2 - 8) + 40);
    if (v4 <= 0.0)
    {
      v5 = ci_logger_render(this, a2);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
      {
        CI::RenderTask::completionTime(v5);
      }
    }

    else
    {
      return v4 - *(this + 20);
    }
  }

  return v3;
}

uint64_t CI::RenderTask::RenderTask(uint64_t a1, uint64_t a2, uint64_t a3, CI::Object *this, _OWORD *a5, int a6, uint64_t a7)
{
  *(a1 + 8) = 1;
  *a1 = &unk_1F103CFC8;
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
  *(a1 + 32) = *(a3 + 152);
  if (this)
  {
    v11 = CI::Object::ref(this);
    a3 = *(a1 + 24);
  }

  else
  {
    v11 = 0;
  }

  *(a1 + 40) = v11;
  v12 = a5[1];
  *(a1 + 48) = *a5;
  *(a1 + 64) = v12;
  *(a1 + 80) = a6;
  *(a1 + 192) = 0;
  *(a1 + 88) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  CI::Object::ref(a3);
  if (a7)
  {
    v13 = *(a7 + 16);
    *(a1 + 96) = v13;
    if (v13)
    {
      CFRetain(v13);
    }

    *(a1 + 104) = (*(*a7 + 40))(a7);
    *(a1 + 112) = (*(*a7 + 48))(a7);
    v14 = (*(*a7 + 56))(a7);
  }

  else
  {
    v14 = 0;
    *(a1 + 96) = 0;
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
  }

  *(a1 + 120) = v14;
  *(a1 + 160) = CFAbsoluteTimeGetCurrent();
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  if (a7 && !*(a1 + 80))
  {
    *(a1 + 80) = *(a7 + 32);
  }

  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  return a1;
}

CI::RenderTask *CI::RenderTask::RenderTask(CI::RenderTask *this, CFTypeRef cf)
{
  *(this + 2) = 1;
  *this = &unk_1F103CFC8;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 24) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  if (cf)
  {
    v3 = CFRetain(cf);
  }

  else
  {
    v3 = 0;
  }

  *(this + 16) = v3;
  return this;
}

CI::RenderTask *CI::RenderTask::RenderTask(CI::RenderTask *this, const char *a2, ...)
{
  va_start(va, a2);
  *(this + 2) = 1;
  *this = &unk_1F103CFC8;
  *(this + 3) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  *(this + 24) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  v3 = CFStringCreateWithCString(0, a2, 0x600u);
  *(this + 16) = CFStringCreateWithFormatAndArguments(0, 0, v3, va);
  CFRelease(v3);
  return this;
}

void CI::RenderTask::~RenderTask(CI::RenderTask *this)
{
  *this = &unk_1F103CFC8;
  v2 = *(this + 5);
  if (v2)
  {
    CI::Object::unref(v2);
  }

  *(this + 5) = 0;
  v3 = *(this + 16);
  if (v3)
  {
    CFRelease(v3);
  }

  *(this + 16) = 0;
  v4 = *(this + 12);
  if (v4)
  {
    CFRelease(v4);
  }

  *(this + 12) = 0;
  v5 = *(this + 3);
  if (v5)
  {
    CI::Object::unref(v5);
  }

  *(this + 3) = 0;
  v6 = (this + 136);
  std::vector<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::__destroy_vector::operator()[abi:nn200100](&v6);
}

{
  CI::RenderTask::~RenderTask(this);

  JUMPOUT(0x19EAF5590);
}

void *CI::RenderTask::addTileTask(void *this, CI::TileTask *a2)
{
  if (!this[16])
  {
    v2 = this;
    if (a2)
    {
      this = CI::Object::ref(a2);
      v3 = this;
    }

    else
    {
      v3 = 0;
    }

    v5 = v2[18];
    v4 = v2[19];
    if (v5 >= v4)
    {
      v7 = v2[17];
      v8 = v5 - v7;
      v9 = (v5 - v7) >> 3;
      v10 = v9 + 1;
      if ((v9 + 1) >> 61)
      {
        std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
      }

      v11 = v4 - v7;
      if (v11 >> 2 > v10)
      {
        v10 = v11 >> 2;
      }

      v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
      v13 = 0x1FFFFFFFFFFFFFFFLL;
      if (!v12)
      {
        v13 = v10;
      }

      v19[4] = v2 + 17;
      if (v13)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<Queue *>>((v2 + 17), v13);
      }

      v14 = (v5 - v7) >> 3;
      v15 = (8 * v9);
      v16 = (8 * v9 - 8 * v14);
      *v15 = v3;
      v6 = v15 + 1;
      memcpy(v16, v7, v8);
      v17 = v2[17];
      v2[17] = v16;
      v2[18] = v6;
      v18 = v2[19];
      v2[19] = 0;
      v19[2] = v17;
      v19[3] = v18;
      v19[0] = v17;
      v19[1] = v17;
      this = std::__split_buffer<std::unique_ptr<CI::TileTask,CI::ObjectDeleter<CI::TileTask>>>::~__split_buffer(v19);
    }

    else
    {
      *v5 = v3;
      v6 = v5 + 8;
    }

    v2[18] = v6;
  }

  return this;
}

void CI::RenderTask::raise(CI::RenderTask *this, const char *a2, ...)
{
  va_start(va, a2);
  v3 = CFStringCreateWithCString(0, a2, 0x600u);
  *(this + 16) = CFStringCreateWithFormatAndArguments(0, 0, v3, va);
  CFRelease(v3);
}

uint64_t CI::RenderTask::waitUntilCompleted(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 144) == *(a1 + 136))
  {
    return 0;
  }

  v4 = ci_signpost_log_render(a1, a2);
  if (((a2 << 32) - 1) <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v5 = v4;
    if (os_signpost_enabled(v4))
    {
      LOWORD(v22) = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v5, OS_SIGNPOST_INTERVAL_BEGIN, a2 << 32, "wait", &unk_19CFBCBAE, &v22, 2u);
    }
  }

  TimerBase::TimerBase(&v22, a2, 0, "wait", 0x13u);
  v6 = dispatch_group_wait(*(*(*(a1 + 144) - 8) + 16), 0xFFFFFFFFFFFFFFFFLL);
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0;
  v8 = *(a1 + 136);
  v9 = *(a1 + 144);
  while (1)
  {
    if (v8 == v9)
    {
      v15 = 0;
      goto LABEL_17;
    }

    v10 = CI::TileTask::commandBufferError(*v8);
    v11 = *v8;
    if (v10)
    {
      break;
    }

    *(a1 + 168) = CI::TileTask::executionTime(v11) + *(a1 + 168);
    *(a1 + 176) = CI::TileTask::compileTime(*v8);
    *(a1 + 184) = CI::TileTask::compileWaitTime(*v8) + *(a1 + 184);
    *(a1 + 192) += CI::TileTask::executionCycles(*v8);
    v12 = *v8;
    v13 = *(*v8 + 18);
    if (v13)
    {
      v14 = 0;
      do
      {
        v14 += (v13[4] - v13[3]) >> 5;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      v14 = 0;
    }

    *(a1 + 200) += v14;
    *(a1 + 208) += CI::TileTask::pixelsProcessed(v12);
    v6 = CI::TileTask::pixelsOverdrawn(v12);
    *(a1 + 216) += v6;
    ++v8;
  }

  v16 = CI::TileTask::commandBufferError(v11);
  v6 = CFRetain(v16);
  v15 = v6;
LABEL_17:
  v17 = ci_signpost_log_render(v6, v7);
  v19 = v23;
  if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL)
  {
    v20 = v17;
    if (os_signpost_enabled(v17))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_19CC36000, v20, OS_SIGNPOST_INTERVAL_END, v19, "wait", &unk_19CFBCBAE, buf, 2u);
    }
  }

  TimerBase::~TimerBase(&v22, v18);
  return v15;
}

intptr_t CI::RenderTask::waitUntilScheduled(intptr_t this)
{
  v1 = *(this + 144);
  if (v1 != *(this + 136))
  {
    return dispatch_group_wait(*(*(v1 - 8) + 24), 0xFFFFFFFFFFFFFFFFLL);
  }

  return this;
}

void *CI::RenderTask::quicklookDataForRenderTask(CI::RenderTask *this)
{
  v54 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(byte_1ED7C4680, memory_order_acquire) & 1) == 0)
  {
    CI::RenderTask::quicklookDataForRenderTask();
  }

  CIGVRendererSetOutputFileURL(_MergedGlobals_14, 0);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  *__str = 0u;
  v23 = 0u;
  v2 = (*(**(this + 3) + 312))();
  v3 = (*(**(this + 3) + 280))();
  v4 = *(this + 3);
  v6 = *(v4 + 236);
  v5 = (v4 + 236);
  v7 = ":";
  if (v6)
  {
    v8 = ":";
  }

  else
  {
    v8 = "";
  }

  snprintf(__str, 0x200uLL, "CIRenderTask <%s context %d%s%s frame %lu>", v2, v3, v8, v5, *(this + 4));
  CIGVRendererSetOutputFileTitle(_MergedGlobals_14, __str);
  if (*(this + 12))
  {
    v9 = CFStringCreateWithFormat(0, 0, @"destination=%@\n", *(this + 12));
  }

  else
  {
    v9 = &stru_1F1040378;
  }

  v10 = *(this + 2);
  v11 = (*(**(this + 3) + 312))(*(this + 3));
  v12 = (*(**(this + 3) + 280))();
  v13 = *(this + 3);
  v14 = *(this + 4);
  v16 = *(v13 + 236);
  v15 = v13 + 236;
  if (!v16)
  {
    v7 = "";
  }

  v17 = CI::name_for_format(*(this + 20));
  v18 = CFStringCreateWithFormat(0, 0, @"optimized graph\n%s\n(%s context %d%s%s frame %lu)\n%@format=%s\nroi=[%g %g %g %g]", v10, v11, v12, v7, v15, v14, v9, v17, *(this + 6), *(this + 7), *(this + 8), *(this + 9), *__str, *&__str[8], v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45);
  v20 = CI::GraphObject::graphviz_representation(*(this + 5), v18, 0, 0, v19);
  CIGVGraphRender(v20, _MergedGlobals_14);
  CFRelease(v18);
  CFRelease(v20);
  CFRelease(v9);
  CIGVRendererFlushRender(_MergedGlobals_14);
  return CIGVRendererGetPDFData(_MergedGlobals_14);
}

void *CI::RenderTask::quicklookDataForRenderInfo(CI::RenderTask *this)
{
  v50 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(byte_1ED7C4690, memory_order_acquire) & 1) == 0)
  {
    CI::RenderTask::quicklookDataForRenderInfo();
  }

  CIGVRendererSetOutputFileURL(qword_1ED7C4688, 0);
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  *__str = 0u;
  v19 = 0u;
  v2 = (*(**(this + 3) + 312))();
  v4 = (*(**(this + 3) + 280))();
  v5 = *(this + 3);
  v6 = *(this + 4);
  v8 = *(v5 + 236);
  v7 = (v5 + 236);
  if (v8)
  {
    v9 = ":";
  }

  else
  {
    v9 = "";
  }

  v10 = *(this + 25);
  v11 = *(this + 26);
  v12 = CI::RenderTask::completionTime(this, v3);
  snprintf(__str, 0x200uLL, "CIRenderInfo <%s context %d%s%s frame %lu>\npassCount=%ld\npixelsProcessed=%ld\ncompletionTime=%.3fs", v2, v4, v9, v7, v6, v10, v11, v12);
  CIGVRendererSetOutputFileTitle(qword_1ED7C4688, __str);
  v13 = *(this + 17);
  v14 = *(this + 18);
  while (v13 != v14)
  {
    v15 = *v13++;
    v16 = CI::TileTask::graphviz_representation(v15, this);
    CIGVGraphRender(v16, qword_1ED7C4688);
    CFRelease(v16);
  }

  CIGVRendererFlushRender(qword_1ED7C4688);
  return CIGVRendererGetPDFData(qword_1ED7C4688);
}

void CI::RenderTask::dump_for_graphviz(CI::RenderTask *this, const char *a2, unsigned int a3)
{
  v33 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v5 = *(this + 17);
    v6 = *(this + 18);
    while (v5 != v6)
    {
      v8 = CI::TileTask::graphviz_representation(*v5, this);
      v9 = *v5++;
      snprintf(__str, 0x100uLL, "%s_%lu", a2, *(v9 + 4));
      v10 = CI_TEMP_DIR();
      CIGVDumpToFile(v8, a3, v10, __str);
      CFRelease(v8);
    }
  }

  else
  {
    v11 = CI::RenderTask::quicklookDataForRenderInfo(this);
    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    *__str = 0u;
    v18 = 0u;
    v12 = CI_TEMP_DIR();
    snprintf(__str, 0x100uLL, "%s/%s.pdf", v12, a2);
    v13 = fopen(__str, "w");
    if (v13)
    {
      v14 = v13;
      BytePtr = CFDataGetBytePtr(v11);
      Length = CFDataGetLength(v11);
      fwrite(BytePtr, Length, 1uLL, v14);
      fclose(v14);
    }

    CFRelease(v11);
  }
}

void std::vector<double>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a1, a2);
    }

    std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
  }
}

void std::vector<std::pair<double,int>>::push_back[abi:nn200100](uint64_t a1, _OWORD *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - *a1;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      _ZNSt3__119__allocate_at_leastB8nn200100INS_9allocatorIN2CI11Perspective9NMSimplexIDv2_fE8NMVertexEEEEENS_19__allocation_resultINS_16allocator_traitsIT_E7pointerEEERSB_m(a1, v10);
    }

    v11 = (16 * v7);
    *v11 = *a2;
    v6 = 16 * v7 + 16;
    v12 = *(a1 + 8) - *a1;
    v13 = v11 - v12;
    memcpy(v11 - v12, *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = (v5 + 1);
  }

  *(a1 + 8) = v6;
}

uint64_t *std::__tree<double>::__emplace_unique_key_args<double,double const&>(uint64_t a1, double *a2, void *a3)
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
      v6 = *(v3 + 4);
      if (v4 >= v6)
      {
        break;
      }

      v3 = *v3;
      if (!*v5)
      {
        goto LABEL_8;
      }
    }

    if (v6 >= v4)
    {
      return v3;
    }

    v3 = v3[1];
    if (!v3)
    {
      goto LABEL_8;
    }
  }
}

void *std::__copy_impl::operator()[abi:nn200100]<std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>,std::__tree_const_iterator<double,std::__tree_node<double,void *> *,long>,std::back_insert_iterator<std::vector<double>>>(uint64_t a1, void *a2, void *a3, const void **a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    v7 = a4[1];
    do
    {
      v8 = a4[2];
      if (v7 >= v8)
      {
        v9 = *a4;
        v10 = v7 - *a4;
        v11 = v10 >> 3;
        v12 = (v10 >> 3) + 1;
        if (v12 >> 61)
        {
          std::vector<CI::SWRendererFunctionInputNode>::__throw_length_error[abi:nn200100]();
        }

        v13 = v8 - v9;
        if (v13 >> 2 > v12)
        {
          v12 = v13 >> 2;
        }

        if (v13 >= 0x7FFFFFFFFFFFFFF8)
        {
          v14 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v14 = v12;
        }

        if (v14)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<unsigned long>>(a4, v14);
        }

        *(8 * v11) = v5[4];
        v7 = (8 * v11 + 8);
        memcpy(0, v9, v10);
        v15 = *a4;
        *a4 = 0;
        a4[1] = v7;
        a4[2] = 0;
        if (v15)
        {
          operator delete(v15);
        }
      }

      else
      {
        *v7 = v5[4];
        v7 += 8;
      }

      a4[1] = v7;
      v16 = v5[1];
      if (v16)
      {
        do
        {
          v17 = v16;
          v16 = *v16;
        }

        while (v16);
      }

      else
      {
        do
        {
          v17 = v5[2];
          v18 = *v17 == v5;
          v5 = v17;
        }

        while (!v18);
      }

      v5 = v17;
    }

    while (v17 != a3);
    return a3;
  }

  return v5;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*,false>(uint64_t result, double *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 4;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v78 = *(a2 - 2);
        v79 = *v8;
        if (v78 >= *v8)
        {
          return result;
        }

        *v8 = v78;
        *(a2 - 2) = v79;
LABEL_114:
        v83 = *(v8 + 8);
        *(v8 + 8) = *(a2 - 2);
LABEL_115:
        *(a2 - 2) = v83;
        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = *(v8 + 16);
      v85 = *v8;
      v86 = *(v8 + 32);
      if (v84 >= *v8)
      {
        if (v86 < v84)
        {
          *(v8 + 16) = v86;
          *(v8 + 32) = v84;
          v135 = *(v8 + 24);
          v136 = *(v8 + 40);
          *(v8 + 24) = v136;
          *(v8 + 40) = v135;
          if (v86 < v85)
          {
            *v8 = v86;
            *(v8 + 16) = v85;
            v137 = *(v8 + 8);
            *(v8 + 8) = v136;
            *(v8 + 24) = v137;
          }

          goto LABEL_188;
        }
      }

      else
      {
        if (v86 < v84)
        {
          *v8 = v86;
          *(v8 + 32) = v85;
          v87 = *(v8 + 8);
          *(v8 + 8) = *(v8 + 40);
          goto LABEL_186;
        }

        *v8 = v84;
        *(v8 + 16) = v85;
        v87 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 24);
        *(v8 + 24) = v87;
        if (v86 < v85)
        {
          *(v8 + 16) = v86;
          *(v8 + 32) = v85;
          *(v8 + 24) = *(v8 + 40);
LABEL_186:
          *(v8 + 40) = v87;
          v84 = v85;
LABEL_188:
          v147 = *(a2 - 2);
          if (v147 < v84)
          {
            *(v8 + 32) = v147;
            *(a2 - 2) = v84;
            v148 = *(v8 + 40);
            *(v8 + 40) = *(a2 - 2);
            *(a2 - 2) = v148;
            v149 = *(v8 + 32);
            v150 = *(v8 + 16);
            if (v149 < v150)
            {
              *(v8 + 16) = v149;
              *(v8 + 32) = v150;
              v151 = *(v8 + 24);
              v152 = *(v8 + 40);
              *(v8 + 24) = v152;
              *(v8 + 40) = v151;
              v153 = *v8;
              if (v149 < *v8)
              {
                *v8 = v149;
                *(v8 + 16) = v153;
                v154 = *(v8 + 8);
                *(v8 + 8) = v152;
                *(v8 + 24) = v154;
              }
            }
          }

          return result;
        }
      }

      v84 = v86;
      goto LABEL_188;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*,0>(v8, v8 + 16, v8 + 32, (v8 + 48), a2 - 2);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v88 = (v8 + 16);
      v90 = v8 == a2 || v88 == a2;
      if (a4)
      {
        if (!v90)
        {
          v91 = 0;
          v92 = v8;
          do
          {
            v93 = v88;
            v94 = *(v92 + 16);
            v95 = *v92;
            if (v94 < *v92)
            {
              v96 = *(v92 + 24);
              v97 = v91;
              while (1)
              {
                v98 = v8 + v97;
                *(v98 + 16) = v95;
                *(v98 + 24) = *(v8 + v97 + 8);
                if (!v97)
                {
                  break;
                }

                v95 = *(v98 - 16);
                v97 -= 16;
                if (v94 >= v95)
                {
                  v99 = v8 + v97 + 16;
                  goto LABEL_134;
                }
              }

              v99 = v8;
LABEL_134:
              *v99 = v94;
              *(v99 + 8) = v96;
            }

            v88 = v93 + 2;
            v91 += 16;
            v92 = v93;
          }

          while (v93 + 2 != a2);
        }
      }

      else if (!v90)
      {
        v138 = (v8 + 24);
        do
        {
          v139 = v88;
          v140 = *(v7 + 16);
          v141 = *v7;
          if (v140 < *v7)
          {
            v142 = *(v7 + 24);
            v143 = v138;
            do
            {
              v144 = v143;
              *(v143 - 1) = v141;
              v145 = *(v143 - 4);
              v143 -= 2;
              *v144 = v145;
              v141 = *(v144 - 5);
            }

            while (v140 < v141);
            *(v143 - 1) = v140;
            *v143 = v142;
          }

          v88 = v139 + 2;
          v138 += 2;
          v7 = v139;
        }

        while (v139 + 2 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v100 = (v9 - 2) >> 1;
        v101 = v100;
        do
        {
          v102 = v101;
          if (v100 >= v101)
          {
            v103 = (2 * v101) | 1;
            v104 = v8 + 16 * v103;
            if (2 * v102 + 2 < v9 && *v104 < *(v104 + 16))
            {
              v104 += 16;
              v103 = 2 * v102 + 2;
            }

            v105 = v8 + 16 * v102;
            v106 = *v104;
            v107 = *v105;
            if (*v104 >= *v105)
            {
              v108 = *(v105 + 8);
              do
              {
                v109 = v105;
                v105 = v104;
                *v109 = v106;
                *(v109 + 8) = *(v104 + 8);
                if (v100 < v103)
                {
                  break;
                }

                v110 = 2 * v103;
                v103 = (2 * v103) | 1;
                v104 = v8 + 16 * v103;
                v111 = v110 + 2;
                if (v111 < v9 && *v104 < *(v104 + 16))
                {
                  v104 += 16;
                  v103 = v111;
                }

                v106 = *v104;
              }

              while (*v104 >= v107);
              *v105 = v107;
              *(v105 + 8) = v108;
            }
          }

          v101 = v102 - 1;
        }

        while (v102);
        do
        {
          v112 = 0;
          v113 = *v8;
          v114 = *(v8 + 8);
          v115 = v8;
          do
          {
            v116 = v115;
            v117 = v115 + 16 * v112;
            v115 = v117 + 16;
            v118 = 2 * v112;
            v112 = (2 * v112) | 1;
            v119 = v118 + 2;
            if (v119 < v9)
            {
              v121 = *(v117 + 32);
              v120 = v117 + 32;
              if (*(v120 - 16) < v121)
              {
                v115 = v120;
                v112 = v119;
              }
            }

            *v116 = *v115;
            *(v116 + 8) = *(v115 + 8);
          }

          while (v112 <= ((v9 - 2) >> 1));
          if (v115 == a2 - 2)
          {
            *v115 = v113;
            *(v115 + 8) = v114;
          }

          else
          {
            *v115 = *(a2 - 2);
            *(v115 + 8) = *(a2 - 2);
            *(a2 - 2) = v113;
            *(a2 - 2) = v114;
            v122 = (v115 - v8 + 16) >> 4;
            v123 = v122 < 2;
            v124 = v122 - 2;
            if (!v123)
            {
              v125 = v124 >> 1;
              v126 = v8 + 16 * v125;
              v127 = *v126;
              v128 = *v115;
              if (*v126 < *v115)
              {
                v129 = *(v115 + 8);
                do
                {
                  v130 = v115;
                  v115 = v126;
                  *v130 = v127;
                  *(v130 + 8) = *(v126 + 8);
                  if (!v125)
                  {
                    break;
                  }

                  v125 = (v125 - 1) >> 1;
                  v126 = v8 + 16 * v125;
                  v127 = *v126;
                }

                while (*v126 < v128);
                *v115 = v128;
                *(v115 + 8) = v129;
              }
            }
          }

          a2 -= 2;
          v123 = v9-- <= 2;
        }

        while (!v123);
      }

      return result;
    }

    v10 = v8 + 16 * (v9 >> 1);
    v11 = v10;
    v12 = *(a2 - 2);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = *v8;
      if (*v10 >= *v8)
      {
        if (v12 < v13)
        {
          *v10 = v12;
          *(a2 - 2) = v13;
          v19 = *(v10 + 8);
          *(v10 + 8) = *(a2 - 2);
          *(a2 - 2) = v19;
          v20 = *v8;
          if (*v10 < *v8)
          {
            *v8 = *v10;
            *v10 = v20;
            v21 = *(v8 + 8);
            *(v8 + 8) = *(v10 + 8);
            *(v10 + 8) = v21;
          }
        }
      }

      else
      {
        if (v12 < v13)
        {
          *v8 = v12;
          *(a2 - 2) = v14;
          v15 = *(v8 + 8);
          *(v8 + 8) = *(a2 - 2);
          goto LABEL_27;
        }

        *v8 = v13;
        *v10 = v14;
        v15 = *(v8 + 8);
        *(v8 + 8) = *(v10 + 8);
        *(v10 + 8) = v15;
        v25 = *(a2 - 2);
        if (v25 < v14)
        {
          *v10 = v25;
          *(a2 - 2) = v14;
          *(v10 + 8) = *(a2 - 2);
LABEL_27:
          *(a2 - 2) = v15;
        }
      }

      v26 = v10 - 16;
      v27 = *(v10 - 16);
      v28 = *(v8 + 16);
      v29 = *(a2 - 4);
      if (v27 >= v28)
      {
        if (v29 < v27)
        {
          *v26 = v29;
          *(a2 - 4) = v27;
          v31 = *(v10 - 8);
          *(v10 - 8) = *(a2 - 6);
          *(a2 - 6) = v31;
          v32 = *(v8 + 16);
          if (*v26 < v32)
          {
            *(v8 + 16) = *v26;
            *v26 = v32;
            v33 = *(v8 + 24);
            *(v8 + 24) = *(v10 - 8);
            *(v10 - 8) = v33;
          }
        }
      }

      else
      {
        if (v29 < v27)
        {
          *(v8 + 16) = v29;
          *(a2 - 4) = v28;
          v30 = *(v8 + 24);
          *(v8 + 24) = *(a2 - 6);
          goto LABEL_39;
        }

        *(v8 + 16) = v27;
        *v26 = v28;
        v30 = *(v8 + 24);
        *(v8 + 24) = *(v10 - 8);
        *(v10 - 8) = v30;
        v35 = *(a2 - 4);
        if (v35 < v28)
        {
          *v26 = v35;
          *(a2 - 4) = v28;
          *(v10 - 8) = *(a2 - 6);
LABEL_39:
          *(a2 - 6) = v30;
        }
      }

      v37 = *(v10 + 16);
      v36 = v10 + 16;
      v38 = v37;
      v39 = *(v8 + 32);
      v40 = *(a2 - 6);
      if (v37 >= v39)
      {
        if (v40 < v38)
        {
          *v36 = v40;
          *(a2 - 6) = v38;
          v42 = *(v36 + 8);
          *(v36 + 8) = *(a2 - 10);
          *(a2 - 10) = v42;
          v43 = *(v8 + 32);
          if (*v36 < v43)
          {
            *(v8 + 32) = *v36;
            *v36 = v43;
            v44 = *(v8 + 40);
            *(v8 + 40) = *(v36 + 8);
            *(v36 + 8) = v44;
          }
        }
      }

      else
      {
        if (v40 < v38)
        {
          *(v8 + 32) = v40;
          *(a2 - 6) = v39;
          v41 = *(v8 + 40);
          *(v8 + 40) = *(a2 - 10);
          goto LABEL_48;
        }

        *(v8 + 32) = v38;
        *v36 = v39;
        v41 = *(v8 + 40);
        *(v8 + 40) = *(v36 + 8);
        *(v36 + 8) = v41;
        v45 = *(a2 - 6);
        if (v45 < v39)
        {
          *v36 = v45;
          *(a2 - 6) = v39;
          *(v36 + 8) = *(a2 - 10);
LABEL_48:
          *(a2 - 10) = v41;
        }
      }

      v46 = *v11;
      v47 = *v26;
      v48 = *v36;
      if (*v11 >= *v26)
      {
        v50 = *(v11 + 8);
        if (v48 >= v46)
        {
LABEL_55:
          v47 = v46;
        }

        else
        {
          *v11 = v48;
          *v36 = v46;
          v51 = *(v36 + 8);
          *(v11 + 8) = v51;
          *(v36 + 8) = v50;
          if (v48 >= v47)
          {
            v50 = v51;
LABEL_59:
            v47 = v48;
          }

          else
          {
            *v26 = v48;
            *v11 = v47;
            v50 = *(v26 + 8);
            *(v26 + 8) = v51;
            *(v11 + 8) = v50;
          }
        }
      }

      else
      {
        if (v48 < v46)
        {
          *v26 = v48;
          *v36 = v47;
          v49 = *(v26 + 8);
          *(v26 + 8) = *(v36 + 8);
          *(v36 + 8) = v49;
          v50 = *(v11 + 8);
          goto LABEL_55;
        }

        *v26 = v46;
        *v11 = v47;
        v50 = *(v26 + 8);
        *(v26 + 8) = *(v11 + 8);
        *(v11 + 8) = v50;
        if (v48 < v47)
        {
          *v11 = v48;
          *v36 = v47;
          v52 = *(v36 + 8);
          *(v11 + 8) = v52;
          *(v36 + 8) = v50;
          v50 = v52;
          goto LABEL_59;
        }
      }

      v53 = *v8;
      *v8 = v47;
      *v11 = v53;
      v54 = *(v8 + 8);
      *(v8 + 8) = v50;
      *(v11 + 8) = v54;
      goto LABEL_61;
    }

    v16 = *v8;
    v17 = *v10;
    if (*v8 >= *v10)
    {
      if (v12 < v16)
      {
        *v8 = v12;
        *(a2 - 2) = v16;
        v22 = *(v8 + 8);
        *(v8 + 8) = *(a2 - 2);
        *(a2 - 2) = v22;
        v23 = *v10;
        if (*v8 < *v10)
        {
          *v10 = *v8;
          *v8 = v23;
          v24 = *(v10 + 8);
          *(v10 + 8) = *(v8 + 8);
          *(v8 + 8) = v24;
        }
      }

      goto LABEL_61;
    }

    if (v12 < v16)
    {
      *v10 = v12;
      *(a2 - 2) = v17;
      v18 = *(v10 + 8);
      *(v10 + 8) = *(a2 - 2);
LABEL_36:
      *(a2 - 2) = v18;
      goto LABEL_61;
    }

    *v10 = v16;
    *v8 = v17;
    v18 = *(v10 + 8);
    *(v10 + 8) = *(v8 + 8);
    *(v8 + 8) = v18;
    v34 = *(a2 - 2);
    if (v34 < v17)
    {
      *v8 = v34;
      *(a2 - 2) = v17;
      *(v8 + 8) = *(a2 - 2);
      goto LABEL_36;
    }

LABEL_61:
    --a3;
    v55 = *v8;
    if (a4)
    {
      v56 = *(v8 + 8);
LABEL_64:
      v57 = 0;
      do
      {
        v58 = *(v8 + v57 + 16);
        v57 += 16;
      }

      while (v58 < v55);
      v59 = v8 + v57;
      v60 = a2;
      if (v57 == 16)
      {
        v60 = a2;
        do
        {
          if (v59 >= v60)
          {
            break;
          }

          v62 = *(v60 - 2);
          v60 -= 2;
        }

        while (v62 >= v55);
      }

      else
      {
        do
        {
          v61 = *(v60 - 2);
          v60 -= 2;
        }

        while (v61 >= v55);
      }

      if (v59 >= v60)
      {
        v8 += v57;
      }

      else
      {
        v63 = *v60;
        v8 += v57;
        v64 = v60;
        do
        {
          *v8 = v63;
          *v64 = v58;
          v65 = *(v8 + 8);
          *(v8 + 8) = *(v64 + 2);
          *(v64 + 2) = v65;
          do
          {
            v66 = *(v8 + 16);
            v8 += 16;
            v58 = v66;
          }

          while (v66 < v55);
          do
          {
            v67 = *(v64 - 2);
            v64 -= 2;
            v63 = v67;
          }

          while (v67 >= v55);
        }

        while (v8 < v64);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      *(v8 - 16) = v55;
      *(v8 - 8) = v56;
      if (v59 < v60)
      {
        goto LABEL_85;
      }

      v68 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*>(v7, v8 - 16);
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*>(v8, a2);
      if (result)
      {
        a2 = (v8 - 16);
        if (!v68)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v68)
      {
LABEL_85:
        result = std::__introsort<std::_ClassicAlgPolicy,CI::TileTask::pixelsOverdrawn(void)::$_0::operator() const(std::vector<CGRect> const&)::{lambda(std::pair<double,int>,std::pair<double,int>)#1} &,std::pair<double,int>*,false>(v7, (v8 - 16), a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v56 = *(v8 + 8);
      if (*(v8 - 16) < v55)
      {
        goto LABEL_64;
      }

      if (v55 >= *(a2 - 2))
      {
        v70 = v8 + 16;
        do
        {
          v8 = v70;
          if (v70 >= a2)
          {
            break;
          }

          v70 += 16;
        }

        while (v55 >= *v8);
      }

      else
      {
        do
        {
          v69 = *(v8 + 16);
          v8 += 16;
        }

        while (v55 >= v69);
      }

      v71 = a2;
      if (v8 < a2)
      {
        v71 = a2;
        do
        {
          v72 = *(v71 - 2);
          v71 -= 2;
        }

        while (v55 < v72);
      }

      if (v8 < v71)
      {
        v73 = *v8;
        v74 = *v71;
        do
        {
          *v8 = v74;
          *v71 = v73;
          v75 = *(v8 + 8);
          *(v8 + 8) = *(v71 + 2);
          *(v71 + 2) = v75;
          do
          {
            v76 = *(v8 + 16);
            v8 += 16;
            v73 = v76;
          }

          while (v55 >= v76);
          do
          {
            v77 = *(v71 - 2);
            v71 -= 2;
            v74 = v77;
          }

          while (v55 < v77);
        }

        while (v8 < v71);
      }

      if (v8 - 16 != v7)
      {
        *v7 = *(v8 - 16);
        *(v7 + 8) = *(v8 - 8);
      }

      a4 = 0;
      *(v8 - 16) = v55;
      *(v8 - 8) = v56;
    }
  }

  v80 = *(v8 + 16);
  v81 = *v8;
  v82 = *(a2 - 2);
  if (v80 >= *v8)
  {
    if (v82 < v80)
    {
      *(v8 + 16) = v82;
      *(a2 - 2) = v80;
      v131 = *(v8 + 24);
      *(v8 + 24) = *(a2 - 2);
      *(a2 - 2) = v131;
      v132 = *(v8 + 16);
      v133 = *v8;
      if (v132 < *v8)
      {
        *v8 = v132;
        *(v8 + 16) = v133;
        v134 = *(v8 + 8);
        *(v8 + 8) = *(v8 + 24);
        *(v8 + 24) = v134;
      }
    }
  }

  else
  {
    if (v82 < v80)
    {
      *v8 = v82;
      *(a2 - 2) = v81;
      goto LABEL_114;
    }

    *v8 = v80;
    *(v8 + 16) = v81;
    v83 = *(v8 + 8);
    *(v8 + 8) = *(v8 + 24);
    *(v8 + 24) = v83;
    v146 = *(a2 - 2);
    if (v146 < v81)
    {
      *(v8 + 16) = v146;
      *(a2 - 2) = v81;
      *(v8 + 24) = *(a2 - 2);
      goto LABEL_115;
    }
  }

  return result;
}