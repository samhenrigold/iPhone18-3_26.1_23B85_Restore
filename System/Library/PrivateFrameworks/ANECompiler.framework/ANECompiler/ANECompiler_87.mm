void sub_23CD784F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *a27, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, uint64_t a34, void *a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, void *a56, uint64_t a57, int a58, __int16 a59, char a60, char a61)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
    if ((a32 & 0x80000000) == 0)
    {
LABEL_5:
      _Unwind_Resume(a1);
    }
  }

  else if ((a32 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  operator delete(a27);
  _Unwind_Resume(a1);
}

void google::protobuf::OneofDescriptor::DebugString(uint64_t a1, int a2, std::string *a3, __int16 *a4)
{
  v43[2] = *MEMORY[0x277D85DE8];
  if (a2 < 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = 2 * a2;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__b.__r_.__value_.__s + 23) = 2 * a2;
  if (a2)
  {
    memset(&__b, 32, v8);
  }

  __b.__r_.__value_.__s.__data_[v8] = 0;
  v32 = 0;
  *v31 = 0u;
  v30 = 0u;
  *v29 = 0u;
  *v28 = 0u;
  v33 = *a4;
  v34 = *(a4 + 2);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __b.__r_.__value_.__l.__data_, __b.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __b;
  }

  if (*a4 == 1)
  {
    SourceLocation = google::protobuf::OneofDescriptor::GetSourceLocation(a1, &v27);
  }

  else
  {
    SourceLocation = 0;
  }

  v26[0] = SourceLocation;
  size = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  p_b = &__b;
  if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = __b.__r_.__value_.__l.__size_;
    p_b = __b.__r_.__value_.__r.__words[0];
  }

  v12 = *(a1 + 8);
  v13 = *(v12 + 23);
  v14 = v12[1];
  if ((v13 & 0x80u) != 0)
  {
    v12 = *v12;
    v13 = v14;
  }

  v37 = p_b;
  v38 = size;
  v39 = v12;
  v40 = v13;
  absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0oneof $1 {", 0xCuLL, &v37, 2uLL);
  google::protobuf::OneofOptions::OneofOptions(&v37, 0, *(a1 + 24));
  v15 = *(a1 + 32);
  if (v15 != &google::protobuf::_FeatureSet_default_instance_)
  {
    v41 |= 1u;
    v16 = v42;
    if (!v42)
    {
      v17 = v38;
      if (v38)
      {
        v17 = *(v38 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v17);
      v42 = v16;
    }

    google::protobuf::FeatureSet::CopyFrom(v16, v15);
  }

  if (*(a4 + 2) == 1)
  {
    std::string::append(a3, " ... }\n");
  }

  else
  {
    std::string::append(a3, "\n");
    if (*(a1 + 4) >= 1)
    {
      v18 = 0;
      v19 = 0;
      do
      {
        google::protobuf::FieldDescriptor::DebugString((*(a1 + 48) + v18), (a2 + 1), a3, a4);
        ++v19;
        v18 += 88;
      }

      while (v19 < *(a1 + 4));
    }

    v20 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
    v21 = &__b;
    if ((__b.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = __b.__r_.__value_.__l.__size_;
      v21 = __b.__r_.__value_.__r.__words[0];
    }

    v43[0] = v21;
    v43[1] = v20;
    absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "$0}\n", 4uLL, v43, 1uLL);
  }

  google::protobuf::OneofOptions::~OneofOptions(&v37);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  v22 = v31[0];
  if (v31[0])
  {
    v23 = v31[1];
    v24 = v31[0];
    if (v31[1] != v31[0])
    {
      do
      {
        v25 = *(v23 - 1);
        v23 -= 3;
        if (v25 < 0)
        {
          operator delete(*v23);
        }
      }

      while (v23 != v22);
      v24 = v31[0];
    }

    v31[1] = v22;
    operator delete(v24);
  }

  if (SHIBYTE(v30) < 0)
  {
    operator delete(v29[1]);
    if ((SHIBYTE(v29[0]) & 0x80000000) == 0)
    {
LABEL_43:
      if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return;
      }

LABEL_47:
      operator delete(__b.__r_.__value_.__l.__data_);
      return;
    }
  }

  else if ((SHIBYTE(v29[0]) & 0x80000000) == 0)
  {
    goto LABEL_43;
  }

  operator delete(v28[0]);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_47;
  }
}

void sub_23CD789F4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *__p, uint64_t a29, int a30, __int16 a31, char a32, char a33, char a34)
{
  google::protobuf::SourceLocation::~SourceLocation((v34 + 8));
  if (a33 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL google::protobuf::anonymous namespace::FormatBracketedOptions(uint64_t a1, google::protobuf::MessageLite *a2, uint64_t a3, std::string *a4)
{
  __src = 0;
  v15 = 0;
  v16 = 0;
  v6 = __src;
  if (Options)
  {
    v7 = v15;
    absl::lts_20240722::strings_internal::JoinAlgorithm<std::__wrap_iter<std::string const*>,void>(&__p, __src, v15, ", ", 2uLL);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    std::string::append(a4, p_p, size);
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v7 = v15;
  }

  if (v6)
  {
    if (v6 != v7)
    {
      v10 = v7;
      do
      {
        v11 = *(v10 - 1);
        v10 -= 3;
        if (v11 < 0)
        {
          operator delete(*v10);
        }
      }

      while (v10 != v6);
    }

    operator delete(v6);
  }

  return v6 != v7;
}

void sub_23CD78B50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void **a15)
{
  if (a14 < 0)
  {
    operator delete(__p);
    std::vector<std::string>::~vector[abi:ne200100](&a15);
    _Unwind_Resume(a1);
  }

  std::vector<std::string>::~vector[abi:ne200100](&a15);
  _Unwind_Resume(a1);
}

void google::protobuf::FieldDescriptor::DebugString(std::string *__return_ptr a1@<X8>, google::protobuf::FieldDescriptor *this@<X0>)
{
  v2 = 0;
  v3 = 0;
  google::protobuf::FieldDescriptor::DebugStringWithOptions(this, &v2, a1);
}

void google::protobuf::FieldDescriptor::DebugStringWithOptions(google::protobuf::FieldDescriptor *this@<X0>, __int16 *a2@<X1>, std::string *a3@<X8>)
{
  v13[2] = *MEMORY[0x277D85DE8];
  *&a3->__r_.__value_.__l.__data_ = 0uLL;
  a3->__r_.__value_.__r.__words[2] = 0;
  if ((*(this + 1) & 8) != 0)
  {
    v7 = *(*(this + 4) + 8);
    v10 = *(v7 + 24);
    v8 = v7 + 24;
    v9 = v10;
    v11 = *(v8 + 8);
    if (*(v8 + 23) >= 0)
    {
      v12 = *(v8 + 23);
    }

    else
    {
      v8 = v9;
      v12 = v11;
    }

    v13[0] = v8;
    v13[1] = v12;
    absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(a3, "extend .$0 {\n", 0xDuLL, v13, 1uLL);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  google::protobuf::FieldDescriptor::DebugString(this, v6, a3, a2);
  if ((*(this + 1) & 8) != 0)
  {
    std::string::append(a3, "}\n");
  }
}

void sub_23CD78CA4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

unint64_t google::protobuf::FieldDescriptor::FieldTypeNameDebugString@<X0>(std::string *__return_ptr a1@<X8>, google::protobuf::FieldDescriptor *this@<X0>)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = *(this + 3);
  if (v4)
  {
    v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
    v26 = this;
    if (atomic_load_explicit(v4, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v4, 1, &v28, &v26);
    }
  }

  v5 = *(this + 2);
  if ((v5 - 10) < 2)
  {
    v6 = *(this + 3);
    if (*(*(this + 2) + 32) <= 999)
    {
      if (!v6)
      {
        if (v5 == 10)
        {
          goto LABEL_37;
        }

        v28 = ".";
        v29 = 1;
        goto LABEL_25;
      }

      v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v26 = this;
      if (atomic_load_explicit(v6, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v28, &v26);
      }

      v6 = *(this + 3);
      if (*(this + 2) == 10)
      {
        if (v6)
        {
          v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
          v26 = this;
          if (atomic_load_explicit(v6, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, &v28, &v26);
          }

          v7 = *(this + 2);
          goto LABEL_38;
        }

LABEL_37:
        v7 = 10;
LABEL_38:
        v23 = (&google::protobuf::FieldDescriptor::kTypeToName)[v7];
        result = strlen(v23);
        if (result > 0x7FFFFFFFFFFFFFF7)
        {
          std::string::__throw_length_error[abi:ne200100]();
        }

        v24 = result;
        if (result >= 0x17)
        {
          operator new();
        }

LABEL_40:
        *(&a1->__r_.__value_.__s + 23) = v24;
        if (v24)
        {
          result = memmove(a1, v23, v24);
        }

        a1->__r_.__value_.__s.__data_[v24] = 0;
        return result;
      }
    }

    v28 = ".";
    v29 = 1;
    if (v6)
    {
      v25 = this;
      if (atomic_load_explicit(v6, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v6, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v25);
      }
    }

LABEL_25:
    v16 = *(*(this + 6) + 8);
    v19 = *(v16 + 24);
    v17 = v16 + 24;
    v18 = v19;
    v20 = *(v17 + 8);
    if (*(v17 + 23) >= 0)
    {
      v21 = *(v17 + 23);
    }

    else
    {
      v17 = v18;
      v21 = v20;
    }

    v26 = v17;
    v27 = v21;
    return absl::lts_20240722::StrCat(&v28, &v26, a1);
  }

  if (v5 != 14)
  {
    v22 = *(this + 3);
    if (v22)
    {
      v28 = google::protobuf::FieldDescriptor::TypeOnceInit;
      v26 = this;
      if (atomic_load_explicit(v22, memory_order_acquire) != 221)
      {
        absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v22, 1, &v28, &v26);
      }

      v5 = *(this + 2);
    }

    v23 = (&google::protobuf::FieldDescriptor::kTypeToName)[v5];
    result = strlen(v23);
    if (result > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    v24 = result;
    if (result >= 0x17)
    {
      operator new();
    }

    goto LABEL_40;
  }

  v28 = ".";
  v29 = 1;
  v8 = *(this + 3);
  if (v8)
  {
    v26 = this;
    if (atomic_load_explicit(v8, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v8, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v26);
    }
  }

  v9 = *(*(this + 6) + 8);
  v12 = *(v9 + 24);
  v10 = v9 + 24;
  v11 = v12;
  v13 = *(v10 + 8);
  if (*(v10 + 23) >= 0)
  {
    v14 = *(v10 + 23);
  }

  else
  {
    v10 = v11;
    v14 = v13;
  }

  v26 = v10;
  v27 = v14;
  return absl::lts_20240722::StrCat(&v28, &v26, a1);
}

void google::protobuf::EnumDescriptor::DebugString(google::protobuf::EnumDescriptor *this@<X0>, void *a2@<X8>)
{
  v2 = 0;
  v3 = 0;
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  google::protobuf::EnumDescriptor::DebugString(this, 0, a2, &v2);
}

void sub_23CD790B4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::EnumValueDescriptor::DebugString(uint64_t a1, uint64_t a2, std::string *a3, __int16 *a4)
{
  v51[2] = *MEMORY[0x277D85DE8];
  if ((a2 & 0x80000000) != 0)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v8 = 2 * a2;
  if (v8 >= 0x17)
  {
    operator new();
  }

  *(&__b.__r_.__value_.__s + 23) = 2 * a2;
  if (a2)
  {
    memset(&__b, 32, v8);
  }

  __b.__r_.__value_.__s.__data_[v8] = 0;
  v38 = 0;
  *v37 = 0u;
  v36 = 0u;
  *v35 = 0u;
  *v34 = 0u;
  v39 = *a4;
  v40 = *(a4 + 2);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, __b.__r_.__value_.__l.__data_, __b.__r_.__value_.__l.__size_);
  }

  else
  {
    __p = __b;
  }

  if (*a4 == 1)
  {
    SourceLocation = google::protobuf::EnumValueDescriptor::GetSourceLocation(a1, &v33);
  }

  else
  {
    SourceLocation = 0;
  }

  v31 = a2;
  v32[0] = SourceLocation;
  v10 = a3;
  v11 = HIBYTE(__b.__r_.__value_.__r.__words[2]);
  v12 = *&__b.__r_.__value_.__l.__data_;
  v13 = *(a1 + 8);
  v14 = *(v13 + 23);
  v16 = *v13;
  v15 = v13[1];
  v18 = absl::lts_20240722::numbers_internal::FastIntToBuffer(*(a1 + 4), &v50[0].__r_.__value_.__s.__data_[16], v17);
  v50[0].__r_.__value_.__r.__words[0] = &v50[0].__r_.__value_.__r.__words[2];
  v50[0].__r_.__value_.__l.__size_ = v18 - &v50[0].__r_.__value_.__r.__words[2];
  if ((v14 & 0x80u) == 0)
  {
    v19 = v13;
  }

  else
  {
    v19 = v16;
  }

  if ((v14 & 0x80u) == 0)
  {
    v20 = v14;
  }

  else
  {
    v20 = v15;
  }

  p_b = &__b;
  if (v11 >= 0)
  {
    v22 = v11;
  }

  else
  {
    v22 = *(&v12 + 1);
    p_b = v12;
  }

  v43 = p_b;
  v44 = v22;
  v45 = v19;
  v46 = v20;
  v47 = &v50[0].__r_.__value_.__s.__data_[16];
  v48 = v18 - &v50[0].__r_.__value_.__r.__words[2];
  absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(v10, "$0$1 = $2", 9uLL, &v43, 3uLL);
  google::protobuf::EnumValueOptions::EnumValueOptions(&v43, 0, *(a1 + 24));
  v23 = *(a1 + 32);
  if (v23 != &google::protobuf::_FeatureSet_default_instance_)
  {
    LODWORD(v48) = v48 | 1;
    v24 = v49;
    if (!v49)
    {
      v25 = v44;
      if (v44)
      {
        v25 = *(v44 & 0xFFFFFFFFFFFFFFFELL);
      }

      google::protobuf::Arena::DefaultConstruct<google::protobuf::FeatureSet>(v25);
      v49 = v24;
    }

    google::protobuf::FeatureSet::CopyFrom(v24, v23);
  }

  memset(v50, 0, 24);
  {
    size = HIBYTE(v50[0].__r_.__value_.__r.__words[2]);
    v27 = v50;
    if ((v50[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v50[0].__r_.__value_.__l.__size_;
      v27 = v50[0].__r_.__value_.__r.__words[0];
    }

    v51[0] = v27;
    v51[1] = size;
    absl::lts_20240722::substitute_internal::SubstituteAndAppendArray(v10, " [$0]", 5uLL, v51, 1uLL);
  }

  std::string::append(v10, ";\n");
  if (SHIBYTE(v50[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v50[0].__r_.__value_.__l.__data_);
    google::protobuf::EnumValueOptions::~EnumValueOptions(&v43);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
LABEL_34:
      v28 = v37[0];
      if (!v37[0])
      {
        goto LABEL_35;
      }

LABEL_41:
      v29 = v37[1];
      if (v37[1] == v28)
      {
        v37[1] = v28;
        operator delete(v28);
        if (SHIBYTE(v36) < 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        do
        {
          v30 = *(v29 - 1);
          v29 -= 3;
          if (v30 < 0)
          {
            operator delete(*v29);
          }
        }

        while (v29 != v28);
        v37[1] = v28;
        operator delete(v37[0]);
        if (SHIBYTE(v36) < 0)
        {
          goto LABEL_48;
        }
      }

LABEL_36:
      if ((SHIBYTE(v35[0]) & 0x80000000) == 0)
      {
        goto LABEL_37;
      }

      goto LABEL_49;
    }
  }

  else
  {
    google::protobuf::EnumValueOptions::~EnumValueOptions(&v43);
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_34;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v28 = v37[0];
  if (v37[0])
  {
    goto LABEL_41;
  }

LABEL_35:
  if ((SHIBYTE(v36) & 0x80000000) == 0)
  {
    goto LABEL_36;
  }

LABEL_48:
  operator delete(v35[1]);
  if ((SHIBYTE(v35[0]) & 0x80000000) == 0)
  {
LABEL_37:
    if ((SHIBYTE(__b.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return;
    }

LABEL_50:
    operator delete(__b.__r_.__value_.__l.__data_);
    return;
  }

LABEL_49:
  operator delete(v34[0]);
  if (SHIBYTE(__b.__r_.__value_.__r.__words[2]) < 0)
  {
    goto LABEL_50;
  }
}

void sub_23CD794A0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *__p, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  google::protobuf::SourceLocation::~SourceLocation((v36 + 8));
  if (a35 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

BOOL google::protobuf::FieldDescriptor::is_packed(google::protobuf::FieldDescriptor *this)
{
  if ((~*(this + 1) & 0x60) != 0)
  {
    return 0;
  }

  v7[1] = v1;
  v7[2] = v2;
  v3 = *(this + 3);
  if (v3 && (v7[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v6 = this, atomic_load_explicit(v3, memory_order_acquire) != 221))
  {
    v5 = this;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v3, 1, v7, &v6);
    this = v5;
    if (v5[2] - 13 <= 0xFFFFFFFB)
    {
      return *(*(this + 9) + 56) == 1;
    }
  }

  else if (*(this + 2) - 13 <= 0xFFFFFFFB)
  {
    return *(*(this + 9) + 56) == 1;
  }

  return 0;
}

BOOL google::protobuf::FieldDescriptor::requires_utf8_validation(google::protobuf::FieldDescriptor *this)
{
  v1 = *(this + 3);
  if (v1 && (v4 = this, v5 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v1, memory_order_acquire) != 221))
  {
    v3 = this;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v1, 1, &v5, &v4);
    this = v3;
    if (*(v3 + 2) == 9)
    {
      return *(*(this + 9) + 60) == 2;
    }
  }

  else if (*(this + 2) == 9)
  {
    return *(*(this + 9) + 60) == 2;
  }

  return 0;
}

BOOL google::protobuf::FieldDescriptor::has_presence(google::protobuf::FieldDescriptor *this)
{
  if ((~*(this + 1) & 0x60) == 0)
  {
    return 0;
  }

  v7[1] = v1;
  v7[2] = v2;
  v4 = *(this + 3);
  if (v4 && (v7[0] = google::protobuf::FieldDescriptor::TypeOnceInit, v6 = this, atomic_load_explicit(v4, memory_order_acquire) != 221))
  {
    v5 = this;
    absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v4, 1, v7, &v6);
    this = v5;
    if ((*(v5 + 2) & 0xFE) == 0xA)
    {
      return 1;
    }
  }

  else if ((*(this + 2) & 0xFE) == 0xA)
  {
    return 1;
  }

  return (*(this + 1) & 0x10) != 0 && *(this + 5) || *(*(this + 9) + 48) != 2;
}

BOOL google::protobuf::FieldDescriptor::legacy_enum_field_treated_as_closed(google::protobuf::FieldDescriptor *this)
{
  v2 = *(this + 3);
  if (!v2 || (v5 = this, v6 = google::protobuf::FieldDescriptor::TypeOnceInit, atomic_load_explicit(v2, memory_order_acquire) == 221))
  {
    if (*(this + 2) == 14)
    {
      goto LABEL_4;
    }

    return 0;
  }

  absl::lts_20240722::base_internal::CallOnceImpl<void (*)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v2, 1, &v6, &v5);
  if (*(this + 2) != 14)
  {
    return 0;
  }

LABEL_4:
  if (*(google::protobuf::internal::ExtensionSet::GetMessage((*(this + 9) + 16), pb::cpp, off_27E25D428) + 24))
  {
    return 1;
  }

  v4 = *(this + 3);
  if (v4)
  {
    v6 = this;
    if (atomic_load_explicit(v4, memory_order_acquire) != 221)
    {
      absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FieldDescriptor const*),google::protobuf::FieldDescriptor const*>(v4, 1, google::protobuf::FieldDescriptor::TypeOnceInit, &v6);
    }
  }

  return *(*(*(this + 6) + 48) + 52) == 2;
}

uint64_t google::protobuf::FileDescriptor::GetSourceLocation(uint64_t a1, std::string **a2, uint64_t a3)
{
  if (!a3)
  {
    google::protobuf::FileDescriptor::GetSourceLocation(&v13);
  }

  v4 = *(a1 + 160);
  if (!v4)
  {
    return 0;
  }

  result = google::protobuf::FileDescriptorTables::GetSourceLocation(*(a1 + 152), a2, v4);
  if (!result)
  {
    return result;
  }

  v6 = *(result + 48);
  if ((v6 - 3) > 1)
  {
    return 0;
  }

  v7 = *(result + 56);
  *a3 = *v7;
  *(a3 + 8) = v7[1];
  *(a3 + 4) = v7[2 * (v6 != 3)];
  *(a3 + 12) = v7[v6 - 1];
  v8 = result;
  std::string::operator=((a3 + 16), (*(result + 96) & 0xFFFFFFFFFFFFFFFCLL));
  std::string::operator=((a3 + 40), (*(v8 + 104) & 0xFFFFFFFFFFFFFFFCLL));
  v10 = *(v8 + 72);
  v9 = v8 + 72;
  v11 = (v10 + 7);
  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v9;
  }

  std::vector<std::string>::__assign_with_size[abi:ne200100]<google::protobuf::internal::RepeatedPtrIterator<std::string const>,google::protobuf::internal::RepeatedPtrIterator<std::string const>>(a3 + 64, v12, &v12[*(v9 + 8)], *(v9 + 8));
  return 1;
}

void google::protobuf::Descriptor::GetLocationPath(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    v7 = 4;
    std::vector<int>::push_back[abi:ne200100](a2, &v7);
    v5 = *(a1 + 24);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = (*(a1 + 16) + 96);
    goto LABEL_6;
  }

  google::protobuf::Descriptor::GetLocationPath(v4, a2);
  v7 = 3;
  std::vector<int>::push_back[abi:ne200100](a2, &v7);
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = (v5 + 72);
LABEL_6:
  v7 = 678152731 * ((a1 - *v6) >> 3);
  std::vector<int>::push_back[abi:ne200100](a2, &v7);
}

void google::protobuf::FieldDescriptor::GetLocationPath(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 1) & 8) != 0)
  {
    v5 = *(a1 + 40);
    if (v5)
    {
      google::protobuf::Descriptor::GetLocationPath(v5, a2);
      v7 = 6;
      std::vector<int>::push_back[abi:ne200100](a2, &v7);
      if ((*(a1 + 1) & 8) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      v7 = 7;
      std::vector<int>::push_back[abi:ne200100](a2, &v7);
      if ((*(a1 + 1) & 8) == 0)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
    google::protobuf::Descriptor::GetLocationPath(*(a1 + 32), a2);
    v7 = 2;
    std::vector<int>::push_back[abi:ne200100](a2, &v7);
    if ((*(a1 + 1) & 8) == 0)
    {
LABEL_3:
      v4 = (*(a1 + 32) + 56);
      goto LABEL_11;
    }
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    v4 = (v6 + 96);
  }

  else
  {
    v4 = (*(a1 + 16) + 120);
  }

LABEL_11:
  v7 = -1171354717 * ((a1 - *v4) >> 3);
  std::vector<int>::push_back[abi:ne200100](a2, &v7);
}

uint64_t google::protobuf::OneofDescriptor::GetSourceLocation(google::protobuf::OneofDescriptor *this, google::protobuf::SourceLocation *a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  google::protobuf::Descriptor::GetLocationPath(*(this + 2), &__p);
  v9 = 8;
  std::vector<int>::push_back[abi:ne200100](&__p, &v9);
  v9 = -1227133513 * ((this - *(*(this + 2) + 64)) >> 3);
  std::vector<int>::push_back[abi:ne200100](&__p, &v9);
  result = google::protobuf::FileDescriptor::GetSourceLocation(*(*(this + 2) + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    v5 = result;
    operator delete(__p);
    return v5;
  }

  return result;
}

void sub_23CD79BB0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::EnumDescriptor::GetLocationPath(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 24);
  if (!v4)
  {
    v7 = 5;
    std::vector<int>::push_back[abi:ne200100](a2, &v7);
    v5 = *(a1 + 24);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = (*(a1 + 16) + 104);
    goto LABEL_6;
  }

  google::protobuf::Descriptor::GetLocationPath(v4, a2);
  v7 = 4;
  std::vector<int>::push_back[abi:ne200100](a2, &v7);
  v5 = *(a1 + 24);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = (v5 + 80);
LABEL_6:
  v7 = -1171354717 * ((a1 - *v6) >> 3);
  std::vector<int>::push_back[abi:ne200100](a2, &v7);
}

uint64_t google::protobuf::EnumValueDescriptor::GetSourceLocation(google::protobuf::EnumValueDescriptor *this, google::protobuf::SourceLocation *a2)
{
  __p = 0;
  v7 = 0;
  v8 = 0;
  google::protobuf::EnumDescriptor::GetLocationPath(*(this + 2), &__p);
  v9 = 2;
  std::vector<int>::push_back[abi:ne200100](&__p, &v9);
  v9 = -1431655765 * ((this - *(*(this + 2) + 56)) >> 4);
  std::vector<int>::push_back[abi:ne200100](&__p, &v9);
  result = google::protobuf::FileDescriptor::GetSourceLocation(*(*(this + 2) + 16), &__p, a2);
  if (__p)
  {
    v7 = __p;
    v5 = result;
    operator delete(__p);
    return v5;
  }

  return result;
}

void sub_23CD79D28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::DescriptorBuilder::BuildFile(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileDescriptorProto *a2)
{
  v4 = (this + 136);
  std::string::operator=((this + 136), (*(a2 + 22) & 0xFFFFFFFFFFFFFFFCLL));
  v7 = *(this + 1);
  v8 = *(this + 159);
  if ((v8 & 0x8000000000000000) != 0)
  {
    File = google::protobuf::DescriptorPool::Tables::FindFile(v7, *(this + 17), *(this + 18), v5, v6);
    if (!File)
    {
      goto LABEL_6;
    }
  }

  else
  {
    File = google::protobuf::DescriptorPool::Tables::FindFile(v7, v4, v8, v5, v6);
    if (!File)
    {
LABEL_6:
      v13 = *(this + 1);
      v15 = *v13;
      v14 = v13[1];
      if (v14 != *v13)
      {
        v16 = *(a2 + 22) & 0xFFFFFFFFFFFFFFFCLL;
        if (*(v16 + 23) >= 0)
        {
          v17 = *(v16 + 23);
        }

        else
        {
          v17 = *(v16 + 8);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 3) <= 1)
        {
          v18 = 1;
        }

        else
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v14 - *v13) >> 3);
        }

        v19 = 0;
        if ((*(v16 + 23) & 0x80) != 0)
        {
          while (1)
          {
            size = HIBYTE(v15->__r_.__value_.__r.__words[2]);
            v24 = size;
            if ((size & 0x80u) != 0)
            {
              size = v15->__r_.__value_.__l.__size_;
            }

            if (size == v17)
            {
              v25 = v24 >= 0 ? v15 : v15->__r_.__value_.__r.__words[0];
              if (!memcmp(v25, *v16, v17))
              {
                break;
              }
            }

            ++v19;
            ++v15;
            if (v18 == v19)
            {
              goto LABEL_33;
            }
          }
        }

        else
        {
          while (1)
          {
            v20 = HIBYTE(v15->__r_.__value_.__r.__words[2]);
            v21 = v20;
            if ((v20 & 0x80u) != 0)
            {
              v20 = v15->__r_.__value_.__l.__size_;
            }

            if (v20 == v17)
            {
              v22 = v21 >= 0 ? v15 : v15->__r_.__value_.__r.__words[0];
              if (!memcmp(v22, v16, v17))
              {
                break;
              }
            }

            ++v19;
            ++v15;
            if (v18 == v19)
            {
              goto LABEL_33;
            }
          }
        }

        google::protobuf::DescriptorBuilder::AddRecursiveImportError(this, a2, v19);
        return 0;
      }

LABEL_33:
      v26 = *(a2 + 23) & 0xFFFFFFFFFFFFFFFCLL;
      if (*(v26 + 23) < 0 && *(v26 + 8) >= 0x200uLL)
      {
        google::protobuf::DescriptorBuilder::AddError(this, v26, a2, 0, "Package name is too long");
        return 0;
      }

      if ((*(*this + 49) & 1) == 0 && *(*this + 8))
      {
        v27 = *(a2 + 22) & 0xFFFFFFFFFFFFFFFCLL;
        if (v14 >= v13[2])
        {
          v13[1] = std::vector<std::string>::__emplace_back_slow_path<std::string const&>(v13, v27);
          if (*(a2 + 8) >= 1)
          {
LABEL_46:
            v29 = 0;
            v30 = (a2 + 24);
            v31 = 8;
            do
            {
              if (*v30)
              {
                v35 = (*v30 + v31 - 1);
              }

              else
              {
                v35 = a2 + 24;
              }

              v36 = *v35;
              v37 = *(*v35 + 23);
              if ((v37 & 0x8000000000000000) != 0)
              {
                if (google::protobuf::DescriptorPool::Tables::FindFile(*(this + 1), *v36, *(*v35 + 8), v10, v11))
                {
                  goto LABEL_53;
                }
              }

              else if (google::protobuf::DescriptorPool::Tables::FindFile(*(this + 1), v36, v37, v10, v11))
              {
                goto LABEL_53;
              }

              v38 = *this;
              if (!*(*this + 24))
              {
                goto LABEL_47;
              }

              if (*v30)
              {
                v39 = (*v30 + v31 - 1);
              }

              else
              {
                v39 = a2 + 24;
              }

              v40 = *v39;
              v41 = *(*v39 + 23);
              if ((v41 & 0x8000000000000000) != 0)
              {
                if (!google::protobuf::DescriptorPool::FindFileByName(*(*this + 24), *v40, *(*v39 + 8), v10, v11))
                {
LABEL_69:
                  v38 = *this;
LABEL_47:
                  if (*v30)
                  {
                    v32 = (*v30 + v31 - 1);
                  }

                  else
                  {
                    v32 = a2 + 24;
                  }

                  v33 = *v32;
                  v34 = *(*v32 + 23);
                  if ((v34 & 0x8000000000000000) != 0)
                  {
                    v33 = *v33;
                    v34 = *(*v32 + 8);
                  }

                  google::protobuf::DescriptorPool::TryFindFileInFallbackDatabase(v38, v33, v34, v10, v11);
                }
              }

              else if (!google::protobuf::DescriptorPool::FindFileByName(*(*this + 24), v40, v41, v10, v11))
              {
                goto LABEL_69;
              }

LABEL_53:
              ++v29;
              v31 += 8;
            }

            while (v29 < *(a2 + 8));
          }
        }

        else
        {
          if (*(v27 + 23) < 0)
          {
            std::string::__init_copy_ctor_external(v14, *v27, *(v27 + 8));
          }

          else
          {
            v28 = *v27;
            v14->__r_.__value_.__r.__words[2] = *(v27 + 16);
            *&v14->__r_.__value_.__l.__data_ = v28;
          }

          v13[1] = v14 + 1;
          v13[1] = v14 + 1;
          if (*(a2 + 8) >= 1)
          {
            goto LABEL_46;
          }
        }

        v42 = *(this + 1);
        v43 = v42[1];
        p_data = &v43[-1].__r_.__value_.__l.__data_;
        v13 = v42;
        if (SHIBYTE(v43[-1].__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(*p_data);
          v13 = *(this + 1);
        }

        v42[1] = p_data;
      }

      v48 = v13;
      v45 = v13[41];
      if (v45 >= v13[42])
      {
        v46 = std::vector<google::protobuf::DescriptorPool::Tables::CheckPoint>::__emplace_back_slow_path<google::protobuf::DescriptorPool::Tables*>((v13 + 40), &v48);
      }

      else
      {
        LODWORD(v45->__r_.__value_.__l.__data_) = (v13[23] - v13[22]) >> 3;
        HIDWORD(v45->__r_.__value_.__r.__words[0]) = (v13[20] - v13[19]) >> 3;
        LODWORD(v45->__r_.__value_.__r.__words[1]) = (v13[44] - v13[43]) >> 3;
        HIDWORD(v45->__r_.__value_.__r.__words[1]) = (v13[47] - v13[46]) >> 3;
        LODWORD(v45->__r_.__value_.__r.__words[2]) = (v13[50] - v13[49]) >> 4;
        v46 = (&v45->__r_.__value_.__r.__words[2] + 4);
      }

      v13[41] = v46;
      operator new();
    }
  }

  v12 = File;
  if (!google::protobuf::ExistingFileMatchesProto(*(File + 32), File, a2))
  {
    goto LABEL_6;
  }

  return v12;
}

google::protobuf::DescriptorBuilder **std::unique_ptr<google::protobuf::DescriptorBuilder>::~unique_ptr[abi:ne200100](void ***a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    google::protobuf::DescriptorBuilder::~DescriptorBuilder(v2);
    MEMORY[0x23EED9460]();
    return v3;
  }

  return v1;
}

uint64_t google::protobuf::DescriptorBuilder::DescriptorBuilder(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  *(result + 8) = a3;
  *(result + 16) = a4;
  *(result + 24) = 0;
  *(result + 96) = 0;
  *(result + 104) = 0;
  *(result + 136) = 0;
  *(result + 144) = 0;
  *(result + 152) = 0;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 0;
  *(result + 176) = xmmword_23CE306D0;
  *(result + 208) = 0;
  *(result + 216) = 0;
  *(result + 224) = &unk_23CE31C20;
  *(result + 240) = xmmword_23CE306D0;
  *(result + 327) = 0;
  *(result + 304) = 0;
  *(result + 328) = 32;
  *(result + 272) = 0u;
  *(result + 288) = 0u;
  {
    v5 = result;
    result = v5;
    if (v4)
    {
      google::protobuf::internal::ExtensionSet::RegisterMessageExtension(&google::protobuf::_FeatureSet_default_instance_, pb::cpp, 11, 0, 0, &pb::_CppFeatures_default_instance_, 0, 0);
      return v5;
    }
  }

  return result;
}

void sub_23CD7A8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, google::protobuf::FeatureSet *a10, void ***a11, uint64_t a12)
{
  if (*(a12 + 327) < 0)
  {
    operator delete(*(a12 + 304));
    if ((*(a12 + 303) & 0x80000000) == 0)
    {
LABEL_3:
      if (*(a12 + 240) < 2uLL)
      {
        goto LABEL_4;
      }

      goto LABEL_11;
    }
  }

  else if ((*(a12 + 303) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(*(a12 + 280));
  if (*(a12 + 240) < 2uLL)
  {
LABEL_4:
    if (!*v13)
    {
      goto LABEL_5;
    }

    goto LABEL_12;
  }

LABEL_11:
  operator delete((*(a12 + 256) - (*(a12 + 248) & 1) - 8));
  if (!*v13)
  {
LABEL_5:
    if (*(a12 + 176) < 2uLL)
    {
      goto LABEL_6;
    }

    goto LABEL_13;
  }

LABEL_12:
  operator delete((*(a12 + 224) - (*(a12 + 216) & 1) - 8));
  if (*(a12 + 176) < 2uLL)
  {
LABEL_6:
    if ((*(a12 + 159) & 0x80000000) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_14;
  }

LABEL_13:
  operator delete((*(a12 + 192) - (*(a12 + 184) & 1) - 8));
  if ((*(a12 + 159) & 0x80000000) == 0)
  {
LABEL_7:
    if (*(a12 + 96) != 1)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

LABEL_14:
  operator delete(*v12);
  if (*(a12 + 96) != 1)
  {
LABEL_8:
    _Unwind_Resume(a1);
  }

LABEL_15:
  google::protobuf::FeatureSet::~FeatureSet(a10);
  _Unwind_Resume(a1);
}

void ***std::vector<google::protobuf::anonymous namespace::OptionsToInterpret>::~vector[abi:ne200100](void ***a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 == v2)
    {
LABEL_13:
      a1[1] = v2;
      operator delete(v4);
      return a1;
    }

    while (1)
    {
      v5 = *(v3 - 5);
      if (v5)
      {
        *(v3 - 4) = v5;
        operator delete(v5);
      }

      if (*(v3 - 41) < 0)
      {
        operator delete(*(v3 - 8));
        v6 = v3 - 11;
        if (*(v3 - 65) < 0)
        {
LABEL_11:
          operator delete(*v6);
        }
      }

      else
      {
        v6 = v3 - 11;
        if (*(v3 - 65) < 0)
        {
          goto LABEL_11;
        }
      }

      v3 = v6;
      if (v6 == v2)
      {
        v4 = *a1;
        goto LABEL_13;
      }
    }
  }

  return a1;
}

void google::protobuf::DescriptorBuilder::~DescriptorBuilder(void **this)
{
  if (*(this + 327) < 0)
  {
    operator delete(this[38]);
    if ((*(this + 303) & 0x80000000) == 0)
    {
LABEL_3:
      if (this[30] < 2)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }
  }

  else if ((*(this + 303) & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(this[35]);
  if (this[30] < 2)
  {
LABEL_4:
    if (!this[26])
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_29:
  operator delete(this[32] - (this[31] & 1) - 8);
  if (this[26])
  {
LABEL_5:
    operator delete(this[28] - (this[27] & 1) - 8);
  }

LABEL_6:
  if (this[22] >= 2)
  {
    operator delete(this[24] - (this[23] & 1) - 8);
    if ((*(this + 159) & 0x80000000) == 0)
    {
LABEL_8:
      v2 = this[13];
      if (!v2)
      {
        goto LABEL_9;
      }

      goto LABEL_14;
    }
  }

  else if ((*(this + 159) & 0x80000000) == 0)
  {
    goto LABEL_8;
  }

  operator delete(this[17]);
  v2 = this[13];
  if (!v2)
  {
LABEL_9:
    if (*(this + 96) != 1)
    {
      return;
    }

    goto LABEL_10;
  }

LABEL_14:
  v3 = this[14];
  if (v3 == v2)
  {
    this[14] = v2;
    operator delete(v2);
    if (*(this + 96) != 1)
    {
      return;
    }

LABEL_10:
    google::protobuf::FeatureSet::~FeatureSet((this + 3));
    return;
  }

  do
  {
    v4 = *(v3 - 5);
    if (v4)
    {
      *(v3 - 4) = v4;
      operator delete(v4);
    }

    if (*(v3 - 41) < 0)
    {
      operator delete(*(v3 - 8));
      v5 = v3 - 11;
      if ((*(v3 - 65) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v5 = v3 - 11;
      if ((*(v3 - 65) & 0x80000000) == 0)
      {
        goto LABEL_17;
      }
    }

    operator delete(*v5);
LABEL_17:
    v3 = v5;
  }

  while (v5 != v2);
  v6 = this[13];
  this[14] = v2;
  operator delete(v6);
  if (*(this + 96) == 1)
  {
    goto LABEL_10;
  }
}

void google::protobuf::DescriptorBuilder::AddError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void **__return_ptr, uint64_t))
{
  a6(&__p, a5);
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 159);
    if (v11 < 0)
    {
      v12 = *(a1 + 136);
      v11 = *(a1 + 144);
    }

    else
    {
      v12 = a1 + 136;
    }

    v13 = *(a2 + 23);
    if (v13 >= 0)
    {
      v14 = a2;
    }

    else
    {
      v14 = *a2;
    }

    if (v13 >= 0)
    {
      v15 = *(a2 + 23);
    }

    else
    {
      v15 = *(a2 + 8);
    }

    (*(*v10 + 16))(v10, v12, v11, v14, v15, a3, a4);
    *(a1 + 128) = 1;
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

LABEL_16:
    operator delete(__p);
    return;
  }

  if ((*(a1 + 128) & 1) == 0)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 4620);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, "Invalid proto descriptor for file ", 0x23uLL);
    v16 = absl::lts_20240722::log_internal::LogMessage::operator<<(v18, (a1 + 136));
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, ":", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
  }

  absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 4623);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v18, "  ", 2uLL);
  v17 = absl::lts_20240722::log_internal::LogMessage::operator<<(v18, a2);
  absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, ": ", 2uLL);
  absl::lts_20240722::log_internal::LogMessage::operator<<(v17, &__p);
  absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
  *(a1 + 128) = 1;
  if (v20 < 0)
  {
    goto LABEL_16;
  }
}

void sub_23CD7AE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::AddNotDefinedError(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (*(a1 + 272))
  {
    v12[0] = a1;
    v9 = a1;
    google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, v12, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddNotDefinedError(std::string const&,google::protobuf::Message const&,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,std::string const&)::$_1,std::string>);
    a1 = v9;
    LOBYTE(v10) = *(v9 + 327);
    goto LABEL_5;
  }

  v10 = *(a1 + 327);
  if ((v10 & 0x8000000000000000) == 0)
  {
    if (*(a1 + 327))
    {
      goto LABEL_5;
    }

LABEL_11:
    v12[0] = a5;
    v11 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddNotDefinedError(std::string const&,google::protobuf::Message const&,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,std::string const&)::$_0,std::string>;
    goto LABEL_12;
  }

  if (!*(a1 + 312))
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v10 & 0x80) == 0)
  {
    if (!v10)
    {
      return;
    }

    goto LABEL_9;
  }

  if (*(a1 + 312))
  {
LABEL_9:
    v12[0] = a5;
    v12[1] = a1;
    v11 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddNotDefinedError(std::string const&,google::protobuf::Message const&,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,std::string const&)::$_2,std::string>;
LABEL_12:
    google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, a4, v12, v11);
  }
}

void google::protobuf::DescriptorBuilder::AddWarning(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void **__return_ptr, uint64_t))
{
  a6(&__p, a5);
  v10 = *(a1 + 16);
  if (!v10)
  {
    absl::lts_20240722::log_internal::LogMessage::LogMessage(v18, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 4679);
    v16 = absl::lts_20240722::log_internal::LogMessage::operator<<(v18, (a1 + 136));
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v16, " ", 1uLL);
    v17 = absl::lts_20240722::log_internal::LogMessage::operator<<(v16, a2);
    absl::lts_20240722::log_internal::LogMessage::CopyToEncodedBuffer<(absl::lts_20240722::log_internal::LogMessage::StringType)0>(v17, ": ", 2uLL);
    absl::lts_20240722::log_internal::LogMessage::operator<<(v17, &__p);
    absl::lts_20240722::log_internal::LogMessage::~LogMessage(v18);
    if ((v20 & 0x80000000) == 0)
    {
      return;
    }

LABEL_14:
    operator delete(__p);
    return;
  }

  v11 = *(a1 + 159);
  if (v11 < 0)
  {
    v12 = *(a1 + 136);
    v11 = *(a1 + 144);
  }

  else
  {
    v12 = a1 + 136;
  }

  v13 = *(a2 + 23);
  if (v13 >= 0)
  {
    v14 = a2;
  }

  else
  {
    v14 = *a2;
  }

  if (v13 >= 0)
  {
    v15 = *(a2 + 23);
  }

  else
  {
    v15 = *(a2 + 8);
  }

  (*(*v10 + 24))(v10, v12, v11, v14, v15, a3, a4);
  if (v20 < 0)
  {
    goto LABEL_14;
  }
}

void sub_23CD7B0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

google::protobuf::DescriptorBuilder *google::protobuf::DescriptorBuilder::RecordPublicDependencies(google::protobuf::DescriptorBuilder *result, uint64_t a2)
{
  v9 = a2;
  if (a2)
  {
    v2 = result;
    result = absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::find_or_prepare_insert<google::protobuf::FileDescriptor const*>(result + 22, &v9, v7);
    if (v8)
    {
      v3 = v9;
      *v7[1] = v9;
      if (v3)
      {
        v4 = 0;
        do
        {
          if (v4 >= *(v3 + 52))
          {
            break;
          }

          v5 = *(*(v3 + 80) + 4 * v4);
          v6 = *(v3 + 40);
          if (v6)
          {
            v7[0] = v3;
            if (atomic_load_explicit(v6, memory_order_acquire) != 221)
            {
              absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FileDescriptor const*),google::protobuf::FileDescriptor const*>(v6, 1, google::protobuf::FileDescriptor::DependenciesOnceInit, v7);
            }
          }

          result = google::protobuf::DescriptorBuilder::RecordPublicDependencies(v2, *(*(v3 + 72) + 8 * v5));
          ++v4;
          v3 = v9;
        }

        while (v9);
      }
    }
  }

  return result;
}

_BYTE *google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(void *a1, uint64_t a2, void **a3, unint64_t a4, const unint64_t *a5)
{
  v5 = a4;
  if (*a1 == a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = *a2;
    if (*a2)
    {
      absl::lts_20240722::Mutex::Lock(v9, a2);
    }
  }

  v10 = *(a3 + 23);
  if (v10 >= 0)
  {
    v11 = a3;
  }

  else
  {
    v11 = *a3;
  }

  if (v10 >= 0)
  {
    v12 = *(a3 + 23);
  }

  else
  {
    v12 = a3[1];
  }

  Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(*(a2 + 40), v11, v12, a4, a5);
  if (!*Symbol)
  {
    v17 = *(a2 + 24);
    if (!v17 || (Symbol = google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(a1, v17, a3, 1uLL, v14), !*Symbol))
    {
      if (v5)
      {
        v18 = *(a3 + 23);
        v19 = v18 >= 0 ? a3 : *a3;
        v20 = v18 >= 0 ? *(a3 + 23) : a3[1];
        if (google::protobuf::DescriptorPool::TryFindSymbolInFallbackDatabase(a2, v19, v20, v13, v14))
        {
          v23 = *(a3 + 23);
          if (v23 >= 0)
          {
            v24 = a3;
          }

          else
          {
            v24 = *a3;
          }

          if (v23 >= 0)
          {
            v25 = *(a3 + 23);
          }

          else
          {
            v25 = a3[1];
          }

          Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(*(a2 + 40), v24, v25, v21, v22);
        }
      }
    }
  }

  if (v9)
  {
    absl::lts_20240722::Mutex::Unlock(v9);
  }

  return Symbol;
}

void sub_23CD7B300(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

void sub_23CD7B314(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

void sub_23CD7B32C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  absl::lts_20240722::MutexLockMaybe::~MutexLockMaybe(va);
  _Unwind_Resume(a1);
}

BOOL absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::contains<google::protobuf::FileDescriptor const*>(unint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1 > 1)
  {
    v4 = 0;
    _X9 = a1[2];
    __asm { PRFM            #4, [X9] }

    v11 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
    v12 = ((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11);
    v13 = vdup_n_s8(v12 & 0x7F);
    v14 = ((v12 >> 7) ^ (_X9 >> 12)) & v2;
    v15 = *(_X9 + v14);
    v16 = vceq_s8(v15, v13);
    if (!v16)
    {
      goto LABEL_7;
    }

    do
    {
LABEL_5:
      if (*(a1[3] + 8 * ((v14 + (__clz(__rbit64(v16)) >> 3)) & v2)) == *a2)
      {
        return _X9 != 0;
      }

      v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
    }

    while (v16);
LABEL_7:
    while (!*&vceq_s8(v15, 0x8080808080808080))
    {
      v4 += 8;
      v14 = (v4 + v14) & v2;
      v15 = *(_X9 + v14);
      v16 = vceq_s8(v15, v13);
      if (v16)
      {
        goto LABEL_5;
      }
    }

    return 0;
  }

  if (a1[1] < 2)
  {
    return 0;
  }

  return a1[2] == *a2;
}

uint64_t absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::erase<google::protobuf::FileDescriptor const*>(unint64_t *a1, void *a2)
{
  v2 = *a1;
  if (*a1 > 1)
  {
    v4 = 0;
    _X9 = a1[2];
    __asm { PRFM            #4, [X9] }

    v11 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + *a2))) + *a2;
    v12 = ((v11 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v11);
    v13 = vdup_n_s8(v12 & 0x7F);
    v14 = ((v12 >> 7) ^ (_X9 >> 12)) & v2;
    v15 = *(_X9 + v14);
    v16 = vceq_s8(v15, v13);
    if (!v16)
    {
      goto LABEL_7;
    }

LABEL_5:
    while (1)
    {
      v17 = (v14 + (__clz(__rbit64(v16)) >> 3)) & v2;
      if (*(a1[3] + 8 * v17) == *a2)
      {
        break;
      }

      v16 &= ((v16 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v16)
      {
LABEL_7:
        while (!*&vceq_s8(v15, 0x8080808080808080))
        {
          v4 += 8;
          v14 = (v4 + v14) & v2;
          v15 = *(_X9 + v14);
          v16 = vceq_s8(v15, v13);
          if (v16)
          {
            goto LABEL_5;
          }
        }

        return 0;
      }
    }

    if (_X9)
    {
      absl::lts_20240722::container_internal::EraseMetaOnly(a1, v17);
      return 1;
    }

    return 0;
  }

  else if (a1[1] >= 2)
  {
    if (a1[2] == *a2)
    {
      a1[1] = 0;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return 0;
  }
}

_BYTE *google::protobuf::DescriptorBuilder::FindSymbol(uint64_t a1, std::string *a2, unint64_t a3, uint64_t a4, const unint64_t *a5)
{
  result = google::protobuf::DescriptorBuilder::FindSymbolNotEnforcingDepsHelper(a1, *a1, &a2->__r_.__value_.__l.__data_, a3, a5);
  v8 = 0;
  v9 = *result;
  if (v9 <= 4)
  {
    if (*result > 2u)
    {
      if (v9 == 3)
      {
        goto LABEL_19;
      }

      if (v9 != 4)
      {
        goto LABEL_20;
      }
    }

    else if (v9 != 1 && v9 != 2)
    {
      goto LABEL_20;
    }

LABEL_17:
    v8 = *(result + 2);
    if (v8 == *(a1 + 160))
    {
      goto LABEL_34;
    }

    goto LABEL_21;
  }

  if (*result <= 7u)
  {
    if (v9 == 5)
    {
      goto LABEL_19;
    }

    if (v9 != 7)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v9 == 8)
  {
LABEL_19:
    v8 = *(*(result + 2) + 16);
    goto LABEL_20;
  }

  if (v9 == 9)
  {
    v8 = result;
    if (result != *(a1 + 160))
    {
      goto LABEL_21;
    }

LABEL_34:
    if ((v9 - 9) < 2)
    {
      goto LABEL_48;
    }

    v26 = *(a1 + 240);
    if (v26 > 1)
    {
      v27 = 0;
      v28 = &v8[(((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8))];
      v29 = 0x9DDFEA08EB382D69 * v28;
      v30 = (v28 * 0x9DDFEA08EB382D69) >> 64;
      _X13 = *(a1 + 256);
      __asm { PRFM            #4, [X13] }

      v33 = v30 ^ v29;
      v34 = vdup_n_s8(v33 & 0x7F);
      v35 = ((v33 >> 7) ^ (_X13 >> 12)) & v26;
      v36 = *(_X13 + v35);
      v37 = vceq_s8(v36, v34);
      if (!v37)
      {
        goto LABEL_42;
      }

      do
      {
LABEL_40:
        v38 = (v35 + (__clz(__rbit64(v37)) >> 3)) & v26;
        if (*(*(a1 + 264) + 8 * v38) == v8)
        {
          if (_X13)
          {
            v39 = result;
            absl::lts_20240722::container_internal::EraseMetaOnly((a1 + 240), v38);
            result = v39;
            v9 = *v39;
          }

          goto LABEL_47;
        }

        v37 &= ((v37 & 0x8080808080808080) - 1) & 0x8080808080808080;
      }

      while (v37);
LABEL_42:
      while (!*&vceq_s8(v36, 0x8080808080808080))
      {
        v27 += 8;
        v35 = (v27 + v35) & v26;
        v36 = *(_X13 + v35);
        v37 = vceq_s8(v36, v34);
        if (v37)
        {
          goto LABEL_40;
        }
      }
    }

    else if (*(a1 + 248) >= 2uLL && *(a1 + 256) == v8)
    {
      *(a1 + 248) = 0;
    }

    goto LABEL_47;
  }

  if (v9 != 10)
  {
LABEL_20:
    if (v8 != *(a1 + 160))
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  v8 = *(result + 1);
  if (v8 == *(a1 + 160))
  {
    goto LABEL_34;
  }

LABEL_21:
  v10 = *(a1 + 176);
  if (v10 > 1)
  {
    v11 = 0;
    v12 = &v8[(((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v8))];
    v13 = 0x9DDFEA08EB382D69 * v12;
    v14 = (v12 * 0x9DDFEA08EB382D69) >> 64;
    _X12 = *(a1 + 192);
    __asm { PRFM            #4, [X12] }

    v21 = v14 ^ v13;
    v22 = vdup_n_s8(v21 & 0x7F);
    v23 = ((v21 >> 7) ^ (_X12 >> 12)) & v10;
    v24 = *(_X12 + v23);
    v25 = vceq_s8(v24, v22);
    if (!v25)
    {
      goto LABEL_28;
    }

LABEL_26:
    while (*(*(a1 + 200) + 8 * ((v23 + (__clz(__rbit64(v25)) >> 3)) & v10)) != v8)
    {
      v25 &= ((v25 & 0x8080808080808080) - 1) & 0x8080808080808080;
      if (!v25)
      {
LABEL_28:
        while (!*&vceq_s8(v24, 0x8080808080808080))
        {
          v11 += 8;
          v23 = (v11 + v23) & v10;
          v24 = *(_X12 + v23);
          v25 = vceq_s8(v24, v22);
          if (v25)
          {
            goto LABEL_26;
          }
        }

        goto LABEL_47;
      }
    }

    if (_X12)
    {
      goto LABEL_34;
    }

    goto LABEL_47;
  }

  if (*(a1 + 184) >= 2uLL && *(a1 + 192) == v8)
  {
    goto LABEL_34;
  }

LABEL_47:
  if (!v9)
  {
    return result;
  }

LABEL_48:
  if (*(*a1 + 48) != 1)
  {
    return result;
  }

  v40 = 0;
  if (v9 <= 4)
  {
    if (v9 > 2)
    {
      if (v9 == 3)
      {
        goto LABEL_66;
      }
    }

    else if (v9 != 1 && v9 != 2)
    {
      goto LABEL_67;
    }

LABEL_64:
    v40 = *(result + 2);
    v41 = *(a1 + 160);
    if (v40 == v41)
    {
      return result;
    }

    goto LABEL_68;
  }

  if (v9 <= 7)
  {
    if (v9 == 5)
    {
      goto LABEL_66;
    }

    if (v9 != 7)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  if (v9 == 8)
  {
LABEL_66:
    v40 = *(*(result + 2) + 16);
    goto LABEL_67;
  }

  if (v9 != 9)
  {
    if (v9 == 10)
    {
      v40 = *(result + 1);
      v41 = *(a1 + 160);
      if (v40 == v41)
      {
        return result;
      }

      goto LABEL_68;
    }

LABEL_67:
    v41 = *(a1 + 160);
    if (v40 == v41)
    {
      return result;
    }

    goto LABEL_68;
  }

  v40 = result;
  v41 = *(a1 + 160);
  if (result == v41)
  {
    return result;
  }

LABEL_68:
  v42 = *(a1 + 176);
  if (v42 <= 1)
  {
    if (*(a1 + 184) < 2uLL || *(a1 + 192) != v40)
    {
      goto LABEL_79;
    }

    return result;
  }

  v43 = 0;
  v44 = &v40[(((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v40) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v40))];
  v45 = 0x9DDFEA08EB382D69 * v44;
  v46 = (v44 * 0x9DDFEA08EB382D69) >> 64;
  _X11 = *(a1 + 192);
  __asm { PRFM            #4, [X11] }

  v49 = v46 ^ v45;
  v50 = vdup_n_s8(v49 & 0x7F);
  v51 = ((v49 >> 7) ^ (_X11 >> 12)) & v42;
  v52 = *(_X11 + v51);
  v53 = vceq_s8(v52, v50);
  if (!v53)
  {
    goto LABEL_75;
  }

  do
  {
LABEL_73:
    if (*(*(a1 + 200) + 8 * ((v51 + (__clz(__rbit64(v53)) >> 3)) & v42)) == v40)
    {
      if (!_X11)
      {
        goto LABEL_79;
      }

      return result;
    }

    v53 &= ((v53 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v53);
LABEL_75:
  while (!*&vceq_s8(v52, 0x8080808080808080))
  {
    v43 += 8;
    v51 = (v43 + v51) & v42;
    v52 = *(_X11 + v51);
    v53 = vceq_s8(v52, v50);
    if (v53)
    {
      goto LABEL_73;
    }
  }

LABEL_79:
  if ((v9 - 9) > 1)
  {
    goto LABEL_125;
  }

  v54 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v54 >= 0)
  {
    v55 = a2;
  }

  else
  {
    v55 = a2->__r_.__value_.__r.__words[0];
  }

  if (v54 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  v57 = *(v41 + 16);
  v58 = *(v57 + 23);
  if (v58 < 0)
  {
    v59 = *v57;
    v60 = v57[1];
    if (size)
    {
      goto LABEL_92;
    }

    goto LABEL_94;
  }

  v59 = *(v41 + 16);
  v60 = *(v57 + 23);
  if (!size)
  {
    goto LABEL_94;
  }

LABEL_92:
  if (v60 < size || (v61 = result, v62 = memcmp(v59, v55, size), result = v61, v62))
  {
LABEL_101:
    if (*(a1 + 184) >= 2uLL)
    {
      if (v42 >= 2)
      {
        v65 = *(a1 + 192);
        v64 = *(a1 + 200);
        if (*v65 <= -2)
        {
          do
          {
            v66 = __clz(__rbit64((*v65 | ~(*v65 >> 7)) & 0x101010101010101)) >> 3;
            v65 = (v65 + v66);
            v64 += 8 * v66;
          }

          while (*v65 < -1);
        }
      }

      else
      {
        v64 = a1 + 192;
        v65 = &absl::lts_20240722::container_internal::kSooControl;
      }

      do
      {
        if (!*v64)
        {
          goto LABEL_122;
        }

        v67 = *(*v64 + 16);
        v68 = *(v67 + 23);
        if (v68 < 0)
        {
          v69 = *v67;
          v70 = v67[1];
          if (size)
          {
LABEL_113:
            if (v70 < size)
            {
              goto LABEL_122;
            }

            v71 = result;
            v72 = memcmp(v69, v55, size);
            result = v71;
            if (v72)
            {
              goto LABEL_122;
            }
          }
        }

        else
        {
          v69 = *(*v64 + 16);
          v70 = *(v67 + 23);
          if (size)
          {
            goto LABEL_113;
          }
        }

        if ((v68 & 0x80000000) != 0)
        {
          if (v67[1] == size)
          {
            return result;
          }
        }

        else if (v68 == size)
        {
          return result;
        }

        if ((v68 & 0x80000000) != 0)
        {
          v67 = *v67;
        }

        if (*(v67 + size) == 46)
        {
          return result;
        }

LABEL_122:
        v74 = *(v65 + 1);
        v65 = (v65 + 1);
        LOBYTE(v73) = v74;
        v64 += 8;
        if (v74 <= -2)
        {
          do
          {
            v75 = __clz(__rbit64((*v65 | ~(*v65 >> 7)) & 0x101010101010101)) >> 3;
            v65 = (v65 + v75);
            v64 += 8 * v75;
            v73 = *v65;
          }

          while (v73 < -1);
        }
      }

      while (v73 != 255);
    }

LABEL_125:
    *(a1 + 272) = v40;
    std::string::operator=((a1 + 280), a2);
    return &google::protobuf::Symbol::Symbol(void)::null_symbol;
  }

LABEL_94:
  if ((v58 & 0x80000000) != 0)
  {
    v63 = v57[1];
  }

  else
  {
    v63 = v58;
  }

  if (v63 != size)
  {
    if ((v58 & 0x80000000) != 0)
    {
      v57 = *v57;
    }

    if (*(v57 + size) != 46)
    {
      goto LABEL_101;
    }
  }

  return result;
}

_BYTE *google::protobuf::DescriptorBuilder::LookupSymbolNoPlaceholder(uint64_t a1, std::string *this, uint64_t a3, uint64_t a4, const unint64_t *a5)
{
  v6 = a4;
  v8 = this;
  *(a1 + 272) = 0;
  if (*(a1 + 327) < 0)
  {
    **(a1 + 304) = 0;
    *(a1 + 312) = 0;
    v10 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v10 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(a1 + 304) = 0;
    *(a1 + 327) = 0;
    v10 = SHIBYTE(this->__r_.__value_.__r.__words[2]);
    if ((v10 & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (v10 && this->__r_.__value_.__s.__data_[0] == 46)
      {
        v11 = v10 - 1;
        if ((v10 - 1) <= 0x7FFFFFFFFFFFFFF7)
        {
          goto LABEL_6;
        }

        goto LABEL_13;
      }

      goto LABEL_14;
    }
  }

  size = this->__r_.__value_.__l.__size_;
  if (size && *this->__r_.__value_.__l.__data_ == 46)
  {
    v8 = this->__r_.__value_.__r.__words[0];
    v11 = size - 1;
    if (size - 1 <= 0x7FFFFFFFFFFFFFF7)
    {
LABEL_6:
      if (v11 >= 0x17)
      {
        operator new();
      }

      *(&__dst.__r_.__value_.__s + 23) = v11;
      if (v11)
      {
        memmove(&__dst, &v8->__r_.__value_.__l.__data_ + 1, v11);
      }

      __dst.__r_.__value_.__s.__data_[v11] = 0;
      Symbol = google::protobuf::DescriptorBuilder::FindSymbol(a1, &__dst, a5, a4, a5);
      if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
      {
        goto LABEL_65;
      }

      return Symbol;
    }

LABEL_13:
    std::string::__throw_length_error[abi:ne200100]();
  }

LABEL_14:
  v13 = std::string::find(this, 46, 0);
  memset(&__dst, 0, sizeof(__dst));
  if (v13 != -1)
  {
    v14 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
    v15 = v14;
    if ((v14 & 0x80u) != 0)
    {
      v14 = v8->__r_.__value_.__l.__size_;
    }

    if (v15 >= 0)
    {
      v16 = v8;
    }

    else
    {
      v16 = v8->__r_.__value_.__r.__words[0];
    }

    if (v14 >= v13)
    {
      v17 = v13;
    }

    else
    {
      v17 = v14;
    }

    if (v17 > 0x7FFFFFFFFFFFFFF7)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if (v17 >= 0x17)
    {
      operator new();
    }

    *(&__p.__r_.__value_.__s + 23) = v17;
    if (v17)
    {
      memmove(&__p, v16, v17);
      __p.__r_.__value_.__s.__data_[v17] = 0;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      __p.__r_.__value_.__s.__data_[0] = 0;
      if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
LABEL_27:
        __dst = __p;
        goto LABEL_33;
      }
    }

    operator delete(__dst.__r_.__value_.__l.__data_);
    goto LABEL_27;
  }

  std::string::operator=(&__dst, v8);
LABEL_33:
  if (*(a3 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a3, *(a3 + 8));
  }

  else
  {
    __p = *a3;
  }

  while (1)
  {
    v19 = std::string::rfind(&__p, 46, 0xFFFFFFFFFFFFFFFFLL);
    if (v19 == -1)
    {
      Symbol = google::protobuf::DescriptorBuilder::FindSymbol(a1, v8, a5, v20, v21);
      if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        goto LABEL_64;
      }

      goto LABEL_71;
    }

    std::string::erase(&__p, v19, 0xFFFFFFFFFFFFFFFFLL);
    v22 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
    std::string::append(&__p, 1uLL, 46);
    v23 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__dst : __dst.__r_.__value_.__r.__words[0];
    v24 = (__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__dst.__r_.__value_.__r.__words[2]) : __dst.__r_.__value_.__l.__size_;
    std::string::append(&__p, v23, v24);
    Symbol = google::protobuf::DescriptorBuilder::FindSymbol(a1, &__p, a5, v25, v26);
    v27 = *Symbol;
    if (*Symbol)
    {
      break;
    }

LABEL_36:
    std::string::erase(&__p, v22, 0xFFFFFFFFFFFFFFFFLL);
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v28 = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v28 = __dst.__r_.__value_.__l.__size_;
  }

  v29 = HIBYTE(v8->__r_.__value_.__r.__words[2]);
  if ((v29 & 0x80u) != 0)
  {
    v29 = v8->__r_.__value_.__l.__size_;
  }

  if (v29 <= v28)
  {
    if (v6 != 1 || v27 == 1 || v27 == 4)
    {
      goto LABEL_63;
    }

    goto LABEL_36;
  }

  if (v27 > 0xA || ((1 << v27) & 0x692) == 0)
  {
    goto LABEL_36;
  }

  std::string::append(&__p, v8, v28, v29 - v28);
  v32 = google::protobuf::DescriptorBuilder::FindSymbol(a1, &__p, a5, v30, v31);
  Symbol = v32;
  if (!*v32)
  {
    std::string::operator=((a1 + 304), &__p);
  }

LABEL_63:
  if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
LABEL_64:
    if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      return Symbol;
    }

    goto LABEL_65;
  }

LABEL_71:
  operator delete(__p.__r_.__value_.__l.__data_);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    return Symbol;
  }

LABEL_65:
  operator delete(__dst.__r_.__value_.__l.__data_);
  return Symbol;
}

void sub_23CD7C098(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
    if ((a21 & 0x80000000) == 0)
    {
LABEL_3:
      _Unwind_Resume(exception_object);
    }
  }

  else if ((a21 & 0x80000000) == 0)
  {
    goto LABEL_3;
  }

  operator delete(a16);
  _Unwind_Resume(exception_object);
}

void *google::protobuf::DescriptorPool::NewPlaceholderWithMutexHeld(void **a1, _BYTE *a2, uint64_t a3, int a4)
{
  v65[2] = *MEMORY[0x277D85DE8];
  v8 = *a1;
  if (v8)
  {
    absl::lts_20240722::Mutex::AssertHeld(v8, a2);
  }

  v59 = 0uLL;
  if (a3)
  {
    v9 = 0;
    v10 = &a2[a3];
    v11 = a2;
    v12 = &google::protobuf::Symbol::Symbol(void)::null_symbol;
    do
    {
      while (1)
      {
        v13 = *v11;
        if ((v13 & 0xFFFFFFDF) - 65 < 0x1A)
        {
          break;
        }

        if (v13 == 95 || (v13 - 48) < 0xA)
        {
          break;
        }

        if (!(v9 & 1 | (v13 != 46)))
        {
          ++v11;
          v9 = 1;
          if (v11 != v10)
          {
            continue;
          }
        }

        return v12;
      }

      v9 = 0;
      ++v11;
    }

    while (v11 != v10);
    v15 = *a2 == 46;
    if (*a2 == 46)
    {
      v16 = a2 + 1;
    }

    else
    {
      v16 = a2;
    }

    v17 = a3 - v15;
    *&v60 = v16;
    *(&v60 + 1) = v17;
    if (v15)
    {
      v18 = -1;
    }

    else
    {
      v18 = 0;
    }

    v49 = v18;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v52 = 0u;
    memset(v51, 0, sizeof(v51));
    if (a4 == 1)
    {
      *&v52 = 0x600000130;
    }

    else
    {
      *&v52 = 0x400000140;
      if (a4 == 2)
      {
        LODWORD(v52) = 360;
      }
    }

    if (v17)
    {
      v20 = 0;
      while (-(a3 + v49) != v20)
      {
        v21 = v16[a3 - 1 + v49 + v20--];
        if (v21 == 46)
        {
          v22 = a3 + v49 + v20;
          if (v22 == -1)
          {
            break;
          }

          if (v17 >= v22)
          {
            v17 = a3 + v49 + v20;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFF8)
          {
            std::string::__throw_length_error[abi:ne200100]();
          }

          v24 = v48;
          if (v17 >= 0x17)
          {
            operator new();
          }

          HIBYTE(v64) = v17;
          if (-(a3 + v49) != v20)
          {
            memmove(&__dst, v16, v17);
          }

          *(&__dst + v17) = 0;
          if (*(v24 + 23) < 0)
          {
            operator delete(*v24);
          }

          *v24 = __dst;
          *(v24 + 16) = v64;
          v17 = *(&v60 + 1);
          if (*(&v60 + 1) <= (a3 + v49 + v20))
          {
            std::__throw_out_of_range[abi:ne200100]("string_view::substr");
          }

          v16 = v60;
          *&v59 = v60 + a3 + v49 + v20 + 1;
          *(&v59 + 1) = *(&v60 + 1) + ~a3 - v49 - v20;
          goto LABEL_34;
        }
      }
    }

    v24 = v23;
    if (*(v23 + 23) < 0)
    {
      operator delete(*v23);
    }

    *v24 = 0;
    *(v24 + 23) = 0;
    v59 = v60;
LABEL_34:
    *&__dst = v16;
    *(&__dst + 1) = v17;
    v61 = ".placeholder.proto";
    v62 = 18;
    absl::lts_20240722::StrCat(&__dst, &v61, &__p);
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
      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = __p.__r_.__value_.__l.__size_;
    }

    v27 = google::protobuf::DescriptorPool::NewPlaceholderFileWithMutexHeld(a1, p_p, size, v51);
    v29 = v27;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
      *(v29 + 16) = v24;
      if (a4 == 1)
      {
LABEL_42:
        *(v29 + 64) = 1;
        *(v29 + 104) = v12;
        v12[10] = 0;
        *(v12 + 3) = 0u;
        *(v12 + 4) = 0u;
        *(v12 + 1) = 0u;
        *(v12 + 2) = 0u;
        *v12 = 0u;
        v12[2] = v29;
        v12[4] = &google::protobuf::_EnumOptions_default_instance_;
        v12[5] = &google::protobuf::_FeatureSet_default_instance_;
        v12[6] = &google::protobuf::_FeatureSet_default_instance_;
        v30 = *(v12 + 1) | 1;
        *(v12 + 1) = v30;
        *(v12 + 1) = v30 & 0xFD | (2 * (*a2 != 46));
        *(v12 + 1) = 1;
        v12[7] = v33;
        *(v12 + 1) = -1;
        *(v33 + 16) = 0u;
        *(v33 + 32) = 0u;
        *v33 = 0u;
        v34 = *(v24 + 23);
        if (v34 < 0)
        {
          if (*(v24 + 8))
          {
            goto LABEL_44;
          }
        }

        else if (*(v24 + 23))
        {
LABEL_44:
          v35 = *v24;
          if (v34 < 0)
          {
            v34 = *(v24 + 8);
          }

          else
          {
            v35 = v24;
          }

          *&__dst = v35;
          *(&__dst + 1) = v34;
          v61 = ".PLACEHOLDER_VALUE";
          v62 = 18;
          absl::lts_20240722::StrCat(&__dst, &v61, &__p);
          goto LABEL_54;
        }

        *(&__p.__r_.__value_.__s + 23) = 17;
        strcpy(&__p, "PLACEHOLDER_VALUE");
LABEL_54:
        v41 = v40;
        if (*(v40 + 23) < 0)
        {
          operator delete(*v40);
        }

        strcpy(v41, "PLACEHOLDER_VALUE");
        *(v41 + 23) = 17;
        v65[0] = __p.__r_.__value_.__l.__size_;
        v42 = __p.__r_.__value_.__r.__words[0];
        *(v65 + 7) = *(&__p.__r_.__value_.__r.__words[1] + 7);
        v43 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        memset(&__p, 0, sizeof(__p));
        if (*(v41 + 47) < 0)
        {
          operator delete(*(v41 + 24));
          v45 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
          v46 = v65[0];
          *(v41 + 24) = v42;
          *(v41 + 32) = v46;
          *(v41 + 39) = *(v65 + 7);
          *(v41 + 47) = v43;
          *(v33 + 8) = v41;
          if (v45 < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v44 = v65[0];
          *(v41 + 24) = v42;
          *(v41 + 32) = v44;
          *(v41 + 39) = *(v65 + 7);
          *(v41 + 47) = v43;
          *(v33 + 8) = v41;
        }

        *(v33 + 4) = 0;
        *(v33 + 16) = v12;
        *(v33 + 24) = &google::protobuf::_EnumValueOptions_default_instance_;
        v39 = 4;
LABEL_61:
        *v12 = v39;
        return v12;
      }
    }

    else
    {
      *(v27 + 16) = v24;
      if (a4 == 1)
      {
        goto LABEL_42;
      }
    }

    *(v29 + 60) = 1;
    *(v29 + 96) = v12;
    v12[18] = 0;
    *(v12 + 7) = 0u;
    *(v12 + 8) = 0u;
    *(v12 + 5) = 0u;
    *(v12 + 6) = 0u;
    *(v12 + 3) = 0u;
    *(v12 + 4) = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *v12 = 0u;
    v12[2] = v29;
    v12[4] = &google::protobuf::_MessageOptions_default_instance_;
    v12[5] = &google::protobuf::_FeatureSet_default_instance_;
    v12[6] = &google::protobuf::_FeatureSet_default_instance_;
    v37 = *(v12 + 1) | 1;
    *(v12 + 1) = v37;
    *(v12 + 1) = v37 & 0xFD | (2 * (*a2 != 46));
    if (a4 == 2)
    {
      *(v12 + 34) = 1;
      v12[11] = v38;
      *v38 = 0x2000000000000001;
      v38[1] = 0;
      v38[3] = &google::protobuf::_FeatureSet_default_instance_;
      v38[4] = &google::protobuf::_FeatureSet_default_instance_;
    }

    v39 = 1;
    goto LABEL_61;
  }

  return &google::protobuf::Symbol::Symbol(void)::null_symbol;
}

void sub_23CD7C75C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16)
{
  if (a16 < 0)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

int *google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::FinalizePlanning<std::unique_ptr<google::protobuf::DescriptorPool::Tables> const>(int **a1, void *a2)
{
  if (*a1)
  {
  }

  result = google::protobuf::DescriptorPool::Tables::CreateFlatAlloc<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>(a2, a1 + 28);
  v4 = result + 14;
  v5 = *result;
  v6 = result[1];
  if (v5 == 56)
  {
    v4 = 0;
  }

  v7 = (result + v5);
  if (v5 == v6)
  {
    v7 = 0;
  }

  v8 = result[2];
  v9 = result[3];
  if (v6 == v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = (result + v6);
  }

  v11 = (result + v8);
  if (v8 == v9)
  {
    v11 = 0;
  }

  v12 = (result + v9);
  v13 = result[4];
  v14 = result[5];
  if (v9 == v13)
  {
    v12 = 0;
  }

  v15 = (result + v13);
  if (v13 == v14)
  {
    v15 = 0;
  }

  v16 = (result + v14);
  v18 = result[6];
  v17 = result[7];
  if (v14 == v18)
  {
    v16 = 0;
  }

  v19 = (result + v18);
  v20 = result[8];
  v21 = result[9];
  v22 = result[10];
  v23 = result[11];
  if (v18 == v17)
  {
    v19 = 0;
  }

  v24 = (result + v17);
  v25 = v17 == v20;
  v26 = result[13];
  v27 = result[12];
  if (v25)
  {
    v24 = 0;
  }

  v25 = v20 == v21;
  v28 = (result + v20);
  if (v25)
  {
    v28 = 0;
  }

  *a1 = v4;
  a1[1] = v7;
  v29 = (result + v21);
  if (v21 == v22)
  {
    v29 = 0;
  }

  v30 = (result + v22);
  a1[2] = v10;
  a1[3] = v11;
  if (v22 == v23)
  {
    v30 = 0;
  }

  v31 = (result + v23);
  a1[4] = v12;
  a1[5] = v15;
  if (v23 == v27)
  {
    v31 = 0;
  }

  v32 = (result + v27);
  if (v27 == v26)
  {
    v32 = 0;
  }

  a1[6] = v16;
  a1[7] = v19;
  a1[8] = v24;
  a1[9] = v28;
  a1[10] = v29;
  a1[11] = v30;
  a1[12] = v31;
  a1[13] = v32;
  if (v5 == 56)
  {
  }

  return result;
}

uint64_t google::protobuf::DescriptorPool::NewPlaceholderFileWithMutexHeld(void **a1, const void *a2, size_t a3, uint64_t *a4)
{
  v8 = *a1;
  if (v8)
  {
    absl::lts_20240722::Mutex::AssertHeld(v8, a2);
  }

  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0u;
  *(v9 + 128) = 0u;
  *(v9 + 144) = 0u;
  *(v9 + 160) = 0;
  if (a3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v12 = v11;
  if (a3 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = a3;
  if (a3)
  {
    v11 = memmove(&__dst, a2, a3);
    *(&__dst + a3) = 0;
    if ((v12[23] & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((v11[23] & 0x80000000) == 0)
    {
      goto LABEL_7;
    }
  }

  operator delete(*v12);
LABEL_7:
  *v12 = __dst;
  *(v12 + 2) = v15;
  *(v9 + 8) = v12;
  if ((atomic_load_explicit(google::protobuf::internal::init_protobuf_defaults_state, memory_order_acquire) & 1) == 0)
  {
    google::protobuf::internal::InitProtobufDefaultsSlow(v11);
  }

  *(v9 + 16) = &google::protobuf::internal::fixed_address_empty_string;
  *(v9 + 24) = a1;
  *(v9 + 128) = &google::protobuf::_FileOptions_default_instance_;
  *(v9 + 136) = &google::protobuf::_FeatureSet_default_instance_;
  *(v9 + 144) = &google::protobuf::_FeatureSet_default_instance_;
  {
    operator new();
  }

  *(v9 + 152) = google::protobuf::FileDescriptorTables::GetEmptyInstance(void)::file_descriptor_tables;
  *(v9 + 160) = &google::protobuf::_SourceCodeInfo_default_instance_;
  *(v9 + 1) = 257;
  return v9;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<google::protobuf::EnumDescriptor>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
  }

  v5 = *(a1 + 42);
  v6 = v5 + 88 * a2;
  *(a1 + 42) = v6;
  v7 = *(a1 + 28);
  if (v6 > v7)
  {
  }

  return v3 + v5;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateStrings<std::string_view &,std::string_view &>(uint64_t a1, uint64_t a2, const void **a3)
{
  v6 = *(a2 + 8);
  if (v6 > 0x7FFFFFFFFFFFFFF7)
  {
LABEL_18:
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = v5;
  v8 = *a2;
  if (v6 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v15) = v6;
  if (v6)
  {
    memmove(&__dst, v8, v6);
    *(&__dst + v6) = 0;
    if ((*(v7 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  else
  {
    LOBYTE(__dst) = 0;
    if ((*(v5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_5;
    }
  }

  operator delete(*v7);
LABEL_5:
  *v7 = __dst;
  *(v7 + 16) = v15;
  HIBYTE(v15) = 0;
  LOBYTE(__dst) = 0;
  v9 = a3[1];
  if (v9 > 0x7FFFFFFFFFFFFFF7)
  {
    goto LABEL_18;
  }

  v10 = *a3;
  if (v9 >= 0x17)
  {
    operator new();
  }

  HIBYTE(v13) = v9;
  if (!v9)
  {
    LOBYTE(v12) = 0;
    if ((*(v7 + 47) & 0x80000000) == 0)
    {
      goto LABEL_9;
    }

LABEL_16:
    operator delete(*(v7 + 24));
    *(v7 + 24) = v12;
    *(v7 + 40) = v13;
    if ((SHIBYTE(v15) & 0x80000000) == 0)
    {
      return v7;
    }

LABEL_17:
    operator delete(__dst);
    return v7;
  }

  memmove(&v12, v10, v9);
  *(&v12 + v9) = 0;
  if (*(v7 + 47) < 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  *(v7 + 24) = v12;
  *(v7 + 40) = v13;
  if (SHIBYTE(v15) < 0)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<google::protobuf::EnumValueDescriptor>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
  }

  v5 = *(a1 + 42);
  v6 = v5 + 48 * a2;
  *(a1 + 42) = v6;
  v7 = *(a1 + 28);
  if (v6 > v7)
  {
  }

  return v3 + v5;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<google::protobuf::Descriptor>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
  }

  v5 = *(a1 + 42);
  v6 = v5 + 152 * a2;
  *(a1 + 42) = v6;
  v7 = *(a1 + 28);
  if (v6 > v7)
  {
  }

  return v3 + v5;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<google::protobuf::Descriptor::ExtensionRange>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
  }

  v5 = *(a1 + 42);
  v6 = v5 + 40 * a2;
  *(a1 + 42) = v6;
  v7 = *(a1 + 28);
  if (v6 > v7)
  {
  }

  return v3 + v5;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<google::protobuf::FileDescriptor>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
  }

  v4 = *(a1 + 42);
  *(a1 + 42) = v4 + 168;
  v5 = *(a1 + 28);
  if (v4 + 168 > v5)
  {
  }

  return v3 + v4;
}

uint64_t google::protobuf::DescriptorBuilder::AddSymbol(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v10 = *(a2 + 23);
  if (v10 >= 0)
  {
    v11 = *(a2 + 23);
  }

  else
  {
    v11 = *(a2 + 8);
  }

  if (v11)
  {
    v12 = v10 >= 0 ? a2 : *a2;
    v13 = memchr(v12, 0, v11);
    if (v13 && v13 - v12 != -1)
    {
      v28 = a2;
      v27 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddSymbol(std::string const&,void const*,std::string const&,google::protobuf::Message const&,google::protobuf::Symbol)::$_0,std::string>;
LABEL_45:
      google::protobuf::DescriptorBuilder::AddError(a1, a2, a5, 0, &v28, v27);
      return 0;
    }
  }

  if (!google::protobuf::DescriptorPool::Tables::AddSymbol(*(a1 + 8), a2, v11, a6))
  {
    v21 = *(a2 + 23);
    if (v21 >= 0)
    {
      v22 = a2;
    }

    else
    {
      v22 = *a2;
    }

    if (v21 >= 0)
    {
      v23 = *(a2 + 23);
    }

    else
    {
      v23 = *(a2 + 8);
    }

    Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(*(a1 + 8), v22, v23, v17, v18);
    v25 = 0;
    v26 = *Symbol;
    if (v26 <= 4)
    {
      if (*Symbol > 2u)
      {
        if (v26 == 3)
        {
          goto LABEL_42;
        }

        if (v26 != 4)
        {
          goto LABEL_43;
        }
      }

      else if (v26 != 1 && v26 != 2)
      {
        goto LABEL_43;
      }
    }

    else
    {
      if (*Symbol > 7u)
      {
        if (v26 != 8)
        {
          if (v26 == 9)
          {
            v31 = Symbol;
            if (Symbol == *(a1 + 160))
            {
LABEL_40:
              v30 = std::string::rfind(a2, 46, 0xFFFFFFFFFFFFFFFFLL);
              if (v30 == -1)
              {
                v28 = a2;
                v27 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddSymbol(std::string const&,void const*,std::string const&,google::protobuf::Message const&,google::protobuf::Symbol)::$_1,std::string>;
              }

              else
              {
                v28 = a2;
                v29 = &v30;
                v27 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddSymbol(std::string const&,void const*,std::string const&,google::protobuf::Message const&,google::protobuf::Symbol)::$_2,std::string>;
              }

              goto LABEL_45;
            }

LABEL_44:
            v28 = a2;
            v29 = &v31;
            v27 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddSymbol(std::string const&,void const*,std::string const&,google::protobuf::Message const&,google::protobuf::Symbol)::$_3,std::string>;
            goto LABEL_45;
          }

          if (v26 == 10)
          {
            v31 = *(Symbol + 1);
            if (v31 == *(a1 + 160))
            {
              goto LABEL_40;
            }

            goto LABEL_44;
          }

LABEL_43:
          v31 = v25;
          if (v25 == *(a1 + 160))
          {
            goto LABEL_40;
          }

          goto LABEL_44;
        }

LABEL_42:
        v25 = *(*(Symbol + 2) + 16);
        goto LABEL_43;
      }

      if (v26 == 5)
      {
        goto LABEL_42;
      }

      if (v26 != 7)
      {
        goto LABEL_43;
      }
    }

    v31 = *(Symbol + 2);
    if (v31 == *(a1 + 160))
    {
      goto LABEL_40;
    }

    goto LABEL_44;
  }

  v19 = *(a1 + 168);

  return google::protobuf::FileDescriptorTables::AddAliasUnderParent(v19, v15, v16, v17, a6);
}

void google::protobuf::DescriptorBuilder::AddPackage(uint64_t a1, std::string *a2, uint64_t a3, uint64_t a4)
{
  if (std::string::find(a2, 0, 0) != -1)
  {
    __p = a2;
    v10 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddPackage(std::string const&,google::protobuf::Message const&,google::protobuf::FileDescriptor *)::$_0,std::string>;
LABEL_3:
    google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, 0, &__p, v10);
    return;
  }

  v11 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
  if (v11 >= 0)
  {
    v12 = a2;
  }

  else
  {
    v12 = a2->__r_.__value_.__r.__words[0];
  }

  if (v11 >= 0)
  {
    size = HIBYTE(a2->__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = a2->__r_.__value_.__l.__size_;
  }

  Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(*(a1 + 8), v12, size, v8, v9);
  v17 = *Symbol;
  if (!*Symbol)
  {
    if ((a2->__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v20 = a2;
    }

    else
    {
      v20 = a2->__r_.__value_.__r.__words[0];
    }

    v21 = *(a4 + 16);
    if (*(v21 + 23) < 0)
    {
      if (v20 != *v21)
      {
        goto LABEL_24;
      }
    }

    else if (v20 != v21)
    {
LABEL_24:
      Bytes = google::protobuf::DescriptorPool::Tables::AllocateBytes(*(a1 + 8), 16);
      v23 = Bytes;
      *Bytes = 0;
      *(Bytes + 1) = 0;
      *(Bytes + 1) = 0;
      LODWORD(v24) = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v24 & 0x80u) != 0)
      {
        v24 = a2->__r_.__value_.__l.__size_;
      }

      *(Bytes + 1) = v24;
      *(Bytes + 1) = a4;
      v25 = *(a1 + 8);
      *v23 = 10;
LABEL_29:
      google::protobuf::DescriptorPool::Tables::AddSymbol(v25, v15, v16, v23);
      v26 = std::string::rfind(a2, 46, 0xFFFFFFFFFFFFFFFFLL);
      if (v26 == -1)
      {
        v32 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
        if ((v32 & 0x8000000000000000) != 0)
        {
          v32 = a2->__r_.__value_.__l.__size_;
          if (v32)
          {
            v33 = a2->__r_.__value_.__r.__words[0];
            goto LABEL_78;
          }
        }

        else if (*(&a2->__r_.__value_.__s + 23))
        {
          v33 = a2;
LABEL_78:
          while (1)
          {
            v43 = v33->__r_.__value_.__s.__data_[0];
            if ((v43 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v43 != 95 && (v43 - 58) <= 0xFFFFFFF5)
            {
              break;
            }

            v33 = (v33 + 1);
            if (!--v32)
            {
              return;
            }
          }

          __p = a2;
          v10 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>;
          goto LABEL_3;
        }

        google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, 0, "Missing name.");
        return;
      }

      v27 = v26;
      v28 = HIBYTE(a2->__r_.__value_.__r.__words[2]);
      v29 = v28;
      if ((v28 & 0x80u) != 0)
      {
        v28 = a2->__r_.__value_.__l.__size_;
      }

      if (v29 >= 0)
      {
        v30 = a2;
      }

      else
      {
        v30 = a2->__r_.__value_.__r.__words[0];
      }

      if (v28 >= v26)
      {
        v31 = v26;
      }

      else
      {
        v31 = v28;
      }

      if (v31 > 0x7FFFFFFFFFFFFFF7)
      {
        goto LABEL_62;
      }

      if (v31 >= 0x17)
      {
        operator new();
      }

      v47 = v31;
      if (v31)
      {
        memmove(&__p, v30, v31);
      }

      *(&__p + v31) = 0;
      google::protobuf::DescriptorBuilder::AddPackage(a1, &__p, a3, a4);
      if (v47 < 0)
      {
        operator delete(__p);
      }

      v34 = SHIBYTE(a2->__r_.__value_.__r.__words[2]);
      if ((v34 & 0x8000000000000000) != 0)
      {
        v34 = a2->__r_.__value_.__l.__size_;
        if (v34 > v27)
        {
          v35 = a2->__r_.__value_.__r.__words[0];
          v36 = v27 + 1;
          v37 = v34 - (v27 + 1);
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
LABEL_52:
            if (v37 >= 0x17)
            {
              operator new();
            }

            v47 = v37;
            if (v34 != v36)
            {
              memmove(&__p, (v35 + v36), v37);
            }

            *(&__p + v37) = 0;
            v38 = v47;
            if ((v47 & 0x8000000000000000) != 0)
            {
              v40 = v46;
              if (v46)
              {
                p_p = __p;
                goto LABEL_66;
              }
            }

            else if (v47)
            {
              p_p = &__p;
              v40 = v47;
LABEL_66:
              while (1)
              {
                v41 = *p_p;
                if ((v41 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v41 != 95 && (v41 - 58) <= 0xFFFFFFF5)
                {
                  break;
                }

                ++p_p;
                v40 = (v40 - 1);
                if (!v40)
                {
                  goto LABEL_73;
                }
              }

              v48 = &__p;
              google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, 0, &v48, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
              v38 = v47;
              goto LABEL_73;
            }

            google::protobuf::DescriptorBuilder::AddError(a1, a2, a3, 0, "Missing name.");
LABEL_73:
            if (v38 < 0)
            {
              operator delete(__p);
            }

            return;
          }

LABEL_62:
          std::string::__throw_length_error[abi:ne200100]();
        }
      }

      else
      {
        v35 = a2;
        if (v27 < v34)
        {
          v36 = v27 + 1;
          v37 = v34 - (v27 + 1);
          if (v37 <= 0x7FFFFFFFFFFFFFF7)
          {
            goto LABEL_52;
          }

          goto LABEL_62;
        }
      }

      std::string::__throw_out_of_range[abi:ne200100]();
    }

    v25 = *(a1 + 8);
    *a4 = 9;
    v23 = a4;
    goto LABEL_29;
  }

  if (v17 - 9 >= 2)
  {
    v18 = 0;
    if (v17 <= 8)
    {
      v19 = 1 << v17;
      if ((v19 & 0x96) != 0)
      {
LABEL_17:
        v18 = *(Symbol + 2);
        goto LABEL_18;
      }

      if ((v19 & 0x128) != 0)
      {
        Symbol = *(Symbol + 2);
        goto LABEL_17;
      }
    }

LABEL_18:
    v48 = v18;
    __p = a2;
    v46 = &v48;
    v10 = absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddPackage(std::string const&,google::protobuf::Message const&,google::protobuf::FileDescriptor *)::$_1,std::string>;
    goto LABEL_3;
  }
}

void sub_23CD7D56C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_23CD7D6E8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (a18 < 0)
  {
    operator delete(__p);
    operator delete(v18);
    _Unwind_Resume(a1);
  }

  operator delete(v18);
  _Unwind_Resume(a1);
}

int *google::protobuf::DescriptorBuilder::AllocateOptionsImpl<google::protobuf::FileDescriptor>(uint64_t a1, std::string::size_type a2, std::string::size_type a3, void *a4, size_t a5, uint64_t a6, const void *a7, uint64_t a8, void *a9, size_t a10, uint64_t a11)
{
  v61[6] = *MEMORY[0x277D85DE8];
  if ((*(a6 + 16) & 8) == 0)
  {
    return 0;
  }

  if (!*a11)
  {
  }

  v13 = *(a6 + 200);
  v14 = *(a11 + 104);
  v15 = *(a11 + 220);
  *(a11 + 220) = v15 + 1;
  v16 = *(a11 + 164);
  if (v15 + 1 > v16)
  {
  }

  if ((google::protobuf::FileOptions::IsInitialized(v13) & 1) == 0)
  {
    __dst.__r_.__value_.__r.__words[0] = a2;
    __dst.__r_.__value_.__l.__size_ = a3;
    v61[0] = ".";
    v61[1] = 1;
    v60[0] = a4;
    v60[1] = a5;
    absl::lts_20240722::StrCat(&__dst.__r_.__value_.__l.__data_, v61, v60, &__p);
    google::protobuf::DescriptorBuilder::AddError(a1, &__p, v13, 7, "Uninterpreted option is missing name or value.");
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    return 0;
  }

  google::protobuf::MessageLite::SerializeAsString(&__dst, v13);
  v22 = (v14 + 176 * v15);
  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_dst = &__dst;
  }

  else
  {
    p_dst = __dst.__r_.__value_.__r.__words[0];
  }

  if ((__dst.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__dst.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __dst.__r_.__value_.__l.__size_;
  }

  v25 = google::protobuf::internal::ParseNoReflection(p_dst, size, v22);
  if ((SHIBYTE(__dst.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
  {
    if (v22[14] < 1)
    {
      goto LABEL_25;
    }

LABEL_19:
    v25 = v58;
    if (v58)
    {
      v59 = v58;
      operator delete(v58);
    }

    if (v57 < 0)
    {
      operator delete(v56);
    }

    if (SHIBYTE(__dst.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__dst.__r_.__value_.__l.__data_);
    }

    goto LABEL_25;
  }

  operator delete(__dst.__r_.__value_.__l.__data_);
  if (v22[14] >= 1)
  {
    goto LABEL_19;
  }

LABEL_25:
  v29 = *(v13 + 1);
  if (v29)
  {
    v30 = ((v29 & 0xFFFFFFFFFFFFFFFELL) + 8);
    if (*v30 == *((v29 & 0xFFFFFFFFFFFFFFFELL) + 16))
    {
      return v22;
    }
  }

  else
  {
    v30 = google::protobuf::UnknownFieldSet::default_instance(v25);
    if (*v30 == v30[1])
    {
      return v22;
    }
  }

  Symbol = google::protobuf::DescriptorPool::Tables::FindSymbol(*(a1 + 8), a9, a10, v26, v27);
  if (*Symbol == 1)
  {
    v33 = *v30;
    if (((v30[1] - *v30) >> 4) >= 1)
    {
      v34 = 0;
      while (1)
      {
        v40 = *a1;
        if (**a1)
        {
          absl::lts_20240722::Mutex::AssertHeld(**a1, v31);
          v40 = *a1;
          v33 = *v30;
        }

        if (*Symbol == 1)
        {
          v41 = Symbol;
        }

        else
        {
          v41 = 0;
        }

        ExtensionByNumberNoLock = google::protobuf::DescriptorPool::InternalFindExtensionByNumberNoLock(v40, v41, *(v33 + 16 * v34));
        if (!ExtensionByNumberNoLock)
        {
          goto LABEL_46;
        }

        v43 = *(ExtensionByNumberNoLock + 16);
        v44 = *(a1 + 240);
        if (v44 > 1)
        {
          v38 = 0;
          v45 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v43) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v43))) + v43;
          v46 = ((v45 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v45);
          v47 = vdup_n_s8(v46 & 0x7F);
          _X11 = *(a1 + 256);
          __asm { PRFM            #4, [X11] }

          for (i = (v46 >> 7) ^ (_X11 >> 12); ; i = v38 + v35)
          {
            v35 = i & v44;
            v36 = *(_X11 + v35);
            v37 = vceq_s8(v36, v47);
            if (v37)
            {
              break;
            }

LABEL_33:
            if (vceq_s8(v36, 0x8080808080808080))
            {
              goto LABEL_46;
            }

            v38 += 8;
          }

          while (1)
          {
            v31 = (v35 + (__clz(__rbit64(v37)) >> 3)) & v44;
            if (*(*(a1 + 264) + 8 * v31) == v43)
            {
              break;
            }

            v37 &= ((v37 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v37)
            {
              goto LABEL_33;
            }
          }

          if (!_X11)
          {
            goto LABEL_46;
          }

          absl::lts_20240722::container_internal::EraseMetaOnly((a1 + 240), v31);
          v33 = *v30;
          if (++v34 >= ((v30[1] - *v30) >> 4))
          {
            return v22;
          }
        }

        else if (*(a1 + 248) >= 2uLL && *(a1 + 256) == v43)
        {
          *(a1 + 248) = 0;
          if (++v34 >= ((v30[1] - v33) >> 4))
          {
            return v22;
          }
        }

        else
        {
LABEL_46:
          if (++v34 >= ((v30[1] - v33) >> 4))
          {
            return v22;
          }
        }
      }
    }
  }

  return v22;
}

void sub_23CD7DB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Unwind_Resume(a1);
}

void sub_23CD7DB34(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, int a19, __int16 a20, char a21, char a22)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FileDescriptor>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, double a9)
{
  a4[17] = &google::protobuf::_FeatureSet_default_instance_;
  a4[18] = &google::protobuf::_FeatureSet_default_instance_;
  if ((*(a1 + 96) & 1) == 0)
  {
    google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FileDescriptor>(&v23, a2, a3);
  }

  v14 = a2;
  if (!a5)
  {
    google::protobuf::FeatureSet::FeatureSet(v25, 0, &google::protobuf::_FeatureSet_default_instance_, a9);
    if (v14 > 999)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  if ((*(a5 + 41) & 4) == 0)
  {
    google::protobuf::FeatureSet::FeatureSet(v25, 0, &google::protobuf::_FeatureSet_default_instance_, a9);
    if (v14 > 999)
    {
      goto LABEL_13;
    }

    goto LABEL_11;
  }

  v16 = google::protobuf::DescriptorPool::Tables::InternFeatureSet(*(a1 + 8), *(a5 + 152));
  a4[17] = v16;
  v18 = *(a5 + 152);
  if (v18)
  {
    google::protobuf::FeatureSet::Clear(v18);
    v16 = a4[17];
  }

  *(a5 + 40) &= ~0x400u;
  google::protobuf::FeatureSet::FeatureSet(v25, 0, v16, v17);
  if (v14 <= 999)
  {
LABEL_11:
    if (a4[17] != &google::protobuf::_FeatureSet_default_instance_)
    {
      google::protobuf::DescriptorBuilder::AddError(a1, a4[1], a3, a7, "Features are only valid under editions.");
    }
  }

LABEL_13:
  if (google::protobuf::FeatureSet::ByteSizeLong(v25) || (a8 & 1) != 0)
  {
    google::protobuf::FeatureResolver::MergeFeatures(&v23, (a1 + 24), &google::protobuf::_FeatureSet_default_instance_, v25, v19);
    if (v23 == 1)
    {
      a4[18] = google::protobuf::DescriptorPool::Tables::InternFeatureSet(*(a1 + 8), v24);
    }

    else
    {
      v21 = a4[1];
      v22 = &v23;
      google::protobuf::DescriptorBuilder::AddError(a1, v21, a3, a7, &v22, absl::lts_20240722::functional_internal::InvokeObject<void google::protobuf::DescriptorBuilder::ResolveFeaturesImpl<google::protobuf::FileDescriptor>(google::protobuf::Edition,google::protobuf::FileDescriptor::Proto const&,google::protobuf::FileDescriptor::Proto*,google::protobuf::FileDescriptor::Proto::OptionsType *,google::protobuf::internal::FlatAllocator &,google::protobuf::DescriptorPool::ErrorCollector::ErrorLocation,BOOL)::{lambda(void)#1},std::basic_string<char,std::basic_string::char_traits<char>,std::basic_string::allocator<char>>>);
    }

    if (v23 == 1)
    {
      google::protobuf::FeatureSet::~FeatureSet(v24);
    }

    else if ((v23 & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(v23, v20);
    }
  }

  else
  {
    a4[18] = &google::protobuf::_FeatureSet_default_instance_;
  }

  google::protobuf::FeatureSet::~FeatureSet(v25);
}

void sub_23CD7DD4C(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  v9 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  absl::lts_20240722::StatusOr<google::protobuf::FeatureSet>::~StatusOr(va, a2);
  google::protobuf::FeatureSet::~FeatureSet(va1);
  _Unwind_Resume(a1);
}

void sub_23CD7DD6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

void sub_23CD7DD80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, ...)
{
  va_start(va, a19);
  google::protobuf::FeatureSet::~FeatureSet(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::AddRecursiveImportError(google::protobuf::DescriptorBuilder *this, const google::protobuf::FileDescriptorProto *a2, int a3)
{
  v9 = a3;
  v8[0] = &v9;
  v8[1] = this;
  v8[2] = a2;
  v4 = **(this + 1);
  v5 = 0xAAAAAAAAAAAAAAABLL * ((*(*(this + 1) + 8) - v4) >> 3) - 1;
  v6 = v4 + 24 * a3 + 24;
  if (v5 <= a3)
  {
    v7 = *(a2 + 22) & 0xFFFFFFFFFFFFFFFCLL;
  }

  else
  {
    v7 = v6;
  }

  google::protobuf::DescriptorBuilder::AddError(this, v7, a2, 9, v8, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddRecursiveImportError(google::protobuf::FileDescriptorProto const&,int)::$_0,std::string>);
}

BOOL google::protobuf::ExistingFileMatchesProto(int a1, atomic_uint **a2, google::protobuf::MessageLite *a3)
{
  google::protobuf::FileDescriptorProto::FileDescriptorProto(v17, 0);
  google::protobuf::FileDescriptor::CopyTo(a2, v17);
  if (a1 == 998 && (*(a3 + 16) & 4) != 0)
  {
    v19 |= 4u;
    v6 = v18;
    if (v18)
    {
      v6 = *(v18 & 0xFFFFFFFFFFFFFFFELL);
    }

    google::protobuf::internal::ArenaStringPtr::Set(v20, "proto2", 6uLL, v6);
  }

  google::protobuf::MessageLite::SerializeAsString(&v16, v17);
  google::protobuf::MessageLite::SerializeAsString(&__p, a3);
  v7 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(v16.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = v16.__r_.__value_.__l.__size_;
  }

  v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
  v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v9 = __p.__r_.__value_.__l.__size_;
  }

  if (size == v9)
  {
    if ((v16.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v11 = &v16;
    }

    else
    {
      v11 = v16.__r_.__value_.__r.__words[0];
    }

    if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p.__r_.__value_.__r.__words[0];
    }

    v13 = memcmp(v11, p_p, size) == 0;
    if ((v10 & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v13 = 0;
    if ((SHIBYTE(__p.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_22;
    }
  }

  operator delete(__p.__r_.__value_.__l.__data_);
  v7 = HIBYTE(v16.__r_.__value_.__r.__words[2]);
LABEL_22:
  if (v7 < 0)
  {
    operator delete(v16.__r_.__value_.__l.__data_);
  }

  google::protobuf::FileDescriptorProto::~FileDescriptorProto(v17);
  return v13;
}

void sub_23CD7DF64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
    google::protobuf::FileDescriptorProto::~FileDescriptorProto(&a18);
    _Unwind_Resume(a1);
  }

  google::protobuf::FileDescriptorProto::~FileDescriptorProto(&a18);
  _Unwind_Resume(a1);
}

google::protobuf::FileDescriptor *google::protobuf::DescriptorBuilder::BuildFileImpl(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v316 = v6;
  a1[20] = v6;
  v7 = *(v4 + 192) & 0xFFFFFFFFFFFFFFFCLL;
  v8 = *(v7 + 23);
  if ((v8 & 0x80) != 0)
  {
    v9 = *(v7 + 8);
    if (v9)
    {
      if (v9 != 6)
      {
        if (v9 != 8)
        {
          goto LABEL_21;
        }

        v7 = *v7;
        goto LABEL_10;
      }

      v7 = *v7;
      if (*v7 != 1953460848 || *(v7 + 4) != 12911)
      {
LABEL_17:
        v12 = *v7;
        v13 = *(v7 + 4);
        if (v12 == 1953460848 && v13 == 13167)
        {
          *(v6 + 32) = 999;
          v10 = *(*a1 + 88);
          v293 = v4;
          if (v10)
          {
            goto LABEL_31;
          }

          goto LABEL_29;
        }

        goto LABEL_21;
      }
    }

LABEL_28:
    *(v6 + 32) = 998;
    v10 = *(*a1 + 88);
    v293 = v4;
    if (v10)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  if (!*(v7 + 23))
  {
    goto LABEL_28;
  }

  if (v8 == 6)
  {
    if (*v7 != 1953460848 || *(v7 + 4) != 12911)
    {
      goto LABEL_17;
    }

    goto LABEL_28;
  }

  if (v8 != 8)
  {
LABEL_21:
    *(v6 + 32) = 0;
    v15 = *(v4 + 176);
    __p[0] = v4;
    google::protobuf::DescriptorBuilder::AddError(a1, v15 & 0xFFFFFFFFFFFFFFFCLL, v4, 11, __p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_0,std::string>);
    v10 = *(*a1 + 88);
    v293 = v4;
    if (v10)
    {
      goto LABEL_31;
    }

    goto LABEL_29;
  }

LABEL_10:
  if (*v7 != 0x736E6F6974696465)
  {
    goto LABEL_21;
  }

  *(v6 + 32) = *(v4 + 216);
  v10 = *(*a1 + 88);
  v293 = v4;
  if (v10)
  {
    goto LABEL_31;
  }

LABEL_29:
  if ((atomic_load_explicit(&qword_2810C1A50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_2810C1A50))
  {
  }

  v10 = qword_2810C1A48;
LABEL_31:
  google::protobuf::FeatureResolver::Create(*(a1[20] + 32), v10, &v314);
  if (v314 == 1)
  {
    std::optional<google::protobuf::FeatureResolver>::emplace[abi:ne200100]<google::protobuf::FeatureResolver,void>((a1 + 3), v315);
  }

  else
  {
    v18 = *(v4 + 176);
    __p[0] = &v314;
    google::protobuf::DescriptorBuilder::AddError(a1, v18 & 0xFFFFFFFFFFFFFFFCLL, v4, 10, __p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_1,std::string>);
  }

  v19 = v316;
  *(v316 + 1) = 0;
  if ((*(v4 + 16) & 0x10) != 0)
  {
    if (!*a3)
    {
      goto LABEL_331;
    }

    v21 = *(a3 + 16);
    v22 = *(a3 + 176);
    *(a3 + 176) = v22 + 1;
    v23 = *(a3 + 120);
    if (v22 + 1 > v23)
    {
      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v22 + 1, v23, "used <= total_.template Get<TypeToUse>()");
    }

    v20 = (v21 + 48 * v22);
    if (*(v4 + 208))
    {
      v24 = *(v4 + 208);
    }

    else
    {
      v24 = &google::protobuf::_SourceCodeInfo_default_instance_;
    }

    google::protobuf::SourceCodeInfo::CopyFrom(v20, v24);
  }

  else
  {
    v20 = &google::protobuf::_SourceCodeInfo_default_instance_;
  }

  *(v19 + 160) = v20;
  if (!*a3)
  {
    goto LABEL_331;
  }

  v25 = *(a3 + 24);
  v26 = *(a3 + 180);
  *(a3 + 180) = v26 + 1;
  v27 = *(a3 + 124);
  if (v26 + 1 > v27)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v26 + 1, v27, "used <= total_.template Get<TypeToUse>()");
  }

  v28 = (v25 + 200 * v26);
  a1[21] = v28;
  *(a1[20] + 152) = v28;
  if ((*(v4 + 16) & 1) == 0)
  {
    BYTE7(v295) = 0;
    LOBYTE(__p[0]) = 0;
    google::protobuf::DescriptorBuilder::AddError(a1, __p, v4, 11, "Missing field: FileDescriptorProto.name.");
    if (SBYTE7(v295) < 0)
    {
      operator delete(__p[0]);
    }
  }

  v29 = *(v4 + 176);
  v32 = v29 & 0xFFFFFFFFFFFFFFFCLL;
  if (*((v29 & 0xFFFFFFFFFFFFFFFCLL) + 23) < 0)
  {
    std::string::__init_copy_ctor_external(__p, *v32, *(v32 + 8));
  }

  else
  {
    v33 = *v32;
    *&v295 = *(v32 + 16);
    *__p = v33;
  }

  if (*(v31 + 23) < 0)
  {
    operator delete(*v31);
  }

  v34 = *__p;
  *(v31 + 16) = v295;
  *v31 = v34;
  *(v19 + 8) = v31;
  if ((*(v4 + 16) & 2) != 0)
  {
    v37 = *(v4 + 184);
    v38 = v37 & 0xFFFFFFFFFFFFFFFCLL;
    if (*((v37 & 0xFFFFFFFFFFFFFFFCLL) + 23) < 0)
    {
      std::string::__init_copy_ctor_external(__p, *v38, *(v38 + 8));
    }

    else
    {
      v39 = *v38;
      *&v295 = *(v38 + 16);
      *__p = v39;
    }

    if (*(v36 + 23) < 0)
    {
      operator delete(*v36);
    }

    v40 = *__p;
    *(v36 + 16) = v295;
    *v36 = v40;
  }

  else
  {
    v36 = v35;
    if (*(v35 + 23) < 0)
    {
      operator delete(*v35);
    }

    *v36 = 0;
    *(v36 + 23) = 0;
  }

  *(v19 + 16) = v36;
  *(v19 + 24) = *a1;
  if (std::string::find(*(v19 + 8), 0, 0) != -1)
  {
    v44 = *(v19 + 8);
    __p[0] = &v316;
    google::protobuf::DescriptorBuilder::AddError(a1, v44, v4, 0, __p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildFileImpl(google::protobuf::FileDescriptorProto const&,google::protobuf::internal::FlatAllocator &)::$_2,std::string>);
    goto LABEL_92;
  }

  if ((google::protobuf::DescriptorPool::Tables::AddFile(a1[1], v19, v41, v42, v43) & 1) == 0)
  {
    v49 = *(v4 + 176) & 0xFFFFFFFFFFFFFFFCLL;
    v54 = "A file with this name is already in the pool.";
    v55 = 11;
LABEL_91:
    google::protobuf::DescriptorBuilder::AddError(a1, v49, v4, v55, v54);
    goto LABEL_92;
  }

  v49 = *(v19 + 16);
  v50 = *(v49 + 23);
  if ((v50 & 0x8000000000000000) != 0)
  {
    v50 = *(v49 + 8);
    if (v50)
    {
      v51 = *v49;
      if (v50 < 8)
      {
        goto LABEL_68;
      }

      goto LABEL_72;
    }
  }

  else if (*(v49 + 23))
  {
    v51 = *(v19 + 16);
    if (v50 < 8)
    {
LABEL_68:
      v52 = 0;
      v53 = v51;
      goto LABEL_85;
    }

LABEL_72:
    if (v50 >= 0x20)
    {
      v57 = 0uLL;
      v58.i64[0] = 0x2E2E2E2E2E2E2E2ELL;
      v58.i64[1] = 0x2E2E2E2E2E2E2E2ELL;
      v59 = vdupq_n_s64(1uLL);
      v56 = v50 & 0xFFFFFFFFFFFFFFE0;
      v60 = 0uLL;
      v61 = v51 + 1;
      v62 = 0uLL;
      v63 = v50 & 0xFFFFFFFFFFFFFFE0;
      v64 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      v67 = 0uLL;
      v68 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
      do
      {
        v77 = vceqq_s8(v61[-1], v58);
        v78 = vmovl_u8(*v77.i8);
        v79 = vmovl_high_u8(v77);
        v80 = vmovl_high_u16(v79);
        v81.i64[0] = v80.u32[2];
        v81.i64[1] = v80.u32[3];
        v68 = vaddq_s64(v68, vandq_s8(v81, v59));
        v82 = vmovl_high_u16(v78);
        v83 = vmovl_u16(*v79.i8);
        v81.i64[0] = v80.u32[0];
        v81.i64[1] = v80.u32[1];
        v67 = vaddq_s64(v67, vandq_s8(v81, v59));
        v81.i64[0] = v83.u32[2];
        v81.i64[1] = v83.u32[3];
        v66 = vaddq_s64(v66, vandq_s8(v81, v59));
        v81.i64[0] = v82.u32[2];
        v81.i64[1] = v82.u32[3];
        v64 = vaddq_s64(v64, vandq_s8(v81, v59));
        v84 = vmovl_u16(*v78.i8);
        v81.i64[0] = v83.u32[0];
        v81.i64[1] = v83.u32[1];
        v65 = vaddq_s64(v65, vandq_s8(v81, v59));
        v81.i64[0] = v84.u32[0];
        v81.i64[1] = v84.u32[1];
        v85 = vandq_s8(v81, v59);
        v81.i64[0] = v84.u32[2];
        v81.i64[1] = v84.u32[3];
        v86 = vandq_s8(v81, v59);
        v81.i64[0] = v82.u32[0];
        v81.i64[1] = v82.u32[1];
        v87 = vceqq_s8(*v61, v58);
        v62 = vaddq_s64(v62, vandq_s8(v81, v59));
        v88 = vmovl_u8(*v87.i8);
        v89 = vmovl_high_u8(v87);
        v60 = vaddq_s64(v60, v86);
        v90 = vmovl_high_u16(v89);
        v57 = vaddq_s64(v57, v85);
        v81.i64[0] = v90.u32[2];
        v81.i64[1] = v90.u32[3];
        v76 = vaddq_s64(v76, vandq_s8(v81, v59));
        v91 = vmovl_high_u16(v88);
        v92 = vmovl_u16(*v89.i8);
        v81.i64[0] = v90.u32[0];
        v81.i64[1] = v90.u32[1];
        v75 = vaddq_s64(v75, vandq_s8(v81, v59));
        v81.i64[0] = v92.u32[2];
        v81.i64[1] = v92.u32[3];
        v74 = vaddq_s64(v74, vandq_s8(v81, v59));
        v81.i64[0] = v91.u32[2];
        v81.i64[1] = v91.u32[3];
        v72 = vaddq_s64(v72, vandq_s8(v81, v59));
        v81.i64[0] = v92.u32[0];
        v81.i64[1] = v92.u32[1];
        v73 = vaddq_s64(v73, vandq_s8(v81, v59));
        v93 = vmovl_u16(*v88.i8);
        v81.i64[0] = v91.u32[0];
        v81.i64[1] = v91.u32[1];
        v71 = vaddq_s64(v71, vandq_s8(v81, v59));
        v81.i64[0] = v93.u32[2];
        v81.i64[1] = v93.u32[3];
        v70 = vaddq_s64(v70, vandq_s8(v81, v59));
        v81.i64[0] = v93.u32[0];
        v81.i64[1] = v93.u32[1];
        v69 = vaddq_s64(v69, vandq_s8(v81, v59));
        v61 += 2;
        v63 -= 32;
      }

      while (v63);
      v52 = vaddvq_s64(vaddq_s64(vaddq_s64(vaddq_s64(vaddq_s64(v69, v57), vaddq_s64(v73, v65)), vaddq_s64(vaddq_s64(v71, v62), vaddq_s64(v75, v67))), vaddq_s64(vaddq_s64(vaddq_s64(v70, v60), vaddq_s64(v74, v66)), vaddq_s64(vaddq_s64(v72, v64), vaddq_s64(v76, v68)))));
      if (v50 == v56)
      {
        goto LABEL_89;
      }

      if ((v50 & 0x18) == 0)
      {
        v53 = &v51->u8[v56];
        goto LABEL_85;
      }
    }

    else
    {
      v52 = 0;
      v56 = 0;
    }

    v53 = &v51->u8[v50 & 0xFFFFFFFFFFFFFFF8];
    v94 = 0uLL;
    v95 = v52;
    v96 = &v51->i8[v56];
    v97 = v56 - (v50 & 0xFFFFFFFFFFFFFFF8);
    v98 = vdupq_n_s64(1uLL);
    v99 = 0uLL;
    v100 = 0uLL;
    do
    {
      v101 = *v96++;
      v102 = vmovl_u8(vceq_s8(v101, 0x2E2E2E2E2E2E2E2ELL));
      v103 = vmovl_u16(*v102.i8);
      v104.i64[0] = v103.u32[0];
      v104.i64[1] = v103.u32[1];
      v105 = vandq_s8(v104, v98);
      v104.i64[0] = v103.u32[2];
      v104.i64[1] = v103.u32[3];
      v106 = vandq_s8(v104, v98);
      v107 = vmovl_high_u16(v102);
      v104.i64[0] = v107.u32[0];
      v104.i64[1] = v107.u32[1];
      v108 = vandq_s8(v104, v98);
      v104.i64[0] = v107.u32[2];
      v104.i64[1] = v107.u32[3];
      v100 = vaddq_s64(v100, vandq_s8(v104, v98));
      v99 = vaddq_s64(v99, v108);
      v94 = vaddq_s64(v94, v106);
      v95 = vaddq_s64(v95, v105);
      v97 += 8;
    }

    while (v97);
    v52 = vaddvq_s64(vaddq_s64(vaddq_s64(v95, v99), vaddq_s64(v94, v100)));
    if (v50 == (v50 & 0xFFFFFFFFFFFFFFF8))
    {
LABEL_89:
      if (v52 >= 0x65)
      {
        v55 = 0;
        v54 = "Exceeds Maximum Package Depth";
        goto LABEL_91;
      }

      google::protobuf::DescriptorBuilder::AddPackage(a1, v49, v4, v19);
      goto LABEL_98;
    }

LABEL_85:
    v109 = &v51->u8[v50];
    do
    {
      v110 = *v53++;
      if (v110 == 46)
      {
        ++v52;
      }
    }

    while (v53 != v109);
    goto LABEL_89;
  }

LABEL_98:
  v112 = xmmword_23CE306D0;
  v311 = xmmword_23CE306D0;
  v113 = *(v4 + 32);
  *(v19 + 48) = v113;
  v114 = *a3;
  if (!*a3)
  {
    goto LABEL_331;
  }

  v115 = *(a3 + 168);
  v116 = v115 + 8 * v113;
  *(a3 + 168) = v116;
  v117 = *(a3 + 112);
  if (v116 > v117)
  {
    absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v116, v117, "used <= total_.template Get<TypeToUse>()");
  }

  *(v19 + 72) = v114 + v115;
  *(v19 + 40) = 0;
  v118 = a1[30];
  if (v118 > 1)
  {
    absl::lts_20240722::container_internal::ClearBackingArray(a1 + 30, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::GetPolicyFunctions(void)::value, v118 < 0x80, 1u);
    v112 = xmmword_23CE306D0;
  }

  else
  {
    a1[31] = 0;
  }

  v308 = v112;
  if (*(v4 + 160) >= 1)
  {
    v119 = 0;
    do
    {
      LODWORD(v318) = *(*(v4 + 168) + 4 * v119);
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<int>,absl::lts_20240722::hash_internal::Hash<int>,std::equal_to<int>,std::allocator<int>>::find_or_prepare_insert<int>(&v308, &v318, __p);
      if (v295 == 1)
      {
        *__p[1] = v318;
      }

      ++v119;
    }

    while (v119 < *(v4 + 160));
  }

  v289 = a1 + 30;
  if (*(v4 + 32) < 1)
  {
LABEL_252:
    v231 = v316;
    *(v316 + 80) = v229;
    if (*(v4 + 144) < 1)
    {
      *(v231 + 52) = 0;
      v250 = a1 + 22;
      v251 = a1[22];
      if (v251 <= 1)
      {
LABEL_276:
        a1[23] = 0;
        goto LABEL_279;
      }
    }

    else
    {
      v232 = 0;
      v233 = 0;
      do
      {
        v234 = *(*(v4 + 152) + 4 * v232);
        if ((v234 & 0x80000000) != 0 || v234 >= *(v4 + 32))
        {
          google::protobuf::DescriptorBuilder::AddError(a1, *(v4 + 176) & 0xFFFFFFFFFFFFFFFCLL, v4, 11, "Invalid public dependency index.");
          goto LABEL_255;
        }

        v235 = v316;
        *(*(v316 + 80) + 4 * v233) = v234;
        if (*(*a1 + 49))
        {
          goto LABEL_259;
        }

        v236 = v235[5];
        if (v236)
        {
          __p[0] = v235;
          if (atomic_load_explicit(v236, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FileDescriptor const*),google::protobuf::FileDescriptor const*>(v236, 1, google::protobuf::FileDescriptor::DependenciesOnceInit, __p);
          }
        }

        v237 = *(v235[9] + 8 * v234);
        v238 = a1 + 30;
        v239 = *v289;
        if (*v289 > 1)
        {
          v240 = 0;
          _X10 = a1[32];
          v242 = v237 + ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v237) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v237)));
          v243 = ((v242 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v242);
          v244 = vdup_n_s8(v243 & 0x7F);
          __asm { PRFM            #4, [X10] }

          v246 = ((_X10 >> 12) ^ (v243 >> 7)) & v239;
          v247 = *(_X10 + v246);
          v248 = vceq_s8(v247, v244);
          if (!v248)
          {
            goto LABEL_270;
          }

          do
          {
LABEL_268:
            v249 = (v246 + (__clz(__rbit64(v248)) >> 3)) & v239;
            if (*(a1[33] + 8 * v249) == v237)
            {
              if (!_X10)
              {
                goto LABEL_259;
              }

              absl::lts_20240722::container_internal::EraseMetaOnly(v238, v249);
              ++v233;
              goto LABEL_255;
            }

            v248 &= ((v248 & 0x8080808080808080) - 1) & 0x8080808080808080;
          }

          while (v248);
LABEL_270:
          while (!*&vceq_s8(v247, 0x8080808080808080))
          {
            v240 += 8;
            v238 = a1 + 30;
            v246 = (v240 + v246) & v239;
            v247 = *(_X10 + v246);
            v248 = vceq_s8(v247, v244);
            if (v248)
            {
              goto LABEL_268;
            }
          }

LABEL_259:
          ++v233;
        }

        else
        {
          if (a1[31] < 2 || a1[32] != v237)
          {
            goto LABEL_259;
          }

          a1[31] = 0;
          ++v233;
        }

LABEL_255:
        ++v232;
      }

      while (v232 < *(v4 + 144));
      v231 = v316;
      *(v316 + 52) = v233;
      v250 = a1 + 22;
      v251 = a1[22];
      if (v251 <= 1)
      {
        goto LABEL_276;
      }
    }

    absl::lts_20240722::container_internal::ClearBackingArray(v250, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::GetPolicyFunctions(void)::value, v251 < 0x80, 1u);
LABEL_279:
    if ((*(*a1 + 49) & 1) == 0 && *(v231 + 48) >= 1)
    {
      v252 = 0;
      do
      {
        v253 = *(v231 + 40);
        if (v253)
        {
          __p[0] = v231;
          if (atomic_load_explicit(v253, memory_order_acquire) != 221)
          {
            absl::lts_20240722::base_internal::CallOnceImpl<void (&)(google::protobuf::FileDescriptor const*),google::protobuf::FileDescriptor const*>(v253, 1, google::protobuf::FileDescriptor::DependenciesOnceInit, __p);
          }
        }

        google::protobuf::DescriptorBuilder::RecordPublicDependencies(a1, *(*(v231 + 72) + 8 * v252++));
        v231 = v316;
      }

      while (v252 < *(v316 + 48));
    }

    if (*(v4 + 160) < 1)
    {
      v256 = 0;
    }

    else
    {
      v255 = 0;
      v256 = 0;
      do
      {
        while (1)
        {
          v257 = *(*(v4 + 168) + 4 * v255);
          if ((v257 & 0x80000000) == 0 && v257 < *(v4 + 32))
          {
            break;
          }

          google::protobuf::DescriptorBuilder::AddError(a1, *(v4 + 176) & 0xFFFFFFFFFFFFFFFCLL, v4, 11, "Invalid weak dependency index.");
          if (++v255 >= *(v4 + 160))
          {
            goto LABEL_294;
          }
        }

        *(*(v231 + 88) + 4 * v256++) = v257;
        ++v255;
      }

      while (v255 < *(v4 + 160));
    }

LABEL_294:
    *(v231 + 56) = v256;
    v258 = *(v4 + 56);
    *(v231 + 60) = v258;
    if (*(v4 + 56) >= 1)
    {
      v260 = 0;
      v261 = 0;
      v262 = (v4 + 48);
      v263 = 8;
      do
      {
        if (*v262)
        {
          v264 = (*v262 + v263 - 1);
        }

        else
        {
          v264 = (v4 + 48);
        }

        google::protobuf::DescriptorBuilder::BuildMessage(a1, *v264, 0, *(v231 + 96) + v260, a3);
        ++v261;
        v260 += 152;
        v263 += 8;
      }

      while (v261 < *(v4 + 56));
    }

    v265 = *(v4 + 80);
    *(v231 + 64) = v265;
    if (*(v4 + 80) >= 1)
    {
      v267 = 0;
      v268 = 0;
      v269 = (v4 + 72);
      v270 = 8;
      do
      {
        if (*v269)
        {
          v271 = (*v269 + v270 - 1);
        }

        else
        {
          v271 = (v4 + 72);
        }

        google::protobuf::DescriptorBuilder::BuildEnum(a1, *v271, 0, *(v231 + 104) + v267, a3);
        ++v268;
        v267 += 88;
        v270 += 8;
      }

      while (v268 < *(v4 + 80));
    }

    v272 = *(v4 + 104);
    *(v231 + 68) = v272;
    v273 = *a3;
    if (*a3)
    {
      v274 = *(a3 + 168);
      v275 = v274 + (v272 << 6);
      *(a3 + 168) = v275;
      v276 = *(a3 + 112);
      if (v275 <= v276)
      {
        *(v231 + 112) = v273 + v274;
        if (*(v4 + 104) >= 1)
        {
          if (*(v4 + 96))
          {
            v277 = (*(v4 + 96) + 7);
          }

          else
          {
            v277 = (v4 + 96);
          }

          google::protobuf::DescriptorBuilder::BuildService(a1, *v277, v266, *(v231 + 112), a3);
        }

        v278 = *(v4 + 128);
        *(v231 + 4) = v278;
        if (*(v4 + 128) >= 1)
        {
          v279 = 0;
          v280 = 0;
          v281 = (v4 + 120);
          v282 = 8;
          do
          {
            if (*v281)
            {
              v283 = (*v281 + v282 - 1);
            }

            else
            {
              v283 = (v4 + 120);
            }

            google::protobuf::DescriptorBuilder::BuildFieldOrExtension(a1, *v283, 0, (*(v231 + 120) + v279), 1, a3);
            ++v280;
            v279 += 88;
            v282 += 8;
          }

          while (v280 < *(v4 + 128));
        }

        google::protobuf::DescriptorBuilder::AllocateOptions(a1, v4, v231, a3);
      }

      absl::lts_20240722::log_internal::MakeCheckOpString<long long,long long>(v275, v276, "used <= total_.template Get<TypeToUse>()");
    }

LABEL_331:
    absl::lts_20240722::log_internal::LogMessageFatal::LogMessageFatal(__p, "/Library/Caches/com.apple.xbs/Binaries/ANECompiler/install/TempContent/Objects/ZinAneCompiler.build/or_tools_build/_deps/Protobuf-src/src/google/protobuf/descriptor.cc", 390);
    absl::lts_20240722::log_internal::LogMessageFatal::~LogMessageFatal(__p);
  }

  v120 = 0;
  v121 = 0;
  v122 = (v4 + 24);
  v290 = v19;
  v291 = (v4 + 24);
  while (1)
  {
    v292 = v121;
    v137 = (*v122 & 1) != 0 ? (*v122 + 8 * v120 + 7) : v122;
    v138 = *v137;
    if (v311 > 1)
    {
      _X8 = v312;
      __asm { PRFM            #4, [X8] }

      v147 = *(v138 + 23);
      if (v147 >= 0)
      {
        v148 = v138;
      }

      else
      {
        v148 = *v138;
      }

      if (v147 >= 0)
      {
        v149 = *(v138 + 23);
      }

      else
      {
        v149 = *(v138 + 1);
      }

      v150 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v148, v149, v47, v48);
      v151 = 0;
      v152 = (((v150 + v149) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v150 + v149));
      v153 = v312;
      v154 = v311;
      v155 = (v312 >> 12) ^ (v152 >> 7);
      v156 = vdup_n_s8(v152 & 0x7F);
      v157 = *(v138 + 23);
      if (v157 >= 0)
      {
        v158 = *(v138 + 23);
      }

      else
      {
        v158 = *(v138 + 1);
      }

      if (v157 >= 0)
      {
        v159 = v138;
      }

      else
      {
        v159 = *v138;
      }

      v160 = v313;
      v161 = v155 & v311;
      v162 = *(v312 + (v155 & v311));
      v163 = vceq_s8(v162, v156);
      if (v163)
      {
LABEL_145:
        v286 = v154;
        v288 = v151;
        v284 = v160;
        while (1)
        {
          v164 = v160 + 16 * ((v161 + (__clz(__rbit64(v163)) >> 3)) & v154);
          if (*(v164 + 8) == v158 && !memcmp(*v164, v159, v158))
          {
            break;
          }

          v163 &= ((v163 & 0x8080808080808080) - 1) & 0x8080808080808080;
          v154 = v286;
          v151 = v288;
          v160 = v284;
          if (!v163)
          {
            goto LABEL_149;
          }
        }

LABEL_152:
        v166 = v293;
        v122 = v291;
LABEL_160:
        LODWORD(v318) = v120;
        v170 = v166[3];
        if (v170)
        {
          v171 = (v170 + 8 * v120 + 7);
        }

        else
        {
          v171 = v122;
        }

        v172 = *v171;
        __p[0] = v166;
        __p[1] = &v318;
        google::protobuf::DescriptorBuilder::AddError(a1, v172, v166, 9, __p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddTwiceListedError(google::protobuf::FileDescriptorProto const&,int)::$_0,std::string>);
        goto LABEL_164;
      }

LABEL_149:
      while (1)
      {
        v165 = vceq_s8(v162, 0x8080808080808080);
        if (v165)
        {
          break;
        }

        v151 += 8;
        v161 = (v151 + v161) & v154;
        v162 = *(v153 + v161);
        v163 = vceq_s8(v162, v156);
        if (v163)
        {
          goto LABEL_145;
        }
      }

      inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v311, v152, (v161 + (__clz(__rbit64(v165)) >> 3)) & v154, v151, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::GetPolicyFunctions(void)::value);
      v141 = (v313 + 16 * inserted);
      __p[0] = (v312 + inserted);
      __p[1] = v141;
      LOBYTE(v295) = 1;
    }

    else
    {
      absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find_or_prepare_insert_soo<std::string>(&v311, v138, v47, v48, __p);
      if ((v295 & 1) == 0)
      {
        goto LABEL_152;
      }

      v141 = __p[1];
    }

    v122 = v291;
    v168 = *(v138 + 23);
    if (v168 >= 0)
    {
      v169 = v138;
    }

    else
    {
      v169 = *v138;
    }

    if (v168 < 0)
    {
      v168 = *(v138 + 1);
    }

    *v141 = v169;
    v141[1] = v168;
    v166 = v293;
    if ((v295 & 1) == 0)
    {
      goto LABEL_160;
    }

LABEL_164:
    if (*v122)
    {
      v173 = *v122 + 8 * v120 + 7;
    }

    else
    {
      v173 = v122;
    }

    v174 = *v173;
    v175 = *(*v173 + 23);
    v135 = v290;
    if ((v175 & 0x8000000000000000) != 0)
    {
      v174 = *v174;
      v175 = *(*v173 + 8);
    }

    File = google::protobuf::DescriptorPool::Tables::FindFile(a1[1], v174, v175, v139, v140);
    v318 = File;
    if (File)
    {
      if (File == v290)
      {
        break;
      }

      goto LABEL_179;
    }

    v177 = *a1;
    v178 = *(*a1 + 24);
    if (!v178)
    {
      if (!v290)
      {
        break;
      }

      goto LABEL_194;
    }

    if (*v122)
    {
      v179 = *v122 + 8 * v120 + 7;
    }

    else
    {
      v179 = v122;
    }

    v180 = *v179;
    v181 = *(*v179 + 23);
    if ((v181 & 0x8000000000000000) != 0)
    {
      v180 = *v180;
      v181 = *(*v179 + 8);
    }

    File = google::protobuf::DescriptorPool::FindFileByName(v178, v180, v181, v47, v48);
    v318 = File;
    if (File == v290)
    {
      break;
    }

LABEL_179:
    v177 = *a1;
    if (File)
    {
      if (*(v177 + 48) == 1)
      {
        v182 = *(v293 + 176) & 0xFFFFFFFFFFFFFFFCLL;
        _X8 = *(v177 + 72);
        __asm { PRFM            #4, [X8] }

        v185 = *(v182 + 23);
        if (v185 >= 0)
        {
          v186 = (*(v293 + 176) & 0xFFFFFFFFFFFFFFFCLL);
        }

        else
        {
          v186 = *v182;
        }

        if (v185 >= 0)
        {
          v187 = *(v182 + 23);
        }

        else
        {
          v187 = *(v182 + 8);
        }

        v188 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v186, v187, v47, v48);
        v134 = 0;
        v189 = (((v188 + v187) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v188 + v187));
        v190 = *(v177 + 72);
        v136 = (v190 >> 12) ^ (v189 >> 7);
        v191 = vdup_n_s8(v189 & 0x7F);
        v192 = *(v182 + 23);
        if (v192 >= 0)
        {
          v193 = *(v182 + 23);
        }

        else
        {
          v193 = *(v182 + 8);
        }

        v194 = *(v177 + 56);
        if (v192 >= 0)
        {
          v133 = v182;
        }

        else
        {
          v133 = *v182;
        }

        while (1)
        {
          v123 = v136 & v194;
          v124 = *(v190 + (v136 & v194));
          v125 = vceq_s8(v124, v191);
          if (v125)
          {
            break;
          }

LABEL_120:
          v135 = v290;
          v122 = v291;
          if (vceq_s8(v124, 0x8080808080808080))
          {
            goto LABEL_207;
          }

          v134 += 8;
          v136 = v134 + v123;
        }

        v126 = *(v177 + 80);
        v285 = v126;
        v287 = v134;
        while (1)
        {
          v127 = v126 + 32 * ((v123 + (__clz(__rbit64(v125)) >> 3)) & v194);
          v128 = *(v127 + 23);
          v129 = v128;
          if ((v128 & 0x80u) != 0)
          {
            v128 = *(v127 + 8);
          }

          if (v128 == v193)
          {
            v130 = v129 >= 0 ? v127 : *v127;
            v131 = v133;
            v132 = memcmp(v130, v133, v193);
            v133 = v131;
            if (!v132)
            {
              break;
            }
          }

          v125 &= ((v125 & 0x8080808080808080) - 1) & 0x8080808080808080;
          v126 = v285;
          v134 = v287;
          if (!v125)
          {
            goto LABEL_120;
          }
        }

        v135 = v290;
        v122 = v291;
        if (v190)
        {
          if (!*(v318 + 52))
          {
            absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<google::protobuf::FileDescriptor const*>,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::FileDescriptor const*,void>::Eq,std::allocator<google::protobuf::FileDescriptor const*>>::find_or_prepare_insert<google::protobuf::FileDescriptor const*>(v289, &v318, __p);
            if (v295 == 1)
            {
              *__p[1] = v318;
            }
          }
        }
      }

      goto LABEL_207;
    }

LABEL_194:
    if ((*(v177 + 49) & 1) == 0)
    {
      if (*(v177 + 50))
      {
        goto LABEL_196;
      }

      if ((*(v177 + 51) & 1) == 0)
      {
        if (v308 > 1)
        {
          v204 = 0;
          _X9 = v309;
          __asm { PRFM            #4, [X9] }

          v207 = (((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v120) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v120));
          v208 = vdup_n_s8(v207 & 0x7F);
          v209 = ((v309 >> 12) ^ (v207 >> 7)) & v308;
          v210 = *(v309 + v209);
          v211 = vceq_s8(v210, v208);
          if (!v211)
          {
            goto LABEL_219;
          }

LABEL_217:
          while (v120 != *(v310 + 4 * ((v209 + (__clz(__rbit64(v211)) >> 3)) & v308)))
          {
            v211 &= ((v211 & 0x8080808080808080) - 1) & 0x8080808080808080;
            if (!v211)
            {
LABEL_219:
              while (!*&vceq_s8(v210, 0x8080808080808080))
              {
                v204 += 8;
                v209 = (v204 + v209) & v308;
                v210 = *(v309 + v209);
                v211 = vceq_s8(v210, v208);
                if (v211)
                {
                  goto LABEL_217;
                }
              }

              goto LABEL_203;
            }
          }

          if (v309)
          {
            goto LABEL_196;
          }
        }

        else if (*(&v308 + 1) >= 2uLL && v120 == v309)
        {
LABEL_196:
          v306 = 0u;
          v307 = 0u;
          v304 = 0u;
          v305 = 0u;
          v302 = 0u;
          v303 = 0u;
          v300 = 0u;
          v298 = 0u;
          v299 = 0u;
          v296 = 0u;
          v297 = 0u;
          *__p = 0u;
          v295 = 0u;
          v301 = 0x1000000A8uLL;
          if (*v122)
          {
            v195 = *v122 + 8 * v120 + 7;
          }

          else
          {
            v195 = v122;
          }

          v196 = *v195;
          v197 = *(*v195 + 23);
          if ((v197 & 0x8000000000000000) != 0)
          {
            v196 = *v196;
            v197 = *(*v195 + 8);
          }

          v318 = google::protobuf::DescriptorPool::NewPlaceholderFileWithMutexHeld(*a1, v196, v197, __p);
          goto LABEL_207;
        }
      }

LABEL_203:
      v317 = v120;
      __p[0] = a1;
      __p[1] = v293;
      *&v295 = &v317;
      v198 = *(v293 + 24);
      if (v198)
      {
        v199 = (v198 + 8 * v120 + 7);
      }

      else
      {
        v199 = v122;
      }

      google::protobuf::DescriptorBuilder::AddError(a1, *v199, v293, 9, __p, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::AddImportError(google::protobuf::FileDescriptorProto const&,int)::$_0,std::string>);
    }

LABEL_207:
    v200 = v318;
    v201 = *(v135 + 72);
    v201[v120] = v318;
    if (v200)
    {
      v202 = 0;
    }

    else
    {
      v202 = *(*a1 + 49);
    }

    v121 = v202 | v292;
    ++v120;
    v4 = v293;
    v203 = *(v293 + 32);
    if (v120 >= v203)
    {
      if (v121)
      {
        if (v203 < 1)
        {
          v218 = 4;
        }

        else
        {
          v212 = 0;
          v213 = *v291 + 7;
          do
          {
            while (1)
            {
              while (*v201)
              {
                v214 = v212++;
                v213 += 8;
                ++v201;
                if (!--v203)
                {
                  goto LABEL_235;
                }
              }

              v215 = v291;
              if (*v291)
              {
                v215 = v213;
              }

              v216 = *v215;
              v217 = *(*v215 + 23);
              if (v217 < 0)
              {
                break;
              }

              v214 = v212 + v217;
              v212 = v214 + 1;
              v213 += 8;
              ++v201;
              if (!--v203)
              {
                goto LABEL_235;
              }
            }

            v214 = v212 + *(v216 + 8);
            v212 = v214 + 1;
            v213 += 8;
            ++v201;
            --v203;
          }

          while (v203);
LABEL_235:
          v218 = v214 + 5;
        }

        Bytes = google::protobuf::DescriptorPool::Tables::AllocateBytes(a1[1], v218);
        *Bytes = 0;
        *(v135 + 40) = Bytes;
        if (*(v293 + 32) >= 1)
        {
          v220 = 0;
          v221 = Bytes + 1;
          v222 = 8;
          do
          {
            if (!*(*(v316 + 72) + 8 * v220))
            {
              if (*v291)
              {
                v223 = *v291 + v222 - 1;
              }

              else
              {
                v223 = v291;
              }

              v224 = *v223;
              v225 = *(*v223 + 23);
              if ((v225 & 0x8000000000000000) != 0)
              {
                v224 = *v224;
                v225 = *(*v223 + 8);
              }

              memcpy(v221, v224, v225);
              if (*v291)
              {
                v226 = *v291 + v222 - 1;
              }

              else
              {
                v226 = v291;
              }

              v227 = *v226;
              v228 = *(*v226 + 23);
              if (v228 < 0)
              {
                v228 = *(v227 + 8);
              }

              v221 += v228;
            }

            *v221++ = 0;
            ++v220;
            v222 += 8;
          }

          while (v220 < *(v293 + 32));
        }
      }

      goto LABEL_252;
    }
  }

  if (v308 >= 2)
  {
    operator delete((v309 - (BYTE8(v308) & 1) - 8));
    if (v311 >= 2)
    {
      goto LABEL_324;
    }
  }

  else if (v311 >= 2)
  {
LABEL_324:
    operator delete((v312 - (BYTE8(v311) & 1) - 8));
  }

LABEL_92:
  if (v314 == 1)
  {
    google::protobuf::FeatureSet::~FeatureSet(v315);
  }

  else if ((v314 & 1) == 0)
  {
    absl::lts_20240722::status_internal::StatusRep::Unref(v314, v45);
  }

  return 0;
}

void sub_23CD7FF40(_Unwind_Exception *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, unint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, unint64_t a58, uint64_t a59, uint64_t a60)
{
  if (a54 >= 2)
  {
    operator delete((a56 - (a55 & 1) - 8));
  }

  if (a58 >= 2)
  {
    operator delete((a60 - (a59 & 1) - 8));
    absl::lts_20240722::StatusOr<google::protobuf::FeatureResolver>::~StatusOr((v60 - 232), v62);
    _Unwind_Resume(a1);
  }

  absl::lts_20240722::StatusOr<google::protobuf::FeatureResolver>::~StatusOr((v60 - 232), a2);
  _Unwind_Resume(a1);
}

google::protobuf::FeatureSet *std::optional<google::protobuf::FeatureResolver>::emplace[abi:ne200100]<google::protobuf::FeatureResolver,void>(google::protobuf::FeatureSet *this, const google::protobuf::FeatureSet *a2)
{
  if (*(this + 72) == 1)
  {
    google::protobuf::FeatureSet::~FeatureSet(this);
    *(this + 72) = 0;
  }

  google::protobuf::FeatureSet::FeatureSet(this, 0);
  if (this != a2)
  {
    v4 = *(this + 1);
    if (v4)
    {
      v4 = *(v4 & 0xFFFFFFFFFFFFFFFELL);
      v5 = *(a2 + 1);
      if ((v5 & 1) == 0)
      {
LABEL_6:
        if (v4 != v5)
        {
LABEL_7:
          google::protobuf::FeatureSet::CopyFrom(this, a2);
          goto LABEL_11;
        }

LABEL_10:
        google::protobuf::FeatureSet::InternalSwap(this, a2);
        goto LABEL_11;
      }
    }

    else
    {
      v5 = *(a2 + 1);
      if ((v5 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    if (v4 != *(v5 & 0xFFFFFFFFFFFFFFFELL))
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

LABEL_11:
  *(this + 72) = 1;
  return this;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateStrings<std::string const&>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&v8, *a2, *(a2 + 8));
    if ((*(v5 + 23) & 0x80000000) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = *a2;
  if (*(v4 + 23) < 0)
  {
LABEL_3:
    operator delete(*v5);
  }

LABEL_4:
  v6 = *&v8.__r_.__value_.__l.__data_;
  *(v5 + 16) = *(&v8.__r_.__value_.__l + 2);
  *v5 = v6;
  return v5;
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateArray<int>(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  if (!*a1)
  {
  }

  v5 = *(a1 + 42);
  v6 = v5 + ((4 * a2 + 7) & 0xFFFFFFF8);
  *(a1 + 42) = v6;
  v7 = *(a1 + 28);
  if (v6 > v7)
  {
  }

  return v3 + v5;
}

void google::protobuf::DescriptorBuilder::BuildMessage(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v10 = *(a3 + 8) + 24;
  }

  else
  {
    v10 = *(*(a1 + 20) + 16);
  }

  NameStrings = google::protobuf::DescriptorBuilder::AllocateNameStrings(a1, v10, (*(a2 + 216) & 0xFFFFFFFFFFFFFFFCLL), a5);
  *(a4 + 8) = NameStrings;
  v14 = *(a2 + 216) & 0xFFFFFFFFFFFFFFFCLL;
  v15 = *(v14 + 23);
  if (v15 < 0)
  {
    v15 = *(v14 + 8);
    if (v15)
    {
      v16 = *v14;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (!*(v14 + 23))
  {
LABEL_16:
    google::protobuf::DescriptorBuilder::AddError(a1, NameStrings + 24, a2, 0, "Missing name.");
    goto LABEL_17;
  }

  v16 = (*(a2 + 216) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_10:
  while (1)
  {
    v17 = *v16;
    if ((v17 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v17 != 95 && (v17 - 58) <= 0xFFFFFFF5)
    {
      break;
    }

    ++v16;
    if (!--v15)
    {
      goto LABEL_17;
    }
  }

  v267.__r_.__value_.__r.__words[0] = *(a2 + 216) & 0xFFFFFFFFFFFFFFFCLL;
  google::protobuf::DescriptorBuilder::AddError(a1, NameStrings + 24, a2, 0, &v267, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
LABEL_17:
  v259 = a3;
  v261 = a2;
  *(a4 + 16) = *(a1 + 20);
  *(a4 + 24) = a3;
  *(a4 + 1) &= 0x80u;
  *(a4 + 32) = 0;
  v19 = *(*a1 + 40);
  v20 = *(a4 + 8);
  _X8 = v19[17];
  __asm { PRFM            #4, [X8] }

  v29 = *(v20 + 24);
  v28 = v20 + 24;
  v27 = v29;
  v30 = *(v28 + 23);
  if (v30 >= 0)
  {
    v31 = v28;
  }

  else
  {
    v31 = v27;
  }

  if (v30 >= 0)
  {
    v32 = *(v28 + 23);
  }

  else
  {
    v32 = *(v28 + 8);
  }

  v33 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v31, v32, v12, v13);
  v36 = 0;
  v37 = (((v33 + v32) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v33 + v32));
  v38 = vdup_n_s8(v37 & 0x7F);
  v39 = v19[17];
  v40 = *(v28 + 23);
  v41 = v40 < 0;
  if (v40 >= 0)
  {
    v42 = *(v28 + 23);
  }

  else
  {
    v42 = *(v28 + 8);
  }

  v43 = v19[15];
  v44 = (v37 >> 7) ^ (v39 >> 12);
  if (v41)
  {
    v45 = *v28;
  }

  else
  {
    v45 = v28;
  }

  v46 = v44 & v43;
  v47 = *(v39 + (v44 & v43));
  v48 = vceq_s8(v47, v38);
  if (v48)
  {
LABEL_30:
    v49 = v19[18];
    v256 = v43;
    v258 = v36;
    v254 = v49;
    while (1)
    {
      v50 = v49 + 32 * ((v46 + (__clz(__rbit64(v48)) >> 3)) & v43);
      v51 = *(v50 + 23);
      v52 = v51;
      if ((v51 & 0x80u) != 0)
      {
        v51 = *(v50 + 8);
      }

      if (v51 == v42)
      {
        v53 = v52 >= 0 ? v50 : *v50;
        if (!memcmp(v53, v45, v42))
        {
          break;
        }
      }

      v48 &= ((v48 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v43 = v256;
      v36 = v258;
      v49 = v254;
      if (!v48)
      {
        goto LABEL_39;
      }
    }

    if (v39)
    {
      *(a4 + 1) = (4 * (*(v50 + 24) & 0x1F)) | *(a4 + 1) & 0x83;
    }
  }

  else
  {
LABEL_39:
    while (!*&vceq_s8(v47, 0x8080808080808080))
    {
      v36 += 8;
      v46 = (v36 + v46) & v43;
      v47 = *(v39 + v46);
      v48 = vceq_s8(v47, v38);
      if (v48)
      {
        goto LABEL_30;
      }
    }
  }

  v54 = (v261 + 24);
  *(a4 + 2) = 0;
  if (*(v261 + 32) >= 1)
  {
    v55 = 0;
    v56 = *v54;
    v57 = *v54 + 7;
    do
    {
      if (v56)
      {
        v58 = v57;
      }

      else
      {
        v58 = v261 + 24;
      }

      v59 = *(*v58 + 72);
      v60 = v55 + 1;
      if (v55 + 1 != v59)
      {
        break;
      }

      *(a4 + 2) = v60;
      if (v55 > 0xFFFD)
      {
        break;
      }

      v57 += 8;
      ++v55;
    }

    while (v60 < *(v261 + 32));
  }

  v61 = *(v261 + 152);
  *(a4 + 120) = v61;
  v62 = *a5;
  if (!*a5)
  {
  }

  v63 = *(a5 + 168);
  v64 = v63 + 56 * v61;
  *(a5 + 168) = v64;
  v65 = *(a5 + 112);
  if (v64 > v65)
  {
  }

  *(a4 + 64) = v62 + v63;
  if (*(v261 + 152) >= 1)
  {
    v66 = 0;
    v67 = 0;
    v68 = 8;
    do
    {
      v69 = *(v261 + 144);
      if (v69)
      {
        v70 = (v69 + v68 - 1);
      }

      else
      {
        v70 = (v261 + 144);
      }

      google::protobuf::DescriptorBuilder::BuildOneof(a1, *v70, a4, *(a4 + 64) + v66, a5);
      ++v67;
      v66 += 56;
      v68 += 8;
    }

    while (v67 < *(v261 + 152));
  }

  v71 = *(v261 + 32);
  *(a4 + 4) = v71;
  if (*(v261 + 32) >= 1)
  {
    v73 = 0;
    v74 = 0;
    v75 = 8;
    do
    {
      v76 = *(v261 + 24);
      if (v76)
      {
        v77 = (v76 + v75 - 1);
      }

      else
      {
        v77 = (v261 + 24);
      }

      google::protobuf::DescriptorBuilder::BuildFieldOrExtension(a1, *v77, a4, (*(a4 + 56) + v73), 0, a5);
      ++v74;
      v73 += 88;
      v75 += 8;
    }

    while (v74 < *(v261 + 32));
  }

  v78 = *(v261 + 80);
  *(a4 + 132) = v78;
  if (*(v261 + 80) >= 1)
  {
    v80 = 0;
    v81 = 0;
    v82 = 8;
    do
    {
      v83 = *(v261 + 72);
      if (v83)
      {
        v84 = (v83 + v82 - 1);
      }

      else
      {
        v84 = (v261 + 72);
      }

      google::protobuf::DescriptorBuilder::BuildEnum(a1, *v84, a4, *(a4 + 80) + v80, a5);
      ++v81;
      v80 += 88;
      v82 += 8;
    }

    while (v81 < *(v261 + 80));
  }

  v85 = *(v261 + 104);
  *(a4 + 136) = v85;
  if (*(v261 + 104) >= 1)
  {
    v87 = 0;
    v88 = 0;
    v89 = 8;
    do
    {
      v90 = *(v261 + 96);
      if (v90)
      {
        v91 = (v90 + v89 - 1);
      }

      else
      {
        v91 = (v261 + 96);
      }

      google::protobuf::DescriptorBuilder::BuildExtensionRange(a1, *v91, a4, (*(a4 + 88) + v87), a5);
      ++v88;
      v87 += 40;
      v89 += 8;
    }

    while (v88 < *(v261 + 104));
  }

  v92 = *(v261 + 128);
  *(a4 + 140) = v92;
  if (*(v261 + 128) >= 1)
  {
    v95 = 0;
    v96 = 0;
    v97 = 8;
    do
    {
      v98 = *(v261 + 120);
      if (v98)
      {
        v99 = (v98 + v97 - 1);
      }

      else
      {
        v99 = (v261 + 120);
      }

      google::protobuf::DescriptorBuilder::BuildFieldOrExtension(a1, *v99, a4, (*(a4 + 96) + v95), 1, a5);
      ++v96;
      v95 += 88;
      v97 += 8;
    }

    while (v96 < *(v261 + 128));
  }

  v100 = *(v261 + 176);
  *(a4 + 144) = v100;
  v101 = *a5;
  if (!*a5)
  {
  }

  v102 = *(a5 + 168);
  v103 = v102 + 8 * v100;
  *(a5 + 168) = v103;
  v104 = *(a5 + 112);
  if (v103 > v104)
  {
  }

  *(a4 + 104) = v101 + v102;
  if (*(v261 + 176) >= 1)
  {
    v105 = 0;
    v106 = 0;
    do
    {
      v107 = *(v261 + 168);
      v108 = v105 + 8;
      if (v107)
      {
        v109 = (v107 + v105 + 8 - 1);
      }

      else
      {
        v109 = (v261 + 168);
      }

      google::protobuf::DescriptorBuilder::BuildReservedRange(a1, *v109, a4, (*(a4 + 104) + v105));
      ++v106;
      v105 = v108;
    }

    while (v106 < *(v261 + 176));
  }

  v110 = a1[82];
  _VF = __OFSUB__(v110--, 1);
  a1[82] = v110;
  if ((v110 < 0) ^ _VF | (v110 == 0))
  {
    google::protobuf::DescriptorBuilder::AddError(a1, *(a4 + 8) + 24, v261, 11, "Reached maximum recursion limit for nested messages.");
    *(a4 + 72) = 0;
    *(a4 + 128) = 0;
  }

  else
  {
    v111 = *(v261 + 56);
    *(a4 + 128) = v111;
    *(a4 + 72) = v112;
    if (*(v261 + 56) >= 1)
    {
      v114 = 0;
      v115 = 0;
      v116 = (v261 + 48);
      v117 = 8;
      do
      {
        if (*v116)
        {
          v118 = (*v116 + v117 - 1);
        }

        else
        {
          v118 = (v261 + 48);
        }

        google::protobuf::DescriptorBuilder::BuildMessage(a1, *v118, a4, *(a4 + 72) + v114, a5);
        ++v115;
        v114 += 152;
        v117 += 8;
      }

      while (v115 < *(v261 + 56));
    }

    v257 = (v261 + 24);
    v119 = *(v261 + 200);
    *(a4 + 148) = v119;
    if (v119 >= 1)
    {
      v121 = 0;
      v122 = (v261 + 192);
      v123 = 8 * v119;
      do
      {
        if (*v122)
        {
          v125 = (*v122 + v121 + 7);
        }

        else
        {
          v125 = (v261 + 192);
        }

        v126 = *v125;
        if (*(v126 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v267, *v126, *(v126 + 1));
        }

        else
        {
          v128 = *v126;
          v267.__r_.__value_.__r.__words[2] = *(v126 + 2);
          *&v267.__r_.__value_.__l.__data_ = v128;
        }

        if (*(v127 + 23) < 0)
        {
          operator delete(*v127);
        }

        v124 = *&v267.__r_.__value_.__l.__data_;
        *(v127 + 16) = *(&v267.__r_.__value_.__l + 2);
        *v127 = v124;
        *(*(a4 + 112) + v121) = v127;
        v121 += 8;
      }

      while (v123 != v121);
    }

    google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::Descriptor>(a1, v261, a4, 7, "google.protobuf.MessageOptions", 0x1EuLL, a5);
    v129 = *(a4 + 8);
    *a4 = 1;
    google::protobuf::DescriptorBuilder::AddSymbol(a1, v129 + 24, v259, v129, v261, a4);
    v133 = *(v261 + 176);
    if (v133 >= 1)
    {
      v134 = 0;
      v135 = (v261 + 168);
      v136 = 1;
      v137 = 16;
      do
      {
        v139 = (*v135 + 8 * v134 + 7);
        if ((*v135 & 1) == 0)
        {
          v139 = (v261 + 168);
        }

        v140 = v134 + 1;
        v138 = v133;
        if (v134 + 1 < v133)
        {
          v141 = *v139;
          v142 = v136;
          v143 = v137;
          do
          {
            v144 = *v135;
            v145 = (*v135 + v143 - 1);
            if ((*v135 & 1) == 0)
            {
              v145 = (v261 + 168);
            }

            v146 = *v145;
            if (*(v141 + 28) > *(v146 + 24) && *(v146 + 28) > *(v141 + 24))
            {
              v147 = *(a4 + 8);
              v148 = (v144 + 7 + 8 * v134);
              if ((v144 & 1) == 0)
              {
                v148 = (v261 + 168);
              }

              v149 = *v148;
              v267.__r_.__value_.__r.__words[0] = v146;
              v267.__r_.__value_.__l.__size_ = v141;
              google::protobuf::DescriptorBuilder::AddError(a1, v147 + 24, v149, 1, &v267, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_0,std::string>);
              v133 = *(v261 + 176);
            }

            v143 += 8;
            ++v142;
          }

          while (v133 > v142);
          v138 = v133;
        }

        v137 += 8;
        ++v136;
        ++v134;
      }

      while (v140 < v138);
    }

    *&v267.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
    v150 = *(v261 + 192);
    if (v150)
    {
      v151 = (v150 + 7);
    }

    else
    {
      v151 = (v261 + 192);
    }

    v152 = *(v261 + 200);
    if (v152)
    {
      v260 = &v151[v152];
      do
      {
        v163 = *v151;
        if (v267.__r_.__value_.__r.__words[0] > 1)
        {
          _X8 = v267.__r_.__value_.__r.__words[2];
          __asm { PRFM            #4, [X8] }

          v169 = *(v163 + 23);
          if (v169 >= 0)
          {
            v170 = *v151;
          }

          else
          {
            v170 = *v163;
          }

          if (v169 >= 0)
          {
            v171 = *(v163 + 23);
          }

          else
          {
            v171 = *(v163 + 1);
          }

          v172 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v170, v171, v131, v132);
          v157 = 0;
          v173 = (((v172 + v171) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v172 + v171));
          v174 = v267.__r_.__value_.__r.__words[2];
          v158 = v267.__r_.__value_.__r.__words[0];
          v161 = (v267.__r_.__value_.__r.__words[2] >> 12) ^ (v173 >> 7);
          v175 = vdup_n_s8(v173 & 0x7F);
          v176 = *(v163 + 23);
          if (v176 >= 0)
          {
            v177 = *(v163 + 23);
          }

          else
          {
            v177 = *(v163 + 1);
          }

          if (v176 >= 0)
          {
            v178 = v163;
          }

          else
          {
            v178 = *v163;
          }

          v159 = v268;
          while (1)
          {
            v153 = v161 & v158;
            v154 = *(v174 + (v161 & v158));
            v155 = vceq_s8(v154, v175);
            if (v155)
            {
              break;
            }

LABEL_138:
            v160 = vceq_s8(v154, 0x8080808080808080);
            if (v160)
            {
              inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v267, v173, (v153 + (__clz(__rbit64(v160)) >> 3)) & v158, v157, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::GetPolicyFunctions(void)::value);
              v264 = (v267.__r_.__value_.__r.__words[2] + inserted);
              v265 = (v268 + 16 * inserted);
              v266 = 1;
              goto LABEL_143;
            }

            v157 += 8;
            v161 = v157 + v153;
          }

          v253 = v158;
          v255 = v157;
          v252 = v159;
          while (1)
          {
            v156 = v159 + 16 * ((v153 + (__clz(__rbit64(v155)) >> 3)) & v158);
            if (*(v156 + 8) == v177 && !memcmp(*v156, v178, v177))
            {
              break;
            }

            v155 &= ((v155 & 0x8080808080808080) - 1) & 0x8080808080808080;
            v158 = v253;
            v157 = v255;
            v159 = v252;
            if (!v155)
            {
              goto LABEL_138;
            }
          }
        }

        else
        {
          absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find_or_prepare_insert_soo<std::string>(&v267, *v151, v131, v132, &v264);
          if (v266)
          {
LABEL_143:
            v164 = v265;
            v165 = *(v163 + 23);
            if ((v165 & 0x80u) == 0)
            {
              v166 = v163;
            }

            else
            {
              v166 = *v163;
            }

            if ((v165 & 0x80u) != 0)
            {
              v165 = *(v163 + 1);
            }

            *v265 = v166;
            v164[1] = v165;
            v130 = v261;
            if (v266)
            {
              goto LABEL_152;
            }

            goto LABEL_151;
          }
        }

        v130 = v261;
LABEL_151:
        v264 = v163;
        google::protobuf::DescriptorBuilder::AddError(a1, v163, v130, 0, &v264, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_1,std::string>);
LABEL_152:
        ++v151;
      }

      while (v151 != v260);
    }

    if (*(a4 + 4) >= 1)
    {
      v179 = 0;
      v180 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a4))) + a4;
      v181 = ((v180 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v180);
      v182 = v181 >> 7;
      v183 = (v261 + 96);
      v184 = (v261 + 168);
      v185 = vdup_n_s8(v181 & 0x7F);
      do
      {
        v263 = *(a4 + 56) + 88 * v179;
        v186 = *(a4 + 136);
        if (v186 >= 1)
        {
          for (i = 0; i < v186; ++i)
          {
            v189 = (*(a4 + 88) + 40 * i);
            v262 = v189;
            v190 = *(v263 + 4);
            if (*v189 <= v190 && v190 < v189[1])
            {
              v191 = 0;
              _X9 = *(a1 + 28);
              __asm { PRFM            #4, [X9] }

              v194 = *(a1 + 26);
              v195 = (v182 ^ (_X9 >> 12)) & v194;
              v196 = *(_X9 + v195);
              v197 = vceq_s8(v196, v185);
              if (!v197)
              {
                goto LABEL_180;
              }

LABEL_177:
              v198 = *(a1 + 29);
              do
              {
                v199 = (v195 + (__clz(__rbit64(v197)) >> 3)) & v194;
                if (*(v198 + 32 * v199) == a4)
                {
                  v201 = v198 + 32 * v199;
                  v202 = *(v201 + 8);
                  goto LABEL_185;
                }

                v197 &= ((v197 & 0x8080808080808080) - 1) & 0x8080808080808080;
              }

              while (v197);
LABEL_180:
              while (1)
              {
                v200 = vceq_s8(v196, 0x8080808080808080);
                if (v200)
                {
                  break;
                }

                v191 += 8;
                v195 = (v191 + v195) & v194;
                v196 = *(_X9 + v195);
                v197 = vceq_s8(v196, v185);
                if (v197)
                {
                  goto LABEL_177;
                }
              }

              v203 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1 + 26, v181, (v195 + (__clz(__rbit64(v200)) >> 3)) & v194, v191, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DescriptorBuilder::MessageHints>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DescriptorBuilder::MessageHints>>>::GetPolicyFunctions(void)::value);
              v202 = 0;
              v201 = *(a1 + 29) + 32 * v203;
              *v201 = a4;
              *(v201 + 8) = 0;
              *(v201 + 16) = 0;
              *(v201 + 24) = 0;
              *(v201 + 24) = 11;
LABEL_185:
              if (*v183)
              {
                v204 = (*v183 + 8 * i + 7);
              }

              else
              {
                v204 = (v261 + 96);
              }

              v205 = *v204;
              if (v202 < 0)
              {
                v202 = -1;
              }

              if ((v202 + 1) < 0x1FFFFFFF)
              {
                v206 = v202 + 1;
              }

              else
              {
                v206 = 0x1FFFFFFF;
              }

              *(v201 + 8) = v206;
              if (!*(v201 + 16))
              {
                *(v201 + 16) = v205;
                *(v201 + 24) = 1;
                v205 = *v204;
              }

              v188 = *(v263 + 8);
              v264 = &v262;
              v265 = &v263;
              google::protobuf::DescriptorBuilder::AddError(a1, v188 + 24, v205, 1, &v264, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_2,std::string>);
              v186 = *(a4 + 136);
            }
          }
        }

        v207 = *(a4 + 144);
        if (v207 >= 1)
        {
          for (j = 0; j < v207; ++j)
          {
            v210 = (*(a4 + 104) + 8 * j);
            v211 = *(v263 + 4);
            if (*v210 <= v211 && v211 < v210[1])
            {
              v212 = 0;
              _X9 = *(a1 + 28);
              __asm { PRFM            #4, [X9] }

              v215 = *(a1 + 26);
              v216 = (v182 ^ (_X9 >> 12)) & v215;
              v217 = *(_X9 + v216);
              v218 = vceq_s8(v217, v185);
              if (!v218)
              {
                goto LABEL_205;
              }

LABEL_202:
              v219 = *(a1 + 29);
              do
              {
                v220 = (v216 + (__clz(__rbit64(v218)) >> 3)) & v215;
                if (*(v219 + 32 * v220) == a4)
                {
                  v222 = v219 + 32 * v220;
                  v223 = *(v222 + 8);
                  goto LABEL_210;
                }

                v218 &= ((v218 & 0x8080808080808080) - 1) & 0x8080808080808080;
              }

              while (v218);
LABEL_205:
              while (1)
              {
                v221 = vceq_s8(v217, 0x8080808080808080);
                if (v221)
                {
                  break;
                }

                v212 += 8;
                v216 = (v212 + v216) & v215;
                v217 = *(_X9 + v216);
                v218 = vceq_s8(v217, v185);
                if (v218)
                {
                  goto LABEL_202;
                }
              }

              v224 = absl::lts_20240722::container_internal::PrepareInsertNonSoo(a1 + 26, v181, (v216 + (__clz(__rbit64(v221)) >> 3)) & v215, v212, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DescriptorBuilder::MessageHints>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DescriptorBuilder::MessageHints>>>::GetPolicyFunctions(void)::value);
              v223 = 0;
              v222 = *(a1 + 29) + 32 * v224;
              *v222 = a4;
              *(v222 + 8) = 0;
              *(v222 + 16) = 0;
              *(v222 + 24) = 0;
              *(v222 + 24) = 11;
LABEL_210:
              if (*v184)
              {
                v225 = (*v184 + 8 * j + 7);
              }

              else
              {
                v225 = (v261 + 168);
              }

              v226 = *v225;
              if (v223 < 0)
              {
                v223 = -1;
              }

              if ((v223 + 1) < 0x1FFFFFFF)
              {
                v227 = v223 + 1;
              }

              else
              {
                v227 = 0x1FFFFFFF;
              }

              *(v222 + 8) = v227;
              if (!*(v222 + 16))
              {
                *(v222 + 16) = v226;
                *(v222 + 24) = 1;
                v226 = *v225;
              }

              v209 = *(v263 + 8);
              v264 = &v263;
              google::protobuf::DescriptorBuilder::AddError(a1, v209 + 24, v226, 1, &v264, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_3,std::string>);
              v207 = *(a4 + 144);
            }
          }
        }

        if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find<std::string>(&v267, *(v263 + 8), v130, v131, v132))
        {
          v228 = *(v263 + 8);
          if (*v257)
          {
            v229 = (*v257 + 8 * v179 + 7);
          }

          else
          {
            v229 = (v261 + 24);
          }

          v230 = *v229;
          v264 = &v263;
          google::protobuf::DescriptorBuilder::AddError(a1, v228 + 24, v230, 0, &v264, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_4,std::string>);
        }

        ++v179;
      }

      while (v179 < *(a4 + 4));
    }

    v231 = *(a4 + 136);
    if (v231 >= 1)
    {
      v232 = 0;
      v233 = 0;
      v234 = (v261 + 96);
      v235 = 1;
      do
      {
        v263 = *(a4 + 88) + 40 * v233;
        v237 = *(a4 + 144);
        if (v237 >= 1)
        {
          v238 = 0;
          for (k = 0; k < v237; ++k)
          {
            v240 = (*(a4 + 104) + v238);
            v262 = v240;
            if (*(v263 + 4) > *v240 && v240[1] > *v263)
            {
              v241 = *(a4 + 8);
              if (*v234)
              {
                v242 = (*v234 + 8 * v233 + 7);
              }

              else
              {
                v242 = (v261 + 96);
              }

              v243 = *v242;
              v264 = &v263;
              v265 = &v262;
              google::protobuf::DescriptorBuilder::AddError(a1, v241 + 24, v243, 1, &v264, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_5,std::string>);
              v237 = *(a4 + 144);
            }

            v238 += 8;
          }

          v231 = *(a4 + 136);
        }

        v244 = v233 + 1;
        v236 = v231;
        v245 = v235;
        v246 = v232;
        if (v233 + 1 < v231)
        {
          do
          {
            v247 = *(a4 + 88) + v246;
            v248 = *(v247 + 40);
            v262 = (v247 + 40);
            if (*(v263 + 4) > v248 && *(v247 + 44) > *v263)
            {
              v249 = *(a4 + 8);
              if (*v234)
              {
                v250 = (*v234 + 8 * v233 + 7);
              }

              else
              {
                v250 = (v261 + 96);
              }

              v251 = *v250;
              v264 = &v262;
              v265 = &v263;
              google::protobuf::DescriptorBuilder::AddError(a1, v249 + 24, v251, 1, &v264, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildMessage(google::protobuf::DescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::Descriptor*,google::protobuf::internal::FlatAllocator &)::$_6,std::string>);
              v231 = *(a4 + 136);
            }

            v246 += 40;
            ++v245;
          }

          while (v231 > v245);
          v236 = v231;
        }

        v232 += 40;
        ++v235;
        ++v233;
      }

      while (v244 < v236);
    }

    if (v267.__r_.__value_.__r.__words[0] >= 2)
    {
      operator delete((v267.__r_.__value_.__r.__words[2] - (v267.__r_.__value_.__s.__data_[8] & 1) - 8));
    }
  }

  ++a1[82];
}

void sub_23CD813B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, unint64_t a23, char a24, uint64_t a25)
{
  if (a23 >= 2)
  {
    v26 = a1;
    operator delete((a25 - (a24 & 1) - 8));
    a1 = v26;
  }

  ++*(v25 + 328);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::BuildEnum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1;
  if (a3)
  {
    v10 = *(a3 + 8) + 24;
  }

  else
  {
    v10 = *(*(a1 + 160) + 16);
  }

  NameStrings = google::protobuf::DescriptorBuilder::AllocateNameStrings(a1, v10, (*(a2 + 96) & 0xFFFFFFFFFFFFFFFCLL), a5);
  *(a4 + 8) = NameStrings;
  v13 = *(a2 + 96) & 0xFFFFFFFFFFFFFFFCLL;
  v14 = *(v13 + 23);
  if (v14 < 0)
  {
    v14 = *(v13 + 8);
    if (v14)
    {
      v15 = *v13;
      goto LABEL_10;
    }

    goto LABEL_16;
  }

  if (!*(v13 + 23))
  {
LABEL_16:
    google::protobuf::DescriptorBuilder::AddError(v9, NameStrings + 24, a2, 0, "Missing name.");
    goto LABEL_17;
  }

  v15 = (*(a2 + 96) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_10:
  while (1)
  {
    v16 = *v15;
    if ((v16 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v16 != 95 && (v16 - 58) <= 0xFFFFFFF5)
    {
      break;
    }

    ++v15;
    if (!--v14)
    {
      goto LABEL_17;
    }
  }

  v136.__r_.__value_.__r.__words[0] = *(a2 + 96) & 0xFFFFFFFFFFFFFFFCLL;
  google::protobuf::DescriptorBuilder::AddError(v9, NameStrings + 24, a2, 0, &v136, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
LABEL_17:
  *(a4 + 16) = *(v9 + 160);
  *(a4 + 24) = a3;
  *(a4 + 1) &= 0xFCu;
  v18 = *(a2 + 32);
  if (!v18)
  {
    google::protobuf::DescriptorBuilder::AddError(v9, *(a4 + 8) + 24, a2, 0, "Enums must contain at least one value.");
    v18 = *(a2 + 32);
  }

  v19 = (a2 + 24);
  if (v18 >= 1)
  {
    v20 = 0;
    v21 = *v19;
    v22 = (*v19 + 7);
    if ((*v19 & 1) == 0)
    {
      v22 = (a2 + 24);
    }

    v23 = *v22;
    v24 = v21 + 15;
    do
    {
      *(a4 + 2) = v20;
      v18 = *(a2 + 32);
      if (v20 > 0xFFFD)
      {
        break;
      }

      if (++v20 >= v18)
      {
        break;
      }

      v25 = (v21 & 1) != 0 ? v24 : a2 + 24;
      v24 += 8;
    }

    while (*(v23 + 40) + v20 == *(*v25 + 40));
  }

  *(a4 + 4) = v18;
  if (*(a2 + 32) >= 1)
  {
    v28 = 0;
    v29 = 0;
    v30 = 8;
    do
    {
      v31 = *(a2 + 24);
      if (v31)
      {
        v32 = (v31 + v30 - 1);
      }

      else
      {
        v32 = (a2 + 24);
      }

      google::protobuf::DescriptorBuilder::BuildEnumValue(v9, *v32, a4, *(a4 + 56) + v28, a5);
      ++v29;
      v28 += 48;
      v30 += 8;
    }

    while (v29 < *(a2 + 32));
  }

  v33 = *(a2 + 56);
  *(a4 + 64) = v33;
  v34 = *a5;
  if (!*a5)
  {
  }

  v35 = *(a5 + 168);
  v36 = v35 + 8 * v33;
  *(a5 + 168) = v36;
  v37 = *(a5 + 112);
  if (v36 > v37)
  {
  }

  v128 = (a2 + 24);
  *(a4 + 72) = v34 + v35;
  v38 = *(a2 + 56);
  if (v38 >= 1)
  {
    v39 = 0;
    v40 = 0;
    v41 = (a2 + 48);
    do
    {
      if (*v41)
      {
        v42 = (*v41 + v39 + 7);
      }

      else
      {
        v42 = (a2 + 48);
      }

      v27 = *v42;
      v43 = (*(a4 + 72) + v39);
      v44 = *(v27 + 24);
      *v43 = v44;
      v45 = *(v27 + 28);
      v43[1] = v45;
      if (v44 > v45)
      {
        google::protobuf::DescriptorBuilder::AddError(v9, *(a4 + 8) + 24, v27, 1, "Reserved range end number must be greater than start number.");
        v38 = *(a2 + 56);
      }

      ++v40;
      v39 += 8;
    }

    while (v40 < v38);
  }

  v46 = *(a2 + 80);
  *(a4 + 68) = v46;
  if (v46 >= 1)
  {
    v48 = 0;
    v49 = (a2 + 72);
    v50 = 8 * v46;
    do
    {
      if (*v49)
      {
        v52 = (*v49 + v48 + 7);
      }

      else
      {
        v52 = (a2 + 72);
      }

      v53 = *v52;
      v55 = v54;
      if (*(v53 + 23) < 0)
      {
        std::string::__init_copy_ctor_external(&v136, *v53, *(v53 + 1));
        if (*(v55 + 23) < 0)
        {
LABEL_55:
          operator delete(*v55);
        }
      }

      else
      {
        v56 = *v53;
        v136.__r_.__value_.__r.__words[2] = *(v53 + 2);
        *&v136.__r_.__value_.__l.__data_ = v56;
        if (*(v54 + 23) < 0)
        {
          goto LABEL_55;
        }
      }

      v51 = *&v136.__r_.__value_.__l.__data_;
      *(v55 + 16) = *(&v136.__r_.__value_.__l + 2);
      *v55 = v51;
      *(*(a4 + 80) + v48) = v55;
      v48 += 8;
    }

    while (v50 != v48);
  }

  google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::EnumDescriptor>(v9, a2, a4, 3, "google.protobuf.EnumOptions", 0x1BuLL, a5);
  v57 = *(a4 + 8);
  *a4 = 4;
  google::protobuf::DescriptorBuilder::AddSymbol(v9, v57 + 24, a3, v57, a2, a4);
  v130 = a2;
  v131 = v9;
  v61 = *(a2 + 56);
  if (v61 >= 1)
  {
    v62 = 0;
    v63 = (a2 + 48);
    v64 = 1;
    v65 = 16;
    do
    {
      v67 = (*v63 + 8 * v62 + 7);
      if ((*v63 & 1) == 0)
      {
        v67 = v63;
      }

      v68 = v62 + 1;
      v66 = v61;
      if (v62 + 1 < v61)
      {
        v69 = *v67;
        v70 = v64;
        v71 = v65;
        do
        {
          v72 = *v63;
          v73 = (*v63 + v71 - 1);
          if ((*v63 & 1) == 0)
          {
            v73 = v63;
          }

          v74 = *v73;
          if (*(v69 + 28) >= *(v74 + 24) && *(v74 + 28) >= *(v69 + 24))
          {
            v75 = *(a4 + 8);
            v76 = (v72 + 7 + 8 * v62);
            if ((v72 & 1) == 0)
            {
              v76 = v63;
            }

            v77 = *v76;
            v136.__r_.__value_.__r.__words[0] = v74;
            v136.__r_.__value_.__l.__size_ = v69;
            google::protobuf::DescriptorBuilder::AddError(v131, v75 + 24, v77, 1, &v136, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::EnumDescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::EnumDescriptor *,google::protobuf::internal::FlatAllocator &)::$_0,std::string>);
            v61 = *(v130 + 56);
          }

          v71 += 8;
          ++v70;
        }

        while (v61 > v70);
        v66 = v61;
        v9 = v131;
      }

      v65 += 8;
      ++v64;
      ++v62;
    }

    while (v68 < v66);
  }

  *&v136.__r_.__value_.__l.__data_ = xmmword_23CE306D0;
  v78 = v130;
  v79 = *(v130 + 72);
  if (v79)
  {
    v80 = (v79 + 7);
  }

  else
  {
    v80 = (v130 + 72);
  }

  v81 = *(v130 + 80);
  if (v81)
  {
    v129 = &v80[v81];
    do
    {
      v91 = *v80;
      if (v136.__r_.__value_.__r.__words[0] > 1)
      {
        _X8 = v136.__r_.__value_.__r.__words[2];
        __asm { PRFM            #4, [X8] }

        v101 = *(v91 + 23);
        if (v101 >= 0)
        {
          v102 = *v80;
        }

        else
        {
          v102 = *v91;
        }

        if (v101 >= 0)
        {
          v103 = *(v91 + 23);
        }

        else
        {
          v103 = *(v91 + 1);
        }

        v104 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v102, v103, v59, v60);
        v86 = 0;
        v105 = (((v104 + v103) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v104 + v103));
        v106 = v136.__r_.__value_.__r.__words[2];
        v107 = v136.__r_.__value_.__r.__words[0];
        v89 = (v136.__r_.__value_.__r.__words[2] >> 12) ^ (v105 >> 7);
        v108 = vdup_n_s8(v105 & 0x7F);
        v109 = *(v91 + 23);
        if (v109 >= 0)
        {
          v110 = *(v91 + 23);
        }

        else
        {
          v110 = *(v91 + 1);
        }

        if (v109 >= 0)
        {
          v111 = v91;
        }

        else
        {
          v111 = *v91;
        }

        v87 = v137;
        while (1)
        {
          v82 = v89 & v107;
          v83 = *(v106 + (v89 & v107));
          v84 = vceq_s8(v83, v108);
          if (v84)
          {
            break;
          }

LABEL_82:
          v88 = vceq_s8(v83, 0x8080808080808080);
          if (v88)
          {
            inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(&v136, v105, (v82 + (__clz(__rbit64(v88)) >> 3)) & v107, v86, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::GetPolicyFunctions(void)::value);
            v133 = v136.__r_.__value_.__r.__words[2] + inserted;
            v134 = (v137 + 16 * inserted);
            v135 = 1;
            goto LABEL_87;
          }

          v86 += 8;
          v89 = v86 + v82;
        }

        v126 = v87;
        v127 = v86;
        while (1)
        {
          v85 = v87 + 16 * ((v82 + (__clz(__rbit64(v84)) >> 3)) & v107);
          if (*(v85 + 8) == v110 && !memcmp(*v85, v111, v110))
          {
            break;
          }

          v84 &= ((v84 & 0x8080808080808080) - 1) & 0x8080808080808080;
          v87 = v126;
          v86 = v127;
          if (!v84)
          {
            goto LABEL_82;
          }
        }
      }

      else
      {
        absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find_or_prepare_insert_soo<std::string>(&v136, *v80, v59, v60, &v133);
        if (v135)
        {
LABEL_87:
          v92 = v134;
          v93 = *(v91 + 23);
          if (v93 >= 0)
          {
            v94 = v91;
          }

          else
          {
            v94 = *v91;
          }

          if (v93 < 0)
          {
            v93 = *(v91 + 1);
          }

          *v134 = v94;
          v92[1] = v93;
          v78 = v130;
          v9 = v131;
          if (v135)
          {
            goto LABEL_96;
          }

          goto LABEL_95;
        }
      }

      v78 = v130;
      v9 = v131;
LABEL_95:
      v133 = v91;
      google::protobuf::DescriptorBuilder::AddError(v9, v91, v78, 0, &v133, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::EnumDescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::EnumDescriptor *,google::protobuf::internal::FlatAllocator &)::$_1,std::string>);
LABEL_96:
      ++v80;
    }

    while (v80 != v129);
  }

  if (*(a4 + 4) >= 1)
  {
    v112 = 0;
    v113 = (v78 + 48);
    do
    {
      v114 = *(a4 + 56) + 48 * v112;
      v133 = v114;
      v115 = *(a4 + 64);
      if (v115 >= 1)
      {
        v116 = 0;
        for (i = 0; i < v115; ++i)
        {
          v118 = *(a4 + 72);
          v119 = *(v133 + 4);
          if (*(v118 + v116) <= v119 && v119 <= *(v118 + v116 + 4))
          {
            v120 = *(v133 + 8);
            if (*v113)
            {
              v121 = (*v113 + v116 + 7);
            }

            else
            {
              v121 = v113;
            }

            v122 = *v121;
            v132 = &v133;
            google::protobuf::DescriptorBuilder::AddError(v9, v120 + 24, v122, 1, &v132, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::EnumDescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::EnumDescriptor *,google::protobuf::internal::FlatAllocator &)::$_2,std::string>);
            v115 = *(a4 + 64);
          }

          v116 += 8;
        }

        v114 = v133;
      }

      if (absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashSetPolicy<std::string_view>,absl::lts_20240722::container_internal::StringHash,absl::lts_20240722::container_internal::StringEq,std::allocator<std::string_view>>::find<std::string>(&v136, *(v114 + 8), v58, v59, v60))
      {
        v123 = *(v133 + 8);
        if (*v128)
        {
          v124 = (*v128 + 8 * v112 + 7);
        }

        else
        {
          v124 = v128;
        }

        v125 = *v124;
        v132 = &v133;
        google::protobuf::DescriptorBuilder::AddError(v9, v123 + 24, v125, 0, &v132, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::BuildEnum(google::protobuf::EnumDescriptorProto const&,google::protobuf::Descriptor const*,google::protobuf::EnumDescriptor *,google::protobuf::internal::FlatAllocator &)::$_3,std::string>);
      }

      ++v112;
    }

    while (v112 < *(a4 + 4));
  }

  if (v136.__r_.__value_.__r.__words[0] >= 2)
  {
    operator delete((v136.__r_.__value_.__r.__words[2] - (v136.__r_.__value_.__s.__data_[8] & 1) - 8));
  }
}

void sub_23CD81D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, unint64_t a21, char a22, uint64_t a23)
{
  if (a21 >= 2)
  {
    v23 = a1;
    operator delete((a23 - (a22 & 1) - 8));
    a1 = v23;
  }

  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::BuildService(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  NameStrings = google::protobuf::DescriptorBuilder::AllocateNameStrings(a1, *(*(a1 + 160) + 16), (*(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL), a5);
  *(a4 + 8) = NameStrings;
  *(a4 + 16) = *(a1 + 160);
  v12 = *(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL;
  v13 = *(v12 + 23);
  if (v13 < 0)
  {
    v13 = *(v12 + 8);
    if (v13)
    {
      v14 = *v12;
      goto LABEL_7;
    }
  }

  else if (*(v12 + 23))
  {
    v14 = (*(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_7:
    while (1)
    {
      v15 = *v14;
      if ((v15 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v15 != 95 && (v15 - 58) <= 0xFFFFFFF5)
      {
        break;
      }

      ++v14;
      if (!--v13)
      {
        goto LABEL_14;
      }
    }

    v24[0] = *(a2 + 48) & 0xFFFFFFFFFFFFFFFCLL;
    google::protobuf::DescriptorBuilder::AddError(a1, NameStrings + 24, a2, 0, v24, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
LABEL_14:
    v17 = *(a2 + 32);
    *(a4 + 56) = v17;
    v18 = *a5;
    if (*a5)
    {
      v19 = *(a5 + 42);
      v20 = v19 + 80 * v17;
      *(a5 + 42) = v20;
      v21 = *(a5 + 28);
      if (v20 <= v21)
      {
        *(a4 + 48) = v18 + v19;
        if (*(a2 + 32) >= 1)
        {
          v22 = *(a2 + 24);
          if (v22)
          {
            v23 = (v22 + 7);
          }

          else
          {
            v23 = (a2 + 24);
          }

          google::protobuf::DescriptorBuilder::BuildMethod(a1, *v23, a4, *(a4 + 48), a5);
        }

        google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::ServiceDescriptor>(a1, a2, a4, 3);
      }
    }
  }

  google::protobuf::DescriptorBuilder::AddError(a1, NameStrings + 24, a2, 0, "Missing name.");
  goto LABEL_14;
}

void google::protobuf::DescriptorBuilder::CrossLinkFile(google::protobuf::DescriptorBuilder *this, google::protobuf::FileDescriptor *a2, const google::protobuf::FileDescriptorProto *a3)
{
  if (!*(a2 + 16))
  {
    *(a2 + 16) = &google::protobuf::_FileOptions_default_instance_;
  }

  if (*(a2 + 15) >= 1)
  {
    v6 = 0;
    v7 = 0;
    v8 = (a3 + 48);
    v9 = 8;
    do
    {
      if (*v8)
      {
        v10 = (*v8 + v9 - 1);
      }

      else
      {
        v10 = (a3 + 48);
      }

      google::protobuf::DescriptorBuilder::CrossLinkMessage(this, (*(a2 + 12) + v6), *v10);
      ++v7;
      v6 += 152;
      v9 += 8;
    }

    while (v7 < *(a2 + 15));
  }

  if (*(a2 + 1) >= 1)
  {
    v11 = 0;
    v12 = 0;
    v13 = (a3 + 120);
    v14 = 8;
    do
    {
      if (*v13)
      {
        v15 = (*v13 + v14 - 1);
      }

      else
      {
        v15 = (a3 + 120);
      }

      google::protobuf::DescriptorBuilder::CrossLinkField(this, (*(a2 + 15) + v11), *v15);
      ++v12;
      v11 += 88;
      v14 += 8;
    }

    while (v12 < *(a2 + 1));
  }

  v16 = *(a2 + 16);
  if (v16 >= 1)
  {
    v17 = 0;
    v18 = *(a2 + 13);
    do
    {
      v19 = v18 + 88 * v17;
      if (*(v19 + 32))
      {
        v20 = *(v19 + 4);
        if (v20 >= 1)
        {
          goto LABEL_22;
        }
      }

      else
      {
        *(v19 + 32) = &google::protobuf::_EnumOptions_default_instance_;
        v20 = *(v19 + 4);
        if (v20 >= 1)
        {
LABEL_22:
          v21 = (*(v19 + 56) + 24);
          do
          {
            if (!*v21)
            {
              *v21 = &google::protobuf::_EnumValueOptions_default_instance_;
            }

            v21 += 6;
            --v20;
          }

          while (v20);
        }
      }

      ++v17;
    }

    while (v17 != v16);
  }

  v22 = *(a2 + 17);
  if (v22 >= 1)
  {
    v23 = 0;
    v24 = (a3 + 96);
    do
    {
      v25 = *(a2 + 14) + (v23 << 6);
      if (*v24)
      {
        v26 = (*v24 + 8 * v23 + 7);
      }

      else
      {
        v26 = v24;
      }

      v27 = *v26;
      if (*(v25 + 24))
      {
        if (*(v25 + 56) >= 1)
        {
          goto LABEL_36;
        }
      }

      else
      {
        *(v25 + 24) = &google::protobuf::_ServiceOptions_default_instance_;
        if (*(v25 + 56) >= 1)
        {
LABEL_36:
          v28 = 0;
          v29 = 0;
          v30 = (v27 + 24);
          v31 = 8;
          do
          {
            if (*v30)
            {
              v32 = (*v30 + v31 - 1);
            }

            else
            {
              v32 = v30;
            }

            google::protobuf::DescriptorBuilder::CrossLinkMethod(this, (*(v25 + 48) + v28), *v32);
            ++v29;
            v28 += 80;
            v31 += 8;
          }

          while (v29 < *(v25 + 56));
          v22 = *(a2 + 17);
        }
      }

      ++v23;
    }

    while (v23 < v22);
  }
}

uint64_t google::protobuf::DescriptorBuilder::SuggestFieldNumbers(uint64_t this, google::protobuf::FileDescriptor *a2, const google::protobuf::FileDescriptorProto *a3)
{
  v3 = *(a2 + 15);
  if (v3 >= 1)
  {
    v4 = a2;
    v5 = this;
    v6 = 0;
    this = 3758096384;
    v107 = v5;
    do
    {
      v12 = 0;
      v19 = *(v4 + 12) + 152 * v6;
      v116 = v19;
      _X11 = v5[28];
      __asm { PRFM            #4, [X11] }

      v103 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + v19))) + v19;
      v104 = ((v103 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v103);
      v105 = vdup_n_s8(v104 & 0x7F);
      v106 = v5[26];
      for (i = (v104 >> 7) ^ (_X11 >> 12); ; i = v12 + v7)
      {
        v7 = i & v106;
        v8 = *(_X11 + v7);
        v9 = vceq_s8(v8, v105);
        if (v9)
        {
          break;
        }

LABEL_7:
        if (vceq_s8(v8, 0x8080808080808080))
        {
          goto LABEL_139;
        }

        v12 += 8;
      }

      v10 = v5[29];
      while (1)
      {
        v11 = (v7 + (__clz(__rbit64(v9)) >> 3)) & v106;
        if (*(v10 + 32 * v11) == v19)
        {
          break;
        }

        v9 &= ((v9 & 0x8080808080808080) - 1) & 0x8080808080808080;
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      if (_X11)
      {
        v109 = v10 + 32 * v11;
        v14 = *(v109 + 8);
        v15 = v14 >= 3 ? 3 : *(v109 + 8);
        v115 = v15;
        if (v14 >= 1)
        {
          __p = 0;
          v113 = 0;
          v114 = 0;
          if (*(v19 + 4) < 1)
          {
            v16 = 0;
          }

          else
          {
            v16 = 0;
            v17 = 0;
            v18 = 4;
            do
            {
              v20 = *(*(v19 + 56) + v18);
              if ((v20 - 0x20000000) >= 0xE0000001)
              {
                v21 = __p;
                if (__p == v16 || *(v16 - 1) != v20)
                {
                  v22 = v20 + 1;
                  if (v16 < v114)
                  {
                    *v16++ = v20 | (v22 << 32);
                  }

                  else
                  {
                    v23 = v16 - __p;
                    v24 = (v16 - __p) >> 3;
                    v25 = v24 + 1;
                    if ((v24 + 1) >> 61)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v26 = v114 - __p;
                    if ((v114 - __p) >> 2 > v25)
                    {
                      v25 = v26 >> 2;
                    }

                    if (v26 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v27 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v27 = v25;
                    }

                    if (v27)
                    {
                      if (!(v27 >> 61))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v28 = v24;
                    v29 = (8 * v24);
                    v30 = v20 | (v22 << 32);
                    v31 = &v29[-v28];
                    *v29 = v30;
                    v16 = v29 + 1;
                    memcpy(v31, v21, v23);
                    __p = v31;
                    v113 = v16;
                    v114 = 0;
                    if (v21)
                    {
                      operator delete(v21);
                    }
                  }

                  v113 = v16;
                  v19 = v116;
                }

                else
                {
                  *(v16 - 1) = v20 + 1;
                }
              }

              ++v17;
              v18 += 88;
            }

            while (v17 < *(v19 + 4));
          }

          if (*(v19 + 140) >= 1)
          {
            v32 = 0;
            v33 = 4;
            do
            {
              v34 = *(*(v19 + 96) + v33);
              if ((v34 - 0x20000000) >= 0xE0000001)
              {
                v35 = __p;
                if (__p == v16 || *(v16 - 1) != v34)
                {
                  v36 = v34 + 1;
                  if (v16 < v114)
                  {
                    *v16++ = v34 | (v36 << 32);
                  }

                  else
                  {
                    v37 = v16 - __p;
                    v38 = (v16 - __p) >> 3;
                    v39 = v38 + 1;
                    if ((v38 + 1) >> 61)
                    {
                      std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                    }

                    v40 = v114 - __p;
                    if ((v114 - __p) >> 2 > v39)
                    {
                      v39 = v40 >> 2;
                    }

                    if (v40 >= 0x7FFFFFFFFFFFFFF8)
                    {
                      v41 = 0x1FFFFFFFFFFFFFFFLL;
                    }

                    else
                    {
                      v41 = v39;
                    }

                    if (v41)
                    {
                      if (!(v41 >> 61))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:ne200100]();
                    }

                    v42 = v38;
                    v43 = (8 * v38);
                    v44 = v34 | (v36 << 32);
                    v45 = &v43[-v42];
                    *v43 = v44;
                    v16 = v43 + 1;
                    memcpy(v45, v35, v37);
                    __p = v45;
                    v113 = v16;
                    v114 = 0;
                    if (v35)
                    {
                      operator delete(v35);
                    }
                  }

                  v113 = v16;
                  v19 = v116;
                }

                else
                {
                  *(v16 - 1) = v34 + 1;
                }
              }

              ++v32;
              v33 += 88;
            }

            while (v32 < *(v19 + 140));
          }

          if (*(v19 + 144) >= 1)
          {
            v46 = 0;
            v47 = 0;
            do
            {
              v48 = (*(v19 + 104) + v46);
              v50 = *v48;
              v49 = v48[1];
              if (v50 >= 0x20000000)
              {
                v50 = 0x20000000;
              }

              v51 = v50 & ~(v50 >> 31);
              if (v49 >= 0x20000000)
              {
                v52 = 0x20000000;
              }

              else
              {
                v52 = v49;
              }

              if (v52 > v51)
              {
                if (v16 < v114)
                {
                  *v16++ = v51 | (v52 << 32);
                }

                else
                {
                  v53 = __p;
                  v54 = v16 - __p;
                  v55 = (v16 - __p) >> 3;
                  v56 = v55 + 1;
                  if ((v55 + 1) >> 61)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v57 = v114 - __p;
                  if ((v114 - __p) >> 2 > v56)
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
                    if (!(v58 >> 61))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v59 = v55;
                  v60 = (8 * v55);
                  v61 = v51 | (v52 << 32);
                  v62 = &v60[-v59];
                  *v60 = v61;
                  v16 = v60 + 1;
                  memcpy(v62, v53, v54);
                  __p = v62;
                  v113 = v16;
                  v114 = 0;
                  if (v53)
                  {
                    operator delete(v53);
                  }
                }

                v113 = v16;
                v19 = v116;
              }

              ++v47;
              v46 += 8;
            }

            while (v47 < *(v19 + 144));
          }

          if (*(v19 + 136) >= 1)
          {
            v63 = 0;
            v64 = 0;
            do
            {
              v65 = (*(v19 + 88) + v63);
              v67 = *v65;
              v66 = v65[1];
              if (v67 >= 0x20000000)
              {
                v67 = 0x20000000;
              }

              v68 = v67 & ~(v67 >> 31);
              if (v66 >= 0x20000000)
              {
                v69 = 0x20000000;
              }

              else
              {
                v69 = v66;
              }

              if (v69 > v68)
              {
                if (v16 < v114)
                {
                  *v16++ = v68 | (v69 << 32);
                }

                else
                {
                  v70 = __p;
                  v71 = v16 - __p;
                  v72 = (v16 - __p) >> 3;
                  v73 = v72 + 1;
                  if ((v72 + 1) >> 61)
                  {
                    std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
                  }

                  v74 = v114 - __p;
                  if ((v114 - __p) >> 2 > v73)
                  {
                    v73 = v74 >> 2;
                  }

                  if (v74 >= 0x7FFFFFFFFFFFFFF8)
                  {
                    v75 = 0x1FFFFFFFFFFFFFFFLL;
                  }

                  else
                  {
                    v75 = v73;
                  }

                  if (v75)
                  {
                    if (!(v75 >> 61))
                    {
                      operator new();
                    }

                    std::__throw_bad_array_new_length[abi:ne200100]();
                  }

                  v76 = v72;
                  v77 = (8 * v72);
                  v78 = v68 | (v69 << 32);
                  v79 = &v77[-v76];
                  *v77 = v78;
                  v16 = v77 + 1;
                  memcpy(v79, v70, v71);
                  __p = v79;
                  v113 = v16;
                  v114 = 0;
                  if (v70)
                  {
                    operator delete(v70);
                  }
                }

                v113 = v16;
                v19 = v116;
              }

              ++v64;
              v63 += 40;
            }

            while (v64 < *(v19 + 136));
          }

          if (v16 >= v114)
          {
            v81 = __p;
            v82 = v16 - __p;
            v83 = (v16 - __p) >> 3;
            v84 = v83 + 1;
            if ((v83 + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v85 = v114 - __p;
            if ((v114 - __p) >> 2 > v84)
            {
              v84 = v85 >> 2;
            }

            if (v85 >= 0x7FFFFFFFFFFFFFF8)
            {
              v86 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v86 = v84;
            }

            if (v86)
            {
              if (!(v86 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v83) = 0x200000001FFFFFFFLL;
            v80 = (8 * v83 + 8);
            memcpy(0, v81, v82);
            __p = 0;
            v113 = v80;
            v114 = 0;
            if (v81)
            {
              operator delete(v81);
            }
          }

          else
          {
            *v16 = 0x200000001FFFFFFFLL;
            v80 = v16 + 1;
          }

          v113 = v80;
          if (v80 >= v114)
          {
            v88 = __p;
            v89 = v80 - __p;
            v90 = (v80 - __p) >> 3;
            v91 = v90 + 1;
            if ((v90 + 1) >> 61)
            {
              std::vector<L2CycleEstimator *>::__throw_length_error[abi:ne200100]();
            }

            v92 = v114 - __p;
            if ((v114 - __p) >> 2 > v91)
            {
              v91 = v92 >> 2;
            }

            if (v92 >= 0x7FFFFFFFFFFFFFF8)
            {
              v93 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v93 = v91;
            }

            if (v93)
            {
              if (!(v93 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:ne200100]();
            }

            *(8 * v90) = 0x4E1F00004A38;
            v87 = (8 * v90 + 8);
            memcpy(0, v88, v89);
            __p = 0;
            v113 = v87;
            v114 = 0;
            if (v88)
            {
              operator delete(v88);
            }
          }

          else
          {
            *v80 = 0x4E1F00004A38;
            v87 = v80 + 1;
          }

          v94 = 126 - 2 * __clz((v87 - __p) >> 3);
          v113 = v87;
          if (v87 == __p)
          {
            v95 = 0;
          }

          else
          {
            v95 = v94;
          }

          std::__introsort<std::_ClassicAlgPolicy,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_3 &,google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::Range *,false>(__p, v87, v95, 1);
          v111 = 1;
          v4 = a2;
          v96 = *(v109 + 16);
          v5 = v107;
          if (v96)
          {
            v110[0] = &v116;
            v110[1] = &__p;
            v110[2] = &v111;
            v110[3] = &v115;
            google::protobuf::DescriptorBuilder::AddError(v107, *(v116 + 8) + 24, v96, *(v109 + 24), v110, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::SuggestFieldNumbers(google::protobuf::FileDescriptor *,google::protobuf::FileDescriptorProto const&)::$_0,std::string>);
          }

          if (__p)
          {
            v113 = __p;
            operator delete(__p);
          }

          v3 = *(a2 + 15);
          this = 3758096384;
        }
      }

LABEL_139:
      ++v6;
    }

    while (v6 < v3);
  }

  return this;
}

void sub_23CD82AB0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    v21 = a1;
    operator delete(__p);
    a1 = v21;
  }

  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::UpdateSourceCodeInfo(google::protobuf::DescriptorBuilder::OptionInterpreter *this, google::protobuf::SourceCodeInfo *a2, uint64_t a3, unint64_t a4, const unint64_t *a5)
{
  if (*(this + 4) < 2uLL)
  {
    return;
  }

  v5 = a2;
  v50 = 0;
  v51 = 0;
  v52 = 0;
  if (!*(a2 + 6))
  {
    return;
  }

  v6 = 0;
  v7 = 0;
  v8 = *(a2 + 2);
  v47 = (a2 + 16);
  if (v8)
  {
    v9 = (v8 + 7);
  }

  else
  {
    v9 = (a2 + 16);
  }

  do
  {
    v13 = *(*v9 + 6);
    if ((v7 & 1) != 0 && v13 >= 0)
    {
      v7 = 1;
      goto LABEL_8;
    }

    v48 = v6;
    if (v13 >= 1)
    {
      operator new();
    }

    _X8 = *(this + 5);
    __asm { PRFM            #4, [X8] }

    v20 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, 0, 0, a4, a5);
    v21 = 0;
    v22 = ((v20 * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * v20);
    v23 = *(this + 5);
    v24 = *(this + 3);
    v25 = vdup_n_s8(v22 & 0x7F);
    v26 = ((v23 >> 12) ^ (v22 >> 7)) & v24;
    v27 = *(v23 + v26);
    v28 = vceq_s8(v27, v25);
    if (!v28)
    {
LABEL_20:
      while (!*&vceq_s8(v27, 0x8080808080808080))
      {
        v21 += 8;
        v26 = (v21 + v26) & v24;
        v27 = *(v23 + v26);
        v28 = vceq_s8(v27, v25);
        if (v28)
        {
          goto LABEL_16;
        }
      }

LABEL_31:
      if ((v48 & 1) == 0)
      {
        v7 = 0;
        v6 = 0;
        v5 = a2;
        goto LABEL_8;
      }

      v39 = *v9;
      v40 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(&v50, google::protobuf::Arena::DefaultConstruct<google::protobuf::SourceCodeInfo_Location>);
      v5 = a2;
      google::protobuf::SourceCodeInfo_Location::CopyFrom(v40, v39);
      v7 = 0;
LABEL_41:
      v6 = 1;
      goto LABEL_8;
    }

LABEL_16:
    v29 = *(this + 6);
    v44 = v29;
    v45 = v21;
    while (1)
    {
      v30 = v29 + 48 * ((v26 + (__clz(__rbit64(v28)) >> 3)) & v24);
      if (*(v30 + 8) == *v30)
      {
        v31 = v30;
        if (!memcmp(*v30, 0, 0))
        {
          break;
        }
      }

      v28 &= ((v28 & 0x8080808080808080) - 1) & 0x8080808080808080;
      v29 = v44;
      v21 = v45;
      if (!v28)
      {
        goto LABEL_20;
      }
    }

    if (!v23)
    {
      goto LABEL_31;
    }

    v5 = a2;
    if ((v48 & 1) == 0)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::Reserve(&v50, *(a2 + 6));
      for (i = (*v47 & 1) != 0 ? (*v47 + 7) : v47; i != v9; ++i)
      {
        v42 = *i;
        v43 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(&v50, google::protobuf::Arena::DefaultConstruct<google::protobuf::SourceCodeInfo_Location>);
        google::protobuf::SourceCodeInfo_Location::CopyFrom(v43, v42);
      }
    }

    v32 = google::protobuf::internal::RepeatedPtrFieldBase::AddMessageLite(&v50, google::protobuf::Arena::DefaultConstruct<google::protobuf::SourceCodeInfo_Location>);
    google::protobuf::SourceCodeInfo_Location::CopyFrom(v32, *v9);
    *(v32 + 24) = 0;
    v34 = *(v31 + 24);
    v33 = *(v31 + 32);
    if (v34 == v33)
    {
      v7 = 1;
      goto LABEL_41;
    }

    v35 = 0;
    v36 = *(v32 + 28);
    do
    {
      v37 = *v34;
      if (v35 == v36)
      {
        google::protobuf::RepeatedField<int>::Grow(v32 + 24, v35, (v35 + 1));
        LODWORD(v35) = *(v32 + 24);
        v36 = *(v32 + 28);
        v33 = *(v31 + 32);
      }

      v38 = *(v32 + 32);
      *(v32 + 24) = v35 + 1;
      *(v38 + 4 * v35) = v37;
      ++v34;
      v35 = (v35 + 1);
    }

    while (v34 != v33);
    v7 = 1;
    v6 = 1;
LABEL_8:
    ++v9;
    v10 = *(v5 + 2);
    v11 = (v10 + 7);
    if ((v10 & 1) == 0)
    {
      v11 = v47;
    }

    v12 = *(v5 + 6);
  }

  while (v9 != &v11[2 * v12]);
  if (((v47 != &v50) & v6) != 0)
  {
    if (v12 >= 1)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::ClearNonEmpty<google::protobuf::internal::GenericTypeHandler<google::protobuf::MessageLite>>(v47);
    }

    if (v51)
    {
      google::protobuf::internal::RepeatedPtrFieldBase::MergeFromConcreteMessage(v47, &v50, google::protobuf::Arena::CopyConstruct<google::protobuf::SourceCodeInfo_Location>);
    }
  }

  if (v50)
  {
    google::protobuf::internal::RepeatedPtrFieldBase::DestroyProtos(&v50);
  }
}

void sub_23CD8301C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  if (v15)
  {
    operator delete(v15);
  }

  google::protobuf::RepeatedPtrField<google::protobuf::SourceCodeInfo_Location>::~RepeatedPtrField(va);
  _Unwind_Resume(a1);
}

void google::protobuf::DescriptorBuilder::OptionInterpreter::~OptionInterpreter(google::protobuf::DescriptorBuilder::OptionInterpreter *this)
{
  google::protobuf::DynamicMessageFactory::~DynamicMessageFactory((this + 88));
  absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>,operations_research::sat::SchedulingConstraintHelper *>,absl::lts_20240722::hash_internal::Hash<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::equal_to<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>>>,std::allocator<std::pair<std::vector<operations_research::StrongIndex<operations_research::sat::IntervalVariable_index_tag_>> const,operations_research::sat::SchedulingConstraintHelper *>>>::~raw_hash_set(this + 7);
  if (*(this + 3))
  {
    absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<std::vector<long long> const,std::vector<int>>,absl::lts_20240722::hash_internal::Hash<std::vector<long long> const>,std::equal_to<std::vector<long long> const>,std::allocator<std::pair<std::vector<long long> const,std::vector<int>>>>::destroy_slots(this + 3);
    operator delete((*(this + 5) - (*(this + 4) & 1) - 8));
  }
}

void google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::DescriptorBuilder *this, const google::protobuf::Descriptor *a2, const google::protobuf::DescriptorProto *a3, unint64_t a4, const unint64_t *a5)
{
  v6 = this;
  v71 = xmmword_23CE306D0;
  if (*(a2 + 32) >= 1)
  {
    v7 = 0;
    v8 = (a3 + 48);
    v66 = a3 + 48;
    do
    {
      v9 = *(a2 + 9) + 152 * v7;
      v68 = v9;
      if (v71 > 1)
      {
        _X8 = v72;
        __asm { PRFM            #4, [X8] }

        v17 = *(v9 + 8);
        v18 = *(v17 + 23);
        if (v18 >= 0)
        {
          v19 = *(v9 + 8);
        }

        else
        {
          v19 = *v17;
        }

        if (v18 >= 0)
        {
          v20 = *(v17 + 23);
        }

        else
        {
          v20 = *(v17 + 8);
        }

        v21 = absl::lts_20240722::hash_internal::MixingHashState::combine_contiguous(&absl::lts_20240722::hash_internal::MixingHashState::kSeed, v19, v20, a4, a5);
        a4 = 0;
        v22 = (((v21 + v20) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (v21 + v20));
        v23 = v72;
        v24 = v73;
        v25 = v71;
        v26 = vdup_n_s8(v22 & 0x7F);
        v9 = v68;
        v27 = ((v72 >> 12) ^ (v22 >> 7)) & v71;
        v28 = *(v72 + v27);
        v29 = vceq_s8(v28, v26);
        if (!v29)
        {
LABEL_28:
          while (1)
          {
            v39 = vceq_s8(v28, 0x8080808080808080);
            if (v39)
            {
              break;
            }

            a4 += 8;
            v27 = (a4 + v27) & v25;
            v28 = *(v23 + v27);
            v29 = vceq_s8(v28, v26);
            if (v29)
            {
              goto LABEL_13;
            }
          }

          v8 = v66;
          v10 = (v73 + 8 * inserted);
          goto LABEL_51;
        }

LABEL_13:
        while (1)
        {
          v30 = *(v24 + 8 * ((v27 + (__clz(__rbit64(v29)) >> 3)) & v25));
          if (v30 == v68)
          {
            break;
          }

          v65 = a4;
          v31 = v30[1];
          v32 = v68[1];
          v33 = *(v31 + 23);
          if (v33 >= 0)
          {
            v34 = *(v31 + 23);
          }

          else
          {
            v34 = *(v31 + 8);
          }

          v35 = *(v32 + 23);
          v36 = v35;
          if ((v35 & 0x80u) != 0)
          {
            v35 = *(v32 + 8);
          }

          if (v34 == v35)
          {
            v37 = v33 >= 0 ? v30[1] : *v31;
            v38 = v36 >= 0 ? v68[1] : *v32;
            if (!memcmp(v37, v38, v34))
            {
              break;
            }
          }

          v29 &= ((v29 & 0x8080808080808080) - 1) & 0x8080808080808080;
          v6 = this;
          a4 = v65;
          if (!v29)
          {
            goto LABEL_28;
          }
        }

        v8 = v66;
      }

      else
      {
        if (*(&v71 + 1) <= 1uLL)
        {
          *(&v71 + 1) = 2;
          v10 = &v72;
LABEL_51:
          *v10 = v68;
          goto LABEL_52;
        }

        v30 = v72;
        if (v72 != v9)
        {
          v40 = *(v72 + 8);
          v41 = *(v9 + 8);
          v42 = *(v40 + 23);
          if (v42 >= 0)
          {
            v43 = *(v40 + 23);
          }

          else
          {
            v43 = *(v40 + 8);
          }

          v44 = *(v41 + 23);
          v45 = v44;
          if ((v44 & 0x80u) != 0)
          {
            v44 = *(v41 + 8);
          }

          if (v43 != v44 || (v42 >= 0 ? (v46 = *(v72 + 8)) : (v46 = *v40), v45 >= 0 ? (v47 = *(v9 + 8)) : (v47 = *v41), memcmp(v46, v47, v43)))
          {
          }
        }
      }

      v48 = *(v30[4] + 83);
      v6 = this;
      if ((v48 & 1) != 0 || *(*(v9 + 32) + 83) == 1)
      {
        v51 = *(a2 + 1);
        v70 = &v68;
        google::protobuf::DescriptorBuilder::AddError(this, v51 + 24, a3, 0, &v70, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::Descriptor const*,google::protobuf::DescriptorProto const&)::$_0,std::string>);
        break;
      }

LABEL_52:
      if (*v8)
      {
        v50 = (*v8 + 8 * v7 + 7);
      }

      else
      {
        v50 = v8;
      }

      google::protobuf::DescriptorBuilder::DetectMapConflicts(v6, (*(a2 + 9) + 152 * v7++), *v50, a4, a5);
    }

    while (v7 < *(a2 + 32));
  }

  if (*(a2 + 1) >= 1)
  {
    v52 = 0;
    v53 = 8;
    do
    {
      v69 = v54;
      if (v68 && *(*(*v54 + 32) + 83) == 1)
      {
        v55 = *(a2 + 1);
        v70 = &v68;
        google::protobuf::DescriptorBuilder::AddError(v6, v55 + 24, a3, 0, &v70, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::Descriptor const*,google::protobuf::DescriptorProto const&)::$_1,std::string>);
      }

      ++v52;
      v53 += 88;
    }

    while (v52 < *(a2 + 1));
  }

  if (*(a2 + 33) >= 1)
  {
    v56 = 0;
    v57 = 8;
    do
    {
      v69 = v58;
      if (v68 && *(*(*v58 + 32) + 83) == 1)
      {
        v59 = *(a2 + 1);
        v70 = &v68;
        google::protobuf::DescriptorBuilder::AddError(v6, v59 + 24, a3, 0, &v70, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::Descriptor const*,google::protobuf::DescriptorProto const&)::$_2,std::string>);
      }

      ++v56;
      v57 += 88;
    }

    while (v56 < *(a2 + 33));
  }

  if (*(a2 + 30) >= 1)
  {
    v60 = 0;
    v61 = 8;
    do
    {
      v69 = v62;
      if (v68 && *(*(*v62 + 32) + 83) == 1)
      {
        v63 = *(a2 + 1);
        v70 = &v68;
        google::protobuf::DescriptorBuilder::AddError(v6, v63 + 24, a3, 0, &v70, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::DetectMapConflicts(google::protobuf::Descriptor const*,google::protobuf::DescriptorProto const&)::$_3,std::string>);
      }

      ++v60;
      v61 += 56;
    }

    while (v60 < *(a2 + 30));
  }

  if (v71 >= 2)
  {
    operator delete((v72 - (BYTE8(v71) & 1) - 8));
  }
}

void sub_23CD8365C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, unint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a19 >= 2)
  {
    operator delete((a21 - (a20 & 1) - 8));
  }

  _Unwind_Resume(exception_object);
}

uint64_t *absl::lts_20240722::StatusOr<google::protobuf::FeatureResolver>::~StatusOr(uint64_t *a1, absl::lts_20240722::cord_internal::CordRepBtree *a2)
{
  v3 = *a1;
  if (v3 == 1)
  {
    google::protobuf::FeatureSet::~FeatureSet((a1 + 1));
    return a1;
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      absl::lts_20240722::status_internal::StatusRep::Unref(v3, a2);
    }

    return a1;
  }
}

uint64_t google::protobuf::DescriptorBuilder::AllocateNameStrings(uint64_t a1, std::string::size_type a2, const std::string::value_type **a3, uint64_t a4)
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 23);
  v7 = v6;
  if ((v6 & 0x80u) != 0)
  {
    v6 = *(a2 + 8);
  }

  if (!v6)
  {
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v18, *a3, a3[1]);
    }

    else
    {
      v18 = *a3;
    }

    if (*(v11 + 23) < 0)
    {
      operator delete(*v11);
    }

    v13 = *&v18.__r_.__value_.__l.__data_;
    *(v11 + 16) = *(&v18.__r_.__value_.__l + 2);
    *v11 = v13;
    *(&v18.__r_.__value_.__s + 23) = 0;
    v18.__r_.__value_.__s.__data_[0] = 0;
    if (*(a3 + 23) < 0)
    {
      std::string::__init_copy_ctor_external(&v17, *a3, a3[1]);
    }

    else
    {
      v17 = *a3;
    }

    if (*(v11 + 47) < 0)
    {
      operator delete(*(v11 + 24));
      *(v11 + 24) = v17;
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v11;
      }
    }

    else
    {
      *(v11 + 24) = v17;
      if ((SHIBYTE(v18.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
      {
        return v11;
      }
    }

    v12 = v18.__r_.__value_.__r.__words[0];
    goto LABEL_27;
  }

  if (v7 >= 0)
  {
    v8 = a2;
  }

  else
  {
    v8 = *a2;
  }

  v18.__r_.__value_.__r.__words[0] = v8;
  v18.__r_.__value_.__l.__size_ = v6;
  v17.__r_.__value_.__r.__words[0] = ".";
  v17.__r_.__value_.__l.__size_ = 1;
  v9 = *(a3 + 23);
  if (v9 >= 0)
  {
    v10 = a3;
  }

  else
  {
    v10 = *a3;
  }

  if (v9 < 0)
  {
    v9 = a3[1];
  }

  v16[0] = v10;
  v16[1] = v9;
  absl::lts_20240722::StrCat(&v18.__r_.__value_.__l.__data_, &v17, v16, &v15);
  if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
  {
    v12 = v15.__r_.__value_.__r.__words[0];
LABEL_27:
    operator delete(v12);
  }

  return v11;
}

void sub_23CD838B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 - 57) < 0)
  {
    operator delete(*(v15 - 80));
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t google::protobuf::anonymous namespace::FlatAllocatorImpl<char,std::string,google::protobuf::SourceCodeInfo,google::protobuf::FileDescriptorTables,google::protobuf::FeatureSet,google::protobuf::MessageOptions,google::protobuf::FieldOptions,google::protobuf::EnumOptions,google::protobuf::EnumValueOptions,google::protobuf::ExtensionRangeOptions,google::protobuf::OneofOptions,google::protobuf::ServiceOptions,google::protobuf::MethodOptions,google::protobuf::FileOptions>::AllocateStrings<std::string const&,std::string>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v14[2] = *MEMORY[0x277D85DE8];
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(&__p, *a2, *(a2 + 8));
  }

  else
  {
    __p = *a2;
  }

  if (*(v5 + 23) < 0)
  {
    operator delete(*v5);
  }

  v6 = *&__p.__r_.__value_.__l.__data_;
  *(v5 + 16) = *(&__p.__r_.__value_.__l + 2);
  *v5 = v6;
  *(&__p.__r_.__value_.__s + 23) = 0;
  __p.__r_.__value_.__s.__data_[0] = 0;
  v7 = *a3;
  v14[0] = a3[1];
  *(v14 + 7) = *(a3 + 15);
  v8 = *(a3 + 23);
  a3[1] = 0;
  a3[2] = 0;
  *a3 = 0;
  if (*(v5 + 47) < 0)
  {
    operator delete(*(v5 + 24));
    v10 = SHIBYTE(__p.__r_.__value_.__r.__words[2]);
    v11 = v14[0];
    *(v5 + 24) = v7;
    *(v5 + 32) = v11;
    *(v5 + 39) = *(v14 + 7);
    *(v5 + 47) = v8;
    if (v10 < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  else
  {
    v9 = v14[0];
    *(v5 + 24) = v7;
    *(v5 + 32) = v9;
    *(v5 + 39) = *(v14 + 7);
    *(v5 + 47) = v8;
  }

  return v5;
}

uint64_t google::protobuf::DescriptorBuilder::BuildOneof(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  NameStrings = google::protobuf::DescriptorBuilder::AllocateNameStrings(a1, *(a3 + 8) + 24, (*(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL), a5);
  *(a4 + 8) = NameStrings;
  v11 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  v12 = *(v11 + 23);
  if (v12 < 0)
  {
    v12 = *(v11 + 8);
    if (v12)
    {
      v13 = *v11;
      goto LABEL_7;
    }

    goto LABEL_13;
  }

  if (!*(v11 + 23))
  {
LABEL_13:
    google::protobuf::DescriptorBuilder::AddError(a1, NameStrings + 24, a2, 0, "Missing name.");
    goto LABEL_14;
  }

  v13 = (*(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL);
LABEL_7:
  while (1)
  {
    v14 = *v13;
    if ((v14 & 0xFFFFFFDF) - 91 <= 0xFFFFFFE5 && v14 != 95 && (v14 - 58) <= 0xFFFFFFF5)
    {
      break;
    }

    ++v13;
    if (!--v12)
    {
      goto LABEL_14;
    }
  }

  v18 = *(a2 + 24) & 0xFFFFFFFFFFFFFFFCLL;
  google::protobuf::DescriptorBuilder::AddError(a1, NameStrings + 24, a2, 0, &v18, absl::lts_20240722::functional_internal::InvokeObject<google::protobuf::DescriptorBuilder::ValidateSymbolName(std::string const&,std::string const&,google::protobuf::Message const&)::$_0,std::string>);
LABEL_14:
  *(a4 + 16) = a3;
  *(a4 + 4) = 0;
  *(a4 + 48) = 0;
  google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::OneofDescriptor>(a1, a2, a4, 2, "google.protobuf.OneofOptions", 0x1CuLL, a5);
  v16 = *(a4 + 8);
  *a4 = 3;
  return google::protobuf::DescriptorBuilder::AddSymbol(a1, v16 + 24, a3, v16, a2, a4);
}

void google::protobuf::DescriptorBuilder::BuildExtensionRange(void *a1, uint64_t a2, uint64_t a3, int32x2_t *a4, uint64_t a5)
{
  v10 = *(a2 + 32);
  a4->i32[0] = v10;
  v11 = *(a2 + 36);
  a4->i32[1] = v11;
  a4[2] = a3;
  if (v10 > 0)
  {
    if (v10 < v11)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v12 = 0;
  _X10 = a1[28];
  __asm { PRFM            #4, [X10] }

  v19 = ((((&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3) * 0x9DDFEA08EB382D69) >> 64) ^ (0x9DDFEA08EB382D69 * (&absl::lts_20240722::hash_internal::MixingHashState::kSeed + a3))) + a3;
  v20 = 0x9DDFEA08EB382D69 * v19;
  v21 = (v19 * 0x9DDFEA08EB382D69) >> 64;
  v22 = a1 + 26;
  v23 = a1[26];
  v24 = v21 ^ v20;
  v25 = vdup_n_s8((v21 ^ v20) & 0x7F);
  v26 = (((v21 ^ v20) >> 7) ^ (_X10 >> 12)) & v23;
  v27 = *(_X10 + v26);
  v28 = vceq_s8(v27, v25);
  if (!v28)
  {
    goto LABEL_11;
  }

LABEL_8:
  v29 = a1[29];
  do
  {
    v30 = (v26 + (__clz(__rbit64(v28)) >> 3)) & v23;
    if (*(v29 + 32 * v30) == a3)
    {
      v32 = v29 + 32 * v30;
      v33 = *(v32 + 8);
      v34 = __PAIR64__(v11, v10);
      goto LABEL_16;
    }

    v28 &= ((v28 & 0x8080808080808080) - 1) & 0x8080808080808080;
  }

  while (v28);
LABEL_11:
  while (1)
  {
    v31 = vceq_s8(v27, 0x8080808080808080);
    if (v31)
    {
      break;
    }

    v12 += 8;
    v26 = (v12 + v26) & v23;
    v27 = *(_X10 + v26);
    v28 = vceq_s8(v27, v25);
    if (v28)
    {
      goto LABEL_8;
    }
  }

  inserted = absl::lts_20240722::container_internal::PrepareInsertNonSoo(v22, v24, (v26 + (__clz(__rbit64(v31)) >> 3)) & v23, v12, &absl::lts_20240722::container_internal::raw_hash_set<absl::lts_20240722::container_internal::FlatHashMapPolicy<google::protobuf::Descriptor const*,google::protobuf::DescriptorBuilder::MessageHints>,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Hash,absl::lts_20240722::container_internal::HashEq<google::protobuf::Descriptor const*,void>::Eq,std::allocator<std::pair<google::protobuf::Descriptor const* const,google::protobuf::DescriptorBuilder::MessageHints>>>::GetPolicyFunctions(void)::value);
  v33 = 0;
  v32 = a1[29] + 32 * inserted;
  *(v32 + 16) = 0;
  *(v32 + 24) = 0;
  *v32 = a3;
  *(v32 + 8) = 0;
  *(v32 + 24) = 11;
  v34 = *a4;
LABEL_16:
  v36 = vmin_s32(vmax_s32(v34, 0), 0xE0000000E0000000);
  v36.i32[0] = vsub_s32(vdup_lane_s32(v36, 1), v36).u32[0];
  v37 = ((v36.i32[0] & ~(v36.i32[0] >> 31)) + v33) & ~(((v36.i32[0] & ~(v36.i32[0] >> 31)) + v33) >> 31);
  if (v37 >= 0x1FFFFFFF)
  {
    v37 = 0x1FFFFFFF;
  }

  *(v32 + 8) = v37;
  if (!*(v32 + 16))
  {
    *(v32 + 16) = a2;
    *(v32 + 24) = 1;
  }

  google::protobuf::DescriptorBuilder::AddError(a1, *(a3 + 8) + 24, a2, 1, "Extension numbers must be positive integers.");
  if (a4->i32[0] >= a4->i32[1])
  {
LABEL_3:
    google::protobuf::DescriptorBuilder::AddError(a1, *(a3 + 8) + 24, a2, 1, "Extension range end number must be greater than start number.");
  }

LABEL_4:

  google::protobuf::DescriptorBuilder::AllocateOptions<google::protobuf::Descriptor::ExtensionRange>(a1, a2, a4, 3, "google.protobuf.ExtensionRangeOptions", 0x25uLL, a5);
}