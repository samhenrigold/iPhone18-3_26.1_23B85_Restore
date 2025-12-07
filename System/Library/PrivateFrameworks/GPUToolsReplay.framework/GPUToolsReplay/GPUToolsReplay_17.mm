uint64_t *std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned long long>>(uint64_t **a1, unint64_t a2, _OWORD *a3)
{
  v3 = a1[1];
  if (!v3)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v4 = v3;
      v5 = v3[4];
      if (v5 <= a2)
      {
        break;
      }

      v3 = *v4;
      if (!*v4)
      {
        goto LABEL_7;
      }
    }

    if (v5 >= a2)
    {
      return v4;
    }

    v3 = v4[1];
    if (!v3)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::__function::__value_func<void ()(unsigned long,unsigned long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(GTFunctionIndex,GTMTLSMFunctionHandle const*,unsigned long)>::~__value_func[abi:nn200100](uint64_t a1)
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

uint64_t *std::__tree_balance_after_insert[abi:nn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
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

void std::__function::__func<AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(GTMTLReplayController *,GTMTLSMObject const*,long,apr_pool_t *,std::map<unsigned long long,unsigned long long> &)::$_1,std::allocator<AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(GTMTLReplayController *,GTMTLSMObject const*,long,apr_pool_t *,std::map<unsigned long long,unsigned long long> &)::$_1>,void ()(unsigned long,unsigned long)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *a3;
  AccelerationStructureViewer::IntersectionFunction::IntersectionFunction(&v77, (**(a1 + 8) + 152 * *a3));
  v81 = 1;
  v80 = 0;
  v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = v6;
  if (v4)
  {
    if (v4)
    {
      [v6 addObject:@"instancing"];
      v8 = v83;
      if (v83 >= v84)
      {
        v10 = __src;
        v11 = v83 - __src;
        v12 = (v83 - __src) >> 2;
        v13 = v12 + 1;
        if ((v12 + 1) >> 62)
        {
          goto LABEL_103;
        }

        v14 = v84 - __src;
        if ((v84 - __src) >> 1 > v13)
        {
          v13 = v14 >> 1;
        }

        if (v14 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v15 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v15 = v13;
        }

        if (v15)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v15);
        }

        *(4 * v12) = 1;
        v9 = 4 * v12 + 4;
        memcpy(0, v10, v11);
        v16 = __src;
        __src = 0;
        v83 = v9;
        v84 = 0;
        if (v16)
        {
          operator delete(v16);
        }
      }

      else
      {
        *v83 = 1;
        v9 = (v8 + 4);
      }

      v83 = v9;
    }

    if ((v4 & 2) != 0)
    {
      [v7 addObject:@"triangle_data"];
      v17 = v83;
      if (v83 >= v84)
      {
        v19 = __src;
        v20 = v83 - __src;
        v21 = (v83 - __src) >> 2;
        v22 = v21 + 1;
        if ((v21 + 1) >> 62)
        {
          goto LABEL_103;
        }

        v23 = v84 - __src;
        if ((v84 - __src) >> 1 > v22)
        {
          v22 = v23 >> 1;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v24 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        if (v24)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v24);
        }

        *(4 * v21) = 2;
        v18 = 4 * v21 + 4;
        memcpy(0, v19, v20);
        v25 = __src;
        __src = 0;
        v83 = v18;
        v84 = 0;
        if (v25)
        {
          operator delete(v25);
        }
      }

      else
      {
        *v83 = 2;
        v18 = (v17 + 4);
      }

      v83 = v18;
    }

    if ((v4 & 4) != 0)
    {
      [v7 addObject:@"world_space_data"];
      v26 = v83;
      if (v83 >= v84)
      {
        v28 = __src;
        v29 = v83 - __src;
        v30 = (v83 - __src) >> 2;
        v31 = v30 + 1;
        if ((v30 + 1) >> 62)
        {
          goto LABEL_103;
        }

        v32 = v84 - __src;
        if ((v84 - __src) >> 1 > v31)
        {
          v31 = v32 >> 1;
        }

        if (v32 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v33 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v33 = v31;
        }

        if (v33)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v33);
        }

        *(4 * v30) = 3;
        v27 = 4 * v30 + 4;
        memcpy(0, v28, v29);
        v34 = __src;
        __src = 0;
        v83 = v27;
        v84 = 0;
        if (v34)
        {
          operator delete(v34);
        }
      }

      else
      {
        *v83 = 3;
        v27 = (v26 + 4);
      }

      v83 = v27;
    }

    if ((v4 & 0x10) != 0)
    {
      [v7 addObject:@"primitive_motion"];
      v35 = v83;
      if (v83 >= v84)
      {
        v37 = __src;
        v38 = v83 - __src;
        v39 = (v83 - __src) >> 2;
        v40 = v39 + 1;
        if ((v39 + 1) >> 62)
        {
          goto LABEL_103;
        }

        v41 = v84 - __src;
        if ((v84 - __src) >> 1 > v40)
        {
          v40 = v41 >> 1;
        }

        if (v41 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v42 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v42 = v40;
        }

        if (v42)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v42);
        }

        *(4 * v39) = 4;
        v36 = 4 * v39 + 4;
        memcpy(0, v37, v38);
        v43 = __src;
        __src = 0;
        v83 = v36;
        v84 = 0;
        if (v43)
        {
          operator delete(v43);
        }
      }

      else
      {
        *v83 = 4;
        v36 = (v35 + 4);
      }

      v83 = v36;
    }

    if ((v4 & 8) != 0)
    {
      [v7 addObject:@"instance_motion"];
      v44 = v83;
      if (v83 >= v84)
      {
        v46 = __src;
        v47 = v83 - __src;
        v48 = (v83 - __src) >> 2;
        v49 = v48 + 1;
        if ((v48 + 1) >> 62)
        {
          goto LABEL_103;
        }

        v50 = v84 - __src;
        if ((v84 - __src) >> 1 > v49)
        {
          v49 = v50 >> 1;
        }

        if (v50 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v51 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v51 = v49;
        }

        if (v51)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v51);
        }

        *(4 * v48) = 5;
        v45 = 4 * v48 + 4;
        memcpy(0, v46, v47);
        v52 = __src;
        __src = 0;
        v83 = v45;
        v84 = 0;
        if (v52)
        {
          operator delete(v52);
        }
      }

      else
      {
        *v83 = 5;
        v45 = (v44 + 4);
      }

      v83 = v45;
    }

    if ((v4 & 0x20) != 0)
    {
      [v7 addObject:@"extended_limits"];
      v53 = v83;
      if (v83 >= v84)
      {
        v55 = __src;
        v56 = v83 - __src;
        v57 = (v83 - __src) >> 2;
        v58 = v57 + 1;
        if ((v57 + 1) >> 62)
        {
          goto LABEL_103;
        }

        v59 = v84 - __src;
        if ((v84 - __src) >> 1 > v58)
        {
          v58 = v59 >> 1;
        }

        if (v59 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v60 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v60 = v58;
        }

        if (v60)
        {
          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v60);
        }

        *(4 * v57) = 6;
        v54 = 4 * v57 + 4;
        memcpy(0, v55, v56);
        v61 = __src;
        __src = 0;
        v83 = v54;
        v84 = 0;
        if (v61)
        {
          operator delete(v61);
        }
      }

      else
      {
        *v83 = 6;
        v54 = (v53 + 4);
      }

      v83 = v54;
    }

    if ((v4 & 0x40) == 0)
    {
      goto LABEL_100;
    }

    [v7 addObject:@"max_levels"];
    v62 = v83;
    if (v83 < v84)
    {
      *v83 = 8;
      v63 = (v62 + 4);
LABEL_99:
      v83 = v63;
      goto LABEL_100;
    }

    v64 = __src;
    v65 = v83 - __src;
    v66 = (v83 - __src) >> 2;
    v67 = v66 + 1;
    if (!((v66 + 1) >> 62))
    {
      v68 = v84 - __src;
      if ((v84 - __src) >> 1 > v67)
      {
        v67 = v68 >> 1;
      }

      if (v68 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v69 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v69 = v67;
      }

      if (v69)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v69);
      }

      *(4 * v66) = 8;
      v63 = 4 * v66 + 4;
      memcpy(0, v64, v65);
      v70 = __src;
      __src = 0;
      v83 = v63;
      v84 = 0;
      if (v70)
      {
        operator delete(v70);
      }

      goto LABEL_99;
    }

LABEL_103:
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

LABEL_100:
  v71 = MEMORY[0x277CCACA8];
  v72 = [v7 componentsJoinedByString:{@", "}];
  v73 = [v71 stringWithFormat:@"Opaque<%@>", v72];
  v74 = v79;
  v79 = v73;

  LOWORD(v75) = 2;
  v76 = v79;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::push_back[abi:nn200100](v78, &v75);

  AccelerationStructureViewer::IntersectionFunction::operator=(**(a1 + 8) + 152 * v5, &v77);
  v77 = &unk_2860BBC40;
  v75 = &v85;
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v75);
  if (__src)
  {
    v83 = __src;
    operator delete(__src);
  }

  v75 = v78;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v75);
}

void sub_24D86A148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  AccelerationStructureViewer::IntersectionFunction::~IntersectionFunction(va);
  _Unwind_Resume(a1);
}

uint64_t AccelerationStructureViewer::IntersectionFunction::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    objc_storeStrong((a1 + 32), *(a2 + 32));
    v12 = *(a2 + 40);
    v13 = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v13;
    *(a1 + 40) = v12;
    v14 = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v14;
  }

  else
  {
    v4 = *(a1 + 8);
    v6 = *(a2 + 8);
    v5 = *(a2 + 16);
    v7 = v5 - v6;
    if (*(a1 + 24) - v4 < (v5 - v6))
    {
      v8 = v7 >> 4;
      std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__vdeallocate((a1 + 8));
      if (!(v8 >> 60))
      {
        v9 = *(a1 + 24) - *(a1 + 8);
        v10 = v9 >> 3;
        if (v9 >> 3 <= v8)
        {
          v10 = v8;
        }

        if (v9 >= 0x7FFFFFFFFFFFFFF0)
        {
          v11 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = v10;
        }

        std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__vallocate[abi:nn200100]((a1 + 8), v11);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v15 = *(a1 + 16) - v4;
    if (v15 >= v7)
    {
      v18 = std::__copy_impl::operator()[abi:nn200100]<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}> *,std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}> *,std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}> *>(*(a2 + 8), *(a2 + 16), v4);
      v19 = *(a1 + 16);
      if (v19 != v18)
      {
        do
        {
          v20 = v19 - 2;

          v19 = v20;
        }

        while (v20 != v18);
      }

      *(a1 + 16) = v18;
    }

    else
    {
      v16 = v6 + v15;
      std::__copy_impl::operator()[abi:nn200100]<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}> *,std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}> *,std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}> *>(*(a2 + 8), v6 + v15, v4);
      v17 = *(a1 + 16);
      while (v16 != v5)
      {
        *v17 = *v16;
        *(v17 + 8) = *(v16 + 8);
        v16 += 16;
        v17 += 16;
      }

      *(a1 + 16) = v17;
    }

    objc_storeStrong((a1 + 32), *(a2 + 32));
    v21 = *(a2 + 40);
    v22 = *(a2 + 56);
    v23 = *(a1 + 80);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = v22;
    *(a1 + 40) = v21;
    v24 = *(a2 + 80);
    v25 = *(a2 + 88);
    v26 = v25 - v24;
    v27 = *(a1 + 96);
    if (v27 - v23 < (v25 - v24))
    {
      v28 = v26 >> 2;
      if (v23)
      {
        *(a1 + 88) = v23;
        operator delete(v23);
        v27 = 0;
        *(a1 + 80) = 0;
        *(a1 + 88) = 0;
        *(a1 + 96) = 0;
      }

      if (!(v28 >> 62))
      {
        v29 = v27 >> 1;
        if (v27 >> 1 <= v28)
        {
          v29 = v26 >> 2;
        }

        if (v27 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v30 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v30 = v29;
        }

        std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::__vallocate[abi:nn200100]((a1 + 80), v30);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v31 = *(a1 + 88);
    v32 = v31 - v23;
    if (v31 - v23 >= v26)
    {
      if (v25 != v24)
      {
        memmove(v23, *(a2 + 80), v25 - v24);
      }

      v34 = &v23[v26];
    }

    else
    {
      v33 = &v24[v32];
      if (v31 != v23)
      {
        memmove(v23, *(a2 + 80), v32);
        v31 = *(a1 + 88);
      }

      if (v25 != v33)
      {
        memmove(v31, v33, v25 - v33);
      }

      v34 = &v31[v25 - v33];
    }

    *(a1 + 88) = v34;
    v35 = *(a2 + 104);
    v36 = *(a1 + 128);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 104) = v35;
    v38 = *(a2 + 128);
    v37 = *(a2 + 136);
    v39 = v37 - v38;
    if (*(a1 + 144) - v36 < (v37 - v38))
    {
      v40 = 0xEEEEEEEEEEEEEEEFLL * (v39 >> 3);
      std::vector<AccelerationStructureViewer::Property>::__vdeallocate((a1 + 128));
      if (v40 <= 0x222222222222222)
      {
        v41 = 0xDDDDDDDDDDDDDDDELL * ((*(a1 + 144) - *(a1 + 128)) >> 3);
        if (v41 <= v40)
        {
          v41 = v40;
        }

        if (0xEEEEEEEEEEEEEEEFLL * ((*(a1 + 144) - *(a1 + 128)) >> 3) >= 0x111111111111111)
        {
          v42 = 0x222222222222222;
        }

        else
        {
          v42 = v41;
        }

        std::vector<AccelerationStructureViewer::Property>::__vallocate[abi:nn200100]((a1 + 128), v42);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v43 = *(a1 + 136) - v36;
    if (v43 >= v39)
    {
      v44 = std::__copy_impl::operator()[abi:nn200100]<AccelerationStructureViewer::Property *,AccelerationStructureViewer::Property *,AccelerationStructureViewer::Property *>(v38, v37, v36);
      v45 = *(a1 + 136);
      if (v45 != v44)
      {
        v46 = v45 - 120;
        v47 = (v45 - 120);
        v48 = (v45 - 120);
        do
        {
          v49 = *v48;
          v48 -= 15;
          (*v49)(v47);
          v46 -= 120;
          v50 = v47 == v44;
          v47 = v48;
        }

        while (!v50);
      }

      *(a1 + 136) = v44;
    }

    else
    {
      std::__copy_impl::operator()[abi:nn200100]<AccelerationStructureViewer::Property *,AccelerationStructureViewer::Property *,AccelerationStructureViewer::Property *>(v38, v38 + v43, v36);
      *(a1 + 136) = std::__uninitialized_allocator_copy_impl[abi:nn200100]<std::allocator<AccelerationStructureViewer::Property>,AccelerationStructureViewer::Property*,AccelerationStructureViewer::Property*,AccelerationStructureViewer::Property*>(v38 + v43, v37, *(a1 + 136));
    }
  }

  return a1;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<AccelerationStructureViewer::Property *,AccelerationStructureViewer::Property *,AccelerationStructureViewer::Property *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *(v5 + 8);
      *(a3 + 10) = *(v5 + 10);
      *(a3 + 8) = v6;
      objc_storeStrong((a3 + 16), *(v5 + 16));
      *(a3 + 24) = *(v5 + 24);
      v7 = *(v5 + 40);
      v8 = *(v5 + 56);
      v9 = *(v5 + 72);
      *(a3 + 88) = *(v5 + 88);
      *(a3 + 72) = v9;
      *(a3 + 56) = v8;
      *(a3 + 40) = v7;
      if (a3 != v5)
      {
        v10 = (a3 + 96);
        v11 = *(a3 + 96);
        v13 = *(v5 + 96);
        v12 = *(v5 + 104);
        v14 = v12 - v13;
        v15 = *(a3 + 112);
        if (v15 - v11 < v12 - v13)
        {
          if (v11)
          {
            v16 = *(a3 + 104);
            v17 = *(a3 + 96);
            if (v16 != v11)
            {
              do
              {
                v18 = *(v16 - 8);
                v16 -= 8;
              }

              while (v16 != v11);
              v17 = *v10;
            }

            *(a3 + 104) = v11;
            operator delete(v17);
            v15 = 0;
            *v10 = 0;
            *(a3 + 104) = 0;
            *(a3 + 112) = 0;
          }

          v19 = v14 >> 3;
          if (!((v14 >> 3) >> 61))
          {
            if (v15 >> 2 > v19)
            {
              v19 = v15 >> 2;
            }

            if (v15 >= 0x7FFFFFFFFFFFFFF8)
            {
              v20 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v20 = v19;
            }

            std::vector<NSString * {__strong}>::__vallocate[abi:nn200100]((a3 + 96), v20);
          }

          std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
        }

        v21 = *(a3 + 104) - v11;
        if (v21 >= v14)
        {
          v25 = std::__copy_impl::operator()[abi:nn200100]<NSString * {__strong}*,NSString * {__strong}*,NSString * {__strong}*>(*(v5 + 96), *(v5 + 104), *(a3 + 96));
          for (i = *(a3 + 104); i != v25; --i)
          {
            v27 = *(i - 1);
          }

          *(a3 + 104) = v25;
        }

        else
        {
          v22 = (v13 + v21);
          std::__copy_impl::operator()[abi:nn200100]<NSString * {__strong}*,NSString * {__strong}*,NSString * {__strong}*>(*(v5 + 96), (v13 + v21), *(a3 + 96));
          v23 = *(a3 + 104);
          while (v22 != v12)
          {
            v24 = *v22++;
            *v23++ = v24;
          }

          *(a3 + 104) = v23;
        }
      }

      v5 += 120;
      a3 += 120;
    }

    while (v5 != a2);
  }

  return a3;
}

id *std::__copy_impl::operator()[abi:nn200100]<NSString * {__strong}*,NSString * {__strong}*,NSString * {__strong}*>(void **a1, void **a2, id *location)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      v6 = *v5++;
      objc_storeStrong(location++, v6);
    }

    while (v5 != a2);
  }

  return location;
}

id *std::__copy_impl::operator()[abi:nn200100]<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}> *,std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}> *,std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}> *>(uint64_t a1, uint64_t a2, id *a3)
{
  if (a1 != a2)
  {
    v4 = a1;
    v5 = a3;
    do
    {
      *v5 = *v4;
      v5 += 8;
      objc_storeStrong(a3 + 1, *(v4 + 8));
      v4 += 16;
      a3 = v5;
    }

    while (v4 != a2);
    return v5;
  }

  return a3;
}

uint64_t std::__function::__func<AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(GTMTLReplayController *,GTMTLSMObject const*,long,apr_pool_t *,std::map<unsigned long long,unsigned long long> &)::$_1,std::allocator<AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(GTMTLReplayController *,GTMTLSMObject const*,long,apr_pool_t *,std::map<unsigned long long,unsigned long long> &)::$_1>,void ()(unsigned long,unsigned long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2860BB660;
  a2[1] = v2;
  return result;
}

void std::__function::__func<AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(GTMTLReplayController *,GTMTLSMObject const*,long,apr_pool_t *,std::map<unsigned long long,unsigned long long> &)::$_0,std::allocator<AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(GTMTLReplayController *,GTMTLSMObject const*,long,apr_pool_t *,std::map<unsigned long long,unsigned long long> &)::$_0>,void ()(GTFunctionIndex,GTMTLSMFunctionHandle const*,unsigned long)>::operator()(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v94 = *MEMORY[0x277D85DE8];
  v4 = *a3;
  v72 = *a4;
  Object = GTMTLSMContext_getObject(**(***(a1 + 8) + 40), *(*a3 + 48), *a2);
  if (Object && *Object == 43 && v72 < *(*(**(a1 + 24) + 112) + 8))
  {
    v71 = Object;
    AccelerationStructureViewer::IntersectionFunction::IntersectionFunction(&v78, (**(a1 + 32) + 152 * v72));
    v84 = 0;
    v81 = *(v4 + 48);
    v6 = [**(a1 + 16) functionForKey:?];
    v7 = v6;
    v69 = v6;
    if (v6)
    {
      v8 = [v6 label];
      if (v8 && ([v7 label], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "isEqualToString:", &stru_2860BD438), v9, v8, (v10 & 1) == 0))
      {
        v14 = [v7 label];
      }

      else
      {
        v11 = [v7 name];
        if (v11 && ([v7 name], v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "isEqualToString:", &stru_2860BD438), v12, v11, (v13 & 1) == 0))
        {
          v14 = [v7 name];
        }

        else
        {
          v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"MTLFunction 0x%llx", v7, v69];
        }
      }

      v16 = v80;
      v80 = v14;

      v92 = 2;
      v93 = v80;
      std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::push_back[abi:nn200100](v79, &v92);
    }

    else
    {
      v15 = v80;
      v80 = 0;
    }

    v82 = v71[5];
    v83 = *(v71[10] + 42);
    v17 = v71[14];
    if (v17)
    {
      v85 = *(v17 + 40) & 1;
    }

    v70 = v7;
    v18 = [v70 reflectionWithOptions:65539];
    v19 = v18;
    v20 = [v18 primitiveKind];
    if (v20 < 3)
    {
      v86 = v20;
    }

    [v18 tags];
    v76 = 0u;
    v77 = 0u;
    v74 = 0u;
    v21 = v75 = 0u;
    v22 = [v21 countByEnumeratingWithState:&v74 objects:&v92 count:16];
    if (v22)
    {
      v23 = *v75;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v75 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = *(*(&v74 + 1) + 8 * i);
          v26 = [v25 tagType];
          if (v26 > 4)
          {
            if (v26 > 6)
            {
              if (v26 == 7)
              {
                v27 = v88;
                if (v88 >= v89)
                {
                  v30 = __src;
                  v31 = v88 - __src;
                  v44 = (v88 - __src) >> 2;
                  v45 = v44 + 1;
                  if ((v44 + 1) >> 62)
                  {
                    goto LABEL_133;
                  }

                  v46 = v89 - __src;
                  if ((v89 - __src) >> 1 > v45)
                  {
                    v45 = v46 >> 1;
                  }

                  if (v46 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v47 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v47 = v45;
                  }

                  if (v47)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v47);
                  }

                  v64 = (4 * v44);
                  v65 = &v64[-((v88 - __src) >> 2)];
                  v66 = 7;
                  goto LABEL_121;
                }

                v28 = 7;
              }

              else
              {
                if (v26 != 8)
                {
                  goto LABEL_125;
                }

                v27 = v88;
                if (v88 >= v89)
                {
                  v30 = __src;
                  v31 = v88 - __src;
                  v60 = (v88 - __src) >> 2;
                  v61 = v60 + 1;
                  if ((v60 + 1) >> 62)
                  {
LABEL_133:
                    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
                  }

                  v62 = v89 - __src;
                  if ((v89 - __src) >> 1 > v61)
                  {
                    v61 = v62 >> 1;
                  }

                  if (v62 >= 0x7FFFFFFFFFFFFFFCLL)
                  {
                    v63 = 0x3FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v63 = v61;
                  }

                  if (v63)
                  {
                    std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v63);
                  }

                  v64 = (4 * v60);
                  v65 = &v64[-((v88 - __src) >> 2)];
                  v66 = 8;
                  goto LABEL_121;
                }

                v28 = 8;
              }
            }

            else if (v26 == 5)
            {
              v27 = v88;
              if (v88 >= v89)
              {
                v30 = __src;
                v31 = v88 - __src;
                v36 = (v88 - __src) >> 2;
                v37 = v36 + 1;
                if ((v36 + 1) >> 62)
                {
                  goto LABEL_133;
                }

                v38 = v89 - __src;
                if ((v89 - __src) >> 1 > v37)
                {
                  v37 = v38 >> 1;
                }

                if (v38 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v39 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v39 = v37;
                }

                if (v39)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v39);
                }

                v64 = (4 * v36);
                v65 = &v64[-((v88 - __src) >> 2)];
                v66 = 4;
                goto LABEL_121;
              }

              v28 = 4;
            }

            else
            {
              v27 = v88;
              if (v88 >= v89)
              {
                v30 = __src;
                v31 = v88 - __src;
                v52 = (v88 - __src) >> 2;
                v53 = v52 + 1;
                if ((v52 + 1) >> 62)
                {
                  goto LABEL_133;
                }

                v54 = v89 - __src;
                if ((v89 - __src) >> 1 > v53)
                {
                  v53 = v54 >> 1;
                }

                if (v54 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v55 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v53;
                }

                if (v55)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v55);
                }

                v64 = (4 * v52);
                v65 = &v64[-((v88 - __src) >> 2)];
                v66 = 6;
                goto LABEL_121;
              }

              v28 = 6;
            }
          }

          else if (v26 > 2)
          {
            if (v26 == 3)
            {
              v27 = v88;
              if (v88 >= v89)
              {
                v30 = __src;
                v31 = v88 - __src;
                v40 = (v88 - __src) >> 2;
                v41 = v40 + 1;
                if ((v40 + 1) >> 62)
                {
                  goto LABEL_133;
                }

                v42 = v89 - __src;
                if ((v89 - __src) >> 1 > v41)
                {
                  v41 = v42 >> 1;
                }

                if (v42 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v43 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v43 = v41;
                }

                if (v43)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v43);
                }

                v64 = (4 * v40);
                v65 = &v64[-((v88 - __src) >> 2)];
                v66 = 3;
                goto LABEL_121;
              }

              v28 = 3;
            }

            else
            {
              v27 = v88;
              if (v88 >= v89)
              {
                v30 = __src;
                v31 = v88 - __src;
                v56 = (v88 - __src) >> 2;
                v57 = v56 + 1;
                if ((v56 + 1) >> 62)
                {
                  goto LABEL_133;
                }

                v58 = v89 - __src;
                if ((v89 - __src) >> 1 > v57)
                {
                  v57 = v58 >> 1;
                }

                if (v58 >= 0x7FFFFFFFFFFFFFFCLL)
                {
                  v59 = 0x3FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v59 = v57;
                }

                if (v59)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v59);
                }

                v64 = (4 * v56);
                v65 = &v64[-((v88 - __src) >> 2)];
                v66 = 5;
                goto LABEL_121;
              }

              v28 = 5;
            }
          }

          else if (v26 == 1)
          {
            v27 = v88;
            if (v88 >= v89)
            {
              v30 = __src;
              v31 = v88 - __src;
              v32 = (v88 - __src) >> 2;
              v33 = v32 + 1;
              if ((v32 + 1) >> 62)
              {
                goto LABEL_133;
              }

              v34 = v89 - __src;
              if ((v89 - __src) >> 1 > v33)
              {
                v33 = v34 >> 1;
              }

              if (v34 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v35 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v35 = v33;
              }

              if (v35)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v35);
              }

              v64 = (4 * v32);
              v65 = &v64[-((v88 - __src) >> 2)];
              v66 = 1;
LABEL_121:
              *v64 = v66;
              v29 = v64 + 1;
              memcpy(v65, v30, v31);
              v67 = __src;
              __src = v65;
              v88 = v29;
              v89 = 0;
              if (v67)
              {
                operator delete(v67);
              }

              v18 = v19;
              goto LABEL_124;
            }

            v28 = 1;
          }

          else
          {
            if (v26 != 2)
            {
              goto LABEL_125;
            }

            v27 = v88;
            if (v88 >= v89)
            {
              v30 = __src;
              v31 = v88 - __src;
              v48 = (v88 - __src) >> 2;
              v49 = v48 + 1;
              if ((v48 + 1) >> 62)
              {
                goto LABEL_133;
              }

              v50 = v89 - __src;
              if ((v89 - __src) >> 1 > v49)
              {
                v49 = v50 >> 1;
              }

              if (v50 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v51 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v51 = v49;
              }

              if (v51)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v51);
              }

              v64 = (4 * v48);
              v65 = &v64[-((v88 - __src) >> 2)];
              v66 = 2;
              goto LABEL_121;
            }

            v28 = 2;
          }

          *v27 = v28;
          v29 = v27 + 1;
LABEL_124:
          v88 = v29;
LABEL_125:
        }

        v22 = [v21 countByEnumeratingWithState:&v74 objects:&v92 count:16];
      }

      while (v22);
    }

    v68 = v71[15];
    if (v68)
    {
      v85 = *(v68 + 40) & 1;
    }

    AccelerationStructureViewer::IntersectionFunction::operator=(**(a1 + 32) + 152 * v72, &v78);

    v78 = &unk_2860BBC40;
    v91 = &v90;
    std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v91);
    if (__src)
    {
      v88 = __src;
      operator delete(__src);
    }

    v91 = v79;
    std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v91);
  }
}

void sub_24D86B148(_Unwind_Exception *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);

  AccelerationStructureViewer::IntersectionFunction::~IntersectionFunction(va);
  _Unwind_Resume(a1);
}

__n128 std::__function::__func<AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(GTMTLReplayController *,GTMTLSMObject const*,long,apr_pool_t *,std::map<unsigned long long,unsigned long long> &)::$_0,std::allocator<AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(GTMTLReplayController *,GTMTLSMObject const*,long,apr_pool_t *,std::map<unsigned long long,unsigned long long> &)::$_0>,void ()(GTFunctionIndex,GTMTLSMFunctionHandle const*,unsigned long)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2860BB618;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void ___ZN33AccelerationStructureViewerServer34MTLAccelerationStructureDataSource30encodeAccelerationStructureDAGE29MTLGenericBVHHeaderVersionSPIP14NSMutableArrayIPU35objcproto24MTLAccelerationStructure11objc_objectEPU26objcproto15MTLCommandQueue11objc_objectP26MTLCommandBufferDescriptorPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  NSLog(&cfstr_RunningEncodeC.isa, *(a1 + 40));
  v2 = *(a1 + 48);
  v3 = *(v2 + 32);
  v4 = ([*(v2 + 24) contents] + v3);
  v5 = v4[2];
  if (v5 <= 1)
  {
    if (v5)
    {
      if (v5 != 1)
      {
        return;
      }

      v6 = *(a1 + 48);
      *(v6 + 8) = 2;
      if (!*(v6 + 152))
      {
        return;
      }

      v7 = v4[8];
      goto LABEL_18;
    }

    v14 = *(a1 + 48);
    v15 = 1;
LABEL_15:
    *(v14 + 8) = v15;
    return;
  }

  if (v5 == 2)
  {
    v14 = *(a1 + 48);
    v15 = 3;
    goto LABEL_15;
  }

  if (v5 != 3)
  {
    return;
  }

  v8 = *(a1 + 48);
  *(v8 + 8) = 4;
  if (!*(v8 + 152))
  {
    return;
  }

  v9 = *(v8 + 64);
  v10 = [*(v8 + 56) contents];
  v11 = v4[5];
  if (v11)
  {
    v7 = 0;
    v12 = (v9 + v10 + 88);
    do
    {
      v13 = *v12;
      v12 += 26;
      v7 += v13;
      --v11;
    }

    while (v11);
  }

  else
  {
    v7 = 0;
  }

LABEL_18:
  v16 = [*(a1 + 32) newBufferWithLength:v7 << 7 options:0];
  v17 = v4[22];
  v18 = v16;
  if (v17 == 1)
  {
    v19 = [v16 contents];
    v20 = *(a1 + 48);
    v21 = *(v20 + 160);
    v22 = [*(v20 + 152) contents];
    if (v7)
    {
      v24 = 0;
      v25 = v22 + v21;
      v26 = xmmword_24DA8BB60;
      do
      {
        v27 = 0;
        v28 = (v25 + (v24 << 6));
        v29 = *(v28 + 9);
        v30 = *(v28 + 10);
        v31 = *(v28 + 11);
        v32 = *(v28 + 12);
        v33 = v30 * v32;
        v34.i32[3] = 0;
        v34.f32[0] = (((v31 * v31) + (v30 * v30)) * -2.0) + 1.0;
        v34.f32[1] = ((v31 * v32) + (v29 * v30)) + ((v31 * v32) + (v29 * v30));
        v34.f32[2] = -((v30 * v32) - (v29 * v31)) - ((v30 * v32) - (v29 * v31));
        v37.i32[3] = 0;
        v37.f32[0] = -((v31 * v32) - (v29 * v30)) - ((v31 * v32) - (v29 * v30));
        LODWORD(v23) = v28[3];
        DWORD1(v23) = v28[1];
        *&v35 = *(v28 + 2);
        v36 = v29 * v32;
        v37.f32[1] = (((v31 * v31) + (v29 * v29)) * -2.0) + 1.0;
        v37.f32[2] = (v36 + (v30 * v31)) + (v36 + (v30 * v31));
        *&v38 = (v33 + (v29 * v31)) + (v33 + (v29 * v31));
        *&v39 = -(v36 - (v30 * v31)) - (v36 - (v30 * v31));
        *&v40 = (((v30 * v30) + (v29 * v29)) * -2.0) + 1.0;
        v41.i64[0] = __PAIR64__(v39, v38);
        v41.i64[1] = v40;
        *(&v35 + 1) = v28[2];
        *&v42 = *(v28 + 13);
        DWORD2(v42) = v28[15];
        HIDWORD(v42) = 1.0;
        v78[0] = *v28;
        v78[1] = v23;
        v78[2] = v35;
        v78[3] = v42;
        do
        {
          v79.columns[v27] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, COERCE_FLOAT(v78[v27])), v37, *&v78[v27], 1), v41, v78[v27], 2), v26, v78[v27], 3);
          ++v27;
        }

        while (v27 != 4);
        v43 = invertSRTMatrix(&v79);
        v26 = xmmword_24DA8BB60;
        v44 = v19 + (v24 << 7);
        *(v44 + 8) = v45;
        *v44 = v43;
        *(v44 + 24) = v46;
        *(v44 + 16) = v47;
        *(v44 + 40) = v48;
        *(v44 + 56) = v49;
        *(v44 + 32) = v50;
        *(v44 + 48) = v51;
        v52 = v79.columns[1];
        *(v44 + 64) = v79.columns[0];
        *(v44 + 80) = v52;
        v53 = v79.columns[3];
        ++v24;
        *(v44 + 96) = v79.columns[2];
        *(v44 + 112) = v53;
      }

      while (v24 != v7);
    }
  }

  else
  {
    v54 = [v16 contents];
    v55 = *(a1 + 48);
    v56 = *(v55 + 160);
    v57 = [*(v55 + 152) contents];
    if (v7)
    {
      v58 = (v54 + 32);
      v59 = (v56 + v57 + 32);
      do
      {
        v60 = v59[-2];
        v61 = v59[-1];
        v62 = *v59;
        v63 = v59[1];
        v59 += 4;
        v79.columns[0] = v60;
        v79.columns[1] = v61;
        v79.columns[2] = v62;
        v79.columns[3] = v63;
        v64 = invertSRTMatrix(&v79);
        v58[-2].i32[2] = v65;
        *v58[-2].i64 = v64;
        v58[-1].i32[2] = v66;
        v58[-1].i64[0] = v67;
        v58->i32[2] = v68;
        v58->i64[0] = v69;
        v70 = &v58[1].i32[2];
        v58[1].i64[0] = v71;
        v72 = v79.columns[1];
        v58[2] = v79.columns[0];
        v58[3] = v72;
        v73 = v79.columns[3];
        v58[4] = v79.columns[2];
        v58[5] = v73;
        v58 += 8;
        *v70 = v74;
        --v7;
      }

      while (v7);
    }
  }

  v75 = *(a1 + 48);
  v76 = *(v75 + 152);
  *(v75 + 152) = v16;
  v77 = v16;

  *(*(a1 + 48) + 160) = 0;
}

double invertSRTMatrix(const simd::float4x3 *a1)
{
  v1 = a1->columns[1];
  v2 = vmulq_f32(a1->columns[0], a1->columns[0]);
  v3 = vmulq_f32(v1, v1);
  v4 = a1->columns[2];
  v5 = vmulq_f32(v4, v4);
  v6 = vadd_f32(vzip1_s32(*v3.i8, *v5.i8), vzip2_s32(*v3.i8, *v5.i8));
  *v2.i32 = sqrtf(*&v2.i32[2] + vaddv_f32(*v2.i8));
  v7 = vextq_s8(v3, v3, 8uLL);
  *v7.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*v7.i8, *&vextq_s8(v5, v5, 8uLL)), v6));
  v8 = vextq_s8(vextq_s8(v2, v2, 4uLL), v7, 0xCuLL);
  v9 = vdivq_f32(v1, vdupq_lane_s32(*v7.i8, 0));
  v10 = vdivq_f32(a1->columns[0], vdupq_lane_s32(*v2.i8, 0));
  v11 = vdivq_f32(v4, vdupq_lane_s32(*v7.i8, 1));
  __asm { FMOV            V3.4S, #1.0 }

  *&result = vmulq_f32(vdivq_f32(_Q3, v8), vzip1q_s32(vzip1q_s32(v10, v11), v9)).u64[0];
  return result;
}

uint64_t AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::reserveAccelerationStructureDAG(AccelerationStructureViewerServer::MTLAccelerationStructureDataSource *a1, uint64_t **a2, uint64_t **a3, void *a4, unint64_t a5, void *a6)
{
  v12 = a4;
  v8 = a2[1];
  if (!v8)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v9 = v8;
      v10 = v8[4];
      if (v10 <= a5)
      {
        break;
      }

      v8 = *v9;
      if (!*v9)
      {
        goto LABEL_7;
      }
    }

    if (v10 >= a5)
    {
      break;
    }

    v8 = v9[1];
    if (!v8)
    {
      goto LABEL_7;
    }
  }

  return 0;
}

uint64_t *AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::allocateAccelerationStructureDAG(id *a1, uint64_t a2, uint64_t **a3, uint64_t **a4, void *a5, uint64_t a6, uint64_t a7, void *a8, unint64_t a9, void *a10, void *a11, void *a12)
{
  v111 = *MEMORY[0x277D85DE8];
  v94 = a5;
  v85 = a8;
  v90 = a10;
  v92 = a11;
  v16 = a3 + 1;
  v15 = a3[1];
  if (!v15)
  {
    goto LABEL_9;
  }

  v17 = a3 + 1;
  do
  {
    v18 = v15[4];
    v19 = v18 >= a9;
    v20 = v18 < a9;
    if (v19)
    {
      v17 = v15;
    }

    v15 = v15[v20];
  }

  while (v15);
  if (v17 != v16 && v17[4] <= a9)
  {
    v31 = v17[5];
    v46 = v85;
  }

  else
  {
LABEL_9:
    Object = GTMTLSMContext_getObject(**(**(a6 + 8) + 40), a9, *(*(*(**(a6 + 8) + 128) + 24) + (a7 << 6)));
    v89 = a1;
    if (Object)
    {
      v22 = Object[15];
      if (v22)
      {
        if (*(v22 + 96) == 1)
        {
          v23 = *v22;
          v24 = v22[1];
          v91 = objc_alloc_init(MEMORY[0x277CBEB18]);
          if (!v24)
          {
            goto LABEL_29;
          }

          v25 = 0;
          v26 = (v23 + 146);
          while (1)
          {
            v27 = *v26;
            if (!*(v26 - 42))
            {
              goto LABEL_17;
            }

            v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:?];
            if ([v28 isEqualToString:&stru_2860BD438])
            {
              break;
            }

            [v91 addObject:v28];
LABEL_26:
            v26 += 152;

            if (v24 == ++v25)
            {
              a1 = v89;
              goto LABEL_29;
            }
          }

LABEL_17:
          if (v27 == 5)
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"Curve Geometry %zu", v25];
            [v91 addObject:v28];
          }

          else if (v27 == 2)
          {
            v28 = [MEMORY[0x277CCACA8] stringWithFormat:@"BoundingBox Geometry %zu", v25];
            [v91 addObject:v28];
          }

          else
          {
            if (v27 == 1)
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"Triangle Geometry %zu", v25];
            }

            else
            {
              [MEMORY[0x277CCACA8] stringWithFormat:@"Geometry %zu", v25];
            }
            v28 = ;
            [v91 addObject:v28];
          }

          goto LABEL_26;
        }
      }
    }

    v91 = MEMORY[0x277CBEBF8];
LABEL_29:
    v83 = [v85 accelerationStructureForKey:a9];
    v81 = [v83 device];
    v82 = [v94 count];
    v29 = a1[23];
    v30 = [v83 uniqueIdentifier];
    v31 = &v29[184 * v82];
    *(v31 + 2) = 0;
    v32 = v31[3];
    v31[2] = v30;
    v31[3] = 0;

    v33 = v31[5];
    v31[4] = 0;
    v31[5] = 0;

    v34 = v31[7];
    v31[6] = 0;
    v31[7] = 0;

    v35 = v31[9];
    v31[8] = 0;
    v31[9] = 0;

    v36 = v31[11];
    v31[10] = 0;
    v31[11] = 0;

    v37 = v31[13];
    v31[12] = 0;
    v31[13] = 0;

    v31[14] = 0;
    v31[15] = 0;
    v38 = v31[19];
    v31[19] = 0;

    v39 = v31[21];
    v31[20] = 0;
    v31[21] = 0;

    v40 = *v16;
    if (!*v16)
    {
LABEL_35:
      operator new();
    }

    while (1)
    {
      while (1)
      {
        v41 = v40;
        v42 = v40[4];
        if (v42 <= a9)
        {
          break;
        }

        v40 = *v41;
        if (!*v41)
        {
          goto LABEL_35;
        }
      }

      if (v42 >= a9)
      {
        break;
      }

      v40 = v41[1];
      if (!v40)
      {
        goto LABEL_35;
      }
    }

    [v94 addObject:v83];
    [v89[38] addObject:v91];
    v84 = a3;
    memset(v108, 0, sizeof(v108));
    v109 = 1065353216;
    newpool = 0;
    apr_pool_create_ex(&newpool, 0, 0, v43);
    v44 = newpool;
    v45 = AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::getAllAccelerationStructureChildren(v89, a9, newpool);
    apr_pool_destroy(v44);
    v105 = 0u;
    v106 = 0u;
    v103 = 0u;
    v104 = 0u;
    obj = v45;
    v46 = v85;
    v47 = [obj countByEnumeratingWithState:&v103 objects:v110 count:16];
    if (v47)
    {
      v95 = *v104;
      v48 = a4 + 1;
LABEL_38:
      v49 = 0;
      while (1)
      {
        if (*v104 != v95)
        {
          objc_enumerationMutation(obj);
        }

        v50 = *(*(&v103 + 1) + 8 * v49);
        v51 = [v50 objectAtIndexedSubscript:0];
        v52 = [v50 objectAtIndexedSubscript:1];
        v53 = [v52 uniqueIdentifier];
        v54 = *v48;
        if (!*v48)
        {
          goto LABEL_85;
        }

        v55 = (a4 + 1);
        do
        {
          v56 = v54[4];
          v19 = v56 >= v53;
          v57 = v56 < v53;
          if (v19)
          {
            v55 = v54;
          }

          v54 = v54[v57];
        }

        while (v54);
        if (v55 == v48 || v53 < v55[4])
        {
LABEL_85:
          v58 = [v51 unsignedIntegerValue];
          *&v102 = v53;
          *(&v102 + 1) = v58;
          v55 = std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long,unsigned long long>>(a4, v53, &v102);
          if (v48 == v55)
          {
            break;
          }
        }

        v59 = v55[5];
        *&v102 = v59;
        v60 = [v46 accelerationStructureForKey:v59];
        v61 = v60;
        if (v60)
        {
          v62 = v60 == v52;
        }

        else
        {
          v62 = 0;
        }

        if (!v62)
        {
          *a12 = ASVErrorWithCode(8u, @"Child acceleration structure mismatch. Did you forgot to useResource?");
LABEL_75:

LABEL_78:
          v31 = 0;
          v78 = obj;
          goto LABEL_80;
        }

        if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v108, v59, &v102))
        {
          AccelerationStructureDAG = AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::allocateAccelerationStructureDAG(v89, a2, v84, a4, v94, a6, a7, v46, v59, v90, v92, a12);
          v64 = AccelerationStructureDAG;
          if (!AccelerationStructureDAG)
          {
            goto LABEL_75;
          }

          v66 = v31[17];
          v65 = v31[18];
          if (v66 >= v65)
          {
            v68 = v31[16];
            v69 = (v66 - v68) >> 3;
            if ((v69 + 1) >> 61)
            {
              std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
            }

            v70 = v65 - v68;
            v71 = v70 >> 2;
            if (v70 >> 2 <= (v69 + 1))
            {
              v71 = v69 + 1;
            }

            if (v70 >= 0x7FFFFFFFFFFFFFF8)
            {
              v72 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v72 = v71;
            }

            if (v72)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v72);
            }

            v73 = (8 * v69);
            *v73 = v64;
            v67 = 8 * v69 + 8;
            v74 = v31[16];
            v75 = v31[17] - v74;
            v76 = v73 - v75;
            memcpy(v73 - v75, v74, v75);
            v77 = v31[16];
            v31[16] = v76;
            v31[17] = v67;
            v31[18] = 0;
            if (v77)
            {
              operator delete(v77);
            }

            v46 = v85;
          }

          else
          {
            *v66 = AccelerationStructureDAG;
            v67 = (v66 + 1);
          }

          v31[17] = v67;
        }

        if (++v49 == v47)
        {
          v47 = [obj countByEnumeratingWithState:&v103 objects:v110 count:16];
          if (v47)
          {
            goto LABEL_38;
          }

          goto LABEL_73;
        }
      }

      *a12 = ASVErrorWithCode(8u, @"Unable to find child acceleration structure(s). Did you forgot to useResource or useHeap?");
      goto LABEL_78;
    }

LABEL_73:

    v78 = [objc_alloc(MEMORY[0x277CD6E28]) initWithVersion:a2];
    if ([v92 writeGenericBVHStructureSizesOfAccelerationStructure:v83 into:v78])
    {
      v97[0] = MEMORY[0x277D85DD0];
      v97[1] = 3221225472;
      v97[2] = ___ZN33AccelerationStructureViewerServer34MTLAccelerationStructureDataSource32allocateAccelerationStructureDAGE29MTLGenericBVHHeaderVersionSPIRNSt3__13mapIyPNS_21AccelerationStructureENS2_4lessIyEENS2_9allocatorINS2_4pairIKyS5_EEEEEERNS3_IyyS7_NS8_INS9_ISA_yEEEEEEP14NSMutableArrayIPU35objcproto24MTLAccelerationStructure11objc_objectEP17GTMTLReplayClientyP20GTMTLReplayObjectMapyPU27objcproto16MTLCommandBuffer11objc_objectPU52objcproto41MTLAccelerationStructureCommandEncoderSPI11objc_objectPU15__autoreleasingP7NSError_block_invoke;
      v97[3] = &unk_279657288;
      v100 = v89;
      v101 = v82;
      v98 = v81;
      v79 = v78;
      v99 = v79;
      [v90 addCompletedHandler:v97];

      v78 = v79;
    }

    else
    {
      ASVErrorWithCode(2u, @"Your version of Metal does not support this tool");
      *a12 = v31 = 0;
    }

LABEL_80:

    std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v108);
  }

  return v31;
}

void sub_24D86C32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, void *a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, void *a25, void *a26, void *a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, void *a35, void *a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, ...)
{
  va_start(va, a50);

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(float *a1, unint64_t a2, void *a3)
{
  v3 = *(a1 + 2);
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (*&v3 <= a2)
    {
      v5 = a2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != a2)
  {
    goto LABEL_17;
  }

  return 0;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

void ___ZN33AccelerationStructureViewerServer34MTLAccelerationStructureDataSource32allocateAccelerationStructureDAGE29MTLGenericBVHHeaderVersionSPIRNSt3__13mapIyPNS_21AccelerationStructureENS2_4lessIyEENS2_9allocatorINS2_4pairIKyS5_EEEEEERNS3_IyyS7_NS8_INS9_ISA_yEEEEEEP14NSMutableArrayIPU35objcproto24MTLAccelerationStructure11objc_objectEP17GTMTLReplayClientyP20GTMTLReplayObjectMapyPU27objcproto16MTLCommandBuffer11objc_objectPU52objcproto41MTLAccelerationStructureCommandEncoderSPI11objc_objectPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 48);
  NSLog(&cfstr_RunningAllocat.isa, *(a1 + 56));
  v3 = (*(v2 + 184) + 184 * *(a1 + 56));
  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) headerBufferSize];
  if (v5 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  v7 = [v4 newBufferWithLength:v6 options:0];
  v8 = v3[3];
  v3[3] = v7;

  v9 = *(a1 + 32);
  v10 = [*(a1 + 40) innerNodeBufferSize];
  if (v10 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v10;
  }

  v12 = [v9 newBufferWithLength:v11 options:0];
  v13 = v3[5];
  v3[5] = v12;

  v14 = *(a1 + 32);
  v15 = [*(a1 + 40) leafNodeBufferSize];
  if (v15 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = v15;
  }

  v17 = [v14 newBufferWithLength:v16 options:0];
  v18 = v3[7];
  v3[7] = v17;

  v19 = *(a1 + 32);
  v20 = [*(a1 + 40) primitiveBufferSize];
  if (v20 <= 1)
  {
    v21 = 1;
  }

  else
  {
    v21 = v20;
  }

  v22 = [v19 newBufferWithLength:v21 options:0];
  v23 = v3[9];
  v3[9] = v22;

  v24 = *(a1 + 32);
  v25 = [*(a1 + 40) geometryBufferSize];
  if (v25 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v25;
  }

  v27 = [v24 newBufferWithLength:v26 options:0];
  v28 = v3[11];
  v3[11] = v27;

  v29 = *(a1 + 32);
  v30 = [*(a1 + 40) perPrimitiveDataBufferSize];
  if (v30 <= 1)
  {
    v31 = 1;
  }

  else
  {
    v31 = v30;
  }

  v32 = [v29 newBufferWithLength:v31 options:0];
  v33 = v3[13];
  v3[13] = v32;

  v3[15] = [*(a1 + 40) perPrimitiveDataBufferSize];
  v34 = *(a1 + 32);
  v35 = [*(a1 + 40) instanceTransformBufferSize];
  if ((2 * v35) <= 1)
  {
    v36 = 1;
  }

  else
  {
    v36 = 2 * v35;
  }

  v37 = [v34 newBufferWithLength:v36 options:0];
  v38 = v3[19];
  v3[19] = v37;
}

uint64_t std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

uint64_t AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::MTLAccelerationStructureDataSource()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  __dst[1396] = *MEMORY[0x277D85DE8];
  v11 = v10;
  *(v9 + 16) = 0;
  *(v9 + 8) = v9 + 16;
  *(v9 + 48) = 0;
  *(v9 + 40) = 0;
  *(v9 + 24) = 0;
  *(v9 + 32) = v9 + 40;
  *(v9 + 56) = 0u;
  *(v9 + 72) = 0u;
  *(v9 + 88) = 1065353216;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 1065353216;
  *(v9 + 136) = 0u;
  *(v9 + 152) = 0u;
  *(v9 + 168) = 1065353216;
  *(v9 + 184) = 0;
  *(v9 + 192) = 0;
  *(v9 + 200) = 0;
  *v9 = &unk_2860BB590;
  *(v9 + 216) = 0u;
  v12 = (v9 + 216);
  *(v9 + 248) = 0u;
  *(v9 + 232) = 0u;
  *(v9 + 264) = v9 + 272;
  *(v9 + 272) = 0;
  *(v9 + 336) = 0;
  *(v9 + 304) = 0u;
  *(v9 + 320) = 0u;
  *(v9 + 344) = 1065353216;
  v242 = v8;
  v244 = (v9 + 352);
  *(v9 + 352) = 0u;
  *(v9 + 368) = 0u;
  *(v9 + 208) = v8;
  *(v9 + 280) = 0;
  *(v9 + 288) = v6;
  v238 = v4;
  v240 = v6;
  *(v9 + 296) = v4;
  v13 = *(*(v8 + 8) + 8);
  v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v15 = [v13 defaultDevice];
  v16 = [v15 newDefaultLibraryWithBundle:v14 error:v2];

  v17 = [v16 newFunctionWithName:@"ASVAccelerationStructureInstanceCount"];
  if (!v17 || ([v13 defaultDevice], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "newComputePipelineStateWithFunction:error:", v17, v2), v20 = *v12, *v12 = v19, v20, v18, *v12))
  {

    v17 = [v16 newFunctionWithName:@"ASVMarkAccelerationStructureChildren"];
    if (!v17 || ([v13 defaultDevice], v21 = objc_claimAutoreleasedReturnValue(), v22 = objc_msgSend(v21, "newComputePipelineStateWithFunction:error:", v17, v2), v23 = *(v9 + 224), *(v9 + 224) = v22, v23, v21, *(v9 + 224)))
    {

      v17 = [v16 newFunctionWithName:@"ASVFillIndirectArgs"];
      if (!v17 || ([v13 defaultDevice], v24 = objc_claimAutoreleasedReturnValue(), v25 = objc_msgSend(v24, "newComputePipelineStateWithFunction:error:", v17, v2), v26 = *(v9 + 232), *(v9 + 232) = v25, v26, v24, *(v9 + 232)))
      {
        v237 = v11;

        v248[0] = 0;
        v248[1] = 0;
        v247 = v248;
        newpool = 0;
        apr_pool_create_ex(&newpool, 0, 0, v27);
        v28 = *(v242 + 8);
        v29 = *v28;
        v30 = *(v28 + 8);
        v31 = v30;
        v32 = *(*(v29 + 16) + 24);
        if (!v32)
        {

          goto LABEL_15;
        }

        v33 = v32 + (v6 << 6);
        v34 = *v33;
        InclusiveRange = GroupBuilder_findInclusiveRange(*(*(v29 + 15) + 12), *(*(v29 + 15) + 24), v240);
        v36 = GroupRange_encoderWithIndirectResources(InclusiveRange);
        memcpy(__dst, (v28 + 192), 0x2BA0uLL);
        v37 = *(v28 + 11360) - 95;
        if (v37 <= 0xA && ((0x409u >> v37) & 1) != 0)
        {
          goto LABEL_10;
        }

        if (!v36)
        {
          v39 = newpool;
          v40 = apr_array_make(newpool, 16, 8);
          GTMTLSMContext_getObjects(*(*(v29 + 5) + 80), v34, v40);
          if (v40->nelts >= 1)
          {
            v41 = 0;
            do
            {
              AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, *&v40->elts[8 * v41++], -1, v39, &v247);
            }

            while (v41 < v40->nelts);
          }

          v40->nelts = 0;
          GTMTLSMContext_getObjects(*(*(v29 + 5) + 72), v34, v40);
          if (v40->nelts > 0)
          {
            v42 = 0;
            do
            {
              AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, *&v40->elts[8 * v42++], -1, v39, &v247);
            }

            while (v42 < v40->nelts);
          }

LABEL_125:
          v232 = v2;

          apr_pool_destroy(newpool);
          v111 = *(*(v9 + 208) + 8);
          v112 = *v111;
          v113 = *(*v111 + 2);
          v114 = v111[1];
          v116 = GroupBuilder_findInclusiveRange(*(*(v112 + 15) + 12), *(*(v112 + 15) + 24), *(v9 + 288));
          if (v116)
          {
            while (1)
            {
              ConstructorType = GTFenum_getConstructorType(v116[5]);
              if (GTFenum_isMTLCommandEncoder(ConstructorType))
              {
                break;
              }

              v118 = v116[2];
              if (v118)
              {
                v116 -= 6 * v118;
              }

              else
              {
                v116 = 0;
              }

              if (!v116)
              {
                goto LABEL_131;
              }
            }
          }

          else
          {
LABEL_131:
            newpool = 0;
            apr_pool_create_ex(&newpool, 0, 0, v115);
            __dst[0] = *(v112 + 1);
            __dst[1] = v113;
            v119 = v113;
            pb = newpool;
            __dst[2] = newpool;
            __dst[3] = 0;
            v120 = GTResourceTrackerMakeWithDescriptor(__dst);
            v121 = *(v112 + 15);
            if (*(v121 + 12) >= 1)
            {
              v122 = 0;
              do
              {
                v123 = (*(v121 + 24) + 24 * v122);
                v124 = GTFenum_getConstructorType(v123[5]);
                if (v124 == 70 || v124 == 28)
                {
                  v126 = *v123;
                  if (v126 < v123[1])
                  {
                    v127 = v126 << 6;
                    do
                    {
                      GTResourceTrackerProcessFunction();
                      ++v126;
                      v127 += 64;
                    }

                    while (v126 < v123[1]);
                    v121 = *(v112 + 15);
                  }
                }

                ++v122;
              }

              while (v122 < *(v121 + 12));
            }

            Object = GTMTLSMContext_getObject(**(v112 + 5), *(v9 + 296), *(v9 + 288) + *(v112 + 11));
            if (!Object)
            {
              goto LABEL_225;
            }

            v129 = Object;
            v113 = v119;
            entry = find_entry(v120[5], (v9 + 296), 8uLL, 0);
            if (*entry && (v131 = *(*entry + 32)) != 0)
            {
              v132 = v131[3];
              if (v132 <= 0)
              {
                v132 = v131[4];
                if (v132 <= 0)
                {
                  v132 = v131[2];
                  if (!v132)
                  {
                    goto LABEL_225;
                  }
                }
              }
            }

            else
            {
              v134 = v129[6];
              v133 = v129 + 6;
              if (!v134)
              {
                goto LABEL_225;
              }

              v135 = find_entry(v120[4], v133, 8uLL, 0);
              if (!*v135)
              {
                goto LABEL_225;
              }

              v136 = *(*v135 + 32);
              if (!v136)
              {
                goto LABEL_225;
              }

              v132 = *(v136 + 8);
            }

            v137 = GroupBuilder_findInclusiveRange(*(*(v112 + 15) + 12), *(*(v112 + 15) + 24), v132 - *(v112 + 11));
            v138 = GroupRange_encoderWithIndirectResources(v137);
            if (!v138)
            {
              goto LABEL_225;
            }

            v116 = v138;
            apr_pool_destroy(pb);
            ConstructorType = GTFenum_getConstructorType(v116[5]);
          }

          if (ConstructorType == 70 || ConstructorType == 28)
          {
            v140 = *v116;
            if (v140 < v116[1])
            {
              do
              {
                v141 = *(*(v112 + 16) + 24) + (v140 << 6);
                v142 = *(v141 + 8);
                if (v142 > -16042)
                {
                  if (v142 > -15821)
                  {
                    if (v142 == -15820)
                    {
                      v166 = GTTraceFunc_argumentBytesWithMap((*(*(v112 + 16) + 24) + (v140 << 6)), *(v141 + 13), v113);
                      v167 = GTTraceFunc_argumentBytesWithMap(v141, v166[24], v113);
                      if (*(v166 + 1))
                      {
                        v168 = v167;
                        v169 = 0;
                        do
                        {
                          v170 = [v114 heapForKey:*&v168[8 * v169]];
                          __dst[0] = v170;
                          if (v170)
                          {
                            std::vector<objc_object  {objcproto11MTLResource}* {__strong}>::push_back[abi:nn200100](v244, __dst);
                          }

                          ++v169;
                        }

                        while (*(v166 + 1) > v169);
                      }

                      goto LABEL_224;
                    }

                    if (v142 != -15819)
                    {
                      if (v142 == -15818)
                      {
                        v151 = GTTraceFunc_argumentBytesWithMap((*(*(v112 + 16) + 24) + (v140 << 6)), *(v141 + 13), v113);
                        v152 = GTTraceFunc_argumentBytesWithMap(v141, v151[32], v113);
                        v153 = *(v151 + 1);
                        v249 = *(v151 + 2);
                        if (v153)
                        {
                          v154 = v152;
                          v155 = 0;
                          do
                          {
                            v156 = [v114 resourceForKey:*&v154[8 * v155]];
                            newpool = v156;
                            if (v156)
                            {
                              __dst[0] = &v249;
                              v157 = std::__hash_table<std::__hash_value_type<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>,std::__unordered_map_hasher<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>,std::hash<GTMTLResourceUsage_uint8_t>,std::equal_to<GTMTLResourceUsage_uint8_t>,true>,std::__unordered_map_equal<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>,std::equal_to,std::hash,true>,objc_object  {objcproto11MTLResource}* {__strong}<std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>>::__emplace_unique_key_args<GTMTLResourceUsage_uint8_t,std::piecewise_construct_t const&,std::tuple<GTMTLResourceUsage_uint8_t const&>,std::piecewise_construct_t const&<>>((v9 + 312), v249, __dst);
                              std::vector<objc_object  {objcproto11MTLResource}* {__strong}>::push_back[abi:nn200100](v157 + 3, &newpool);
                            }

                            ++v155;
                          }

                          while (*(v151 + 1) > v155);
                        }
                      }

                      goto LABEL_224;
                    }

                    v184 = GTTraceFunc_argumentBytesWithMap((*(*(v112 + 16) + 24) + (v140 << 6)), *(v141 + 13), v113);
                    v159 = [v114 resourceForKey:*(v184 + 1)];
                    newpool = v159;
                    v160 = v184[16];
                    v249 = v160;
                    if (v159)
                    {
                      goto LABEL_223;
                    }
                  }

                  else
                  {
                    switch(v142)
                    {
                      case -16041:
                        v143 = [v114 heapForKey:{*(GTTraceFunc_argumentBytesWithMap((*(*(v112 + 16) + 24) + (v140 << 6)), *(v141 + 13), v113) + 1)}];
                        __dst[0] = v143;
                        if (v143)
                        {
                          goto LABEL_195;
                        }

                        break;
                      case -16040:
                        v178 = GTTraceFunc_argumentBytesWithMap((*(*(v112 + 16) + 24) + (v140 << 6)), *(v141 + 13), v113);
                        v179 = GTTraceFunc_argumentBytesWithMap(v141, v178[16], v113);
                        if (*(v178 + 1))
                        {
                          v180 = v179;
                          v181 = 0;
                          do
                          {
                            v182 = [v114 heapForKey:*&v180[8 * v181]];
                            __dst[0] = v182;
                            if (v182)
                            {
                              std::vector<objc_object  {objcproto11MTLResource}* {__strong}>::push_back[abi:nn200100](v244, __dst);
                            }

                            ++v181;
                          }

                          while (*(v178 + 1) > v181);
                        }

                        break;
                      case -15821:
                        v143 = [v114 heapForKey:{*(GTTraceFunc_argumentBytesWithMap((*(*(v112 + 16) + 24) + (v140 << 6)), *(v141 + 13), v113) + 1)}];
                        __dst[0] = v143;
                        if (v143)
                        {
                          goto LABEL_195;
                        }

                        break;
                    }
                  }
                }

                else if (v142 > -16045)
                {
                  if (v142 == -16044)
                  {
                    v161 = GTTraceFunc_argumentBytesWithMap((*(*(v112 + 16) + 24) + (v140 << 6)), *(v141 + 13), v113);
                    v162 = GTTraceFunc_argumentBytesWithMap(v141, v161[16], v113);
                    if (*(v161 + 1))
                    {
                      v163 = v162;
                      v164 = 0;
                      do
                      {
                        v165 = [v114 heapForKey:*&v163[8 * v164]];
                        __dst[0] = v165;
                        if (v165)
                        {
                          std::vector<objc_object  {objcproto11MTLResource}* {__strong}>::push_back[abi:nn200100](v244, __dst);
                        }

                        ++v164;
                      }

                      while (*(v161 + 1) > v164);
                    }

                    goto LABEL_224;
                  }

                  if (v142 != -16043)
                  {
                    v144 = GTTraceFunc_argumentBytesWithMap((*(*(v112 + 16) + 24) + (v140 << 6)), *(v141 + 13), v113);
                    v145 = GTTraceFunc_argumentBytesWithMap(v141, v144[24], v113);
                    v146 = *(v144 + 1);
                    v249 = *(v144 + 2);
                    if (v146)
                    {
                      v147 = v145;
                      v148 = 0;
                      do
                      {
                        v149 = [v114 resourceForKey:*&v147[8 * v148]];
                        newpool = v149;
                        if (v149)
                        {
                          __dst[0] = &v249;
                          v150 = std::__hash_table<std::__hash_value_type<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>,std::__unordered_map_hasher<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>,std::hash<GTMTLResourceUsage_uint8_t>,std::equal_to<GTMTLResourceUsage_uint8_t>,true>,std::__unordered_map_equal<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>,std::equal_to,std::hash,true>,objc_object  {objcproto11MTLResource}* {__strong}<std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>>::__emplace_unique_key_args<GTMTLResourceUsage_uint8_t,std::piecewise_construct_t const&,std::tuple<GTMTLResourceUsage_uint8_t const&>,std::piecewise_construct_t const&<>>((v9 + 312), v249, __dst);
                          std::vector<objc_object  {objcproto11MTLResource}* {__strong}>::push_back[abi:nn200100](v150 + 3, &newpool);
                        }

                        ++v148;
                      }

                      while (*(v144 + 1) > v148);
                    }

                    goto LABEL_224;
                  }

                  v183 = GTTraceFunc_argumentBytesWithMap((*(*(v112 + 16) + 24) + (v140 << 6)), *(v141 + 13), v113);
                  v159 = [v114 resourceForKey:*(v183 + 1)];
                  newpool = v159;
                  v160 = v183[16];
                  v249 = v160;
                  if (v159)
                  {
LABEL_223:
                    __dst[0] = &v249;
                    v185 = std::__hash_table<std::__hash_value_type<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>,std::__unordered_map_hasher<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>,std::hash<GTMTLResourceUsage_uint8_t>,std::equal_to<GTMTLResourceUsage_uint8_t>,true>,std::__unordered_map_equal<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>,std::equal_to,std::hash,true>,objc_object  {objcproto11MTLResource}* {__strong}<std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>>::__emplace_unique_key_args<GTMTLResourceUsage_uint8_t,std::piecewise_construct_t const&,std::tuple<GTMTLResourceUsage_uint8_t const&>,std::piecewise_construct_t const&<>>((v9 + 312), v160, __dst);
                    std::vector<objc_object  {objcproto11MTLResource}* {__strong}>::push_back[abi:nn200100](v185 + 3, &newpool);
                  }
                }

                else
                {
                  switch(v142)
                  {
                    case -16047:
                      v158 = GTTraceFunc_argumentBytesWithMap((*(*(v112 + 16) + 24) + (v140 << 6)), *(v141 + 13), v113);
                      v159 = [v114 resourceForKey:*(v158 + 1)];
                      newpool = v159;
                      v160 = v158[16];
                      v249 = v160;
                      if (v159)
                      {
                        goto LABEL_223;
                      }

                      break;
                    case -16046:
                      v171 = GTTraceFunc_argumentBytesWithMap((*(*(v112 + 16) + 24) + (v140 << 6)), *(v141 + 13), v113);
                      v172 = GTTraceFunc_argumentBytesWithMap(v141, v171[24], v113);
                      v173 = *(v171 + 1);
                      v249 = *(v171 + 2);
                      if (v173)
                      {
                        v174 = v172;
                        v175 = 0;
                        do
                        {
                          v176 = [v114 resourceForKey:*&v174[8 * v175]];
                          newpool = v176;
                          if (v176)
                          {
                            __dst[0] = &v249;
                            v177 = std::__hash_table<std::__hash_value_type<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>,std::__unordered_map_hasher<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>,std::hash<GTMTLResourceUsage_uint8_t>,std::equal_to<GTMTLResourceUsage_uint8_t>,true>,std::__unordered_map_equal<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>,std::equal_to,std::hash,true>,objc_object  {objcproto11MTLResource}* {__strong}<std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>>::__emplace_unique_key_args<GTMTLResourceUsage_uint8_t,std::piecewise_construct_t const&,std::tuple<GTMTLResourceUsage_uint8_t const&>,std::piecewise_construct_t const&<>>((v9 + 312), v249, __dst);
                            std::vector<objc_object  {objcproto11MTLResource}* {__strong}>::push_back[abi:nn200100](v177 + 3, &newpool);
                          }

                          ++v175;
                        }

                        while (*(v171 + 1) > v175);
                      }

                      break;
                    case -16045:
                      v143 = [v114 heapForKey:{*(GTTraceFunc_argumentBytesWithMap((*(*(v112 + 16) + 24) + (v140 << 6)), *(v141 + 13), v113) + 1)}];
                      __dst[0] = v143;
                      if (v143)
                      {
LABEL_195:
                        std::vector<objc_object  {objcproto11MTLResource}* {__strong}>::push_back[abi:nn200100](v244, __dst);
                      }

                      break;
                  }
                }

LABEL_224:
                ++v140;
              }

              while (v140 < v116[1]);
            }
          }

LABEL_225:

          pc = *(*(v242 + 8) + 8);
          v230 = [(apr_pool_t *)pc defaultCommandQueue];
          v186 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v187 = *(v9 + 304);
          *(v9 + 304) = v186;

          v188 = [(apr_pool_t *)pc defaultDevice];
          v228 = [v188 latestSupportedGenericBVHVersion];

          v246[0] = 0;
          v246[1] = 0;
          newpool = v246;
          v189 = AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::reserveAccelerationStructureDAG(v9, &newpool, &v247, pc, v238, v232);
          if (v189 == -1)
          {
LABEL_273:
            std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v246[0]);

            goto LABEL_274;
          }

          v190 = *(v9 + 184);
          v191 = *(v9 + 192);
          v192 = 0xD37A6F4DE9BD37A7 * ((v191 - v190) >> 3);
          v193 = v189 - v192;
          if (v189 <= v192)
          {
            if (v189 < v192)
            {
              v198 = (v190 + 184 * v189);
              while (v191 != v198)
              {
                v191 -= 23;
                AccelerationStructureViewerServer::AccelerationStructure::~AccelerationStructure(v191);
              }

              *(v9 + 192) = v198;
            }
          }

          else
          {
            v194 = *(v9 + 200);
            if (0xD37A6F4DE9BD37A7 * ((v194 - v191) >> 3) < v193)
            {
              if (v189 <= 0x1642C8590B21642)
              {
                v195 = 0xD37A6F4DE9BD37A7 * ((v194 - v190) >> 3);
                v196 = 2 * v195;
                if (2 * v195 <= v189)
                {
                  v196 = v189;
                }

                if (v195 >= 0xB21642C8590B21)
                {
                  v197 = 0x1642C8590B21642;
                }

                else
                {
                  v197 = v196;
                }

                std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure>>(v197);
              }

              std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
            }

            v199 = 184 * ((184 * v193 - 184) / 0xB8) + 184;
            bzero(*(v9 + 192), v199);
            *(v9 + 192) = v191 + v199;
          }

          NSLog(&cfstr_BeginAllocate.isa);
          v226 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v200 = [v230 commandBufferWithDescriptor:v237];
          [v200 setLabel:@"ASV allocateAccelerationStructureDAG"];
          v201 = [v200 accelerationStructureCommandEncoder];
          if (objc_opt_respondsToSelector())
          {
            v202 = [(apr_pool_t *)pc accelerationStructureForKey:v238];
            __dst[1] = 0;
            __dst[2] = 0;
            __dst[0] = &__dst[1];
            v203 = AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::allocateAccelerationStructureDAG(v9, v228, __dst, &v247, v226, v242, v240, pc, v238, v200, v201, v232);
            [v201 endEncoding];
            [v200 commit];
            [v200 waitUntilCompleted];
            if (!v203 || *(v9 + 192) == *(v9 + 184))
            {
              std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(__dst[1]);
            }

            else
            {
              *(v9 + 176) = 0;
              std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(__dst[1]);

              NSLog(&cfstr_FinishAllocate.isa);
              NSLog(&cfstr_BeginEncode.isa);
              v204 = v226;
              v239 = v230;
              v241 = v237;
              v225 = [v239 device];
              if (*(v9 + 192) != *(v9 + 184))
              {
                v205 = 0;
                while (1)
                {
                  v243 = [v204 objectAtIndex:v205];
                  v206 = *(v9 + 184);
                  v207 = [objc_alloc(MEMORY[0x277CD6E38]) initWithVersion:v228];
                  v208 = (v206 + 184 * v205);
                  [v207 setHeaderBuffer:v208[3]];
                  [v207 setHeaderBufferOffset:v208[4]];
                  [v207 setInnerNodeBuffer:v208[5]];
                  [v207 setInnerNodeBufferOffset:v208[6]];
                  [v207 setLeafNodeBuffer:v208[7]];
                  [v207 setLeafNodeBufferOffset:v208[8]];
                  [v207 setPrimitiveBuffer:v208[9]];
                  [v207 setPrimitiveBufferOffset:v208[10]];
                  [v207 setGeometryBuffer:v208[11]];
                  [v207 setGeometryBufferOffset:v208[12]];
                  [v207 setPerPrimitiveDataBuffer:v208[13]];
                  [v207 setPerPrimitiveDataBufferOffset:v208[14]];
                  [v207 setInstanceTransformBuffer:v208[19]];
                  [v207 setInstanceTransformBufferOffset:v208[20]];
                  v209 = [v239 commandBufferWithDescriptor:v241];
                  [v209 setLabel:@"ASV encodeAccelerationStructureDAG"];
                  v210 = [v209 accelerationStructureCommandEncoder];
                  if (*(v9 + 192) != *(v9 + 184))
                  {
                    v211 = 0;
                    do
                    {
                      v212 = [v204 objectAtIndex:v211];
                      [v210 useResource:v212 usage:1];

                      ++v211;
                    }

                    while (v211 < 0xD37A6F4DE9BD37A7 * ((*(v9 + 192) - *(v9 + 184)) >> 3));
                  }

                  v213 = [v210 writeGenericBVHStructureOfAccelerationStructure:v243 into:v207];
                  [v210 endEncoding];
                  [v207 setHeaderBuffer:0];
                  [v207 setInnerNodeBuffer:0];
                  [v207 setLeafNodeBuffer:0];
                  [v207 setPrimitiveBuffer:0];
                  [v207 setGeometryBuffer:0];
                  [v207 setPerPrimitiveDataBuffer:0];
                  [v207 setInstanceTransformBuffer:0];
                  if ((v213 & 1) == 0)
                  {
                    *v232 = ASVErrorWithCode(2u, @"Your version of Metal does not support this tool");
                    goto LABEL_268;
                  }

                  __dst[0] = MEMORY[0x277D85DD0];
                  __dst[1] = 3221225472;
                  __dst[2] = ___ZN33AccelerationStructureViewerServer34MTLAccelerationStructureDataSource30encodeAccelerationStructureDAGE29MTLGenericBVHHeaderVersionSPIP14NSMutableArrayIPU35objcproto24MTLAccelerationStructure11objc_objectEPU26objcproto15MTLCommandQueue11objc_objectP26MTLCommandBufferDescriptorPU15__autoreleasingP7NSError_block_invoke;
                  __dst[3] = &unk_279657260;
                  __dst[5] = v205;
                  __dst[6] = v208;
                  __dst[4] = v225;
                  [v209 addCompletedHandler:__dst];
                  [v209 commit];
                  [v209 waitUntilCompleted];
                  if ([v209 status] == 5)
                  {
                    break;
                  }

                  if (++v205 >= 0xD37A6F4DE9BD37A7 * ((*(v9 + 192) - *(v9 + 184)) >> 3))
                  {
                    goto LABEL_252;
                  }
                }

                *v232 = [v209 error];

LABEL_268:
                goto LABEL_272;
              }

LABEL_252:

              NSLog(&cfstr_FinishEncode.isa);
              v214 = *(v9 + 176);
              v215 = *(v9 + 184);
              v216 = v215 + 184 * v214;
              v217 = *(v216 + 8);
              if ((v217 - 3) < 2)
              {
                goto LABEL_253;
              }

              if (v217 == 2)
              {
                v218 = *(v9 + 192) - v215;
                if (v218)
                {
                  v219 = 0;
                  v220 = 0xD37A6F4DE9BD37A7 * (v218 >> 3);
                  if (v220 <= 1)
                  {
                    v220 = 1;
                  }

                  while (1)
                  {
                    if (v219 == v214)
                    {
                      if (v214 + 1 == v220)
                      {
                        break;
                      }

                      v221 = 0;
                      v219 = v214 + 1;
                    }

                    else
                    {
                      v222 = *(v215 + 184 * v219 + 8) - 3;
                      v221 = v222 < 2;
                      if (++v219 == v220)
                      {
                        if (v222 > 1)
                        {
                          break;
                        }

LABEL_253:
                        *(v216 + 176) = 1;
                        break;
                      }
                    }

                    if (v221)
                    {
                      goto LABEL_253;
                    }
                  }
                }
              }

              v223 = v204;
              v200 = *(v9 + 376);
              *(v9 + 376) = v223;
            }
          }

          else
          {
            *v232 = ASVErrorWithCode(2u, @"Your version of Metal does not support this tool");
            [v201 endEncoding];
            [v200 commit];
          }

LABEL_272:
          goto LABEL_273;
        }

        v38 = GTFenum_getConstructorType(*(v36 + 20));
        if (v38 > 69)
        {
          if (v38 != 70)
          {
            if (v38 == 95 || v38 == 98)
            {
LABEL_10:
              if (v2)
              {
                *v2 = ASVErrorWithCode(4u, @"Acceleration Structure viewer is not supported for Metal 4");
              }
            }

LABEL_12:

LABEL_15:
            apr_pool_destroy(newpool);
LABEL_274:
            std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(v248[0]);
            v11 = v237;
            goto LABEL_275;
          }

          v51 = *(v33 + 8);
          if (GTFenum_isDrawCall(v51))
          {
            v52 = GTFenum_isMeshCall(v51);
            v53 = newpool;
            if (!v52)
            {
              v54 = 0;
              v55 = __dst[8];
              do
              {
                if (((v55 >> v54) & 1) == 0)
                {
                  v56 = GTMTLSMContext_getObject(**(v29 + 5), __dst[v54 + 10], v34);
                  AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, v56, v54, v53, &v247);
                }

                ++v54;
              }

              while (v54 != 31);
            }

            v57 = 0;
            v58 = __dst[247];
            do
            {
              if (((v58 >> v57) & 1) == 0)
              {
                v59 = GTMTLSMContext_getObject(**(v29 + 5), __dst[v57 + 248], v34);
                AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, v59, v57, v53, &v247);
              }

              ++v57;
            }

            while (v57 != 31);
            goto LABEL_82;
          }

          if (v51 > -15298)
          {
            if (v51 == -15059)
            {
              goto LABEL_78;
            }

            v60 = -15297;
          }

          else
          {
            if (v51 == -16137)
            {
              goto LABEL_78;
            }

            v60 = -15486;
          }

          if (v51 != v60)
          {
LABEL_82:
            v80 = *v28;
            pa = *(*v28 + 16);
            v81 = *(v28 + 8);
            v82 = GroupBuilder_findInclusiveRange(*(*(v80 + 15) + 12), *(*(v80 + 15) + 24), *(v9 + 288));
            v231 = v2;
            if (v82)
            {
              while (1)
              {
                v83 = GTFenum_getConstructorType(v82[5]);
                if (GTFenum_isMTLCommandEncoder(v83))
                {
                  break;
                }

                v84 = v82[2];
                if (v84)
                {
                  v82 -= 6 * v84;
                }

                else
                {
                  v82 = 0;
                }

                if (!v82)
                {
                  goto LABEL_124;
                }
              }

              if (v83 == 70)
              {
                v85 = *v82;
                if (v85 < v82[1])
                {
                  v227 = v31;
                  v229 = v81;
                  v86 = newpool;
                  while (1)
                  {
                    v87 = *(*(v80 + 16) + 24) + (v85 << 6);
                    v88 = *(v87 + 8);
                    if (v88 <= -15822)
                    {
                      break;
                    }

                    if (v88 <= -15820)
                    {
                      if (v88 != -15821)
                      {
                        v94 = GTTraceFunc_argumentBytesWithMap((*(*(v80 + 16) + 24) + (v85 << 6)), *(v87 + 13), pa);
                        v95 = GTTraceFunc_argumentBytesWithMap(v87, v94[24], pa);
                        if (*(v94 + 1))
                        {
                          v96 = v95;
                          v97 = 0;
                          do
                          {
                            v98 = GTMTLSMContext_getObject(**(v80 + 5), *&v96[8 * v97], v34);
                            AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, v98, -1, v86, &v247);
                            ++v97;
                          }

                          while (*(v94 + 1) > v97);
                        }

                        goto LABEL_121;
                      }

LABEL_114:
                      v104 = GTTraceFunc_argumentBytesWithMap((*(*(v80 + 16) + 24) + (v85 << 6)), *(v87 + 13), pa);
                      v105 = GTMTLSMContext_getObject(**(v80 + 5), *(v104 + 1), v34);
                      AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, v105, -1, v86, &v247);
                      goto LABEL_121;
                    }

                    if (v88 == -15818)
                    {
                      v106 = GTTraceFunc_argumentBytesWithMap((*(*(v80 + 16) + 24) + (v85 << 6)), *(v87 + 13), pa);
                      v107 = GTTraceFunc_argumentBytesWithMap(v87, v106[32], pa);
                      if (*(v106 + 1))
                      {
                        v108 = v107;
                        v109 = 0;
                        do
                        {
                          v110 = GTMTLSMContext_getObject(**(v80 + 5), *&v108[8 * v109], v34);
                          AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, v110, -1, v86, &v247);
                          ++v109;
                        }

                        while (*(v106 + 1) > v109);
                      }

                      goto LABEL_121;
                    }

                    if (v88 == -15819)
                    {
                      goto LABEL_114;
                    }

LABEL_121:
                    if (++v85 >= v82[1])
                    {
                      goto LABEL_122;
                    }
                  }

                  if (v88 > -16042)
                  {
                    if (v88 != -16041)
                    {
                      if (v88 == -16040)
                      {
                        v99 = GTTraceFunc_argumentBytesWithMap((*(*(v80 + 16) + 24) + (v85 << 6)), *(v87 + 13), pa);
                        v100 = GTTraceFunc_argumentBytesWithMap(v87, v99[16], pa);
                        if (*(v99 + 1))
                        {
                          v101 = v100;
                          v102 = 0;
                          do
                          {
                            v103 = GTMTLSMContext_getObject(**(v80 + 5), *&v101[8 * v102], v34);
                            AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, v103, -1, v86, &v247);
                            ++v102;
                          }

                          while (*(v99 + 1) > v102);
                        }
                      }

                      goto LABEL_121;
                    }
                  }

                  else if (v88 != -16043)
                  {
                    if (v88 == -16042)
                    {
                      v89 = GTTraceFunc_argumentBytesWithMap((*(*(v80 + 16) + 24) + (v85 << 6)), *(v87 + 13), pa);
                      v90 = GTTraceFunc_argumentBytesWithMap(v87, v89[24], pa);
                      if (*(v89 + 1))
                      {
                        v91 = v90;
                        v92 = 0;
                        do
                        {
                          v93 = GTMTLSMContext_getObject(**(v80 + 5), *&v91[8 * v92], v34);
                          AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, v93, -1, v86, &v247);
                          ++v92;
                        }

                        while (*(v89 + 1) > v92);
                      }
                    }

                    goto LABEL_121;
                  }

                  goto LABEL_114;
                }
              }
            }

            goto LABEL_124;
          }

LABEL_78:
          v76 = 0;
          v77 = __dst[868];
          v78 = newpool;
          do
          {
            if (((v77 >> v76) & 1) == 0)
            {
              v79 = GTMTLSMContext_getObject(**(v29 + 5), __dst[v76 + 869], v34);
              AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, v79, v76, v78, &v247);
            }

            ++v76;
          }

          while (v76 != 31);
          goto LABEL_82;
        }

        if (v38 == 17)
        {
          goto LABEL_125;
        }

        if (v38 != 28)
        {
          goto LABEL_12;
        }

        v43 = 0;
        v44 = __dst[9];
        v45 = newpool;
        do
        {
          if (((v44 >> v43) & 1) == 0)
          {
            v46 = GTMTLSMContext_getObject(**(v29 + 5), __dst[v43 + 11], v34);
            AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, v46, v43, v45, &v247);
          }

          ++v43;
        }

        while (v43 != 31);
        v47 = *v28;
        p = *(*v28 + 16);
        v229 = *(v28 + 8);
        v48 = GroupBuilder_findInclusiveRange(*(*(v47 + 15) + 12), *(*(v47 + 15) + 24), *(v9 + 288));
        v231 = v2;
        if (!v48)
        {
          goto LABEL_123;
        }

        while (1)
        {
          v49 = GTFenum_getConstructorType(v48[5]);
          if (GTFenum_isMTLCommandEncoder(v49))
          {
            break;
          }

          v50 = v48[2];
          if (v50)
          {
            v48 -= 6 * v50;
          }

          else
          {
            v48 = 0;
          }

          if (!v48)
          {
            goto LABEL_123;
          }
        }

        if (v49 != 28 || (v61 = *v48, v61 >= v48[1]))
        {
LABEL_123:
          v81 = v229;
LABEL_124:

          v2 = v231;
          goto LABEL_125;
        }

        v227 = v31;
        while (1)
        {
          v62 = *(*(v47 + 16) + 24) + (v61 << 6);
          v63 = *(v62 + 8);
          if (v63 > -16046)
          {
            if (v63 != -16045)
            {
              if (v63 == -16044)
              {
                v69 = GTTraceFunc_argumentBytesWithMap((*(*(v47 + 16) + 24) + (v61 << 6)), *(v62 + 13), p);
                v70 = GTTraceFunc_argumentBytesWithMap(v62, v69[16], p);
                if (*(v69 + 1))
                {
                  v71 = v70;
                  v72 = 0;
                  do
                  {
                    v73 = GTMTLSMContext_getObject(**(v47 + 5), *&v71[8 * v72], v34);
                    AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, v73, -1, v45, &v247);
                    ++v72;
                  }

                  while (*(v69 + 1) > v72);
                }
              }

              goto LABEL_73;
            }
          }

          else if (v63 != -16047)
          {
            if (v63 == -16046)
            {
              v64 = GTTraceFunc_argumentBytesWithMap((*(*(v47 + 16) + 24) + (v61 << 6)), *(v62 + 13), p);
              v65 = GTTraceFunc_argumentBytesWithMap(v62, v64[24], p);
              if (*(v64 + 1))
              {
                v66 = v65;
                v67 = 0;
                do
                {
                  v68 = GTMTLSMContext_getObject(**(v47 + 5), *&v66[8 * v67], v34);
                  AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, v68, -1, v45, &v247);
                  ++v67;
                }

                while (*(v64 + 1) > v67);
              }
            }

            goto LABEL_73;
          }

          v74 = GTTraceFunc_argumentBytesWithMap((*(*(v47 + 16) + 24) + (v61 << 6)), *(v62 + 13), p);
          v75 = GTMTLSMContext_getObject(**(v47 + 5), *(v74 + 1), v34);
          AccelerationStructureViewerServer::MTLAccelerationStructureDataSource::visitResourceObject(v9, v28, v75, -1, v45, &v247);
LABEL_73:
          if (++v61 >= v48[1])
          {
LABEL_122:
            v31 = v227;
            goto LABEL_123;
          }
        }
      }
    }
  }

LABEL_275:
  return v9;
}

void sub_24D86E8EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, void *a22, uint64_t a23, void *a24, void *a25, void *a26, void **a27, uint64_t a28, void *a29, uint64_t a30, void **a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, id a39)
{
  std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(a29);

  std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(a32);
  a31 = a27;
  std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&a31);
  std::__hash_table<std::__hash_value_type<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>,std::__unordered_map_hasher<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>,std::hash<GTMTLResourceUsage_uint8_t>,std::equal_to<GTMTLResourceUsage_uint8_t>,true>,std::__unordered_map_equal<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>,std::equal_to,std::hash,true>,objc_object  {objcproto11MTLResource}* {__strong}<std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>>::~__hash_table(v39 + 312);

  std::__tree<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::IntersectionFunction>>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::IntersectionFunction>>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,std::vector<AccelerationStructureViewer::IntersectionFunction>>>>::destroy(*(v39 + 272));
  a31 = (v39 + 240);
  std::vector<AccelerationStructureViewer::IntersectionFunctionTable>::__destroy_vector::operator()[abi:nn200100](&a31);

  AccelerationStructureViewerServer::DataSource::~DataSource(v39);
  _Unwind_Resume(a1);
}

void std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(*a1);
    std::__tree<std::__value_type<unsigned long long,unsigned long long>,std::__map_value_compare<unsigned long long,std::__value_type<unsigned long long,unsigned long long>,std::less<unsigned long long>,true>,std::allocator<std::__value_type<unsigned long long,unsigned long long>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

void AccelerationStructureViewerServer::AccelerationStructure::~AccelerationStructure(id *this)
{
  v2 = this[16];
  if (v2)
  {
    this[17] = v2;
    operator delete(v2);
  }
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure>>(unint64_t a1)
{
  if (a1 < 0x1642C8590B21643)
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

uint64_t **std::__hash_table<std::__hash_value_type<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>,std::__unordered_map_hasher<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>,std::hash<GTMTLResourceUsage_uint8_t>,std::equal_to<GTMTLResourceUsage_uint8_t>,true>,std::__unordered_map_equal<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>,std::equal_to,std::hash,true>,objc_object  {objcproto11MTLResource}* {__strong}<std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>>::__emplace_unique_key_args<GTMTLResourceUsage_uint8_t,std::piecewise_construct_t const&,std::tuple<GTMTLResourceUsage_uint8_t const&>,std::piecewise_construct_t const&<>>(float *a1, unsigned __int8 a2, _BYTE **a3)
{
  v3 = *(a1 + 1);
  if (!v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = a2;
    if (v3 <= a2)
    {
      v5 = a2 % *(a1 + 1);
    }
  }

  else
  {
    v5 = (v3 - 1) & a2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == a2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= v3)
      {
        v8 %= v3;
      }
    }

    else
    {
      v8 &= v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 16) != a2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::vector<objc_object  {objcproto11MTLResource}* {__strong}>::push_back[abi:nn200100](void ***a1, id *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = v4 - *a1;
    if ((v6 + 1) >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      if (!(v9 >> 61))
      {
        operator new();
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = (8 * v6 + 8);
    v11 = *a1;
    v12 = a1[1];
    v13 = (v10 + *a1 - v12);
    if (*a1 != v12)
    {
      v14 = *a1;
      v15 = v13;
      do
      {
        v16 = *v14;
        *v14++ = 0;
        *v15++ = v16;
      }

      while (v14 != v12);
      do
      {
        v17 = *v11++;
      }

      while (v11 != v12);
      v11 = *a1;
    }

    *a1 = v13;
    a1[1] = v5;
    a1[2] = 0;
    if (v11)
    {
      operator delete(v11);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  a1[1] = v5;
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<GTMTLResourceUsage_uint8_t,std::vector<objc_object  {objcproto11MTLResource}* {__strong}>>,void *>>>::operator()[abi:nn200100](char a1, void **__p)
{
  if (a1)
  {
    v3 = __p + 3;
    std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v3);
  }

  if (__p)
  {

    operator delete(__p);
  }
}

void AccelerationStructureViewer::DataSourceQueryEncoder::encodeString(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = [v9 smallestEncoding];
  v6 = [v9 dataUsingEncoding:v5];
  memset(v10, 0, sizeof(v10));
  std::vector<unsigned char>::__append(v10, [v6 length] + 8);
  v7 = v10[0];
  v8 = v10[0];
  *v10[0] = v5;
  memcpy(v8 + 8, [v6 bytes], objc_msgSend(v6, "length"));
  (*(*a1 + 24))(a1, a2, [v6 length] + 8, v7);
  operator delete(v7);
}

void std::vector<unsigned char>::__append(char **a1, size_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v4 - v5 >= a2)
  {
    if (a2)
    {
      bzero(a1[1], a2);
      v5 += a2;
    }

    a1[1] = v5;
  }

  else
  {
    v6 = *a1;
    v7 = (v5 - *a1);
    v8 = &v7[a2];
    if (&v7[a2] < 0)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v9 = v4 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = v5 - *a1;
    bzero(v7, a2);
    memcpy(&v7[v6 - v5], v6, v11);
    *a1 = &v7[v6 - v5];
    a1[1] = &v7[a2];
    a1[2] = 0;
    if (v6)
    {

      operator delete(v6);
    }
  }
}

uint64_t AccelerationStructureViewer::DataSourceQuerySizeCalculator::encodeObject(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 24))(a1, a2, 0, 0);
  v5 = *(*a3 + 16);

  return v5(a3, a1);
}

uint64_t AccelerationStructureViewer::DataSourceQueryBlobEncoder::pop(uint64_t this)
{
  v1 = *(this + 24);
  if (v1)
  {
    *(this + 24) = v1 - 1;
  }

  return this;
}

uint64_t AccelerationStructureViewer::DataSourceQueryBlobEncoder::encodeObject(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[2];
  (*(*a1 + 24))(a1, a2, 0, 0);
  v6 = *(a1 + 4);
  result = (*(*a3 + 16))(a3, a1);
  *(a1[132] + v5 + 8) = *(a1 + 4) - v6;
  return result;
}

void *AccelerationStructureViewer::DataSourceQueryBlobEncoder::encode(void *result, uint64_t a2, size_t a3, void *__src)
{
  v4 = result[3];
  if (v4)
  {
    v6 = result;
    v7 = result[132] + result[v4 + 3];
    ++*(v7 + 2);
    v8 = result[132] + result[2];
    *v8 = a2;
    *(v8 + 8) = a3;
    v9 = result[2] + 12;
    result[2] = v9;
    result = memcpy((result[132] + v9), __src, a3);
    v6[2] += a3;
  }

  return result;
}

void *AccelerationStructureViewer::DataSourceQueryBlobEncoder::push(void *result, __int16 a2)
{
  v2 = result[2];
  result[result[3]++ + 4] = v2;
  v3 = result[132] + v2;
  *v3 = a2;
  *(v3 + 2) = 0;
  result[2] += 10;
  return result;
}

uint64_t AccelerationStructureViewer::DataSourceArray::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 0);
  v6 = (*(a1 + 16) - *(a1 + 8)) >> 3;
  (*(*a2 + 24))(a2, 0, 8, &v6);
  if (v6)
  {
    for (i = 0; i < v6; ++i)
    {
      (*(*a2 + 40))(a2, i + 100000, *(*(a1 + 8) + 8 * i));
    }
  }

  return (*(*a2 + 48))(a2);
}

void AccelerationStructureViewer::DataSourceArray::~DataSourceArray(AccelerationStructureViewer::DataSourceArray *this)
{
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(this);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BB738;
  v2 = *(this + 4);
  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }

  v3 = *(this + 1);
  if (v3)
  {
    *(this + 2) = v3;
    operator delete(v3);
  }
}

uint64_t AccelerationStructureViewer::DataSourceArray_StrongRef::decode(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 5 < 0xC35)
  {
    if (a3)
    {
      return 1;
    }

    v6 = *a2 + 8;
    if (v6 > *(a2 + 16))
    {
      result = 0;
      *(a2 + 24) = 1;
      return result;
    }

    v7 = *(*(a2 + 8) + *a2);
    *a2 = v6;
    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    v10 = (v9 - v8) >> 3;
    if (v7 <= v10)
    {
      if (v7 >= v10)
      {
LABEL_22:
        v17 = *(a1 + 32);
        v18 = *(a1 + 40);
        v19 = (v18 - v17) >> 1;
        if (v7 <= v19)
        {
          if (v7 < v19)
          {
            *(a1 + 40) = v17 + 2 * v7;
          }

          if (!v7)
          {
            return 1;
          }
        }

        else
        {
          v20 = v7 - v19;
          v21 = *(a1 + 48);
          if (v20 > (v21 - v18) >> 1)
          {
            if ((v7 & 0x8000000000000000) == 0)
            {
              v22 = v21 - v17;
              if (v22 <= v7)
              {
                v23 = v7;
              }

              else
              {
                v23 = v22;
              }

              if (v22 >= 0x7FFFFFFFFFFFFFFELL)
              {
                v24 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v24 = v23;
              }

              if ((v24 & 0x8000000000000000) == 0)
              {
                operator new();
              }

              std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
            }

            std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
          }

          bzero(*(a1 + 40), 2 * v20);
          *(a1 + 40) = v18 + 2 * v20;
        }

        v25 = 0;
        do
        {
          *(*(a1 + 8) + 8 * v25) = 0;
          *(*(a1 + 32) + 2 * v25++) = 16;
        }

        while (v7 != v25);
        return 1;
      }

      v16 = v8 + 8 * v7;
    }

    else
    {
      v11 = v7 - v10;
      v12 = *(a1 + 24);
      if (v11 > (v12 - v9) >> 3)
      {
        if (!(v7 >> 61))
        {
          v13 = v12 - v8;
          v14 = v13 >> 2;
          if (v13 >> 2 <= v7)
          {
            v14 = v7;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v15);
        }

        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      bzero(*(a1 + 16), 8 * v11);
      v16 = v9 + 8 * v11;
    }

    *(a1 + 16) = v16;
    goto LABEL_22;
  }

  v4 = a3 - 100000;
  if (a3 - 100000 < (*(a1 + 16) - *(a1 + 8)) >> 3)
  {
    v26 = 0;
    *(*(a1 + 8) + 8 * v4) = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, &v26);
    *(*(a1 + 32) + 2 * v4) = v26;
    return 1;
  }

  return 0;
}

uint64_t AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(unint64_t *a1, _WORD *a2)
{
  v2 = *a1 + 10;
  if (v2 <= a1[2])
  {
    v3 = *(a1[1] + *a1);
    *a1 = v2;
    if (a2)
    {
      *a2 = v3;
    }

    switch(v3)
    {
      case 0:
        operator new();
      case 1:
        operator new();
      case 2:
        operator new();
      case 3:
        operator new();
      case 4:
        operator new();
      case 5:
        operator new();
      case 6:
        operator new();
      case 7:
        operator new();
      case 8:
        operator new();
      case 9:
        operator new();
      case 10:
        operator new();
      case 11:
        operator new();
      case 12:
        operator new();
      case 13:
        operator new();
      case 14:
        operator new();
      case 15:
        operator new();
      case 17:
        operator new();
      case 18:
        operator new();
      case 19:
        operator new();
      case 20:
        operator new();
      case 21:
        operator new();
      case 22:
        operator new();
      case 23:
        operator new();
      default:
        return 0;
    }
  }

  else
  {
    *(a1 + 24) = 1;
  }

  return 0;
}

uint64_t AccelerationStructureViewer::Primitive::decode(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 <= 31)
  {
    if (a3 <= 10)
    {
      if (a3 == 2)
      {
        v7 = *a2 + 2;
        if (v7 > *(a2 + 16))
        {
          goto LABEL_43;
        }

        v8 = *(*(a2 + 8) + *a2);
        *a2 = v7;
        *(a1 + 32) = v8;
      }

      else if (a3 == 3)
      {
        if ((*a2 + 4) <= *(a2 + 16))
        {
          *(a1 + 40) = *(*(a2 + 8) + *a2);
          goto LABEL_41;
        }

LABEL_43:
        result = 0;
        *(a2 + 24) = 1;
        return result;
      }

      return 1;
    }

    switch(a3)
    {
      case 11:
        if ((*a2 + 4) <= *(a2 + 16))
        {
          *(a1 + 56) = *(*(a2 + 8) + *a2);
          goto LABEL_41;
        }

        goto LABEL_43;
      case 18:
        v16 = 0;
        v9 = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, &v16);
        v10 = v9;
        v11 = v16;
        if (!v9 || v16)
        {
          if (!v9)
          {
            return 0;
          }
        }

        else
        {
          v13 = *(v9 + 8);
          v12 = *(v9 + 16);
          if (v13 != v12)
          {
            v14 = *(v9 + 8);
            do
            {
              if (*(v10[4] + ((v13 - v10[1]) >> 2)) == 11)
              {
                std::vector<AccelerationStructureViewer::Property>::push_back[abi:nn200100]((a1 + 104), *v14);
                v12 = v10[2];
              }

              ++v14;
              ++v13;
            }

            while (v14 != v12);
          }
        }

        (*(*v10 + 8))(v10);
        if (!v11)
        {
          return 1;
        }

        break;
      case 28:
        v17 = 0;
        result = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, &v17);
        v5 = v17;
        if (result && v17 == 15)
        {
          v6 = *(result + 8);
          *(a1 + 92) = *(result + 24);
          *(a1 + 76) = v6;
        }

        else if (!result)
        {
          return result;
        }

        (*(*result + 8))(result);
        if (v5 == 15)
        {
          return 1;
        }

        break;
      default:
        return 1;
    }

    return 0;
  }

  if (a3 <= 34)
  {
    if (a3 == 32)
    {
      if ((*a2 + 4) <= *(a2 + 16))
      {
        *(a1 + 48) = *(*(a2 + 8) + *a2);
        goto LABEL_41;
      }

      goto LABEL_43;
    }

    if (a3 != 33)
    {
      if ((*a2 + 4) <= *(a2 + 16))
      {
        *(a1 + 72) = *(*(a2 + 8) + *a2);
LABEL_41:
        v15 = *a2 + 4;
LABEL_52:
        *a2 = v15;
        return 1;
      }

      goto LABEL_43;
    }

    if ((*a2 + 8) > *(a2 + 16))
    {
      goto LABEL_43;
    }

    *(a1 + 64) = *(*(a2 + 8) + *a2);
LABEL_51:
    v15 = *a2 + 8;
    goto LABEL_52;
  }

  switch(a3)
  {
    case '#':
      if ((*a2 + 8) > *(a2 + 16))
      {
        goto LABEL_43;
      }

      *(a1 + 40) = *(*(a2 + 8) + *a2);
      goto LABEL_51;
    case '$':
      if ((*a2 + 8) > *(a2 + 16))
      {
        goto LABEL_43;
      }

      *(a1 + 48) = *(*(a2 + 8) + *a2);
      goto LABEL_51;
    case '%':
      if ((*a2 + 8) > *(a2 + 16))
      {
        goto LABEL_43;
      }

      *(a1 + 56) = *(*(a2 + 8) + *a2);
      goto LABEL_51;
  }

  return 1;
}

void *std::vector<AccelerationStructureViewer::Property>::push_back[abi:nn200100](unint64_t *a1, uint64_t a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v14 = 0xEEEEEEEEEEEEEEEFLL * ((v5 - *a1) >> 3);
    if (v14 + 1 > 0x222222222222222)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v15 = 0xEEEEEEEEEEEEEEEFLL * ((v4 - *a1) >> 3);
    v16 = 2 * v15;
    if (2 * v15 <= v14 + 1)
    {
      v16 = v14 + 1;
    }

    if (v15 >= 0x111111111111111)
    {
      v17 = 0x222222222222222;
    }

    else
    {
      v17 = v16;
    }

    v31 = a1;
    if (v17)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::Property>>(v17);
    }

    v18 = 120 * v14;
    v28 = 0;
    v29 = v18;
    v30 = v18;
    *v18 = &unk_2860BC6A0;
    v19 = *(a2 + 8);
    *(v18 + 10) = *(a2 + 10);
    *(v18 + 8) = v19;
    *(v18 + 16) = *(a2 + 16);
    *(v18 + 24) = *(a2 + 24);
    v20 = *(a2 + 40);
    v21 = *(a2 + 56);
    v22 = *(a2 + 72);
    *(v18 + 88) = *(a2 + 88);
    *(v18 + 72) = v22;
    *(v18 + 56) = v21;
    *(v18 + 40) = v20;
    *(v18 + 104) = 0;
    *(v18 + 112) = 0;
    *(v18 + 96) = 0;
    std::vector<NSString * {__strong}>::__init_with_size[abi:nn200100]<NSString * {__strong}*,NSString * {__strong}*>((v18 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
    *&v30 = v30 + 120;
    v23 = a1[1];
    v24 = v29 + *a1 - v23;
    std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<AccelerationStructureViewer::Property>,AccelerationStructureViewer::Property*>(*a1, v23, v24);
    v25 = *a1;
    *a1 = v24;
    v26 = a1[2];
    v27 = v30;
    *(a1 + 1) = v30;
    *&v30 = v25;
    *(&v30 + 1) = v26;
    v28 = v25;
    v29 = v25;
    result = std::__split_buffer<AccelerationStructureViewer::Property>::~__split_buffer(&v28);
    v13 = v27;
  }

  else
  {
    *v5 = &unk_2860BC6A0;
    v6 = *(a2 + 8);
    *(v5 + 10) = *(a2 + 10);
    *(v5 + 8) = v6;
    *(v5 + 16) = *(a2 + 16);
    v7 = *(a2 + 40);
    v8 = *(a2 + 56);
    v9 = *(a2 + 72);
    v10 = *(a2 + 88);
    v11 = *(a2 + 24);
    *(v5 + 96) = 0;
    *(v5 + 24) = v11;
    *(v5 + 88) = v10;
    *(v5 + 72) = v9;
    *(v5 + 56) = v8;
    *(v5 + 40) = v7;
    *(v5 + 104) = 0;
    *(v5 + 112) = 0;
    result = std::vector<NSString * {__strong}>::__init_with_size[abi:nn200100]<NSString * {__strong}*,NSString * {__strong}*>((v5 + 96), *(a2 + 96), *(a2 + 104), (*(a2 + 104) - *(a2 + 96)) >> 3);
    v13 = v5 + 120;
    a1[1] = v5 + 120;
  }

  a1[1] = v13;
  return result;
}

void sub_24D870ABC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<AccelerationStructureViewer::Property>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void (***std::__uninitialized_allocator_relocate[abi:nn200100]<std::allocator<AccelerationStructureViewer::Property>,AccelerationStructureViewer::Property*>(void (***result)(void), void (***a2)(void), uint64_t a3))(void)
{
  if (result != a2)
  {
    v4 = a3;
    v5 = result;
    do
    {
      *a3 = &unk_2860BC6A0;
      v6 = *(v5 + 4);
      *(a3 + 10) = *(v5 + 10);
      *(a3 + 8) = v6;
      v7 = v5[2];
      v5[2] = 0;
      *(a3 + 16) = v7;
      *(a3 + 24) = *(v5 + 3);
      v8 = *(v5 + 5);
      v9 = *(v5 + 7);
      v10 = v5[11];
      *(a3 + 72) = *(v5 + 9);
      *(a3 + 56) = v9;
      *(a3 + 40) = v8;
      *(a3 + 88) = v10;
      *(a3 + 96) = 0;
      *(a3 + 104) = 0;
      *(a3 + 112) = 0;
      *(a3 + 96) = *(v5 + 6);
      *(a3 + 112) = v5[14];
      v5[12] = 0;
      v5[13] = 0;
      v5[14] = 0;
      v5 += 15;
      a3 += 120;
      v4 += 120;
    }

    while (v5 != a2);
    v11 = result;
    v12 = result;
    do
    {
      v13 = *v12;
      v12 += 15;
      (*v13)();
      v11 += 15;
      result = v12;
    }

    while (v12 != a2);
  }

  return result;
}

uint64_t std::__split_buffer<AccelerationStructureViewer::Property>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    v4 = *(i - 120);
    *(a1 + 16) = i - 120;
    (*v4)();
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AccelerationStructureViewer::CurvePrimitive::encode(uint64_t a1, void *a2)
{
  (*(*a2 + 16))(a2, 23);
  AccelerationStructureViewer::Primitive::encode(a1, a2);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::Primitive::encode(uint64_t a1, void *a2)
{
  v13 = *(a1 + 32);
  (*(*a2 + 24))(a2, 2, 2, &v13);
  v4 = *(*a2 + 24);
  v5 = a1 + 40;
  if (a2[1] < 0xAuLL)
  {
    v4(a2, 3, 4, v5);
    (*(*a2 + 24))(a2, 32, 4, a1 + 48);
    (*(*a2 + 24))(a2, 11, 4, a1 + 56);
  }

  else
  {
    v4(a2, 35, 8, v5);
    (*(*a2 + 24))(a2, 36, 8, a1 + 48);
    (*(*a2 + 24))(a2, 37, 8, a1 + 56);
  }

  (*(*a2 + 24))(a2, 33, 8, a1 + 64);
  (*(*a2 + 24))(a2, 34, 4, a1 + 72);
  v10 = &unk_2860BB9A0;
  v11 = *(a1 + 76);
  v12 = *(a1 + 92);
  (*(*a2 + 40))(a2, 28, &v10);
  v8 = &unk_2860BB738;
  memset(v9, 0, sizeof(v9));
  for (i = *(a1 + 104); i != *(a1 + 112); i += 120)
  {
    v7 = i;
    std::vector<AccelerationStructureViewer::DataSourceQueryable *>::push_back[abi:nn200100](v9, &v7);
  }

  (*(*a2 + 40))(a2, 18, &v8);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v8);
}

void sub_24D870FD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(va);
  _Unwind_Resume(a1);
}

void std::vector<AccelerationStructureViewer::DataSourceQueryable *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v7 = v3 - *a1;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewerServer::AccelerationStructure *>>(v9);
    }

    v10 = (8 * v6);
    *v10 = *a2;
    v5 = 8 * v6 + 8;
    v11 = *(a1 + 8) - *a1;
    v12 = v10 - v11;
    memcpy(v10 - v11, *a1, v11);
    v13 = *a1;
    *a1 = v12;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v13)
    {
      operator delete(v13);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void AccelerationStructureViewer::CurvePrimitive::~CurvePrimitive(AccelerationStructureViewer::CurvePrimitive *this)
{
  *this = &unk_2860BBB28;
  v1 = (this + 8);
  v2 = (this + 104);
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BBB28;
  v1 = (this + 8);
  v2 = (this + 104);
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void AccelerationStructureViewer::Primitive::~Primitive(AccelerationStructureViewer::Primitive *this)
{
  *this = &unk_2860BBB28;
  v1 = (this + 8);
  v2 = (this + 104);
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BBB28;
  v1 = (this + 8);
  v2 = (this + 104);
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

uint64_t AccelerationStructureViewer::BoundingBoxPrimitive::encode(uint64_t a1, void *a2)
{
  (*(*a2 + 16))(a2, 21);
  AccelerationStructureViewer::Primitive::encode(a1, a2);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::BoundingBoxPrimitive::~BoundingBoxPrimitive(AccelerationStructureViewer::BoundingBoxPrimitive *this)
{
  *this = &unk_2860BBB28;
  v1 = (this + 8);
  v2 = (this + 104);
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BBB28;
  v1 = (this + 8);
  v2 = (this + 104);
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

uint64_t AccelerationStructureViewer::TrianglePrimitive::encode(uint64_t a1, void *a2)
{
  (*(*a2 + 16))(a2, 20);
  AccelerationStructureViewer::Primitive::encode(a1, a2);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::TrianglePrimitive::~TrianglePrimitive(AccelerationStructureViewer::TrianglePrimitive *this)
{
  *this = &unk_2860BBB28;
  v1 = (this + 8);
  v2 = (this + 104);
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BBB28;
  v1 = (this + 8);
  v2 = (this + 104);
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

uint64_t AccelerationStructureViewer::InvalidPrimitive::encode(uint64_t a1, void *a2)
{
  (*(*a2 + 16))(a2, 19);
  AccelerationStructureViewer::Primitive::encode(a1, a2);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::InvalidPrimitive::~InvalidPrimitive(AccelerationStructureViewer::InvalidPrimitive *this)
{
  *this = &unk_2860BBB28;
  v1 = (this + 8);
  v2 = (this + 104);
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BBB28;
  v1 = (this + 8);
  v2 = (this + 104);
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);
  v2 = v1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

uint64_t AccelerationStructureViewer::BoundingBox::decode(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 5 >= 0xC35)
  {
    if (a3 - 100000 > 5)
    {
      return 0;
    }

    if ((*a2 + 4) > *(a2 + 16))
    {
      result = 0;
      *(a2 + 24) = 1;
      return result;
    }

    *(a1 + 4 * (a3 - 100000) + 8) = *(*(a2 + 8) + *a2);
    *a2 += 4;
  }

  return 1;
}

uint64_t AccelerationStructureViewer::BoundingBox::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 15);
  v4 = a1 + 8;
  v5 = 6;
  v6 = 100000;
  do
  {
    (*(*a2 + 24))(a2, v6, 4, v4);
    v4 += 4;
    ++v6;
    --v5;
  }

  while (v5);
  v7 = *(*a2 + 48);

  return v7(a2);
}

uint64_t AccelerationStructureViewer::DataSourceQueryRequest_StrongRef::decode(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 1;
  if (a3 > 24)
  {
    switch(a3)
    {
      case 25:
        if (a4 != 8)
        {
          return 0;
        }

        if ((*a2 + 8) <= *(a2 + 16))
        {
          a1[4] = *(*(a2 + 8) + *a2);
          goto LABEL_26;
        }

        break;
      case 26:
        a1[5] = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, &v6);
        return 1;
      case 32:
        if (a4 != 8)
        {
          return 0;
        }

        if ((*a2 + 8) <= *(a2 + 16))
        {
          a1[6] = *(*(a2 + 8) + *a2);
          goto LABEL_26;
        }

        break;
      default:
        return result;
    }

LABEL_22:
    result = 0;
    *(a2 + 24) = 1;
    return result;
  }

  if (a3 == 3)
  {
    if (a4 != 8)
    {
      return 0;
    }

    if ((*a2 + 8) <= *(a2 + 16))
    {
      a1[2] = *(*(a2 + 8) + *a2);
      goto LABEL_26;
    }

    goto LABEL_22;
  }

  if (a3 == 23)
  {
    if (a4 == 8)
    {
      if ((*a2 + 8) <= *(a2 + 16))
      {
        a1[1] = *(*(a2 + 8) + *a2);
        goto LABEL_26;
      }

      goto LABEL_22;
    }

    return 0;
  }

  if (a3 != 24)
  {
    return result;
  }

  if (a4 != 8)
  {
    return 0;
  }

  if ((*a2 + 8) > *(a2 + 16))
  {
    goto LABEL_22;
  }

  a1[3] = *(*(a2 + 8) + *a2);
LABEL_26:
  *a2 += 8;
  return result;
}

uint64_t AccelerationStructureViewer::DataSourceQueryRequest::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 14);
  (*(*a2 + 24))(a2, 3, 8, a1 + 16);
  (*(*a2 + 24))(a2, 32, 8, a1 + 48);
  (*(*a2 + 24))(a2, 23, 8, a1 + 8);
  (*(*a2 + 24))(a2, 24, 8, a1 + 24);
  (*(*a2 + 24))(a2, 25, 8, a1 + 32);
  if (*(a1 + 40))
  {
    (*(*a2 + 40))(a2, 26);
  }

  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::DataSourceQueryRequest_StrongRef::~DataSourceQueryRequest_StrongRef(AccelerationStructureViewer::DataSourceQueryRequest_StrongRef *this)
{
  *this = &unk_2860BBCB0;
  v1 = *(this + 5);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BBCB0;
  v1 = *(this + 5);
  if (v1)
  {
    (*(*v1 + 8))(v1);
  }
}

BOOL AccelerationStructureViewer::FilterToken::decode(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 2)
  {
    if (a4 != 2)
    {
      return 0;
    }

    v4 = *a2;
    if (*a2 + 2 <= a2[2])
    {
      v5 = 10;
      goto LABEL_14;
    }

LABEL_11:
    result = 0;
    *(a2 + 24) = 1;
    return result;
  }

  if (a3 != 27)
  {
    return a3 != 22 || AccelerationStructureViewer::DataSourceQueryBlobDecoder::consumeString(a2, (a1 + 16), a4);
  }

  if (a4 != 2)
  {
    return 0;
  }

  v4 = *a2;
  if (*a2 + 2 > a2[2])
  {
    goto LABEL_11;
  }

  v5 = 8;
LABEL_14:
  *(a1 + v5) = *(a2[1] + v4);
  *a2 += 2;
  return 1;
}

BOOL AccelerationStructureViewer::DataSourceQueryBlobDecoder::consumeString(uint64_t *a1, void **a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[2];
  if (*a1 + a3 <= v5 && v4 + 8 <= v5)
  {
    v9 = *(a1[1] + v4);
    *a1 = v4 + 8;
    v10 = a3 - 8;
    if (a3 != 8)
    {
      memset(__dst, 0, sizeof(__dst));
      std::vector<unsigned char>::__append(__dst, a3 - 8);
      v12 = a1[2];
      v13 = *a1 + v10;
      v6 = v13 <= v12;
      if (v13 > v12)
      {
        *(a1 + 24) = 1;
        v14 = __dst[0];
        if (!__dst[0])
        {
          return v6;
        }
      }

      else
      {
        v14 = __dst[0];
        memcpy(__dst[0], (a1[1] + *a1), v10);
        *a1 += v10;
        v15 = [MEMORY[0x277CBEA90] dataWithBytes:v14 length:v10];
        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v15 encoding:v9];
        v17 = *a2;
        *a2 = v16;

        if (!v14)
        {
          return v6;
        }
      }

      operator delete(v14);
      return v6;
    }

    v11 = *a2;
    *a2 = &stru_2860BD438;

    return 1;
  }

  else
  {
    v6 = 0;
    *(a1 + 24) = 1;
  }

  return v6;
}

void sub_24D871ED8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  if (v10)
  {
    operator delete(v10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AccelerationStructureViewer::FilterToken::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 13);
  (*(*a2 + 32))(a2, 22, *(a1 + 16));
  (*(*a2 + 24))(a2, 2, 2, a1 + 10);
  (*(*a2 + 24))(a2, 27, 2, a1 + 8);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::FilterToken::~FilterToken(id *this)
{

  JUMPOUT(0x2530332C0);
}

{
}

uint64_t AccelerationStructureViewer::Filter::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 == 21)
  {
    v33 = 0;
    v6 = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, &v33);
    v7 = v6;
    v32 = v33;
    if (!v6 || v33)
    {
      if (!v6)
      {
        return 0;
      }
    }

    else
    {
      v9 = *(v6 + 8);
      for (i = *(v6 + 16); v9 != i; ++v9)
      {
        if (*(v7[4] + ((v9 - v7[1]) >> 2)) == 13)
        {
          v10 = *v9;
          v12 = *(a1 + 24);
          v11 = *(a1 + 32);
          if (v12 >= v11)
          {
            v14 = *(a1 + 16);
            v15 = 0xAAAAAAAAAAAAAAABLL * ((v12 - v14) >> 3);
            v16 = v15 + 1;
            if (v15 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
            }

            v17 = 0xAAAAAAAAAAAAAAABLL * ((v11 - v14) >> 3);
            if (2 * v17 > v16)
            {
              v16 = 2 * v17;
            }

            if (v17 >= 0x555555555555555)
            {
              v18 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v18 = v16;
            }

            if (v18)
            {
              std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::FilterToken>>(v18);
            }

            v19 = 8 * ((v12 - v14) >> 3);
            *v19 = &unk_2860BC910;
            *(v19 + 8) = *(v10 + 8);
            v20 = *(v10 + 16);
            v21 = *(a1 + 16);
            v22 = *(a1 + 24);
            v23 = 24 * v15 - (v22 - v21);
            *(v19 + 16) = v20;
            if (v22 != v21)
            {
              v24 = 24 * v15 - 8 * (v22 - v21);
              v25 = v21;
              v26 = v19 - (v22 - v21);
              do
              {
                *v26 = &unk_2860BC910;
                *(v26 + 8) = *(v25 + 2);
                v27 = v25[2];
                v25[2] = 0;
                *(v26 + 16) = v27;
                v25 += 3;
                v26 += 24;
                v24 += 24;
              }

              while (v25 != v22);
              v28 = v21;
              v29 = v21;
              do
              {
                v30 = *v29;
                v29 += 3;
                (*v30)();
                v28 += 3;
              }

              while (v29 != v22);
            }

            v13 = v19 + 24;
            v31 = *(a1 + 16);
            *(a1 + 16) = v23;
            *(a1 + 24) = (v19 + 24);
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v12 = &unk_2860BC910;
            *(v12 + 8) = *(v10 + 8);
            *(v12 + 16) = *(v10 + 16);
            v13 = v12 + 24;
          }

          *(a1 + 24) = v13;
          i = v7[2];
        }
      }
    }

    (*(*v7 + 8))(v7);
    if (v32)
    {
      return 0;
    }
  }

  else if (a3 == 2)
  {
    if (a4 == 1)
    {
      if ((*a2 + 1) > *(a2 + 16))
      {
        result = 0;
        *(a2 + 24) = 1;
        return result;
      }

      *(a1 + 8) = *(*(a2 + 8) + (*a2)++);
      return 1;
    }

    return 0;
  }

  return 1;
}

void AccelerationStructureViewer::Filter::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 12);
  (*(*a2 + 24))(a2, 2, 1, a1 + 8);
  v6 = &unk_2860BB738;
  memset(v7, 0, sizeof(v7));
  for (i = *(a1 + 16); i != *(a1 + 24); i += 24)
  {
    v5 = i;
    std::vector<AccelerationStructureViewer::DataSourceQueryable *>::push_back[abi:nn200100](v7, &v5);
  }

  (*(*a2 + 40))(a2, 21, &v6);
  (*(*a2 + 48))(a2);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v6);
}

void sub_24D872540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(va);
  _Unwind_Resume(a1);
}

void AccelerationStructureViewer::Filter::~Filter(AccelerationStructureViewer::Filter *this)
{
  *this = &unk_2860BC948;
  v1 = (this + 16);
  std::vector<AccelerationStructureViewer::FilterToken>::__destroy_vector::operator()[abi:nn200100](&v1);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BC948;
  v1 = (this + 16);
  std::vector<AccelerationStructureViewer::FilterToken>::__destroy_vector::operator()[abi:nn200100](&v1);
}

BOOL AccelerationStructureViewer::Property::decode(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a3 >> 5 < 0xC35)
  {
    switch(a3)
    {
      case 0x14uLL:
        v11 = *(a1 + 10);
        if (v11 <= 1)
        {
          if (!*(a1 + 10))
          {
            return AccelerationStructureViewer::DataSourceQueryBlobDecoder::consumeString(a2, (a1 + 16), a4);
          }

          if (v11 == 1)
          {
            if ((*a2 + 8) <= *(a2 + 16))
            {
              *(a1 + 32) = *(*(a2 + 8) + *a2);
              v9 = *a2 + 8;
              goto LABEL_31;
            }

            goto LABEL_14;
          }
        }

        else
        {
          switch(v11)
          {
            case 2u:
              if ((*a2 + 4) <= *(a2 + 16))
              {
                *(a1 + 24) = *(*(a2 + 8) + *a2);
                goto LABEL_7;
              }

              goto LABEL_14;
            case 3u:
              v23 = *a2 + 1;
              if (v23 <= *(a2 + 16))
              {
                v24 = *(*(a2 + 8) + *a2);
                *a2 = v23;
                *(a1 + 40) = v24 != 0;
                return 1;
              }

              goto LABEL_14;
            case 6u:
              if ((*a2 + 4) <= *(a2 + 16))
              {
                *(a1 + 92) = *(*(a2 + 8) + *a2);
                goto LABEL_7;
              }

LABEL_14:
              result = 0;
              *(a2 + 24) = 1;
              return result;
          }
        }

        break;
      case 0x13uLL:
        if ((*a2 + 1) <= *(a2 + 16))
        {
          *(a1 + 10) = *(*(a2 + 8) + *a2);
          v9 = *a2 + 1;
          goto LABEL_31;
        }

        goto LABEL_14;
      case 2uLL:
        if ((*a2 + 2) <= *(a2 + 16))
        {
          *(a1 + 8) = *(*(a2 + 8) + *a2);
          v9 = *a2 + 2;
          goto LABEL_31;
        }

        goto LABEL_14;
    }

    return 1;
  }

  v7 = a3 - 100000;
  v8 = *(a1 + 10);
  if ((v8 - 7) < 2)
  {
    goto LABEL_5;
  }

  if (v8 != 5)
  {
    if (v8 == 4)
    {
LABEL_5:
      if ((*a2 + 4) <= *(a2 + 16))
      {
        *(a1 + 4 * v7 + 44) = *(*(a2 + 8) + *a2);
LABEL_7:
        v9 = *a2 + 4;
LABEL_31:
        *a2 = v9;
        return 1;
      }

      goto LABEL_14;
    }

    return 1;
  }

  v12 = *(a1 + 96);
  v14 = *(a1 + 104);
  v13 = (a1 + 96);
  v15 = a3 - 99999;
  v16 = (v14 - v12) >> 3;
  if (a3 - 99999 <= v16)
  {
    if (v15 < v16)
    {
      v21 = v12 + 8 * v15;
      while (v14 != v21)
      {
        v22 = *(v14 - 8);
        v14 -= 8;
      }

      *(a1 + 104) = v21;
    }
  }

  else
  {
    v17 = v15 - v16;
    v18 = *(a1 + 112);
    if (v17 > (v18 - v14) >> 3)
    {
      if (!(v15 >> 61))
      {
        v25 = a1 + 96;
        v19 = v18 - v12;
        if (v19 >> 2 > v15)
        {
          v15 = v19 >> 2;
        }

        if (v19 >= 0x7FFFFFFFFFFFFFF8)
        {
          v20 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v20 = v15;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<NSString * {__strong}>>(v20);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    bzero(*(a1 + 104), 8 * v17);
    *(a1 + 104) = v14 + 8 * v17;
  }

  result = AccelerationStructureViewer::DataSourceQueryBlobDecoder::consumeString(a2, (*v13 + 8 * v7), a4);
  if (result)
  {
    return 1;
  }

  return result;
}

void std::vector<NSString * {__strong}>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      v9 = *v7;
      *v7++ = 0;
      *v8++ = v9;
    }

    while (v7 != v5);
    do
    {
      v10 = *v4++;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v11 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v11;
  v12 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v12;
  *a2 = a2[1];
}

uint64_t std::__split_buffer<NSString * {__strong}>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t AccelerationStructureViewer::Property::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 11);
  (*(*a2 + 24))(a2, 2, 2, a1 + 8);
  (*(*a2 + 24))(a2, 19, 1, a1 + 10);
  v4 = *(a1 + 10);
  if (v4 <= 3)
  {
    if (*(a1 + 10) <= 1u)
    {
      if (*(a1 + 10))
      {
        (*(*a2 + 24))(a2, 20, 8, a1 + 32);
      }

      else if (*(a1 + 16))
      {
        (*(*a2 + 32))(a2, 20);
      }

      return (*(*a2 + 48))(a2);
    }

    if (v4 != 2)
    {
      if (v4 == 3)
      {
        v12 = *(a1 + 40);
        (*(*a2 + 24))(a2, 20, 1, &v12);
      }

      return (*(*a2 + 48))(a2);
    }

    v5 = *(*a2 + 24);
    v7 = a1 + 24;
LABEL_25:
    v10 = a2;
    v6 = 20;
    goto LABEL_26;
  }

  if (*(a1 + 10) <= 5u)
  {
    if (v4 != 4)
    {
      if (v4 == 5)
      {
        v8 = *(a1 + 96);
        if (*(a1 + 104) != v8)
        {
          v9 = 0;
          do
          {
            (*(*a2 + 32))(a2, v9 + 100000, *(v8 + 8 * v9));
            ++v9;
            v8 = *(a1 + 96);
          }

          while (v9 < (*(a1 + 104) - v8) >> 3);
        }
      }

      return (*(*a2 + 48))(a2);
    }

LABEL_19:
    (*(*a2 + 24))(a2, 100000, 4, a1 + 44);
    (*(*a2 + 24))(a2, 100001, 4, a1 + 48);
    (*(*a2 + 24))(a2, 100002, 4, a1 + 52);
    (*(*a2 + 24))(a2, 100003, 4, a1 + 56);
    (*(*a2 + 24))(a2, 100004, 4, a1 + 60);
    (*(*a2 + 24))(a2, 100005, 4, a1 + 64);
    (*(*a2 + 24))(a2, 100006, 4, a1 + 68);
    (*(*a2 + 24))(a2, 100007, 4, a1 + 72);
    (*(*a2 + 24))(a2, 100008, 4, a1 + 76);
    (*(*a2 + 24))(a2, 100009, 4, a1 + 80);
    (*(*a2 + 24))(a2, 100010, 4, a1 + 84);
    v5 = *(*a2 + 24);
    v6 = 100011;
    v7 = a1 + 88;
    goto LABEL_20;
  }

  switch(v4)
  {
    case 6u:
      v5 = *(*a2 + 24);
      v7 = a1 + 92;
      goto LABEL_25;
    case 7u:
      goto LABEL_19;
    case 8u:
      (*(*a2 + 24))(a2, 100000, 4, a1 + 44);
      (*(*a2 + 24))(a2, 100001, 4, a1 + 48);
      v5 = *(*a2 + 24);
      v6 = 100002;
      v7 = a1 + 52;
LABEL_20:
      v10 = a2;
LABEL_26:
      v5(v10, v6, 4, v7);
      break;
  }

  return (*(*a2 + 48))(a2);
}

void AccelerationStructureViewer::Property::~Property(id *this)
{
  *this = &unk_2860BC6A0;
  v2 = this + 12;
  std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v2);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BC6A0;
  v2 = this + 12;
  std::vector<objc_object  {objcproto7MTLHeap}* {__strong}>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void AccelerationStructureViewer::DataSourceError_StrongRef::finish(AccelerationStructureViewer::DataSourceError_StrongRef *this)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(this + 5);
  if (v1)
  {
    v3 = MEMORY[0x277CCA9B8];
    v4 = *(this + 4);
    v5 = *(this + 6);
    v9 = *MEMORY[0x277CCA450];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v3 errorWithDomain:v1 code:v4 userInfo:v6];
    v8 = *(this + 1);
    *(this + 1) = v7;
  }
}

BOOL AccelerationStructureViewer::DataSourceError_StrongRef::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 <= 16)
  {
    if (a3 == 15)
    {
      if ((*a2 + 8) > *(a2 + 16))
      {
        result = 0;
        *(a2 + 24) = 1;
        return result;
      }

      *(a1 + 32) = *(*(a2 + 8) + *a2);
      *a2 += 8;
    }

    else if (a3 == 16 && !AccelerationStructureViewer::DataSourceQueryBlobDecoder::consumeString(a2, (a1 + 40), a4))
    {
      return 0;
    }

    return 1;
  }

  if (a3 != 17)
  {
    if (a3 == 100000)
    {
      *(a1 + 16) = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, (a1 + 24));
    }

    return 1;
  }

  result = AccelerationStructureViewer::DataSourceQueryBlobDecoder::consumeString(a2, (a1 + 48), a4);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t AccelerationStructureViewer::DataSourceError::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 10);
  v7 = [*(a1 + 8) code];
  (*(*a2 + 24))(a2, 15, 8, &v7);
  v4 = [*(a1 + 8) domain];
  (*(*a2 + 32))(a2, 16, v4);

  v5 = [*(a1 + 8) localizedDescription];
  (*(*a2 + 32))(a2, 17, v5);

  if (*(a1 + 16))
  {
    (*(*a2 + 40))(a2, 100000);
  }

  return (*(*a2 + 48))(a2);
}

void AccelerationStructureViewer::DataSourceError_StrongRef::~DataSourceError_StrongRef(AccelerationStructureViewer::DataSourceError_StrongRef *this)
{
  AccelerationStructureViewer::DataSourceError_StrongRef::~DataSourceError_StrongRef(this);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BB7E0;
  v2 = *(this + 2);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }
}

uint64_t AccelerationStructureViewer::Geometry::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 <= 6)
  {
    if (a3 <= 2)
    {
      if (a3 == 1)
      {
        return AccelerationStructureViewer::DataSourceQueryBlobDecoder::consumeString(a2, (a1 + 48), a4);
      }

      if (a3 != 2)
      {
        return 1;
      }

      v8 = *a2 + 2;
      if (v8 <= *(a2 + 16))
      {
        v9 = *(*(a2 + 8) + *a2);
        *a2 = v8;
        *(a1 + 32) = v9;
        return 1;
      }

LABEL_38:
      result = 0;
      *(a2 + 24) = 1;
      return result;
    }

    if (a3 != 3)
    {
      if (a3 != 6)
      {
        return 1;
      }

      v10 = *a2 + 1;
      if (v10 <= *(a2 + 16))
      {
        v11 = *(*(a2 + 8) + *a2);
        *a2 = v10;
        *(a1 + 56) = v11 == 1;
        return 1;
      }

      goto LABEL_38;
    }

    if ((*a2 + 8) > *(a2 + 16))
    {
      goto LABEL_38;
    }

    *(a1 + 40) = *(*(a2 + 8) + *a2);
LABEL_36:
    v18 = *a2 + 8;
LABEL_47:
    *a2 = v18;
    return 1;
  }

  if (a3 <= 17)
  {
    if (a3 != 7)
    {
      if (a3 != 11)
      {
        return 1;
      }

      if ((*a2 + 4) <= *(a2 + 16))
      {
        *(a1 + 60) = *(*(a2 + 8) + *a2);
LABEL_46:
        v18 = *a2 + 4;
        goto LABEL_47;
      }

      goto LABEL_38;
    }

    if ((*a2 + 8) > *(a2 + 16))
    {
      goto LABEL_38;
    }

    *(a1 + 72) = *(*(a2 + 8) + *a2);
    goto LABEL_36;
  }

  switch(a3)
  {
    case 18:
      v19 = 0;
      v12 = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, &v19);
      v13 = v12;
      v14 = v19;
      if (!v12 || v19)
      {
        if (!v12)
        {
          return 0;
        }
      }

      else
      {
        v16 = *(v12 + 8);
        v15 = *(v12 + 16);
        if (v16 != v15)
        {
          v17 = *(v12 + 8);
          do
          {
            if (*(v13[4] + ((v16 - v13[1]) >> 2)) == 11)
            {
              std::vector<AccelerationStructureViewer::Property>::push_back[abi:nn200100]((a1 + 104), *v17);
              v15 = v13[2];
            }

            ++v17;
            ++v16;
          }

          while (v17 != v15);
        }
      }

      (*(*v13 + 8))(v13);
      return !v14;
    case 31:
      if ((*a2 + 4) > *(a2 + 16))
      {
        goto LABEL_38;
      }

      *(a1 + 64) = *(*(a2 + 8) + *a2);
      goto LABEL_46;
    case 28:
      v20 = 0;
      result = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, &v20);
      v6 = v20;
      if (result && v20 == 15)
      {
        v7 = *(result + 8);
        *(a1 + 96) = *(result + 24);
        *(a1 + 80) = v7;
      }

      else if (!result)
      {
        return result;
      }

      (*(*result + 8))(result);
      if (v6 != 15)
      {
        return 0;
      }

      break;
  }

  return 1;
}

uint64_t AccelerationStructureViewer::CurveGeometry::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 22);
  AccelerationStructureViewer::Geometry::encode(a1, a2);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::Geometry::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 32))(a2, 1, *(a1 + 48));
  v12 = *(a1 + 32);
  (*(*a2 + 24))(a2, 2, 2, &v12);
  (*(*a2 + 24))(a2, 11, 4, a1 + 60);
  v11 = *(a1 + 56);
  (*(*a2 + 24))(a2, 6, 1, &v11);
  (*(*a2 + 24))(a2, 7, 8, a1 + 72);
  (*(*a2 + 24))(a2, 3, 8, a1 + 40);
  (*(*a2 + 24))(a2, 31, 4, a1 + 64);
  v8 = &unk_2860BB9A0;
  v9 = *(a1 + 80);
  v10 = *(a1 + 96);
  (*(*a2 + 40))(a2, 28, &v8);
  v6 = &unk_2860BB738;
  memset(v7, 0, sizeof(v7));
  for (i = *(a1 + 104); i != *(a1 + 112); i += 120)
  {
    v5 = i;
    std::vector<AccelerationStructureViewer::DataSourceQueryable *>::push_back[abi:nn200100](v7, &v5);
  }

  (*(*a2 + 40))(a2, 18, &v6);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v6);
}

void sub_24D873B38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(va);
  _Unwind_Resume(a1);
}

void AccelerationStructureViewer::CurveGeometry::~CurveGeometry(id *this)
{
  AccelerationStructureViewer::Geometry::~Geometry(this);

  JUMPOUT(0x2530332C0);
}

void AccelerationStructureViewer::Geometry::~Geometry(id *this)
{
  *this = &unk_2860BBA10;
  v2 = this + 13;
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);

  v2 = this + 1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

{
  AccelerationStructureViewer::Geometry::~Geometry(this);

  JUMPOUT(0x2530332C0);
}

uint64_t AccelerationStructureViewer::BoundingBoxGeometry::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = AccelerationStructureViewer::Geometry::decode(a1, a2, a3, a4);
  if (result)
  {
    if (a3 == 8)
    {
      if ((*a2 + 8) > *(a2 + 16))
      {
        result = 0;
        *(a2 + 24) = 1;
        return result;
      }

      *(a1 + 128) = *(*(a2 + 8) + *a2);
      *a2 += 8;
    }

    return 1;
  }

  return result;
}

uint64_t AccelerationStructureViewer::BoundingBoxGeometry::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 9);
  AccelerationStructureViewer::Geometry::encode(a1, a2);
  (*(*a2 + 24))(a2, 8, 8, a1 + 128);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::BoundingBoxGeometry::~BoundingBoxGeometry(id *this)
{
  AccelerationStructureViewer::Geometry::~Geometry(this);

  JUMPOUT(0x2530332C0);
}

uint64_t AccelerationStructureViewer::TriangleGeometry::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = AccelerationStructureViewer::Geometry::decode(a1, a2, a3, a4);
  if (result)
  {
    if (a3 == 10)
    {
      if ((*a2 + 8) <= *(a2 + 16))
      {
        *(a1 + 136) = *(*(a2 + 8) + *a2);
        goto LABEL_9;
      }
    }

    else
    {
      if (a3 != 9)
      {
        return 1;
      }

      if ((*a2 + 8) <= *(a2 + 16))
      {
        *(a1 + 128) = *(*(a2 + 8) + *a2);
LABEL_9:
        *a2 += 8;
        return 1;
      }
    }

    result = 0;
    *(a2 + 24) = 1;
  }

  return result;
}

uint64_t AccelerationStructureViewer::TriangleGeometry::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 8);
  AccelerationStructureViewer::Geometry::encode(a1, a2);
  (*(*a2 + 24))(a2, 9, 8, a1 + 128);
  (*(*a2 + 24))(a2, 10, 8, a1 + 136);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::TriangleGeometry::~TriangleGeometry(id *this)
{
  AccelerationStructureViewer::Geometry::~Geometry(this);

  JUMPOUT(0x2530332C0);
}

uint64_t AccelerationStructureViewer::InvalidGeometry::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 7);
  AccelerationStructureViewer::Geometry::encode(a1, a2);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::InvalidGeometry::~InvalidGeometry(id *this)
{
  AccelerationStructureViewer::Geometry::~Geometry(this);

  JUMPOUT(0x2530332C0);
}

uint64_t AccelerationStructureViewer::IntersectionFunction::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 >> 5 < 0xC35)
  {
    if (a3 <= 5)
    {
      if (a3 <= 2)
      {
        if (a3)
        {
          if (a3 != 1 || AccelerationStructureViewer::DataSourceQueryBlobDecoder::consumeString(a2, (a1 + 32), a4))
          {
            return 1;
          }
        }

        else if (a4 == 4)
        {
          v10 = *a2 + 4;
          if (v10 > *(a2 + 16))
          {
            goto LABEL_5;
          }

          v11 = *(*(a2 + 8) + *a2);
          *a2 = v10;
          std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::resize((a1 + 80), v11);
          if (v11)
          {
            bzero(*(a1 + 80), 4 * v11);
          }

          return 1;
        }

        return 0;
      }

      if (a3 == 3)
      {
        if (a4 != 8)
        {
          return 0;
        }

        if ((*a2 + 8) > *(a2 + 16))
        {
          goto LABEL_5;
        }

        *(a1 + 48) = *(*(a2 + 8) + *a2);
      }

      else
      {
        if (a3 != 4)
        {
          if (a4 == 8)
          {
            if ((*a2 + 8) > *(a2 + 16))
            {
              goto LABEL_5;
            }

            *(a1 + 64) = *(*(a2 + 8) + *a2);
            goto LABEL_46;
          }

          return 0;
        }

        if (a4 != 8)
        {
          return 0;
        }

        if ((*a2 + 8) > *(a2 + 16))
        {
          goto LABEL_5;
        }

        *(a1 + 56) = *(*(a2 + 8) + *a2);
      }

LABEL_46:
      v9 = *a2 + 8;
LABEL_47:
      *a2 = v9;
      return 1;
    }

    if (a3 <= 27)
    {
      if (a3 == 6)
      {
        if (a4 == 1)
        {
          v12 = *a2 + 1;
          if (v12 > *(a2 + 16))
          {
            goto LABEL_5;
          }

          v13 = *(*(a2 + 8) + *a2);
          *a2 = v12;
          *(a1 + 74) = v13 == 2;
          return 1;
        }

        return 0;
      }

      if (a3 == 7)
      {
        if (a4 != 8)
        {
          return 0;
        }

        if ((*a2 + 8) > *(a2 + 16))
        {
          goto LABEL_5;
        }

        *(a1 + 40) = *(*(a2 + 8) + *a2);
        goto LABEL_46;
      }
    }

    else
    {
      switch(a3)
      {
        case 30:
          if (a4 == 1)
          {
            v14 = *a2 + 1;
            if (v14 > *(a2 + 16))
            {
              goto LABEL_5;
            }

            v15 = *(*(a2 + 8) + *a2);
            *a2 = v14;
            *(a1 + 72) = v15 == 2;
            return 1;
          }

          return 0;
        case 29:
          if (a4 == 1)
          {
            v16 = *a2 + 1;
            if (v16 > *(a2 + 16))
            {
              goto LABEL_5;
            }

            v17 = *(*(a2 + 8) + *a2);
            *a2 = v16;
            *(a1 + 73) = v17 == 2;
            return 1;
          }

          return 0;
        case 28:
          v18 = 0;
          v7 = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, &v18);
          if (!v7 || v18 != 15)
          {
            if (v7)
            {
              (*(*v7 + 8))(v7);
            }

            return 0;
          }

          v8 = *(v7 + 8);
          *(a1 + 120) = *(v7 + 24);
          *(a1 + 104) = v8;
          (*(*v7 + 8))(v7);
          break;
      }
    }

    return 1;
  }

  result = 0;
  if (a4 == 4)
  {
    v6 = *(a1 + 80);
    if (a3 - 100000 < ((*(a1 + 88) - v6) >> 2))
    {
      if ((*a2 + 4) > *(a2 + 16))
      {
LABEL_5:
        result = 0;
        *(a2 + 24) = 1;
        return result;
      }

      *(v6 + 4 * (a3 - 100000)) = *(*(a2 + 8) + *a2);
      v9 = *a2 + 4;
      goto LABEL_47;
    }
  }

  return result;
}

void std::vector<AccelerationStructureViewer::IntersectionFunctionTag>::resize(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __sz)
{
  begin = this->__begin_;
  end = this->__end_;
  v5 = end - this->__begin_;
  if (__sz <= v5)
  {
    if (__sz >= v5)
    {
      return;
    }

    v11 = &begin[__sz];
  }

  else
  {
    v6 = __sz - v5;
    value = this->__end_cap_.__value_;
    if (v6 > value - end)
    {
      if (!(__sz >> 62))
      {
        v8 = value - begin;
        v9 = v8 >> 1;
        if (v8 >> 1 <= __sz)
        {
          v9 = __sz;
        }

        if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
        {
          v10 = 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = v9;
        }

        std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v10);
      }

      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    bzero(this->__end_, 4 * v6);
    v11 = &end[v6];
  }

  this->__end_ = v11;
}

void AccelerationStructureViewer::IntersectionFunction::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 6);
  (*(*a2 + 32))(a2, 1, *(a1 + 32));
  (*(*a2 + 24))(a2, 3, 8, a1 + 48);
  (*(*a2 + 24))(a2, 4, 8, a1 + 56);
  (*(*a2 + 24))(a2, 5, 8, a1 + 64);
  (*(*a2 + 24))(a2, 13, 4, a1 + 76);
  (*(*a2 + 24))(a2, 7, 8, a1 + 40);
  if (*(a1 + 73))
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  v17 = v4;
  (*(*a2 + 24))(a2, 29, 1, &v17);
  if (*(a1 + 74))
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v17 = v5;
  (*(*a2 + 24))(a2, 6, 1, &v17);
  if (*(a1 + 72))
  {
    v6 = 2;
  }

  else
  {
    v6 = 1;
  }

  v17 = v6;
  (*(*a2 + 24))(a2, 30, 1, &v17);
  v14 = &unk_2860BB9A0;
  v15 = *(a1 + 104);
  v16 = *(a1 + 120);
  (*(*a2 + 40))(a2, 28, &v14);
  v12 = &unk_2860BB738;
  memset(v13, 0, sizeof(v13));
  for (i = *(a1 + 128); i != *(a1 + 136); i += 120)
  {
    v11 = i;
    std::vector<AccelerationStructureViewer::DataSourceQueryable *>::push_back[abi:nn200100](v13, &v11);
  }

  (*(*a2 + 40))(a2, 18, &v12);
  LODWORD(v11) = (*(a1 + 88) - *(a1 + 80)) >> 2;
  (*(*a2 + 24))(a2, 0, 4, &v11);
  v8 = *(a1 + 80);
  if (*(a1 + 88) != v8)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      (*(*a2 + 24))(a2, v10 + 100000, 4, v8 + v9);
      ++v10;
      v8 = *(a1 + 80);
      v9 += 4;
    }

    while (v10 < (*(a1 + 88) - v8) >> 2);
  }

  (*(*a2 + 48))(a2);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v12);
}

void sub_24D8748F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(va);
  _Unwind_Resume(a1);
}

BOOL AccelerationStructureViewer::IntersectionFunctionTable::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    v5 = *a2;
    if ((*a2 + 8) <= *(a2 + 16))
    {
      v6 = 24;
      goto LABEL_11;
    }

LABEL_9:
    result = 0;
    *(a2 + 24) = 1;
    return result;
  }

  if (a3 != 3)
  {
    return a3 != 1 || AccelerationStructureViewer::DataSourceQueryBlobDecoder::consumeString(a2, (a1 + 8), a4);
  }

  v5 = *a2;
  if ((*a2 + 8) > *(a2 + 16))
  {
    goto LABEL_9;
  }

  v6 = 16;
LABEL_11:
  *(a1 + v6) = *(*(a2 + 8) + v5);
  *a2 += 8;
  return 1;
}

uint64_t AccelerationStructureViewer::IntersectionFunctionTable::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 5);
  (*(*a2 + 32))(a2, 1, *(a1 + 8));
  (*(*a2 + 24))(a2, 3, 8, a1 + 16);
  (*(*a2 + 24))(a2, 0, 8, a1 + 24);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::IntersectionFunctionTable::~IntersectionFunctionTable(id *this)
{

  JUMPOUT(0x2530332C0);
}

{
}

BOOL AccelerationStructureViewer::Instance::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 <= 10)
  {
    if (a3 == 1)
    {
      return AccelerationStructureViewer::DataSourceQueryBlobDecoder::consumeString(a2, (a1 + 48), a4);
    }

    if (a3 != 3)
    {
      return 1;
    }

    if ((*a2 + 8) > *(a2 + 16))
    {
LABEL_13:
      result = 0;
      *(a2 + 24) = 1;
      return result;
    }

    *(a1 + 32) = *(*(a2 + 8) + *a2);
LABEL_28:
    *a2 += 8;
    return 1;
  }

  switch(a3)
  {
    case 11:
      if ((*a2 + 8) > *(a2 + 16))
      {
        goto LABEL_13;
      }

      *(a1 + 40) = *(*(a2 + 8) + *a2);
      goto LABEL_28;
    case 18:
      v14 = 0;
      v8 = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, &v14);
      v9 = v8;
      if (v8 && !v14)
      {
        v11 = v8[1];
        v10 = v8[2];
        if (v11 != v10)
        {
          v12 = v8[1];
          do
          {
            if (*(v9[4] + ((v11 - v9[1]) >> 2)) == 11)
            {
              std::vector<AccelerationStructureViewer::Property>::push_back[abi:nn200100]((a1 + 80), *v12);
              v10 = v9[2];
            }

            ++v12;
            ++v11;
          }

          while (v12 != v10);
        }

        (*(*v9 + 8))(v9);
        return 1;
      }

      if (v8)
      {
        v13 = *(*v8 + 8);
LABEL_32:
        v13();
      }

      break;
    case 28:
      v15 = 0;
      v5 = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, &v15);
      if (v5 && v15 == 15)
      {
        v6 = *(v5 + 8);
        *(a1 + 72) = *(v5 + 24);
        *(a1 + 56) = v6;
        (*(*v5 + 8))(v5);
        return 1;
      }

      if (v5)
      {
        v13 = *(*v5 + 8);
        goto LABEL_32;
      }

      break;
    default:
      return 1;
  }

  return 0;
}

void AccelerationStructureViewer::Instance::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 4);
  (*(*a2 + 24))(a2, 11, 8, a1 + 40);
  (*(*a2 + 24))(a2, 3, 8, a1 + 32);
  (*(*a2 + 32))(a2, 1, *(a1 + 48));
  v8 = &unk_2860BB9A0;
  v9 = *(a1 + 56);
  v10 = *(a1 + 72);
  (*(*a2 + 40))(a2, 28, &v8);
  v6 = &unk_2860BB738;
  memset(v7, 0, sizeof(v7));
  for (i = *(a1 + 80); i != *(a1 + 88); i += 120)
  {
    v5 = i;
    std::vector<AccelerationStructureViewer::DataSourceQueryable *>::push_back[abi:nn200100](v7, &v5);
  }

  (*(*a2 + 40))(a2, 18, &v6);
  (*(*a2 + 48))(a2);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v6);
}

void sub_24D875020(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(va);
  _Unwind_Resume(a1);
}

void AccelerationStructureViewer::Instance::~Instance(id *this)
{
  *this = &unk_2860BB9D8;
  v2 = this + 10;
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);

  v2 = this + 1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BB9D8;
  v2 = this + 10;
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);

  v2 = this + 1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

BOOL AccelerationStructureViewer::InstanceMotionAccelerationStructure::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = AccelerationStructureViewer::AccelerationStructure::decode(a1, a2, a3, a4);
  if (result)
  {
    if (!a3)
    {
      if ((*a2 + 8) > *(a2 + 16))
      {
        result = 0;
        *(a2 + 24) = 1;
        return result;
      }

      *(a1 + 120) = *(*(a2 + 8) + *a2);
      *a2 += 8;
    }

    return 1;
  }

  return result;
}

BOOL AccelerationStructureViewer::AccelerationStructure::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3 > 11)
  {
    if (a3 <= 17)
    {
      if (a3 == 12)
      {
        if ((*a2 + 8) <= *(a2 + 16))
        {
          *(a1 + 56) = *(*(a2 + 8) + *a2);
          goto LABEL_21;
        }

        goto LABEL_32;
      }

      if (a3 == 14)
      {
        if ((*a2 + 8) <= *(a2 + 16))
        {
          *(a1 + 40) = *(*(a2 + 8) + *a2);
LABEL_21:
          v7 = *a2 + 8;
LABEL_40:
          *a2 = v7;
          return 1;
        }

        goto LABEL_32;
      }

      return 1;
    }

    if (a3 == 18)
    {
      v15 = 0;
      v8 = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, &v15);
      v9 = v8;
      if (v8 && !v15)
      {
        v11 = v8[1];
        v10 = v8[2];
        if (v11 != v10)
        {
          v12 = v8[1];
          do
          {
            if (*(v9[4] + ((v11 - v9[1]) >> 2)) == 11)
            {
              std::vector<AccelerationStructureViewer::Property>::push_back[abi:nn200100]((a1 + 96), *v12);
              v10 = v9[2];
            }

            ++v12;
            ++v11;
          }

          while (v12 != v10);
        }

        (*(*v9 + 8))(v9);
        return 1;
      }

      if (v8)
      {
        v14 = *(*v8 + 8);
LABEL_37:
        v14();
      }
    }

    else
    {
      if (a3 != 28)
      {
        return 1;
      }

      v16 = 0;
      v5 = AccelerationStructureViewer::DataSourceQueryBlobDecoder::decode(a2, &v16);
      if (v5 && v16 == 15)
      {
        v6 = *(v5 + 8);
        *(a1 + 84) = *(v5 + 24);
        *(a1 + 68) = v6;
        (*(*v5 + 8))(v5);
        return 1;
      }

      if (v5)
      {
        v14 = *(*v5 + 8);
        goto LABEL_37;
      }
    }

    return 0;
  }

  switch(a3)
  {
    case 1:
      return AccelerationStructureViewer::DataSourceQueryBlobDecoder::consumeString(a2, (a1 + 48), a4);
    case 2:
      if ((*a2 + 2) <= *(a2 + 16))
      {
        *(a1 + 64) = *(*(a2 + 8) + *a2);
        v7 = *a2 + 2;
        goto LABEL_40;
      }

      goto LABEL_32;
    case 3:
      if ((*a2 + 8) <= *(a2 + 16))
      {
        *(a1 + 32) = *(*(a2 + 8) + *a2);
        goto LABEL_21;
      }

LABEL_32:
      result = 0;
      *(a2 + 24) = 1;
      return result;
  }

  return 1;
}

uint64_t AccelerationStructureViewer::InstanceMotionAccelerationStructure::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 18);
  AccelerationStructureViewer::AccelerationStructure::encode(a1, a2);
  (*(*a2 + 24))(a2, 0, 8, a1 + 120);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::AccelerationStructure::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 32))(a2, 1, *(a1 + 48));
  v11 = *(a1 + 64);
  (*(*a2 + 24))(a2, 2, 2, &v11);
  (*(*a2 + 24))(a2, 3, 8, a1 + 32);
  (*(*a2 + 24))(a2, 12, 8, a1 + 56);
  (*(*a2 + 24))(a2, 14, 8, a1 + 40);
  v8 = &unk_2860BB9A0;
  v9 = *(a1 + 68);
  v10 = *(a1 + 84);
  (*(*a2 + 40))(a2, 28, &v8);
  v6 = &unk_2860BB738;
  memset(v7, 0, sizeof(v7));
  for (i = *(a1 + 96); i != *(a1 + 104); i += 120)
  {
    v5 = i;
    std::vector<AccelerationStructureViewer::DataSourceQueryable *>::push_back[abi:nn200100](v7, &v5);
  }

  (*(*a2 + 40))(a2, 18, &v6);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(&v6);
}

void sub_24D875724(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(va);
  _Unwind_Resume(a1);
}

void AccelerationStructureViewer::InstanceMotionAccelerationStructure::~InstanceMotionAccelerationStructure(id *this)
{
  AccelerationStructureViewer::InvalidAccelerationStructure::~InvalidAccelerationStructure(this);

  JUMPOUT(0x2530332C0);
}

void AccelerationStructureViewer::AccelerationStructure::~AccelerationStructure(id *this)
{
  *this = &unk_2860BB850;
  v2 = this + 12;
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);

  v2 = this + 1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BB850;
  v2 = this + 12;
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);

  v2 = this + 1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

BOOL AccelerationStructureViewer::InstanceAccelerationStructure::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = AccelerationStructureViewer::AccelerationStructure::decode(a1, a2, a3, a4);
  if (result)
  {
    if (!a3)
    {
      if ((*a2 + 8) > *(a2 + 16))
      {
        result = 0;
        *(a2 + 24) = 1;
        return result;
      }

      *(a1 + 120) = *(*(a2 + 8) + *a2);
      *a2 += 8;
    }

    return 1;
  }

  return result;
}

uint64_t AccelerationStructureViewer::InstanceAccelerationStructure::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 3);
  AccelerationStructureViewer::AccelerationStructure::encode(a1, a2);
  (*(*a2 + 24))(a2, 0, 8, a1 + 120);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::InstanceAccelerationStructure::~InstanceAccelerationStructure(id *this)
{
  AccelerationStructureViewer::InvalidAccelerationStructure::~InvalidAccelerationStructure(this);

  JUMPOUT(0x2530332C0);
}

BOOL AccelerationStructureViewer::PrimitiveMotionAccelerationStructure::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = AccelerationStructureViewer::AccelerationStructure::decode(a1, a2, a3, a4);
  if (result)
  {
    if (!a3)
    {
      if ((*a2 + 8) > *(a2 + 16))
      {
        result = 0;
        *(a2 + 24) = 1;
        return result;
      }

      *(a1 + 120) = *(*(a2 + 8) + *a2);
      *a2 += 8;
    }

    return 1;
  }

  return result;
}

uint64_t AccelerationStructureViewer::PrimitiveMotionAccelerationStructure::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 17);
  AccelerationStructureViewer::AccelerationStructure::encode(a1, a2);
  (*(*a2 + 24))(a2, 0, 8, a1 + 120);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::PrimitiveMotionAccelerationStructure::~PrimitiveMotionAccelerationStructure(id *this)
{
  AccelerationStructureViewer::InvalidAccelerationStructure::~InvalidAccelerationStructure(this);

  JUMPOUT(0x2530332C0);
}

BOOL AccelerationStructureViewer::PrimitiveAccelerationStructure::decode(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = AccelerationStructureViewer::AccelerationStructure::decode(a1, a2, a3, a4);
  if (result)
  {
    if (!a3)
    {
      if ((*a2 + 8) > *(a2 + 16))
      {
        result = 0;
        *(a2 + 24) = 1;
        return result;
      }

      *(a1 + 120) = *(*(a2 + 8) + *a2);
      *a2 += 8;
    }

    return 1;
  }

  return result;
}

uint64_t AccelerationStructureViewer::PrimitiveAccelerationStructure::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 2);
  AccelerationStructureViewer::AccelerationStructure::encode(a1, a2);
  (*(*a2 + 24))(a2, 0, 8, a1 + 120);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::PrimitiveAccelerationStructure::~PrimitiveAccelerationStructure(id *this)
{
  AccelerationStructureViewer::InvalidAccelerationStructure::~InvalidAccelerationStructure(this);

  JUMPOUT(0x2530332C0);
}

uint64_t AccelerationStructureViewer::InvalidAccelerationStructure::encode(uint64_t a1, uint64_t a2)
{
  (*(*a2 + 16))(a2, 3);
  AccelerationStructureViewer::AccelerationStructure::encode(a1, a2);
  v4 = *(*a2 + 48);

  return v4(a2);
}

void AccelerationStructureViewer::InvalidAccelerationStructure::~InvalidAccelerationStructure(id *this)
{
  AccelerationStructureViewer::InvalidAccelerationStructure::~InvalidAccelerationStructure(this);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BB850;
  v2 = this + 12;
  std::vector<AccelerationStructureViewer::Property>::__destroy_vector::operator()[abi:nn200100](&v2);

  v2 = this + 1;
  std::vector<std::pair<ASVDataSourceFilterTokenType,NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](&v2);
}

void AccelerationStructureViewer::DataSourceArray_StrongRef::~DataSourceArray_StrongRef(AccelerationStructureViewer::DataSourceArray_StrongRef *this)
{
  AccelerationStructureViewer::DataSourceArray_StrongRef::~DataSourceArray_StrongRef(this);

  JUMPOUT(0x2530332C0);
}

{
  *this = &unk_2860BB770;
  v2 = *(this + 1);
  v3 = *(this + 2);
  if (v2 != v3)
  {
    do
    {
      if (*v2)
      {
        (*(**v2 + 8))(*v2);
      }

      ++v2;
    }

    while (v2 != v3);
    v2 = *(this + 1);
  }

  *(this + 2) = v2;
  *(this + 5) = *(this + 4);

  AccelerationStructureViewer::DataSourceArray::~DataSourceArray(this);
}

void AccelerationStructureViewer::DataSourceError::~DataSourceError(id *this)
{

  JUMPOUT(0x2530332C0);
}

{
}

id ASVErrorWithCode(unsigned int a1, void *a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = v3;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:@"ASV" code:a1 userInfo:v5];

  return v6;
}

uint64_t AccelerationStructureViewer::DataSourceFilterable::matches(AccelerationStructureViewer::DataSourceFilterable *this, AccelerationStructureViewer::Filter *a2)
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc_init(MEMORY[0x277CCABB8]);
  v5 = *(a2 + 2);
  v27 = a2;
  v28 = *(a2 + 3);
  if (v5 == v28)
  {
    v24 = 1;
    goto LABEL_50;
  }

  v26 = v3;
  while (2)
  {
    v30 = *(v5 + 8);
    v31 = *(v5 + 16);
    v6 = [v31 lowercaseString];
    v8 = *this;
    v7 = *(this + 1);
    while (v8 != v7)
    {
      v9 = *v8;
      v10 = v8[1];
      v11 = v10;
      if (HIWORD(v30))
      {
        v12 = v9 == HIWORD(v30);
      }

      else
      {
        v12 = 1;
      }

      if (!v12)
      {
        goto LABEL_42;
      }

      v13 = [v10 lowercaseString];
      v14 = v13;
      if (v30 <= 2u)
      {
        if (!v30)
        {
          v15 = [v13 containsString:v6];
LABEL_30:
          v21 = v15;

          if (v21)
          {
            goto LABEL_46;
          }

          goto LABEL_42;
        }

        if (v30 != 1)
        {
          if (v30 != 2)
          {
            goto LABEL_38;
          }

          v15 = [v13 isEqualToString:v6];
          goto LABEL_30;
        }

        v22 = [v13 containsString:v6];
        goto LABEL_35;
      }

      if (v30 - 4 >= 4)
      {
        if (v30 != 3)
        {
          goto LABEL_38;
        }

        v22 = [v13 isEqualToString:v6];
LABEL_35:
        v23 = v22;

        if ((v23 & 1) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_42;
      }

      v16 = [v4 numberFromString:v6];
      v17 = [v4 numberFromString:v14];
      v18 = v17;
      if (v16 && v17)
      {
        v19 = [v17 compare:v16];
      }

      else
      {
        v19 = [v14 localizedCaseInsensitiveCompare:{v6, v26}];
      }

      v20 = v19;
      if (v30 > 5u)
      {
        if (v30 != 6)
        {
          if (v30 != 7)
          {
LABEL_37:

LABEL_38:
            goto LABEL_42;
          }

          v20 = v19 + 1;
          goto LABEL_27;
        }

        if (v20 == -1)
        {
LABEL_46:

          goto LABEL_44;
        }
      }

      else
      {
        if (v30 != 4)
        {
          if (v30 != 5)
          {
            goto LABEL_37;
          }

LABEL_27:

          if (v20 < 2)
          {
            goto LABEL_46;
          }

          goto LABEL_42;
        }

        if (v20 == 1)
        {
          goto LABEL_46;
        }
      }

LABEL_42:

      v8 += 2;
    }

    if (*(v27 + 8) == 1)
    {

      v24 = 0;
      goto LABEL_49;
    }

LABEL_44:

    v5 += 24;
    if (v5 != v28)
    {
      continue;
    }

    break;
  }

  v24 = 1;
LABEL_49:
  v3 = v26;
LABEL_50:

  objc_autoreleasePoolPop(v3);
  return v24;
}

uint64_t GTUSCSamplingStreamingManagerHelper::CleanupGPURawCounters(uint64_t this)
{
  if (*(this + 16))
  {
    v1 = this;
    v2 = *(this + 24);
    *(this + 24) = 0;

    v3 = *(v1 + 16);
    *(v1 + 16) = 0;

    return GRCReleaseAllCounterSourceGroup();
  }

  return this;
}

void GTUSCSamplingStreamingManagerHelper::SetupGPURawCounters(GTUSCSamplingStreamingManagerHelper *this)
{
  v62 = *MEMORY[0x277D85DE8];
  GTUSCSamplingStreamingManagerHelper::CleanupGPURawCounters(GTUSCSamplingStreamingManagerHelper::Instance(void)::instance);
  context = objc_autoreleasePoolPush();
  v1 = GRCCopyAllCounterSourceGroup();
  v2 = xmmword_27F09BCF8;
  *&xmmword_27F09BCF8 = v1;

  if (xmmword_27F09BCF8 && [xmmword_27F09BCF8 count])
  {
    v45 = [xmmword_27F09BCF8 firstObject];
    v51 = [v45 sourceList];
    if (!v51 || ![v51 count])
    {
LABEL_69:

      goto LABEL_70;
    }

    if ((objc_opt_respondsToSelector() & 1) == 0)
    {
LABEL_36:
      v50 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
      v58 = 0u;
      v59 = 0u;
      v56 = 0u;
      v57 = 0u;
      obj = v51;
      v24 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
      if (v24)
      {
        v48 = *v57;
LABEL_38:
        v25 = 0;
        v47 = v24;
        while (1)
        {
          if (*v57 != v48)
          {
            objc_enumerationMutation(obj);
          }

          v26 = *(*(&v56 + 1) + 8 * v25);
          if (![v26 ringBufferNum])
          {

            goto LABEL_68;
          }

          v27 = [v26 name];
          v28 = [v27 containsString:@"RDE"];
          if (v28)
          {
            goto LABEL_45;
          }

          v29 = [v26 name];
          if ([v29 hasPrefix:@"Firmware"])
          {
            break;
          }

          v43 = [v26 name];
          v44 = [v43 containsString:@"APS_USC"];

          if (v44)
          {
            v30 = 1;
            goto LABEL_46;
          }

LABEL_63:
          if (++v25 == v47)
          {
            v24 = [obj countByEnumeratingWithState:&v56 objects:v61 count:16];
            if (v24)
            {
              goto LABEL_38;
            }

            goto LABEL_65;
          }
        }

LABEL_45:
        v30 = 0;
LABEL_46:
        [v50 addObject:v26];
        HIDWORD(qword_27F09C580) += v28;
        if (((v28 & 1) != 0 || [obj count] == 1) && !qword_27F09C4D8)
        {
          v31 = [MEMORY[0x277CBEB18] arrayWithCapacity:10];
          v32 = qword_27F09C4D8;
          qword_27F09C4D8 = v31;

          v33 = [v26 availableCounters];
          v54 = 0u;
          v55 = 0u;
          v52 = 0u;
          v53 = 0u;
          v34 = v33;
          v35 = [v34 countByEnumeratingWithState:&v52 objects:v60 count:16];
          if (v35)
          {
            v36 = *v53;
            do
            {
              for (i = 0; i != v35; ++i)
              {
                if (*v53 != v36)
                {
                  objc_enumerationMutation(v34);
                }

                v38 = *(*(&v52 + 1) + 8 * i);
                v39 = [v38 name];
                v40 = [v39 hasPrefix:@"GRC_SHADER_PROFILER_DATA_"];

                if (v40)
                {
                  v41 = qword_27F09C4D8;
                  v42 = [v38 name];
                  [v41 addObject:v42];
                }
              }

              v35 = [v34 countByEnumeratingWithState:&v52 objects:v60 count:16];
            }

            while (v35);
          }
        }

        else if (v30)
        {
          LODWORD(qword_27F09C588) = [v50 count] - 1;
        }

        goto LABEL_63;
      }

LABEL_65:

      if ([v50 count])
      {
        objc_storeStrong(&xmmword_27F09BCF8 + 1, v50);
        qword_27F09BD08 = [v45 sampleMarker];
      }

LABEL_68:

      goto LABEL_69;
    }

    v3 = [v45 features];
    dword_27F09C578 = GPURawCounterSupportFlags(v3);

    v4 = [v45 features];

    if (v4)
    {
      v5 = [v45 features];
      v6 = [v5 objectForKeyedSubscript:@"ConstantAGX_CoreConfig"];

      if (v6)
      {
        objc_storeStrong(&qword_27F09C4A8, v6);
      }
    }

    v7 = [v51 count];
    v8 = *(&xmmword_27F09C458 + 1);
    v9 = (*(&xmmword_27F09C458 + 1) - xmmword_27F09C458) >> 2;
    if (v7 <= v9)
    {
      if (v7 >= v9)
      {
        goto LABEL_31;
      }

      v13 = xmmword_27F09C458 + 4 * v7;
    }

    else
    {
      v10 = v7 - v9;
      if (v7 - v9 > (xmmword_27F09C468 - *(&xmmword_27F09C458 + 1)) >> 2)
      {
        if (!(v7 >> 62))
        {
          v11 = (xmmword_27F09C468 - xmmword_27F09C458) >> 1;
          if (v11 <= v7)
          {
            v11 = v7;
          }

          if (xmmword_27F09C468 - xmmword_27F09C458 >= 0x7FFFFFFFFFFFFFFCuLL)
          {
            v12 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v12 = v11;
          }

          std::__allocate_at_least[abi:nn200100]<std::allocator<AccelerationStructureViewer::IntersectionFunctionTag>>(v12);
        }

        std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
      }

      v14 = (v10 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v15 = vdupq_n_s64(v14);
      v16 = v14 - ((v10 + 0x3FFFFFFFFFFFFFFFLL) & 3);
      v17 = (*(&xmmword_27F09C458 + 1) + 8);
      v18 = -4;
      do
      {
        v19 = vdupq_n_s64(v18 + 4);
        v20 = vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_24DA8B910)));
        if (vuzp1_s16(v20, *v15.i8).u8[0])
        {
          *(v17 - 2) = 0;
        }

        if (vuzp1_s16(v20, *&v15).i8[2])
        {
          *(v17 - 1) = 0;
        }

        if (vuzp1_s16(*&v15, vmovn_s64(vcgeq_u64(v15, vorrq_s8(v19, xmmword_24DA8B900)))).i32[1])
        {
          *v17 = 0;
          v17[1] = 0;
        }

        v18 += 4;
        v17 += 4;
      }

      while (v16 != v18);
      v13 = v8 + 4 * v10;
    }

    *(&xmmword_27F09C458 + 1) = v13;
LABEL_31:
    for (j = 0; j < [v51 count]; ++j)
    {
      v22 = [v51 objectAtIndexedSubscript:j];
      if (objc_opt_respondsToSelector())
      {
        v23 = [v22 features];
        *(xmmword_27F09C458 + 4 * j) = GPURawCounterSupportFlags(v23);
      }
    }

    goto LABEL_36;
  }

LABEL_70:
  objc_autoreleasePoolPop(context);
}

uint64_t GPURawCounterSupportFlags(NSDictionary *a1)
{
  v16 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v3 = [(NSDictionary *)v1 allKeys];
    v4 = 0;
    v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v3);
          }

          v8 = [&unk_2860D5F20 objectForKeyedSubscript:*(*(&v11 + 1) + 8 * i)];
          v9 = v8;
          if (v8)
          {
            v4 = [v8 unsignedIntValue] | v4;
          }
        }

        v5 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v5);
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void *GTUSCSamplingStreamingManagerHelper::ResetSourceForPostProcessing(id *this)
{
  result = [this[3] count];
  if (result)
  {
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = [this[3] objectAtIndexedSubscript:v3];
      [v5 resetRawDataPostProcessor];

      v3 = v4;
      result = [this[3] count];
    }

    while (result > v4++);
  }

  return result;
}

uint64_t GTUSCSamplingStreamingManagerHelper::SetupSourceForDerivedCounters(id *this, NSDictionary *a2, unsigned int a3, int a4, int a5)
{
  v49[2] = *MEMORY[0x277D85DE8];
  v42 = a2;
  v9 = [this[2] firstObject];
  if (!v9)
  {
    v15 = 0;
    goto LABEL_36;
  }

  if (!a3)
  {
    if ((a4 & 1) != 0 || GTAGXPerfStateControl::IsGPUPerformanceStateInduced((this + 5)))
    {
      v10 = [this[2] firstObject];
      [v10 setOptions:&unk_2860D5CA0];
LABEL_6:

      goto LABEL_7;
    }

    v34 = *(*this + 18);
    if (v34)
    {
      GTAGXPerfStateControl::EnableConsistentGPUPerfState((this + 5), v34);
      v35 = GTApplePMPPerfStateControl::EnableConsistentPerfState((this + 8), (*(*this + 18) - 1));
      v36 = this[262];
      this[262] = v35;

      v10 = [this[2] firstObject];
      [v10 setOptions:&unk_2860D5C78];
      goto LABEL_6;
    }

    v37 = GTApplePMPPerfStateControl::EnableConsistentPerfState((this + 8), 1);
    v38 = this[262];
    this[262] = v37;

    v48[0] = @"DisableOverlap";
    v48[1] = @"LockGPUPerfState";
    v49[0] = MEMORY[0x277CBEC38];
    v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(*this + 17)];
    v49[1] = v39;
    v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
    v41 = [this[2] firstObject];
    [v41 setOptions:v40];
  }

LABEL_7:
  if (a5)
  {
    v11 = [this[2] firstObject];
    v12 = [v11 options];
    v13 = [v12 mutableCopy];

    [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"ReduceCDMCluster"];
    v14 = [this[2] firstObject];
    [v14 setOptions:v13];
  }

  else
  {
    if (!a3 || !a4)
    {
      goto LABEL_14;
    }

    v16 = [this[2] firstObject];
    v17 = [v16 options];
    v13 = [v17 mutableCopy];

    [v13 removeObjectForKey:@"ReduceCDMCluster"];
    v14 = [this[2] firstObject];
    [v14 setOptions:v13];
  }

LABEL_14:
  v18 = [(NSDictionary *)v42 objectForKeyedSubscript:@"passList"];
  v19 = [v18 objectAtIndexedSubscript:a3];

  if (v19)
  {
    v20 = 0;
    v21 = (fmax(*(this + 408) + *(this + 408), 1.0) * 10240.0);
    while (1)
    {
      if (v20 >= [this[3] count])
      {
        v15 = 1;
        goto LABEL_35;
      }

      v22 = [this[3] objectAtIndexedSubscript:v20];
      v23 = [v22 name];
      v24 = [v23 containsString:@"APS_USC"];

      if ((v24 & 1) == 0)
      {
        if (!a3)
        {
          v25 = this[238];
          if (v20 < ((this[239] - v25) >> 2) && (*&v25[4 * v20] & 0x20) != 0)
          {
            v46[0] = @"SWResetOnRead";
            v46[1] = @"RingBufferSizeInKB";
            v47[0] = MEMORY[0x277CBEC38];
            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v21];
            v47[1] = v26;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
            [v22 setOptions:v27];
          }

          else
          {
            v44 = @"RingBufferSizeInKB";
            v26 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:v21];
            v45 = v26;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v45 forKeys:&v44 count:1];
            [v22 setOptions:v27];
          }

          v28 = [v22 name];
          v29 = [v28 containsString:@"BMPR_RDE_1"];

          v30 = 258;
          if (v29)
          {
            v30 = 257;
          }

          [v22 requestTriggers:this[v30] firstErrorIndex:0];
        }

        v31 = [v19 objectAtIndexedSubscript:v20];
        if (![v31 count])
        {
          v32 = this[249];

          v31 = v32;
        }

        v43 = 0;
        if (([v22 requestCounters:v31 firstErrorIndex:&v43] & 1) == 0 || (objc_msgSend(v22, "setEnabled:", 1) & 1) == 0)
        {

          break;
        }
      }

      ++v20;
    }
  }

  v15 = 0;
LABEL_35:

LABEL_36:
  return v15;
}

void GTUSCSamplingStreamingManagerHelper::ReplaySingleFrameForUSCSampling()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v4 = v3;
  v85 = v5;
  v87 = v6;
  v7 = v0;
  v104 = *MEMORY[0x277D85DE8];
  v91 = v8;
  v88 = v2;
  v86 = [*(*v7 + 16) objectForKeyedSubscript:@"perEncoderDrawCallCount"];
  v9 = **v7;
  v10 = v9[1];
  v97 = *v9;
  v98 = v9;
  v11 = *(*v9 + 2);
  v99 = v10;
  v12 = [v10 defaultDevice];
  v13 = [v12 newEvent];

  v14 = *(v7 + 2304);
  v93 = v13;
  if (v14 > (v4[2] - *v4) >> 4)
  {
    if (!(v14 >> 60))
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v14);
    }

    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  v15 = [v10 defaultCommandQueue];
  v16 = [v15 commandBuffer];
  v96 = v11;
  v92 = v4;

  v80 = v16;
  [v16 encodeSignalEvent:v13 value:{GTUSCSamplingStreamingManagerHelper::ReplaySingleFrameForUSCSampling(std::unordered_map<unsigned int, GTEncoderSampleIndexInfo> &, std::unordered_map<unsigned int, std::vector<GTCoalescedEncoderIndexInfo>> &, std::vector<std::pair<unsigned long long, unsigned long long>> &, GTMTLFXTracingDelegate *, void({block_pointer})(void))::signalCounter}];
  [v16 commit];
  v17 = *(v98 + 22560);
  if (v97[14] + v97[13] > v17)
  {
    v81 = 0;
    v82 = 0;
    v84 = 0;
    v90 = 0;
    while (1)
    {
      v18 = *(v98 + 22564);
      v19 = objc_autoreleasePoolPush();
      v20 = *(v98 + 22560);
      v21 = *(v97[16] + 24) + (v20 << 6);
      ConstructorType = GTFenum_getConstructorType(*(v21 + 8));
      if (ConstructorType == 25)
      {
        if (std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>((v7 + 2280), v20))
        {
          v22 = [v99 defaultCommandQueue];
          v23 = [v22 commandBuffer];

          [v23 encodeWaitForEvent:v93 value:{GTUSCSamplingStreamingManagerHelper::ReplaySingleFrameForUSCSampling(std::unordered_map<unsigned int, GTEncoderSampleIndexInfo> &, std::unordered_map<unsigned int, std::vector<GTCoalescedEncoderIndexInfo>> &, std::vector<std::pair<unsigned long long, unsigned long long>> &, GTMTLFXTracingDelegate *, void({block_pointer})(void))::signalCounter++}];
          [v23 encodeSignalEvent:v93 value:?];
          v101[0] = MEMORY[0x277D85DD0];
          v101[1] = 3221225472;
          v101[2] = ___ZN35GTUSCSamplingStreamingManagerHelper31ReplaySingleFrameForUSCSamplingERNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS0_4hashIjEENS0_8equal_toIjEENS0_9allocatorINS0_4pairIKjS2_EEEEEERNS1_IjNS0_6vectorI27GTCoalescedEncoderIndexInfoNS7_ISF_EEEES4_S6_NS7_INS8_IS9_SH_EEEEEERNSE_INS8_IyyEENS7_ISM_EEEEP22GTMTLFXTracingDelegateU13block_pointerFvvE_block_invoke;
          v101[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
          v101[4] = v92;
          [v23 addCompletedHandler:v101];
          [v23 commit];
        }

        v24 = v99;
        v94 = GTMTLReplayController_restoreCommandBuffer(v98, v21);
      }

      else
      {
        v94 = 0;
        v24 = v99;
      }

      GTMTLReplayController_updateCommandEncoder(v98, v21);
      v25 = v17 | (v18 << 32);
      if (*(v7 + 2208) == -1)
      {
        goto LABEL_23;
      }

      v26 = *(v21 + 8);
      if (GTFenum_isDrawCall(v26) & 1) != 0 || (GTFenum_isComputeCall(v26))
      {
        break;
      }

      if (v26 > -15298)
      {
        v27 = v26 == -15297;
        v28 = -15059;
      }

      else
      {
        v27 = v26 == -16137;
        v28 = -15486;
      }

      if (v27 || v26 == v28)
      {
        break;
      }

      if (GTFenum_isMeshCall(v26))
      {
        break;
      }

      if (GTFenum_isSampledBlitCall(v26) || GTFenum_isSampledBlitCallAGX(v26))
      {
        [*(v7 + 1944) addSampledCallFunctionIndex:v25 forIndex:v81++ forEncoder:v84 atEncoderIndex:(*(v7 + 1928) - 1) forType:{@"Blit", v79}];
        goto LABEL_23;
      }

LABEL_24:
      if (v26 <= -16286)
      {
        if (v26 > -16355)
        {
          if (v26 <= -16353)
          {
            if (v26 == -16354)
            {
LABEL_73:
              v56 = *(v7 + 1928);
              *(v7 + 1928) = v56 + 1;
              **(v7 + 1936) = **(v7 + 1936) | (v56 << 8);
              *(v7 + 1936) += 24;
              *(v7 + 1976) += 24;
              GTMTLReplayController_defaultDispatchFunction(v98, v21);
              v57 = *(GTTraceFunc_argumentBytesWithMap(v21, *(v21 + 13), v96) + 1);
              v84 = [v24 globalTraceIdForEncoder:v57 ofType:0];
              v36 = [v24 blitCommandEncoderForKey:v57];
              GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v7, v87, v21, v84, v36, *(v7 + 1928) - 1, v25, v85);
              v81 = 0;
              goto LABEL_98;
            }

            v47 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v98 + 22560)];
            v36 = [v86 objectForKeyedSubscript:v47];

            if (!v36)
            {
              goto LABEL_97;
            }

            v48 = [v36 unsignedIntegerValue];
            v49 = *(v7 + 1928);
            *(v7 + 1928) = v49 + 1;
            **(v7 + 1936) = **(v7 + 1936) | (v49 << 8);
            *(v7 + 1936) += 24;
            v50 = GTTraceFunc_argumentBytesWithMap(v21, *(v21 + 13), v96);
            RenderPassDescriptor = GetRenderPassDescriptor();
            v79 = v50;
            v89 = [v99 commandBufferForKey:*v50];
            v52 = [v99 renderPassDescriptorMap];
            v44 = MakeMTLRenderPassDescriptor(RenderPassDescriptor, v52);

            v53 = v48;
            v54 = 2 * v48 + 2;
            v42 = [v89 sampledRenderCommandEncoderWithDescriptor:v44 programInfoBuffer:*(v7 + 1936) capacity:v54];
            GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v7, v87, v21, [v42 globalTraceObjectID], v42, *(v7 + 1928) - 1, v25, 0);
            [v99 setRenderCommandEncoder:v42 forKey:*(v79 + 1)];
            *(v7 + 1936) += 24 * v54;
            v55 = *(v7 + 1976) + 48 * v53 + 72;
LABEL_83:
            *(v7 + 1976) = v55;
LABEL_86:

            goto LABEL_98;
          }

          switch(v26)
          {
            case -16352:
              v72 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v98 + 22560)];
              v36 = [v86 objectForKeyedSubscript:v72];

              if (!v36)
              {
                goto LABEL_97;
              }

              v79 = [v36 unsignedIntegerValue];
              v73 = *(v7 + 1928);
              *(v7 + 1928) = v73 + 1;
              **(v7 + 1936) = **(v7 + 1936) | (v73 << 8);
              *(v7 + 1936) += 24;
              v74 = GTTraceFunc_argumentBytesWithMap(v21, *(v21 + 13), v96);
              v89 = [v99 commandBufferForKey:*v74];
              v42 = objc_alloc_init(MEMORY[0x277CD6D18]);
              [v42 setAllowCommandEncoderCoalescing:1];
              v44 = [v89 sampledComputeCommandEncoderWithDescriptor:v42 programInfoBuffer:*(v7 + 1936) capacity:v79];
              GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v7, v87, v21, [v44 globalTraceObjectID], v44, *(v7 + 1928) - 1, v25, v85);
              [v99 setComputeCommandEncoder:v44 forKey:*(v74 + 1)];
              *(v7 + 1936) += 24 * v79;
              *(v7 + 1976) += 24 * v79 + 24;

              goto LABEL_86;
            case -16351:
              v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v98 + 22560)];
              v36 = [v86 objectForKeyedSubscript:v61];

              if (!v36)
              {
                GTMTLReplayController_dispatchForUSCSampling(v98, v21, v99, v96, *(v7 + 1944), (*(v7 + 1928) - 1));
                v36 = 0;
                v82 = 1;
                goto LABEL_98;
              }

              v62 = [v36 unsignedIntegerValue];
              v63 = *(v7 + 1928);
              *(v7 + 1928) = v63 + 1;
              **(v7 + 1936) = **(v7 + 1936) | (v63 << 8);
              *(v7 + 1936) += 24;
              v64 = GTTraceFunc_argumentBytesWithMap(v21, *(v21 + 13), v96);
              v65 = GetRenderPassDescriptor();
              v83 = v64;
              v89 = [v99 commandBufferForKey:*v64];
              v66 = [v99 renderPassDescriptorMap];
              v44 = MakeMTLRenderPassDescriptor(v65, v66);

              v67 = v62;
              v68 = 2 * v62 + 2;
              v42 = [v89 sampledRenderCommandEncoderWithDescriptor:v44 programInfoBuffer:*(v7 + 1936) capacity:v68];
              GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v7, v87, v21, [v42 globalTraceObjectID], v42, *(v7 + 1928) - 1, v25, 0);
              [v99 setParallelRenderCommandEncoder:v42 forKey:*(v83 + 1)];
              *(v7 + 1936) += 24 * v68;
              *(v7 + 1976) += 48 * v67 + 72;
              v82 = 1;
              goto LABEL_86;
            case -16286:
              v45 = GTTraceFunc_argumentBytesWithMap(v21, *(v21 + 13), v96);
              v36 = [v24 parallelRenderCommandEncoderForKey:*v45];
              [v24 setRenderCommandEncoder:v36 forKey:*(v45 + 1)];
              goto LABEL_98;
          }

LABEL_64:
          if (v26 >> 2 == 1073737833)
          {
            GTUSCSamplingStreamingManagerHelper::DispatchExpandedIndirectCommand();
            goto LABEL_99;
          }

          goto LABEL_65;
        }

        if ((v26 + 20474) > 0x36 || ((1 << (v26 - 6)) & 0x40000020020001) == 0)
        {
          if (v26 != -16361)
          {
            if (v26 == -16355)
            {
              v36 = [*(v98 + 8) defaultCommandQueue];
              [v36 finish];
              goto LABEL_98;
            }

            goto LABEL_64;
          }

          goto LABEL_61;
        }

        if (v91)
        {
          v31 = GTTraceFunc_targetContext(v21, v97[2]);
          v32 = 0;
          v33 = *(v21 + 8);
          if (v33 > -20446)
          {
            if (v33 == -20445)
            {
              v34 = [v24 frameInterpolatorForKey:v31];
            }

            else
            {
              if (v33 != -20420)
              {
                goto LABEL_94;
              }

              v34 = [v24 temporalDenoisedScalerForKey:v31];
            }
          }

          else
          {
            if (v33 != -20474)
            {
              if (v33 == -20457)
              {
                v34 = [v24 temporalScalerForKey:v31];
                goto LABEL_93;
              }

LABEL_94:
              [v32 setTracingDelegate:{v91, v79}];
              [v91 setFunctionIndex:v25];

              v24 = v99;
              goto LABEL_65;
            }

            v34 = [v24 spatialScalerForKey:v31];
          }

LABEL_93:
          v76 = v34;
          v32 = DEVICEOBJECT(v34);

          goto LABEL_94;
        }

LABEL_65:
        GTMTLReplayController_dispatchForUSCSampling(v98, v21, v24, v96, *(v7 + 1944), (*(v7 + 1928) - 1));
        goto LABEL_99;
      }

      if (v26 > -15674)
      {
        if (v26 <= -15365)
        {
          switch(v26)
          {
            case -15673:
              goto LABEL_74;
            case -15587:
              goto LABEL_73;
            case -15586:
              v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v98 + 22560)];
              v36 = [v86 objectForKeyedSubscript:v35];

              if (v36)
              {
                v37 = [v36 unsignedIntegerValue];
                v38 = *(v7 + 1928);
                *(v7 + 1928) = v38 + 1;
                **(v7 + 1936) = **(v7 + 1936) | (v38 << 8);
                *(v7 + 1936) += 24;
                v79 = GTTraceFunc_argumentBytesWithMap(v21, *(v21 + 13), v96);
                v89 = [v99 commandBufferForKey:*v79];
                bzero(v102, 0x2BA0uLL);
                GTMTLSMCommandEncoder_processTraceFunc(v102, v21, v96);
                v39 = v103;
                v40 = [v99 computePassDescriptorMap];
                v41 = MakeMTLComputePassDescriptor(v39, v40);

                v42 = v41;
                [v42 setAllowCommandEncoderCoalescing:1];
                v43 = [v89 sampledComputeCommandEncoderWithDescriptor:v42 programInfoBuffer:*(v7 + 1936) capacity:v37];
                GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v7, v87, v21, [v43 globalTraceObjectID], v43, *(v7 + 1928) - 1, v25, v85);
                [v99 setComputeCommandEncoder:v43 forKey:*(v79 + 1)];
                *(v7 + 1936) += 24 * v37;
                *(v7 + 1976) += 24 * v37 + 24;

                v44 = v42;
                goto LABEL_86;
              }

LABEL_97:
              GTMTLReplayController_dispatchForUSCSampling(v98, v21, v99, v96, *(v7 + 1944), (*(v7 + 1928) - 1));
              v36 = 0;
LABEL_98:

              v24 = v99;
              goto LABEL_99;
          }

          goto LABEL_64;
        }

        if (v26 == -15364)
        {
LABEL_74:
          v58 = *(v7 + 1928);
          *(v7 + 1928) = v58 + 1;
          **(v7 + 1936) = **(v7 + 1936) | (v58 << 8);
          *(v7 + 1936) += 24;
          *(v7 + 1976) += 24;
          GTMTLReplayController_defaultDispatchFunction(v98, v21);
          v59 = *(GTTraceFunc_argumentBytesWithMap(v21, *(v21 + 13), v96) + 1);
          v60 = [v24 globalTraceIdForEncoder:v59 ofType:0];
          v36 = [v24 accelerationStructureCommandEncoderForKey:v59];
          GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v7, v87, v21, v60, v36, *(v7 + 1928) - 1, v25, v85);
          [*(v7 + 1944) addOtherEncoderFunctionIndex:v25 forEncoder:v60 atEncoderIndex:(*(v7 + 1928) - 1) forType:@"AccelerationStructure"];
          goto LABEL_98;
        }

        if (v26 != -15318 && v26 != -15316)
        {
          goto LABEL_64;
        }

        goto LABEL_61;
      }

      if (v26 > -16203)
      {
        if (v26 != -16202)
        {
          if (v26 == -16014)
          {
            v69 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:*(v98 + 22560)];
            v36 = [v86 objectForKeyedSubscript:v69];

            if (!v36)
            {
              goto LABEL_97;
            }

            v79 = [v36 unsignedIntegerValue];
            v70 = *(v7 + 1928);
            *(v7 + 1928) = v70 + 1;
            **(v7 + 1936) = **(v7 + 1936) | (v70 << 8);
            *(v7 + 1936) += 24;
            v71 = GTTraceFunc_argumentBytesWithMap(v21, *(v21 + 13), v96);
            v89 = [v99 commandBufferForKey:*v71];
            v42 = objc_alloc_init(MEMORY[0x277CD6D18]);
            [v42 setAllowCommandEncoderCoalescing:1];
            [v42 setDispatchType:*(v71 + 2)];
            v44 = [v89 sampledComputeCommandEncoderWithDescriptor:v42 programInfoBuffer:*(v7 + 1936) capacity:v79];
            GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(v7, v87, v21, [v44 globalTraceObjectID], v44, *(v7 + 1928) - 1, v25, v85);
            [v99 setComputeCommandEncoder:v44 forKey:*(v71 + 1)];
            *(v7 + 1936) += 24 * v79;
            v55 = *(v7 + 1976) + 24 * v79 + 24;
            goto LABEL_83;
          }

          if (v26 != -15908)
          {
            goto LABEL_64;
          }
        }

LABEL_61:
        if (!(v90 & 1 | (v88 == 0)))
        {
          v88[2]();
          v26 = *(v21 + 8);
        }

        v90 = 1;
        goto LABEL_64;
      }

      if (v26 == -16285)
      {
        goto LABEL_75;
      }

      if (v26 != -16246)
      {
        goto LABEL_64;
      }

      if ((v82 & 1) == 0)
      {
LABEL_75:
        GTMTLReplayController_dispatchForUSCSampling(v98, v21, v24, v96, *(v7 + 1944), (*(v7 + 1928) - 1));
        v82 = 0;
        goto LABEL_99;
      }

      [v24 removeRenderCommandEncoderForKey:{*GTTraceFunc_argumentBytesWithMap(v21, *(v21 + 13), v96)}];
      v82 = 1;
LABEL_99:
      if (v94)
      {
        v77 = [v24 commandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v21, *(v21 + 13), v96) + 1)}];
        [v77 encodeWaitForEvent:v93 value:{GTUSCSamplingStreamingManagerHelper::ReplaySingleFrameForUSCSampling(std::unordered_map<unsigned int, GTEncoderSampleIndexInfo> &, std::unordered_map<unsigned int, std::vector<GTCoalescedEncoderIndexInfo>> &, std::vector<std::pair<unsigned long long, unsigned long long>> &, GTMTLFXTracingDelegate *, void({block_pointer})(void))::signalCounter++}];
        [v77 encodeSignalEvent:v93 value:?];

        v24 = v99;
      }

      if (ConstructorType == 25)
      {
        v78 = [v24 commandBufferForKey:{*(GTTraceFunc_argumentBytesWithMap(v21, *(v21 + 13), v96) + 1)}];
        v100[0] = MEMORY[0x277D85DD0];
        v100[1] = 3221225472;
        v100[2] = ___ZN35GTUSCSamplingStreamingManagerHelper31ReplaySingleFrameForUSCSamplingERNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS0_4hashIjEENS0_8equal_toIjEENS0_9allocatorINS0_4pairIKjS2_EEEEEERNS1_IjNS0_6vectorI27GTCoalescedEncoderIndexInfoNS7_ISF_EEEES4_S6_NS7_INS8_IS9_SH_EEEEEERNSE_INS8_IyyEENS7_ISM_EEEEP22GTMTLFXTracingDelegateU13block_pointerFvvE_block_invoke_2;
        v100[3] = &__block_descriptor_40_e28_v16__0___MTLCommandBuffer__8l;
        v100[4] = v92;
        [v78 addCompletedHandler:v100];
      }

      objc_autoreleasePoolPop(v19);
      v17 = (*(v98 + 22560) + 1);
      *(v98 + 22560) = v17;
      if (v97[14] + v97[13] <= v17)
      {
        goto LABEL_106;
      }
    }

    [*(v7 + 1944) addSampledCallFunctionIndex:{v25, v79}];
LABEL_23:
    v26 = *(v21 + 8);
    goto LABEL_24;
  }

LABEL_106:
}

void ScopedReplayConfiguration::~ScopedReplayConfiguration(ScopedReplayConfiguration *this)
{
  if (*(this + 16) == 1)
  {
    v2 = [*(*(this + 1) + 8) defaultCommandQueue];
    [v2 setGPUPriority:1];
  }

  [g_commandBufferDescriptor setErrorOptions:*this];
}

id AddShaderBinary(NSMutableDictionary *a1, NSData *a2, objc_object *a3, void *a4, NSString *a5, void *a6, NSString *a7)
{
  v8 = a5;
  v27[1] = *MEMORY[0x277D85DE8];
  v12 = a1;
  v13 = a2;
  v14 = a3;
  v15 = a4;
  v16 = a6;
  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v18 = MEMORY[0x277CCACA8];
    v19 = crc32(0, 0, 0);
    v17 = [v18 stringWithFormat:@"%0.8x_%p", crc32(v19, -[NSData bytes](v13, "bytes"), -[NSData length](v13, "length")), v14];
  }

  v20 = v17;
  v21 = objc_autoreleasePoolPush();
  v22 = objc_opt_new();
  v23 = v22;
  if (v8)
  {
    [v22 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"dylib"];
  }

  if (v16)
  {
    [v23 setObject:v16 forKeyedSubscript:@"type"];
  }

  objc_autoreleasePoolPop(v21);
  if (v13)
  {
    v26 = @"binary";
    v27[0] = v13;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:&v26 count:1];
    [v23 addEntriesFromDictionary:v24];
  }

  [(NSMutableDictionary *)v12 setObject:v23 forKeyedSubscript:v20];

  return v20;
}

void *GTUSCSamplingStreamingManagerHelper::AllocUSCSamplingAddressBuffer(GTUSCSamplingStreamingManagerHelper *this)
{
  v2 = objc_alloc_init(ProgramAddressTableCollector);
  v3 = *(this + 243);
  *(this + 243) = v2;

  v4 = *(*this + 16);
  v5 = [v4 objectForKeyedSubscript:@"perEncoderDrawCallCount"];
  v6 = [v5 count];

  v7 = [v4 objectForKeyedSubscript:@"totalDrawCallCount"];
  v8 = [v7 unsignedIntegerValue];

  v9 = objc_alloc(MEMORY[0x277CBEB28]);
  v10 = 12 * (2 * v8 + 8 * v6);
  if (v10 <= 0x15555)
  {
    v10 = 87381;
  }

  v11 = [v9 initWithLength:24 * v10];
  v12 = *(this + 246);
  *(this + 246) = v11;

  memset([*(this + 246) mutableBytes], 255, objc_msgSend(*(this + 246), "length"));
  v13 = *(this + 246);
  v14 = v13;

  return v13;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        operator delete(v4);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v5 = *a1;
  *a1 = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void *std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(void *a1, unint64_t a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (*&v2 <= a2)
    {
      v4 = a2 % *&v2;
    }
  }

  else
  {
    v4 = (*&v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5)
  {
    return 0;
  }

  for (result = *v5; result; result = *result)
  {
    v7 = result[1];
    if (v7 == a2)
    {
      if (result[2] == a2)
      {
        return result;
      }
    }

    else
    {
      if (v3.u32[0] > 1uLL)
      {
        if (v7 >= *&v2)
        {
          v7 %= *&v2;
        }
      }

      else
      {
        v7 &= *&v2 - 1;
      }

      if (v7 != v4)
      {
        return 0;
      }
    }
  }

  return result;
}

void ___ZN35GTUSCSamplingStreamingManagerHelper31ReplaySingleFrameForUSCSamplingERNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS0_4hashIjEENS0_8equal_toIjEENS0_9allocatorINS0_4pairIKjS2_EEEEEERNS1_IjNS0_6vectorI27GTCoalescedEncoderIndexInfoNS7_ISF_EEEES4_S6_NS7_INS8_IS9_SH_EEEEEERNSE_INS8_IyyEENS7_ISM_EEEEP22GTMTLFXTracingDelegateU13block_pointerFvvE_block_invoke(uint64_t a1, void *a2)
{
  v20 = a2;
  [v20 GPUStartTime];
  v4 = NClockTimeFromCommandBufferTime(v3);
  [v20 GPUEndTime];
  v6 = NClockTimeFromCommandBufferTime(v5);
  v7 = v6;
  v8 = *(a1 + 32);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  if (v10 >= v9)
  {
    v12 = *v8;
    v13 = v10 - *v8;
    v14 = v13 >> 4;
    v15 = (v13 >> 4) + 1;
    if (v15 >> 60)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v17 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v17);
    }

    v18 = (16 * v14);
    *v18 = v4;
    v18[1] = v7;
    v11 = 16 * v14 + 16;
    memcpy(0, v12, v13);
    v19 = *v8;
    *v8 = 0;
    *(v8 + 8) = v11;
    *(v8 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v10 = v4;
    v10[1] = v6;
    v11 = (v10 + 2);
  }

  *(v8 + 8) = v11;
}

void GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, float *a8)
{
  v11 = a4;
  v77 = a4;
  v15 = a5;
  v16 = DEVICEOBJECT(v15);
  v17 = a1[546] + a1[547];
  ConstructorType = GTFenum_getConstructorType(*(a3 + 8));
  if (ConstructorType <= 27)
  {
    if (ConstructorType == 17)
    {
      if (!v11)
      {
        v11 = a7;
      }

      v73 = v11;
      *&v74 = __PAIR64__(v17, a6);
      *(&v74 + 1) = 0x200000004;
      v75 = a7;
      v76 = 0;
      std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::__emplace_unique_key_args<unsigned int,unsigned int &,GTEncoderSampleIndexInfo>(a2, v11, &v73, &v74);
      if (a8)
      {
        *&v74 = &v73;
        v31 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a8, v11, &v74);
        v32 = v31;
        v34 = v31[4];
        v33 = v31[5];
        if (v34 >= v33)
        {
          v44 = v31[3];
          v45 = v34 - v44;
          v46 = (v34 - v44) >> 4;
          v47 = v46 + 1;
          if ((v46 + 1) >> 60)
          {
            goto LABEL_97;
          }

          v48 = v33 - v44;
          if (v48 >> 3 > v47)
          {
            v47 = v48 >> 3;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFF0)
          {
            v49 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          if (v49)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v49);
          }

          v62 = v46;
          v63 = 16 * v46;
          *v63 = a6;
          *(v63 + 8) = a7;
          v35 = 16 * v46 + 16;
          v64 = (v63 - 16 * v62);
          memcpy(v64, v44, v45);
          v65 = v32[3];
          v32[3] = v64;
          v32[4] = v35;
          v32[5] = 0;
          if (v65)
          {
            operator delete(v65);
          }
        }

        else
        {
          *v34 = a6;
          *(v34 + 8) = a7;
          v35 = v34 + 16;
        }

        v32[4] = v35;
      }

      if (!a1[537] || !a1[536] || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_96;
      }

      v36 = GTSampleBufferManager::CurrentSampleBuffer((a1 + 534));
      if (!v36 || ([v16 setMTLCounterSampleLocationWithBuffer:v36 startIndex:a1[546] endIndex:(a1[546] + 1)] & 1) == 0)
      {
        if (g_runningInCI)
        {
          v66 = "#CI_ERROR# ";
        }

        else
        {
          v66 = "";
        }

        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTUSCSamplingStreamingManager.mm", "AddEncoderSamplePoints", 5681, 1, "%s%s %u: Error, fail to set counter sample location for %lu\n", v66, "void GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(std::unordered_map<uint32_t, GTEncoderSampleIndexInfo> &, const GTTraceFunc *, uint32_t, __strong id<MTLCommandEncoder>, size_t, uint64_t, std::unordered_map<uint32_t, std::vector<GTCoalescedEncoderIndexInfo>> *)", 5681, a6);
        goto LABEL_93;
      }
    }

    else
    {
      if (ConstructorType != 21)
      {
        goto LABEL_96;
      }

      *&v74 = __PAIR64__(v17, a6);
      *(&v74 + 1) = 0x200000002;
      v75 = a7;
      v76 = 0;
      std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::__emplace_unique_key_args<unsigned int,unsigned int &,GTEncoderSampleIndexInfo>(a2, v11, &v77, &v74);
      if (a8)
      {
        *&v74 = &v77;
        v21 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a8, v77, &v74);
        v22 = v21;
        v24 = v21[4];
        v23 = v21[5];
        if (v24 >= v23)
        {
          v50 = v21[3];
          v51 = v24 - v50;
          v52 = (v24 - v50) >> 4;
          v53 = v52 + 1;
          if ((v52 + 1) >> 60)
          {
            goto LABEL_97;
          }

          v54 = v23 - v50;
          if (v54 >> 3 > v53)
          {
            v53 = v54 >> 3;
          }

          if (v54 >= 0x7FFFFFFFFFFFFFF0)
          {
            v55 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v55 = v53;
          }

          if (v55)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v55);
          }

          v67 = v52;
          v68 = 16 * v52;
          *v68 = a6;
          *(v68 + 8) = a7;
          v25 = 16 * v52 + 16;
          v69 = (v68 - 16 * v67);
          memcpy(v69, v50, v51);
          v70 = v22[3];
          v22[3] = v69;
          v22[4] = v25;
          v22[5] = 0;
          if (v70)
          {
            operator delete(v70);
          }
        }

        else
        {
          *v24 = a6;
          *(v24 + 8) = a7;
          v25 = v24 + 16;
        }

        v22[4] = v25;
      }

      if (!a1[537] || !a1[536] || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_96;
      }

      v36 = GTSampleBufferManager::CurrentSampleBuffer((a1 + 534));
      if (!v36 || ([v16 setMTLCounterSampleLocationWithBuffer:v36 startIndex:a1[546] endIndex:(a1[546] + 1)] & 1) == 0)
      {
        if (g_runningInCI)
        {
          v71 = "#CI_ERROR# ";
        }

        else
        {
          v71 = "";
        }

        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTUSCSamplingStreamingManager.mm", "AddEncoderSamplePoints", 5649, 1, "%s%s %u: Error, fail to set counter sample location for %lu\n", v71, "void GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(std::unordered_map<uint32_t, GTEncoderSampleIndexInfo> &, const GTTraceFunc *, uint32_t, __strong id<MTLCommandEncoder>, size_t, uint64_t, std::unordered_map<uint32_t, std::vector<GTCoalescedEncoderIndexInfo>> *)", 5649, a6);
        goto LABEL_93;
      }
    }

LABEL_87:
    v37 = a1[546] + 2;
    goto LABEL_88;
  }

  if (ConstructorType == 28)
  {
    *&v74 = __PAIR64__(v17, a6);
    *(&v74 + 1) = 0x200000004;
    v75 = a7;
    v76 = 0;
    std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::__emplace_unique_key_args<unsigned int,unsigned int &,GTEncoderSampleIndexInfo>(a2, v11, &v77, &v74);
    if (!a8)
    {
      goto LABEL_58;
    }

    *&v74 = &v77;
    v26 = std::__hash_table<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::vector<GTCoalescedEncoderIndexInfo>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(a8, v77, &v74);
    v27 = v26;
    v29 = v26[4];
    v28 = v26[5];
    if (v29 < v28)
    {
      *v29 = a6;
      *(v29 + 8) = a7;
      v30 = v29 + 16;
LABEL_57:
      v27[4] = v30;
LABEL_58:
      if (!a1[537] || !a1[536] || (objc_opt_respondsToSelector() & 1) == 0)
      {
        goto LABEL_96;
      }

      v36 = GTSampleBufferManager::CurrentSampleBuffer((a1 + 534));
      if (!v36 || ([v16 setMTLCounterSampleLocationWithBuffer:v36 startIndex:a1[546] endIndex:(a1[546] + 1)] & 1) == 0)
      {
        if (g_runningInCI)
        {
          v61 = "#CI_ERROR# ";
        }

        else
        {
          v61 = "";
        }

        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTUSCSamplingStreamingManager.mm", "AddEncoderSamplePoints", 5620, 1, "%s%s %u: Error, fail to set counter sample location for %lu\n", v61, "void GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(std::unordered_map<uint32_t, GTEncoderSampleIndexInfo> &, const GTTraceFunc *, uint32_t, __strong id<MTLCommandEncoder>, size_t, uint64_t, std::unordered_map<uint32_t, std::vector<GTCoalescedEncoderIndexInfo>> *)", 5620, a6);
        goto LABEL_93;
      }

      goto LABEL_87;
    }

    v38 = v26[3];
    v39 = v29 - v38;
    v40 = (v29 - v38) >> 4;
    v41 = v40 + 1;
    if (!((v40 + 1) >> 60))
    {
      v42 = v28 - v38;
      if (v42 >> 3 > v41)
      {
        v41 = v42 >> 3;
      }

      if (v42 >= 0x7FFFFFFFFFFFFFF0)
      {
        v43 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v43 = v41;
      }

      if (v43)
      {
        std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v43);
      }

      v57 = v40;
      v58 = 16 * v40;
      *v58 = a6;
      *(v58 + 8) = a7;
      v30 = 16 * v40 + 16;
      v59 = (v58 - 16 * v57);
      memcpy(v59, v38, v39);
      v60 = v27[3];
      v27[3] = v59;
      v27[4] = v30;
      v27[5] = 0;
      if (v60)
      {
        operator delete(v60);
      }

      goto LABEL_57;
    }

LABEL_97:
    std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
  }

  if (ConstructorType == 65 || ConstructorType == 70)
  {
    if (objc_opt_respondsToSelector())
    {
      v19 = [v16 tileWidth];
      v20 = [v16 tileHeight];
    }

    else
    {
      v20 = 0;
      v19 = 0;
    }

    *&v74 = __PAIR64__(v17, a6);
    *(&v74 + 1) = 0x400000000;
    v75 = a7;
    v76 = __PAIR64__(v20, v19);
    std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::__emplace_unique_key_args<unsigned int,unsigned int &,GTEncoderSampleIndexInfo>(a2, v77, &v77, &v74);
    if (a1[537])
    {
      if (a1[536] && (objc_opt_respondsToSelector() & 1) != 0)
      {
        v36 = GTSampleBufferManager::CurrentSampleBuffer((a1 + 534));
        if (v36 && ([v16 setMTLCounterSampleLocationWithBuffer:v36 vertexStartIndex:a1[546] vertexEndIndex:(a1[546] + 1) fragmentStartIndex:(a1[546] + 2) fragmentEndIndex:(a1[546] + 3)] & 1) != 0)
        {
          v37 = a1[546] + 4;
LABEL_88:
          a1[546] = v37;
LABEL_95:

          goto LABEL_96;
        }

        if (g_runningInCI)
        {
          v56 = "#CI_ERROR# ";
        }

        else
        {
          v56 = "";
        }

        GTMTLReplay_handleError(101, "/Library/Caches/com.apple.xbs/Sources/GPUToolsDevice/GPUTools/GTMTLCapture/replayer/profile/GTUSCSamplingStreamingManager.mm", "AddEncoderSamplePoints", 5592, 1, "%s%s %u: Error, fail to set counter sample location for %lu\n", v56, "void GTUSCSamplingStreamingManagerHelper::AddEncoderSamplePoints(std::unordered_map<uint32_t, GTEncoderSampleIndexInfo> &, const GTTraceFunc *, uint32_t, __strong id<MTLCommandEncoder>, size_t, uint64_t, std::unordered_map<uint32_t, std::vector<GTCoalescedEncoderIndexInfo>> *)", 5592, a6);
LABEL_93:
        v72 = std::__hash_table<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,GTEncoderSampleIndexInfo>>>::find<unsigned int>(a2, v77);
        if (v72)
        {
          *(v72 + 9) = 0;
        }

        goto LABEL_95;
      }
    }
  }

LABEL_96:
}

uint64_t GTUSCSamplingStreamingManagerHelper::DispatchExpandedIndirectCommand()
{
  v0 = MEMORY[0x28223BE20]();
  v2 = v1;
  v71 = v0;
  v72 = v3;
  v5 = v4;
  v7 = v6;
  v87[1396] = *MEMORY[0x277D85DE8];
  v8 = *v6;
  p = **(v6 + 184);
  GTMTLSMContext_indirectCommandBufferResources(v83, *(v8 + 40), *v4, p);
  GetExecuteCommandsInBufferArgs(&v77, v5, *(v8 + 16));
  Object = GTMTLSMContext_getObject(**(v8 + 40), v77, *v5);
  GTMTLCreateIndirectCommandEncoder(v81, Object[14]);
  memset(v75, 0, sizeof(v75));
  v76 = 1065353216;
  v73 = *(v7 + 8);
  v10 = *(v7 + 11360);
  if (v10 == 28)
  {
    memcpy(v87, (v7 + 192), 0x2BA0uLL);
    if ((GT_SUPPORT_0 & 0x10) != 0)
    {
      v69 = v7;
      v12 = [*(v7 + 8) computeCommandEncoderForKey:{*(v7 + 200), v5}];
      v13 = v79;
      if (v79)
      {
        v14 = v78;
        v66 = v82;
        v68 = v80;
        do
        {
          v15 = v68 + v66 * v14;
          v84 = v15;
          memcpy(__dst, &v87[7], 0x8D0uLL);
          IndirectCommand = GTMTLSMComputeCommandEncoder_loadIndirectCommand(&v87[7], v81, v15, v83);
          GTMTLReplayController_restoreComputeCommandEncoder(v12, __dst, &v87[7], v73);
          v17 = v87[8];
          if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v75, v87[8]))
          {
            std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v75, v17, &v87[8]);
            v18 = [v73 computePipelineStateForKey:v87[8]];
            v19 = v18;
            if (v18)
            {
              v20 = *(v71 + 1944);
              v21 = getRenderPipelineBinaries(v18);
              [v20 addBinaries:v21];
            }
          }

          DYMTLDispatchComputeCommandEncoder(v12, v81, v15);
          if (IndirectCommand)
          {
            [*(v71 + 1944) addSampledCallFunctionIndex:*(v69 + 22560) | (v14 << 32)];
            if (v72)
            {
              v74 = 0;
              v22 = DEVICEOBJECT(v12);
              [v22 commandBatchIdRangeMin:&v74 + 4 max:&v74];

              v23 = *(v72 + 8);
              v24 = *(v72 + 16);
              if (v23 >= v24)
              {
                v26 = *v72;
                v27 = v23 - *v72;
                v28 = v27 >> 3;
                v29 = (v27 >> 3) + 1;
                if (v29 >> 61)
                {
LABEL_61:
                  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
                }

                v30 = v24 - v26;
                if (v30 >> 2 > v29)
                {
                  v29 = v30 >> 2;
                }

                if (v30 >= 0x7FFFFFFFFFFFFFF8)
                {
                  v31 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v31 = v29;
                }

                if (v31)
                {
                  std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v31);
                }

                v32 = (8 * v28);
                *v32 = HIDWORD(v74);
                v32[1] = v74;
                v25 = 8 * v28 + 8;
                memcpy(0, v26, v27);
                v33 = *v72;
                *v72 = 0;
                *(v72 + 8) = v25;
                *(v72 + 16) = 0;
                if (v33)
                {
                  operator delete(v33);
                }
              }

              else
              {
                *v23 = HIDWORD(v74);
                v23[1] = v74;
                v25 = (v23 + 2);
              }

              *(v72 + 8) = v25;
            }
          }

          v14 = (v14 + 1);
          --v13;
        }

        while (v13);
      }

      GTMTLReplayController_restoreComputeCommandEncoder(v12, &v87[7], v69 + 248, v73);
    }
  }

  else if (v10 == 70)
  {
    memcpy(v87, (v7 + 192), 0x2BA0uLL);
    v67 = [v73 executeIndirectCommandBufferMap];
    v65 = v2;
    if (*(v7 + 11360))
    {
      v11 = *(v7 + 200);
    }

    else
    {
      v11 = 0;
    }

    v70 = v7;
    v34 = [*(v7 + 8) renderCommandEncoderForKey:{v11, v5}];
    v35 = v79;
    if (v79)
    {
      v36 = v78;
      v63 = v82;
      v64 = v80;
      do
      {
        v37 = v64 + v63 * v36;
        v84 = v37;
        memcpy(__dst, &v87[7], sizeof(__dst));
        v38 = GTMTLSMRenderCommandEncoder_loadIndirectCommand(&v87[7], v81, v37, v83);
        GTMTLReplayController_restoreRenderCommandEncoder(v34, __dst, &v87[7], v73);
        v39 = [v73 renderPipelineStateForKey:v87[1075]];
        v40 = v87[1075];
        if (!std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::find<unsigned long long>(v75, v87[1075]))
        {
          std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::__emplace_unique_key_args<unsigned long long,unsigned long long const&>(v75, v40, &v87[1075]);
          v41 = [v73 renderPipelineStateForKey:v87[1075]];
          v42 = v41;
          if (v41)
          {
            v43 = *(v71 + 1944);
            v44 = getRenderPipelineBinaries(v41);
            [v43 addBinaries:v44];
          }
        }

        if (((v65 != 0) & v38) != 1 || (v45 = *v65, *v65 == -1) || (*v65 = v45 - 1, v45))
        {
          v46 = 0;
          v47 = 0;
        }

        else
        {
          v46 = GTUSCSamplingStreamingManagerHelper::RenderDummyDrawCall(v71, v70, v34, 0, v87[1075], v62);
          [v34 setRenderPipelineState:v39];
          v47 = 1;
        }

        DYMTLDrawRenderCommandEncoder(v34, v81, v37, v83, v67);
        if (v38)
        {
          [*(v71 + 1944) addSampledCallFunctionIndex:*(v70 + 22560) | (v36 << 32)];
          if (v72)
          {
            v74 = 0;
            v48 = DEVICEOBJECT(v34);
            [v48 commandBatchIdRangeMin:&v74 + 4 max:&v74];

            v49 = *(v72 + 8);
            v50 = *(v72 + 16);
            if (v49 >= v50)
            {
              v53 = *v72;
              v54 = v49 - *v72;
              v55 = v54 >> 3;
              v56 = (v54 >> 3) + 1;
              if (v56 >> 61)
              {
                goto LABEL_61;
              }

              v57 = v50 - v53;
              if (v57 >> 2 > v56)
              {
                v56 = v57 >> 2;
              }

              if (v57 >= 0x7FFFFFFFFFFFFFF8)
              {
                v58 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v58 = v56;
              }

              if (v58)
              {
                std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned int,unsigned int>>>(v58);
              }

              v59 = (8 * v55);
              *v59 = HIDWORD(v74);
              v59[1] = v74;
              v51 = 8 * v55 + 8;
              memcpy(0, v53, v54);
              v60 = *v72;
              *v72 = 0;
              *(v72 + 8) = v51;
              *(v72 + 16) = 0;
              if (v60)
              {
                operator delete(v60);
              }
            }

            else
            {
              *v49 = HIDWORD(v74);
              v49[1] = v74;
              v51 = (v49 + 2);
            }

            *(v72 + 8) = v51;
          }

          else if (v47)
          {
            v52 = GTUSCSamplingStreamingManagerHelper::RenderDummyDrawCall(v71, v70, v34, v46, v87[1075], v62);
            [v34 setRenderPipelineState:v39];
          }
        }

        v36 = (v36 + 1);
        --v35;
      }

      while (v35);
    }

    GTMTLReplayController_restoreRenderCommandEncoder(v34, &v87[7], v70 + 248, v73);
  }

  apr_pool_clear(p);

  return std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(v75);
}

void sub_24D87A104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, ...)
{
  va_start(va, a18);

  std::__hash_table<unsigned long long,std::hash<unsigned long long>,std::equal_to<unsigned long long>,std::allocator<unsigned long long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void ___ZN35GTUSCSamplingStreamingManagerHelper31ReplaySingleFrameForUSCSamplingERNSt3__113unordered_mapIj24GTEncoderSampleIndexInfoNS0_4hashIjEENS0_8equal_toIjEENS0_9allocatorINS0_4pairIKjS2_EEEEEERNS1_IjNS0_6vectorI27GTCoalescedEncoderIndexInfoNS7_ISF_EEEES4_S6_NS7_INS8_IS9_SH_EEEEEERNSE_INS8_IyyEENS7_ISM_EEEEP22GTMTLFXTracingDelegateU13block_pointerFvvE_block_invoke_2(uint64_t a1, void *a2)
{
  v20 = a2;
  [v20 GPUStartTime];
  v4 = NClockTimeFromCommandBufferTime(v3);
  [v20 GPUEndTime];
  v6 = NClockTimeFromCommandBufferTime(v5);
  v7 = v6;
  v8 = *(a1 + 32);
  v10 = *(v8 + 8);
  v9 = *(v8 + 16);
  if (v10 >= v9)
  {
    v12 = *v8;
    v13 = v10 - *v8;
    v14 = v13 >> 4;
    v15 = (v13 >> 4) + 1;
    if (v15 >> 60)
    {
      std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
    }

    v16 = v9 - v12;
    if (v16 >> 3 > v15)
    {
      v15 = v16 >> 3;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFF0)
    {
      v17 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v15;
    }

    if (v17)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(v17);
    }

    v18 = (16 * v14);
    *v18 = v4;
    v18[1] = v7;
    v11 = 16 * v14 + 16;
    memcpy(0, v12, v13);
    v19 = *v8;
    *v8 = 0;
    *(v8 + 8) = v11;
    *(v8 + 16) = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  else
  {
    *v10 = v4;
    v10[1] = v6;
    v11 = (v10 + 2);
  }

  *(v8 + 8) = v11;
}

unint64_t NClockTimeFromCommandBufferTime(double a1)
{
  v2 = dword_27F09BCE0;
  if (!dword_27F09BCE0)
  {
    mach_timebase_info(&NClockTimeFromCommandBufferTime(double)::timebaseInfo);
    v2 = dword_27F09BCE0;
  }

  return (v2 * a1 * 1000000000.0 / (NClockTimeFromCommandBufferTime(double)::timebaseInfo | 0x41CDCD6500000000uLL));
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<std::pair<unsigned long long,unsigned long long>>>(unint64_t a1)
{
  if (!(a1 >> 60))
  {
    operator new();
  }

  std::vector<AccelerationStructureViewer::IntersectionFunction>::__throw_length_error[abi:nn200100]();
}

id GTUSCSamplingStreamingManagerHelper::RenderDummyDrawCall(void *a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a3;
  v12 = a4;
  if (v12)
  {
    goto LABEL_2;
  }

  Object = GTMTLSMContext_getObject(**(*a2 + 40), a5, *a6);
  v16 = *(**a1 + 8);
  if (!a1[291])
  {
    v17 = [*(**a1 + 8) defaultDevice];
    v36.i64[0] = 0;
    v18 = [v17 newLibraryWithSource:@"#include <metal_stdlib>\n\nusing namespace metal;\n\nstruct TransformMatrices\n{\n    float4 modelview_projection_matrix[4];\n};\n\nstruct VertexOutput\n{\n    float4 pos [[position]];\n    float4 color;\n};\n\nvertex VertexOutput defaultVertexProgram(uint vid [[ vertex_id ]])\n{\n    VertexOutput out;\n\n    out.pos   = float4(0.0 options:0.0 error:{0.0, 1.0);\n    out.color = float4(0.0, 0.0, 0.0, 1.0);\n\n    return out;\n}\n\nvertex void rasterizationDisabledVertexProgram(uint vid [[ vertex_id ]])\n{\n}\n\nfragment float4 defaultFragmentProgram(VertexOutput vo [[ stage_in ]])\n{\n    return float4(vo.color.bgr, 1.0f);\n}\n\nkernel void defaultKernel()\n{\n\n}\n\n", 0, &v36}];
    v19 = v36.i64[0];

    v20 = [v18 newFunctionWithName:@"defaultVertexProgram"];
    v21 = a1[291];
    a1[291] = v20;

    v22 = [v18 newFunctionWithName:@"defaultFragmentProgram"];
    v23 = a1[290];
    a1[290] = v22;

    v24 = [v18 newFunctionWithName:@"rasterizationDisabledVertexProgram"];
    v25 = a1[292];
    a1[292] = v24;

    v26 = [v18 newFunctionWithName:@"defaultKernel"];
    v27 = a1[293];
    a1[293] = v26;
  }

  v28 = Object[6];
  if (!v28)
  {
    v31 = Object[8];
    if (v31 && a1[293])
    {
      v32 = [v16 renderPipelineDescriptorMap];
      v30 = MakeMTLTileRenderPipelineDescriptor(v31, v32);

      [v30 setTileFunction:a1[293]];
      v33 = [*(**a1 + 8) defaultDevice];
      v34 = [v33 newRenderPipelineStateWithTileDescriptor:v30 options:0 reflection:0 error:0];
      goto LABEL_26;
    }

LABEL_20:

    v12 = 0;
    goto LABEL_21;
  }

  if (!a1[291] || !a1[290])
  {
    goto LABEL_20;
  }

  v29 = [v16 renderPipelineDescriptorMap];
  v30 = MakeMTLRenderPipelineDescriptorWithoutResourceIndex(v28, v29);

  if ([v30 isRasterizationEnabled])
  {
    [v30 setVertexFunction:a1[291]];
    [v30 setFragmentFunction:a1[290]];
  }

  else
  {
    [v30 setVertexFunction:a1[292]];
  }

  v33 = [v16 defaultDevice];
  v34 = [v33 newRenderPipelineStateWithDescriptor:v30 error:0];
LABEL_26:
  v12 = v34;

  if (!v12)
  {
    goto LABEL_21;
  }

LABEL_2:
  [v11 setRenderPipelineState:v12];
  v13 = *(a6 + 8);
  if (v13 > -15298)
  {
    if (v13 != -15059)
    {
      v14 = -15297;
      goto LABEL_14;
    }

LABEL_15:
    v36 = vdupq_n_s64(1uLL);
    v37 = 1;
    [v11 dispatchThreadsPerTile:&v36];
    goto LABEL_21;
  }

  if (v13 == -16137)
  {
    goto LABEL_15;
  }

  v14 = -15486;
LABEL_14:
  if (v13 == v14)
  {
    goto LABEL_15;
  }

  [v11 drawPrimitives:3 vertexStart:0 vertexCount:0 instanceCount:1];
LABEL_21:

  return v12;
}