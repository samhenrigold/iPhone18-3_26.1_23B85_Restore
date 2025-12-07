void sub_22293BC8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, ...)
{
  va_start(va, a32);
  std::optional<nlv4_inference_orchestrator::trees::TreeNode>::~optional(&a13);
  std::optional<std::pair<sirinluinternal::MatchingSpan,sirinluinternal::MatchingSpan>>::~optional(va);
  _Unwind_Resume(a1);
}

uint64_t std::optional<nlv4_inference_orchestrator::trees::TreeNode>::~optional(uint64_t a1)
{
  if (*(a1 + 144) == 1)
  {
    v3 = (a1 + 88);
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }

    if (*(a1 + 47) < 0)
    {
      operator delete(*(a1 + 24));
    }

    if (*(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::hasMatchingSpanPerson(nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit *this, unint64_t a2, uint64_t a3)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::find<unsigned long>(this + 18, a2);
  if (result)
  {
    v6 = *(result + 24);
    v5 = *(result + 32);
    if (v6 == v5)
    {
      return 0;
    }

    else
    {
      v7 = v6 + 88;
      do
      {
        v8 = *(v7 - 16);
        result = v8 == a3;
        v9 = v8 == a3 || v7 == v5;
        v7 += 88;
      }

      while (!v9);
    }
  }

  return result;
}

uint64_t *nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::findMatchingSpansSplit@<X0>(uint64_t *__return_ptr a1@<X8>, nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit *this@<X0>, unint64_t a3@<X1>, unint64_t a4@<X2>)
{
  result = nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::findMatchingSpansSplitWithOrder(a4, this + 18, this + 13, a1, a3);
  if ((a1[22] & 1) == 0)
  {
    result = nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::findMatchingSpansSplitWithOrder(a4, this + 13, this + 18, v11, a3);
    if (v13 == 1)
    {
      MEMORY[0x223DC3160](v9, v12);
      MEMORY[0x223DC3160](v10, v11);
      MEMORY[0x223DC3150](a1, v9);
      MEMORY[0x223DC3150](a1 + 11, v10);
      *(a1 + 176) = 1;
      MEMORY[0x223DC3180](v10);
      result = MEMORY[0x223DC3180](v9);
      if (v13)
      {
        MEMORY[0x223DC3180](v12);
        return MEMORY[0x223DC3180](v11);
      }
    }

    else
    {
      *a1 = 0;
      *(a1 + 176) = 0;
    }
  }

  return result;
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::generateCommonPersonNode(siri::ontology::oname::graph::ontology_init *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, std::string::size_type a7@<X6>, void *a8@<X7>, _BYTE *a9@<X8>)
{
  v103.__r_.__value_.__l.__size_ = *MEMORY[0x277D85DE8];
  v11 = *(a2 + 76);
  v12 = *(a1 + 10);
  v13 = 0x8E38E38E38E38E39 * ((*(a1 + 11) - v12) >> 4);
  if (v13 <= v11 || (v14 = (*(a2 + 72) - 1), v13 <= v14) || (v15 = *(a3 + 76), v13 <= v15) || (v16 = (*(a3 + 72) - 1), v13 <= v16))
  {
    std::vector<unsigned long>::__throw_out_of_range[abi:ne200100]();
  }

  v91[1] = 0;
  v92[0] = 0;
  *v86 = 0u;
  memset(v87, 0, sizeof(v87));
  memset(&__p, 0, sizeof(__p));
  v91[0] = 0;
  v19 = siri::ontology::oname::graph::ontology_init::Argument_name(a1);
  v20 = std::string::operator=(&__p, (v19 + 8));
  v21 = (v12 + 144 * v11);
  v22 = (v12 + 144 * v14);
  v23 = v21[12];
  v89 = v23;
  v92[1] = v21[14];
  v92[3] = v21[16];
  v24 = v22[13];
  v90 = v24;
  v92[2] = v22[15];
  v92[4] = v22[17];
  v25 = v23 - a8;
  if (v23 < a8)
  {
    v26 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
LABEL_21:
      *a9 = 0;
      a9[144] = 0;
      goto LABEL_22;
    }

    v27 = *(a1 + 3);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v27;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v89;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
    v95 = a8;
    v28 = "[%s] newNameNode.startCharIndex (%lu) is less than originalNameStartCharIndex (%lu)";
LABEL_20:
    _os_log_impl(&dword_22284A000, v26, OS_LOG_TYPE_ERROR, v28, &buf, 0x20u);
    goto LABEL_21;
  }

  v29 = v24 >= v23;
  v30 = v24 - v23;
  if (v30 == 0 || !v29)
  {
    v26 = SNLPOSLoggerForCategory(1);
    if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    v34 = *(a1 + 3);
    LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
    *(buf.__r_.__value_.__r.__words + 4) = v34;
    WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
    *(&buf.__r_.__value_.__r.__words[1] + 6) = v89;
    HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
    v95 = v90;
    v28 = "[%s] newNameNode character indices imply an empty or impossible substring (%lu -> %lu)";
    goto LABEL_20;
  }

  if (a7 < v25)
  {
    std::__throw_out_of_range[abi:ne200100]("string_view::substr");
  }

  if (a7 - v25 >= v30)
  {
    v31 = v30;
  }

  else
  {
    v31 = a7 - v25;
  }

  if (v31 > 0x7FFFFFFFFFFFFFF7)
  {
    std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
  }

  if (v31 >= 0x17)
  {
    operator new();
  }

  *(&buf.__r_.__value_.__s + 23) = v31;
  if (v31)
  {
    v35 = (a6 + v25);
    v32 = a6;
    v20 = memmove(&buf, v35, v31);
  }

  else
  {
    v32 = a6;
  }

  buf.__r_.__value_.__s.__data_[v31] = 0;
  if (SHIBYTE(v87[3]) < 0)
  {
    operator delete(v87[1]);
  }

  *&v87[1] = buf;
  *v80 = 0u;
  memset(v81, 0, sizeof(v81));
  memset(&v82, 0, sizeof(v82));
  memset(v85, 0, 24);
  v36 = siri::ontology::oname::graph::ontology_init::Argument_label(v20);
  v37 = std::string::operator=(&v82, (v36 + 8));
  v38 = v12 + 144 * v15;
  v39 = v12 + 144 * v16;
  v40 = *(v38 + 96);
  v83 = v40;
  v85[3] = *(v38 + 112);
  v85[5] = *(v38 + 128);
  v41 = *(v39 + 104);
  v84 = v41;
  v85[4] = *(v39 + 120);
  v85[6] = *(v39 + 136);
  v42 = v40 - a8;
  if (v40 >= a8)
  {
    v29 = v41 >= v40;
    v46 = v41 - v40;
    if (v46 != 0 && v29)
    {
      if (a7 < v42)
      {
        std::__throw_out_of_range[abi:ne200100]("string_view::substr");
      }

      if (a7 - v42 >= v46)
      {
        v47 = v46;
      }

      else
      {
        v47 = a7 - v42;
      }

      if (v47 > 0x7FFFFFFFFFFFFFF7)
      {
        std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
      }

      if (v47 >= 0x17)
      {
        operator new();
      }

      *(&buf.__r_.__value_.__s + 23) = v47;
      if (v47)
      {
        v37 = memmove(&buf, (v32 + v42), v47);
      }

      buf.__r_.__value_.__s.__data_[v47] = 0;
      if (SHIBYTE(v81[3]) < 0)
      {
        operator delete(v81[1]);
      }

      *&v81[1] = buf;
      memset(v72, 0, sizeof(v72));
      v73 = 0u;
      memset(&v74, 0, sizeof(v74));
      memset(v77, 0, sizeof(v77));
      v50 = siri::ontology::oname::graph::ontology_init::common_ContactAddress(v37);
      v51 = std::string::operator=(v72, (v50 + 8));
      v52 = siri::ontology::oname::graph::ontology_init::Argument_specifyingContactAddress(v51);
      std::string::operator=(&v74, (v52 + 8));
      v75 = 0;
      v76 = 0;
      v78 = 0u;
      v79 = 0u;
      nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&buf, v80);
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(v77, &buf, v102, 1uLL);
      v64[0].__r_.__value_.__r.__words[0] = &v101;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](v64);
      if (v100 < 0)
      {
        operator delete(v99);
      }

      if (v98 < 0)
      {
        operator delete(v95);
      }

      if (SHIBYTE(buf.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(buf.__r_.__value_.__l.__data_);
      }

      v69 = 0;
      memset(v64, 0, sizeof(v64));
      *v65 = 0u;
      v68 = 0uLL;
      v66 = 0;
      v54 = siri::ontology::oname::graph::ontology_init::common_Person(v53);
      std::string::operator=(v64, (v54 + 8));
      MEMORY[0x223DC46E0](v65, a4, a5);
      v67 = 0uLL;
      v70 = 0u;
      v71 = 0u;
      nlv4_inference_orchestrator::trees::TreeNode::TreeNode(&buf, v86);
      nlv4_inference_orchestrator::trees::TreeNode::TreeNode(v102, v72);
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(&v68, &buf, &v103, 2uLL);
      v55 = 36;
      do
      {
        v56 = (&buf.__r_.__value_.__l.__data_ + v55 * 8);
        v93 = &v92[v55];
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&v93);
        if (*(&v90 + v55 * 8 + 7) < 0)
        {
          operator delete(*(v56 - 12));
        }

        if (*(v56 - 97) < 0)
        {
          operator delete(v87[v55 + 3]);
        }

        if (SHIBYTE(v87[v55 + 2]) < 0)
        {
          operator delete(*(v56 - 18));
        }

        v55 -= 18;
      }

      while (v55 * 8);
      v57 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v57, OS_LOG_TYPE_DEBUG))
      {
        v58 = *(a1 + 3);
        if (SHIBYTE(v87[3]) >= 0)
        {
          v59 = &v87[1];
        }

        else
        {
          v59 = v87[1];
        }

        LODWORD(buf.__r_.__value_.__l.__data_) = 136315907;
        *(buf.__r_.__value_.__r.__words + 4) = v58;
        WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
        *(&buf.__r_.__value_.__r.__words[1] + 6) = v89;
        HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
        v95 = v90;
        v96 = 2085;
        v97 = v59;
        _os_log_impl(&dword_22284A000, v57, OS_LOG_TYPE_DEBUG, "[%s] Generated new common_Person.name node with newNameNode.startCharIndex=%lu, newNameNode.endCharIndex=%lu, newNameNode.value=%{sensitive}s", &buf, 0x2Au);
      }

      *a9 = v64[0];
      memset(v64, 0, 32);
      *(a9 + 1) = v64[1];
      *&v64[1].__r_.__value_.__r.__words[1] = 0uLL;
      *(a9 + 8) = v66;
      *(a9 + 3) = *v65;
      v65[1] = 0;
      v66 = 0;
      v65[0] = 0;
      *(a9 + 72) = v67;
      *(a9 + 88) = v68;
      *(a9 + 13) = v69;
      v68 = 0uLL;
      v69 = 0;
      v60 = v71;
      *(a9 + 7) = v70;
      *(a9 + 8) = v60;
      a9[144] = 1;
      buf.__r_.__value_.__r.__words[0] = &v68;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&buf);
      if (SHIBYTE(v66) < 0)
      {
        operator delete(v65[0]);
      }

      if (SHIBYTE(v64[1].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64[1].__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v64[0].__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64[0].__r_.__value_.__l.__data_);
      }

      buf.__r_.__value_.__r.__words[0] = v77;
      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&buf);
      if (SHIBYTE(v74.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v74.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v73) < 0)
      {
        operator delete(*&v72[24]);
      }

      if ((v72[23] & 0x80000000) != 0)
      {
        operator delete(*v72);
      }

      goto LABEL_50;
    }

    v43 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v49 = *(a1 + 3);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v49;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v83;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
      v95 = v84;
      v45 = "[%s] contactAddressLabelNode character indices imply an empty or impossible substring (%lu -> %lu)";
      goto LABEL_48;
    }
  }

  else
  {
    v43 = SNLPOSLoggerForCategory(1);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      v44 = *(a1 + 3);
      LODWORD(buf.__r_.__value_.__l.__data_) = 136315650;
      *(buf.__r_.__value_.__r.__words + 4) = v44;
      WORD2(buf.__r_.__value_.__r.__words[1]) = 2048;
      *(&buf.__r_.__value_.__r.__words[1] + 6) = v89;
      HIWORD(buf.__r_.__value_.__r.__words[2]) = 2048;
      v95 = a8;
      v45 = "[%s] contactAddressLabelNode.startCharIndex (%lu) is less than originalNameStartCharIndex (%lu)";
LABEL_48:
      _os_log_impl(&dword_22284A000, v43, OS_LOG_TYPE_ERROR, v45, &buf, 0x20u);
    }
  }

  *a9 = 0;
  a9[144] = 0;
LABEL_50:
  buf.__r_.__value_.__r.__words[0] = v85;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v82.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v81[3]) < 0)
  {
    operator delete(v81[1]);
  }

  if (SHIBYTE(v81[0]) < 0)
  {
    operator delete(v80[0]);
  }

LABEL_22:
  buf.__r_.__value_.__r.__words[0] = v91;
  std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__destroy_vector::operator()[abi:ne200100](&buf);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v87[3]) < 0)
  {
    operator delete(v87[1]);
  }

  if (SHIBYTE(v87[0]) < 0)
  {
    operator delete(v86[0]);
  }
}

void sub_22293C760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  v67 = (v65 + 144);
  v68 = -288;
  do
  {
    nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(v67);
    v67 = (v69 - 144);
    v68 += 144;
  }

  while (v68);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a13);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a31);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a49);
  nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(&a65);
  _Unwind_Resume(a1);
}

std::string *std::__optional_copy_base<nlv4_inference_orchestrator::trees::TreeNode,false>::__optional_copy_base[abi:ne200100](std::string *this, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  this->__r_.__value_.__s.__data_[0] = 0;
  this[6].__r_.__value_.__s.__data_[0] = 0;
  if (*(a2 + 144) == 1)
  {
    nlv4_inference_orchestrator::trees::TreeNode::TreeNode(this, a2);
    this[6].__r_.__value_.__s.__data_[0] = 1;
  }

  return this;
}

void sub_22293C8B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 144) == 1)
  {
    nlv4_inference_orchestrator::trees::TreeNode::~TreeNode(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::optional<std::pair<sirinluinternal::MatchingSpan,sirinluinternal::MatchingSpan>>::~optional(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    MEMORY[0x223DC3180](a1 + 88);
    MEMORY[0x223DC3180](a1);
  }

  return a1;
}

void std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*>(uint64_t a1, std::string *a2, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vdeallocate(a1);
    v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4);
    if (v9 <= a4)
    {
      v9 = a4;
    }

    if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) >= 0xE38E38E38E38E3)
    {
      v10 = 0x1C71C71C71C71C7;
    }

    else
    {
      v10 = v9;
    }

    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vallocate[abi:ne200100](a1, v10);
  }

  v11 = *(a1 + 8) - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 4) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(a2, a3, v8);

    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__base_destruct_at_end[abi:ne200100](a1, &v12->__r_.__value_.__l.__data_);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(a2, (a2 + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(a1, (a2 + v11), a3, *(a1 + 8));
  }
}

std::string *std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(std::string *__str, std::string *a2, std::string *this)
{
  if (__str != a2)
  {
    v5 = __str;
    do
    {
      std::string::operator=(this, v5);
      std::string::operator=(this + 1, v5 + 1);
      std::string::operator=(this + 2, v5 + 2);
      *&this[3].__r_.__value_.__l.__data_ = *&v5[3].__r_.__value_.__l.__data_;
      if (this != v5)
      {
        std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(&this[3].__r_.__value_.__r.__words[2], v5[3].__r_.__value_.__r.__words[2], v5[4].__r_.__value_.__l.__data_, 0x8E38E38E38E38E39 * ((v5[4].__r_.__value_.__r.__words[0] - v5[3].__r_.__value_.__r.__words[2]) >> 4));
      }

      v6 = *&v5[5].__r_.__value_.__r.__words[1];
      *&this[4].__r_.__value_.__r.__words[2] = *&v5[4].__r_.__value_.__r.__words[2];
      *&this[5].__r_.__value_.__r.__words[1] = v6;
      this += 6;
      v5 += 6;
    }

    while (v5 != a2);
  }

  return this;
}

void std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__assign_with_size[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(uint64_t a1, std::string *__str, std::string *a3, unint64_t a4)
{
  v8 = *a1;
  if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) < a4)
  {
    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vdeallocate(a1);
    if (a4 <= 0x1C71C71C71C71C7)
    {
      v9 = 0x1C71C71C71C71C72 * ((*(a1 + 16) - *a1) >> 4);
      if (v9 <= a4)
      {
        v9 = a4;
      }

      if (0x8E38E38E38E38E39 * ((*(a1 + 16) - *a1) >> 4) >= 0xE38E38E38E38E3)
      {
        v10 = 0x1C71C71C71C71C7;
      }

      else
      {
        v10 = v9;
      }

      std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__vallocate[abi:ne200100](a1, v10);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  v11 = *(a1 + 8) - v8;
  if (0x8E38E38E38E38E39 * (v11 >> 4) >= a4)
  {
    v12 = std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(__str, a3, v8);

    std::vector<nlv4_inference_orchestrator::trees::TreeNode>::__base_destruct_at_end[abi:ne200100](a1, &v12->__r_.__value_.__l.__data_);
  }

  else
  {
    std::__copy_impl::operator()[abi:ne200100]<nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode const*,nlv4_inference_orchestrator::trees::TreeNode*>(__str, (__str + v11), v8);
    *(a1 + 8) = std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<nlv4_inference_orchestrator::trees::TreeNode>,nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*,nlv4_inference_orchestrator::trees::TreeNode*>(a1, (__str + v11), a3, *(a1 + 8));
  }
}

void *nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactTypeSplit::findMatchingSpansSplitWithOrder@<X0>(unint64_t a1@<X2>, void *a2@<X3>, void *a3@<X4>, _BYTE *a4@<X8>, unint64_t a5@<X1>)
{
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::find<unsigned long>(a2, a5);
  if (result)
  {
    v9 = result[3];
    v10 = result[4];
    while (v9 != v10)
    {
      v11 = *(v9 + 72);
      if (v11 < a1)
      {
        result = std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::find<unsigned long>(a3, v11);
        if (result)
        {
          for (i = result[3]; i != result[4]; i += 88)
          {
            if (*(i + 72) == a1)
            {
              MEMORY[0x223DC3160](v13, v9);
              MEMORY[0x223DC3160](v14, i);
              MEMORY[0x223DC3150](a4, v13);
              MEMORY[0x223DC3150](a4 + 88, v14);
              a4[176] = 1;
              MEMORY[0x223DC3180](v14);
              return MEMORY[0x223DC3180](v13);
            }
          }
        }
      }

      v9 += 88;
    }
  }

  *a4 = 0;
  a4[176] = 0;
  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::vector<sirinluinternal::MatchingSpan>>>>::find<unsigned long>(void *a1, unint64_t a2)
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

void snlp::ssu::selflogging::logUserRequestEnded(snlp::ssu::selflogging *a1, unsigned int **a2)
{
  v8 = [MEMORY[0x277CBEB18] array];
  v5 = *a2;
  v6 = a2[1];
  while (v5 != v6)
  {
    v7 = snlp::ssu::selflogging::convertUserRequestCacheEntryInfo(v5);
    [v8 addObject:v7];

    v5 += 16;
  }

  snlp::ssu::selflogging::convertRequestId(a1, v4);
}

void snlp::ssu::selflogging::logBackgroundUpdateEnded(uint64_t *a1, uint64_t *a2, char ***a3)
{
  if (*(a2 + 23) >= 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = *a2;
  }

  v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:v5];
  v7 = [MEMORY[0x277CBEB18] array];
  v8 = *a3;
  v9 = a3[1];
  while (v8 != v9)
  {
    v10 = snlp::ssu::selflogging::convertBackgroundUpdateAppInfo(v8, v6);
    [v7 addObject:v10];

    v8 += 7;
  }
  v11 = ;
  [SNLPSSUSELFLoggingUtils logBackgroundUpdateEnded:v11 locale:v12 appInfos:v7];
}

id anonymous namespace::objcUUIDFromCpp(uint64_t a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x277D5DDD0]);
  [v4 setNamespaceA:0];
  [v4 setLowInt:a1];
  [v4 setHighInt:a2];

  return v4;
}

void snlp::ssu::selflogging::logBackgroundUpdateFailed(uint64_t *a1)
  v1 = {;
  [SNLPSSUSELFLoggingUtils logBackgroundUpdateFailed:?];
}

void snlp::ssu::selflogging::buildAppBundleIdSaltedHash(char *a1@<X0>, void *a2@<X8>)
{
  {
  }

  v5 = v4;
  if (v4)
  {
    v6 = [v4 UUIDString];
    std::string::basic_string[abi:ne200100]<0>(v17, [v6 UTF8String]);

    v7 = boost::hash<std::string>::operator()(v17);
    v8 = boost::hash<std::string>::operator()(a1);
    std::basic_stringstream<char,std::char_traits<char>,std::allocator<char>>::basic_stringstream[abi:ne200100](v11);
    *(&v12 + *(v12 - 24) + 8) = *(&v12 + *(v12 - 24) + 8) & 0xFFFFFFB5 | 8;
    MEMORY[0x223DC4940](&v12, 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v8) ^ ((0xC6A4A7935BD1E995 * v8) >> 47))) ^ (0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * v7) ^ ((0xC6A4A7935BD1E995 * v7) >> 47)) + 3864292196u)) + 3864292196u);
    std::stringbuf::str();
    v11[0] = *MEMORY[0x277D82818];
    v9 = *(MEMORY[0x277D82818] + 72);
    *(v11 + *(v11[0] - 24)) = *(MEMORY[0x277D82818] + 64);
    v12 = v9;
    v13 = MEMORY[0x277D82878] + 16;
    if (v15 < 0)
    {
      operator delete(v14[7].__locale_);
    }

    v13 = MEMORY[0x277D82868] + 16;
    std::locale::~locale(v14);
    std::iostream::~basic_iostream();
    MEMORY[0x223DC4C10](&v16);
    if (v18 < 0)
    {
      operator delete(v17[0]);
    }
  }

  else
  {
    v10 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v11[0]) = 0;
      _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_ERROR, "Failed to get salt. Returning constant string to preserve privacy.", v11, 2u);
    }

    std::string::basic_string[abi:ne200100]<0>(a2, "salt_error");
  }
}

unint64_t boost::hash<std::string>::operator()(char *a1)
{
  v1 = a1[23];
  v2 = *(a1 + 1);
  if ((v1 & 0x80u) == 0)
  {
    v3 = a1;
  }

  else
  {
    v3 = *a1;
  }

  result = 0;
  if ((v1 & 0x80u) != 0)
  {
    v1 = v2;
  }

  for (; v1; --v1)
  {
    v5 = *v3++;
    result = 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))) ^ result);
  }

  return result;
}

void ___ZN12_GLOBAL__N_121getDeviceBootUniqueIdEv_block_invoke()
{
  v11 = *MEMORY[0x277D85DE8];
  memset(v10, 0, sizeof(v10));
  v7 = 37;
  v0 = sysctlbyname("kern.bootsessionuuid", v10, &v7, 0, 0);
  if (v0)
  {
    v1 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v2 = strerror(v0);
      *buf = 136315138;
      v9 = v2;
      _os_log_impl(&dword_22284A000, v1, OS_LOG_TYPE_ERROR, "Failed getting kern.bootsessionuuid with sysctlbyname() %s", buf, 0xCu);
    }
  }

  else
  {
    v4 = objc_alloc(MEMORY[0x277CCAD78]);
    v3 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v10];
    v5 = [v4 initWithUUIDString:v3];
  }
}

void sub_22293E090(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52)
{
  v53 = *(v52 - 224);
  if (v53)
  {
    *(v52 - 216) = v53;
    operator delete(v53);
  }

  if (v56)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v56);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v55);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v57);
  _Unwind_Resume(v54);
}

void sub_22293E150(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, void *__p, uint64_t a42, int a43, __int16 a44, char a45, char a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, void *a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60, int a61, __int16 a62, char a63)
{
  operator delete(v64);
  if (a46 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  if (a54)
  {
    a55 = a54;
    operator delete(a54);
  }

  if (a64 < 0)
  {
    operator delete(a59);
  }

  std::deque<std::tuple<siri::ontology::UsoGraphNode const*,siri::ontology::UsoGraphEdge const*,std::string const>>::~deque[abi:ne200100](v65 - 224);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a15);
  if (*(v65 - 145) < 0)
  {
    operator delete(*(v65 - 168));
  }

  JUMPOUT(0x22293E248);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::handleBelowVerbPaths(uint64_t a1, uint64_t a2, const void **a3, uint64_t a4)
{
  std::string::basic_string[abi:ne200100]<0>(&v15, "::");
  std::string::basic_string[abi:ne200100]<0>(&v14, "::common");
  std::string::basic_string[abi:ne200100]<0>(&v13, "_verb=");
  std::string::basic_string[abi:ne200100]<0>(&v12, ".");
  if (*(a3 + 23) >= 0)
  {
    v5 = *(a3 + 23);
  }

  else
  {
    v5 = a3[1];
  }

  std::string::basic_string[abi:ne200100](v10, v5 + 12);
  if (v11 >= 0)
  {
    v6 = v10;
  }

  else
  {
    v6 = v10[0];
  }

  if (v5)
  {
    if (*(a3 + 23) >= 0)
    {
      v7 = a3;
    }

    else
    {
      v7 = *a3;
    }

    memmove(v6, v7, v5);
  }

  strcpy(v6 + v5, "_below_verb=");
  std::string::basic_string[abi:ne200100]<0>(&v9, "_verb_entity");
  std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100](v8, "((\\w+)::common_(\\w+)(\\.)?(\\w+))");
}

void sub_22293EC5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, void *a33, uint64_t a34, int a35, __int16 a36, char a37, char a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a32 < 0)
  {
    operator delete(a27);
  }

  if (a38 < 0)
  {
    operator delete(a33);
  }

  if (a44 < 0)
  {
    operator delete(a39);
  }

  if (a50 < 0)
  {
    operator delete(a45);
  }

  if (*(v74 - 185) < 0)
  {
    operator delete(*(v74 - 208));
  }

  if (a51)
  {
    operator delete(a51);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a65);
  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a66);
  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a70 < 0)
  {
    operator delete(a69);
  }

  if (a72 < 0)
  {
    operator delete(a71);
  }

  if (a74 < 0)
  {
    operator delete(a73);
  }

  if (*(v74 - 233) < 0)
  {
    operator delete(*(v74 - 256));
  }

  if (*(v74 - 209) < 0)
  {
    operator delete(*(v74 - 232));
  }

  _Unwind_Resume(a1);
}

void **std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__erase_unique<std::string>(void *a1, const void **a2)
{
  result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::find<std::string>(a1, a2);
  if (result)
  {

    return std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::erase(a1, result);
  }

  return result;
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSystemDialogAct(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (a2[5])
  {
    v6 = "SystemPrompted";
  }

  else if (a2[4])
  {
    v6 = "SystemOffered";
  }

  else if (a2[1])
  {
    v6 = "SystemGaveOptions";
  }

  else if (a2[3])
  {
    v6 = "SystemInformed";
  }

  else if (a2[8])
  {
    v6 = "SystemReportedSuccess";
  }

  else if (a2[7])
  {
    v6 = "SystemReportedFailure";
  }

  else
  {
    v6 = "";
  }

  std::string::basic_string[abi:ne200100]<0>(v26, v6);
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v22, (a1 + 40), (a1 + 232));
  if ((v27 & 0x80u) == 0)
  {
    v7 = v26;
  }

  else
  {
    v7 = v26[0];
  }

  if ((v27 & 0x80u) == 0)
  {
    v8 = v27;
  }

  else
  {
    v8 = v26[1];
  }

  v9 = std::string::append(v22, v7, v8);
  v10 = *&v9->__r_.__value_.__l.__data_;
  v25 = v9->__r_.__value_.__r.__words[2];
  v24 = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if ((v22[23] & 0x80000000) != 0)
  {
    operator delete(*v22);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, &v24, &v24);
  memset(v22, 0, sizeof(v22));
  v23 = 1065353216;
  v11 = a2[5];
  if (v11)
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(a1, v11, __p);
    goto LABEL_30;
  }

  v12 = a2[4];
  if (v12)
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(a1, v12, __p);
    goto LABEL_30;
  }

  v13 = a2[1];
  if (v13)
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(a1, v13, __p);
    goto LABEL_30;
  }

  v14 = a2[3];
  if (v14)
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(v14, __p);
LABEL_30:
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(v22, __p);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(__p[2]);
    v15 = __p[0];
    __p[0] = 0;
    if (v15)
    {
      operator delete(v15);
    }

    goto LABEL_32;
  }

  v19 = a2[8];
  if (v19)
  {
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(a1, v19, __p);
  }

  else
  {
    v20 = a2[7];
    if (!v20)
    {
      goto LABEL_32;
    }

    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(a1, v20, __p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__move_assign(v22, __p);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(__p);
LABEL_32:
  v16 = *&v22[16];
  if (*&v22[16])
  {
    do
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, v16 + 2, (v16 + 2));
      v16 = *v16;
    }

    while (v16);
    v17 = *&v22[16];
  }

  else
  {
    v17 = 0;
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(v17);
  v18 = *v22;
  *v22 = 0;
  if (v18)
  {
    operator delete(v18);
  }

  if (SHIBYTE(v25) < 0)
  {
    operator delete(v24);
  }

  if (v27 < 0)
  {
    operator delete(v26[0]);
  }
}

void sub_22293F0B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  if (*(v14 - 57) < 0)
  {
    operator delete(*(v14 - 80));
  }

  if (*(v14 - 33) < 0)
  {
    operator delete(*(v14 - 56));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v13);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (*(a2 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "SystemPrompted");
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
  }

  v3 = *(a1 + 440);
  if (v3 >= 8)
  {
    v5 = SNLPOSLoggerForCategory(4);
    v4 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "<UNDEFINED_COMPONENT>";
      v11 = 2048;
      v12 = v3;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v4 = off_2784B6F30[v3];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v4);
  v6 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = __p;
    if (SHIBYTE(v9) < 0)
    {
      v7 = __p[0];
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "[%s] Badly formed SystemPrompted dialog act; needs to contain the target UsoGraph.", buf, 0xCu);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  v13 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (*(a2 + 8))
  {
    std::string::basic_string[abi:ne200100]<0>(buf, "SystemReportedSuccess");
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
  }

  v3 = *(a1 + 440);
  if (v3 >= 8)
  {
    v5 = SNLPOSLoggerForCategory(4);
    v4 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "<UNDEFINED_COMPONENT>";
      v11 = 2048;
      v12 = v3;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v4 = off_2784B6F30[v3];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v4);
  v6 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = __p;
    if (SHIBYTE(v9) < 0)
    {
      v7 = __p[0];
    }

    *buf = 136315138;
    *&buf[4] = v7;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "[%s] Badly formed SystemReportedSuccess dialog act; needs to supply the task UsoGraph.", buf, 0xCu);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

{
  v14 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (*(a2 + 8) && *(a2 + 16))
  {
    std::string::basic_string[abi:ne200100]<0>(&v10, "SystemReportedFailure");
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
  }

  v3 = *(a1 + 440);
  if (v3 >= 8)
  {
    v5 = SNLPOSLoggerForCategory(4);
    v4 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      buf[0] = 136315394;
      *&buf[1] = "<UNDEFINED_COMPONENT>";
      v12 = 2048;
      v13 = v3;
      _os_log_impl(&dword_22284A000, v5, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v4 = off_2784B6F30[v3];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v4);
  v6 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = __p;
    if (SHIBYTE(v9) < 0)
    {
      v7 = __p[0];
    }

    buf[0] = 136315138;
    *&buf[1] = v7;
    _os_log_impl(&dword_22284A000, v6, OS_LOG_TYPE_DEBUG, "[%s] Badly formed SystemReportedFailure dialog act; needs to supply the UsoGraphs for the failed task and for the failure reason.", buf, 0xCu);
  }

  if (SHIBYTE(v9) < 0)
  {
    operator delete(__p[0]);
  }
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *MEMORY[0x277D85DE8];
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v4 = *(a2 + 8);
  if (v4)
  {
    if (v4[1])
    {
      v6 = "UserAccepted";
    }

    else if (v4[2])
    {
      v6 = "UserAcknowledged";
    }

    else if (v4[4])
    {
      v6 = "UserCancelled";
    }

    else if (v4[6])
    {
      v6 = "UserRejected";
    }

    else if (v4[7])
    {
      v6 = "UserStatedTask";
    }

    else if (v4[8])
    {
      v6 = "UserWantedToPause";
    }

    else if (v4[9])
    {
      v6 = "UserWantedToProceed";
    }

    else if (v4[10])
    {
      v6 = "UserWantedToRepeat";
    }

    else
    {
      v6 = "";
    }

    std::string::basic_string[abi:ne200100]<0>(&v14, v6);
    v12 = std::string::insert(&v14, 0, "SystemOffered.offered_act.");
    v13 = *&v12->__r_.__value_.__l.__data_;
    *&buf[16] = *(&v12->__r_.__value_.__l + 2);
    *buf = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractLimitedContextLabelsFromUserDialogAct(a1, (a1 + 10), *(a2 + 8));
  }

  v7 = a1[110];
  if (v7 >= 8)
  {
    v9 = SNLPOSLoggerForCategory(4);
    v8 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "<UNDEFINED_COMPONENT>";
      *&buf[12] = 2048;
      *&buf[14] = v7;
      _os_log_impl(&dword_22284A000, v9, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v8 = off_2784B6F30[v7];
  }

  std::string::basic_string[abi:ne200100]<0>(&v14, v8);
  v10 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = &v14;
    if ((v14.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v11 = v14.__r_.__value_.__r.__words[0];
    }

    *buf = 136315138;
    *&buf[4] = v11;
    _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] Badly formed SystemOffered dialog act; needs to contain a user dialog act.", buf, 0xCu);
  }

  if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v14.__r_.__value_.__l.__data_);
  }
}

void sub_22293F5F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v23);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(const void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  v3 = *(a2 + 8);
  if (v3 != *(a2 + 16))
  {
    v5 = *v3;
    v6 = "UserAccepted";
    if (!*(*v3 + 1))
    {
      v6 = "UserAcknowledged";
      if (!*(v5 + 2))
      {
        v6 = "UserCancelled";
        if (!*(v5 + 4))
        {
          v6 = "UserRejected";
          if (!*(v5 + 6))
          {
            v6 = "UserStatedTask";
            if (!*(v5 + 7))
            {
              v6 = "UserWantedToPause";
              if (!*(v5 + 8))
              {
                v6 = "UserWantedToProceed";
                if (!*(v5 + 9))
                {
                  if (*(v5 + 10))
                  {
                    v6 = "UserWantedToRepeat";
                  }

                  else
                  {
                    v6 = "";
                  }
                }
              }
            }
          }
        }
      }
    }

    std::string::basic_string[abi:ne200100]<0>(&v9, v6);
    v7 = std::string::insert(&v9, 0, "SystemGaveOptions.option.");
    v8 = *&v7->__r_.__value_.__l.__data_;
    v11 = v7->__r_.__value_.__r.__words[2];
    *__p = v8;
    v7->__r_.__value_.__l.__size_ = 0;
    v7->__r_.__value_.__r.__words[2] = 0;
    v7->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v9.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v9.__r_.__value_.__l.__data_);
    }

    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromUserDialogAct(a1, a1 + 5, __p, v5);
  }
}

void sub_22293F80C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a10);
  if (a23 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v23);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSpecificSystemDialogAct(uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  if (*(a2 + 8) != *(a2 + 16))
  {
    std::string::basic_string[abi:ne200100]<0>(&v3, "SystemInformed.entity");
    nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
  }
}

void sub_22293FDC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(&a9);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v20);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractGraphFromUserDialogAct(sirinluexternal::UsoGraph *__return_ptr a1@<X8>, nlv4_inference_orchestrator::context::ContextLabelsExtractor *this@<X0>, const sirinluexternal::UserDialogAct *a3@<X1>)
{
  v29 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 1065353216;
  v4 = *(a3 + 1);
  if (v4 && (v5 = *(v4 + 16)) != 0 || (v6 = *(a3 + 2)) != 0 && (v5 = *(v6 + 8)) != 0 || (v7 = *(a3 + 4)) != 0 && (v5 = *(v7 + 8)) != 0 || (v8 = *(a3 + 6)) != 0 && (v5 = *(v8 + 16)) != 0 || (v9 = *(a3 + 7)) != 0 && (v5 = *(v9 + 8)) != 0 || (v10 = *(a3 + 8)) != 0 && (v5 = *(v10 + 8)) != 0 || (v11 = *(a3 + 9)) != 0 && (v5 = *(v11 + 8)) != 0)
  {
    v12 = a1;
    v13 = v5;
LABEL_16:
    MEMORY[0x223DC3070](v12, v13);
    goto LABEL_17;
  }

  v14 = *(a3 + 10);
  if (v14)
  {
    v13 = *(v14 + 8);
    if (v13)
    {
      v12 = a1;
      goto LABEL_16;
    }
  }

  v15 = *(this + 110);
  if (v15 >= 8)
  {
    v17 = SNLPOSLoggerForCategory(4);
    v16 = "<UNDEFINED_COMPONENT>";
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v26 = "<UNDEFINED_COMPONENT>";
      v27 = 2048;
      v28 = v15;
      _os_log_impl(&dword_22284A000, v17, OS_LOG_TYPE_ERROR, "[%s] The component %zu is invalid", buf, 0x16u);
    }
  }

  else
  {
    v16 = off_2784B6F30[v15];
  }

  std::string::basic_string[abi:ne200100]<0>(__p, v16);
  v18 = SNLPOSLoggerForCategory(4);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    v19 = __p;
    if (v21 < 0)
    {
      v19 = __p[0];
    }

    *buf = 136315138;
    v26 = v19;
    _os_log_impl(&dword_22284A000, v18, OS_LOG_TYPE_DEBUG, "[%s] Warning: Badly formed user dialog act.", buf, 0xCu);
  }

  sirinluexternal::UsoGraph::UsoGraph(a1);
  if (v21 < 0)
  {
    operator delete(__p[0]);
  }

LABEL_17:
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__deallocate_node(0);
}

void sub_2229400A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractLimitedContextLabelsFromGraph()
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = 1;
  v5 = 0;
  operator new();
}

void sub_2229405C0()
{
  if (v2)
  {
    operator delete(v2);
  }

  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v0);
  std::unique_ptr<siri::ontology::UsoGraph>::~unique_ptr[abi:ne200100](&v4);
  _Unwind_Resume(v1);
}

void sub_222940BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, void *__p, uint64_t a48, int a49, __int16 a50, char a51, char a52, std::locale a53)
{
  if (a52 < 0)
  {
    operator delete(__p);
  }

  std::basic_regex<char,std::regex_traits<char>>::~basic_regex(&a53);
  if (*(v53 - 209) < 0)
  {
    operator delete(*(v53 - 232));
  }

  _Unwind_Resume(a1);
}

void std::deque<std::tuple<siri::ontology::UsoGraphNode const*,siri::ontology::UsoGraphEdge const*,std::string const>>::push_back(unint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v5 == v4)
  {
    v6 = 0;
  }

  else
  {
    v6 = 102 * ((v5 - v4) >> 3) - 1;
  }

  v7 = a1[4];
  if (v6 == a1[5] + v7)
  {
    v8 = v7 >= 0x66;
    v9 = v7 - 102;
    if (!v8)
    {
      v10 = a1[3];
      v11 = v10 - *a1;
      if (v5 - v4 < v11)
      {
        operator new();
      }

      v12 = v11 >> 2;
      if (v10 == *a1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      std::__allocate_at_least[abi:ne200100]<std::allocator<std::__state<char> *>>(v13);
    }

    a1[4] = v9;
    v17 = *v4;
    a1[1] = (v4 + 1);
    std::__split_buffer<std::__state<char> *,std::allocator<std::__state<char> *>>::emplace_back<std::__state<char> *&>(a1, &v17);
    v4 = a1[1];
    v5 = a1[2];
  }

  if (v5 == v4)
  {
    v15 = 0;
  }

  else
  {
    v14 = a1[5] + a1[4];
    v15 = v4[v14 / 0x66] - 4080 * (v14 / 0x66) + 40 * v14;
  }

  *v15 = *a2;
  *(v15 + 8) = *(a2 + 8);
  if (*(a2 + 39) < 0)
  {
    std::string::__init_copy_ctor_external((v15 + 16), *(a2 + 16), *(a2 + 24));
  }

  else
  {
    v16 = *(a2 + 16);
    *(v15 + 32) = *(a2 + 32);
    *(v15 + 16) = v16;
  }

  ++a1[5];
}

void sub_2229411E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, __int128 a11)
{
  operator delete(v11);
  if (a11)
  {
    operator delete(a11);
  }

  _Unwind_Resume(a1);
}

uint64_t std::deque<std::tuple<siri::ontology::UsoGraphNode const*,siri::ontology::UsoGraphEdge const*,std::string const>>::~deque[abi:ne200100](uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 == v3)
  {
    v4 = (a1 + 40);
    v11 = *(a1 + 8);
  }

  else
  {
    v4 = (a1 + 40);
    v5 = *(a1 + 32);
    v6 = &v3[v5 / 0x66];
    v7 = *v6;
    v8 = *v6 + 40 * v5 + -4080 * (v5 / 0x66);
    v9 = v3[(*(a1 + 40) + v5) / 0x66] + 40 * *(a1 + 40) + 40 * v5 + -4080 * ((*(a1 + 40) + v5) / 0x66);
    if (v8 != v9)
    {
      do
      {
        if (*(v8 + 39) < 0)
        {
          operator delete(*(v8 + 16));
          v7 = *v6;
        }

        v8 += 40;
        if (v8 - v7 == 4080)
        {
          v10 = v6[1];
          ++v6;
          v7 = v10;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = *(a1 + 8);
      v2 = *(a1 + 16);
    }

    v11 = v2;
  }

  *v4 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v2 = *(a1 + 16);
      v3 = (*(a1 + 8) + 8);
      *(a1 + 8) = v3;
      v12 = v2 - v3;
    }

    while (v12 > 2);
    v11 = v2;
  }

  if (v12 == 1)
  {
    v13 = 51;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_19;
    }

    v13 = 102;
  }

  *(a1 + 32) = v13;
LABEL_19:
  if (v3 != v11)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v11);
    v11 = *(a1 + 8);
    v2 = *(a1 + 16);
  }

  if (v2 != v11)
  {
    *(a1 + 16) = v2 + ((v11 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractSalientEntityContextLabels(uint64_t *__return_ptr a1@<X8>, const void **this@<X0>, const sirinluexternal::NLContext *a3@<X1>)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 8) = 1065353216;
  v4 = *(a3 + 7);
  v5 = *(a3 + 8);
  if (v4 != v5)
  {
    do
    {
      if (*(*v4 + 40))
      {
        nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromGraph();
      }

      v4 += 8;
    }

    while (v4 != v5);
    v4 = *(a3 + 7);
    v5 = *(a3 + 8);
  }

  while (2)
  {
    if (v4 == v5)
    {
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 23, this + 47);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a1, __p, __p);
    }

    else
    {
      v6 = *v4;
      for (i = *(*v4 + 8); i != *(*v4 + 16); i += 8)
      {
        if (*(*i + 8) || *(*i + 16))
        {
          goto LABEL_19;
        }
      }

      if (!v6[4] && !v6[5] && !v6[6] && !v6[7] && !v6[8] && !v6[9])
      {
        v4 += 8;
        continue;
      }

LABEL_19:
      std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, this + 23, this + 44);
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a1, __p, __p);
    }

    break;
  }

  if (SHIBYTE(v10) < 0)
  {
    operator delete(__p[0]);
  }

  nlv4_inference_orchestrator::context::ContextLabelsExtractor::postProcessContextLabels(v8, a1);
}

void sub_222941540(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v15);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabels(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 1065353216;
  nlv4_inference_orchestrator::context::ContextLabelsExtractor::extractContextLabelsFromSystemDialogAct(a1, a2, &v6);
  for (i = v7; i; i = *i)
  {
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string const&>(a3, i + 2, (i + 2));
  }

  nlv4_inference_orchestrator::context::generatePlaceholderVerbPaths(&v5, a3);
}

void sub_222941698(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(va);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v14 - 56));
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v13);
  _Unwind_Resume(a1);
}

void uaap_orchestration::resolution::InverseResolutionTable::lookupSemanticValue(uint64_t a1@<X8>, void *a2@<X0>, unsigned __int16 *a3@<X1>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::find<std::basic_string<char16_t>>(a2, a3);
  if (v4)
  {
    if (*(v4 + 63) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a1, *(v4 + 5), *(v4 + 6));
    }

    else
    {
      *a1 = *(v4 + 20);
      *(a1 + 16) = *(v4 + 7);
    }

    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a1 = 0;
  }

  *(a1 + 24) = v5;
}

unsigned __int16 *std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::find<std::basic_string<char16_t>>(void *a1, unsigned __int16 *a2)
{
  v4 = std::__string_hash<char16_t>::operator()[abi:ne200100](a2);
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

  for (i = *v10; i; i = *i)
  {
    v12 = *(i + 1);
    if (v6 == v12)
    {
      if (std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](i + 8, a2))
      {
        return i;
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
  }

  return i;
}

unint64_t std::__string_hash<char16_t>::operator()[abi:ne200100](uint64_t a1)
{
  v1 = *(a1 + 23);
  if ((v1 & 0x80u) == 0)
  {
    v2 = a1;
  }

  else
  {
    v2 = *a1;
  }

  if ((v1 & 0x80u) != 0)
  {
    v1 = *(a1 + 8);
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v4, v2, 2 * v1);
}

BOOL std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 23);
  v3 = *(a1 + 1);
  if (v2 >= 0)
  {
    v3 = *(a1 + 23);
  }

  v4 = *(a2 + 23);
  v5 = v4;
  if ((v4 & 0x80u) != 0)
  {
    v4 = *(a2 + 1);
  }

  if (v3 != v4)
  {
    return 0;
  }

  if (!v3)
  {
    return 1;
  }

  if (v5 >= 0)
  {
    v6 = a2;
  }

  else
  {
    v6 = *a2;
  }

  if (v2 >= 0)
  {
    v7 = a1;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v3 - 1;
  do
  {
    v10 = *v7++;
    v9 = v10;
    v12 = *v6++;
    v11 = v12;
    v14 = v8-- != 0;
    result = v11 == v9;
  }

  while (v11 == v9 && v14);
  return result;
}

uint64_t uaap_orchestration::resolution::InverseResolutionTable::buildMapFromResolutionTable@<X0>(const uaap_orchestration::grammar::ResolutionTable *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  uaap_orchestration::grammar::ResolutionTable::getSemanticValues(a1, v12);
  for (i = v13; i; i = *i)
  {
    uaap_orchestration::grammar::ResolutionTable::getSynonyms(a1, i + 8, v11);
    v5 = v11[0];
    v6 = v11[1];
    while (v5 != v6)
    {
      std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::pair[abi:ne200100]<true,0>(&v8, v5, i + 1);
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>>(a2, &v8, &v8);
      if (v10 < 0)
      {
        operator delete(__p);
      }

      if (SHIBYTE(v8.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v8.__r_.__value_.__l.__data_);
      }

      v5 = (v5 + 24);
    }

    v8.__r_.__value_.__r.__words[0] = v11;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v8);
  }

  return std::__hash_table<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,snlp::common::espresso_inference::e5ml::WeightsHandler::EspressoWeightType>>>::~__hash_table(v12);
}

std::basic_string<char16_t> *std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>::pair[abi:ne200100]<true,0>(std::basic_string<char16_t> *this, __int128 *a2, __int128 *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  if (*(a3 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this + 1, *a3, *(a3 + 1));
  }

  else
  {
    v6 = *a3;
    this[1].__r_.__value_.__r.__words[2] = *(a3 + 2);
    *&this[1].__r_.__value_.__l.__data_ = v6;
  }

  return this;
}

void sub_222941AB8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

BOOL std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>>>(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = std::__string_hash<char16_t>::operator()[abi:ne200100](a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = *(v12 + 1);
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  result = std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v12 + 8, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_222941D64(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::allocator<snlp::ssu::app::SSUAppParameter>::destroy[abi:ne200100]((v2 + 2));
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

unint64_t uaap_orchestration::resolution::Resolver::getInverseResolutionTableForLabel@<X0>(void *a1@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X8>)
{
  result = std::__string_hash<char16_t>::operator()[abi:ne200100](a2);
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_17;
  }

  v8 = result;
  v9 = vcnt_s8(v7);
  v9.i16[0] = vaddlv_u8(v9);
  v10 = v9.u32[0];
  if (v9.u32[0] > 1uLL)
  {
    v11 = result;
    if (result >= *&v7)
    {
      v11 = result % *&v7;
    }
  }

  else
  {
    v11 = (*&v7 - 1) & result;
  }

  v12 = *(*a1 + 8 * v11);
  if (!v12 || (v13 = *v12) == 0)
  {
LABEL_17:
    v15 = 0;
    *a3 = 0;
    goto LABEL_18;
  }

  while (1)
  {
    v14 = *(v13 + 1);
    if (v8 == v14)
    {
      break;
    }

    if (v10 > 1)
    {
      if (v14 >= *&v7)
      {
        v14 %= *&v7;
      }
    }

    else
    {
      v14 &= *&v7 - 1;
    }

    if (v14 != v11)
    {
      goto LABEL_17;
    }

LABEL_16:
    v13 = *v13;
    if (!v13)
    {
      goto LABEL_17;
    }
  }

  result = std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v13 + 8, a2);
  if ((result & 1) == 0)
  {
    goto LABEL_16;
  }

  result = std::unordered_map<std::basic_string<char16_t>,std::basic_string<char16_t>>::unordered_map(a3, (v13 + 20));
  v15 = 1;
LABEL_18:
  a3[40] = v15;
  return result;
}

uint64_t std::unordered_map<std::basic_string<char16_t>,std::basic_string<char16_t>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>> const&>(a1, i + 8, (i + 8));
  }

  return a1;
}

BOOL std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::pair<std::basic_string<char16_t> const,std::basic_string<char16_t>> const&>(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = std::__string_hash<char16_t>::operator()[abi:ne200100](a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = *(v12 + 1);
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  result = std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v12 + 8, a2);
  if (!result)
  {
    goto LABEL_17;
  }

  return result;
}

void sub_222942208(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  if (*(v3 + 39) < 0)
  {
    operator delete(*(v3 + 16));
  }

  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void uaap_orchestration::resolution::Resolver::lookupSemanticValueForLabel(void *a1@<X0>, unsigned __int16 *a2@<X1>, _BYTE *a3@<X8>, unsigned __int16 *a4@<X2>)
{
  uaap_orchestration::resolution::Resolver::getInverseResolutionTableForLabel(a1, a2, v6);
  if (v7 == 1)
  {
    uaap_orchestration::resolution::InverseResolutionTable::lookupSemanticValue(a3, v6, a4);
    if (v7)
    {
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(v6);
    }
  }

  else
  {
    *a3 = 0;
    a3[24] = 0;
  }
}

void sub_2229422A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(&a9);
  }

  _Unwind_Resume(exception_object);
}

void uaap_orchestration::resolution::Resolver::buildResolutionTablesFromGrammar(const uaap_orchestration::grammar::UaapGrammar *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 8) = 1065353216;
  v3 = *a1;
  v4 = *(a1 + 1);
  if (*a1 == v4)
  {
    return;
  }

  do
  {
    std::__optional_copy_base<uaap_orchestration::grammar::ValueConstraints,false>::__optional_copy_base[abi:ne200100](&v20, v3 + 48);
    if ((v25 & 1) == 0)
    {
      goto LABEL_36;
    }

    std::__optional_copy_base<uaap_orchestration::grammar::ResolutionTable,false>::__optional_copy_base[abi:ne200100](v18, v24);
    if ((v19 & 1) == 0)
    {
      goto LABEL_30;
    }

    uaap_orchestration::resolution::InverseResolutionTable::buildMapFromResolutionTable(v18, v17);
    if (*(v3 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v14, *v3, *(v3 + 8));
    }

    else
    {
      v14 = *v3;
    }

    __p = v14;
    memset(&v14, 0, sizeof(v14));
    std::unordered_map<std::basic_string<char16_t>,std::basic_string<char16_t>>::unordered_map(&v16, v17);
    v5 = std::__string_hash<char16_t>::operator()[abi:ne200100](&__p);
    v6 = v5;
    v7 = a2[1];
    if (!*&v7)
    {
      goto LABEL_23;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= *&v7)
      {
        v10 = v5 % *&v7;
      }
    }

    else
    {
      v10 = (*&v7 - 1) & v5;
    }

    v11 = *(*a2 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_23:
      operator new();
    }

    while (1)
    {
      v13 = *(v12 + 1);
      if (v13 == v6)
      {
        break;
      }

      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_23;
      }

LABEL_22:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_23;
      }
    }

    if (!std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v12 + 8, &__p))
    {
      goto LABEL_22;
    }

    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(&v16);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(v17);
    if (v19)
    {
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v18);
    }

LABEL_30:
    if (v25)
    {
      if (v24[40] == 1)
      {
        std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v24);
      }

      __p.__r_.__value_.__r.__words[0] = &v23;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
      __p.__r_.__value_.__r.__words[0] = &v22;
      std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&__p);
      if (v21 == 1 && SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v20.__r_.__value_.__l.__data_);
      }
    }

LABEL_36:
    v3 += 184;
  }

  while (v3 != v4);
}

void sub_2229428D0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, int a39, __int16 a40, char a41, char a42)
{
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,void *>>>>::~unique_ptr[abi:ne200100](v43 - 112);
  std::pair<std::basic_string<char16_t> const,uaap_orchestration::resolution::InverseResolutionTable>::~pair(&__p);
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(&a28);
  if (a38 == 1)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(&a33);
  }

  std::optional<uaap_orchestration::grammar::ValueConstraints>::~optional(&a40);
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>>>::~__hash_table(v42);
  _Unwind_Resume(a1);
}

uint64_t std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,std::vector<std::basic_string<char16_t>>>,0>((v2 + 2));
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

uint64_t std::pair<std::basic_string<char16_t> const,uaap_orchestration::resolution::InverseResolutionTable>::~pair(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t std::optional<uaap_orchestration::grammar::ValueConstraints>::~optional(uint64_t a1)
{
  if (*(a1 + 128) == 1)
  {
    if (*(a1 + 120) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(a1 + 80);
    }

    v3 = (a1 + 56);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a1 + 32);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 24) == 1 && *(a1 + 23) < 0)
    {
      operator delete(*a1);
    }
  }

  return a1;
}

uint64_t std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,uaap_orchestration::resolution::InverseResolutionTable>,0>((v2 + 2));
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

void std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,uaap_orchestration::resolution::InverseResolutionTable>,0>(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::~__hash_table(a1 + 24);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

void std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,std::vector<std::basic_string<char16_t>>>,0>(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,uaap_orchestration::resolution::InverseResolutionTable>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,uaap_orchestration::resolution::InverseResolutionTable>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

const void ***nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::isRelevantMatchingSpan(void *a1, const void *a2, uint64_t a3)
{
  result = a1[6];
  if (result)
  {
    v5 = *(result + 23);
    if ((v5 & 0x8000000000000000) != 0)
    {
      v6 = result;
      result = *result;
      v5 = v6[1];
    }

    if (v5 == a3 && !memcmp(result, a2, v5))
    {
      v7 = a1[1];
      v8 = a1[2];
      if (v7 != v8)
      {
        while (*v7 != 8)
        {
          if (++v7 == v8)
          {
            v7 = a1[2];
            return (v7 != v8);
          }
        }
      }

      return (v7 != v8);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *a2 = *this;
  }
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::findTokenIndicesOfUngroundedNode(_BYTE *a1@<X8>, char **this@<X0>, nlv4_inference_orchestrator::trees::TreeNode *a3@<X1>)
{
  v3 = a3;
  v44 = *MEMORY[0x277D85DE8];
  v39 = 0u;
  memset(v38, 0, sizeof(v38));
  __p[0] = a3;
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(v38, __p);
  v6 = *(&v39 + 1);
  if (*(&v39 + 1))
  {
    v34 = v3;
    v35 = a1;
    while (1)
    {
      v7 = v6 - 1;
      v8 = *(*(*&v38[8] + (((v39 + v7) >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * ((v39 + v7) & 0x1FF));
      *(&v39 + 1) = v7;
      std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::__maybe_remove_back_spare[abi:ne200100](v38);
      if (v8[11] == v8[12])
      {
        break;
      }

LABEL_27:
      v29 = v8[11];
      v30 = v8[12];
      while (v29 != v30)
      {
        __p[0] = v29;
        std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::push_back(v38, __p);
        v29 += 144;
      }

      v6 = *(&v39 + 1);
      if (!*(&v39 + 1))
      {
        std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](v38);
        v3 = v34;
        a1 = v35;
        goto LABEL_34;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(__p, this[3]);
    v10 = this[16];
    v9 = this[17];
    v11 = v9 - v10;
    if (v9 == v10)
    {
LABEL_8:
      v18 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = __p;
        if (v37 < 0)
        {
          v19 = __p[0];
        }

        v20 = v8[9];
        *buf = 136315394;
        v41 = v19;
        v42 = 2048;
        v43 = v20;
        v21 = v18;
        v22 = "[%s] Warning: could not find start token index corresponding to node.startCharIndex=%lu";
LABEL_20:
        _os_log_impl(&dword_22284A000, v21, OS_LOG_TYPE_DEFAULT, v22, buf, 0x16u);
      }
    }

    else
    {
      v12 = 0;
      v13 = 0x8E38E38E38E38E39 * (v11 >> 4);
      v14 = (v10 + 96);
      v15 = (v10 + 104);
      v16 = 1;
      while (1)
      {
        v17 = *v14;
        v14 += 18;
        if (v17 == v8[9])
        {
          break;
        }

        ++v12;
        v15 += 18;
        ++v16;
        if (v12 >= v13)
        {
          goto LABEL_8;
        }
      }

      if (v12 < v13)
      {
        v23 = -v13;
        while (1)
        {
          v24 = *v15;
          v15 += 18;
          if (v24 == v8[10])
          {
            break;
          }

          ++v16;
          if (v23 + v16 == 1)
          {
            goto LABEL_16;
          }
        }

        v28 = 1;
LABEL_22:
        if (v37 < 0)
        {
          operator delete(__p[0]);
          if (v28)
          {
LABEL_26:
            operator new();
          }
        }

        else if (v28)
        {
          goto LABEL_26;
        }

        goto LABEL_27;
      }

LABEL_16:
      v25 = SNLPOSLoggerForCategory(1);
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        v26 = __p;
        if (v37 < 0)
        {
          v26 = __p[0];
        }

        v27 = v8[10];
        *buf = 136315394;
        v41 = v26;
        v42 = 2048;
        v43 = v27;
        v21 = v25;
        v22 = "[%s] Warning: could not find end token index corresponding to node.endCharIndex=%lu";
        goto LABEL_20;
      }
    }

    v28 = 0;
    goto LABEL_22;
  }

  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](v38);
LABEL_34:
  v31 = SNLPOSLoggerForCategory(1);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
  {
    v32 = this[3];
    if (*(v3 + 23) >= 0)
    {
      v33 = v3;
    }

    else
    {
      v33 = *v3;
    }

    *v38 = 136315394;
    *&v38[4] = v32;
    *&v38[12] = 2080;
    *&v38[14] = v33;
    _os_log_impl(&dword_22284A000, v31, OS_LOG_TYPE_DEBUG, "[%s] No grounded tokens found under node: %s", v38, 0x16u);
  }

  *a1 = 0;
  a1[16] = 0;
}

void sub_22294310C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::deque<std::reference_wrapper<nlv4_inference_orchestrator::trees::TreeNode>>::~deque[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t nlv4_inference_orchestrator::post_processing::tree_manipulations::ContactAddressDowncaster::hasMatchingSpanWithIndices(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  for (i = *a2; ; i += 88)
  {
    if (i == a2[1])
    {
      return 0;
    }

    if ((*(i + 80) & 2) != 0 && (*(i + 80) & 1) != 0 && *(i + 76) == a3 && *(i + 72) == a4)
    {
      break;
    }
  }

  return 1;
}

std::string *snlp::ssu::cache::SSUCacheFileReadStreamManager::SSUCacheFileReadStreamManager(std::string *this, __int128 *a2, std::string::size_type *a3, __int128 *a4)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v7 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v7;
  }

  v8 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((this + 40), *a4, *(a4 + 1));
  }

  else
  {
    v9 = *a4;
    this[2].__r_.__value_.__l.__size_ = *(a4 + 2);
    *&this[1].__r_.__value_.__r.__words[2] = v9;
  }

  *&this[2].__r_.__value_.__r.__words[2] = 0u;
  *&this[3].__r_.__value_.__r.__words[1] = 0u;
  LODWORD(this[4].__r_.__value_.__l.__data_) = 1065353216;
  return this;
}

void sub_222943698(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t snlp::ssu::cache::SSUCacheFileReadStreamManager::openReadStream(std::string *a1, uint64_t a2)
{
  v33 = *MEMORY[0x277D85DE8];
  if (std::__hash_table<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::__unordered_map_hasher<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,snlp::ssu::app::SSUAppCategoryHash,std::equal_to<snlp::ssu::app::SSUAppCategory>,true>,std::__unordered_map_equal<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::equal_to<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategoryHash,true>,std::allocator<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>>>::find<snlp::ssu::app::SSUAppCategory>(&a1[2].__r_.__value_.__r.__words[2], a2))
  {
    v4 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a2 + 8);
      v6 = a2 + 8;
      v5 = v7;
      if (*(v6 + 23) >= 0)
      {
        v5 = v6;
      }

      v8 = *(v6 + 24);
      if (v8 <= 3)
      {
        v9 = EnumNamesSSUCategoryType(void)::names[v8];
      }

      else
      {
        v9 = "";
      }

      *buf = 136315394;
      *v24 = v5;
      *&v24[8] = 2080;
      *&v24[10] = v9;
      _os_log_impl(&dword_22284A000, v4, OS_LOG_TYPE_ERROR, "Cache file read stream already open for app=%s, category=%s.", buf, 0x16u);
    }
  }

  else
  {
    snlp::ssu::cache::SSUCacheDirectory::lookupCacheFileForCategory(a1[1].__r_.__value_.__l.__data_, a1, a2 + 8, *(a2 + 32), &a1[1].__r_.__value_.__s.__data_[16], buf);
    if (v32)
    {
      operator new();
    }

    v10 = SNLPOSLoggerForCategory(8);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      if (*(a2 + 31) >= 0)
      {
        v11 = a2 + 8;
      }

      else
      {
        v11 = *(a2 + 8);
      }

      v12 = *(a2 + 32);
      if (v12 <= 3)
      {
        v13 = EnumNamesSSUCategoryType(void)::names[v12];
      }

      else
      {
        v13 = "";
      }

      v15 = 136315906;
      v16 = "SSU";
      v17 = 2080;
      v18 = "[insights-snlp-ssu]: ";
      v19 = 2080;
      v20 = v11;
      v21 = 2080;
      v22 = v13;
      _os_log_impl(&dword_22284A000, v10, OS_LOG_TYPE_DEBUG, "[%s] %sCache file is missing for app %s and category %s. This means that it has not yet been registered outside the request handling path. Skipping.", &v15, 0x2Au);
    }

    if (v32 == 1)
    {
      if (v31 < 0)
      {
        operator delete(__p);
      }

      if (v29 < 0)
      {
        operator delete(v28);
      }

      if (v27 < 0)
      {
        operator delete(v26);
      }

      if (v25 < 0)
      {
        operator delete(*&v24[4]);
      }
    }
  }

  return 0;
}

void sub_222943DA8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va2, a3);
  va_start(bufa, a3);
  va_start(va, a3);
  v4 = va_arg(bufa, void);
  va_copy(va2, bufa);
  buf = va_arg(va2, char *);
  v8 = va_arg(va2, void);
  v9 = va_arg(va2, void);
  v10 = va_arg(va2, void);
  v11 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,void *>>>>::~unique_ptr[abi:ne200100](bufa);
  std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>::reset[abi:ne200100](va, 0);
  std::optional<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::~optional(va2);
  _Unwind_Resume(a1);
}

void *std::__hash_table<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::__unordered_map_hasher<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,snlp::ssu::app::SSUAppCategoryHash,std::equal_to<snlp::ssu::app::SSUAppCategory>,true>,std::__unordered_map_equal<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::equal_to<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategoryHash,true>,std::allocator<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>>>::find<snlp::ssu::app::SSUAppCategory>(void *a1, char *a2)
{
  v4 = snlp::ssu::app::SSUAppCategoryHash::operator()(a1, a2);
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
        if (snlp::ssu::app::SSUAppCategory::operator==((v11 + 2), a2))
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

uint64_t *std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>::reset[abi:ne200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v5 = (v2 + 704);
    std::vector<snlp::ssu::cache::SSUCacheObjectIntent>::__destroy_vector::operator()[abi:ne200100](&v5);
    std::__variant_detail::__dtor<std::__variant_detail::__traits<boost::archive::binary_iarchive,boost::archive::text_iarchive>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100]((v2 + 576));
    v3 = MEMORY[0x277D82808];
    v4 = *MEMORY[0x277D82808];
    *v2 = *MEMORY[0x277D82808];
    *(v2 + *(v4 - 24)) = *(v3 + 24);
    MEMORY[0x223DC47C0](v2 + 16);
    std::istream::~istream();
    MEMORY[0x223DC4C10](v2 + 424);

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

uint64_t std::optional<snlp::ssu::cache::SSUCacheDirectory::CacheFileResult>::~optional(uint64_t a1)
{
  if (*(a1 + 104) == 1)
  {
    if (*(a1 + 103) < 0)
    {
      operator delete(*(a1 + 80));
    }

    if (*(a1 + 79) < 0)
    {
      operator delete(*(a1 + 56));
    }

    if (*(a1 + 55) < 0)
    {
      operator delete(*(a1 + 32));
    }

    if (*(a1 + 31) < 0)
    {
      operator delete(*(a1 + 8));
    }
  }

  return a1;
}

char **std::unique_ptr<std::__hash_node<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,void *>>>>::~unique_ptr[abi:ne200100](char **a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<snlp::ssu::app::SSUAppCategory const,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

void std::__destroy_at[abi:ne200100]<std::pair<snlp::ssu::app::SSUAppCategory const,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,0>(uint64_t a1)
{
  std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>::reset[abi:ne200100]((a1 + 40), 0);
  if (*(a1 + 31) < 0)
  {
    v2 = *(a1 + 8);

    operator delete(v2);
  }
}

boost::archive::detail::basic_iarchive *std::__variant_detail::__dtor<std::__variant_detail::__traits<boost::archive::binary_iarchive,boost::archive::text_iarchive>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](boost::archive::detail::basic_iarchive *result)
{
  v1 = result;
  v2 = *(result + 30);
  if (v2 != -1)
  {
    result = off_2835E43E0[v2](&v3, result);
  }

  *(v1 + 30) = -1;
  return result;
}

uint64_t _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN5boost7archive15binary_iarchiveENS9_13text_iarchiveEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(int a1, boost::archive::detail::basic_iarchive *this)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  v3 = v2 + 40;

  return boost::archive::basic_text_iprimitive<std::istream>::~basic_text_iprimitive(v3);
}

std::locale *_ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8ne200100IOZNS0_6__dtorINS0_8__traitsIJN5boost7archive15binary_iarchiveENS9_13text_iarchiveEEEELNS0_6_TraitE1EE9__destroyB8ne200100EvEUlRT_E_JRNS0_6__baseILSD_1EJSA_SB_EEEEEEDcSF_DpT0_(int a1, boost::archive::detail::basic_iarchive *this)
{
  boost::archive::detail::basic_iarchive::~basic_iarchive(this);
  v3 = v2 + 5;

  return boost::archive::basic_binary_iprimitive<boost::archive::binary_iarchive,char,std::char_traits<char>>::~basic_binary_iprimitive(v3);
}

uint64_t snlp::ssu::cache::SSUCacheFileReadStreamManager::getReadStream(int8x8_t *a1, char *a2)
{
  v4 = snlp::ssu::app::SSUAppCategoryHash::operator()(a1, a2);
  v5 = a1[9];
  if (v5)
  {
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

    v10 = *(*&a1[8] + 8 * v9);
    if (v10)
    {
      v11 = *v10;
      if (*v10)
      {
        do
        {
          v12 = v11[1];
          if (v6 == v12)
          {
            if (snlp::ssu::app::SSUAppCategory::operator==((v11 + 2), a2))
            {
              return v11[7];
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
    }
  }

  return 0;
}

char *snlp::ssu::cache::SSUCacheFileReadStreamManager::releaseReadStream@<X0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v6 = (a1 + 8);
  result = std::__hash_table<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::__unordered_map_hasher<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,snlp::ssu::app::SSUAppCategoryHash,std::equal_to<snlp::ssu::app::SSUAppCategory>,true>,std::__unordered_map_equal<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::equal_to<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategoryHash,true>,std::allocator<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>>>::find<snlp::ssu::app::SSUAppCategory>(a1 + 8, a2);
  if (result)
  {
    v8 = *(result + 7);
    *(result + 7) = 0;
    *a3 = v8;
    result = std::__hash_table<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::__unordered_map_hasher<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,snlp::ssu::app::SSUAppCategoryHash,std::equal_to<snlp::ssu::app::SSUAppCategory>,true>,std::__unordered_map_equal<snlp::ssu::app::SSUAppCategory,std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,std::equal_to<snlp::ssu::app::SSUAppCategory>,snlp::ssu::app::SSUAppCategoryHash,true>,std::allocator<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>>>::find<snlp::ssu::app::SSUAppCategory>(v6, a2);
    if (result)
    {
      v9 = a1[9];
      v10 = *(result + 1);
      v11 = vcnt_s8(v9);
      v11.i16[0] = vaddlv_u8(v11);
      if (v11.u32[0] > 1uLL)
      {
        if (v10 >= *&v9)
        {
          v10 %= *&v9;
        }
      }

      else
      {
        v10 &= *&v9 - 1;
      }

      v12 = *(*v6 + 8 * v10);
      do
      {
        v13 = v12;
        v12 = *v12;
      }

      while (v12 != result);
      if (v13 == (a1 + 10))
      {
        goto LABEL_21;
      }

      v14 = *(v13 + 1);
      if (v11.u32[0] > 1uLL)
      {
        if (v14 >= *&v9)
        {
          v14 %= *&v9;
        }
      }

      else
      {
        v14 &= *&v9 - 1;
      }

      if (v14 != v10)
      {
LABEL_21:
        if (!*result)
        {
          goto LABEL_22;
        }

        v15 = *(*result + 8);
        if (v11.u32[0] > 1uLL)
        {
          if (v15 >= *&v9)
          {
            v15 %= *&v9;
          }
        }

        else
        {
          v15 &= *&v9 - 1;
        }

        if (v15 != v10)
        {
LABEL_22:
          *(*v6 + 8 * v10) = 0;
        }
      }

      v16 = *result;
      if (*result)
      {
        v17 = *(v16 + 8);
        if (v11.u32[0] > 1uLL)
        {
          if (v17 >= *&v9)
          {
            v17 %= *&v9;
          }
        }

        else
        {
          v17 &= *&v9 - 1;
        }

        if (v17 != v10)
        {
          *(*v6 + 8 * v17) = v13;
          v16 = *result;
        }
      }

      *v13 = v16;
      *result = 0;
      --a1[11];
      v18[0] = result;
      v18[1] = v6;
      v19 = 1;
      memset(v20, 0, sizeof(v20));
      return std::unique_ptr<std::__hash_node<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<snlp::ssu::app::SSUAppCategory,std::unique_ptr<snlp::ssu::cache::SSUCacheFileReadStream>>,void *>>>>::~unique_ptr[abi:ne200100](v18);
    }
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned long,std::string>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 63) < 0)
    {
      operator delete(__p[5]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<std::string,unsigned long>,void *>>>::operator()[abi:ne200100](char a1, void **__p)
{
  if (a1)
  {
    if (*(__p + 55) < 0)
    {
      operator delete(__p[4]);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *v12 = a1[1];
  *&v12[7] = *(a1 + 15);
  v4 = *(a1 + 23);
  a1[1] = 0;
  a1[2] = 0;
  *a1 = 0;
  v6 = a1 + 3;
  v5 = a1[3];
  *v11 = a1[4];
  *&v11[7] = *(a1 + 39);
  v7 = *(a1 + 47);
  a1[3] = 0;
  a1[4] = 0;
  a1[5] = 0;
  v8 = *(a2 + 16);
  *a1 = *a2;
  a1[2] = v8;
  *(a2 + 23) = 0;
  *a2 = 0;
  if (*(a1 + 47) < 0)
  {
    operator delete(*v6);
  }

  v9 = *(a2 + 24);
  v6[2] = *(a2 + 40);
  *v6 = v9;
  *(a2 + 47) = 0;
  *(a2 + 24) = 0;
  if (*(a2 + 23) < 0)
  {
    operator delete(*a2);
    v10 = *(a2 + 47);
    *a2 = v3;
    *(a2 + 8) = *v12;
    *(a2 + 15) = *&v12[7];
    *(a2 + 23) = v4;
    if (v10 < 0)
    {
      operator delete(*(a2 + 24));
    }
  }

  else
  {
    *a2 = v3;
    *(a2 + 8) = *v12;
    *(a2 + 15) = *&v12[7];
    *(a2 + 23) = v4;
  }

  *(a2 + 24) = v5;
  *(a2 + 32) = *v11;
  *(a2 + 39) = *&v11[7];
  *(a2 + 47) = v7;
}

void std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(uint64_t *a1, const void **a2, const void **a3, uint64_t a4, uint64_t a5, __int128 *a6, uint64_t a7)
{
  if (!a5)
  {
    return;
  }

  v9 = a5;
  v13 = a1;
  v14 = a1;
  while (v9 > a7 && a4 > a7)
  {
    if (!a4)
    {
      return;
    }

    while (!snlp::ssu::usershortcut::operator<(a2, v14))
    {
      v13 = (v14 + 6);
      v14 += 6;
      if (!--a4)
      {
        return;
      }
    }

    v71 = a3;
    v72 = a6;
    if (a4 >= v9)
    {
      if (a4 == 1)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &>(v13, a2);
        return;
      }

      v70 = a4 / 2;
      v17 = &v13[6 * (a4 / 2)];
      if (a3 == a2)
      {
        v16 = a3;
      }

      else
      {
        v68 = a7;
        v19 = 0xAAAAAAAAAAAAAAABLL * ((a3 - a2) >> 4);
        v16 = a2;
        do
        {
          v20 = &v16[6 * (v19 >> 1)];
          v21 = snlp::ssu::usershortcut::operator<(v20, &v13[6 * (a4 / 2)]);
          if (v21)
          {
            v19 += ~(v19 >> 1);
          }

          else
          {
            v19 >>= 1;
          }

          if (v21)
          {
            v16 = v20 + 6;
          }
        }

        while (v19);
        a7 = v68;
      }

      v15 = 0xAAAAAAAAAAAAAAABLL * ((v16 - a2) >> 4);
    }

    else
    {
      v15 = v9 / 2;
      v16 = &a2[6 * (v9 / 2)];
      v17 = a2;
      if (a2 != v14)
      {
        v67 = a7;
        v18 = 0xAAAAAAAAAAAAAAABLL * ((a2 - v14) >> 4);
        do
        {
          if (snlp::ssu::usershortcut::operator<(v16, &v14[6 * (v18 >> 1)]))
          {
            v18 >>= 1;
          }

          else
          {
            v14 += 6 * (v18 >> 1) + 6;
            v18 += ~(v18 >> 1);
          }
        }

        while (v18);
        v17 = v14;
        a7 = v67;
        v15 = v9 / 2;
      }

      v70 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v13) >> 4);
    }

    v14 = v13;
    a3 = v16;
    if (v17 != a2)
    {
      a3 = v17;
      if (v16 != a2)
      {
        v66 = v15;
        v69 = a7;
        a3 = v17 + 6;
        v22 = v17;
        v23 = a2;
        while (1)
        {
          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &>(v22, a2);
          v22 += 6;
          a2 += 6;
          if (a2 == v16)
          {
            break;
          }

          if (v22 == v23)
          {
            v23 = a2;
          }

          a3 += 6;
        }

        if (v22 != v23)
        {
          v24 = v23;
          do
          {
            while (1)
            {
              std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:ne200100]<std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *> &>(v22, v23);
              v22 += 6;
              v23 += 48;
              if (v23 == v16)
              {
                break;
              }

              if (v22 == v24)
              {
                v24 = v23;
              }
            }

            v23 = v24;
          }

          while (v22 != v24);
        }

        a7 = v69;
        v15 = v66;
      }
    }

    a4 -= v70;
    v9 -= v15;
    if ((v70 + v15) >= a4 + v9)
    {
      v25 = a4;
      v26 = v15;
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(a3, v16, v71, v25, v9, v72, a7);
      v16 = v17;
      v9 = v26;
      a4 = v70;
    }

    else
    {
      std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<snlp::ssu::usershortcut::SSUUserShortcut *>>(v13, v17, a3, v70, v15, v72, a7);
      v13 = a3;
      v14 = a3;
      a3 = v71;
    }

    a2 = v16;
    a6 = v72;
    if (!v9)
    {
      return;
    }
  }

  v73[0] = a6;
  v73[1] = &v74;
  v74 = 0;
  if (a4 > v9)
  {
    if (a3 == a2)
    {
      goto LABEL_104;
    }

    v27 = 0;
    v28 = a6;
    v29 = a2;
    do
    {
      v30 = *v29;
      *(v28 + 16) = *(v29 + 16);
      *v28 = v30;
      *(v29 + 8) = 0;
      *(v29 + 16) = 0;
      *v29 = 0;
      v31 = *(v29 + 24);
      *(v28 + 40) = *(v29 + 40);
      *(v28 + 24) = v31;
      *(v29 + 32) = 0;
      *(v29 + 40) = 0;
      *(v29 + 24) = 0;
      ++v27;
      v29 += 48;
      v28 += 48;
    }

    while (v29 != a3);
    v74 = v27;
    v32 = a3 - 6;
    while (1)
    {
      if (a2 == v14)
      {
        if (v28 != a6)
        {
          v56 = 0;
          do
          {
            v57 = &v32[v56 / 8];
            if (SHIBYTE(v32[v56 / 8 + 2]) < 0)
            {
              operator delete(*v57);
            }

            v58 = (v28 + v56 - 48);
            v59 = *v58;
            v57[2] = *(v28 + v56 - 32);
            *v57 = v59;
            *(v28 + v56 - 25) = 0;
            *v58 = 0;
            if (*(v57 + 47) < 0)
            {
              operator delete(v57[3]);
            }

            v60 = v28 + v56;
            v61 = *(v28 + v56 - 24);
            v57[5] = *(v28 + v56 - 8);
            *(v57 + 3) = v61;
            *(v60 - 1) = 0;
            *(v60 - 24) = 0;
            v56 -= 48;
          }

          while ((v28 + v56) != a6);
        }

        goto LABEL_104;
      }

      v33 = a2 - 6;
      v34 = (v28 - 48);
      v35 = snlp::ssu::usershortcut::operator<((v28 - 48), a2 - 6);
      v36 = *(v32 + 23);
      if (v35)
      {
        if (v36 < 0)
        {
          operator delete(*v32);
        }

        v37 = *v33;
        v32[2] = *(a2 - 4);
        *v32 = v37;
        *(a2 - 25) = 0;
        *(a2 - 48) = 0;
        v38 = v32 + 3;
        v39 = a2;
        v34 = v28;
        a2 -= 6;
        if ((*(v32 + 47) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }
      }

      else
      {
        if (v36 < 0)
        {
          operator delete(*v32);
        }

        v40 = *v34;
        v32[2] = *(v28 - 32);
        *v32 = v40;
        *(v28 - 25) = 0;
        *(v28 - 48) = 0;
        v38 = a3 - 3;
        v39 = v28;
        v33 = a2;
        v28 -= 48;
        if ((*(v32 + 47) & 0x80000000) == 0)
        {
          goto LABEL_66;
        }
      }

      operator delete(*v38);
      a2 = v33;
      v28 = v34;
LABEL_66:
      a3 -= 6;
      v41 = *(v39 - 24);
      v38[2] = *(v39 - 8);
      *v38 = v41;
      *(v39 - 1) = 0;
      *(v39 - 24) = 0;
      v32 -= 6;
      if (v28 == a6)
      {
        goto LABEL_104;
      }
    }
  }

  if (v14 == a2)
  {
    goto LABEL_104;
  }

  v42 = 0;
  v43 = a6;
  v44 = v14;
  do
  {
    v45 = v43;
    v46 = *v44;
    *(v43 + 16) = v44[2];
    *v43 = v46;
    v44[1] = 0;
    v44[2] = 0;
    *v44 = 0;
    v47 = *(v44 + 3);
    *(v43 + 40) = v44[5];
    *(v43 + 24) = v47;
    v44[4] = 0;
    v44[5] = 0;
    v44[3] = 0;
    ++v42;
    v44 += 6;
    v43 += 48;
  }

  while (v44 != a2);
  v74 = v42;
  v48 = v14 + 23;
  while (a2 != a3)
  {
    v49 = (v48 - 23);
    v50 = snlp::ssu::usershortcut::operator<(a2, a6);
    v51 = *v48;
    if (v50)
    {
      if (v51 < 0)
      {
        operator delete(*v49);
      }

      v52 = *a2;
      *(v48 - 7) = a2[2];
      *v49 = v52;
      *(a2 + 23) = 0;
      *a2 = 0;
      if (v48[24] < 0)
      {
        operator delete(*(v48 + 1));
      }

      v53 = *(a2 + 3);
      *(v48 + 17) = a2[5];
      *(v48 + 1) = v53;
      *(a2 + 47) = 0;
      *(a2 + 24) = 0;
      a2 += 6;
    }

    else
    {
      if (v51 < 0)
      {
        operator delete(*v49);
      }

      v54 = *a6;
      *(v48 - 7) = *(a6 + 2);
      *v49 = v54;
      *(a6 + 23) = 0;
      *a6 = 0;
      if (v48[24] < 0)
      {
        operator delete(*(v48 + 1));
      }

      v55 = *(a6 + 24);
      *(v48 + 17) = *(a6 + 5);
      *(v48 + 1) = v55;
      *(a6 + 47) = 0;
      *(a6 + 24) = 0;
      a6 += 3;
    }

    v48 += 48;
    if (a6 == v43)
    {
      goto LABEL_104;
    }
  }

  if (a6 != v43)
  {
    do
    {
      v62 = (v48 - 23);
      if (*v48 < 0)
      {
        operator delete(*v62);
      }

      v63 = *a6;
      *(v48 - 7) = *(a6 + 2);
      *v62 = v63;
      *(a6 + 23) = 0;
      *a6 = 0;
      if (v48[24] < 0)
      {
        operator delete(*(v48 + 1));
      }

      v64 = *(a6 + 24);
      *(v48 + 17) = *(a6 + 5);
      *(v48 + 1) = v64;
      *(a6 + 47) = 0;
      *(a6 + 24) = 0;
      v48 += 48;
      v65 = a6 == v45;
      a6 += 3;
    }

    while (!v65);
  }

LABEL_104:
  std::unique_ptr<snlp::ssu::usershortcut::SSUUserShortcut,std::__destruct_n &>::~unique_ptr[abi:ne200100](v73);
}

void snlp::ssu::usershortcut::buildPositiveExamples(__int128 **a1@<X0>, void *a2@<X8>)
{
  v11 = *MEMORY[0x277D85DE8];
  v6 = 0;
  v7 = 0;
  v8 = 0;
  std::vector<snlp::ssu::app::SSUAppIntent>::reserve(&v6, 0xAAAAAAAAAAAAAAABLL * (a1[1] - *a1));
  v4 = *a1;
  if (*a1 != a1[1])
  {
    if (*(v4 + 47) < 0)
    {
      std::string::__init_copy_ctor_external(&v9, *(v4 + 24), *(v4 + 32));
    }

    else
    {
      v9 = *(v4 + 24);
    }

    memset(v5, 0, sizeof(v5));
    std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(v5, &v9, &v10, 1uLL);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<snlp::ssu::app::SSUAppIntent>::__init_with_size[abi:ne200100]<snlp::ssu::app::SSUAppIntent*,snlp::ssu::app::SSUAppIntent*>(a2, v6, v7, 0x8E38E38E38E38E39 * ((v7 - v6) >> 3));
  v9.__r_.__value_.__r.__words[0] = &v6;
  std::vector<snlp::ssu::app::SSUAppIntent>::__destroy_vector::operator()[abi:ne200100](&v9);
}

void sub_222945078(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, char *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  __p = &a13;
  std::vector<snlp::ssu::app::SSUAppIntent>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::getDescription(nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller *this@<X0>, std::string *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::string::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *a2 = *this;
  }
}

char *nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::doesMatchingSpanHaveLabelAndSemanticValue(void *a1, const void *a2, uint64_t a3, const void *a4, uint64_t a5)
{
  result = a1[6];
  if (result)
  {
    v9 = result[23];
    if ((v9 & 0x8000000000000000) != 0)
    {
      v10 = result;
      result = *result;
      v9 = *(v10 + 1);
    }

    if (v9 != a3 || memcmp(result, a2, v9))
    {
      return 0;
    }

    result = a1[7];
    if (result)
    {
      v11 = result[23];
      if ((v11 & 0x8000000000000000) != 0)
      {
        result = *result;
        v11 = *(a1[7] + 8);
      }

      if (v11 != a5 || memcmp(result, a4, v11))
      {
        return 0;
      }

      v12 = a1[1];
      v13 = a1[2];
      if (v12 != v13)
      {
        while (*v12 != 3 && *v12 != 8)
        {
          if (++v12 == v13)
          {
            v12 = a1[2];
            return (v13 != v12);
          }
        }
      }

      return (v13 != v12);
    }
  }

  return result;
}

BOOL nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller::isDefinedValue(nlv4_inference_orchestrator::post_processing::tree_manipulations::MinimumMaximumLabeller *this, const nlv4_inference_orchestrator::trees::TreeNode *a2)
{
  v3 = siri::ontology::oname::graph::ontology_init::Argument_definedValue(this);
  v4 = *(this + 71);
  if (v4 >= 0)
  {
    v5 = *(this + 71);
  }

  else
  {
    v5 = *(this + 7);
  }

  v6 = *(v3 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(v3 + 16);
  }

  if (v5 != v6)
  {
    return 0;
  }

  v10 = *(this + 6);
  v9 = this + 48;
  v8 = v10;
  if (v4 >= 0)
  {
    v11 = v9;
  }

  else
  {
    v11 = v8;
  }

  v14 = *(v3 + 8);
  v12 = (v3 + 8);
  v13 = v14;
  if (v7 >= 0)
  {
    v15 = v12;
  }

  else
  {
    v15 = v13;
  }

  return memcmp(v11, v15, v5) == 0;
}

BOOL snlp::ssu::app::SSUAppCategory::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 31);
  if (v4 >= 0)
  {
    v5 = *(a1 + 31);
  }

  else
  {
    v5 = *(a1 + 16);
  }

  v6 = *(a2 + 31);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 16);
  }

  if (v5 == v6 && (v4 >= 0 ? (v8 = (a1 + 8)) : (v8 = *(a1 + 8)), v7 >= 0 ? (v9 = (a2 + 8)) : (v9 = *(a2 + 8)), !memcmp(v8, v9, v5)))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  else
  {
    return 0;
  }
}

unint64_t snlp::ssu::app::SSUAppCategoryHash::operator()(uint64_t a1, char *a2)
{
  v3 = 0x35A98F4D286A90B9 * ((0xC6A4A7935BD1E995 * *a2) ^ ((0xC6A4A7935BD1E995 * *a2) >> 47)) + 3864292196u;
  v4 = boost::hash<std::string>::operator()(a2 + 8);
  return 3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * a2[32]) ^ ((0xC6A4A7935BD1E995 * a2[32]) >> 47))) ^ (3864292196u - 0x395B586CA42E166BLL * ((0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))) ^ v3)));
}

void uaap_orchestration::grammar::parseValueToString(unsigned int *a1@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  v2 = *a1;
  if ((*(a1 + 11) & 0x1000) != 0)
  {
    v3 = (21 - *(a1 + 21));
  }

  else
  {
    a1 = *(a1 + 1);
    v3 = v2;
  }

  toU16String(a2, a1, v3);
}

void uaap_orchestration::grammar::Path::getFirstComponent(uaap_orchestration::grammar::Path *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *this;
  if (*this == *(this + 1))
  {
    v4 = 0;
    *a2 = 0;
  }

  else
  {
    if (*(v3 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a2, *v3, *(v3 + 8));
    }

    else
    {
      *a2 = *v3;
      *(a2 + 16) = *(v3 + 16);
    }

    v4 = 1;
  }

  *(a2 + 24) = v4;
}

void uaap_orchestration::grammar::Path::getLastComponent(uaap_orchestration::grammar::Path *this@<X0>, uint64_t a2@<X8>)
{
  v3 = *(this + 1);
  if (*this == v3)
  {
    v4 = 0;
    *a2 = 0;
  }

  else
  {
    if (*(v3 - 1) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(a2, *(v3 - 24), *(v3 - 16));
    }

    else
    {
      *a2 = *(v3 - 24);
      *(a2 + 16) = *(v3 - 8);
    }

    v4 = 1;
  }

  *(a2 + 24) = v4;
}

std::basic_string<char16_t> *uaap_orchestration::grammar::Path::toString@<X0>(std::basic_string<char16_t> *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  v2 = this;
  *&a2->__r_.__value_.__l.__data_ = 0uLL;
  a2->__r_.__value_.__r.__words[2] = 0;
  v4 = this->__r_.__value_.__r.__words[0];
  size = this->__r_.__value_.__l.__size_;
  if (this->__r_.__value_.__r.__words[0] != size)
  {
    v6 = *(v4 + 23);
    if (v6 >= 0)
    {
      v7 = this->__r_.__value_.__r.__words[0];
    }

    else
    {
      v7 = *v4;
    }

    if (v6 >= 0)
    {
      v8 = *(v4 + 23);
    }

    else
    {
      v8 = *(v4 + 8);
    }

    this = std::basic_string<char16_t>::append(a2, v7, v8);
    v4 = v2->__r_.__value_.__r.__words[0];
    size = v2->__r_.__value_.__l.__size_;
  }

  v9 = v4 + 24;
  if (size != v4 + 24)
  {
    do
    {
      std::basic_string<char16_t>::append(a2, L".", 1uLL);
      v10 = *(v9 + 23);
      if (v10 >= 0)
      {
        v11 = v9;
      }

      else
      {
        v11 = *v9;
      }

      if (v10 >= 0)
      {
        v12 = *(v9 + 23);
      }

      else
      {
        v12 = *(v9 + 8);
      }

      this = std::basic_string<char16_t>::append(a2, v11, v12);
      v9 += 24;
    }

    while (v9 != v2->__r_.__value_.__l.__size_);
  }

  return this;
}

void sub_222945578(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::append(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__s, std::basic_string<char16_t>::size_type __n)
{
  v6 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if (v6 < 0)
  {
    size = this->__r_.__value_.__l.__size_;
    v7 = (this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL) - 1;
  }

  else
  {
    v7 = 10;
    size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  }

  if (v7 - size >= __n)
  {
    if (__n)
    {
      v9 = this;
      if ((v6 & 0x80000000) != 0)
      {
        v9 = this->__r_.__value_.__r.__words[0];
      }

      memmove(v9 + 2 * size, __s, 2 * __n);
      v10 = size + __n;
      if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
      {
        this->__r_.__value_.__l.__size_ = v10;
      }

      else
      {
        *(&this->__r_.__value_.__s + 23) = v10 & 0x7F;
      }

      v9->__r_.__value_.__s.__data_[v10] = 0;
    }
  }

  else
  {
    std::basic_string<char16_t>::__grow_by_and_replace(this, v7, __n - v7 + size, size, size, 0, __n, __s);
  }

  return this;
}

void std::basic_string<char16_t>::__grow_by_and_replace(std::basic_string<char16_t> *this, std::basic_string<char16_t>::size_type __old_cap, std::basic_string<char16_t>::size_type __delta_cap, std::basic_string<char16_t>::size_type __old_sz, std::basic_string<char16_t>::size_type __n_copy, std::basic_string<char16_t>::size_type __n_del, std::basic_string<char16_t>::size_type __n_add, const std::basic_string<char16_t>::value_type *__p_new_stuff)
{
  if (0x7FFFFFFFFFFFFFF6 - __old_cap >= __delta_cap)
  {
    v8 = __delta_cap + __old_cap;
    if (__delta_cap + __old_cap <= 2 * __old_cap)
    {
      v8 = 2 * __old_cap;
    }

    if ((v8 | 3) == 0xB)
    {
      v9 = 13;
    }

    else
    {
      v9 = (v8 | 3) + 1;
    }

    v10 = v8 >= 0xB;
    v11 = 11;
    if (v10)
    {
      v11 = v9;
    }

    if (__old_cap > 0x3FFFFFFFFFFFFFF2)
    {
      v12 = 0x7FFFFFFFFFFFFFF7;
    }

    else
    {
      v12 = v11;
    }

    std::__allocate_at_least[abi:ne200100]<std::allocator<char16_t>>(v12);
  }

  std::basic_string<char16_t>::__throw_length_error[abi:ne200100]();
}

uint64_t uaap_orchestration::grammar::Path::extendWithComponent@<X0>(__int128 **a1@<X0>, __int128 *a2@<X1>, std::basic_string<char16_t> *a3@<X8>)
{
  a3->__r_.__value_.__r.__words[0] = 0;
  a3->__r_.__value_.__l.__size_ = 0;
  a3->__r_.__value_.__r.__words[2] = 0;
  std::vector<std::basic_string<char16_t>>::reserve(&a3->__r_.__value_.__l.__data_, 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3) + 1);
  std::vector<std::basic_string<char16_t>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::basic_string<char16_t> const*>,std::__wrap_iter<std::basic_string<char16_t> const*>>(a3, a3->__r_.__value_.__l.__data_, *a1, a1[1], 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3));
  return std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a3, a2);
}

void sub_22294582C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::vector<std::basic_string<char16_t>>::reserve(const void **result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 3) < a2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(a2);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  return result;
}

std::basic_string<char16_t> *std::vector<std::basic_string<char16_t>>::__insert_with_size[abi:ne200100]<std::__wrap_iter<std::basic_string<char16_t> const*>,std::__wrap_iter<std::basic_string<char16_t> const*>>(std::basic_string<char16_t> *result, std::basic_string<char16_t> *a2, __int128 *a3, __int128 *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = a2;
    v8 = result;
    size = result->__r_.__value_.__l.__size_;
    v9 = result->__r_.__value_.__r.__words[2];
    if ((0xAAAAAAAAAAAAAAABLL * ((v9 - size) >> 3)) >= a5)
    {
      v15 = size - a2;
      if ((0xAAAAAAAAAAAAAAABLL * ((size - a2) >> 3)) >= a5)
      {
        v21 = 3 * a5;
        std::vector<std::basic_string<char16_t>>::__move_range(result, a2, result->__r_.__value_.__l.__size_, &a2[a5]);
        v22 = (v6 + 8 * v21);
        do
        {
          result = std::basic_string<char16_t>::operator=(v7, v6);
          v6 = (v6 + 24);
          ++v7;
        }

        while (v6 != v22);
      }

      else
      {
        v17 = (a3 + v15);
        v36 = result->__r_.__value_.__l.__size_;
        v37 = size;
        v32 = result;
        v33 = &v36;
        *&v34 = &v37;
        v18 = size;
        BYTE8(v34) = 0;
        if ((a3 + v15) != a4)
        {
          v18 = size;
          v19 = (a3 + v15);
          do
          {
            if (*(v19 + 23) < 0)
            {
              std::basic_string<char16_t>::__init_copy_ctor_external(v18, *v19, *(v19 + 1));
              v18 = v37;
            }

            else
            {
              v20 = *v19;
              v18->__r_.__value_.__r.__words[2] = *(v19 + 2);
              *&v18->__r_.__value_.__l.__data_ = v20;
            }

            v19 = (v19 + 24);
            v37 = ++v18;
          }

          while (v19 != a4);
        }

        BYTE8(v34) = 1;
        result = std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::basic_string<char16_t>>,std::basic_string<char16_t>*>>::~__exception_guard_exceptions[abi:ne200100](&v32);
        v8->__r_.__value_.__l.__size_ = v18;
        if (v15 >= 1)
        {
          std::vector<std::basic_string<char16_t>>::__move_range(v8, v7, size, &v7[a5]);
          do
          {
            result = std::basic_string<char16_t>::operator=(v7, v6);
            v6 = (v6 + 24);
            ++v7;
          }

          while (v6 != v17);
        }
      }
    }

    else
    {
      v11 = result->__r_.__value_.__r.__words[0];
      v12 = a5 - 0x5555555555555555 * ((size - result->__r_.__value_.__r.__words[0]) >> 3);
      if (v12 > 0xAAAAAAAAAAAAAAALL)
      {
        std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
      }

      v13 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v11) >> 3);
      if (2 * v13 > v12)
      {
        v12 = 2 * v13;
      }

      if (v13 >= 0x555555555555555)
      {
        v14 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v14 = v12;
      }

      v35 = v8;
      if (v14)
      {
        std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v14);
      }

      v23 = (8 * ((a2 - v11) >> 3));
      v32 = 0;
      v33 = v23;
      v34 = v23;
      v24 = &v23[a5];
      v25 = 24 * a5;
      do
      {
        if (*(v6 + 23) < 0)
        {
          std::basic_string<char16_t>::__init_copy_ctor_external(v23, *v6, *(v6 + 1));
        }

        else
        {
          v26 = *v6;
          v23->__r_.__value_.__r.__words[2] = *(v6 + 2);
          *&v23->__r_.__value_.__l.__data_ = v26;
        }

        ++v23;
        v6 = (v6 + 24);
        v25 -= 24;
      }

      while (v25);
      memcpy(v24, v7, v8->__r_.__value_.__l.__size_ - v7);
      v27 = v8->__r_.__value_.__r.__words[0];
      *&v34 = v24 + v8->__r_.__value_.__l.__size_ - v7;
      v8->__r_.__value_.__l.__size_ = v7;
      v28 = v7 - v27;
      v29 = v33 - (v7 - v27);
      memcpy(v29, v27, v28);
      v30 = v8->__r_.__value_.__r.__words[0];
      v8->__r_.__value_.__r.__words[0] = v29;
      v31 = v8->__r_.__value_.__r.__words[2];
      *&v8->__r_.__value_.__r.__words[1] = v34;
      *&v34 = v30;
      *(&v34 + 1) = v31;
      v32 = v30;
      v33 = v30;
      return std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&v32);
    }
  }

  return result;
}

void sub_222945BC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::basic_string<char16_t>>,std::basic_string<char16_t>*>>::~__exception_guard_exceptions[abi:ne200100](va);
  *(v3 + 8) = v4;
  _Unwind_Resume(a1);
}

uint64_t std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(a1, a2);
  }

  else
  {
    std::vector<std::basic_string<char16_t>>::__construct_one_at_end[abi:ne200100]<std::basic_string<char16_t> const&>(a1, a2);
    result = v3 + 24;
  }

  *(a1 + 8) = result;
  return result;
}

void std::vector<std::basic_string<char16_t>>::__construct_one_at_end[abi:ne200100]<std::basic_string<char16_t> const&>(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(*(a1 + 8), *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    *(v3 + 16) = *(a2 + 2);
    *v3 = v4;
  }

  *(a1 + 8) = v3 + 24;
}

uint64_t std::vector<std::basic_string<char16_t>>::__emplace_back_slow_path<std::basic_string<char16_t> const&>(uint64_t a1, __int128 *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 8) - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((*(a1 + 16) - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 16) - *a1) >> 3) >= 0x555555555555555)
  {
    v5 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v5 = v3;
  }

  v20 = a1;
  if (v5)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v5);
  }

  v6 = 24 * v2;
  v16 = 0;
  v17 = 24 * v2;
  v7 = 0;
  v18 = 24 * v2;
  v19 = 0;
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(v6, *a2, *(a2 + 1));
    v6 = v17;
    v9 = v18;
    v7 = v19;
  }

  else
  {
    v8 = *a2;
    *(24 * v2 + 0x10) = *(a2 + 2);
    *v6 = v8;
    v9 = 24 * v2;
  }

  v10 = v9 + 24;
  v11 = *(a1 + 8) - *a1;
  v12 = (v6 - v11);
  memcpy((v6 - v11), *a1, v11);
  v13 = *a1;
  *a1 = v12;
  *(a1 + 8) = v10;
  v14 = *(a1 + 16);
  *(a1 + 16) = v7;
  v18 = v13;
  v19 = v14;
  v16 = v13;
  v17 = v13;
  std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(&v16);
  return v10;
}

void sub_222945DC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(unint64_t a1)
{
  if (a1 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    do
    {
      v4 = v2 - 3;
      *(a1 + 16) = v2 - 3;
      if (*(v2 - 1) < 0)
      {
        operator delete(*v4);
        v4 = *(a1 + 16);
      }

      v2 = v4;
    }

    while (v4 != v3);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

__n128 std::vector<std::basic_string<char16_t>>::__move_range(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 8);
  v5 = a2 + v4 - a4;
  if (v5 >= a3)
  {
    v7 = *(a1 + 8);
  }

  else
  {
    v6 = (a2 + v4 - a4);
    v7 = *(a1 + 8);
    do
    {
      result = *v6;
      v7[1].n128_u64[0] = v6[1].n128_u64[0];
      *v7 = result;
      v7 = (v7 + 24);
      v6->n128_u64[1] = 0;
      v6[1].n128_u64[0] = 0;
      v6->n128_u64[0] = 0;
      v6 = (v6 + 24);
    }

    while (v6 < a3);
  }

  *(a1 + 8) = v7;
  if (v4 != a4)
  {
    v9 = 0;
    v10 = a4 - v4;
    do
    {
      v11 = (v4 + v9 - 24);
      if (*(v4 + v9 - 1) < 0)
      {
        operator delete(*v11);
      }

      v12 = (v9 - 24 + v5);
      result = *v12;
      *(v4 + v9 - 8) = v12[1].n128_u64[0];
      *v11 = result;
      *(v5 + v9 - 1) = 0;
      v12->n128_u16[0] = 0;
      v9 -= 24;
    }

    while (v10 != v9);
  }

  return result;
}

std::basic_string<char16_t> *__cdecl std::basic_string<char16_t>::operator=(std::basic_string<char16_t> *this, const std::basic_string<char16_t> *__str)
{
  if (this != __str)
  {
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      size = __str->__r_.__value_.__l.__size_;
      if ((__str->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v4 = HIBYTE(__str->__r_.__value_.__r.__words[2]);
      }

      else
      {
        __str = __str->__r_.__value_.__r.__words[0];
        v4 = size;
      }

      return std::basic_string<char16_t>::__assign_no_alias<false>(this, __str, v4);
    }

    else if ((*(&__str->__r_.__value_.__s + 23) & 0x80) != 0)
    {
      return std::basic_string<char16_t>::__assign_no_alias<true>(this, __str->__r_.__value_.__l.__data_, __str->__r_.__value_.__l.__size_);
    }

    else
    {
      v2 = *&__str->__r_.__value_.__l.__data_;
      this->__r_.__value_.__r.__words[2] = __str->__r_.__value_.__r.__words[2];
      *&this->__r_.__value_.__l.__data_ = v2;
    }
  }

  return this;
}

std::basic_string<char16_t> *std::basic_string<char16_t>::__assign_no_alias<true>(std::basic_string<char16_t> *__dst, const std::basic_string<char16_t>::value_type *__src, std::basic_string<char16_t>::size_type __n_add)
{
  v5 = __n_add > 0xA;
  v6 = __n_add - 10;
  if (v5)
  {
    std::basic_string<char16_t>::__grow_by_and_replace(__dst, 0xAuLL, v6, *(&__dst->__r_.__value_.__s + 23) & 0x7F, 0, *(&__dst->__r_.__value_.__s + 23) & 0x7F, __n_add, __src);
  }

  else
  {
    *(&__dst->__r_.__value_.__s + 23) = __n_add;
    if (__n_add)
    {
      memmove(__dst, __src, 2 * __n_add);
    }

    __dst->__r_.__value_.__s.__data_[__n_add] = 0;
  }

  return __dst;
}

std::basic_string<char16_t> *std::basic_string<char16_t>::__assign_no_alias<false>(std::basic_string<char16_t> *this, const std::basic_string<char16_t>::value_type *__src, std::basic_string<char16_t>::size_type __n_add)
{
  v5 = this->__r_.__value_.__r.__words[2] & 0x7FFFFFFFFFFFFFFFLL;
  if (v5 <= __n_add)
  {
    std::basic_string<char16_t>::__grow_by_and_replace(this, v5 - 1, __n_add - v5 + 1, this->__r_.__value_.__l.__size_, 0, this->__r_.__value_.__l.__size_, __n_add, __src);
  }

  else
  {
    v6 = this->__r_.__value_.__r.__words[0];
    this->__r_.__value_.__l.__size_ = __n_add;
    if (__n_add)
    {
      memmove(v6, __src, 2 * __n_add);
    }

    *(v6 + __n_add) = 0;
  }

  return this;
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<std::basic_string<char16_t>>,std::basic_string<char16_t>*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    v3 = **(a1 + 16);
    v4 = **(a1 + 8);
    while (v3 != v4)
    {
      v5 = *(v3 - 1);
      v3 -= 3;
      if (v5 < 0)
      {
        operator delete(*v3);
      }
    }
  }

  return a1;
}

uint64_t uaap_orchestration::grammar::Path::singletonPath@<X0>(void *a1@<X8>, __int128 *a2@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a1, a2);
}

void sub_222946148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void uaap_orchestration::grammar::ResolutionTable::getSemanticValues(uaap_orchestration::grammar::ResolutionTable *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a2, *(this + 3));
  for (i = *(this + 2); i; i = *i)
  {
    std::pair<std::basic_string<char16_t> const,std::vector<std::basic_string<char16_t>>>::pair[abi:ne200100](&__p, i + 1);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&v7, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v7 = __p;
    }

    std::__hash_table<std::basic_string<char16_t>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::allocator<std::basic_string<char16_t>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t>>(a2, &v7, &v7);
    if (SHIBYTE(v7.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v7.__r_.__value_.__l.__data_);
    }

    v8 = &v6;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v8);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

std::basic_string<char16_t> *std::pair<std::basic_string<char16_t> const,std::vector<std::basic_string<char16_t>>>::pair[abi:ne200100](std::basic_string<char16_t> *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v4 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v4;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  this[1].__r_.__value_.__r.__words[2] = 0;
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(&this[1], *(a2 + 3), *(a2 + 4), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 4) - *(a2 + 3)) >> 3));
  return this;
}

void sub_2229462F8(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void std::__hash_table<std::basic_string<char16_t>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::allocator<std::basic_string<char16_t>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::basic_string<char16_t>>(void *a1, unsigned __int16 *a2, uint64_t a3)
{
  v5 = std::__string_hash<char16_t>::operator()[abi:ne200100](a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = *(v12 + 1);
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v12 + 8, a2))
  {
    goto LABEL_17;
  }
}

uint64_t std::pair<std::basic_string<char16_t> const,std::vector<std::basic_string<char16_t>>>::~pair(uint64_t a1)
{
  v3 = (a1 + 24);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(uint64_t result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    if (a4 < 0xAAAAAAAAAAAAAABLL)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(a4);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void uaap_orchestration::grammar::ResolutionTable::getSynonyms(void *a1@<X0>, unsigned __int16 *a2@<X1>, void *a3@<X8>)
{
  v4 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::basic_string<char16_t>>>>::find<std::basic_string<char16_t>>(a1, a2);
  if (!v4)
  {
    std::__throw_out_of_range[abi:ne200100]("unordered_map::at: key not found");
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v5 = *(v4 + 5);
  v6 = *(v4 + 6);

  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a3, v5, v6, 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 3));
}

void uaap_orchestration::grammar::ResolutionTable::loadSemanticValueToSynonyms(unsigned int *a1@<X1>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 1065353216;
  if (*a1)
  {
    v3 = *(a1 + 1);
    v4 = v3 + 24 * *a1;
    do
    {
      if (*(v3 + 22) != 3)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v47, "Error parsing JSON grammar: row.IsObject() == false [for key: ");
        v40 = std::string::append(&v47, "resolution-table");
        v41 = *&v40->__r_.__value_.__l.__data_;
        v48.__r_.__value_.__r.__words[2] = v40->__r_.__value_.__r.__words[2];
        *&v48.__r_.__value_.__l.__data_ = v41;
        v40->__r_.__value_.__l.__size_ = 0;
        v40->__r_.__value_.__r.__words[2] = 0;
        v40->__r_.__value_.__r.__words[0] = 0;
        v42 = std::string::append(&v48, " entry");
        v43 = *&v42->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v44 = std::string::append(&__p, "]");
        v45 = *&v44->__r_.__value_.__l.__data_;
        v50.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
        *&v50.__r_.__value_.__l.__data_ = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v50);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v5 = *v3;
      v6 = *(v3 + 8);
      Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*v3, v6, "semantic-value");
      if (&v6[12 * v5] == Member || (v8 = *(Member + 23), (v8 & 0x400) == 0))
      {
        v29 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v48, "Error parsing JSON grammar: parsedSemanticValue != row.MemberEnd() && parsedSemanticValue->value.IsString() == false [for key: ");
        v30 = std::string::append(&v48, "semantic-value");
        v31 = *&v30->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = std::string::append(&__p, "]");
        v33 = *&v32->__r_.__value_.__l.__data_;
        v50.__r_.__value_.__r.__words[2] = v32->__r_.__value_.__r.__words[2];
        *&v50.__r_.__value_.__l.__data_ = v33;
        v32->__r_.__value_.__l.__size_ = 0;
        v32->__r_.__value_.__r.__words[2] = 0;
        v32->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v29, &v50);
        __cxa_throw(v29, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v11 = Member[6];
      v9 = Member + 6;
      v10 = v11;
      if ((v8 & 0x1000) != 0)
      {
        v12 = (21 - *(v9 + 21));
      }

      else
      {
        v9 = *(v9 + 1);
        v12 = v10;
      }

      toU16String(&v50, v9, v12);
      v13 = *v3;
      v14 = *(v3 + 8);
      v15 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*v3, v14, "synonyms");
      if (&v14[12 * v13] == v15 || *(v15 + 23) != 4)
      {
        v34 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v47, "Error parsing JSON grammar: parsedSynonyms != row.MemberEnd() && parsedSynonyms->value.IsArray() == false [for key: ");
        v35 = std::string::append(&v47, "synonyms");
        v36 = *&v35->__r_.__value_.__l.__data_;
        v48.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v48.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v37 = std::string::append(&v48, "]");
        v38 = *&v37->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v34, &__p);
        __cxa_throw(v34, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v16 = v15[6];
      if (v16)
      {
        v17 = *(v15 + 4);
        v18 = 24 * v16;
        do
        {
          if ((*(v17 + 11) & 0x400) == 0)
          {
            v22 = __cxa_allocate_exception(0x10uLL);
            std::string::basic_string[abi:ne200100]<0>(&v46, "Error parsing JSON grammar: parsedSynonym.IsString() == false [for key: ");
            v23 = std::string::append(&v46, "synonyms");
            v24 = *&v23->__r_.__value_.__l.__data_;
            v47.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
            *&v47.__r_.__value_.__l.__data_ = v24;
            v23->__r_.__value_.__l.__size_ = 0;
            v23->__r_.__value_.__r.__words[2] = 0;
            v23->__r_.__value_.__r.__words[0] = 0;
            v25 = std::string::append(&v47, " entry");
            v26 = *&v25->__r_.__value_.__l.__data_;
            v48.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
            *&v48.__r_.__value_.__l.__data_ = v26;
            v25->__r_.__value_.__l.__size_ = 0;
            v25->__r_.__value_.__r.__words[2] = 0;
            v25->__r_.__value_.__r.__words[0] = 0;
            v27 = std::string::append(&v48, "]");
            v28 = *&v27->__r_.__value_.__l.__data_;
            __p.__r_.__value_.__r.__words[2] = v27->__r_.__value_.__r.__words[2];
            *&__p.__r_.__value_.__l.__data_ = v28;
            v27->__r_.__value_.__l.__size_ = 0;
            v27->__r_.__value_.__r.__words[2] = 0;
            v27->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(v22, &__p);
            __cxa_throw(v22, MEMORY[0x277D82760], MEMORY[0x277D82600]);
          }

          __p.__r_.__value_.__r.__words[0] = &v50;
          v19 = std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t> const&>,std::tuple<>>(a2, &v50, &__p);
          if ((*(v17 + 11) & 0x1000) != 0)
          {
            v20 = v17;
          }

          else
          {
            v20 = *(v17 + 1);
          }

          if ((*(v17 + 11) & 0x1000) != 0)
          {
            v21 = (21 - *(v17 + 21));
          }

          else
          {
            v21 = *v17;
          }

          toU16String(&__p, v20, v21);
          std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](v19 + 5, &__p);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }

          v17 += 6;
          v18 -= 24;
        }

        while (v18);
      }

      if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v50.__r_.__value_.__l.__data_);
      }

      v3 += 24;
    }

    while (v3 != v4);
  }
}

void sub_222946BC8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (*(v38 - 89) < 0)
  {
    operator delete(*(v38 - 112));
  }

  if (a35 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a21 < 0)
  {
    operator delete(a16);
    if ((v37 & 1) == 0)
    {
LABEL_12:
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v35);
      _Unwind_Resume(a1);
    }
  }

  else if (!v37)
  {
    goto LABEL_12;
  }

  __cxa_free_exception(v36);
  goto LABEL_12;
}

unsigned int *rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(unsigned int a1, unsigned int *a2, char *__s)
{
  v8[3] = *MEMORY[0x277D85DE8];
  v8[1] = __s;
  v8[2] = 0x405000000000000;
  v8[0] = strlen(__s);
  if (a1)
  {
    v5 = &a2[12 * a1];
    v6 = 48 * a1;
    while (!rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::StringEqual<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(v8, a2))
    {
      a2 += 12;
      v6 -= 48;
      if (!v6)
      {
        return v5;
      }
    }
  }

  return a2;
}

unsigned __int16 *std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::__emplace_unique_key_args<std::basic_string<char16_t>,std::piecewise_construct_t const&,std::tuple<std::basic_string<char16_t> const&>,std::tuple<>>(void *a1, unsigned __int16 *a2, __int128 **a3)
{
  v5 = std::__string_hash<char16_t>::operator()[abi:ne200100](a2);
  v6 = v5;
  v7 = a1[1];
  if (!*&v7)
  {
    goto LABEL_18;
  }

  v8 = vcnt_s8(v7);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v7)
    {
      v10 = v5 % *&v7;
    }
  }

  else
  {
    v10 = (*&v7 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11 || (v12 = *v11) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v13 = *(v12 + 1);
    if (v13 == v6)
    {
      break;
    }

    if (v9 > 1)
    {
      if (v13 >= *&v7)
      {
        v13 %= *&v7;
      }
    }

    else
    {
      v13 &= *&v7 - 1;
    }

    if (v13 != v10)
    {
      goto LABEL_18;
    }

LABEL_17:
    v12 = *v12;
    if (!v12)
    {
      goto LABEL_18;
    }
  }

  if (!std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v12 + 8, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_222947128(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

const void **std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](const void **result, __int128 *a2)
{
  v2 = result;
  v3 = result[1];
  v4 = result[2];
  if (v3 >= v4)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *result) >> 3);
    v8 = v7 + 1;
    if (v7 + 1 > 0xAAAAAAAAAAAAAAALL)
    {
      std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *result) >> 3);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x555555555555555)
    {
      v10 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    v17[4] = v2;
    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<std::basic_string<char16_t>>>(v10);
    }

    v11 = 24 * v7;
    v12 = *a2;
    *(v11 + 16) = *(a2 + 2);
    *v11 = v12;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = 24 * v7 + 24;
    v13 = v2[1] - *v2;
    v14 = (v11 - v13);
    memcpy((v11 - v13), *v2, v13);
    v15 = *v2;
    *v2 = v14;
    v2[1] = v6;
    v16 = v2[2];
    v2[2] = 0;
    v17[2] = v15;
    v17[3] = v16;
    v17[0] = v15;
    v17[1] = v15;
    result = std::__split_buffer<std::basic_string<char16_t>>::~__split_buffer(v17);
  }

  else
  {
    v5 = *a2;
    *(v3 + 2) = *(a2 + 2);
    *v3 = v5;
    *(a2 + 8) = 0uLL;
    *a2 = 0;
    v6 = (v3 + 24);
  }

  v2[1] = v6;
  return result;
}

uint64_t std::unique_ptr<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,void *>>>>::~unique_ptr[abi:ne200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__destroy_at[abi:ne200100]<std::pair<std::basic_string<char16_t> const,std::vector<std::basic_string<char16_t>>>,0>(v2 + 16);
    }

    operator delete(v2);
  }

  return a1;
}

BOOL rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::StringEqual<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(unsigned int *a1, unsigned int *a2)
{
  if ((*(a1 + 11) & 0x1000) != 0)
  {
    v2 = 21 - *(a1 + 21);
  }

  else
  {
    v2 = *a1;
  }

  v3 = 21 - *(a2 + 21);
  if ((*(a2 + 11) & 0x1000) == 0)
  {
    v3 = *a2;
  }

  if (v2 != v3)
  {
    return 0;
  }

  if ((*(a1 + 11) & 0x1000) == 0)
  {
    a1 = *(a1 + 1);
  }

  if ((*(a2 + 11) & 0x1000) == 0)
  {
    a2 = *(a2 + 1);
  }

  return a1 == a2 || memcmp(a1, a2, v2) == 0;
}

void uaap_orchestration::grammar::ValueConstraints::getEnumChoices(__int128 **this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a2, this[4], this[5], 0xAAAAAAAAAAAAAAABLL * ((this[5] - this[4]) >> 3));
}

void uaap_orchestration::grammar::ValueConstraints::getOpenListChoices(__int128 **this@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(a2, this[7], this[8], 0xAAAAAAAAAAAAAAABLL * ((this[8] - this[7]) >> 3));
}

_BYTE *std::__optional_copy_base<uaap_orchestration::grammar::ResolutionTable,false>::__optional_copy_base[abi:ne200100](_BYTE *a1, uint64_t a2)
{
  *a1 = 0;
  a1[40] = 0;
  if (*(a2 + 40) == 1)
  {
    std::unordered_map<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>::unordered_map(a1, a2);
    a1[40] = 1;
  }

  return a1;
}

void sub_2229473FC(_Unwind_Exception *exception_object)
{
  if (*(v1 + 40) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::unordered_map<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>::unordered_map(uint64_t a1, uint64_t a2)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = *(a2 + 32);
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__rehash<true>(a1, *(a2 + 8));
  for (i = *(a2 + 16); i; i = *i)
  {
    v5 = std::__string_hash<char16_t>::operator()[abi:ne200100]((i + 8));
    v6 = v5;
    v7 = *(a1 + 8);
    if (!*&v7)
    {
      goto LABEL_18;
    }

    v8 = vcnt_s8(v7);
    v8.i16[0] = vaddlv_u8(v8);
    v9 = v8.u32[0];
    if (v8.u32[0] > 1uLL)
    {
      v10 = v5;
      if (v5 >= *&v7)
      {
        v10 = v5 % *&v7;
      }
    }

    else
    {
      v10 = (*&v7 - 1) & v5;
    }

    v11 = *(*a1 + 8 * v10);
    if (!v11 || (v12 = *v11) == 0)
    {
LABEL_18:
      operator new();
    }

    while (1)
    {
      v13 = *(v12 + 1);
      if (v13 == v6)
      {
        break;
      }

      if (v9 > 1)
      {
        if (v13 >= *&v7)
        {
          v13 %= *&v7;
        }
      }

      else
      {
        v13 &= *&v7 - 1;
      }

      if (v13 != v10)
      {
        goto LABEL_18;
      }

LABEL_17:
      v12 = *v12;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    if (!std::equal_to<std::basic_string<char16_t>>::operator()[abi:ne200100](v12 + 8, i + 8))
    {
      goto LABEL_17;
    }
  }

  return a1;
}

void uaap_orchestration::grammar::ValueConstraints::loadValueType(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "type");
  if (&v4[12 * v3] == Member)
  {
    v11 = 0;
    *a2 = 0;
  }

  else
  {
    v6 = *(Member + 23);
    if ((v6 & 0x400) == 0)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v17, "Error parsing JSON grammar: parsedValueType->value.IsString() == false [for key: ");
      v13 = std::string::append(&v17, "type");
      v14 = *&v13->__r_.__value_.__l.__data_;
      v18.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v18.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      v15 = std::string::append(&v18, "]");
      v16 = *&v15->__r_.__value_.__l.__data_;
      v19.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
      *&v19.__r_.__value_.__l.__data_ = v16;
      v15->__r_.__value_.__l.__size_ = 0;
      v15->__r_.__value_.__r.__words[2] = 0;
      v15->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v19);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v9 = Member[6];
    v7 = Member + 6;
    v8 = v9;
    if ((v6 & 0x1000) != 0)
    {
      v10 = (21 - *(v7 + 21));
    }

    else
    {
      v7 = *(v7 + 1);
      v10 = v8;
    }

    toU16String(a2, v7, v10);
    v11 = 1;
  }

  *(a2 + 24) = v11;
}

void sub_2229477FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void uaap_orchestration::grammar::ValueConstraints::loadEnumChoices(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "enum-choices");
  if (&v4[12 * v3] == Member)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    v6 = Member;
    if (*(Member + 23) != 4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v26, "Error parsing JSON grammar: parsedEnumChoices->value.IsArray() == false [for key: ");
      v20 = std::string::append(&v26, "enum-choices");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v27.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v27.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = std::string::append(&v27, "]");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v28);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::vector<std::basic_string<char16_t>>::reserve(a2, Member[6]);
    v7 = v6[6];
    if (v7)
    {
      v8 = *(v6 + 4);
      v9 = 24 * v7;
      do
      {
        if ((*(v8 + 11) & 0x400) == 0)
        {
          v12 = __cxa_allocate_exception(0x10uLL);
          std::string::basic_string[abi:ne200100]<0>(&v25, "Error parsing JSON grammar: enumChoice.IsString() == false [for key: ");
          v13 = std::string::append(&v25, "enum-choices");
          v14 = *&v13->__r_.__value_.__l.__data_;
          v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
          *&v26.__r_.__value_.__l.__data_ = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          v15 = std::string::append(&v26, " entry");
          v16 = *&v15->__r_.__value_.__l.__data_;
          v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v27.__r_.__value_.__l.__data_ = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          v17 = std::string::append(&v27, "]");
          v18 = *&v17->__r_.__value_.__l.__data_;
          v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
          *&v28.__r_.__value_.__l.__data_ = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v12, &v28);
          __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if ((*(v8 + 11) & 0x1000) != 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *(v8 + 1);
        }

        if ((*(v8 + 11) & 0x1000) != 0)
        {
          v11 = (21 - *(v8 + 21));
        }

        else
        {
          v11 = *v8;
        }

        toU16String(&__p, v10, v11);
        std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 += 6;
        v9 -= 24;
      }

      while (v9);
    }
  }
}

void sub_222947AE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
    if ((v34 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v33);
  goto LABEL_10;
}

void uaap_orchestration::grammar::ValueConstraints::loadOpenListChoices(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "open-list-choices");
  if (&v4[12 * v3] == Member)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else
  {
    v6 = Member;
    if (*(Member + 23) != 4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v26, "Error parsing JSON grammar: parsedOpenListChoices->value.IsArray() == false [for key: ");
      v20 = std::string::append(&v26, "open-list-choices");
      v21 = *&v20->__r_.__value_.__l.__data_;
      v27.__r_.__value_.__r.__words[2] = v20->__r_.__value_.__r.__words[2];
      *&v27.__r_.__value_.__l.__data_ = v21;
      v20->__r_.__value_.__l.__size_ = 0;
      v20->__r_.__value_.__r.__words[2] = 0;
      v20->__r_.__value_.__r.__words[0] = 0;
      v22 = std::string::append(&v27, "]");
      v23 = *&v22->__r_.__value_.__l.__data_;
      v28.__r_.__value_.__r.__words[2] = v22->__r_.__value_.__r.__words[2];
      *&v28.__r_.__value_.__l.__data_ = v23;
      v22->__r_.__value_.__l.__size_ = 0;
      v22->__r_.__value_.__r.__words[2] = 0;
      v22->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v28);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    std::vector<std::basic_string<char16_t>>::reserve(a2, Member[6]);
    v7 = v6[6];
    if (v7)
    {
      v8 = *(v6 + 4);
      v9 = 24 * v7;
      do
      {
        if ((*(v8 + 11) & 0x400) == 0)
        {
          v12 = __cxa_allocate_exception(0x10uLL);
          std::string::basic_string[abi:ne200100]<0>(&v25, "Error parsing JSON grammar: openListChoice.IsString() == false [for key: ");
          v13 = std::string::append(&v25, "open-list-choices");
          v14 = *&v13->__r_.__value_.__l.__data_;
          v26.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
          *&v26.__r_.__value_.__l.__data_ = v14;
          v13->__r_.__value_.__l.__size_ = 0;
          v13->__r_.__value_.__r.__words[2] = 0;
          v13->__r_.__value_.__r.__words[0] = 0;
          v15 = std::string::append(&v26, " entry");
          v16 = *&v15->__r_.__value_.__l.__data_;
          v27.__r_.__value_.__r.__words[2] = v15->__r_.__value_.__r.__words[2];
          *&v27.__r_.__value_.__l.__data_ = v16;
          v15->__r_.__value_.__l.__size_ = 0;
          v15->__r_.__value_.__r.__words[2] = 0;
          v15->__r_.__value_.__r.__words[0] = 0;
          v17 = std::string::append(&v27, "]");
          v18 = *&v17->__r_.__value_.__l.__data_;
          v28.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
          *&v28.__r_.__value_.__l.__data_ = v18;
          v17->__r_.__value_.__l.__size_ = 0;
          v17->__r_.__value_.__r.__words[2] = 0;
          v17->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v12, &v28);
          __cxa_throw(v12, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        if ((*(v8 + 11) & 0x1000) != 0)
        {
          v10 = v8;
        }

        else
        {
          v10 = *(v8 + 1);
        }

        if ((*(v8 + 11) & 0x1000) != 0)
        {
          v11 = (21 - *(v8 + 21));
        }

        else
        {
          v11 = *v8;
        }

        toU16String(&__p, v10, v11);
        std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a2, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v8 += 6;
        v9 -= 24;
      }

      while (v9);
    }
  }
}

void sub_222947E88(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33)
{
  if (*(v35 - 41) < 0)
  {
    operator delete(*(v35 - 64));
  }

  if (a33 < 0)
  {
    operator delete(__p);
  }

  if (a26 < 0)
  {
    operator delete(a21);
    if ((v34 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v34)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v33);
  goto LABEL_10;
}

unsigned int *uaap_orchestration::grammar::ValueConstraints::loadResolutionTable@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  result = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "resolution-table");
  if (&v4[12 * v3] == result)
  {
    *a2 = 0;
    a2[40] = 0;
  }

  else
  {
    if (*(result + 23) != 4)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      std::string::basic_string[abi:ne200100]<0>(&v12, "Error parsing JSON grammar: parsedResolutionTable->value.IsArray() == false [for key: ");
      v7 = std::string::append(&v12, "resolution-table");
      v8 = *&v7->__r_.__value_.__l.__data_;
      v13.__r_.__value_.__r.__words[2] = v7->__r_.__value_.__r.__words[2];
      *&v13.__r_.__value_.__l.__data_ = v8;
      v7->__r_.__value_.__l.__size_ = 0;
      v7->__r_.__value_.__r.__words[2] = 0;
      v7->__r_.__value_.__r.__words[0] = 0;
      v9 = std::string::append(&v13, "]");
      v10 = *&v9->__r_.__value_.__l.__data_;
      v11.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v11.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &v11);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    uaap_orchestration::grammar::ResolutionTable::loadSemanticValueToSynonyms(result + 6, &v11);
    std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a2, &v11);
    a2[40] = 1;
    return std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(&v11);
  }

  return result;
}

void sub_222948108(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a22 < 0)
  {
    operator delete(a17);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void uaap_orchestration::grammar::Rule::getLeftLabel(uaap_orchestration::grammar::Rule *this@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  if (*(this + 23) < 0)
  {
    std::basic_string<char16_t>::__init_copy_ctor_external(a2, *this, *(this + 1));
  }

  else
  {
    *a2 = *this;
  }
}

void uaap_orchestration::grammar::Rule::getRightLabels(void *a1@<X8>, uint64_t a2@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::vector<uaap_orchestration::grammar::RightLabel>::__init_with_size[abi:ne200100]<uaap_orchestration::grammar::RightLabel*,uaap_orchestration::grammar::RightLabel*>(a1, *(a2 + 24), *(a2 + 32), (*(a2 + 32) - *(a2 + 24)) >> 5);
}

void std::vector<uaap_orchestration::grammar::RightLabel>::__init_with_size[abi:ne200100]<uaap_orchestration::grammar::RightLabel*,uaap_orchestration::grammar::RightLabel*>(uint64_t result, __int128 *a2, __int128 *a3, unint64_t a4)
{
  if (a4)
  {
    if (!(a4 >> 59))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::RightLabel>>(a4);
    }

    std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::RightLabel>>(unint64_t a1)
{
  if (!(a1 >> 59))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void uaap_orchestration::grammar::Rule::getRightLabelNames(uaap_orchestration::grammar::Rule *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v2 = *(this + 3);
  for (i = *(this + 4); v2 != i; v2 += 32)
  {
    if (*(v2 + 23) < 0)
    {
      std::basic_string<char16_t>::__init_copy_ctor_external(&__p, *v2, *(v2 + 8));
    }

    else
    {
      __p = *v2;
    }

    std::vector<std::basic_string<char16_t>>::push_back[abi:ne200100](a2, &__p);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

std::basic_string<char16_t> *std::__optional_copy_base<uaap_orchestration::grammar::ValueConstraints,false>::__optional_copy_base[abi:ne200100](std::basic_string<char16_t> *this, uint64_t a2)
{
  LOBYTE(this->__r_.__value_.__l.__data_) = 0;
  LOBYTE(this[5].__r_.__value_.__r.__words[1]) = 0;
  if (*(a2 + 128) == 1)
  {
    std::__optional_copy_base<std::basic_string<char16_t>,false>::__optional_copy_base[abi:ne200100](this, a2);
    this[1].__r_.__value_.__l.__size_ = 0;
    this[1].__r_.__value_.__r.__words[2] = 0;
    this[2].__r_.__value_.__r.__words[0] = 0;
    std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(&this[1].__r_.__value_.__l.__size_, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
    this[2].__r_.__value_.__l.__size_ = 0;
    this[2].__r_.__value_.__r.__words[2] = 0;
    this[3].__r_.__value_.__r.__words[0] = 0;
    std::vector<std::basic_string<char16_t>>::__init_with_size[abi:ne200100]<std::basic_string<char16_t>*,std::basic_string<char16_t>*>(&this[2].__r_.__value_.__l.__size_, *(a2 + 56), *(a2 + 64), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 64) - *(a2 + 56)) >> 3));
    std::__optional_copy_base<uaap_orchestration::grammar::ResolutionTable,false>::__optional_copy_base[abi:ne200100](&this[3].__r_.__value_.__r.__words[1], a2 + 80);
    LOBYTE(this[5].__r_.__value_.__r.__words[1]) = 1;
  }

  return this;
}

void sub_2229484C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](va);
  if (*(v3 + 24) == 1 && *(v3 + 23) < 0)
  {
    operator delete(*v3);
  }

  if (*(v3 + 128) == 1)
  {
    uaap_orchestration::grammar::ValueConstraints::~ValueConstraints(v3);
  }

  _Unwind_Resume(a1);
}

void uaap_orchestration::grammar::ValueConstraints::~ValueConstraints(uaap_orchestration::grammar::ValueConstraints *this)
{
  if (*(this + 120) == 1)
  {
    std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(this + 80);
  }

  v2 = (this + 56);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  v2 = (this + 32);
  std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 24) == 1 && *(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void uaap_orchestration::grammar::Rule::loadLeftLabelFromJson(uint64_t a1@<X0>, std::basic_string<char16_t> *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "left-label");
  if (&v4[12 * v3] == Member || (v6 = *(Member + 23), (v6 & 0x400) == 0))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v16, "Error parsing JSON grammar: leftLabel != jsonRule.MemberEnd() && leftLabel->value.IsString() == false [for key: ");
    v12 = std::string::append(&v16, "left-label");
    v13 = *&v12->__r_.__value_.__l.__data_;
    v17.__r_.__value_.__r.__words[2] = v12->__r_.__value_.__r.__words[2];
    *&v17.__r_.__value_.__l.__data_ = v13;
    v12->__r_.__value_.__l.__size_ = 0;
    v12->__r_.__value_.__r.__words[2] = 0;
    v12->__r_.__value_.__r.__words[0] = 0;
    v14 = std::string::append(&v17, "]");
    v15 = *&v14->__r_.__value_.__l.__data_;
    v18.__r_.__value_.__r.__words[2] = v14->__r_.__value_.__r.__words[2];
    *&v18.__r_.__value_.__l.__data_ = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v18);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v9 = Member[6];
  v7 = Member + 6;
  v8 = v9;
  if ((v6 & 0x1000) != 0)
  {
    v10 = (21 - *(v7 + 21));
  }

  else
  {
    v7 = *(v7 + 1);
    v10 = v8;
  }

  toU16String(a2, v7, v10);
}

void sub_2229486E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a21 < 0)
  {
    operator delete(a16);
  }

  if (a15 < 0)
  {
    operator delete(a10);
    if ((v29 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v29)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v28);
  goto LABEL_10;
}

void uaap_orchestration::grammar::Rule::loadValueConstraintsFromJson(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "value-constraints");
  if (&v4[12 * v3] == Member)
  {
    *a2 = 0;
    *(a2 + 128) = 0;
  }

  else
  {
    v6 = Member;
    if (*(Member + 23) != 3)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      v10 = std::string::basic_string[abi:ne200100]<0>(v23, "Error parsing JSON grammar: parsedValueConstraints->value.IsObject() == false [for key: ");
      v11 = std::string::append(v10, "value-constraints");
      v12 = *&v11->__r_.__value_.__l.__data_;
      v24.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
      *&v24.__r_.__value_.__l.__data_ = v12;
      v11->__r_.__value_.__l.__size_ = 0;
      v11->__r_.__value_.__r.__words[2] = 0;
      v11->__r_.__value_.__r.__words[0] = 0;
      v13 = std::string::append(&v24, "]");
      v14 = *&v13->__r_.__value_.__l.__data_;
      __p.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&__p.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(exception, &__p);
      __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    uaap_orchestration::grammar::ValueConstraints::loadValueType((Member + 6), &__p);
    uaap_orchestration::grammar::ValueConstraints::loadEnumChoices((v6 + 6), &v17);
    uaap_orchestration::grammar::ValueConstraints::loadOpenListChoices((v6 + 6), &v19);
    uaap_orchestration::grammar::ValueConstraints::loadResolutionTable((v6 + 6), v21);
    *a2 = 0;
    *(a2 + 24) = 0;
    if (v16 == 1)
    {
      *a2 = __p;
      memset(&__p, 0, sizeof(__p));
      *(a2 + 24) = 1;
    }

    v7 = v17;
    *(a2 + 80) = 0;
    *(a2 + 32) = v7;
    *(a2 + 48) = v18;
    v18 = 0;
    v17 = 0uLL;
    *(a2 + 56) = v19;
    *(a2 + 72) = v20;
    v20 = 0;
    v19 = 0uLL;
    *(a2 + 120) = 0;
    if (v22 == 1)
    {
      std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(a2 + 80, v21);
      *(a2 + 120) = 1;
      v8 = v22;
      *(a2 + 128) = 1;
      if (v8)
      {
        std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(v21);
      }
    }

    else
    {
      *(a2 + 128) = 1;
    }

    v24.__r_.__value_.__r.__words[0] = &v19;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v24);
    v24.__r_.__value_.__r.__words[0] = &v17;
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v24);
    if (v16 == 1 && SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }
}

void sub_2229489A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v17 - 57) < 0)
  {
    operator delete(*(v17 - 80));
  }

  if (*(v17 - 81) < 0)
  {
    operator delete(*(v17 - 104));
    if ((v16 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v16)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v15);
  goto LABEL_10;
}

void uaap_orchestration::grammar::Rule::loadRightLabelsFromJson(uint64_t a1@<X0>, std::string::size_type *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  Member = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*a1, v4, "right-labels");
  if (&v4[12 * v3] == Member || *(Member + 23) != 4)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&__p, "Error parsing JSON grammar: parsedRightLabels != jsonRule.MemberEnd() && parsedRightLabels->value.IsArray() == false [for key: ");
    v54 = std::string::append(&__p, "right-labels");
    v55 = *&v54->__r_.__value_.__l.__data_;
    v58.__r_.__value_.__r.__words[2] = v54->__r_.__value_.__r.__words[2];
    *&v58.__r_.__value_.__l.__data_ = v55;
    v54->__r_.__value_.__l.__size_ = 0;
    v54->__r_.__value_.__r.__words[2] = 0;
    v54->__r_.__value_.__r.__words[0] = 0;
    v56 = std::string::append(&v58, "]");
    v57 = *&v56->__r_.__value_.__l.__data_;
    v62.__r_.__value_.__r.__words[2] = v56->__r_.__value_.__r.__words[2];
    *&v62.__r_.__value_.__l.__data_ = v57;
    v56->__r_.__value_.__l.__size_ = 0;
    v56->__r_.__value_.__r.__words[2] = 0;
    v56->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v62);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v6 = Member[6];
  if (v6)
  {
    v7 = *(Member + 4);
    v8 = v7 + 24 * v6;
    do
    {
      if (*(v7 + 22) != 3)
      {
        v46 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&v60, "Error parsing JSON grammar: rightLabelObject.IsObject() == false [for key: ");
        v47 = std::string::append(&v60, "right-labels");
        v48 = *&v47->__r_.__value_.__l.__data_;
        __p.__r_.__value_.__r.__words[2] = v47->__r_.__value_.__r.__words[2];
        *&__p.__r_.__value_.__l.__data_ = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        v49 = std::string::append(&__p, " entry");
        v50 = *&v49->__r_.__value_.__l.__data_;
        v58.__r_.__value_.__r.__words[2] = v49->__r_.__value_.__r.__words[2];
        *&v58.__r_.__value_.__l.__data_ = v50;
        v49->__r_.__value_.__l.__size_ = 0;
        v49->__r_.__value_.__r.__words[2] = 0;
        v49->__r_.__value_.__r.__words[0] = 0;
        v51 = std::string::append(&v58, "]");
        v52 = *&v51->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v51->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v52;
        v51->__r_.__value_.__l.__size_ = 0;
        v51->__r_.__value_.__r.__words[2] = 0;
        v51->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v46, &v62);
        __cxa_throw(v46, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v9 = *v7;
      v10 = *(v7 + 8);
      v11 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(*v7, v10, "name");
      v12 = &v10[12 * v9];
      if (v12 == v11 || (v13 = v11, v14 = *(v11 + 23), (v14 & 0x400) == 0))
      {
        v36 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&__p, "Error parsing JSON grammar: parsedName != rightLabelObject.MemberEnd() && parsedName->value.IsString() == false [for key: ");
        v37 = std::string::append(&__p, "name");
        v38 = *&v37->__r_.__value_.__l.__data_;
        v58.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&v58.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        v39 = std::string::append(&v58, "]");
        v40 = *&v39->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v36, &v62);
        __cxa_throw(v36, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v15 = rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::FindMember(v9, v10, "repeated");
      if (v12 == v15 || (v16 = v15, (*(v15 + 23) & 8) == 0))
      {
        v41 = __cxa_allocate_exception(0x10uLL);
        std::string::basic_string[abi:ne200100]<0>(&__p, "Error parsing JSON grammar: parsedRepeatedFlag != rightLabelObject.MemberEnd() && parsedRepeatedFlag->value.IsBool() == false [for key: ");
        v42 = std::string::append(&__p, "repeated");
        v43 = *&v42->__r_.__value_.__l.__data_;
        v58.__r_.__value_.__r.__words[2] = v42->__r_.__value_.__r.__words[2];
        *&v58.__r_.__value_.__l.__data_ = v43;
        v42->__r_.__value_.__l.__size_ = 0;
        v42->__r_.__value_.__r.__words[2] = 0;
        v42->__r_.__value_.__r.__words[0] = 0;
        v44 = std::string::append(&v58, "]");
        v45 = *&v44->__r_.__value_.__l.__data_;
        v62.__r_.__value_.__r.__words[2] = v44->__r_.__value_.__r.__words[2];
        *&v62.__r_.__value_.__l.__data_ = v45;
        v44->__r_.__value_.__l.__size_ = 0;
        v44->__r_.__value_.__r.__words[2] = 0;
        v44->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v41, &v62);
        __cxa_throw(v41, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if ((v14 & 0x1000) != 0)
      {
        v17 = (v13 + 6);
      }

      else
      {
        v17 = *(v13 + 4);
      }

      if ((v14 & 0x1000) != 0)
      {
        v18 = (21 - *(v13 + 45));
      }

      else
      {
        v18 = v13[6];
      }

      toU16String(&__p, v17, v18);
      v19 = *(v16 + 23);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        std::basic_string<char16_t>::__init_copy_ctor_external(&v58, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        v58 = __p;
      }

      v20 = v19 == 10;
      v59 = v19 == 10;
      v21 = a2[1];
      v22 = a2[2];
      if (v21 >= v22)
      {
        v24 = (v21 - *a2) >> 5;
        v25 = v24 + 1;
        if ((v24 + 1) >> 59)
        {
          std::vector<nlohmann::basic_json<std::map,std::vector,std::string,BOOL,long long,unsigned long long,double,std::allocator,nlohmann::adl_serializer,std::vector<unsigned char>>>::__throw_length_error[abi:ne200100]();
        }

        v26 = v22 - *a2;
        if (v26 >> 4 > v25)
        {
          v25 = v26 >> 4;
        }

        if (v26 >= 0x7FFFFFFFFFFFFFE0)
        {
          v27 = 0x7FFFFFFFFFFFFFFLL;
        }

        else
        {
          v27 = v25;
        }

        if (v27)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::RightLabel>>(v27);
        }

        v28 = 32 * v24;
        *v28 = v58;
        memset(&v58, 0, sizeof(v58));
        *(v28 + 24) = v20;
        v30 = *a2;
        v29 = a2[1];
        v62.__r_.__value_.__r.__words[0] = a2;
        v62.__r_.__value_.__l.__size_ = &v64;
        v62.__r_.__value_.__r.__words[2] = &v60;
        v31 = v30;
        v32 = &v30[v28 / 8] - v29;
        v60.__r_.__value_.__r.__words[0] = v32;
        v64 = v32;
        v33 = v32;
        if (v30 == v29)
        {
          v63 = 1;
        }

        else
        {
          do
          {
            v34 = *v31;
            *(v33 + 16) = v31[2];
            *v33 = v34;
            v31[1] = 0;
            v31[2] = 0;
            *v31 = 0;
            *(v33 + 24) = *(v31 + 24);
            v31 += 4;
            v33 += 32;
          }

          while (v31 != v29);
          v60.__r_.__value_.__r.__words[0] = v33;
          v63 = 1;
          do
          {
            if (*(v30 + 23) < 0)
            {
              operator delete(*v30);
            }

            v30 += 4;
          }

          while (v30 != v29);
        }

        v23 = v28 + 32;
        std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<uaap_orchestration::grammar::RightLabel>,uaap_orchestration::grammar::RightLabel*>>::~__exception_guard_exceptions[abi:ne200100](&v62);
        v35 = *a2;
        *a2 = v32;
        *(a2 + 1) = (v28 + 32);
        if (v35)
        {
          operator delete(v35);
        }
      }

      else
      {
        *v21 = v58;
        *(v21 + 24) = v20;
        v23 = v21 + 32;
      }

      a2[1] = v23;
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v7 += 24;
    }

    while (v7 != v8);
  }
}

void sub_222949030(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, void *a25, uint64_t a26, int a27, __int16 a28, char a29, char a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37)
{
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a16 < 0)
  {
    operator delete(a11);
  }

  if (a30 < 0)
  {
    operator delete(a25);
    if ((v38 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v37);
  goto LABEL_10;
}

void uaap_orchestration::grammar::UaapGrammar::UaapGrammar(uint64_t *a1, _BYTE *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2[23] >= 0)
  {
    v2 = a2;
  }

  else
  {
    v2 = *a2;
  }

  v3 = v2;
  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::GenericDocument(&v4);
}

void sub_222949414(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va2, a7);
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  va_copy(va2, va1);
  v10 = va_arg(va2, void);
  v12 = va_arg(va2, void);
  v13 = va_arg(va2, void);
  va_arg(va2, void);
  v15 = va_arg(va2, void);
  v16 = va_arg(va2, void);
  v17 = va_arg(va2, void);
  v18 = va_arg(va2, void);
  v19 = va_arg(va2, void);
  v20 = va_arg(va2, void);
  v14 = v13;
  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ClearStackOnExit::~ClearStackOnExit(va);
  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(va1);
  rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(va2);
  std::vector<uaap_orchestration::grammar::Rule>::__destroy_vector::operator()[abi:ne200100](va2);
  _Unwind_Resume(a1);
}

void rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::GenericDocument(uint64_t a1)
{
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 1024;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  operator new();
}

void uaap_orchestration::grammar::UaapGrammar::loadRulesFromJson(unsigned int *a1@<X0>, std::string::size_type *a2@<X8>)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 11) != 3)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v18, "Error parsing JSON grammar: jsonGrammar.IsObject() == false [for key: ");
    v14 = std::string::append(&v18, "(root)");
    v15 = *&v14->__r_.__value_.__l.__data_;
    *&v19[16] = *(&v14->__r_.__value_.__l + 2);
    *v19 = v15;
    v14->__r_.__value_.__l.__size_ = 0;
    v14->__r_.__value_.__r.__words[2] = 0;
    v14->__r_.__value_.__r.__words[0] = 0;
    v16 = std::string::append(v19, "]");
    v17 = *&v16->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v16->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v17;
    v16->__r_.__value_.__l.__size_ = 0;
    v16->__r_.__value_.__r.__words[2] = 0;
    v16->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v20);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v20.__r_.__value_.__r.__words[2] = 0x405000000000000;
  v20.__r_.__value_.__l.__size_ = "rules";
  v20.__r_.__value_.__r.__words[0] = 5;
  v3 = *(a1 + 1);
  v4 = *a1;
  if (v4)
  {
    v5 = 48 * v4;
    v6 = *(a1 + 1);
    while (!rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>::StringEqual<rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>(&v20, v6))
    {
      v6 += 48;
      v5 -= 48;
      if (!v5)
      {
        v6 = v3 + 48 * v4;
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
    v6 = *(a1 + 1);
  }

  if (v6 == v3 + 48 * v4 || *(v6 + 46) != 4)
  {
    v8 = __cxa_allocate_exception(0x10uLL);
    std::string::basic_string[abi:ne200100]<0>(&v18, "Error parsing JSON grammar: parsedRules != jsonGrammar.MemberEnd() && parsedRules->value.IsArray() == false [for key: ");
    v9 = std::string::append(&v18, "rules");
    v10 = *&v9->__r_.__value_.__l.__data_;
    *&v19[16] = *(&v9->__r_.__value_.__l + 2);
    *v19 = v10;
    v9->__r_.__value_.__l.__size_ = 0;
    v9->__r_.__value_.__r.__words[2] = 0;
    v9->__r_.__value_.__r.__words[0] = 0;
    v11 = std::string::append(v19, "]");
    v12 = *&v11->__r_.__value_.__l.__data_;
    v20.__r_.__value_.__r.__words[2] = v11->__r_.__value_.__r.__words[2];
    *&v20.__r_.__value_.__l.__data_ = v12;
    v11->__r_.__value_.__l.__size_ = 0;
    v11->__r_.__value_.__r.__words[2] = 0;
    v11->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v8, &v20);
    __cxa_throw(v8, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v7 = *(v6 + 24);
  if (v7)
  {
    v21 = a2;
    std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::Rule>>(v7);
  }
}

void sub_222949A58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, void *__p, uint64_t a44, int a45, __int16 a46, char a47, char a48)
{
  if (a48 < 0)
  {
    operator delete(__p);
  }

  if (a39 < 0)
  {
    operator delete(a34);
  }

  if (a32 < 0)
  {
    operator delete(a27);
    if ((v49 & 1) == 0)
    {
LABEL_10:
      _Unwind_Resume(a1);
    }
  }

  else if (!v49)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v48);
  goto LABEL_10;
}

void std::vector<uaap_orchestration::grammar::Rule>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    for (i = v1[1]; i != v2; std::allocator_traits<std::allocator<uaap_orchestration::grammar::Rule>>::destroy[abi:ne200100]<uaap_orchestration::grammar::Rule,0>(i))
    {
      i -= 184;
    }

    v1[1] = v2;
    v5 = **a1;

    operator delete(v5);
  }
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v3 = *v2;
    if (*v2)
    {
      while (v3 != *(v2 + 16))
      {
        v4 = v3[2];
        free(v3);
        *v2 = v4;
        v3 = v4;
        if (!v4)
        {
          goto LABEL_7;
        }
      }

      v3[1] = 0;
    }

LABEL_7:
    v5 = *(v2 + 32);
    if (v5)
    {
      MEMORY[0x223DC4D00](v5, 0xC400A2AC0F1);
    }

    MEMORY[0x223DC4D00](v2, 0x10A0C40AAA3F4FELL);
  }

  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(a1 + 40);
  return a1;
}

uint64_t rapidjson::internal::Stack<rapidjson::CrtAllocator>::Destroy(uint64_t a1)
{
  free(*(a1 + 16));
  result = *(a1 + 8);
  if (result)
  {

    JUMPOUT(0x223DC4D00);
  }

  return result;
}

void std::allocator_traits<std::allocator<uaap_orchestration::grammar::Rule>>::destroy[abi:ne200100]<uaap_orchestration::grammar::Rule,0>(uint64_t a1)
{
  if (*(a1 + 176) == 1)
  {
    if (*(a1 + 168) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(a1 + 128);
    }

    v3 = (a1 + 104);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
    v3 = (a1 + 80);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v3);
    if (*(a1 + 72) == 1 && *(a1 + 71) < 0)
    {
      operator delete(*(a1 + 48));
    }
  }

  v3 = (a1 + 24);
  std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v3);
  if (*(a1 + 23) < 0)
  {
    v2 = *a1;

    operator delete(v2);
  }
}

uint64_t std::allocator_traits<std::allocator<uaap_orchestration::grammar::Rule>>::construct[abi:ne200100]<uaap_orchestration::grammar::Rule,uaap_orchestration::grammar::Rule,0>(uint64_t result, __int128 *a2)
{
  v2 = *a2;
  *(result + 16) = *(a2 + 2);
  *result = v2;
  *(a2 + 8) = 0uLL;
  *a2 = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 24) = *(a2 + 24);
  *(result + 40) = *(a2 + 5);
  *(a2 + 24) = 0uLL;
  *(a2 + 5) = 0;
  *(result + 48) = 0;
  *(result + 176) = 0;
  if (*(a2 + 176) == 1)
  {
    v3 = result;
    *(result + 72) = 0;
    if (*(a2 + 72) == 1)
    {
      v4 = a2[3];
      *(result + 64) = *(a2 + 8);
      *(result + 48) = v4;
      *(a2 + 56) = 0uLL;
      *(a2 + 6) = 0;
      *(result + 72) = 1;
    }

    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 96) = 0;
    *(result + 80) = a2[5];
    *(result + 96) = *(a2 + 12);
    a2[5] = 0uLL;
    *(a2 + 12) = 0;
    *(result + 104) = 0;
    *(result + 112) = 0;
    *(result + 120) = 0;
    *(result + 104) = *(a2 + 104);
    *(result + 120) = *(a2 + 15);
    *(a2 + 104) = 0uLL;
    *(a2 + 15) = 0;
    *(result + 128) = 0;
    result += 128;
    *(v3 + 168) = 0;
    if (*(a2 + 168) == 1)
    {
      result = std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__hash_table(result, a2 + 16);
      *(v3 + 168) = 1;
    }

    *(v3 + 176) = 1;
  }

  return result;
}

void uaap_orchestration::grammar::Rule::~Rule(uaap_orchestration::grammar::Rule *this)
{
  if (*(this + 176) == 1)
  {
    if (*(this + 168) == 1)
    {
      std::__hash_table<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::__unordered_map_hasher<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::hash<std::basic_string<char16_t>>,std::equal_to<std::basic_string<char16_t>>,true>,std::__unordered_map_equal<std::basic_string<char16_t>,std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>,std::equal_to<std::basic_string<char16_t>>,std::hash<std::basic_string<char16_t>>,true>,std::allocator<std::__hash_value_type<std::basic_string<char16_t>,std::vector<std::basic_string<char16_t>>>>>::~__hash_table(this + 128);
    }

    v2 = (this + 104);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
    v2 = (this + 80);
    std::vector<std::basic_string<char16_t>>::__destroy_vector::operator()[abi:ne200100](&v2);
    if (*(this + 72) == 1 && *(this + 71) < 0)
    {
      operator delete(*(this + 6));
    }
  }

  v2 = (this + 24);
  std::vector<uaap_orchestration::grammar::RightLabel>::__destroy_vector::operator()[abi:ne200100](&v2);
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<uaap_orchestration::grammar::Rule>>(unint64_t a1)
{
  if (a1 < 0x1642C8590B21643)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

void std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<uaap_orchestration::grammar::Rule>,uaap_orchestration::grammar::Rule*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = a2;
    do
    {
      std::allocator_traits<std::allocator<uaap_orchestration::grammar::Rule>>::construct[abi:ne200100]<uaap_orchestration::grammar::Rule,uaap_orchestration::grammar::Rule,0>(a4, v7);
      v7 = (v7 + 184);
      a4 += 184;
    }

    while (v7 != a3);
    do
    {
      std::allocator_traits<std::allocator<uaap_orchestration::grammar::Rule>>::destroy[abi:ne200100]<uaap_orchestration::grammar::Rule,0>(v6);
      v6 = (v6 + 184);
    }

    while (v6 != a3);
  }
}

uint64_t std::__split_buffer<uaap_orchestration::grammar::Rule>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  while (1)
  {
    v3 = *(a1 + 16);
    if (v3 == v2)
    {
      break;
    }

    *(a1 + 16) = v3 - 184;
    std::allocator_traits<std::allocator<uaap_orchestration::grammar::Rule>>::destroy[abi:ne200100]<uaap_orchestration::grammar::Rule,0>(v3 - 184);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

uint64_t rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::ClearStackOnExit::~ClearStackOnExit(uint64_t a1)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v2[8] = v3;
  free(v3);
  v2[7] = 0;
  v2[8] = 0;
  v2[9] = 0;
  return a1;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(void *a1, size_t size)
{
  v4 = a1[2];
  v5 = a1[3];
  if (size)
  {
    result = malloc_type_realloc(v4, size, 0xCE708ED7uLL);
  }

  else
  {
    free(v4);
    result = 0;
  }

  a1[2] = result;
  a1[3] = &result[v5 - v4];
  a1[4] = &result[size];
  return result;
}

void rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t result, unsigned __int8 **a2, uint64_t *a3, __n128 a4, __n128 a5)
{
  v8 = *a2;
  v9 = **a2;
  if (v9 > 0x6D)
  {
    switch(v9)
    {
      case '{':
        *a2 = v8 + 1;
        v14 = a3[8];
        if (a3[9] - v14 <= 23)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
          v14 = a3[8];
        }

        a3[8] = v14 + 24;
        *(v14 + 8) = 0;
        *(v14 + 16) = 0;
        *v14 = 0;
        *(v14 + 22) = 3;
        for (i = *a2; ; ++i)
        {
          v16 = *i;
          v17 = v16 > 0x20;
          v18 = (1 << v16) & 0x100002600;
          if (v17 || v18 == 0)
          {
            break;
          }
        }

        *a2 = i;
        if (!*(result + 48))
        {
          v20 = *i;
          if (v20 == 125)
          {
            *a2 = i + 1;
            v21 = a3[8];
            v22 = 3;
LABEL_66:
            *(v21 - 2) = v22;
            *(v21 - 24) = 0;
            *(v21 - 16) = 0;
            return;
          }

          if (v20 != 34)
          {
LABEL_181:
            v61 = i - a2[1];
            v62 = 4;
            goto LABEL_145;
          }

          v63 = 0;
          while (1)
          {
            v64.n128_f64[0] = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
            if (*(result + 48))
            {
              break;
            }

            for (j = *a2; ; ++j)
            {
              v67 = *j;
              v17 = v67 > 0x20;
              v68 = (1 << v67) & 0x100002600;
              if (v17 || v68 == 0)
              {
                break;
              }
            }

            *a2 = j;
            if (*j != 58)
            {
              v61 = j - a2[1];
              v62 = 5;
              goto LABEL_145;
            }

            v70 = j + 1;
            *a2 = v70;
            while (1)
            {
              v71 = *v70;
              v17 = v71 > 0x20;
              v72 = (1 << v71) & 0x100002600;
              if (v17 || v72 == 0)
              {
                break;
              }

              ++v70;
            }

            *a2 = v70;
            rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3, v64, v65);
            if (*(result + 48))
            {
              return;
            }

            for (k = *a2; ; ++k)
            {
              v75 = *k;
              v17 = v75 > 0x20;
              v76 = (1 << v75) & 0x100002600;
              if (v17 || v76 == 0)
              {
                break;
              }
            }

            *a2 = k;
            ++v63;
            v78 = *k;
            if (v78 != 44)
            {
              if (v78 != 125)
              {
                v61 = k - a2[1];
                v62 = 6;
                goto LABEL_145;
              }

              *a2 = k + 1;

              rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(a3, v63);
              return;
            }

            i = k + 1;
            *a2 = i;
            while (1)
            {
              v79 = *i;
              v17 = v79 > 0x20;
              v80 = (1 << v79) & 0x100002600;
              if (v17 || v80 == 0)
              {
                break;
              }

              ++i;
            }

            *a2 = i;
            if (*i != 34)
            {
              goto LABEL_181;
            }
          }
        }

        break;
      case 't':
        v10 = v8 + 1;
        *a2 = v8 + 1;
        if (v8[1] == 114)
        {
          v10 = v8 + 2;
          *a2 = v8 + 2;
          if (v8[2] == 117)
          {
            v10 = v8 + 3;
            *a2 = v8 + 3;
            if (v8[3] == 101)
            {
              *a2 = v8 + 4;
              v11 = a3[8];
              if (a3[9] - v11 <= 23)
              {
                rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
                v11 = a3[8];
              }

              a3[8] = v11 + 24;
              *(v11 + 8) = 0;
              *(v11 + 16) = 0;
              *v11 = 0;
              v12 = 10;
              goto LABEL_62;
            }
          }
        }

        goto LABEL_144;
      case 'n':
        v10 = v8 + 1;
        *a2 = v8 + 1;
        if (v8[1] != 117 || (v10 = v8 + 2, *a2 = v8 + 2, v8[2] != 108) || (v10 = v8 + 3, *a2 = v8 + 3, v8[3] != 108))
        {
LABEL_144:
          v61 = v10 - a2[1];
          v62 = 3;
LABEL_145:
          *(result + 48) = v62;
          *(result + 56) = v61;
          return;
        }

        *a2 = v8 + 4;
        v13 = a3[8];
        if (a3[9] - v13 <= 23)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
          v13 = a3[8];
        }

        a3[8] = (v13 + 3);
        *v13 = 0;
        v13[1] = 0;
        v13[2] = 0;
        break;
      default:
        goto LABEL_35;
    }
  }

  else
  {
    switch(v9)
    {
      case '""':

        rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
        break;
      case '[':
        *a2 = v8 + 1;
        v34 = a3[8];
        if (a3[9] - v34 <= 23)
        {
          rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
          v34 = a3[8];
        }

        a3[8] = v34 + 24;
        *(v34 + 8) = 0;
        *(v34 + 16) = 0;
        *v34 = 0;
        *(v34 + 22) = 4;
        for (m = *a2; ; ++m)
        {
          v36 = *m;
          v17 = v36 > 0x20;
          v37 = (1 << v36) & 0x100002600;
          if (v17 || v37 == 0)
          {
            break;
          }
        }

        *a2 = m;
        if (!*(result + 48))
        {
          if (*m == 93)
          {
            *a2 = m + 1;
            v21 = a3[8];
            v22 = 4;
            goto LABEL_66;
          }

          v82 = 0;
          while (1)
          {
            rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3, a4, a5);
            if (*(result + 48))
            {
              break;
            }

            for (n = *a2; ; ++n)
            {
              v84 = *n;
              v17 = v84 > 0x20;
              v85 = (1 << v84) & 0x100002600;
              if (v17 || v85 == 0)
              {
                break;
              }
            }

            ++v82;
            *a2 = n;
            v87 = *n;
            if (v87 != 44)
            {
              if (v87 != 93)
              {
                v61 = n - a2[1];
                v62 = 7;
                goto LABEL_145;
              }

              *a2 = n + 1;

              rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(a3, v82);
              return;
            }

            v88 = n + 1;
            *a2 = v88;
            while (1)
            {
              v89 = *v88;
              v17 = v89 > 0x20;
              v90 = (1 << v89) & 0x100002600;
              if (v17 || v90 == 0)
              {
                break;
              }

              ++v88;
            }

            *a2 = v88;
          }
        }

        break;
      case 'f':
        v10 = v8 + 1;
        *a2 = v8 + 1;
        if (v8[1] == 97)
        {
          v10 = v8 + 2;
          *a2 = v8 + 2;
          if (v8[2] == 108)
          {
            v10 = v8 + 3;
            *a2 = v8 + 3;
            if (v8[3] == 115)
            {
              v10 = v8 + 4;
              *a2 = v8 + 4;
              if (v8[4] == 101)
              {
                *a2 = v8 + 5;
                v11 = a3[8];
                if (a3[9] - v11 <= 23)
                {
                  rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
                  v11 = a3[8];
                }

                a3[8] = v11 + 24;
                *(v11 + 8) = 0;
                *(v11 + 16) = 0;
                *v11 = 0;
                v12 = 9;
LABEL_62:
                *(v11 + 22) = v12;
                return;
              }
            }
          }
        }

        goto LABEL_144;
      default:
LABEL_35:
        v23 = a2[1];
        if (v9 == 45)
        {
          v25 = v8 + 1;
          v24 = v8[1];
        }

        else
        {
          v24 = **a2;
          v25 = *a2;
        }

        LODWORD(v26) = v24 - 48;
        if (v24 == 48)
        {
          v40 = 0;
          v42 = 0;
          v31 = 0;
          v43 = 0;
          v30 = 0.0;
          v27 = v25[1];
          v28 = v25 + 1;
        }

        else
        {
          if ((v24 - 49) > 8)
          {
            v58 = 3;
            goto LABEL_221;
          }

          v27 = v25[1];
          v28 = v25 + 1;
          v29 = v27 - 48;
          v30 = 0.0;
          if (v9 == 45)
          {
            if (v29 <= 9)
            {
              v31 = 0;
              v32 = 214748364;
              while (1)
              {
                if (v26 > 0xCCCCCCB)
                {
                  if (v26 != 214748364)
                  {
                    goto LABEL_143;
                  }

                  if (v27 > 0x38)
                  {
                    break;
                  }
                }

                v33 = *++v28;
                LODWORD(v26) = v27 + 10 * v26 - 48;
                ++v31;
                v27 = v33;
                if (v33 - 48 >= 0xA)
                {
                  goto LABEL_81;
                }
              }

              v27 = 57;
LABEL_74:
              v40 = v32;
              if (v9 == 45)
              {
                while (v40 <= 0xCCCCCCCCCCCCCCBLL || v40 == 0xCCCCCCCCCCCCCCCLL && v27 <= 0x38)
                {
                  v41 = *++v28;
                  v40 = (v27 & 0xF) + 10 * v40;
                  ++v31;
                  v27 = v41;
                  if (v41 - 48 >= 0xA)
                  {
                    goto LABEL_91;
                  }
                }
              }

              else
              {
                while (v40 <= 0x1999999999999998 || v40 == 0x1999999999999999 && v27 <= 0x35)
                {
                  v44 = *++v28;
                  v40 = (v27 & 0xF) + 10 * v40;
                  ++v31;
                  v27 = v44;
                  if (v44 - 48 >= 0xA)
                  {
LABEL_91:
                    v42 = 0;
                    v30 = 0.0;
                    goto LABEL_92;
                  }
                }
              }

              v30 = v40;
              do
              {
                v45 = v27 - 48;
                v46 = *++v28;
                v27 = v46;
                v30 = v45 + v30 * 10.0;
              }

              while (v46 - 48 < 0xA);
              v42 = 1;
LABEL_92:
              v43 = 1;
              LODWORD(v26) = v32;
              goto LABEL_93;
            }
          }

          else if (v29 <= 9)
          {
            v31 = 0;
            v32 = 429496729;
            while (1)
            {
              if (v26 > 0x19999998)
              {
                if (v26 != 429496729)
                {
LABEL_143:
                  v32 = v26;
                  goto LABEL_74;
                }

                if (v27 > 0x35)
                {
                  goto LABEL_74;
                }
              }

              v39 = *++v28;
              LODWORD(v26) = v27 + 10 * v26 - 48;
              ++v31;
              v27 = v39;
              if (v39 - 48 >= 0xA)
              {
LABEL_81:
                v40 = 0;
                v42 = 0;
                goto LABEL_82;
              }
            }
          }

          v40 = 0;
          v42 = 0;
          v31 = 0;
LABEL_82:
          v43 = 0;
        }

LABEL_93:
        if (v27 == 46)
        {
          v27 = v28[1];
          v25 = v28 + 1;
          if (v27 - 58 < 0xFFFFFFF6)
          {
            v58 = 14;
            goto LABEL_221;
          }

          v47 = 0;
          if ((v42 & 1) == 0)
          {
            if (!v43)
            {
              v40 = v26;
            }

            while (v27 <= 0x39 && !(v40 >> 53))
            {
              v49 = *++v25;
              v48 = v49;
              v40 = v27 - 48 + 10 * v40;
              --v47;
              if (v40)
              {
                ++v31;
              }

              v27 = v48;
              if (v48 <= 47)
              {
                v50 = 0;
                v30 = v40;
                v28 = v25;
                goto LABEL_112;
              }
            }

            v30 = v40;
          }

          v28 = v25;
          while (v27 <= 0x39)
          {
            if (v31 <= 16)
            {
              v30 = (v27 - 48) + v30 * 10.0;
              --v47;
              if (v30 > 0.0)
              {
                ++v31;
              }
            }

            v51 = *++v28;
            v27 = v51;
            if (v51 <= 47)
            {
              goto LABEL_111;
            }
          }

          v42 = 1;
        }

        else
        {
          v47 = 0;
        }

        if (v27 != 101 && v27 != 69)
        {
          if ((v42 & 1) == 0)
          {
            if (v43)
            {
              if (v9 == 45)
              {
                rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(a3, -v40);
              }

              else
              {
                rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint64(a3, v40);
              }
            }

            else if (v9 == 45)
            {
              rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int(a3, -v26);
            }

            else
            {
              rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint(a3, v26);
            }

            goto LABEL_141;
          }

LABEL_111:
          v50 = 0;
LABEL_112:
          v52 = v47 + v50;
          if (v52 > -309)
          {
            if ((v52 & 0x80000000) == 0)
            {
              v53 = v30 * rapidjson::internal::Pow10(int)::e[v52];
              goto LABEL_132;
            }

            v54 = -v52;
          }

          else
          {
            v53 = 0.0;
            if (v52 < 0xFFFFFD98)
            {
              goto LABEL_135;
            }

            v30 = v30 / 1.0e308;
            v54 = -308 - v52;
          }

          v53 = v30 / rapidjson::internal::Pow10(int)::e[v54];
LABEL_132:
          if (v53 > 1.79769313e308)
          {
LABEL_133:
            v58 = 13;
            v25 = v8;
LABEL_134:
            *(result + 48) = v58;
            *(result + 56) = v25 - v23;
LABEL_141:
            *a2 = v28;
            a2[1] = v23;
            return;
          }

LABEL_135:
          if (v9 == 45)
          {
            v59 = -v53;
          }

          else
          {
            v59 = v53;
          }

          v60 = a3[8];
          if (a3[9] - v60 <= 23)
          {
            rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
            v60 = a3[8];
          }

          a3[8] = v60 + 24;
          *(v60 + 8) = 0;
          *(v60 + 16) = 0;
          *v60 = v59;
          *(v60 + 22) = 534;
          goto LABEL_141;
        }

        v25 = v28 + 1;
        v55 = v28[1];
        v26 = v26;
        if (v43)
        {
          v26 = v40;
        }

        if (!v42)
        {
          v30 = v26;
        }

        if (v55 == 43)
        {
          v25 = v28 + 2;
          v55 = v28[2];
          if ((v55 - 48) < 0xA)
          {
            v56 = 3;
            goto LABEL_124;
          }
        }

        else if (v55 == 45)
        {
          v25 = v28 + 2;
          v92 = v28[2] - 48;
          if (v92 < 0xA)
          {
            v94 = v28[3];
            v28 += 3;
            v93 = v94;
            if ((v94 - 48) <= 9)
            {
              while (1)
              {
                v92 = v93 + 10 * v92 - 48;
                if (v92 > (v47 + 2147483639) / 10)
                {
                  break;
                }

                v95 = *++v28;
                v93 = v95;
                if ((v95 - 48) >= 0xA)
                {
                  goto LABEL_216;
                }
              }

              do
              {
                v96 = *++v28;
              }

              while ((v96 - 48) < 0xA);
            }

LABEL_216:
            v50 = -v92;
            goto LABEL_112;
          }
        }

        else if ((v55 - 48) < 0xA)
        {
          v56 = 2;
LABEL_124:
          v28 += v56;
          v50 = v55 - 48;
          while (1)
          {
            v57 = *v28;
            if ((v57 - 48) > 9)
            {
              goto LABEL_112;
            }

            ++v28;
            v50 = v57 + 10 * v50 - 48;
            if (v50 > 308 - v47)
            {
              goto LABEL_133;
            }
          }
        }

        v58 = 15;
LABEL_221:
        v28 = v25;
        goto LABEL_134;
    }
  }
}

void sub_22294ACE0(_Unwind_Exception *a1)
{
  *v1 = v3;
  v1[1] = v2;
  _Unwind_Resume(a1);
}

double rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::GenericStringStream<rapidjson::UTF8<char>>,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t a1, _OWORD *a2, void *a3)
{
  v27 = *a2;
  v5 = (v27 + 1);
  v28 = a2;
  *&v27 = v27 + 1;
  *v25 = a1;
  for (LODWORD(__n) = 0; ; LODWORD(__n) = __n + 1)
  {
    while (1)
    {
      v6 = *v5;
      if (v6 != 92)
      {
        break;
      }

      *&v27 = v5 + 1;
      v9 = v5[1];
      LOBYTE(v6) = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseStringToStream<0u,rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::FileReadStream,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(rapidjson::FileReadStream &,rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char> &)::escape[v9];
      if (v6)
      {
        v5 += 2;
        *&v27 = v5;
        v7 = *v25;
        v8 = *(*v25 + 24);
        if ((*(*v25 + 32) - v8) > 0)
        {
          goto LABEL_6;
        }

LABEL_9:
        rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v25);
        v8 = v7[3];
        goto LABEL_6;
      }

      v10 = &v5[-*(&v27 + 1)];
      if (v9 != 117)
      {
        *(a1 + 48) = 10;
        *(a1 + 56) = v10;
        goto LABEL_29;
      }

      *&v27 = v5 + 2;
      v24 = &v5[-*(&v27 + 1)];
      v11 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a1, &v27, v10);
      if (*(a1 + 48))
      {
        goto LABEL_29;
      }

      v12 = v11;
      if (v11 >> 11 == 27)
      {
        if (v11 >> 10 > 0x36)
        {
          goto LABEL_31;
        }

        v13 = v27;
        if (*v27 != 92)
        {
          goto LABEL_31;
        }

        v14 = *(v27 + 1);
        *&v27 = v27 + 1;
        if (v14 != 117)
        {
          goto LABEL_31;
        }

        v15 = v11;
        *&v27 = v13 + 2;
        v16 = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(a1, &v27, v24);
        if (*(a1 + 48))
        {
          goto LABEL_29;
        }

        if ((v16 - 57344) <= 0xFFFFFBFF)
        {
LABEL_31:
          *(a1 + 48) = 9;
          v21 = v24;
LABEL_28:
          *(a1 + 56) = v21;
          goto LABEL_29;
        }

        v12 = v16 + (v15 << 10) - 56613888;
      }

      rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(v25, v12);
      v5 = v27;
    }

    if (v6 == 34)
    {
      break;
    }

    if (v6 <= 0x1F)
    {
      v21 = &v5[-*(&v27 + 1)];
      if (*v5)
      {
        v22 = 12;
      }

      else
      {
        v22 = 11;
      }

      *(a1 + 48) = v22;
      goto LABEL_28;
    }

    *&v27 = ++v5;
    v7 = *v25;
    v8 = *(*v25 + 24);
    if ((*(*v25 + 32) - v8) <= 0)
    {
      goto LABEL_9;
    }

LABEL_6:
    v7[3] = (v8 + 1);
    *v8 = v6;
  }

  *&v27 = v5 + 1;
  v17 = *v25;
  v18 = *(*v25 + 24);
  if ((*(*v25 + 32) - v18) <= 0)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v25);
    v18 = v17[3];
  }

  v17[3] = (v18 + 1);
  *v18 = 0;
  if (!*(a1 + 48))
  {
    v19 = __n;
    v20 = (v17[3] - (__n + 1));
    v17[3] = v20;
    rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(a3, v20, v19);
  }

LABEL_29:
  result = *&v27;
  *v28 = v27;
  return result;
}

uint64_t *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[8];
  if (result[9] - v4 <= 23)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(result + 5);
    v4 = v3[8];
  }

  v3[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  *(v4 + 22) = 150;
  if ((a2 & 0x8000000000000000) != 0)
  {
    if (a2 < 0xFFFFFFFF80000000)
    {
      return result;
    }

    v5 = 182;
  }

  else
  {
    if (HIDWORD(a2))
    {
      v5 = 406;
    }

    else
    {
      v5 = 470;
    }

    if (!(a2 >> 31))
    {
      v5 = 502;
    }
  }

  *(v4 + 22) = v5;
  return result;
}

uint64_t *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint64(uint64_t *result, unint64_t a2)
{
  v3 = result;
  v4 = result[8];
  if (result[9] - v4 <= 23)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(result + 5);
    v4 = v3[8];
  }

  v3[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v5 = 278;
  }

  else
  {
    v5 = 406;
  }

  if (a2 >> 31)
  {
    v6 = 470;
  }

  else
  {
    v6 = 502;
  }

  if (!HIDWORD(a2))
  {
    v5 = v6;
  }

  *(v4 + 22) = v5;
  return result;
}

uint64_t *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int(uint64_t *result, int a2)
{
  v3 = result;
  v4 = result[8];
  if (result[9] - v4 <= 23)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(result + 5);
    v4 = v3[8];
  }

  v3[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if (a2 < 0)
  {
    v5 = 182;
  }

  else
  {
    v5 = 502;
  }

  *(v4 + 22) = v5;
  return result;
}

uint64_t *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint(uint64_t *result, unsigned int a2)
{
  v3 = result;
  v4 = result[8];
  if (result[9] - v4 <= 23)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(result + 5);
    v4 = v3[8];
  }

  v3[8] = v4 + 24;
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  *v4 = a2;
  if ((a2 & 0x80000000) != 0)
  {
    v5 = 470;
  }

  else
  {
    v5 = 502;
  }

  *(v4 + 22) = v5;
  return result;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1[4] - v1 + ((a1[4] - v1 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v1 = 0;
    v2 = a1[5];
  }

  v3 = a1[3] - v1 + 24;
  if (v2 <= v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = v2;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v4);
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) - 24 * a2);
  *(a1 + 64) = v3;
  result = *(a1 + 24);
  *(v3 - 1) = 4;
  if (a2)
  {
    v5 = 24 * a2;
    v6 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(result, v5);
    *(v3 - 2) = v6;
    result = memcpy(v6, v3, v5);
  }

  else
  {
    *(v3 - 2) = 0;
  }

  *(v3 - 6) = a2;
  *(v3 - 5) = a2;
  return result;
}

uint64_t rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *a1;
  if (!v4 || (v5 = v4[1], v6 = v5 + v3, v5 + v3 > *v4))
  {
    if (*(a1 + 8) <= v3)
    {
      v7 = (a2 + 7) & 0xFFFFFFFFFFFFFFF8;
    }

    else
    {
      v7 = *(a1 + 8);
    }

    if (!*(a1 + 24))
    {
      operator new();
    }

    if (v7 == -24)
    {
      return 0;
    }

    v4 = malloc_type_malloc(v7 + 24, 0xCD17B134uLL);
    if (!v4)
    {
      return 0;
    }

    v5 = 0;
    *v4 = v7;
    v4[1] = 0;
    v4[2] = *a1;
    *a1 = v4;
    v6 = v3;
  }

  v8 = v4 + v5 + 24;
  v4[1] = v6;
  return v8;
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(uint64_t a1, unsigned int a2)
{
  v3 = (*(a1 + 64) - 48 * a2);
  *(a1 + 64) = v3;
  result = *(a1 + 24);
  *(v3 - 1) = 3;
  if (a2)
  {
    v5 = 48 * a2;
    v6 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(result, v5);
    *(v3 - 2) = v6;
    result = memcpy(v6, v3, v5);
  }

  else
  {
    *(v3 - 2) = 0;
  }

  *(v3 - 6) = a2;
  *(v3 - 5) = a2;
  return result;
}

char *rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(uint64_t *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v2 = a1[4] - v1 + ((a1[4] - v1 + 1) >> 1);
  }

  else
  {
    if (!*a1)
    {
      operator new();
    }

    v1 = 0;
    v2 = a1[5];
  }

  v3 = a1[3] - v1;
  if (v2 <= v3 + 1)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v2;
  }

  return rapidjson::internal::Stack<rapidjson::CrtAllocator>::Resize(a1, v4);
}

uint64_t rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseHex4<rapidjson::GenericStringStream<rapidjson::UTF8<char>>>(uint64_t result, void *a2, uint64_t a3)
{
  v3 = result;
  LODWORD(result) = 0;
  v4 = *a2 + 1;
  v5 = 4;
  while (1)
  {
    v6 = *(v4 - 1);
    if ((v6 - 48) >= 0xA)
    {
      break;
    }

    v7 = -48;
LABEL_8:
    result = (v6 + 16 * result + v7);
    *a2 = v4++;
    if (!--v5)
    {
      return result;
    }
  }

  if (*(v4 - 1) - 65 < 6)
  {
    v7 = -55;
    goto LABEL_8;
  }

  if (*(v4 - 1) - 97 < 6)
  {
    v7 = -87;
    goto LABEL_8;
  }

  result = 0;
  *(v3 + 48) = 8;
  *(v3 + 56) = a3;
  return result;
}

char *rapidjson::UTF8<char>::Encode<rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::StackStream<char>>(char *result, unsigned int a2)
{
  v3 = result;
  if (a2 <= 0x7F)
  {
    v4 = *result;
    v5 = *(*result + 24);
    if ((*(*result + 32) - v5) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result);
      v5 = *(v4 + 24);
    }

    *(v4 + 24) = v5 + 1;
    *v5 = a2;
    v6 = v3 + 8;
    goto LABEL_27;
  }

  if (a2 <= 0x7FF)
  {
    v7 = (a2 >> 6) | 0xFFFFFFC0;
    v8 = *result;
    v9 = *(*result + 24);
    if ((*(*result + 32) - v9) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result);
      v9 = *(v8 + 24);
    }

    *(v8 + 24) = v9 + 1;
    *v9 = v7;
    v6 = v3 + 8;
    ++*(v3 + 2);
LABEL_24:
    v27 = *v3;
    v28 = v27[3];
    if (v27[4] - v28 <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v27);
      v28 = v27[3];
    }

    v27[3] = (v28 + 1);
    *v28 = a2 & 0x3F | 0x80;
    goto LABEL_27;
  }

  v10 = *result;
  v11 = *(*result + 24);
  v12 = *(*result + 32) - v11;
  if (HIWORD(a2))
  {
    v20 = (a2 >> 18) | 0xFFFFFFF0;
    if (v12 <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result);
      v11 = *(v10 + 24);
    }

    *(v10 + 24) = v11 + 1;
    *v11 = v20;
    v6 = v3 + 8;
    ++*(v3 + 2);
    v21 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
    v22 = *v3;
    v23 = *(*v3 + 24);
    if ((*(*v3 + 32) - v23) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v3);
      v21 = (a2 >> 12) & 0x3F | 0xFFFFFF80;
      v23 = v22[3];
    }

    v22[3] = (v23 + 1);
    *v23 = v21;
    ++*(v3 + 2);
    v24 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v25 = *v3;
    v26 = *(*v3 + 24);
    if ((*(*v3 + 32) - v26) <= 0)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v3);
      v24 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
      v26 = v25[3];
    }

    v25[3] = (v26 + 1);
    *v26 = v24;
    ++*(v3 + 2);
    goto LABEL_24;
  }

  v13 = (a2 >> 12) | 0xFFFFFFE0;
  if (v12 <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*result);
    v11 = *(v10 + 24);
  }

  *(v10 + 24) = v11 + 1;
  *v11 = v13;
  v6 = v3 + 8;
  ++*(v3 + 2);
  v14 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
  v15 = *v3;
  v16 = *(*v3 + 24);
  if ((*(*v3 + 32) - v16) <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(*v3);
    v14 = (a2 >> 6) & 0x3F | 0xFFFFFF80;
    v16 = v15[3];
  }

  v15[3] = (v16 + 1);
  *v16 = v14;
  ++*(v3 + 2);
  v17 = a2 & 0x3F | 0x80;
  v18 = *v3;
  v19 = v18[3];
  if (v18[4] - v19 <= 0)
  {
    result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<char>(v18);
    v17 = a2 & 0x3F | 0x80;
    v19 = v18[3];
  }

  v18[3] = (v19 + 1);
  *v19 = v17;
LABEL_27:
  ++*v6;
  return result;
}

void *rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::String(void *a1, const void *a2, size_t __n)
{
  v3 = __n;
  v6 = a1[8];
  if ((a1[9] - v6) <= 23)
  {
    rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a1 + 5);
    v6 = a1[8];
  }

  a1[8] = v6 + 3;
  v7 = a1[3];
  *v6 = 0;
  v6[1] = 0;
  v6[2] = 0;
  if (v3 > 0x15)
  {
    *(v6 + 11) = 3077;
    *v6 = v3;
    v8 = rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>::Malloc(v7, v3 + 1);
    v6[1] = v8;
    v6 = v8;
  }

  else
  {
    *(v6 + 11) = 7173;
    *(v6 + 21) = 21 - v3;
  }

  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = &rapidjson::GenericStringRef<char>::emptyString;
  }

  result = memcpy(v6, v9, v3);
  *(v6 + v3) = 0;
  return result;
}

void uaap_orchestration::grammar::UaapGrammar::fromFile(uint64_t a1)
{
  v1 = MEMORY[0x28223BE20](a1);
  v2 = v1;
  v14 = *MEMORY[0x277D85DE8];
  if (*(v1 + 23) < 0)
  {
    v1 = *v1;
  }

  v3 = fopen(v1, "r");
  if (v3)
  {
    v10[0] = v3;
    v10[1] = &v13;
    v10[2] = 0x10000;
    v10[3] = 0;
    v10[5] = 0;
    v10[6] = 0;
    v10[4] = &v13;
    v11 = 0;
    rapidjson::FileReadStream::Read(v10);
    rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::GenericDocument(&v12);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::string::basic_string[abi:ne200100]<0>(&v12, "Could not open grammar file for reading: ");
  v5 = *(v2 + 23);
  if (v5 >= 0)
  {
    v6 = v2;
  }

  else
  {
    v6 = *v2;
  }

  if (v5 >= 0)
  {
    v7 = *(v2 + 23);
  }

  else
  {
    v7 = *(v2 + 8);
  }

  v8 = std::string::append(&v12, v6, v7);
  v9 = *&v8->__r_.__value_.__l.__data_;
  v13.__r_.__value_.__r.__words[2] = v8->__r_.__value_.__r.__words[2];
  *&v13.__r_.__value_.__l.__data_ = v9;
  v8->__r_.__value_.__l.__size_ = 0;
  v8->__r_.__value_.__r.__words[2] = 0;
  v8->__r_.__value_.__r.__words[0] = 0;
  std::runtime_error::runtime_error(exception, &v13);
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

void sub_22294BC0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *__p, uint64_t a27, int a28, __int16 a29, char a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, int a41, __int16 a42, char a43, char a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a31 < 0)
  {
    operator delete(__p);
  }

  if (a17 < 0)
  {
    operator delete(a12);
    if ((v62 & 1) == 0)
    {
LABEL_8:
      rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::~GenericDocument(&a39);
      _Unwind_Resume(a1);
    }
  }

  else if (!v62)
  {
    goto LABEL_8;
  }

  __cxa_free_exception(v61);
  goto LABEL_8;
}

size_t rapidjson::FileReadStream::Read(size_t this)
{
  v1 = this;
  v2 = *(this + 32);
  if (v2 >= *(this + 24))
  {
    if ((*(this + 56) & 1) == 0)
    {
      *(this + 48) += *(this + 40);
      this = fread(*(this + 8), 1uLL, *(this + 16), *this);
      v3 = *(v1 + 8);
      v4 = *(v1 + 16);
      *(v1 + 24) = v3 + this - 1;
      *(v1 + 32) = v3;
      *(v1 + 40) = this;
      if (this < v4)
      {
        *(v3 + this) = 0;
        ++*(v1 + 24);
        *(v1 + 56) = 1;
      }
    }
  }

  else
  {
    *(this + 32) = v2 + 1;
  }

  return this;
}

uint64_t *rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::FileReadStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(uint64_t *result, rapidjson::FileReadStream *a2, uint64_t *a3)
{
  v5 = result;
  v6 = *(a2 + 4);
  v7 = *v6;
  if (v7 > 0x6D)
  {
    if (v7 != 123)
    {
      if (v7 == 116)
      {
        result = rapidjson::FileReadStream::Read(a2);
        v8 = *(a2 + 4);
        if (*v8 == 114)
        {
          result = rapidjson::FileReadStream::Read(a2);
          v8 = *(a2 + 4);
          if (*v8 == 117)
          {
            result = rapidjson::FileReadStream::Read(a2);
            v8 = *(a2 + 4);
            if (*v8 == 101)
            {
              result = rapidjson::FileReadStream::Read(a2);
              v9 = a3[8];
              if (a3[9] - v9 <= 23)
              {
                result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
                v9 = a3[8];
              }

              a3[8] = v9 + 24;
              *(v9 + 8) = 0;
              *(v9 + 16) = 0;
              *v9 = 0;
              v10 = 10;
              goto LABEL_145;
            }
          }
        }
      }

      else
      {
        if (v7 != 110)
        {
          goto LABEL_35;
        }

        result = rapidjson::FileReadStream::Read(a2);
        v8 = *(a2 + 4);
        if (*v8 == 117)
        {
          result = rapidjson::FileReadStream::Read(a2);
          v8 = *(a2 + 4);
          if (*v8 == 108)
          {
            result = rapidjson::FileReadStream::Read(a2);
            v8 = *(a2 + 4);
            if (*v8 == 108)
            {
              result = rapidjson::FileReadStream::Read(a2);
              v11 = a3[8];
              if (a3[9] - v11 <= 23)
              {
                result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
                v11 = a3[8];
              }

              a3[8] = (v11 + 3);
              *v11 = 0;
              v11[1] = 0;
              v11[2] = 0;
              return result;
            }
          }
        }
      }

LABEL_148:
      v49 = &v8[*(a2 + 6) - *(a2 + 1)];
      v50 = 3;
LABEL_149:
      *(v5 + 12) = v50;
      v5[7] = v49;
      return result;
    }

    result = rapidjson::FileReadStream::Read(a2);
    v12 = a3[8];
    if (a3[9] - v12 <= 23)
    {
      result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
      v12 = a3[8];
    }

    a3[8] = v12 + 24;
    *(v12 + 8) = 0;
    *(v12 + 16) = 0;
    *v12 = 0;
    *(v12 + 22) = 3;
    while (1)
    {
      v13 = *(a2 + 4);
      v14 = *v13;
      if (v14 > 0x20 || ((1 << v14) & 0x100002600) == 0)
      {
        break;
      }

      result = rapidjson::FileReadStream::Read(a2);
    }

    if (*(v5 + 12))
    {
      return result;
    }

    if (v14 != 125)
    {
      if (v14 != 34)
      {
LABEL_186:
        v49 = &v13[*(a2 + 6) - *(a2 + 1)];
        v50 = 4;
        goto LABEL_149;
      }

      v51 = 0;
      while (1)
      {
        result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::FileReadStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(v5, a2, a3);
        if (*(v5 + 12))
        {
          return result;
        }

        while (1)
        {
          v52 = *(a2 + 4);
          v53 = *v52;
          if (v53 > 0x20 || ((1 << v53) & 0x100002600) == 0)
          {
            break;
          }

          result = rapidjson::FileReadStream::Read(a2);
        }

        if (*(v5 + 12))
        {
          return result;
        }

        if (v53 != 58)
        {
          v49 = &v52[*(a2 + 6) - *(a2 + 1)];
          v50 = 5;
          goto LABEL_149;
        }

        do
        {
          result = rapidjson::FileReadStream::Read(a2);
          v55 = **(a2 + 4);
          v56 = v55 > 0x20;
          v57 = (1 << v55) & 0x100002600;
        }

        while (!v56 && v57 != 0);
        if (*(v5 + 12))
        {
          return result;
        }

        result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::FileReadStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(v5, a2, a3);
        if (*(v5 + 12))
        {
          return result;
        }

        while (1)
        {
          v59 = *(a2 + 4);
          v60 = *v59;
          if (v60 > 0x20 || ((1 << v60) & 0x100002600) == 0)
          {
            break;
          }

          result = rapidjson::FileReadStream::Read(a2);
        }

        if (*(v5 + 12))
        {
          return result;
        }

        ++v51;
        if (v60 != 44)
        {
          if (v60 != 125)
          {
            v49 = &v59[*(a2 + 6) - *(a2 + 1)];
            v50 = 6;
            goto LABEL_149;
          }

          rapidjson::FileReadStream::Read(a2);

          return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndObject(a3, v51);
        }

        do
        {
          result = rapidjson::FileReadStream::Read(a2);
          v13 = *(a2 + 4);
          v62 = *v13;
        }

        while (v62 <= 0x20 && ((1 << v62) & 0x100002600) != 0);
        if (*(v5 + 12))
        {
          return result;
        }

        if (v62 != 34)
        {
          goto LABEL_186;
        }
      }
    }

    result = rapidjson::FileReadStream::Read(a2);
    v16 = a3[8];
    v17 = 3;
LABEL_65:
    *(v16 - 2) = v17;
    *(v16 - 24) = 0;
    *(v16 - 16) = 0;
    return result;
  }

  switch(v7)
  {
    case '""':

      return rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseString<0u,rapidjson::FileReadStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(result, a2, a3);
    case '[':
      result = rapidjson::FileReadStream::Read(a2);
      v28 = a3[8];
      if (a3[9] - v28 <= 23)
      {
        result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
        v28 = a3[8];
      }

      a3[8] = v28 + 24;
      *(v28 + 8) = 0;
      *(v28 + 16) = 0;
      *v28 = 0;
      *(v28 + 22) = 4;
      while (1)
      {
        v29 = **(a2 + 4);
        if (v29 > 0x20 || ((1 << v29) & 0x100002600) == 0)
        {
          break;
        }

        result = rapidjson::FileReadStream::Read(a2);
      }

      if (*(v5 + 12))
      {
        return result;
      }

      if (v29 != 93)
      {
        v64 = 0;
        while (1)
        {
          result = rapidjson::GenericReader<rapidjson::UTF8<char>,rapidjson::UTF8<char>,rapidjson::CrtAllocator>::ParseValue<0u,rapidjson::FileReadStream,rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>>(v5, a2, a3);
          if (*(v5 + 12))
          {
            return result;
          }

          while (1)
          {
            v65 = *(a2 + 4);
            v66 = *v65;
            if (v66 > 0x20 || ((1 << v66) & 0x100002600) == 0)
            {
              break;
            }

            result = rapidjson::FileReadStream::Read(a2);
          }

          if (*(v5 + 12))
          {
            return result;
          }

          ++v64;
          if (v66 != 44)
          {
            if (v66 != 93)
            {
              v49 = &v65[*(a2 + 6) - *(a2 + 1)];
              v50 = 7;
              goto LABEL_149;
            }

            rapidjson::FileReadStream::Read(a2);

            return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::EndArray(a3, v64);
          }

          do
          {
            result = rapidjson::FileReadStream::Read(a2);
            v68 = **(a2 + 4);
            v56 = v68 > 0x20;
            v69 = (1 << v68) & 0x100002600;
          }

          while (!v56 && v69 != 0);
          if (*(v5 + 12))
          {
            return result;
          }
        }
      }

      result = rapidjson::FileReadStream::Read(a2);
      v16 = a3[8];
      v17 = 4;
      goto LABEL_65;
    case 'f':
      result = rapidjson::FileReadStream::Read(a2);
      v8 = *(a2 + 4);
      if (*v8 == 97)
      {
        result = rapidjson::FileReadStream::Read(a2);
        v8 = *(a2 + 4);
        if (*v8 == 108)
        {
          result = rapidjson::FileReadStream::Read(a2);
          v8 = *(a2 + 4);
          if (*v8 == 115)
          {
            result = rapidjson::FileReadStream::Read(a2);
            v8 = *(a2 + 4);
            if (*v8 == 101)
            {
              result = rapidjson::FileReadStream::Read(a2);
              v9 = a3[8];
              if (a3[9] - v9 <= 23)
              {
                result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
                v9 = a3[8];
              }

              a3[8] = v9 + 24;
              *(v9 + 8) = 0;
              *(v9 + 16) = 0;
              *v9 = 0;
              v10 = 9;
LABEL_145:
              *(v9 + 22) = v10;
              return result;
            }
          }
        }
      }

      goto LABEL_148;
  }

LABEL_35:
  v18 = *(a2 + 6);
  v19 = *(a2 + 1);
  if (v7 == 45)
  {
    result = rapidjson::FileReadStream::Read(a2);
    v20 = *(a2 + 4);
    v21 = *v20;
  }

  else
  {
    v21 = *v6;
    v20 = *(a2 + 4);
  }

  v22 = v21 - 48;
  v72 = v18;
  v73 = v5;
  v71 = v19;
  if (v21 == 48)
  {
    result = rapidjson::FileReadStream::Read(a2);
    v31 = 0;
    v26 = 0;
    v32 = 0;
    v74 = 0;
    v23 = **(a2 + 4);
    v25 = 0.0;
    goto LABEL_92;
  }

  if ((v21 - 49) > 8)
  {
    v35 = &v20[*(a2 + 6) - *(a2 + 1)];
    v44 = 3;
    goto LABEL_138;
  }

  result = rapidjson::FileReadStream::Read(a2);
  v23 = **(a2 + 4);
  v24 = v23 - 48;
  v25 = 0.0;
  if (v7 != 45)
  {
    if (v24 <= 9)
    {
      v26 = 0;
      v27 = 429496729;
      while (1)
      {
        if (v22 > 0x19999998)
        {
          if (v22 != 429496729)
          {
LABEL_147:
            v27 = v22;
            goto LABEL_73;
          }

          if (v23 > 0x35)
          {
            goto LABEL_73;
          }
        }

        result = rapidjson::FileReadStream::Read(a2);
        v22 = v23 + 10 * v22 - 48;
        ++v26;
        v23 = **(a2 + 4);
        if (v23 - 48 >= 0xA)
        {
LABEL_80:
          v31 = 0;
          goto LABEL_81;
        }
      }
    }

    goto LABEL_213;
  }

  if (v24 > 9)
  {
LABEL_213:
    v31 = 0;
    v26 = 0;
LABEL_81:
    v32 = 0;
    v74 = 0;
    goto LABEL_92;
  }

  v26 = 0;
  v27 = 214748364;
  while (1)
  {
    if (v22 > 0xCCCCCCB)
    {
      if (v22 != 214748364)
      {
        goto LABEL_147;
      }

      if (v23 > 0x38)
      {
        break;
      }
    }

    result = rapidjson::FileReadStream::Read(a2);
    v22 = v23 + 10 * v22 - 48;
    ++v26;
    v23 = **(a2 + 4);
    if (v23 - 48 >= 0xA)
    {
      goto LABEL_80;
    }
  }

  v23 = 57;
LABEL_73:
  v31 = v27;
  if (v7 == 45)
  {
    while (v31 <= 0xCCCCCCCCCCCCCCBLL || v31 == 0xCCCCCCCCCCCCCCCLL && v23 <= 0x38)
    {
      result = rapidjson::FileReadStream::Read(a2);
      v31 = (v23 & 0xF) + 10 * v31;
      ++v26;
      v23 = **(a2 + 4);
      if (v23 - 48 >= 0xA)
      {
        goto LABEL_90;
      }
    }
  }

  else
  {
    while (v31 <= 0x1999999999999998 || v31 == 0x1999999999999999 && v23 <= 0x35)
    {
      result = rapidjson::FileReadStream::Read(a2);
      v31 = (v23 & 0xF) + 10 * v31;
      ++v26;
      v23 = **(a2 + 4);
      if (v23 - 48 >= 0xA)
      {
LABEL_90:
        v32 = 0;
        v25 = 0.0;
        goto LABEL_91;
      }
    }
  }

  v25 = v31;
  do
  {
    result = rapidjson::FileReadStream::Read(a2);
    v25 = (v23 - 48) + v25 * 10.0;
    v23 = **(a2 + 4);
  }

  while (v23 - 48 < 0xA);
  v32 = 1;
LABEL_91:
  v74 = 1;
  v22 = v27;
LABEL_92:
  if (v23 == 46)
  {
    result = rapidjson::FileReadStream::Read(a2);
    v33 = *(a2 + 4);
    v23 = *v33;
    if (v23 - 58 <= 0xFFFFFFF5)
    {
      v35 = &v33[*(a2 + 6) - *(a2 + 1)];
      v44 = 14;
      goto LABEL_125;
    }

    v34 = 0;
    if ((v32 & 1) == 0)
    {
      if (!v74)
      {
        v31 = v22;
      }

      do
      {
        if (v23 > 0x39 || v31 >> 53)
        {
          break;
        }

        result = rapidjson::FileReadStream::Read(a2);
        v31 = v23 - 48 + 10 * v31;
        --v34;
        if (v31)
        {
          ++v26;
        }

        v23 = **(a2 + 4);
      }

      while (**(a2 + 4) > 47);
      v25 = v31;
    }

    if (v23 - 48 <= 9)
    {
      do
      {
        result = rapidjson::FileReadStream::Read(a2);
        if (v26 <= 16)
        {
          v25 = (v23 - 48) + v25 * 10.0;
          --v34;
          if (v25 > 0.0)
          {
            ++v26;
          }
        }

        v23 = **(a2 + 4);
      }

      while (v23 - 48 < 0xA);
    }

    v32 = 1;
  }

  else
  {
    v34 = 0;
  }

  v35 = &v6[v72 - v71];
  if (v23 == 101 || v23 == 69)
  {
    result = rapidjson::FileReadStream::Read(a2);
    v36 = 0;
    v37 = v22;
    if (v74)
    {
      v37 = v31;
    }

    if (!v32)
    {
      v25 = v37;
    }

    v38 = *(a2 + 4);
    v39 = *v38;
    if (v39 != 43)
    {
      if (v39 != 45)
      {
        goto LABEL_116;
      }

      v36 = 1;
    }

    result = rapidjson::FileReadStream::Read(a2);
    v38 = *(a2 + 4);
    v39 = *v38;
LABEL_116:
    v40 = v39 - 48;
    if ((v39 - 48) <= 9)
    {
      result = rapidjson::FileReadStream::Read(a2);
      if (v36)
      {
        v41 = **(a2 + 4);
        if ((v41 - 48) <= 9)
        {
          while (1)
          {
            result = rapidjson::FileReadStream::Read(a2);
            v40 = v41 + 10 * v40 - 48;
            v41 = **(a2 + 4);
            v42 = v41 - 48;
            if (v40 > (v34 + 2147483639) / 10)
            {
              break;
            }

            if (v42 >= 0xA)
            {
              goto LABEL_127;
            }
          }

          if (v42 <= 9)
          {
            do
            {
              result = rapidjson::FileReadStream::Read(a2);
            }

            while (**(a2 + 4) - 48 < 0xA);
          }
        }
      }

      else
      {
        while (1)
        {
          v43 = **(a2 + 4);
          if ((v43 - 48) > 9)
          {
            break;
          }

          result = rapidjson::FileReadStream::Read(a2);
          v40 = v43 + 10 * v40 - 48;
          if (v40 > 308 - v34)
          {
            v44 = 13;
            goto LABEL_125;
          }
        }
      }

LABEL_127:
      if (v36)
      {
        v45 = -v40;
      }

      else
      {
        v45 = v40;
      }

LABEL_130:
      v46 = v45 + v34;
      v5 = v73;
      if (v46 > -309)
      {
        if (v46 < 0)
        {
          v47 = v25 / rapidjson::internal::Pow10(int)::e[-v46];
        }

        else
        {
          v47 = v25 * rapidjson::internal::Pow10(int)::e[v46];
        }
      }

      else
      {
        v47 = 0.0;
        if (v46 < 0xFFFFFD98)
        {
          goto LABEL_139;
        }

        v47 = v25 / 1.0e308 / rapidjson::internal::Pow10(int)::e[-308 - v46];
      }

      if (v47 > 1.79769313e308)
      {
        v44 = 13;
        goto LABEL_138;
      }

LABEL_139:
      if (v7 == 45)
      {
        v48 = -v47;
      }

      else
      {
        v48 = v47;
      }

      v9 = a3[8];
      if (a3[9] - v9 <= 23)
      {
        result = rapidjson::internal::Stack<rapidjson::CrtAllocator>::Expand<rapidjson::GenericValue<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>>>(a3 + 5);
        v9 = a3[8];
      }

      a3[8] = v9 + 24;
      *(v9 + 8) = 0;
      *(v9 + 16) = 0;
      *v9 = v48;
      v10 = 534;
      goto LABEL_145;
    }

    v35 = &v38[*(a2 + 6) - *(a2 + 1)];
    v44 = 15;
LABEL_125:
    v5 = v73;
LABEL_138:
    *(v5 + 12) = v44;
    v5[7] = v35;
    return result;
  }

  if (v32)
  {
    v45 = 0;
    goto LABEL_130;
  }

  if (v74)
  {
    if (v7 == 45)
    {

      return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int64(a3, -v31);
    }

    else
    {

      return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint64(a3, v31);
    }
  }

  else if (v7 == 45)
  {

    return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Int(a3, -v22);
  }

  else
  {

    return rapidjson::GenericDocument<rapidjson::UTF8<char>,rapidjson::MemoryPoolAllocator<rapidjson::CrtAllocator>,rapidjson::CrtAllocator>::Uint(a3, v22);
  }
}