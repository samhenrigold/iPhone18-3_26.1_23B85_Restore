uint64_t std::deque<ContextStack>::push_back(unint64_t *a1, uint64_t *a2)
{
  v4 = a1[2];
  v5 = a1[1];
  v6 = 73 * ((v4 - v5) >> 3) - 1;
  if (v4 == v5)
  {
    v6 = 0;
  }

  v7 = a1[5] + a1[4];
  if (v6 == v7)
  {
    std::deque<ContextStack>::__add_back_capacity(a1);
    v5 = a1[1];
    v7 = a1[5] + a1[4];
  }

  v8 = *a2;
  v9 = *(v5 + 8 * (v7 / 0x49)) + 56 * (v7 % 0x49);
  *(v9 + 8) = *(a2 + 8);
  *v9 = v8;
  result = std::unordered_map<unsigned long,MTLStructTypeInternal *>::unordered_map(v9 + 16, (a2 + 2));
  ++a1[5];
  return result;
}

void std::deque<ContextStack>::__add_back_capacity(unint64_t *a1)
{
  v1 = a1[4];
  v2 = v1 >= 0x49;
  v3 = v1 - 73;
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
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(a1, v8);
  }

  a1[4] = v3;
  v4 = a1[1];
  *&v9 = *v4;
  a1[1] = (v4 + 1);
  std::__split_buffer<ContextStack *>::emplace_back<ContextStack *&>(a1, &v9);
}

void sub_185BB983C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, uint64_t a13)
{
  operator delete(v13);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::unordered_map<unsigned long,MTLStructTypeInternal *>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::__unordered_map_hasher<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,key_hash,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,true>,std::__unordered_map_equal<std::tuple<std::string,unsigned int,unsigned int>,std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>,std::equal_to<std::tuple<std::string,unsigned int,unsigned int>>,key_hash,true>,std::allocator<std::__hash_value_type<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,MTLStructTypeInternal *> const&>(a1, i + 2, i + 1);
  }

  return a1;
}

void std::__split_buffer<ContextStack *>::emplace_back<ContextStack *>(unint64_t *a1, void *a2)
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

      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLSerializer::ObjectSerializer *>>(a1[4], v11);
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

uint64_t AirReflection::Node::node_as_BufferArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 0x40000)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t ReflectionDeserializeContext::getStructForId(ReflectionDeserializeContext *this, unint64_t a2)
{
  v13 = a2;
  v3 = *(this + 4);
  v4 = *(this + 1);
  v5 = *(this + 2);
  v6 = (v4 + 8 * (v3 / 0x49));
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = *v6 + 56 * (v3 % 0x49);
  }

  while (1)
  {
    if (v5 == v4)
    {
      v9 = 0;
    }

    else
    {
      v8 = *(this + 5) + *(this + 4);
      v9 = *(v4 + 8 * (v8 / 0x49)) + 56 * (v8 % 0x49);
    }

    if (v7 == v9)
    {
      return 0;
    }

    v10 = std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::find<unsigned long>((v7 + 16), &v13);
    if (v10)
    {
      break;
    }

    v7 += 56;
    if (v7 - *v6 == 4088)
    {
      v11 = v6[1];
      ++v6;
      v7 = v11;
    }

    v4 = *(this + 1);
    v5 = *(this + 2);
  }

  return v10[3];
}

MTLStructTypeInternal *deserializeStructArgument(void *a1, unsigned int *a2, uint64_t a3, ReflectionDeserializeContext *a4, _BYTE *a5)
{
  v8 = a3 + 4;
  v9 = (a3 + 4 + 4 * *a2);
  v10 = AirReflection::Node::node_as_StructTypeInfo((v9 + *v9));
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  StructForId = ReflectionDeserializeContext::getStructForId(a4, *a2);
  if (StructForId)
  {
    if (a5)
    {
      *a5 = 0;
    }

    return StructForId;
  }

  v15 = [MTLStructTypeInternal alloc];
  v16 = *(a4 + 5) + *(a4 + 4) - 1;
  v17 = *(*(a4 + 1) + 8 * (v16 / 0x49)) + 56 * (v16 % 0x49);
  *&v134 = *a2;
  *(&v134 + 1) = v15;
  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,MTLStructTypeInternal *>>((v17 + 16), &v134, &v134);
  v18 = (v11 - *v11);
  if (*v18 < 5u || (v19 = v18[2]) == 0)
  {
    v24 = 0;
    goto LABEL_20;
  }

  v20 = v11 + v19;
  v21 = *(v11 + v19);
  v22 = *(v11 + v19 + v21);
  v23 = malloc_type_calloc(v22, 8uLL, 0x80040B8603338uLL);
  v24 = v23;
  if (!v22)
  {
LABEL_20:
    v14 = [(MTLStructTypeInternal *)v15 initWithMembers:v24 count:0];
    v30 = 0;
    goto LABEL_21;
  }

  v25 = 0;
  v26 = v11 + v21 + v19 + 24;
  v124 = a4;
  v121 = v15;
  v122 = v8;
  while (1)
  {
    v27 = *(v26 - 20) - *(v26 + *(v26 - 20) - 20);
    v28 = *(v26 + v27 - 20);
    if (v28 >= 0x13 && (*(v26 + v27 - 2) || v28 >= 0x15 && *(v26 + v27)))
    {
      break;
    }

    ++v25;
    v26 += 4;
    if (v25 >= v22)
    {
      v29 = 0;
      goto LABEL_24;
    }
  }

  v29 = 1;
LABEL_24:
  v31 = 0;
  v123 = v29;
  v126 = v23;
  v127 = v29;
  v32 = v11 + v19 + 8;
  v125 = v22;
  do
  {
    v33 = *&v20[v21 + 4];
    v34 = &v20[v21 + v33];
    v35 = v33 + *&v20[v21 + 16 + v33 - *(v34 + 1)];
    v36 = v35 + *&v20[v21 + 4 + v35];
    v37 = strlen(&v20[v21 + 8 + v36]);
    v38 = pixelFormatAndALUTypeFromString((v21 + v32 + v36), v37);
    v39 = v33 - *(v34 + 1);
    v40 = &v20[v21 + v39];
    v41 = *(v40 + 2);
    v132 = v38;
    if (v41 >= 0x15)
    {
      if (*(v40 + 12))
      {
        v42 = *&v20[v21 + 4 + v33 + *(v40 + 12)];
      }

      else
      {
LABEL_29:
        v42 = 0;
      }

      v43 = &v20[v21 + v39];
      if (*(v43 + 11))
      {
        *&v134 = 0;
        if (*(v43 + 11))
        {
          v44 = &v20[v21 + 4 + v33 + *(v43 + 11)];
        }

        else
        {
          v44 = 0;
        }

        deserializeArgument(a1, v44, a3, v124, &v134);
        v45 = v134;
        if (v134)
        {
          v46 = v134;
          v131 = [v45 index];
          v47 = 57;
        }

        else
        {
          v131 = v42;
          v53 = &v20[v21];
          v54 = v33 + *&v20[v21 + 16 + v33 - *(v34 + 1)];
          v55 = v54 + *&v20[v21 + 4 + v54];
          v56 = strlen(&v20[v21 + 8 + v55]);
          if (!dataTypeFromString((v21 + v32 + v55), v56))
          {
            v46 = 0;
            v133 = 0;
            goto LABEL_45;
          }

          v57 = v33 + *&v53[v33 - *(v34 + 1) + 16];
          v58 = v57 + *&v53[v57 + 4];
          v59 = strlen(&v53[v58 + 8]);
          v60 = dataTypeFromString((v21 + v32 + v58), v59);
          v46 = 0;
          v47 = v60;
        }

        v133 = v47;
LABEL_45:

        goto LABEL_51;
      }

      goto LABEL_38;
    }

    if (v41 >= 0x13)
    {
      goto LABEL_29;
    }

    if (v41 < 5)
    {
      v46 = 0;
      v131 = 0;
      goto LABEL_50;
    }

    v42 = 0;
LABEL_38:
    v131 = v42;
    if (!*&v20[v21 + 8 + v39])
    {
      v46 = 0;
LABEL_50:
      v133 = 0;
      goto LABEL_51;
    }

    v48 = *(v124 + 5) + *(v124 + 4) - 1;
    v49 = *(*(*(v124 + 1) + 8 * (v48 / 0x49)) + 56 * (v48 % 0x49));
    memset(v135, 0, sizeof(v135));
    v136 = 1065353216;
    *&v134 = v49;
    BYTE8(v134) = 1;
    memset(v137, 0, sizeof(v137));
    v138 = 1065353216;
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(v135, v137);
    std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(v137);
    std::deque<ContextStack>::push_back(v124, &v134);
    ContextStack::~ContextStack(&v134);
    v50 = &v20[v21 + v33 - *(v34 + 1)];
    if (*(v50 + 2) >= 5u && (v51 = *(v50 + 4)) != 0)
    {
      v52 = &v20[v21 + 4 + v33 + v51];
    }

    else
    {
      v52 = 0;
    }

    v46 = deserializeStructArgument(a1, v52, a3, v124, 0);
    std::deque<ContextStack>::pop_back(v124);
    v133 = 1;
LABEL_51:
    v61 = *(v34 + 1);
    v62 = &v20[v21];
    if (*&v20[v21 + 4 + v33 - v61] < 5u)
    {
      v63 = v127;
    }

    else
    {
      v63 = v127;
      if (*&v62[v33 - v61 + 8])
      {
        v64 = (v122 + 4 * *&v20[v21 + 4 + v33 + *&v62[v33 - v61 + 8]]);
        v65 = AirReflection::Node::node_as_StructTypeInfo((v64 + *v64));
        v66 = (v65 - *v65);
        if (*v66 >= 5u && (v67 = v66[2]) != 0)
        {
          v68 = (v65 + v67 + *(v65 + v67));
        }

        else
        {
          v68 = 0;
        }

        StructIndirectArgumentIndexStride = getStructIndirectArgumentIndexStride(v68, a3);
        v61 = *(v34 + 1);
        v63 = v127;
        if (StructIndirectArgumentIndexStride > v123)
        {
          v70 = (v122 + 4 * *&v20[v21 + 4 + v33 + *&v20[v21 + 8 + v33 - *(v34 + 1)]]);
          v71 = AirReflection::Node::node_as_StructTypeInfo((v70 + *v70));
          v72 = (v71 - *v71);
          if (*v72 >= 5u && (v73 = v72[2]) != 0)
          {
            v74 = (v71 + v73 + *(v71 + v73));
          }

          else
          {
            v74 = 0;
          }

          v63 = getStructIndirectArgumentIndexStride(v74, a3);
          v61 = *(v34 + 1);
        }
      }
    }

    if (!*&v62[v33 - v61 + 14] || (v75 = *&v20[v21 + 4 + v33 + *&v62[v33 - v61 + 14]], !v75))
    {
      v76 = v33 + *&v20[v21 + 16 + v33 - v61];
      v77 = v76 + *&v20[v21 + 4 + v76];
      v78 = strlen(&v20[v21 + 8 + v77]);
      v75 = arraySizeFromTypeName((v21 + v32 + v77), v78);
    }

    v79 = HIDWORD(v132);
    v132 = v132;
    v130 = v31;
    if (v75 >= 1)
    {
      if (v46)
      {
        v80 = [MTLArrayTypeInternal alloc];
        v81 = &v20[v21 + v33 - *(v34 + 1)];
        if (*(v81 + 2) >= 9u && (v82 = *(v81 + 6)) != 0)
        {
          v83 = *&v20[v21 + 4 + v33 + v82];
        }

        else
        {
          v83 = 0;
        }

        v84 = [(MTLArrayTypeInternal *)v80 initWithArrayLength:v75 elementType:v133 stride:v83 pixelFormat:v132 aluType:v79 details:v46];

        if (!v63)
        {
          goto LABEL_75;
        }
      }

      else
      {
        v99 = v79;
        v100 = v133;
        if (!v133)
        {
          v101 = v33 + *&v20[v21 + 16 + v33 - *(v34 + 1)];
          v102 = v101 + *&v20[v21 + 4 + v101];
          v103 = strlen(&v20[v21 + 8 + v102]);
          v100 = dataTypeFromString((v21 + v32 + v102), v103);
        }

        v104 = [MTLArrayTypeInternal alloc];
        v105 = &v20[v21 + v33 - *(v34 + 1)];
        if (*(v105 + 2) >= 9u && (v106 = *(v105 + 6)) != 0)
        {
          v107 = *&v20[v21 + 4 + v33 + v106];
        }

        else
        {
          v107 = 0;
        }

        v84 = [(MTLArrayTypeInternal *)v104 initWithArrayLength:v75 elementType:v100 stride:v107 pixelFormat:v132 aluType:v99 details:0];
        if (!v63)
        {
          goto LABEL_75;
        }
      }

      [(MTLArrayTypeInternal *)v84 setArgumentIndexStride:v63];
LABEL_75:
      [(MTLArrayTypeInternal *)v84 setIsIndirectArgumentBuffer:v123];
      v79 = 0;
      v46 = v84;
      v132 = 0;
      v133 = 2;
    }

    v85 = *(v34 + 1);
    v86 = -v85;
    v87 = v33 - v85;
    v88 = &v20[v21 + v87];
    v89 = v79;
    if (!v88[4])
    {
      v90 = v88[2];
      v91 = v88[7];
      if ((!v91 || !*&v20[v21 + 4 + v33 + v91]) && (v90 < 0x13 || !*&v20[v21 + 22 + v87]))
      {
        v92 = v33 + *&v20[v21 + 16 + v87];
        v93 = v92 + *&v20[v21 + 4 + v92];
        v94 = strlen(&v20[v21 + 8 + v93]);
        v133 = dataTypeFromString((v21 + v32 + v93), v94);
        v86 = -*(v34 + 1);
      }
    }

    v95 = *&v20[v21 + 4 + v33 + v86];
    if (v95 < 0xF)
    {
LABEL_94:
      v98 = &stru_1EF478240;
      goto LABEL_95;
    }

    if (*&v20[v21 + 18 + v86 + v33])
    {
      v96 = *&v20[v21 + 18 + v86 + v33];
      v97 = [MEMORY[0x1E696AEC0] stringWithUTF8String:&v20[v21 + 8 + v33 + v96 + *&v20[v21 + 4 + v33 + v96]]];
    }

    else
    {
      if (v95 < 0x11 || !*&v20[v21 + 20 + v86 + v33])
      {
        goto LABEL_94;
      }

      v108 = *&v20[v21 + 20 + v86 + v33];
      v97 = [MEMORY[0x1E696AEC0] stringWithFormat:@"user(%s)", &v20[v21 + 8 + v33 + v108 + *&v20[v21 + 4 + v33 + v108]]];
    }

    v98 = v97;
LABEL_95:
    v109 = &v20[v21 + v33 - *(v34 + 1)];
    if (*(v109 + 2) >= 7u && (v110 = *(v109 + 5)) != 0)
    {
      v111 = *&v20[v21 + 4 + v33 + v110];
    }

    else
    {
      v111 = 0;
    }

    v112 = [MTLStructMemberInternal alloc];
    v113 = v33 - *(v34 + 1);
    v114 = *&v20[v21 + 4 + v113];
    if (v114 < 0x19)
    {
      v116 = 0xFFFFFFFFLL;
      v117 = 0xFFFFFFFFLL;
      v24 = v126;
      v115 = v89;
      v118 = v130;
      if (v114 < 0x17)
      {
        goto LABEL_109;
      }
    }

    else
    {
      v24 = v126;
      v115 = v89;
      if (*&v20[v21 + 28 + v113])
      {
        v116 = *&v20[v21 + 4 + v33 + *&v20[v21 + 28 + v113]];
      }

      else
      {
        v116 = 0xFFFFFFFFLL;
      }

      v118 = v130;
    }

    v119 = *&v20[v21 + 26 + v113];
    if (v119)
    {
      v117 = *&v20[v21 + 4 + v33 + v119];
    }

    else
    {
      v117 = 0xFFFFFFFFLL;
    }

LABEL_109:
    v24[v118] = [(MTLStructMemberInternal *)v112 initWithName:v98 offset:v111 dataType:v133 pixelFormat:v132 aluType:v115 indirectArgumentIndex:v131 render_target:v116 raster_order_group:v117 details:v46];
    if (v46)
    {
    }

    v31 = v118 + 1;
    v20 += 4;
    v32 += 4;
  }

  while (v125 != v31);
  v14 = [(MTLStructTypeInternal *)v121 initWithMembers:v24 count:v125];
  for (i = 0; i != v125; ++i)
  {
  }

  v30 = v123;
LABEL_21:
  free(v24);
  [(MTLStructTypeInternal *)v14 setIsIndirectArgumentBuffer:v30];
  return v14;
}

void sub_185BBA5F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, ...)
{
  va_start(va, a25);
  ContextStack::~ContextStack(va);
  _Unwind_Resume(a1);
}

void ContextStack::~ContextStack(ContextStack *this)
{
  for (i = (this + 32); ; i[3])
  {
    i = *i;
    if (!i)
    {
      break;
    }
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 16);
}

void *std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__emplace_unique_key_args<unsigned long,std::pair<unsigned long const,MTLStructTypeInternal *>>(void *a1, unint64_t *a2, _OWORD *a3)
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

uint64_t arraySizeFromTypeName(void *__src, size_t __len)
{
  v14 = *MEMORY[0x1E69E9840];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v11 = __len;
  if (__len)
  {
    memmove(&v10, __src, __len);
  }

  *(&v10 + __len) = 0;
  v3 = v11;
  v4 = v10;
  if (v11 >= 0)
  {
    v5 = &v10;
  }

  else
  {
    v5 = v10;
  }

  v12[0] = 0;
  v13 = v5;
  v12[1] = strlen(v5);
  NextToken = BasicParser::getNextToken(v12);
  if (!strcmp(NextToken, "array"))
  {
    v8 = 0;
    if ((v3 & 0x80000000) == 0)
    {
      return v8;
    }

    goto LABEL_13;
  }

  do
  {
    v7 = NextToken;
    NextToken = BasicParser::getNextToken(v12);
  }

  while (NextToken);
  v8 = atol(v7);
  if (v3 < 0)
  {
LABEL_13:
    operator delete(v4);
  }

  return v8;
}

uint64_t std::deque<ContextStack>::pop_back(void *a1)
{
  v2 = a1[5] + a1[4] - 1;
  ContextStack::~ContextStack((*(a1[1] + 8 * (v2 / 0x49)) + 56 * (v2 % 0x49)));
  --a1[5];

  return std::deque<ContextStack>::__maybe_remove_back_spare[abi:ne200100](a1, 1);
}

uint64_t std::deque<ContextStack>::__maybe_remove_back_spare[abi:ne200100](void *a1, int a2)
{
  v3 = a1[1];
  v2 = a1[2];
  if (v2 == v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = 73 * ((v2 - v3) >> 3) - 1;
  }

  v5 = v4 - (a1[5] + a1[4]);
  if (v5 < 0x49)
  {
    a2 = 1;
  }

  if (v5 < 0x92)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if ((v7 & 1) == 0)
  {
    operator delete(*(v2 - 8));
    a1[2] -= 8;
  }

  return v7 ^ 1u;
}

uint64_t textureTypeFromString(void *__src, size_t __len, _DWORD *a3, _BYTE *a4)
{
  v24 = *MEMORY[0x1E69E9840];
  if (__len >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (__len >= 0x17)
  {
    operator new();
  }

  v19 = __len;
  if (__len)
  {
    memmove(&__dst, __src, __len);
  }

  *(&__dst + __len) = 0;
  if (v19 >= 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst;
  }

  v22[0] = 0;
  v23 = p_dst;
  v22[1] = strlen(p_dst);
  NextToken = BasicParser::getNextToken(v22);
  if (!strcmp(NextToken, "array"))
  {
    NextToken = BasicParser::getNextToken(v22);
  }

  if (atomic_load_explicit(&textureTypeMapOnce, memory_order_acquire) != -1)
  {
    __p[0] = &v20;
    v21 = __p;
    std::__call_once(&textureTypeMapOnce, &v21, std::__call_once_proxy[abi:ne200100]<std::tuple<textureTypeMap(void)::$_0 &&>>);
  }

  v9 = textureTypeMap(void)::nonGlobalTextureTypeMap;
  std::string::basic_string[abi:ne200100]<0>(__p, NextToken);
  v10 = std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::find<std::string>(v9, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v11 = *(v10 + 56);
  *a4 = *(v10 + 60);
  v12 = BasicParser::getNextToken(v22);
  v13 = bufferTypeMap();
  std::string::basic_string[abi:ne200100]<0>(__p, v12);
  v14 = std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::find<std::string>(v13, __p);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  *a3 = *(v14 + 60);
  if (v19 < 0)
  {
    operator delete(__dst);
  }

  return v11;
}

void sub_185BBAD5C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AirReflection::Node::node_as_TextureArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262146) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

void std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(a1, v10);
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

void std::__allocate_at_least[abi:ne200100]<std::allocator<objc_object  {objcproto18MTLIOScratchBuffer}*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *flatbuffers::String::str@<X0>(uint64_t *__return_ptr a1@<X8>, uint64_t *this@<X0>)
{
  v3 = *this;
  if (v3 >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = v3;
  if (v3)
  {
    this = memcpy(a1, this + 4, v3);
  }

  *(a1 + v3) = 0;
  return this;
}

uint64_t arrayIsIndirectArgumentBuffer(void *a1)
{
  while (1)
  {
    v1 = a1;
    v2 = [a1 elementType];
    if (v2 != 2)
    {
      break;
    }

    a1 = [v1 elementArrayType];
  }

  if ((v2 - 57) < 4 || (v2 - 78) <= 0x3D && ((1 << (v2 - 78)) & 0x2000000000000007) != 0)
  {
    return 1;
  }

  if (v2 != 1)
  {
    return 0;
  }

  v4 = [v1 elementStructType];

  return structIsIndirectArgumentBuffer(v4);
}

uint64_t deserializeGlobalBindings(void *a1, unsigned int *a2, unint64_t *a3, uint64_t a4, void **a5)
{
  if (a2 && (v10 = *a2, *a5 = malloc_type_malloc(8 * v10, 0x80040B8603338uLL), v10))
  {
    v11 = 0;
    LODWORD(v12) = 0;
    LODWORD(v13) = 0;
    v14 = a2 + 1;
    do
    {
      v15 = *v14++;
      v16 = AirReflection::Node::node_as_GlobalBinding((a4 + 4 + 4 * v15 + *(a4 + 4 + 4 * v15)));
      v17 = (v16 - *v16);
      if (*v17 >= 7u && (v18 = v17[3]) != 0)
      {
        v19 = (v16 + v18);
      }

      else
      {
        v19 = 0;
      }

      v20 = deserializeArgument(a1, v19, a4, a3, *a5 + v11);
      v13 = (v13 + HIDWORD(v20));
      v12 = (v12 + v20);
      v11 += HIDWORD(v20);
      --v10;
    }

    while (v10);
    v21 = v13 << 32;
  }

  else
  {
    v21 = 0;
    v12 = 0;
  }

  return v21 | v12;
}

uint64_t AirReflection::Node::node_as_RenderTargetRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 < 5 || !v1[2])
  {
    return 0;
  }

  v3 = 0;
  if (v2 >= 7 && *(this + v1[2]) == 135168)
  {
    v3 = v1[3];
    if (v1[3])
    {
      v3 += this + *(this + v3);
    }
  }

  return v3;
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLReturnValueInternal>,MTLReturnValueInternal*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a4;
  v15 = a4;
  v12[0] = a1;
  v12[1] = &v14;
  v12[2] = &v15;
  if (a2 == a3)
  {
    v13 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      *a4 = *v7;
      v8 = *(v7 + 8);
      *(a4 + 24) = *(v7 + 24);
      *(a4 + 8) = v8;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0;
      *(v7 + 8) = 0;
      v9 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 32) = v9;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 32) = 0;
      v10 = *(v7 + 56);
      *(a4 + 72) = *(v7 + 72);
      *(a4 + 56) = v10;
      v7 += 80;
      a4 += 80;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator<MTLReturnValueInternal>::destroy[abi:ne200100](a1, v5);
      v5 += 80;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLReturnValueInternal>,MTLReturnValueInternal*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 80;
        std::allocator<MTLReturnValueInternal>::destroy[abi:ne200100](v1, v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLReturnValueInternal>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLReturnValueInternal>,MTLReturnValueInternal*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTLReturnValueInternal>,MTLReturnValueInternal*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void **std::__split_buffer<MTLReturnValueInternal>::~__split_buffer(void **a1)
{
  std::__split_buffer<MTLReturnValueInternal>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::allocator<MTLReturnValueInternal>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 55) < 0)
  {
    operator delete(*(a2 + 32));
  }

  if (*(a2 + 31) < 0)
  {
    v3 = *(a2 + 8);

    operator delete(v3);
  }
}

uint64_t std::vector<MTLReturnValueInternal>::push_back[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<MTLReturnValueInternal>::__emplace_back_slow_path<MTLReturnValueInternal>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 8);
    *(v3 + 24) = *(a2 + 24);
    *(v3 + 8) = v4;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *(a2 + 8) = 0;
    v5 = *(a2 + 32);
    *(v3 + 48) = *(a2 + 48);
    *(v3 + 32) = v5;
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a2 + 32) = 0;
    v6 = *(a2 + 56);
    *(v3 + 72) = *(a2 + 72);
    *(v3 + 56) = v6;
    result = v3 + 80;
  }

  a1[1] = result;
  return result;
}

uint64_t std::deque<ContextStack>::~deque[abi:ne200100](void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x49];
    v7 = (*v6 + 56 * (v5 % 0x49));
    v8 = v2[(a1[5] + v5) / 0x49] + 56 * ((a1[5] + v5) % 0x49);
    if (v7 != v8)
    {
      do
      {
        ContextStack::~ContextStack(v7);
        v7 = (v9 + 56);
        if (v7 - *v6 == 4088)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v11 = v3 - v2;
  if (v11 >= 3)
  {
    do
    {
      operator delete(*v2);
      v3 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v11 = v3 - v2;
    }

    while (v11 > 2);
  }

  if (v11 == 1)
  {
    v12 = 36;
  }

  else
  {
    if (v11 != 2)
    {
      goto LABEL_16;
    }

    v12 = 73;
  }

  a1[4] = v12;
LABEL_16:
  while (v2 != v3)
  {
    v13 = *v2++;
    operator delete(v13);
  }

  return std::__split_buffer<ContextStack *>::~__split_buffer(a1);
}

void MTLArgumentDeserializer::deserializePluginData(uint64_t a1, dispatch_data_t data)
{
  if (!*(a1 + 56))
  {
    buffer_ptr[3] = v2;
    buffer_ptr[4] = v3;
    v9 = 0;
    buffer_ptr[0] = 0;
    if (data)
    {
      v5 = dispatch_data_create_map(data, buffer_ptr, &v9);
      if (v5)
      {
        v6 = v5;
        if (v9)
        {
          v7 = objc_alloc(MEMORY[0x1E695DEF0]);
          v8 = [v7 initWithBytes:buffer_ptr[0] length:v9];
        }

        else
        {
          v8 = 0;
        }

        *(a1 + 56) = v8;
        dispatch_release(v6);
      }
    }
  }
}

void MTLFragmentReflectionDeserializer::~MTLFragmentReflectionDeserializer(id *this)
{
  *this = &unk_1EF475038;
  if (*(this + 136) == 1)
  {
  }

  this[16] = 0;

  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);
}

void MTLFragmentReflectionDeserializerAIR::~MTLFragmentReflectionDeserializerAIR(id *this)
{
  MTLFragmentReflectionDeserializer::~MTLFragmentReflectionDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void std::__split_buffer<MTLReturnValueInternal>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 80;
    std::allocator<MTLReturnValueInternal>::destroy[abi:ne200100](v4, i - 80);
  }
}

uint64_t std::vector<MTLReturnValueInternal>::__emplace_back_slow_path<MTLReturnValueInternal>(uint64_t *a1, uint64_t a2)
{
  v2 = 0xCCCCCCCCCCCCCCCDLL * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if (v2 + 1 > 0x333333333333333)
  {
    std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
  }

  if (0x999999999999999ALL * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x999999999999999ALL * ((a1[2] - *a1) >> 4);
  }

  if (0xCCCCCCCCCCCCCCCDLL * ((a1[2] - *a1) >> 4) >= 0x199999999999999)
  {
    v6 = 0x333333333333333;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLReturnValueInternal>>(a1, v6);
  }

  v7 = 80 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 8);
  *(v7 + 24) = *(a2 + 24);
  *(v7 + 8) = v8;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 8) = 0;
  v9 = *(a2 + 32);
  *(v7 + 48) = *(a2 + 48);
  *(v7 + 32) = v9;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = 0;
  v10 = *(a2 + 56);
  *(v7 + 72) = *(a2 + 72);
  *(v7 + 56) = v10;
  *&v19 = 80 * v2 + 80;
  v11 = a1[1];
  v12 = 80 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLReturnValueInternal>,MTLReturnValueInternal*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<MTLReturnValueInternal>::~__split_buffer(&v17);
  return v16;
}

void sub_185BBBC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<MTLReturnValueInternal>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t deserializeUserAnnotation<AirReflection::VertexFunction const*>(uint64_t a1, int *a2)
{
  v2 = (a2 - *a2);
  if (*v2 < 0xDu)
  {
    return 0;
  }

  v3 = v2[6];
  if (!v3)
  {
    return 0;
  }

  v4 = a1 + 4 * *(a2 + v3);
  v5 = AirReflection::Node::node_as_UserAnnotationFnAttr((v4 + 4 + *(v4 + 4)));
  v6 = (v5 - *v5);
  if (*v6 < 5u)
  {
    return 0;
  }

  v7 = v6[2];
  if (!v7)
  {
    return 0;
  }

  v8 = v5 + v7 + *(v5 + v7);
  v9 = MEMORY[0x1E696AEC0];

  return [v9 stringWithUTF8String:v8 + 4];
}

void MTLArgumentDeserializer::~MTLArgumentDeserializer(MTLArgumentDeserializer *this)
{
  *this = &unk_1EF474F68;
  if (*(this + 4))
  {
    v2 = 0;
    do
    {
    }

    while (v2 < *(this + 4));
  }

  free(*(this + 1));
  v3 = *(this + 3);
  if (v3)
  {
    if (*(this + 8))
    {
      v4 = 0;
      do
      {
      }

      while (v4 < *(this + 8));
      v3 = *(this + 3);
    }

    free(v3);
  }

  *(this + 7) = 0;
  v5 = *(this + 15);
  if (v5)
  {
  }

  std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(this + 64);
}

void MTLFragmentReflectionReader::~MTLFragmentReflectionReader(MTLFragmentReflectionReader *this)
{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1865FF210);
}

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

uint64_t std::__split_buffer<ContextStack *>::~__split_buffer(uint64_t a1)
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

uint64_t MTLInputStageReflectionReader::deserialize(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = (*(*a1[2] + 24))(a1[2], a2, a3);
  if (a4)
  {
    v7 = (*a1)[4];
    v8 = a1[2] + 18;

    return v7(a1, a4, v8);
  }

  return result;
}

void MTLVertexReflectionDeserializerAIR::deserialize(uint64_t a1, void *a2, dispatch_data_t data)
{
  if (data)
  {
    size_ptr = 0;
    buffer_ptr = 0;
    v5 = dispatch_data_create_map(data, &buffer_ptr, &size_ptr);
    v6 = v5;
    v7 = (buffer_ptr + *buffer_ptr);
    v8 = *v7;
    v9 = -v8;
    v10 = (v7 - v8);
    if (*v10 >= 5u)
    {
      v11 = v10[2];
      if (v11)
      {
        *(a1 + 112) = *(v7 + v11 + 4) | (*(v7 + v11) << 16);
        v9 = -*v7;
      }
    }

    v12 = (v7 + v9);
    v13 = *v12;
    if (v13 >= 7 && (!v12[3] ? (v14 = 0) : (v14 = (v7 + v12[3] + *(v7 + v12[3]))), v13 >= 0xF && (v15 = v12[7]) != 0 && v14 && *v14))
    {
      v16 = &v14[*(v7 + v15 + *(v7 + v15) + 4)];
      v17 = AirReflection::Node::node_as_VertexFunction((v16 + v16[1] + 4));
      v18 = v17;
      v19 = (v17 - *v17);
      if (*v19 >= 9u && (v20 = v19[4]) != 0)
      {
        v21 = (v17 + v20 + *(v17 + v20));
      }

      else
      {
        v21 = 0;
      }

      memset(v49, 0, sizeof(v49));
      *__p = 0u;
      v44 = 0u;
      v46 = 1065353216;
      v42 = 1;
      LOBYTE(v43) = 0;
      v52 = 0u;
      v53 = 0u;
      v54 = 1065353216;
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::__move_assign(&v44, &v52);
      std::__hash_table<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,MTLStructTypeInternal *>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,MTLStructTypeInternal *>>>::~__hash_table(&v52);
      std::deque<ContextStack>::push_back(v49, &v42);
      ContextStack::~ContextStack(&v42);
      v22 = deserializeArguments(a2, v21, v14, v49, (a1 + 8), (*(a1 + 104) & 0x200000) == 0, (a1 + 48));
      v23 = (v7 - *v7);
      if (*v23 >= 0x1Du && (v24 = v23[14]) != 0)
      {
        v25 = (v7 + v24 + *(v7 + v24));
      }

      else
      {
        v25 = 0;
      }

      v26 = deserializeGlobalBindings(a2, v25, v49, v14, (a1 + 24));
      deserializeInputArguments(v21, v14, a1);
      v27 = (v18 - *v18);
      if (*v27 >= 7u)
      {
        v28 = v27[3];
        if (v28)
        {
          v39 = HIDWORD(v26);
          v29 = (v18 + v28 + *(v18 + v28));
          *&v53 = 0;
          v30 = 0uLL;
          v52 = 0u;
          if (*v29)
          {
            v31 = 0;
            v32 = v29 + 1;
            do
            {
              deserializeReturn(a2, v32, v14, v49, &v48, &v42);
              std::vector<MTLReturnValueInternal>::push_back[abi:ne200100](&v52, &v42);
              if (v47 < 0)
              {
                operator delete(__p[0]);
              }

              if (SHIBYTE(v44) < 0)
              {
                operator delete(v43);
              }

              ++v31;
              ++v32;
            }

            while (v31 < *v29);
            v30 = v52;
            v33 = v53;
          }

          else
          {
            v33 = 0;
          }

          v40 = v30;
          v41 = v33;
          *&v53 = 0;
          v52 = 0uLL;
          *(a1 + 120) = newReturnValueFromArray(&v40);
          v42 = &v40;
          std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v42);
          v42 = &v52;
          std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&v42);
          HIDWORD(v26) = v39;
        }
      }

      *(a1 + 16) = HIDWORD(v22);
      *(a1 + 32) = HIDWORD(v26);
      *(a1 + 36) = v22;
      *(a1 + 40) = deserializeUserAnnotation<AirReflection::VertexFunction const*>(v14, v18);
      getPostVertexDumpOutputVertex(v7, (a1 + 128), a2, &v42);
      v34 = v42;
      v35 = v43;
      if ((*(a1 + 106) & 8) != 0)
      {
        v36 = (v43 - v42) >> 3;
        *(a1 + 132) = v36;
        if (*(a1 + 128))
        {
          *(a1 + 136) = malloc_type_calloc(v36, 8uLL, 0x80040B8603338uLL);
          v34 = v42;
          v35 = v43;
          if (v43 != v42)
          {
            v37 = 0;
            do
            {
              *(*(a1 + 136) + 8 * v37) = v34[v37];
              ++v37;
              v34 = v42;
              v35 = v43;
            }

            while (v37 < (v43 - v42) >> 3);
          }
        }
      }

      if (v35 != v34)
      {
        v38 = 0;
        do
        {

          v34 = v42;
        }

        while (v38 < (v43 - v42) >> 3);
      }

      dispatch_release(v6);
      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

      std::deque<ContextStack>::~deque[abi:ne200100](v49);
    }

    else
    {
      dispatch_release(v5);
    }
  }
}

void sub_185BBC434(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = (v25 - 128);
  std::vector<MTLReturnValueInternal>::__destroy_vector::operator()[abi:ne200100](&__p);
  std::deque<ContextStack>::~deque[abi:ne200100](&a25);
  _Unwind_Resume(a1);
}

uint64_t AirReflection::Node::node_as_VertexFunction(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 3) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_SamplerArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 262145) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t ReflectionValidator<MTLVertexReflectionReader>::Validate(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4)
{
  if (MTLEnvVarAggregator::GET_MTL_VERIFY_REFLECTION(0, 0))
  {
    if ((a2 & 0x800000) != 0)
    {
      v6 = MTLNewEmulationReflectionData(a3);
    }

    else
    {
      v6 = MTLNewReflectionData(a3);
    }

    v7 = v6;
    MTLNewLegacyReflectionData(a3);
    ReflectionReaderFactory<MTLVertexReflectionReader>::Create(a2 | 0x80000, v7);
  }

  return 1;
}

void *MTLInputStageReflectionReader::MTLInputStageReflectionReader(void *result, uint64_t a2)
{
  *result = &unk_1EF475000;
  result[1] = a2;
  result[2] = a2;
  return result;
}

uint64_t AirReflection::Node::node_as_VertexIDArg(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 270339) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_PositionRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131074) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t AirReflection::Node::node_as_VertexOutputRet(AirReflection::Node *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 5 && v1[2] && (v2 >= 7 ? (v3 = *(this + v1[2]) == 131076) : (v3 = 0), v3 && (v4 = v1[3]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

int64_t std::string::find[abi:ne200100](uint64_t *a1, char *__s, unint64_t a3)
{
  v5 = a1;
  v6 = *(a1 + 23);
  if ((v6 & 0x8000000000000000) != 0)
  {
    v5 = *a1;
    v6 = a1[1];
  }

  v7 = strlen(__s);
  v8 = v6 - a3;
  if (v6 < a3)
  {
    return -1;
  }

  v9 = v7;
  if (v7)
  {
    v10 = v5 + v6;
    if (v8 >= v7)
    {
      v13 = v5 + a3;
      v14 = *__s;
      do
      {
        v15 = v8 - v9;
        if (v15 == -1)
        {
          break;
        }

        v16 = memchr(v13, v14, v15 + 1);
        if (!v16)
        {
          break;
        }

        v11 = v16;
        if (!memcmp(v16, __s, v9))
        {
          goto LABEL_8;
        }

        v13 = v11 + 1;
        v8 = v10 - (v11 + 1);
      }

      while (v8 >= v9);
    }

    v11 = v10;
LABEL_8:
    if (v11 == v10)
    {
      return -1;
    }

    else
    {
      return v11 - v5;
    }
  }

  return a3;
}

uint64_t getPostVertexDumpOutputVertex@<X0>(int *a1@<X0>, _DWORD *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  v7 = a1 - *a1;
  if (*(v7 + 3))
  {
    v8 = a1 + *(v7 + 3) + *(a1 + *(v7 + 3));
  }

  else
  {
    v8 = 0;
  }

  v9 = &v8[4 * *(a1 + *(v7 + 7) + *(a1 + *(v7 + 7)) + 4)];
  v10 = AirReflection::Node::node_as_VertexFunction(&v9[*(v9 + 1) + 4]);
  v11 = v10;
  v12 = (v10 - *v10);
  if (*v12 >= 0xBu && (v13 = v12[5]) != 0)
  {
    v14 = (v10 + v13);
  }

  else
  {
    v14 = 0;
  }

  result = getDefaultPostVertexBuiltins(v8, a4, 0, v14, a3);
  v16 = result;
  v17 = (v11 - *v11);
  if (*v17 >= 7u)
  {
    v18 = v17[3];
    if (v18)
    {
      v19 = (v11 + v18 + *(v11 + v18));
      if (*v19)
      {
        v20 = 0;
        v21 = v19 + 1;
        do
        {
          result = getPostVertexDumpOutputForNode(v21, v8, a4, v16);
          v16 = result;
          ++v20;
          ++v21;
        }

        while (v20 < *v19);
      }
    }
  }

  *a2 = v16;
  return result;
}

void sub_185BBCD00(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLInputStageReflectionReader::attributes@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(*(this + 16) + 192);
  v3 = *(*(this + 16) + 200) - v2;
  if (v3)
  {
    *a2 = v2;
    *(a2 + 8) = v3 >> 3;
    v4 = 1;
  }

  else
  {
    v4 = 0;
    *a2 = 0;
  }

  *(a2 + 16) = v4;
  return this;
}

void deserializeInputArguments(unsigned int *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = *a1;
    if (v3)
    {
      v5 = a1 + 1;
      v6 = a2 + 4;
      v7 = a3 + 144;
      do
      {
        v8 = *v5++;
        v9 = (v6 + 4 * v8 + *(v6 + 4 * v8));
        v10 = (v9 - *v9);
        if (*v10 >= 5u)
        {
          v11 = v10[2];
          if (v11)
          {
            v12 = *(v9 + v11);
            if (v12 == 266249)
            {
              v19 = AirReflection::Node::node_as_StageInArg(v9);
              v20 = v19;
              v21 = (v19 - *v19);
              v22 = *v21;
              v17 = *(v19 + v21[3]);
              if (v22 < 0xF)
              {
                *(v7 + v17) = 1;
                if (v22 >= 0xD)
                {
                  goto LABEL_33;
                }
              }

              else
              {
                if (v21[7])
                {
                  v23 = *(v19 + v21[7]) == 0;
                }

                else
                {
                  v23 = 1;
                }

                *(v7 + v17) = v23;
LABEL_33:
                if (v21[6])
                {
                  v35 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v36 = (v20 + *(v20 - *v20 + 12));
                  v26 = [v35 initWithCString:v36 + *v36 + 4 encoding:4];
                  goto LABEL_36;
                }
              }

              v26 = 0;
LABEL_36:
              v27 = [MTLAttributeInternal alloc];
              v37 = (v20 - *v20);
              if (*v37 >= 0xBu && (v38 = v37[5]) != 0)
              {
                v39 = (v20 + v38 + *(v20 + v38));
              }

              else
              {
                v39 = 0;
              }

              flatbuffers::String::str(__p, v39);
              v31 = stringToDataType(__p);
              v40 = (v20 - *v20);
              v34 = *v40 < 0xFu || (v41 = v40[7]) == 0 || *(v20 + v41) == 0;
              goto LABEL_44;
            }

            if (v12 == 270340)
            {
              v13 = AirReflection::Node::node_as_VertexInputArg(v9);
              v14 = v13;
              v15 = (v13 - *v13);
              v16 = *v15;
              v17 = *(v13 + v15[3]);
              if (v16 < 0xF)
              {
                *(v7 + v17) = 1;
                if (v16 >= 0xD)
                {
                  goto LABEL_20;
                }
              }

              else
              {
                if (v15[7])
                {
                  v18 = *(v13 + v15[7]) == 0;
                }

                else
                {
                  v18 = 1;
                }

                *(v7 + v17) = v18;
LABEL_20:
                if (v15[6])
                {
                  v24 = objc_alloc(MEMORY[0x1E696AEC0]);
                  v25 = (v14 + *(v14 - *v14 + 12));
                  v26 = [v24 initWithCString:v25 + *v25 + 4 encoding:4];
LABEL_23:
                  v27 = [MTLAttributeInternal alloc];
                  v28 = (v14 - *v14);
                  if (*v28 >= 0xBu && (v29 = v28[5]) != 0)
                  {
                    v30 = (v14 + v29 + *(v14 + v29));
                  }

                  else
                  {
                    v30 = 0;
                  }

                  flatbuffers::String::str(__p, v30);
                  v31 = stringToDataType(__p);
                  v32 = (v14 - *v14);
                  v34 = *v32 < 0xFu || (v33 = v32[7]) == 0 || *(v14 + v33) == 0;
LABEL_44:
                  v42 = [(MTLAttributeInternal *)v27 initWithName:v26 attributeIndex:v17 attributeType:v31 used:v34];
                  if (v44 < 0)
                  {
                    operator delete(__p[0]);
                  }

                  v45 = v42;

                  std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a3 + 192, &v45);
                  goto LABEL_47;
                }
              }

              v26 = 0;
              goto LABEL_23;
            }
          }
        }

LABEL_47:
        --v3;
      }

      while (v3);
    }
  }
}

void sub_185BBD0A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t createVertexFunctionDescriptor(flatbuffers::FlatBufferBuilder *this, void *a2, int *a3, uint64_t a4)
{
  v4 = a4;
  v7 = a2 + 6;
  v8 = a2[40];
  if (v8)
  {
    v46 = a2 + 6;
    v9 = *(v8 + 16);
    v47 = a4;
    if (v9)
    {
      __p = 0;
      v51 = 0;
      v52 = 0;
      v10 = 31;
      do
      {
        v11 = *(v9 + 8);
        if (v11)
        {
          *(this + 70) = 1;
          v12 = *(this + 8);
          v13 = *(this + 12);
          v14 = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, [v11 format], 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 6, [v11 offset], 0);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 8, [v11 bufferIndex], 0);
          v49 = flatbuffers::FlatBufferBuilder::EndTable(this, v12 - v13 + v14);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v49);
        }

        else
        {
          *(this + 70) = 1;
          v15 = *(this + 8);
          v16 = *(this + 12);
          v17 = *(this + 10);
          if (*(this + 80) == 1)
          {
            v18 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(this, 0);
            flatbuffers::FlatBufferBuilder::TrackField(this, 6, v18);
            if (*(this + 80))
            {
              v19 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(this, 0);
              flatbuffers::FlatBufferBuilder::TrackField(this, 8, v19);
              if (*(this + 80))
              {
                v20 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 0);
                flatbuffers::FlatBufferBuilder::TrackField(this, 4, v20);
              }
            }
          }

          v49 = flatbuffers::FlatBufferBuilder::EndTable(this, v15 - v16 + v17);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v49);
        }

        v9 += 8;
        --v10;
      }

      while (v10);
      if (v51 == __p)
      {
        v21 = &flatbuffers::data<flatbuffers::Offset<Air::AttributeDescriptor>,std::allocator<flatbuffers::Offset<Air::AttributeDescriptor>>>(std::vector<flatbuffers::Offset<Air::AttributeDescriptor>> const&)::t;
      }

      else
      {
        v21 = __p;
      }

      v22 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v21, (v51 - __p) >> 2);
      v4 = v47;
      if (__p)
      {
        v51 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v22 = 0;
    }

    v24 = *(v8 + 8);
    if (v24)
    {
      v45 = v22;
      __p = 0;
      v51 = 0;
      v52 = 0;
      v25 = 31;
      do
      {
        v26 = *(v24 + 8);
        if (v26)
        {
          *(this + 70) = 1;
          v27 = *(this + 8);
          v28 = *(this + 12);
          v29 = *(this + 10);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, [v26 stepFunction], 1);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 6, [v26 stepRate], 1);
          flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 8, [v26 stride], 0);
          v49 = flatbuffers::FlatBufferBuilder::EndTable(this, v27 - v28 + v29);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v49);
        }

        else
        {
          *(this + 70) = 1;
          v30 = *(this + 8);
          v31 = *(this + 12);
          v32 = *(this + 10);
          if (*(this + 80) == 1)
          {
            v33 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(this, 0);
            flatbuffers::FlatBufferBuilder::TrackField(this, 8, v33);
            if (*(this + 80))
            {
              v34 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(this, 1);
              flatbuffers::FlatBufferBuilder::TrackField(this, 6, v34);
              if (*(this + 80))
              {
                v35 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 1);
                flatbuffers::FlatBufferBuilder::TrackField(this, 4, v35);
              }
            }
          }

          v49 = flatbuffers::FlatBufferBuilder::EndTable(this, v30 - v31 + v32);
          std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v49);
        }

        v24 += 8;
        --v25;
      }

      while (v25);
      if (v51 == __p)
      {
        v36 = &flatbuffers::data<flatbuffers::Offset<Air::BufferLayoutDescriptor>,std::allocator<flatbuffers::Offset<Air::BufferLayoutDescriptor>>>(std::vector<flatbuffers::Offset<Air::BufferLayoutDescriptor>> const&)::t;
      }

      else
      {
        v36 = __p;
      }

      v37 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v36, (v51 - __p) >> 2);
      v4 = v47;
      v22 = v45;
      if (__p)
      {
        v51 = __p;
        operator delete(__p);
      }
    }

    else
    {
      v37 = 0;
    }

    *(this + 70) = 1;
    v38 = *(this + 10);
    v39 = *(this + 8) - *(this + 12);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 4, v22);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v37);
    v23 = flatbuffers::FlatBufferBuilder::EndTable(this, v39 + v38);
    v7 = v46;
  }

  else
  {
    v23 = 0;
  }

  PipelineBufferDescriptorVector = createPipelineBufferDescriptorVector(this, v7[51]);
  v41 = [a2 maxVertexAmplificationCount];
  *(this + 70) = 1;
  v42 = *(this + 10);
  v43 = *(this + 8) - *(this + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 6, v23);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 8, [a2 isRasterizationEnabled], 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 10, [a2 inputPrimitiveTopology], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 12, [a2 maxTessellationFactor], 16);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 14, [a2 isTessellationFactorScaleEnabled], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 16, [a2 tessellationFactorFormat], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 18, [a2 tessellationControlPointIndexType], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 20, [a2 tessellationFactorStepFunction], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 22, [a2 tessellationOutputWindingOrder], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 24, [a2 tessellationPartitionMode], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(this, 26, v41, 1);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 30, PipelineBufferDescriptorVector);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 32, [a2 supportIndirectCommandBuffers], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 28, [a2 vertexAmplificationMode], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 36, [a2 textureWriteRoundingMode], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 38, [a2 clipDistanceEnableMask], 255);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(this, 40, [a2 vertexDepthCompareClampMask], 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 42, [a2 needsCustomBorderColorSamplers], 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(this, 44, *a3);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 34, v4, 0);
  return flatbuffers::FlatBufferBuilder::EndTable(this, v43 + v42);
}

void sub_185BBD73C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t createPipelineBufferDescriptorVector(flatbuffers::FlatBufferBuilder *this, const MTLPipelineBufferDescriptorArrayInternal *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2;
  __p = 0;
  v18 = 0;
  v19 = 0;
  v4 = 31;
  do
  {
    v5 = v2->_descriptors[0];
    if (v5)
    {
      *(this + 70) = 1;
      v6 = *(this + 8);
      v7 = *(this + 12);
      v8 = *(this + 10);
      flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(this, 4, [(MTLPipelineBufferDescriptorInternal *)v5 mutability], 0);
      v16 = flatbuffers::FlatBufferBuilder::EndTable(this, v6 - v7 + v8);
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v16);
    }

    else
    {
      *(this + 70) = 1;
      v9 = *(this + 8);
      v10 = *(this + 12);
      v11 = *(this + 10);
      if (*(this + 80) == 1)
      {
        v12 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(this, 0);
        flatbuffers::FlatBufferBuilder::TrackField(this, 4, v12);
      }

      v16 = flatbuffers::FlatBufferBuilder::EndTable(this, v9 - v10 + v11);
      std::vector<unsigned int>::push_back[abi:ne200100](&__p, &v16);
    }

    v2 = (v2 + 8);
    --v4;
  }

  while (v4);
  if (v18 == __p)
  {
    v13 = &flatbuffers::data<flatbuffers::Offset<Air::PipelineBufferDescriptor>,std::allocator<flatbuffers::Offset<Air::PipelineBufferDescriptor>>>(std::vector<flatbuffers::Offset<Air::PipelineBufferDescriptor>> const&)::t;
  }

  else
  {
    v13 = __p;
  }

  v14 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(this, v13, (v18 - __p) >> 2);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  return v14;
}

void sub_185BBD920(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

dispatch_data_t _MTLCreateRenderPipelineScriptFromDescriptor(MTLRenderPipelineDescriptor *a1)
{
  v11 = 0;
  v12 = 0;
  v13 = xmmword_185DB8250;
  v14 = 0u;
  *buffer = 0u;
  v16 = 0;
  v17 = 1;
  v18 = 256;
  v19 = 0;
  if (_MTLCreateRenderPipelineScriptFromDescriptor(&v11, a1))
  {
    v1 = buffer[0];
    v2 = (v14 + DWORD2(v14) - LODWORD(buffer[0]));
    v5 = v11;
    v6 = v12;
    v7 = *(&v14 + 1);
    v8 = v14;
    v9 = buffer[0];
    v10 = v2;
    if (v12 == 1)
    {
      v11 = 0;
      v12 = 0;
    }

    v14 = 0u;
    *buffer = 0u;
    v3 = dispatch_data_create(v1, v2, 0, 0);
    flatbuffers::DetachedBuffer::~DetachedBuffer(&v5);
  }

  else
  {
    v3 = 0;
  }

  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(&v11);
  return v3;
}

void sub_185BBDA1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  flatbuffers::FlatBufferBuilder::~FlatBufferBuilder(va);
  _Unwind_Resume(a1);
}

void std::vector<unsigned int>::push_back[abi:ne200100](const void **a1, int *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 4;
  }

  a1[1] = v6;
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(char *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned short>(uint64_t a1, __int16 a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 2uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 1)
  {
    flatbuffers::vector_downward::reallocate(a1, 2uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 2) = a2;
  v5 = v4 - 2;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

uint64_t _MTLCreateRenderPipelineScriptFromDescriptor(flatbuffers::FlatBufferBuilder *a1, MTLRenderPipelineDescriptor *a2)
{
  if ([(MTLRenderPipelineDescriptor *)a2 objectFunction]|| [(MTLRenderPipelineDescriptor *)a2 meshFunction])
  {
    return 0;
  }

  if ([(MTLRenderPipelineDescriptor *)a2 vertexFunction])
  {
    v5 = [objc_msgSend(-[MTLRenderPipelineDescriptor vertexFunction](a2 "vertexFunction")];
    v6 = strlen(v5);
    String = flatbuffers::FlatBufferBuilder::CreateString(a1, v5, v6);
  }

  else
  {
    String = 0;
  }

  if ([(MTLRenderPipelineDescriptor *)a2 fragmentFunction])
  {
    v8 = [objc_msgSend(-[MTLRenderPipelineDescriptor fragmentFunction](a2 "fragmentFunction")];
    v9 = strlen(v8);
    v10 = flatbuffers::FlatBufferBuilder::CreateString(a1, v8, v9);
  }

  else
  {
    v10 = 0;
  }

  LODWORD(v25) = createLinkedFunctions(a1, [(MTLRenderPipelineDescriptor *)a2 vertexLinkedFunctions]);
  v11 = [(MTLRenderPipelineDescriptor *)a2 supportAddingVertexBinaryFunctions]|| [(NSArray *)[(MTLLinkedFunctions *)[(MTLRenderPipelineDescriptor *)a2 vertexLinkedFunctions] binaryFunctions] count]!= 0;
  VertexFunctionDescriptor = createVertexFunctionDescriptor(a1, a2, &v25, v11);
  v13 = [(MTLRenderPipelineDescriptor *)a2 _descriptorPrivate];
  v14 = v13;
  v15 = 1;
  if ((*(v13 + 569) & 1) == 0)
  {
    v15 = [objc_msgSend(*(v13 + 496) "binaryFunctions")] != 0;
  }

  LODWORD(v25) = createLinkedFunctions(a1, *(v14 + 496));
  FragmentFunctionDescriptor = createFragmentFunctionDescriptorImpl<MTLRenderPipelineDescriptorPrivate>(a1, v14, &v25, v15);
  *(a1 + 70) = 1;
  v17 = *(a1 + 10);
  v18 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, String);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v10);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, VertexFunctionDescriptor);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, FragmentFunctionDescriptor);
  v19 = flatbuffers::FlatBufferBuilder::EndTable(a1, v18 + v17);
  v25 = 0x400000000;
  v26 = 0;
  *(a1 + 70) = 1;
  v20 = *(a1 + 10);
  v21 = *(a1 + 8) - *(a1 + 12);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 10, v19);
  flatbuffers::FlatBufferBuilder::AddStruct<Mtl4::Version>(a1, 4, &v25);
  v22 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 1);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 8, v22);
  v23 = flatbuffers::FlatBufferBuilder::PushElement<unsigned char>(a1, 2);
  flatbuffers::FlatBufferBuilder::TrackField(a1, 6, v23);
  v24 = flatbuffers::FlatBufferBuilder::EndTable(a1, v21 + v20);
  flatbuffers::FlatBufferBuilder::Finish(a1, v24, "AIRP", 0);
  return *(a1 + 6) + **(a1 + 6);
}

uint64_t createLinkedFunctions(flatbuffers::FlatBufferBuilder *a1, MTLLinkedFunctions *a2)
{
  if ([(NSArray *)[(MTLLinkedFunctions *)a2 functions] count])
  {
    FunctionArray = createFunctionArray(a1, [(MTLLinkedFunctions *)a2 functions]);
  }

  else
  {
    FunctionArray = 0;
  }

  if ([(NSArray *)[(MTLLinkedFunctions *)a2 privateFunctions] count])
  {
    v5 = createFunctionArray(a1, [(MTLLinkedFunctions *)a2 privateFunctions]);
  }

  else
  {
    v5 = 0;
  }

  if ([(NSDictionary *)[(MTLLinkedFunctions *)a2 groups] count])
  {
    v6 = [(MTLLinkedFunctions *)a2 groups];
    v14 = 0;
    v15 = &v14;
    v16 = 0x4812000000;
    v17 = __Block_byref_object_copy__6;
    v18 = __Block_byref_object_dispose__6;
    v19 = &unk_185DF1D43;
    v21 = 0;
    v22 = 0;
    __p = 0;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZL12createGroupsRN11flatbuffers17FlatBufferBuilderEP12NSDictionaryIP8NSStringP7NSArrayIPU22objcproto11MTLFunction11objc_objectEE_block_invoke;
    v13[3] = &unk_1E6EEB308;
    v13[4] = &v14;
    v13[5] = a1;
    [(NSDictionary *)v6 enumerateKeysAndObjectsUsingBlock:v13];
    v7 = v15[7] - v15[6];
    if (v7)
    {
      v8 = v15[6];
    }

    else
    {
      v8 = &flatbuffers::data<flatbuffers::Offset<Air::FunctionGroup>,std::allocator<flatbuffers::Offset<Air::FunctionGroup>>>(std::vector<flatbuffers::Offset<Air::FunctionGroup>> const&)::t;
    }

    v9 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v8, v7 >> 2);
    _Block_object_dispose(&v14, 8);
    if (__p)
    {
      v21 = __p;
      operator delete(__p);
    }
  }

  else
  {
    v9 = 0;
  }

  if ([(NSArray *)[(MTLLinkedFunctions *)a2 functions] count]|| [(NSArray *)[(MTLLinkedFunctions *)a2 privateFunctions] count]|| (result = [(NSDictionary *)[(MTLLinkedFunctions *)a2 groups] count]) != 0)
  {
    *(a1 + 70) = 1;
    v11 = *(a1 + 10);
    v12 = *(a1 + 8) - *(a1 + 12);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 4, FunctionArray);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 6, v5);
    flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 8, v9);
    return flatbuffers::FlatBufferBuilder::EndTable(a1, v12 + v11);
  }

  return result;
}

void sub_185BBE0B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t createFragmentFunctionDescriptorImpl<MTLRenderPipelineDescriptorPrivate>(uint64_t a1, uint64_t a2, int *a3, uint64_t a4)
{
  FragmentColorAttachmentDescriptorVector = createFragmentColorAttachmentDescriptorVector(a1, *a2);
  PipelineBufferDescriptorVector = createPipelineBufferDescriptorVector(a1, *(a2 + 416));
  *(a1 + 70) = 1;
  v10 = *(a1 + 40);
  v11 = *(a1 + 32) - *(a1 + 48);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 22, FragmentColorAttachmentDescriptorVector);
  v12 = *(a2 + 72);
  if ((v12 - 1) >= 0x28C)
  {
    LOWORD(v12) = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 24, v12, 0);
  v13 = *(a2 + 80);
  if ((v13 - 1) >= 0x28C)
  {
    LOWORD(v13) = 0;
  }

  flatbuffers::FlatBufferBuilder::AddElement<unsigned short>(a1, 26, v13, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 8, *(a2 + 224) & 3, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 10, (*(a2 + 224) >> 2) & 3, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 6, (*(a2 + 224) >> 4) & 1, 1);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 12, *(a2 + 184), 1);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 28, PipelineBufferDescriptorVector);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 30, *(a2 + 152), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 14, *(a2 + 216), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned long long>(a1, 16, *(a2 + 192), -1);
  flatbuffers::FlatBufferBuilder::AddElement<float>(a1, 18, *(a2 + 200), 1.0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 20, (*(a2 + 224) >> 10) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 34, *(a2 + 176), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 36, (*(a2 + 224) >> 36) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 38, *(a2 + 228) & 0xF, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 40, (*(a2 + 224) >> 28) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 42, (*(a2 + 224) >> 25) & 7, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 44, HIWORD(*(a2 + 224)) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 46, (*(a2 + 224) >> 8) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 48, (*(a2 + 224) >> 9) & 1, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(a1, 52, *(a2 + 236), 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 50, *(a2 + 472), 0);
  flatbuffers::FlatBufferBuilder::AddOffset<void>(a1, 54, *a3);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 32, a4, 0);
  flatbuffers::FlatBufferBuilder::AddElement<unsigned char>(a1, 56, *(a2 + 680), 0);

  return flatbuffers::FlatBufferBuilder::EndTable(a1, v11 + v10);
}

char *flatbuffers::FlatBufferBuilder::AddElement<float>(char *result, uint64_t a2, float a3, float a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<float>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t MTLCompileTypeForFunction(_MTLFunction *a1)
{
  v1 = [(_MTLFunction *)a1 functionType];
  if (v1 - 1 > 7)
  {
    return -1;
  }

  else
  {
    return qword_185DE2898[v1 - 1];
  }
}

uint64_t MultiLevelBinaryCache::getElement(void *a1, void *a2, dispatch_data_t *a3)
{
  if (*(a1 + 48) == 1)
  {
    NSLog(&cfstr_LookingForFunc.isa, [a2 description]);
  }

  for (i = 0; i < [a1[5] count]; ++i)
  {
    if ([objc_msgSend(a1[5] objectAtIndexedSubscript:{i), "supportsAIRNT"}])
    {
      v7 = 0;
    }

    else
    {
      v7 = [objc_msgSend(a1[5] objectAtIndexedSubscript:{i), "getBinaryDataForKey:reflectionType:", a2, 0}];
    }

    if (v7)
    {
      v8 = [v7 data];
      *a3 = v8;
      dispatch_retain(v8);
      return 1;
    }
  }

  if ((*(*a1 + 88))(a1))
  {
    return 0;
  }

  v10 = [a2 value];

  return MultiLevelCacheBase::getElement(a1, v10, a3);
}

unsigned __int8 *_getPipelineFrameworkHash(Air::PipelineScript *a1, int a2, uint64_t a3)
{
  v3 = (a1 - *a1);
  if (*v3 < 9u)
  {
    return 0;
  }

  v4 = v3[4];
  if (!v4)
  {
    return 0;
  }

  v5 = a3;
  v7 = *(a1 + v4);
  if (v7 <= 2)
  {
    if (v7 != 1)
    {
      if (v7 == 2)
      {
        Air::PipelineScript::pipeline_as_compute(a1);
LABEL_7:

        return malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
      }

      return 0;
    }

    v13 = Air::PipelineScript::pipeline_as_render(a1);
    v14 = (v13 - *v13);
    v15 = *v14;
    if (a2 == 1)
    {
      if (v15 >= 9 && (v16 = v14[4]) != 0)
      {
        v17 = (v13 + v16 + *(v13 + v16));
      }

      else
      {
        v17 = 0;
      }

      return getVertexHash(v17);
    }

    if (v15 < 0xB)
    {
      goto LABEL_41;
    }

    v22 = v14[5];
    if (!v22)
    {
      goto LABEL_41;
    }

    goto LABEL_40;
  }

  if (v7 == 3)
  {
    v18 = Mtl4::FunctionConstantValue::value_as_ConstantFloat(a1);
    v19 = (v18 - *v18);
    if (*v19 >= 7u && (v20 = v19[3]) != 0)
    {
      v21 = (v18 + v20 + *(v18 + v20));
    }

    else
    {
      v21 = 0;
    }

    return getTileHash(v21);
  }

  else
  {
    if (v7 != 4)
    {
      return 0;
    }

    if (a2 == 2)
    {
      v13 = Mtl4::FunctionConstantValue::value_as_ConstantFloat2(a1);
      v23 = (v13 - *v13);
      if (*v23 < 0xFu || (v22 = v23[7]) == 0)
      {
LABEL_41:
        v24 = 0;
        goto LABEL_42;
      }

LABEL_40:
      v24 = (v13 + v22 + *(v13 + v22));
LABEL_42:

      return getFragmentHash(v24, v5);
    }

    if (a2 == 8)
    {
      Mtl4::FunctionConstantValue::value_as_ConstantFloat2(a1);
      goto LABEL_7;
    }

    if (a2 != 7)
    {
      return 0;
    }

    v9 = Mtl4::FunctionConstantValue::value_as_ConstantFloat2(a1);
    v10 = (v9 - *v9);
    if (*v10 >= 0xDu && (v11 = v10[6]) != 0)
    {
      v12 = (v9 + v11 + *(v9 + v11));
    }

    else
    {
      v12 = 0;
    }

    return getMeshHash(v12);
  }
}

uint64_t Air::PipelineScript::pipeline_as_render(Air::PipelineScript *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 1) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t MTLDataTypeGetSize(uint64_t a1)
{
  if ((a1 - 3) > 0x88)
  {
    return 0;
  }

  else
  {
    return qword_185DE3878[a1 - 3];
  }
}

uint64_t MTLDataTypeGetComponentCount(uint64_t a1)
{
  result = 1;
  if (a1 > 120)
  {
    if (a1 > 122)
    {
      if (a1 == 123)
      {
        return 3;
      }

      else if (a1 == 124)
      {
        return 4;
      }

      else
      {
        return 0;
      }
    }

    else if (a1 != 121)
    {
      return 2;
    }
  }

  else
  {
    switch(a1)
    {
      case 3:
      case 16:
      case 29:
      case 33:
      case 37:
      case 41:
      case 45:
      case 49:
      case 53:
      case 81:
      case 85:
        return result;
      case 4:
      case 17:
      case 30:
      case 34:
      case 38:
      case 42:
      case 46:
      case 50:
      case 54:
      case 82:
      case 86:
        return 2;
      case 5:
      case 18:
      case 31:
      case 35:
      case 39:
      case 43:
      case 47:
      case 51:
      case 55:
      case 83:
      case 87:
        return 3;
      case 6:
      case 19:
      case 32:
      case 36:
      case 40:
      case 44:
      case 48:
      case 52:
      case 56:
      case 84:
      case 88:
        return 4;
      default:
        return 0;
    }
  }

  return result;
}

void MTLInputStageReflectionDeserializer::~MTLInputStageReflectionDeserializer(MTLInputStageReflectionDeserializer *this)
{
  *this = &unk_1EF474FC8;
  if (*(this + 33))
  {
    v2 = 0;
    do
    {
    }

    while (v2 < *(this + 33));
  }

  free(*(this + 17));
  *(this + 17) = 0;
  v3 = *(this + 24);
  v4 = *(this + 25);
  if (v3 != v4)
  {
    do
    {
    }

    while (v3 != v4);
    v3 = *(this + 24);
  }

  if (v3)
  {
    *(this + 25) = v3;
    operator delete(v3);
  }

  MTLArgumentDeserializer::~MTLArgumentDeserializer(this);
}

{
  MTLInputStageReflectionDeserializer::~MTLInputStageReflectionDeserializer(this);

  JUMPOUT(0x1865FF210);
}

unsigned __int8 *getVertexHash(int *a1)
{
  v2 = 1;
  v3 = malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
  data = 0;
  v4 = (a1 - *a1);
  v5 = *v4;
  if (v5 <= 8)
  {
    LOBYTE(data) = 1;
  }

  else
  {
    if (v4[4])
    {
      v6 = *(a1 + v4[4]) != 0;
    }

    else
    {
      v6 = 1;
    }

    LOBYTE(data) = v6;
    v2 = v5 < 0xB || (v7 = v4[5]) == 0 || *(a1 + v7) == 0;
  }

  HIBYTE(data) = v2;
  CC_SHA256(&data, 2u, v3);
  return v3;
}

uint64_t MTLPixelFormatComputeTotalSizeUsed(uint64_t a1, uint64_t *a2, uint64_t a3, int a4)
{
  if (a3)
  {
    result = 0;
    v6 = (a1 + 48);
    while (1)
    {
      v8 = *a2++;
      v7 = v8;
      if ((v8 - 603) < 2)
      {
        v9 = 4;
      }

      else
      {
        v9 = 4;
        if (v7 != 622)
        {
          if (v7 != 605)
          {
            v10 = *(v6 - 15);
            v9 = *(v6 - 1);
            v11 = *v6;
            goto LABEL_9;
          }

          v9 = 8;
        }
      }

      v10 = 4;
      v11 = v9;
LABEL_9:
      v6 += 7;
      if (a4)
      {
        v9 = v11;
      }

      result = ((result + v10 - 1) & -v10) + v9;
      if (!--a3)
      {
        return result;
      }
    }
  }

  return 0;
}

void validateMTLCompareFunction(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a1 >= 8)
  {
    _MTLMessageContextPush_(a2, 4, @"function is not a valid MTLCompareFunction.", a4, a5, a6, a7, a8, a9);
  }
}

uint64_t MTLSerializePluginDataDictionary(void *a1, _BYTE *a2)
{
  if (![a1 count])
  {
    return 0;
  }

  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (a2)
  {
    *a2 = [a1 count];
    v4 = v10;
    v5 = v10[3] + 1;
  }

  else
  {
    v5 = 1;
    v4 = &v9;
  }

  v4[3] = v5;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __MTLSerializePluginDataDictionary_block_invoke;
  v8[3] = &unk_1E6EECE38;
  v8[4] = &v9;
  v8[5] = a2;
  [a1 enumerateKeysAndObjectsUsingBlock:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_185BBEF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *LoaderContext::setInsertLibraries(void *a1, void *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  memset(v4, 0, sizeof(v4));
  result = [a2 countByEnumeratingWithState:v4 objects:v5 count:16];
  if (result)
  {
    LoaderContext::addImage(a1, **(&v4[0] + 1), [**(&v4[0] + 1) libraryPath]);
  }

  a1[5] = (a1[7] - a1[6]) >> 3;
  return result;
}

uint64_t LoaderContext::load(LoaderContext *this, _MTLFunction *a2, uint64_t a3, id *a4)
{
  v8 = [(_MTLFunction *)a2 libraryData];
  v9 = (*(*v8 + 352))(v8);
  if (!v9)
  {
    v9 = [(_MTLFunction *)a2 inheritedLibraryPath];
  }

  if (LoaderContext::getImage(this, &v9->isa))
  {
    return 1;
  }

  v11 = LoaderContext::addImage(this, v8, &v9->isa);
  if (!v11)
  {
    return 1;
  }

  *(this + 2) = [(__CFString *)v9 stringByDeletingLastPathComponent];

  return LoaderContext::loadRecursive(this, v11, 0, v9, a3, a4);
}

void *LoaderContext::addImage(LoaderContext *this, MTLLibraryData *a2, NSString *a3)
{
  v4 = (*(*a2 + 72))(a2);
  v5 = (*(*a2 + 64))(a2);
  if ([v4 count] || objc_msgSend(v5, "count"))
  {
    operator new();
  }

  return 0;
}

uint64_t LoaderContext::getImage(LoaderContext *this, NSString *a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = *(this + 6);
  v3 = *(this + 7);
  if (v2 == v3)
  {
    return 0;
  }

  while (([*(*v2 + 8) isEqualToString:a2] & 1) == 0)
  {
    v2 += 8;
    if (v2 == v3)
    {
      return 0;
    }
  }

  return *v2;
}

void validateRenderRasterAndLater<MTLRenderPipelineDescriptorPrivate>(uint64_t a1, void *a2, uint64_t a3)
{
  v129[56] = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 184);
  v7 = [a2 supportsSeparateVisibilityAndShadingRate];
  v13 = *(a3 + 216);
  if (!v7)
  {
    if (v13)
    {
      _MTLMessageContextPush_(a1, 4, @"colorSampleCount expected to be 0.", v8, v9, v10, v11, v12, v116);
    }

    goto LABEL_17;
  }

  v14 = *(a3 + 184);
  if (v13)
  {
    v15 = v13 > v14;
  }

  else
  {
    v15 = 0;
  }

  if (v15)
  {
    _MTLMessageContextPush_(a1, 4, @"colorSampleCount expected to be smaller or equal to rasterSampleCount", v8, v9, v10, v11, v12, v116);
    v14 = *(a3 + 184);
    v13 = *(a3 + 216);
    if (v14)
    {
LABEL_7:
      if (v14 < v13)
      {
        _MTLMessageContextPush_(a1, 4, @"rasterSampleCount expected to be greater or equal to colorSampleCount", v8, v9, v10, v11, v12, v116);
        v13 = *(a3 + 216);
      }
    }
  }

  else if (v14)
  {
    goto LABEL_7;
  }

  if (v13)
  {
    v16 = [a2 supportsTextureSampleCount:?];
    v22 = *(a3 + 216);
    if ((v16 & 1) == 0)
    {
      _MTLMessageContextPush_(a1, 4, @"colorSampleCount (%lu) is not supported by device.", v17, v18, v19, v20, v21, *(a3 + 216));
      v22 = *(a3 + 216);
    }

    if (v22)
    {
      v6 = v22;
    }
  }

LABEL_17:
  v120 = v6;
  v122 = a2;
  v121 = [a2 maxColorAttachments];
  v23 = 0;
  v24 = 0;
  v123 = 0;
  for (i = 0; i != 8; ++i)
  {
    v26 = *(*a3 + 8 + 8 * i);
    if (!v26)
    {
      continue;
    }

    v27 = *(v26 + 8) >> 42;
    if (!v27)
    {
      continue;
    }

    v127 = 0;
    v125 = 0u;
    v126 = 0u;
    v124 = 0u;
    MTLPixelFormatGetInfoForDevice(v122, v27, &v124);
    v33 = *(v26 + 8);
    if ((v33 & 3) == 1)
    {
      if ((BYTE8(v124) & 8) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"Blending is enabled for render target %lu; however, the pixelformat %s for this render target is not blendable.", v28, v29, v30, v31, v32, i);
        v33 = *(v26 + 8);
      }

      if (((v33 >> 10) & 7) >= 5)
      {
        _MTLMessageContextPush_(a1, 4, @"factor is not a valid MTLBlendFactor.", v28, v29, v30, v31, v32, v116);
        v33 = *(v26 + 8);
      }

      if ((v33 & 0x38000) >= 0x28000)
      {
        _MTLMessageContextPush_(a1, 4, @"factor is not a valid MTLBlendFactor.", v28, v29, v30, v31, v32, v116);
        v33 = *(v26 + 8);
      }

      if ((v33 & 0x700000) >= 0x500000)
      {
        _MTLMessageContextPush_(a1, 4, @"factor is not a valid MTLBlendFactor.", v28, v29, v30, v31, v32, v116);
        v33 = *(v26 + 8);
      }

      if (((v33 >> 25) & 7) >= 5)
      {
        _MTLMessageContextPush_(a1, 4, @"factor is not a valid MTLBlendFactor.", v28, v29, v30, v31, v32, v116);
        v33 = *(v26 + 8);
      }

      if ((~v33 & 0x18) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"func is not a valid MTLBlendOperation.", v28, v29, v30, v31, v32, v116);
        v33 = *(v26 + 8);
      }

      if ((~v33 & 0xC0) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"func is not a valid MTLBlendOperation.", v28, v29, v30, v31, v32, v116);
        v33 = *(v26 + 8);
      }

      validateMTLPixelFormat(v33 >> 42, a1);
      v34 = *(v26 + 8);
      v35 = ((v34 >> 8) & 0x1F);
      if (i)
      {
        validateBlendFactorNotDualSourced(i, v35, a1, v28, v29, v30, v31, v32, v116);
        validateBlendFactorNotDualSourced(i, ((*(v26 + 8) >> 13) & 0x1F), a1, v36, v37, v38, v39, v40, v117);
        validateBlendFactorNotDualSourced(i, ((*(v26 + 8) >> 18) & 0x1F), a1, v41, v42, v43, v44, v45, v118);
        validateBlendFactorNotDualSourced(i, ((*(v26 + 8) >> 23) & 0x1F), a1, v46, v47, v48, v49, v50, v119);
        goto LABEL_52;
      }

      if (v35 >= MTLBlendFactorSource1Color)
      {
        if ((v35 - 15) < 4)
        {
          goto LABEL_50;
        }

        if (v35 != (MTLBlendFactorOneMinusSource1Alpha|MTLBlendFactorOne))
        {
          MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v29, v30, v31, v32, v116);
          v34 = *(v26 + 8);
        }
      }

      v51 = (v34 >> 13) & 0x1F;
      if (v51 >= 0xF)
      {
        if (v51 - 15 < 4)
        {
          goto LABEL_50;
        }

        if (v51 != 19)
        {
          MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v29, v30, v31, v32, v116);
          v34 = *(v26 + 8);
        }
      }

      v52 = (v34 >> 18) & 0x1F;
      if (v52 < 0xF)
      {
LABEL_40:
        v53 = (v34 >> 23) & 0x1F;
        if (v53 >= 0x14)
        {
          MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v29, v30, v31, v32, v116);
          goto LABEL_52;
        }

        v54 = 0x78000u >> v53;
        goto LABEL_51;
      }

      if (v52 - 15 >= 4)
      {
        if (v52 != 19)
        {
          MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v29, v30, v31, v32, v116);
          v34 = *(v26 + 8);
        }

        goto LABEL_40;
      }

LABEL_50:
      LOBYTE(v54) = 1;
LABEL_51:
      v123 = v54;
    }

LABEL_52:
    v55 = *(*(*a3 + 8 + 8 * i) + 12) & 0x1F;
    v56 = v55 > 0x10 || ((1 << v55) & 0x18001) == 0;
    if (v56 && (BYTE9(v124) & 0x80) != 0)
    {
      _MTLMessageContextPush_(a1, 4, @"writeMask(0x%lx) is not MTLColorWriteMaskAll or MTLColorWriteMaskNone or MTLColorWriteMaskUnspecialized for render target %lu; however, the pixelformat %s for this render target requires MTLColorWriteMaskAll or MTLColorWriteMaskNone or MTLColorWriteMaskUnspecialized.", v28, v29, v30, v31, v32, v55);
    }

    if (i >= v121)
    {
      _MTLMessageContextPush_(a1, 4, @"MTLRenderPipelineDescriptor color render target(%lu) exceeds platform max(%lu).", v28, v29, v30, v31, v32, i);
    }

    if (BYTE8(v124))
    {
      if ((BYTE8(v124) & 0x10) == 0)
      {
        goto LABEL_71;
      }
    }

    else
    {
      _MTLMessageContextPush_(a1, 4, @"pixelFormat, for color render target(%lu), is not a valid MTLPixelFormat.", v28, v29, v30, v31, v32, i);
      if ((BYTE8(v124) & 0x10) == 0)
      {
LABEL_71:
        _MTLMessageContextPush_(a1, 4, @"pixelFormat, for color render target(%lu), %s is not color renderable.", v28, v29, v30, v31, v32, i);
      }
    }

    if (((i != 0) & v123) == 1)
    {
      _MTLMessageContextPush_(a1, 4, @"Dual source blending is used in combination with multiple render targets", v28, v29, v30, v31, v32, v116);
    }

    v128[v23] = v27;
    v57 = &v129[7 * v23++];
    v58 = v125;
    *v57 = v124;
    *(v57 + 1) = v58;
    *(v57 + 2) = v126;
    v57[6] = v127;
    v24 = 1;
  }

  v59 = *(*a3 + 8);
  if (v59)
  {
    v60 = *(v59 + 8) >> 42;
    if (v60)
    {
      v127 = 0;
      v125 = 0u;
      v126 = 0u;
      v124 = 0u;
      MTLPixelFormatGetInfoForDevice(v122, v60, &v124);
      v66 = *(a3 + 224);
      v67 = BYTE8(v124);
      if ((v66 & 3) != 0 && (BYTE8(v124) & 8) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"MTLRenderPipelineDescriptor with alphaToCoverageEnabled requires a float/unorm pixel format, but colorAttachments[0].pixelFormat(%s) is not blendable", v61, v62, v63, v64, v65, v124);
        v66 = *(a3 + 224);
        v67 = BYTE8(v124);
      }

      if ((v66 & 0xC) != 0 && (v67 & 8) == 0)
      {
        _MTLMessageContextPush_(a1, 4, @"MTLRenderPipelineDescriptor with alphaToOneEnabled requires a float/unorm pixel format, but colorAttachments[0].pixelFormat(%s) is not blendable", v61, v62, v63, v64, v65, v124);
      }
    }
  }

  v68 = [v122 maxFramebufferStorageBits];
  v69 = MTLPixelFormatComputeTotalSizeUsed(v129, v128, v23, v120 > 1);
  if (([v122 isLargeMRTSupported] & 1) == 0 && 8 * v69 > v68)
  {
    _MTLMessageContextPush_(a1, 4, @"This set of render targets requires %lu bytes of pixel storage. This device supports %lu bytes.", v70, v71, v72, v73, v74, v69 & 0x1FFFFFFFFFFFFFFFLL);
  }

  v75 = *(a3 + 72);
  if (v75)
  {
    MTLPixelFormatGetInfoForDevice(v122, v75, &v124);
    v81 = v124;
    LOBYTE(v26) = BYTE8(v124);
    if (BYTE8(v124))
    {
      if ((BYTE8(v124) & 0x20) != 0)
      {
        goto LABEL_86;
      }

LABEL_112:
      _MTLMessageContextPush_(a1, 4, @"depthAttachmentPixelFormat %s is not depth renderable.", v76, v77, v78, v79, v80, v81);
    }

    else
    {
      _MTLMessageContextPush_(a1, 4, @"depthAttachmentPixelFormat is not a valid MTLPixelFormat.", v76, v77, v78, v79, v80, v116);
      if ((v26 & 0x20) == 0)
      {
        goto LABEL_112;
      }
    }

LABEL_86:
    v24 = 1;
  }

  v82 = *(a3 + 80);
  if (v82)
  {
    MTLPixelFormatGetInfoForDevice(v122, v82, &v124);
    v88 = v124;
    LOBYTE(i) = BYTE8(v124);
    if (BYTE8(v124))
    {
      if ((BYTE8(v124) & 0x40) != 0)
      {
        goto LABEL_90;
      }

LABEL_114:
      _MTLMessageContextPush_(a1, 4, @"stencilAttachmentPixelFormat %s is not stencil renderable.", v83, v84, v85, v86, v87, v88);
    }

    else
    {
      _MTLMessageContextPush_(a1, 4, @"stencilAttachmentPixelFormat is not a valid MTLPixelFormat.", v83, v84, v85, v86, v87, v116);
      if ((i & 0x40) == 0)
      {
        goto LABEL_114;
      }
    }

LABEL_90:
    v24 = 1;
  }

  if (dyld_program_sdk_at_least() && (([v122 supportsRenderPassWithoutRenderTarget] | v24) & 1) == 0)
  {
    _MTLMessageContextPush_(a1, 4, @"No valid pixelFormats set.", v89, v90, v91, v92, v93, v116);
  }

  v94 = *(a3 + 72);
  v95 = *(a3 + 80);
  if (v94 && v95 && i & 0x20 | v26 & 0x40 && v94 != v95)
  {
    Name = MTLPixelFormatGetName(v94);
    MTLPixelFormatGetName(*(a3 + 80));
    _MTLMessageContextPush_(a1, 4, @"depthAttachmentPixelFormat (%s) and stencilAttachmentPixelFormat (%s) must match.", v111, v112, v113, v114, v115, Name);
    v95 = *(a3 + 80);
    if (*(a3 + 72))
    {
      goto LABEL_99;
    }
  }

  else if (v94)
  {
LABEL_99:
    if (v95)
    {
      v96 = [v122 supportsSeparateDepthStencil];
      if (i & 0x20 | v26 & 0x40 || (v96 & 1) == 0)
      {
        v97 = *(a3 + 72);
        if (v97 != *(a3 + 80))
        {
          validateRenderRasterAndLater<MTLMeshRenderPipelineDescriptorPrivate>(v97, (a3 + 80));
        }
      }
    }
  }

  v98 = *(a3 + 476);
  if (!v98)
  {
    _MTLMessageContextPush_(a1, 4, @"maxVertexAmplificationCount (%u) cannot be set to zero.", v89, v90, v91, v92, v93, 0);
    v98 = *(a3 + 476);
  }

  if (([v122 supportsVertexAmplificationCount:v98] & 1) == 0)
  {
    _MTLMessageContextPush_(a1, 4, @"maxVertexAmplificationCount (%u) is not supported on this device. See supportsVertexAmplificationCount:(NSUInteger).", v99, v100, v101, v102, v103, *(a3 + 476));
  }

  if (([v122 supportsTextureWriteRoundingMode:*(a3 + 176)] & 1) == 0)
  {
    validateRenderRasterAndLater<MTLMeshRenderPipelineDescriptorPrivate>((a3 + 176));
  }

  validateMTLCompareFunction((*(a3 + 224) >> 25) & 7, a1, v104, v105, v106, v107, v108, v109, v116);
  validateMTLPixelFormat(*(a3 + 72), a1);
  validateMTLPixelFormat(*(a3 + 80), a1);
}

void validateMTLPixelFormat(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  MTLPixelFormatGetInfoForDevice(0, a1, v9);
  if (a1)
  {
    if ((BYTE8(v9[0]) & 1) == 0)
    {
      _MTLMessageContextPush_(a2, 4, @"pixelFormat is not a valid MTLPixelFormat.", v4, v5, v6, v7, v8, *&v9[0]);
    }
  }
}

dispatch_data_t createSerializedFragmentData<MTLRenderPipelineDescriptorPrivate>(uint64_t a1, int a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = *(*a3 + 8 + v4);
    if (v6 && *(v6 + 8) >> 42)
    {
      ++v5;
    }

    v4 += 8;
  }

  while (v4 != 64);
  v7 = *(a3 + 496);
  if (v7 && ([v7 functions] && objc_msgSend(objc_msgSend(*(a3 + 496), "functions"), "count") || objc_msgSend(*(a3 + 496), "privateFunctions") && objc_msgSend(objc_msgSend(*(a3 + 496), "privateFunctions"), "count")))
  {
    v8 = 1;
    v9 = 6;
  }

  else
  {
    v8 = 0;
    v9 = 4;
  }

  v31 = v9 * 4 + 2 * v5;
  v33 = MTLSerializePluginDataDictionary([objc_msgSend(*(a3 + 264) "device")], 0);
  v30 = v33 + v31;
  v34 = MTLSerializePluginDataDictionary(*(a3 + 464), 0);
  v10 = v34 + v33 + v31;
  if (v8)
  {
    _MTLPopulateLinkedFunctionExtraData(*(a3 + 496));
  }

  v11 = malloc_type_malloc(v10, 0x1000040504FFAC1uLL);
  bzero(v11, v10);
  v16 = 0;
  v17 = 0;
  v11[2] = (a2 << 6) & 0x40000000 | v5 | v11[2] & 0x9FFFFF00 | (((*(a3 + 224) >> 9) & 1) << 29);
  v18 = &v11[v9];
  do
  {
    v19 = *(*a3 + 8 + 8 * v16);
    if (v19)
    {
      v20 = *(v19 + 8);
      if (v20 >> 42)
      {
        *(v18 + v17++) = (v20 >> 38) & 0xFFF0 | v16;
        v21 = *(v19 + 8);
        if ((v21 & 3) != 0)
        {
          v22 = (v21 >> 8) & 0x1F;
          if (v22 >= 0xF)
          {
            if (v22 - 15 < 4)
            {
              goto LABEL_33;
            }

            if (v22 != 19)
            {
              MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v12, v13, v14, v15, v29);
              LODWORD(v21) = *(v19 + 8);
            }
          }

          v23 = (v21 >> 13) & 0x1F;
          if (v23 >= 0xF)
          {
            if (v23 - 15 < 4)
            {
              goto LABEL_33;
            }

            if (v23 != 19)
            {
              MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v12, v13, v14, v15, v29);
              LODWORD(v21) = *(v19 + 8);
            }
          }

          v24 = (v21 >> 18) & 0x1F;
          if (v24 >= 0xF)
          {
            if (v24 - 15 < 4)
            {
              goto LABEL_33;
            }

            if (v24 != 19)
            {
              MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v12, v13, v14, v15, v29);
              LODWORD(v21) = *(v19 + 8);
            }
          }

          v25 = (v21 >> 23) & 0x1F;
          if (v25 < 0xF)
          {
            goto LABEL_34;
          }

          if (v25 - 15 < 4)
          {
LABEL_33:
            v11[2] |= 65792 << v16;
            goto LABEL_34;
          }

          if (v25 != 19)
          {
            MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", v12, v13, v14, v15, v29);
          }
        }
      }
    }

LABEL_34:
    ++v16;
  }

  while (v16 != 8);
  v26 = *(a3 + 80);
  *(v11 + 6) = *(a3 + 72);
  *(v11 + 7) = v26;
  if (v33)
  {
    *v11 = v31;
    MTLSerializePluginDataDictionary([objc_msgSend(*(a3 + 264) "device")], v11 + v31);
  }

  if (v34)
  {
    v11[1] = v30;
    MTLSerializePluginDataDictionary(*(a3 + 464), v11 + v30);
  }

  v27 = *MEMORY[0x1E69E9648];

  return dispatch_data_create(v11, v10, 0, v27);
}

void std::vector<std::unique_ptr<LoaderContext::Image>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        std::unique_ptr<LoaderContext::Image>::reset[abi:ne200100](--v4, 0);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

id LoaderContext::finish(LoaderContext *this, uint64_t a2, id *a3)
{
  if ((*(this + 72) & 1) == 0)
  {
    return MEMORY[0x1E695E0F0];
  }

  if (*(this + 5))
  {
    v6 = 0;
    v7 = *(this + 4);
    while (1)
    {
      v8 = *(*(this + 6) + 8 * v6);
      if ((LoaderContext::loadRecursive(this, v8, v7, *(v8 + 8), a2, a3) & 1) == 0)
      {
        return 0;
      }

      if (++v6 >= *(this + 5))
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v9 = *(this + 6);
    v10 = *(this + 7);
    v11 = 126 - 2 * __clz((v10 - v9) >> 3);
    if (v10 == v9)
    {
      v12 = 0;
    }

    else
    {
      v12 = v11;
    }

    std::__introsort<std::_ClassicAlgPolicy,LoaderContext::finish(unsigned long,NSError **)::{lambda(std::unique_ptr<LoaderContext::Image> const&,std::unique_ptr<LoaderContext::Image> const&)#1} &,std::unique_ptr<LoaderContext::Image>*,false>(v9, v10, &v17, v12, 1);
    v13 = objc_opt_new();
    v15 = *(this + 6);
    v14 = *(this + 7);
    while (v15 != v14)
    {
      if (*(*v15 + 32))
      {
        [v13 addObject:?];
      }

      v15 += 8;
    }
  }

  return v13;
}

char *flatbuffers::FlatBufferBuilder::AddElement<unsigned int>(char *result, uint64_t a2, int a3, int a4)
{
  v5 = result;
  if (a3 != a4 || result[80] == 1)
  {
    v6 = flatbuffers::FlatBufferBuilder::PushElement<unsigned int>(result, a3);

    return flatbuffers::FlatBufferBuilder::TrackField(v5, a2, v6);
  }

  return result;
}

uint64_t MTLCompilerFSCache::getElement(uint64_t a1, unint64_t *a2, void *a3, size_t *a4)
{
  os_unfair_lock_lock((a1 + 136));
  v6 = *(a1 + 144);
  if (v6)
  {
    v7 = std::__hash_table<HashKey,KeyHashFunction,std::equal_to<HashKey>,std::allocator<HashKey>>::find<HashKey>(v6, a2);
    os_unfair_lock_unlock((a1 + 136));
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    os_unfair_lock_unlock((a1 + 136));
  }

  os_unfair_lock_lock((a1 + 8));
  if (MTLCompilerFSCache::openSync(a1, v8, v9, v10))
  {
    if (fscache_find_and_retain() == 203)
    {
      ++*(a1 + 16);
    }

    else if (!fscache_element_get_data() && fscache_remove_and_release() != 205)
    {
      MTLCompilerFSCache::invalidateCache(a1);
    }
  }

  os_unfair_lock_unlock((a1 + 8));
  return 0;
}

uint64_t _MTLCompilePerformanceStatisticsEnabled(uint64_t a1, uint64_t a2)
{
  if (_MTLCompilePerformanceStatisticsEnabled::onceToken != -1)
  {
    _MTLCompilePerformanceStatisticsEnabled_cold_1();
  }

  return _collectCompilePerformanceStats;
}

void flatbuffers::vector_downward::~vector_downward(flatbuffers::vector_downward *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = *this;
    if (*this)
    {
      (*(*v3 + 24))(v3);
    }

    else
    {
      MEMORY[0x1865FF1F0](v2, 0x1000C8077774924);
    }
  }

  *(this + 5) = 0;
  if (*(this + 8) == 1 && *this)
  {
    (*(**this + 8))(*this);
  }

  *this = 0;
  *(this + 8) = 0;
}

uint64_t MTLGetEnvDefault(const char *a1, uint64_t a2)
{
  v3 = getenv(a1);
  if (!v3)
  {
    return a2;
  }

  return strtol(v3, 0, 0);
}

void MTLDeviceArrayInitialize()
{
  dispatch_once(&initWrapperType(void)::pred, &__block_literal_global_1374);
}

{
  dispatch_once(&MTLDeviceArrayInitialize(void)::pred, &__block_literal_global_1294);
}

void ___ZL24MTLDeviceArrayInitializev_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  _deviceArrayQueue = dispatch_queue_create("com.Metal.DeviceArray", 0);
  _deviceArray = objc_alloc_init(MEMORY[0x1E695DF70]);

  objc_autoreleasePoolPop(v0);
}

void MTLLogAPIValidationType(int a1)
{
  if (a1 <= 2)
  {
    if (a1 == 1)
    {
      if (MTLFailureTypeGetEnabled(3uLL))
      {
        NSLog(&cfstr_MetalApiExtend.isa);
      }

      else
      {
        v1 = MTLReportFailureTypeEnabled(1uLL);
        v2 = "Disabled";
        if (v1)
        {
          v2 = "Enabled";
        }

        NSLog(&cfstr_MetalApiValida.isa, v2);
      }
    }

    else if (a1 == 2)
    {
      NSLog(&cfstr_MetalApiTeleme.isa);
    }
  }

  else if (a1 == 3)
  {
    NSLog(&cfstr_MetalApiCounte.isa);
  }

  else
  {
    if (a1 != 4)
    {
      if (a1 != 5)
      {
        return;
      }

      MTLLogAPIValidationType(1);
    }

    NSLog(&cfstr_MetalGpuValida.isa);
  }
}

void *getMetalPluginClassForService(io_registry_entry_t a1)
{
  CFProperty = IORegistryEntryCreateCFProperty(a1, @"MetalPluginName", 0, 0);
  if (CFProperty)
  {
    v3 = CFProperty;
    v4 = CFGetTypeID(CFProperty);
    if (v4 != CFStringGetTypeID() || (v5 = [MEMORY[0x1E696AAE8] bundleWithPath:{objc_msgSend(objc_msgSend(@"/System/Library/Extensions", "stringByAppendingPathComponent:", v3), "stringByAppendingString:", @".bundle"}]) == 0)
    {
      v10 = 0;
LABEL_14:
      CFRelease(v3);
      return v10;
    }

    v6 = v5;
    v7 = IORegistryEntryCreateCFProperty(a1, @"MetalPluginClassName", 0, 0);
    if (v7)
    {
      v8 = v7;
      v9 = CFGetTypeID(v7);
      if (v9 == CFStringGetTypeID())
      {
        v10 = [v6 classNamed:v8];
        CFRelease(v8);
        if (v10)
        {
          goto LABEL_12;
        }
      }

      else
      {
        CFRelease(v8);
      }
    }

    v10 = [v6 principalClass];
LABEL_12:
    if (![v10 isSubclassOfClass:objc_opt_class()])
    {
      v10 = 0;
    }

    goto LABEL_14;
  }

  return 0;
}

uint64_t ___ZL15initWrapperTypev_block_invoke()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  v8 = @"METAL_DEVICE_WRAPPER_TYPE";
  v9[0] = &unk_1EF4CFD38;
  [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
  _CFXPreferencesRegisterDefaultValues();
  v1 = MTLGetEnvDefault("MTL_DEBUG_LAYER", 0);
  v2 = MTLGetEnvDefault("MTL_SHADER_VALIDATION", 0);
  v3 = getenv([@"METAL_DEVICE_WRAPPER_TYPE" UTF8String]);
  if (v3)
  {
    result = strtol(v3, 0, 0);
    wrapperType = result;
  }

  else
  {
    result = [v0 integerForKey:@"METAL_DEVICE_WRAPPER_TYPE"];
    wrapperType = result;
    if (!result)
    {
      if (!v1)
      {
        if (!v2)
        {
          goto LABEL_16;
        }

        v5 = 4;
        goto LABEL_15;
      }

      if (!v2)
      {
        v6 = 1;
        goto LABEL_19;
      }

LABEL_14:
      v5 = 5;
LABEL_15:
      wrapperType = v5;
      goto LABEL_16;
    }
  }

  if (result == 4)
  {
    if (!v1)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  if (result == 1)
  {
    if (!v2)
    {
      return result;
    }

    goto LABEL_14;
  }

  if ((result - 1) < 2)
  {
    return result;
  }

LABEL_16:
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppBooleanValue(@"UseMetalTelemetry", @"com.apple.Metal", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat && result)
  {
    v6 = 2;
LABEL_19:
    wrapperType = v6;
  }

  return result;
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  if (__sz > 0x16)
  {
    if (__sz < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    std::string::__throw_length_error[abi:ne200100]();
  }

  *(&this->__r_.__value_.__s + 23) = __sz;
  v3 = __sz + 1;

  memmove(this, __s, v3);
}

void validateVertexAttribute(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!a1 || !*(a1 + 8))
  {
    _MTLMessageContextPush_(a4, 4, @"Attribute at index %d references a buffer at index %lu that has no stride.", a4, a5, a6, a7, a8, a2);
  }

  if (*(a3 + 8) >= 0x38uLL)
  {

    _MTLMessageContextPush_(a4, 4, @"format is not a valid MTLVertexFormat / MTLAttributeFormat.", a4, a5, a6, a7, a8, a9);
  }
}

{
  if (!a1 || !*(a1 + 8))
  {
    _MTLMessageContextPush_(a4, 4, @"Attribute at index %d references a buffer at index %lu that has no stride.", a4, a5, a6, a7, a8, a2);
  }

  v11 = *(a3 + 8);

  validateMTLAttributeFormat(v11, a4, a3, a4, a5, a6, a7, a8, a9);
}

void validateFunctionStepRate(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = [a1 patchType];
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        if (a1 && v8)
        {
          _MTLMessageContextPush_(a4, 4, @"MTLVertexStepFunctionPerVertex not allowed with postTessellationVertexFunction.", v9, v10, v11, v12, v13, v14);
        }

        if (a3 != 1)
        {
          _MTLMessageContextPush_(a4, 4, @"stepRate(%lu) must be one if stepFunction is MTLVertexStepFunctionPerVertex.", v9, v10, v11, v12, v13, a3);
        }
      }
    }

    else if (a3)
    {
      _MTLMessageContextPush_(a4, 4, @"stepRate(%lu) must be zero if stepFunction is MTLVertexStepFunctionConstant.", v9, v10, v11, v12, v13, a3);
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        if (!a3)
        {
          _MTLMessageContextPush_(a4, 4, @"stepRate(%lu) cannot be zero if stepFunction is MTLVertexStepFunctionPerInstance.", v9, v10, v11, v12, v13, 0);
        }

        break;
      case 3:
        if (a1 && !v8)
        {
          _MTLMessageContextPush_(a4, 4, @"MTLVertexStepFunctionPerPatch requires postTessellationVertexFunction.", v9, v10, v11, v12, v13, v14);
        }

        if (a3 != 1)
        {
          _MTLMessageContextPush_(a4, 4, @"stepRate(%lu) must be one if stepFunction is MTLVertexStepFunctionPerPatch.", v9, v10, v11, v12, v13, a3);
        }

        break;
      case 4:
        if (a1 && !v8)
        {
          _MTLMessageContextPush_(a4, 4, @"MTLVertexStepFunctionPerPatchControlPoint requires postTessellationVertexFunction.", v9, v10, v11, v12, v13, v14);
        }

        if (a3 != 1)
        {
          _MTLMessageContextPush_(a4, 4, @"stepRate(%lu) must be one if stepFunction is MTLVertexStepFunctionPerPatchAndPerInstance.", v9, v10, v11, v12, v13, a3);
        }

        break;
    }
  }
}

uint64_t flatbuffers::FlatBufferBuilder::PushElement<unsigned long long>(uint64_t a1, uint64_t a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 8uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 7)
  {
    flatbuffers::vector_downward::reallocate(a1, 8uLL);
    v4 = *(a1 + 48);
  }

  *(v4 - 8) = a2;
  v5 = v4 - 8;
  *(a1 + 48) = v5;
  return (*(a1 + 32) - v5 + *(a1 + 40));
}

void flatbuffers::DefaultAllocator::deallocate(flatbuffers::DefaultAllocator *this, unsigned __int8 *a2)
{
  if (a2)
  {
    JUMPOUT(0x1865FF1F0);
  }
}

_MTLFunctionInternal *MTLLibraryDataWithArchive::newAirScriptedFunction(MTLLibraryDataWithArchive *a1, unint64_t *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v25 = *MEMORY[0x1E69E9840];
  v8 = std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::find<MTLUINT256_t>(a4, a2);
  if (!v8)
  {
    return 0;
  }

  v9 = v8[6];
  if (!v9)
  {
    return 0;
  }

  v24.bitcodeType = 0;
  v24.pluginData = 0;
  *&v24.renderTargetArrayIndexType = 0;
  v24.functionInputs = 0;
  v24.airScript = 0;
  memset(&v24, 0, 56);
  v23 = 0;
  *__p = 0u;
  v21 = 0u;
  *v20 = 0u;
  *v19 = 0u;
  if (MTLLibraryDataWithArchive::getFunctionAtOffset(a1, v9, &v24, &v18))
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (SHIBYTE(v20[0]) >= 0)
    {
      v11 = v19;
    }

    else
    {
      v11 = v19[0];
    }

    v12 = [v10 initWithUTF8String:v11];
    v13 = [_MTLFunctionInternal alloc];
    v14 = [(_MTLFunctionInternal *)v13 initWithName:v12 type:v18 libraryData:a1 functionData:&v24 inheritedLibraryPath:a5 device:a3];
    v15 = v14;
    if (*(a1 + 66))
    {
      if (v14)
      {
        v16 = [(_MTLFunctionInternal *)v14 sourceArchiveOffset];
        if (v16 != -1)
        {
          [(_MTLFunctionInternal *)v15 setSourceArchiveOffset:*(a1 + 65) + v16];
        }
      }
    }
  }

  else
  {
    v15 = 0;
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (SHIBYTE(v21) < 0)
  {
    operator delete(v20[1]);
  }

  if (SHIBYTE(v20[0]) < 0)
  {
    operator delete(v19[0]);
  }

  return v15;
}

void *std::__hash_table<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,std::__unordered_map_hasher<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::__unordered_map_equal<MTLUINT256_t,std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>,UnorderedContainerHash,UnorderedContainerHash,true>,std::allocator<std::__hash_value_type<MTLUINT256_t,NSObject  {objcproto16OS_dispatch_data}*>>>::find<MTLUINT256_t>(void *a1, unint64_t *a2)
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
    if (v3 >= *&v2)
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
    if (v3 == v8)
    {
      if (result[2] == *a2 && result[3] == a2[1] && result[4] == a2[2] && result[5] == a2[3])
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

uint64_t LibraryWithData::extractFlatbuffer(LibraryWithData *this, char **a2, unsigned int *a3, NSError **a4)
{
  v35 = 0;
  if ((*(*this + 368))(this, &v35, 4) != 4)
  {
LABEL_34:
    if (!a4)
    {
      return 0;
    }

    v18 = MEMORY[0x1E695DF20];
    v19 = *MEMORY[0x1E696A578];
    v20 = @"Invalid library file/data (unexpected end of file)";
    goto LABEL_36;
  }

  v29 = a4;
  *a2 = 0;
  *a3 = 0;
  v8 = -1;
  v34 = 0;
  size = 0;
  v32 = -1;
  while (1)
  {
    if ((*(*this + 368))(this, &v34, 4) != 4)
    {
      goto LABEL_34;
    }

    v9 = bswap32(v34);
    v34 = v9;
    if (v9 <= 1396855641)
    {
      break;
    }

    if (v9 == 1396855642)
    {
      goto LABEL_21;
    }

    if (v9 == 1396856134)
    {
      goto LABEL_15;
    }

    v10 = 1396856154;
LABEL_11:
    if (v9 != v10)
    {
      goto LABEL_25;
    }

    if ((*(*this + 368))(this, &v32, 4) != 4)
    {
      goto LABEL_34;
    }

    v8 = (*(*this + 392))(this);
    v11 = (*(*this + 392))(this);
    if (((*(*this + 360))(this, v11 + v32) & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_26:
    if (v34 == 1162757204)
    {
LABEL_27:
      result = 1;
      if (v32 == -1 || v8 == -1)
      {
        return result;
      }

      v17 = (*(*this + 392))(this);
      if ((*(*this + 360))(this, v8))
      {
        if (!malloc_type_posix_memalign(a2, 0x10uLL, size, 0xBF1769B2uLL))
        {
          if ((*(*this + 232))(this, *a2, size, *(this + 81) + *(this + 83), v32))
          {
            *a3 = 0;
            if ((*(*this + 360))(this, v17))
            {
              return 1;
            }

            v28 = a4;
            goto LABEL_49;
          }

          free(*a2);
        }

        result = 0;
        *a2 = 0;
        return result;
      }

LABEL_39:
      if (!a4)
      {
        return 0;
      }

      v18 = MEMORY[0x1E695DF20];
      v19 = *MEMORY[0x1E696A578];
      v20 = @"Invalid library file (unexpected end of file)";
LABEL_36:
      v21 = [v18 dictionaryWithObject:v20 forKey:{v19, v29}];
      v22 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v21];
      result = 0;
      *a4 = v22;
      return result;
    }
  }

  if (v9 <= 1380078917)
  {
    if (v9 != 1380078426)
    {
      if (v9 == 1162757204)
      {
        goto LABEL_27;
      }

LABEL_25:
      v15 = (*(*this + 392))(this);
      if (((*(*this + 360))(this, v15 + HIDWORD(size)) & 1) == 0)
      {
        v28 = a4;
LABEL_49:
        generateNSError(v28, &cfstr_Mtllibraryerro.isa, MTLLibraryErrorUnsupported, &cfstr_InvalidLibrary_1.isa);
        return 0;
      }

      goto LABEL_26;
    }

LABEL_21:
    LOWORD(v31) = 0;
    if ((*(*this + 368))(this, &v31, 2) != 2 || (v14 = v31, (*(*this + 368))(this, &size, v31) != v14))
    {
      if (!a4)
      {
        return 0;
      }

      v23 = MEMORY[0x1E695DF20];
      v24 = *MEMORY[0x1E696A578];
      v25 = @"Invalid library file/data (unexpected end of file)";
LABEL_43:
      v26 = [v23 dictionaryWithObject:v25 forKey:{v24, a4}];
      *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v26];
      return 0;
    }

    goto LABEL_26;
  }

  if (v9 != 1380078918)
  {
    v10 = 1380078938;
    goto LABEL_11;
  }

LABEL_15:
  if ((*(*this + 368))(this, &size + 4, 4) != 4)
  {
    goto LABEL_34;
  }

  v12 = (*(*this + 392))(this);
  v31 = 0;
  v30 = 0;
  if (((*(*this + 224))(this, a2, v12, HIDWORD(size), 16, &v31, &v30) & 1) == 0)
  {
    goto LABEL_47;
  }

  if (((*(*this + 360))(this, v31) & 1) == 0)
  {
    if (!a4)
    {
      return 0;
    }

    v23 = MEMORY[0x1E695DF20];
    v24 = *MEMORY[0x1E696A578];
    v25 = @"Invalid library file (unexpected end of file)";
    goto LABEL_43;
  }

  v13 = v30;
  if ((*(*this + 368))(this, *a2, v30) == v13)
  {
    *a3 = v30;
    goto LABEL_26;
  }

  if (a4)
  {
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObject:@"Invalid library file/data (unexpected end of file)" forKey:*MEMORY[0x1E696A578]];
    *a4 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:@"MTLLibraryErrorDomain" code:1 userInfo:v27];
  }

  free(*a2);
LABEL_47:
  *a2 = 0;
  return 0;
}

BOOL MTLLibraryData::alignFlatbuffer(MTLLibraryData *this, char **memptr, uint64_t a3, unsigned int a4, size_t alignment, unint64_t *a6, unsigned int *a7)
{
  v7 = (alignment - 1);
  v8 = __CFADD__(a3, v7);
  v9 = a3 + v7;
  if (v8)
  {
    return 0;
  }

  v10 = v9 & -alignment;
  *a6 = v10;
  v11 = v10 - a3;
  if (v11 > a4)
  {
    return 0;
  }

  v13 = a4 - v11;
  *a7 = v13;
  return malloc_type_posix_memalign(memptr, alignment, v13, 0x71330C81uLL) == 0;
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool>(uint64_t a1, _BYTE *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if (v4 == *(a1 + 56))
  {
    flatbuffers::vector_downward::reallocate(a1, 1uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 1;
  *(v4 - 1) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool4>(uint64_t a1, _DWORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 3)
  {
    flatbuffers::vector_downward::reallocate(a1, 4uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 4;
  *(v4 - 4) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

uint64_t flatbuffers::FlatBufferBuilder::CreateStruct<Mtl4::ConstantBool2>(uint64_t a1, _WORD *a2)
{
  flatbuffers::FlatBufferBuilder::Align(a1, 1uLL);
  v4 = *(a1 + 48);
  if ((v4 - *(a1 + 56)) <= 1)
  {
    flatbuffers::vector_downward::reallocate(a1, 2uLL);
    v4 = *(a1 + 48);
  }

  *(a1 + 48) = v4 - 2;
  *(v4 - 2) = *a2;
  return (*(a1 + 32) - *(a1 + 48) + *(a1 + 40));
}

void std::__destroy_at[abi:ne200100]<std::pair<std::string const,MTLConstantStorage::ConstantData>,0>(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    MEMORY[0x1865FF1F0](v2, 0x1000C8077774924);
  }

  if (*(a1 + 23) < 0)
  {
    v3 = *a1;

    operator delete(v3);
  }
}

void sub_185BC2598(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  MEMORY[0x1865FF1F0](v16, v15, a3, a4, a5, a6, a7, a8);
  _Unwind_Resume(a1);
}

uint64_t std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(uint64_t a1, uint64_t *a2, const void **a3)
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
        if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a3, (v4 + 32)))
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

      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v8 + 32), a3))
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

LABEL_9:
  *a2 = v8;
  return v5;
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<std::string,MTLConstantStorage::ConstantData>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,MTLConstantStorage::ConstantData>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::string const,MTLConstantStorage::ConstantData>,0>(v2 + 32);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__emplace_hint_unique_key_args<std::string,std::pair<std::string const,MTLConstantStorage::ConstantData> const&>(uint64_t **a1, uint64_t a2, const void **a3, uint64_t a4)
{
  v4 = *std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__construct_node<std::pair<std::string const,MTLConstantStorage::ConstantData> const&>();
  }

  return v4;
}

uint64_t *std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, const void **a5)
{
  v9 = a1 + 1;
  if (a1 + 1 != a2 && !std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a5, (a2 + 32)))
  {
    if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (a2 + 32), a5))
    {
      *a3 = a2;
      *a4 = a2;
      return a4;
    }

    a4 = (a2 + 8);
    v13 = *(a2 + 8);
    if (v13)
    {
      v14 = *(a2 + 8);
      do
      {
        v15 = v14;
        v14 = *v14;
      }

      while (v14);
    }

    else
    {
      v18 = a2;
      do
      {
        v15 = *(v18 + 16);
        v17 = *v15 == v18;
        v18 = v15;
      }

      while (!v17);
    }

    if (v15 != v9)
    {
      if (!std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, a5, (v15 + 32)))
      {
        goto LABEL_28;
      }

      v13 = *a4;
    }

    if (v13)
    {
      *a3 = v15;
      return v15;
    }

    else
    {
      *a3 = a2;
    }

    return a4;
  }

  if (*a1 == a2)
  {
    v12 = a2;
LABEL_16:
    if (*a2)
    {
      *a3 = v12;
      return (v12 + 8);
    }

    else
    {
      *a3 = a2;
      return a2;
    }
  }

  v11 = *a2;
  if (*a2)
  {
    do
    {
      v12 = v11;
      v11 = *(v11 + 8);
    }

    while (v11);
  }

  else
  {
    v16 = a2;
    do
    {
      v12 = *(v16 + 16);
      v17 = *v12 == v16;
      v16 = v12;
    }

    while (v17);
  }

  if (std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>::operator()[abi:ne200100](a1, (v12 + 32), a5))
  {
    goto LABEL_16;
  }

LABEL_28:

  return std::__tree<std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLConstantStorage::ConstantData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLConstantStorage::ConstantData>>>::__find_equal<std::string>(a1, a3, a5);
}

void std::pair<std::string const,MTLConstantStorage::ConstantData>::pair[abi:ne200100](std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  _MTLConstantDataSize(*(a2 + 24));
  this[1].__r_.__value_.__s.__data_[0] = *(a2 + 24);
  operator new[]();
}

void sub_185BC2ABC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL MTLHashKey::operator==(void *a1, void *a2)
{
  if (*a2 != *a1)
  {
    return 0;
  }

  return a2[3] == a1[3] && a2[4] == a1[4] && a2[5] == a1[5] && a2[6] == a1[6];
}

uint64_t MTLHashKey::description(MTLHashKey *this)
{
  v26 = *MEMORY[0x1E69E9840];
  if (this->var0.var0)
  {
    v2 = @"Key: \n";
  }

  else
  {
    v2 = @"Legacy key:\n";
  }

  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:v2];
  if (this->var0.var0)
  {
    v4 = this->var0.var0 >> this->var0.var2;
    v5 = (v4 + 1);
    var0 = this->var2.var0;
    v7 = *(var0 + 1);
    v24 = *var0;
    v25 = v7;
    v8 = [v3 stringByAppendingFormat:@" %@ Function hash\n ", _MTLRequestHashToString(&v24)];
    if (v5 >= 2)
    {
      v9 = 1;
      v10 = 32;
      do
      {
        v11 = (this->var2.var0 + v10);
        v12 = v11[1];
        v24 = *v11;
        v25 = v12;
        v8 = [v8 stringByAppendingFormat:@"%@ Linked bitcode(%i)\n ", _MTLRequestHashToString(&v24), v9++];
        v10 += 32;
      }

      while (v5 != v9);
    }

    if ((this->var0.var0 & 2) != 0)
    {
      v14 = v4 + 2;
      v17 = (this->var2.var0 + 32 * v5);
      v18 = v17[1];
      v24 = *v17;
      v25 = v18;
      v13 = [v8 stringByAppendingFormat:@"%@ air-nt \n ", _MTLRequestHashToString(&v24)];
    }

    else
    {
      v13 = [v8 stringByAppendingString:@"n/a \n"];
      v14 = v4 + 1;
    }

    if ((this->var0.var0 & 4) != 0)
    {
      v20 = (this->var2.var0 + 32 * v14);
      v21 = v20[1];
      ++v14;
      v24 = *v20;
      v25 = v21;
      v19 = [v13 stringByAppendingFormat:@"%@ air-nt plugin\n ", _MTLRequestHashToString(&v24)];
    }

    else
    {
      v19 = [v13 stringByAppendingString:@"n/a \n"];
    }

    if ((this->var0.var0 & 8) != 0)
    {
      v22 = (this->var2.var0 + 32 * v14);
      v23 = v22[1];
      v24 = *v22;
      v25 = v23;
      return [v19 stringByAppendingFormat:@"%@ metal framework \n ", _MTLRequestHashToString(&v24)];
    }

    else
    {
      return [v19 stringByAppendingString:@"n/a \n"];
    }
  }

  else
  {
    v15 = *&this->var1.var0[16];
    v24 = *this->var1.var0;
    v25 = v15;
    return [v3 stringByAppendingFormat:@"%@ Single SHA256 \n ", _MTLRequestHashToString(&v24)];
  }
}

uint64_t _MTLRequestHashToString(uint64_t a1)
{
  v2 = 0;
  memset(&v7, 0, sizeof(v7));
  do
  {
    v3 = *(a1 + v2);
    std::string::push_back(&v7, _MTLRequestHashToString(MTLUINT256_t)::hexChars[v3 >> 4]);
    std::string::push_back(&v7, _MTLRequestHashToString(MTLUINT256_t)::hexChars[v3 & 0xF]);
    ++v2;
  }

  while (v2 != 32);
  if ((v7.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v4 = &v7;
  }

  else
  {
    v4 = v7.__r_.__value_.__r.__words[0];
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v4];
  if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v7.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_185BC2ED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

unint64_t MTLRangeAllocatorGetMaxFreeSize(unsigned int *a1, unint64_t a2)
{
  v2 = a1[2];
  if (!v2)
  {
    return 0;
  }

  result = 0;
  v5 = (*a1 + 8);
  do
  {
    v6 = *(v5 - 1);
    if (a2)
    {
      if (v6 % a2)
      {
        v7 = a2 - v6 % a2;
      }

      else
      {
        v7 = 0;
      }

      v6 += v7;
    }

    v8 = *v5;
    v5 += 2;
    v9 = v8 + 1;
    v10 = v8 + 1 - v6;
    if (v10 <= result)
    {
      v10 = result;
    }

    if (v9 > v6)
    {
      result = v10;
    }

    --v2;
  }

  while (v2);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x1E69E5420], MEMORY[0x1E69E52A8]);
}

uint64_t getDefaultPostVertexBuiltins(uint64_t a1, uint64_t a2, unsigned int a3, unsigned int *a4, void *a5)
{
  v7 = a3;
  if (!a4)
  {
    v16 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.vertex_id" dataType:33 pixelFormat:0 aluType:33 name:&stru_1EF478240 offset:a3];
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a2, &v16);
    v7 += 4;
  }

  v16 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.instance_id" dataType:33 pixelFormat:0 aluType:33 name:&stru_1EF478240 offset:v7];
  std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a2, &v16);
  v10 = v7 + 4;
  if (a4)
  {
    v16 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.patch_id" dataType:33 pixelFormat:0 aluType:33 name:&stru_1EF478240 offset:v7 + 4];
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a2, &v16);
    v10 = v7 + 8;
    v11 = AirReflection::Node::node_as_PatchFnAttr((a1 + 4 * *a4 + 4 + *(a1 + 4 * *a4 + 4)));
    v12 = (v11 - *v11);
    if (*v12 < 5u || (v13 = v12[2]) == 0)
    {
LABEL_8:
      v16 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.position_in_patch" dataType:5 pixelFormat:0 aluType:3 name:&stru_1EF478240 offset:v7 + 8];
      std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a2, &v16);
      v10 = v7 + 20;
      goto LABEL_9;
    }

    v14 = *(v11 + v13);
    if (v14 != 1)
    {
      if (v14)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v16 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.position_in_patch" dataType:4 pixelFormat:0 aluType:3 name:&stru_1EF478240 offset:v7 + 8];
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a2, &v16);
    v10 = v7 + 16;
  }

LABEL_9:
  if ([a5 supportsVertexAmplificationCount:2])
  {
    v16 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.amplification_id" dataType:33 pixelFormat:0 aluType:33 name:&stru_1EF478240 offset:v10];
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a2, &v16);
    return (v10 + 4);
  }

  return v10;
}

uint64_t getPostVertexDumpOutputForNode(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (a2 + 4 * *a1 + 4 + *(a2 + 4 * *a1 + 4));
  v6 = (v5 - *v5);
  if (*v6 < 5u)
  {
    return a4;
  }

  v7 = v6[2];
  if (!v7)
  {
    return a4;
  }

  v9 = *(v5 + v7);
  v112 = 0;
  if (v9 > 135169)
  {
    if (v9 <= 139265)
    {
      if (v9 >= 139264)
      {
        if (v9 == 139264)
        {
          v10 = AirReflection::Node::node_as_AcceptIntersectionRet(v5);
          v48 = *v10;
          v49 = -v48;
          v50 = (v10 - v48);
          if (*v50 >= 9u && (v51 = v50[4]) != 0)
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v51 + *(v10 + v51) + 4];
            v49 = -*v10;
          }

          else
          {
            v15 = &stru_1EF478240;
          }

          v87 = (v10 + v49 + 6);
          v88 = @"air.accept_intersection";
        }

        else
        {
          v10 = AirReflection::Node::node_as_ContinueSearchRet(v5);
          v28 = *v10;
          v29 = -v28;
          v30 = (v10 - v28);
          if (*v30 >= 9u && (v31 = v30[4]) != 0)
          {
            v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v31 + *(v10 + v31) + 4];
            v29 = -*v10;
          }

          else
          {
            v15 = &stru_1EF478240;
          }

          v87 = (v10 + v29 + 6);
          v88 = @"air.continue_search";
        }
      }

      else if (v9 == 135170)
      {
        v10 = AirReflection::Node::node_as_StencilRet(v5);
        v44 = *v10;
        v45 = -v44;
        v46 = (v10 - v44);
        if (*v46 >= 9u && (v47 = v46[4]) != 0)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v47 + *(v10 + v47) + 4];
          v45 = -*v10;
        }

        else
        {
          v15 = &stru_1EF478240;
        }

        v87 = (v10 + v45 + 6);
        v88 = @"air.stencil";
      }

      else
      {
        if (v9 != 135171)
        {
          return a4;
        }

        v10 = AirReflection::Node::node_as_SampleMaskRet(v5);
        v20 = *v10;
        v21 = -v20;
        v22 = (v10 - v20);
        if (*v22 >= 9u && (v23 = v22[4]) != 0)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v23 + *(v10 + v23) + 4];
          v21 = -*v10;
        }

        else
        {
          v15 = &stru_1EF478240;
        }

        v87 = (v10 + v21 + 6);
        v88 = @"air.sample_mask";
      }
    }

    else
    {
      if (v9 > 143360)
      {
        if (v9 != 143361)
        {
          if (v9 == 143362)
          {
            v10 = AirReflection::Node::node_as_PrimitiveCulledRet(v5);
            v52 = *v10;
            v53 = -v52;
            v54 = (v10 - v52);
            if (*v54 >= 0xBu && (v55 = v54[5]) != 0)
            {
              v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v55 + *(v10 + v55) + 4];
              v53 = -*v10;
            }

            else
            {
              v15 = &stru_1EF478240;
            }

            v87 = (v10 + v53 + 8);
            v88 = @"air.primitive_culled";
          }

          else
          {
            if (v9 != 143363)
            {
              return a4;
            }

            v10 = AirReflection::Node::node_as_PrimitiveIDRet(v5);
            v11 = *v10;
            v12 = -v11;
            v13 = (v10 - v11);
            if (*v13 >= 0xBu && (v14 = v13[5]) != 0)
            {
              v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v14 + *(v10 + v14) + 4];
              v12 = -*v10;
            }

            else
            {
              v15 = &stru_1EF478240;
            }

            v87 = (v10 + v12 + 8);
            v88 = @"air.primitive_id";
          }

          goto LABEL_108;
        }

        v10 = AirReflection::Node::node_as_MeshVertexDataRet(v5);
        v79 = *v10;
        v80 = -v79;
        v81 = (v10 - v79);
        if (*v81 >= 0xFu && (v82 = v81[7]) != 0)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v82 + *(v10 + v82) + 4];
          v80 = -*v10;
        }

        else
        {
          v15 = &stru_1EF478240;
        }

        v87 = (v10 + v80 + 12);
        v88 = @"air.vertex_data";
LABEL_111:
        v89 = 12;
        goto LABEL_112;
      }

      if (v9 != 139266)
      {
        if (v9 != 143360)
        {
          return a4;
        }

        v10 = AirReflection::Node::node_as_MeshPrimitiveDataRet(v5);
        v40 = *v10;
        v41 = -v40;
        v42 = (v10 - v40);
        if (*v42 >= 0xFu && (v43 = v42[7]) != 0)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v43 + *(v10 + v43) + 4];
          v41 = -*v10;
        }

        else
        {
          v15 = &stru_1EF478240;
        }

        v87 = (v10 + v41 + 12);
        v88 = @"air.mesh_primitive_data";
        goto LABEL_111;
      }

      v10 = AirReflection::Node::node_as_DistanceRet(v5);
      v83 = *v10;
      v84 = -v83;
      v85 = (v10 - v83);
      if (*v85 >= 9u && (v86 = v85[4]) != 0)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v86 + *(v10 + v86) + 4];
        v84 = -*v10;
      }

      else
      {
        v15 = &stru_1EF478240;
      }

      v87 = (v10 + v84 + 6);
      v88 = @"air.distance";
    }

    v89 = 6;
LABEL_112:
    v90 = v10 + *v87 + *(v10 + *v87);
    v91 = strlen(v90 + 4);
    v92 = dataTypeFromString(v90 + 4, v91, 0, &v112);
    v93 = (v10 + *(v10 + v89 - *v10));
    v94 = v93 + *v93;
    v95 = strlen(v94 + 4);
    v96 = pixelFormatAndALUTypeFromString(v94 + 4, v95);
    v97 = HIDWORD(v96);
    v98 = v96;
    ComponentType = MTLDataTypeGetComponentType(v92);
    ComponentCount = MTLDataTypeGetComponentCount(v92);
    v101 = MTLDataTypeGetSize(ComponentType) * ComponentCount;
    if (v101 <= 4)
    {
      v101 = 4;
    }

    v102 = (v101 + 3) & 0xFFFFFFFC;
    v111 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:v88 dataType:v92 pixelFormat:v98 aluType:v97 name:v15 offset:a4];
    std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a3, &v111);
    return v102 + a4;
  }

  if (v9 > 131075)
  {
    if (v9 >= 135168)
    {
      if (v9 == 135168)
      {
        v10 = AirReflection::Node::node_as_RenderTargetRet(v5);
        v75 = *v10;
        v76 = -v75;
        v77 = (v10 - v75);
        if (*v77 >= 0x11u && (v78 = v77[8]) != 0)
        {
          v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v78 + *(v10 + v78) + 4];
          v76 = -*v10;
        }

        else
        {
          v15 = &stru_1EF478240;
        }

        v87 = (v10 + v76 + 14);
        v88 = @"air.render_target";
        v89 = 14;
        goto LABEL_112;
      }

      v10 = AirReflection::Node::node_as_DepthRet(v5);
      v36 = *v10;
      v37 = -v36;
      v38 = (v10 - v36);
      if (*v38 >= 0xBu && (v39 = v38[5]) != 0)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v39 + *(v10 + v39) + 4];
        v37 = -*v10;
      }

      else
      {
        v15 = &stru_1EF478240;
      }

      v87 = (v10 + v37 + 8);
      v88 = @"air.depth";
      goto LABEL_108;
    }

    if (v9 == 131076)
    {
      v10 = AirReflection::Node::node_as_VertexOutputRet(v5);
      v67 = *v10;
      v68 = -v67;
      v69 = (v10 - v67);
      if (*v69 >= 0xFu && (v70 = v69[7]) != 0)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v70 + *(v10 + v70) + 4];
        v68 = -*v10;
      }

      else
      {
        v15 = &stru_1EF478240;
      }

      v87 = (v10 + v68 + 12);
      v88 = @"air.vertex_output";
      goto LABEL_111;
    }

    if (v9 != 131077)
    {
      return a4;
    }

    v10 = AirReflection::Node::node_as_ViewportArrayIndexRet(v5);
    v24 = *v10;
    v25 = -v24;
    v26 = (v10 - v24);
    if (*v26 >= 0xBu && (v27 = v26[5]) != 0)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v27 + *(v10 + v27) + 4];
      v25 = -*v10;
    }

    else
    {
      v15 = &stru_1EF478240;
    }

    v87 = (v10 + v25 + 8);
    v88 = @"air.viewport_array_index";
LABEL_108:
    v89 = 8;
    goto LABEL_112;
  }

  if (v9 > 131073)
  {
    if (v9 == 131074)
    {
      v10 = AirReflection::Node::node_as_PositionRet(v5);
      v71 = *v10;
      v72 = -v71;
      v73 = (v10 - v71);
      if (*v73 >= 0xDu && (v74 = v73[6]) != 0)
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v74 + *(v10 + v74) + 4];
        v72 = -*v10;
      }

      else
      {
        v15 = &stru_1EF478240;
      }

      v87 = (v10 + v72 + 10);
      v88 = @"air.position";
      v89 = 10;
      goto LABEL_112;
    }

    v10 = AirReflection::Node::node_as_RenderTargetArrayIndexRet(v5);
    v32 = *v10;
    v33 = -v32;
    v34 = (v10 - v32);
    if (*v34 >= 0xBu && (v35 = v34[5]) != 0)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v35 + *(v10 + v35) + 4];
      v33 = -*v10;
    }

    else
    {
      v15 = &stru_1EF478240;
    }

    v87 = (v10 + v33 + 8);
    v88 = @"air.render_target_array_index";
    goto LABEL_108;
  }

  if (v9 != 0x20000)
  {
    if (v9 != 131073)
    {
      return a4;
    }

    v10 = AirReflection::Node::node_as_PointSizeRet(v5);
    v16 = *v10;
    v17 = -v16;
    v18 = (v10 - v16);
    if (*v18 >= 0xBu && (v19 = v18[5]) != 0)
    {
      v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v10 + v19 + *(v10 + v19) + 4];
      v17 = -*v10;
    }

    else
    {
      v15 = &stru_1EF478240;
    }

    v87 = (v10 + v17 + 8);
    v88 = @"air.point_size";
    goto LABEL_108;
  }

  v56 = AirReflection::Node::node_as_ClipDistanceRet(v5);
  v57 = (v56 + *(v56 - *v56 + 10));
  v58 = v57 + *v57;
  v59 = strlen(v58 + 4);
  v60 = dataTypeFromString(v58 + 4, v59, 0, &v112);
  v61 = *v56;
  v62 = v56 - v61;
  v63 = *(v56 - v61);
  if (v63 < 7)
  {
    goto LABEL_126;
  }

  if (*(v62 + 3))
  {
    v64 = -v61;
    if (v63 >= 0xD && (v65 = *(v62 + 6)) != 0)
    {
      v66 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v56 + v65 + *(v56 + v65) + 4];
      v64 = -*v56;
    }

    else
    {
      v66 = &stru_1EF478240;
    }

    if (*(v56 + *(v56 + v64 + 6)))
    {
      v104 = 0;
      do
      {
        v105 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%d]", v66, v104];
        v106 = v112;
        if (v112 <= 4)
        {
          v106 = 4;
        }

        v107 = (v106 + 3) & 0xFFFFFFFC;
        v111 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.clip_distance" dataType:v60 pixelFormat:0 aluType:0 name:v105 offset:a4];
        std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a3, &v111);
        a4 = v107 + a4;
        v104 = (v104 + 1);
      }

      while (v104 < *(v56 + *(v56 - *v56 + 6)));
    }

    return a4;
  }

  if (v63 >= 0xD && *(v62 + 6))
  {
    v108 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v56 + *(v62 + 6) + *(v56 + *(v62 + 6)) + 4];
  }

  else
  {
LABEL_126:
    v108 = &stru_1EF478240;
  }

  v109 = v112;
  if (v112 <= 4)
  {
    v109 = 4;
  }

  v110 = (v109 + 3) & 0xFFFFFFFC;
  v111 = [[MTLPostVertexDumpOutput alloc] initWithAirMDType:@"air.clip_distance" dataType:v60 pixelFormat:0 aluType:0 name:v108 offset:a4];
  std::vector<MTLPipelineLibrarySerializer::SerializedObject>::push_back[abi:ne200100](a3, &v111);
  return v110 + a4;
}

uint64_t dataTypeFromString(const void *a1, size_t a2, _DWORD *a3, _DWORD *a4)
{
  dataTypeInfoFromString(a1, a2, v7);
  result = v7[0];
  if (a3)
  {
    *a3 = v7[1];
  }

  if (a4)
  {
    *a4 = v7[2];
  }

  return result;
}

uint64_t MTLDataTypeGetComponentType(uint64_t result)
{
  switch(result)
  {
    case 16:
    case 29:
    case 33:
    case 37:
    case 41:
    case 45:
    case 49:
    case 53:
    case 81:
    case 85:
    case 121:
      return result;
    case 17:
    case 18:
    case 19:
      result = 16;
      break;
    case 20:
    case 21:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 57:
    case 58:
    case 59:
    case 60:
    case 61:
    case 62:
    case 63:
    case 64:
    case 65:
    case 66:
    case 67:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 74:
    case 75:
    case 76:
    case 77:
    case 78:
    case 79:
    case 80:
    case 89:
    case 90:
    case 91:
    case 92:
    case 93:
    case 94:
    case 95:
    case 96:
    case 97:
    case 98:
    case 99:
    case 100:
    case 101:
    case 102:
    case 103:
    case 104:
    case 105:
    case 106:
    case 107:
    case 108:
    case 109:
    case 110:
    case 111:
    case 112:
    case 113:
    case 114:
    case 115:
    case 116:
    case 117:
    case 118:
    case 119:
    case 120:
      goto LABEL_15;
    case 30:
    case 31:
    case 32:
      result = 29;
      break;
    case 34:
    case 35:
    case 36:
      result = 33;
      break;
    case 38:
    case 39:
    case 40:
      result = 37;
      break;
    case 42:
    case 43:
    case 44:
      result = 41;
      break;
    case 46:
    case 47:
    case 48:
      result = 45;
      break;
    case 50:
    case 51:
    case 52:
      result = 49;
      break;
    case 54:
    case 55:
    case 56:
      result = 53;
      break;
    case 82:
    case 83:
    case 84:
      result = 81;
      break;
    case 86:
    case 87:
    case 88:
      result = 85;
      break;
    case 122:
    case 123:
    case 124:
      result = 121;
      break;
    default:
      if ((result - 3) >= 4)
      {
LABEL_15:
        result = 0;
      }

      else
      {
        result = 3;
      }

      break;
  }

  return result;
}

void MTLVertexReflectionDeserializerAIR::~MTLVertexReflectionDeserializerAIR(MTLVertexReflectionDeserializerAIR *this)
{
  MTLInputStageReflectionDeserializer::~MTLInputStageReflectionDeserializer(this);

  JUMPOUT(0x1865FF210);
}

void MTLVertexReflectionReader::~MTLVertexReflectionReader(MTLVertexReflectionReader *this)
{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1865FF210);
}

{
  *this = &unk_1EF474F98;
  v2 = *(this + 1);
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  *(this + 1) = 0;
}

void validateBlendFactorNotDualSourced(uint64_t a1, MTLBlendFactor a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a2 >= MTLBlendFactorSource1Color)
  {
    if ((a2 - 15) >= 4)
    {
      if (a2 != (MTLBlendFactorOneMinusSource1Alpha|MTLBlendFactorOne))
      {

        MTLReportFailure(0, "blendFactorSource", 4740, @"Invalid blend factor", a5, a6, a7, a8, a9);
      }
    }

    else
    {
      MTLBlendFactorString(a2);
      _MTLMessageContextPush_(a3, 4, @"MTLRenderPipelineDescriptor color render target(%lu) is using a blend factor (%@)which is can only be used for render target 0", v12, v13, v14, v15, v16, a1);
    }
  }
}

uint64_t createFunctionArray(flatbuffers::FlatBufferBuilder *a1, void *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  __p = 0;
  v21 = 0;
  v22 = 0;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [a2 countByEnumeratingWithState:&v16 objects:v23 count:16];
  if (v4)
  {
    v5 = *v17;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(a2);
        }

        v7 = [objc_msgSend(*(*(&v16 + 1) + 8 * i) "name")];
        v8 = strlen(v7);
        String = flatbuffers::FlatBufferBuilder::CreateString(a1, v7, v8);
        std::vector<unsigned int>::push_back[abi:ne200100](&__p, &String);
      }

      v4 = [a2 countByEnumeratingWithState:&v16 objects:v23 count:16];
    }

    while (v4);
    v9 = __p;
    v10 = v21;
  }

  else
  {
    v10 = 0;
    v9 = 0;
  }

  v11 = v10 - v9;
  if (v11)
  {
    v12 = v9;
  }

  else
  {
    v12 = &flatbuffers::data<flatbuffers::Offset<flatbuffers::String>,std::allocator<flatbuffers::Offset<flatbuffers::String>>>(std::vector<flatbuffers::Offset<flatbuffers::String>> const&)::t;
  }

  v13 = flatbuffers::FlatBufferBuilder::CreateVector<flatbuffers::String>(a1, v12, v11 >> 2);
  if (__p)
  {
    v21 = __p;
    operator delete(__p);
  }

  return v13;
}

void sub_185BC472C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<Air::FunctionStitching::Node const*>::push_back[abi:ne200100](uint64_t a1, void *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = (v5 - *a1) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
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
      std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t const*>>(a1, v10);
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

void std::vector<MTLUINT256_t const*>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLUINT256_t const*>>(a1, a2);
  }

  std::vector<std::pair<std::tuple<std::string,unsigned int,unsigned int>,unsigned int>>::__throw_length_error[abi:ne200100]();
}

__n128 std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(__n128 *a1, __n128 *a2, uint64_t a3, char a4, __n128 result)
{
LABEL_1:
  v8 = a2 - 2;
  v9 = a2 - 4;
  v10 = a2 - 6;
  v11 = a1;
  while (1)
  {
    a1 = v11;
    v12 = (a2 - v11) >> 5;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v180 = a2[-2].n128_u64[0];
        v179 = a2 - 2;
        v181 = bswap64(v180);
        v182 = bswap64(v11->n128_u64[0]);
        if (v181 == v182 && (v181 = bswap64(v179->n128_u64[1]), v182 = bswap64(v11->n128_u64[1]), v181 == v182) && (v181 = bswap64(v179[1].n128_u64[0]), v182 = bswap64(v11[1].n128_u64[0]), v181 == v182) && (v181 = bswap64(v179[1].n128_u64[1]), v182 = bswap64(v11[1].n128_u64[1]), v181 == v182))
        {
          v183 = 0;
        }

        else if (v181 < v182)
        {
          v183 = -1;
        }

        else
        {
          v183 = 1;
        }

        if (v183 < 0)
        {
          v321 = *v11;
          v354 = v11[1];
          v255 = v179[1];
          *v11 = *v179;
          v11[1] = v255;
          result = v321;
          *v179 = v321;
          v179[1] = v354;
        }

        return result;
      }

      goto LABEL_9;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {

      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(v11, v11 + 2, v11 + 4, a2 - 2, result).n128_u64[0];
      return result;
    }

    if (v12 == 5)
    {
      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(v11, v11 + 2, v11 + 4, v11 + 6, result).n128_u64[0];
      v175 = a2[-2].n128_u64[0];
      v174 = a2 - 2;
      v176 = bswap64(v175);
      v177 = bswap64(v11[6].n128_u64[0]);
      if (v176 == v177 && (v176 = bswap64(v174->n128_u64[1]), v177 = bswap64(v11[6].n128_u64[1]), v176 == v177) && (v176 = bswap64(v174[1].n128_u64[0]), v177 = bswap64(v11[7].n128_u64[0]), v176 == v177) && (v176 = bswap64(v174[1].n128_u64[1]), v177 = bswap64(v11[7].n128_u64[1]), v176 == v177))
      {
        v178 = 0;
      }

      else if (v176 < v177)
      {
        v178 = -1;
      }

      else
      {
        v178 = 1;
      }

      if (v178 < 0)
      {
        result = v11[6];
        v353 = v11[7];
        v251 = v174[1];
        v11[6] = *v174;
        v11[7] = v251;
        *v174 = result;
        v174[1] = v353;
        v252 = bswap64(v11[6].n128_u64[0]);
        v253 = bswap64(v11[4].n128_u64[0]);
        if (v252 == v253 && (v252 = bswap64(v11[6].n128_u64[1]), v253 = bswap64(v11[4].n128_u64[1]), v252 == v253) && (v252 = bswap64(v11[7].n128_u64[0]), v253 = bswap64(v11[5].n128_u64[0]), v252 == v253) && (v252 = bswap64(v11[7].n128_u64[1]), v253 = bswap64(v11[5].n128_u64[1]), v252 == v253))
        {
          v254 = 0;
        }

        else
        {
          v254 = v252 < v253 ? -1 : 1;
        }

        if (v254 < 0)
        {
          v277 = v11[4];
          result = v11[5];
          v278 = v11[7];
          v11[4] = v11[6];
          v11[5] = v278;
          v11[6] = v277;
          v11[7] = result;
          v279 = bswap64(v11[4].n128_u64[0]);
          v280 = bswap64(v11[2].n128_u64[0]);
          if (v279 == v280 && (v279 = bswap64(v11[4].n128_u64[1]), v280 = bswap64(v11[2].n128_u64[1]), v279 == v280) && (v279 = bswap64(v11[5].n128_u64[0]), v280 = bswap64(v11[3].n128_u64[0]), v279 == v280) && (v279 = bswap64(v11[5].n128_u64[1]), v280 = bswap64(v11[3].n128_u64[1]), v279 == v280))
          {
            v281 = 0;
          }

          else
          {
            v281 = v279 < v280 ? -1 : 1;
          }

          if (v281 < 0)
          {
            v286 = v11[2];
            result = v11[3];
            v287 = v11[5];
            v11[2] = v11[4];
            v11[3] = v287;
            v11[4] = v286;
            v11[5] = result;
            v288 = bswap64(v11[2].n128_u64[0]);
            v289 = bswap64(v11->n128_u64[0]);
            if (v288 == v289 && (v288 = bswap64(v11[2].n128_u64[1]), v289 = bswap64(v11->n128_u64[1]), v288 == v289) && (v288 = bswap64(v11[3].n128_u64[0]), v289 = bswap64(v11[1].n128_u64[0]), v288 == v289) && (v288 = bswap64(v11[3].n128_u64[1]), v289 = bswap64(v11[1].n128_u64[1]), v288 == v289))
            {
              v290 = 0;
            }

            else
            {
              v290 = v288 < v289 ? -1 : 1;
            }

            if (v290 < 0)
            {
              v326 = *v11;
              v360 = v11[1];
              v291 = v11[3];
              *v11 = v11[2];
              v11[1] = v291;
              result = v326;
              v11[2] = v326;
              v11[3] = v360;
            }
          }
        }
      }

      return result;
    }

LABEL_9:
    if (v12 <= 23)
    {
      v188 = v11 + 2;
      v190 = v11 == a2 || v188 == a2;
      if (a4)
      {
        if (!v190)
        {
          v191 = 0;
          v192 = v11;
          do
          {
            v193 = v188;
            v194 = bswap64(v192[4]);
            v195 = bswap64(*v192);
            if (v194 != v195 || (v194 = bswap64(v193->n128_u64[1]), v195 = bswap64(v192[1]), v194 != v195) || (v194 = bswap64(v193[1].n128_u64[0]), v195 = bswap64(v192[2]), v194 != v195) || (v194 = bswap64(v193[1].n128_u64[1]), v195 = bswap64(v192[3]), v194 != v195))
            {
              v196 = v194 < v195 ? -1 : 1;
              if (v196 < 0)
              {
                v318 = *v193;
                v350 = v193[1];
                v197 = v191;
                while (1)
                {
                  v198 = (v11 + v197);
                  v199 = *(v11 + v197 + 16);
                  v198[2] = *(v11 + v197);
                  v198[3] = v199;
                  if (!v197)
                  {
                    break;
                  }

                  v200 = bswap64(v318.n128_u64[0]);
                  v201 = bswap64(v198[-2].n128_u64[0]);
                  if (v200 == v201 && (v200 = bswap64(v318.n128_u64[1]), v201 = bswap64(v198[-2].n128_u64[1]), v200 == v201) && (v200 = bswap64(v350.n128_u64[0]), v201 = bswap64(v198[-1].n128_u64[0]), v200 == v201) && (v200 = bswap64(v350.n128_u64[1]), v201 = bswap64(v198[-1].n128_u64[1]), v200 == v201))
                  {
                    v202 = 0;
                  }

                  else if (v200 < v201)
                  {
                    v202 = -1;
                  }

                  else
                  {
                    v202 = 1;
                  }

                  v197 -= 32;
                  if ((v202 & 0x80000000) == 0)
                  {
                    v203 = (v11 + v197 + 32);
                    goto LABEL_400;
                  }
                }

                v203 = v11;
LABEL_400:
                result = v318;
                *v203 = v318;
                v203[1] = v350;
              }
            }

            v188 = v193 + 2;
            v191 += 32;
            v192 = v193;
          }

          while (&v193[2] != a2);
        }
      }

      else if (!v190)
      {
        v263 = v11 - 2;
        do
        {
          v264 = v188;
          v265 = bswap64(a1[2].n128_u64[0]);
          v266 = bswap64(a1->n128_u64[0]);
          if (v265 != v266 || (v265 = bswap64(v264->n128_u64[1]), v266 = bswap64(a1->n128_u64[1]), v265 != v266) || (v265 = bswap64(v264[1].n128_u64[0]), v266 = bswap64(a1[1].n128_u64[0]), v265 != v266) || (v265 = bswap64(v264[1].n128_u64[1]), v266 = bswap64(a1[1].n128_u64[1]), v265 != v266))
          {
            v267 = v265 < v266 ? -1 : 1;
            if (v267 < 0)
            {
              v322 = *v264;
              v356 = v264[1];
              v268 = v263;
              do
              {
                v269 = v268[3];
                v268[4] = v268[2];
                v268[5] = v269;
                v270 = bswap64(v322.n128_u64[0]);
                v271 = bswap64(v268->n128_u64[0]);
                if (v270 == v271 && (v270 = bswap64(v322.n128_u64[1]), v271 = bswap64(v268->n128_u64[1]), v270 == v271) && (v270 = bswap64(v356.n128_u64[0]), v271 = bswap64(v268[1].n128_u64[0]), v270 == v271) && (v270 = bswap64(v356.n128_u64[1]), v271 = bswap64(v268[1].n128_u64[1]), v270 == v271))
                {
                  v272 = 0;
                }

                else if (v270 < v271)
                {
                  v272 = -1;
                }

                else
                {
                  v272 = 1;
                }

                v268 -= 2;
              }

              while (v272 < 0);
              result = v322;
              v268[4] = v322;
              v268[5] = v356;
            }
          }

          v188 = v264 + 2;
          v263 += 2;
          a1 = v264;
        }

        while (&v264[2] != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v11 != a2)
      {
        v204 = (v12 - 2) >> 1;
        v205 = v204;
        do
        {
          v206 = v205;
          if (v204 >= v205)
          {
            v207 = (2 * v205) | 1;
            n128_u64 = v11[2 * v207].n128_u64;
            if (2 * v206 + 2 < v12)
            {
              v209 = bswap64(*n128_u64);
              v210 = bswap64(n128_u64[4]);
              if (v209 == v210 && (v209 = bswap64(n128_u64[1]), v210 = bswap64(n128_u64[5]), v209 == v210) && (v209 = bswap64(n128_u64[2]), v210 = bswap64(n128_u64[6]), v209 == v210) && (v209 = bswap64(n128_u64[3]), v210 = bswap64(n128_u64[7]), v209 == v210))
              {
                v211 = 0;
              }

              else
              {
                v211 = v209 < v210 ? -1 : 1;
              }

              if (v211 < 0)
              {
                n128_u64 += 4;
                v207 = 2 * v206 + 2;
              }
            }

            v212 = v11[2 * v206].n128_u64;
            v213 = bswap64(*n128_u64);
            v214 = bswap64(*v212);
            if (v213 == v214 && (v213 = bswap64(n128_u64[1]), v214 = bswap64(v212[1]), v213 == v214) && (v213 = bswap64(n128_u64[2]), v214 = bswap64(v212[2]), v213 == v214) && (v213 = bswap64(n128_u64[3]), v214 = bswap64(v212[3]), v213 == v214) || (v213 < v214 ? (v215 = -1) : (v215 = 1), (v215 & 0x80000000) == 0))
            {
              v319 = *v212;
              v351 = *(v212 + 1);
              do
              {
                v216 = n128_u64;
                v217 = *(n128_u64 + 1);
                *v212 = *n128_u64;
                *(v212 + 1) = v217;
                if (v204 < v207)
                {
                  break;
                }

                v218 = (2 * v207) | 1;
                n128_u64 = v11[2 * v218].n128_u64;
                v207 = 2 * v207 + 2;
                if (v207 >= v12)
                {
                  v207 = v218;
                }

                else
                {
                  v219 = bswap64(*n128_u64);
                  v220 = bswap64(n128_u64[4]);
                  if (v219 == v220 && (v219 = bswap64(n128_u64[1]), v220 = bswap64(n128_u64[5]), v219 == v220) && (v219 = bswap64(n128_u64[2]), v220 = bswap64(n128_u64[6]), v219 == v220) && (v219 = bswap64(n128_u64[3]), v220 = bswap64(n128_u64[7]), v219 == v220))
                  {
                    v221 = 0;
                  }

                  else
                  {
                    v221 = v219 < v220 ? -1 : 1;
                  }

                  if (v221 >= 0)
                  {
                    v207 = v218;
                  }

                  else
                  {
                    n128_u64 += 4;
                  }
                }

                v222 = bswap64(*n128_u64);
                v223 = bswap64(v319);
                if (v222 == v223 && (v222 = bswap64(n128_u64[1]), v223 = bswap64(*(&v319 + 1)), v222 == v223) && (v222 = bswap64(n128_u64[2]), v223 = bswap64(v351), v222 == v223) && (v222 = bswap64(n128_u64[3]), v223 = bswap64(*(&v351 + 1)), v222 == v223))
                {
                  v224 = 0;
                }

                else
                {
                  v224 = v222 < v223 ? -1 : 1;
                }

                v212 = v216;
              }

              while ((v224 & 0x80000000) == 0);
              *v216 = v319;
              *(v216 + 1) = v351;
            }
          }

          v205 = v206 - 1;
        }

        while (v206);
        do
        {
          v225 = 0;
          v295 = *v11;
          v298 = v11[1];
          v226 = v11;
          do
          {
            v227 = &v226[2 * v225];
            v228 = v227 + 2;
            v229 = (2 * v225) | 1;
            v230 = 2 * v225 + 2;
            if (v230 < v12)
            {
              v232 = v227[4].n128_u64[0];
              v231 = v227[4].n128_u64;
              v233 = bswap64(*(v231 - 4));
              v234 = bswap64(v232);
              if (v233 == v234 && (v233 = bswap64(v228->n128_u64[1]), v234 = bswap64(v231[1]), v233 == v234) && (v233 = bswap64(v228[1].n128_u64[0]), v234 = bswap64(v231[2]), v233 == v234) && (v233 = bswap64(v228[1].n128_u64[1]), v234 = bswap64(v231[3]), v233 == v234))
              {
                v235 = 0;
              }

              else
              {
                v235 = v233 < v234 ? -1 : 1;
              }

              if (v235 < 0)
              {
                v228 = v231;
                v229 = v230;
              }
            }

            v236 = v228[1];
            *v226 = *v228;
            v226[1] = v236;
            v226 = v228;
            v225 = v229;
          }

          while (v229 <= ((v12 - 2) >> 1));
          a2 -= 2;
          if (v228 == a2)
          {
            result = v295;
            *v228 = v295;
            v228[1] = v298;
          }

          else
          {
            v237 = a2[1];
            *v228 = *a2;
            v228[1] = v237;
            result = v295;
            *a2 = v295;
            a2[1] = v298;
            v238 = (v228 - v11 + 32) >> 5;
            v239 = v238 < 2;
            v240 = v238 - 2;
            if (!v239)
            {
              v241 = v240 >> 1;
              v242 = v11[2 * v241].n128_u64;
              v243 = bswap64(*v242);
              v244 = bswap64(v228->n128_u64[0]);
              if (v243 != v244 || (v243 = bswap64(v242[1]), v244 = bswap64(v228->n128_u64[1]), v243 != v244) || (v243 = bswap64(v242[2]), v244 = bswap64(v228[1].n128_u64[0]), v243 != v244) || (v243 = bswap64(v242[3]), v244 = bswap64(v228[1].n128_u64[1]), v243 != v244))
              {
                v245 = v243 < v244 ? -1 : 1;
                if (v245 < 0)
                {
                  v320 = *v228;
                  v352 = v228[1];
                  do
                  {
                    v246 = v242;
                    v247 = *(v242 + 1);
                    *v228 = *v242;
                    v228[1] = v247;
                    if (!v241)
                    {
                      break;
                    }

                    v241 = (v241 - 1) >> 1;
                    v242 = v11[2 * v241].n128_u64;
                    v248 = bswap64(*v242);
                    v249 = bswap64(v320.n128_u64[0]);
                    if (v248 == v249 && (v248 = bswap64(v242[1]), v249 = bswap64(v320.n128_u64[1]), v248 == v249) && (v248 = bswap64(v242[2]), v249 = bswap64(v352.n128_u64[0]), v248 == v249) && (v248 = bswap64(v242[3]), v249 = bswap64(v352.n128_u64[1]), v248 == v249))
                    {
                      v250 = 0;
                    }

                    else
                    {
                      v250 = v248 < v249 ? -1 : 1;
                    }

                    v228 = v246;
                  }

                  while (v250 < 0);
                  result = v320;
                  *v246 = v320;
                  v246[1] = v352;
                }
              }
            }
          }

          v239 = v12-- <= 2;
        }

        while (!v239);
      }

      return result;
    }

    v13 = v11[2 * (v12 >> 1)].n128_u64;
    v14 = v13;
    if (v12 >= 0x81)
    {
      v15 = bswap64(*v13);
      v16 = bswap64(v11->n128_u64[0]);
      if (v15 == v16 && (v15 = bswap64(v13[1]), v16 = bswap64(v11->n128_u64[1]), v15 == v16) && (v15 = bswap64(v13[2]), v16 = bswap64(v11[1].n128_u64[0]), v15 == v16) && (v15 = bswap64(v13[3]), v16 = bswap64(v11[1].n128_u64[1]), v15 == v16))
      {
        v17 = 0;
      }

      else if (v15 < v16)
      {
        v17 = -1;
      }

      else
      {
        v17 = 1;
      }

      v21 = bswap64(v8->n128_u64[0]);
      v22 = bswap64(*v13);
      if (v21 != v22 || (v21 = bswap64(a2[-2].n128_u64[1]), v22 = bswap64(v13[1]), v21 != v22) || (v21 = bswap64(a2[-1].n128_u64[0]), v22 = bswap64(v13[2]), v21 != v22) || (v21 = bswap64(a2[-1].n128_u64[1]), v22 = bswap64(v13[3]), v21 != v22))
      {
        if (v21 < v22)
        {
          v23 = -1;
        }

        else
        {
          v23 = 1;
        }

        if ((v17 & 0x80000000) == 0)
        {
          goto LABEL_54;
        }

LABEL_30:
        if (v23 < 0)
        {
          v303 = *v11;
          v331 = v11[1];
          v47 = a2[-1];
          *v11 = *v8;
          v11[1] = v47;
        }

        else
        {
          v299 = *v11;
          v327 = v11[1];
          v24 = *(v13 + 1);
          *v11 = *v13;
          v11[1] = v24;
          *v13 = v299;
          *(v13 + 1) = v327;
          v25 = bswap64(v8->n128_u64[0]);
          v26 = bswap64(*v13);
          if (v25 == v26 && (v25 = bswap64(a2[-2].n128_u64[1]), v26 = bswap64(v13[1]), v25 == v26) && (v25 = bswap64(a2[-1].n128_u64[0]), v26 = bswap64(v13[2]), v25 == v26) && (v25 = bswap64(a2[-1].n128_u64[1]), v26 = bswap64(v13[3]), v25 == v26))
          {
            v27 = 0;
          }

          else if (v25 < v26)
          {
            v27 = -1;
          }

          else
          {
            v27 = 1;
          }

          if ((v27 & 0x80000000) == 0)
          {
            goto LABEL_92;
          }

          v303 = *v13;
          v331 = *(v13 + 1);
          v43 = a2[-1];
          *v13 = *v8;
          *(v13 + 1) = v43;
        }

        *v8 = v303;
        a2[-1] = v331;
        goto LABEL_92;
      }

      v23 = 0;
      if (v17 < 0)
      {
        goto LABEL_30;
      }

LABEL_54:
      if (v23 < 0)
      {
        v301 = *v13;
        v329 = *(v13 + 1);
        v35 = a2[-1];
        *v13 = *v8;
        *(v13 + 1) = v35;
        *v8 = v301;
        a2[-1] = v329;
        v36 = bswap64(*v13);
        v37 = bswap64(v11->n128_u64[0]);
        if (v36 == v37 && (v36 = bswap64(v13[1]), v37 = bswap64(v11->n128_u64[1]), v36 == v37) && (v36 = bswap64(v13[2]), v37 = bswap64(v11[1].n128_u64[0]), v36 == v37) && (v36 = bswap64(v13[3]), v37 = bswap64(v11[1].n128_u64[1]), v36 == v37))
        {
          v38 = 0;
        }

        else
        {
          v38 = v36 < v37 ? -1 : 1;
        }

        if (v38 < 0)
        {
          v305 = *v11;
          v333 = v11[1];
          v45 = *(v13 + 1);
          *v11 = *v13;
          v11[1] = v45;
          *v13 = v305;
          *(v13 + 1) = v333;
        }
      }

LABEL_92:
      v48 = v11[2].n128_u64;
      v49 = v13 - 4;
      v50 = bswap64(*(v13 - 4));
      v51 = bswap64(v11[2].n128_u64[0]);
      if (v50 == v51 && (v50 = bswap64(*(v13 - 3)), v51 = bswap64(v11[2].n128_u64[1]), v50 == v51) && (v50 = bswap64(*(v13 - 2)), v51 = bswap64(v11[3].n128_u64[0]), v50 == v51) && (v50 = bswap64(*(v13 - 1)), v51 = bswap64(v11[3].n128_u64[1]), v50 == v51))
      {
        v52 = 0;
      }

      else if (v50 < v51)
      {
        v52 = -1;
      }

      else
      {
        v52 = 1;
      }

      v53 = bswap64(v9->n128_u64[0]);
      v54 = bswap64(*v49);
      if (v53 != v54 || (v53 = bswap64(a2[-4].n128_u64[1]), v54 = bswap64(*(v13 - 3)), v53 != v54) || (v53 = bswap64(a2[-3].n128_u64[0]), v54 = bswap64(*(v13 - 2)), v53 != v54) || (v53 = bswap64(a2[-3].n128_u64[1]), v54 = bswap64(*(v13 - 1)), v53 != v54))
      {
        if (v53 < v54)
        {
          v55 = -1;
        }

        else
        {
          v55 = 1;
        }

        if ((v52 & 0x80000000) == 0)
        {
          goto LABEL_115;
        }

LABEL_105:
        if (v55 < 0)
        {
          v66 = *v48;
          v67 = v11[3];
          v71 = a2[-3];
          *v48 = *v9;
          v11[3] = v71;
        }

        else
        {
          v56 = *v48;
          v335 = v11[3];
          v57 = *(v13 - 1);
          *v48 = *v49;
          v11[3] = v57;
          *v49 = v56;
          *(v13 - 1) = v335;
          v58 = bswap64(v9->n128_u64[0]);
          v59 = bswap64(*v49);
          if (v58 == v59 && (v58 = bswap64(a2[-4].n128_u64[1]), v59 = bswap64(*(v13 - 3)), v58 == v59) && (v58 = bswap64(a2[-3].n128_u64[0]), v59 = bswap64(*(v13 - 2)), v58 == v59) && (v58 = bswap64(a2[-3].n128_u64[1]), v59 = bswap64(*(v13 - 1)), v58 == v59))
          {
            v60 = 0;
          }

          else if (v58 < v59)
          {
            v60 = -1;
          }

          else
          {
            v60 = 1;
          }

          if ((v60 & 0x80000000) == 0)
          {
            goto LABEL_135;
          }

          v308 = *v49;
          v337 = *(v13 - 1);
          v65 = a2[-3];
          *v49 = *v9;
          *(v13 - 1) = v65;
          v66 = v308;
          v67 = v337;
        }

        *v9 = v66;
        a2[-3] = v67;
        goto LABEL_135;
      }

      v55 = 0;
      if (v52 < 0)
      {
        goto LABEL_105;
      }

LABEL_115:
      if (v55 < 0)
      {
        v307 = *v49;
        v336 = *(v13 - 1);
        v61 = a2[-3];
        *v49 = *v9;
        *(v13 - 1) = v61;
        *v9 = v307;
        a2[-3] = v336;
        v62 = bswap64(*v49);
        v63 = bswap64(*v48);
        if (v62 == v63 && (v62 = bswap64(*(v13 - 3)), v63 = bswap64(v11[2].n128_u64[1]), v62 == v63) && (v62 = bswap64(*(v13 - 2)), v63 = bswap64(v11[3].n128_u64[0]), v62 == v63) && (v62 = bswap64(*(v13 - 1)), v63 = bswap64(v11[3].n128_u64[1]), v62 == v63))
        {
          v64 = 0;
        }

        else
        {
          v64 = v62 < v63 ? -1 : 1;
        }

        if (v64 < 0)
        {
          v68 = *v48;
          v338 = v11[3];
          v69 = *(v13 - 1);
          *v48 = *v49;
          v11[3] = v69;
          *v49 = v68;
          *(v13 - 1) = v338;
        }
      }

LABEL_135:
      v72 = v11[4].n128_u64;
      v74 = v13[4];
      v73 = v13 + 4;
      v75 = bswap64(v74);
      v76 = bswap64(v11[4].n128_u64[0]);
      if (v75 == v76 && (v75 = bswap64(v73[1]), v76 = bswap64(v11[4].n128_u64[1]), v75 == v76) && (v75 = bswap64(v73[2]), v76 = bswap64(v11[5].n128_u64[0]), v75 == v76) && (v75 = bswap64(v73[3]), v76 = bswap64(v11[5].n128_u64[1]), v75 == v76))
      {
        v77 = 0;
      }

      else if (v75 < v76)
      {
        v77 = -1;
      }

      else
      {
        v77 = 1;
      }

      v78 = bswap64(v10->n128_u64[0]);
      v79 = bswap64(*v73);
      if (v78 != v79 || (v78 = bswap64(a2[-6].n128_u64[1]), v79 = bswap64(v73[1]), v78 != v79) || (v78 = bswap64(a2[-5].n128_u64[0]), v79 = bswap64(v73[2]), v78 != v79) || (v78 = bswap64(a2[-5].n128_u64[1]), v79 = bswap64(v73[3]), v78 != v79))
      {
        if (v78 < v79)
        {
          v80 = -1;
        }

        else
        {
          v80 = 1;
        }

        if ((v77 & 0x80000000) == 0)
        {
          goto LABEL_158;
        }

LABEL_148:
        if (v80 < 0)
        {
          v91 = *v72;
          v92 = v11[5];
          v95 = a2[-5];
          *v72 = *v10;
          v11[5] = v95;
        }

        else
        {
          v81 = *v72;
          v339 = v11[5];
          v82 = *(v73 + 1);
          *v72 = *v73;
          v11[5] = v82;
          *v73 = v81;
          *(v73 + 1) = v339;
          v83 = bswap64(v10->n128_u64[0]);
          v84 = bswap64(*v73);
          if (v83 == v84 && (v83 = bswap64(a2[-6].n128_u64[1]), v84 = bswap64(v73[1]), v83 == v84) && (v83 = bswap64(a2[-5].n128_u64[0]), v84 = bswap64(v73[2]), v83 == v84) && (v83 = bswap64(a2[-5].n128_u64[1]), v84 = bswap64(v73[3]), v83 == v84))
          {
            v85 = 0;
          }

          else if (v83 < v84)
          {
            v85 = -1;
          }

          else
          {
            v85 = 1;
          }

          if ((v85 & 0x80000000) == 0)
          {
            goto LABEL_176;
          }

          v310 = *v73;
          v341 = *(v73 + 1);
          v90 = a2[-5];
          *v73 = *v10;
          *(v73 + 1) = v90;
          v91 = v310;
          v92 = v341;
        }

        *v10 = v91;
        a2[-5] = v92;
        goto LABEL_176;
      }

      v80 = 0;
      if (v77 < 0)
      {
        goto LABEL_148;
      }

LABEL_158:
      if (v80 < 0)
      {
        v309 = *v73;
        v340 = *(v73 + 1);
        v86 = a2[-5];
        *v73 = *v10;
        *(v73 + 1) = v86;
        *v10 = v309;
        a2[-5] = v340;
        v87 = bswap64(*v73);
        v88 = bswap64(*v72);
        if (v87 == v88 && (v87 = bswap64(v73[1]), v88 = bswap64(v11[4].n128_u64[1]), v87 == v88) && (v87 = bswap64(v73[2]), v88 = bswap64(v11[5].n128_u64[0]), v87 == v88) && (v87 = bswap64(v73[3]), v88 = bswap64(v11[5].n128_u64[1]), v87 == v88))
        {
          v89 = 0;
        }

        else
        {
          v89 = v87 < v88 ? -1 : 1;
        }

        if (v89 < 0)
        {
          v93 = *v72;
          v342 = v11[5];
          v94 = *(v73 + 1);
          *v72 = *v73;
          v11[5] = v94;
          *v73 = v93;
          *(v73 + 1) = v342;
        }
      }

LABEL_176:
      v96 = bswap64(*v14);
      v97 = bswap64(*v49);
      if (v96 == v97 && (v96 = bswap64(v14[1]), v97 = bswap64(v49[1]), v96 == v97) && (v96 = bswap64(v14[2]), v97 = bswap64(v49[2]), v96 == v97) && (v96 = bswap64(v14[3]), v97 = bswap64(v49[3]), v96 == v97))
      {
        v98 = 0;
      }

      else if (v96 < v97)
      {
        v98 = -1;
      }

      else
      {
        v98 = 1;
      }

      v99 = bswap64(*v73);
      v100 = bswap64(*v14);
      if (v99 == v100 && (v99 = bswap64(v73[1]), v100 = bswap64(v14[1]), v99 == v100) && (v99 = bswap64(v73[2]), v100 = bswap64(v14[2]), v99 == v100) && (v99 = bswap64(v73[3]), v100 = bswap64(v14[3]), v99 == v100))
      {
        v101 = 0;
        if (v98 < 0)
        {
          goto LABEL_189;
        }

LABEL_199:
        if (v101 < 0)
        {
          v312 = *v14;
          v344 = *(v14 + 1);
          v106 = *(v73 + 1);
          *v14 = *v73;
          *(v14 + 1) = v106;
          *v73 = v312;
          *(v73 + 1) = v344;
          v107 = bswap64(*v14);
          v108 = bswap64(*v49);
          if (v107 == v108 && (v107 = bswap64(v14[1]), v108 = bswap64(v49[1]), v107 == v108) && (v107 = bswap64(v14[2]), v108 = bswap64(v49[2]), v107 == v108) && (v107 = bswap64(v14[3]), v108 = bswap64(v49[3]), v107 == v108))
          {
            v109 = 0;
          }

          else
          {
            v109 = v107 < v108 ? -1 : 1;
          }

          if (v109 < 0)
          {
            v314 = *v49;
            v346 = *(v49 + 1);
            v111 = *(v14 + 1);
            *v49 = *v14;
            *(v49 + 1) = v111;
            *v14 = v314;
            *(v14 + 1) = v346;
          }
        }
      }

      else
      {
        if (v99 < v100)
        {
          v101 = -1;
        }

        else
        {
          v101 = 1;
        }

        if ((v98 & 0x80000000) == 0)
        {
          goto LABEL_199;
        }

LABEL_189:
        if (v101 < 0)
        {
          v313 = *v49;
          v345 = *(v49 + 1);
          v112 = *(v73 + 1);
          *v49 = *v73;
          *(v49 + 1) = v112;
        }

        else
        {
          v311 = *v49;
          v343 = *(v49 + 1);
          v102 = *(v14 + 1);
          *v49 = *v14;
          *(v49 + 1) = v102;
          *v14 = v311;
          *(v14 + 1) = v343;
          v103 = bswap64(*v73);
          v104 = bswap64(*v14);
          if (v103 == v104 && (v103 = bswap64(v73[1]), v104 = bswap64(v14[1]), v103 == v104) && (v103 = bswap64(v73[2]), v104 = bswap64(v14[2]), v103 == v104) && (v103 = bswap64(v73[3]), v104 = bswap64(v14[3]), v103 == v104))
          {
            v105 = 0;
          }

          else if (v103 < v104)
          {
            v105 = -1;
          }

          else
          {
            v105 = 1;
          }

          if ((v105 & 0x80000000) == 0)
          {
            goto LABEL_217;
          }

          v313 = *v14;
          v345 = *(v14 + 1);
          v110 = *(v73 + 1);
          *v14 = *v73;
          *(v14 + 1) = v110;
        }

        *v73 = v313;
        *(v73 + 1) = v345;
      }

LABEL_217:
      v315 = *v11;
      v347 = v11[1];
      v113 = *(v14 + 1);
      *v11 = *v14;
      v11[1] = v113;
      *v14 = v315;
      *(v14 + 1) = v347;
      goto LABEL_218;
    }

    v18 = bswap64(v11->n128_u64[0]);
    v19 = bswap64(*v14);
    if (v18 == v19 && (v18 = bswap64(v11->n128_u64[1]), v19 = bswap64(v14[1]), v18 == v19) && (v18 = bswap64(v11[1].n128_u64[0]), v19 = bswap64(v14[2]), v18 == v19) && (v18 = bswap64(v11[1].n128_u64[1]), v19 = bswap64(v14[3]), v18 == v19))
    {
      v20 = 0;
    }

    else if (v18 < v19)
    {
      v20 = -1;
    }

    else
    {
      v20 = 1;
    }

    v28 = bswap64(v8->n128_u64[0]);
    v29 = bswap64(v11->n128_u64[0]);
    if (v28 == v29 && (v28 = bswap64(a2[-2].n128_u64[1]), v29 = bswap64(v11->n128_u64[1]), v28 == v29) && (v28 = bswap64(a2[-1].n128_u64[0]), v29 = bswap64(v11[1].n128_u64[0]), v28 == v29) && (v28 = bswap64(a2[-1].n128_u64[1]), v29 = bswap64(v11[1].n128_u64[1]), v28 == v29))
    {
      v30 = 0;
      if ((v20 & 0x80000000) == 0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      if (v28 < v29)
      {
        v30 = -1;
      }

      else
      {
        v30 = 1;
      }

      if ((v20 & 0x80000000) == 0)
      {
LABEL_64:
        if (v30 < 0)
        {
          v302 = *v11;
          v330 = v11[1];
          v39 = a2[-1];
          *v11 = *v8;
          v11[1] = v39;
          *v8 = v302;
          a2[-1] = v330;
          v40 = bswap64(v11->n128_u64[0]);
          v41 = bswap64(*v14);
          if (v40 == v41 && (v40 = bswap64(v11->n128_u64[1]), v41 = bswap64(v14[1]), v40 == v41) && (v40 = bswap64(v11[1].n128_u64[0]), v41 = bswap64(v14[2]), v40 == v41) && (v40 = bswap64(v11[1].n128_u64[1]), v41 = bswap64(v14[3]), v40 == v41))
          {
            v42 = 0;
          }

          else
          {
            v42 = v40 < v41 ? -1 : 1;
          }

          if (v42 < 0)
          {
            v306 = *v14;
            v334 = *(v14 + 1);
            v46 = v11[1];
            *v14 = *v11;
            *(v14 + 1) = v46;
            *v11 = v306;
            v11[1] = v334;
          }
        }

        goto LABEL_218;
      }
    }

    if (v30 < 0)
    {
      v304 = *v14;
      v332 = *(v14 + 1);
      v70 = a2[-1];
      *v14 = *v8;
      *(v14 + 1) = v70;
    }

    else
    {
      v300 = *v14;
      v328 = *(v14 + 1);
      v31 = v11[1];
      *v14 = *v11;
      *(v14 + 1) = v31;
      *v11 = v300;
      v11[1] = v328;
      v32 = bswap64(v8->n128_u64[0]);
      v33 = bswap64(v11->n128_u64[0]);
      if (v32 == v33 && (v32 = bswap64(a2[-2].n128_u64[1]), v33 = bswap64(v11->n128_u64[1]), v32 == v33) && (v32 = bswap64(a2[-1].n128_u64[0]), v33 = bswap64(v11[1].n128_u64[0]), v32 == v33) && (v32 = bswap64(a2[-1].n128_u64[1]), v33 = bswap64(v11[1].n128_u64[1]), v32 == v33))
      {
        v34 = 0;
      }

      else if (v32 < v33)
      {
        v34 = -1;
      }

      else
      {
        v34 = 1;
      }

      if ((v34 & 0x80000000) == 0)
      {
        goto LABEL_218;
      }

      v304 = *v11;
      v332 = v11[1];
      v44 = a2[-1];
      *v11 = *v8;
      v11[1] = v44;
    }

    *v8 = v304;
    a2[-1] = v332;
LABEL_218:
    --a3;
    if ((a4 & 1) != 0 || ((v114 = bswap64(v11[-2].n128_u64[0]), v115 = bswap64(v11->n128_u64[0]), v114 != v115) || (v114 = bswap64(v11[-2].n128_u64[1]), v115 = bswap64(v11->n128_u64[1]), v114 != v115) || (v114 = bswap64(v11[-1].n128_u64[0]), v115 = bswap64(v11[1].n128_u64[0]), v114 != v115) || (v114 = bswap64(v11[-1].n128_u64[1]), v115 = bswap64(v11[1].n128_u64[1]), v114 != v115) ? (v114 < v115 ? (v116 = -1) : (v116 = 1)) : (v116 = 0), v116 < 0))
    {
      v117 = 0;
      v293 = *v11;
      v296 = v11[1];
      do
      {
        v118 = v11[v117].n128_u64;
        v119 = bswap64(v11[v117 + 2].n128_u64[0]);
        v120 = bswap64(v293.n128_u64[0]);
        if (v119 == v120 && (v119 = bswap64(v118[5]), v120 = bswap64(v293.n128_u64[1]), v119 == v120) && (v119 = bswap64(v118[6]), v120 = bswap64(v296.n128_u64[0]), v119 == v120) && (v119 = bswap64(v118[7]), v120 = bswap64(v296.n128_u64[1]), v119 == v120))
        {
          v121 = 0;
        }

        else if (v119 < v120)
        {
          v121 = -1;
        }

        else
        {
          v121 = 1;
        }

        v117 += 2;
      }

      while (v121 < 0);
      v122 = &v11[v117];
      v123 = a2;
      if (v117 == 2)
      {
        v123 = a2;
        do
        {
          if (v122 >= v123)
          {
            break;
          }

          v128 = v123[-2].n128_u64[0];
          v123 -= 2;
          v129 = bswap64(v128);
          v130 = bswap64(v293.n128_u64[0]);
          if (v129 == v130 && (v129 = bswap64(v123->n128_u64[1]), v130 = bswap64(v293.n128_u64[1]), v129 == v130) && (v129 = bswap64(v123[1].n128_u64[0]), v130 = bswap64(v296.n128_u64[0]), v129 == v130) && (v129 = bswap64(v123[1].n128_u64[1]), v130 = bswap64(v296.n128_u64[1]), v129 == v130))
          {
            v131 = 0;
          }

          else
          {
            v131 = v129 < v130 ? -1 : 1;
          }
        }

        while ((v131 & 0x80000000) == 0);
      }

      else
      {
        do
        {
          do
          {
            v124 = v123[-2].n128_u64[0];
            v123 -= 2;
            v125 = bswap64(v124);
            v126 = bswap64(v293.n128_u64[0]);
            if (v125 != v126)
            {
              break;
            }

            v125 = bswap64(v123->n128_u64[1]);
            v126 = bswap64(v293.n128_u64[1]);
            if (v125 != v126)
            {
              break;
            }

            v125 = bswap64(v123[1].n128_u64[0]);
            v126 = bswap64(v296.n128_u64[0]);
            if (v125 != v126)
            {
              break;
            }

            v125 = bswap64(v123[1].n128_u64[1]);
            v126 = bswap64(v296.n128_u64[1]);
          }

          while (v125 == v126);
          if (v125 < v126)
          {
            v127 = -1;
          }

          else
          {
            v127 = 1;
          }
        }

        while ((v127 & 0x80000000) == 0);
      }

      if (v122 >= v123)
      {
        v143 = v122 - 2;
      }

      else
      {
        v132 = v122;
        v133 = v123;
        do
        {
          v316 = *v132;
          v348 = v132[1];
          v134 = v133[1];
          *v132 = *v133;
          v132[1] = v134;
          *v133 = v316;
          v133[1] = v348;
          do
          {
            v135 = v132[2].n128_u64[0];
            v132 += 2;
            v136 = bswap64(v135);
            v137 = bswap64(v293.n128_u64[0]);
            if (v136 == v137)
            {
              v136 = bswap64(v132->n128_u64[1]);
              v137 = bswap64(v293.n128_u64[1]);
              if (v136 == v137)
              {
                v136 = bswap64(v132[1].n128_u64[0]);
                v137 = bswap64(v296.n128_u64[0]);
                if (v136 == v137)
                {
                  v136 = bswap64(v132[1].n128_u64[1]);
                  v137 = bswap64(v296.n128_u64[1]);
                  if (v136 == v137)
                  {
                    break;
                  }
                }
              }
            }

            v138 = v136 < v137 ? -1 : 1;
          }

          while (v138 < 0);
          do
          {
            do
            {
              v139 = v133[-2].n128_u64[0];
              v133 -= 2;
              v140 = bswap64(v139);
              v141 = bswap64(v293.n128_u64[0]);
              if (v140 != v141)
              {
                break;
              }

              v140 = bswap64(v133->n128_u64[1]);
              v141 = bswap64(v293.n128_u64[1]);
              if (v140 != v141)
              {
                break;
              }

              v140 = bswap64(v133[1].n128_u64[0]);
              v141 = bswap64(v296.n128_u64[0]);
              if (v140 != v141)
              {
                break;
              }

              v140 = bswap64(v133[1].n128_u64[1]);
              v141 = bswap64(v296.n128_u64[1]);
            }

            while (v140 == v141);
            if (v140 < v141)
            {
              v142 = -1;
            }

            else
            {
              v142 = 1;
            }
          }

          while ((v142 & 0x80000000) == 0);
        }

        while (v132 < v133);
        v143 = v132 - 2;
      }

      if (v143 != v11)
      {
        v144 = v143[1];
        *v11 = *v143;
        v11[1] = v144;
      }

      result = v293;
      *v143 = v293;
      v143[1] = v296;
      if (v122 < v123)
      {
        goto LABEL_286;
      }

      v145 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*>(v11, v143, v293);
      v11 = v143 + 2;
      if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*>(v143 + 2, a2, v146))
      {
        a2 = v143;
        if (!v145)
        {
          goto LABEL_1;
        }

        return result;
      }

      if (!v145)
      {
LABEL_286:
        result = std::__introsort<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,false>(a1->n128_u64, v143, a3, a4 & 1, result);
        a4 = 0;
        v11 = v143 + 2;
      }
    }

    else
    {
      v294 = *v11;
      v297 = v11[1];
      v147 = bswap64(v11->n128_u64[0]);
      v148 = bswap64(v8->n128_u64[0]);
      if (v147 == v148 && (v147 = bswap64(v294.n128_u64[1]), v148 = bswap64(a2[-2].n128_u64[1]), v147 == v148) && (v147 = bswap64(v297.n128_u64[0]), v148 = bswap64(a2[-1].n128_u64[0]), v147 == v148) && (v147 = bswap64(v297.n128_u64[1]), v148 = bswap64(a2[-1].n128_u64[1]), v147 == v148))
      {
        v149 = 0;
      }

      else if (v147 < v148)
      {
        v149 = -1;
      }

      else
      {
        v149 = 1;
      }

      if (v149 < 0)
      {
        do
        {
          v154 = v11[2].n128_u64[0];
          v11 += 2;
          v155 = bswap64(v294.n128_u64[0]);
          v156 = bswap64(v154);
          if (v155 == v156 && (v155 = bswap64(v294.n128_u64[1]), v156 = bswap64(v11->n128_u64[1]), v155 == v156) && (v155 = bswap64(v297.n128_u64[0]), v156 = bswap64(v11[1].n128_u64[0]), v155 == v156) && (v155 = bswap64(v297.n128_u64[1]), v156 = bswap64(v11[1].n128_u64[1]), v155 == v156))
          {
            v157 = 0;
          }

          else if (v155 < v156)
          {
            v157 = -1;
          }

          else
          {
            v157 = 1;
          }
        }

        while ((v157 & 0x80000000) == 0);
      }

      else
      {
        v150 = v11[2].n128_u64;
        do
        {
          v11 = v150;
          if (v150 >= a2)
          {
            break;
          }

          v151 = bswap64(v294.n128_u64[0]);
          v152 = bswap64(v11->n128_u64[0]);
          if (v151 == v152 && (v151 = bswap64(v294.n128_u64[1]), v152 = bswap64(v11->n128_u64[1]), v151 == v152) && (v151 = bswap64(v297.n128_u64[0]), v152 = bswap64(v11[1].n128_u64[0]), v151 == v152) && (v151 = bswap64(v297.n128_u64[1]), v152 = bswap64(v11[1].n128_u64[1]), v151 == v152))
          {
            v153 = 0;
          }

          else
          {
            v153 = v151 < v152 ? -1 : 1;
          }

          v150 = v11[2].n128_u64;
        }

        while ((v153 & 0x80000000) == 0);
      }

      v158 = a2;
      if (v11 < a2)
      {
        v158 = a2;
        do
        {
          v159 = v158[-2].n128_u64[0];
          v158 -= 2;
          v160 = bswap64(v294.n128_u64[0]);
          v161 = bswap64(v159);
          if (v160 == v161)
          {
            v160 = bswap64(v294.n128_u64[1]);
            v161 = bswap64(v158->n128_u64[1]);
            if (v160 == v161)
            {
              v160 = bswap64(v297.n128_u64[0]);
              v161 = bswap64(v158[1].n128_u64[0]);
              if (v160 == v161)
              {
                v160 = bswap64(v297.n128_u64[1]);
                v161 = bswap64(v158[1].n128_u64[1]);
                if (v160 == v161)
                {
                  break;
                }
              }
            }
          }

          v162 = v160 < v161 ? -1 : 1;
        }

        while (v162 < 0);
      }

      while (v11 < v158)
      {
        v317 = *v11;
        v349 = v11[1];
        v163 = v158[1];
        *v11 = *v158;
        v11[1] = v163;
        *v158 = v317;
        v158[1] = v349;
        do
        {
          do
          {
            v164 = v11[2].n128_u64[0];
            v11 += 2;
            v165 = bswap64(v294.n128_u64[0]);
            v166 = bswap64(v164);
            if (v165 != v166)
            {
              break;
            }

            v165 = bswap64(v294.n128_u64[1]);
            v166 = bswap64(v11->n128_u64[1]);
            if (v165 != v166)
            {
              break;
            }

            v165 = bswap64(v297.n128_u64[0]);
            v166 = bswap64(v11[1].n128_u64[0]);
            if (v165 != v166)
            {
              break;
            }

            v165 = bswap64(v297.n128_u64[1]);
            v166 = bswap64(v11[1].n128_u64[1]);
          }

          while (v165 == v166);
          if (v165 < v166)
          {
            v167 = -1;
          }

          else
          {
            v167 = 1;
          }
        }

        while ((v167 & 0x80000000) == 0);
        do
        {
          v168 = v158[-2].n128_u64[0];
          v158 -= 2;
          v169 = bswap64(v294.n128_u64[0]);
          v170 = bswap64(v168);
          if (v169 == v170 && (v169 = bswap64(v294.n128_u64[1]), v170 = bswap64(v158->n128_u64[1]), v169 == v170) && (v169 = bswap64(v297.n128_u64[0]), v170 = bswap64(v158[1].n128_u64[0]), v169 == v170) && (v169 = bswap64(v297.n128_u64[1]), v170 = bswap64(v158[1].n128_u64[1]), v169 == v170))
          {
            v171 = 0;
          }

          else if (v169 < v170)
          {
            v171 = -1;
          }

          else
          {
            v171 = 1;
          }
        }

        while (v171 < 0);
      }

      v172 = v11 - 2;
      if (&v11[-2] != a1)
      {
        v173 = v11[-1];
        *a1 = *v172;
        a1[1] = v173;
      }

      a4 = 0;
      result = v294;
      *v172 = v294;
      v11[-1] = v297;
    }
  }

  v184 = v11[2].n128_u64;
  v185 = bswap64(v11[2].n128_u64[0]);
  v186 = bswap64(v11->n128_u64[0]);
  if (v185 == v186 && (v185 = bswap64(v11[2].n128_u64[1]), v186 = bswap64(v11->n128_u64[1]), v185 == v186) && (v185 = bswap64(v11[3].n128_u64[0]), v186 = bswap64(v11[1].n128_u64[0]), v185 == v186) && (v185 = bswap64(v11[3].n128_u64[1]), v186 = bswap64(v11[1].n128_u64[1]), v185 == v186))
  {
    v187 = 0;
  }

  else if (v185 < v186)
  {
    v187 = -1;
  }

  else
  {
    v187 = 1;
  }

  v256 = bswap64(v8->n128_u64[0]);
  v257 = bswap64(*v184);
  if (v256 == v257 && (v256 = bswap64(a2[-2].n128_u64[1]), v257 = bswap64(v11[2].n128_u64[1]), v256 == v257) && (v256 = bswap64(a2[-1].n128_u64[0]), v257 = bswap64(v11[3].n128_u64[0]), v256 == v257) && (v256 = bswap64(a2[-1].n128_u64[1]), v257 = bswap64(v11[3].n128_u64[1]), v256 == v257))
  {
    v258 = 0;
  }

  else if (v256 < v257)
  {
    v258 = -1;
  }

  else
  {
    v258 = 1;
  }

  if (v187 < 0)
  {
    if (v258 < 0)
    {
      v325 = *v11;
      v359 = v11[1];
      v285 = a2[-1];
      *v11 = *v8;
      v11[1] = v285;
      result = v325;
      v283 = v359;
    }

    else
    {
      v323 = *v11;
      v357 = v11[1];
      v273 = v11[3];
      *v11 = *v184;
      v11[1] = v273;
      result = v323;
      *v184 = v323;
      v11[3] = v357;
      v274 = bswap64(v8->n128_u64[0]);
      v275 = bswap64(v11[2].n128_u64[0]);
      if (v274 == v275 && (v274 = bswap64(a2[-2].n128_u64[1]), v275 = bswap64(v11[2].n128_u64[1]), v274 == v275) && (v274 = bswap64(a2[-1].n128_u64[0]), v275 = bswap64(v11[3].n128_u64[0]), v274 == v275) && (v274 = bswap64(a2[-1].n128_u64[1]), v275 = bswap64(v11[3].n128_u64[1]), v274 == v275))
      {
        v276 = 0;
      }

      else if (v274 < v275)
      {
        v276 = -1;
      }

      else
      {
        v276 = 1;
      }

      if ((v276 & 0x80000000) == 0)
      {
        return result;
      }

      result = *v184;
      v283 = v11[3];
      v284 = a2[-1];
      *v184 = *v8;
      v11[3] = v284;
    }

    *v8 = result;
    a2[-1] = v283;
    return result;
  }

  if (v258 < 0)
  {
    result = *v184;
    v355 = v11[3];
    v259 = a2[-1];
    *v184 = *v8;
    v11[3] = v259;
    *v8 = result;
    a2[-1] = v355;
    v260 = bswap64(v11[2].n128_u64[0]);
    v261 = bswap64(v11->n128_u64[0]);
    if (v260 == v261 && (v260 = bswap64(v11[2].n128_u64[1]), v261 = bswap64(v11->n128_u64[1]), v260 == v261) && (v260 = bswap64(v11[3].n128_u64[0]), v261 = bswap64(v11[1].n128_u64[0]), v260 == v261) && (v260 = bswap64(v11[3].n128_u64[1]), v261 = bswap64(v11[1].n128_u64[1]), v260 == v261))
    {
      v262 = 0;
    }

    else
    {
      v262 = v260 < v261 ? -1 : 1;
    }

    if (v262 < 0)
    {
      v324 = *v11;
      v358 = v11[1];
      v282 = v11[3];
      *v11 = *v184;
      v11[1] = v282;
      result = v324;
      *v184 = v324;
      v11[3] = v358;
    }
  }

  return result;
}

__n128 std::__introsort<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **,false>(__n128 *a1, __n128 *a2, uint64_t a3, uint64_t a4, char a5, __n128 result)
{
LABEL_1:
  n128_u64 = a2[-2].n128_u64;
  v170 = a2[-4].n128_u64;
  v10 = a2[-6].n128_u64;
  v11 = a1;
LABEL_2:
  v12 = 1 - a4;
  while (1)
  {
    a1 = v11;
    v13 = v12;
    v14 = (a2 - v11) >> 5;
    if (v14 <= 2)
    {
      if (v14 < 2)
      {
        return result;
      }

      if (v14 == 2)
      {
        v133 = a2[-2].n128_u64[0];
        v132 = a2[-2].n128_u64;
        v134 = bswap64(v133);
        v135 = bswap64(v11->n128_u64[0]);
        if (v134 == v135 && (v134 = bswap64(v132[1]), v135 = bswap64(v11->n128_u64[1]), v134 == v135) && (v134 = bswap64(v132[2]), v135 = bswap64(v11[1].n128_u64[0]), v134 == v135) && (v134 = bswap64(v132[3]), v135 = bswap64(v11[1].n128_u64[1]), v134 == v135))
        {
          v136 = 0;
        }

        else if (v134 < v135)
        {
          v136 = -1;
        }

        else
        {
          v136 = 1;
        }

        if (v136 < 0)
        {
          v189 = *v11;
          v215 = v11[1];
          v150 = *(v132 + 1);
          *v11 = *v132;
          v11[1] = v150;
          *v132 = v189;
          result = v215;
          *(v132 + 1) = v215;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v14 == 3)
    {
      break;
    }

    if (v14 == 4)
    {

      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(v11, v11 + 2, v11 + 4, a2 - 2, result).n128_u64[0];
      return result;
    }

    if (v14 == 5)
    {
      result.n128_u64[0] = std::__sort4[abi:ne200100]<std::_ClassicAlgPolicy,MTLHashKey::MTLHashKey(MTLUINT256_t const&,std::vector<MTLUINT256_t> &,std::vector<std::pair<unsigned int,MTLUINT256_t const>> &)::$_0 &,MTLUINT256_t*,0>(v11, v11 + 2, v11 + 4, v11 + 6, result).n128_u64[0];
      v128 = a2[-2].n128_u64[0];
      v127 = a2[-2].n128_u64;
      v129 = bswap64(v128);
      v130 = bswap64(v11[6].n128_u64[0]);
      if (v129 == v130 && (v129 = bswap64(v127[1]), v130 = bswap64(v11[6].n128_u64[1]), v129 == v130) && (v129 = bswap64(v127[2]), v130 = bswap64(v11[7].n128_u64[0]), v129 == v130) && (v129 = bswap64(v127[3]), v130 = bswap64(v11[7].n128_u64[1]), v129 == v130))
      {
        v131 = 0;
      }

      else if (v129 < v130)
      {
        v131 = -1;
      }

      else
      {
        v131 = 1;
      }

      if (v131 < 0)
      {
        v145 = v11[6];
        result = v11[7];
        v146 = *(v127 + 1);
        v11[6] = *v127;
        v11[7] = v146;
        *v127 = v145;
        *(v127 + 1) = result;
        v147 = bswap64(v11[6].n128_u64[0]);
        v148 = bswap64(v11[4].n128_u64[0]);
        if (v147 == v148 && (v147 = bswap64(v11[6].n128_u64[1]), v148 = bswap64(v11[4].n128_u64[1]), v147 == v148) && (v147 = bswap64(v11[7].n128_u64[0]), v148 = bswap64(v11[5].n128_u64[0]), v147 == v148) && (v147 = bswap64(v11[7].n128_u64[1]), v148 = bswap64(v11[5].n128_u64[1]), v147 == v148))
        {
          v149 = 0;
        }

        else
        {
          v149 = v147 < v148 ? -1 : 1;
        }

        if (v149 < 0)
        {
          v155 = v11[4];
          result = v11[5];
          v156 = v11[7];
          v11[4] = v11[6];
          v11[5] = v156;
          v11[6] = v155;
          v11[7] = result;
          v157 = bswap64(v11[4].n128_u64[0]);
          v158 = bswap64(v11[2].n128_u64[0]);
          if (v157 == v158 && (v157 = bswap64(v11[4].n128_u64[1]), v158 = bswap64(v11[2].n128_u64[1]), v157 == v158) && (v157 = bswap64(v11[5].n128_u64[0]), v158 = bswap64(v11[3].n128_u64[0]), v157 == v158) && (v157 = bswap64(v11[5].n128_u64[1]), v158 = bswap64(v11[3].n128_u64[1]), v157 == v158))
          {
            v159 = 0;
          }

          else
          {
            v159 = v157 < v158 ? -1 : 1;
          }

          if (v159 < 0)
          {
            v164 = v11[2];
            result = v11[3];
            v165 = v11[5];
            v11[2] = v11[4];
            v11[3] = v165;
            v11[4] = v164;
            v11[5] = result;
            v166 = bswap64(v11[2].n128_u64[0]);
            v167 = bswap64(v11->n128_u64[0]);
            if (v166 == v167 && (v166 = bswap64(v11[2].n128_u64[1]), v167 = bswap64(v11->n128_u64[1]), v166 == v167) && (v166 = bswap64(v11[3].n128_u64[0]), v167 = bswap64(v11[1].n128_u64[0]), v166 == v167) && (v166 = bswap64(v11[3].n128_u64[1]), v167 = bswap64(v11[1].n128_u64[1]), v166 == v167))
            {
              v168 = 0;
            }

            else
            {
              v168 = v166 < v167 ? -1 : 1;
            }

            if (v168 < 0)
            {
              v193 = *v11;
              v219 = v11[1];
              v169 = v11[3];
              *v11 = v11[2];
              v11[1] = v169;
              result = v193;
              v11[2] = v193;
              v11[3] = v219;
            }
          }
        }
      }

      return result;
    }

LABEL_10:
    if (v14 <= 23)
    {
      if (a5)
      {

        std::__insertion_sort[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(v11->n128_u64, a2->n128_u64);
      }

      else
      {

        std::__insertion_sort_unguarded[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(v11->n128_u64, a2->n128_u64);
      }

      return result;
    }

    if (v12 == 1)
    {
      if (v11 != a2)
      {

        std::__partial_sort_impl[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &>(v11, a2, a2, a3);
      }

      return result;
    }

    v15 = v11[2 * (v14 >> 1)].n128_u64;
    v16 = v15;
    if (v14 >= 0x81)
    {
      v17 = bswap64(*v15);
      v18 = bswap64(v11->n128_u64[0]);
      if (v17 == v18 && (v17 = bswap64(v15[1]), v18 = bswap64(v11->n128_u64[1]), v17 == v18) && (v17 = bswap64(v15[2]), v18 = bswap64(v11[1].n128_u64[0]), v17 == v18) && (v17 = bswap64(v15[3]), v18 = bswap64(v11[1].n128_u64[1]), v17 == v18))
      {
        v19 = 0;
      }

      else if (v17 < v18)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }

      v23 = bswap64(*n128_u64);
      v24 = bswap64(*v15);
      if (v23 != v24 || (v23 = bswap64(a2[-2].n128_u64[1]), v24 = bswap64(v15[1]), v23 != v24) || (v23 = bswap64(a2[-1].n128_u64[0]), v24 = bswap64(v15[2]), v23 != v24) || (v23 = bswap64(a2[-1].n128_u64[1]), v24 = bswap64(v15[3]), v23 != v24))
      {
        if (v23 < v24)
        {
          v25 = -1;
        }

        else
        {
          v25 = 1;
        }

        if ((v19 & 0x80000000) == 0)
        {
          goto LABEL_55;
        }

LABEL_31:
        if (v25 < 0)
        {
          v176 = *v11;
          v198 = v11[1];
          v49 = a2[-1];
          *v11 = *n128_u64;
          v11[1] = v49;
        }

        else
        {
          v172 = *v11;
          v194 = v11[1];
          v26 = *(v15 + 1);
          *v11 = *v15;
          v11[1] = v26;
          *v15 = v172;
          *(v15 + 1) = v194;
          v27 = bswap64(*n128_u64);
          v28 = bswap64(*v15);
          if (v27 == v28 && (v27 = bswap64(a2[-2].n128_u64[1]), v28 = bswap64(v15[1]), v27 == v28) && (v27 = bswap64(a2[-1].n128_u64[0]), v28 = bswap64(v15[2]), v27 == v28) && (v27 = bswap64(a2[-1].n128_u64[1]), v28 = bswap64(v15[3]), v27 == v28))
          {
            v29 = 0;
          }

          else if (v27 < v28)
          {
            v29 = -1;
          }

          else
          {
            v29 = 1;
          }

          if ((v29 & 0x80000000) == 0)
          {
            goto LABEL_93;
          }

          v176 = *v15;
          v198 = *(v15 + 1);
          v45 = a2[-1];
          *v15 = *n128_u64;
          *(v15 + 1) = v45;
        }

        *n128_u64 = v176;
        a2[-1] = v198;
        goto LABEL_93;
      }

      v25 = 0;
      if (v19 < 0)
      {
        goto LABEL_31;
      }

LABEL_55:
      if (v25 < 0)
      {
        v174 = *v15;
        v196 = *(v15 + 1);
        v37 = a2[-1];
        *v15 = *n128_u64;
        *(v15 + 1) = v37;
        *n128_u64 = v174;
        a2[-1] = v196;
        v38 = bswap64(*v15);
        v39 = bswap64(v11->n128_u64[0]);
        if (v38 == v39 && (v38 = bswap64(v15[1]), v39 = bswap64(v11->n128_u64[1]), v38 == v39) && (v38 = bswap64(v15[2]), v39 = bswap64(v11[1].n128_u64[0]), v38 == v39) && (v38 = bswap64(v15[3]), v39 = bswap64(v11[1].n128_u64[1]), v38 == v39))
        {
          v40 = 0;
        }

        else
        {
          v40 = v38 < v39 ? -1 : 1;
        }

        if (v40 < 0)
        {
          v178 = *v11;
          v200 = v11[1];
          v47 = *(v15 + 1);
          *v11 = *v15;
          v11[1] = v47;
          *v15 = v178;
          *(v15 + 1) = v200;
        }
      }

LABEL_93:
      v50 = v11[2].n128_u64;
      v51 = v15 - 4;
      v52 = bswap64(*(v15 - 4));
      v53 = bswap64(v11[2].n128_u64[0]);
      if (v52 == v53 && (v52 = bswap64(*(v15 - 3)), v53 = bswap64(v11[2].n128_u64[1]), v52 == v53) && (v52 = bswap64(*(v15 - 2)), v53 = bswap64(v11[3].n128_u64[0]), v52 == v53) && (v52 = bswap64(*(v15 - 1)), v53 = bswap64(v11[3].n128_u64[1]), v52 == v53))
      {
        v54 = 0;
      }

      else if (v52 < v53)
      {
        v54 = -1;
      }

      else
      {
        v54 = 1;
      }

      v55 = bswap64(*v170);
      v56 = bswap64(*v51);
      if (v55 != v56 || (v55 = bswap64(a2[-4].n128_u64[1]), v56 = bswap64(*(v15 - 3)), v55 != v56) || (v55 = bswap64(a2[-3].n128_u64[0]), v56 = bswap64(*(v15 - 2)), v55 != v56) || (v55 = bswap64(a2[-3].n128_u64[1]), v56 = bswap64(*(v15 - 1)), v55 != v56))
      {
        if (v55 < v56)
        {
          v57 = -1;
        }

        else
        {
          v57 = 1;
        }

        if ((v54 & 0x80000000) == 0)
        {
          goto LABEL_116;
        }

LABEL_106:
        if (v57 < 0)
        {
          v72 = *v50;
          v68 = v11[3];
          v73 = a2[-3];
          *v50 = *v170;
          v11[3] = v73;
          *v170 = v72;
        }

        else
        {
          v58 = *v50;
          v202 = v11[3];
          v59 = *(v15 - 1);
          *v50 = *v51;
          v11[3] = v59;
          *v51 = v58;
          *(v15 - 1) = v202;
          v60 = bswap64(*v170);
          v61 = bswap64(*v51);
          if (v60 == v61 && (v60 = bswap64(a2[-4].n128_u64[1]), v61 = bswap64(*(v15 - 3)), v60 == v61) && (v60 = bswap64(a2[-3].n128_u64[0]), v61 = bswap64(*(v15 - 2)), v60 == v61) && (v60 = bswap64(a2[-3].n128_u64[1]), v61 = bswap64(*(v15 - 1)), v60 == v61))
          {
            v62 = 0;
          }

          else if (v60 < v61)
          {
            v62 = -1;
          }

          else
          {
            v62 = 1;
          }

          if ((v62 & 0x80000000) == 0)
          {
            goto LABEL_136;
          }

          v181 = *v51;
          v204 = *(v15 - 1);
          v67 = a2[-3];
          *v51 = *v170;
          *(v15 - 1) = v67;
          *v170 = v181;
          v68 = v204;
        }

        a2[-3] = v68;
        goto LABEL_136;
      }

      v57 = 0;
      if (v54 < 0)
      {
        goto LABEL_106;
      }

LABEL_116:
      if (v57 < 0)
      {
        v180 = *v51;
        v203 = *(v15 - 1);
        v63 = a2[-3];
        *v51 = *v170;
        *(v15 - 1) = v63;
        *v170 = v180;
        a2[-3] = v203;
        v64 = bswap64(*v51);
        v65 = bswap64(*v50);
        if (v64 == v65 && (v64 = bswap64(*(v15 - 3)), v65 = bswap64(v11[2].n128_u64[1]), v64 == v65) && (v64 = bswap64(*(v15 - 2)), v65 = bswap64(v11[3].n128_u64[0]), v64 == v65) && (v64 = bswap64(*(v15 - 1)), v65 = bswap64(v11[3].n128_u64[1]), v64 == v65))
        {
          v66 = 0;
        }

        else
        {
          v66 = v64 < v65 ? -1 : 1;
        }

        if (v66 < 0)
        {
          v69 = *v50;
          v205 = v11[3];
          v70 = *(v15 - 1);
          *v50 = *v51;
          v11[3] = v70;
          *v51 = v69;
          *(v15 - 1) = v205;
        }
      }

LABEL_136:
      v74 = v11[4].n128_u64;
      v76 = v15[4];
      v75 = v15 + 4;
      v77 = bswap64(v76);
      v78 = bswap64(v11[4].n128_u64[0]);
      if (v77 == v78 && (v77 = bswap64(v75[1]), v78 = bswap64(v11[4].n128_u64[1]), v77 == v78) && (v77 = bswap64(v75[2]), v78 = bswap64(v11[5].n128_u64[0]), v77 == v78) && (v77 = bswap64(v75[3]), v78 = bswap64(v11[5].n128_u64[1]), v77 == v78))
      {
        v79 = 0;
      }

      else if (v77 < v78)
      {
        v79 = -1;
      }

      else
      {
        v79 = 1;
      }

      v80 = bswap64(*v10);
      v81 = bswap64(*v75);
      if (v80 != v81 || (v80 = bswap64(a2[-6].n128_u64[1]), v81 = bswap64(v75[1]), v80 != v81) || (v80 = bswap64(a2[-5].n128_u64[0]), v81 = bswap64(v75[2]), v80 != v81) || (v80 = bswap64(a2[-5].n128_u64[1]), v81 = bswap64(v75[3]), v80 != v81))
      {
        if (v80 < v81)
        {
          v82 = -1;
        }

        else
        {
          v82 = 1;
        }

        if ((v79 & 0x80000000) == 0)
        {
          goto LABEL_159;
        }

LABEL_149:
        if (v82 < 0)
        {
          v96 = *v74;
          v93 = v11[5];
          v97 = a2[-5];
          *v74 = *v10;
          v11[5] = v97;
          *v10 = v96;
        }

        else
        {
          v83 = *v74;
          v206 = v11[5];
          v84 = *(v75 + 1);
          *v74 = *v75;
          v11[5] = v84;
          *v75 = v83;
          *(v75 + 1) = v206;
          v85 = bswap64(*v10);
          v86 = bswap64(*v75);
          if (v85 == v86 && (v85 = bswap64(a2[-6].n128_u64[1]), v86 = bswap64(v75[1]), v85 == v86) && (v85 = bswap64(a2[-5].n128_u64[0]), v86 = bswap64(v75[2]), v85 == v86) && (v85 = bswap64(a2[-5].n128_u64[1]), v86 = bswap64(v75[3]), v85 == v86))
          {
            v87 = 0;
          }

          else if (v85 < v86)
          {
            v87 = -1;
          }

          else
          {
            v87 = 1;
          }

          if ((v87 & 0x80000000) == 0)
          {
            goto LABEL_177;
          }

          v183 = *v75;
          v208 = *(v75 + 1);
          v92 = a2[-5];
          *v75 = *v10;
          *(v75 + 1) = v92;
          *v10 = v183;
          v93 = v208;
        }

        a2[-5] = v93;
        goto LABEL_177;
      }

      v82 = 0;
      if (v79 < 0)
      {
        goto LABEL_149;
      }

LABEL_159:
      if (v82 < 0)
      {
        v182 = *v75;
        v207 = *(v75 + 1);
        v88 = a2[-5];
        *v75 = *v10;
        *(v75 + 1) = v88;
        *v10 = v182;
        a2[-5] = v207;
        v89 = bswap64(*v75);
        v90 = bswap64(*v74);
        if (v89 == v90 && (v89 = bswap64(v75[1]), v90 = bswap64(v11[4].n128_u64[1]), v89 == v90) && (v89 = bswap64(v75[2]), v90 = bswap64(v11[5].n128_u64[0]), v89 == v90) && (v89 = bswap64(v75[3]), v90 = bswap64(v11[5].n128_u64[1]), v89 == v90))
        {
          v91 = 0;
        }

        else
        {
          v91 = v89 < v90 ? -1 : 1;
        }

        if (v91 < 0)
        {
          v94 = *v74;
          v209 = v11[5];
          v95 = *(v75 + 1);
          *v74 = *v75;
          v11[5] = v95;
          *v75 = v94;
          *(v75 + 1) = v209;
        }
      }

LABEL_177:
      v98 = bswap64(*v16);
      v99 = bswap64(*v51);
      if (v98 == v99 && (v98 = bswap64(v16[1]), v99 = bswap64(v51[1]), v98 == v99) && (v98 = bswap64(v16[2]), v99 = bswap64(v51[2]), v98 == v99) && (v98 = bswap64(v16[3]), v99 = bswap64(v51[3]), v98 == v99))
      {
        v100 = 0;
      }

      else if (v98 < v99)
      {
        v100 = -1;
      }

      else
      {
        v100 = 1;
      }

      v101 = bswap64(*v75);
      v102 = bswap64(*v16);
      if (v101 == v102 && (v101 = bswap64(v75[1]), v102 = bswap64(v16[1]), v101 == v102) && (v101 = bswap64(v75[2]), v102 = bswap64(v16[2]), v101 == v102) && (v101 = bswap64(v75[3]), v102 = bswap64(v16[3]), v101 == v102))
      {
        v103 = 0;
        if (v100 < 0)
        {
          goto LABEL_190;
        }

LABEL_200:
        if (v103 < 0)
        {
          v185 = *v16;
          v211 = *(v16 + 1);
          v108 = *(v75 + 1);
          *v16 = *v75;
          *(v16 + 1) = v108;
          *v75 = v185;
          *(v75 + 1) = v211;
          v109 = bswap64(*v16);
          v110 = bswap64(*v51);
          if (v109 == v110 && (v109 = bswap64(v16[1]), v110 = bswap64(v51[1]), v109 == v110) && (v109 = bswap64(v16[2]), v110 = bswap64(v51[2]), v109 == v110) && (v109 = bswap64(v16[3]), v110 = bswap64(v51[3]), v109 == v110))
          {
            v111 = 0;
          }

          else
          {
            v111 = v109 < v110 ? -1 : 1;
          }

          if (v111 < 0)
          {
            v187 = *v51;
            v213 = *(v51 + 1);
            v113 = *(v16 + 1);
            *v51 = *v16;
            *(v51 + 1) = v113;
            *v16 = v187;
            *(v16 + 1) = v213;
          }
        }
      }

      else
      {
        if (v101 < v102)
        {
          v103 = -1;
        }

        else
        {
          v103 = 1;
        }

        if ((v100 & 0x80000000) == 0)
        {
          goto LABEL_200;
        }

LABEL_190:
        if (v103 < 0)
        {
          v186 = *v51;
          v212 = *(v51 + 1);
          v114 = *(v75 + 1);
          *v51 = *v75;
          *(v51 + 1) = v114;
        }

        else
        {
          v184 = *v51;
          v210 = *(v51 + 1);
          v104 = *(v16 + 1);
          *v51 = *v16;
          *(v51 + 1) = v104;
          *v16 = v184;
          *(v16 + 1) = v210;
          v105 = bswap64(*v75);
          v106 = bswap64(*v16);
          if (v105 == v106 && (v105 = bswap64(v75[1]), v106 = bswap64(v16[1]), v105 == v106) && (v105 = bswap64(v75[2]), v106 = bswap64(v16[2]), v105 == v106) && (v105 = bswap64(v75[3]), v106 = bswap64(v16[3]), v105 == v106))
          {
            v107 = 0;
          }

          else if (v105 < v106)
          {
            v107 = -1;
          }

          else
          {
            v107 = 1;
          }

          if ((v107 & 0x80000000) == 0)
          {
            goto LABEL_218;
          }

          v186 = *v16;
          v212 = *(v16 + 1);
          v112 = *(v75 + 1);
          *v16 = *v75;
          *(v16 + 1) = v112;
        }

        *v75 = v186;
        *(v75 + 1) = v212;
      }

LABEL_218:
      v188 = *v11;
      v214 = v11[1];
      v115 = *(v16 + 1);
      *v11 = *v16;
      v11[1] = v115;
      *v16 = v188;
      *(v16 + 1) = v214;
      goto LABEL_219;
    }

    v20 = bswap64(v11->n128_u64[0]);
    v21 = bswap64(*v16);
    if (v20 == v21 && (v20 = bswap64(v11->n128_u64[1]), v21 = bswap64(v16[1]), v20 == v21) && (v20 = bswap64(v11[1].n128_u64[0]), v21 = bswap64(v16[2]), v20 == v21) && (v20 = bswap64(v11[1].n128_u64[1]), v21 = bswap64(v16[3]), v20 == v21))
    {
      v22 = 0;
    }

    else if (v20 < v21)
    {
      v22 = -1;
    }

    else
    {
      v22 = 1;
    }

    v30 = bswap64(*n128_u64);
    v31 = bswap64(v11->n128_u64[0]);
    if (v30 == v31 && (v30 = bswap64(a2[-2].n128_u64[1]), v31 = bswap64(v11->n128_u64[1]), v30 == v31) && (v30 = bswap64(a2[-1].n128_u64[0]), v31 = bswap64(v11[1].n128_u64[0]), v30 == v31) && (v30 = bswap64(a2[-1].n128_u64[1]), v31 = bswap64(v11[1].n128_u64[1]), v30 == v31))
    {
      v32 = 0;
      if ((v22 & 0x80000000) == 0)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (v30 < v31)
      {
        v32 = -1;
      }

      else
      {
        v32 = 1;
      }

      if ((v22 & 0x80000000) == 0)
      {
LABEL_65:
        if (v32 < 0)
        {
          v175 = *v11;
          v197 = v11[1];
          v41 = a2[-1];
          *v11 = *n128_u64;
          v11[1] = v41;
          *n128_u64 = v175;
          a2[-1] = v197;
          v42 = bswap64(v11->n128_u64[0]);
          v43 = bswap64(*v16);
          if (v42 == v43 && (v42 = bswap64(v11->n128_u64[1]), v43 = bswap64(v16[1]), v42 == v43) && (v42 = bswap64(v11[1].n128_u64[0]), v43 = bswap64(v16[2]), v42 == v43) && (v42 = bswap64(v11[1].n128_u64[1]), v43 = bswap64(v16[3]), v42 == v43))
          {
            v44 = 0;
          }

          else
          {
            v44 = v42 < v43 ? -1 : 1;
          }

          if (v44 < 0)
          {
            v179 = *v16;
            v201 = *(v16 + 1);
            v48 = v11[1];
            *v16 = *v11;
            *(v16 + 1) = v48;
            *v11 = v179;
            v11[1] = v201;
          }
        }

        goto LABEL_219;
      }
    }

    if (v32 < 0)
    {
      v177 = *v16;
      v199 = *(v16 + 1);
      v71 = a2[-1];
      *v16 = *n128_u64;
      *(v16 + 1) = v71;
      goto LABEL_133;
    }

    v173 = *v16;
    v195 = *(v16 + 1);
    v33 = v11[1];
    *v16 = *v11;
    *(v16 + 1) = v33;
    *v11 = v173;
    v11[1] = v195;
    v34 = bswap64(*n128_u64);
    v35 = bswap64(v11->n128_u64[0]);
    if (v34 == v35 && (v34 = bswap64(a2[-2].n128_u64[1]), v35 = bswap64(v11->n128_u64[1]), v34 == v35) && (v34 = bswap64(a2[-1].n128_u64[0]), v35 = bswap64(v11[1].n128_u64[0]), v34 == v35) && (v34 = bswap64(a2[-1].n128_u64[1]), v35 = bswap64(v11[1].n128_u64[1]), v34 == v35))
    {
      v36 = 0;
    }

    else if (v34 < v35)
    {
      v36 = -1;
    }

    else
    {
      v36 = 1;
    }

    if (v36 < 0)
    {
      v177 = *v11;
      v199 = v11[1];
      v46 = a2[-1];
      *v11 = *n128_u64;
      v11[1] = v46;
LABEL_133:
      *n128_u64 = v177;
      a2[-1] = v199;
    }

LABEL_219:
    if ((a5 & 1) == 0)
    {
      v116 = bswap64(v11[-2].n128_u64[0]);
      v117 = bswap64(v11->n128_u64[0]);
      if (v116 == v117 && (v116 = bswap64(v11[-2].n128_u64[1]), v117 = bswap64(v11->n128_u64[1]), v116 == v117) && (v116 = bswap64(v11[-1].n128_u64[0]), v117 = bswap64(v11[1].n128_u64[0]), v116 == v117) && (v116 = bswap64(v11[-1].n128_u64[1]), v117 = bswap64(v11[1].n128_u64[1]), v116 == v117))
      {
        v118 = 0;
      }

      else
      {
        v118 = v116 < v117 ? -1 : 1;
      }

      if ((v118 & 0x80000000) == 0)
      {
        v11 = std::__partition_with_equals_on_left[abi:ne200100]<std::_ClassicAlgPolicy,MTLUINT256_t *,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &>(v11->n128_u64, a2);
        goto LABEL_234;
      }
    }

    v119 = std::__partition_with_equals_on_right[abi:ne200100]<std::_ClassicAlgPolicy,MTLUINT256_t *,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &>(v11, a2);
    if ((v120 & 1) == 0)
    {
      goto LABEL_232;
    }

    v121 = std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(v11, v119, result);
    v11 = v119 + 2;
    if (std::__insertion_sort_incomplete[abi:ne200100]<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **>(v119 + 2, a2, v122))
    {
      a4 = -v13;
      a2 = v119;
      if (v121)
      {
        return result;
      }

      goto LABEL_1;
    }

    v12 = v13 + 1;
    if (!v121)
    {
LABEL_232:
      result = std::__introsort<std::_ClassicAlgPolicy,FunctionHashFactory::FunctionHashFactory(_MTLFunctionInternal *,MTLFunctionData const&,MTLCompilerOption,NSDictionary<NSString *,objc_object *> *,NSArray<objc_object  {objcproto11MTLFunction}*> *,NSArray<objc_object  {objcproto11MTLFunction}*>)::{lambda(MTLUINT256_t const&,MTLUINT256_t const)#1} &,NSArray<objc_object  {objcproto11MTLFunction}*> **,false>(a1->n128_u64, v119->n128_u64, a3, -v13, a5 & 1, result);
      v11 = v119 + 2;
LABEL_234:
      a5 = 0;
      a4 = -v13;
      goto LABEL_2;
    }
  }

  v123 = v11[2].n128_u64;
  v124 = bswap64(v11[2].n128_u64[0]);
  v125 = bswap64(v11->n128_u64[0]);
  if (v124 == v125 && (v124 = bswap64(v11[2].n128_u64[1]), v125 = bswap64(v11->n128_u64[1]), v124 == v125) && (v124 = bswap64(v11[3].n128_u64[0]), v125 = bswap64(v11[1].n128_u64[0]), v124 == v125) && (v124 = bswap64(v11[3].n128_u64[1]), v125 = bswap64(v11[1].n128_u64[1]), v124 == v125))
  {
    v126 = 0;
  }

  else if (v124 < v125)
  {
    v126 = -1;
  }

  else
  {
    v126 = 1;
  }

  v137 = bswap64(*n128_u64);
  v138 = bswap64(*v123);
  if (v137 == v138 && (v137 = bswap64(a2[-2].n128_u64[1]), v138 = bswap64(v11[2].n128_u64[1]), v137 == v138) && (v137 = bswap64(a2[-1].n128_u64[0]), v138 = bswap64(v11[3].n128_u64[0]), v137 == v138) && (v137 = bswap64(a2[-1].n128_u64[1]), v138 = bswap64(v11[3].n128_u64[1]), v137 == v138))
  {
    v139 = 0;
  }

  else if (v137 < v138)
  {
    v139 = -1;
  }

  else
  {
    v139 = 1;
  }

  if (v126 < 0)
  {
    if (v139 < 0)
    {
      v192 = *v11;
      v218 = v11[1];
      v163 = a2[-1];
      *v11 = *n128_u64;
      v11[1] = v163;
      *n128_u64 = v192;
      result = v218;
      a2[-1] = v218;
    }

    else
    {
      v190 = *v11;
      v216 = v11[1];
      v151 = v11[3];
      *v11 = *v123;
      v11[1] = v151;
      result = v190;
      *v123 = v190;
      v11[3] = v216;
      v152 = bswap64(*n128_u64);
      v153 = bswap64(v11[2].n128_u64[0]);
      if (v152 == v153 && (v152 = bswap64(a2[-2].n128_u64[1]), v153 = bswap64(v11[2].n128_u64[1]), v152 == v153) && (v152 = bswap64(a2[-1].n128_u64[0]), v153 = bswap64(v11[3].n128_u64[0]), v152 == v153) && (v152 = bswap64(a2[-1].n128_u64[1]), v153 = bswap64(v11[3].n128_u64[1]), v152 == v153))
      {
        v154 = 0;
      }

      else if (v152 < v153)
      {
        v154 = -1;
      }

      else
      {
        v154 = 1;
      }

      if (v154 < 0)
      {
        v161 = *v123;
        result = v11[3];
        v162 = a2[-1];
        *v123 = *n128_u64;
        v11[3] = v162;
        *n128_u64 = v161;
        a2[-1] = result;
      }
    }
  }

  else if (v139 < 0)
  {
    v140 = *v123;
    result = v11[3];
    v141 = a2[-1];
    *v123 = *n128_u64;
    v11[3] = v141;
    *n128_u64 = v140;
    a2[-1] = result;
    v142 = bswap64(v11[2].n128_u64[0]);
    v143 = bswap64(v11->n128_u64[0]);
    if (v142 == v143 && (v142 = bswap64(v11[2].n128_u64[1]), v143 = bswap64(v11->n128_u64[1]), v142 == v143) && (v142 = bswap64(v11[3].n128_u64[0]), v143 = bswap64(v11[1].n128_u64[0]), v142 == v143) && (v142 = bswap64(v11[3].n128_u64[1]), v143 = bswap64(v11[1].n128_u64[1]), v142 == v143))
    {
      v144 = 0;
    }

    else
    {
      v144 = v142 < v143 ? -1 : 1;
    }

    if (v144 < 0)
    {
      v191 = *v11;
      v217 = v11[1];
      v160 = v11[3];
      *v11 = *v123;
      v11[1] = v160;
      result = v191;
      *v123 = v191;
      v11[3] = v217;
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::find<MTLHashKey>(void *a1, MTLHashKey *this)
{
  v4 = MTLHashKey::hash(this);
  v5 = a1[1];
  if (!*&v5)
  {
    return 0;
  }

  v6 = v4;
  v7 = vcnt_s8(v5);
  v7.i16[0] = vaddlv_u8(v7);
  v8 = v7.u32[0];
  if (v7.u32[0] > 1uLL)
  {
    v9 = v4;
    if (v4 >= *&v5)
    {
      v9 = v4 % *&v5;
    }
  }

  else
  {
    v9 = (*&v5 - 1) & v4;
  }

  v10 = *(*a1 + 8 * v9);
  if (!v10)
  {
    return 0;
  }

  v11 = *v10;
  if (*v10)
  {
    do
    {
      v12 = v11[1];
      if (v12 == v6)
      {
        if (MTLHashKey::operator==(v11 + 2, this))
        {
          return v11;
        }
      }

      else
      {
        if (v8 > 1)
        {
          if (v12 >= *&v5)
          {
            v12 %= *&v5;
          }
        }

        else
        {
          v12 &= *&v5 - 1;
        }

        if (v12 != v9)
        {
          return 0;
        }
      }

      v11 = *v11;
    }

    while (v11);
  }

  return v11;
}

NSObject *_MTLNewReflectionBlock(NSObject *a1, dispatch_data_t data, NSObject *a3)
{
  concat = data;
  v15 = xmmword_185DE1A40;
  v22 = 0;
  if (data)
  {
    size = dispatch_data_get_size(data);
  }

  else
  {
    size = 0;
  }

  v19 = size;
  if (a1)
  {
    v7 = dispatch_data_get_size(a1);
  }

  else
  {
    v7 = 0;
  }

  v17 = v7;
  if (a3)
  {
    v8 = dispatch_data_get_size(a3);
  }

  else
  {
    v8 = 0;
  }

  v9 = size + 80;
  if (concat == a3)
  {
    v9 = 80;
  }

  v20 = v9;
  v21 = v8;
  v10 = v8 + v9;
  if (!a1)
  {
    v10 = 0;
  }

  v18 = 80;
  v16 = v10;
  v11 = dispatch_data_create(&v15, 0x50uLL, 0, 0);
  if (concat | a3)
  {
    if (concat != a3)
    {
      if (concat && a3)
      {
        concat = dispatch_data_create_concat(concat, a3);
        if (!concat)
        {
          goto LABEL_24;
        }

LABEL_23:
        v12 = dispatch_data_create_concat(v11, concat);
        dispatch_release(concat);
        dispatch_release(v11);
        v11 = v12;
        goto LABEL_24;
      }

      if (!concat)
      {
        concat = a3;
      }
    }

    dispatch_retain(concat);
    if (!concat)
    {
      goto LABEL_24;
    }

    goto LABEL_23;
  }

LABEL_24:
  if (a1)
  {
    v13 = dispatch_data_create_concat(v11, a1);
    dispatch_release(v11);
    return v13;
  }

  return v11;
}

uint64_t MTLGetReflectionFlags(NSObject *a1)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  buffer_ptr = 0;
  v1 = dispatch_data_create_map(a1, &buffer_ptr, &v5);
  if (*buffer_ptr == 0x8EF13C710)
  {
    if (*(buffer_ptr + 7))
    {
      v2 = (2 * (*(buffer_ptr + 5) != 0)) | 4;
    }

    else
    {
      v2 = 2 * (*(buffer_ptr + 5) != 0);
    }

    if (*(buffer_ptr + 3))
    {
      v3 = v2 + 1;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  dispatch_release(v1);
  return v3;
}

void *std::__hash_table<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,std::__unordered_map_hasher<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::__unordered_map_equal<MTLHashKey,std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>,CompareFunctionIdHash,CompareFunctionIdHash,true>,std::allocator<std::__hash_value_type<MTLHashKey,std::tuple<unsigned long long,unsigned long long,unsigned long long,unsigned long long>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
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

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

unsigned __int8 *_getFunctionHash(Air::FunctionScript *a1, uint64_t a2)
{
  v2 = (a1 - *a1);
  if (*v2 < 9u)
  {
    return 0;
  }

  v3 = v2[4];
  if (!v3)
  {
    return 0;
  }

  v4 = *(a1 + v3);
  if (v4 > 4)
  {
    if (v4 > 6)
    {
      if (v4 != 7)
      {
        if (v4 != 8)
        {
          return 0;
        }

        v9 = Air::FunctionScript::function_as_mesh(a1);

        return getMeshHash(v9);
      }

      Air::FunctionScript::function_as_object(a1);
    }

    else if (v4 == 5)
    {
      Mtl4::FunctionConstantValue::value_as_ConstantFloat3(a1);
    }

    else
    {
      Mtl4::FunctionConstantValue::value_as_ConstantFloat4(a1);
    }

LABEL_29:

    return malloc_type_calloc(0x20uLL, 1uLL, 0x100004077774924uLL);
  }

  if (v4 > 2)
  {
    if (v4 != 3)
    {
      v8 = Mtl4::FunctionConstantValue::value_as_ConstantFloat2(a1);

      return getTileHash(v8);
    }

    Mtl4::FunctionConstantValue::value_as_ConstantFloat(a1);
    goto LABEL_29;
  }

  if (v4 != 1)
  {
    if (v4 == 2)
    {
      v5 = a2;
      v6 = Air::PipelineScript::pipeline_as_compute(a1);

      return getFragmentHash(v6, v5);
    }

    return 0;
  }

  v10 = Air::PipelineScript::pipeline_as_render(a1);

  return getVertexHash(v10);
}

uint64_t Mtl4::FunctionConstantValue::value_as_ConstantFloat3(Mtl4::FunctionConstantValue *this)
{
  v1 = (this - *this);
  v2 = *v1;
  if (v2 >= 9 && v1[4] && (v2 >= 0xB ? (v3 = *(this + v1[4]) == 5) : (v3 = 0), v3 && (v4 = v1[5]) != 0))
  {
    return this + v4 + *(this + v4);
  }

  else
  {
    return 0;
  }
}

uint64_t MTLLibraryBuilder::MTLLibraryBuilder(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 16) = 0;
  *(a1 + 8) = a1 + 16;
  *(a1 + 40) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = a2;
  if (MTLGetModulesCachePath::onceToken != -1)
  {
    MTLGetModulesCachePath_cold_1();
  }

  *(a1 + 48) = MTLGetModulesCachePath::result;
  return a1;
}

void *copyCacheMainFolder(const char *a1, unint64_t *a2, const char *a3, BOOL a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (getCacheMainFolder(__s, a1, a3))
  {
    v5 = strlen(__s);
    *a2 = v5;
    v6 = malloc_type_malloc(v5 + 1, 0x100004077774924uLL);
    memcpy(v6, __s, *a2 + 1);
  }

  else
  {
    v6 = 0;
    *a2 = 0;
  }

  return v6;
}

void __MTLGetModulesCachePath_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, BOOL a4)
{
  v7 = 0;
  ModuleCacheMainFolder = getModuleCacheMainFolder(&v7, a2, a3, a4);
  if (ModuleCacheMainFolder)
  {
    v5 = ModuleCacheMainFolder;
    v6 = objc_alloc(MEMORY[0x1E696AEC0]);
    MTLGetModulesCachePath::result = [v6 initWithBytesNoCopy:v5 length:v7 encoding:4 freeWhenDone:1];
    if (!MTLGetModulesCachePath::result)
    {
      free(v5);
    }
  }
}

void LoaderGlobalState::LoaderGlobalState(LoaderGlobalState *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 12) = 1065353216;
  v2 = objc_autoreleasePoolPush();
  *this = [objc_msgSend(objc_msgSend(objc_msgSend(MEMORY[0x1E696AAE8] "mainBundle")];
  objc_autoreleasePoolPop(v2);
  *(this + 1) = dispatch_queue_create("MTLLoader global file queue", 0);
}

BOOL getCacheMainFolder(char *a1, const char *a2, const char *a3)
{
  v36 = *MEMORY[0x1E69E9840];
  didPreviouslyGetCacheMainFolder = 1;
  if (gOverridePath)
  {
    v4 = strlen(gOverridePath) + 1;
    if (v4 <= 0x400)
    {
      memcpy(a1, gOverridePath, v4);
      return 1;
    }

    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT);
    if (result)
    {
      getCacheMainFolder();
      return 0;
    }
  }

  else
  {
    v6 = a3;
    *a1 = 0;
    v8 = CFCopySearchPathForDirectoriesInDomains();
    Count = CFArrayGetCount(v8);
    if (!Count)
    {
      CFRelease(v8);
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        getCacheMainFolder();
      }

      return 0;
    }

    v10 = Count;
    ValueAtIndex = CFArrayGetValueAtIndex(v8, Count - 1);
    if (!ValueAtIndex)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        getCacheMainFolder();
      }

      CFRelease(v8);
      return 0;
    }

    v12 = CFURLCopyFileSystemPath(ValueAtIndex, kCFURLPOSIXPathStyle);
    v13 = strlen(a1);
    CFStringGetCString(v12, &a1[v13], 1024 - v13, 0x8000100u);
    CFRelease(v12);
    CFRelease(v8);
    if (stat(a1, &v27))
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        getCacheMainFolder(v10, a1);
      }

      return 0;
    }

    v14 = strlen(a1);
    MainBundle = CFBundleGetMainBundle();
    if (v6)
    {
      if (MainBundle)
      {
        Identifier = CFBundleGetIdentifier(MainBundle);
        if (Identifier)
        {
          v17 = Identifier;
          v18 = strlen(a1);
          if (v18 && a1[v18] != 47)
          {
            *&a1[v18] = 47;
          }

          v19 = strlen(a1);
          CFStringGetCString(v17, &a1[v19], 1024 - v19, 0x8000100u);
        }
      }
    }

    if (a2)
    {
      v20 = strlen(a1);
      if (v20 && a1[v20] != 47)
      {
        *&a1[v20++] = 47;
      }

      strncat(a1, a2, 1024 - v20);
    }

    if (stat(a1, &v27))
    {
      v21 = &a1[v14];
      v22 = strchr(v21, 47);
      if (v22)
      {
        while (1)
        {
          v23 = v22;
          *v22 = 0;
          if (mkdir(a1, 0x1FFu))
          {
            if (*__error() != 17)
            {
              break;
            }
          }

          *v23 = 47;
          v22 = strchr(v23 + 1, 47);
          v21 = v23;
          if (!v22)
          {
            goto LABEL_36;
          }
        }

        v25 = *v21;
        *v23 = 47;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          if (v25 == 47)
          {
            ++v21;
          }

          v26 = *__error();
          *buf = 67109890;
          v29 = v26;
          v30 = 2080;
          v31 = a1;
          v32 = 1040;
          v33 = v23 - v21;
          v34 = 2080;
          v35 = v21;
          _os_log_fault_impl(&dword_185B8E000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "Failed to get cache main folder: mkdir failed to create cache path (errno = %u, path = %s, attempting to create intermediate subdir '%.*s', possible sandbox issue?)", buf, 0x22u);
        }

        return 0;
      }

LABEL_36:
      if (mkdir(a1, 0x1FFu) && *__error() != 17)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          getCacheMainFolder();
        }

        return 0;
      }
    }

    v24 = stat(a1, &v27);
    result = 1;
    if (!v24 && gShaderCachePermissions)
    {
      chmod(a1, 0x1FFu);
      return 1;
    }
  }

  return result;
}