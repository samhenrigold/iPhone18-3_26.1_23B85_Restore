void sub_1A691DB48(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (*(v65 - 145) < 0)
  {
    operator delete(*(v65 - 168));
  }

  if (*(v65 - 121) < 0)
  {
    operator delete(*(v65 - 144));
  }

  a65 = v65 - 120;
  std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](&a65);
  _Unwind_Resume(a1);
}

uint64_t CpTransposeGraph::CreateDotString@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v65);
  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "digraph D {", 11);
  std::ios_base::getloc((v7 + *(*v7 - 24)));
  v8 = std::locale::use_facet(&v44, MEMORY[0x1E69E5318]);
  (v8->__vftable[2].~facet_0)(v8, 10);
  std::locale::~locale(&v44);
  std::ostream::put();
  std::ostream::flush();
  v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\tfontname=Arial Unicode MS", 28);
  std::ios_base::getloc((v9 + *(*v9 - 24)));
  v10 = std::locale::use_facet(&v44, MEMORY[0x1E69E5318]);
  (v10->__vftable[2].~facet_0)(v10, 10);
  std::locale::~locale(&v44);
  std::ostream::put();
  std::ostream::flush();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\tgraph[compound=true];", 22);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v44, MEMORY[0x1E69E5318]);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v44);
  std::ostream::put();
  std::ostream::flush();
  v13 = *a1;
  if (*a1 != a1 + 8)
  {
    while (1)
    {
      v64 = v13[4];
      if (!a2[3] || std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a2, &v64))
      {
        break;
      }

LABEL_30:
      v22 = v13[1];
      if (v22)
      {
        do
        {
          v23 = v22;
          v22 = *v22;
        }

        while (v22);
      }

      else
      {
        do
        {
          v23 = v13[2];
          v24 = *v23 == v13;
          v13 = v23;
        }

        while (!v24);
      }

      v13 = v23;
      if (v23 == (a1 + 8))
      {
        goto LABEL_36;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v44, "");
    std::string::basic_string[abi:ne200100]<0>(&v61, "");
    __p = v64;
    if (std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>((a1 + 232), &__p))
    {
      v14 = v64;
      std::__optional_copy_base<CpTransposeUtils::CpTransposeOptimizationResult const,false>::__optional_copy_base[abi:ne200100](v53, a3);
      CpTransposeGraph::CreateDotStringLayerNode(a1, v14, v53, &__p);
      if ((v60 & 0x80u) == 0)
      {
        p_p = &__p;
      }

      else
      {
        p_p = __p;
      }

      if ((v60 & 0x80u) == 0)
      {
        v16 = v60;
      }

      else
      {
        v16 = v59;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, p_p, v16);
      if (v60 < 0)
      {
        operator delete(__p);
      }

      if (v57 != 1)
      {
        goto LABEL_26;
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v56, v56[1]);
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v55, v55[1]);
      v17 = v54;
      v18 = v53;
    }

    else
    {
      v19 = v64;
      std::__optional_copy_base<CpTransposeUtils::CpTransposeOptimizationResult const,false>::__optional_copy_base[abi:ne200100](v48, a3);
      CpTransposeGraph::CreateDotStringRootTensorNode(a1, v19, v48, &__p);
      if ((v60 & 0x80u) == 0)
      {
        v20 = &__p;
      }

      else
      {
        v20 = __p;
      }

      if ((v60 & 0x80u) == 0)
      {
        v21 = v60;
      }

      else
      {
        v21 = v59;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, v20, v21);
      if (v60 < 0)
      {
        operator delete(__p);
      }

      if (v52 != 1)
      {
        goto LABEL_26;
      }

      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v51, v51[1]);
      std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v50, v50[1]);
      v17 = v49;
      v18 = v48;
    }

    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v18, v17);
LABEL_26:
    if (v63 < 0)
    {
      operator delete(v61);
    }

    if (SHIBYTE(v46) < 0)
    {
      operator delete(v44.__locale_);
    }

    goto LABEL_30;
  }

LABEL_36:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\n", 1);
  v25 = *(a1 + 40);
  if (!v25)
  {
    goto LABEL_54;
  }

  do
  {
    v44.__locale_ = v25[2];
    v46 = 0;
    v47 = 0;
    v45 = 0;
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v45, v25[3], v25[4], v25[4] - v25[3]);
    locale = v44.__locale_;
    v27 = v45;
    v28 = v46;
    if (v45 == v46)
    {
      goto LABEL_51;
    }

    do
    {
      v29 = *v27;
      if (a2[3])
      {
        v61 = locale;
        if (!std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a2, &v61))
        {
          goto LABEL_49;
        }

        __p = v29;
        if (!std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(a2, &__p))
        {
          goto LABEL_49;
        }
      }

      v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\tnode_", 7);
      v31 = MEMORY[0x1AC559BA0](v30, locale);
      v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, " -> node_", 11);
      v33 = MEMORY[0x1AC559BA0](v32, v29);
      v34 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, "", 1);
      v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " [ltail=cluster_", 17);
      v36 = MEMORY[0x1AC559BA0](v35, locale);
      v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, ", lhead=cluster_", 18);
      v38 = MEMORY[0x1AC559BA0](v37, v29);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, "", 1);
      CpGraph::GetInputTensors(a1, v29, &v61);
      v39 = v61;
      if (v62 - v61 == 16)
      {
        CpGraph::GetInputTensors(a1, v29, &__p);
        v40 = *(__p + 1) == locale;
        v59 = __p;
        operator delete(__p);
        v39 = v61;
        if (!v61)
        {
          goto LABEL_46;
        }

LABEL_45:
        v62 = v39;
        operator delete(v39);
        goto LABEL_46;
      }

      v40 = 0;
      if (v61)
      {
        goto LABEL_45;
      }

LABEL_46:
      if (v40)
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, ", color=blue", 12);
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "];\n", 3);
LABEL_49:
      ++v27;
    }

    while (v27 != v28);
    v27 = v45;
LABEL_51:
    if (v27)
    {
      v46 = v27;
      operator delete(v27);
    }

    v25 = *v25;
  }

  while (v25);
LABEL_54:
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "\n", 1);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v66, "}", 1);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::str[abi:ne200100](v65, a4);
  v65[0] = *MEMORY[0x1E69E54D8];
  v41 = *(MEMORY[0x1E69E54D8] + 72);
  *(v65 + *(v65[0] - 24)) = *(MEMORY[0x1E69E54D8] + 64);
  v66 = v41;
  v67 = MEMORY[0x1E69E5548] + 16;
  if (v69 < 0)
  {
    operator delete(v68[7].__locale_);
  }

  v67 = MEMORY[0x1E69E5538] + 16;
  std::locale::~locale(v68);
  std::iostream::~basic_iostream();
  return MEMORY[0x1AC559F60](&v70);
}

void sub_1A691E46C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, std::locale a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38, int a39, __int16 a40, char a41, char a42, void *a43, uint64_t a44, int a45, __int16 a46, char a47, char a48, uint64_t a49, char a50)
{
  std::locale::~locale(&a10);
  std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::~basic_stringstream(&a50);
  _Unwind_Resume(a1);
}

uint64_t std::pair<unsigned long long const,CpTransposeUtils::LayerTruthTable>::~pair(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v3 = (a1 + 8);
  std::vector<CpTransposeUtils::LayerConstraint>::__destroy_vector::operator()[abi:ne200100](&v3);
  return a1;
}

void std::vector<CpTransposeUtils::LayerConstraint>::__assign_with_size[abi:ne200100]<CpTransposeUtils::LayerConstraint*,CpTransposeUtils::LayerConstraint*>(char **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) < a4)
  {
    std::vector<CpTransposeUtils::LayerConstraint>::__vdeallocate(a1);
    if (a4 <= 0x38E38E38E38E38ELL)
    {
      v9 = 0x1C71C71C71C71C72 * ((a1[2] - *a1) >> 3);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((a1[2] - *a1) >> 3) >= 0x1C71C71C71C71C7)
      {
        v10 = 0x38E38E38E38E38ELL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<CpTransposeUtils::LayerConstraint>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1] - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 3) >= a4)
  {
    std::__copy_impl::operator()[abi:ne200100]<CpTransposeUtils::LayerConstraint *,CpTransposeUtils::LayerConstraint *,CpTransposeUtils::LayerConstraint *>(&v16, a2, a3, v8);
    v13 = v12;
    v14 = a1[1];
    if (v14 != v12)
    {
      do
      {
        v14 -= 72;
        std::__destroy_at[abi:ne200100]<CpTransposeUtils::LayerConstraint,0>(v14);
      }

      while (v14 != v13);
    }

    a1[1] = v13;
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<CpTransposeUtils::LayerConstraint *,CpTransposeUtils::LayerConstraint *,CpTransposeUtils::LayerConstraint *>(&v15, a2, a2 + v11, v8);
    a1[1] = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<CpTransposeUtils::LayerConstraint>,CpTransposeUtils::LayerConstraint*,CpTransposeUtils::LayerConstraint*,CpTransposeUtils::LayerConstraint*>(a1, a2 + v11, a3, a1[1]);
  }
}

void std::vector<CpTransposeUtils::LayerConstraint>::__vdeallocate(char **a1)
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
        v3 -= 72;
        std::__destroy_at[abi:ne200100]<CpTransposeUtils::LayerConstraint,0>(v3);
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

uint64_t std::__copy_impl::operator()[abi:ne200100]<CpTransposeUtils::LayerConstraint *,CpTransposeUtils::LayerConstraint *,CpTransposeUtils::LayerConstraint *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      if (v5 != a4)
      {
        std::vector<std::pair<unsigned long,CpTransposeUtils::TransposeType>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,CpTransposeUtils::TransposeType>*,std::pair<unsigned long,CpTransposeUtils::TransposeType>*>(a4, *v5, *(v5 + 8), (*(v5 + 8) - *v5) >> 4);
      }

      v7 = *(v5 + 24);
      *(a4 + 40) = *(v5 + 40);
      *(a4 + 24) = v7;
      std::string::operator=((a4 + 48), (v5 + 48));
      v5 += 72;
      a4 += 72;
    }

    while (v5 != a3);
    return a3;
  }

  return v5;
}

char *std::vector<std::pair<unsigned long,CpTransposeUtils::TransposeType>>::__assign_with_size[abi:ne200100]<std::pair<unsigned long,CpTransposeUtils::TransposeType>*,std::pair<unsigned long,CpTransposeUtils::TransposeType>*>(uint64_t *a1, __int128 *a2, __int128 *a3, unint64_t a4)
{
  v5 = a2;
  v7 = a1[2];
  result = *a1;
  if (a4 > (v7 - result) >> 4)
  {
    if (result)
    {
      a1[1] = result;
      operator delete(result);
      v7 = 0;
      *a1 = 0;
      a1[1] = 0;
      a1[2] = 0;
    }

    if (!(a4 >> 60))
    {
      v9 = v7 >> 3;
      if (v7 >> 3 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFF0)
      {
        v10 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<std::pair<unsigned long,CpTransposeUtils::TransposeType>>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  v11 = a1[1];
  if (a4 <= (v11 - result) >> 4)
  {
    while (v5 != a3)
    {
      *result = *v5;
      *(result + 2) = *(v5++ + 2);
      result += 16;
    }

    a1[1] = result;
  }

  else
  {
    v12 = (a2 + v11 - result);
    if (v11 != result)
    {
      do
      {
        *result = *v5;
        *(result + 2) = *(v5++ + 2);
        result += 16;
      }

      while (v5 != v12);
    }

    if (v12 == a3)
    {
      v13 = v11;
    }

    else
    {
      v13 = v11;
      do
      {
        v14 = *v12++;
        *v11 = v14;
        v11 += 16;
        v13 += 16;
      }

      while (v12 != a3);
    }

    a1[1] = v13;
  }

  return result;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::pair<std::string,std::string>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__split_buffer<std::pair<std::string,std::string>>::~__split_buffer(std::__split_buffer<std::pair<std::string, std::string>> *this)
{
  begin = this->__begin_;
  for (i = this->__end_; i != begin; i = this->__end_)
  {
    this->__end_ = i - 1;
    std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(&i[-1]);
  }

  if (this->__first_)
  {
    operator delete(this->__first_);
  }
}

std::string *std::pair<std::string,std::string>::pair[abi:ne200100]<char const(&)[5],std::string&,0>(std::string *a1, char *a2, __int128 *a3)
{
  std::string::basic_string[abi:ne200100]<0>(a1, a2);
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

void sub_1A691EA50(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::pair<std::string,std::string>::pair[abi:ne200100]<std::string,std::string&,0>(uint64_t a1, __int128 *a2, __int128 *a3)
{
  v4 = *a2;
  *(a1 + 16) = *(a2 + 2);
  *a1 = v4;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 24), *a3, *(a3 + 1));
  }

  else
  {
    v5 = *a3;
    *(a1 + 40) = *(a3 + 2);
    *(a1 + 24) = v5;
  }

  return a1;
}

void sub_1A691EAD0(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<std::pair<std::string,std::string>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v4 -= 48;
        std::__destroy_at[abi:ne200100]<std::pair<std::string const,std::string>,0>(v4);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,CpTransposeUtils::LayerTruthTable>,0>((v2 + 2));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,CpTransposeUtils::LayerTruthTable>,0>(uint64_t a1)
{
  if (*(a1 + 55) < 0)
  {
    operator delete(*(a1 + 32));
  }

  v2 = (a1 + 8);
  std::vector<CpTransposeUtils::LayerConstraint>::__destroy_vector::operator()[abi:ne200100](&v2);
}

void **std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>>>::~__hash_table(void **a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>>>::__deallocate_node(a1, a1[2]);
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>>>::__deallocate_node(int a1, void **__p)
{
  if (__p)
  {
    v2 = __p;
    do
    {
      v3 = *v2;
      if (*(v2 + 55) < 0)
      {
        operator delete(v2[4]);
      }

      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,CpTransposeUtils::TensorDimensions>>(void *a1, unint64_t *a2, _OWORD *a3)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::TensorDimensions>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
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

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,CpTransposeUtils::RootTensorConstraint>>(void *a1, unint64_t *a2, uint64_t a3)
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

void *std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::RootTensorConstraint>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
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

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>>>::__emplace_unique_key_args<unsigned long long,std::pair<unsigned long long const,CpTransposeUtils::LayerTruthTable>>(void *a1, unint64_t *a2, uint64_t a3)
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

void sub_1A691F864(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<unsigned long long const,CpTransposeUtils::LayerTruthTable>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
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

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void sub_1A691FB1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<unsigned long long,CpTransposeUtils::LayerTruthTable>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

__int128 *ZinIrHalT0::GetParams(ZinIrHalT0 *this)
{
  *(&v24 + 1) = *MEMORY[0x1E69E9840];
  {
    ZinIrHalT0::GetParams(void)const::ZinIrHalT0Parameters = xmmword_1A75D1F10;
    *algn_1EB29BE30 = xmmword_1A75A2900;
    xmmword_1EB29BE40 = xmmword_1A7595A10;
    unk_1EB29BE50 = xmmword_1A7595A20;
    xmmword_1EB29BE60 = xmmword_1A7595A30;
    unk_1EB29BE70 = xmmword_1A7595A40;
    xmmword_1EB29BE80 = xmmword_1A7595A20;
    unk_1EB29BE90 = vdupq_n_s64(1uLL);
    xmmword_1EB29BEA0 = xmmword_1A75A2910;
    unk_1EB29BEB0 = xmmword_1A75A2920;
    xmmword_1EB29BEC0 = unk_1EB29BE90;
    unk_1EB29BED0 = vdupq_n_s64(4uLL);
    qword_1EB29BEE0 = 1;
    unk_1EB29BEE8 = xmmword_1A75D1F30;
    unk_1EB29BEF8 = unk_1A75D1F40;
    unk_1EB29BF18 = unk_1A75D1F40;
    unk_1EB29BF08 = xmmword_1A75D1F30;
    qword_1EB29BF38 = 4;
    xmmword_1EB29BF28 = xmmword_1A75D1F50;
    xmmword_1EB29BF40 = xmmword_1A75A2930;
    unk_1EB29BF50 = xmmword_1A7595AA0;
    xmmword_1EB29BF60 = xmmword_1A7595AA0;
    unk_1EB29BF70 = unk_1EB29BE90;
    xmmword_1EB29BF80 = xmmword_1A7595AB0;
    unk_1EB29BF90 = xmmword_1A7595AC0;
    xmmword_1EB29BFA0 = xmmword_1A75A2940;
    unk_1EB29BFB0 = vdupq_n_s64(0x10000uLL);
    xmmword_1EB29BFC0 = unk_1EB29BFB0;
    unk_1EB29BFD0 = xmmword_1A75D1F20;
    xmmword_1EB29BFE0 = xmmword_1A7595AE0;
    unk_1EB29BFF0 = xmmword_1A7595AF0;
    xmmword_1EB29C000 = xmmword_1A75A2950;
    unk_1EB29C010 = xmmword_1A75A2960;
    xmmword_1EB29C020 = xmmword_1A7595B20;
    unk_1EB29C030 = xmmword_1A75A2970;
    xmmword_1EB29C040 = xmmword_1A7595B40;
    unk_1EB29C050 = xmmword_1A75C9E30;
    xmmword_1EB29C060 = vdupq_n_s64(2uLL);
    unk_1EB29C070 = xmmword_1A75A2980;
    xmmword_1EB29C080 = xmmword_1A75A2990;
    unk_1EB29C090 = xmmword_1A7595B80;
    qword_1EB29C0B0 = 0;
    xmmword_1EB29C0A0 = 0u;
    qword_1EB29C0B8 = 3221225472;
    xmmword_1EB29C0C0 = 0u;
    word_1EB29C0D0 = 257;
    xmmword_1EB29C0D8 = xmmword_1A7595B90;
    xmmword_1EB29C0E8 = xmmword_1A7595BA0;
    xmmword_1EB29C0F8 = xmmword_1A7595BB0;
    qword_1EB29C108 = 0x10000;
    byte_1EB29C110 = 8;
    dword_1EB29C128 = 520097776;
    qword_1EB29C12C = 0xFFFFFFEB0000000BLL;
    xmmword_1EB29C138 = xmmword_1A75A29A0;
    xmmword_1EB29C148 = xmmword_1A75A29B0;
    xmmword_1EB29C158 = xmmword_1A7595BF0;
    xmmword_1EB29C118 = xmmword_1A7595BC0;
    v23 = vdupq_n_s64(8uLL);
    xmmword_1EB29C168 = 0u;
    qword_1EB29C178 = 0;
    std::vector<std::pair<unsigned long,unsigned long>>::__init_with_size[abi:ne200100]<std::pair<unsigned long,unsigned long> const*,std::pair<unsigned long,unsigned long> const*>(&xmmword_1EB29C168, v23.i8, &v24, 1uLL);
    xmmword_1EB29C180 = xmmword_1A7595C00;
    *algn_1EB29C190 = xmmword_1A7595C10;
    xmmword_1EB29C1A0 = vdupq_n_s64(0x20uLL);
    unk_1EB29C1B0 = xmmword_1A7595A50;
    xmmword_1EB29C1C0 = vdupq_n_s64(8uLL);
    unk_1EB29C1D0 = xmmword_1A7595C20;
    qword_1EB29C1E0 = 1;
    unk_1EB29C1E8 = 0u;
    unk_1EB29C1F8 = 0u;
    unk_1EB29C208 = 0u;
    unk_1EB29C218 = 0u;
    unk_1EB29C228 = 0u;
    unk_1EB29C238 = 0u;
    unk_1EB29C248 = 0u;
    unk_1EB29C258 = xmmword_1A75989F0;
    unk_1EB29C268 = xmmword_1A7595BC0;
    xmmword_1EB29C278 = 0u;
    xmmword_1EB29C288 = 0u;
    qword_1EB29C298 = 12;
    qword_1EB29C2A0 = 0x100000101;
    dword_1EB29C2A8 = 257;
    word_1EB29C2AC = 256;
    *(&xmmword_1EB29C2AE + 13) = 0;
    xmmword_1EB29C2AE = 0u;
    byte_1EB29C2C3 = 1;
    dword_1EB29C2C4 = 0;
    word_1EB29C2C8 = 256;
    word_1EB29C2CE = 0;
    dword_1EB29C2CA = 0;
    dword_1EB29C2D0 = 257;
    byte_1EB29C2D4 = 0;
    xmmword_1EB29C2D8 = xmmword_1A7595CA0;
    xmmword_1EB29C2E8 = xmmword_1A7595CB0;
    qword_1EB29C2F8 = 40;
    xmmword_1EB29C300 = 0u;
    *(&xmmword_1EB29C300 + 13) = 0;
    byte_1EB29C315 = 1;
    dword_1EB29C31E = 0;
    qword_1EB29C316 = 0;
    byte_1EB29C322 = 1;
    xmmword_1EB29C328 = 0u;
    dword_1EB29C338 = 0;
    word_1EB29C33C = 1;
    byte_1EB29C33E = 1;
    qword_1EB29C33F = 0;
    word_1EB29C347 = 0;
    dword_1EB29C349 = 65793;
    word_1EB29C34D = 0;
    byte_1EB29C34F = 1;
    dword_1EB29C350 = 0;
    word_1EB29C354 = 256;
    word_1EB29C35A = 0;
    dword_1EB29C356 = 0;
    dword_1EB29C35C = 256;
    qword_1EB29C368 = -1;
    unk_1EB29C370 = -1;
    qword_1EB29C360 = 128;
    word_1EB29C378 = 0;
    dword_1EB29C37C = 0;
    word_1EB29C380 = 257;
    *(&qword_1EB29C382 + 7) = 0;
    qword_1EB29C382 = 0;
    qword_1EB29C391 = 0x1000100000606;
    word_1EB29C399 = 0;
    std::string::__init(&qword_1EB29C3A0, "None", 4uLL);
    qword_1EB29C3B8 = 0;
    unk_1EB29C3D0 = xmmword_1A7595CC0;
    dword_1EB29C3C4 = 0;
    unk_1EB29C3C8 = 0;
    dword_1EB29C3C0 = 1071225242;
    unk_1EB29C3E0 = vdupq_n_s64(0x40uLL);
    unk_1EB29C3F0 = xmmword_1A7595C00;
    qword_1EB29C400 = 8;
    byte_1EB29C408 = 0;
    unk_1EB29C40C = 1048576000;
    byte_1EB29C414 = 0;
    v20 = 0x200000001;
    v21 = 4;
    qword_1EB29C420 = 0;
    unk_1EB29C428 = 0;
    qword_1EB29C418 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29C418, &v20, &v22, 3uLL);
    v17 = xmmword_1A75D1F68;
    *v18 = unk_1A75D1F78;
    *&v18[12] = unk_1A75D1F84;
    qword_1EB29C438 = 0;
    unk_1EB29C440 = 0;
    qword_1EB29C430 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29C430, &v17, &v19, 0xBuLL);
    v15 = 7;
    v14[0] = xmmword_1A75D1F94;
    v14[1] = unk_1A75D1FA4;
    v14[2] = xmmword_1A75D1FB4;
    qword_1EB29C450 = 0;
    unk_1EB29C458 = 0;
    qword_1EB29C448 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29C448, v14, v16, 0xDuLL);
    v11[0] = xmmword_1A75D1FC8;
    v11[1] = unk_1A75D1FD8;
    *v12 = xmmword_1A75D1FE8;
    *&v12[12] = *(&xmmword_1A75D1FE8 + 12);
    qword_1EB29C468 = 0;
    unk_1EB29C470 = 0;
    qword_1EB29C460 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29C460, v11, &v13, 0xFuLL);
    xmmword_1EB29C480 = 0u;
    qword_1EB29C478 = &xmmword_1EB29C480;
    word_1EB29C490 = 0;
    byte_1EB29C492 = 1;
    *algn_1EB29C493 = 0;
    qword_1EB29C498 = 0;
    *(&qword_1EB29C498 + 7) = 0;
    byte_1EB29C4A7 = 1;
    xmmword_1EB29C4A8 = vdupq_n_s64(0x10000uLL);
    unk_1EB29C4B8 = xmmword_1EB29C4A8;
    qword_1EB29C4C8 = 0x10000;
    unk_1EB29C4D0 = 0u;
    unk_1EB29C4E0 = 0u;
    dword_1EB29C4F0 = 1;
    word_1EB29C4F4 = 1;
    xmmword_1EB29C530 = 0u;
    unk_1EB29C518 = 8;
    unk_1EB29C508 = unk_1A75D2018;
    unk_1EB29C4F8 = xmmword_1A75D2008;
    unk_1EB29C520 = xmmword_1A75A29C0;
    v10 = 0x41C7D78400000000;
    qword_1EB29C540 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&xmmword_1EB29C530, &v10, v11, 1uLL);
    v9 = 0x41C7D78400000000;
    qword_1EB29C550 = 0;
    unk_1EB29C558 = 0;
    qword_1EB29C548 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29C548, &v9, &v10, 1uLL);
    v8 = 0x41C7D78400000000;
    qword_1EB29C568 = 0;
    unk_1EB29C570 = 0;
    qword_1EB29C560 = 0;
    std::vector<double>::__init_with_size[abi:ne200100]<double const*,double const*>(&qword_1EB29C560, &v8, &v9, 1uLL);
    v7 = vdupq_n_s64(0x41C7D78400000000uLL);
    std::map<double,double>::map[abi:ne200100](qword_1EB29C578, v7.i64, 1);
    xmmword_1EB29C590 = xmmword_1A7595D10;
    *v5 = xmmword_1A75D2030;
    *&v5[12] = *(&xmmword_1A75D2030 + 12);
    qword_1EB29C5A8 = 0;
    unk_1EB29C5B0 = 0;
    qword_1EB29C5A0 = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&qword_1EB29C5A0, v5, &v6, 7uLL);
    xmmword_1EB29C5B8 = xmmword_1A7595BC0;
    unk_1EB29C5C8 = xmmword_1A7595AF0;
    qword_1EB29C5D8 = 64;
    dword_1EB29C698 = 0;
    word_1EB29C69C = 0;
    qword_1EB29C6B8 = 0;
    byte_1EB29C6C0 = 0;
    qword_1EB29C6C8 = 0;
    byte_1EB29C6D0 = 0;
    unk_1EB29C5E0 = 0u;
    byte_1EB29C5F0 = 0;
    xmmword_1EB29C5F8 = 0u;
    unk_1EB29C608 = 0u;
    xmmword_1EB29C618 = 0u;
    unk_1EB29C628 = 0u;
    xmmword_1EB29C638 = 0u;
    unk_1EB29C648 = 0u;
    xmmword_1EB29C658 = 0u;
    unk_1EB29C668 = 0u;
    xmmword_1EB29C678 = 0u;
    *(&xmmword_1EB29C678 + 10) = 0u;
    byte_1EB29C6B0 = 0;
    unk_1EB29C6A0 = 0u;
    word_1EB29C6D1 = 257;
    qword_1EB29C6D8 = 0x40000000;
    byte_1EB29C6E0 = 0;
    dword_1EB29C6E4 = 1;
    *v5 = 4;
    v3 = 0;
    v4 = 0;
    __p = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short const*,unsigned short const*>(&__p, v5, &v5[2], 1);
    qword_1EB29C6E8 = 0;
    unk_1EB29C6F0 = 0;
    qword_1EB29C6F8 = 0;
    std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(&qword_1EB29C6E8, __p, v3, (v3 - __p) >> 1);
    word_1EB29C700 = 0;
    if (__p)
    {
      v3 = __p;
      operator delete(__p);
    }

    __cxa_atexit(ZinIrHalParameters::~ZinIrHalParameters, &ZinIrHalT0::GetParams(void)const::ZinIrHalT0Parameters, &dword_1A617D000);
  }

  return &ZinIrHalT0::GetParams(void)const::ZinIrHalT0Parameters;
}

void sub_1A6920398(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (qword_1EB29C5A0)
  {
    qword_1EB29C5A8 = qword_1EB29C5A0;
    operator delete(qword_1EB29C5A0);
  }

  std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(v17, *(v17 + 8));
  if (qword_1EB29C560)
  {
    qword_1EB29C568 = qword_1EB29C560;
    operator delete(qword_1EB29C560);
  }

  if (qword_1EB29C548)
  {
    qword_1EB29C550 = qword_1EB29C548;
    operator delete(qword_1EB29C548);
  }

  if (xmmword_1EB29C530)
  {
    *(&xmmword_1EB29C530 + 1) = xmmword_1EB29C530;
    operator delete(xmmword_1EB29C530);
  }

  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(v16 + 24, *(v16 + 32));
  v19 = *v16;
  if (*v16)
  {
    qword_1EB29C468 = *v16;
    operator delete(v19);
  }

  if (qword_1EB29C448)
  {
    qword_1EB29C450 = qword_1EB29C448;
    operator delete(qword_1EB29C448);
  }

  if (qword_1EB29C430)
  {
    qword_1EB29C438 = qword_1EB29C430;
    operator delete(qword_1EB29C430);
  }

  if (qword_1EB29C418)
  {
    qword_1EB29C420 = qword_1EB29C418;
    operator delete(qword_1EB29C418);
  }

  if (byte_1EB29C3B7 < 0)
  {
    operator delete(qword_1EB29C3A0);
  }

  if (xmmword_1EB29C168)
  {
    *(&xmmword_1EB29C168 + 1) = xmmword_1EB29C168;
    operator delete(xmmword_1EB29C168);
  }

  _Unwind_Resume(a1);
}

void sub_1A69205F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::~__value_func[abi:ne200100](va);
  if (a3)
  {
    MirOpt::DilatedToNonDilatedConvOpt::InitializePatterns(a3);
  }

  _Unwind_Resume(a1);
}

void ZinIrOpt::IdentityDivMulRemover::IdentityDivMulRemover(uint64_t *a1, uint64_t a2)
{
  v14[26] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  std::string::basic_string[abi:ne200100]<0>(v8, "div");
  v9[0] = &unk_1F19F0320;
  v9[3] = v9;
  v4 = 1;
  std::unordered_set<Attribute>::unordered_set(&v10, &v4, 1);
  std::string::basic_string[abi:ne200100]<0>(v11, "mul");
  v12[0] = &unk_1F19F03A0;
  v12[3] = v12;
  v3 = 1;
  std::unordered_set<Attribute>::unordered_set(&v13, &v3, 1);
  memset(v5, 0, sizeof(v5));
  std::vector<ZinLinearPattern::AtomItemDesc>::__init_with_size[abi:ne200100]<ZinLinearPattern::AtomItemDesc const*,ZinLinearPattern::AtomItemDesc const*>(v5, v8, v14, 2uLL);
  v7 = 0;
  ZinLinearPattern::ZinLinearPattern(v14, v5, a2, 0, v6, 0);
  operator new();
}

void sub_1A692088C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void **a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, ...)
{
  va_start(va, a41);
  v43 = v42;
  MEMORY[0x1AC55A070](v43, 0x10F3C407E49AD01, a3, a4, a5, a6, a7, a8);
  ZinLinearPattern::~ZinLinearPattern(va);
  std::__function::__value_func<BOOL ()(ZinIrOpLayerGraph const*,ZinIrParameters const&,ZinPattern const*)>::~__value_func[abi:ne200100](&a14);
  a13 = &a10;
  std::vector<ZinLinearPattern::AtomItemDesc>::__destroy_vector::operator()[abi:ne200100](&a13);
  v45 = &a30;
  v46 = -192;
  do
  {
    ZinLinearPattern::AtomItemDesc::~AtomItemDesc(v45);
    v45 = (v47 - 96);
    v46 += 96;
  }

  while (v46);
  v48 = *v41;
  *v41 = 0;
  if (v48)
  {
    (*(*v48 + 48))(v48);
  }

  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<ZinIrOpt::IdentityDivMulRemover::IdentityDivMulRemover(ZinIrParameters const&)::{lambda(MatchParams const&)#1},std::allocator<ZinIrOpt::IdentityDivMulRemover::IdentityDivMulRemover(ZinIrParameters const&)::{lambda(MatchParams const&)#1}>,MatchStatus ()(MatchParams const&)>::operator()(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(*(v2 + 11) + 8) == 5 && (OutgoingLayers = ZinIrOpLayer::GetOutgoingLayers(v2), OutgoingLayers[1] - *OutgoingLayers <= 8uLL) && *(*(*(a2 + 8) + 88) + 12) == 6)
  {
    LOBYTE(v5) = 1;
    v6 = 1;
  }

  else
  {
    v5 = ZinPatternAtom::NoMatch(1);
    v6 = HIBYTE(v5);
  }

  return v5 | (v6 << 8);
}

uint64_t std::__function::__func<ZinIrOpt::IdentityDivMulRemover::IdentityDivMulRemover(ZinIrParameters const&)::{lambda(MatchParams const&)#1},std::allocator<ZinIrOpt::IdentityDivMulRemover::IdentityDivMulRemover(ZinIrParameters const&)::{lambda(MatchParams const&)#1}>,MatchStatus ()(MatchParams const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<ZinIrOpt::IdentityDivMulRemover::IdentityDivMulRemover(ZinIrParameters const&)::{lambda(MatchParams const&)#2},std::allocator<ZinIrOpt::IdentityDivMulRemover::IdentityDivMulRemover(ZinIrParameters const&)::{lambda(MatchParams const&)#2}>,MatchStatus ()(MatchParams const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t ZinIrOpt::IdentityDivMulRemover::IdentityDivMulRemover(ZinIrParameters const&)::{lambda(MatchParams const&)#2}::operator()(uint64_t a1, uint64_t a2)
{
  MemoryPools = ZinIrContext::GetMemoryPools(*(a2 + 8));
  if (MemoryPools[1] - *MemoryPools != 16)
  {
    goto LABEL_20;
  }

  v4 = MemoryPools;
  v5 = *(*(a2 + 8) + 88);
  v6 = *(v5 + 8);
  if (v6 == 6)
  {
    if (*(v5 + 12) != 1 || *(v5 + 16) != 1.0 || *(v5 + 20) != 1.0 || *(v5 + 24) != 0.0 || (*(v5 + 28) & 1) != 0 || *(v5 + 29) == 1)
    {
      goto LABEL_20;
    }
  }

  else if (v6 != 5 || *(v5 + 12) != 2)
  {
    goto LABEL_20;
  }

  v7 = *(a2 + 24);
  std::string::basic_string[abi:ne200100]<0>(__p, "div");
  ZinPattern::State::GetMatch(v7, __p, &v18);
  if (v19 == v18)
  {
    std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
  }

  v8 = *v18;
  v19 = v18;
  operator delete(v18);
  if (v17 < 0)
  {
    operator delete(__p[0]);
  }

  v9 = ZinIrContext::GetMemoryPools(v8);
  if (v9[1] - *v9 <= 8uLL || (v10 = *v4, (v11 = v4[1] - *v4) == 0))
  {
LABEL_22:
    std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
  }

  v12 = *(*v9 + 8);
  if (v12 != *v10)
  {
    if (v11 > 8)
    {
      if (v12 == v10[1])
      {
        goto LABEL_13;
      }

LABEL_20:
      v14 = ZinPatternAtom::NoMatch(1);
      v13 = HIBYTE(v14);
      return v14 | (v13 << 8);
    }

    goto LABEL_22;
  }

LABEL_13:
  v13 = 0;
  LOBYTE(v14) = 1;
  return v14 | (v13 << 8);
}

void sub_1A6920CE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__function::__func<ZinIrOpt::RemoveIdentityDivMul(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0,std::allocator<ZinIrOpt::RemoveIdentityDivMul(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F19F0420;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<ZinIrOpt::RemoveIdentityDivMul(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0,std::allocator<ZinIrOpt::RemoveIdentityDivMul(ZinIrControlFlowGraph *,ZinIrParameters const&)::$_0>,ZinIrStatus ()(ZinIrOpLayerGraph *,ZinIrOpLayer *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void ZinIrOpt::IdentityDivMulRemover::MatchAndReplace(ZinIrOpt::IdentityDivMulRemover *this, ZinIrOpLayerGraph *a2, ZinIrOpLayer *a3)
{
  if ((*(**this + 8))(*this))
  {

    ZinIrOpt::IdentityDivMulRemover::Replace(this, a2, a3);
  }
}

void ZinIrOpt::IdentityDivMulRemover::Replace(ZinIrOpt::IdentityDivMulRemover *this, ZinIrOpLayerGraph *a2, ZinIrOpLayer *a3)
{
  v44[1] = *MEMORY[0x1E69E9840];
  if (*(a3 + 71) >= 0)
  {
    v6 = *(a3 + 71);
  }

  else
  {
    v6 = *(a3 + 7);
  }

  v7 = v43;
  std::string::basic_string[abi:ne200100](v43, v6 + 24);
  if ((v43[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v43[0].__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a3 + 71) >= 0)
    {
      v8 = a3 + 48;
    }

    else
    {
      v8 = *(a3 + 6);
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, "_remove_identity_div_mul");
  ZinObjectNameFactory::ZinObjectNameFactory(v41, v43);
  if (SHIBYTE(v43[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43[0].__r_.__value_.__l.__data_);
  }

  v9 = *this;
  std::string::basic_string[abi:ne200100]<0>(v43, "div");
  SingleMatch = ZinPattern::GetSingleMatch(v9, v43);
  if (SHIBYTE(v43[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43[0].__r_.__value_.__l.__data_);
  }

  v11 = *this;
  std::string::basic_string[abi:ne200100]<0>(v43, "mul");
  v12 = ZinPattern::GetSingleMatch(v11, v43);
  if (SHIBYTE(v43[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v43[0].__r_.__value_.__l.__data_);
  }

  MemoryPools = ZinIrContext::GetMemoryPools(SingleMatch);
  v14 = *MemoryPools;
  if (*(MemoryPools + 8) == *MemoryPools)
  {
    std::vector<std::vector<ZinPerfUtil::TaskStats>>::__throw_out_of_range[abi:ne200100]();
  }

  v15 = *v14;
  v16 = (*(**v14 + 40))(*v14, 0);
  v17 = (*(*v12 + 40))(v12, 0);
  if (ZinTensorDimensions::operator!=((v16 + 64), (v17 + 64)))
  {
    *&v43[0].__r_.__value_.__l.__data_ = xmmword_1A75D22CC;
    LODWORD(v43[0].__r_.__value_.__r.__words[2]) = 4;
    v39 = 0;
    v40 = 0;
    __p = 0;
    std::vector<ZinIrPaddingMode>::__init_with_size[abi:ne200100]<ZinIrPaddingMode const*,ZinIrPaddingMode const*>(&__p, v43, &v43[0].__r_.__value_.__r.__words[2] + 1, 5uLL);
    memset(v36, 0, sizeof(v36));
    v37 = 1065353216;
    v18 = __p;
    v19 = v39;
    while (v18 != v19)
    {
      Dimension = ZinTensorPosition::GetDimension(v16 + 64, *v18);
      v21 = ZinTensorPosition::GetDimension(v17 + 64, *v18);
      if (Dimension != v21)
      {
        if (Dimension != 1)
        {
          ZinAssertImpl("Error: invalid dimension size for broadcast. Input size = %zd, output size = %zd", Dimension, v21);
        }

        LODWORD(v43[0].__r_.__value_.__l.__data_) = *v18;
        v43[0].__r_.__value_.__l.__size_ = v21;
        std::__hash_table<std::__hash_value_type<ZinIrDimension,unsigned long>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,unsigned long>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,unsigned long>>>::__emplace_unique_key_args<ZinIrDimension,std::pair<ZinIrDimension const,unsigned long> const&>(v36, v43, v43);
      }

      ++v18;
    }

    v22 = *((*(*v12 + 40))(v12, 0) + 104);
    v23 = *(a3 + 4);
    (*(*v15 + 88))(v43, v15, 0);
    memset(v35, 0, 24);
    std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v35, v43, v44, 1uLL);
    ZinBuilder::CreateBroadcast(v23, v41, v35, v36, v22);
  }

  memset(v33, 0, sizeof(v33));
  v34 = 1065353216;
  v24 = ZinIrOpLayerGraph::MoveOutgoingEdges(a2, v12, v15, v33, 0, 0);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v33);
  v31.n128_u64[0] = v12;
  v32 = 0;
  v25 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v31);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v31, v25);
  v26 = ZinIrOpLayerGraph::RemoveNode(a2, &v31, 0);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v31);
  v29.n128_u64[0] = SingleMatch;
  v30 = 0;
  v27 = RawOrShared<ZinIrOpLayer>::unwrap_ptr(&v29);
  RawOrShared<ZinIrOpLayer>::update_this_if_shared(&v29, v27);
  v28 = v24 & v26 & ZinIrOpLayerGraph::RemoveNode(a2, &v29, 0);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v29);
  if ((v28 & 1) == 0)
  {
    ZinAssertImpl("Error: graph manipulation failed when removing identity div-mul");
  }

  v41[0] = &unk_1F19D0088;
  if (v42 < 0)
  {
    operator delete(v41[1]);
  }
}

void sub_1A69213FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, void *__p, uint64_t a37, uint64_t a38, void *a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45, uint64_t a46, uint64_t a47)
{
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a31);
  if (__p)
  {
    a37 = __p;
    operator delete(__p);
  }

  a39 = &unk_1F19D0088;
  if (a45 < 0)
  {
    operator delete(a40);
  }

  _Unwind_Resume(a1);
}

ZinPadLayerUtils::PadDecomposedDesc *ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(ZinPadLayerUtils::PadDecomposedDesc *this, ZinIrConcatUnitInfo *a2)
{
  *(this + 21) = xmmword_1A75B05C0;
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A34078;
  v6 = *(a2 + 20);
  *(this + 84) = *(a2 + 84);
  *(this + 20) = v6;
  return this;
}

void sub_1A6921630(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*(v1 + 8));
  }

  _Unwind_Resume(exception_object);
}

ZinPadLayerUtils::PadDecomposedDesc *ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(ZinPadLayerUtils::PadDecomposedDesc *this, ZinIrInputViewUnitInfo *a2)
{
  *(this + 21) = xmmword_1A75D2340;
  *this = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    v4 = *(a2 + 8);
    *(this + 3) = *(a2 + 3);
    *(this + 8) = v4;
  }

  v5 = *(a2 + 8);
  *(this + 5) = 0;
  *(this + 8) = v5;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
  *(this + 4) = *(a2 + 4);
  *this = &unk_1F1A33F90;
  *(this + 5) = *(a2 + 5);
  std::__optional_copy_base<ZinIrDynamicInputViewData,false>::__optional_copy_base[abi:ne200100](this + 4, a2 + 96);
  return this;
}

void ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(ZinPadLayerUtils::PadDecomposedDesc *this)
{
  v2 = *(this + 87);
  if (v2 > 16)
  {
    if (v2 == 17)
    {
      *this = &unk_1F1A33F90;
      if (*(this + 152) != 1)
      {
        goto LABEL_19;
      }

      if (*(this + 143) < 0)
      {
        operator delete(*(this + 15));
      }

      if ((*(this + 119) & 0x80000000) == 0)
      {
        goto LABEL_19;
      }

      v3 = *(this + 12);
    }

    else
    {
      if (v2 != 21)
      {
        return;
      }

      *this = &unk_1F1A33FB0;
      v3 = *(this + 10);
      if (!v3)
      {
        goto LABEL_19;
      }

      *(this + 11) = v3;
    }

LABEL_18:
    operator delete(v3);
    goto LABEL_19;
  }

  if (v2 == 1)
  {
    *this = &unk_1F1A2EAA0;
    v4 = *(this + 19);
    if (v4)
    {
      *(this + 20) = v4;
      operator delete(v4);
    }

    v3 = *(this + 16);
    if (!v3)
    {
      goto LABEL_19;
    }

    *(this + 17) = v3;
    goto LABEL_18;
  }

  if (v2 == 3)
  {
LABEL_19:
    ZinIrUnitInfo::~ZinIrUnitInfo(this);
  }
}

ZinPadLayerUtils::PadDecomposedDesc *ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(ZinPadLayerUtils::PadDecomposedDesc *this, const ZinPadLayerUtils::PadDecomposedDesc *a2)
{
  *(this + 42) = 0;
  *(this + 86) = 0;
  v4 = *(a2 + 87);
  *(this + 87) = v4;
  if (v4 > 16)
  {
    if (v4 == 17)
    {
      *this = &unk_1F1A2EA30;
      if (*(a2 + 31) < 0)
      {
        std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
      }

      else
      {
        v7 = *(a2 + 8);
        *(this + 3) = *(a2 + 3);
        *(this + 8) = v7;
      }

      v10 = *(a2 + 8);
      *(this + 5) = 0;
      *(this + 8) = v10;
      *(this + 6) = 0;
      *(this + 7) = 0;
      std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
      *(this + 4) = *(a2 + 4);
      *this = &unk_1F1A33F90;
      *(this + 5) = *(a2 + 5);
      std::__optional_copy_base<ZinIrDynamicInputViewData,false>::__optional_copy_base[abi:ne200100](this + 4, a2 + 96);
    }

    else if (v4 == 21)
    {
      ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(this, a2);
    }
  }

  else if (v4 == 1)
  {
    ZinIrConvUnitInfo::ZinIrConvUnitInfo(this, a2);
    v6 = *(a2 + 42);
    *(this + 86) = *(a2 + 86);
    *(this + 42) = v6;
  }

  else if (v4 == 3)
  {
    *this = &unk_1F1A2EA30;
    if (*(a2 + 31) < 0)
    {
      std::string::__init_copy_ctor_external((this + 8), *(a2 + 1), *(a2 + 2));
    }

    else
    {
      v5 = *(a2 + 8);
      *(this + 3) = *(a2 + 3);
      *(this + 8) = v5;
    }

    v8 = *(a2 + 8);
    *(this + 5) = 0;
    *(this + 8) = v8;
    *(this + 6) = 0;
    *(this + 7) = 0;
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(this + 5, *(a2 + 5), *(a2 + 6), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 6) - *(a2 + 5)) >> 3));
    *(this + 4) = *(a2 + 4);
    *this = &unk_1F1A34078;
    v9 = *(a2 + 20);
    *(this + 84) = *(a2 + 84);
    *(this + 20) = v9;
  }

  return this;
}

BOOL ZinPadLayerUtils::IsReflectivePad(uint64_t a1)
{
  v2 = *(a1 + 200);
  v1 = *(a1 + 208);
  if (v2 == v1)
  {
    return 1;
  }

  v3 = v2 + 8;
  do
  {
    v4 = *(v3 - 4);
    result = v4 == 6;
    v6 = v4 != 6 || v3 == v1;
    v3 += 8;
  }

  while (!v6);
  return result;
}

uint64_t ZinPadLayerUtils::DecomposeReflectivePad(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, int a5, uint64_t a6)
{
  v88 = *MEMORY[0x1E69E9840];
  for (i = *(a2 + 200); i != *(a2 + 208); i += 8)
  {
    if (*(i + 4) != 6)
    {
      return 0;
    }
  }

  if (*(a2 + 172))
  {
    return 0;
  }

  v11 = *(a2 + 164);
  if (v11 >= 1)
  {
    v12 = 0;
    do
    {
      v67 = 0uLL;
      v69 = 0;
      v68 = 0;
      v70 = 0u;
      *v71 = 0u;
      *&v71[16] = -1;
      v66 = &unk_1F1A33F90;
      LOBYTE(v73) = 0;
      v77 = 0;
      ++v12;
      HIDWORD(v72) = 3;
      LODWORD(v72) = v12;
      *(&v72 + 4) = 0x100000001;
      ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(__src, &v66);
      std::vector<ZinPadLayerUtils::PadDecomposedDesc>::push_back[abi:ne200100](a3, __src);
      ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(__src);
      v13 = *(a1 + 16);
      *__src = *a1;
      *&__src[16] = v13;
      v79 = *(a1 + 32);
      *&__src[16] = 1;
      std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a4, __src);
      v66 = &unk_1F1A33F90;
      if (v77 == 1)
      {
        if (v76 < 0)
        {
          operator delete(__p);
        }

        if (v74 < 0)
        {
          operator delete(v73);
        }
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v66);
      v11 = *(a2 + 164);
    }

    while (v12 < v11);
  }

  v14 = *(a2 + 168);
  if (v14 >= 1)
  {
    v15 = 0;
    v16 = -2;
    do
    {
      v67 = 0uLL;
      v69 = 0;
      v68 = 0;
      v70 = 0u;
      *v71 = 0u;
      *&v71[16] = -1;
      v66 = &unk_1F1A33F90;
      LOBYTE(v73) = 0;
      v77 = 0;
      v17 = v16 + *(a1 + 16);
      HIDWORD(v72) = 3;
      LODWORD(v72) = v17;
      *(&v72 + 4) = 0x100000001;
      ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(__src, &v66);
      std::vector<ZinPadLayerUtils::PadDecomposedDesc>::push_back[abi:ne200100](a3, __src);
      ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(__src);
      v18 = *(a1 + 16);
      *__src = *a1;
      *&__src[16] = v18;
      v79 = *(a1 + 32);
      *&__src[16] = 1;
      std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a4, __src);
      v66 = &unk_1F1A33F90;
      if (v77 == 1)
      {
        if (v76 < 0)
        {
          operator delete(__p);
        }

        if (v74 < 0)
        {
          operator delete(v73);
        }
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v66);
      ++v15;
      v14 = *(a2 + 168);
      --v16;
    }

    while (v15 < v14);
    v11 = *(a2 + 164);
  }

  if (v11 >= 1)
  {
    for (j = 0; j < v11; ++j)
    {
      v67 = 0uLL;
      v68 = 0;
      v70 = 0u;
      *v71 = 0u;
      *&v71[16] = -1;
      v66 = &unk_1F1A34078;
      BYTE4(v72) = 0;
      v69 = 3;
      LODWORD(v72) = 3;
      ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(__src, &v66);
      std::vector<ZinPadLayerUtils::PadDecomposedDesc>::push_back[abi:ne200100](a3, __src);
      ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(__src);
      v20 = a4[1];
      v21 = *(v20 - 8);
      v22 = *(v20 - 24);
      *__src = *(v20 - 40);
      *&__src[16] = v22;
      v79 = v21;
      if (!j)
      {
        v23 = *(a1 + 16);
        *__src = *a1;
        *&__src[16] = v23;
        v79 = *(a1 + 32);
      }

      ++*&__src[16];
      std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a4, __src);
      ZinIrUnitInfo::~ZinIrUnitInfo(&v66);
      v11 = *(a2 + 164);
    }

    v14 = *(a2 + 168);
  }

  if (v14 >= 1)
  {
    for (k = 0; k < v14; ++k)
    {
      v67 = 0uLL;
      v68 = 0;
      v70 = 0u;
      *v71 = 0u;
      *&v71[16] = -1;
      v66 = &unk_1F1A34078;
      BYTE4(v72) = 0;
      v69 = 3;
      LODWORD(v72) = 3;
      ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(__src, &v66);
      std::vector<ZinPadLayerUtils::PadDecomposedDesc>::push_back[abi:ne200100](a3, __src);
      ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(__src);
      v25 = a4[1];
      v26 = *(v25 - 8);
      v27 = *(v25 - 24);
      *__src = *(v25 - 40);
      *&__src[24] = *(&v27 + 1);
      v79 = v26;
      *&__src[16] = v27 + 1;
      std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a4, __src);
      ZinIrUnitInfo::~ZinIrUnitInfo(&v66);
      v14 = *(a2 + 168);
    }

    v11 = *(a2 + 164);
  }

  v28 = *(a1 + 8);
  v29 = *(a1 + 16);
  v65 = 0;
  if (ZinTensorFormatGetSizeInBytes(a5, &v65))
  {
    ZinAssertImpl("Error: Cannot retrieve tensor format during decompose reflecting pad lowering.");
  }

  v62 = 0;
  v63 = 0;
  v64 = 0;
  v59 = 0;
  v60 = 0;
  v61 = 0;
  if ((ceilf((v65 * v28) / *(a6 + 560)) * *(a6 + 560)) >= (ceilf((v65 * (v29 + v14 + v11)) / *(a6 + 560)) * *(a6 + 560)))
  {
    *&__src[16] = 0x400000003;
    *__src = xmmword_1A75D2360;
    std::vector<DimensionMapping>::__assign_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v62, __src, &__src[24], 3uLL);
    *__src = xmmword_1A75D2378;
    *&__src[16] = 0x300000004;
    std::vector<DimensionMapping>::__assign_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v59, __src, &__src[24], 3uLL);
  }

  else
  {
    *__src = xmmword_1A7597D10;
    std::vector<DimensionMapping>::__assign_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v59, __src, &__src[16], 2uLL);
    std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(&v62, v59, v60, (v60 - v59) >> 3);
  }

  ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v66, &v62, a5);
  v87 = xmmword_1A75D2350;
  *__src = &unk_1F1A2EA30;
  if (SHIBYTE(v68) < 0)
  {
    std::string::__init_copy_ctor_external(&__src[8], v67, *(&v67 + 1));
  }

  else
  {
    *&__src[8] = v67;
    *&__src[24] = v68;
  }

  LODWORD(v79) = v69;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v80, v70, SDWORD2(v70), 0xAAAAAAAAAAAAAAABLL * ((*(&v70 + 1) - v70) >> 3));
  v83 = *&v71[8];
  *__src = &unk_1F1A33FB0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v84, v72, *(&v72 + 1), (*(&v72 + 1) - v72) >> 3);
  std::vector<ZinPadLayerUtils::PadDecomposedDesc>::push_back[abi:ne200100](a3, __src);
  ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(__src);
  v31 = a4[1];
  if (v31 == *a4)
  {
    v32 = a1;
  }

  else
  {
    v32 = v31 - 40;
  }

  v33 = *(v32 + 32);
  v34 = *(v32 + 16);
  *__src = *v32;
  *&__src[16] = v34;
  *&__src[24] = *&__src[8];
  v79 = v33;
  *&__src[8] = *(&v34 + 1);
  std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a4, __src);
  v66 = &unk_1F1A33FB0;
  if (v72)
  {
    *(&v72 + 1) = v72;
    operator delete(v72);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v66);
  v35 = a4[1];
  v36 = *(v35 - 40);
  v56 = *(v35 - 32);
  v57 = *(v35 - 24);
  v58 = *(v35 - 8);
  v37 = *(a2 + 156);
  if (v37 >= 1)
  {
    v38 = 0;
    do
    {
      v67 = 0uLL;
      v69 = 0;
      v68 = 0;
      v70 = 0u;
      *v71 = 0u;
      *&v71[16] = -1;
      v66 = &unk_1F1A33F90;
      LOBYTE(v73) = 0;
      v77 = 0;
      ++v38;
      HIDWORD(v72) = 2;
      LODWORD(v72) = v38;
      *(&v72 + 4) = 0x100000001;
      ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(__src, &v66);
      std::vector<ZinPadLayerUtils::PadDecomposedDesc>::push_back[abi:ne200100](a3, __src);
      ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(__src);
      *&__src[16] = v57;
      v79 = v58;
      *__src = v36;
      *&__src[8] = 1;
      std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a4, __src);
      v66 = &unk_1F1A33F90;
      if (v77 == 1)
      {
        if (v76 < 0)
        {
          operator delete(__p);
        }

        if (v74 < 0)
        {
          operator delete(v73);
        }
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v66);
      v37 = *(a2 + 156);
    }

    while (v38 < v37);
  }

  v39 = *(a2 + 160);
  if (v39 >= 1)
  {
    v40 = 0;
    v41 = v56 - 2;
    do
    {
      v67 = 0uLL;
      v69 = 0;
      v68 = 0;
      v70 = 0u;
      *v71 = 0u;
      *&v71[16] = -1;
      v66 = &unk_1F1A33F90;
      LOBYTE(v73) = 0;
      v77 = 0;
      HIDWORD(v72) = 2;
      LODWORD(v72) = v41;
      *(&v72 + 4) = 0x100000001;
      ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(__src, &v66);
      std::vector<ZinPadLayerUtils::PadDecomposedDesc>::push_back[abi:ne200100](a3, __src);
      ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(__src);
      *&__src[16] = v57;
      v79 = v58;
      *__src = v36;
      *&__src[8] = 1;
      std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a4, __src);
      v66 = &unk_1F1A33F90;
      if (v77 == 1)
      {
        if (v76 < 0)
        {
          operator delete(__p);
        }

        if (v74 < 0)
        {
          operator delete(v73);
        }
      }

      ZinIrUnitInfo::~ZinIrUnitInfo(&v66);
      ++v40;
      v39 = *(a2 + 160);
      --v41;
    }

    while (v40 < v39);
    v37 = *(a2 + 156);
  }

  if (v37 >= 1)
  {
    v42 = 0;
    do
    {
      v67 = 0uLL;
      v68 = 0;
      v70 = 0u;
      *v71 = 0u;
      *&v71[16] = -1;
      v66 = &unk_1F1A34078;
      BYTE4(v72) = 0;
      v69 = 3;
      LODWORD(v72) = 2;
      ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(__src, &v66);
      std::vector<ZinPadLayerUtils::PadDecomposedDesc>::push_back[abi:ne200100](a3, __src);
      ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(__src);
      v43 = a4[1];
      v44 = *(v43 - 8);
      v45 = *(v43 - 24);
      *__src = *(v43 - 40);
      *&__src[16] = v45;
      v79 = v44;
      if (v42)
      {
        v46 = *&__src[8];
      }

      else
      {
        *__src = v36;
        *&__src[16] = v57;
        v79 = v58;
        v46 = v56;
      }

      *&__src[8] = v46 + 1;
      std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a4, __src);
      ZinIrUnitInfo::~ZinIrUnitInfo(&v66);
      ++v42;
    }

    while (v42 < *(a2 + 156));
    v39 = *(a2 + 160);
  }

  if (v39 >= 1)
  {
    v47 = 0;
    do
    {
      v67 = 0uLL;
      v68 = 0;
      v70 = 0u;
      *v71 = 0u;
      *&v71[16] = -1;
      v66 = &unk_1F1A34078;
      BYTE4(v72) = 0;
      v69 = 3;
      LODWORD(v72) = 2;
      ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(__src, &v66);
      std::vector<ZinPadLayerUtils::PadDecomposedDesc>::push_back[abi:ne200100](a3, __src);
      ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(__src);
      v48 = a4[1];
      v49 = *(v48 - 8);
      v50 = *(v48 - 24);
      *__src = *(v48 - 40);
      *&__src[16] = v50;
      v79 = v49;
      ++*&__src[8];
      std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a4, __src);
      ZinIrUnitInfo::~ZinIrUnitInfo(&v66);
      ++v47;
    }

    while (v47 < *(a2 + 160));
  }

  ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(&v66, &v59, a5);
  v87 = xmmword_1A75D2350;
  *__src = &unk_1F1A2EA30;
  if (SHIBYTE(v68) < 0)
  {
    std::string::__init_copy_ctor_external(&__src[8], v67, *(&v67 + 1));
  }

  else
  {
    *&__src[8] = v67;
    *&__src[24] = v68;
  }

  LODWORD(v79) = v69;
  v81 = 0;
  v82 = 0;
  v80 = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(&v80, v70, SDWORD2(v70), 0xAAAAAAAAAAAAAAABLL * ((*(&v70 + 1) - v70) >> 3));
  v83 = *&v71[8];
  *__src = &unk_1F1A33FB0;
  v84 = 0;
  v85 = 0;
  v86 = 0;
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(&v84, v72, *(&v72 + 1), (*(&v72 + 1) - v72) >> 3);
  std::vector<ZinPadLayerUtils::PadDecomposedDesc>::push_back[abi:ne200100](a3, __src);
  ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(__src);
  v51 = a4[1];
  v52 = *(v51 - 8);
  v53 = *(v51 - 24);
  *__src = *(v51 - 40);
  *&__src[16] = v53;
  *&__src[24] = *&__src[8];
  v79 = v52;
  *&__src[8] = *(&v53 + 1);
  std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a4, __src);
  v66 = &unk_1F1A33FB0;
  if (v72)
  {
    *(&v72 + 1) = v72;
    operator delete(v72);
  }

  ZinIrUnitInfo::~ZinIrUnitInfo(&v66);
  if (v59)
  {
    v60 = v59;
    operator delete(v59);
  }

  if (v62)
  {
    v63 = v62;
    operator delete(v62);
  }

  return 1;
}

void sub_1A6922728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  ZinIrTransposeUnitInfo::~ZinIrTransposeUnitInfo(&a23);
  if (__p)
  {
    operator delete(__p);
  }

  if (a19)
  {
    operator delete(a19);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<ZinPadLayerUtils::PadDecomposedDesc>::push_back[abi:ne200100](uint64_t a1, const ZinPadLayerUtils::PadDecomposedDesc *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<ZinPadLayerUtils::PadDecomposedDesc>::__emplace_back_slow_path<ZinPadLayerUtils::PadDecomposedDesc>(a1, a2);
  }

  else
  {
    ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(*(a1 + 8), a2);
    result = v3 + 352;
    *(a1 + 8) = v3 + 352;
  }

  *(a1 + 8) = result;
  return result;
}

uint64_t ZinPadLayerUtils::DecomposePad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, int a6)
{
  v171 = *MEMORY[0x1E69E9840];
  v10 = *a4;
    ;
  }

  a4[1] = v10;
  a5[1] = *a5;
  std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a5, a1);
  v12 = *(a2 + 200);
  v13 = *(a2 + 208);
  if (v12 != v13)
  {
    v14 = *(a2 + 200);
    do
    {
      if (*(v14 + 4) == 2)
      {
        ZinAssertImpl("Error: decomposition failed. Negative padding mode is not supported");
      }

      v14 += 8;
    }

    while (v14 != v13);
  }

  v15 = *(a3 + 1528);
  v16 = *(a3 + 1536);
  v17 = v15;
  if (v15 != v16)
  {
    v17 = *(a3 + 1528);
    while (*v17 != 9)
    {
      if (++v17 == v16)
      {
        v18 = 0;
        goto LABEL_22;
      }
    }
  }

  v20 = a6 == 12 || (a6 - 1) < 2;
  v18 = v17 != v16 && v20;
LABEL_22:
  v21 = *(a3 + 1997);
  if (v12 != v13)
  {
    v22 = *(a2 + 200);
    while (*(v22 + 4) != 5)
    {
      v22 += 8;
      if (v22 == v13)
      {
        goto LABEL_26;
      }
    }

    if ((*(a3 + 1997) & 1) == 0)
    {
      ZinAssertImpl("Error: decomposition failed. Symmetric padding mode is not supported");
    }

    return 1;
  }

LABEL_26:
  if (v15 != v16)
  {
    while (*v15 != 3)
    {
      if (++v15 == v16)
      {
        goto LABEL_31;
      }
    }
  }

  if (v15 == v16)
  {
LABEL_31:
    if (v12 != v13)
    {
      v23 = *(a2 + 200);
      while (*(v23 + 4) != 3)
      {
        v23 += 8;
        if (v23 == v13)
        {
          goto LABEL_35;
        }
      }

      if ((*(a3 + 1997) & 1) == 0)
      {
        ZinAssertImpl("Error: decomposition failed. Replication padding mode is not supported");
      }

      return 1;
    }
  }

  else
  {
LABEL_35:
    if (v12 != v13)
    {
      LOWORD(_D0) = *(a2 + 224);
      v24 = *(a2 + 200);
      while (1)
      {
        if (*(v24 + 4) == 7)
        {
          __asm { FCMP            H0, #0 }

          if (!_ZF)
          {
            break;
          }
        }

        v24 += 8;
        if (v24 == v13)
        {
          goto LABEL_46;
        }
      }

      if (!v18)
      {
        if ((*(a3 + 1997) & 1) == 0)
        {
          ZinAssertImpl("Error: decomposition failed. Do not support background padding mode with non-zero value since constant padding mode is not supported", _D0);
        }

        return 1;
      }

LABEL_46:
      v27 = *(v12 + 4);
      v28 = *(a2 + 200);
      while (*(v28 + 4) == v27)
      {
        v28 += 8;
        if (v28 == v13)
        {
          goto LABEL_49;
        }
      }

      if ((*(a3 + 1997) & 1) == 0)
      {
        ZinAssertImpl("Error: decomposition failed. Do not support multiple padding modes at different axes", _D0);
      }

      return 1;
    }
  }

  v27 = *(v12 + 4);
LABEL_49:
  __asm { FCMP            H0, #0 }

  if (_ZF)
  {
    v30 = 1;
  }

  else
  {
    v30 = 9;
  }

  if (v27 == 7)
  {
    v27 = v30;
  }

  v112 = v27;
  v113 = a6;
  if (a6 == 3)
  {
    v31 = *(a3 + 128);
  }

  else
  {
    v31 = GetMaxLogicalKernelWidthForLargeKernelMode(a3, a6) - 1;
    v12 = *(a2 + 200);
    v13 = *(a2 + 208);
  }

  if (v31 >= *(a3 + 136))
  {
    v32 = *(a3 + 136);
  }

  else
  {
    v32 = v31;
  }

  if (*(a3 + 104) - 1 >= *(a3 + 144))
  {
    v33 = *(a3 + 144);
  }

  else
  {
    v33 = *(a3 + 104) - 1;
  }

  if (*(a3 + 120) - 1 >= *(a3 + 152))
  {
    v34 = *(a3 + 152);
  }

  else
  {
    v34 = *(a3 + 120) - 1;
  }

  if (v12 != v13)
  {
    while (*(v12 + 4) == 6)
    {
      v12 += 8;
      if (v12 == v13)
      {
        goto LABEL_69;
      }
    }

    v167 = *(a2 + 156);
    v168 = *(a2 + 172);
    v166 = 0;
    __p = 0uLL;
    std::vector<ZinSpaceRange>::__init_with_size[abi:ne200100]<ZinSpaceRange const*,ZinSpaceRange const*>(&__p, &v167, v169, 1uLL);
    v36 = *(a2 + 156);
    v37 = *(a2 + 160);
    v38 = *(a2 + 164);
    v39 = *(a2 + 168);
    _ZF = v36 == v37 && v38 == v39;
    v111 = a2;
    if (_ZF && (v39 = *(a2 + 164), *(a2 + 172) == *(a2 + 176)))
    {
      v41 = __p;
    }

    else
    {
      v41 = __p;
      if (v37 + v36 > v32 || v39 + v38 > v33 || *(a2 + 176) + *(a2 + 172) > v34)
      {
        *(&__p + 1) = __p;
        v167 = *(a2 + 156);
        v168 = *(a2 + 172);
        *&v163 = 0;
        v162 = 0uLL;
        v110 = v21;
        if (v113 == 3)
        {
          v42 = *(a3 + 128);
        }

        else
        {
          v42 = GetMaxLogicalKernelWidthForLargeKernelMode(a3, v113) - 1;
        }

        if (v42 >= *(a3 + 136))
        {
          v43 = *(a3 + 136);
        }

        else
        {
          v43 = v42;
        }

        if (*(a3 + 104) - 1 >= *(a3 + 144))
        {
          v44 = *(a3 + 144);
        }

        else
        {
          v44 = *(a3 + 104) - 1;
        }

        if (*(a3 + 120) - 1 >= *(a3 + 152))
        {
          v45 = *(a3 + 152);
        }

        else
        {
          v45 = *(a3 + 120) - 1;
        }

        v46 = v167;
        v47 = DWORD1(v167);
        v48 = DWORD1(v167) + v167;
        v49 = DWORD2(v167);
        v50 = HIDWORD(v167);
        v51 = HIDWORD(v167) + DWORD2(v167);
        v52 = v168;
        v53 = HIDWORD(v168);
        for (j = HIDWORD(v168) + v168; v46 != v47 || v48 > v43 || v49 != v50 || v51 > v44 || v52 != v53 || j > v45; j = v53 + v52)
        {
          *(&v120 + 1) = 0;
          v121[0] = 0;
          if (v46 >= v47)
          {
            if (v47 >= v43)
            {
              v56 = v43;
            }

            else
            {
              v56 = v47;
            }

            v55 = (v43 - v56) & ~((v43 - v56) >> 31);
            if (v55 >= v46)
            {
              v55 = v46;
            }
          }

          else
          {
            if (v46 >= v43)
            {
              v55 = v43;
            }

            else
            {
              v55 = v46;
            }

            v56 = (v43 - v55) & ~((v43 - v55) >> 31);
            if (v56 >= v47)
            {
              v56 = v47;
            }
          }

          if (v49 >= v50)
          {
            v57 = v50;
          }

          else
          {
            v57 = v49;
          }

          v58 = 12;
          if (v49 >= v50)
          {
            v59 = 12;
          }

          else
          {
            v59 = 8;
          }

          if (v49 < v50)
          {
            v60 = v50;
          }

          else
          {
            v60 = v49;
          }

          if (v49 >= v50)
          {
            v58 = 8;
          }

          if (v57 >= v44)
          {
            v57 = v44;
          }

          *(&v121[-2] + v59) = v57;
          v61 = (v44 - v57) & ~((v44 - v57) >> 31);
          if (v61 >= v60)
          {
            v61 = v60;
          }

          *(&v121[-2] + v58) = v61;
          *&v120 = __PAIR64__(v56, v55);
          v62 = v52;
          v63 = v121;
          v64 = v53;
          v65 = v121 + 1;
          if (v52 >= v53)
          {
            v62 = v53;
            v63 = v121 + 1;
            v64 = v52;
            v65 = v121;
          }

          if (v62 >= v45)
          {
            v62 = v45;
          }

          *v63 = v62;
          v66 = (v45 - v62) & ~((v45 - v62) >> 31);
          if (v66 < v64)
          {
            v64 = v66;
          }

          *v65 = v64;
          std::vector<SplitPlanConfig>::push_back[abi:ne200100](&v162, &v120);
          v46 -= v120;
          v47 -= DWORD1(v120);
          *&v167 = __PAIR64__(v47, v46);
          v49 -= DWORD2(v120);
          v50 -= HIDWORD(v120);
          *(&v167 + 1) = __PAIR64__(v50, v49);
          v52 -= LODWORD(v121[0]);
          v53 -= HIDWORD(v121[0]);
          v168 = __PAIR64__(v53, v52);
          v48 = v47 + v46;
          v51 = v50 + v49;
        }

        std::vector<SplitPlanConfig>::push_back[abi:ne200100](&v162, &v167);
        v21 = v110;
        if (__p)
        {
          *(&__p + 1) = __p;
          operator delete(__p);
        }

        __p = v162;
        v166 = v163;
        v41 = v162;
      }
    }

    v105 = *(&__p + 1);
    if (*(&__p + 1) == v41)
    {
      if ((v21 & 1) == 0)
      {
        ZinAssertImpl("Error: pad decomposition failed for large asymmetric pad");
      }
    }

    else
    {
      v67 = *(a1 + 16);
      v162 = *a1;
      v163 = v67;
      v164 = *(a1 + 32);
      do
      {
        v68 = v41[1];
        v70 = v41[2];
        v69 = v41[3];
        v72 = v41[4];
        v71 = v41[5];
        v106 = v41;
        v73 = v68 + *v41;
        v74 = v69 + v70;
        v75 = v71 + v72;
        v108 = v70;
        v109 = *v41;
        v76 = *v41 == v68 && v70 == v69;
        v107 = v41[4];
        v78 = !v76 || v72 != v71;
        v117 = v78;
        if (v73)
        {
          v79 = 0;
        }

        else
        {
          v79 = v74 == 0;
        }

        if (!v79 || v75 != 0)
        {
          v81 = v73;
          v82 = v71 + v72;
          v83 = v69 + v70;
          do
          {
            if (v113 == 3)
            {
              v84 = *(a3 + 128);
            }

            else
            {
              v84 = GetMaxLogicalKernelWidthForLargeKernelMode(a3, v113) - 1;
            }

            if (v84 >= *(a3 + 136))
            {
              v84 = *(a3 + 136);
            }

            v85 = *(a3 + 104) - 1;
            if (v85 >= *(a3 + 144))
            {
              v85 = *(a3 + 144);
            }

            v86 = *(a3 + 120) - 1;
            if (v86 >= *(a3 + 152))
            {
              v86 = *(a3 + 152);
            }

            v88 = v73 > v84 || v81 > v84;
            v89 = v84 & ~v88;
            *(&v120 + 1) = 0;
            v121[0] = 0;
            v91 = v74 > v85 || v83 > v85;
            v122 = 0;
            v92 = v85 & ~v91;
            v121[1] = 0;
            v94 = v82 > v86 || v75 > v86;
            v95 = v86 & ~v94;
            v123 = 0;
            v124 = 0;
            v125 = 0;
            v128 = 0;
            v130 = -1;
            v131 = -1;
            v132 = -1;
            v133 = -1;
            v134 = 0u;
            v135 = 0u;
            v136 = 0u;
            v137 = 0;
            v138 = 1;
            v139 = 0;
            v140 = 0;
            v141 = -1;
            v142 = -1;
            v143 = -1;
            v144 = -1;
            v145 = 0x3F80000000000006;
            v146 = 0;
            *&v120 = &unk_1F1A33E10;
            v126 = *(v111 + 64);
            *&v96 = 0x100000001;
            *(&v96 + 1) = 0x100000001;
            v153 = v96;
            v154 = 0x100000001;
            if (v89 >= v73)
            {
              v97 = v73;
            }

            else
            {
              v97 = v89;
            }

            if (v89 >= v81)
            {
              v89 = v81;
            }

            if (v92 >= v74)
            {
              v98 = v74;
            }

            else
            {
              v98 = v92;
            }

            if (v92 >= v83)
            {
              v92 = v83;
            }

            if (v95 >= v82)
            {
              v99 = v82;
            }

            else
            {
              v99 = v95;
            }

            if (v95 >= v75)
            {
              v95 = v75;
            }

            v155 = v97;
            v156 = v89;
            v157 = v98;
            v158 = v92;
            v159 = v99;
            v160 = v95;
            v147 = 2;
            v129 = 4;
            v127 = *(a1 + 8);
            v149 = v127;
            v150 = v97 + 1;
            v151 = v98 + 1;
            v152 = v99 + 1;
            v161 = v112;
            v148 = v127 > 1;
            *&v167 = 0x100000001;
            DWORD2(v167) = 1;
            ZinGetOutputTensorDimension(&v162, &v150, &v153 + 3, &v153 + 3, &v155, v127, &v167, v118);
            if (v117)
            {
              v100 = (v155 - v109) & ~((v155 - v109) >> 31) | (((v157 - v108) & ~((v157 - v108) >> 31)) << 32);
              LODWORD(v101) = v159 - v107;
            }

            else
            {
              v100 = ((v151 + (v151 >> 63)) << 31) & 0xFFFFFFFF00000000 | (v150 / 2);
              v101 = (v152 + (v152 >> 63)) >> 1;
            }

            std::vector<ZinTensorDimensions>::push_back[abi:ne200100](a5, v118);
            v170 = xmmword_1A75A29C0;
            ZinIrConvUnitInfo::ZinIrConvUnitInfo(&v167, &v120);
            *&v170 = v100;
            DWORD2(v170) = v101;
            std::vector<ZinPadLayerUtils::PadDecomposedDesc>::push_back[abi:ne200100](a4, &v167);
            ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(&v167);
            v73 -= v155;
            v81 -= v156;
            v74 -= v157;
            v83 -= v158;
            v82 -= v159;
            v102 = v160;
            if (v73 | v81 | v74 | v83 | v82)
            {
              v103 = 0;
            }

            else
            {
              v103 = v75 == v160;
            }

            v104 = !v103;
            v162 = v118[0];
            v163 = v118[1];
            v164 = v119;
            *&v120 = &unk_1F1A2EAA0;
            if (v136)
            {
              *(&v136 + 1) = v136;
              operator delete(v136);
            }

            if (*(&v134 + 1))
            {
              *&v135 = *(&v134 + 1);
              operator delete(*(&v134 + 1));
            }

            v75 -= v102;
            ZinIrUnitInfo::~ZinIrUnitInfo(&v120);
          }

          while ((v104 & 1) != 0);
        }

        v41 = v106 + 6;
      }

      while (v106 + 6 != v105);
      v41 = __p;
    }

    if (v41)
    {
      *(&__p + 1) = v41;
      operator delete(v41);
    }

    return 1;
  }

LABEL_69:
  if (v21)
  {
    return 1;
  }

  return ZinPadLayerUtils::DecomposeReflectivePad(a1, a2, a4, a5, v113, a3);
}

void sub_1A6923300(_Unwind_Exception *a1)
{
  v2 = STACK[0x210];
  if (STACK[0x210])
  {
    STACK[0x218] = v2;
    operator delete(v2);
  }

  _Unwind_Resume(a1);
}

void ZinPadLayerUtils::ApplyPadTransform(ZinIrOpLayerGraph *a1, ZinIrContext *this, const ZinPadLayerUtils::PadDecomposedDesc **a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = **ZinIrContext::GetMemoryPools(this);
  v7 = *(*(ZinIrOpLayer::GetOutgoingLayers(this) + 8) - 8);
  if (*(v7 + 71) < 0)
  {
    std::string::__init_copy_ctor_external(&v35, *(v7 + 48), *(v7 + 56));
  }

  else
  {
    v8 = *(v7 + 48);
    *&v35.__r_.__value_.__l.__data_ = v8;
    v35.__r_.__value_.__r.__words[2] = *(v7 + 64);
  }

  U32BackgroundValue = ZinPadLayerUtils::GetU32BackgroundValue(*(this + 11) + 16, v8);
  if (*a3 != a3[1])
  {
    ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(v38, *a3);
    if (v39[3] == 1)
    {
      if (*(this + 71) >= 0)
      {
        v9 = *(this + 71);
      }

      else
      {
        v9 = *(this + 7);
      }

      std::string::basic_string[abi:ne200100](&v31, v9 + 2);
      if ((v31.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v10 = &v31;
      }

      else
      {
        v10 = v31.__r_.__value_.__r.__words[0];
      }

      if (v9)
      {
        if (*(this + 71) >= 0)
        {
          v11 = this + 48;
        }

        else
        {
          v11 = *(this + 6);
        }

        memmove(v10, v11, v9);
      }

      strcpy(v10 + v9, "__");
      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v35;
      }

      else
      {
        v12 = v35.__r_.__value_.__r.__words[0];
      }

      if ((v35.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v35.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v35.__r_.__value_.__l.__size_;
      }

      v14 = std::string::append(&v31, v12, size);
      v15 = *&v14->__r_.__value_.__l.__data_;
      v32.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
      *&v32.__r_.__value_.__l.__data_ = v15;
      v14->__r_.__value_.__l.__size_ = 0;
      v14->__r_.__value_.__r.__words[2] = 0;
      v14->__r_.__value_.__r.__words[0] = 0;
      std::string::basic_string[abi:ne200100]<0>(&v30, "padtoconv");
      v16 = std::string::append(&v30, "_xfm", 4uLL);
      v17 = *&v16->__r_.__value_.__l.__data_;
      v37 = v16->__r_.__value_.__r.__words[2];
      v36 = v17;
      v16->__r_.__value_.__l.__size_ = 0;
      v16->__r_.__value_.__r.__words[2] = 0;
      v16->__r_.__value_.__r.__words[0] = 0;
      if (v37 >= 0)
      {
        v18 = &v36;
      }

      else
      {
        v18 = v36;
      }

      if (v37 >= 0)
      {
        v19 = HIBYTE(v37);
      }

      else
      {
        v19 = *(&v36 + 1);
      }

      v20 = std::string::append(&v32, v18, v19);
      v21 = *&v20->__r_.__value_.__l.__data_;
      v33.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v33.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      std::to_string(&v29, 0);
      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v22 = &v29;
      }

      else
      {
        v22 = v29.__r_.__value_.__r.__words[0];
      }

      if ((v29.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v23 = HIBYTE(v29.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v23 = v29.__r_.__value_.__l.__size_;
      }

      v24 = std::string::append(&v33, v22, v23);
      v25 = *&v24->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v24->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v25;
      v24->__r_.__value_.__l.__size_ = 0;
      v24->__r_.__value_.__r.__words[2] = 0;
      v24->__r_.__value_.__r.__words[0] = 0;
      ZinObjectNameFactory::ZinObjectNameFactory(&v34, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v29.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v37) < 0)
      {
        operator delete(v36);
      }

      if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v30.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v32.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v31.__r_.__value_.__l.__data_);
      }

      ZinPadLayerUtils::CreateChannelWiseConv(v6, v38, a4, v39, U32BackgroundValue, &v34);
    }

    ZinAssertImpl("Error: invalid pad decomposition results. The decomposed unit is not convolution unit");
  }

  ZinAssertImpl("Error: failed to create channel-wise conv");
}

uint64_t ZinPadLayerUtils::GetU32BackgroundValue(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 64);
  switch(v2)
  {
    case 12:
      a2.n128_u16[0] = *(a1 + 224);
      return ZinF16ToE4M3(1, 0, a2);
    case 2:
      return *(a1 + 224);
    case 1:
      return *(a1 + 224);
    default:
      return *(a1 + 224);
  }
}

void ZinPadLayerUtils::CreateChannelWiseConv(void *a1, uint64_t a2, uint64_t a3, unsigned int *a4, int a5, uint64_t a6)
{
  v55 = *MEMORY[0x1E69E9840];
  v12 = (*(*a1 + 40))(a1, 0);
  v47 = 0x100000001;
  v41 = *(a2 + 256);
  v42 = *(a2 + 272);
  v45 = *(a2 + 304);
  v46 = *(a2 + 320);
  *&v13 = 0x100000001;
  *(&v13 + 1) = 0x100000001;
  v43 = v13;
  v44 = 0x100000001;
  v51 = *(a2 + 244);
  v52 = 0;
  v50 = *(a2 + 248);
  v14 = *(a2 + 328);
  v48 = 1;
  v49 = v14;
  v53 = a5;
  (*(*a6 + 16))(&v32, a6, 2);
  v15 = std::string::append(&v32, "_", 1uLL);
  v16 = *&v15->__r_.__value_.__l.__data_;
  v34.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
  *&v34.__r_.__value_.__l.__data_ = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string[abi:ne200100]<0>(&v37, "cwise_conv");
  v17 = std::string::append(&v37, "_xfm", 4uLL);
  v18 = *&v17->__r_.__value_.__l.__data_;
  __p.__end_cap_.__value_ = v17->__r_.__value_.__r.__words[2];
  *&__p.__begin_ = v18;
  v17->__r_.__value_.__l.__size_ = 0;
  v17->__r_.__value_.__r.__words[2] = 0;
  v17->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(__p.__end_cap_.__value_) >= 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__begin_;
  }

  if (SHIBYTE(__p.__end_cap_.__value_) >= 0)
  {
    value_high = HIBYTE(__p.__end_cap_.__value_);
  }

  else
  {
    value_high = __p.__end_;
  }

  v21 = std::string::append(&v34, p_p, value_high);
  v22 = *&v21->__r_.__value_.__l.__data_;
  v54.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
  *&v54.__r_.__value_.__l.__data_ = v22;
  v21->__r_.__value_.__l.__size_ = 0;
  v21->__r_.__value_.__r.__words[2] = 0;
  v21->__r_.__value_.__r.__words[0] = 0;
  v23 = std::string::append(&v54, "_kernel", 7uLL);
  v24 = *&v23->__r_.__value_.__l.__data_;
  v40 = v23->__r_.__value_.__r.__words[2];
  v39 = v24;
  v23->__r_.__value_.__l.__size_ = 0;
  v23->__r_.__value_.__r.__words[2] = 0;
  v23->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v54.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v54.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__end_cap_.__value_) < 0)
  {
    operator delete(__p.__begin_);
  }

  if (SHIBYTE(v37.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v37.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v34.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v34.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  *&v34.__r_.__value_.__l.__data_ = vdupq_n_s64(1uLL);
  v25 = *(a2 + 256);
  v34.__r_.__value_.__r.__words[2] = *(a2 + 264);
  v35 = v25;
  v26 = *(a2 + 272);
  v36 = v26;
  LODWORD(v54.__r_.__value_.__l.__data_) = 0;
  std::vector<float>::vector[abi:ne200100](&__p, v25 * v34.__r_.__value_.__r.__words[2] * v26, &v54);
  __p.__begin_[(*a4 + v25 * a4[1]) * v26 + a4[2]] = 1065353216;
  ZinIrKernel::CreateDynamicKernel(&v39, &v41, &__p, *(a2 + 84), &v34, 2uLL, a3, 1, &v33);
  v27 = *(v12 + 72);
  v54.__r_.__value_.__r.__words[0] = 0x100000001;
  LODWORD(v54.__r_.__value_.__r.__words[1]) = 1;
  ZinGetOutputTensorDimension((v12 + 64), &v41, &v43, &v43 + 3, &v45, v27, &v54, &v32);
  v28 = a1[4];
  (*(*a1 + 88))(&v54, a1, 0);
  memset(&v37, 0, sizeof(v37));
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v37, &v54, &v55, 1uLL);
  v29 = *(v12 + 104);
  v30 = v33;
  v33 = 0;
  v31 = v30;
  ZinBuilder::CreateConv(v28, a6, &v37, &v32, v29, &v31);
}

void sub_1A6923EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, ZinIrKernel *a10, uint64_t a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, ZinIrKernel *a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *a41, uint64_t a42, int a43, __int16 a44, char a45, char a46)
{
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a10);
  *(v47 - 232) = v46;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100]((v47 - 232));
  v49 = *(v47 - 120);
  if (v49)
  {
    *(v47 - 112) = v49;
    operator delete(v49);
  }

  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a19);
  if (__p)
  {
    a35 = __p;
    operator delete(__p);
  }

  if (a46 < 0)
  {
    operator delete(a41);
  }

  _Unwind_Resume(a1);
}

void ZinPadLayerUtils::GetConvChain(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v24[0] = 0;
  v24[1] = 0;
  v25 = 0;
  std::vector<NodeKey<RawOrShared<ZinIrOpLayer>>>::reserve(v24, 0x2E8BA2E8BA2E8BA3 * ((a2[1] - *a2) >> 5));
  v8 = **ZinIrContext::GetMemoryPools(a1);
  U32BackgroundValue = ZinPadLayerUtils::GetU32BackgroundValue(*(a1 + 88) + 16, v9);
  v11 = *a2;
  if (*a2 != a2[1])
  {
    v12 = U32BackgroundValue;
    if (*(v8 + 71) >= 0)
    {
      v13 = *(v8 + 71);
    }

    else
    {
      v13 = *(v8 + 56);
    }

    std::string::basic_string[abi:ne200100](&v21, v13 + 2);
    if ((v21.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v14 = &v21;
    }

    else
    {
      v14 = v21.__r_.__value_.__r.__words[0];
    }

    if (v13)
    {
      if (*(v8 + 71) >= 0)
      {
        v15 = (v8 + 48);
      }

      else
      {
        v15 = *(v8 + 48);
      }

      memmove(v14, v15, v13);
    }

    strcpy(v14 + v13, "__");
    v16 = *(a1 + 71);
    if (v16 >= 0)
    {
      v17 = (a1 + 48);
    }

    else
    {
      v17 = *(a1 + 48);
    }

    if (v16 >= 0)
    {
      v18 = *(a1 + 71);
    }

    else
    {
      v18 = *(a1 + 56);
    }

    v19 = std::string::append(&v21, v17, v18);
    v20 = *&v19->__r_.__value_.__l.__data_;
    __p.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
    *&__p.__r_.__value_.__l.__data_ = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    ZinObjectNameFactory::ZinObjectNameFactory(&v23, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v21.__r_.__value_.__l.__data_);
    }

    ZinPadLayerUtils::CreateChannelWiseConv(v8, v11, a3, (v11 + 336), v12, &v23);
  }

  *a4 = 0;
  a4[1] = 0;
  a4[2] = 0;
  if (v24[0])
  {
    v24[1] = v24[0];
    operator delete(v24[0]);
  }
}

void sub_1A6924284(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

int32x4_t ZinPadLayerUtils::FuseConvWithConsumer@<Q0>(uint64_t *__return_ptr a1@<X8>, uint32x4_t *this@<X0>, int32x4_t *a3@<X1>)
{
  result = vsraq_n_u32(*this, *this, 0x1FuLL);
  *a1 = vsraq_n_s32(*a3, result, 1uLL);
  v4 = a3[1].i32[1] + this[1].i32[1] / 2;
  *(a1 + 4) = a3[1].i32[0] + this[1].i32[0] / 2;
  *(a1 + 5) = v4;
  return result;
}

int32x2_t ZinPadLayerUtils::FusePadWithConsumer@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int *a4@<X3>, uint64_t a5@<X8>, int32x4_t a6@<Q0>)
{
  if (a3)
  {
    if (*a4 >= 2 && *a2 || a4[1] >= 2 && *(a2 + 8) || (v6 = a4[2], a6.i64[0] = *a4, v6 >= 2) && *(a2 + 16))
    {
      ZinAssertImpl("Unsupported pad to deconv fusion", *a6.i64);
    }
  }

  else
  {
    a6.i64[0] = 0x100000001;
    v6 = 1;
  }

  *a5 = vmlaq_s32(*a2, *(a1 + 156), vzip1q_s32(a6, a6));
  result = *(a1 + 172);
  *(a5 + 16) = vmla_s32(*(a2 + 16), result, vdup_n_s32(v6));
  return result;
}

void ZinPadLayerUtils::ApplyReflectivePadTransform(ZinIrOpLayerGraph *a1, ZinIrContext *this, const ZinPadLayerUtils::PadDecomposedDesc **a3, uint64_t a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *(this + 11);
  if (*(v4 + 8) == 59)
  {
    for (i = *(v4 + 216); ; i += 8)
    {
      if (i == *(v4 + 224))
      {
        v8 = *(*(ZinIrContext::GetMemoryPools(this) + 8) - 8);
        v9 = (*(*v8 + 40))(v8, 0);
        v10 = *(v4 + 180);
        v11 = *(v4 + 184);
        v18 = *(v9 + 104);
        v20 = *(this + 4);
        if (*(this + 71) >= 0)
        {
          v12 = *(this + 71);
        }

        else
        {
          v12 = *(this + 7);
        }

        std::string::basic_string[abi:ne200100](__p, v12 + 15);
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v13 = __p;
        }

        else
        {
          v13 = __p[0].__r_.__value_.__r.__words[0];
        }

        if (v12)
        {
          if (*(this + 71) >= 0)
          {
            v14 = this + 48;
          }

          else
          {
            v14 = *(this + 6);
          }

          memmove(v13, v14, v12);
        }

        strcpy(v13 + v12, "_reflectivepad_");
        ZinObjectNameFactory::ZinObjectNameFactory(&v26, __p);
        if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        memset(&v25[13], 0, 48);
        if (v10 >= 1)
        {
          ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(__p, *a3);
          if (v39 == 17)
          {
            (*(*v8 + 88))(&__src, v8, 0);
            v28 = 0;
            v27 = 0;
            v29 = 0;
            std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v27, &__src, v33, 1uLL);
            ZinBuilder::CreateViewFromOffset(v20, &v26, &v27, v9, v38, v36, v37);
          }

          ZinAssertImpl("Error: invalid decomposition results for reflective padding. An input view unit is expected");
        }

        if (v11 >= 1)
        {
          ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(__p, *a3);
          if (v39 == 17)
          {
            (*(*v8 + 88))(&__src, v8, 0);
            v28 = 0;
            v27 = 0;
            v29 = 0;
            std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v27, &__src, v33, 1uLL);
            ZinBuilder::CreateViewFromOffset(v20, &v26, &v27, v9, v38, v36, v37);
          }

          ZinAssertImpl("Error: invalid decomposition results for reflective padding. An input view unit is expected");
        }

        ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(__p, *a3);
        if (v39 == 21)
        {
          v15 = *((*(*v8 + 40))(v8, 0) + 80);
          v16 = *(v9 + 80);
          if (v15 == v11 + v10 + v16)
          {
            v17 = *(v9 + 72);
            v25[0] = 0;
            if (!ZinTensorFormatGetSizeInBytes(v18, v25))
            {
              memset(v34, 0, sizeof(v34));
              v22 = 0;
              v23 = 0;
              v24 = 0;
              if ((ceilf((v25[0] * v17) / *(a4 + 560)) * *(a4 + 560)) >= (ceilf((v25[0] * v15) / *(a4 + 560)) * *(a4 + 560)))
              {
                v31 = 0x400000003;
                __src = xmmword_1A75D2360;
                std::vector<DimensionMapping>::__assign_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(v34, &__src, v32, 3uLL);
                __src = xmmword_1A75D2378;
                v31 = 0x300000004;
                std::vector<DimensionMapping>::__assign_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v22, &__src, v32, 3uLL);
              }

              else
              {
                __src = xmmword_1A7597D10;
                std::vector<DimensionMapping>::__assign_with_size[abi:ne200100]<DimensionMapping const*,DimensionMapping const*>(&v22, &__src, &v31, 2uLL);
                std::vector<long long>::__assign_with_size[abi:ne200100]<long long *,long long *>(v34, v22, v23, (v23 - v22) >> 3);
              }

              (*(*v8 + 88))(&__src, v8, 0);
              v28 = 0;
              v27 = 0;
              v29 = 0;
              std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v27, &__src, v33, 1uLL);
              v21 = 0;
              ZinBuilder::CreateTranspose(v20, &v26, &v27, v34, &v21);
            }

            ZinAssertImpl("Error: Cannot retrieve tensor format during decompose reflecting pad lowering.");
          }

          ZinAssertImpl("Error: invalid decomposition results for reflective padding. The padded height = %zd is not equal to the expected height = %zd with top padding = %d and bot padding = %d", v16, v15, v10, v11);
        }

        ZinAssertImpl("Error: invalid decomposition results for reflective padding. A transpose unit is expected");
      }

      if (*(i + 4) != 6)
      {
        break;
      }
    }
  }

  ZinAssertImpl("Error: reflective pad lowering failed. The layer is not a pad layer with reflective padding");
}

void sub_1A6925DC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, void *a61, uint64_t a62, uint64_t a63)
{
  if (__p)
  {
    operator delete(__p);
  }

  v66 = STACK[0x520];
  if (STACK[0x520])
  {
    STACK[0x528] = v66;
    operator delete(v66);
  }

  ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(&STACK[0x538]);
  v67 = STACK[0x260];
  if (STACK[0x260])
  {
    STACK[0x268] = v67;
    operator delete(v67);
  }

  v68 = STACK[0x278];
  if (STACK[0x278])
  {
    STACK[0x280] = v68;
    operator delete(v68);
  }

  STACK[0x290] = &unk_1F19D0088;
  if (SLOBYTE(STACK[0x2AF]) < 0)
  {
    operator delete(STACK[0x298]);
  }

  _Unwind_Resume(a1);
}

_DWORD *ZinPadLayerUtils::GetPaddingInfoAtDim(int a1, uint64_t a2)
{
  for (result = *(a2 + 200); result != *(a2 + 208); result += 2)
  {
    if (*result == a1)
    {
      return result;
    }
  }

  return 0;
}

void ZinPadLayerUtils::LowerChannelPadding(ZinIrOpLayerGraph *a1, ZinIrContext *this, uint64_t a3, int *a4, uint64_t a5)
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = *(a5 + 200);
  v5 = *(a5 + 208);
  if (v6 != v5)
  {
    while (*v6 != 2)
    {
      v6 += 2;
      if (v6 == v5)
      {
        goto LABEL_4;
      }
    }

    if (*(a5 + 180) > 0 || *(a5 + 184) > 0)
    {
      v10 = **ZinIrContext::GetMemoryPools(this);
      if (v10)
      {
        if (*(this + 71) >= 0)
        {
          v11 = *(this + 71);
        }

        else
        {
          v11 = *(this + 7);
        }

        p_p = &__p;
        std::string::basic_string[abi:ne200100](&__p, v11 + 17);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          p_p = __p.__r_.__value_.__r.__words[0];
        }

        if (v11)
        {
          if (*(this + 71) >= 0)
          {
            v13 = this + 48;
          }

          else
          {
            v13 = *(this + 6);
          }

          memmove(p_p, v13, v11);
        }

        strcpy(p_p + v11, "_channel_padding_");
        ZinObjectNameFactory::ZinObjectNameFactory(&v22, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v18 = *(this + 4);
        v16 = *((*(*this + 40))(this, 0) + 104);
        for (i = *(a5 + 200); i != *(a5 + 208); i += 2)
        {
          if (*i == 3)
          {
            *&__p.__r_.__value_.__r.__words[1] = 0uLL;
            v26 = 0;
            v25 = 0;
            v27 = 0u;
            v28 = 0u;
            v29 = -1;
            v30 = 0u;
            v31 = 0u;
            v32 = 0u;
            memset(v33, 0, 26);
            v34 = 0u;
            v35 = 0u;
            v36 = 0;
            __p.__r_.__value_.__r.__words[0] = &unk_1F1A33FD0;
            memset(__dst, 0, sizeof(__dst));
            *(&v34 + 1) = *(a5 + 164);
            v38 = *(a5 + 224);
            v15 = i[1];
            LODWORD(v23[0]) = 3;
            HIDWORD(v23[0]) = v15;
            std::vector<DimensionMapping>::push_back[abi:ne200100](__dst, v23);
            (*(*v10 + 88))(v23, v10, 0);
            memset(v20, 0, 24);
            std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v20, v23, &__p, 1uLL);
            ZinBuilder::CreatePadLayer(v18, &v22, v20, v16, &__p);
          }
        }

        ZinIrTransposeUnitInfo::ZinIrTransposeUnitInfo(v20, 2u, 3u, *a4);
        (*(*v10 + 40))(v10, 0);
        (*(*v10 + 88))(&__p, v10, 0);
        memset(v23, 0, 24);
        std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v23, &__p, &v33[8], 1uLL);
        v19 = 0;
        ZinBuilder::CreateTranspose(v18, &v22, v23, &v21, &v19);
      }

      ZinAssertImpl("Error: failed to get the incoming layer for the channel padding layer");
    }
  }

LABEL_4:
  ZinAssertImpl("Error: the pad layer does not contain channel padding", this, a3);
}

void sub_1A6926EB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, void *__p, uint64_t a59, int a60, __int16 a61, char a62, char a63)
{
  ZinIrPadUnitInfo::~ZinIrPadUnitInfo(&STACK[0x248]);
  if (a63 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t std::vector<ZinPadLayerUtils::PadDecomposedDesc>::__emplace_back_slow_path<ZinPadLayerUtils::PadDecomposedDesc>(uint64_t a1, const ZinPadLayerUtils::PadDecomposedDesc *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((*(a1 + 8) - *a1) >> 5);
  v3 = v2 + 1;
  if ((v2 + 1) > 0xBA2E8BA2E8BA2ELL)
  {
    std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 5) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((*(a1 + 16) - *a1) >> 5);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((*(a1 + 16) - *a1) >> 5)) >= 0x5D1745D1745D17)
  {
    v6 = 0xBA2E8BA2E8BA2ELL;
  }

  else
  {
    v6 = v3;
  }

  v16 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<ZinPadLayerUtils::PadDecomposedDesc>>(a1, v6);
  }

  v13 = 0;
  v14 = 352 * v2;
  ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc((352 * v2), a2);
  v15 = (352 * v2 + 352);
  v7 = *(a1 + 8);
  v8 = (352 * v2 + *a1 - v7);
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinPadLayerUtils::PadDecomposedDesc>,ZinPadLayerUtils::PadDecomposedDesc*>(a1, *a1, v7, v8);
  v9 = *a1;
  *a1 = v8;
  v10 = *(a1 + 16);
  v12 = v15;
  *(a1 + 8) = v15;
  *&v15 = v9;
  *(&v15 + 1) = v10;
  v13 = v9;
  v14 = v9;
  std::__split_buffer<ZinPadLayerUtils::PadDecomposedDesc>::~__split_buffer(&v13);
  return v12;
}

void sub_1A69272AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<ZinPadLayerUtils::PadDecomposedDesc>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ZinPadLayerUtils::PadDecomposedDesc>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xBA2E8BA2E8BA2FLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<ZinPadLayerUtils::PadDecomposedDesc>,ZinPadLayerUtils::PadDecomposedDesc*>(int a1, ZinPadLayerUtils::PadDecomposedDesc *a2, ZinPadLayerUtils::PadDecomposedDesc *a3, ZinPadLayerUtils::PadDecomposedDesc *this)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      ZinPadLayerUtils::PadDecomposedDesc::PadDecomposedDesc(this, v8);
      v8 = (v8 + 352);
      this = (this + 352);
      v7 -= 352;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(v6);
      v6 = (v6 + 352);
    }
  }
}

void sub_1A692739C(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = (v1 - 352);
    do
    {
      ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc(v4);
      v4 = (v5 - 352);
      v2 += 352;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<ZinPadLayerUtils::PadDecomposedDesc>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 352;
    ZinPadLayerUtils::PadDecomposedDesc::~PadDecomposedDesc((i - 352));
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void *ZinLiveOutLayer::ZinLiveOutLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = a3[1];
  v8 = *a3;
  v9 = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v7 = 0;
  ZinIrOpLayer::ZinIrOpLayer(a1, a2, &v8, a4, &v7);
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&v7);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  *a1 = &unk_1F19F04D8;
  return a1;
}

void sub_1A69274D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ZinIrKernel *a10, uint64_t a11, std::__shared_weak_count *a12)
{
  std::unique_ptr<ZinIrKernel>::~unique_ptr[abi:ne200100](&a10);
  if (a12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a12);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinLiveOutLayer::LowerEngine(ZinIrContext **a1, ZinIrOpLayerGraph *a2)
{
  if (ZinLiveOutLayer::HandleOutputExpansion(a1, a2))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinLiveOutLayer::LowerEngine();
    }
  }

  else if (ZinLiveOutLayer::HandleUserSpecifiedLiveOutProperties(a1, a2, v4))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinLiveOutLayer::LowerEngine();
    }
  }

  else if (ZinLiveOutLayer::HandleViewLiveOut(a1, a2))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinLiveOutLayer::LowerEngine();
    }
  }

  else if (ZinLiveOutLayer::HandleAnotherLiveOut(a1, a2))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinLiveOutLayer::LowerEngine();
    }
  }

  else if (ZinLiveOutLayer::HandleLiveOutConnectedToCCLayer(a1, a2))
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinLiveOutLayer::LowerEngine();
    }
  }

  else
  {
    v5 = (*(*a1 + 5))(a1, 0);
    RootTensor = ZinIrTensor::GetRootTensor(v5);
    result = ZinIrTensor::SetAllocationHint(RootTensor, 2, 1);
    if (!result)
    {
      return result;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinLiveOutLayer::LowerEngine();
    }
  }

  return 3;
}

uint64_t ZinLiveOutLayer::HandleOutputExpansion(ZinLiveOutLayer *this, ZinIrOpLayerGraph *a2)
{
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  (*(***MemoryPools + 232))(v14);
  (*(*this + 232))(v13, this);
  if (!ZinTensorDimensionsEqual(v14, v13))
  {
    if (*(this + 71) >= 0)
    {
      v5 = *(this + 71);
    }

    else
    {
      v5 = *(this + 7);
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v5 + 11);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v5)
    {
      if (*(this + 71) >= 0)
      {
        v7 = this + 48;
      }

      else
      {
        v7 = *(this + 6);
      }

      memmove(p_p, v7, v5);
    }

    strcpy(p_p + v5, "_ane_hw_out");
    ZinObjectNameFactory::ZinObjectNameFactory(&v12, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    LOBYTE(v9) = 0;
    v10 = 0;
    AddBypassBeforeLiveOut(a2, this, &v12, 1, &v9);
  }

  return 0;
}

void sub_1A6927820(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a11 == 1)
  {
    std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100](&a10, 0);
  }

  a20 = &unk_1F19D0088;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinLiveOutLayer::HandleUserSpecifiedLiveOutProperties(ZinLiveOutLayer *this, ZinIrOpLayerGraph *a2, const ZinIrHalParameters *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = **ZinIrContext::GetMemoryPools(this);
  v6 = (*(*v5 + 40))(v5, 0);
  v7 = (*(*this + 40))(this, 0);
  HasMatchedStrides = ZinIrTensor::HasMatchedStrides(v6, v7, v8);
  v10 = *(v7 + 219);
  v36 = 0;
  if (!HasMatchedStrides || v10 != 0)
  {
    if (v10)
    {
      ZinIrTensor::GetInterchangeDescriptor(v7);
      ZinIrTensor::GetInterchangeDescriptor(v7);
      ZinIrTensor::GetInterchangeDescriptor(v7);
      ZinIrTensor::GetInterleave(v7);
      DimensionOrderHint::DimensionOrderHint(&v33, 0);
      operator new();
    }

    v20 = *(v7 + 160);
    if (v20)
    {
      v21 = *v20;
      v22 = v20[1];
      v35 = *(v20 + 4);
      v33 = v21;
      v34 = v22;
    }

    else
    {
      v38 = 0;
      ZinIrTensor::InferDescriptor(__p, v7, v37);
      v33 = v30;
      v34 = v31;
      v35 = v32;
      std::__function::__value_func<void ()(ZinTensorDescriptor const&,ZinTensorDescriptor const&,ZinIrTensor const*)>::~__value_func[abi:ne200100](v37);
    }

    Interleave = ZinIrTensor::GetInterleave(v7);
    if (v24)
    {
      v25 = Interleave;
    }

    else
    {
      v25 = 1;
    }

    FindDimensionOrderFromStrides(__p, &v33, (v7 + 64), v25, 1);
    ZinIrTensor::GetInterleave(v7);
    operator new();
  }

  v12 = *(v5[11] + 8);
  v13 = v12 > 0x1E;
  v14 = (1 << v12) & 0x68000000;
  if (!v13 && v14 != 0)
  {
    if (*(this + 71) >= 0)
    {
      v16 = *(this + 71);
    }

    else
    {
      v16 = *(this + 7);
    }

    v17 = &v33;
    std::string::basic_string[abi:ne200100](&v33, v16 + 15);
    if (SBYTE7(v34) < 0)
    {
      v17 = v33;
    }

    if (v16)
    {
      if (*(this + 71) >= 0)
      {
        v18 = this + 48;
      }

      else
      {
        v18 = *(this + 6);
      }

      memmove(v17, v18, v16);
    }

    strcpy(v17 + v16, "_liveout_decomp");
    ZinObjectNameFactory::ZinObjectNameFactory(__p, &v33);
    if (SBYTE7(v34) < 0)
    {
      operator delete(v33);
    }

    v19 = v36;
    v36 = 0;
    v27 = v19;
    v28 = 1;
    AddBypassBeforeLiveOut(a2, this, __p, 1, &v27);
  }

  std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100](&v36, 0);
  return 0;
}

uint64_t ZinLiveOutLayer::HandleViewLiveOut(size_t *this, ZinIrOpLayerGraph *a2)
{
  v4 = (*(*this + 40))(this, 0);
  ZinIrTensor::GetAllParentsInTree(v4, &v15);
  if (v15 == v16)
  {
    v5 = 0;
    if (v15)
    {
LABEL_5:
      v16 = v15;
      operator delete(v15);
    }
  }

  else
  {
    v5 = 0;
    v6 = v15;
    do
    {
      v7 = *v6++;
      v5 |= *(*(*(v7 + 152) + 88) + 8) == 37;
    }

    while (v6 != v16);
    if (v15)
    {
      goto LABEL_5;
    }
  }

  if (v5)
  {
    if (*(this + 71) >= 0)
    {
      v8 = *(this + 71);
    }

    else
    {
      v8 = this[7];
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v8 + 17);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v8)
    {
      if (*(this + 71) >= 0)
      {
        v10 = this + 6;
      }

      else
      {
        v10 = this[6];
      }

      memmove(p_p, v10, v8);
    }

    strcpy(p_p + v8, "_liveout_viewCopy");
    ZinObjectNameFactory::ZinObjectNameFactory(&v15, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    LOBYTE(v12) = 0;
    v13 = 0;
    AddBypassBeforeLiveOut(a2, this, &v15, 0, &v12);
  }

  return 0;
}

void sub_1A6928280(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a11 == 1)
  {
    std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100](&a10, 0);
  }

  a20 = &unk_1F19D0088;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinLiveOutLayer::HandleAnotherLiveOut(size_t *this, ZinIrOpLayerGraph *a2)
{
  v4 = (*(*this + 40))(this, 0);
  ZinIrTensor::GetTensorFamily(&v17, v4);
  if (v17 == v18)
  {
    LOBYTE(v8) = 1;
    if (v17)
    {
LABEL_15:
      v18 = v17;
      operator delete(v17);
    }
  }

  else
  {
    v5 = v17 + 8;
    do
    {
      v6 = *(*(v5 - 1) + 152);
      v8 = v6 == this || *(v6[11] + 8) != 31;
      v9 = !v8 || v5 == v18;
      v5 += 8;
    }

    while (!v9);
    if (v17)
    {
      goto LABEL_15;
    }
  }

  if (!v8)
  {
    if (*(this + 71) >= 0)
    {
      v10 = *(this + 71);
    }

    else
    {
      v10 = this[7];
    }

    p_p = &__p;
    std::string::basic_string[abi:ne200100](&__p, v10 + 21);
    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    if (v10)
    {
      if (*(this + 71) >= 0)
      {
        v12 = this + 6;
      }

      else
      {
        v12 = this[6];
      }

      memmove(p_p, v12, v10);
    }

    strcpy(p_p + v10, "_another_liveout_copy");
    ZinObjectNameFactory::ZinObjectNameFactory(&v17, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    LOBYTE(v14) = 0;
    v15 = 0;
    AddBypassBeforeLiveOut(a2, this, &v17, 0, &v14);
  }

  return 0;
}

void sub_1A69284BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a11 == 1)
  {
    std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100](&a10, 0);
  }

  a20 = &unk_1F19D0088;
  if (a26 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinLiveOutLayer::HandleLiveOutConnectedToCCLayer(ZinIrContext **this, ZinIrOpLayerGraph *a2)
{
  v4 = **ZinIrContext::GetMemoryPools(this);
  result = ZinIrOpLayer::IsCollectiveCommunicationLayer(v4);
  if (result)
  {
    result = (*(*v4 + 344))(v4);
    if (result)
    {
      if (*(this + 71) >= 0)
      {
        v6 = *(this + 71);
      }

      else
      {
        v6 = this[7];
      }

      v7 = &v20;
      std::string::basic_string[abi:ne200100](&v20, v6 + 1);
      if ((v20.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v7 = v20.__r_.__value_.__r.__words[0];
      }

      if (v6)
      {
        if (*(this + 71) >= 0)
        {
          v8 = this + 6;
        }

        else
        {
          v8 = this[6];
        }

        memmove(v7, v8, v6);
      }

      *(&v7->__r_.__value_.__l.__data_ + v6) = 95;
      std::string::basic_string[abi:ne200100]<0>(&v17, "liveout_cc_copy");
      v9 = std::string::append(&v17, "_xfm", 4uLL);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v19 = v9->__r_.__value_.__r.__words[2];
      *__p = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      if (v19 >= 0)
      {
        v11 = __p;
      }

      else
      {
        v11 = __p[0];
      }

      if (v19 >= 0)
      {
        v12 = HIBYTE(v19);
      }

      else
      {
        v12 = __p[1];
      }

      v13 = std::string::append(&v20, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v21.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v21.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      ZinObjectNameFactory::ZinObjectNameFactory(&v22, &v21);
      if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v21.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v19) < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v17.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v17.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }

      LOBYTE(v15) = 0;
      v16 = 0;
      AddBypassBeforeLiveOut(a2, this, &v22, 1, &v15);
    }
  }

  return result;
}

void sub_1A6928844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  std::vector<std::vector<ZinIrOpLayer *>>::__destroy_vector::operator()[abi:ne200100](&a29);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v34 - 96);
  *(v34 - 72) = &unk_1F19D0088;
  if (*(v34 - 41) < 0)
  {
    operator delete(*(v34 - 64));
  }

  _Unwind_Resume(a1);
}

void sub_1A6928A70(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, _Unwind_Exception *a13)
{
  if (v15)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v15);
  }

  ZinDropoutLayer::Clone(&a12, a1, a2, &a13);
  v18 = a13;
  MEMORY[0x1AC55A070](v13, v14);
  _Unwind_Resume(v18);
}

void AddBypassBeforeLiveOut(ZinIrOpLayerGraph *a1, ZinIrContext *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v17[0] = 0;
  if (*(a5 + 8) == 1)
  {
    v7 = *a5;
    *a5 = 0;
    v8 = v17;
  }

  else
  {
    v9 = (*(*a2 + 40))(a2, 0, a3, a4);
    ZinIrTensor::CopyTensorMirInfo(v14, v9);
    v10 = v14[0];
    v14[0] = 0;
    std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100](v17, v10);
    v8 = v14;
    v7 = 0;
  }

  std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100](v8, v7);
  v11 = **ZinIrContext::GetMemoryPools(a2);
  v12 = *(a2 + 4);
  v13 = *((*(*a2 + 40))(a2, 0) + 104);
  v16 = v17[0];
  v17[0] = 0;
  LOBYTE(v14[0]) = 0;
  v15 = 0;
  ZinBuilder::CreateNEBypass(v12, a3, v11, v13, &v16, 0, v14, 1.0);
}

void sub_1A6928D00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  *(v14 - 88) = v13 + 8;
  std::vector<Layer2TDMapper::LayerInfo>::__destroy_vector::operator()[abi:ne200100]((v14 - 88));
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinIrOpLayer *,std::shared_ptr<ZinIrOpLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](va);
  std::unique_ptr<ZinIrTensor::MirInfo>::reset[abi:ne200100]((v14 - 96), 0);
  _Unwind_Resume(a1);
}

void ZinLiveOutLayer::ValidateSemantics_Impl(ZinIrOpLayer *a1, uint64_t *a2, unsigned __int8 *a3)
{
  if (a2[1] - *a2 != 136)
  {
    ZinAssertImpl("Live out layer must have 1 input");
  }

  GetInputTensorFormatExceptions(*(*(a1 + 11) + 8), 1uLL, v16);
  GetInputTensorDimensionExceptions(a1, a2, a3, v15);
  LOBYTE(v13) = 1;
  std::vector<BOOL>::vector(__p, &v13, 1);
  ZinLayerValidationUtils::ValidateTensorInfos(a2, a3, v16, v15, __p, 0);
  if (__p[0])
  {
    operator delete(__p[0]);
  }

  v6 = (*(*a1 + 40))(a1, 0);
  OutputTensorFormatExceptions = GetOutputTensorFormatExceptions(*(*(a1 + 11) + 8));
  v8 = *(v6 + 26);
  v13 = OutputTensorFormatExceptions;
  LODWORD(__p[0]) = v8;
  ZinLayerValidationUtils::ValidateFormat(__p, a3, &v13, 1);
  Interleave = ZinIrTensor::GetInterleave(v6);
  v10 = 0;
  if (v11)
  {
    v12 = Interleave;
  }

  else
  {
    v12 = 1;
  }

  while (*&a3[v10 + 1752] != v12)
  {
    v10 += 8;
    if (v10 == 40)
    {
      ZinAssertImpl("Error: invalid input interleave factor:%zd; The valid interleave factor should be 1, 2, 3, 4, or 8", v12);
    }
  }

  __p[0] = v15;
  std::vector<std::unordered_map<ZinIrDimension,ZinTensorDimensionException>>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v16[0])
  {
    v16[1] = v16[0];
    operator delete(v16[0]);
  }
}

void sub_1A6928F60(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char *__p, uint64_t a13, uint64_t a14, char a15)
{
  __p = &a15;
  std::vector<std::unordered_map<ZinIrDimension,ZinTensorDimensionException>>::__destroy_vector::operator()[abi:ne200100](&__p);
  v17 = *(v15 - 56);
  if (v17)
  {
    *(v15 - 48) = v17;
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

void ZinLiveOutLayer::LowerEngine()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_0_2(*MEMORY[0x1E69E9840]);
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

void ZinTMWaitForEventInfo::ZinTMWaitForEventInfo(ZinTMWaitForEventInfo *this, __int16 a2, uint64_t a3, char a4, char a5)
{
  v9 = ZinIrOpLayerOpCode::ZinIrOpLayerOpCode(this, 110);
  *v9 = &unk_1F19F0668;
  *(v9 + 12) = a2;
  *(v9 + 16) = a3;
  *(v9 + 24) = a4;
  *(v9 + 25) = a5;
}

void *ZinTMWaitForEventLayer::ZinTMWaitForEventLayer(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = *a2;
  *a2 = 0;
  v6 = a3[1];
  v9 = *a3;
  v10 = v6;
  v11 = v5;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinTMLayer::ZinTMLayer(a1, &v11, &v9, a4);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v7 = v11;
  v11 = 0;
  if (v7)
  {
    (*(*v7 + 16))(v7);
  }

  *a1 = &unk_1F19F06A0;
  return a1;
}

void sub_1A6929334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, std::__shared_weak_count *a4, uint64_t a5, uint64_t a6, std::__shared_weak_count *a7, ...)
{
  va_start(va, a7);
  if (a7)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a7);
  }

  ZinLayerNormLayer::ZinLayerNormLayer(va);
  _Unwind_Resume(a1);
}

void sub_1A6929494(_Unwind_Exception *exception_object, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a11)
  {
    (*(*a11 + 16))(a11, a2, a3, a4, a5, a6, a7, a8);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinTMWaitForEventLayer::ValidateSemantics_Impl(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((*(a3 + 1999) & 1) == 0)
  {
    ZinAssertImpl("Error: WaitForEventLayer not supported on this archecture", a2);
  }

  v3 = *a2;
  if (*(a2 + 8) - *a2 != 272)
  {
    ZinAssertImpl("Error: ZinWaitForEventLayer must have only two inputs.");
  }

  if (*v3 != 15)
  {
    ZinAssertImpl("Error: Invalid format for the event counter in ZinWaitForEventLayer.");
  }

  if (ZinTensorDimensions::GetElementCount((v3 + 2)) != 1)
  {
    ZinAssertImpl("Error: invalid size for the event counter in ZinWaitForEventLayer");
  }

  if (v3[34] != 15)
  {
    ZinAssertImpl("Error: Invalid format for the threshold value in ZinWaitForEventLayer.");
  }

  result = ZinTensorDimensions::GetElementCount((v3 + 36));
  if (result != 1)
  {
    ZinAssertImpl("Error: invalid size for the threshold value in ZinWaitForEventLayer");
  }

  return result;
}

void *std::__shared_ptr_emplace<ZinTMWaitForEventLayer>::__shared_ptr_emplace[abi:ne200100]<std::unique_ptr<ZinTMWaitForEventInfo>,std::shared_ptr<ZinIrTensor> &,std::string const&,std::allocator<ZinTMWaitForEventLayer>,0>(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F19F0838;
  std::construct_at[abi:ne200100]<ZinTMWaitForEventLayer,std::unique_ptr<ZinTMWaitForEventInfo>,std::shared_ptr<ZinIrTensor> &,std::string const&,ZinTMWaitForEventLayer*>(a1 + 3, a2, a3, a4);
  return a1;
}

void std::__shared_ptr_emplace<ZinTMWaitForEventLayer>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F19F0838;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1AC55A070);
}

void *std::construct_at[abi:ne200100]<ZinTMWaitForEventLayer,std::unique_ptr<ZinTMWaitForEventInfo>,std::shared_ptr<ZinIrTensor> &,std::string const&,ZinTMWaitForEventLayer*>(void *a1, uint64_t *a2, uint64_t *a3, __int128 *a4)
{
  v5 = a3[1];
  v7[0] = *a3;
  v7[1] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit(&v5->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  ZinTMWaitForEventLayer::ZinTMWaitForEventLayer(a1, a2, v7, a4);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  return a1;
}

void sub_1A69297AC(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinCompilerCoreJIT::ZinCompilerCoreJIT(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 *a11, uint64_t a12)
{
  ZinCompilerCore::ZinCompilerCore(a1, a2, a3, a4, a5, a12);
  *v16 = &unk_1F19F0888;
  if (*(a6 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 384), *a6, *(a6 + 1));
  }

  else
  {
    v17 = *a6;
    *(a1 + 400) = *(a6 + 2);
    *(a1 + 384) = v17;
  }

  *(a1 + 408) = a7;
  *(a1 + 416) = a8;
  *(a1 + 424) = a9;
  *(a1 + 432) = a10;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 1065353216;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0;
  v18 = *a11;
  v19 = a11[2];
  *(a1 + 536) = a11[1];
  *(a1 + 552) = v19;
  *(a1 + 520) = v18;
  *(a1 + 568) = 0;
  return a1;
}

{
  return ZinCompilerCoreJIT::ZinCompilerCoreJIT(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12);
}

uint64_t ZinCompilerCoreJIT::BuildLayerGraph(ZinCompilerCoreJIT *this)
{
  kdebug_trace();
  if (ZinSerial::DeserializeBarUsage(*(this + 65), *(this + 66), (this + 64), v2))
  {
    return 3;
  }

  kdebug_trace();
  if (ZinBarUsage::HasBarIdForBarIdType(this + 64, 8))
  {
    if ((*(this + 320) & 1) == 0)
    {
      *(this + 159) = 0;
      *(this + 314) = 0;
      *(this + 320) = 1;
    }

    *(this + 38) = 0;
    *(this + 156) = 0;
    *(this + 156) = ZinBarUsage::GetBarIdForBarIdType(this + 64, 8);
  }

  GetMemoryPoolsConfig(*(this + 24), v7);
  inited = ZinIrRegAllocUtil::ZinIrInitAneMemoryConfig(*(this + 1), this + 64, this + 440, v7);
  if (!inited)
  {
    ZinIrFactoryJIT::ZinIrFactoryJIT(v6, *(this + 24), this + 384, *(this + 102), *(this + 52), *(this + 53), *(this + 54), this + 440, *(this + 536), *(this + 69), *(this + 70), *(this + 7));
  }

  v3 = inited;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinCompilerCoreJIT::BuildLayerGraph();
  }

  return v3;
}

void sub_1A6929B64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  ZinIrCompilerParameters::~ZinIrCompilerParameters(va);
  if (SLOBYTE(STACK[0x3FF]) < 0)
  {
    operator delete(STACK[0x3E8]);
  }

  std::__tree<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::__map_value_compare<ZinIr4CCFormat,std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>,std::less<ZinIr4CCFormat>,true>,std::allocator<std::__value_type<ZinIr4CCFormat,std::vector<ZinMirInterchangeInfo>>>>::destroy(&STACK[0x400], STACK[0x408]);
  v14 = STACK[0x418];
  if (STACK[0x418])
  {
    STACK[0x420] = v14;
    operator delete(v14);
  }

  ZinIrFactoryJIT::~ZinIrFactoryJIT(&STACK[0x430]);
  _Unwind_Resume(a1);
}

uint64_t ZinCompilerCoreJIT::RunRegisterAllocator(ZinCompilerCoreJIT *this, ZinIrControlFlowGraph *a2)
{
  kdebug_trace();
  if (!*(a2 + 47))
  {
    ZinAssertImpl("Must run scheduler first");
  }

  v4 = *a2;
  if (*a2 != (a2 + 8))
  {
    do
    {
      *&v28 = *(v4 + 4);
      if ((a2 + 368) == std::__tree<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,std::__map_value_compare<ZinIrBasicBlock *,std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>,ScheduleComparator,true>,std::allocator<std::__value_type<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>>>>::find<ZinIrBasicBlock *>(a2 + 360, &v28))
      {
        ZinAssertImpl("Missing basic block in the schedule_map.");
      }

      v5 = *(v4 + 1);
      if (v5)
      {
        do
        {
          v6 = v5;
          v5 = *v5;
        }

        while (v5);
      }

      else
      {
        do
        {
          v6 = *(v4 + 2);
          v7 = *v6 == v4;
          v4 = v6;
        }

        while (!v7);
      }

      v4 = v6;
    }

    while (v6 != (a2 + 8));
  }

  NumAnesUsed = ZinBondedUtils::GetNumAnesUsed(a2, *(this + 1));
  std::vector<std::unique_ptr<ZinIrLocalRegAlloc>>::reserve(this + 26, NumAnesUsed);
  if (NumAnesUsed)
  {
    if (NumAnesUsed == 1)
    {
      std::map<ZinIrBasicBlock *,std::vector<ZinIrOpLayer *>,ScheduleComparator,std::allocator<std::pair<ZinIrBasicBlock * const,std::vector<ZinIrOpLayer *>>>>::map[abi:ne200100](&v27, a2 + 360);
    }

    else
    {
      ZinBondedUtils::GetScheduleMapForAne(a2 + 45, 0, &v27);
    }

    ZinIrMemoryPools::GetPrivatePools(this + 55, 0);
    operator new();
  }

  if ((*(*(this + 2) + 124) & 0x10) != 0)
  {
    ZinMirValidateMirInfo::ZinMirValidateMirInfo(&v26, a2);
    v9 = *(this + 2);
    if (*(v9 + 47) >= 0)
    {
      v10 = *(v9 + 47);
    }

    else
    {
      v10 = *(v9 + 32);
    }

    v11 = &v25;
    std::string::basic_string[abi:ne200100](&v25, v10 + 9);
    if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v25.__r_.__value_.__r.__words[0];
    }

    if (v10)
    {
      v14 = *(v9 + 24);
      v13 = (v9 + 24);
      v12 = v14;
      if (v13[23] >= 0)
      {
        v15 = v13;
      }

      else
      {
        v15 = v12;
      }

      memmove(v11, v15, v10);
    }

    strcpy(v11 + v10, ".tensors_");
    ReplaceUnsupportedCharWithUnderscore(*(this + 24) + 40, &v24);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v24;
    }

    else
    {
      v16 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v18 = std::string::append(&v25, v16, size);
    v19 = *&v18->__r_.__value_.__l.__data_;
    v27.__r_.__value_.__r.__words[2] = v18->__r_.__value_.__r.__words[2];
    *&v27.__r_.__value_.__l.__data_ = v19;
    v18->__r_.__value_.__l.__size_ = 0;
    v18->__r_.__value_.__r.__words[2] = 0;
    v18->__r_.__value_.__r.__words[0] = 0;
    v20 = std::string::append(&v27, ".json", 5uLL);
    v21 = *&v20->__r_.__value_.__l.__data_;
    v29 = v20->__r_.__value_.__r.__words[2];
    v28 = v21;
    v20->__r_.__value_.__l.__size_ = 0;
    v20->__r_.__value_.__r.__words[2] = 0;
    v20->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v27.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v24.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v24.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v25.__r_.__value_.__l.__data_);
    }

    ZinIrHalH13g::~ZinIrHalH13g(&v26);
    if (SHIBYTE(v29) < 0)
    {
      operator delete(v28);
    }
  }

  std::string::basic_string[abi:ne200100]<0>(&v28, "after_reg_alloc");
  ZinIrCompilerParameters::ZinIrCompilerParameters(&v23, *(*(this + 1) + 8));
  ZinVisualization::CreateDotGraphAndLogConditionally(a2, &v28, &v23, *(this + 24) + 40, 16);
  ZinIrCompilerParameters::~ZinIrCompilerParameters(&v23);
  if (SHIBYTE(v29) < 0)
  {
    operator delete(v28);
  }

  kdebug_trace();
  return 0;
}

void sub_1A692A090(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11)
{
  if (*(v11 - 105) < 0)
  {
    operator delete(*(v11 - 128));
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinCompilerCoreJIT::AddConstSymbolsToComputeProgram(ZinObjectGeneration **this)
{
  v28[64] = *MEMORY[0x1E69E9840];
  ComputeMutableProgramWrapper = ZinObjectGeneration::GetComputeMutableProgramWrapper(this[41]);
  v4 = this[62];
  v3 = this[63];
  if (v3 == v4 || !*(*(*v4 + 1) + 32))
  {
    return 0;
  }

  v5 = ComputeMutableProgramWrapper;
  v6 = *(this[24] + 344);
  while (1)
  {
    v7 = *v4;
    if (!*(*v4 + 31))
    {
      ZinAssertImpl("const symbol must have size > 0\n");
    }

    if (ZinIrSymbol::GetMemType(*v4) && ZinIrSymbol::GetMemType(v7) != 1)
    {
      break;
    }

    v8 = *(*(v7 + 1) + 120);
    v9 = v7 + 224;
    v10 = *(v7 + 3);
    if (v6)
    {
      TensorDesc = ZinIrSymbol::Descriptor::GetTensorDesc((v7 + 216));
      v27[0] = *TensorDesc;
      v12 = TensorDesc[4];
      v14 = TensorDesc[1];
      v13 = TensorDesc[2];
      v27[3] = TensorDesc[3];
      v27[4] = v12;
      v27[1] = v14;
      v27[2] = v13;
      v15 = TensorDesc[8];
      v17 = TensorDesc[5];
      v16 = TensorDesc[6];
      v27[7] = TensorDesc[7];
      v27[8] = v15;
      v27[5] = v17;
      v27[6] = v16;
      v18 = TensorDesc[12];
      v20 = TensorDesc[9];
      v19 = TensorDesc[10];
      v27[11] = TensorDesc[11];
      v27[12] = v18;
      v27[9] = v20;
      v27[10] = v19;
      v21 = v7 + 224;
      if (*(v7 + 247) < 0)
      {
        v21 = *v9;
      }

      NextStabTypeno = ZinComputeMutableProgramWrapper::GetNextStabTypeno(v5);
      Stab = ZinTensorDescriptorGetStab(v27, v21, NextStabTypeno, v28, 0x200uLL);
      if (Stab)
      {
        v25 = Stab;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinCompilerCoreJIT::AddConstSymbolsToComputeProgram();
        }

        if (v25 == 14002 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinCompilerCoreJIT::AddConstSymbolsToComputeProgram();
        }

        goto LABEL_26;
      }

      v26[0] = 0x8000000000;
      HIWORD(v26[0]) = *ZinComputeMutableProgramWrapper::GetNextStabTypeno(v5);
      v26[1] = v10;
      if (ZinComputeMutableProgramWrapper::AddSymbol(v5, 0, v26, v28, 0, 0, 0))
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinObjectGeneration::AddBaseTypes();
        }

LABEL_26:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinCompilerCoreJIT::AddConstSymbolsToComputeProgram();
        }

        return 3;
      }
    }

    v28[0] = 0xF00000000;
    v28[1] = v10;
    if (*(v7 + 247) < 0)
    {
      v9 = *v9;
    }

    if (ZinComputeMutableProgramWrapper::AddSymbol(v5, v8, v28, v9, 0, *(v7 + 31), 0))
    {
      goto LABEL_26;
    }

    if (++v4 == v3)
    {
      return 0;
    }
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinCompilerCoreJIT::AddConstSymbolsToComputeProgram();
  }

  return 3;
}

uint64_t ZinCompilerCoreJIT::CompileProcedure(ZinCompilerCoreJIT *this)
{
  if (CFArrayGetCount(*(*(this + 7) + 8)) > 0)
  {
    return 3;
  }

  v3 = this + 384;
  if (*(this + 407) < 0)
  {
    v3 = *v3;
  }

  v4 = CFStringCreateWithCString(0, v3, 0x8000100u);
  *(this + 43) = ZinIrCompilationStatus::AddNetwork(*(this + 7), v4);
  CFRelease(v4);
  v5 = (*(*this + 24))(this);
  if (v5)
  {
    v2 = v5;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCompilerCoreJIT::CompileProcedure();
    }

    return v2;
  }

  CFGraph = ZinIrContext::GetCFGraph(*(this + 24), 0);
  ZinIrContext::GetParameters(v23, *(this + 24));
  v7 = ZinMirANEAssignment::Execute(&v25, CFGraph, v23);
  v2 = v7;
  if (v24 < 0)
  {
    operator delete(v23[2]);
    if (v2)
    {
LABEL_10:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCompilerCoreJIT::CompileProcedure();
      }

      return v2;
    }
  }

  else if (v7)
  {
    goto LABEL_10;
  }

  v8 = (*(*this + 56))(this, CFGraph);
  if (v8)
  {
    v2 = v8;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCompilerCoreJIT::CompileProcedure();
    }

    return v2;
  }

  v9 = ZinCompilerCore::ValidateMirInfo(this, CFGraph);
  if (v9)
  {
    v2 = v9;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCompilerCoreJIT::CompileProcedure();
    }

    return v2;
  }

  ZinMirEnableDoubleRateMode(CFGraph, *(this + 1));
  ZinMirEnableAcceleratedTexturing(CFGraph, *(this + 1));
  if (*(this + 568) != 1)
  {
    goto LABEL_30;
  }

  v11 = ZinCompilerCore::RunHazardAnalysis(this, CFGraph);
  if (v11)
  {
    v2 = v11;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCompilerCoreJIT::CompileProcedure();
    }

    return v2;
  }

  v12 = ZinCompilerCore::RunRemoteDependencyAnalysis(this, CFGraph);
  if (v12)
  {
    v2 = v12;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCompilerCoreJIT::CompileProcedure();
    }

    return v2;
  }

  v13 = ZinCompilerCore::RunPieceGeneration(this, CFGraph);
  if (v13)
  {
    v2 = v13;
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      ZinCompilerCoreJIT::CompileProcedure();
    }
  }

  else
  {
LABEL_30:
    v14 = *(this + 26);
    if (*(this + 27) != v14)
    {
      v15 = 0;
      do
      {
        ZinIrContext::SetPrivateMemoryPools(*(this + 24), v15, *(v14 + 8 * v15) + 112);
        ++v15;
        v14 = *(this + 26);
      }

      while (v15 < (*(this + 27) - v14) >> 3);
    }

    v16 = ZinCompilerCore::DumpDebugProfilingInfo(this, CFGraph);
    if (v16)
    {
      v2 = v16;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinCompilerCoreJIT::CompileProcedure();
      }
    }

    else
    {
      if (*(this + 568) == 1)
      {
        ZinCompilerCoreJIT::RunCachePrefetchLegalization(this, CFGraph);
      }

      v17 = ZinCompilerCore::RunContextSwitch(this, CFGraph);
      if (v17)
      {
        v2 = v17;
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          ZinCompilerCoreJIT::CompileProcedure();
        }
      }

      else
      {
        v18 = (*(*this + 64))(this);
        if (v18)
        {
          v2 = v18;
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
          {
            ZinCompilerCoreJIT::CompileProcedure();
          }
        }

        else
        {
          v19 = ZinCompilerCore::QualifyOnImbalanceRatio(this, CFGraph);
          if (v19)
          {
            v2 = v19;
            if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
            {
              ZinCompilerCoreJIT::CompileProcedure();
            }
          }

          else
          {
            v20 = ZinCompilerCore::DumpLayerStats(this, CFGraph);
            if (v20)
            {
              v2 = v20;
              if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
              {
                ZinCompilerCoreJIT::CompileProcedure();
              }
            }

            else
            {
              v21 = ZinCompilerCoreJIT::AddConstSymbolsToComputeProgram(this);
              if (v21)
              {
                v2 = v21;
                if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                {
                  ZinCompilerCoreJIT::CompileProcedure();
                }
              }

              else
              {
                v22 = ZinCompilerCore::RunCodeGenObjectGen(this);
                if (v22)
                {
                  v2 = v22;
                  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    ZinCompilerCoreJIT::CompileProcedure();
                  }
                }

                else if (CFArrayGetCount(*(*(this + 7) + 8)) <= 0)
                {
                  v2 = ZinCompilerCore::SetLiveIOAttributes(this);
                  if (v2 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
                  {
                    ZinCompilerCoreJIT::CompileProcedure();
                  }
                }

                else
                {
                  return 0;
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1A692A85C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t ZinCompilerCoreJIT::RunCachePrefetchLegalization(ZinCompilerCoreJIT *this, ZinIrControlFlowGraph *a2)
{
  v2 = *(this + 1);
  if (*(*v2 + 1337) == 1 && (*(v2[1] + 162) & 1) == 0)
  {
    v3 = *(a2 + 49);
    v4 = *(a2 + 48);
    if (v3 == v4)
    {
      ZinAssertImpl("Must run scheduler first");
    }

    while (v3 != v4)
    {
      v5 = *(v3 - 8);
      v3 -= 8;
      if (ZinIrOpLayer::IsANELayer(v5))
      {
        v4 = v3 + 8;
        break;
      }
    }

    v6 = *(*(v4 - 8) + 520);
    *(v6 + 1152) = 0u;
    *(v6 + 1136) = 0u;
    *(v6 + 1120) = 0u;
    *(v6 + 1165) = 0u;
    *(v6 + 1181) = 1;
    *(v6 + 1190) = 0;
    *(v6 + 1182) = 0;
  }

  return 0;
}

uint64_t ZinCompilerCoreJIT::SetLiveIORankMap(ZinCompilerCoreJIT *this, const ZinIrLiveIORankMaps *a2)
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    ZinCompilerCoreJIT::SetLiveIORankMap();
  }

  return 3;
}

void ZinCompilerCoreJIT::~ZinCompilerCoreJIT(ZinCompilerCoreJIT *this)
{
  *this = &unk_1F19F0888;
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  v3 = *(this + 61);
  *(this + 61) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 60);
  *(this + 60) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::__hash_table<std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::unordered_map<MemType,std::unique_ptr<ZinIrMemoryPool>>>,std::__unordered_map_hasher<ZinNamedType<unsigned long,AneIndexTag>,std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::unordered_map<MemType,std::unique_ptr<ZinIrMemoryPool>>>,std::hash<ZinNamedType<unsigned long,AneIndexTag>>,std::equal_to<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::__unordered_map_equal<ZinNamedType<unsigned long,AneIndexTag>,std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::unordered_map<MemType,std::unique_ptr<ZinIrMemoryPool>>>,std::equal_to<ZinNamedType<unsigned long,AneIndexTag>>,std::hash<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::unordered_map<MemType,std::unique_ptr<ZinIrMemoryPool>>>>>::~__hash_table(this + 440);
  if (*(this + 407) < 0)
  {
    operator delete(*(this + 48));
  }

  ZinCompilerCore::~ZinCompilerCore(this);
}

{
  *this = &unk_1F19F0888;
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  v3 = *(this + 61);
  *(this + 61) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 60);
  *(this + 60) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::__hash_table<std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::unordered_map<MemType,std::unique_ptr<ZinIrMemoryPool>>>,std::__unordered_map_hasher<ZinNamedType<unsigned long,AneIndexTag>,std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::unordered_map<MemType,std::unique_ptr<ZinIrMemoryPool>>>,std::hash<ZinNamedType<unsigned long,AneIndexTag>>,std::equal_to<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::__unordered_map_equal<ZinNamedType<unsigned long,AneIndexTag>,std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::unordered_map<MemType,std::unique_ptr<ZinIrMemoryPool>>>,std::equal_to<ZinNamedType<unsigned long,AneIndexTag>>,std::hash<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::unordered_map<MemType,std::unique_ptr<ZinIrMemoryPool>>>>>::~__hash_table(this + 440);
  if (*(this + 407) < 0)
  {
    operator delete(*(this + 48));
  }

  ZinCompilerCore::~ZinCompilerCore(this);

  JUMPOUT(0x1AC55A070);
}

{
  *this = &unk_1F19F0888;
  v2 = *(this + 62);
  if (v2)
  {
    *(this + 63) = v2;
    operator delete(v2);
  }

  v3 = *(this + 61);
  *(this + 61) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(this + 60);
  *(this + 60) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  std::__hash_table<std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::unordered_map<MemType,std::unique_ptr<ZinIrMemoryPool>>>,std::__unordered_map_hasher<ZinNamedType<unsigned long,AneIndexTag>,std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::unordered_map<MemType,std::unique_ptr<ZinIrMemoryPool>>>,std::hash<ZinNamedType<unsigned long,AneIndexTag>>,std::equal_to<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::__unordered_map_equal<ZinNamedType<unsigned long,AneIndexTag>,std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::unordered_map<MemType,std::unique_ptr<ZinIrMemoryPool>>>,std::equal_to<ZinNamedType<unsigned long,AneIndexTag>>,std::hash<ZinNamedType<unsigned long,AneIndexTag>>,true>,std::allocator<std::__hash_value_type<ZinNamedType<unsigned long,AneIndexTag>,std::unordered_map<MemType,std::unique_ptr<ZinIrMemoryPool>>>>>::~__hash_table(this + 440);
  if (*(this + 407) < 0)
  {
    operator delete(*(this + 48));
  }

  ZinCompilerCore::~ZinCompilerCore(this);
}

void ZinCompilerCoreJIT::BuildLayerGraph()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

void ZinCompilerCoreJIT::RunRegisterAllocator()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

void ZinCompilerCoreJIT::AddConstSymbolsToComputeProgram()
{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

{
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void ZinCompilerCoreJIT::CompileProcedure()
{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

{
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_0_3();
  OUTLINED_FUNCTION_2_0(&dword_1A617D000, MEMORY[0x1E69E9C10], v0, "Function call to %s failed in %s:%u", v1, v2, v3, v4);
}

uint64_t ZinIrDeviceMesh::GetNumDies(unsigned __int16 **this)
{
  v1 = *(this + 12);
  v2 = *this;
  if (v1 > this[1] - *this)
  {
    ZinAssertImpl("Invalid affinity axis");
  }

  if (!*(this + 12))
  {
    return 1;
  }

  v3 = &v2[v1];
  LODWORD(result) = 1;
  do
  {
    v5 = *v2++;
    result = (result * v5);
  }

  while (v2 != v3);
  return result;
}

uint64_t ZinIrDeviceMesh::GetNumAnesOnDie(ZinIrDeviceMesh *this)
{
  v1 = *(this + 12);
  v2 = *(this + 1);
  if (v1 > (v2 - *this) >> 1)
  {
    ZinAssertImpl("Invalid affinity axis");
  }

  v3 = (*this + 2 * v1);
  result = 1;
  while (v3 != v2)
  {
    v5 = *v3++;
    result = (result * v5);
  }

  return result;
}

BOOL ZinMemCacheUtil::MemoryAllocationTracker::IntersectOrAdjacent(unint64_t *a1, unint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 <= v2)
  {
    v4 = *a2;
    v5 = a2[1];
    if ((*a2 > v5 || v4 >= v2 || v3 >= v5) && v3 != v5)
    {
      return v2 == v4;
    }

    return 1;
  }

  if (v3 == a2[1])
  {
    return 1;
  }

  v4 = *a2;
  return v2 == v4;
}

void ZinMemCacheUtil::MemoryAllocationTracker::AddChunk(uint64_t **a1, __int128 *a2)
{
  v20 = *a2;
  v21 = *(a2 + 2);
  __p = 0;
  v18 = 0;
  v19 = 0;
  v3 = (a1 + 1);
  v4 = *a1;
  if (*a1 == (a1 + 1))
  {
    goto LABEL_29;
  }

  do
  {
    v5 = *(&v20 + 1);
    v6 = v20;
    if (v20 <= *(&v20 + 1))
    {
      v7 = v4[4];
      v8 = v4[5];
      v10 = v20 < v8;
      if (v7 >= *(&v20 + 1))
      {
        v10 = 0;
      }

      v11 = v7 <= v8 && v10;
      if (v20 == v8)
      {
        v9 = v4[5];
      }

      else
      {
        v9 = v4[5];
        if (!v11)
        {
LABEL_12:
          v9 = v8;
          v12 = *(&v20 + 1) == v7;
          v7 = *(&v20 + 1);
          if (!v12)
          {
            goto LABEL_20;
          }
        }
      }
    }

    else
    {
      v7 = v4[4];
      v8 = v4[5];
      v9 = v20;
      if (v20 != v8)
      {
        goto LABEL_12;
      }
    }

    if (v7 < v20)
    {
      v6 = v7;
    }

    if (*(&v20 + 1) <= v9)
    {
      v5 = v9;
    }

    *&v20 = v6;
    *(&v20 + 1) = v5;
    std::vector<SplitPlanConfig>::push_back[abi:ne200100](&__p, v4 + 2);
LABEL_20:
    v13 = v4[1];
    if (v13)
    {
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13);
    }

    else
    {
      do
      {
        v14 = v4[2];
        v12 = *v14 == v4;
        v4 = v14;
      }

      while (!v12);
    }

    v4 = v14;
  }

  while (v14 != v3);
  v15 = __p;
  v16 = v18;
  while (v15 != v16)
  {
    a1[3] = (a1[3] + *v15 - v15[1]);
    std::__tree<ZinSpaceRange>::__erase_unique<ZinSpaceRange>(a1, v15);
    v15 += 3;
  }

LABEL_29:
  a1[3] = (a1[3] + *(&v20 + 1) - v20);
  std::__tree<ZinSpaceRange>::__emplace_unique_key_args<ZinSpaceRange,ZinSpaceRange const&>(a1, &v20, &v20);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }
}

void sub_1A692B908(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t **ZinMemCacheUtil::MemoryAllocationTracker::RemoveChunk(uint64_t **result, unint64_t *a2)
{
  v2 = a2;
  v4 = (result + 1);
  v3 = result[1];
  if (v3)
  {
    v5 = a2[1];
    do
    {
      v6 = v3[4];
      if (v6 == v5)
      {
        v6 = v3[5];
      }

      v25 = v5 > v6;
      v7 = v5 > v6;
      if (!v25)
      {
        v4 = v3;
      }

      v3 = v3[v7];
    }

    while (v3);
  }

  if (v4 != *result)
  {
    v8 = *v4;
    if (*v4)
    {
      do
      {
        v9 = v8;
        v8 = v8[1];
      }

      while (v8);
    }

    else
    {
      v10 = v4;
      do
      {
        v9 = v10[2];
        v11 = *v9 == v10;
        v10 = v9;
      }

      while (v11);
    }

    v34 = 0;
    v35 = 0;
    v13 = v9[4];
    v14 = v9[5];
    v12 = (v9 + 4);
    v36 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    if (v13 <= v14)
    {
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v29 = v2;
      v30 = result;
      do
      {
        v24 = *v2;
        v23 = v2[1];
        v25 = *v2 >= v14 || v24 > v23;
        if (v25 || v13 >= v23)
        {
          break;
        }

        if (v24 > v13)
        {
          v19 = v24 - v13;
          v18 = *v2;
          v17 = v13;
          v15 = 1;
        }

        if (v14 > v23)
        {
          v22 = v14 - v23;
          v21 = v14;
          v20 = v2[1];
          v16 = 1;
        }

        if (v9 == *result)
        {
          v34 = v17;
          v35 = v18;
          v36 = v19;
          v31 = v20;
          v32 = v21;
          v33 = v22;
          result[3] = (result[3] + v13 - v14);
          std::__tree<ZinSpaceRange>::__erase_unique<ZinSpaceRange>(v30, v12);
          result = v30;
          if ((v15 & 1) == 0)
          {
LABEL_35:
            if (v16)
            {
              result[3] = (result[3] + v21 - v20);
              return std::__tree<ZinSpaceRange>::__emplace_hint_unique_key_args<ZinSpaceRange,ZinSpaceRange const&>(result, v4, &v31, &v31);
            }

            return result;
          }

LABEL_34:
          result[3] = (result[3] + v18 - v17);
          std::__tree<ZinSpaceRange>::__emplace_hint_unique_key_args<ZinSpaceRange,ZinSpaceRange const&>(v30, v4, &v34, &v34);
          result = v30;
          goto LABEL_35;
        }

        v27 = *v9;
        if (*v9)
        {
          do
          {
            v28 = v27;
            v27 = v27[1];
          }

          while (v27);
        }

        else
        {
          do
          {
            v28 = v9[2];
            v11 = *v28 == v9;
            v9 = v28;
          }

          while (v11);
        }

        result[3] = (result[3] + v13 - v14);
        std::__tree<ZinSpaceRange>::__erase_unique<ZinSpaceRange>(v30, v12);
        v2 = v29;
        result = v30;
        v13 = v28[4];
        v14 = v28[5];
        v12 = (v28 + 4);
        v9 = v28;
      }

      while (v13 <= v14);
      v34 = v17;
      v35 = v18;
      v36 = v19;
      v31 = v20;
      v32 = v21;
      v33 = v22;
      if ((v15 & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }
  }

  return result;
}

unint64_t ZinMemCacheUtil::MemoryAllocationTracker::SizeOfChunkNotYetAllocated(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v4 = (a1 + 1);
  v5 = *a1;
  if (*a1 == a1 + 1)
  {
    v10 = 0;
    return v3 - (v2 + v10);
  }

  do
  {
    if (ZinMemCacheUtil::MemoryAllocationTracker::IntersectOrAdjacent(a2, v5 + 4))
    {
      if (*(v5 + 4) < v2)
      {
        v2 = *(v5 + 4);
      }

      if (v3 <= *(v5 + 5))
      {
        v3 = *(v5 + 5);
      }

      std::vector<SplitPlanConfig>::push_back[abi:ne200100](&v15, v5 + 2);
    }

    v7 = *(v5 + 1);
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
        v8 = *(v5 + 2);
        v9 = *v8 == v5;
        v5 = v8;
      }

      while (!v9);
    }

    v5 = v8;
  }

  while (v8 != v4);
  if (v15 == v16)
  {
    v10 = 0;
    if (!v15)
    {
      return v3 - (v2 + v10);
    }

LABEL_21:
    v16 = v15;
    operator delete(v15);
    return v3 - (v2 + v10);
  }

  v10 = 0;
  v11 = v15;
  do
  {
    v13 = *v11;
    v12 = v11[1];
    v11 += 3;
    v10 = v12 + v10 - v13;
  }

  while (v11 != v16);
  if (v15)
  {
    goto LABEL_21;
  }

  return v3 - (v2 + v10);
}

void sub_1A692BC6C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *ZinMemCacheUtil::MemCacheAllocationState::GetAllocationsForSymbol@<X0>(const ZinIrSymbol *a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  *&v12 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 4);
  AlignPower2 = ZinLastAlignPower2(v6, a2);
  v8 = ZinAlignPower2(*(a1 + 31) + v6, a2);
  *&v10 = AlignPower2;
  *(&v10 + 1) = v8;
  v11 = v8 - AlignPower2;
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  return std::vector<ZinSpaceRange>::__init_with_size[abi:ne200100]<ZinSpaceRange const*,ZinSpaceRange const*>(a3, &v10, &v12, 1uLL);
}

void ZinMemCacheUtil::MemCacheAllocationState::RemoveAllocation(ZinMemCacheUtil::MemCacheAllocationState *this, const ZinIrSymbol *a2, uint64_t a3)
{
  LOBYTE(v17) = ZinIrSymbol::GetBarId(a2);
  v17 = v17;
  if (!std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(this, &v17))
  {
    v13 = &v14;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v18 = &v17;
    v6 = std::__hash_table<std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(this, &v17, &std::piecewise_construct, &v18);
    v7 = v6 + 4;
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy((v6 + 3), v6[4]);
    v8 = v14;
    v6[3] = &v14;
    v6[4] = v8;
    v9 = v15;
    v6[5] = v15;
    if (v9)
    {
      v8[2] = v7;
      v13 = &v14;
      v14 = 0;
      v15 = 0;
      v8 = 0;
    }

    else
    {
      v6[3] = v7;
    }

    v6[6] = v16;
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v13, v8);
  }

  v13 = &v17;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(this, &v17, &std::piecewise_construct, &v13);
  ZinMemCacheUtil::MemCacheAllocationState::GetAllocationsForSymbol(a2, a3, &v13);
  v11 = v13;
  v12 = v14;
  if (v13 != v14)
  {
    do
    {
      ZinMemCacheUtil::MemoryAllocationTracker::RemoveChunk(v10 + 3, v11);
      v11 += 3;
    }

    while (v11 != v12);
    v11 = v13;
  }

  if (v11)
  {
    v14 = v11;
    operator delete(v11);
  }
}

void ZinMemCacheUtil::MemCacheAllocationState::AddAllocation(ZinMemCacheUtil::MemCacheAllocationState *this, const ZinIrSymbol *a2, uint64_t a3)
{
  LOBYTE(v17) = ZinIrSymbol::GetBarId(a2);
  v17 = v17;
  if (!std::__hash_table<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,CpAllocUtils::AllocationType>>>::find<unsigned long long>(this, &v17))
  {
    v13 = &v14;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v18 = &v17;
    v6 = std::__hash_table<std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(this, &v17, &std::piecewise_construct, &v18);
    v7 = v6 + 4;
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy((v6 + 3), v6[4]);
    v8 = v14;
    v6[3] = &v14;
    v6[4] = v8;
    v9 = v15;
    v6[5] = v15;
    if (v9)
    {
      v8[2] = v7;
      v13 = &v14;
      v14 = 0;
      v15 = 0;
      v8 = 0;
    }

    else
    {
      v6[3] = v7;
    }

    v6[6] = v16;
    std::__tree<std::__value_type<double,double>,std::__map_value_compare<double,std::__value_type<double,double>,std::less<double>,true>,std::allocator<std::__value_type<double,double>>>::destroy(&v13, v8);
  }

  v13 = &v17;
  v10 = std::__hash_table<std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(this, &v17, &std::piecewise_construct, &v13);
  ZinMemCacheUtil::MemCacheAllocationState::GetAllocationsForSymbol(a2, a3, &v13);
  v11 = v13;
  v12 = v14;
  if (v13 != v14)
  {
    do
    {
      ZinMemCacheUtil::MemoryAllocationTracker::AddChunk(v10 + 3, v11);
      v11 = (v11 + 24);
    }

    while (v11 != v12);
    v11 = v13;
  }

  if (v11)
  {
    v14 = v11;
    operator delete(v11);
  }
}

uint64_t ZinMemCacheUtil::MemCacheAllocationState::CalculateSize(ZinMemCacheUtil::MemCacheAllocationState *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  do
  {
    result += v1[6];
    v1 = *v1;
  }

  while (v1);
  return result;
}

void ZinMemCacheUtil::AddAllocsToActiveTensors(ZinMemCacheUtil *this, const ZinANELayer *a2, ZinMemCacheUtil::MemCacheAllocationState *a3)
{
  Hal = ZinIrTarget::GetHal(*(*(this + 4) + 200));
  v7 = *((*(*Hal + 16))(Hal) + 560);
  v8 = *(this + 65);
  if (!*(v8 + 1268))
  {
    ZinMemCacheUtil::MemCacheAllocationState::AddAllocation(a2, *(v8 + 800), v7);
  }

  v9 = *(this + 65);
  v10 = v8 + 608;
  v16 = 0;
  if (!v9[1265])
  {
    if (ZinMemSourceIndexTranslator::GetDMASrcIndex(this, 0, &v16, v6))
    {
      goto LABEL_17;
    }

    ZinMemCacheUtil::MemCacheAllocationState::AddAllocation(a2, *(v10 + 80 * v16 + 32), v7);
    v9 = *(this + 65);
  }

  if (v9[1270])
  {
    goto LABEL_9;
  }

  if (ZinMemSourceIndexTranslator::GetDMASrcIndex(this, 1, &v16, v6))
  {
LABEL_17:
    ZinAssertImpl("Invalid source index");
  }

  ZinMemCacheUtil::MemCacheAllocationState::AddAllocation(a2, *(v10 + 80 * v16 + 32), v7);
  v9 = *(this + 65);
LABEL_9:
  if (!v9[1269])
  {
    (*(*this + 152))(&v14, this);
    v11 = *(v14 + 160);
    if (!v11 || (v12 = *(v11 + 40), v12 == *(v11 + 48)))
    {
      v13 = 0;
    }

    else
    {
      v13 = *v12;
    }

    ZinMemCacheUtil::MemCacheAllocationState::AddAllocation(a2, v13, v7);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_1A692C22C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

void ZinMemCacheUtil::RemoveDepriAndDropsFromActiveTensors(ZinMemCacheUtil *this, const ZinANELayer *a2, ZinMemCacheUtil::MemCacheAllocationState *a3)
{
  Hal = ZinIrTarget::GetHal(*(*(this + 4) + 200));
  v7 = *((*(*Hal + 16))(Hal) + 560);
  v8 = *(this + 65);
  if ((*(v8 + 1268) & 0xFE) == 2)
  {
    ZinMemCacheUtil::MemCacheAllocationState::RemoveAllocation(a2, *(v8 + 800), v7);
  }

  v9 = *(this + 65);
  v10 = v8 + 608;
  v16 = 0;
  if ((v9[1265] & 0xFE) == 2)
  {
    if (ZinMemSourceIndexTranslator::GetDMASrcIndex(this, 0, &v16, v6))
    {
      goto LABEL_18;
    }

    ZinMemCacheUtil::MemCacheAllocationState::RemoveAllocation(a2, *(v10 + 80 * v16 + 32), v7);
    v9 = *(this + 65);
  }

  if ((v9[1270] & 0xFE) == 2)
  {
    if (!ZinMemSourceIndexTranslator::GetDMASrcIndex(this, 1, &v16, v6))
    {
      ZinMemCacheUtil::MemCacheAllocationState::RemoveAllocation(a2, *(v10 + 80 * v16 + 32), v7);
      v9 = *(this + 65);
      goto LABEL_9;
    }

LABEL_18:
    ZinAssertImpl("Invalid source index");
  }

LABEL_9:
  if (v9[1200] != 1 && (v9[1269] & 0xFE) == 2)
  {
    (*(*this + 152))(&v14, this);
    v11 = *(v14 + 160);
    if (!v11 || (v12 = *(v11 + 40), v12 == *(v11 + 48)))
    {
      v13 = 0;
    }

    else
    {
      v13 = *v12;
    }

    ZinMemCacheUtil::MemCacheAllocationState::RemoveAllocation(a2, v13, v7);
    if (v15)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v15);
    }
  }
}

void sub_1A692C3FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a11);
  }

  _Unwind_Resume(exception_object);
}

unint64_t ZinMemCacheUtil::CalculateExpectedMemCacheSize(ZinIrOpLayer ***a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 1065353216;
  v1 = *a1;
  v2 = a1[1];
  if (*a1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0;
    do
    {
      v4 = *v1;
      if (ZinIrOpLayer::IsANELayer(*v1))
      {
        ZinMemCacheUtil::AddAllocsToActiveTensors(v4, &v10, v5);
        ZinMemCacheUtil::RemoveDepriAndDropsFromActiveTensors(v4, &v10, v6);
        v7 = v11;
        if (v11)
        {
          v8 = 0;
          do
          {
            v8 += v7[6];
            v7 = *v7;
          }

          while (v7);
        }

        else
        {
          v8 = 0;
        }

        if (v3 <= v8)
        {
          v3 = v8;
        }
      }

      ++v1;
    }

    while (v1 != v2);
  }

  std::__hash_table<std::__hash_value_type<ZinIrDimension,std::set<long>>,std::__unordered_map_hasher<ZinIrDimension,std::__hash_value_type<ZinIrDimension,std::set<long>>,std::hash<ZinIrDimension>,std::equal_to<ZinIrDimension>,true>,std::__unordered_map_equal<ZinIrDimension,std::__hash_value_type<ZinIrDimension,std::set<long>>,std::equal_to<ZinIrDimension>,std::hash<ZinIrDimension>,true>,std::allocator<std::__hash_value_type<ZinIrDimension,std::set<long>>>>::~__hash_table(&v10);
  return v3;
}

uint64_t ZinMemCacheUtil::IsEnablingNonSelfReplaceableForMemCache(ZinMemCacheUtil *this, const ZinIrHalParameters *a2, const ZinIrCompilerParameters *a3)
{
  v4 = *(a2 + 455);
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 55);
  }

  if (!v4 && *(this + 1670) == 1 && !std::string::compare((this + 1408), "Global"))
  {
    v5 = 1;
  }

  else
  {
    v5 = *(a2 + 692);
  }

  return v5 & 1;
}

uint64_t std::__tree<ZinSpaceRange>::__emplace_unique_key_args<ZinSpaceRange,ZinSpaceRange const&>(uint64_t **a1, unint64_t *a2, uint64_t a3)
{
  v3 = *std::__tree<ZinSpaceRange>::__find_equal<ZinSpaceRange>(a1, &v5, a2);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t std::__tree<ZinSpaceRange>::__erase_unique<ZinSpaceRange>(uint64_t **a1, unint64_t *a2)
{
  v3 = std::__tree<ZinSpaceRange>::find<ZinSpaceRange>(a1, a2);
  if (a1 + 1 == v3)
  {
    return 0;
  }

  v4 = v3;
  std::__tree<ZinIrDimension>::__remove_node_pointer(a1, v3);
  operator delete(v4);
  return 1;
}

uint64_t std::__tree<ZinSpaceRange>::find<ZinSpaceRange>(uint64_t a1, unint64_t *a2)
{
  v4 = *(a1 + 8);
  v2 = a1 + 8;
  v3 = v4;
  if (!v4)
  {
    return v2;
  }

  v5 = *a2;
  v6 = a2[1];
  v7 = v2;
  do
  {
    v8 = *(v3 + 32);
    v10 = v8 == v5;
    v9 = v8 < v5;
    if (v10)
    {
      v9 = *(v3 + 40) < v6;
    }

    v10 = !v9;
    if (v9)
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v7 = v3;
    }

    v3 = *(v3 + v11);
  }

  while (v3);
  if (v7 == v2)
  {
    return v2;
  }

  v12 = *(v7 + 32);
  v13 = v6 < *(v7 + 40);
  v10 = v5 == v12;
  v14 = v5 < v12;
  if (v10)
  {
    v14 = v13;
  }

  if (v14)
  {
    return v2;
  }

  return v7;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,ZinMemCacheUtil::MemoryAllocationTracker>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
{
  v4 = *a2;
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
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

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void ZinIrPEElementWiseUnit::ZinIrPEElementWiseUnit(ZinIrPEElementWiseUnit *this, const ZinIrPEElementWiseUnitInfo *a2)
{
  ZinIrPEUnit::ZinIrPEUnit(this, a2);
  *v4 = &unk_1F19F08F8;
  ZinIrPEUnitInfo::ZinIrPEUnitInfo((v4 + 130), a2);
  *(this + 130) = &unk_1F19E5CF0;
  std::__optional_copy_base<ZinIrScaledEWUnitInfo,false>::__optional_copy_base[abi:ne200100](this + 2008, a2 + 968);
  std::__optional_copy_base<ZinIrReductionUnitInfo,false>::__optional_copy_base[abi:ne200100](this + 2120, a2 + 1080);
}

void sub_1A692C9A4(_Unwind_Exception *a1)
{
  if (*(v1 + 2112) == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo((v1 + 2008));
  }

  ZinIrPEUnitInfo::~ZinIrPEUnitInfo(v2);
  ZinIrPEUnit::~ZinIrPEUnit(v1);
  _Unwind_Resume(a1);
}

uint64_t ZinIrPEElementWiseUnit::TensorDimensions(ZinIrPEElementWiseUnit *this, const ZinIrHalParameters *a2, int8x16_t *a3, ZinIrUnitStatus *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(this + 2112) == 1)
  {
    memset(v22, 0, 24);
    ZinIrScaledEWUnit::ZinIrScaledEWUnit(v27, this + 2008, v22);
    *&v29[0] = v22;
    std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](v29);
    ZinIrUnit::SetBottomInfo(v27, this + 1);
    v8 = ZinIrScaledEWUnit::TensorDimensions(v27, a2, a3, a4);
    v27[0] = &unk_1F19EBC70;
    ZinIrUnitInfo::~ZinIrUnitInfo(v28);
    ZinIrUnit::~ZinIrUnit(v27);
    if (v8)
    {
      return v8;
    }
  }

  else
  {
    v9 = *(this + 1);
    v10 = *(v9 + 8);
    v11 = *(v9 + 24);
    a3[2].i64[0] = *(v9 + 40);
    *a3 = v10;
    a3[1] = v11;
  }

  if (*(this + 2224) != 1)
  {
    return 0;
  }

  memset(v22, 0, 24);
  ZinIrReductionUnit::ZinIrReductionUnit(v27, this + 2120, v22);
  *&v29[0] = v22;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](v29);
  v12 = **(this + 1);
  v13 = a3[1];
  *&v22[8] = *a3;
  *&v22[24] = v13;
  v16[0] = 0;
  v18 = 0;
  v19 = 0;
  __p = 0;
  v20 = 5;
  v21 = 0;
  *v22 = v12;
  *&v22[40] = a3[2].i64[0];
  *v23 = 0;
  v23[2] = 0;
  *&v23[8] = vdupq_n_s64(1uLL);
  v23[24] = 0;
  v23[44] = 0;
  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v24, v16);
  if (__p)
  {
    v18 = __p;
    operator delete(__p);
  }

  v29[2] = *&v22[32];
  v29[3] = *v23;
  v30[0] = *&v23[16];
  *(v30 + 13) = *&v23[29];
  v29[0] = *v22;
  v29[1] = *&v22[16];
  ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v31, &v24);
  memset(v15, 0, sizeof(v15));
  std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(v15, v29, &v34, 1uLL);
  if (v32)
  {
    v33 = v32;
    operator delete(v32);
  }

  ZinIrUnit::SetBottomInfo(v27, v15);
  v8 = ZinIrReductionUnit::TensorDimensions(v27, a2, a3, a4);
  *&v29[0] = v15;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](v29);
  if (v25)
  {
    v26 = v25;
    operator delete(v25);
  }

  v27[0] = &unk_1F19DC8E8;
  ZinIrUnitInfo::~ZinIrUnitInfo(v28);
  ZinIrUnit::~ZinIrUnit(v27);
  if (!v8)
  {
    return 0;
  }

  return v8;
}

void sub_1A692CC94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *__p, uint64_t a32, uint64_t a33, uint64_t a34, void *a35)
{
  v37 = *(v35 - 104);
  if (v37)
  {
    *(v35 - 96) = v37;
    operator delete(v37);
  }

  if (__p)
  {
    operator delete(__p);
  }

  ZinIrReductionUnit::~ZinIrReductionUnit(&a35);
  _Unwind_Resume(a1);
}

uint64_t ZinIrPEElementWiseUnit::CreateBroadcastLayers(ZinIrPEElementWiseUnit *this, const ZinIrTensor *a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  if (0xF0F0F0F0F0F0F0F1 * ((*(this + 2) - v2) >> 3) >= 2)
  {
    v30[0] = vdupq_n_s64(1uLL);
    v30[1] = v30[0];
    v31 = 1;
    if (InferEWOutputDimsWithImplicitBroadcast((v2 + 8), (v2 + 144), v30))
    {
      ZinAssertImpl("Cannot infer ElementWise output dimension");
    }

    ZinBroadcastLayerUtils::GetBroadcastDimensionMap(v28, (v2 + 8), v30);
    ZinBroadcastLayerUtils::GetBroadcastDimensionMap(v26, (v2 + 144), v30);
    if (v29 == 1)
    {
      if (*(a2 + 63) >= 0)
      {
        v5 = *(a2 + 63);
      }

      else
      {
        v5 = *(a2 + 6);
      }

      v6 = __p;
      std::string::basic_string[abi:ne200100](__p, v5 + 7);
      if (SBYTE7(v33) < 0)
      {
        v6 = __p[0];
      }

      if (v5)
      {
        if (*(a2 + 63) >= 0)
        {
          v7 = a2 + 40;
        }

        else
        {
          v7 = *(a2 + 5);
        }

        memmove(v6, v7, v5);
      }

      strcpy(v6 + v5, "_bcast0");
      ZinObjectNameFactory::ZinObjectNameFactory(&v25, __p);
      if (SBYTE7(v33) < 0)
      {
        operator delete(__p[0]);
      }

      v8 = *(a2 + 4);
      v9 = *(this + 1);
      v10 = v9[1];
      *__p = *v9;
      v33 = v10;
      v12 = v9[3];
      v11 = v9[4];
      v13 = v9[2];
      *(v36 + 13) = *(v9 + 77);
      v35 = v12;
      v36[0] = v11;
      v34 = v13;
      ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v37, (v9 + 6));
      v22 = 0;
      v23 = 0;
      v24 = 0;
      std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v22, __p, &v38, 1uLL);
      ZinBuilder::CreateBroadcast(v8, &v25, &v22, v28, *(a2 + 26));
    }

    if (v27 == 1)
    {
      if (*(a2 + 63) >= 0)
      {
        v14 = *(a2 + 63);
      }

      else
      {
        v14 = *(a2 + 6);
      }

      v15 = __p;
      std::string::basic_string[abi:ne200100](__p, v14 + 7);
      if (SBYTE7(v33) < 0)
      {
        v15 = __p[0];
      }

      if (v14)
      {
        if (*(a2 + 63) >= 0)
        {
          v16 = a2 + 40;
        }

        else
        {
          v16 = *(a2 + 5);
        }

        memmove(v15, v16, v14);
      }

      strcpy(v15 + v14, "_bcast1");
      ZinObjectNameFactory::ZinObjectNameFactory(&v25, __p);
      if (SBYTE7(v33) < 0)
      {
        operator delete(__p[0]);
      }

      v17 = *(a2 + 4);
      v18 = *(this + 1);
      v19 = *(v18 + 184);
      v34 = *(v18 + 168);
      v35 = v19;
      v36[0] = *(v18 + 200);
      *(v36 + 13) = *(v18 + 213);
      v20 = *(v18 + 152);
      *__p = *(v18 + 136);
      v33 = v20;
      ZinTensorAxisTypePacked::ZinTensorAxisTypePacked(&v37, (v18 + 232));
      v22 = 0;
      v23 = 0;
      v24 = 0;
      std::vector<ZinIrTensorInfo>::__init_with_size[abi:ne200100]<ZinIrTensorInfo const*,ZinIrTensorInfo const*>(&v22, __p, &v38, 1uLL);
      ZinBuilder::CreateBroadcast(v17, &v25, &v22, v26, *(a2 + 26));
    }

    if (v29 == 1)
    {
      std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(v28);
    }
  }

  return 0;
}

void sub_1A692D120(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, void *__p, uint64_t a58)
{
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&a40);
  if (__p)
  {
    a58 = __p;
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (a25 == 1)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a20);
  }

  if (a34 == 1)
  {
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a27);
  }

  _Unwind_Resume(a1);
}

void ZinIrPEElementWiseUnit::CreateReductionLayer(uint64_t a1, const ZinIrHalParameters *a2, uint64_t a3, uint64_t a4)
{
  v4 = *MEMORY[0x1E69E9840];
  if (*(a1 + 2224))
  {
    operator new();
  }

  std::__throw_bad_optional_access[abi:ne200100]();
}

void sub_1A692D530(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42)
{
  *(v44 - 216) = v43;
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100]((v44 - 216));
  v46 = *(v44 - 104);
  if (v46)
  {
    *(v44 - 96) = v46;
    operator delete(v46);
  }

  if (__p)
  {
    operator delete(__p);
  }

  ZinIrUnitStatus::~ZinIrUnitStatus(&a34);
  ZinIrScaledEWUnit::~ZinIrScaledEWUnit(&a42);
  (*(*v42 + 8))(v42);
  _Unwind_Resume(a1);
}

void sub_1A692D614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](va);
  MEMORY[0x1AC55A070](v16, v17);
  JUMPOUT(0x1A692D60CLL);
}

void ZinIrPEElementWiseUnit::CreateLayer(ZinIrPEElementWiseUnit *a1, const ZinIrHalParameters *a2, const ZinIrTensor ***a3)
{
  if (*(a1 + 2112) == 1)
  {
    operator new();
  }

  ZinIrPEUnit::CreateCommonSubLayers(a1, v61);
  v53 = 0;
  v54 = 0;
  v55.n128_u64[0] = v61[0];
  v56 = 0;
  v8 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v55);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v55, v8);
  v57 = 0;
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v45 = 0;
  v46 = 0;
  v47.n128_u64[0] = v61[1];
  v48 = 0;
  v9 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v47);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v47, v9);
  v49 = 0;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  v16.n128_u64[0] = ZinIrPEElementWiseUnit::CreateBroadcastLayers(a1, **a3);
  v16.n128_u64[1] = v10;
  v39[0] = &v59;
  v39[1] = &v51;
  std::__memberwise_forward_assign[abi:ne200100]<std::tuple<RawOrShared<ZinBroadcastLayer> &,RawOrShared<ZinBroadcastLayer> &>,std::tuple<ZinBroadcastLayer*,ZinBroadcastLayer*>,ZinBroadcastLayer*,ZinBroadcastLayer*,0ul,1ul>(v39, v16.n128_u64);
  v39[0] = 0;
  v40 = 0;
  v41 = 0;
  v42 = 0;
  v43 = 0;
  v44 = 0;
  v16.n128_u64[0] = v61[2];
  LODWORD(v17) = 0;
  v11 = RawOrShared<ZinElementWiseLayer>::unwrap_ptr(&v16);
  RawOrShared<ZinElementWiseLayer>::update_this_if_shared(&v16, v11);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v21 = 0;
  LOBYTE(v22) = 0;
  v23 = 0;
  LOBYTE(v24) = 0;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31.n128_u64[0] = v61[3];
  v32 = 0;
  v12 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v31);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v31, v12);
  v33.n128_u64[0] = v61[5];
  v34 = 0;
  v13 = RawOrShared<ZinActivationLayer>::unwrap_ptr(&v33);
  RawOrShared<ZinActivationLayer>::update_this_if_shared(&v33, v13);
  v35 = 0;
  v36 = 0;
  v37.n128_u64[0] = v61[6];
  v38 = 0;
  v14 = RawOrShared<ZinQuantLayer>::unwrap_ptr(&v37);
  RawOrShared<ZinQuantLayer>::update_this_if_shared(&v37, v14);
  if (*(a1 + 2224) == 1)
  {
    ZinIrPEElementWiseUnit::CreateReductionLayer(a1, a2, a3, &v20);
  }

  ZinPELayer::GetPostScaleAndBiasFromGOC(v15, v61[4]);
  operator new();
}

uint64_t ZinIrPEElementWiseUnit::CreateKernel(ZinIrPEUnit *a1, const ZinIrHalParameters *a2, ZinIrFileManager *a3, const ZinWeightFileInfo *a4, uint64_t a5, uint64_t a6, ZinIrUnitStatus *a7)
{
  if (a5)
  {
    ZinAssertImpl("PEElementWise does not support Espresso scale & bias format", a2, a3, a4, a5, a6, a7, v7, v8);
  }

  return ZinIrPEUnit::CreateCommonSubKernels(a1, a2, a3, a4, a7);
}

void ZinIrPEElementWiseUnit::~ZinIrPEElementWiseUnit(ZinIrKernel **this)
{
  *this = &unk_1F19F08F8;
  ZinIrPEElementWiseUnitInfo::~ZinIrPEElementWiseUnitInfo((this + 130));

  ZinIrPEUnit::~ZinIrPEUnit(this);
}

void ZinIrPEElementWiseUnit::~ZinIrPEElementWiseUnit(ZinIrPEElementWiseUnit *this)
{
  *this = &unk_1F19F08F8;
  v2 = (this + 1040);
  *(this + 130) = &unk_1F19E5CF0;
  if (*(this + 2224) == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(this + 265);
  }

  if (*(this + 2112) == 1)
  {
    ZinIrUnitInfo::~ZinIrUnitInfo(this + 251);
  }

  ZinIrPEUnitInfo::~ZinIrPEUnitInfo(v2);
  ZinIrPEUnit::~ZinIrPEUnit(this);

  JUMPOUT(0x1AC55A070);
}

uint64_t std::__memberwise_forward_assign[abi:ne200100]<std::tuple<RawOrShared<ZinBroadcastLayer> &,RawOrShared<ZinBroadcastLayer> &>,std::tuple<ZinBroadcastLayer*,ZinBroadcastLayer*>,ZinBroadcastLayer*,ZinBroadcastLayer*,0ul,1ul>(uint64_t *a1, unint64_t *a2)
{
  v9.n128_u64[0] = *a2;
  v10 = 0;
  v4 = RawOrShared<ZinBroadcastLayer>::unwrap_ptr(&v9);
  RawOrShared<ZinBroadcastLayer>::update_this_if_shared(&v9, v4);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<ZinBroadcastLayer *,std::shared_ptr<ZinBroadcastLayer>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ZinBroadcastLayer *,std::shared_ptr<ZinBroadcastLayer>>,(std::__variant_detail::_Trait)1>>(*a1, &v9);
  v7.n128_u64[0] = a2[1];
  v8 = 0;
  v5 = RawOrShared<ZinBroadcastLayer>::unwrap_ptr(&v7);
  RawOrShared<ZinBroadcastLayer>::update_this_if_shared(&v7, v5);
  std::__variant_detail::__assignment<std::__variant_detail::__traits<ZinBroadcastLayer *,std::shared_ptr<ZinBroadcastLayer>>>::__generic_assign[abi:ne200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<ZinBroadcastLayer *,std::shared_ptr<ZinBroadcastLayer>>,(std::__variant_detail::_Trait)1>>(a1[1], &v7);
  std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinBroadcastLayer *,std::shared_ptr<ZinBroadcastLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v7);
  return std::__variant_detail::__dtor<std::__variant_detail::__traits<ZinBroadcastLayer *,std::shared_ptr<ZinBroadcastLayer>>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](&v9);
}

uint64_t ZinIrSpaceToBatchUnit::ZinIrSpaceToBatchUnit(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = ZinIrUnit::ZinIrUnit(a1, a3);
  *v5 = &unk_1F19F09C0;
  v5[7] = &unk_1F1A2EA30;
  if (*(a2 + 31) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *(a2 + 8), *(a2 + 16));
  }

  else
  {
    v6 = *(a2 + 8);
    *(a1 + 80) = *(a2 + 24);
    *(a1 + 64) = v6;
  }

  v7 = *(a2 + 32);
  *(a1 + 96) = 0;
  *(a1 + 88) = v7;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>((a1 + 96), *(a2 + 40), *(a2 + 48), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 48) - *(a2 + 40)) >> 3));
  *(a1 + 120) = *(a2 + 64);
  *(a1 + 56) = &unk_1F1A33F48;
  v8 = *(a2 + 80);
  *(a1 + 144) = *(a2 + 88);
  *(a1 + 136) = v8;
  return a1;
}

uint64_t ZinIrSpaceToBatchUnit::TensorDimensions(ZinIrSpaceToBatchUnit *this, const ZinIrHalParameters *a2, ZinTensorDimensions *a3, CFArrayRef *a4)
{
  v4 = *(this + 1);
  if (*(this + 2) - v4 == 136)
  {
    result = 0;
    *(a3 + 4) = v4[5];
    v7 = v4[2];
    v9 = *(this + 34);
    v8 = *(this + 35);
    *a3 = v4[1] * v9 * v8;
    *(a3 + 1) = v7;
    v10 = v4[3] / v8;
    v11 = v4[4] / v9;
    *(a3 + 2) = v10;
    *(a3 + 3) = v11;
  }

  else
  {
    ZinIrUnitStatus::SetError(a4, @"InvalidBottomCount");
    return 3;
  }

  return result;
}

void sub_1A692E0F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *__p, uint64_t a31)
{
  std::vector<ZinIrTensorInfo>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    a31 = __p;
    operator delete(__p);
  }

  if (a15)
  {
    (*(*a15 + 16))(a15);
  }

  _Unwind_Resume(a1);
}

uint64_t ZinSpaceToBatchLayerUtils::CanBeDecomposedToReshapeTranspose(ZinSpaceToBatchLayerUtils *this, ZinSpaceToBatchLayerUtils **a2, ZinSpaceToBatchLayer *a3)
{
  if (*(this + 1984) == 1)
  {
    InputTensor = ZinIrOpLayer::GetInputTensor(a2, 0);
    v6 = (*(*a2 + 5))(a2, 0);
    if (*(InputTensor + 88) <= *(this + 45) && *(InputTensor + 72) <= *(this + 39) && *(v6 + 64) <= *(this + 47))
    {
      v9 = a2[4];

      ZinSpaceToBatchLayerUtils::IsTransposeEfficient(v9, this, a2, v7);
    }
  }

  return 0;
}

void ZinSpaceToBatchLayerUtils::IsTransposeEfficient(ZinSpaceToBatchLayerUtils *this, ZinIrContext *a2, const std::string::value_type **a3, ZinIrOpLayer *a4)
{
  InputTensor = ZinIrOpLayer::GetInputTensor(a3, 0);
  ZinIrTensor::GetDimensionOrderHint(InputTensor, &v24);
  ZinIrTensor::GetTensorSizeInBytesFromResidency(InputTensor, 2, &v24, 0);
  if (v24)
  {
    *(&v24 + 1) = v24;
    operator delete(v24);
  }

  v6 = *(InputTensor + 80);
  v24 = *(InputTensor + 64);
  v25 = v6;
  v7 = *(InputTensor + 96);
  v8 = *(InputTensor + 72);
  *(&v24 + 1) = *(InputTensor + 88);
  *(&v25 + 1) = v8;
  v26 = v7;
  if (*(InputTensor + 63) >= 0)
  {
    v9 = *(InputTensor + 63);
  }

  else
  {
    v9 = *(InputTensor + 48);
  }

  v10 = &v22;
  std::string::basic_string[abi:ne200100](&v22, v9 + 9);
  if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v10 = v22.__r_.__value_.__r.__words[0];
  }

  if (v9)
  {
    if (*(InputTensor + 63) >= 0)
    {
      v11 = (InputTensor + 40);
    }

    else
    {
      v11 = *(InputTensor + 40);
    }

    memmove(v10, v11, v9);
  }

  strcpy(v10 + v9, "_c_w_test");
  v14 = a3[6];
  v13 = a3 + 6;
  v12 = v14;
  v15 = *(v13 + 23);
  if (v15 >= 0)
  {
    v16 = v13;
  }

  else
  {
    v16 = v12;
  }

  if (v15 >= 0)
  {
    v17 = *(v13 + 23);
  }

  else
  {
    v17 = v13[1];
  }

  v18 = std::string::append(&v22, v16, v17);
  v19 = *&v18->__r_.__value_.__l.__data_;
  v21[0] = *(&v18->__r_.__value_.__l + 2);
  *__p = v19;
  v18->__r_.__value_.__l.__size_ = 0;
  v18->__r_.__value_.__r.__words[2] = 0;
  v18->__r_.__value_.__r.__words[0] = 0;
  ZinObjectNameFactory::ZinObjectNameFactory(&v23, __p);
  if (SHIBYTE(v21[0]) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }

  ZinObjectNameFactory::CreateName(&v23, 0, &v22);
  memset(&v21[3], 0, 24);
  LODWORD(__p[0]) = 0;
  __p[1] = 0;
  v21[0] = 0;
  *(v21 + 7) = 0;
  ZinIrTensor::CreateTensor();
}

void sub_1A692E5F0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, std::__shared_weak_count *a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a27)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a27);
  }

  if (a40 < 0)
  {
    operator delete(a35);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrLayerSplitInfo::Part::Constraints::ApplyTo(ZinIrLayerSplitInfo::Part::Constraints *this, ZinNEConvLayer *a2)
{
  Hal = ZinIrTarget::GetHal(*(*(a2 + 4) + 200));
  (*(*Hal + 16))(Hal);
  operator new();
}

unint64_t ZinIrLayerSplitInfo::AppendNonCompressed(unint64_t *a1, uint64_t a2, uint64_t a3, const ZinIrLayerSplitInfo::Part::Constraints *a4)
{
  result = ZinIrLayerSplitInfo::Part::CreateNonCompressed(a3, &v8, a4);
  if (a2)
  {
    v7 = a1[1];
    do
    {
      if (v7 >= a1[2])
      {
        result = std::vector<ZinIrLayerSplitInfo::Part>::__emplace_back_slow_path<ZinIrLayerSplitInfo::Part const&>(a1, &v8);
        v7 = result;
      }

      else
      {
        *v7 = v8;
        result = std::__optional_copy_base<ZinIrLayerSplitInfo::Part::Constraints,false>::__optional_copy_base[abi:ne200100]((v7 + 8), &v9);
        *(v7 + 624) = v16;
        v7 += 632;
        a1[1] = v7;
      }

      a1[1] = v7;
      --a2;
    }

    while (a2);
  }

  if (v15 == 1)
  {
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }

    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v12);
    std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v11);
    return std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&v10);
  }

  return result;
}

void sub_1A692EB94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  ZinIrLayerSplitInfo::Part::~Part(va);
  _Unwind_Resume(a1);
}

uint64_t ZinIrLayerSplitInfo::GetNumOfChannels(ZinIrLayerSplitInfo *this)
{
  v1 = *this;
  v2 = *(this + 1);
  if (*this == v2)
  {
    return 0;
  }

  v3 = 0;
  do
  {
    v3 += *v1;
    v1 += 158;
  }

  while (v1 != v2);
  return v3;
}

void ZinIrLayerBatchSplitInfo::AppendBatchSplit(const void **a1, uint64_t a2, uint64_t **a3)
{
  v5 = *a3;
  v4 = a3[1];
  if (v4 == *a3)
  {
    v7 = a2;
    for (i = 1; v7; --v7)
    {
      std::vector<unsigned long>::push_back[abi:ne200100](a1, &i);
    }
  }

  else
  {
    do
    {
      v6 = *v5++;
      i = v6;
      std::vector<unsigned long>::push_back[abi:ne200100](a1, &i);
    }

    while (v5 != v4);
  }
}

BOOL ZinValidateKernelDimension::IsSmallKernelHeightForPool(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(a2 + 28);
  if (v2 > *(a1 + 32) && v3 == 2)
  {
    return 0;
  }

  return v2 <= *(a1 + 8) || v3 != 1;
}

BOOL ZinValidateKernelDimension::IsSmallKernelWidthForPool(void *a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (*a2 > a1[3] && v2 == 2)
  {
    return 0;
  }

  return *a2 <= *a1 || v2 != 1;
}

uint64_t ZinValidateKernelDimension::IsSmallKernelDepthForPool(void *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  if (a3)
  {
    if ((v3 <= a1[5] || v4 != 2) && (v3 <= a1[2] || v4 != 1))
    {
      return 1;
    }
  }

  else if ((v3 <= a1[6] || v4 != 1) && (v3 <= a1[7] || v4 != 2))
  {
    return 1;
  }

  return 0;
}

uint64_t ZinValidateKernelDimension::DecomposeToParts@<X0>(void *a1@<X1>, unsigned int a2@<W2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = a4;
  v8 = a3;
  v12 = IsFullyConnected(*(a4 + 24), *a3, *(a3 + 48), *(a3 + 52));
  v13 = IsFullyConnected(*(v7 + 16), *(v8 + 8), *(v8 + 56), *(v8 + 60));
  LODWORD(v7) = IsFullyConnected(*(v7 + 32), *(v8 + 16), *(v8 + 64), *(v8 + 68));
  v71 = 0;
  v72 = 0;
  v70 = 0;
  v69 = a2;
  v56 = v13;
  v57 = v12;
  ZinMirPoolUtils::GetMaxKernelSize(a1, a2, v8, a5, v12, v13, v7, &v72, &v71, &v70);
  v14 = a6;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = *v8;
  v20 = *(v8 + 8);
  v21 = *(v8 + 16);
  v22 = *v8 > v72;
  LOBYTE(result) = v20 > v71;
  v24 = v21 > v70;
  v52 = "Kernel width must be a power of 2.";
  __format = "PadLeft (%d) and PadRight (%d) must be 0.";
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 1065353216;
  v25 = 1.0;
  v55 = v7 ^ 1;
  v58 = a6;
  v54 = v8;
  do
  {
    if (v22)
    {
      if (v19 & v57)
      {
        v25 = v25 * ((v19 + 1) / v19);
        v26 = 1;
        ++v19;
      }

      else
      {
        if (v19)
        {
          goto LABEL_57;
        }

        v26 = 0;
      }

      v30 = *(v8 + 48);
      v31 = *(v8 + 52);
      if (*(v8 + 48))
      {
        goto LABEL_53;
      }

      v27 = 0;
      v19 >>= 1;
      v22 = v19 > v72;
      v29 = 2;
      v28 = 2;
      if ((result & 1) == 0)
      {
LABEL_16:
        if (v17)
        {
          v33 = 0;
          v32 = 0;
          result = 0;
          v34 = 1;
          v35 = 1;
          v17 = 1;
          if (v24)
          {
            goto LABEL_26;
          }
        }

        else
        {
          result = 0;
          v35 = *(v8 + 28);
          v17 = 1;
          v34 = v20;
          v33 = *(v8 + 56);
          v32 = *(v8 + 60);
          if (v24)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_18;
      }
    }

    else if (v18)
    {
      v27 = 0;
      v26 = 0;
      v22 = 0;
      v28 = 1;
      v29 = 1;
      v18 = 1;
      if ((result & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v22 = 0;
      v29 = *(v8 + 24);
      v18 = 1;
      v28 = v19;
      v27 = *(v8 + 48);
      v26 = *(v8 + 52);
      if ((result & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    v31 = *(v8 + 56);
    v30 = *(v8 + 60);
    if (*(v8 + 56))
    {
      v50 = "PadTop (%d) and PadBot (%d) must be 0.";
      goto LABEL_52;
    }

    if (v20 & v56)
    {
      v25 = ((v20 + 1) / v20) * v25;
      v32 = 1;
      ++v20;
    }

    else
    {
      if (v20)
      {
        v51 = "Kernel height must be a power of 2.";
        goto LABEL_56;
      }

      v32 = 0;
    }

    v33 = 0;
    v20 >>= 1;
    result = v20 > v71;
    v35 = 2;
    v34 = 2;
    if (v24)
    {
LABEL_26:
      v30 = *(v8 + 64);
      v31 = *(v8 + 68);
      if (!*(v8 + 64))
      {
        v40 = v55;
        if ((v21 & 1) == 0)
        {
          v40 = 1;
        }

        if ((v40 & 1) == 0)
        {
          v25 = ((v21 + 1) / v21) * v25;
          v37 = 1;
          ++v21;
LABEL_33:
          v36 = 0;
          v21 >>= 1;
          v24 = v21 > v70;
          v39 = 2;
          v38 = 2;
          goto LABEL_34;
        }

        if ((v21 & 1) == 0)
        {
          v37 = 0;
          goto LABEL_33;
        }

        v51 = "Kernel depth must be a power of 2.";
LABEL_56:
        v52 = v51;
LABEL_57:
        ZinAssertImpl(v52, v24);
      }

      v50 = "PadFront (%d) and PadBack (%d) must be 0.";
LABEL_52:
      __format = v50;
LABEL_53:
      ZinAssertImpl(__format, v24, v30, v31);
    }

LABEL_18:
    if (v16)
    {
      v36 = 0;
      v37 = 0;
      v24 = 0;
      v38 = 1;
      v39 = 1;
      v16 = 1;
    }

    else
    {
      v24 = 0;
      v39 = *(v8 + 32);
      v16 = 1;
      v38 = v21;
      v36 = *(v8 + 64);
      v37 = *(v8 + 68);
    }

LABEL_34:
    v41 = *(v14 + 16);
    if (v15 >= v41)
    {
      v59 = v37;
      v64 = v24;
      v65 = result;
      v66 = v22;
      v67 = v18;
      v68 = v17;
      v63 = v16;
      v61 = v20;
      v62 = v21;
      v60 = v19;
      v42 = *v14;
      v43 = v15 - *v14;
      v44 = 0xCCCCCCCCCCCCCCCDLL * (v43 >> 4) + 1;
      if (v44 > 0x333333333333333)
      {
        std::vector<std::pair<unsigned long,unsigned long>>::__throw_length_error[abi:ne200100]();
      }

      v45 = 0xCCCCCCCCCCCCCCCDLL * ((v41 - v42) >> 4);
      if (2 * v45 > v44)
      {
        v44 = 2 * v45;
      }

      if (v45 >= 0x199999999999999)
      {
        v46 = 0x333333333333333;
      }

      else
      {
        v46 = v44;
      }

      if (v46)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrKernelSizeSplitInfo::Part>>(v58, v46);
      }

      v47 = 16 * (v43 >> 4);
      *v47 = v28;
      *(v47 + 8) = v34;
      *(v47 + 16) = v38;
      *(v47 + 24) = v29;
      *(v47 + 28) = v35;
      *(v47 + 32) = v39;
      *(v47 + 36) = 0x100000001;
      *(v47 + 44) = 1;
      *(v47 + 48) = v27;
      *(v47 + 52) = v26;
      *(v47 + 56) = v33;
      *(v47 + 60) = v32;
      *(v47 + 64) = v36;
      v15 = v47 + 80;
      v48 = v47 - v43;
      *(v47 + 68) = v59;
      *(v47 + 72) = v69;
      memcpy((v47 - v43), v42, v43);
      v49 = *v58;
      *v58 = v48;
      v58[1] = v15;
      v58[2] = 0;
      if (v49)
      {
        operator delete(v49);
      }

      v14 = v58;
      v19 = v60;
      v20 = v61;
      v21 = v62;
      v8 = v54;
      v16 = v63;
      v24 = v64;
      v18 = v67;
      v17 = v68;
      result = v65;
      v22 = v66;
    }

    else
    {
      *v15 = v28;
      *(v15 + 8) = v34;
      *(v15 + 16) = v38;
      *(v15 + 24) = v29;
      *(v15 + 28) = v35;
      *(v15 + 32) = v39;
      *(v15 + 36) = 0x100000001;
      *(v15 + 44) = 1;
      *(v15 + 48) = v27;
      *(v15 + 52) = v26;
      *(v15 + 56) = v33;
      *(v15 + 60) = v32;
      *(v15 + 64) = v36;
      *(v15 + 68) = v37;
      *(v15 + 72) = v69;
      v15 += 80;
    }

    *(v14 + 8) = v15;
  }

  while ((v18 & v17 & v16 & 1) == 0);
  *(v14 + 24) = v25;
  return result;
}

void sub_1A692F230(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v18 = *a17;
  if (*a17)
  {
    *(a17 + 8) = v18;
    operator delete(v18);
  }

  _Unwind_Resume(exception_object);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<ZinIrKernelSizeSplitInfo::Part>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x333333333333334)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void ZinIrCreateInstructions_v4(uint64_t **a1, unsigned int a2, ZinIrOpLayer ***a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  LOBYTE(__p) = 0;
  v7 = 0;
  ZinIrCodegenHandleTdsMakeList<4u>(a1, &__p, a2, a3);
}

void sub_1A692F310(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  if (a12 == 1)
  {
    ZinIrCreateInstructions_v17(&a9);
  }

  _Unwind_Resume(exception_object);
}

void ZinIrCodegenHandleTdsMakeList<4u>(uint64_t **a1, uint64_t a2, uint64_t a3, ZinIrOpLayer ***a4)
{
  v49 = *MEMORY[0x1E69E9840];
  v24 = **a1;
  v25 = (*a1)[1];
  v10 = a1[5];
  if (v10)
  {
    atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(v25 + 222))
  {
    NumAnes = 1;
  }

  else
  {
    NumAnes = ZinIrDeviceMesh::GetNumAnes((v24 + 2248));
  }

  v12 = *(v25 + 21);
  v13 = *(v25 + 22);
  if (v12 == v13 || NumAnes == (v13 - v12) >> 3)
  {
    v14 = *(v25 + 24);
    v15 = *(v25 + 25);
    if (v14 == v15 || NumAnes == (v15 - v14) >> 3)
    {
      v43 = 0u;
      v44 = 0u;
      v45 = 1065353216;
      memset(v41, 0, sizeof(v41));
      v42 = 1065353216;
      v17 = *a4;
      v16 = a4[1];
      v18 = (v16 - *a4) >> 3;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      std::vector<ZinIrOpLayer *>::__init_with_size[abi:ne200100]<std::reverse_iterator<std::__wrap_iter<ZinEngineLayer * const*>>,std::reverse_iterator<std::__wrap_iter<ZinEngineLayer * const*>>>(&v38, v16, v16, v17, v17, v18);
      v19 = a1[11] & *(a2 + 24);
      v20 = a1[5];
      v35 = a1[4];
      v36 = v20;
      if (v20)
      {
        atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      instruction::creation::GetFirstAndLastInNetworkLayers(a4, &v35, v19 & 1, v37);
      if (v36)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v36);
      }

      v29[0] = 0;
      v30[0] = v30;
      v30[1] = v30;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0;
      v22 = v38;
      v21 = v39;
      if (v38 != v39)
      {
        do
        {
          v28 = *v22;
          if (ZinIrOpLayer::IsANELayer(v28) || ((*(*v28 + 136))(v28) & 1) != 0)
          {
            if ((v19 & 1) == 0)
            {
              goto LABEL_36;
            }

            if ((a1[11] & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            *buf = 0;
            v47 = 0;
            v48 = 0;
            std::vector<unsigned short>::__init_with_size[abi:ne200100]<unsigned short *,unsigned short *>(buf, a1[8], a1[9], (a1[9] - a1[8]) >> 1);
            if ((*(a2 + 24) & 1) == 0)
            {
              std::__throw_bad_optional_access[abi:ne200100]();
            }

            __p[0] = 0;
            __p[1] = 0;
            *&v27 = 0;
            std::vector<unsigned long>::__init_with_size[abi:ne200100]<unsigned long *,unsigned long *>(__p, *a2, *(a2 + 8), (*(a2 + 8) - *a2) >> 3);
            v23 = ZinEngineLayer::RunsOnDeviceId(v28, (**a1 + 2248), buf, __p);
            if (__p[0])
            {
              __p[1] = __p[0];
              operator delete(__p[0]);
            }

            if (*buf)
            {
              v47 = *buf;
              operator delete(*buf);
            }

            if (v23)
            {
LABEL_36:
              if (!(*(*v28 + 136))(v28))
              {
                operator new();
              }

              ZinAssertImpl("No tasklet for given architecture");
            }
          }

          ++v22;
        }

        while (v22 != v21);
      }

      ZinInstructionList::CompletedSetup(v29);
      ZinInstructionList::GetTds(v29);
    }

    ZinAssertImpl("Force Hazard Stalls End size doesn't match ANE size", a2, a3);
  }

  ZinAssertImpl("Force Hazard Stalls Begin size doesn't match ANE size", a2, a3);
}

void sub_1A69308CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, std::__shared_weak_count *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  (*(*v67 + 8))(v67, a2, a3, a4, a5, a6, a7, a8);
  if (a20)
  {
    (*(*a20 + 16))(a20);
  }

  ranges::reverse_view<ranges::any_view<ZinAneTdInstruction *,(ranges::category)23,void>>::~reverse_view(&a32);
  v69 = a35;
  a35 = 0;
  if (v69)
  {
    (*(*v69 + 16))(v69);
  }

  ZinInstructionList::~ZinInstructionList(&a36);
  instruction::creation::FirstAndLastInNetworkLayers::~FirstAndLastInNetworkLayers(&a48);
  if (__p)
  {
    a66 = __p;
    operator delete(__p);
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&a67);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::~__hash_table(&STACK[0x220]);
  if (a14)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a14);
  }

  _Unwind_Resume(a1);
}

void ZinIrContextSwitchValidator<4u>(ZinInstructionList *a1)
{
  v1[0] = v1;
  v1[1] = v1;
  v1[2] = 0;
  ZinInstructionList::GetTds(a1);
}

void sub_1A6931484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  if (a13)
  {
    (*(*a13 + 16))(a13, a2, a3, a4, a5, a6, a7);
  }

  std::__list_imp<ZinIrSection *>::clear(va);
  _Unwind_Resume(a1);
}

uint64_t ZinAneTd<4u>::GetField(uint64_t a1, int a2)
{
  switch(a2)
  {
    case 0:
      return (*(a1 + 24) >> 11) & 1;
    case 1:
      return (*(a1 + 24) >> 13) & 1;
    case 2:
      v6 = *(a1 + 24);
      return (v6 >> 15) & 1;
    case 3:
      return (*(a1 + 24) >> 14) & 1;
    case 4:
      return (*(a1 + 24) >> 12) & 1;
    case 5:
      v5 = *(a1 + 24);
      goto LABEL_18;
    case 6:
      return (*(a1 + 24) >> 28) & 1;
    case 7:
      return (*(a1 + 24) >> 29) & 1;
    case 8:
      return *(a1 + 36);
    case 9:
      return *(a1 + 34);
    case 10:
      v6 = *(a1 + 32);
      return (v6 >> 15) & 1;
    case 11:
      return (*(a1 + 32) >> 12) & 7;
    case 12:
      return (*(a1 + 176) >> 2) & 1;
    case 13:
    case 14:
    case 19:
    case 20:
    case 21:
    case 22:
    case 25:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    case 32:
    case 33:
    case 34:
    case 35:
    case 36:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 44:
    case 45:
    case 46:
    case 47:
    case 48:
    case 49:
    case 50:
      return *(a1 + 16);
    case 15:
      v3 = *(a1 + 176);
      goto LABEL_12;
    case 16:
      v4 = *(a1 + 176);
      goto LABEL_24;
    case 17:
      v3 = *(a1 + 192);
LABEL_12:
      result = (v3 >> 4) & 1;
      break;
    case 18:
      v4 = *(a1 + 192);
LABEL_24:
      result = (v4 >> 5) & 1;
      break;
    case 23:
      result = *(a1 + 14);
      break;
    case 24:
      v5 = *(a1 + 8);
LABEL_18:
      result = HIBYTE(v5) & 1;
      break;
    default:
      result = 0;
      break;
  }

  return result;
}

uint64_t ZinAneTd<4u>::SetField(uint64_t result, int a2, __int16 a3)
{
  switch(a2)
  {
    case 0:
      v3 = *(result + 24) & 0xFFFFF7FF | ((a3 & 1) << 11);
      goto LABEL_23;
    case 1:
      v3 = *(result + 24) & 0xFFFFDFFF | ((a3 & 1) << 13);
      goto LABEL_23;
    case 2:
      v3 = *(result + 24) & 0xFFFF7FFF | ((a3 & 1) << 15);
      goto LABEL_23;
    case 3:
      v3 = *(result + 24) & 0xFFFFBFFF | ((a3 & 1) << 14);
      goto LABEL_23;
    case 4:
      goto LABEL_5;
    case 5:
      v3 = *(result + 24) & 0xFEFFFFFF | ((a3 & 1) << 24);
      goto LABEL_23;
    case 6:
      v3 = *(result + 24) & 0xEFFFFFFF | ((a3 & 1) << 28);
      goto LABEL_23;
    case 7:
      v3 = *(result + 24) & 0xDFFFFFFF | ((a3 & 1) << 29);
      goto LABEL_23;
    case 8:
      *(result + 36) = a3;
      return result;
    case 9:
      *(result + 34) = a3;
      return result;
    case 10:
      v6 = *(result + 32) & 0xFFFF7FFF | ((a3 & 1) << 15);
      goto LABEL_21;
    case 11:
      v6 = *(result + 32) & 0xFFFF8FFF | ((a3 & 7) << 12);
LABEL_21:
      *(result + 32) = v6;
      return result;
    case 12:
      v5 = *(result + 176) & 0xFFFFFFFB | (4 * (a3 & 1));
      goto LABEL_26;
    case 13:
    case 14:
    case 19:
    case 20:
    case 21:
    case 22:
      return result;
    case 15:
      v5 = *(result + 176) & 0xFFFFFFEF | (16 * (a3 & 1));
      goto LABEL_26;
    case 16:
      v5 = *(result + 176) & 0xFFFFFFDF | (32 * (a3 & 1));
LABEL_26:
      *(result + 176) = v5;
      return result;
    case 17:
      v4 = *(result + 192) & 0xFFFFFFEF | (16 * (a3 & 1));
      goto LABEL_13;
    case 18:
      v4 = *(result + 192) & 0xFFFFFFDF | (32 * (a3 & 1));
LABEL_13:
      *(result + 192) = v4;
      break;
    case 23:
      *(result + 14) = a3;
      break;
    case 24:
      *(result + 8) = *(result + 8) & 0xFEFFFFFF | ((a3 & 1) << 24);
      break;
    default:
      if (a2 == 50)
      {
        *(result + 16) = a3;
LABEL_5:
        v3 = *(result + 24) & 0xFFFFEFFF | ((a3 & 1) << 12);
LABEL_23:
        *(result + 24) = v3;
      }

      break;
  }

  return result;
}

BOOL ZinAneTd<4u>::HandleCommonMACBypassMode(uint64_t a1, void *a2)
{
  v2 = a2[65];
  if (!v2)
  {
    v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v8)
    {
      ZinAneTd<4u>::HandleCommonMACBypassMode(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    return 0;
  }

  ZinAneTd<4u>::SetUnicastEn(a1, *(v2 + 1278));
  *(a1 + 88) &= 0xF00FFFFF;
  ZinAneTd<4u>::SetCommonConvCfgSx(a1, 1uLL);
  ZinAneTd<4u>::SetCommonConvCfgSy(a1, 1uLL);
  ZinAneTd<4u>::SetCommonConvCfgOx(a1, 1uLL);
  ZinAneTd<4u>::SetCommonConvCfgOy(a1, 1uLL);
  v5 = (*(*a2 + 40))(a2, 0);
  if (!ZinAneTd<4u>::SetOrReturnNumGroups(a1, *(v5 + 64)) || !ZinAneTd<4u>::SetCommonConvCfgKw(a1, 1uLL) || !ZinAneTd<4u>::SetCommonConvCfgKh(a1, 1uLL))
  {
    return 0;
  }

  v6 = *(a2[65] + 88);

  return ZinAneTd<4u>::SetUnicastCin(a1, v6);
}

BOOL ZinAneTd<4u>::HandleCommonPoolOpcode(uint64_t a1, void *a2, unint64_t a3)
{
  v6 = RawOrShared<ZinPoolLayer>::unwrap_const_ptr((a2 + 95));
  if (!a2[65])
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    ZinAneTd<4u>::HandleCommonPoolOpcode(result, v9, v10, v11, v12, v13, v14, v15);
    return 0;
  }

  v7 = *(v6 + 88);
  result = ZinAneTd<4u>::SetOrReturnNumGroups(a1, a3);
  if (!result)
  {
    return result;
  }

  result = ZinAneTd<4u>::SetCommonConvCfgSx(a1, *(v7 + 40));
  if (!result)
  {
    return result;
  }

  result = ZinAneTd<4u>::SetCommonConvCfgSy(a1, *(v7 + 44));
  if (!result)
  {
    return result;
  }

  result = ZinAneTd<4u>::SetCommonConvCfgOx(a1, 1uLL);
  if (!result)
  {
    return result;
  }

  result = ZinAneTd<4u>::SetCommonConvCfgOy(a1, 1uLL);
  if (!result)
  {
    return result;
  }

  if (*(v7 + 104) != 2)
  {
    result = ZinAneTd<4u>::SetCommonConvCfgKw(a1, *(v7 + 16));
    if (!result)
    {
      return result;
    }

    result = ZinAneTd<4u>::SetCommonConvCfgKh(a1, *(v7 + 24));
    if (!result)
    {
      return result;
    }

    result = ZinAneTd<4u>::SetCommonConvCfgPadLeft(a1, *(v7 + 64));
    if (!result)
    {
      return result;
    }

    result = ZinAneTd<4u>::SetCommonConvCfgPadTop(a1, *(v7 + 72));
    if (!result)
    {
      return result;
    }

    goto LABEL_21;
  }

  (*(*a2 + 384))(&v18, a2);
  (*(*a2 + 360))(v17, a2);
  if (!ZinAneTd<4u>::SetCommonConvCfgKw(a1, v17[0]) || !ZinAneTd<4u>::SetCommonConvCfgKh(a1, v17[1]) || !ZinAneTd<4u>::SetCommonConvCfgPadLeft(a1, v18) || !ZinAneTd<4u>::SetCommonConvCfgPadTop(a1, v19))
  {
    return 0;
  }

LABEL_21:
  ZinAneTd<4u>::SetUnicastEn(a1, *(a2[65] + 1278));
  v16 = a2[65];
  if (*(v16 + 1278) != 1)
  {
    return 1;
  }

  ZinAneTd<4u>::SetUnicastCin(a1, *(v16 + 88));
  LODWORD(v18) = 0;
  result = ZinCodegenUtil::ValueToRegister(*(a2[65] + 72), (*(a1 + 280) + 32), &v18);
  if (result)
  {
    *(a1 + 76) = *(a1 + 76) & 0xFFFE0000 | v18 & 0x1FFFF;
    LODWORD(v18) = 0;
    result = ZinCodegenUtil::ValueToRegister(*(a2[65] + 80), (*(a1 + 280) + 40), &v18);
    if (result)
    {
      *(a1 + 80) = *(a1 + 80) & 0xFFFE0000 | v18 & 0x1FFFF;
      return 1;
    }
  }

  return result;
}

BOOL ZinAneTd<4u>::HandleCommonConvOpcode(uint64_t a1, void *a2)
{
  (*(*a2 + 384))(&v18, a2);
  (*(*a2 + 360))(v17, a2);
  if (a2[65])
  {
    v4 = a2[20];
    v5 = (*(*a2 + 400))(a2, 4);
    result = ZinAneTd<4u>::SetOrReturnWout(a1, v5);
    if (result)
    {
      result = ZinAneTd<4u>::SetCommonConvCfgKw(a1, v17[0]);
      if (result)
      {
        result = ZinAneTd<4u>::SetCommonConvCfgPadLeft(a1, v18);
        if (result)
        {
          v7 = (*(*a2 + 400))(a2, 3);
          result = ZinAneTd<4u>::SetOrReturnHout(a1, v7);
          if (result)
          {
            result = ZinAneTd<4u>::SetCommonConvCfgKh(a1, v17[1]);
            if (result)
            {
              result = ZinAneTd<4u>::SetCommonConvCfgPadTop(a1, v19);
              if (result)
              {
                ZinAneTd<4u>::SetCommonConvCfgSx(a1, v4[82]);
                ZinAneTd<4u>::SetCommonConvCfgSy(a1, v4[83]);
                ZinAneTd<4u>::SetCommonConvCfgOx(a1, v4[85]);
                ZinAneTd<4u>::SetCommonConvCfgOy(a1, v4[86]);
                v16 = 0;
                result = ZinCodegenUtil::ValueToRegister(*(a2[65] + 72), (*(a1 + 280) + 32), &v16);
                if (result)
                {
                  *(a1 + 76) = *(a1 + 76) & 0xFFFE0000 | v16 & 0x1FFFF;
                  v16 = 0;
                  result = ZinCodegenUtil::ValueToRegister(*(a2[65] + 80), (*(a1 + 280) + 40), &v16);
                  if (result)
                  {
                    *(a1 + 80) = *(a1 + 80) & 0xFFFE0000 | v16 & 0x1FFFF;
                    result = ZinAneTd<4u>::SetOrReturnNumGroups(a1, *(a2[65] + 96));
                    if (result)
                    {
                      v8 = a2[65];
                      if (*(v8 + 1277) == 2)
                      {
                        ZinAneTd<4u>::SetUnicastEn(a1, *(v8 + 1278));
                        ZinAneTd<4u>::SetUnicastCin(a1, *(a2[65] + 88));
                      }

                      return 1;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  else
  {
    result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (result)
    {
      ZinAneTd<4u>::HandleCommonConvOpcode(result, v9, v10, v11, v12, v13, v14, v15);
      return 0;
    }
  }

  return result;
}

uint64_t ZinAneTd<4u>::HandleCommonConfigTileAndTaskInfo(uint64_t a1, uint64_t a2)
{
  *(a1 + 96) = 0;
  NumNeededNEs = MirInfoChannelAssignment::GetNumNeededNEs((a2 + 160));
  v5 = 0;
  if (ZinAneTd<4u>::SetTileHeight(a1, NumNeededNEs))
  {
    *(a1 + 100) = 0;
    ZinAneTd<4u>::SetNESmallSourceMode(a1, *(a2 + 152));
    v19 = 0;
    ChannelAssignment = ZinEngineLayerMirInfo::GetChannelAssignment(a2);
    v7 = MirInfoChannelAssignment::GetNumNeededNEs(ChannelAssignment);
    Pow2Log2 = ZinRoundUpToNextPow2Log2(v7);
    if (ZinCodegenUtil::ValueToRegister(Pow2Log2, (*(a1 + 280) + 184), &v19) && ((*(a1 + 100) = *(a1 + 100) & 0xFFC7FFFF | ((v19 & 7) << 19), v19 = 0, v9 = ZinRoundUpToNextPow2Log2(*(a2 + 128)), v9 >= 4) ? (v10 = 4) : (v10 = v9), ZinCodegenUtil::ValueToRegister(v10, (*(a1 + 280) + 160), &v19) && ((*(a1 + 100) = *(a1 + 100) & 0xFFFFF8FF | ((v19 & 7) << 8), v19 = 0, v11 = ZinRoundUpToNextPow2Log2(*(a2 + 112)), v11 >= 4) ? (v12 = 4) : (v12 = v11), ZinCodegenUtil::ValueToRegister(v12, (*(a1 + 280) + 168), &v19) && ((*(a1 + 100) = *(a1 + 100) & 0xFFFF8FFF | ((v19 & 7) << 12), v19 = 0, v13 = ZinRoundUpToNextPow2Log2(*(a2 + 120)), v13 >= 4) ? (v14 = 4) : (v14 = v13), ZinCodegenUtil::ValueToRegister(v14, (*(a1 + 280) + 176), &v19) && (*(a1 + 100) = *(a1 + 100) & 0xFFF8FFFF | ((v19 & 7) << 16), v19 = 0, v15 = ZinEngineLayerMirInfo::GetChannelAssignment(a2), v16 = MirInfoChannelAssignment::GetNumNeededNEs(v15), v17 = ZinRoundUpToNextPow2Log2(v16), ZinCodegenUtil::ValueToRegister(v17, (*(a1 + 280) + 184), &v19))))))
    {
      *(a1 + 100) = *(a1 + 100) & 0xFFC7FFFF | ((v19 & 7) << 19);
      v5 = 1;
      ZinAneTd<4u>::SetNID(a1);
    }

    else
    {
      return 0;
    }
  }

  return v5;
}

uint64_t ZinAneTd<4u>::HandleTileDmaSrcConfig(uint64_t a1, ZinIrOpLayer *this, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!ZinIrOpLayer::IsNELayer(this))
  {
    ZinAssertImpl("Only NE layers allowed\n");
  }

  (*(*a1 + 72))(a1);
  MemoryPools = ZinIrContext::GetMemoryPools(this);
  if (MemoryPools[1] - *MemoryPools >= 0x11uLL)
  {
    v23 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v23)
    {
      ZinAneTd<4u>::HandleTileDmaSrcConfig(v23, v24, v25, v26, v27, v28, v29, v30);
    }

    return 0;
  }

  v10 = *(a3 + 560);
  InputTensor = ZinIrOpLayer::GetInputTensor(this, 0);
  v12 = *(this + 65);
  v13 = *(v12 + 640);
  v14 = *(v12 + 1236);
  if ((v14 & 8) != 0 && (v14 & 7) != 0)
  {
    v15 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v15)
    {
      ZinAneTd<4u>::HandleTileDmaSrcConfig(v15, v16, v17, v18, v19, v20, v21, v22);
    }

    return 0;
  }

  v33 = *(InputTensor + 104);
  *(a1 + 32) = *(a1 + 32) & 0xFFFFFF7F | ((v13 != 0) << 7);
  if (!v13)
  {
    v31 = 1;
    ZinAneTd<4u>::SetTileDmaSrc1CacheHint(a1, 1, 1, 1);
    *(a1 + 140) = *(a1 + 140) & 0xF0FFFFFF | 0x1000000;
    return v31;
  }

  if (ZinIrSymbol::GetMemType(v13) && ZinIrSymbol::GetMemType(v13) != 1 || (ZinIrSymbol::GetBarId(v13) & 0x100) == 0)
  {
    v34 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v34)
    {
      ZinAneTd<4u>::HandleTileDmaSrcConfig(v34, v35, v36, v37, v38, v39, v40, v41);
    }

    return 0;
  }

  *(a1 + 32) = *(a1 + 32) & 0xFFFFFF8F | (16 * (ZinIrSymbol::GetBarId(v13) & 7));
  TensorDesc = ZinIrSymbol::Descriptor::GetTensorDesc((v13 + 216));
  v85[0] = *TensorDesc;
  v43 = TensorDesc[4];
  v45 = TensorDesc[1];
  v44 = TensorDesc[2];
  v85[3] = TensorDesc[3];
  v85[4] = v43;
  v85[1] = v45;
  v85[2] = v44;
  v46 = TensorDesc[7];
  v48 = TensorDesc[5];
  v47 = TensorDesc[6];
  v85[8] = TensorDesc[8];
  v85[6] = v47;
  v85[7] = v46;
  v85[5] = v48;
  v49 = TensorDesc[12];
  v51 = TensorDesc[9];
  v50 = TensorDesc[10];
  v85[11] = TensorDesc[11];
  v85[12] = v49;
  v85[9] = v51;
  v85[10] = v50;
  if (ZinEngineLayerMirInfo::HasDmaRead(*(this + 65), 0))
  {
    *(a1 + 124) |= 1u;
  }

  ZinAneTd<4u>::SetTileDmaSrc1CacheHint(a1, *(*(this + 65) + 1265), *(*(this + 65) + 1266), *(*(this + 65) + 1267));
  **(a5 + 128) = v13;
  v52 = *(this + 65);
  v53 = *(v52 + 608);
  if (v53 % v10 || (v54 = *(v52 + 616), v55 = v54 / v10, v54 % v10))
  {
    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v56)
    {
      ZinAneTd<4u>::HandleTileDmaSrcConfig(v56, v57, v58, v59, v60, v61, v62, v63);
    }

    return 0;
  }

  v84 = 0;
  if (ZinCodegenUtil::ValueToRegister(v53 / v10, (*(a1 + 280) + 248), &v84))
  {
    *(a1 + 132) = *(a1 + 132) & 0xC000003F | ((v84 & 0xFFFFFF) << 6);
    v84 = 0;
    if (ZinCodegenUtil::ValueToRegister(v55, (*(a1 + 280) + 256), &v84))
    {
      *(a1 + 136) = *(a1 + 136) & 0xC000003F | ((v84 & 0xFFFFFF) << 6);
      if (v33 > 5)
      {
        if (v33 <= 7)
        {
          v64 = *(a1 + 140) & 0xFFFFCECC;
          if (v33 == 6)
          {
            v65 = 17;
          }

          else
          {
            v65 = 273;
          }

          goto LABEL_50;
        }

        switch(v33)
        {
          case 8:
            v67 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            if (v67)
            {
              ZinAneTd<4u>::HandleTileDmaSrcConfig(v67, v68, v69, v70, v71, v72, v73, v74);
            }

            break;
          case 9:
            v64 = *(a1 + 140) & 0xFFFFCFCC;
            v65 = 4145;
            goto LABEL_50;
          case 10:
            v64 = *(a1 + 140) & 0xFFFFCFCC;
            v65 = 49;
            goto LABEL_50;
        }
      }

      else
      {
        if (v33 > 2)
        {
          if (v33 == 3)
          {
            v64 = *(a1 + 140) & 0xFFFFCFCC;
            v65 = 8241;
            goto LABEL_50;
          }

          if (v33 != 4)
          {
            v64 = *(a1 + 140) & 0xFFFFCECC;
            v65 = 257;
LABEL_50:
            v66 = v64 | v65;
            goto LABEL_51;
          }

          v66 = *(a1 + 140) & 0xFFFFCECC | 1;
LABEL_51:
          *(a1 + 140) = v66;
          EventTensor = ZinCollectiveCommunicationLayer::GetEventTensor(v85);
          if (EventTensor >= 1)
          {
            *(a1 + 140) = *(a1 + 140) & 0xF0FFFFFF | ((EventTensor & 0xF) << 24);
            return 1;
          }

          v76 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (v76)
          {
            ZinAneTd<6u>::HandleTileDmaSrcConfig(v76, v77, v78, v79, v80, v81, v82, v83);
          }

          return 0;
        }

        if (v33 == 1)
        {
          v66 = *(a1 + 140) & 0xFFFFCFFC | 0x1000;
          goto LABEL_51;
        }

        if (v33 == 2)
        {
          v66 = *(a1 + 140) & 0xFFFFCFFC;
          goto LABEL_51;
        }
      }

      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        ZinAneTd<6u>::HandleTileDmaSrcConfig();
      }
    }
  }

  return 0;
}

BOOL ZinAneTd<4u>::HandleL2Config(uint64_t a1, ZinIrOpLayer *a2, void *a3)
{
  v89 = *MEMORY[0x1E69E9840];
  (*(*a1 + 56))(a1);
  v6 = *(*(a2 + 11) + 8);
  if (v6 != 93)
  {
    if (v6 != 97)
    {
      goto LABEL_13;
    }

    v7 = *(RawOrShared<ZinPoolLayer>::unwrap_const_ptr(a2 + 760) + 88);
    v8 = *(v7 + 100);
    v9 = *(v7 + 104);
    if (v9 == 1)
    {
      if (v8 == 4)
      {
LABEL_6:
        v10 = a1;
        v11 = 0;
LABEL_7:
        ZinAneTd<4u>::SetPaddingMode(v10, v8, v11);
        goto LABEL_13;
      }
    }

    else if (v9 || v8 == 2)
    {
      goto LABEL_6;
    }

    v56 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v56)
    {
      ZinAneTd<4u>::HandleL2Config(v56, v57, v58, v59, v60, v61, v62, v63);
    }

    return 0;
  }

  if (RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760))
  {
    v12 = *(a2 + 20);
    v8 = *(v12 + 376);
    v13 = a3[191];
    v14 = a3[192];
    if (v13 != v14)
    {
      while (*v13 != v8)
      {
        if (++v13 == v14)
        {
          goto LABEL_34;
        }
      }
    }

    if (v13 == v14 || v8 == 4 || v8 == 2)
    {
LABEL_34:
      v48 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (v48)
      {
        ZinAneTd<4u>::HandleL2Config(v48, v49, v50, v51, v52, v53, v54, v55);
      }

      return 0;
    }

    v11 = *(v12 + 380);
    v10 = a1;
    goto LABEL_7;
  }

LABEL_13:
  L2RdMode = ZinEngineLayerMirInfo::GetL2RdMode(*(a2 + 65), 0);
  ZinAneTd<4u>::SetL2Src1SourceType(a1, L2RdMode);
  if (!ZinCodegen::SetPrimaryL2SourceBuffer<4u>(a3, a2, a1))
  {
    v40 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v40)
    {
      ZinAneTd<4u>::HandleL2Config(v40, v41, v42, v43, v44, v45, v46, v47);
    }

    return 0;
  }

  InputTensor = ZinIrOpLayer::GetInputTensor(a2, 0);
  ZinAneTd<4u>::SetL2Src1DmaFormat(a1, InputTensor[26]);
  v88 = 0;
  ZinIrTensor::InferDescriptor(v86, InputTensor, v87);
  EventTensor = ZinCollectiveCommunicationLayer::GetEventTensor(v86);
  std::__function::__value_func<void ()(ZinTensorDescriptor const&,ZinTensorDescriptor const&,ZinIrTensor const*)>::~__value_func[abi:ne200100](v87);
  if (EventTensor <= 0)
  {
    v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (!v32)
    {
      return 0;
    }

    goto LABEL_28;
  }

  ZinAneTd<4u>::SetL2Src1Interleave(a1, EventTensor);
  if (*(*(a2 + 11) + 8) == 98)
  {
    MemoryPools = ZinIrContext::GetMemoryPools(a2);
    if (MemoryPools[1] - *MemoryPools == 16)
    {
      v19 = *(ZinEngineLayerMirInfo::GetL2RdSymbol(*(a2 + 65), 0) + 24);
      v20 = a3[55];
      v21 = a3[56];
      L2RdSymbol = ZinEngineLayerMirInfo::GetL2RdSymbol(*(a2 + 65), 1u);
      v23 = v19 % v20 / v21;
      v24 = *(L2RdSymbol + 24) % a3[55] / a3[56];
      if (v23 - v24 >= 0)
      {
        v25 = v23 - v24;
      }

      else
      {
        v25 = v24 - v23;
      }

      if (v24 <= v23)
      {
        LODWORD(v23) = *(L2RdSymbol + 24) % a3[55] / a3[56];
      }

      ZinAneTd<4u>::SetL2SrcBaseAddress(a1, v23);
      ZinAneTd<4u>::SetL2Src1ChannelStride(a1, v25);
    }
  }

  v26 = (*(*a2 + 40))(a2, 0);
  L2WrSymbol = ZinEngineLayerMirInfo::GetL2WrSymbol(*(a2 + 65));
  v28 = L2WrSymbol;
  if (!L2WrSymbol)
  {
    v64 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v64)
    {
      ZinAneTd<4u>::HandleL2Config(v64, v65, v66, v67, v68, v69, v70, v71);
    }

    return 0;
  }

  if (ZinIrSymbol::GetMemType(L2WrSymbol) != 2)
  {
    v72 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    if (v72)
    {
      ZinCodegen::SetPrimaryL2SourceBuffer<1u>(v72, v73, v74, v75, v76, v77, v78, v79);
    }

    return 0;
  }

  ZinAneTd<4u>::SetL2ResultType(a1, *(*(a2 + 65) + 1408));
  ZinAneTd<4u>::SetL2BfrMode(a1, *(*(a2 + 65) + 244));
  ZinAneTd<4u>::SetL2ResultCfgDmaFmt(a1, *(v26 + 104));
  ZinAneTd<4u>::SetL2OutputCropOffsetXLSBs(a1, *(*(a2 + 65) + 232));
  if (*(*(a2 + 65) + 1408) - 1 > 1)
  {
    v31 = 1;
  }

  else
  {
    TensorDesc = ZinIrSymbol::Descriptor::GetTensorDesc((*(*(a2 + 65) + 800) + 216));
    v30 = ZinCollectiveCommunicationLayer::GetEventTensor(TensorDesc);
    v31 = v30;
    if (!v30)
    {
      v32 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      if (!v32)
      {
        return 0;
      }

LABEL_28:
      ZinAneTd<6u>::HandleL2Config(v32, v33, v34, v35, v36, v37, v38, v39);
      return 0;
    }
  }

  ZinAneTd<4u>::SetL2ResultInterleave(a1, v31);
  ZinAneTd<4u>::SetL2ResultBaseAddr(a1, *(v28 + 24) % a3[55] / a3[56]);
  ZinAneTd<4u>::SetL2ResultChannelStride(a1, *(*(a2 + 65) + 200));
  *v86 = *(v28 + 680);
  SrcSymbol = ZinCcdmaLayerMirInfo::GetSrcSymbol(v86);
  CompressedBytes = ZinCompressedFootprintInfo::GetCompressedBytes(v86);
  ZinAneTd<4u>::SetL2ResultWrapAddrOffset(a1, SrcSymbol);
  ZinAneTd<4u>::SetL2ResultWrapAddr(a1, CompressedBytes);
  if ((ZinCodegen::SetL2ResultWrapInfo<4u>(a1, v28) & 1) == 0)
  {
    return 0;
  }

  v85 = 0;
  L2RowStride = ZinCodegen::GetL2RowStride((v26 + 64), *(*(a2 + 65) + 192), *(*(a1 + 280) + 236), &v85, v82);
  if (L2RowStride)
  {
    ZinAneTd<4u>::SetL2ResultRowStride(a1, v85);
    ZinIrHalH13g::~ZinIrHalH13g(a1);
    ZinIrHalH13g::~ZinIrHalH13g(a1);
    if (RawOrShared<ZinActivationLayer>::unwrap_const_ptr(a2 + 624))
    {
      *(a1 + 172) |= 1u;
    }
  }

  return L2RowStride;
}

BOOL ZinAneTd<4u>::HandleNEConfig(ZinIrHalH13g *a1, uint64_t a2, const ZinIrHalParameters *a3)
{
  (*(*a1 + 88))(a1);
  v6 = (a2 + 160);
  v7 = *(a2 + 160);
  if (!v7)
  {
    v12 = 0;
    v9 = 0;
    v10 = 0;
    ShouldUseSparseBinaryForCompression = 0;
LABEL_7:
    v13 = 4;
    goto LABEL_8;
  }

  v8 = v7[456];
  v9 = (v8 >> 4) & 1;
  v10 = (v8 >> 3) & 1;
  if ((v8 & 4) == 0)
  {
    if ((ZinIrKernel::HasPerCoutScale(*(a2 + 160)) & 1) != 0 || ZinIrKernel::HasPerCoutBias(v7))
    {
      ShouldUseSparseBinaryForCompression = 0;
      LODWORD(v7) = 0;
      v12 = *((*(*a2 + 40))(a2, 0) + 64) > 1;
    }

    else
    {
      v12 = 0;
      ShouldUseSparseBinaryForCompression = 0;
      LODWORD(v7) = 0;
    }

    goto LABEL_7;
  }

  v65 = (v8 >> 3) & 1;
  if (*(*(a2 + 88) + 8) == 93 && RawOrShared<ZinConvLayer>::unwrap_const_ptr(a2 + 760) && *(*(a2 + 520) + 1277) == 1)
  {
    v18 = *(*v6 + 456) >> 7;
  }

  else
  {
    v18 = 0;
  }

  v19 = v9;
  v20 = *(*(a2 + 88) + 8) == 98 && *(ZinIrOpLayer::GetInputTensor(a2, 0) + 64) > 1;
  v21 = *v6;
  v22 = *(*(*v6 + 111) + 40);
  if (v22)
  {
    v13 = *(v21 + 44);
    LODWORD(v7) = *v22;
    if (v7 == 1)
    {
      ShouldUseSparseBinaryForCompression = ZinIrKernel::ShouldUseSparseBinaryForCompression(v21);
      v21 = *v6;
    }

    else
    {
      ShouldUseSparseBinaryForCompression = 0;
    }

    v12 = v20 | v18;
    if (ZinIrKernel::HasVectorPalettizedWeight(v21))
    {
      v32 = ZinLog2OfPow2(*(*v6 + 52));
      ZinAneTd<4u>::SetPaletteBlockSize(a1, v32);
    }

    v33 = *v6;
    v9 = v19;
    if (*(*v6 + 425) == 1)
    {
      v10 = v65;
      if (*(v33 + 424) == 1)
      {
        v34 = *(v33 + 86);
        if (v34 && (*(v33 + 44) - 7) <= 0x14 && v34[1] - *v34 > 0x10uLL)
        {
          ZinAneTd<4u>::SetMultiPaletteEnable();
        }

        ZinAssertImpl("Invalid multi-palette LUT configuration.");
      }
    }

    else
    {
      v10 = v65;
    }

LABEL_8:
    ZinAneTd<4u>::SetKernelPalettizedEn(a1, v13);
    ZinAneTd<4u>::SetKernelPalettizedBits(a1, v13);
    ZinAneTd<4u>::SetKernelSparseFmt(a1, v7);
    ZinAneTd<4u>::SetKernelSparseBinary(a1, ShouldUseSparseBinaryForCompression);
    ZinAneTd<4u>::SetGroupKernelReuse(a1, v12);
    v67 = 0;
    MacCfgOpMode = GetMacCfgOpMode(a2, a3, &v67);
    result = 0;
    if (!MacCfgOpMode)
    {
      ZinAneTd<4u>::SetOpMode(a1, v67);
      MacCfgKernelMode = GetMacCfgKernelMode(a2, a3);
      ZinAneTd<4u>::SetKernelMode(a1, MacCfgKernelMode);
      MacCfgPassthroughEnable = GetMacCfgPassthroughEnable(a2, a3);
      ZinAneTd<1u>::SetPassthroughEnable(a1, MacCfgPassthroughEnable);
      v66 = 0;
      if (GetKernelCfgKernelFmt(a2, a3, v67, &v66))
      {
        return 0;
      }

      ZinAneTd<4u>::SetKernelFmt(a1, v66);
      v23 = *(a2 + 748);
      if ((v23 & 0x100000000) == 0)
      {
        ZinAssertImpl("Binary point is missing from NE layer.");
      }

      ZinAneTd<4u>::SetNEBinaryPoint(a1, v23);
      if ((*(*a1 + 328))(a1, a2))
      {
        if (RawOrShared<ZinActivationLayer>::unwrap_const_ptr(a2 + 672))
        {
          v24 = *(RawOrShared<ZinActivationLayer>::unwrap_const_ptr(a2 + 672) + 176);
        }

        else
        {
          v24 = 0;
        }

        ZinAneTd<4u>::SetNENonLinearMode(a1, v24, a3 + 1600);
        if (RawOrShared<ZinQuantLayer>::unwrap_const_ptr(a2 + 720))
        {
          ShouldUseSparseBinaryForCompression = RawOrShared<ZinQuantLayer>::unwrap_const_ptr(a2 + 720) != 0;
          v42 = RawOrShared<ZinQuantLayer>::unwrap_const_ptr(a2 + 720);
          ScalarZeroPoint = ZinDeQuantLayer::GetScalarZeroPoint(v42);
          ZinAneTd<4u>::SetQuantizationOutputZeroOffset(a1, ShouldUseSparseBinaryForCompression, ScalarZeroPoint);
        }

        if (v10)
        {
          v44 = *(*v6 + 180);
          v45 = 1;
        }

        else
        {
          v44 = 0;
          v45 = 0;
        }

        ZinAneTd<4u>::SetNEPostScale(a1, v44, v45);
        if (v9)
        {
          v46 = *(*v6 + 47);
          LOBYTE(ShouldUseSparseBinaryForCompression) = *(*v6 + 192);
          LOBYTE(v13) = *(*v6 + 193);
          v9 = v46 >> 8;
          v47 = *(*v6 + 97) << 48;
          v48 = 1;
        }

        else
        {
          LOBYTE(v46) = 0;
          v47 = 0;
          v48 = 0;
        }

        if (*(*(a2 + 88) + 8) == 93)
        {
          v49 = RawOrShared<ZinGOCLayer>::unwrap_const_ptr(a2 + 648);
          if (v49)
          {
            v50 = ZinGOCLayer::IsDynamicBias(v49);
            v51 = v48 ? v9 : 0;
            v52 = v48 ? v46 : 0;
            v53 = v48 ? ShouldUseSparseBinaryForCompression : 0;
            v54 = v48 ? v48 : 1;
            if (v50)
            {
              v9 = v51;
              LOBYTE(v46) = v52;
              LOBYTE(v13) = 1;
              LOBYTE(ShouldUseSparseBinaryForCompression) = v53;
              LOBYTE(v48) = v54;
            }
          }
        }

        ZinAneTd<4u>::SetNEBias(a1, v47 | (v13 << 40) | (ShouldUseSparseBinaryForCompression << 32) | v46 | ((*&v9 & 0xFFFFFFLL) << 8), v48);
        if (*(*(a2 + 88) + 8) == 93)
        {
          v55 = ZinNEConvLayer::GetMatrixMultBias(a2) & 0xFFFFFFFFFFLL;
        }

        else
        {
          v55 = 0;
        }

        ZinAneTd<4u>::SetNEMatrixVectorBias(a1, (a2 + 160), v55);
        if (*v6)
        {
          HasZeroPoint = ZinIrKernel::HasZeroPoint(*v6);
        }

        else
        {
          HasZeroPoint = 0;
        }

        ZinAneTd<4u>::SetKernelAsymQuantEn(a1, HasZeroPoint);
        v57 = *v6;
        if (*v6)
        {
          v57 = *(v57 + 111);
          if (v57)
          {
            LOBYTE(v57) = *v57;
          }
        }

        ZinAneTd<4u>::SetKernelDetectZeros(a1, v57 & 1);
        ZinAneTd<4u>::SetDoubleInt8Enable(a1, *(*(a2 + 520) + 1279));
        if (*(*(a2 + 88) + 8) == 97)
        {
          RawOrShared<ZinPoolLayer>::unwrap_const_ptr(a2 + 760);
          ZinIrHalH13g::~ZinIrHalH13g(a1);
          ZinIrHalH13g::~ZinIrHalH13g(a1);
        }

        if ((*(*a1 + 320))(a1, a2))
        {
          return 1;
        }

        else
        {
          result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          if (result)
          {
            ZinAneTd<4u>::HandleNEConfig(result, v58, v59, v60, v61, v62, v63, v64);
            return 0;
          }
        }
      }

      else
      {
        result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (result)
        {
          ZinAneTd<4u>::HandleNEConfig(result, v35, v36, v37, v38, v39, v40, v41);
          return 0;
        }
      }
    }

    return result;
  }

  result = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (result)
  {
    ZinAneTd<4u>::HandleNEConfig(result, v25, v26, v27, v28, v29, v30, v31);
    return 0;
  }

  return result;
}

uint64_t ZinAneTd<4u>::HandleNEConfigRCASCfg(uint64_t a1, uint64_t a2)
{
  if (*(*(a2 + 88) + 8) == 101)
  {
    v2 = *(RawOrShared<ZinRCASLayer>::unwrap_const_ptr(a2 + 760) + 88);
    v3 = *(v2 + 48);
    if (v3 != (v2 + 56))
    {
      v4 = 0;
      do
      {
        v5 = v3[4];
        if (v5 >= 8)
        {
          std::__throw_out_of_range[abi:ne200100]("bitset set argument out of range");
        }

        v6 = v3[1];
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
            v7 = v3[2];
            v8 = *v7 == v3;
            v3 = v7;
          }

          while (!v8);
        }

        v4 |= 1 << v5;
        v3 = v7;
      }

      while (v7 != (v2 + 56));
    }

    ZinAneTd<1u>::SetRcasKeyMask();
  }

  return 1;
}