void sub_2579EE53C(_Unwind_Exception *exception_object)
{
  v1[19] = 0;
  v3 = v1[62];
  if (v3)
  {
    v1[63] = v3;
    operator delete(v3);
  }

  v4 = v1[65];
  if (v4)
  {
    v1[66] = v4;
    operator delete(v4);
  }

  v5 = v1[19];
  if (v5)
  {
    operator delete(v5);
  }

  v6 = v1[68];
  if (v6)
  {
    operator delete(v6);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BOOL>::reserve(char **a1, unint64_t a2)
{
  if (a2 > a1[2] << 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v2 = 0;
      v3 = 0uLL;
      std::vector<BOOL>::__vallocate[abi:ne200100](&v2, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }
}

void sub_2579EE898(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<BuiltInInfo>::reserve(void *a1, unint64_t a2)
{
  if (a2 > (a1[2] - *a1) >> 3)
  {
    if (!(a2 >> 61))
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<BuiltInInfo>>(a1, a2);
    }

    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }
}

void std::vector<BOOL>::push_back(uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 == v5 << 6)
  {
    if ((v4 + 1) < 0)
    {
      std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
    }

    v6 = v5 << 7;
    if (v6 <= (v4 & 0x3FFFFFFFFFFFFFC0) + 64)
    {
      v6 = (v4 & 0x3FFFFFFFFFFFFFC0) + 64;
    }

    if (v4 <= 0x3FFFFFFFFFFFFFFELL)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x7FFFFFFFFFFFFFFFLL;
    }

    std::vector<BOOL>::reserve(a1, v7);
    v4 = *(a1 + 8);
  }

  *(a1 + 8) = v4 + 1;
  v8 = *a1;
  v9 = v4 >> 6;
  v10 = 1 << v4;
  if (*a2 == 1)
  {
    v11 = *&v8[8 * v9] | v10;
  }

  else
  {
    v11 = *&v8[8 * v9] & ~v10;
  }

  *&v8[8 * v9] = v11;
}

uint64_t std::vector<PostVertexDumpOutput>::push_back[abi:ne200100](unint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<PostVertexDumpOutput>::__emplace_back_slow_path<PostVertexDumpOutput>(a1, a2);
  }

  else
  {
    *v3 = *a2;
    v4 = *(a2 + 16);
    *(v3 + 32) = *(a2 + 32);
    *(v3 + 16) = v4;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 16) = 0;
    v5 = *(a2 + 40);
    *(v3 + 56) = *(a2 + 56);
    *(v3 + 40) = v5;
    v6 = *(a2 + 64);
    *(v3 + 80) = *(a2 + 80);
    *(v3 + 64) = v6;
    *(a2 + 72) = 0;
    *(a2 + 80) = 0;
    *(a2 + 64) = 0;
    *(v3 + 88) = *(a2 + 88);
    result = v3 + 96;
  }

  a1[1] = result;
  return result;
}

void PostVertexDumpOutput::~PostVertexDumpOutput(void **this)
{
  if (*(this + 87) < 0)
  {
    operator delete(this[8]);
  }

  if (*(this + 39) < 0)
  {
    operator delete(this[2]);
  }
}

void iterateAllContainedValues(uint64_t a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, const void **a5, uint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  v102 = *MEMORY[0x277D85DE8];
  std::string::basic_string[abi:ne200100]<0>(&v100, &unk_257A6F51A);
  std::string::basic_string[abi:ne200100]<0>(&v99, &unk_257A6F51A);
  v79 = a2;
  v82 = a6;
  if (a4)
  {
    v17 = *(a4 + 8);
    if (v17)
    {
      v18 = 0;
      v85 = 0;
      v87 = 0;
      v83 = 0;
      v19 = -v17;
      v20 = a4;
      while (1)
      {
        v21 = *(v20 - 8 * *(a4 + 8));
        if (v21 && !*v21)
        {
          String = llvm::MDString::getString(v21);
          v101.__r_.__value_.__r.__words[0] = String;
          v101.__r_.__value_.__l.__size_ = v23;
          if (v23 != 17)
          {
            if (v23 == 12 && *String == 0x5F6772612E726961 && *(String + 8) == 1701667182)
            {
              v95.__r_.__value_.__r.__words[0] = llvm::MDString::getString(*(v20 - 8 * *(a4 + 8) + 8));
              v95.__r_.__value_.__l.__size_ = v25;
              llvm::StringRef::str(&v95.__r_.__value_.__l.__data_, &v97);
              if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v99.__r_.__value_.__l.__data_);
              }

              v99 = v97;
              goto LABEL_28;
            }

LABEL_23:
            if (!v18)
            {
              llvm::StringRef::str(&v101.__r_.__value_.__l.__data_, &v97);
              if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v100.__r_.__value_.__l.__data_);
              }

              v100 = v97;
            }

            goto LABEL_28;
          }

          if (*String != 0x5F6772612E726961 || *(String + 8) != 0x6D616E5F65707974 || *(String + 16) != 101)
          {
            goto LABEL_23;
          }

          v28 = a7;
          v29 = a8;
          v30 = llvm::MDString::getString(*(v20 - 8 * *(a4 + 8) + 8));
          v31 = strlen(v30);
          v32 = dataTypeFromString(v30, v31);
          v33 = strlen(v30);
          v34 = pixelFormatAndALUTypeFromString(v30, v33);
          v83 = HIDWORD(v34);
          v85 = v34;
          v87 = v32;
          a8 = v29;
          a7 = v28;
        }

LABEL_28:
        v20 += 8;
        if (v19 == --v18)
        {
          goto LABEL_31;
        }
      }
    }
  }

  v83 = 0;
  v85 = 0;
  v87 = 0;
LABEL_31:
  v35 = *(a5 + 23);
  if (v35 < 0)
  {
    if (a5[1])
    {
      goto LABEL_33;
    }

LABEL_46:
    std::string::basic_string[abi:ne200100]<0>(&v97, &unk_257A6F51A);
    goto LABEL_47;
  }

  if (!*(a5 + 23))
  {
    goto LABEL_46;
  }

LABEL_33:
  if (v35 >= 0)
  {
    v36 = *(a5 + 23);
  }

  else
  {
    v36 = a5[1];
  }

  std::string::basic_string[abi:ne200100](&v97, v36 + 1);
  v37 = a7;
  v38 = a8;
  if ((v97.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v39 = &v97;
  }

  else
  {
    v39 = v97.__r_.__value_.__r.__words[0];
  }

  if (v36)
  {
    if (*(a5 + 23) >= 0)
    {
      v40 = a5;
    }

    else
    {
      v40 = *a5;
    }

    memmove(v39, v40, v36);
  }

  *(&v39->__r_.__value_.__l.__data_ + v36) = 32;
  a8 = v38;
  a7 = v37;
LABEL_47:
  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v41 = &v100;
  }

  else
  {
    v41 = v100.__r_.__value_.__r.__words[0];
  }

  if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v100.__r_.__value_.__l.__size_;
  }

  v43 = std::string::append(&v97, v41, size);
  v44 = v43->__r_.__value_.__r.__words[0];
  v101.__r_.__value_.__r.__words[0] = v43->__r_.__value_.__l.__size_;
  *(v101.__r_.__value_.__r.__words + 7) = *(&v43->__r_.__value_.__r.__words[1] + 7);
  v45 = HIBYTE(v43->__r_.__value_.__r.__words[2]);
  v43->__r_.__value_.__l.__size_ = 0;
  v43->__r_.__value_.__r.__words[2] = 0;
  v43->__r_.__value_.__r.__words[0] = 0;
  if (*(a5 + 23) < 0)
  {
    operator delete(*a5);
  }

  v46 = v101.__r_.__value_.__r.__words[0];
  *a5 = v44;
  a5[1] = v46;
  *(a5 + 15) = *(v101.__r_.__value_.__r.__words + 7);
  *(a5 + 23) = v45;
  if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v97.__r_.__value_.__l.__data_);
  }

  if (v82)
  {
    v47 = v82;
  }

  else
  {
    v47 = v87;
  }

  v48 = v85;
  if (a7)
  {
    v48 = a7;
  }

  v86 = v48;
  v88 = v47;
  v49 = v83;
  if (a8)
  {
    v49 = a8;
  }

  v84 = v49;
  std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a9, &v99.__r_.__value_.__l.__data_, &v97);
  v50 = (a9 + 23);
  if (*(a9 + 23) < 0)
  {
    operator delete(*a9);
  }

  *a9 = v97;
  v51 = *(v79 + 8);
  if (v51 == 7)
  {
    goto LABEL_166;
  }

  if (v51 == 16)
  {
    std::string::basic_string[abi:ne200100]<0>(&v101, &unk_257A6F51A);
    if (*(v79 + 24))
    {
      v95.__r_.__value_.__r.__words[0] = llvm::StructType::getName(v79);
      v95.__r_.__value_.__l.__size_ = v66;
      llvm::StringRef::str(&v95.__r_.__value_.__l.__data_, &v97);
      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      v101 = v97;
    }

    v67 = *v50;
    if (v67 < 0)
    {
      v67 = *(a9 + 8);
    }

    if (v67)
    {
      v68 = a9;
    }

    else
    {
      v68 = &v101;
    }

    if (v67)
    {
      v69 = (a9 + 23);
    }

    else
    {
      v69 = &v101.__r_.__value_.__r.__words[2] + 7;
    }

    if ((v68->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v70 = HIBYTE(v68->__r_.__value_.__r.__words[2]);
    }

    else
    {
      v70 = v68->__r_.__value_.__l.__size_;
    }

    v71 = &v95;
    std::string::basic_string[abi:ne200100](&v95, v70 + 1);
    if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v71 = v95.__r_.__value_.__r.__words[0];
    }

    if (v70)
    {
      if (*v69 >= 0)
      {
        v72 = v68;
      }

      else
      {
        v72 = v68->__r_.__value_.__r.__words[0];
      }

      memmove(v71, v72, v70);
    }

    *(&v71->__r_.__value_.__l.__data_ + v70) = 46;
    v73 = *(v79 + 12);
    v96[0] = 0;
    if (!v73)
    {
LABEL_151:
      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      if ((SHIBYTE(v101.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_166;
      }

      v78 = v101.__r_.__value_.__r.__words[0];
LABEL_165:
      operator delete(v78);
      goto LABEL_166;
    }

    v74 = 0;
    while (1)
    {
      v75 = *(*(v79 + 16) + 8 * v74);
      if (a1)
      {
        v98 = 257;
        Value = llvm::IRBuilderBase::CreateExtractValue(a1, a3, v96, 1, &v97);
        if (!a4)
        {
          goto LABEL_139;
        }
      }

      else
      {
        Value = 0;
        if (!a4)
        {
LABEL_139:
          v77 = 0;
          goto LABEL_140;
        }
      }

      v77 = *(a4 - 8 * *(a4 + 8) + 8 * v96[0]);
LABEL_140:
      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v92, *a5, a5[1]);
      }

      else
      {
        v92 = *a5;
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&v91, v95.__r_.__value_.__l.__data_, v95.__r_.__value_.__l.__size_);
      }

      else
      {
        v91 = v95;
      }

      iterateAllContainedValues(a1, v75, Value, v77, &v92.__r_.__value_.__l.__data_, v88, v86, v84, &v91, a10);
      if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v91.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      v74 = v96[0] + 1;
      v96[0] = v74;
      if (v74 >= v73)
      {
        goto LABEL_151;
      }
    }
  }

  if (v51 != 17)
  {
    if (*(a5 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v90, *a5, a5[1]);
    }

    else
    {
      v90 = *a5;
    }

    if (*v50 < 0)
    {
      std::string::__init_copy_ctor_external(&v89, *a9, *(a9 + 8));
    }

    else
    {
      *&v89.__r_.__value_.__l.__data_ = *a9;
      v89.__r_.__value_.__r.__words[2] = *(a9 + 16);
    }

    (*(a10 + 16))(a10, v79, a3, &v90, v88, v86, v84, &v89);
    if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v89.__r_.__value_.__l.__data_);
    }

    if ((SHIBYTE(v90.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_166;
    }

    v78 = v90.__r_.__value_.__r.__words[0];
    goto LABEL_165;
  }

  v52 = *(v79 + 32);
  if (v52)
  {
    v53 = 0;
    v80 = **(v79 + 16);
    do
    {
      if (a1)
      {
        LODWORD(v101.__r_.__value_.__l.__data_) = v53;
        v98 = 257;
        v54 = llvm::IRBuilderBase::CreateExtractValue(a1, a3, &v101, 1, &v97);
      }

      else
      {
        v54 = 0;
      }

      if (*(a9 + 23) >= 0)
      {
        v55 = *(a9 + 23);
      }

      else
      {
        v55 = *(a9 + 8);
      }

      std::string::basic_string[abi:ne200100](&v101, v55 + 1);
      if ((v101.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v56 = &v101;
      }

      else
      {
        v56 = v101.__r_.__value_.__r.__words[0];
      }

      if (v55)
      {
        if (*(a9 + 23) >= 0)
        {
          v57 = a9;
        }

        else
        {
          v57 = *a9;
        }

        memmove(v56, v57, v55);
      }

      *(&v56->__r_.__value_.__l.__data_ + v55) = 91;
      std::to_string(&v95, v53);
      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v58 = &v95;
      }

      else
      {
        v58 = v95.__r_.__value_.__r.__words[0];
      }

      if ((v95.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v59 = HIBYTE(v95.__r_.__value_.__r.__words[2]);
      }

      else
      {
        v59 = v95.__r_.__value_.__l.__size_;
      }

      v60 = std::string::append(&v101, v58, v59);
      v61 = *&v60->__r_.__value_.__l.__data_;
      v97.__r_.__value_.__r.__words[2] = v60->__r_.__value_.__r.__words[2];
      *&v97.__r_.__value_.__l.__data_ = v61;
      v60->__r_.__value_.__l.__size_ = 0;
      v60->__r_.__value_.__r.__words[2] = 0;
      v60->__r_.__value_.__r.__words[0] = 0;
      v62 = std::string::append(&v97, "]");
      v63 = v62->__r_.__value_.__r.__words[0];
      v64 = v62->__r_.__value_.__l.__size_;
      v96[0] = v62->__r_.__value_.__r.__words[2];
      *(v96 + 3) = *(&v62->__r_.__value_.__r.__words[2] + 3);
      v65 = SHIBYTE(v62->__r_.__value_.__r.__words[2]);
      v62->__r_.__value_.__l.__size_ = 0;
      v62->__r_.__value_.__r.__words[2] = 0;
      v62->__r_.__value_.__r.__words[0] = 0;
      if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v97.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v95.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v101.__r_.__value_.__l.__data_);
      }

      if (*(a5 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v94, *a5, a5[1]);
      }

      else
      {
        v94 = *a5;
      }

      if (v65 < 0)
      {
        std::string::__init_copy_ctor_external(&v93, v63, v64);
      }

      else
      {
        v93.__r_.__value_.__r.__words[0] = v63;
        v93.__r_.__value_.__l.__size_ = v64;
        LODWORD(v93.__r_.__value_.__r.__words[2]) = v96[0];
        *(&v93.__r_.__value_.__r.__words[2] + 3) = *(v96 + 3);
        *(&v93.__r_.__value_.__s + 23) = v65;
      }

      iterateAllContainedValues(a1, v80, v54, 0, &v94.__r_.__value_.__l.__data_, v88, v86, v84, &v93, a10);
      if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v93.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v94.__r_.__value_.__l.__data_);
        if (v65 < 0)
        {
LABEL_110:
          operator delete(v63);
        }
      }

      else if (v65 < 0)
      {
        goto LABEL_110;
      }

      ++v53;
    }

    while (v52 != v53);
  }

LABEL_166:
  if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v99.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v100.__r_.__value_.__l.__data_);
  }
}

void sub_2579EF3A4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55, uint64_t a56, void *a57, uint64_t a58, int a59, __int16 a60, char a61, char a62)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v62 - 169) < 0)
  {
    operator delete(*(v62 - 192));
  }

  if (*(v62 - 137) < 0)
  {
    operator delete(*(v62 - 160));
  }

  _Unwind_Resume(exception_object);
}

void ___ZN35MTLAddPostVertexDumpingToModulePass28addPostVertexDumpingToModuleEPN4llvm6ModuleEibRjRNSt3__16vectorI20PostVertexDumpOutputNS4_9allocatorIS6_EEEEb_block_invoke(uint64_t a1, llvm::Type *this, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  PrimitiveSizeInBits = llvm::Type::getPrimitiveSizeInBits(this);
  v24 = v16;
  v17 = llvm::TypeSize::operator unsigned long long() >> 3;
  if (v17 <= 4)
  {
    LODWORD(v17) = 4;
  }

  v18 = *(a1 + 32);
  v19 = *v18;
  *v18 += (v17 + 3) & 0xFFFFFFFC;
  v20 = *(a1 + 40);
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v22, *a4, *(a4 + 8));
  }

  else
  {
    v22 = *a4;
  }

  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v21, *a8, *(a8 + 8));
  }

  else
  {
    v21 = *a8;
  }

  PostVertexDumpOutput::PostVertexDumpOutput(&PrimitiveSizeInBits, this, a3, &v22, a5, a6, a7, &v21, v19);
  std::vector<PostVertexDumpOutput>::push_back[abi:ne200100](v20, &PrimitiveSizeInBits);
  if (v28 < 0)
  {
    operator delete(__p);
  }

  if (v26 < 0)
  {
    operator delete(v25);
  }

  if (SHIBYTE(v21.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v21.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v22.__r_.__value_.__l.__data_);
  }
}

void sub_2579EF67C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, char a25)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

llvm::Instruction *llvm::IRBuilderBase::CreateMul(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4, uint64_t a5, uint64_t a6)
{
  if (a2 && *(a2 + 16) <= 0x14u && a3 && *(a3 + 16) <= 0x14u)
  {
    result = (*(**(this + 9) + 88))(*(this + 9), a2, a3, a5, a6);
    if (result)
    {
      v9 = *(result + 16) >= 0x1Cu;
    }

    else
    {
      v9 = 0;
    }

    if (v9)
    {

      return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, result, a4);
    }
  }

  else
  {

    return llvm::IRBuilderBase::CreateInsertNUWNSWBinOp(this, 17, a2, a3, a4, a5, a6);
  }

  return result;
}

void MTLArgumentData::MTLArgumentData(MTLArgumentData *this)
{
  *this &= 0x1000u;
  *(this + 4) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0u;
  *(this + 52) = 0u;
  *(this + 68) = 0u;
  *(this + 84) = 0u;
  *(this + 6) = 0u;
  operator new();
}

void sub_2579EF90C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 136);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(v1 + 120);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_emplace<std::vector<MTLStructMemberInfo>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2868EC720;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C6B890);
}

void std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](void ***a1)
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
        v7 = (v4 - 72);
        std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v7);
        v6 = *(v4 - 14);
        if (v6)
        {
          std::__shared_weak_count::__release_shared[abi:ne200100](v6);
        }

        v4 -= 176;
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void std::__shared_weak_count::__release_shared[abi:ne200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void MTLArgumentData::~MTLArgumentData(MTLArgumentData *this)
{
  v5 = (this + 200);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(this + 19);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 17);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 15);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t PostVertexDumpOutput::PostVertexDumpOutput(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, int a9)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (*(a4 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 16), *a4, *(a4 + 1));
  }

  else
  {
    v14 = *a4;
    *(a1 + 32) = *(a4 + 2);
    *(a1 + 16) = v14;
  }

  *(a1 + 40) = a5;
  *(a1 + 48) = a6;
  *(a1 + 56) = a7;
  if (*(a8 + 23) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 64), *a8, *(a8 + 1));
  }

  else
  {
    v15 = *a8;
    *(a1 + 80) = *(a8 + 2);
    *(a1 + 64) = v15;
  }

  *(a1 + 88) = a9;
  return a1;
}

void sub_2579EFBF4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 39) < 0)
  {
    operator delete(*(v1 + 16));
  }

  _Unwind_Resume(exception_object);
}

char *std::operator+[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>@<X0>(const void **a1@<X0>, const void **a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = *(a1 + 23);
  }

  else
  {
    v5 = a1[1];
  }

  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  result = std::string::basic_string[abi:ne200100](a3, v6 + v5);
  if (result[23] >= 0)
  {
    v8 = result;
  }

  else
  {
    v8 = *result;
  }

  if (v5)
  {
    if (*(a1 + 23) >= 0)
    {
      v9 = a1;
    }

    else
    {
      v9 = *a1;
    }

    result = memmove(v8, v9, v5);
  }

  v10 = &v8[v5];
  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v11 = a2;
    }

    else
    {
      v11 = *a2;
    }

    result = memmove(v10, v11, v6);
  }

  v10[v6] = 0;
  return result;
}

void std::vector<BOOL>::__construct_at_end<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(void *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v6 = a1[1];
  v7 = v6 + a4;
  a1[1] = v6 + a4;
  if (!v6 || ((v7 - 1) ^ (v6 - 1)) >= 0x40)
  {
    if (v7 >= 0x41)
    {
      v8 = (v7 - 1) >> 6;
    }

    else
    {
      v8 = 0;
    }

    *(*a1 + 8 * v8) = 0;
  }

  v20 = v4;
  v21 = v5;
  v9 = *(a2 + 2);
  v10 = *a3;
  v11 = *(a3 + 2);
  v12 = *a1 + 8 * (v6 >> 6);
  v18 = *a2;
  v19 = v9;
  v16 = v10;
  v17 = v11;
  v14 = v12;
  v15 = v6 & 0x3F;
  std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(&v18, &v16, &v14, v13);
}

void std::__copy_move_unwrap_iters[abi:ne200100]<std::__copy_impl,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *a2;
  v7 = *(a2 + 2);
  v16 = *a1;
  v17 = v5;
  v14 = v6;
  v15 = v7;
  v8 = *(a3 + 2);
  v12 = *a3;
  v13 = v8;
  std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(&v16, &v14, &v12, &v18);
  v9 = v19;
  v10 = v20;
  v11 = v21;
  *a4 = v18;
  *(a4 + 8) = v9;
  *(a4 + 16) = v10;
  *(a4 + 24) = v11;
}

void std::__copy_impl::operator()[abi:ne200100]<std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>,std::__bit_iterator<std::vector<BOOL>,false,0ul>>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a3 + 8);
  if (*a1 != *a2 || v5 != *(a2 + 8))
  {
    do
    {
      v8 = *a3;
      v9 = 1 << v6;
      if ((*v4 >> v5))
      {
        v10 = *v8 | v9;
      }

      else
      {
        v10 = *v8 & ~v9;
      }

      *v8 = v10;
      if (v5 == 63)
      {
        v11 = 0;
        *a1 = ++v4;
      }

      else
      {
        v11 = v5 + 1;
      }

      *(a1 + 8) = v11;
      v12 = *(a3 + 8);
      if (v12 == 63)
      {
        v6 = 0;
        *a3 += 8;
        v4 = *a1;
      }

      else
      {
        v6 = v12 + 1;
      }

      *(a3 + 8) = v6;
      v5 = *(a1 + 8);
    }

    while (v4 != *a2 || v5 != *(a2 + 8));
  }

  *a4 = v4;
  *(a4 + 8) = v5;
  *(a4 + 16) = *a3;
  *(a4 + 24) = v6;
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<BuiltInInfo>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<signed char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2579EFF8C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<signed char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

uint64_t *std::vector<unsigned char>::vector[abi:ne200100](uint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<signed char>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2579F0098(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::vector<PostVertexDumpOutput>::__emplace_back_slow_path<PostVertexDumpOutput>(unint64_t *a1, uint64_t a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 5);
  v3 = v2 + 1;
  if (v2 + 1 > 0x2AAAAAAAAAAAAAALL)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 5) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 5);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 5) >= 0x155555555555555)
  {
    v6 = 0x2AAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v20 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<PostVertexDumpOutput>>(a1, v6);
  }

  v7 = 96 * v2;
  v17 = 0;
  v18 = v7;
  *(&v19 + 1) = 0;
  *v7 = *a2;
  v8 = *(a2 + 16);
  *(v7 + 32) = *(a2 + 32);
  *(v7 + 16) = v8;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 16) = 0;
  v9 = *(a2 + 40);
  *(v7 + 56) = *(a2 + 56);
  *(v7 + 40) = v9;
  v10 = *(a2 + 64);
  *(v7 + 80) = *(a2 + 80);
  *(v7 + 64) = v10;
  *(a2 + 72) = 0;
  *(a2 + 80) = 0;
  *(a2 + 64) = 0;
  *(v7 + 88) = *(a2 + 88);
  *&v19 = 96 * v2 + 96;
  v11 = a1[1];
  v12 = 96 * v2 + *a1 - v11;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>(a1, *a1, v11, v12);
  v13 = *a1;
  *a1 = v12;
  v14 = a1[2];
  v16 = v19;
  *(a1 + 1) = v19;
  *&v19 = v13;
  *(&v19 + 1) = v14;
  v17 = v13;
  v18 = v13;
  std::__split_buffer<PostVertexDumpOutput>::~__split_buffer(&v17);
  return v16;
}

void sub_2579F0210(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<PostVertexDumpOutput>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PostVertexDumpOutput>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x2AAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v8 = *(v7 + 16);
      *(a4 + 32) = *(v7 + 32);
      *(a4 + 16) = v8;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 16) = 0;
      v9 = *(v7 + 40);
      *(a4 + 56) = *(v7 + 56);
      *(a4 + 40) = v9;
      v10 = *(v7 + 64);
      *(a4 + 80) = *(v7 + 80);
      *(a4 + 64) = v10;
      *(v7 + 72) = 0;
      *(v7 + 80) = 0;
      *(v7 + 64) = 0;
      *(a4 + 88) = *(v7 + 88);
      v7 += 96;
      a4 += 96;
    }

    while (v7 != a3);
    v15 = a4;
    v13 = 1;
    while (v5 != a3)
    {
      std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](a1, v5);
      v5 += 96;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>>::~__exception_guard_exceptions[abi:ne200100](v12);
}

void std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](uint64_t a1, uint64_t a2)
{
  if (*(a2 + 87) < 0)
  {
    operator delete(*(a2 + 64));
  }

  if (*(a2 + 39) < 0)
  {
    v3 = *(a2 + 16);

    operator delete(v3);
  }
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<PostVertexDumpOutput>,PostVertexDumpOutput*>::operator()[abi:ne200100](uint64_t *a1)
{
  v2 = a1[1];
  v1 = a1[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *a1;
    do
    {
      v3 -= 96;
      std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](v5, v3);
    }

    while (v3 != v4);
  }
}

void **std::__split_buffer<PostVertexDumpOutput>::~__split_buffer(void **a1)
{
  std::__split_buffer<PostVertexDumpOutput>::clear[abi:ne200100](a1);
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<PostVertexDumpOutput>::clear[abi:ne200100](void *a1)
{
  v2 = a1[1];
  for (i = a1[2]; i != v2; i = a1[2])
  {
    v4 = a1[4];
    a1[2] = i - 96;
    std::allocator<PostVertexDumpOutput>::destroy[abi:ne200100](v4, i - 96);
  }
}

void MTLThreadgroupMemoryCheckPass::~MTLThreadgroupMemoryCheckPass(MTLThreadgroupMemoryCheckPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLThreadgroupMemoryCheckPass::runOnModule(MTLThreadgroupMemoryCheckPass *this, llvm::Module *a2)
{
  v2 = *(*(*(this + 8) + 64) + 651);
  if ((v2 & 1) == 0)
  {
    MetalModulePass::runOnModule(this, a2);
    *(this + 46) = 0;
    *(this + 12) = 0u;
    *(this + 13) = 0u;
    if (MTLBoundsCheck::isLibraryModule(*(this + 6), v5))
    {
      MTLThreadgroupMemoryCheckPass::createTagFunctions(this, a2, v6);
    }

    if ((*(*(this + 4) + 23) & 2) != 0)
    {
      MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(this);
      if (*(this + 30) == 5)
      {
        MTLThreadgroupMemoryCheckPass::createMeshThreadgroupGlobal(this);
      }
    }

    MTLThreadgroupMemoryCheckPass::replaceGlobalBindings(this);
    if ((*(*(this + 4) + 23) & 4) != 0)
    {
      MTLThreadgroupMemoryCheckPass::mergeThreadgroupArguments(this);
    }

    MTLThreadgroupMemoryCheckPass::createTagFunctions(this, a2, v7);
  }

  return v2 ^ 1u;
}

void MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(MTLThreadgroupMemoryCheckPass *this)
{
  v17[8] = *MEMORY[0x277D85DE8];
  v11 = 0;
  v15 = v17;
  v16 = 0x400000000;
  v2 = *(this + 6);
  v3 = v2 + 8;
  v4 = *(v2 + 16);
  if (v4 == v2 + 8)
  {
    *(*(*(this + 8) + 64) + 632) = 0;
  }

  else
  {
    v5 = 0;
    do
    {
      if (v4)
      {
        v6 = v4 - 56;
      }

      else
      {
        v6 = 0;
      }

      if ((*(v6 + 33) & 0x1C) == 0 && *(*v6 + 8) == 783)
      {
        TypeAllocSize = v6;
        llvm::SmallVectorImpl<std::pair<llvm::GlobalVariable *,unsigned long long>>::emplace_back<llvm::GlobalVariable *,unsigned long long &>(&v15, &TypeAllocSize, &v11);
        TypeAllocSize = llvm::DataLayout::getTypeAllocSize(*(this + 7), *(v6 + 24));
        v13 = v7;
        v8 = llvm::TypeSize::operator unsigned long long();
        v5 = v11 + v8;
        v11 += v8;
      }

      v4 = *(v4 + 8);
    }

    while (v4 != v3);
    v9 = v16;
    v10 = *(this + 8);
    *(*(v10 + 64) + 632) = v5;
    if (v9)
    {
      MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(v10);
      if (v16)
      {
        v14 = 0;
        operator new();
      }
    }
  }

  if (v15 != v17)
  {
    free(v15);
  }
}

void sub_2579F094C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16)
{
  if (a16 != v16)
  {
    free(a16);
  }

  _Unwind_Resume(exception_object);
}

void MTLThreadgroupMemoryCheckPass::createMeshThreadgroupGlobal(MTLThreadgroupMemoryCheckPass *this)
{
  v15[7] = *MEMORY[0x277D85DE8];
  v1 = *(*(*(this + 8) + 64) + 632);
  if (v1)
  {
    v3 = *(MetalModulePass::getEntryFunction(this) + 80);
    if (v3)
    {
      v4 = (v3 - 24);
    }

    else
    {
      v4 = 0;
    }

    v10[0] = v4;
    MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *>(v12, v10);
    llvm::ArrayType::get(*(this + 12), v1);
    v5 = llvm::User::operator new(0x58);
    llvm::UndefValue::get();
    v10[0] = "mtl.threadgroup_memory";
    v11 = 259;
    llvm::GlobalVariable::GlobalVariable();
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v4);
    llvm::IRBuilderBase::SetInsertPoint(v12, v4, FirstInsertionPt);
    v7 = llvm::PointerType::get();
    v11 = 257;
    Cast = llvm::IRBuilderBase::CreateCast(v12, 49, v5, v7, v10);
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(*(this + 8));
    llvm::IRBuilderBase::CreateAlignedStore(v12, Cast, inserted, 0, 0);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v15);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v14);
    if (v12[0] != &v13)
    {
      free(v12[0]);
    }
  }
}

void sub_2579F0B28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  v17[5] = v17[5] & 0xF8000000 | 1;
  llvm::User::operator delete(v17);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a17);
  _Unwind_Resume(a1);
}

void MTLThreadgroupMemoryCheckPass::replaceGlobalBindings(MTLThreadgroupMemoryCheckPass *this)
{
  v80[7] = *MEMORY[0x277D85DE8];
  __p = 0;
  v71 = 0;
  v72 = 0;
  v2 = *(this + 6);
  v77[0] = "air.global_bindings";
  v78[8] = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(v2, v77);
  if (NamedMetadata)
  {
    v4 = 0;
    v62 = 0;
    v63 = NamedMetadata;
    while (v4 < llvm::NamedMDNode::getNumOperands(v63))
    {
      Operand = llvm::NamedMDNode::getOperand(v63);
      v6 = Operand - 8 * *(Operand + 8);
      v7 = *(v6 + 16);
      v8 = *(*(v6 + 8) + 128);
      LocationIndex = MTLBoundsCheck::getLocationIndex(v7);
      String = llvm::MDString::getString(*(v7 - 8 * *(v7 + 8) + 8));
      if (v11 == 11 && (*String == 0x747865742E726961 ? (v12 = *(String + 3) == 0x657275747865742ELL) : (v12 = 0), v12 || (*String == 0x706D61732E726961 ? (v13 = *(String + 3) == 0x72656C706D61732ELL) : (v13 = 0), v13)) || MTLBoundsCheck::getAddressSpace(v7) != 3)
      {
        v62 = 1;
      }

      else
      {
        v69 = 0u;
        memset(v68, 0, sizeof(v68));
        v14 = *(v8 + 8);
        if (v14)
        {
          do
          {
            v15 = *(v14 + 24);
            v77[0] = v15;
            v16 = v15[16];
            if (v15)
            {
              v17 = v16 >= 0x1C;
            }

            else
            {
              v17 = 0;
            }

            if (v17)
            {
              std::deque<llvm::User *>::push_back(v68, v77);
            }

            else
            {
              if (v15)
              {
                v18 = v16 == 5;
              }

              else
              {
                v18 = 0;
              }

              if (v18)
              {
                llvm::ConstantExpr::isCast(v15);
                v15 = v77[0];
              }

              for (i = *(v15 + 1); i; i = *(i + 8))
              {
                v65[0] = *(i + 24);
                if (v65[0])
                {
                  v20 = *(v65[0] + 16) >= 0x1Cu;
                }

                else
                {
                  v20 = 0;
                }

                if (v20)
                {
                  std::deque<llvm::User *>::push_back(v68, v65);
                }
              }
            }

            v14 = *(v14 + 8);
          }

          while (v14);
          v21 = *(&v69 + 1);
          if (*(&v69 + 1))
          {
            v64 = 1 << LocationIndex;
            do
            {
              v22 = *(*(*(&v68[0] + 1) + ((v69 >> 6) & 0x3FFFFFFFFFFFFF8)) + 8 * (v69 & 0x1FF));
              *&v69 = v69 + 1;
              *(&v69 + 1) = v21 - 1;
              if (v69 >= 0x400)
              {
                operator delete(**(&v68[0] + 1));
                *(&v68[0] + 1) += 8;
                *&v69 = v69 - 512;
              }

              if (v22[16] <= 0x1Bu)
              {
                v23 = 0;
              }

              else
              {
                v23 = v22;
              }

              v67 = v23;
              MTLIRBuilder::MTLIRBuilder<llvm::Instruction *&>(v77, &v67);
              inserted = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupBasePointerGV(*(this + 8));
              v25 = *(inserted + 3);
              v66 = 257;
              AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v77, v25, inserted, 0, 0, v65);
              v27 = MTLBoundsCheck::SharedPassData::getOrInsertThreadgroupTableGV(*(this + 8));
              v28 = *(v27 + 3);
              v66 = 257;
              v29 = llvm::IRBuilderBase::CreateAlignedLoad(v77, v28, v27, 0, 0, v65);
              v30 = *(this + 8);
              v73 = v29;
              llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v30 + 208, &v73, v65);
              v31 = v4;
              v32 = *(this + 8);
              v73 = AlignedLoad;
              llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::try_emplace<llvm::detail::DenseSetEmpty&>(v32 + 208, &v73, v65);
              v33 = *(this + 8);
              *(*(v33 + 64) + 636) |= v64;
              Name = llvm::Value::getName(v27);
              GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v33, Name, v35);
              v73 = llvm::ConstantInt::get();
              v74 = llvm::ConstantInt::get();
              v66 = 257;
              v37 = llvm::IRBuilderBase::CreateGEP(v77, GVBaseType, v29, &v73, 2, v65);
              v38 = *(v37 + 72);
              v66 = 257;
              v39 = llvm::IRBuilderBase::CreateAlignedLoad(v77, v38, v37, 0, 0, v65);
              v4 = v31;
              v40 = *(this + 8);
              v41 = llvm::Value::getName(inserted);
              v43 = MTLBoundsCheck::SharedPassData::getGVBaseType(v40, v41, v42);
              v44 = *(this + 9);
              v66 = 257;
              Cast = llvm::IRBuilderBase::CreateCast(v77, 40, v39, v44, v65);
              v76[4] = 257;
              GEP = llvm::IRBuilderBase::CreateGEP(v77, v43, AlignedLoad, Cast, &v73);
              v48 = *(this + 4);
              v73 = *(this + 5);
              v74 = v76;
              v75 = 0;
              if ((*(v48 + 23) & 8) != 0)
              {
                v49 = *(this + 46);
                *(this + 46) = v49 + 1;
                MTLMDBuilder::getMDTuple<unsigned int>(&v73, v49, v46);
                llvm::Instruction::setMetadata();
              }

              v50 = *v67;
              v66 = 257;
              llvm::IRBuilderBase::CreateBitOrPointerCast(v77, GEP, v50, v65);
              llvm::Value::replaceAllUsesWith();
              v51 = v71;
              if (v71 >= v72)
              {
                v53 = (v71 - __p) >> 3;
                if ((v53 + 1) >> 61)
                {
                  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                }

                v54 = (v72 - __p) >> 2;
                if (v54 <= v53 + 1)
                {
                  v54 = v53 + 1;
                }

                if (v72 - __p >= 0x7FFFFFFFFFFFFFF8)
                {
                  v55 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v55 = v54;
                }

                if (v55)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&__p, v55);
                }

                *(8 * v53) = v8;
                v52 = 8 * v53 + 8;
                v56 = (8 * v53 - (v71 - __p));
                memcpy(v56, __p, v71 - __p);
                v57 = __p;
                __p = v56;
                v71 = v52;
                v72 = 0;
                if (v57)
                {
                  operator delete(v57);
                }
              }

              else
              {
                *v71 = v8;
                v52 = (v51 + 8);
              }

              v71 = v52;
              llvm::Instruction::eraseFromParent(v67);
              if (v74 != v76)
              {
                free(v74);
              }

              llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v80);
              llvm::IRBuilderFolder::~IRBuilderFolder(&v79);
              if (v77[0] != v78)
              {
                free(v77[0]);
              }

              v21 = *(&v69 + 1);
            }

            while (*(&v69 + 1));
          }
        }

        std::deque<llvm::User *>::~deque[abi:ne200100](v68);
      }

      v4 = (v4 + 1);
    }

    v58 = __p;
    v59 = v71;
    while (v58 != v59)
    {
      v60 = *v58;
      llvm::GlobalVariable::dropAllReferences(*v58);
      llvm::Constant::getNullValue(*v60, v61);
      llvm::Value::replaceAllUsesWith();
      llvm::GlobalVariable::eraseFromParent(v60);
      ++v58;
    }

    if ((v62 & 1) == 0)
    {
      llvm::NamedMDNode::clearOperands(v63);
      llvm::NamedMDNode::eraseFromParent(v63);
    }
  }

  if (__p)
  {
    v71 = __p;
    operator delete(__p);
  }
}

void sub_2579F1190(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, void *__p, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, uint64_t a35, char a36)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void MTLThreadgroupMemoryCheckPass::mergeThreadgroupArguments(MTLThreadgroupMemoryCheckPass *this)
{
  v29[4] = *MEMORY[0x277D85DE8];
  v13 = *(this + 5);
  v14 = v16;
  v15 = 0;
  EntryFunction = MetalModulePass::getEntryFunction(this);
  v4 = *(EntryFunction + 24);
  v27 = v29;
  v28 = 0x400000000;
  v25[0] = v26;
  v25[1] = 0x400000000;
  v23[0] = v24;
  v23[1] = 0x400000000;
  v20 = v22;
  v21 = 0x400000000;
  v16[0] = 0;
  if (*(v4 + 12) != 1)
  {
    v5 = 0;
    do
    {
      v6 = *(*(this + 16) - 8 * *(*(this + 16) + 8) + 16);
      v7 = *(v6 - 8 * *(v6 + 8) + 8 * v5);
      v18[0] = v7;
      v17 = *(*(v4 + 16) + 8 * (v5 + 1));
      if (*(v17 + 2) == 783 && !MTLThreadgroupMemoryCheckPass::isMeshGridPropertiesArg(this, v7))
      {
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v20, v18);
      }

      else
      {
        MTLMDBuilder::getMetadata<unsigned int>(&v13, v28, v2);
        llvm::MDNode::replaceOperandWith();
        llvm::SmallVectorImpl<unsigned int>::emplace_back<unsigned int &>(v23, v16);
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v27, v18);
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v25, &v17);
      }

      v5 = v16[0] + 1;
      v16[0] = v5;
    }

    while (v5 < *(v4 + 12) - 1);
    if (v21)
    {
      v8 = llvm::FunctionType::get();
      v9 = *(EntryFunction + 32);
      v19 = 257;
      v10 = llvm::Function::Create(v8, v9 & 0xF, v18, *(this + 6));
      v11 = *(this + 5);
      v19 = 257;
      llvm::BasicBlock::Create(v11, v18, v10, 0, v12);
    }
  }

  if (v20 != v22)
  {
    free(v20);
  }

  if (v23[0] != v24)
  {
    free(v23[0]);
  }

  if (v25[0] != v26)
  {
    free(v25[0]);
  }

  if (v27 != v29)
  {
    free(v27);
  }

  if (v14 != v16)
  {
    free(v14);
  }
}

void sub_2579F199C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, void *a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50)
{
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a50);
  if (STACK[0x200] != a13)
  {
    free(STACK[0x200]);
  }

  v53 = *(v51 - 224);
  if (v53 != a14)
  {
    free(v53);
  }

  v54 = *(v51 - 192);
  if (v54 != a15)
  {
    free(v54);
  }

  v55 = *(v51 - 144);
  if (v55 != a16)
  {
    free(v55);
  }

  if (a28 != v50)
  {
    free(a28);
  }

  _Unwind_Resume(a1);
}

void MTLThreadgroupMemoryCheckPass::createTagFunctions(llvm::PointerType **this, llvm::Module *a2, unsigned int a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v11[0] = "mtl.threadgroup.strip_tag";
  v12 = 259;
  v5 = llvm::PointerType::get();
  v10 = llvm::PointerType::get();
  this[24] = getMangledFunction<llvm::PointerType *>(a2, v11, v5, &v10);
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();
  llvm::Function::onlyWritesMemory(this[24]);
  llvm::Function::addFnAttr();
  *(this[24] + 8) = *(this[24] + 8) & 0xFFFFBFC0 | 0x4007;
  v7 = this[24];
  v8 = v7;
  if (*(v7 + 9))
  {
    llvm::Function::BuildLazyArguments(v7);
    v8 = this[24];
  }

  v9 = this[5];
  v12 = 257;
  llvm::BasicBlock::Create(v9, v11, v8, 0, v6);
}

void sub_2579F1ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MTLThreadgroupMemoryCheckPass::createGetLengthFunctions(MTLThreadgroupMemoryCheckPass *this, llvm::Module *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v5[0] = "mtl.threadgroup.get_length";
  v6 = 259;
  *(this + 26) = getMangledFunction<llvm::Type *&>(a2, v5, *(this + 10), this + 10);
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();
  llvm::Function::addFnAttr();
  *(*(this + 26) + 32) = *(*(this + 26) + 32) & 0xFFFFBFC0 | 0x4007;
  v3 = *(this + 5);
  v5[0] = "entry";
  v6 = 259;
  llvm::BasicBlock::Create(v3, v5, *(this + 26), 0, v4);
}

void MTLThreadgroupMemoryCheckPass::applyThreadgroupChecks(MTLBoundsCheck::SharedPassData **this, llvm::Module *a2)
{
  v2 = a2 + 24;
  v3 = *(a2 + 4);
  if (v3 != a2 + 24)
  {
    do
    {
      if (v3)
      {
        v5 = (v3 - 56);
      }

      else
      {
        v5 = 0;
      }

      Name = llvm::Value::getName(v5);
      if (v7 < 0x10 || (*Name == 0x657268742E6C746DLL ? (v8 = Name[1] == 0x2E70756F72676461) : (v8 = 0), !v8))
      {
        if ((llvm::GlobalValue::isDeclaration(v5) & 1) == 0)
        {
          MTLThreadgroupMemoryCheckPass::applyThreadgroupChecks(this, v5);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::GlobalVariable *,unsigned long long>>::emplace_back<llvm::GlobalVariable *,unsigned long long &>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 2);
  if (v4 >= *(a1 + 3))
  {
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(a1, *a2, *a3);
    v5 = *a1;
    v8 = *(a1 + 2);
  }

  else
  {
    v5 = *a1;
    v6 = (*a1 + 16 * v4);
    v7 = *a3;
    *v6 = *a2;
    v6[1] = v7;
    v8 = v4 + 1;
    *(a1 + 2) = v8;
  }

  return v5 + 16 * v8 - 16;
}

__n128 std::__function::__func<MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(void)::{lambda(MTLIRBuilder &)#1},std::allocator<MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(void)::{lambda(MTLIRBuilder &)#1}>,llvm::Value * ()(MTLIRBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2868EC7F8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t MTLThreadgroupMemoryCheckPass::mergeThreadgroupGlobals(void)::{lambda(MTLIRBuilder &)#1}::operator()(uint64_t a1, llvm::Type **a2)
{
  v4 = *(a1 + 8);
  v5 = **a1;
  v6 = *(v5 + 24);
  v21 = 257;
  AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(a2, v6, v5, 0, 0, v20);
  v8 = *(v4 + 64);
  Name = llvm::Value::getName(**a1);
  GVBaseType = MTLBoundsCheck::SharedPassData::getGVBaseType(v8, Name, v10);
  v12 = *(*(a1 + 16) + 8);
  v21 = 257;
  ConstGEP1_64 = llvm::IRBuilderBase::CreateConstGEP1_64(a2, GVBaseType, AlignedLoad, v12, v20);
  v14 = ***(a1 + 16);
  v19[16] = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a2, 49, ConstGEP1_64, v14, v19);
  if ((*(*(v4 + 32) + 23) & 8) != 0)
  {
    v17 = *(v4 + 184);
    *(v4 + 184) = v17 + 1;
    MetalModulePass::getMDTuple<unsigned int>(v4, v17, v15);
    llvm::Instruction::setMetadata();
  }

  return Cast;
}

uint64_t std::__function::__value_func<llvm::Value * ()(MTLIRBuilder &)>::~__value_func[abi:ne200100](uint64_t a1)
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

uint64_t MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *>(uint64_t a1, llvm::BasicBlock **a2)
{
  v3 = llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(a1, *a2, 0, 0, 0);
  MTLIRBuilder::initTypeCache(v3, v3[8]);
  return a1;
}

BOOL MTLThreadgroupMemoryCheckPass::isMeshGridPropertiesArg(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (v2 < 2)
  {
    return 0;
  }

  v3 = *(a2 - 8 * v2 + 8);
  if (*v3)
  {
    return 0;
  }

  String = llvm::MDString::getString(v3);
  if (v5 != 24)
  {
    return 0;
  }

  return *String == 0x6873656D2E726961 && String[1] == 0x72705F646972675FLL && String[2] == 0x736569747265706FLL;
}

uint64_t getMangledFunction<llvm::PointerType *>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, MTLBoundsCheck **a4)
{
  llvm::Twine::str(&v28, this);
  MTLBoundsCheck::getMangledTypeStr(&v27, a3, v7, v8);
  v9 = std::string::insert(&v27, 0, ".");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v23 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v23 >= 0)
  {
    v12 = HIBYTE(v23);
  }

  else
  {
    v12 = __p[1];
  }

  std::string::append(&v28, v11, v12);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  memset(&v27, 0, sizeof(v27));
  v26 = *a4;
  MTLBoundsCheck::getMangledTypeStr(&v25, v26, v13, v14);
  v15 = std::string::insert(&v25, 0, ".");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v23 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v23 >= 0)
  {
    v18 = HIBYTE(v23);
  }

  else
  {
    v18 = __p[1];
  }

  std::string::append(&v28, v17, v18);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v27, &v26);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v20 = llvm::FunctionType::get();
    v24 = 260;
    __p[0] = &v28;
    Function = llvm::Function::Create(v20, 0, __p, a1);
  }

  if (v27.__r_.__value_.__r.__words[0])
  {
    v27.__r_.__value_.__l.__size_ = v27.__r_.__value_.__r.__words[0];
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_2579F2D7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::Function::onlyWritesMemory(llvm::Function *this)
{
  if (llvm::Function::hasFnAttribute())
  {
    return 1;
  }

  return llvm::Function::hasFnAttribute();
}

uint64_t getMangledFunction<llvm::Type *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, MTLBoundsCheck **a4)
{
  llvm::Twine::str(&v28, this);
  MTLBoundsCheck::getMangledTypeStr(&v27, a3, v7, v8);
  v9 = std::string::insert(&v27, 0, ".");
  v10 = *&v9->__r_.__value_.__l.__data_;
  v23 = v9->__r_.__value_.__r.__words[2];
  *__p = v10;
  v9->__r_.__value_.__l.__size_ = 0;
  v9->__r_.__value_.__r.__words[2] = 0;
  v9->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v11 = __p;
  }

  else
  {
    v11 = __p[0];
  }

  if (v23 >= 0)
  {
    v12 = HIBYTE(v23);
  }

  else
  {
    v12 = __p[1];
  }

  std::string::append(&v28, v11, v12);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v27.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  memset(&v27, 0, sizeof(v27));
  v26 = *a4;
  MTLBoundsCheck::getMangledTypeStr(&v25, v26, v13, v14);
  v15 = std::string::insert(&v25, 0, ".");
  v16 = *&v15->__r_.__value_.__l.__data_;
  v23 = v15->__r_.__value_.__r.__words[2];
  *__p = v16;
  v15->__r_.__value_.__l.__size_ = 0;
  v15->__r_.__value_.__r.__words[2] = 0;
  v15->__r_.__value_.__r.__words[0] = 0;
  if (v23 >= 0)
  {
    v17 = __p;
  }

  else
  {
    v17 = __p[0];
  }

  if (v23 >= 0)
  {
    v18 = HIBYTE(v23);
  }

  else
  {
    v18 = __p[1];
  }

  std::string::append(&v28, v17, v18);
  if (SHIBYTE(v23) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v25.__r_.__value_.__l.__data_);
  }

  std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v27, &v26);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v20 = llvm::FunctionType::get();
    v24 = 260;
    __p[0] = &v28;
    Function = llvm::Function::Create(v20, 0, __p, a1);
  }

  if (v27.__r_.__value_.__r.__words[0])
  {
    v27.__r_.__value_.__l.__size_ = v27.__r_.__value_.__r.__words[0];
    operator delete(v27.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v28.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_2579F3050(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, int a20, __int16 a21, char a22, char a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (*(v30 - 33) < 0)
  {
    operator delete(*(v30 - 56));
  }

  _Unwind_Resume(exception_object);
}

uint64_t getMangledFunction<llvm::Type *&,llvm::PointerType *>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5)
{
  v33[2] = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v32, this);
  MTLBoundsCheck::getMangledTypeStr(&v31, a3, v9, v10);
  v11 = std::string::insert(&v31, 0, ".");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v27 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (v27 >= 0)
  {
    v14 = HIBYTE(v27);
  }

  else
  {
    v14 = __p[1];
  }

  std::string::append(&v32, v13, v14);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v17 = 0;
  memset(&v31, 0, sizeof(v31));
  v18 = *a5;
  v33[0] = *a4;
  v33[1] = v18;
  do
  {
    v30 = v33[v17];
    MTLBoundsCheck::getMangledTypeStr(&v29, v30, v15, v16);
    v19 = std::string::insert(&v29, 0, ".");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v27 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v27 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v27 >= 0)
    {
      v22 = HIBYTE(v27);
    }

    else
    {
      v22 = __p[1];
    }

    std::string::append(&v32, v21, v22);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v31, &v30);
    ++v17;
  }

  while (v17 != 2);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v24 = llvm::FunctionType::get();
    v28 = 260;
    __p[0] = &v32;
    Function = llvm::Function::Create(v24, 0, __p, a1);
  }

  if (v31.__r_.__value_.__r.__words[0])
  {
    v31.__r_.__value_.__l.__size_ = v31.__r_.__value_.__r.__words[0];
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_2579F332C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void MTLThreadgroupMemoryCheckPass::applyPointerTagging(MTLThreadgroupMemoryCheckPass *this, llvm::Function *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v17 = v19;
  v18 = 0x400000000;
  EntryFunction = MetalModulePass::getEntryFunction(this);
  v5 = EntryFunction + 72;
  v6 = *(EntryFunction + 80);
  if (v6 != EntryFunction + 72)
  {
    do
    {
      v7 = v6 - 24;
      if (!v6)
      {
        v7 = 0;
      }

      v8 = v7 + 40;
      for (i = *(v7 + 48); i != v8; i = *(i + 8))
      {
        if (i)
        {
          v10 = i - 24;
        }

        else
        {
          v10 = 0;
        }

        if (*(v10 + 48) || (*(v10 + 23) & 0x20) != 0)
        {
          v23[0] = llvm::Instruction::getMetadataImpl();
          if (v23[0])
          {
            v16[0] = v10;
            llvm::SmallVectorImpl<std::pair<llvm::Instruction *,llvm::MDTuple *>>::emplace_back<llvm::Instruction *,llvm::MDTuple *&>(&v17, v16, v23);
            llvm::Instruction::setMetadata();
          }
        }
      }

      v6 = *(v6 + 8);
    }

    while (v6 != v5);
  }

  if (v18)
  {
    *v16 = *v17;
    v11 = *(*(v16[1] - 8 * *(v16[1] + 8)) + 128);
    v12 = (v11 + 24);
    if (*(v11 + 32) >= 0x41u)
    {
      v12 = *v12;
    }

    v15 = *v12;
    v24 = 0;
    operator new();
  }

  if (v17 != v19)
  {
    free(v17);
  }

  if ((*(*(this + 4) + 23) & 1) == 0)
  {
    v20 = v22;
    v21 = 0x1000000000;
    llvm::InstVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor,void>::visit(&v17, a2);
    v13 = v20;
    if (v21)
    {
      v14 = 8 * v21;
      do
      {
        v16[0] = *v13;
        v23[0] = &unk_2868EC888;
        v23[1] = this;
        v23[2] = v16;
        v24 = v23;
        MTLRAUWUtility::replaceAllUsesWith(&v15, v16[0], v23);
        std::__function::__value_func<llvm::Value * ()(MTLIRBuilder &)>::~__value_func[abi:ne200100](v23);
        ++v13;
        v14 -= 8;
      }

      while (v14);
      v13 = v20;
    }

    if (v13 != v22)
    {
      free(v13);
    }
  }
}

void sub_2579F3684(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18 != v18)
  {
    free(a18);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<std::pair<llvm::Instruction *,llvm::MDTuple *>>::emplace_back<llvm::Instruction *,llvm::MDTuple *&>(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *(a1 + 2);
  if (v4 >= *(a1 + 3))
  {
    llvm::SmallVectorTemplateBase<std::pair<unsigned int,llvm::MDNode *>,true>::push_back(a1, *a2, *a3);
    v5 = *a1;
    v7 = *(a1 + 2);
  }

  else
  {
    v5 = *a1;
    v6 = (*a1 + 16 * v4);
    *v6 = *a2;
    v6[1] = *a3;
    v7 = v4 + 1;
    *(a1 + 2) = v7;
  }

  return v5 + 16 * v7 - 16;
}

uint64_t llvm::InstVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor,void>::visit(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  *a1 = v4;
  DataLayout = llvm::Module::getDataLayout(v4);
  v6 = **a1;
  *(a1 + 8) = v6;
  *(a1 + 16) = DataLayout;
  *(a1 + 24) = llvm::Type::getInt32Ty(v6, v7);
  v8 = *(a2 + 80);

  return llvm::InstVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::BasicBlock,false,false,void>,false,false>>(a1, v8, a2 + 72);
}

{
  v2 = *(a2 + 16);
  if ((v2 - 61) > 0x22)
  {
    if ((v2 - 29) >= 0x1F)
    {
      return MemoryOpVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor>::visitLoadInst(a1, a2);
    }
  }

  else if (((1 << (v2 - 61)) & 0x7FF7FFFFELL) == 0)
  {
    if (v2 == 61)
    {
      return MemoryOpVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor>::visitStoreInst(a1, a2);
    }

    else
    {
      return MemoryOpVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor>::visitCallInst(a1, a2);
    }
  }

  return a1;
}

__n128 std::__function::__func<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#1},std::allocator<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#1}>,llvm::Value * ()(MTLIRBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2868EC840;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#1},std::allocator<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#1}>,llvm::Value * ()(MTLIRBuilder &)>::operator()(uint64_t a1, llvm::IRBuilderBase *a2)
{
  v4 = **(a1 + 8);
  v5 = *(*(a1 + 16) + 72);
  v12 = 257;
  Cast = llvm::IRBuilderBase::CreateCast(a2, 47, v4, v5, v11);
  v12 = 257;
  v7 = llvm::ConstantInt::get();
  v8 = llvm::IRBuilderBase::CreateOr(a2, Cast, v7, v11);
  v9 = ***(a1 + 8);
  v12 = 257;
  return llvm::IRBuilderBase::CreateCast(a2, 48, v8, v9, v11);
}

uint64_t llvm::IRBuilderBase::CreateOr(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, const llvm::Twine *a4)
{
  result = (*(**(this + 9) + 32))(*(this + 9));
  if (!result)
  {
    v7 = llvm::BinaryOperator::Create();
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v7, a4);
  }

  return result;
}

uint64_t llvm::InstVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor,void>::visit<llvm::ilist_iterator<llvm::ilist_detail::node_options<llvm::BasicBlock,false,false,void>,false,false>>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 != a3)
  {
    v4 = result;
    do
    {
      v5 = *(a2 + 8);
      if (a2)
      {
        v6 = a2 - 24;
      }

      else
      {
        v6 = 0;
      }

      v7 = *(v6 + 48);
      v8 = v6 + 40;
      if (v7 != v6 + 40)
      {
        do
        {
          v9 = *(v7 + 8);
          if (v7)
          {
            v10 = v7 - 24;
          }

          else
          {
            v10 = 0;
          }

          result = llvm::InstVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor,void>::visit(v4, v10);
          v7 = v9;
        }

        while (v9 != v8);
      }

      a2 = v5;
    }

    while (v5 != a3);
  }

  return result;
}

uint64_t MemoryOpVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor>::visitLoadInst(uint64_t a1, uint64_t a2)
{
  llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), **(**(a2 - 32) + 16));
  llvm::TypeSize::operator unsigned long long();
  llvm::ConstantInt::get();
  return MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor::visitPointerOperand(a1, a2, *(a2 - 32));
}

uint64_t MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor::visitPointerOperand(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v3 = *(*a3 + 8);
  if ((v3 & 0xFE) == 0x12)
  {
    v3 = *(**(*a3 + 16) + 8);
  }

  if ((v3 & 0xFFFFFF00) == 0x300)
  {
    return llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(result + 32, &v4);
  }

  return result;
}

uint64_t MemoryOpVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor>::visitStoreInst(uint64_t a1, uint64_t a2)
{
  llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), **(**(a2 - 32) + 16));
  llvm::TypeSize::operator unsigned long long();
  llvm::ConstantInt::get();
  return MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor::visitPointerOperand(a1, a2, *(a2 - 32));
}

uint64_t MemoryOpVisitor<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor>::visitCallInst(uint64_t a1, uint64_t a2)
{
  result = *(a2 - 32);
  if (!result || *(result + 16) || *(result + 24) != *(a2 + 72))
  {
    return result;
  }

  result = llvm::Value::getName(result);
  if (v5 < 0xB)
  {
    if (v5 != 10)
    {
      return result;
    }

    if (*result != 0x6D6F74612E726961 || *(result + 8) != 25449)
    {
      return result;
    }

    goto LABEL_45;
  }

  v8 = *result != 0x6D656D2E6D766C6CLL || *(result + 3) != 0x7970636D656D2E6DLL;
  v9 = 0x6C6C766D2E6D656DLL;
  v10 = bswap64(*result);
  if (v10 == 0x6C6C766D2E6D656DLL && (v9 = 0x6D2E6D656D636D70, v10 = bswap64(*(result + 3)), v10 == 0x6D2E6D656D636D70))
  {
    v11 = 0;
  }

  else if (v10 < v9)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (!v8 || v11 == 0)
  {
    v13 = (a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    v14 = v13[4];
    MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor::visitPointerOperand(a1, a2, *v13);
    v15 = a1;
    v16 = a2;
    v17 = v14;
LABEL_48:

    return MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor::visitPointerOperand(v15, v16, v17);
  }

  if (*result == 0x6D656D2E6D766C6CLL && *(result + 3) == 0x7465736D656D2E6DLL)
  {
    v17 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    v15 = a1;
    v16 = a2;
    goto LABEL_48;
  }

  if (*result == 0x6D6F74612E726961 && *(result + 8) == 25449)
  {
LABEL_45:
    v21 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    PtrTypeFromIntrinsicNameSuffix = getPtrTypeFromIntrinsicNameSuffix(result, v5, *(a1 + 8));
    goto LABEL_46;
  }

  if (*result == 0x662E73646E756F62 && *(result + 3) == 0x646C6F662E73646ELL)
  {
    v21 = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF));
    PtrTypeFromIntrinsicNameSuffix = **(*v21 + 16);
LABEL_46:
    llvm::DataLayout::getTypeSizeInBits(*(a1 + 16), PtrTypeFromIntrinsicNameSuffix);
    llvm::TypeSize::operator unsigned long long();
    llvm::ConstantInt::get();
    return MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::UntagVisitor::visitPointerOperand(a1, a2, v21);
  }

  return result;
}

__n128 std::__function::__func<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#2},std::allocator<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#2}>,llvm::Value * ()(MTLIRBuilder &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2868EC888;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#2},std::allocator<MTLThreadgroupMemoryCheckPass::applyPointerTagging(llvm::Function &)::{lambda(MTLIRBuilder &)#2}>,llvm::Value * ()(MTLIRBuilder &)>::operator()(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v5 = *(*(a1 + 8) + 192);
  if (v5)
  {
    v6 = *(v5 + 24);
  }

  else
  {
    v6 = 0;
  }

  v7 = **(a1 + 16);
  v8 = llvm::PointerType::get();
  v14 = 257;
  v15[0] = llvm::IRBuilderBase::CreateCast(a2, 49, v7, v8, v13);
  v12[16] = 257;
  v9 = llvm::IRBuilderBase::CreateCall(a2, v6, v5, v15, 1, v12, 0);
  v10 = ***(a1 + 16);
  v14 = 257;
  return llvm::IRBuilderBase::CreateCast(a2, 49, v9, v10, v13);
}

void MTLThreadgroupMemoryCheckPass::applyThreadgroupChecks(MTLBoundsCheck::SharedPassData **this, llvm::Function *a2)
{
  v29[16] = *MEMORY[0x277D85DE8];
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 != a2 + 72)
  {
    v21 = a2 + 72;
    do
    {
      v5 = v3 - 24;
      if (!v3)
      {
        v5 = 0;
      }

      v27 = v29;
      v28 = 0x800000000;
      v6 = v5 + 40;
      v7 = *(v5 + 6);
      if (v7 != v5 + 40)
      {
        do
        {
          if (v7)
          {
            v8 = (v7 - 24);
          }

          else
          {
            v8 = 0;
          }

          v9 = *(v8 + 16);
          if ((v9 - 60) >= 2)
          {
            if (v9 == 84)
            {
              v10 = *(v8 - 32);
              if (v10)
              {
                if (!*(v10 + 16) && *(v10 + 24) == *(v8 + 72))
                {
                  llvm::Value::getName(v10);
                }
              }
            }
          }

          else
          {
            CheckedInstruction = MTLThreadgroupMemoryCheckPass::createCheckedInstruction(this, v8);
            if (CheckedInstruction)
            {
              v22[0] = v8;
              llvm::SmallVectorImpl<std::pair<llvm::Instruction *,llvm::MDTuple *>>::emplace_back<llvm::Instruction *,llvm::MDTuple *&>(&v27, v22, &CheckedInstruction);
            }
          }

          v7 = *(v7 + 1);
        }

        while (v7 != v6);
        v11 = v27;
        if (v28)
        {
          v12 = (v27 + 16 * v28);
          do
          {
            v13 = *v11;
            v14 = *(*v11 + 5);
            if ((v14 & 0x40000000) != 0)
            {
              v16 = *(v13 - 1);
              v15 = v14 & 0x7FFFFFF;
            }

            else
            {
              v15 = v14 & 0x7FFFFFF;
              v16 = v13 - 32 * v15;
            }

            v17 = v11[1];
            llvm::SmallVector<llvm::Value *,4u>::SmallVector<llvm::Use *,void>(&CheckedInstruction, v16, &v16[32 * v15]);
            MTLBoundsCheck::SharedPassData::indexForInstruction(this[8], v13);
            v22[0] = llvm::ConstantInt::get();
            llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&CheckedInstruction, v22);
            if (v17)
            {
              v18 = *(v17 + 24);
            }

            else
            {
              v18 = 0;
            }

            v23 = 257;
            v19 = llvm::CallInst::Create(v18, v17, CheckedInstruction, v25, 0, 0, v22, 0);
            llvm::ReplaceInstWithInst(v13, v19, v20);
            if (CheckedInstruction != &v26)
            {
              free(CheckedInstruction);
            }

            v11 += 2;
          }

          while (v11 != v12);
          v11 = v27;
          v2 = v21;
        }

        if (v11 != v29)
        {
          free(v11);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }
}

void sub_2579F42B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21)
{
  if (a21 != v21)
  {
    free(a21);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLThreadgroupMemoryCheckPass::createCheckedInstruction(MTLThreadgroupMemoryCheckPass *this, llvm::Instruction *a2)
{
  v2 = *(a2 + 16);
  if (v2 == 60)
  {
    return MTLThreadgroupMemoryCheckPass::getCheckedLoadFunction(this, a2);
  }

  if (v2 == 61)
  {
    return MTLThreadgroupMemoryCheckPass::getCheckedStoreFunction(this, a2);
  }

  return 0;
}

uint64_t MTLThreadgroupMemoryCheckPass::getCheckedStoreFunction(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = **(a2 - 32);
  v14 = v3;
  if (!a2 || (v4 = a2, *(a2 + 16) != 60))
  {
    v4 = *(a2 - 64);
  }

  v13 = *v4;
  v5 = *(v3 + 8);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v3 + 16) + 8);
  }

  if ((v5 & 0xFFFFFF00) != 0x300)
  {
    return 0;
  }

  v12 = 1 << (*(a2 + 18) >> 1);
  v15[0] = "mtl.threadgroup.checked_store.";
  v15[2] = &v12;
  v16 = 3075;
  v6 = *(a1 + 48);
  VoidTy = llvm::Type::getVoidTy(*(a1 + 40), a2);
  v8 = getMangledFunction<llvm::Type *&,llvm::Type *&,llvm::Type *&>(v6, v15, VoidTy, &v13, &v14, (a1 + 80));
  if (llvm::GlobalValue::isDeclaration(v8))
  {
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    *(v8 + 32) = *(v8 + 32) & 0xFFFFBFC0 | 0x4007;
    if (*(v8 + 18))
    {
      llvm::Function::BuildLazyArguments(v8);
      if (*(v8 + 18))
      {
        llvm::Function::BuildLazyArguments(v8);
        if (*(v8 + 18))
        {
          llvm::Function::BuildLazyArguments(v8);
        }
      }
    }

    v10 = *(a1 + 40);
    v15[0] = "entry";
    v16 = 259;
    llvm::BasicBlock::Create(v10, v15, v8, 0, v9);
  }

  return v8;
}

uint64_t MTLThreadgroupMemoryCheckPass::getCheckedLoadFunction(void *a1, uint64_t a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = **(a2 - 32);
  v13 = v3;
  if (!a2 || (v4 = a2, *(a2 + 16) != 60))
  {
    v4 = *(a2 - 64);
  }

  v5 = *(v3 + 8);
  if ((v5 & 0xFE) == 0x12)
  {
    v5 = *(**(v3 + 16) + 8);
  }

  if ((v5 & 0xFFFFFF00) != 0x300)
  {
    return 0;
  }

  v6 = *v4;
  v12 = 1 << (*(a2 + 18) >> 1);
  v7 = a1[6];
  v14[0] = "mtl.threadgroup.checked_load.";
  v14[2] = &v12;
  v15 = 3075;
  v8 = getMangledFunction<llvm::Type *&,llvm::Type *&>(v7, v14, v6, &v13, a1 + 10);
  if (llvm::GlobalValue::isDeclaration(v8))
  {
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    *(v8 + 32) = *(v8 + 32) & 0xFFFFBFC0 | 0x4007;
    if (*(v8 + 18))
    {
      llvm::Function::BuildLazyArguments(v8);
      if (*(v8 + 18))
      {
        llvm::Function::BuildLazyArguments(v8);
      }
    }

    v10 = a1[5];
    v14[0] = "entry";
    v15 = 259;
    llvm::BasicBlock::Create(v10, v14, v8, 0, v9);
  }

  return v8;
}

uint64_t getMangledFunction<llvm::Type *&,llvm::Type *&,llvm::Type *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5, int64_t *a6)
{
  v37 = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v33, this);
  MTLBoundsCheck::getMangledTypeStr(&v32, a3, v11, v12);
  v13 = std::string::insert(&v32, 0, ".");
  v14 = *&v13->__r_.__value_.__l.__data_;
  v35 = v13->__r_.__value_.__r.__words[2];
  v34 = v14;
  v13->__r_.__value_.__l.__size_ = 0;
  v13->__r_.__value_.__r.__words[2] = 0;
  v13->__r_.__value_.__r.__words[0] = 0;
  if (v35 >= 0)
  {
    v15 = &v34;
  }

  else
  {
    v15 = v34;
  }

  if (v35 >= 0)
  {
    v16 = HIBYTE(v35);
  }

  else
  {
    v16 = *(&v34 + 1);
  }

  std::string::append(&v33, v15, v16);
  if (SHIBYTE(v35) < 0)
  {
    operator delete(v34);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  v19 = 0;
  memset(&v32, 0, sizeof(v32));
  v20 = *a5;
  *&v34 = *a4;
  *(&v34 + 1) = v20;
  v35 = *a6;
  do
  {
    v31 = *(&v34 + v19);
    MTLBoundsCheck::getMangledTypeStr(&v28, v31, v17, v18);
    v21 = std::string::insert(&v28, 0, ".");
    v22 = *&v21->__r_.__value_.__l.__data_;
    v30 = v21->__r_.__value_.__r.__words[2];
    *__p = v22;
    v21->__r_.__value_.__l.__size_ = 0;
    v21->__r_.__value_.__r.__words[2] = 0;
    v21->__r_.__value_.__r.__words[0] = 0;
    if (v30 >= 0)
    {
      v23 = __p;
    }

    else
    {
      v23 = __p[0];
    }

    if (v30 >= 0)
    {
      v24 = HIBYTE(v30);
    }

    else
    {
      v24 = __p[1];
    }

    std::string::append(&v33, v23, v24);
    if (SHIBYTE(v30) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v28.__r_.__value_.__l.__data_);
    }

    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v32, &v31);
    v19 += 8;
  }

  while (v19 != 24);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v26 = llvm::FunctionType::get();
    v36 = 260;
    *&v34 = &v33;
    Function = llvm::Function::Create(v26, 0, &v34, a1);
  }

  if (v32.__r_.__value_.__r.__words[0])
  {
    v32.__r_.__value_.__l.__size_ = v32.__r_.__value_.__r.__words[0];
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v33.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_2579F53B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  _Unwind_Resume(exception_object);
}

uint64_t getMangledFunction<llvm::Type *&,llvm::Type *&>(uint64_t a1, llvm::Twine *this, MTLBoundsCheck *a3, void *a4, uint64_t *a5)
{
  v33[2] = *MEMORY[0x277D85DE8];
  llvm::Twine::str(&v32, this);
  MTLBoundsCheck::getMangledTypeStr(&v31, a3, v9, v10);
  v11 = std::string::insert(&v31, 0, ".");
  v12 = *&v11->__r_.__value_.__l.__data_;
  v27 = v11->__r_.__value_.__r.__words[2];
  *__p = v12;
  v11->__r_.__value_.__l.__size_ = 0;
  v11->__r_.__value_.__r.__words[2] = 0;
  v11->__r_.__value_.__r.__words[0] = 0;
  if (v27 >= 0)
  {
    v13 = __p;
  }

  else
  {
    v13 = __p[0];
  }

  if (v27 >= 0)
  {
    v14 = HIBYTE(v27);
  }

  else
  {
    v14 = __p[1];
  }

  std::string::append(&v32, v13, v14);
  if (SHIBYTE(v27) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v31.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  v17 = 0;
  memset(&v31, 0, sizeof(v31));
  v18 = *a5;
  v33[0] = *a4;
  v33[1] = v18;
  do
  {
    v30 = v33[v17];
    MTLBoundsCheck::getMangledTypeStr(&v29, v30, v15, v16);
    v19 = std::string::insert(&v29, 0, ".");
    v20 = *&v19->__r_.__value_.__l.__data_;
    v27 = v19->__r_.__value_.__r.__words[2];
    *__p = v20;
    v19->__r_.__value_.__l.__size_ = 0;
    v19->__r_.__value_.__r.__words[2] = 0;
    v19->__r_.__value_.__r.__words[0] = 0;
    if (v27 >= 0)
    {
      v21 = __p;
    }

    else
    {
      v21 = __p[0];
    }

    if (v27 >= 0)
    {
      v22 = HIBYTE(v27);
    }

    else
    {
      v22 = __p[1];
    }

    std::string::append(&v32, v21, v22);
    if (SHIBYTE(v27) < 0)
    {
      operator delete(__p[0]);
    }

    if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v29.__r_.__value_.__l.__data_);
    }

    std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](&v31, &v30);
    ++v17;
  }

  while (v17 != 2);
  Function = llvm::Module::getFunction();
  if (!Function)
  {
    v24 = llvm::FunctionType::get();
    v28 = 260;
    __p[0] = &v32;
    Function = llvm::Function::Create(v24, 0, __p, a1);
  }

  if (v31.__r_.__value_.__r.__words[0])
  {
    v31.__r_.__value_.__l.__size_ = v31.__r_.__value_.__r.__words[0];
    operator delete(v31.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v32.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v32.__r_.__value_.__l.__data_);
  }

  return Function;
}

void sub_2579F569C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a35 < 0)
  {
    operator delete(a30);
  }

  _Unwind_Resume(exception_object);
}

void MTLFragmentInputPackingPass::fragmentInputPacking(int a1, llvm::Type **this, uint64_t a3)
{
  v141[10] = *MEMORY[0x277D85DE8];
  v4 = *this;
  *&v135 = "air.fragment";
  LOWORD(v137) = 259;
  NamedMetadata = llvm::Module::getNamedMetadata(this, &v135);
  Operand = llvm::NamedMDNode::getOperand(NamedMetadata);
  v7 = (Operand - 8 * *(Operand + 8));
  v8 = v7[2];
  v9 = *(*v7 + 128);
  v10 = *(v9 + 3);
  __p = 0;
  v132 = 0;
  v133 = 0;
  v128 = 0;
  v129 = 0;
  v130 = 0;
  __src = 0;
  v126 = 0;
  v127 = 0;
  if (v8)
  {
    std::vector<unsigned int>::vector[abi:ne200100](&v124, *(v9 + 12));
    MTLFrameworkPass::getArgumentMetadataIndices(v8, &v124);
    v118 = v10;
    v114 = this;
    if (*(v9 + 9))
    {
      llvm::Function::BuildLazyArguments(v9);
    }

    v11 = 0;
    v116 = 0;
    for (i = *(v9 + 11); ; i += 40)
    {
      if (*(v9 + 9))
      {
        llvm::Function::BuildLazyArguments(v9);
      }

      if (i == *(v9 + 11) + 40 * *(v9 + 12))
      {
        v42 = 126 - 2 * __clz((v132 - __p) >> 5);
        if (v132 == __p)
        {
          v43 = 0;
        }

        else
        {
          v43 = v42;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,VaryingInfo *,false>(__p, v132, &v135, v43, 1);
        v117 = v9;
        if (((v132 - __p) & 0x1FFFFFFFE0) != 0)
        {
          v44 = 0;
          v45 = ((v132 - __p) >> 5);
          do
          {
            v46 = __p + 32 * v44;
            v47 = v128;
            v48 = v129;
            ComponentType = MTLDataTypeGetComponentType(*(v46 + 6));
            ComponentCount = MTLDataTypeGetComponentCount(*(v46 + 6));
            v51 = 0xAAAAAAAAAAAAAAABLL * ((v48 - v47) >> 3);
            v52 = v46[28];
            v53 = v51;
            v54 = (v52 & 0x38) == 0x20 || v51 == 0;
            v9 = v117;
            if (v54)
            {
LABEL_73:
              v58 = *(*(v118 + 16) + 8 * (*v46 + 1));
              if ((*(v58 + 8) & 0xFE) == 0x12)
              {
                v58 = **(v58 + 16);
              }

              v59 = v129;
              if (v129 >= v130)
              {
                v61 = 0xAAAAAAAAAAAAAAABLL * ((v129 - v128) >> 3);
                v62 = v61 + 1;
                if (v61 + 1 > 0xAAAAAAAAAAAAAAALL)
                {
                  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
                }

                if (0x5555555555555556 * ((v130 - v128) >> 3) > v62)
                {
                  v62 = 0x5555555555555556 * ((v130 - v128) >> 3);
                }

                if (0xAAAAAAAAAAAAAAABLL * ((v130 - v128) >> 3) >= 0x555555555555555)
                {
                  v63 = 0xAAAAAAAAAAAAAAALL;
                }

                else
                {
                  v63 = v62;
                }

                if (v63)
                {
                  std::__allocate_at_least[abi:ne200100]<std::allocator<PackedInput>>(&v128, v63);
                }

                v65 = 8 * ((v129 - v128) >> 3);
                *v65 = ComponentType;
                *(v65 + 2) = ComponentCount;
                *(v65 + 4) = 1;
                *(v65 + 6) = v44;
                *(v65 + 16) = v58;
                v60 = 24 * v61 + 24;
                v66 = (24 * v61 - (v129 - v128));
                memcpy(v66, v128, v129 - v128);
                v67 = v128;
                v128 = v66;
                v129 = v60;
                v130 = 0;
                if (v67)
                {
                  operator delete(v67);
                }

                v9 = v117;
              }

              else
              {
                *v129 = ComponentType;
                *(v59 + 1) = ComponentCount;
                *(v59 + 2) = 1;
                *(v59 + 3) = v44;
                v60 = (v59 + 24);
                *(v59 + 2) = v58;
              }

              v129 = v60;
            }

            else
            {
              v55 = (v128 + 6);
              while (1)
              {
                v56 = *(v55 - 2);
                v57 = (v56 + ComponentCount) <= 4 && ComponentType == *(v55 - 3);
                if (v57 && ((v52 ^ *(__p + 32 * *v55 + 28)) & 0x3E) == 0)
                {
                  break;
                }

                v55 += 12;
                if (!--v53)
                {
                  goto LABEL_73;
                }
              }

              *(v55 - 2) = v56 + ComponentCount;
              v64 = *(v55 - 1);
              v55[v64] = v44;
              *(v55 - 1) = v64 + 1;
            }

            ++v44;
          }

          while (v44 != v45);
        }

        v122 = 0;
        v123 = 0;
        v121 = 0;
        std::vector<MTLOpaqueObject *>::reserve(&v121, (*(v118 + 12) - 1));
        v120 = *(v9 + 14);
        v140[0] = v141;
        v140[1] = 0xA00000000;
        memset(v119, 0, sizeof(v119));
        std::vector<MTLOpaqueObject *>::reserve(v119, (*(v118 + 12) - 1));
        v113 = 0xAAAAAAAAAAAAAAABLL * ((v129 - v128) >> 3);
        if (v113)
        {
          v68 = 0;
          v69 = 16;
          do
          {
            v70 = v128;
            v71 = __p + 32 * *(v128 + v69 - 10);
            v72 = *(v128 + v69 - 14);
            v73 = MTLDataTypeGetComponentType(*(v71 + 6));
            v74 = *&v70[v69];
            if (v72 >= 2 && (v71[28] & 0x38) != 0x20)
            {
              v74 = llvm::VectorType::get();
            }

            v75 = v122;
            if (v122 >= v123)
            {
              v77 = (v122 - v121) >> 3;
              if ((v77 + 1) >> 61)
              {
                std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
              }

              v78 = (v123 - v121) >> 2;
              if (v78 <= v77 + 1)
              {
                v78 = v77 + 1;
              }

              if (v123 - v121 >= 0x7FFFFFFFFFFFFFF8)
              {
                v79 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v79 = v78;
              }

              if (v79)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v121, v79);
              }

              v80 = (8 * v77);
              *v80 = v74;
              v76 = 8 * v77 + 8;
              v81 = v80 - (v122 - v121);
              memcpy(v81, v121, v122 - v121);
              v82 = v121;
              v121 = v81;
              v122 = v76;
              v123 = 0;
              if (v82)
              {
                operator delete(v82);
              }
            }

            else
            {
              *v122 = v74;
              v76 = (v75 + 8);
            }

            v122 = v76;
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v140, 0);
            ShaderTypeName = MTLDataTypeGetShaderTypeName(v73, v72);
            v139 = 0;
            v137 = 0u;
            v138 = 0u;
            v135 = 0u;
            v136 = 0u;
            llvm::Type::getInt32Ty(v4, v84);
            llvm::ConstantInt::get();
            *&v135 = llvm::ValueAsMetadata::get();
            *(&v135 + 1) = llvm::MDString::get();
            *&v136 = llvm::MDString::get();
            *(&v136 + 1) = llvm::MDString::get();
            llvm::Type::getInt32Ty(v4, v85);
            llvm::ConstantInt::get();
            *&v137 = llvm::ValueAsMetadata::get();
            *(&v137 + 1) = llvm::MDString::get();
            strlen(ShaderTypeName);
            *&v138 = llvm::MDString::get();
            v86 = MTLFrameworkPass::samplingStringFromQualifier(((v71[28] >> 3) & 7));
            strlen(v86);
            *(&v138 + 1) = llvm::MDString::get();
            v87 = MTLFrameworkPass::interpolationStringFromQualifier(((v71[28] >> 1) & 3));
            strlen(v87);
            v139 = llvm::MDString::get();
            Impl = llvm::MDTuple::getImpl();
            std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](v119, &Impl);
            ++v68;
            v69 += 24;
          }

          while (v113 != v68);
        }

        if (((v126 - __src) & 0x3FFFFFFFCLL) != 0)
        {
          v88 = 0;
          v89 = ((v126 - __src) >> 2);
          do
          {
            v90 = *(__src + v88);
            v91 = *(*(v118 + 16) + 8 * (v90 + 1));
            v92 = v122;
            if (v122 >= v123)
            {
              v94 = (v122 - v121) >> 3;
              if ((v94 + 1) >> 61)
              {
                std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
              }

              v95 = (v123 - v121) >> 2;
              if (v95 <= v94 + 1)
              {
                v95 = v94 + 1;
              }

              if (v123 - v121 >= 0x7FFFFFFFFFFFFFF8)
              {
                v96 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v96 = v95;
              }

              if (v96)
              {
                std::__allocate_at_least[abi:ne200100]<std::allocator<llvm::Type *>>(&v121, v96);
              }

              v97 = (8 * v94);
              *v97 = v91;
              v93 = 8 * v94 + 8;
              v98 = v97 - (v122 - v121);
              memcpy(v98, v121, v122 - v121);
              v99 = v121;
              v121 = v98;
              v122 = v93;
              v123 = 0;
              if (v99)
              {
                operator delete(v99);
              }
            }

            else
            {
              *v122 = v91;
              v93 = (v92 + 8);
            }

            v122 = v93;
            ParamAttrs = llvm::compat::getParamAttrs(&v120, v90);
            llvm::SmallVectorTemplateBase<llvm::Metadata *,true>::push_back(v140, ParamAttrs);
            v101 = *(v8 - 8 * *(v8 + 8) + 8 * *(v124 + v90));
            if (v101)
            {
              v102 = *(v101 + 8);
              std::vector<llvm::Metadata *>::vector[abi:ne200100](&v135, v102);
              llvm::Type::getInt32Ty(v4, v103);
              llvm::ConstantInt::get();
              *v135 = llvm::ValueAsMetadata::get();
              if (v102 >= 2)
              {
                v104 = v101 - 8 * *(v101 + 8);
                v105 = 8;
                do
                {
                  *(v135 + v105) = *(v104 + v105);
                  v105 += 8;
                }

                while (8 * v102 != v105);
              }

              v106 = llvm::MDTuple::getImpl();
              if (v135)
              {
                *(&v135 + 1) = v135;
                operator delete(v135);
              }
            }

            else
            {
              v106 = 0;
            }

            *&v135 = v106;
            std::vector<llvm::CallGraphNode *>::push_back[abi:ne200100](v119, &v135);
            ++v88;
          }

          while (v88 != v89);
        }

        v107 = llvm::FunctionType::get();
        *(v117 + 8) = *(v117 + 8) & 0xFFFFBFC0 | 0x4007;
        *&v135 = "air.packedFragmentFunction";
        LOWORD(v137) = 259;
        v108 = llvm::Function::Create(v107, 0, &v135, v114);
        llvm::Function::getContext(v117);
        llvm::compat::getFnAttrs(&v120, v109);
        llvm::compat::getRetAttrs(&v120, v110);
        *(v108 + 14) = llvm::AttributeList::get();
        *&v135 = "Body";
        LOWORD(v137) = 259;
        llvm::BasicBlock::Create(v4, &v135, v108, 0, v111);
      }

      v13 = *(v124 + v11);
      if (v13 != -1)
      {
        v14 = *(v8 - 8 * *(v8 + 8) + 8 * v13);
        String = llvm::MDString::getString(*(v14 - 8 * *(v14 + 8) + 8));
        if (v16 > 23)
        {
          if (v16 == 24)
          {
            if (memcmp(String, "air.viewport_array_index", 0x18uLL))
            {
              goto LABEL_32;
            }
          }

          else
          {
            if (v16 != 29 || memcmp(String, "air.render_target_array_index", 0x1DuLL))
            {
              goto LABEL_32;
            }

            dataTypeFromMetadata(2u, v14);
          }

          LODWORD(v116) = v116 + 1;
          v22 = HIDWORD(v116) + 1;
LABEL_31:
          HIDWORD(v116) = v22;
LABEL_32:
          v23 = v126;
          if (v126 >= v127)
          {
            v25 = __src;
            v26 = v126 - __src;
            v27 = (v126 - __src) >> 2;
            v28 = v27 + 1;
            if ((v27 + 1) >> 62)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v29 = v127 - __src;
            if ((v127 - __src) >> 1 > v28)
            {
              v28 = v29 >> 1;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v30 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            if (v30)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned int>>(&__src, v30);
            }

            *(4 * v27) = v11;
            v24 = 4 * v27 + 4;
            memcpy(0, v25, v26);
            v31 = __src;
            __src = 0;
            v126 = v24;
            v127 = 0;
            if (v31)
            {
              operator delete(v31);
            }
          }

          else
          {
            *v126 = v11;
            v24 = (v23 + 4);
          }

          v126 = v24;
          goto LABEL_45;
        }

        if (v16 == 15)
        {
          if (!memcmp(String, "air.point_coord", 0xFuLL))
          {
            LODWORD(v116) = v116 + 1;
            v22 = HIDWORD(v116) + 2;
            goto LABEL_31;
          }

          goto LABEL_32;
        }

        if (v16 != 18)
        {
          goto LABEL_32;
        }

        v17 = *String == 0x676172662E726961 && String[1] == 0x706E695F746E656DLL;
        if (!v17 || *(String + 8) != 29813)
        {
          goto LABEL_32;
        }

        if (*(i + 8))
        {
          LODWORD(v135) = 0;
          *(&v135 + 1) = 0;
          *&v136 = 0;
          *(&v136 + 5) = 0;
          MTLFrameworkPass::extractVaryingInfoFromMetadata(&v135, v14, 2u, 0);
          LODWORD(v135) = v11;
          BYTE12(v136) |= 1u;
          v19 = v132;
          if (v132 >= v133)
          {
            v32 = __p;
            v33 = v132 - __p;
            v34 = (v132 - __p) >> 5;
            v35 = v34 + 1;
            if ((v34 + 1) >> 59)
            {
              std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
            }

            v36 = v133 - __p;
            if ((v133 - __p) >> 4 > v35)
            {
              v35 = v36 >> 4;
            }

            if (v36 >= 0x7FFFFFFFFFFFFFE0)
            {
              v35 = 0x7FFFFFFFFFFFFFFLL;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<VaryingInfo>>(&__p, v35);
            }

            v37 = (v132 - __p) >> 5;
            v38 = (32 * v34);
            v39 = v136;
            *v38 = v135;
            v38[1] = v39;
            v21 = (32 * v34 + 32);
            v40 = (32 * v34 - 32 * v37);
            memcpy(&v38[-2 * v37], v32, v33);
            v41 = __p;
            __p = v40;
            v132 = v21;
            v133 = 0;
            if (v41)
            {
              operator delete(v41);
            }
          }

          else
          {
            v20 = v136;
            *v132 = v135;
            *(v19 + 1) = v20;
            v21 = (v19 + 32);
          }

          v132 = v21;
          LODWORD(v116) = v116 + 1;
          HIDWORD(v116) += MTLDataTypeGetComponentCount(SDWORD2(v136));
        }
      }

LABEL_45:
      ++v11;
    }
  }

  *&v135 = this;
  LODWORD(v140[0]) = 0;
  LODWORD(Impl) = 0;
  LODWORD(v124) = 0;
  v112 = *(a3 + 24);
  if (!v112)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  (*(*v112 + 48))(v112, &v135, v140, &Impl, &v124, &v128, &__p);
  if (__src)
  {
    v126 = __src;
    operator delete(__src);
  }

  if (v128)
  {
    v129 = v128;
    operator delete(v128);
  }

  if (__p)
  {
    v132 = __p;
    operator delete(__p);
  }
}

void sub_2579F68F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, void *a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, uint64_t a37, uint64_t a38, void *a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, void *a59, uint64_t a60)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a32)
  {
    operator delete(a32);
  }

  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(&a59);
  if (a35)
  {
    operator delete(a35);
  }

  v62 = *(v60 - 200);
  if (v62 != a17)
  {
    free(v62);
  }

  if (a39)
  {
    operator delete(a39);
  }

  if (a42)
  {
    operator delete(a42);
  }

  if (a45)
  {
    operator delete(a45);
  }

  if (a48)
  {
    operator delete(a48);
  }

  if (a51)
  {
    operator delete(a51);
  }

  _Unwind_Resume(a1);
}

uint64_t llvm::IRBuilderBase::CreateShuffleVector(llvm::IRBuilderBase *this, llvm::Value *a2, llvm::Value *a3, llvm::Value *a4, const llvm::Twine *a5)
{
  v10[8] = *MEMORY[0x277D85DE8];
  llvm::ShuffleVectorInst::getShuffleMask();
  return llvm::IRBuilderBase::CreateShuffleVector(this, a2, a3, v10, 0, a5);
}

void sub_2579F6B98(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10 != v10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::IRBuilderBase::CreateShuffleVector(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!a2 || *(a2 + 16) > 0x14u || !a3 || *(a3 + 16) > 0x14u)
  {
    v15 = llvm::User::operator new(0x68);
    v17 = 257;
    MEMORY[0x259C6A980](v15, a2, a3, a4, a5, v16, 0);
    return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v15, a6);
  }

  v12 = (*(**(a1 + 72) + 336))(*(a1 + 72), a2, a3, a4, a5);
  if (v12)
  {
    v13 = *(v12 + 16) >= 0x1Cu;
  }

  else
  {
    v13 = 0;
  }

  if (!v13)
  {
    return v12;
  }

  return llvm::IRBuilderBase::Insert<llvm::CastInst>(a1, v12, a6);
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<PackedInput>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0xAAAAAAAAAAAAAABLL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t *std::vector<llvm::Argument *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2579F6DC4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<llvm::Constant *>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<llvm::Type *>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_2579F6E3C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

BOOL isPatchControlPointInputUnused(uint64_t a1)
{
  v1 = *(a1 - 8 * *(a1 + 8) + 8 * (*(a1 + 8) - 1));
  if (*v1)
  {
    return 0;
  }

  String = llvm::MDString::getString(v1);
  if (v3 != 14)
  {
    return 0;
  }

  return *String == 0x5F6772612E726961 && *(String + 6) == 0x646573756E755F67;
}

char *MTLCompilerErrorObject::setErrorMessage(MTLCompilerErrorObject *this, const char *__s1)
{
  result = strdup(__s1);
  *this = result;
  return result;
}

void createDebugInfoForWrapperFunction(uint64_t a1, llvm::IRBuilderBase *a2, llvm::Value *a3, llvm::Function *this)
{
  Subprogram = llvm::Function::getSubprogram(this);
  if (Subprogram)
  {
    v8 = Subprogram;
    v9 = *(Subprogram - 8 * *(Subprogram + 8) + 8);
    Name = llvm::Value::getName(a3);
    v12 = *(v8 + 8);
    v13 = *v8 == 15 ? v8 : *(v8 - 8 * v12);
    v14 = (v8 - 8 * v12);
    v15 = v12 < 9 ? 0 : v14[8];
    Impl = llvm::DISubprogram::getImpl(a1, v9, Name, v10, 0, 0, v13, 0, v14[4], 0, v15, 0, 0x1C00000140, v14[5], 0, 0, 0, 0, 0, &unk_257A6F51A, 0);
    llvm::Function::setSubprogram();
    llvm::IRBuilderBase::getCurrentDebugLocation(&v21, a2);
    v17 = v21;
    llvm::TrackingMDRef::~TrackingMDRef(&v21);
    if (Impl && v17 == 0)
    {
      llvm::DebugLoc::get();
      v20 = v21;
      if (v21)
      {
        llvm::MetadataTracking::track();
        v19 = v20;
      }

      else
      {
        v19 = 0;
      }

      llvm::IRBuilderBase::AddOrRemoveMetadataToCopy(a2, 0, v19);
      llvm::TrackingMDRef::~TrackingMDRef(&v20);
      llvm::TrackingMDRef::~TrackingMDRef(&v21);
    }
  }
}

uint64_t parseControlPointInputMetadata(uint64_t result, uint64_t a2)
{
  *a2 = *a2 & 0xFFFFB005 | 0x407A;
  v2 = *(result + 8);
  if (v2)
  {
    v4 = result;
    for (i = 0; i < v2; ++i)
    {
      result = *(v4 - 8 * *(v4 + 8) + 8 * i);
      if (!*result)
      {
        result = llvm::MDString::getString(result);
        if (v6 > 16)
        {
          if (v6 == 17)
          {
            result = memcmp(result, "air.arg_type_name", 0x11uLL);
            if (!result)
            {
              result = llvm::MDString::getString(*(v4 - 8 * *(v4 + 8) + 8 * ++i));
              *(a2 + 32) = result;
              *(a2 + 40) = v15;
            }
          }

          else if (v6 == 18)
          {
            v7 = *result == 0x61636F6C2E726961 && *(result + 8) == 0x646E695F6E6F6974;
            if (v7 && *(result + 16) == 30821)
            {
              v9 = v4 - 8 * *(v4 + 8);
              v10 = *(*(v9 + 8 * (i + 1)) + 128);
              v11 = (v10 + 24);
              if (*(v10 + 32) >= 0x41u)
              {
                v11 = *v11;
              }

              *(a2 + 4) = *v11;
              i += 2;
              v12 = *(*(v9 + 8 * i) + 128);
              v13 = (v12 + 24);
              if (*(v12 + 32) >= 0x41u)
              {
                v13 = *v13;
              }

              *(a2 + 8) = *v13;
            }
          }
        }

        else if (v6 == 12)
        {
          result = memcmp(result, "air.arg_name", 0xCuLL);
          if (!result)
          {
            result = llvm::MDString::getString(*(v4 - 8 * *(v4 + 8) + 8 * ++i));
            *(a2 + 16) = result;
            *(a2 + 24) = v14;
          }
        }

        else if (v6 == 14)
        {
          result = memcmp(result, "air.arg_unused", 0xEuLL);
          if (!result)
          {
            *a2 &= ~8u;
          }
        }
      }
    }
  }

  return result;
}

unint64_t parseArgumentMetadata(int *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, int a6, uint64_t *a7, int a8)
{
  if (atomic_load_explicit(&buildInMetadataSetOnce, memory_order_acquire) != -1)
  {
    __p[0] = &v116;
    v119[0] = __p;
    std::__call_once(&buildInMetadataSetOnce, v119, std::__call_once_proxy[abi:ne200100]<std::tuple<parseArgumentMetadata(MTLArgumentData &,llvm::MDNode *,llvm::Value *,MTLCompilerArgumentAccess,llvm::DataLayout const&,BOOL,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo> *,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo> *>> &,MTLFunctionTypeIndex)::$_0 &&>>);
  }

  if (a3)
  {
    v13 = 8 * (*(a3 + 8) != 0);
  }

  else
  {
    v13 = 8;
  }

  v14 = *(a2 + 8);
  v15 = *a1 & 0xFFFFEFF1;
  *(a1 + 12) = 0;
  *(a1 + 13) = a2;
  *a1 = v15 | v13;
  String = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * (a6 ^ 1u)));
  v119[0] = String;
  v119[1] = v17;
  if (a6)
  {
    v18 = 1;
  }

  else
  {
    v18 = 2;
  }

  v19 = String;
  v20 = v17;
  switch(v17)
  {
    case 8uLL:
LABEL_10:
      if (memcmp(String, "air.mesh", v17))
      {
        goto LABEL_94;
      }

      *a1 |= 4u;
      a1[3] = 24;
      parseMeshStruct(a1, *(a2 - 8 * *(a2 + 8) + 8 * v18));
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 16;
      break;
    case 9uLL:
LABEL_43:
      if (!memcmp(String, "air.byval", v17))
      {
        goto LABEL_239;
      }

      goto LABEL_94;
    case 0xAuLL:
LABEL_52:
      if (*String != 0x666675622E726961 || *(String + 4) != 29285)
      {
        goto LABEL_94;
      }

      goto LABEL_238;
    case 0xBuLL:
LABEL_69:
      if (!memcmp(String, "air.texture", v17))
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        v24 = 1;
      }

      else if (*v19 == 0x706D61732E726961 && *(v19 + 3) == 0x72656C706D61732ELL)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        v24 = 2;
      }

      else
      {
        if (memcmp(v19, "air.payload", v20))
        {
          goto LABEL_94;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v24 = 15;
        v115 = 1;
      }

      break;
    case 0xCuLL:
LABEL_76:
      if (!memcmp(String, "air.constant", v17))
      {
LABEL_239:
        v21 = 0;
        v22 = 0;
        v115 = 0;
        v24 = 9;
        v23 = 1;
        break;
      }

      if (*v19 != 0x676174732E726961 || *(v19 + 2) != 1852399461)
      {
        goto LABEL_94;
      }

LABEL_82:
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v38 = *a1 | 2;
LABEL_90:
      *a1 = v38;
      goto LABEL_98;
    case 0xEuLL:
LABEL_58:
      if (memcmp(String, "air.imageblock", v17))
      {
        goto LABEL_94;
      }

      v32 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * v18));
      if (v33 != 8)
      {
        goto LABEL_258;
      }

      v18 = a6 ^ 1 | 2;
      if (*v32 == 0x746963696C706D69)
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        a1[46] = 0;
      }

      else
      {
        if (*v32 != 0x746963696C707865)
        {
LABEL_258:
          abort();
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        a1[46] = 1;
      }

      v24 = 5;
      break;
    case 0xFuLL:
      if (*String != 0x637461702E726961 || *(String + 7) != 0x7475706E695F6863)
      {
        goto LABEL_94;
      }

      *a1 |= 0x2000u;
      goto LABEL_82;
    case 0x10uLL:
      if (*String != 0x747265762E726961 || String[1] != 0x7475706E695F7865)
      {
        goto LABEL_94;
      }

      goto LABEL_82;
    case 0x12uLL:
LABEL_86:
      if (!memcmp(String, "air.command_buffer", v17))
      {
        goto LABEL_237;
      }

      if (memcmp(v19, "air.fragment_input", v20))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v34 = *a1;
      v35 = 32770;
      goto LABEL_89;
    case 0x13uLL:
LABEL_83:
      if (!memcmp(String, "air.indirect_buffer", v17))
      {
LABEL_238:
        v22 = 0;
        v23 = 0;
        v115 = 0;
        v24 = 0;
        v21 = 1;
      }

      else
      {
        if (memcmp(v19, "air.imageblock_data", v20))
        {
          goto LABEL_94;
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        v24 = 4;
      }

      break;
    case 0x14uLL:
      if (*String == 0x6C706D612E726961 && String[1] == 0x6F69746163696669 && *(String + 4) == 1684627310)
      {
        goto LABEL_42;
      }

LABEL_19:
      if (!memcmp(String, "air.function_pointer", v17))
      {
        goto LABEL_258;
      }

      goto LABEL_94;
    case 0x15uLL:
LABEL_47:
      if (memcmp(String, "air.indirect_constant", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 3;
      v22 = 1;
      break;
    case 0x17uLL:
      if (*String == 0x6C706D612E726961 && String[1] == 0x6F69746163696669 && *(String + 15) == 0x746E756F635F6E6FLL)
      {
LABEL_42:
        *a1 |= 8u;
        switch(v17)
        {
          case 8uLL:
            goto LABEL_10;
          case 9uLL:
            goto LABEL_43;
          case 0xAuLL:
            goto LABEL_52;
          case 0xBuLL:
            goto LABEL_69;
          case 0xCuLL:
            goto LABEL_76;
          case 0xEuLL:
            goto LABEL_58;
          case 0x12uLL:
            goto LABEL_86;
          case 0x13uLL:
            goto LABEL_83;
          case 0x14uLL:
            goto LABEL_19;
          case 0x15uLL:
            goto LABEL_47;
          case 0x17uLL:
            break;
          case 0x19uLL:
            goto LABEL_63;
          case 0x1AuLL:
            goto LABEL_49;
          case 0x1BuLL:
            goto LABEL_45;
          case 0x1DuLL:
            goto LABEL_65;
          case 0x1FuLL:
            goto LABEL_67;
          case 0x23uLL:
            goto LABEL_93;
          case 0x24uLL:
            goto LABEL_91;
          default:
            goto LABEL_94;
        }
      }

      if (memcmp(String, "air.depth_stencil_state", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 17;
      break;
    case 0x19uLL:
LABEL_63:
      if (memcmp(String, "air.render_pipeline_state", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 7;
      break;
    case 0x1AuLL:
LABEL_49:
      if (!memcmp(String, "air.compute_pipeline_state", v17))
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        v24 = 6;
      }

      else if (!memcmp(v19, "air.visible_function_table", v20))
      {
        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        v24 = 11;
      }

      else
      {
LABEL_94:
        v39 = buildInMetadataSet;
        llvm::StringRef::str(v119, __p);
        v40 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v39, __p);
        if (v118 < 0)
        {
          operator delete(__p[0]);
        }

        v21 = 0;
        v22 = 0;
        v23 = 0;
        v115 = 0;
        if (buildInMetadataSet + 8 != v40)
        {
          *a1 |= 4u;
          a1[3] = *(v40 + 56);
        }

LABEL_98:
        v24 = 18;
      }

      break;
    case 0x1BuLL:
LABEL_45:
      if (memcmp(String, "air.indirect_command_buffer", v17))
      {
        goto LABEL_94;
      }

LABEL_237:
      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 8;
      break;
    case 0x1DuLL:
LABEL_65:
      if (memcmp(String, "air.patch_control_point_input", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      *(a1 + 12) = a2;
      v34 = *a1;
      v35 = 16386;
LABEL_89:
      v38 = v34 | v35;
      goto LABEL_90;
    case 0x1FuLL:
LABEL_67:
      if (memcmp(String, "air.intersection_function_table", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 12;
      break;
    case 0x23uLL:
LABEL_93:
      if (memcmp(String, "air.instance_acceleration_structure", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 14;
      break;
    case 0x24uLL:
LABEL_91:
      if (memcmp(String, "air.primitive_acceleration_structure", v17))
      {
        goto LABEL_94;
      }

      v21 = 0;
      v22 = 0;
      v23 = 0;
      v115 = 0;
      v24 = 13;
      break;
    default:
      goto LABEL_94;
  }

  result = *(a1 + 12);
  if (result)
  {
    result = isPatchControlPointInputUnused(result);
    v42 = (*(*(a1 + 12) + 8) - result);
    if (result)
    {
      *a1 &= ~8u;
    }

    if (v18 < v42)
    {
      v114 = v23;
      v43 = v22;
      v44 = v21;
      v45 = a8;
      v46 = v18;
      do
      {
        v47 = *(*(a1 + 12) - 8 * *(*(a1 + 12) + 8) + 8 * v46);
        v48 = *(v47 + 8);
        v49 = v47;
        if (v48)
        {
          do
          {
            result = *(v49 - 8 * *(v47 + 8));
            if (result && !*result)
            {
              result = llvm::MDString::getString(result);
            }

            v49 += 8;
            --v48;
          }

          while (v48);
        }

        ++v46;
      }

      while (v46 != v42);
      v50 = 0;
      v51 = 1;
      v52 = 1;
      v53 = 1;
      a8 = v45;
      v21 = v44;
      v22 = v43;
      v23 = v114;
      goto LABEL_191;
    }

    v50 = 0;
    v51 = 1;
LABEL_190:
    v52 = 1;
    v53 = 1;
LABEL_191:
    v88 = v115;
    goto LABEL_192;
  }

  v51 = 1;
  if (v18 >= v14)
  {
    v50 = 0;
    goto LABEL_190;
  }

  v106 = v22;
  v107 = v21;
  v108 = a8;
  v109 = 0;
  v110 = 0;
  v54 = 0;
  do
  {
    result = *(a2 - 8 * *(a2 + 8) + 8 * v18);
    v55 = v18 + 1;
    if (!*result)
    {
      result = llvm::MDString::getString(result);
      v57 = result;
      v58 = v56;
      switch(v56)
      {
        case 8uLL:
          v59 = "air.read";
          goto LABEL_143;
        case 9uLL:
          result = memcmp(result, "air.write", v56);
          v67 = HIDWORD(v110);
          if (!result)
          {
            v67 = 1;
          }

          goto LABEL_172;
        case 0xAuLL:
          v59 = "air.sample";
          goto LABEL_143;
        case 0xBuLL:
        case 0xFuLL:
        case 0x10uLL:
        case 0x13uLL:
        case 0x16uLL:
        case 0x19uLL:
        case 0x1AuLL:
        case 0x1BuLL:
        case 0x1CuLL:
          break;
        case 0xCuLL:
          if (*result == 0x5F6772612E726961 && *(result + 8) == 1701667182)
          {
            v74 = *(a2 - 8 * *(a2 + 8) + 8 * v55);
            v55 = v18 + 2;
            result = llvm::MDString::getString(v74);
            *(a1 + 2) = result;
            *(a1 + 3) = v75;
          }

          break;
        case 0xDuLL:
          v59 = "air.read_only";
LABEL_143:
          result = memcmp(result, v59, v58);
          if (!result)
          {
            v54 = 1;
          }

          break;
        case 0xEuLL:
          result = memcmp(result, "air.write_only", v56);
          if (result)
          {
            if (*v57 == 0x646165722E726961 && *(v57 + 6) == 0x65746972775F6461)
            {
              LODWORD(v110) = 1;
            }

            else
            {
              result = memcmp(v57, "air.arg_unused", v58);
              if (!result)
              {
                *a1 &= ~8u;
              }
            }
          }

          else
          {
            v67 = 1;
LABEL_172:
            HIDWORD(v110) = v67;
          }

          break;
        case 0x11uLL:
          if (!memcmp(result, "air.arg_type_name", v56))
          {
            v80 = *(a2 - 8 * *(a2 + 8) + 8 * v55);
            v55 = v18 + 2;
            result = llvm::MDString::getString(v80);
            *(a1 + 4) = result;
            *(a1 + 5) = v81;
          }

          else
          {
            result = memcmp(v57, "air.arg_type_size", v58);
            if (result)
            {
              result = memcmp(v57, "air.address_space", v58);
              if (!result)
              {
                v76 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
                v77 = (v76 + 24);
                if (*(v76 + 32) >= 0x41u)
                {
                  v77 = *v77;
                }

                v109 = *v77;
              }
            }

            else
            {
              v83 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
              v84 = (v83 + 24);
              if (*(v83 + 32) >= 0x41u)
              {
                v84 = *v84;
              }

              a1[14] = *v84;
LABEL_187:
              v55 = v18 + 2;
            }
          }

          break;
        case 0x12uLL:
          result = memcmp(result, "air.location_index", v56);
          if (!result)
          {
            v68 = a2 - 8 * *(a2 + 8);
            v69 = *(*(v68 + 8 * v55) + 128);
            if (*(v69 + 16) == 16)
            {
              v70 = (v69 + 24);
              if (*(v69 + 32) >= 0x41u)
              {
                v70 = *v70;
              }

              v71 = *v70;
            }

            else
            {
              v71 = -1;
            }

            a1[1] = v71;
            v85 = *(*(v68 + 8 * (v18 + 2)) + 128);
            if (*(v85 + 16) == 16)
            {
              v86 = (v85 + 24);
              if (*(v85 + 32) >= 0x41u)
              {
                v86 = *v86;
              }

              v87 = *v86;
            }

            else
            {
              v87 = -1;
            }

            a1[2] = v87;
            v55 = v18 + 3;
          }

          break;
        case 0x14uLL:
          result = memcmp(result, "air.struct_type_info", v56);
          if (!result)
          {
            v116 = *(a2 - 8 * *(a2 + 8) + 8 * v55);
            __p[0] = v116;
            v55 = v18 + 2;
            *(a1 + 9) = v116;
            v119[0] = 0;
            result = llvm::DenseMapBase<llvm::DenseMap<llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>,llvm::CallGraphNode *,unsigned int,llvm::DenseMapInfo<llvm::CallGraphNode *,void>,llvm::detail::DenseMapPair<llvm::CallGraphNode *,unsigned int>>::LookupBucketFor<llvm::CallGraphNode *>(a7, __p, v119);
            if ((result & 1) == 0 || (v79 = *(v119[0] + 1)) == 0)
            {
              v82 = *(a1 + 20);
              llvm::DenseMapBase<llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>,llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::FindAndConstruct(a7, &v116)[1] = v82;
              parseStructTypeMetadata(v116, a5, a4, *(a1 + 20), a7);
            }

            *(a1 + 20) = v79;
          }

          break;
        case 0x15uLL:
          result = memcmp(result, "air.imageblock_master", v56);
          if (!result)
          {
            v72 = *(a2 - 8 * *(a2 + 8) + 8 * v55);
            *(a1 + 24) = v72;
            parseStructTypeMetadata(v72, a5, a4, (a1 + 50), a7);
          }

          break;
        case 0x17uLL:
          result = memcmp(result, "air.arg_type_align_size", v56);
          if (result)
          {
            break;
          }

          v65 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
          v66 = (v65 + 24);
          if (*(v65 + 32) >= 0x41u)
          {
            v66 = *v66;
          }

          a1[13] = *v66;
          goto LABEL_187;
        case 0x18uLL:
          result = memcmp(result, "air.imageblock_data_size", v56);
          if (result)
          {
            break;
          }

          v63 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
          v64 = (v63 + 24);
          if (*(v63 + 32) >= 0x41u)
          {
            v64 = *v64;
          }

          a1[47] = *v64;
          goto LABEL_187;
        case 0x1DuLL:
          result = memcmp(result, "air.alias_implicit_imageblock", v56);
          if (!result)
          {
            *(a1 + 224) = 1;
          }

          break;
        default:
          if (v56 != 43)
          {
            break;
          }

          result = memcmp(result, "air.alias_implicit_imageblock_render_target", 0x2BuLL);
          if (result)
          {
            break;
          }

          v60 = *(*(a2 - 8 * *(a2 + 8) + 8 * v55) + 128);
          if (*(v60 + 16) == 16)
          {
            v61 = (v60 + 24);
            if (*(v60 + 32) >= 0x41u)
            {
              v61 = *v61;
            }

            v62 = *v61;
          }

          else
          {
            v62 = -1;
          }

          a1[57] = v62;
          goto LABEL_187;
      }
    }

    v18 = v55;
  }

  while (v55 < v14);
  v53 = v110 == 0;
  v52 = HIDWORD(v110) == 0;
  v51 = v54 == 0;
  v21 = v107;
  a8 = v108;
  v22 = v106;
  v88 = v115;
  v50 = v109;
LABEL_192:
  if ((v21 | v22 | v23 | v88) == 1)
  {
    if (*(a1 + 9))
    {
      a1[12] = 1;
    }

    else
    {
      v89 = v50;
      v90 = v51;
      LODWORD(__p[0]) = 0;
      LODWORD(v119[0]) = 0;
      v91 = *(a1 + 4);
      if (v91)
      {
        v92 = strlen(*(a1 + 4));
        v93 = dataTypeFromString(v91, v92, __p, v119);
      }

      else
      {
        v93 = 0;
      }

      a1[12] = v93;
      if (!a1[13])
      {
        a1[13] = __p[0];
      }

      if (!a1[14])
      {
        a1[14] = v119[0];
      }

      v94 = *(a1 + 4);
      if (v94)
      {
        v95 = strlen(*(a1 + 4));
        result = pixelFormatAndALUTypeFromString(v94, v95);
        v96 = HIDWORD(result);
      }

      else
      {
        result = 0;
        LODWORD(v96) = 0;
      }

      a1[58] = result;
      a1[59] = v96;
      v51 = v90;
      v50 = v89;
    }
  }

  v97 = *a1;
  v98 = *a1 & 0xFFFFF00E;
  *a1 = v98 | 1;
  switch(v24)
  {
    case 0:
      if (v50 == 2)
      {
        v103 = 17;
      }

      else
      {
        if (v50 == 3)
        {
          v99 = 561;
          goto LABEL_252;
        }

        v103 = 33;
      }

      v104 = v98 | v103;
      *a1 = v104;
      v105 = v104 | 0x400;
      if (v52)
      {
        v105 = v104;
      }

      v102 = v104 | 0x200;
      if (v53)
      {
        v102 = v105;
      }

      goto LABEL_253;
    case 1:
      *a1 = v98 | 0x41;
      if (v53)
      {
        if (!v51)
        {
          return result;
        }

        v99 = 1089;
      }

      else
      {
        v99 = 577;
      }

      goto LABEL_252;
    case 2:
      v99 = 81;
      goto LABEL_252;
    case 3:
      v100 = ((a4 & 7) << 9) | 0x81;
      goto LABEL_235;
    case 4:
      v99 = 145;
      goto LABEL_252;
    case 5:
      v99 = 161;
      goto LABEL_252;
    case 6:
      v99 = 177;
      goto LABEL_252;
    case 7:
      v99 = 193;
      goto LABEL_252;
    case 8:
      v99 = 209;
      goto LABEL_252;
    case 9:
      v99 = 225;
      goto LABEL_252;
    case 11:
      v99 = 257;
      goto LABEL_252;
    case 12:
      v99 = 273;
      goto LABEL_252;
    case 13:
      v99 = 289;
      goto LABEL_252;
    case 14:
      v99 = 305;
      goto LABEL_252;
    case 15:
      *a1 = v98 | 0x151;
      if (!v53)
      {
        goto LABEL_228;
      }

      if (v52)
      {
        v101 = !v51;
        if (a8 != 6)
        {
          v101 = 1;
        }

        if (v101)
        {
          return result;
        }

LABEL_228:
        v99 = 849;
      }

      else
      {
        v99 = 1361;
      }

LABEL_252:
      v102 = v98 | v99;
LABEL_253:
      *a1 = v102;
      return result;
    case 16:
      v99 = 1376;
      goto LABEL_252;
    case 17:
      v99 = 369;
      goto LABEL_252;
    case 18:
      if ((v97 & 4) != 0)
      {
        v100 = 96;
      }

      else
      {
        v100 = 112;
      }

LABEL_235:
      v102 = v100 | v98;
      goto LABEL_253;
    default:
      return result;
  }
}

void sub_2579F8338(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void parseMeshStruct(uint64_t a1, uint64_t a2)
{
  if (atomic_load_explicit(&buildInMeshTopologySetOnce, memory_order_acquire) != -1)
  {
    __p[0] = &v20;
    v19[0] = __p;
    std::__call_once(&buildInMeshTopologySetOnce, v19, std::__call_once_proxy[abi:ne200100]<std::tuple<parseMeshStruct(MTLArgumentData &,llvm::MDNode *)::$_0 &&>>);
  }

  llvm::MDString::getString(*(a2 - 8 * *(a2 + 8)));
  v4 = a2 - 8 * *(a2 + 8);
  v5 = *(v4 + 8);
  v6 = *(v4 + 16);
  *(a1 + 80) = v5;
  *(a1 + 88) = v6;
  addMeshStructMembers(v5, *(a1 + 168));
  addMeshStructMembers(v6, *(a1 + 176));
  v7 = a2 - 8 * *(a2 + 8);
  v8 = *(*(v7 + 24) + 128);
  if (*(v8 + 16) == 16)
  {
    v9 = (v8 + 24);
    if (*(v8 + 32) >= 0x41u)
    {
      v9 = *v9;
    }

    v10 = *v9;
  }

  else
  {
    v10 = -1;
  }

  *(a1 + 60) = v10;
  v11 = *(*(v7 + 32) + 128);
  if (*(v11 + 16) == 16)
  {
    v12 = (v11 + 24);
    if (*(v11 + 32) >= 0x41u)
    {
      v12 = *v12;
    }

    v13 = *v12;
  }

  else
  {
    v13 = -1;
  }

  *(a1 + 64) = v13;
  v19[0] = llvm::MDString::getString(*(v7 + 40));
  v19[1] = v14;
  v15 = buildInMeshTopologySet;
  llvm::StringRef::str(v19, __p);
  v16 = std::__tree<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::tuple<Air::PixelFormat,std::string,MTLCompilerDataType>>>>::find<std::string>(v15, __p);
  if (v18 < 0)
  {
    operator delete(__p[0]);
  }

  *(a1 + 68) = *(v16 + 56);
}

void sub_2579F84C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void parseStructTypeMetadata(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = a3;
  operator new();
}

void sub_2579F8948(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  std::__function::__value_func<void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t vertexFetchBuiltInInfo(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = strlen(v4);
  LODWORD(v4) = dataTypeFromString(v4, v5);
  *(a1 + 4) = MTLDataTypeGetComponentType(v4);
  result = MTLDataTypeGetComponentCount(v4);
  *(a1 + 1) = result;
  v7 = *(a2 + 12) - 1;
  if (v7 <= 0x15 && ((0x30F01Bu >> v7) & 1) != 0)
  {
    *a1 = byte_257A6DB11[v7];
  }

  return result;
}

uint64_t MTLDataTypeGetComponentType(int a1)
{
  if ((a1 - 3) > 0x55)
  {
    return 0;
  }

  else
  {
    return dword_257A6DB28[a1 - 3];
  }
}

uint64_t MTLDataTypeGetComponentCount(int a1)
{
  if ((a1 - 3) > 0x55)
  {
    return 0;
  }

  else
  {
    return byte_257A6DC80[a1 - 3];
  }
}

uint64_t dataTypeFromMetadata(unsigned int a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = v2 - a1;
  if (v2 <= a1)
  {
    return 0;
  }

  v5 = a1 + 1;
  for (i = a2 + 8 * a1; ; i += 8)
  {
    v7 = *(i - 8 * *(a2 + 8));
    if (!*v7)
    {
      String = llvm::MDString::getString(v7);
      if (v9 == 17)
      {
        v10 = *String == 0x5F6772612E726961 && *(String + 8) == 0x6D616E5F65707974;
        if (v10 && *(String + 16) == 101)
        {
          break;
        }
      }
    }

    ++v5;
    if (!--v3)
    {
      return 0;
    }
  }

  v13 = llvm::MDString::getString(*(a2 - 8 * *(a2 + 8) + 8 * v5));
  v14 = strlen(v13);

  return dataTypeFromString(v13, v14);
}

uint64_t MTLDataTypeGetSignedType(uint64_t result)
{
  v1 = result - 33;
  if (result - 33) <= 0x17 && ((0xFF0F0Fu >> v1))
  {
    return dword_257A6DCD8[v1];
  }

  return result;
}

uint64_t MTLDataTypeGetVectorDataType(int a1, int a2)
{
  v2 = a2 - 1;
  if (a1 <= 40)
  {
    v3 = a2 + 28;
    if (v2 >= 4)
    {
      v3 = 0;
    }

    v10 = a2 + 32;
    if (v2 >= 4)
    {
      v10 = 0;
    }

    v11 = a2 + 36;
    if (v2 >= 4)
    {
      v11 = 0;
    }

    if (a1 != 37)
    {
      v11 = 0;
    }

    if (a1 != 33)
    {
      v10 = v11;
    }

    if (a1 != 29)
    {
      v3 = v10;
    }

    v12 = v2 >= 4;
    if (v2 >= 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = a2 + 2;
    }

    v13 = a2 + 15;
    if (v12)
    {
      v13 = 0;
    }

    if (a1 != 16)
    {
      v13 = 0;
    }

    if (a1 != 3)
    {
      v8 = v13;
    }

    v9 = a1 <= 28;
  }

  else
  {
    v3 = a2 + 52;
    if (v2 >= 4)
    {
      v3 = 0;
    }

    v4 = a2 + 80;
    if (v2 >= 4)
    {
      v4 = 0;
    }

    v5 = a2 + 84;
    if (v2 >= 4)
    {
      v5 = 0;
    }

    if (a1 != 85)
    {
      v5 = 0;
    }

    if (a1 != 81)
    {
      v4 = v5;
    }

    if (a1 != 53)
    {
      v3 = v4;
    }

    v6 = a2 + 40;
    if (v2 >= 4)
    {
      v6 = 0;
    }

    v7 = a2 + 44;
    if (v2 < 4)
    {
      v8 = a2 + 48;
    }

    else
    {
      v7 = 0;
      v8 = 0;
    }

    if (a1 != 49)
    {
      v8 = 0;
    }

    if (a1 == 45)
    {
      v8 = v7;
    }

    if (a1 == 41)
    {
      v8 = v6;
    }

    v9 = a1 <= 52;
  }

  if (v9)
  {
    return v8;
  }

  else
  {
    return v3;
  }
}

const char *MTLDataTypeGetShaderTypeName(int a1, int a2)
{
  result = &unk_257A6F51A;
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      if (a1 <= 40)
      {
        if (a1 <= 28)
        {
          if (a1 == 3)
          {
            return "float3";
          }

          else if (a1 == 16)
          {
            return "half3";
          }
        }

        else
        {
          switch(a1)
          {
            case 29:
              return "int3";
            case 33:
              return "uint3";
            case 37:
              return "short3";
          }
        }
      }

      else if (a1 > 52)
      {
        switch(a1)
        {
          case '5':
            return "BOOL3";
          case 'Q':
            return "long3";
          case 'U':
            return "ulong3";
        }
      }

      else
      {
        switch(a1)
        {
          case ')':
            return "ushort3";
          case '-':
            return "char3";
          case '1':
            return "uchar3";
        }
      }
    }

    else if (a2 == 4)
    {
      if (a1 <= 40)
      {
        if (a1 <= 28)
        {
          if (a1 == 3)
          {
            return "float4";
          }

          else if (a1 == 16)
          {
            return "half4";
          }
        }

        else
        {
          switch(a1)
          {
            case 29:
              return "int4";
            case 33:
              return "uint4";
            case 37:
              return "short4";
          }
        }
      }

      else if (a1 > 52)
      {
        switch(a1)
        {
          case '5':
            return "BOOL4";
          case 'Q':
            return "long4";
          case 'U':
            return "ulong4";
        }
      }

      else
      {
        switch(a1)
        {
          case ')':
            return "ushort4";
          case '-':
            return "char4";
          case '1':
            return "uchar4";
        }
      }
    }
  }

  else if (a2 == 1)
  {
    if (a1 <= 40)
    {
      if (a1 <= 28)
      {
        if (a1 == 3)
        {
          return "float";
        }

        else if (a1 == 16)
        {
          return "half";
        }
      }

      else
      {
        switch(a1)
        {
          case 29:
            return "int";
          case 33:
            return "uint";
          case 37:
            return "short";
        }
      }
    }

    else if (a1 > 52)
    {
      switch(a1)
      {
        case '5':
          return "BOOL";
        case 'Q':
          return "long";
        case 'U':
          return "ulong";
      }
    }

    else
    {
      switch(a1)
      {
        case ')':
          return "ushort";
        case '-':
          return "char";
        case '1':
          return "uchar";
      }
    }
  }

  else if (a2 == 2)
  {
    if (a1 <= 40)
    {
      if (a1 <= 28)
      {
        if (a1 == 3)
        {
          return "float2";
        }

        else if (a1 == 16)
        {
          return "half2";
        }
      }

      else
      {
        switch(a1)
        {
          case 29:
            return "int2";
          case 33:
            return "uint2";
          case 37:
            return "short2";
        }
      }
    }

    else if (a1 > 52)
    {
      switch(a1)
      {
        case '5':
          return "BOOL2";
        case 'Q':
          return "long2";
        case 'U':
          return "ulong2";
      }
    }

    else
    {
      switch(a1)
      {
        case ')':
          return "ushort2";
        case '-':
          return "char2";
        case '1':
          return "uchar2";
      }
    }
  }

  return result;
}

_BYTE *serializeFragmentLinkingInfoInternal(uint64_t a1, char a2, char a3, char a4, char a5, void *a6, unint64_t *a7)
{
  v12 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  *v12 = a2;
  v12[1] = a3;
  v12[2] = a4;
  v12[3] = a5;
  v13 = a6[1] - *a6;
  if ((v13 & 0x1FFFFFFFE0) != 0)
  {
    v14 = 0;
    v15 = (v13 >> 5);
    v16 = 1024;
    v17 = 4;
    do
    {
      v18 = *a6 + 32 * v14;
      v19 = *(v18 + 28);
      if (v19)
      {
        if (v17 == -1)
        {
          goto LABEL_32;
        }

        v20 = *(v18 + 24);
        v21 = v17 + 1;
        if (v16 <= v17)
        {
          if (!v16)
          {
            v16 = 128;
          }

          while (v16 <= v17)
          {
            if (v16 >> 1 >= ~v16)
            {
              v16 = v17 + 1;
            }

            else
            {
              v16 += v16 >> 1;
            }
          }

          v12 = malloc_type_realloc(v12, v16, 0x100004077774924uLL);
          if (!v12)
          {
            goto LABEL_32;
          }
        }

        v12[v17] = v20;
        if (v17 == -2)
        {
          goto LABEL_32;
        }

        v22 = v17 + 2;
        if (v16 <= v21)
        {
          do
          {
            if (v16 >> 1 >= ~v16)
            {
              v16 = v17 + 2;
            }

            else
            {
              v16 += v16 >> 1;
            }
          }

          while (v16 <= v21);
          v12 = malloc_type_realloc(v12, v16, 0x100004077774924uLL);
          if (!v12)
          {
            goto LABEL_32;
          }
        }

        v12[v21] = (2 * v19) & 0x70 | (v19 >> 1) & 3;
        v23 = *(v18 + 16);
        v24 = v23 + 1;
        if (v23 + 1 > -3 - v17)
        {
          goto LABEL_32;
        }

        v25 = *(v18 + 8);
        v17 = v24 + v22;
        if (v16 < v24 + v22)
        {
          do
          {
            if (v16 >> 1 >= ~v16)
            {
              v16 = v24 + v22;
            }

            else
            {
              v16 += v16 >> 1;
            }
          }

          while (v16 < v17);
          v12 = malloc_type_realloc(v12, v16, 0x100004077774924uLL);
          if (!v12)
          {
LABEL_32:
            abort();
          }
        }

        memcpy(&v12[v22], v25, v23);
        v12[v22 + v23] = 0;
      }

      ++v14;
    }

    while (v14 != v15);
  }

  else
  {
    v17 = 4;
  }

  *a7 = v17;
  return v12;
}

_BYTE *serializeFragmentPackingInfoInternal(uint64_t a1, char a2, char a3, char a4, void *a5, void *a6, unint64_t *a7)
{
  v11 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
  *v11 = a2;
  v11[1] = a3;
  v11[2] = a4;
  v12 = -1431655765 * ((a5[1] - *a5) >> 3);
  v11[3] = v12;
  v32 = v12;
  v33 = a5;
  if (v12)
  {
    v13 = 0;
    v14 = 1024;
    v15 = 4;
    while (1)
    {
      if (v15 == -1)
      {
        goto LABEL_47;
      }

      v16 = *v33 + 24 * v13;
      v17 = *v16;
      v18 = v15 + 1;
      if (v14 <= v15)
      {
        do
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v15 + 1;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        while (v14 <= v15);
        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          goto LABEL_47;
        }
      }

      v11[v15] = v17;
      if (v15 == -2)
      {
        goto LABEL_47;
      }

      v19 = *(v16 + 2);
      v20 = *(v16 + 4);
      v15 += 2;
      if (v14 <= v18)
      {
        do
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v15;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        while (v14 <= v18);
        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          goto LABEL_47;
        }
      }

      v34 = v13;
      v11[v18] = v19 | (16 * v20);
      if (*(v16 + 4))
      {
        break;
      }

LABEL_43:
      v13 = v34 + 1;
      if (v34 + 1 == v32)
      {
        goto LABEL_46;
      }
    }

    v21 = 0;
    while (v15 != -1)
    {
      v22 = *a6 + 32 * *(v16 + 6 + 2 * v21);
      v23 = *(v22 + 28);
      v24 = *(v22 + 24);
      v25 = v15 + 1;
      if (v14 <= v15)
      {
        if (!v14)
        {
          v14 = 128;
        }

        while (v14 <= v15)
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v15 + 1;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          break;
        }
      }

      v11[v15] = v24;
      if (v15 == -2)
      {
        break;
      }

      v26 = v15 + 2;
      if (v14 <= v25)
      {
        do
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v15 + 2;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        while (v14 <= v25);
        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          break;
        }
      }

      v11[v25] = (2 * v23) & 0x70 | (v23 >> 1) & 3;
      v27 = *(v22 + 16);
      v28 = v27 + 1;
      if (v27 + 1 > -3 - v15)
      {
        break;
      }

      v29 = *(v22 + 8);
      v15 = v28 + v26;
      if (v14 < v28 + v26)
      {
        do
        {
          if (v14 >> 1 >= ~v14)
          {
            v14 = v28 + v26;
          }

          else
          {
            v14 += v14 >> 1;
          }
        }

        while (v14 < v15);
        v11 = malloc_type_realloc(v11, v14, 0x100004077774924uLL);
        if (!v11)
        {
          break;
        }
      }

      memcpy(&v11[v26], v29, v27);
      v11[v26 + v27] = 0;
      if (++v21 >= *(v16 + 4))
      {
        goto LABEL_43;
      }
    }

LABEL_47:
    abort();
  }

  v15 = 4;
LABEL_46:
  *a7 = v15;
  return v11;
}

uint64_t llvm::DISubprogram::getImpl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a4)
  {
    v23 = llvm::MDString::get();
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v24 = 0;
    if (a21)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v23 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v24 = llvm::MDString::get();
  if (a21)
  {
LABEL_4:
    v25 = llvm::MDString::get();
    goto LABEL_8;
  }

LABEL_7:
  v25 = 0;
LABEL_8:

  return MEMORY[0x2821F2010](a1, a2, v23, v24, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, v25);
}

void addMeshStructMembers(uint64_t a1, uint64_t *a2)
{
  v20 = *(a1 + 8);
  if (v20)
  {
    v2 = 0;
    while (1)
    {
      v3 = *(a1 - 8 * *(a1 + 8) + 8 * v2);
      v4 = *(v3 + 8);
      if (v4)
      {
        break;
      }

      v7 = 0;
      v6 = 0;
      v9 = &unk_257A6F51A;
      v8 = &unk_257A6F51A;
LABEL_27:
      v29 = 0;
      v26 = 0;
      v28 = 0;
      v30 = 0;
      v31 = 0;
      v32 = 0;
      memset(v35, 0, sizeof(v35));
      v36 = 0;
      v24 = v8;
      v25 = v7;
      *&v23 = v9;
      *(&v23 + 1) = v6;
      v27 = 0;
      v34 = 0;
      v33 = xmmword_257A6DAF0;
      v18 = strlen(v8);
      HIDWORD(v26) = dataTypeFromString(v8, v18);
      v19 = strlen(v8);
      *(&v33 + 1) = pixelFormatAndALUTypeFromString(v8, v19);
      std::vector<MTLStructMemberInfo>::push_back[abi:ne200100](a2, &v23);
      v37 = v35;
      std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v37);
      if (v31)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v31);
      }

      if (++v2 == v20)
      {
        return;
      }
    }

    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = &unk_257A6F51A;
    v9 = &unk_257A6F51A;
    while (1)
    {
      v10 = *(v3 - 8 * *(v3 + 8) + 8 * v5);
      if (!*v10)
      {
        String = llvm::MDString::getString(v10);
        if (v12 == 12)
        {
          if (*String == 0x5F6772612E726961 && *(String + 8) == 1701667182)
          {
            ++v5;
            v9 = llvm::MDString::getString(*(v3 - 8 * *(v3 + 8) + 8 * v5));
            v6 = v17;
            goto LABEL_7;
          }
        }

        else if (v12 == 17)
        {
          v13 = *String == 0x5F6772612E726961 && *(String + 8) == 0x6D616E5F65707974;
          if (v13 && *(String + 16) == 101)
          {
            ++v5;
            v8 = llvm::MDString::getString(*(v3 - 8 * *(v3 + 8) + 8 * v5));
            v7 = v15;
            goto LABEL_7;
          }
        }
      }

      ++v5;
LABEL_7:
      if (v5 >= v4)
      {
        goto LABEL_27;
      }
    }
  }
}

void sub_2579F99FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  MTLStructMemberInfo::~MTLStructMemberInfo(va);
  _Unwind_Resume(a1);
}

void sub_2579F9B60(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__tree<std::__value_type<std::string,MTLCompilerMeshTopologyType>,std::__map_value_compare<std::string,std::__value_type<std::string,MTLCompilerMeshTopologyType>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,MTLCompilerMeshTopologyType>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string&&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, _OWORD **a4)
{
  v4 = *std::__tree<std::__value_type<std::string,TextureTokenData>,std::__map_value_compare<std::string,std::__value_type<std::string,TextureTokenData>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,TextureTokenData>>>::__find_equal<std::string>(a1, &v6, a2);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

uint64_t std::vector<MTLStructMemberInfo>::push_back[abi:ne200100](uint64_t *a1, __int128 *a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    result = std::vector<MTLStructMemberInfo>::__emplace_back_slow_path<MTLStructMemberInfo const&>(a1, a2);
  }

  else
  {
    std::vector<MTLStructMemberInfo>::__construct_one_at_end[abi:ne200100]<MTLStructMemberInfo const&>(a1, a2);
    result = v3 + 176;
  }

  a1[1] = result;
  return result;
}

void MTLStructMemberInfo::~MTLStructMemberInfo(MTLStructMemberInfo *this)
{
  v3 = (this + 104);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v3);
  v2 = *(this + 8);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }
}

__n128 std::vector<MTLStructMemberInfo>::__construct_one_at_end[abi:ne200100]<MTLStructMemberInfo const&>(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  *(v4 + 48) = *(a2 + 12);
  *(v4 + 16) = v6;
  *(v4 + 32) = v7;
  *v4 = v5;
  v8 = *(a2 + 8);
  *(v4 + 56) = *(a2 + 7);
  *(v4 + 64) = v8;
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v9 = *(a2 + 72);
  v10 = *(a2 + 88);
  *(v4 + 104) = 0;
  *(v4 + 72) = v9;
  *(v4 + 88) = v10;
  *(v4 + 112) = 0;
  *(v4 + 120) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((v4 + 104), *(a2 + 13), *(a2 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 14) - *(a2 + 13)) >> 4));
  result = a2[8];
  v12 = a2[10];
  *(v4 + 144) = a2[9];
  *(v4 + 160) = v12;
  *(v4 + 128) = result;
  *(a1 + 8) = v4 + 176;
  return result;
}

void sub_2579F9D6C(_Unwind_Exception *exception_object)
{
  v4 = *(v2 + 64);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  *(v1 + 8) = v2;
  _Unwind_Resume(exception_object);
}

uint64_t std::vector<MTLStructMemberInfo>::__emplace_back_slow_path<MTLStructMemberInfo const&>(uint64_t *a1, __int128 *a2)
{
  v2 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x1745D1745D1745DLL)
  {
    std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v3)
  {
    v3 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v6 = 0x1745D1745D1745DLL;
  }

  else
  {
    v6 = v3;
  }

  v25 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLStructMemberInfo>>(a1, v6);
  }

  v7 = 176 * v2;
  v22 = 0;
  v23 = v7;
  v24 = v7;
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  *(v7 + 48) = *(a2 + 12);
  *(v7 + 16) = v9;
  *(v7 + 32) = v10;
  *v7 = v8;
  v11 = *(a2 + 8);
  *(v7 + 56) = *(a2 + 7);
  *(v7 + 64) = v11;
  if (v11)
  {
    atomic_fetch_add_explicit((v11 + 8), 1uLL, memory_order_relaxed);
  }

  v12 = *(a2 + 72);
  v13 = *(a2 + 88);
  *(v7 + 104) = 0;
  *(v7 + 72) = v12;
  *(v7 + 88) = v13;
  *(v7 + 112) = 0;
  *(v7 + 120) = 0;
  std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>((v7 + 104), *(a2 + 13), *(a2 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(a2 + 14) - *(a2 + 13)) >> 4));
  v15 = a2[9];
  v14 = a2[10];
  *(v7 + 128) = a2[8];
  *(v7 + 144) = v15;
  *(v7 + 160) = v14;
  *&v24 = v24 + 176;
  v16 = a1[1];
  v17 = v23 + *a1 - v16;
  std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>(a1, *a1, v16, v17);
  v18 = *a1;
  *a1 = v17;
  v19 = a1[2];
  v21 = v24;
  *(a1 + 1) = v24;
  *&v24 = v18;
  *(&v24 + 1) = v19;
  v22 = v18;
  v23 = v18;
  std::__split_buffer<MTLStructMemberInfo>::~__split_buffer(&v22);
  return v21;
}

void sub_2579F9F1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  std::__split_buffer<MTLStructMemberInfo>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(uint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_2579F9FAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void **a9)
{
  *(v9 + 8) = v10;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

void std::vector<MTLStructMemberInfo>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<MTLStructMemberInfo>>(a1, a2);
  }

  std::vector<std::pair<std::string,MTLCompilerSharedMemoryInterface::RuntimeLibraryEntry>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<MTLStructMemberInfo>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x1745D1745D1745ELL)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_copy_impl[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*,MTLStructMemberInfo*,MTLStructMemberInfo*>(uint64_t a1, __int128 *a2, __int128 *a3, uint64_t a4)
{
  v4 = a4;
  v18 = a4;
  v19 = a4;
  v16[0] = a1;
  v16[1] = &v18;
  v16[2] = &v19;
  v17 = 0;
  if (a2 != a3)
  {
    v6 = a2;
    do
    {
      v7 = *v6;
      v8 = v6[1];
      v9 = v6[2];
      *(v4 + 48) = *(v6 + 12);
      *(v4 + 16) = v8;
      *(v4 + 32) = v9;
      *v4 = v7;
      v10 = *(v6 + 8);
      *(v4 + 56) = *(v6 + 7);
      *(v4 + 64) = v10;
      if (v10)
      {
        atomic_fetch_add_explicit((v10 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = *(v6 + 72);
      v12 = *(v6 + 88);
      *(v4 + 104) = 0;
      *(v4 + 72) = v11;
      *(v4 + 88) = v12;
      *(v4 + 112) = 0;
      *(v4 + 120) = 0;
      std::vector<MTLStructMemberInfo>::__init_with_size[abi:ne200100]<MTLStructMemberInfo*,MTLStructMemberInfo*>(v4 + 104, *(v6 + 13), *(v6 + 14), 0x2E8BA2E8BA2E8BA3 * ((*(v6 + 14) - *(v6 + 13)) >> 4));
      v13 = v6[8];
      v14 = v6[10];
      *(v4 + 144) = v6[9];
      *(v4 + 160) = v14;
      *(v4 + 128) = v13;
      v6 += 11;
      v4 = v19 + 176;
      v19 += 176;
    }

    while (v6 != a3);
  }

  v17 = 1;
  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](v16);
  return v4;
}

void sub_2579FA180(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *(v9 + 64);
  if (v11)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v11);
  }

  std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](&a9);
  _Unwind_Resume(a1);
}

uint64_t std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>::operator()[abi:ne200100](a1);
  }

  return a1;
}

void std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>::operator()[abi:ne200100](uint64_t *result)
{
  v2 = result[1];
  v1 = result[2];
  v3 = *v1;
  v4 = *v2;
  if (*v1 != *v2)
  {
    v5 = *result;
    do
    {
      v3 -= 176;
      std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(v5, v3);
    }

    while (v3 != v4);
  }
}

void std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(uint64_t a1, uint64_t a2)
{
  v4 = (a2 + 104);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a2 + 64);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17 = a4;
  v18 = a4;
  v15[0] = a1;
  v15[1] = &v17;
  v15[2] = &v18;
  if (a2 == a3)
  {
    v16 = 1;
  }

  else
  {
    v5 = a2;
    v7 = a2;
    do
    {
      v8 = *v7;
      v9 = *(v7 + 16);
      v10 = *(v7 + 32);
      *(a4 + 48) = *(v7 + 48);
      *(a4 + 16) = v9;
      *(a4 + 32) = v10;
      *a4 = v8;
      *(a4 + 56) = *(v7 + 56);
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      v11 = *(v7 + 72);
      *(a4 + 88) = *(v7 + 88);
      *(a4 + 72) = v11;
      *(a4 + 112) = 0;
      *(a4 + 120) = 0;
      *(a4 + 104) = 0;
      *(a4 + 104) = *(v7 + 104);
      *(a4 + 120) = *(v7 + 120);
      *(v7 + 104) = 0;
      *(v7 + 112) = 0;
      *(v7 + 120) = 0;
      v12 = *(v7 + 128);
      v13 = *(v7 + 160);
      *(a4 + 144) = *(v7 + 144);
      *(a4 + 160) = v13;
      *(a4 + 128) = v12;
      v7 += 176;
      a4 += 176;
    }

    while (v7 != a3);
    v18 = a4;
    v16 = 1;
    while (v5 != a3)
    {
      std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(a1, v5);
      v5 += 176;
    }
  }

  return std::__exception_guard_exceptions<std::_AllocatorDestroyRangeReverse<std::allocator<MTLStructMemberInfo>,MTLStructMemberInfo*>>::~__exception_guard_exceptions[abi:ne200100](v15);
}

uint64_t std::__split_buffer<MTLStructMemberInfo>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<MTLStructMemberInfo>::__destruct_at_end[abi:ne200100](a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::__split_buffer<MTLStructMemberInfo>::__destruct_at_end[abi:ne200100](uint64_t a1, uint64_t a2)
{
  while (1)
  {
    v4 = *(a1 + 16);
    if (v4 == a2)
    {
      break;
    }

    v5 = *(a1 + 32);
    *(a1 + 16) = v4 - 176;
    std::allocator_traits<std::allocator<MTLStructMemberInfo>>::destroy[abi:ne200100]<MTLStructMemberInfo,0>(v5, v4 - 176);
  }
}

uint64_t std::function<void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::operator()(uint64_t a1, int a2, int a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20[0] = a6;
  v20[1] = a7;
  v19[0] = a9;
  v19[1] = a10;
  v18 = a2;
  v16 = a4;
  v17 = a3;
  v15 = a5;
  v13 = *(a1 + 24);
  if (!v13)
  {
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return (*(*v13 + 48))(v13, &v18, &v17, &v16, &v15, v20, v19, &a11, &a12, &a13, &a13 + 4);
}

__n128 std::__function::__func<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0,std::allocator<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0>,void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_2868EC8D0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0,std::allocator<parseStructTypeMetadata(llvm::MDNode *,llvm::DataLayout const&,MTLCompilerArgumentAccess,std::vector<MTLStructMemberInfo> &,llvm::DenseMap<llvm::Metadata *,std::vector<MTLStructMemberInfo>*,llvm::DenseMapInfo<llvm::Metadata *,void>,llvm::detail::DenseMapPair<llvm::Metadata *,std::vector<MTLStructMemberInfo>*>> &)::$_0>,void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::operator()(uint64_t a1, uint64_t a2, int *a3, int *a4, int *a5, uint64_t a6, __int128 *a7, uint64_t *a8, uint64_t *a9, unsigned int *a10, unsigned int *a11)
{
  v12 = *a3;
  v13 = *a4;
  v14 = *a5;
  v16 = *a6;
  v15 = *(a6 + 8);
  v17 = *a8;
  v18 = *a9;
  v19 = *a10;
  v20 = *a11;
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v34 = 0uLL;
  v35 = 0;
  v36 = xmmword_257A6DAF0;
  memset(v38, 0, sizeof(v38));
  v39 = 0;
  v28 = *a7;
  LODWORD(v31) = v12;
  LODWORD(v32) = v14;
  v37 = v17;
  v29 = v16;
  v30 = v15;
  if (v17)
  {
    v21 = 1;
  }

  else if (v18)
  {
    v21 = 57;
  }

  else
  {
    v22 = strlen(v16);
    v21 = dataTypeFromString(v16, v22);
    v23 = strlen(v16);
    *(&v36 + 1) = pixelFormatAndALUTypeFromString(v16, v23);
    v14 = v32;
  }

  if (v14)
  {
    HIDWORD(v32) = v21;
    v33 = v13;
    v21 = 2;
  }

  HIDWORD(v31) = v21;
  if (v17)
  {
    parseStructTypeMetadata(v17, *(a1 + 8), **(a1 + 16), v38, *(a1 + 24));
  }

  if (v18)
  {
    if (llvm::MDNode::classof(v18))
    {
      _ZNSt3__115allocate_sharedB8ne200100I15MTLArgumentDataNS_9allocatorIS1_EEJELi0EEENS_10shared_ptrIT_EERKT0_DpOT1_();
    }

    v24 = *(v18 + 128);
    if (*(v24 + 16) == 16)
    {
      v25 = (v24 + 24);
      if (*(v24 + 32) >= 0x41u)
      {
        v25 = *v25;
      }

      v26 = *v25;
    }

    else
    {
      v26 = -1;
    }

    v35 = v26;
  }

  *&v36 = __PAIR64__(v20, v19);
  std::vector<MTLStructMemberInfo>::push_back[abi:ne200100](*(a1 + 32), &v28);
  *&v27 = v38;
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v27);
  if (*(&v34 + 1))
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](*(&v34 + 1));
  }
}

void sub_2579FA758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  MTLStructMemberInfo::~MTLStructMemberInfo(va);
  _Unwind_Resume(a1);
}

void _ZNSt3__120__shared_ptr_emplaceI15MTLArgumentDataNS_9allocatorIS1_EEEC2B8ne200100IJES3_Li0EEES3_DpOT_(void *a1)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_2868EC918;
  MTLArgumentData::MTLArgumentData((a1 + 3));
}

void std::__shared_ptr_emplace<MTLArgumentData>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2868EC918;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x259C6B890);
}

void std::__shared_ptr_emplace<MTLArgumentData>::__on_zero_shared(uint64_t a1)
{
  v5 = (a1 + 224);
  std::vector<MTLStructMemberInfo>::__destroy_vector::operator()[abi:ne200100](&v5);
  v2 = *(a1 + 176);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(a1 + 160);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(a1 + 144);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int,unsigned int,unsigned int,llvm::StringRef,llvm::StringRef,llvm::Metadata *,llvm::Metadata *,unsigned int,unsigned int)>::~__value_func[abi:ne200100](uint64_t a1)
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

void *findNonStructMember(void *a1)
{
  v1 = a1[1];
  if (*a1 == v1)
  {
    return 0;
  }

  for (i = (*a1 + 104); i[1] != *i; i += 22)
  {
    result = findNonStructMember(i);
    if (result)
    {
      return result;
    }

    v4 = i + 9;
    if (v4 == v1)
    {
      return 0;
    }
  }

  return i - 13;
}

void sub_2579FB1D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void OGLCodeGenService::OGLCodeGenService(OGLCodeGenService *this)
{
  v2 = dlopen("/System/Library/Frameworks/OpenGLES.framework/libGLVMPlugin.dylib", 5);
  *this = v2;
  if (v2 && (v3 = dlsym(v2, "oglCodeGenServiceInitialize")) != 0 && (v4 = v3, v5 = dlsym(*this, "oglCodeGenServiceTerminate"), (*(this + 1) = v5) != 0) && (v6 = dlsym(*this, "oglCodeGenServiceGenerateIR"), (*(this + 2) = v6) != 0))
  {
    *(this + 3) = dlsym(*this, "oglCodeGenServiceGenerateIRWithPluginData");
    *(this + 4) = dlsym(*this, "oglCodeGenServiceGenerateIRWithPluginDataAndPluginReturnData");
    v4();
  }

  else
  {
    OGLCodeGenService::OGLCodeGenService();
  }
}

{
  OGLCodeGenService::OGLCodeGenService(this);
}

void OGLCodeGenService::~OGLCodeGenService(void (**this)(void))
{
  this[1]();
  dlclose(*this);
  this[4] = 0;
  *this = 0u;
  *(this + 1) = 0u;
}

uint64_t OGLCodeGenService::GenerateIR(OGLCodeGenService *this, uint64_t a2, llvm::LLVMContext *a3, const void *a4, uint64_t a5, const void *a6, uint64_t a7, void **a8, unint64_t *a9)
{
  if (this)
  {
    v12 = &OGLCodeGenService::oglCodeGenServiceGLES;
  }

  else
  {
    v12 = &OGLCodeGenService::oglCodeGenService;
  }

  v13 = *v12;
  if (!*v12)
  {
    operator new();
  }

  if (a5 && a7 && (this & 1) == 0)
  {
    v14 = v13[4];

    return v14(a2, a3, a4, a5, a6, a7, a8);
  }

  else if (!a5 || (this & 1) != 0)
  {
    v17 = v13[2];

    return v17(a2, a3, a4);
  }

  else
  {
    v16 = v13[3];

    return v16(a2, a3, a4, a5, a6);
  }
}

void MTLFoldMergePass::MTLFoldMergePass(MTLFoldMergePass *this, MTLBoundsCheck::SharedPassData *a2)
{
  v3 = MetalModulePass::MetalModulePass(this, &MTLFoldMergePass::ID, a2);
  *v3 = &unk_2868EC950;
  *(v3 + 216) = 128;
  *(this + 25) = MEMORY[0x259C6A8D0](11264, 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::initEmpty(this + 25);
  *(this + 224) = 0;
  *(this + 248) = 0;
}

void MTLFoldMergePass::~MTLFoldMergePass(MTLFoldMergePass *this)
{
  *this = &unk_2868EC950;
  if (*(this + 248) == 1)
  {
    llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap(this + 56);
    *(this + 248) = 0;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(this + 200);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, v2, v3, v4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v5, v6, v7);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EC950;
  if (*(this + 248) == 1)
  {
    llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap(this + 56);
    *(this + 248) = 0;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(this + 200);
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, v2, v3, v4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v5, v6, v7);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLFoldMergePass::runOnModule(MTLFoldMergePass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  v4 = a2 + 24;
  v5 = *(a2 + 4);
  if (v5 == a2 + 24)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = 0;
    do
    {
      if (v5)
      {
        v7 = (v5 - 56);
      }

      else
      {
        v7 = 0;
      }

      if ((llvm::GlobalValue::isDeclaration(v7) & 1) == 0)
      {
        v6 |= MTLFoldMergePass::runOnFunction(this, v7);
      }

      v5 = *(v5 + 1);
    }

    while (v5 != v4);
  }

  return v6 & 1;
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::init(uint64_t result, int a2)
{
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(result + 16) = v4;
    *result = MEMORY[0x259C6A8D0](88 * v4, 8);

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::initEmpty(result);
  }

  else
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::initEmpty(uint64_t *a1)
{
  a1[1] = 0;
  v7[0] = 2;
  v7[1] = 0;
  v7[2] = -4096;
  v8 = 0;
  v1 = *(a1 + 4);
  if (v1)
  {
    v2 = *a1;
    v3 = *a1 + 88 * v1;
    v4 = (*a1 + 8);
    do
    {
      v5 = llvm::ValueHandleBase::ValueHandleBase(v4, (LODWORD(v7[0]) >> 1) & 3, v7);
      v6 = v5 - 8;
      *(v5 - 1) = &unk_2868EC9F0;
      *(v5 + 3) = v8;
      v4 = (v5 + 88);
      v2 += 88;
    }

    while (v6 + 88 != v3);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v7);
}

void llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::deleted(uint64_t a1)
{
  v1 = a1 + 8;
  llvm::ValueHandleBase::ValueHandleBase(v4, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v2 = *(v1 + 24);
  v3 = &unk_2868EC9F0;
  v4[3] = v2;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::erase(v2, &v3);
  llvm::ValueHandleBase::~ValueHandleBase(v4);
}

void llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::allUsesReplacedWith(uint64_t a1, llvm::Value *a2)
{
  v17[4] = *MEMORY[0x277D85DE8];
  llvm::ValueHandleBase::ValueHandleBase(v11, (*(a1 + 8) >> 1) & 3, (a1 + 8));
  v4 = *(a1 + 32);
  v10 = &unk_2868EC9F0;
  v12 = v4;
  v13 = 0;
  v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(v4, &v10, &v13);
  v6 = *v4 + 88 * v4[2].u32[0];
  if (v5)
  {
    v7 = v13;
  }

  else
  {
    v7 = v6;
  }

  if ((*v12 + 88 * v12[2].u32[0]) != v7)
  {
    llvm::SmallVector<llvm::CallInst *,4u>::SmallVector(v16, v7 + 40);
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::erase(v12, v7);
    v8 = v12;
    v13 = a2;
    llvm::SmallVector<llvm::CallInst *,4u>::SmallVector(&v14, v16);
    llvm::ValueMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::insert(v8, &v13, v9);
    if (v14 != &v15)
    {
      free(v14);
    }

    if (v16[0] != v17)
    {
      free(v16[0]);
    }
  }

  llvm::ValueHandleBase::~ValueHandleBase(v11);
}

void sub_2579FBBC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  if (a18 != (v18 + 24))
  {
    free(a18);
  }

  v22 = *(v20 - 88);
  if (v22 != (v20 - 72))
  {
    free(v22);
  }

  llvm::ValueHandleBase::~ValueHandleBase((v19 + 8));
  _Unwind_Resume(a1);
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::erase(int32x2_t *a1, uint64_t a2)
{
  v7 = 0;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v7);
  if (v3)
  {
    v4 = v7;
    v5 = v7[5];
    if (v5 != (v7 + 7))
    {
      free(v5);
    }

    v8[0] = 2;
    v8[1] = 0;
    v8[2] = -8192;
    v9 = 0;
    v7 = &unk_2868EC9F0;
    llvm::ValueHandleBase::operator=((v4 + 1), v8);
    v4[4] = v9;
    llvm::ValueHandleBase::~ValueHandleBase(v8);
    a1[1] = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  }

  return v3;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(uint64_t *a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v17[0] = 2;
    v17[1] = 0;
    v17[2] = -4096;
    v17[3] = 0;
    v16[3] = 0;
    v16[4] = &unk_2868EC9F0;
    v16[0] = 2;
    v16[1] = 0;
    v16[2] = -8192;
    v5 = *(a2 + 24);
    v6 = v3 - 1;
    v7 = ((v5 >> 4) ^ (v5 >> 9)) & (v3 - 1);
    v8 = v4 + 88 * v7;
    v9 = *(v8 + 24);
    if (v5 == v9)
    {
      v10 = 1;
    }

    else
    {
      v12 = 0;
      v13 = 1;
      v10 = 1;
      while (v9 != -4096)
      {
        if (v12)
        {
          v14 = 0;
        }

        else
        {
          v14 = v9 == -8192;
        }

        if (v14)
        {
          v12 = v8;
        }

        v15 = v7 + v13++;
        v7 = v15 & v6;
        v8 = v4 + 88 * (v15 & v6);
        v9 = *(v8 + 24);
        if (v5 == v9)
        {
          goto LABEL_4;
        }
      }

      v10 = 0;
      if (v12)
      {
        v8 = v12;
      }
    }

LABEL_4:
    *a3 = v8;
    llvm::ValueHandleBase::~ValueHandleBase(v16);
    llvm::ValueHandleBase::~ValueHandleBase(v17);
  }

  else
  {
    v10 = 0;
    *a3 = 0;
  }

  return v10;
}

int32x2_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::erase(int32x2_t *a1, void *a2)
{
  v4 = a2[5];
  if (v4 != a2 + 7)
  {
    free(v4);
  }

  v6[0] = 2;
  v6[1] = 0;
  v6[2] = -8192;
  v7 = 0;
  llvm::ValueHandleBase::operator=((a2 + 1), v6);
  a2[4] = v7;
  llvm::ValueHandleBase::~ValueHandleBase(v6);
  result = vadd_s32(a1[1], 0x1FFFFFFFFLL);
  a1[1] = result;
  return result;
}

double llvm::ValueMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::insert@<D0>(uint64_t a1@<X0>, llvm::Value **a2@<X1>, uint64_t a3@<X8>)
{
  v14[4] = *MEMORY[0x277D85DE8];
  llvm::CallbackVH::CallbackVH(&v7, *a2);
  v7 = &unk_2868EC9F0;
  v8[3] = a1;
  std::pair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>::pair[abi:ne200100]<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,0>(&v11, &v7, (a2 + 1));
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::try_emplace<llvm::SmallVector<llvm::CallInst *,4u>>(a1, &v11, &v13, &v9);
  if (v13 != v14)
  {
    free(v13);
  }

  llvm::ValueHandleBase::~ValueHandleBase(&v12);
  llvm::ValueHandleBase::~ValueHandleBase(v8);
  result = *&v9;
  *a3 = v9;
  *(a3 + 16) = v10;
  return result;
}

void sub_2579FBFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va1, a5);
  va_start(va, a5);
  v6 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  std::pair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>::~pair(va1);
  llvm::ValueHandleBase::~ValueHandleBase(va);
  _Unwind_Resume(a1);
}

void llvm::DenseMapIterator<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>,false>::AdvancePastEmptyBuckets(uint64_t *a1)
{
  v4[0] = 2;
  v4[1] = 0;
  v4[2] = -4096;
  v4[3] = 0;
  v3[3] = 0;
  v3[4] = &unk_2868EC9F0;
  v3[0] = 2;
  v3[1] = 0;
  v3[2] = -8192;
  v2 = *a1;
  v1 = a1[1];
  while (v2 != v1 && (*(v2 + 24) | 0x1000) == 0xFFFFFFFFFFFFF000)
  {
    v2 += 88;
    *a1 = v2;
  }

  llvm::ValueHandleBase::~ValueHandleBase(v3);
  llvm::ValueHandleBase::~ValueHandleBase(v4);
}

void *llvm::SmallVector<llvm::CallInst *,4u>::SmallVector(void *a1, uint64_t a2)
{
  *a1 = a1 + 2;
  a1[1] = 0x400000000;
  if (*(a2 + 8))
  {
    llvm::SmallVectorImpl<llvm::CallInst *>::operator=(a1, a2);
  }

  return a1;
}

void sub_2579FC108(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t llvm::SmallVectorImpl<llvm::CallInst *>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v5 = (a2 + 16);
    v4 = *a2;
    if (v4 == v5)
    {
      v6 = *(a2 + 8);
      v7 = *(a1 + 8);
      if (v7 >= v6)
      {
        if (v6)
        {
          memmove(*a1, v4, 8 * v6);
        }
      }

      else
      {
        if (*(a1 + 12) < v6)
        {
          *(a1 + 8) = 0;
          llvm::SmallVectorBase<unsigned int>::grow_pod();
        }

        if (v7)
        {
          memmove(*a1, v4, 8 * v7);
        }

        else
        {
          v7 = 0;
        }

        v8 = *(a2 + 8) - v7;
        if (v8)
        {
          memcpy((*a1 + 8 * v7), (*a2 + 8 * v7), 8 * v8);
        }
      }

      *(a1 + 8) = v6;
      *(a2 + 8) = 0;
    }

    else
    {
      llvm::SmallVectorImpl<llvm::CallInst *>::assignRemote(a1, a2);
    }
  }

  return a1;
}

double llvm::SmallVectorImpl<llvm::CallInst *>::assignRemote(uint64_t a1, uint64_t a2)
{
  v5 = (a1 + 16);
  v4 = *a1;
  if (v4 != v5)
  {
    free(v4);
  }

  *a1 = *a2;
  result = *(a2 + 8);
  *(a1 + 8) = result;
  *a2 = a2 + 16;
  *(a2 + 8) = 0;
  return result;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::try_emplace<llvm::SmallVector<llvm::CallInst *,4u>>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = 0;
  result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v12);
  v9 = v12;
  if (result)
  {
    v10 = 0;
  }

  else
  {
    result = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucket<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>(a1, v12, a2, a3);
    v9 = result;
    v10 = 1;
  }

  v11 = *a1 + 88 * *(a1 + 16);
  *a4 = v9;
  *(a4 + 8) = v11;
  *(a4 + 16) = v10;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucket<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, a3, a3, a2);
  llvm::ValueHandleBase::operator=((v6 + 1), (a3 + 8));
  v6[4] = *(a3 + 32);
  llvm::SmallVector<llvm::CallInst *,4u>::SmallVector(v6 + 5, a4);
  return v6;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::grow(a1, v7);
  v10 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, a3, &v10);
  a4 = v10;
LABEL_3:
  ++*(a1 + 8);
  v11[0] = 2;
  v11[1] = 0;
  v11[2] = -4096;
  v11[3] = 0;
  v10 = &unk_2868EC9F0;
  if (a4[3] != -4096)
  {
    --*(a1 + 12);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v11);
  return a4;
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  *a1 = MEMORY[0x259C6A8D0](v8, 88 * v8, 8);
  if (v4)
  {
    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::moveFromOldBuckets(a1, v4, &v4[88 * v3]);

    llvm::deallocate_buffer(v4, (88 * v3));
  }

  else
  {

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::initEmpty(a1);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::moveFromOldBuckets(uint64_t a1, char *a2, char *a3)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::initEmpty(a1);
  v16[0] = 2;
  v16[1] = 0;
  v17 = -4096;
  v18 = 0;
  v14 = 0;
  v15 = &unk_2868EC9F0;
  v12[0] = 2;
  v12[1] = 0;
  v13 = -8192;
  if (a2 != a3)
  {
    v6 = a2 + 56;
    do
    {
      v7 = *(v6 - 4);
      if (v7 != v17 && v7 != v13)
      {
        v19 = 0;
        llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, (v6 - 56), &v19);
        v9 = v19;
        llvm::ValueHandleBase::operator=((v19 + 8), v6 - 6);
        *(v9 + 32) = *(v6 - 3);
        llvm::SmallVector<llvm::CallInst *,4u>::SmallVector((v9 + 40), (v6 - 16));
        ++*(a1 + 8);
        v10 = *(v6 - 2);
        if (v6 != v10)
        {
          free(v10);
        }
      }

      llvm::ValueHandleBase::~ValueHandleBase((v6 - 48));
      v11 = v6 + 32;
      v6 += 88;
    }

    while (v11 != a3);
  }

  llvm::ValueHandleBase::~ValueHandleBase(v12);
  llvm::ValueHandleBase::~ValueHandleBase(v16);
}

void sub_2579FC64C(_Unwind_Exception *a1)
{
  llvm::ValueHandleBase::~ValueHandleBase((v2 + 8));
  llvm::ValueHandleBase::~ValueHandleBase((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::pair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>::pair[abi:ne200100]<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,0>(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + 8;
  llvm::ValueHandleBase::ValueHandleBase((a1 + 1), (*(a2 + 8) >> 1) & 3, (a2 + 8));
  *a1 = &unk_2868EC9F0;
  a1[4] = *(v5 + 24);
  llvm::SmallVector<llvm::CallInst *,4u>::SmallVector(a1 + 5, a3);
  return a1;
}

void *std::pair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>::~pair(void *a1)
{
  v2 = a1[5];
  if (v2 != a1 + 7)
  {
    free(v2);
  }

  llvm::ValueHandleBase::~ValueHandleBase((a1 + 1));
  return a1;
}

uint64_t llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(uint64_t a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::destroyAll(a1);
  llvm::deallocate_buffer(*a1, (88 * *(a1 + 16)));
  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11[0] = 2;
    v11[1] = 0;
    v12 = -4096;
    v13 = 0;
    v9 = 0;
    v10 = &unk_2868EC9F0;
    v7[0] = 2;
    v7[1] = 0;
    v8 = -8192;
    v2 = 88 * v1;
    v3 = *a1 + 56;
    do
    {
      v4 = *(v3 - 32);
      if (v4 != v12 && v4 != v8)
      {
        v6 = *(v3 - 16);
        if (v3 != v6)
        {
          free(v6);
        }
      }

      llvm::ValueHandleBase::~ValueHandleBase((v3 - 48));
      v3 += 88;
      v2 -= 88;
    }

    while (v2);
    llvm::ValueHandleBase::~ValueHandleBase(v7);
    llvm::ValueHandleBase::~ValueHandleBase(v11);
  }
}

uint64_t MTLFoldMergePass::runOnFunction(MTLFoldMergePass *this, llvm::Function *a2)
{
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 != a2 + 72)
  {
    do
    {
      if (v3)
      {
        v5 = (v3 - 24);
      }

      else
      {
        v5 = 0;
      }

      MTLFoldMergePass::buildFoldList(this, v5);
      v6 = *(this + 25);
      v7 = *(this + 54);
      if (*(this + 52))
      {
        v12.i64[0] = *(this + 25);
        v12.i64[1] = v6 + 88 * v7;
        llvm::DenseMapIterator<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>,false>::AdvancePastEmptyBuckets(v12.i64);
        v8 = v12;
        v6 = *(this + 25);
        v7 = *(this + 54);
      }

      else
      {
        v8 = vdupq_n_s64(v6 + 88 * v7);
      }

      v12 = v8;
      v9 = v6 + 88 * v7;
      v10 = v8.i64[0];
      if (v9 != v8.i64[0])
      {
        do
        {
          MTLFoldMergePass::findCommonIndices(this, *(v10 + 24), v10 + 40);
          v12.i64[0] += 88;
          llvm::DenseMapIterator<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>,false>::AdvancePastEmptyBuckets(v12.i64);
          v10 = v12.i64[0];
        }

        while (v12.i64[0] != v9);
      }

      llvm::ValueMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::clear(this + 200);
      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  return 1;
}

uint64_t MTLFoldMergePass::buildFoldList(uint64_t this, llvm::BasicBlock *a2)
{
  v6 = this;
  v2 = a2 + 40;
  v3 = *(a2 + 6);
  if (v3 != a2 + 40)
  {
    do
    {
      v18 = 0;
      v19 = 0;
      if (v3)
      {
        v4 = (v3 - 24);
      }

      else
      {
        v4 = 0;
      }

      v16 = 0;
      v17 = 0;
      v7 = "bounds.fold";
      v8 = xmmword_257A6DA40;
      v9 = &v19;
      v10 = 1;
      v11 = &v18;
      v12 = 2;
      v13 = &v17;
      v14 = 3;
      v15 = &v16;
      this = llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<llvm::PatternMatch::match_combine_and<call_match<llvm::StringRef>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::Value>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>>>,llvm::PatternMatch::Argument_match<llvm::PatternMatch::bind_ty<llvm::ConstantInt>>>::match<llvm::Value>(&v7, v4);
      if (this)
      {
        v7 = v19;
        v5 = llvm::ValueMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[]((v6 + 200), &v7);
        v20 = v4;
        this = llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v5, &v20);
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  return this;
}

uint64_t MTLFoldMergePass::findCommonIndices(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v3 = *(a3 + 8);
  if (v3)
  {
    v5 = *a3;
    v6 = 8 * v3;
    do
    {
      v14 = *(*v5 - 32 * (*(*v5 + 20) & 0x7FFFFFF) + 32);
      v7 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::FindAndConstruct(&v15, &v14);
      llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>((v7 + 1), v5++);
      v6 -= 8;
    }

    while (v6);
    if (v16)
    {
      if (v17)
      {
        v10 = 56 * v17;
        for (i = v15; (*i | 0x1000) == 0xFFFFFFFFFFFFF000; i += 7)
        {
          v10 -= 56;
          if (!v10)
          {
            return llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(&v15);
          }
        }
      }

      else
      {
        i = v15;
      }

      v13 = &v15[7 * v17];
      while (i != v13)
      {
        MTLFoldMergePass::mergeCommonIndices(a1, (i + 1), v8, v9);
        do
        {
          i += 7;
        }

        while (i != v13 && (*i | 0x1000) == 0xFFFFFFFFFFFFF000);
      }
    }
  }

  return llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(&v15);
}

void sub_2579FCB58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(va);
  _Unwind_Resume(a1);
}

void llvm::ValueMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::clear(uint64_t a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::clear(a1);
  if (*(a1 + 48) == 1)
  {
    llvm::DenseMap<llvm::Metadata const*,llvm::TrackingMDRef,llvm::DenseMapInfo<llvm::Metadata const*,void>,llvm::detail::DenseMapPair<llvm::Metadata const*,llvm::TrackingMDRef>>::~DenseMap((a1 + 24));
    *(a1 + 48) = 0;
  }
}

void *llvm::ValueMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>::operator[](uint64_t *a1, llvm::Value **a2)
{
  llvm::CallbackVH::CallbackVH(&v5, *a2);
  v5 = &unk_2868EC9F0;
  v6[3] = a1;
  v3 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::FindAndConstruct(a1, &v5);
  llvm::ValueHandleBase::~ValueHandleBase(v6);
  return v3 + 5;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::FindAndConstruct(uint64_t *a1, uint64_t a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucketImpl<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>>(a1, a2, a2, v7);
    llvm::ValueHandleBase::operator=((v5 + 1), (a2 + 8));
    v5[4] = *(a2 + 32);
    v5[5] = v5 + 7;
    v5[6] = 0x400000000;
  }

  return v5;
}

uint64_t MTLFoldMergePass::mergeCommonIndices(uint64_t result, uint64_t a2, uint64_t a3, BOOL a4)
{
  if (*(a2 + 8) >= 2)
  {
    v5 = result;
    v6 = 1;
    do
    {
      result = MTLFoldMergePass::mergeFold(v5, **a2, *(*a2 + 8 * v6++), a4);
    }

    while (v6 < *(a2 + 8));
  }

  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::FindAndConstruct(uint64_t *a1, void *a2)
{
  v7 = 0;
  v4 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::Value *>(a1, a2, &v7);
  v5 = v7;
  if ((v4 & 1) == 0)
  {
    v5 = llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucketImpl<llvm::Value *>(a1, a2, a2, v7);
    *v5 = *a2;
    v5[1] = v5 + 3;
    v5[2] = 0x400000000;
  }

  return v5;
}

uint64_t llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::Value *>(uint64_t *a1, void *a2, void *a3)
{
  v3 = *(a1 + 4);
  if (v3)
  {
    v4 = *a1;
    v5 = v3 - 1;
    v6 = ((*a2 >> 4) ^ (*a2 >> 9)) & (v3 - 1);
    v7 = (*a1 + 56 * v6);
    v8 = *v7;
    if (*a2 == *v7)
    {
      result = 1;
    }

    else
    {
      v10 = 0;
      v11 = 1;
      result = 1;
      while (v8 != -4096)
      {
        if (v10)
        {
          v12 = 0;
        }

        else
        {
          v12 = v8 == -8192;
        }

        if (v12)
        {
          v10 = v7;
        }

        v13 = v6 + v11++;
        v6 = v13 & v5;
        v7 = (v4 + 56 * (v13 & v5));
        v8 = *v7;
        if (*a2 == *v7)
        {
          goto LABEL_5;
        }
      }

      result = 0;
      if (v10)
      {
        v7 = v10;
      }
    }
  }

  else
  {
    v7 = 0;
    result = 0;
  }

LABEL_5:
  *a3 = v7;
  return result;
}

void *llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::InsertIntoBucketImpl<llvm::Value *>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  if (4 * v6 + 4 >= 3 * v7)
  {
    v7 *= 2;
  }

  else if (v7 + ~v6 - *(a1 + 12) > v7 >> 3)
  {
    goto LABEL_3;
  }

  llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::grow(a1, v7);
  v9 = 0;
  llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::Value *>(a1, a3, &v9);
  a4 = v9;
LABEL_3:
  ++*(a1 + 8);
  if (*a4 != -4096)
  {
    --*(a1 + 12);
  }

  return a4;
}

void *llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::grow(uint64_t a1, int a2)
{
  v3 = *(a1 + 16);
  v4 = *a1;
  v5 = (a2 - 1) | ((a2 - 1) >> 1);
  v6 = v5 | (v5 >> 2) | ((v5 | (v5 >> 2)) >> 4);
  v7 = ((v6 | (v6 >> 8)) >> 16) | v6 | (v6 >> 8);
  if ((v7 + 1) > 0x40)
  {
    v8 = (v7 + 1);
  }

  else
  {
    v8 = 64;
  }

  *(a1 + 16) = v8;
  result = MEMORY[0x259C6A8D0](v8, 56 * v8, 8);
  *a1 = result;
  if (v4)
  {
    v10 = 56 * v3;
    llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::moveFromOldBuckets(a1, v4, (v4 + v10));

    return llvm::deallocate_buffer(v4, v10);
  }

  else
  {
    *(a1 + 8) = 0;
    v11 = *(a1 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = (56 * v11 - 56) / 0x38;
      v14 = vdupq_n_s64(v13);
      do
      {
        v15 = vmovn_s64(vcgeq_u64(v14, vorrq_s8(vdupq_n_s64(v12), xmmword_257A6D000)));
        if (v15.i8[0])
        {
          *result = -4096;
        }

        if (v15.i8[4])
        {
          result[7] = -4096;
        }

        v12 += 2;
        result += 14;
      }

      while (((v13 + 2) & 0xFFFFFFFFFFFFFFELL) != v12);
    }
  }

  return result;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::moveFromOldBuckets(uint64_t a1, void *a2, void *a3)
{
  *(a1 + 8) = 0;
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = *a1;
    v9 = (56 * v6 - 56) / 0x38;
    v10 = vdupq_n_s64(v9);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(vdupq_n_s64(v7), xmmword_257A6D000)));
      if (v11.i8[0])
      {
        *v8 = -4096;
      }

      if (v11.i8[4])
      {
        v8[7] = -4096;
      }

      v7 += 2;
      v8 += 14;
    }

    while (((v9 + 2) & 0xFFFFFFFFFFFFFFELL) != v7);
  }

  while (a2 != a3)
  {
    if ((*a2 | 0x1000) != 0xFFFFFFFFFFFFF000)
    {
      v14 = 0;
      llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::LookupBucketFor<llvm::Value *>(a1, a2, &v14);
      v12 = v14;
      *v14 = *a2;
      llvm::SmallVector<llvm::CallInst *,4u>::SmallVector(v12 + 1, (a2 + 1));
      ++*(a1 + 8);
      v13 = a2[1];
      if (a2 + 3 != v13)
      {
        free(v13);
      }
    }

    a2 += 7;
  }
}

uint64_t MTLFoldMergePass::mergeFold(uint64_t a1, llvm::Value *a2, llvm::Value *a3, BOOL a4)
{
  v6 = llvm::ConstantInt::get();
  llvm::CallBase::setArgOperand(a2, 2u, v6);
  llvm::Value::replaceAllUsesWith();
  llvm::User::dropAllReferences(a3);

  return llvm::Instruction::removeFromParent(a3);
}

uint64_t llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::~DenseMap(uint64_t a1)
{
  llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::destroyAll(a1);
  llvm::deallocate_buffer(*a1, (56 * *(a1 + 16)));
  return a1;
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseMapPair<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>>>::destroyAll(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 56 * v1;
    v3 = *a1 + 24;
    do
    {
      if ((*(v3 - 24) | 0x1000) != 0xFFFFFFFFFFFFF000)
      {
        v4 = *(v3 - 16);
        if (v3 != v4)
        {
          free(v4);
        }
      }

      v3 += 56;
      v2 -= 56;
    }

    while (v2);
  }
}

void llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::clear(uint64_t a1)
{
  if (*(a1 + 8))
  {
    v2 = *(a1 + 16);
    if (v2 <= 4 * *(a1 + 8) || v2 < 0x41)
    {
      v11[0] = 2;
      v11[1] = 0;
      v12 = -4096;
      v13 = 0;
      v9 = 0;
      v10 = &unk_2868EC9F0;
      v7[0] = 2;
      v7[1] = 0;
      v8 = -8192;
      if (v2)
      {
        v3 = 88 * v2;
        v4 = *a1 + 56;
        do
        {
          v5 = *(v4 - 32);
          if (v5 != v12)
          {
            if (v5 != v8)
            {
              v6 = *(v4 - 16);
              if (v4 != v6)
              {
                free(v6);
              }
            }

            llvm::ValueHandleBase::operator=((v4 - 48), v11);
            *(v4 - 24) = v13;
          }

          v4 += 88;
          v3 -= 88;
        }

        while (v3);
      }

      *(a1 + 8) = 0;
      llvm::ValueHandleBase::~ValueHandleBase(v7);
      llvm::ValueHandleBase::~ValueHandleBase(v11);
    }

    else
    {

      llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::shrink_and_clear(a1);
    }
  }
}

void sub_2579FD408(_Unwind_Exception *a1)
{
  llvm::ValueHandleBase::~ValueHandleBase((v2 + 8));
  llvm::ValueHandleBase::~ValueHandleBase((v1 + 8));
  _Unwind_Resume(a1);
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::shrink_and_clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 8);
  llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::destroyAll(a1);
  v4 = 1 << (33 - __clz(v3 - 1));
  if (v4 <= 64)
  {
    v4 = 64;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v5 == *(a1 + 16))
  {

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>,llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::initEmpty(a1);
  }

  else
  {
    llvm::deallocate_buffer(*a1, (88 * v2));

    llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value *,llvm::SmallVector<llvm::CallInst *,4u>,llvm::ValueMapConfig<llvm::Value *,llvm::sys::SmartMutex<false>>>,llvm::SmallVector<llvm::CallInst *,4u>>>::init(a1, v5);
  }
}

void MTLRuntimeStackTrace::MTLRuntimeStackTrace(MTLRuntimeStackTrace *this, MTLBoundsCheck::SharedPassData *a2)
{
  v3 = MetalModulePass::MetalModulePass(this, &MTLRuntimeStackTrace::ID, a2);
  *v3 = &unk_2868ECA18;
  v3[25] = 0;
  v3[24] = 0;
  v4 = v3 + 24;
  v3[23] = v3 + 24;
  v5 = v3 + 23;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy((v3 + 23), 0);
  *v5 = v4;
  *(this + 25) = 0;
  *v4 = 0;
}

void MTLRuntimeStackTrace::~MTLRuntimeStackTrace(MTLRuntimeStackTrace *this)
{
  *this = &unk_2868ECA18;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(this + 184, *(this + 24));
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, v2, v3, v4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v5, v6, v7);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868ECA18;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(this + 184, *(this + 24));
  *this = &unk_2868EB908;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, v2, v3, v4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 136, v5, v6, v7);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLRuntimeStackTrace::runOnModule(llvm::Type **this, llvm::Module *a2)
{
  v27[1] = *MEMORY[0x277D85DE8];
  MetalModulePass::runOnModule(this, a2);
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy((this + 23), this[24]);
  this[24] = 0;
  this[25] = 0;
  this[23] = (this + 24);
  v4 = this[14];
  v24[0] = this[10];
  v24[1] = v4;
  v5 = llvm::StructType::create();
  EntryFunction = MetalModulePass::getEntryFunction(this);
  if (EntryFunction)
  {
    v7 = *(EntryFunction + 80);
    v8 = v7 ? (v7 - 24) : 0;
    llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::IRBuilder(v24, v8, 0, 0, 0);
    FirstInsertionPt = llvm::BasicBlock::getFirstInsertionPt(v8);
    llvm::IRBuilderBase::SetInsertPoint(v24, v8, FirstInsertionPt);
    Int8PtrTy = llvm::Type::getInt8PtrTy(this[5], 0);
    v12 = llvm::ConstantPointerNull::get(Int8PtrTy, v11);
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(this[8]);
    llvm::IRBuilderBase::CreateAlignedStore(v24, v12, inserted, 0, 0);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v27);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v26);
    if (v24[0] != &v25)
    {
      free(v24[0]);
    }
  }

  v14 = a2 + 24;
  for (i = *(a2 + 4); i != v14; i = *(i + 8))
  {
    if (i)
    {
      v16 = (i - 56);
    }

    else
    {
      v16 = 0;
    }

    if ((llvm::GlobalValue::isDeclaration(v16) & 1) == 0 && !llvm::Value::getMetadata())
    {
      for (j = *(v16 + 10); j != (v16 + 72); j = j[1])
      {
        v18 = j - 3;
        if (!j)
        {
          v18 = 0;
        }

        v19 = v18 + 5;
        for (k = v18[6]; k != v19; k = k[1])
        {
          if (k)
          {
            v21 = (k - 3);
          }

          else
          {
            v21 = 0;
          }

          if (k && *(v21 + 16) == 84 && MTLRuntimeStackTrace::checkIfValidForStackTrace(this, v21))
          {
            v22 = MTLRuntimeStackTrace::getOrInsertFrameAlloca(this, v16, v5);
            MTLRuntimeStackTrace::addCallStackTrace(this, v16, v21, v5, v22);
          }
        }
      }
    }
  }

  return 1;
}

void std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

BOOL MTLRuntimeStackTrace::checkIfValidForStackTrace(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 32);
  result = 1;
  if (v2 && !*(v2 + 16) && *(v2 + 24) == *(a2 + 72))
  {
    Name = llvm::Value::getName(*(a2 - 32));
    if (v5 >= 4 && *Name == 779250017)
    {
      v11 = llvm::Value::getName(v2);
      if (v12 < 0xD)
      {
        return 0;
      }

      if (*v11 != 0x65746E692E726961 || *(v11 + 5) != 0x746365737265746ELL)
      {
        return 0;
      }
    }

    if (llvm::Value::getMetadata())
    {
      return 0;
    }

    v6 = llvm::Value::getName(v2);
    if (v7 >= 4 && *v6 == 778859629)
    {
      return 0;
    }

    v8 = llvm::Value::getName(v2);
    if (v9 >= 5 && *v8 == 1836477548 && *(v8 + 4) == 46)
    {
      return 0;
    }
  }

  return result;
}

uint64_t MTLRuntimeStackTrace::getOrInsertFrameAlloca(MTLRuntimeStackTrace *this, llvm::Function *a2, llvm::Type *a3)
{
  v18[7] = *MEMORY[0x277D85DE8];
  v14 = a2;
  for (i = *(this + 24); i; i = *i)
  {
    v6 = i[4];
    if (v6 <= a2)
    {
      if (v6 >= a2)
      {
        v15[0] = &v14;
        return std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::__emplace_unique_key_args<llvm::Function *,std::piecewise_construct_t const&,std::tuple<llvm::Function * const&>,std::tuple<>>(this + 184, &v14, &std::piecewise_construct, v15)[5];
      }

      ++i;
    }
  }

  v7 = *(a2 + 10);
  if (v7)
  {
    v8 = (v7 - 24);
  }

  else
  {
    v8 = 0;
  }

  FirstNonPHIOrDbg = llvm::BasicBlock::getFirstNonPHIOrDbg(v8);
  v12[0] = v8;
  MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *>(v15, v12);
  llvm::IRBuilderBase::SetInsertPoint(v15, FirstNonPHIOrDbg);
  v13 = 257;
  Alloca = llvm::IRBuilderBase::CreateAlloca(v15, a3, 0, v12);
  v12[0] = &v14;
  std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::__emplace_unique_key_args<llvm::Function *,std::piecewise_construct_t const&,std::tuple<llvm::Function * const&>,std::tuple<>>(this + 184, &v14, &std::piecewise_construct, v12)[5] = Alloca;
  llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v18);
  llvm::IRBuilderFolder::~IRBuilderFolder(&v17);
  if (v15[0] != &v16)
  {
    free(v15[0]);
  }

  return Alloca;
}

void sub_2579FDC3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void MTLRuntimeStackTrace::addCallStackTrace(MTLBoundsCheck::SharedPassData **a1, int a2, llvm::Instruction *a3, llvm::Type *a4, llvm::Value *a5)
{
  v27[7] = *MEMORY[0x277D85DE8];
  if (MTLBoundsCheck::SharedPassData::indexForInstruction(a1[8], a3) != -1)
  {
    v23 = *(a3 + 5);
    MTLIRBuilder::MTLIRBuilder<llvm::BasicBlock *&>(v24, &v23);
    llvm::IRBuilderBase::SetInsertPoint(v24, a3);
    inserted = MTLBoundsCheck::SharedPassData::getOrInsertStackTraceGV(a1[8]);
    v22 = 257;
    ConstInBoundsGEP2_32 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(v24, a4, a5, 0, 1u, v21);
    v11 = *(inserted + 3);
    v22 = 257;
    AlignedLoad = llvm::IRBuilderBase::CreateAlignedLoad(v24, v11, inserted, 0, 0, v21);
    llvm::IRBuilderBase::CreateAlignedStore(v24, AlignedLoad, ConstInBoundsGEP2_32, 0, 0);
    v22 = 257;
    v13 = llvm::IRBuilderBase::CreateConstInBoundsGEP2_32(v24, a4, a5, 0, 0, v21);
    v14 = llvm::ConstantInt::get();
    llvm::IRBuilderBase::CreateAlignedStore(v24, v14, v13, 0, 0);
    v15 = a1[14];
    v22 = 257;
    PointerBitCastOrAddrSpaceCast = llvm::IRBuilderBase::CreatePointerBitCastOrAddrSpaceCast(v24, a5, v15, v21, v16);
    llvm::IRBuilderBase::CreateAlignedStore(v24, PointerBitCastOrAddrSpaceCast, inserted, 0, 0);
    v18 = *(a3 + 4);
    if (v18)
    {
      v19 = v18 == *(a3 + 5) + 40;
    }

    else
    {
      v19 = 1;
    }

    if (v19)
    {
      v20 = 0;
    }

    else
    {
      v20 = (v18 - 24);
    }

    llvm::IRBuilderBase::SetInsertPoint(v24, v20);
    llvm::IRBuilderBase::CreateAlignedStore(v24, AlignedLoad, inserted, 0, 0);
    llvm::IRBuilderDefaultInserter::~IRBuilderDefaultInserter(v27);
    llvm::IRBuilderFolder::~IRBuilderFolder(&v26);
    if (v24[0] != &v25)
    {
      free(v24[0]);
    }
  }
}

void sub_2579FDE6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<llvm::Function *,llvm::Value *>,std::__map_value_compare<llvm::Function *,std::__value_type<llvm::Function *,llvm::Value *>,std::less<llvm::Function *>,true>,std::allocator<std::__value_type<llvm::Function *,llvm::Value *>>>::__emplace_unique_key_args<llvm::Function *,std::piecewise_construct_t const&,std::tuple<llvm::Function * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, void **a4)
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

void MTLMemoryCheckPass::~MTLMemoryCheckPass(MTLMemoryCheckPass *this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);

  llvm::Pass::~Pass(this);
}

{
  *this = &unk_2868EB908;
  v5 = this + 136;
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(this + 160, a2, a3, a4);
  llvm::DenseMap<llvm::Function *,llvm::MDTuple *,llvm::DenseMapInfo<llvm::Function *,void>,llvm::detail::DenseMapPair<llvm::Function *,llvm::MDTuple *>>::~DenseMap(v5, v6, v7, v8);
  llvm::Pass::~Pass(this);

  JUMPOUT(0x259C6B890);
}

uint64_t MTLMemoryCheckPass::runOnModule(MTLMemoryCheckPass *this, llvm::Module *a2)
{
  MetalModulePass::runOnModule(this, a2);
  for (i = *(a2 + 4); i != (a2 + 24); i = i[1])
  {
    if (i)
    {
      v5 = (i - 7);
    }

    else
    {
      v5 = 0;
    }

    if ((*(v5 + 8) & 0xF) != 1 && (llvm::GlobalValue::isDeclaration(v5) & 1) == 0 && !llvm::Value::getMetadata())
    {
      MTLMemoryCheckPass::runOnFunction(this, v5);
    }
  }

  return 1;
}

uint64_t MTLMemoryCheckPass::runOnFunction(MTLMemoryCheckPass *this, llvm::Function *a2)
{
  v24[12] = *MEMORY[0x277D85DE8];
  v2 = a2 + 72;
  v3 = *(a2 + 10);
  if (v3 != a2 + 72)
  {
    do
    {
      v5 = v3 - 24;
      if (!v3)
      {
        v5 = 0;
      }

      v6 = *(v5 + 6);
      v7 = (v6 - 24);
      if (v6)
      {
        v8 = v6 - 24;
      }

      else
      {
        v8 = 0;
      }

      v21 = v24;
      v23 = 4;
      if (*(v8 + 16) - 29 >= 0xB)
      {
        do
        {
          v22 = 0;
          MTLBoundsCheck::gatherMemoryOperands(v7, &v21);
          if ((std::__any_of[abi:ne200100]<MTLBoundsCheck::MemoryAccessOperand *,MTLBoundsCheck::MemoryAccessOperand *,std::__identity,MTLMemoryCheckPass::runOnFunction(llvm::Function &)::{lambda(MTLBoundsCheck::MemoryAccessOperand * const&)#1}>(v21, v21 + 3 * v22) & 1) == 0 || !v22)
          {
            goto LABEL_17;
          }

          v9 = v21;
          v10 = 24 * v22;
          while (1)
          {
            v11 = *(this + 8);
            v12 = *v9;
            v19 = 0;
            v20 = v12;
            if ((llvm::DenseMapBase<llvm::DenseMap<llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>,llvm::Value *,llvm::detail::DenseSetEmpty,llvm::DenseMapInfo<llvm::Value *,void>,llvm::detail::DenseSetPair<llvm::Value *>>::LookupBucketFor<llvm::Value *>((v11 + 208), &v20, &v19) & 1) == 0)
            {
              break;
            }

            v9 += 3;
            v10 -= 24;
            if (!v10)
            {
              goto LABEL_17;
            }
          }

          if (v22 && (v14 = MTLMemoryCheckPass::createCheckedInstructionCall(this, v7)) != 0)
          {
            llvm::ReplaceInstWithInst(v7, v14, v13);
          }

          else
          {
LABEL_17:
            v14 = v7;
          }

          v15 = *(v14 + 4);
          v7 = (v15 - 24);
          if (v15)
          {
            v16 = v15 == *(v14 + 5) + 40;
          }

          else
          {
            v16 = 1;
          }

          if (v16)
          {
            v17 = 0;
          }

          else
          {
            v17 = v15 - 24;
          }
        }

        while (*(v17 + 16) - 29 > 0xA);
        if (v21 != v24)
        {
          free(v21);
        }
      }

      v3 = *(v3 + 1);
    }

    while (v3 != v2);
  }

  return 1;
}

void sub_2579FE340(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12 != v12)
  {
    free(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MTLMemoryCheckPass::createCheckedInstructionCall(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 48) || (*(a2 + 23) & 0x20) != 0) && llvm::Instruction::getMetadataImpl())
  {
    return 0;
  }

  v5 = *(a2 + 16);
  switch(v5)
  {
    case 'T':

      return MTLMemoryCheckPass::createCheckedFunction(a1, a2);
    case '=':

      return MTLMemoryCheckPass::createCheckedStoreCall(a1, a2);
    case '<':

      return MTLMemoryCheckPass::createCheckedLoadCall(a1, a2);
    default:
      return 0;
  }
}

uint64_t std::__any_of[abi:ne200100]<MTLBoundsCheck::MemoryAccessOperand *,MTLBoundsCheck::MemoryAccessOperand *,std::__identity,MTLMemoryCheckPass::runOnFunction(llvm::Function &)::{lambda(MTLBoundsCheck::MemoryAccessOperand * const&)#1}>(uint64_t **a1, uint64_t **a2)
{
  if (a1 == a2)
  {
    return 0;
  }

  do
  {
    v2 = **a1;
    v3 = *(v2 + 8);
    if ((v3 & 0xFE) == 0x12)
    {
      v3 = *(**(v2 + 16) + 8);
    }

    v4 = (v3 >> 8) - 1 >= 2 || *(a1 + 4) == 0;
    v5 = !v4;
    if (!v4)
    {
      break;
    }

    a1 += 3;
  }

  while (a1 != a2);
  return v5;
}

uint64_t MTLMemoryCheckPass::createCheckedLoadCall(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = **(a2 - 32);
  v4 = *(a2 + 18);
  v5 = *(a1 + 48);
  v11[0] = "mtl.checked_load.";
  v11[2] = (1 << (v4 >> 1));
  v12 = 2307;
  v16[0] = v11;
  v16[2] = ".";
  v17 = 770;
  v14[0] = v16;
  v14[2] = (v4 & 1);
  v15 = 2306;
  v6 = getMangledFunction<llvm::Type *&,llvm::Type *&>(v5, v14, *a2, &v13, (a1 + 80));
  if (llvm::GlobalValue::isDeclaration(v6))
  {
    *(v6 + 32) = *(v6 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v7 = *(a1 + 40);
    v14[0] = "entry";
    v15 = 259;
    llvm::BasicBlock::Create(v7, v14, v6, 0, v8);
  }

  if (v6)
  {
    v9 = *(v6 + 24);
  }

  else
  {
    v9 = 0;
  }

  v16[0] = *(a2 - 32);
  MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
  v16[1] = llvm::ConstantInt::get();
  v15 = 257;
  return llvm::CallInst::Create(v9, v6, v16, 2, 0, 0, v14, 0);
}

void sub_2579FEB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t MTLMemoryCheckPass::createCheckedStoreCall(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v18 = **(a2 - 32);
  if (!a2 || (v4 = a2, *(a2 + 16) != 60))
  {
    v4 = *(a2 - 64);
  }

  v5 = *v4;
  v6 = *(a2 + 18);
  v16 = 1 << (v6 >> 1);
  v17 = v5;
  v7 = *(a1 + 48);
  v14[0] = "mtl.checked_store.";
  v14[2] = &v16;
  v15 = 3075;
  v21[0] = v14;
  v22 = ".";
  v23 = 770;
  v19[0] = v21;
  v19[2] = (v6 & 1);
  v20 = 2306;
  v8 = getMangledFunction<llvm::Type *&,llvm::Type *&,llvm::Type *&>(v7, v19, *a2, &v18, &v17, (a1 + 80));
  if (llvm::GlobalValue::isDeclaration(v8))
  {
    *(v8 + 32) = *(v8 + 32) & 0xFFFFBFC0 | 0x4007;
    llvm::Function::addFnAttr();
    llvm::Function::addFnAttr();
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    v9 = *(a1 + 40);
    v19[0] = "entry";
    v20 = 259;
    llvm::BasicBlock::Create(v9, v19, v8, 0, v10);
  }

  if (v8)
  {
    v11 = *(v8 + 24);
  }

  else
  {
    v11 = 0;
  }

  v12 = *(a2 - 64);
  v21[0] = *(a2 - 32);
  v21[1] = v12;
  MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
  v22 = llvm::ConstantInt::get();
  v20 = 257;
  return llvm::CallInst::Create(v11, v8, v21, 3, 0, 0, v19, 0);
}

void sub_2579FF238(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, ...)
{
  va_start(va, a22);
  llvm::IRBuilder<llvm::ConstantFolder,llvm::IRBuilderDefaultInserter>::~IRBuilder(va);
  _Unwind_Resume(a1);
}

uint64_t MTLMemoryCheckPass::createCheckedFunction(uint64_t a1, uint64_t a2)
{
  v60[12] = *MEMORY[0x277D85DE8];
  v2 = *(a2 - 32);
  if (!v2)
  {
    return 0;
  }

  if (*(v2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 72);
  if (*(v2 + 24) != v4)
  {
    return 0;
  }

  if (!llvm::GlobalValue::isDeclaration(*(a2 - 32)))
  {
    return 0;
  }

  if (llvm::Value::getMetadata())
  {
    return 0;
  }

  Name = llvm::Value::getName(v2);
  v43 = Name;
  v44 = v7;
  if (v7 < 4)
  {
    return 0;
  }

  if (*Name != 779250017)
  {
    if (v7 == 4)
    {
      return 0;
    }

    if (*Name != 1836477548 || Name[4] != 46)
    {
      return 0;
    }
  }

  v58 = v60;
  v59 = 0x400000000;
  MTLBoundsCheck::gatherMemoryArguments(v2, &v58);
  v11 = v58;
  if (v59)
  {
    v12 = 0;
    while (1)
    {
      v13 = *v58[v12];
      v14 = *(v13 + 8);
      if ((v14 & 0xFE) == 0x12)
      {
        v14 = *(**(v13 + 16) + 8);
      }

      if ((v14 >> 8) - 1 < 2)
      {
        break;
      }

      v12 += 3;
      if (3 * v59 == v12)
      {
        goto LABEL_21;
      }
    }

    v15 = *(v4 + 12);
    v45[0] = 0;
    llvm::SmallVector<unsigned long,6u>::SmallVector(&v56, (v15 + 62) >> 6, v45);
    v16 = v15 - 1;
    v57[12] = v15 - 1;
    v53 = v55;
    v54 = 0x400000000;
    v50 = v52;
    v51 = xmmword_257A6DAA0;
    llvm::raw_svector_ostream::raw_svector_ostream(v41, &v50);
    llvm::raw_ostream::operator<<(v41, "mtl.checked.", 0xCuLL);
    llvm::raw_ostream::operator<<(v41, v43, v44);
    if (v44 < 0xB)
    {
      goto LABEL_59;
    }

    if ((*v43 != 0x6D656D2E6D766C6CLL || *(v43 + 3) != 0x7970636D656D2E6DLL) && (*v43 != 0x6D656D2E6D766C6CLL || *(v43 + 3) != 0x7465736D656D2E6DLL))
    {
      if (v44 == 11)
      {
LABEL_59:
        Function = llvm::Module::getFunction();
        if (!Function)
        {
          llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::init(v49, 64);
          v49[24] = 0;
          v49[48] = 0;
          v47[0] = &v48;
          v47[1] = 0x400000000;
          v31 = *(v4 + 12);
          if (v31 != 1)
          {
            v32 = 0;
            do
            {
              if (((*(v56 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
              {
                v45[0] = *(*(v4 + 16) + 8 * (v32 + 1));
                llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v47, v45);
                v45[0] = *(a2 - 32 * (*(a2 + 20) & 0x7FFFFFF) + 32 * v32);
                llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v53, v45);
                v31 = *(v4 + 12);
              }

              ++v32;
            }

            while (v32 < (v31 - 1));
          }

          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(v47, (a1 + 80));
          MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
          v45[0] = llvm::ConstantInt::get();
          llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v53, v45);
          v33 = llvm::FunctionType::get();
          v35 = *v42;
          v34 = v42[1];
          v46 = 261;
          v45[0] = v35;
          v45[1] = v34;
          v36 = llvm::Function::Create(v33, 7uLL, v45, *(a1 + 48));
          *(v36 + 9) = *(v36 + 9) & 0xC00F | *(v2 + 18) & 0x3FF0;
          llvm::MDTuple::getImpl();
          llvm::Value::setMetadata();
          llvm::Function::addFnAttr();
          llvm::Function::addFnAttr();
          v37 = *(a1 + 40);
          v45[0] = "entry";
          v46 = 259;
          llvm::BasicBlock::Create(v37, v45, v36, 0, v38);
        }

        v28 = *(v4 + 12);
        if (v28 != 1)
        {
          v29 = 0;
          v30 = a2;
          do
          {
            if (((*(v56 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
            {
              v45[0] = *(v30 - 32 * (*(a2 + 20) & 0x7FFFFFF));
              llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v53, v45);
              v28 = *(v4 + 12);
            }

            ++v29;
            v30 += 32;
          }

          while (v29 < (v28 - 1));
        }

        MTLBoundsCheck::SharedPassData::indexForInstruction(*(a1 + 64), a2);
        v45[0] = llvm::ConstantInt::get();
        llvm::SmallVectorImpl<llvm::Metadata *>::emplace_back<llvm::Metadata *>(&v53, v45);
        llvm::raw_ostream::~raw_ostream(v41);
        if (v50 != v52)
        {
          free(v50);
        }

        v39 = *(Function + 24);
        v46 = 257;
        v9 = llvm::CallInst::Create(v39, Function, v53, v54, v45, 0);
        v40 = *(v9 + 18) & 0xFFFC | *(a2 + 18) & 3;
        *(v9 + 18) = v40;
        *(v9 + 18) = v40 & 0xF003 | *(a2 + 18) & 0xFFC;
        if (v53 != v55)
        {
          free(v53);
        }

        if (v56 != v57)
        {
          free(v56);
        }

        v11 = v58;
        goto LABEL_79;
      }

      if (*v43 != 0x6D656D2E6D766C6CLL || *(v43 + 2) != 1702260589)
      {
        if (v44 >= 0x11)
        {
          v20 = *v43 == 0x6D6F74612E726961 && *(v43 + 1) == 0x61626F6C672E6369;
          if (v20 && v43[16] == 108)
          {
            v22 = llvm::StringRef::find() == -1 ? -3 : -4;
            v23 = v22 + v16;
            if (__CFADD__(v22, v16))
            {
              v24 = a2 + 32 * v23;
              do
              {
                *(v56 + (v23 >> 6)) |= 1 << v23;
                llvm::raw_ostream::operator<<(v41, ".", 1uLL);
                llvm::raw_ostream::operator<<();
                LODWORD(v23) = v23 + 1;
                v24 += 32;
              }

              while (!__CFADD__(v22++, 1));
            }
          }
        }

        goto LABEL_59;
      }
    }

    if (v16 >= 4)
    {
      v26 = 3;
      if (v15 == 6)
      {
        v26 = 4;
      }

      *v56 |= 1 << v26;
      llvm::raw_ostream::operator<<(v41, ".", 1uLL);
      llvm::raw_ostream::operator<<();
      if (v15 == 6)
      {
        *v56 |= 8uLL;
        llvm::raw_ostream::operator<<(v41, ".", 1uLL);
        llvm::raw_ostream::operator<<();
      }
    }

    goto LABEL_59;
  }

LABEL_21:
  v9 = 0;
LABEL_79:
  if (v11 != v60)
  {
    free(v11);
  }

  return v9;
}

void sub_257A00104(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35)
{
  llvm::raw_ostream::~raw_ostream(&a35);
  if (STACK[0x280] != a18)
  {
    free(STACK[0x280]);
  }

  if (STACK[0x2D8] != a19)
  {
    free(STACK[0x2D8]);
  }

  if (STACK[0x308] != &STACK[0x318])
  {
    free(STACK[0x308]);
  }

  v37 = *(v35 - 224);
  if (v37 != a20)
  {
    free(v37);
  }

  _Unwind_Resume(a1);
}

uint64_t MTLMemoryCheckPass::createQueryMemoryUsageCall(void *a1, MTLBoundsCheck *a2, unsigned int a3)
{
  v14[1] = *MEMORY[0x277D85DE8];
  v4 = a3 - 1;
  if (a3 - 1 > 2)
  {
    return 0;
  }

  v5 = qword_257A6DD50[v4];
  v6 = off_27984E588[v4];
  v7 = a1[6];
  v13 = 261;
  v12[0] = v6;
  v12[1] = v5;
  v8 = a1[12];
  v14[0] = llvm::PointerType::get();
  v9 = getMangledFunction<llvm::PointerType *>(v7, v12, v8, v14);
  if (!llvm::Value::getMetadata())
  {
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
  }

  if (!llvm::Value::getMetadata())
  {
    llvm::MDTuple::getImpl();
    llvm::Value::setMetadata();
    if (v9)
    {
      goto LABEL_6;
    }

LABEL_9:
    v10 = 0;
    goto LABEL_10;
  }

  if (!v9)
  {
    goto LABEL_9;
  }

LABEL_6:
  v10 = *(v9 + 24);
LABEL_10:
  v14[0] = a2;
  v13 = 257;
  return llvm::CallInst::Create(v10, v9, v14, 1, 0, 0, v12, 0);
}

uint64_t llvm::IRBuilderBase::CreateBr(unsigned int **this, llvm::BasicBlock *a2, llvm::Instruction *a3)
{
  v4 = llvm::BranchInst::Create(a2, 0, a3);
  v7 = 257;
  return llvm::IRBuilderBase::Insert<llvm::CastInst>(this, v4, v6);
}

uint64_t llvm::BranchInst::setSuccessor(uint64_t result, unsigned int a2, uint64_t a3)
{
  v3 = result - 32 * a2;
  v5 = *(v3 - 32);
  v4 = v3 - 32;
  if (v5)
  {
    v6 = *(v4 + 8);
    **(v4 + 16) = v6;
    if (v6)
    {
      *(v6 + 16) = *(v4 + 16);
    }
  }

  *v4 = a3;
  if (a3)
  {
    v9 = *(a3 + 8);
    v7 = (a3 + 8);
    v8 = v9;
    *(v4 + 8) = v9;
    if (v9)
    {
      *(v8 + 16) = v4 + 8;
    }

    *(v4 + 16) = v7;
    *v7 = v4;
  }

  return result;
}

uint64_t llvm::BranchInst::Create(llvm::BranchInst *this, llvm::BasicBlock *a2, llvm::BasicBlock *a3)
{
  v5 = llvm::User::operator new(0x40);
  MEMORY[0x259C6A270](v5, this, a2);
  return v5;
}

void *llvm::SmallVector<unsigned long,6u>::SmallVector(void *a1, uint64_t a2, uint64_t *a3)
{
  *a1 = a1 + 2;
  a1[1] = 0x600000000;
  llvm::SmallVectorImpl<unsigned long>::assign(a1, a2, *a3);
  return a1;
}

void sub_257A005A0(_Unwind_Exception *exception_object)
{
  v3 = v2;
  if (*v1 != v3)
  {
    free(*v1);
  }

  _Unwind_Resume(exception_object);
}

_DWORD *llvm::SmallVectorImpl<unsigned long>::assign(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  if (a1[3] < a2)
  {
    llvm::SmallVectorTemplateBase<llvm::Value *,true>::growAndAssign(a1, a2, a3);
  }

  v3 = *a1;
  v4 = a1[2];
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = a1[2];
  }

  if (v5)
  {
    v6 = 0;
    v7 = (v5 + 1) & 0x1FFFFFFFELL;
    v8 = vdupq_n_s64(v5 - 1);
    v9 = (v3 + 8);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v6), xmmword_257A6D000)));
      if (v10.i8[0])
      {
        *(v9 - 1) = a3;
      }

      if (v10.i8[4])
      {
        *v9 = a3;
      }

      v6 += 2;
      v9 += 2;
    }

    while (v7 != v6);
  }

  v11 = a2 - v4;
  if (a2 > v4)
  {
    v12 = 0;
    v13 = vdupq_n_s64(v11 - 1);
    v14 = (v3 + 8 * v4 + 8);
    do
    {
      v15 = vmovn_s64(vcgeq_u64(v13, vorrq_s8(vdupq_n_s64(v12), xmmword_257A6D000)));
      if (v15.i8[0])
      {
        *(v14 - 1) = a3;
      }

      if (v15.i8[4])
      {
        *v14 = a3;
      }

      v12 += 2;
      v14 += 2;
    }

    while (((v11 + 1) & 0xFFFFFFFFFFFFFFFELL) != v12);
  }

  a1[2] = a2;
  return a1;
}

void llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::init(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = (4 * a2 / 3u + 1) | ((4 * a2 / 3u + 1) >> 1);
    v4 = v3 | (v3 >> 2) | ((v3 | (v3 >> 2)) >> 4);
    LODWORD(v4) = (((v4 | (v4 >> 8)) >> 16) | v4 | (v4 >> 8)) + 1;
    *(a1 + 16) = v4;
    *a1 = MEMORY[0x259C6A8D0](v4 << 6, 8);

    llvm::DenseMapBase<llvm::DenseMap<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>,llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH,llvm::DenseMapInfo<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,void>,llvm::detail::DenseMapPair<llvm::ValueMapCallbackVH<llvm::Value const*,llvm::WeakTrackingVH,llvm::ValueMapConfig<llvm::Value const*,llvm::sys::SmartMutex<false>>>,llvm::WeakTrackingVH>>::initEmpty(a1);
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }
}