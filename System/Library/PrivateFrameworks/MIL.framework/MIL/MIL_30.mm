void sub_21837AF48(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, uint64_t a15, void *a16, uint64_t a17)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a16)
  {
    operator delete(a16);
  }

  v19 = *v17;
  if (*v17)
  {
    *(v17 + 8) = v19;
    operator delete(v19);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt6>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<float>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v35, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v34, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v35, v34);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v34);
      v32.__r_.__value_.__r.__words[0] = a1;
      v32.__r_.__value_.__l.__size_ = a2;
      v31.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt6 const,18446744073709551615ul>::ValueAt(&v32, v13);
      Int = MIL::UInt6::GetInt(&v31);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v24 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v30, v24);
        v26 = std::string::insert(&v30, 0, "Index ");
        v27 = *&v26->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v31, " cannot be negative");
        v29 = *&v28->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v32);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v35;
      if (v36 != v35)
      {
        v18 = v36 - v35;
        v19 = (a3 + 4 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v21 = *v19++;
          v22 = v21;
          v23 = *v17++;
          *(v20 + 4 * v23) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_21837B1D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt4>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<float>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v35, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v34, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v35, v34);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v34);
      v32.__r_.__value_.__r.__words[0] = a1;
      v32.__r_.__value_.__l.__size_ = a2;
      v31.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v32, v13);
      Int = MIL::UInt4::GetInt(&v31);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v24 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v30, v24);
        v26 = std::string::insert(&v30, 0, "Index ");
        v27 = *&v26->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v31, " cannot be negative");
        v29 = *&v28->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v32);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v35;
      if (v36 != v35)
      {
        v18 = v36 - v35;
        v19 = (a3 + 4 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v21 = *v19++;
          v22 = v21;
          v23 = *v17++;
          *(v20 + 4 * v23) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_21837B4D4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt3>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<float>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v35, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v34, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v35, v34);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v34);
      v32.__r_.__value_.__r.__words[0] = a1;
      v32.__r_.__value_.__l.__size_ = a2;
      v31.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt3 const,18446744073709551615ul>::ValueAt(&v32, v13);
      Int = MIL::UInt3::GetInt(&v31);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v24 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v30, v24);
        v26 = std::string::insert(&v30, 0, "Index ");
        v27 = *&v26->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v31, " cannot be negative");
        v29 = *&v28->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v32);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v35;
      if (v36 != v35)
      {
        v18 = v36 - v35;
        v19 = (a3 + 4 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v21 = *v19++;
          v22 = v21;
          v23 = *v17++;
          *(v20 + 4 * v23) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_21837B7D8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt2>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<float>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v35, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v34, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v35, v34);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v34);
      v32.__r_.__value_.__r.__words[0] = a1;
      v32.__r_.__value_.__l.__size_ = a2;
      v31.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt2 const,18446744073709551615ul>::ValueAt(&v32, v13);
      Int = MIL::UInt2::GetInt(&v31);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v24 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v30, v24);
        v26 = std::string::insert(&v30, 0, "Index ");
        v27 = *&v26->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v31, " cannot be negative");
        v29 = *&v28->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v32);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v35;
      if (v36 != v35)
      {
        v18 = v36 - v35;
        v19 = (a3 + 4 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v21 = *v19++;
          v22 = v21;
          v23 = *v17++;
          *(v20 + 4 * v23) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_21837BADC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt1>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = *(a4 + 96);
  std::vector<float>::vector[abi:ne200100](a6, v12 * a2);
  std::vector<unsigned long>::vector[abi:ne200100](&v35, *(a4 + 96));
  std::vector<unsigned long>::vector[abi:ne200100](v34, (*(a4 + 32) - *(a4 + 24)) >> 3);
  std::vector<unsigned long>::vector[abi:ne200100](__p, (*(a4 + 56) - *(a4 + 48)) >> 3);
  if (a2)
  {
    v13 = 0;
    do
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(a4, v13, &v35, v34);
      v14 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToBlockIndex(a4, v13, __p, v34);
      v32.__r_.__value_.__r.__words[0] = a1;
      v32.__r_.__value_.__l.__size_ = a2;
      v31.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(&v32, v13);
      Int = MIL::UInt1::GetInt(&v31);
      v16 = Int;
      if ((v16 & 0x80000000) != 0)
      {
        v24 = Int;
        exception = __cxa_allocate_exception(0x10uLL);
        std::to_string(&v30, v24);
        v26 = std::string::insert(&v30, 0, "Index ");
        v27 = *&v26->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        v28 = std::string::append(&v31, " cannot be negative");
        v29 = *&v28->__r_.__value_.__l.__data_;
        v32.__r_.__value_.__r.__words[2] = v28->__r_.__value_.__r.__words[2];
        *&v32.__r_.__value_.__l.__data_ = v29;
        v28->__r_.__value_.__l.__size_ = 0;
        v28->__r_.__value_.__r.__words[2] = 0;
        v28->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v32);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v17 = v35;
      if (v36 != v35)
      {
        v18 = v36 - v35;
        v19 = (a3 + 4 * (v14 * a5 + v16) * v12);
        v20 = *a6;
        if (v18 <= 1)
        {
          v18 = 1;
        }

        do
        {
          v21 = *v19++;
          v22 = v21;
          v23 = *v17++;
          *(v20 + 4 * v23) = v22;
          --v18;
        }

        while (v18);
      }

      ++v13;
    }

    while (v13 != a2);
  }

  if (__p[0])
  {
    __p[1] = __p[0];
    operator delete(__p[0]);
  }

  if (v34[0])
  {
    v34[1] = v34[0];
    operator delete(v34[0]);
  }

  if (v35)
  {
    v36 = v35;
    operator delete(v35);
  }
}

void sub_21837BDE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33)
{
  if (__p)
  {
    operator delete(__p);
  }

  v36 = *(v34 - 104);
  if (v36)
  {
    *(v34 - 96) = v36;
    operator delete(v36);
  }

  v37 = *v33;
  if (*v33)
  {
    *(v33 + 8) = v37;
    operator delete(v37);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl::Impl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 32) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a1 + 48) = *a6;
  *a6 = 0;
  *(a6 + 8) = 0;
  *(a1 + 64) = a7;
  MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl::ValidateArgsAndTypeConstraints(a1);
}

void sub_21837BF18(_Unwind_Exception *a1)
{
  v3 = v1[7];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl(v1 + 5, v1 + 3);
  _Unwind_Resume(a1);
}

void sub_21837C880(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  if (a33 < 0)
  {
    operator delete(a28);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  if (a20 < 0)
  {
    operator delete(a15);
    if ((v42 & 1) == 0)
    {
LABEL_14:
      operator delete(v40);
      _Unwind_Resume(a1);
    }
  }

  else if (!v42)
  {
    goto LABEL_14;
  }

  __cxa_free_exception(v41);
  goto LABEL_14;
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl::ComputeOutput(MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl *this, uint64_t a2)
{
  if (*(this + 68) == 1)
  {
    v5 = *(this + 16);
    if (v5 < 0)
    {
      v6 = (*(**(this + 4) + 32))(*(this + 4));
      v5 += MIL::IRTensorValueType::Rank(v6);
    }

    v7 = v5;
  }

  else
  {
    v7 = 0;
  }

  v8 = (*(**(this + 2) + 32))(*(this + 2));
  v9 = (*(*v8 + 96))(v8);
  v10 = (*(**(*(v9 + 8) - 8) + 16))(*(*(v9 + 8) - 8));
  v11 = (*(*v10 + 48))(v10);
  v13 = *(this + 4);
  v12 = *(this + 5);
  if (v12)
  {
    atomic_fetch_add_explicit(&v12->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v14 = (*(*v13 + 32))(v13);
  v15 = (*(*v14 + 96))(v14);
  MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v15, &v432);
  v430.__r_.__value_.__r.__words[0] = 1;
  std::vector<unsigned long>::vector[abi:ne200100](&v431, (v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]) >> 3, &v430);
  MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v418, &v432, &v431, v11, v7);
  if (v431.__r_.__value_.__r.__words[0])
  {
    v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
    operator delete(v431.__r_.__value_.__l.__data_);
  }

  v16 = (*(*v13 + 32))(v13);
  v17 = (*(*v16 + 16))(v16);
  std::vector<MIL::UInt1>::vector[abi:ne200100](&v417, v17 * v11);
  std::vector<unsigned long>::vector[abi:ne200100](&v431, v425);
  std::vector<unsigned long>::vector[abi:ne200100](&v430, (v420 - v419) >> 3);
  if (v17)
  {
    for (i = 0; i != v17; ++i)
    {
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::InputIndexToOutputIndexes(&v418, i, &v431, &v430);
      if (v431.__r_.__value_.__l.__size_ != v431.__r_.__value_.__r.__words[0])
      {
        v19 = 0;
        do
        {
          v428 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v13);
          v429 = v20;
          v21 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(&v428, i);
          *(v417 + *(v431.__r_.__value_.__r.__words[0] + 8 * v19++)) = v21;
        }

        while (v19 < (v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0]) >> 3);
      }
    }
  }

  if (v430.__r_.__value_.__r.__words[0])
  {
    v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
    operator delete(v430.__r_.__value_.__l.__data_);
  }

  if (v431.__r_.__value_.__r.__words[0])
  {
    v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
    operator delete(v431.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v424 = __p;
    operator delete(__p);
  }

  if (v421)
  {
    v422 = v421;
    operator delete(v421);
  }

  if (v419)
  {
    v420 = v419;
    operator delete(v419);
  }

  if (v418.__r_.__value_.__r.__words[0])
  {
    v418.__r_.__value_.__l.__size_ = v418.__r_.__value_.__r.__words[0];
    operator delete(v418.__r_.__value_.__l.__data_);
  }

  if (v432.__r_.__value_.__r.__words[0])
  {
    v432.__r_.__value_.__l.__size_ = v432.__r_.__value_.__r.__words[0];
    operator delete(v432.__r_.__value_.__l.__data_);
  }

  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v12);
  }

  if (!a2)
  {
    v49 = (*(**this + 88))();
    if (v49 == 21)
    {
      MIL::PackSubByteVec(&v417, &v418);
      MIL::IRTensorValueType::MakeUInt1Value();
    }

    exception = __cxa_allocate_exception(0x10uLL);
    MIL::IRDataTypeToString(v49, &v431);
    v382 = std::string::insert(&v431, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
    v383 = *&v382->__r_.__value_.__l.__data_;
    v432.__r_.__value_.__r.__words[2] = v382->__r_.__value_.__r.__words[2];
    *&v432.__r_.__value_.__l.__data_ = v383;
    v382->__r_.__value_.__l.__size_ = 0;
    v382->__r_.__value_.__r.__words[2] = 0;
    v382->__r_.__value_.__r.__words[0] = 0;
    v384 = std::string::append(&v432, " for mask output");
    v385 = *&v384->__r_.__value_.__l.__data_;
    v418.__r_.__value_.__r.__words[2] = v384->__r_.__value_.__r.__words[2];
    *&v418.__r_.__value_.__l.__data_ = v385;
    v384->__r_.__value_.__l.__size_ = 0;
    v384->__r_.__value_.__r.__words[2] = 0;
    v384->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(exception, &v418);
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (a2 != 1)
  {
    v380 = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(v380, "BlockwiseLutToSparse has two outputs, index i cannot be larger than 1.");
    __cxa_throw(v380, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  v22 = (*(**(this + 1) + 88))(*(this + 1));
  v23 = v22;
  if (v22 > 6)
  {
    if (v22 != 7)
    {
      if (v22 != 9)
      {
        if (v22 == 14)
        {
          v25 = *(this + 4);
          v24 = *(this + 5);
          if (v24)
          {
            atomic_fetch_add_explicit((v24 + 8), 1uLL, memory_order_relaxed);
          }

          v27 = *(this + 6);
          v26 = *(this + 7);
          if (v26)
          {
            atomic_fetch_add_explicit((v26 + 8), 1uLL, memory_order_relaxed);
          }

          v29 = *(this + 2);
          v28 = *(this + 3);
          if (v28)
          {
            atomic_fetch_add_explicit((v28 + 8), 1uLL, memory_order_relaxed);
          }

          v30 = (*(*v25 + 32))(v25);
          v31 = (*(*v30 + 96))(v30);
          MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v31, &v428);
          v32 = (*(*v29 + 32))(v29);
          v33 = (*(*v32 + 96))(v32);
          MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v33, &v426);
          v35 = *(v427 - 2);
          v34 = *(v427 - 1);
          memset(&v432, 0, sizeof(v432));
          std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&v432, v426, (v427 - 2), ((v427 - 2) - v426) >> 3);
          MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v418, &v428, &v432, v34, v7);
          if (v432.__r_.__value_.__r.__words[0])
          {
            v432.__r_.__value_.__l.__size_ = v432.__r_.__value_.__r.__words[0];
            operator delete(v432.__r_.__value_.__l.__data_);
          }

          v36 = (*(*v27 + 32))(v27);
          v37 = (*(*v36 + 88))(v36);
          v38 = v37;
          if (v37 > 20)
          {
            switch(v37)
            {
              case 21:
                v354 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v25);
                v356 = v355;
                v357 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v27);
                v359 = v358;
                Data = MIL::IRTensorValue::GetDataView<unsigned char>(v29);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt1>(v357, v359, v354, v356, &v432);
                MIL::PackSubByteVec(&v432, &v431);
                if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
                {
                  v361 = 0;
                }

                else
                {
                  v361 = v431.__r_.__value_.__r.__words[0];
                }

                MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char,true>(v361, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt1>(v362, v363, Data, &v418, v35, &v430);
                MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(&v430, &v417, &v416);
                break;
              case 22:
                v286 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v25);
                v288 = v287;
                v289 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v27);
                v291 = v290;
                v292 = MIL::IRTensorValue::GetDataView<unsigned char>(v29);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt3>(v289, v291, v286, v288, &v432);
                MIL::PackSubByteVec(&v432, &v431);
                if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
                {
                  v293 = 0;
                }

                else
                {
                  v293 = v431.__r_.__value_.__r.__words[0];
                }

                MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char,true>(v293, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt3>(v294, v295, v292, &v418, v35, &v430);
                MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(&v430, &v417, &v416);
                break;
              case 23:
                v180 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v25);
                v182 = v181;
                v183 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v27);
                v185 = v184;
                v186 = MIL::IRTensorValue::GetDataView<unsigned char>(v29);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt6>(v183, v185, v180, v182, &v432);
                MIL::PackSubByteVec(&v432, &v431);
                if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
                {
                  v187 = 0;
                }

                else
                {
                  v187 = v431.__r_.__value_.__r.__words[0];
                }

                MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char,true>(v187, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt6>(v188, v189, v186, &v418, v35, &v430);
                MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(&v430, &v417, &v416);
                break;
              default:
                goto LABEL_338;
            }
          }

          else
          {
            if (v37 == 14)
            {
              v348 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v25);
              v350 = v349;
              v351 = MIL::IRTensorValue::GetDataView<unsigned char>(v27);
              v352 = MIL::IRTensorValue::GetDataView<unsigned char>(v29);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v351, v348, v350, &v432);
              if (v432.__r_.__value_.__l.__size_ == v432.__r_.__value_.__r.__words[0])
              {
                v353 = 0;
              }

              else
              {
                v353 = v432.__r_.__value_.__r.__words[0];
              }

              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,unsigned char>(v353, v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0], v352, &v418, v35, &v431);
              MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(&v431, &v417, &v416);
              goto LABEL_288;
            }

            if (v37 != 19)
            {
              if (v37 == 20)
              {
                v39 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v25);
                v41 = v40;
                v42 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v27);
                v44 = v43;
                v45 = MIL::IRTensorValue::GetDataView<unsigned char>(v29);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v42, v44, v39, v41, &v432);
                MIL::PackSubByteVec(&v432, &v431);
                if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
                {
                  v46 = 0;
                }

                else
                {
                  v46 = v431.__r_.__value_.__r.__words[0];
                }

                MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v46, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
                MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt4>(v47, v48, v45, &v418, v35, &v430);
                MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(&v430, &v417, &v416);
                goto LABEL_286;
              }

LABEL_338:
              v406 = __cxa_allocate_exception(0x10uLL);
              MIL::IRDataTypeToString(v38, &v430);
              v407 = std::string::insert(&v430, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
              v408 = *&v407->__r_.__value_.__l.__data_;
              v431.__r_.__value_.__r.__words[2] = v407->__r_.__value_.__r.__words[2];
              *&v431.__r_.__value_.__l.__data_ = v408;
              v407->__r_.__value_.__l.__size_ = 0;
              v407->__r_.__value_.__r.__words[2] = 0;
              v407->__r_.__value_.__r.__words[0] = 0;
              v409 = std::string::append(&v431, " for indices");
              v410 = *&v409->__r_.__value_.__l.__data_;
              v432.__r_.__value_.__r.__words[2] = v409->__r_.__value_.__r.__words[2];
              *&v432.__r_.__value_.__l.__data_ = v410;
              v409->__r_.__value_.__l.__size_ = 0;
              v409->__r_.__value_.__r.__words[2] = 0;
              v409->__r_.__value_.__r.__words[0] = 0;
              std::runtime_error::runtime_error(v406, &v432);
              __cxa_throw(v406, MEMORY[0x277D82760], MEMORY[0x277D82600]);
            }

            v260 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v25);
            v262 = v261;
            v263 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v27);
            v265 = v264;
            v266 = MIL::IRTensorValue::GetDataView<unsigned char>(v29);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt2>(v263, v265, v260, v262, &v432);
            MIL::PackSubByteVec(&v432, &v431);
            if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
            {
              v267 = 0;
            }

            else
            {
              v267 = v431.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char,true>(v267, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<unsigned char,MIL::UInt2>(v268, v269, v266, &v418, v35, &v430);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(&v430, &v417, &v416);
          }

LABEL_286:
          if (v430.__r_.__value_.__r.__words[0])
          {
            v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
            operator delete(v430.__r_.__value_.__l.__data_);
          }

LABEL_288:
          if (v431.__r_.__value_.__r.__words[0])
          {
            v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
            operator delete(v431.__r_.__value_.__l.__data_);
          }

          if (v432.__r_.__value_.__r.__words[0])
          {
            v432.__r_.__value_.__l.__size_ = v432.__r_.__value_.__r.__words[0];
            operator delete(v432.__r_.__value_.__l.__data_);
          }

          if (__p)
          {
            v424 = __p;
            operator delete(__p);
          }

          if (v421)
          {
            v422 = v421;
            operator delete(v421);
          }

          if (v419)
          {
            v420 = v419;
            operator delete(v419);
          }

          if (v418.__r_.__value_.__r.__words[0])
          {
            v418.__r_.__value_.__l.__size_ = v418.__r_.__value_.__r.__words[0];
            operator delete(v418.__r_.__value_.__l.__data_);
          }

          if (v426)
          {
            v427 = v426;
            operator delete(v426);
          }

          if (v428)
          {
            v429 = v428;
            operator delete(v428);
          }

          MIL::IRTensorValueType::MakeUInt8Value();
        }

LABEL_334:
        v386 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v23, &v431);
        v387 = std::string::insert(&v431, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
        v388 = *&v387->__r_.__value_.__l.__data_;
        v432.__r_.__value_.__r.__words[2] = v387->__r_.__value_.__r.__words[2];
        *&v432.__r_.__value_.__l.__data_ = v388;
        v387->__r_.__value_.__l.__size_ = 0;
        v387->__r_.__value_.__r.__words[2] = 0;
        v387->__r_.__value_.__r.__words[0] = 0;
        v389 = std::string::append(&v432, " for nonzero data output");
        v390 = *&v389->__r_.__value_.__l.__data_;
        v418.__r_.__value_.__r.__words[2] = v389->__r_.__value_.__r.__words[2];
        *&v418.__r_.__value_.__l.__data_ = v390;
        v389->__r_.__value_.__l.__size_ = 0;
        v389->__r_.__value_.__r.__words[2] = 0;
        v389->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v386, &v418);
        __cxa_throw(v386, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v101 = *(this + 4);
      v100 = *(this + 5);
      if (v100)
      {
        atomic_fetch_add_explicit((v100 + 8), 1uLL, memory_order_relaxed);
      }

      v103 = *(this + 6);
      v102 = *(this + 7);
      if (v102)
      {
        atomic_fetch_add_explicit((v102 + 8), 1uLL, memory_order_relaxed);
      }

      v105 = *(this + 2);
      v104 = *(this + 3);
      if (v104)
      {
        atomic_fetch_add_explicit((v104 + 8), 1uLL, memory_order_relaxed);
      }

      v106 = (*(*v101 + 32))(v101);
      v107 = (*(*v106 + 96))(v106);
      MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v107, &v428);
      v108 = (*(*v105 + 32))(v105);
      v109 = (*(*v108 + 96))(v108);
      MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v109, &v426);
      v111 = *(v427 - 2);
      v110 = *(v427 - 1);
      memset(&v432, 0, sizeof(v432));
      std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&v432, v426, (v427 - 2), ((v427 - 2) - v426) >> 3);
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v418, &v428, &v432, v110, v7);
      if (v432.__r_.__value_.__r.__words[0])
      {
        v432.__r_.__value_.__l.__size_ = v432.__r_.__value_.__r.__words[0];
        operator delete(v432.__r_.__value_.__l.__data_);
      }

      v112 = (*(*v103 + 32))(v103);
      v113 = (*(*v112 + 88))(v112);
      v114 = v113;
      if (v113 > 20)
      {
        switch(v113)
        {
          case 21:
            v312 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v101);
            v314 = v313;
            v315 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v103);
            v317 = v316;
            v318 = MIL::IRTensorValue::GetDataView<signed char>(v105);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt1>(v315, v317, v312, v314, &v432);
            MIL::PackSubByteVec(&v432, &v431);
            if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
            {
              v319 = 0;
            }

            else
            {
              v319 = v431.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char,true>(v319, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt1>(v320, v321, v318, &v418, v111, &v430);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(&v430, &v417, &v416);
            break;
          case 22:
            v230 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v101);
            v232 = v231;
            v233 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v103);
            v235 = v234;
            v236 = MIL::IRTensorValue::GetDataView<signed char>(v105);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt3>(v233, v235, v230, v232, &v432);
            MIL::PackSubByteVec(&v432, &v431);
            if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
            {
              v237 = 0;
            }

            else
            {
              v237 = v431.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char,true>(v237, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt3>(v238, v239, v236, &v418, v111, &v430);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(&v430, &v417, &v416);
            break;
          case 23:
            v160 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v101);
            v162 = v161;
            v163 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v103);
            v165 = v164;
            v166 = MIL::IRTensorValue::GetDataView<signed char>(v105);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt6>(v163, v165, v160, v162, &v432);
            MIL::PackSubByteVec(&v432, &v431);
            if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
            {
              v167 = 0;
            }

            else
            {
              v167 = v431.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char,true>(v167, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt6>(v168, v169, v166, &v418, v111, &v430);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(&v430, &v417, &v416);
            break;
          default:
            goto LABEL_336;
        }
      }

      else
      {
        if (v113 == 14)
        {
          v306 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v101);
          v308 = v307;
          v309 = MIL::IRTensorValue::GetDataView<unsigned char>(v103);
          v310 = MIL::IRTensorValue::GetDataView<signed char>(v105);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v309, v306, v308, &v432);
          if (v432.__r_.__value_.__l.__size_ == v432.__r_.__value_.__r.__words[0])
          {
            v311 = 0;
          }

          else
          {
            v311 = v432.__r_.__value_.__r.__words[0];
          }

          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,unsigned char>(v311, v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0], v310, &v418, v111, &v431);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(&v431, &v417, &v416);
          goto LABEL_230;
        }

        if (v113 != 19)
        {
          if (v113 == 20)
          {
            v115 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v101);
            v117 = v116;
            v118 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v103);
            v120 = v119;
            v121 = MIL::IRTensorValue::GetDataView<signed char>(v105);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v118, v120, v115, v117, &v432);
            MIL::PackSubByteVec(&v432, &v431);
            if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
            {
              v122 = 0;
            }

            else
            {
              v122 = v431.__r_.__value_.__r.__words[0];
            }

            MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v122, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt4>(v123, v124, v121, &v418, v111, &v430);
            MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(&v430, &v417, &v416);
            goto LABEL_228;
          }

LABEL_336:
          v396 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v114, &v430);
          v397 = std::string::insert(&v430, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
          v398 = *&v397->__r_.__value_.__l.__data_;
          v431.__r_.__value_.__r.__words[2] = v397->__r_.__value_.__r.__words[2];
          *&v431.__r_.__value_.__l.__data_ = v398;
          v397->__r_.__value_.__l.__size_ = 0;
          v397->__r_.__value_.__r.__words[2] = 0;
          v397->__r_.__value_.__r.__words[0] = 0;
          v399 = std::string::append(&v431, " for indices");
          v400 = *&v399->__r_.__value_.__l.__data_;
          v432.__r_.__value_.__r.__words[2] = v399->__r_.__value_.__r.__words[2];
          *&v432.__r_.__value_.__l.__data_ = v400;
          v399->__r_.__value_.__l.__size_ = 0;
          v399->__r_.__value_.__r.__words[2] = 0;
          v399->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v396, &v432);
          __cxa_throw(v396, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }

        v220 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v101);
        v222 = v221;
        v223 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v103);
        v225 = v224;
        v226 = MIL::IRTensorValue::GetDataView<signed char>(v105);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt2>(v223, v225, v220, v222, &v432);
        MIL::PackSubByteVec(&v432, &v431);
        if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
        {
          v227 = 0;
        }

        else
        {
          v227 = v431.__r_.__value_.__r.__words[0];
        }

        MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char,true>(v227, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<signed char,MIL::UInt2>(v228, v229, v226, &v418, v111, &v430);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(&v430, &v417, &v416);
      }

LABEL_228:
      if (v430.__r_.__value_.__r.__words[0])
      {
        v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
        operator delete(v430.__r_.__value_.__l.__data_);
      }

LABEL_230:
      if (v431.__r_.__value_.__r.__words[0])
      {
        v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
        operator delete(v431.__r_.__value_.__l.__data_);
      }

      if (v432.__r_.__value_.__r.__words[0])
      {
        v432.__r_.__value_.__l.__size_ = v432.__r_.__value_.__r.__words[0];
        operator delete(v432.__r_.__value_.__l.__data_);
      }

      if (__p)
      {
        v424 = __p;
        operator delete(__p);
      }

      if (v421)
      {
        v422 = v421;
        operator delete(v421);
      }

      if (v419)
      {
        v420 = v419;
        operator delete(v419);
      }

      if (v418.__r_.__value_.__r.__words[0])
      {
        v418.__r_.__value_.__l.__size_ = v418.__r_.__value_.__r.__words[0];
        operator delete(v418.__r_.__value_.__l.__data_);
      }

      if (v426)
      {
        v427 = v426;
        operator delete(v426);
      }

      if (v428)
      {
        v429 = v428;
        operator delete(v428);
      }

      MIL::IRTensorValueType::MakeInt8Value();
    }

    v76 = *(this + 4);
    v75 = *(this + 5);
    if (v75)
    {
      atomic_fetch_add_explicit((v75 + 8), 1uLL, memory_order_relaxed);
    }

    v78 = *(this + 6);
    v77 = *(this + 7);
    if (v77)
    {
      atomic_fetch_add_explicit((v77 + 8), 1uLL, memory_order_relaxed);
    }

    v80 = *(this + 2);
    v79 = *(this + 3);
    if (v79)
    {
      atomic_fetch_add_explicit((v79 + 8), 1uLL, memory_order_relaxed);
    }

    v81 = (*(*v76 + 32))(v76);
    v82 = (*(*v81 + 96))(v81);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v82, &v428);
    v83 = (*(*v80 + 32))(v80);
    v84 = (*(*v83 + 96))(v83);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v84, &v426);
    v86 = *(v427 - 2);
    v85 = *(v427 - 1);
    memset(&v432, 0, sizeof(v432));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&v432, v426, (v427 - 2), ((v427 - 2) - v426) >> 3);
    MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v418, &v428, &v432, v85, v7);
    if (v432.__r_.__value_.__r.__words[0])
    {
      v432.__r_.__value_.__l.__size_ = v432.__r_.__value_.__r.__words[0];
      operator delete(v432.__r_.__value_.__l.__data_);
    }

    v87 = (*(*v78 + 32))(v78);
    v88 = (*(*v87 + 88))(v87);
    v89 = v88;
    if (v88 > 20)
    {
      switch(v88)
      {
        case 21:
          v276 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v76);
          v278 = v277;
          v279 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v78);
          v281 = v280;
          v282 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v80);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt1>(v279, v281, v276, v278, &v432);
          MIL::PackSubByteVec(&v432, &v431);
          if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
          {
            v283 = 0;
          }

          else
          {
            v283 = v431.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char,true>(v283, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt1>(v284, v285, v282, &v418, v86, &v430);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v430, &v417, &v416);
          break;
        case 22:
          v210 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v76);
          v212 = v211;
          v213 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v78);
          v215 = v214;
          v216 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v80);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt3>(v213, v215, v210, v212, &v432);
          MIL::PackSubByteVec(&v432, &v431);
          if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
          {
            v217 = 0;
          }

          else
          {
            v217 = v431.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char,true>(v217, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt3>(v218, v219, v216, &v418, v86, &v430);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v430, &v417, &v416);
          break;
        case 23:
          v150 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v76);
          v152 = v151;
          v153 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v78);
          v155 = v154;
          v156 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v80);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt6>(v153, v155, v150, v152, &v432);
          MIL::PackSubByteVec(&v432, &v431);
          if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
          {
            v157 = 0;
          }

          else
          {
            v157 = v431.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char,true>(v157, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt6>(v158, v159, v156, &v418, v86, &v430);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v430, &v417, &v416);
          break;
        default:
          goto LABEL_335;
      }
    }

    else
    {
      if (v88 == 14)
      {
        v270 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v76);
        v272 = v271;
        v273 = MIL::IRTensorValue::GetDataView<unsigned char>(v78);
        v274 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v80);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v273, v270, v272, &v432);
        if (v432.__r_.__value_.__l.__size_ == v432.__r_.__value_.__r.__words[0])
        {
          v275 = 0;
        }

        else
        {
          v275 = v432.__r_.__value_.__r.__words[0];
        }

        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,unsigned char>(v275, v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0], v274, &v418, v86, &v431);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v431, &v417, &v416);
        goto LABEL_195;
      }

      if (v88 != 19)
      {
        if (v88 == 20)
        {
          v90 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v76);
          v92 = v91;
          v93 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v78);
          v95 = v94;
          v96 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v80);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v93, v95, v90, v92, &v432);
          MIL::PackSubByteVec(&v432, &v431);
          if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
          {
            v97 = 0;
          }

          else
          {
            v97 = v431.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v97, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt4>(v98, v99, v96, &v418, v86, &v430);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v430, &v417, &v416);
          goto LABEL_193;
        }

LABEL_335:
        v391 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v89, &v430);
        v392 = std::string::insert(&v430, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
        v393 = *&v392->__r_.__value_.__l.__data_;
        v431.__r_.__value_.__r.__words[2] = v392->__r_.__value_.__r.__words[2];
        *&v431.__r_.__value_.__l.__data_ = v393;
        v392->__r_.__value_.__l.__size_ = 0;
        v392->__r_.__value_.__r.__words[2] = 0;
        v392->__r_.__value_.__r.__words[0] = 0;
        v394 = std::string::append(&v431, " for indices");
        v395 = *&v394->__r_.__value_.__l.__data_;
        v432.__r_.__value_.__r.__words[2] = v394->__r_.__value_.__r.__words[2];
        *&v432.__r_.__value_.__l.__data_ = v395;
        v394->__r_.__value_.__l.__size_ = 0;
        v394->__r_.__value_.__r.__words[2] = 0;
        v394->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v391, &v432);
        __cxa_throw(v391, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v200 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v76);
      v202 = v201;
      v203 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v78);
      v205 = v204;
      v206 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v80);
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt2>(v203, v205, v200, v202, &v432);
      MIL::PackSubByteVec(&v432, &v431);
      if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
      {
        v207 = 0;
      }

      else
      {
        v207 = v431.__r_.__value_.__r.__words[0];
      }

      MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char,true>(v207, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Bf16,MIL::UInt2>(v208, v209, v206, &v418, v86, &v430);
      MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(&v430, &v417, &v416);
    }

LABEL_193:
    if (v430.__r_.__value_.__r.__words[0])
    {
      v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
      operator delete(v430.__r_.__value_.__l.__data_);
    }

LABEL_195:
    if (v431.__r_.__value_.__r.__words[0])
    {
      v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
      operator delete(v431.__r_.__value_.__l.__data_);
    }

    if (v432.__r_.__value_.__r.__words[0])
    {
      v432.__r_.__value_.__l.__size_ = v432.__r_.__value_.__r.__words[0];
      operator delete(v432.__r_.__value_.__l.__data_);
    }

    if (__p)
    {
      v424 = __p;
      operator delete(__p);
    }

    if (v421)
    {
      v422 = v421;
      operator delete(v421);
    }

    if (v419)
    {
      v420 = v419;
      operator delete(v419);
    }

    if (v418.__r_.__value_.__r.__words[0])
    {
      v418.__r_.__value_.__l.__size_ = v418.__r_.__value_.__r.__words[0];
      operator delete(v418.__r_.__value_.__l.__data_);
    }

    if (v426)
    {
      v427 = v426;
      operator delete(v426);
    }

    if (v428)
    {
      v429 = v428;
      operator delete(v428);
    }

    MIL::IRTensorValueType::MakeBFloat16Value();
  }

  if (v22 != 4)
  {
    if (v22 != 5)
    {
      goto LABEL_334;
    }

    v51 = *(this + 4);
    v50 = *(this + 5);
    if (v50)
    {
      atomic_fetch_add_explicit((v50 + 8), 1uLL, memory_order_relaxed);
    }

    v53 = *(this + 6);
    v52 = *(this + 7);
    if (v52)
    {
      atomic_fetch_add_explicit((v52 + 8), 1uLL, memory_order_relaxed);
    }

    v55 = *(this + 2);
    v54 = *(this + 3);
    if (v54)
    {
      atomic_fetch_add_explicit((v54 + 8), 1uLL, memory_order_relaxed);
    }

    v56 = (*(*v51 + 32))(v51);
    v57 = (*(*v56 + 96))(v56);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v57, &v428);
    v58 = (*(*v55 + 32))(v55);
    v59 = (*(*v58 + 96))(v58);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v59, &v426);
    v61 = *(v427 - 2);
    v60 = *(v427 - 1);
    memset(&v432, 0, sizeof(v432));
    std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&v432, v426, (v427 - 2), ((v427 - 2) - v426) >> 3);
    MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v418, &v428, &v432, v60, v7);
    if (v432.__r_.__value_.__r.__words[0])
    {
      v432.__r_.__value_.__l.__size_ = v432.__r_.__value_.__r.__words[0];
      operator delete(v432.__r_.__value_.__l.__data_);
    }

    v62 = (*(*v53 + 32))(v53);
    v63 = (*(*v62 + 88))(v62);
    v64 = v63;
    if (v63 > 20)
    {
      switch(v63)
      {
        case 21:
          v370 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v51);
          v372 = v371;
          v373 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v53);
          v375 = v374;
          v376 = MIL::IRTensorValue::GetDataView<float>(v55);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt1>(v373, v375, v370, v372, &v432);
          MIL::PackSubByteVec(&v432, &v431);
          if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
          {
            v377 = 0;
          }

          else
          {
            v377 = v431.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char,true>(v377, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt1>(v378, v379, v376, &v418, v61, &v430);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v430, &v417, &v416);
          break;
        case 22:
          v322 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v51);
          v324 = v323;
          v325 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v53);
          v327 = v326;
          v328 = MIL::IRTensorValue::GetDataView<float>(v55);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt3>(v325, v327, v322, v324, &v432);
          MIL::PackSubByteVec(&v432, &v431);
          if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
          {
            v329 = 0;
          }

          else
          {
            v329 = v431.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char,true>(v329, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt3>(v330, v331, v328, &v418, v61, &v430);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v430, &v417, &v416);
          break;
        case 23:
          v190 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v51);
          v192 = v191;
          v193 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v53);
          v195 = v194;
          v196 = MIL::IRTensorValue::GetDataView<float>(v55);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt6>(v193, v195, v190, v192, &v432);
          MIL::PackSubByteVec(&v432, &v431);
          if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
          {
            v197 = 0;
          }

          else
          {
            v197 = v431.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char,true>(v197, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt6>(v198, v199, v196, &v418, v61, &v430);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v430, &v417, &v416);
          break;
        default:
          goto LABEL_339;
      }
    }

    else
    {
      if (v63 == 14)
      {
        v364 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v51);
        v366 = v365;
        v367 = MIL::IRTensorValue::GetDataView<unsigned char>(v53);
        v368 = MIL::IRTensorValue::GetDataView<float>(v55);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v367, v364, v366, &v432);
        if (v432.__r_.__value_.__l.__size_ == v432.__r_.__value_.__r.__words[0])
        {
          v369 = 0;
        }

        else
        {
          v369 = v432.__r_.__value_.__r.__words[0];
        }

        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,unsigned char>(v369, v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0], v368, &v418, v61, &v431);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v431, &v417, &v416);
        goto LABEL_315;
      }

      if (v63 != 19)
      {
        if (v63 == 20)
        {
          v65 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v51);
          v67 = v66;
          v68 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v53);
          v70 = v69;
          v71 = MIL::IRTensorValue::GetDataView<float>(v55);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v68, v70, v65, v67, &v432);
          MIL::PackSubByteVec(&v432, &v431);
          if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
          {
            v72 = 0;
          }

          else
          {
            v72 = v431.__r_.__value_.__r.__words[0];
          }

          MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v72, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt4>(v73, v74, v71, &v418, v61, &v430);
          MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v430, &v417, &v416);
          goto LABEL_313;
        }

LABEL_339:
        v411 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v64, &v430);
        v412 = std::string::insert(&v430, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
        v413 = *&v412->__r_.__value_.__l.__data_;
        v431.__r_.__value_.__r.__words[2] = v412->__r_.__value_.__r.__words[2];
        *&v431.__r_.__value_.__l.__data_ = v413;
        v412->__r_.__value_.__l.__size_ = 0;
        v412->__r_.__value_.__r.__words[2] = 0;
        v412->__r_.__value_.__r.__words[0] = 0;
        v414 = std::string::append(&v431, " for indices");
        v415 = *&v414->__r_.__value_.__l.__data_;
        v432.__r_.__value_.__r.__words[2] = v414->__r_.__value_.__r.__words[2];
        *&v432.__r_.__value_.__l.__data_ = v415;
        v414->__r_.__value_.__l.__size_ = 0;
        v414->__r_.__value_.__r.__words[2] = 0;
        v414->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v411, &v432);
        __cxa_throw(v411, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v296 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v51);
      v298 = v297;
      v299 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v53);
      v301 = v300;
      v302 = MIL::IRTensorValue::GetDataView<float>(v55);
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt2>(v299, v301, v296, v298, &v432);
      MIL::PackSubByteVec(&v432, &v431);
      if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
      {
        v303 = 0;
      }

      else
      {
        v303 = v431.__r_.__value_.__r.__words[0];
      }

      MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char,true>(v303, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<float,MIL::UInt2>(v304, v305, v302, &v418, v61, &v430);
      MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(&v430, &v417, &v416);
    }

LABEL_313:
    if (v430.__r_.__value_.__r.__words[0])
    {
      v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
      operator delete(v430.__r_.__value_.__l.__data_);
    }

LABEL_315:
    if (v431.__r_.__value_.__r.__words[0])
    {
      v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
      operator delete(v431.__r_.__value_.__l.__data_);
    }

    if (v432.__r_.__value_.__r.__words[0])
    {
      v432.__r_.__value_.__l.__size_ = v432.__r_.__value_.__r.__words[0];
      operator delete(v432.__r_.__value_.__l.__data_);
    }

    if (__p)
    {
      v424 = __p;
      operator delete(__p);
    }

    if (v421)
    {
      v422 = v421;
      operator delete(v421);
    }

    if (v419)
    {
      v420 = v419;
      operator delete(v419);
    }

    if (v418.__r_.__value_.__r.__words[0])
    {
      v418.__r_.__value_.__l.__size_ = v418.__r_.__value_.__r.__words[0];
      operator delete(v418.__r_.__value_.__l.__data_);
    }

    if (v426)
    {
      v427 = v426;
      operator delete(v426);
    }

    if (v428)
    {
      v429 = v428;
      operator delete(v428);
    }

    MIL::IRTensorValueType::MakeFloat32Value();
  }

  v126 = *(this + 4);
  v125 = *(this + 5);
  if (v125)
  {
    atomic_fetch_add_explicit((v125 + 8), 1uLL, memory_order_relaxed);
  }

  v128 = *(this + 6);
  v127 = *(this + 7);
  if (v127)
  {
    atomic_fetch_add_explicit((v127 + 8), 1uLL, memory_order_relaxed);
  }

  v130 = *(this + 2);
  v129 = *(this + 3);
  if (v129)
  {
    atomic_fetch_add_explicit((v129 + 8), 1uLL, memory_order_relaxed);
  }

  v131 = (*(*v126 + 32))(v126);
  v132 = (*(*v131 + 96))(v131);
  MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v132, &v428);
  v133 = (*(*v130 + 32))(v130);
  v134 = (*(*v133 + 96))(v133);
  MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v134, &v426);
  v136 = *(v427 - 2);
  v135 = *(v427 - 1);
  memset(&v432, 0, sizeof(v432));
  std::vector<unsigned long>::__init_with_size[abi:ne200100]<std::__wrap_iter<unsigned long *>,std::__wrap_iter<unsigned long *>>(&v432, v426, (v427 - 2), ((v427 - 2) - v426) >> 3);
  MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::BlockwiseLutToDenseIndexConverter(&v418, &v428, &v432, v135, v7);
  if (v432.__r_.__value_.__r.__words[0])
  {
    v432.__r_.__value_.__l.__size_ = v432.__r_.__value_.__r.__words[0];
    operator delete(v432.__r_.__value_.__l.__data_);
  }

  v137 = (*(*v128 + 32))(v128);
  v138 = (*(*v137 + 88))(v137);
  v139 = v138;
  if (v138 > 20)
  {
    switch(v138)
    {
      case 21:
        v338 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v126);
        v340 = v339;
        v341 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v128);
        v343 = v342;
        v344 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v130);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt1>(v341, v343, v338, v340, &v432);
        MIL::PackSubByteVec(&v432, &v431);
        if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
        {
          v345 = 0;
        }

        else
        {
          v345 = v431.__r_.__value_.__r.__words[0];
        }

        MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char,true>(v345, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt1>(v346, v347, v344, &v418, v136, &v430);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v430, &v417, &v416);
        break;
      case 22:
        v250 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v126);
        v252 = v251;
        v253 = MIL::IRTensorValue::GetDataView<MIL::UInt3>(v128);
        v255 = v254;
        v256 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v130);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt3>(v253, v255, v250, v252, &v432);
        MIL::PackSubByteVec(&v432, &v431);
        if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
        {
          v257 = 0;
        }

        else
        {
          v257 = v431.__r_.__value_.__r.__words[0];
        }

        MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char,true>(v257, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt3>(v258, v259, v256, &v418, v136, &v430);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v430, &v417, &v416);
        break;
      case 23:
        v170 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v126);
        v172 = v171;
        v173 = MIL::IRTensorValue::GetDataView<MIL::UInt6>(v128);
        v175 = v174;
        v176 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v130);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt6>(v173, v175, v170, v172, &v432);
        MIL::PackSubByteVec(&v432, &v431);
        if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
        {
          v177 = 0;
        }

        else
        {
          v177 = v431.__r_.__value_.__r.__words[0];
        }

        MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char,true>(v177, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt6>(v178, v179, v176, &v418, v136, &v430);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v430, &v417, &v416);
        break;
      default:
        goto LABEL_337;
    }
  }

  else
  {
    if (v138 == 14)
    {
      v332 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v126);
      v334 = v333;
      v335 = MIL::IRTensorValue::GetDataView<unsigned char>(v128);
      v336 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v130);
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<unsigned char>(v335, v332, v334, &v432);
      if (v432.__r_.__value_.__l.__size_ == v432.__r_.__value_.__r.__words[0])
      {
        v337 = 0;
      }

      else
      {
        v337 = v432.__r_.__value_.__r.__words[0];
      }

      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,unsigned char>(v337, v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0], v336, &v418, v136, &v431);
      MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v431, &v417, &v416);
      goto LABEL_261;
    }

    if (v138 != 19)
    {
      if (v138 == 20)
      {
        v140 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v126);
        v142 = v141;
        v143 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v128);
        v145 = v144;
        v146 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v130);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt4>(v143, v145, v140, v142, &v432);
        MIL::PackSubByteVec(&v432, &v431);
        if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
        {
          v147 = 0;
        }

        else
        {
          v147 = v431.__r_.__value_.__r.__words[0];
        }

        MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(v147, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt4>(v148, v149, v146, &v418, v136, &v430);
        MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v430, &v417, &v416);
        goto LABEL_259;
      }

LABEL_337:
      v401 = __cxa_allocate_exception(0x10uLL);
      MIL::IRDataTypeToString(v139, &v430);
      v402 = std::string::insert(&v430, 0, "Constexpr-BlockwiseLutToSparse: Unsupported dtype ");
      v403 = *&v402->__r_.__value_.__l.__data_;
      v431.__r_.__value_.__r.__words[2] = v402->__r_.__value_.__r.__words[2];
      *&v431.__r_.__value_.__l.__data_ = v403;
      v402->__r_.__value_.__l.__size_ = 0;
      v402->__r_.__value_.__r.__words[2] = 0;
      v402->__r_.__value_.__r.__words[0] = 0;
      v404 = std::string::append(&v431, " for indices");
      v405 = *&v404->__r_.__value_.__l.__data_;
      v432.__r_.__value_.__r.__words[2] = v404->__r_.__value_.__r.__words[2];
      *&v432.__r_.__value_.__l.__data_ = v405;
      v404->__r_.__value_.__l.__size_ = 0;
      v404->__r_.__value_.__r.__words[2] = 0;
      v404->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v401, &v432);
      __cxa_throw(v401, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    v240 = MIL::IRTensorValue::GetDataView<MIL::UInt1>(v126);
    v242 = v241;
    v243 = MIL::IRTensorValue::GetDataView<MIL::UInt2>(v128);
    v245 = v244;
    v246 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v130);
    MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt2>(v243, v245, v240, v242, &v432);
    MIL::PackSubByteVec(&v432, &v431);
    if (v431.__r_.__value_.__l.__size_ == v431.__r_.__value_.__r.__words[0])
    {
      v247 = 0;
    }

    else
    {
      v247 = v431.__r_.__value_.__r.__words[0];
    }

    MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char,true>(v247, v431.__r_.__value_.__l.__size_ - v431.__r_.__value_.__r.__words[0], v432.__r_.__value_.__l.__size_ - v432.__r_.__value_.__r.__words[0]);
    MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseLutToDense<MIL::Fp16,MIL::UInt2>(v248, v249, v246, &v418, v136, &v430);
    MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(&v430, &v417, &v416);
  }

LABEL_259:
  if (v430.__r_.__value_.__r.__words[0])
  {
    v430.__r_.__value_.__l.__size_ = v430.__r_.__value_.__r.__words[0];
    operator delete(v430.__r_.__value_.__l.__data_);
  }

LABEL_261:
  if (v431.__r_.__value_.__r.__words[0])
  {
    v431.__r_.__value_.__l.__size_ = v431.__r_.__value_.__r.__words[0];
    operator delete(v431.__r_.__value_.__l.__data_);
  }

  if (v432.__r_.__value_.__r.__words[0])
  {
    v432.__r_.__value_.__l.__size_ = v432.__r_.__value_.__r.__words[0];
    operator delete(v432.__r_.__value_.__l.__data_);
  }

  if (__p)
  {
    v424 = __p;
    operator delete(__p);
  }

  if (v421)
  {
    v422 = v421;
    operator delete(v421);
  }

  if (v419)
  {
    v420 = v419;
    operator delete(v419);
  }

  if (v418.__r_.__value_.__r.__words[0])
  {
    v418.__r_.__value_.__l.__size_ = v418.__r_.__value_.__r.__words[0];
    operator delete(v418.__r_.__value_.__l.__data_);
  }

  if (v426)
  {
    v427 = v426;
    operator delete(v426);
  }

  if (v428)
  {
    v429 = v428;
    operator delete(v428);
  }

  MIL::IRTensorValueType::MakeFloat16Value();
}

void sub_21837F154(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, int a21, __int16 a22, char a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *__p, uint64_t a38)
{
  if (*(v42 - 105) < 0)
  {
    operator delete(*(v42 - 128));
  }

  if (*(v42 - 137) < 0)
  {
    operator delete(*(v42 - 160));
  }

  if (*(v42 - 161) < 0)
  {
    operator delete(*(v42 - 184));
    if ((v38 & 1) == 0)
    {
LABEL_10:
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseLutToDenseIndexConverter::~BlockwiseLutToDenseIndexConverter(&a19);
      if (__p)
      {
        a38 = __p;
        operator delete(__p);
      }

      v44 = *(v42 - 208);
      if (v44)
      {
        *(v42 - 200) = v44;
        operator delete(v44);
      }

      if (v40)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      }

      if (v39)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      }

      if (a11)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](a11);
      }

      if (a16)
      {
        operator delete(a16);
      }

      _Unwind_Resume(a1);
    }
  }

  else if (!v38)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v41);
  goto LABEL_10;
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::~BlockwiseLutToSparse(MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl::~Impl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  MIL::AbstractConstExpr::~AbstractConstExpr(this);
}

{
  MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::~BlockwiseLutToSparse(this);

  JUMPOUT(0x21CEAFEA0);
}

void sub_21837F94C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl((v12 | 8), (v13 | 8));
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void sub_21837FB24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl((v12 | 8), (v13 | 8));
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::ComputeOutput(MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse *this)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "Cannot compute to get a single output since BlockwiseLutToSparse has two outputs.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t *std::vector<unsigned long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2, uint64_t *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<unsigned long long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_21837FC80(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<unsigned char>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4 - *a1 != a2[1] - *a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4 != v5)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      Int = MIL::UInt1::GetInt((*a2 + v9));
      v11 = *a1;
      if (Int)
      {
        v12 = a3[2];
        if (v8 >= v12)
        {
          v13 = v8;
          v14 = (v8 + 1);
          if ((v8 + 1) < 0)
          {
            *a3 = 0;
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          if (2 * v12 > v14)
          {
            v14 = 2 * v12;
          }

          if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            operator new();
          }

          *v8++ = *(v11 + v9);
          memcpy(0, 0, v13);
          a3[1] = v13 + 1;
          a3[2] = 0;
        }

        else
        {
          *v8++ = *(v11 + v9);
        }

        a3[1] = v8;
        v11 = *a1;
      }

      ++v9;
    }

    while (v9 < a1[1] - v11);
  }

  *a3 = 0;
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt6>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v10[0] = a3;
  v10[1] = a4;
  result = std::vector<MIL::UInt6>::vector[abi:ne200100](a5, a4);
  if (a5[1] != *a5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v10, v8);
      if (MIL::UInt1::GetInt(&v9))
      {
        result = MIL::Util::Span<MIL::UInt6 const,18446744073709551615ul>::ValueAt(v11, v7++);
        *(*a5 + v8) = result;
      }

      else
      {
        result = MIL::UInt6::UInt6(&v9, 0);
        *(*a5 + v8) = v9;
      }

      ++v8;
    }

    while (v8 < a5[1] - *a5);
  }

  return result;
}

void sub_21837FF2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Util::CastToBitSpan<MIL::UInt6 const,unsigned char,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(6 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

void MIL::Util::CastToBitSpan<MIL::UInt4 const,unsigned char,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(4 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt3>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v10[0] = a3;
  v10[1] = a4;
  result = std::vector<MIL::UInt3>::vector[abi:ne200100](a5, a4);
  if (a5[1] != *a5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v10, v8);
      if (MIL::UInt1::GetInt(&v9))
      {
        result = MIL::Util::Span<MIL::UInt3 const,18446744073709551615ul>::ValueAt(v11, v7++);
        *(*a5 + v8) = result;
      }

      else
      {
        result = MIL::UInt3::UInt3(&v9, 0);
        *(*a5 + v8) = v9;
      }

      ++v8;
    }

    while (v8 < a5[1] - *a5);
  }

  return result;
}

void sub_218380120(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Util::CastToBitSpan<MIL::UInt3 const,unsigned char,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(3 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt2>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v10[0] = a3;
  v10[1] = a4;
  result = std::vector<MIL::UInt2>::vector[abi:ne200100](a5, a4);
  if (a5[1] != *a5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v10, v8);
      if (MIL::UInt1::GetInt(&v9))
      {
        result = MIL::Util::Span<MIL::UInt2 const,18446744073709551615ul>::ValueAt(v11, v7++);
        *(*a5 + v8) = result;
      }

      else
      {
        result = MIL::UInt2::UInt2(&v9, 0);
        *(*a5 + v8) = v9;
      }

      ++v8;
    }

    while (v8 < a5[1] - *a5);
  }

  return result;
}

void sub_218380288(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Util::CastToBitSpan<MIL::UInt2 const,unsigned char,true>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(2 * a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::EvaluateBitMask<MIL::UInt1>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v11[0] = a1;
  v11[1] = a2;
  v10[0] = a3;
  v10[1] = a4;
  result = std::vector<MIL::UInt1>::vector[abi:ne200100](a5, a4);
  if (a5[1] != *a5)
  {
    v7 = 0;
    v8 = 0;
    do
    {
      v9 = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v10, v8);
      if (MIL::UInt1::GetInt(&v9))
      {
        result = MIL::Util::Span<MIL::UInt1 const,18446744073709551615ul>::ValueAt(v11, v7++);
        *(*a5 + v8) = result;
      }

      else
      {
        result = MIL::UInt1::UInt1(&v9, 0);
        *(*a5 + v8) = v9;
      }

      ++v8;
    }

    while (v8 < a5[1] - *a5);
  }

  return result;
}

void sub_2183803F0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Util::CastToBitSpan<MIL::UInt1 const,unsigned char,true>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a2 != vcvtpd_u64_f64(vcvtd_n_f64_u64(a3, 3uLL)))
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::invalid_argument::invalid_argument[abi:ne200100](exception, "BitSpanCast to sub-byte type span has invalid number of elements. Sub-byte span with NumElements requires exactly Span<uint8_t>.Size() bytes.");
    __cxa_throw(exception, off_278235F80, MEMORY[0x277D82610]);
  }
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<signed char>(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (v4 - *a1 != a2[1] - *a2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4 != v5)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      Int = MIL::UInt1::GetInt((*a2 + v9));
      v11 = *a1;
      if (Int)
      {
        v12 = a3[2];
        if (v8 >= v12)
        {
          v13 = v8;
          v14 = (v8 + 1);
          if ((v8 + 1) < 0)
          {
            *a3 = 0;
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          if (2 * v12 > v14)
          {
            v14 = 2 * v12;
          }

          if (v12 >= 0x3FFFFFFFFFFFFFFFLL)
          {
            v15 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          if (v15)
          {
            operator new();
          }

          *v8++ = *(v11 + v9);
          memcpy(0, 0, v13);
          a3[1] = v13 + 1;
          a3[2] = 0;
        }

        else
        {
          *v8++ = *(v11 + v9);
        }

        a3[1] = v8;
        v11 = *a1;
      }

      ++v9;
    }

    while (v9 < a1[1] - v11);
  }

  *a3 = 0;
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Bf16>(uint64_t *a1@<X0>, void *a2@<X1>, const void **a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (a2[1] - *a2 != (v4 - *a1) >> 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4 != v5)
  {
    v8 = 0;
    do
    {
      Int = MIL::UInt1::GetInt((*a2 + v8));
      v10 = *a1;
      if (Int)
      {
        v12 = a3[1];
        v11 = a3[2];
        if (v12 >= v11)
        {
          v14 = *a3;
          v15 = v12 - *a3;
          v16 = v15 >> 1;
          if (v15 >> 1 <= -2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v17 = v11 - v14;
          if (v17 <= v16 + 1)
          {
            v18 = v16 + 1;
          }

          else
          {
            v18 = v17;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a3, v19);
          }

          v20 = (2 * v16);
          v21 = *(v10 + 2 * v8);
          v22 = &v20[-(v15 >> 1)];
          *v20 = v21;
          v13 = v20 + 1;
          memcpy(v22, v14, v15);
          v23 = *a3;
          *a3 = v22;
          a3[1] = v13;
          a3[2] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v12 = *(v10 + 2 * v8);
          v13 = v12 + 2;
        }

        a3[1] = v13;
        v10 = *a1;
      }

      ++v8;
    }

    while (v8 < (a1[1] - v10) >> 1);
  }
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<MIL::Fp16>(uint64_t *a1@<X0>, void *a2@<X1>, const void **a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (a2[1] - *a2 != (v4 - *a1) >> 1)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4 != v5)
  {
    v8 = 0;
    do
    {
      Int = MIL::UInt1::GetInt((*a2 + v8));
      v10 = *a1;
      if (Int)
      {
        v12 = a3[1];
        v11 = a3[2];
        if (v12 >= v11)
        {
          v14 = *a3;
          v15 = v12 - *a3;
          v16 = v15 >> 1;
          if (v15 >> 1 <= -2)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v17 = v11 - v14;
          if (v17 <= v16 + 1)
          {
            v18 = v16 + 1;
          }

          else
          {
            v18 = v17;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFELL)
          {
            v19 = 0x7FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v19 = v18;
          }

          if (v19)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<MIL::Fp16>>(a3, v19);
          }

          v20 = (2 * v16);
          v21 = *(v10 + 2 * v8);
          v22 = &v20[-(v15 >> 1)];
          *v20 = v21;
          v13 = v20 + 1;
          memcpy(v22, v14, v15);
          v23 = *a3;
          *a3 = v22;
          a3[1] = v13;
          a3[2] = 0;
          if (v23)
          {
            operator delete(v23);
          }
        }

        else
        {
          *v12 = *(v10 + 2 * v8);
          v13 = v12 + 2;
        }

        a3[1] = v13;
        v10 = *a1;
      }

      ++v8;
    }

    while (v8 < (a1[1] - v10) >> 1);
  }
}

void MIL::Operators::Common::Shared::ConstExprs::ExtractMaskedData<float>(uint64_t *a1@<X0>, void *a2@<X1>, const void **a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  if (a2[1] - *a2 != (v4 - *a1) >> 2)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "It should be guaranteed that the sizes of the input data and mask are the same");
    __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  if (v4 != v5)
  {
    v8 = 0;
    do
    {
      Int = MIL::UInt1::GetInt((*a2 + v8));
      v10 = *a1;
      if (Int)
      {
        v12 = a3[1];
        v11 = a3[2];
        if (v12 >= v11)
        {
          v14 = *a3;
          v15 = v12 - *a3;
          v16 = (v15 >> 2) + 1;
          if (v16 >> 62)
          {
            std::vector<unsigned char>::__throw_length_error[abi:ne200100]();
          }

          v17 = v11 - v14;
          if (v17 >> 1 > v16)
          {
            v16 = v17 >> 1;
          }

          if (v17 >= 0x7FFFFFFFFFFFFFFCLL)
          {
            v18 = 0x3FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v18 = v16;
          }

          if (v18)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a3, v18);
          }

          v19 = (4 * (v15 >> 2));
          *v19 = *(v10 + 4 * v8);
          v13 = v19 + 1;
          memcpy(0, v14, v15);
          v20 = *a3;
          *a3 = 0;
          a3[1] = v13;
          a3[2] = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v12 = *(v10 + 4 * v8);
          v13 = v12 + 4;
        }

        a3[1] = v13;
        v10 = *a1;
      }

      ++v8;
    }

    while (v8 < (a1[1] - v10) >> 2);
  }
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl::~Impl(MIL::Operators::Common::ios18::ConstExprs::BlockwiseLutToSparse::Impl *this)
{
  v2 = *(this + 7);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v3 = *(this + 5);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 3);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }
}

uint64_t MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl::Impl(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = a2;
  *(a1 + 8) = *a3;
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a1 + 24) = *a4;
  *a4 = 0;
  *(a4 + 8) = 0;
  *(a1 + 40) = *a5;
  *a5 = 0;
  *(a5 + 8) = 0;
  MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl::ValidateArgsAndTypeConstraints(a1);
  return a1;
}

void sub_218380C3C(_Unwind_Exception *a1)
{
  v3 = v1[6];
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl(v1 + 4, v1 + 2);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl::ValidateArgsAndTypeConstraints(MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl *this)
{
  std::string::basic_string[abi:ne200100]<0>(__p, "Constexpr-BlockwiseShiftScale");
  v2 = (*(**(this + 1) + 32))(*(this + 1));
  std::string::basic_string[abi:ne200100]<0>(&v35, "data");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsShapeConstant(v2, &v35, __p);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  v3 = (*(**(this + 3) + 32))(*(this + 3));
  std::string::basic_string[abi:ne200100]<0>(&v35, "scale");
  MIL::Operators::Common::Shared::ConstExprs::AssertIsShapeConstant(v3, &v35, __p);
  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  v4 = (*(**(this + 1) + 32))(*(this + 1));
  v5 = (*(**(this + 3) + 32))(*(this + 3));
  std::string::basic_string[abi:ne200100]<0>(&v35, "data");
  std::string::basic_string[abi:ne200100]<0>(&v32, "scale");
  MIL::Operators::Common::Shared::ConstExprs::AssertSameRank(v4, v5, &v35, &v32, __p);
  if (SHIBYTE(v34) < 0)
  {
    operator delete(v32);
  }

  if (SHIBYTE(v37) < 0)
  {
    operator delete(v35);
  }

  v6 = (*(**(this + 1) + 32))(*(this + 1));
  v7 = (*(*v6 + 96))(v6);
  v35 = 0;
  v36 = 0;
  v37 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v35, *v7, *(v7 + 8), (*(v7 + 8) - *v7) >> 3);
  v8 = (*(**(this + 3) + 32))(*(this + 3));
  v9 = (*(*v8 + 96))(v8);
  v32 = 0;
  v33 = 0;
  v34 = 0;
  std::vector<MIL::IRDimension const*>::__init_with_size[abi:ne200100]<MIL::IRDimension const**,MIL::IRDimension const**>(&v32, *v9, *(v9 + 8), (*(v9 + 8) - *v9) >> 3);
  v10 = v35;
  if (v36 != v35)
  {
    v11 = 0;
    do
    {
      v12 = MIL::IRDimension::AsConstant(v10[v11]);
      v13 = (*(*v12 + 48))(v12);
      v14 = MIL::IRDimension::AsConstant(*(v32 + v11));
      if (v13 % (*(*v14 + 48))(v14))
      {
        std::operator+<char>();
        v19 = std::string::append(&v29, ", number of scales along each dimension should be a factor of corresponding dimension size of data. Assertion error along dimension ");
        v20 = *&v19->__r_.__value_.__l.__data_;
        v30.__r_.__value_.__r.__words[2] = v19->__r_.__value_.__r.__words[2];
        *&v30.__r_.__value_.__l.__data_ = v20;
        v19->__r_.__value_.__l.__size_ = 0;
        v19->__r_.__value_.__r.__words[2] = 0;
        v19->__r_.__value_.__r.__words[0] = 0;
        std::to_string(&v28, v11);
        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v21 = &v28;
        }

        else
        {
          v21 = v28.__r_.__value_.__r.__words[0];
        }

        if ((v28.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v28.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v28.__r_.__value_.__l.__size_;
        }

        v23 = std::string::append(&v30, v21, size);
        v24 = *&v23->__r_.__value_.__l.__data_;
        v31.__r_.__value_.__r.__words[2] = v23->__r_.__value_.__r.__words[2];
        *&v31.__r_.__value_.__l.__data_ = v24;
        v23->__r_.__value_.__l.__size_ = 0;
        v23->__r_.__value_.__r.__words[2] = 0;
        v23->__r_.__value_.__r.__words[0] = 0;
        if (SHIBYTE(v28.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v28.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v30.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v30.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v29.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v29.__r_.__value_.__l.__data_);
        }

        exception = __cxa_allocate_exception(0x10uLL);
        std::runtime_error::runtime_error(exception, &v31);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      ++v11;
      v10 = v35;
    }

    while (v11 < v36 - v35);
  }

  if (v32)
  {
    v33 = v32;
    operator delete(v32);
    v10 = v35;
  }

  if (v10)
  {
    v36 = v10;
    operator delete(v10);
  }

  v15 = (*(**(this + 3) + 32))(*(this + 3));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputDType(v15, *this, __p);
  v16 = (*(**(this + 1) + 32))(*(this + 1));
  MIL::Operators::Common::Shared::ConstExprs::AssertExpectedOutputShape(v16, *this, __p);
  if (*(this + 5))
  {
    v17 = (*(**(this + 3) + 32))(*(this + 3));
    v18 = (*(**(this + 5) + 32))(*(this + 5));
    std::string::basic_string[abi:ne200100]<0>(&v35, "scale");
    std::string::basic_string[abi:ne200100]<0>(&v32, "offset");
    MIL::Operators::Common::Shared::ConstExprs::AssertConstantAndSameShape(v17, v18, &v35, &v32, __p);
    if (SHIBYTE(v34) < 0)
    {
      operator delete(v32);
    }

    if (SHIBYTE(v37) < 0)
    {
      operator delete(v35);
    }
  }

  if (v27 < 0)
  {
    operator delete(__p[0]);
  }
}

void sub_2183811A8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, int a24, __int16 a25, char a26, char a27, void *a28, uint64_t a29, int a30, __int16 a31, char a32, char a33, uint64_t a34, void *__p, uint64_t a36, int a37, __int16 a38, char a39, char a40)
{
  if (a40 < 0)
  {
    operator delete(__p);
  }

  v42 = *(v40 - 80);
  if (v42)
  {
    *(v40 - 72) = v42;
    operator delete(v42);
  }

  v43 = *(v40 - 56);
  if (v43)
  {
    *(v40 - 48) = v43;
    operator delete(v43);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  _Unwind_Resume(exception_object);
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl::ComputeOutput(MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl *this)
{
  v3 = (*(**this + 88))(*this);
  if (v3 != 4)
  {
    v4 = v3;
    if (v3 != 5)
    {
      if (v3 != 7)
      {
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v4, &v307);
        v258 = std::string::insert(&v307, 0, "Constexpr-BlockwiseShiftScale: Unsupported ");
        v259 = *&v258->__r_.__value_.__l.__data_;
        v308.__r_.__value_.__r.__words[2] = v258->__r_.__value_.__r.__words[2];
        *&v308.__r_.__value_.__l.__data_ = v259;
        v258->__r_.__value_.__l.__size_ = 0;
        v258->__r_.__value_.__r.__words[2] = 0;
        v258->__r_.__value_.__r.__words[0] = 0;
        v260 = std::string::append(&v308, " output type");
        v261 = *&v260->__r_.__value_.__l.__data_;
        v302.__r_.__value_.__r.__words[2] = v260->__r_.__value_.__r.__words[2];
        *&v302.__r_.__value_.__l.__data_ = v261;
        v260->__r_.__value_.__l.__size_ = 0;
        v260->__r_.__value_.__r.__words[2] = 0;
        v260->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v302);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      v5 = *(this + 1);
      v6 = *(this + 2);
      if (v6)
      {
        atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
      }

      v8 = *(this + 3);
      v7 = *(this + 4);
      if (v7)
      {
        atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
      }

      v10 = *(this + 5);
      v9 = *(this + 6);
      if (v9)
      {
        atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
      }

      v11 = (*(*v5 + 32))(v5);
      v12 = (*(*v11 + 96))(v11);
      MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v12, &v308);
      v13 = (*(*v8 + 32))(v8);
      v14 = (*(*v13 + 96))(v13);
      MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v14, &v307);
      MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::BlockwiseShiftScaleIndexConverter(&v302, &v308.__r_.__value_.__l.__data_, &v307);
      v15 = (*(*v5 + 32))(v5);
      v16 = (*(*v15 + 88))(v15);
      if (!v10)
      {
        if (v16 <= 12)
        {
          if (v16 > 6)
          {
            if (v16 == 7)
            {
              v217 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v5);
              v219 = v218;
              v220 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Bf16>(v217, v219, v220, &v302.__r_.__value_.__l.__data_, &v298);
              goto LABEL_164;
            }

            if (v16 == 9)
            {
              Data = MIL::IRTensorValue::GetDataView<signed char>(v5);
              v123 = v122;
              v124 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,signed char>(Data, v123, v124, &v302.__r_.__value_.__l.__data_, &v298);
              goto LABEL_164;
            }
          }

          else
          {
            if (v16 == 4)
            {
              v213 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v5);
              v215 = v214;
              v216 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp16>(v213, v215, v216, &v302.__r_.__value_.__l.__data_, &v298);
              goto LABEL_164;
            }

            if (v16 == 5)
            {
              v85 = MIL::IRTensorValue::GetDataView<float>(v5);
              v87 = v86;
              v88 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,float>(v85, v87, v88, &v302.__r_.__value_.__l.__data_, &v298);
              goto LABEL_164;
            }
          }
        }

        else if (v16 <= 19)
        {
          if (v16 == 13)
          {
            v233 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v5);
            v235 = v234;
            v236 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Int4>(v233, v235, v236, &v302.__r_.__value_.__l.__data_, &v298);
            goto LABEL_164;
          }

          if (v16 == 14)
          {
            v133 = MIL::IRTensorValue::GetDataView<unsigned char>(v5);
            v135 = v134;
            v136 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,unsigned char>(v133, v135, v136, &v302.__r_.__value_.__l.__data_, &v298);
            goto LABEL_164;
          }
        }

        else
        {
          switch(v16)
          {
            case 25:
              v245 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v5);
              v247 = v246;
              v248 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E5M2>(v245, v247, v248, &v302.__r_.__value_.__l.__data_, &v298);
              goto LABEL_164;
            case 24:
              v253 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v5);
              v255 = v254;
              v256 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E4M3FN>(v253, v255, v256, &v302.__r_.__value_.__l.__data_, &v298);
              goto LABEL_164;
            case 20:
              v61 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v5);
              v63 = v62;
              v64 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
              MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::UInt4>(v61, v63, v64, &v302.__r_.__value_.__l.__data_, &v298);
              goto LABEL_164;
          }
        }

        v292 = v16;
        v293 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v292, &v299);
        v294 = std::string::insert(&v299, 0, "Constexpr-BlockwiseShiftScale: Unsupported dType (");
        v295 = *&v294->__r_.__value_.__l.__data_;
        v300.__r_.__value_.__r.__words[2] = v294->__r_.__value_.__r.__words[2];
        *&v300.__r_.__value_.__l.__data_ = v295;
        v294->__r_.__value_.__l.__size_ = 0;
        v294->__r_.__value_.__r.__words[2] = 0;
        v294->__r_.__value_.__r.__words[0] = 0;
        v296 = std::string::append(&v300, ") for data.");
        v297 = *&v296->__r_.__value_.__l.__data_;
        v301.__r_.__value_.__r.__words[2] = v296->__r_.__value_.__r.__words[2];
        *&v301.__r_.__value_.__l.__data_ = v297;
        v296->__r_.__value_.__l.__size_ = 0;
        v296->__r_.__value_.__r.__words[2] = 0;
        v296->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v293, &v301);
        __cxa_throw(v293, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }

      if (v16 <= 12)
      {
        if (v16 > 6)
        {
          if (v16 == 7)
          {
            v157 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v5);
            v159 = v158;
            v160 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
            v301.__r_.__value_.__r.__words[0] = v10;
            v301.__r_.__value_.__l.__size_ = v9;
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Bf16>(v157, v159, v160, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
          }

          else
          {
            if (v16 != 9)
            {
              goto LABEL_193;
            }

            v97 = MIL::IRTensorValue::GetDataView<signed char>(v5);
            v99 = v98;
            v100 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
            v301.__r_.__value_.__r.__words[0] = v10;
            v301.__r_.__value_.__l.__size_ = v9;
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,signed char>(v97, v99, v100, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
          }
        }

        else if (v16 == 4)
        {
          v153 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v5);
          v155 = v154;
          v156 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
          v301.__r_.__value_.__r.__words[0] = v10;
          v301.__r_.__value_.__l.__size_ = v9;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp16>(v153, v155, v156, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
        }

        else
        {
          if (v16 != 5)
          {
            goto LABEL_193;
          }

          v73 = MIL::IRTensorValue::GetDataView<float>(v5);
          v75 = v74;
          v76 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
          v301.__r_.__value_.__r.__words[0] = v10;
          v301.__r_.__value_.__l.__size_ = v9;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,float>(v73, v75, v76, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
        }
      }

      else if (v16 <= 19)
      {
        if (v16 == 13)
        {
          v173 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v5);
          v175 = v174;
          v176 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
          v301.__r_.__value_.__r.__words[0] = v10;
          v301.__r_.__value_.__l.__size_ = v9;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Int4>(v173, v175, v176, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
        }

        else
        {
          if (v16 != 14)
          {
            goto LABEL_193;
          }

          v109 = MIL::IRTensorValue::GetDataView<unsigned char>(v5);
          v111 = v110;
          v112 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
          v301.__r_.__value_.__r.__words[0] = v10;
          v301.__r_.__value_.__l.__size_ = v9;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,unsigned char>(v109, v111, v112, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
        }
      }

      else
      {
        switch(v16)
        {
          case 20:
            v185 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v5);
            v187 = v186;
            v188 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
            v301.__r_.__value_.__r.__words[0] = v10;
            v301.__r_.__value_.__l.__size_ = v9;
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::UInt4>(v185, v187, v188, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
            break;
          case 24:
            v193 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v5);
            v195 = v194;
            v196 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
            v301.__r_.__value_.__r.__words[0] = v10;
            v301.__r_.__value_.__l.__size_ = v9;
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E4M3FN>(v193, v195, v196, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
            break;
          case 25:
            v17 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v5);
            v19 = v18;
            v20 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v8);
            v301.__r_.__value_.__r.__words[0] = v10;
            v301.__r_.__value_.__l.__size_ = v9;
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E5M2>(v17, v19, v20, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
            break;
          default:
LABEL_193:
            v274 = v16;
            v275 = __cxa_allocate_exception(0x10uLL);
            MIL::IRDataTypeToString(v274, &v299);
            v276 = std::string::insert(&v299, 0, "Constexpr-BlockwiseShiftScale: Unsupported dType (");
            v277 = *&v276->__r_.__value_.__l.__data_;
            v300.__r_.__value_.__r.__words[2] = v276->__r_.__value_.__r.__words[2];
            *&v300.__r_.__value_.__l.__data_ = v277;
            v276->__r_.__value_.__l.__size_ = 0;
            v276->__r_.__value_.__r.__words[2] = 0;
            v276->__r_.__value_.__r.__words[0] = 0;
            v278 = std::string::append(&v300, ") for data.");
            v279 = *&v278->__r_.__value_.__l.__data_;
            v301.__r_.__value_.__r.__words[2] = v278->__r_.__value_.__r.__words[2];
            *&v301.__r_.__value_.__l.__data_ = v279;
            v278->__r_.__value_.__l.__size_ = 0;
            v278->__r_.__value_.__r.__words[2] = 0;
            v278->__r_.__value_.__r.__words[0] = 0;
            std::runtime_error::runtime_error(v275, &v301);
            __cxa_throw(v275, MEMORY[0x277D82760], MEMORY[0x277D82600]);
        }
      }

      if (v301.__r_.__value_.__l.__size_)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v301.__r_.__value_.__l.__size_);
      }

LABEL_164:
      if (__p)
      {
        v306 = __p;
        operator delete(__p);
      }

      if (v303)
      {
        v304 = v303;
        operator delete(v303);
      }

      if (v302.__r_.__value_.__r.__words[0])
      {
        v302.__r_.__value_.__l.__size_ = v302.__r_.__value_.__r.__words[0];
        operator delete(v302.__r_.__value_.__l.__data_);
      }

      if (v307.__r_.__value_.__r.__words[0])
      {
        v307.__r_.__value_.__l.__size_ = v307.__r_.__value_.__r.__words[0];
        operator delete(v307.__r_.__value_.__l.__data_);
      }

      if (v308.__r_.__value_.__r.__words[0])
      {
        v308.__r_.__value_.__l.__size_ = v308.__r_.__value_.__r.__words[0];
        operator delete(v308.__r_.__value_.__l.__data_);
      }

      MIL::IRTensorValueType::MakeBFloat16Value();
    }

    v21 = *(this + 1);
    v22 = *(this + 2);
    if (v22)
    {
      atomic_fetch_add_explicit((v22 + 8), 1uLL, memory_order_relaxed);
    }

    v24 = *(this + 3);
    v23 = *(this + 4);
    if (v23)
    {
      atomic_fetch_add_explicit((v23 + 8), 1uLL, memory_order_relaxed);
    }

    v26 = *(this + 5);
    v25 = *(this + 6);
    if (v25)
    {
      atomic_fetch_add_explicit((v25 + 8), 1uLL, memory_order_relaxed);
    }

    v27 = (*(*v21 + 32))(v21);
    v28 = (*(*v27 + 96))(v27);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v28, &v308);
    v29 = (*(*v24 + 32))(v24);
    v30 = (*(*v29 + 96))(v29);
    MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v30, &v307);
    MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::BlockwiseShiftScaleIndexConverter(&v302, &v308.__r_.__value_.__l.__data_, &v307);
    v31 = (*(*v21 + 32))(v21);
    v32 = (*(*v31 + 88))(v31);
    if (!v26)
    {
      if (v32 <= 12)
      {
        if (v32 > 6)
        {
          if (v32 == 7)
          {
            v201 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v21);
            v203 = v202;
            v204 = MIL::IRTensorValue::GetDataView<float>(v24);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Bf16>(v201, v203, v204, &v302.__r_.__value_.__l.__data_, &v298);
            goto LABEL_135;
          }

          if (v32 == 9)
          {
            v113 = MIL::IRTensorValue::GetDataView<signed char>(v21);
            v115 = v114;
            v116 = MIL::IRTensorValue::GetDataView<float>(v24);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,signed char>(v113, v115, v116, &v302.__r_.__value_.__l.__data_, &v298);
            goto LABEL_135;
          }
        }

        else
        {
          if (v32 == 4)
          {
            v197 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v21);
            v199 = v198;
            v200 = MIL::IRTensorValue::GetDataView<float>(v24);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp16>(v197, v199, v200, &v302.__r_.__value_.__l.__data_, &v298);
            goto LABEL_135;
          }

          if (v32 == 5)
          {
            v77 = MIL::IRTensorValue::GetDataView<float>(v21);
            v79 = v78;
            v80 = MIL::IRTensorValue::GetDataView<float>(v24);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,float>(v77, v79, v80, &v302.__r_.__value_.__l.__data_, &v298);
            goto LABEL_135;
          }
        }
      }

      else if (v32 <= 19)
      {
        if (v32 == 13)
        {
          v221 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v21);
          v223 = v222;
          v224 = MIL::IRTensorValue::GetDataView<float>(v24);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Int4>(v221, v223, v224, &v302.__r_.__value_.__l.__data_, &v298);
          goto LABEL_135;
        }

        if (v32 == 14)
        {
          v125 = MIL::IRTensorValue::GetDataView<unsigned char>(v21);
          v127 = v126;
          v128 = MIL::IRTensorValue::GetDataView<float>(v24);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,unsigned char>(v125, v127, v128, &v302.__r_.__value_.__l.__data_, &v298);
          goto LABEL_135;
        }
      }

      else
      {
        switch(v32)
        {
          case 25:
            v229 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v21);
            v231 = v230;
            v232 = MIL::IRTensorValue::GetDataView<float>(v24);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp8E5M2>(v229, v231, v232, &v302.__r_.__value_.__l.__data_, &v298);
            goto LABEL_135;
          case 24:
            v241 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v21);
            v243 = v242;
            v244 = MIL::IRTensorValue::GetDataView<float>(v24);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp8E4M3FN>(v241, v243, v244, &v302.__r_.__value_.__l.__data_, &v298);
            goto LABEL_135;
          case 20:
            v53 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v21);
            v55 = v54;
            v56 = MIL::IRTensorValue::GetDataView<float>(v24);
            MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::UInt4>(v53, v55, v56, &v302.__r_.__value_.__l.__data_, &v298);
            goto LABEL_135;
        }
      }

      v280 = v32;
      v281 = __cxa_allocate_exception(0x10uLL);
      MIL::IRDataTypeToString(v280, &v299);
      v282 = std::string::insert(&v299, 0, "Constexpr-BlockwiseShiftScale: Unsupported dType (");
      v283 = *&v282->__r_.__value_.__l.__data_;
      v300.__r_.__value_.__r.__words[2] = v282->__r_.__value_.__r.__words[2];
      *&v300.__r_.__value_.__l.__data_ = v283;
      v282->__r_.__value_.__l.__size_ = 0;
      v282->__r_.__value_.__r.__words[2] = 0;
      v282->__r_.__value_.__r.__words[0] = 0;
      v284 = std::string::append(&v300, ") for data.");
      v285 = *&v284->__r_.__value_.__l.__data_;
      v301.__r_.__value_.__r.__words[2] = v284->__r_.__value_.__r.__words[2];
      *&v301.__r_.__value_.__l.__data_ = v285;
      v284->__r_.__value_.__l.__size_ = 0;
      v284->__r_.__value_.__r.__words[2] = 0;
      v284->__r_.__value_.__r.__words[0] = 0;
      std::runtime_error::runtime_error(v281, &v301);
      __cxa_throw(v281, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }

    if (v32 <= 12)
    {
      if (v32 > 6)
      {
        if (v32 == 7)
        {
          v141 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v21);
          v143 = v142;
          v144 = MIL::IRTensorValue::GetDataView<float>(v24);
          v301.__r_.__value_.__r.__words[0] = v26;
          v301.__r_.__value_.__l.__size_ = v25;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Bf16>(v141, v143, v144, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
        }

        else
        {
          if (v32 != 9)
          {
            goto LABEL_191;
          }

          v89 = MIL::IRTensorValue::GetDataView<signed char>(v21);
          v91 = v90;
          v92 = MIL::IRTensorValue::GetDataView<float>(v24);
          v301.__r_.__value_.__r.__words[0] = v26;
          v301.__r_.__value_.__l.__size_ = v25;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,signed char>(v89, v91, v92, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
        }
      }

      else if (v32 == 4)
      {
        v137 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v21);
        v139 = v138;
        v140 = MIL::IRTensorValue::GetDataView<float>(v24);
        v301.__r_.__value_.__r.__words[0] = v26;
        v301.__r_.__value_.__l.__size_ = v25;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp16>(v137, v139, v140, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
      }

      else
      {
        if (v32 != 5)
        {
          goto LABEL_191;
        }

        v65 = MIL::IRTensorValue::GetDataView<float>(v21);
        v67 = v66;
        v68 = MIL::IRTensorValue::GetDataView<float>(v24);
        v301.__r_.__value_.__r.__words[0] = v26;
        v301.__r_.__value_.__l.__size_ = v25;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,float>(v65, v67, v68, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
      }
    }

    else if (v32 <= 19)
    {
      if (v32 == 13)
      {
        v161 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v21);
        v163 = v162;
        v164 = MIL::IRTensorValue::GetDataView<float>(v24);
        v301.__r_.__value_.__r.__words[0] = v26;
        v301.__r_.__value_.__l.__size_ = v25;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Int4>(v161, v163, v164, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
      }

      else
      {
        if (v32 != 14)
        {
          goto LABEL_191;
        }

        v101 = MIL::IRTensorValue::GetDataView<unsigned char>(v21);
        v103 = v102;
        v104 = MIL::IRTensorValue::GetDataView<float>(v24);
        v301.__r_.__value_.__r.__words[0] = v26;
        v301.__r_.__value_.__l.__size_ = v25;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,unsigned char>(v101, v103, v104, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
      }
    }

    else
    {
      switch(v32)
      {
        case 20:
          v169 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v21);
          v171 = v170;
          v172 = MIL::IRTensorValue::GetDataView<float>(v24);
          v301.__r_.__value_.__r.__words[0] = v26;
          v301.__r_.__value_.__l.__size_ = v25;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::UInt4>(v169, v171, v172, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
          break;
        case 24:
          v181 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v21);
          v183 = v182;
          v184 = MIL::IRTensorValue::GetDataView<float>(v24);
          v301.__r_.__value_.__r.__words[0] = v26;
          v301.__r_.__value_.__l.__size_ = v25;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp8E4M3FN>(v181, v183, v184, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
          break;
        case 25:
          v33 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v21);
          v35 = v34;
          v36 = MIL::IRTensorValue::GetDataView<float>(v24);
          v301.__r_.__value_.__r.__words[0] = v26;
          v301.__r_.__value_.__l.__size_ = v25;
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<float,MIL::Fp8E5M2>(v33, v35, v36, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
          break;
        default:
LABEL_191:
          v262 = v32;
          v263 = __cxa_allocate_exception(0x10uLL);
          MIL::IRDataTypeToString(v262, &v299);
          v264 = std::string::insert(&v299, 0, "Constexpr-BlockwiseShiftScale: Unsupported dType (");
          v265 = *&v264->__r_.__value_.__l.__data_;
          v300.__r_.__value_.__r.__words[2] = v264->__r_.__value_.__r.__words[2];
          *&v300.__r_.__value_.__l.__data_ = v265;
          v264->__r_.__value_.__l.__size_ = 0;
          v264->__r_.__value_.__r.__words[2] = 0;
          v264->__r_.__value_.__r.__words[0] = 0;
          v266 = std::string::append(&v300, ") for data.");
          v267 = *&v266->__r_.__value_.__l.__data_;
          v301.__r_.__value_.__r.__words[2] = v266->__r_.__value_.__r.__words[2];
          *&v301.__r_.__value_.__l.__data_ = v267;
          v266->__r_.__value_.__l.__size_ = 0;
          v266->__r_.__value_.__r.__words[2] = 0;
          v266->__r_.__value_.__r.__words[0] = 0;
          std::runtime_error::runtime_error(v263, &v301);
          __cxa_throw(v263, MEMORY[0x277D82760], MEMORY[0x277D82600]);
      }
    }

    if (v301.__r_.__value_.__l.__size_)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v301.__r_.__value_.__l.__size_);
    }

LABEL_135:
    if (__p)
    {
      v306 = __p;
      operator delete(__p);
    }

    if (v303)
    {
      v304 = v303;
      operator delete(v303);
    }

    if (v302.__r_.__value_.__r.__words[0])
    {
      v302.__r_.__value_.__l.__size_ = v302.__r_.__value_.__r.__words[0];
      operator delete(v302.__r_.__value_.__l.__data_);
    }

    if (v307.__r_.__value_.__r.__words[0])
    {
      v307.__r_.__value_.__l.__size_ = v307.__r_.__value_.__r.__words[0];
      operator delete(v307.__r_.__value_.__l.__data_);
    }

    if (v308.__r_.__value_.__r.__words[0])
    {
      v308.__r_.__value_.__l.__size_ = v308.__r_.__value_.__r.__words[0];
      operator delete(v308.__r_.__value_.__l.__data_);
    }

    MIL::IRTensorValueType::MakeFloat32Value();
  }

  v37 = *(this + 1);
  v38 = *(this + 2);
  if (v38)
  {
    atomic_fetch_add_explicit((v38 + 8), 1uLL, memory_order_relaxed);
  }

  v40 = *(this + 3);
  v39 = *(this + 4);
  if (v39)
  {
    atomic_fetch_add_explicit((v39 + 8), 1uLL, memory_order_relaxed);
  }

  v42 = *(this + 5);
  v41 = *(this + 6);
  if (v41)
  {
    atomic_fetch_add_explicit((v41 + 8), 1uLL, memory_order_relaxed);
  }

  v43 = (*(*v37 + 32))(v37);
  v44 = (*(*v43 + 96))(v43);
  MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v44, &v308);
  v45 = (*(*v40 + 32))(v40);
  v46 = (*(*v45 + 96))(v45);
  MIL::Operators::Common::Shared::ConstExprs::ShapeToVector(v46, &v307);
  MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::BlockwiseShiftScaleIndexConverter(&v302, &v308.__r_.__value_.__l.__data_, &v307);
  v47 = (*(*v37 + 32))(v37);
  v48 = (*(*v47 + 88))(v47);
  if (!v42)
  {
    if (v48 <= 12)
    {
      if (v48 > 6)
      {
        if (v48 == 7)
        {
          v209 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v37);
          v211 = v210;
          v212 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Bf16>(v209, v211, v212, &v302.__r_.__value_.__l.__data_, &v298);
          goto LABEL_150;
        }

        if (v48 == 9)
        {
          v117 = MIL::IRTensorValue::GetDataView<signed char>(v37);
          v119 = v118;
          v120 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,signed char>(v117, v119, v120, &v302.__r_.__value_.__l.__data_, &v298);
          goto LABEL_150;
        }
      }

      else
      {
        if (v48 == 4)
        {
          v205 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v37);
          v207 = v206;
          v208 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp16>(v205, v207, v208, &v302.__r_.__value_.__l.__data_, &v298);
          goto LABEL_150;
        }

        if (v48 == 5)
        {
          v81 = MIL::IRTensorValue::GetDataView<float>(v37);
          v83 = v82;
          v84 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,float>(v81, v83, v84, &v302.__r_.__value_.__l.__data_, &v298);
          goto LABEL_150;
        }
      }
    }

    else if (v48 <= 19)
    {
      if (v48 == 13)
      {
        v225 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v37);
        v227 = v226;
        v228 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Int4>(v225, v227, v228, &v302.__r_.__value_.__l.__data_, &v298);
        goto LABEL_150;
      }

      if (v48 == 14)
      {
        v129 = MIL::IRTensorValue::GetDataView<unsigned char>(v37);
        v131 = v130;
        v132 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,unsigned char>(v129, v131, v132, &v302.__r_.__value_.__l.__data_, &v298);
        goto LABEL_150;
      }
    }

    else
    {
      switch(v48)
      {
        case 25:
          v237 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v37);
          v239 = v238;
          v240 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E5M2>(v237, v239, v240, &v302.__r_.__value_.__l.__data_, &v298);
          goto LABEL_150;
        case 24:
          v249 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v37);
          v251 = v250;
          v252 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E4M3FN>(v249, v251, v252, &v302.__r_.__value_.__l.__data_, &v298);
          goto LABEL_150;
        case 20:
          v57 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v37);
          v59 = v58;
          v60 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
          MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::UInt4>(v57, v59, v60, &v302.__r_.__value_.__l.__data_, &v298);
          goto LABEL_150;
      }
    }

    v286 = v48;
    v287 = __cxa_allocate_exception(0x10uLL);
    MIL::IRDataTypeToString(v286, &v299);
    v288 = std::string::insert(&v299, 0, "Constexpr-BlockwiseShiftScale: Unsupported dType (");
    v289 = *&v288->__r_.__value_.__l.__data_;
    v300.__r_.__value_.__r.__words[2] = v288->__r_.__value_.__r.__words[2];
    *&v300.__r_.__value_.__l.__data_ = v289;
    v288->__r_.__value_.__l.__size_ = 0;
    v288->__r_.__value_.__r.__words[2] = 0;
    v288->__r_.__value_.__r.__words[0] = 0;
    v290 = std::string::append(&v300, ") for data.");
    v291 = *&v290->__r_.__value_.__l.__data_;
    v301.__r_.__value_.__r.__words[2] = v290->__r_.__value_.__r.__words[2];
    *&v301.__r_.__value_.__l.__data_ = v291;
    v290->__r_.__value_.__l.__size_ = 0;
    v290->__r_.__value_.__r.__words[2] = 0;
    v290->__r_.__value_.__r.__words[0] = 0;
    std::runtime_error::runtime_error(v287, &v301);
    __cxa_throw(v287, MEMORY[0x277D82760], MEMORY[0x277D82600]);
  }

  if (v48 <= 12)
  {
    if (v48 > 6)
    {
      if (v48 == 7)
      {
        v149 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(v37);
        v151 = v150;
        v152 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
        v301.__r_.__value_.__r.__words[0] = v42;
        v301.__r_.__value_.__l.__size_ = v41;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Bf16>(v149, v151, v152, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
      }

      else
      {
        if (v48 != 9)
        {
          goto LABEL_192;
        }

        v93 = MIL::IRTensorValue::GetDataView<signed char>(v37);
        v95 = v94;
        v96 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
        v301.__r_.__value_.__r.__words[0] = v42;
        v301.__r_.__value_.__l.__size_ = v41;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,signed char>(v93, v95, v96, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
      }
    }

    else if (v48 == 4)
    {
      v145 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v37);
      v147 = v146;
      v148 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
      v301.__r_.__value_.__r.__words[0] = v42;
      v301.__r_.__value_.__l.__size_ = v41;
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp16>(v145, v147, v148, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
    }

    else
    {
      if (v48 != 5)
      {
        goto LABEL_192;
      }

      v69 = MIL::IRTensorValue::GetDataView<float>(v37);
      v71 = v70;
      v72 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
      v301.__r_.__value_.__r.__words[0] = v42;
      v301.__r_.__value_.__l.__size_ = v41;
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,float>(v69, v71, v72, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
    }
  }

  else if (v48 <= 19)
  {
    if (v48 == 13)
    {
      v165 = MIL::IRTensorValue::GetDataView<MIL::Int4>(v37);
      v167 = v166;
      v168 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
      v301.__r_.__value_.__r.__words[0] = v42;
      v301.__r_.__value_.__l.__size_ = v41;
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Int4>(v165, v167, v168, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
    }

    else
    {
      if (v48 != 14)
      {
        goto LABEL_192;
      }

      v105 = MIL::IRTensorValue::GetDataView<unsigned char>(v37);
      v107 = v106;
      v108 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
      v301.__r_.__value_.__r.__words[0] = v42;
      v301.__r_.__value_.__l.__size_ = v41;
      MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,unsigned char>(v105, v107, v108, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
    }
  }

  else
  {
    switch(v48)
    {
      case 20:
        v177 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(v37);
        v179 = v178;
        v180 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
        v301.__r_.__value_.__r.__words[0] = v42;
        v301.__r_.__value_.__l.__size_ = v41;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::UInt4>(v177, v179, v180, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
        break;
      case 24:
        v189 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(v37);
        v191 = v190;
        v192 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
        v301.__r_.__value_.__r.__words[0] = v42;
        v301.__r_.__value_.__l.__size_ = v41;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E4M3FN>(v189, v191, v192, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
        break;
      case 25:
        v49 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(v37);
        v51 = v50;
        v52 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(v40);
        v301.__r_.__value_.__r.__words[0] = v42;
        v301.__r_.__value_.__l.__size_ = v41;
        MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E5M2>(v49, v51, v52, &v301.__r_.__value_.__l.__data_, &v302.__r_.__value_.__l.__data_, &v298);
        break;
      default:
LABEL_192:
        v268 = v48;
        v269 = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v268, &v299);
        v270 = std::string::insert(&v299, 0, "Constexpr-BlockwiseShiftScale: Unsupported dType (");
        v271 = *&v270->__r_.__value_.__l.__data_;
        v300.__r_.__value_.__r.__words[2] = v270->__r_.__value_.__r.__words[2];
        *&v300.__r_.__value_.__l.__data_ = v271;
        v270->__r_.__value_.__l.__size_ = 0;
        v270->__r_.__value_.__r.__words[2] = 0;
        v270->__r_.__value_.__r.__words[0] = 0;
        v272 = std::string::append(&v300, ") for data.");
        v273 = *&v272->__r_.__value_.__l.__data_;
        v301.__r_.__value_.__r.__words[2] = v272->__r_.__value_.__r.__words[2];
        *&v301.__r_.__value_.__l.__data_ = v273;
        v272->__r_.__value_.__l.__size_ = 0;
        v272->__r_.__value_.__r.__words[2] = 0;
        v272->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(v269, &v301);
        __cxa_throw(v269, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  if (v301.__r_.__value_.__l.__size_)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v301.__r_.__value_.__l.__size_);
  }

LABEL_150:
  if (__p)
  {
    v306 = __p;
    operator delete(__p);
  }

  if (v303)
  {
    v304 = v303;
    operator delete(v303);
  }

  if (v302.__r_.__value_.__r.__words[0])
  {
    v302.__r_.__value_.__l.__size_ = v302.__r_.__value_.__r.__words[0];
    operator delete(v302.__r_.__value_.__l.__data_);
  }

  if (v307.__r_.__value_.__r.__words[0])
  {
    v307.__r_.__value_.__l.__size_ = v307.__r_.__value_.__r.__words[0];
    operator delete(v307.__r_.__value_.__l.__data_);
  }

  if (v308.__r_.__value_.__r.__words[0])
  {
    v308.__r_.__value_.__l.__size_ = v308.__r_.__value_.__r.__words[0];
    operator delete(v308.__r_.__value_.__l.__data_);
  }

  MIL::IRTensorValueType::MakeFloat16Value();
}

void sub_218382CAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, void *a20, uint64_t a21, int a22, __int16 a23, char a24, char a25, uint64_t a26, void *__p, uint64_t a28, int a29, __int16 a30, char a31, char a32, uint64_t a33, void *a34, uint64_t a35, int a36, __int16 a37, char a38, char a39)
{
  if (a32 < 0)
  {
    operator delete(__p);
  }

  if (a25 < 0)
  {
    operator delete(a20);
  }

  if (a19 < 0)
  {
    operator delete(a14);
    if ((v43 & 1) == 0)
    {
LABEL_10:
      v46 = *(v44 - 136);
      if (v46)
      {
        *(v44 - 128) = v46;
        operator delete(v46);
      }

      v47 = *(v44 - 112);
      if (v47)
      {
        *(v44 - 104) = v47;
        operator delete(v47);
      }

      if (v41)
      {
        std::__shared_weak_count::__release_shared[abi:ne200100](v41);
        if (!v40)
        {
LABEL_16:
          if (!v39)
          {
            goto LABEL_18;
          }

          goto LABEL_17;
        }
      }

      else if (!v40)
      {
        goto LABEL_16;
      }

      std::__shared_weak_count::__release_shared[abi:ne200100](v40);
      if (!v39)
      {
LABEL_18:
        _Unwind_Resume(a1);
      }

LABEL_17:
      std::__shared_weak_count::__release_shared[abi:ne200100](v39);
      goto LABEL_18;
    }
  }

  else if (!v43)
  {
    goto LABEL_10;
  }

  __cxa_free_exception(v42);
  goto LABEL_10;
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::~BlockwiseShiftScale(MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale *this)
{
  v2 = *(this + 1);
  *(this + 1) = 0;
  if (v2)
  {
    MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::~Impl(v2);
    MEMORY[0x21CEAFEA0]();
  }

  MIL::AbstractConstExpr::~AbstractConstExpr(this);
}

{
  MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::~BlockwiseShiftScale(this);

  JUMPOUT(0x21CEAFEA0);
}

void sub_21838318C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, std::__shared_weak_count *a10)
{
  if (a10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a10);
  }

  MIL::Operators::Common::ios16::ConstExprs::AffineDequantize::Impl::Impl((v12 | 8), (v13 | 8));
  MEMORY[0x21CEAFEA0](v11, v10);
  _Unwind_Resume(a1);
}

void MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::ComputeOutput(MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale *this, uint64_t a2)
{
  if (!a2)
  {
    v3 = *(this + 1);

    MIL::Operators::Common::ios18::ConstExprs::BlockwiseShiftScale::Impl::ComputeOutput(v3);
  }

  exception = __cxa_allocate_exception(0x10uLL);
  std::runtime_error::runtime_error(exception, "BlockwiseLutToDense has a single output.");
  __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
}

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::UInt4>@<X0>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v56);
            Int = MIL::UInt4::GetInt(&v94);
            Float = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, Float * (Int - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v33);
            v35 = MIL::UInt4::GetInt(&v94);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v48);
          v50 = MIL::UInt4::GetInt(&v94);
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v26);
          v28 = MIL::UInt4::GetInt(&v94);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v66);
          v68 = MIL::UInt4::GetInt(&v94);
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          v70 = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(v70, v69 * (v68 - v70));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v40);
          v42 = MIL::UInt4::GetInt(&v94);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v73);
            v75 = MIL::UInt4::GetInt(&v94);
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v81);
            v83 = MIL::UInt4::GetInt(&v94);
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v19);
            v21 = MIL::UInt4::GetInt(&v94);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_2183839A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Int4>@<X0>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v56);
            Int = MIL::Int4::GetInt(&v94);
            Float = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, Float * (Int - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v33);
            v35 = MIL::Int4::GetInt(&v94);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v48);
          v50 = MIL::Int4::GetInt(&v94);
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v26);
          v28 = MIL::Int4::GetInt(&v94);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v66);
          v68 = MIL::Int4::GetInt(&v94);
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          v70 = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(v70, v69 * (v68 - v70));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v40);
          v42 = MIL::Int4::GetInt(&v94);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v73);
            v75 = MIL::Int4::GetInt(&v94);
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v81);
            v83 = MIL::Int4::GetInt(&v94);
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v19);
            v21 = MIL::Int4::GetInt(&v94);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_2183841D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,signed char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v58 = *(a1 + v56);
            Float = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, Float * (v58 - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = *(a1 + v33);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = *(a1 + v48);
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = *(a1 + v26);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = *(a1 + v66);
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = *(a1 + v40);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = *(a1 + v73);
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = *(a1 + v81);
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = *(a1 + v19);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218384918(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,unsigned char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v13 = (*(**a4 + 32))();
  v14 = (*(*v13 + 88))(v13);
  v15 = v14;
  if (v14 <= 12)
  {
    if (v14 > 6)
    {
      if (v14 == 7)
      {
        v54 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v55 = 0;
          do
          {
            v56 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v55);
            LOBYTE(v6) = *(a1 + v55);
            Float = MIL::Bf16::GetFloat((a3 + 2 * v56));
            v58 = MIL::Bf16::GetFloat((v54 + 2 * v56));
            result = MIL::Bf16::FromFloat(v59, Float * (v6 - v58));
            v60 = *a6;
            *(*a6 + 2 * v55++) = result;
          }

          while (v55 < (a6[1] - v60) >> 1);
        }
      }

      else
      {
        if (v14 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = *(a1 + v33);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v14 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          LOBYTE(v6) = *(a1 + v48);
          v50 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v51 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v52, v50 * (v6 - v51));
          v53 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v53) >> 1);
      }
    }

    else
    {
      if (v14 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = *(a1 + v26);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v14 <= 19)
  {
    if (v14 == 13)
    {
      v61 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v63 = v62;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v64 = 0;
        do
        {
          v65 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v64);
          LOBYTE(v6) = *(a1 + v64);
          v66 = MIL::Bf16::GetFloat((a3 + 2 * v65));
          v90.__r_.__value_.__r.__words[0] = v61;
          v90.__r_.__value_.__l.__size_ = v63;
          v89.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v90, v65);
          Int = MIL::Int4::GetInt(&v89);
          result = MIL::Bf16::FromFloat(Int, v66 * (v6 - Int));
          v68 = *a6;
          *(*a6 + 2 * v64++) = result;
        }

        while (v64 < (a6[1] - v68) >> 1);
      }
    }

    else
    {
      if (v14 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = *(a1 + v40);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v14)
    {
      case 25:
        v69 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v70 = 0;
          do
          {
            v71 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v70);
            LOBYTE(v6) = *(a1 + v70);
            v72 = MIL::Bf16::GetFloat((a3 + 2 * v71));
            v73 = MIL::Fp8E5M2::GetFloat((v69 + v71));
            result = MIL::Bf16::FromFloat(v74, v72 * (v6 - v73));
            v75 = *a6;
            *(*a6 + 2 * v70++) = result;
          }

          while (v70 < (a6[1] - v75) >> 1);
        }

        break;
      case 24:
        v76 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v77 = 0;
          do
          {
            v78 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v77);
            LOBYTE(v6) = *(a1 + v77);
            v79 = MIL::Bf16::GetFloat((a3 + 2 * v78));
            v80 = MIL::Fp8E4M3FN::GetFloat((v76 + v78));
            result = MIL::Bf16::FromFloat(v81, v79 * (v6 - v80));
            v82 = *a6;
            *(*a6 + 2 * v77++) = result;
          }

          while (v77 < (a6[1] - v82) >> 1);
        }

        break;
      case 20:
        v16 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v18 = v17;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v20 = 0;
          do
          {
            v21 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v20);
            LOBYTE(v6) = *(a1 + v20);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v21));
            v90.__r_.__value_.__r.__words[0] = v16;
            v90.__r_.__value_.__l.__size_ = v18;
            v89.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v90, v21);
            v23 = MIL::UInt4::GetInt(&v89);
            result = MIL::Bf16::FromFloat(v23, v22 * (v6 - v23));
            v24 = *a6;
            *(*a6 + 2 * v20++) = result;
          }

          while (v20 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v15, &v88);
        v84 = std::string::insert(&v88, 0, "Unsupported dType (");
        v85 = *&v84->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v85;
        v84->__r_.__value_.__l.__size_ = 0;
        v84->__r_.__value_.__r.__words[2] = 0;
        v84->__r_.__value_.__r.__words[0] = 0;
        v86 = std::string::append(&v89, ") for offset.");
        v87 = *&v86->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = v87;
        v86->__r_.__value_.__l.__size_ = 0;
        v86->__r_.__value_.__r.__words[2] = 0;
        v86->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v90);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218385044(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E4M3FN>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Fp8E4M3FN::GetFloat((a1 + v56));
            v59 = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Fp8E4M3FN::GetFloat((a1 + v33));
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Fp8E4M3FN::GetFloat((a1 + v48));
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Fp8E4M3FN::GetFloat((a1 + v26));
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Fp8E4M3FN::GetFloat((a1 + v66));
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Fp8E4M3FN::GetFloat((a1 + v40));
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Fp8E4M3FN::GetFloat((a1 + v73));
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Fp8E4M3FN::GetFloat((a1 + v81));
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Fp8E4M3FN::GetFloat((a1 + v19));
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218385794(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E5M2>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Fp8E5M2::GetFloat((a1 + v56));
            v59 = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Fp8E5M2::GetFloat((a1 + v33));
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Fp8E5M2::GetFloat((a1 + v48));
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Fp8E5M2::GetFloat((a1 + v26));
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Fp8E5M2::GetFloat((a1 + v66));
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Fp8E5M2::GetFloat((a1 + v40));
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Fp8E5M2::GetFloat((a1 + v73));
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Fp8E5M2::GetFloat((a1 + v81));
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Fp8E5M2::GetFloat((a1 + v19));
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218385EE4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Bf16>@<X0>(MIL::Bf16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Bf16::GetFloat(a1);
            v59 = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
            a1 = (a1 + 2);
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Bf16::GetFloat(a1);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
            a1 = (a1 + 2);
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Bf16::GetFloat(a1);
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
          a1 = (a1 + 2);
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Bf16::GetFloat(a1);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
          a1 = (a1 + 2);
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Bf16::GetFloat(a1);
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
          a1 = (a1 + 2);
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Bf16::GetFloat(a1);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
          a1 = (a1 + 2);
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Bf16::GetFloat(a1);
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
            a1 = (a1 + 2);
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Bf16::GetFloat(a1);
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
            a1 = (a1 + 2);
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Bf16::GetFloat(a1);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
            a1 = (a1 + 2);
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218386658(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp16>@<X0>(MIL::Fp16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Fp16::GetFloat(a1);
            v59 = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
            a1 = (a1 + 2);
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Fp16::GetFloat(a1);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
            a1 = (a1 + 2);
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Fp16::GetFloat(a1);
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
          a1 = (a1 + 2);
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Fp16::GetFloat(a1);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
          a1 = (a1 + 2);
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Fp16::GetFloat(a1);
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
          a1 = (a1 + 2);
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Fp16::GetFloat(a1);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
          a1 = (a1 + 2);
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Fp16::GetFloat(a1);
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
            a1 = (a1 + 2);
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Fp16::GetFloat(a1);
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
            a1 = (a1 + 2);
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Fp16::GetFloat(a1);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
            a1 = (a1 + 2);
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218386DCC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v58 = *(a1 + 4 * v56);
            Float = MIL::Bf16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Bf16::FromFloat(v61, Float * (v58 - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = *(a1 + 4 * v33);
            v36 = MIL::Bf16::GetFloat((a3 + 2 * v34));
            result = MIL::Bf16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = *(a1 + 4 * v48);
          v51 = MIL::Bf16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Bf16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = *(a1 + 4 * v26);
          v29 = MIL::Bf16::GetFloat((a3 + 2 * v27));
          result = MIL::Bf16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = *(a1 + 4 * v66);
          v69 = MIL::Bf16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Bf16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = *(a1 + 4 * v40);
          v43 = MIL::Bf16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Bf16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = *(a1 + 4 * v73);
            v76 = MIL::Bf16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Bf16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = *(a1 + 4 * v81);
            v84 = MIL::Bf16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Bf16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Bf16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = *(a1 + 4 * v19);
            v22 = MIL::Bf16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Bf16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_2183874D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::UInt4>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v11 = 0;
    do
    {
      v12 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v11);
      v19[0] = a1;
      v19[1] = a2;
      v18 = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(v19, v11);
      Int = MIL::UInt4::GetInt(&v18);
      Float = MIL::Bf16::GetFloat((a3 + 2 * v12));
      result = MIL::Bf16::FromFloat(v15, Float * Int);
      v16 = *a5;
      v17 = a5[1];
      *(*a5 + 2 * v11++) = result;
    }

    while (v11 < (v17 - v16) >> 1);
  }

  return result;
}

void sub_218387670(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Int4>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v11 = 0;
    do
    {
      v12 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v11);
      v19[0] = a1;
      v19[1] = a2;
      v18 = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(v19, v11);
      Int = MIL::Int4::GetInt(&v18);
      Float = MIL::Bf16::GetFloat((a3 + 2 * v12));
      result = MIL::Bf16::FromFloat(v15, Float * Int);
      v16 = *a5;
      v17 = a5[1];
      *(*a5 + 2 * v11++) = result;
    }

    while (v11 < (v17 - v16) >> 1);
  }

  return result;
}

void sub_218387754(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,signed char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      v12 = *(a1 + v10);
      Float = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, Float * v12);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_218387808(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,unsigned char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      v12 = *(a1 + v10);
      Float = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, Float * v12);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_2183878B8(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E4M3FN>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      Float = MIL::Fp8E4M3FN::GetFloat((a1 + v10));
      v13 = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, Float * v13);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_218387978(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp8E5M2>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      Float = MIL::Fp8E5M2::GetFloat((a1 + v10));
      v13 = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, Float * v13);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_218387A38(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Bf16>@<X0>(MIL::Bf16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      Float = MIL::Bf16::GetFloat(a1);
      v13 = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, Float * v13);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
      a1 = (a1 + 2);
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_218387AFC(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,MIL::Fp16>@<X0>(MIL::Fp16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      Float = MIL::Fp16::GetFloat(a1);
      v13 = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, Float * v13);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
      a1 = (a1 + 2);
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_218387BC0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Bf16,float>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char **a4@<X4>, uint64_t *a5@<X8>)
{
  result = std::vector<MIL::Bf16>::vector[abi:ne200100](a5, a2);
  if (a5[1] != *a5)
  {
    v10 = 0;
    do
    {
      v11 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a4, v10);
      v12 = *(a1 + 4 * v10);
      Float = MIL::Bf16::GetFloat((a3 + 2 * v11));
      result = MIL::Bf16::FromFloat(v14, v12 * Float);
      v15 = *a5;
      v16 = a5[1];
      *(*a5 + 2 * v10++) = result;
    }

    while (v10 < (v16 - v15) >> 1);
  }

  return result;
}

void sub_218387C74(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::BlockwiseShiftScaleIndexConverter(uint64_t *a1, char **a2, unint64_t **a3)
{
  MIL::Operators::Common::Shared::ConstExprs::GetBlockSizes(a2, a3, a1);
  MIL::Operators::Common::Shared::ConstExprs::GetStrides(a2, a1 + 3);
  MIL::Operators::Common::Shared::ConstExprs::GetStrides(a3, a1 + 6);
  return a1;
}

void sub_218387CF0(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 24);
  if (v3)
  {
    *(v1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

uint64_t MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(char **this, unint64_t a2)
{
  MIL::Operators::Common::Shared::ConstExprs::UnravelIndex(a2, this + 3, v14);
  std::vector<unsigned long>::vector[abi:ne200100](&__p, (this[7] - this[6]) >> 3);
  v3 = __p;
  if (v13 != __p)
  {
    v4 = (v13 - __p) >> 3;
    v5 = v14[0];
    v6 = *this;
    if (v4 <= 1)
    {
      v4 = 1;
    }

    do
    {
      v8 = *v5++;
      v7 = v8;
      v9 = *v6;
      v6 += 8;
      *v3++ = v7 / v9;
      --v4;
    }

    while (v4);
  }

  v10 = MIL::Operators::Common::Shared::ConstExprs::RavelIndex(&__p, (this + 6));
  if (__p)
  {
    v13 = __p;
    operator delete(__p);
  }

  if (v14[0])
  {
    v14[1] = v14[0];
    operator delete(v14[0]);
  }

  return v10;
}

void sub_218387DE4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a12)
  {
    operator delete(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::UInt4>@<X0>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v56);
            Int = MIL::UInt4::GetInt(&v94);
            Float = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, Float * (Int - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v33);
            v35 = MIL::UInt4::GetInt(&v94);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v48);
          v50 = MIL::UInt4::GetInt(&v94);
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v26);
          v28 = MIL::UInt4::GetInt(&v94);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v66);
          v68 = MIL::UInt4::GetInt(&v94);
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          v70 = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(v70, v69 * (v68 - v70));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v40);
          v42 = MIL::UInt4::GetInt(&v94);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v73);
            v75 = MIL::UInt4::GetInt(&v94);
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v81);
            v83 = MIL::UInt4::GetInt(&v94);
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v19);
            v21 = MIL::UInt4::GetInt(&v94);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218388570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Int4>@<X0>(std::string::size_type a1@<X0>, std::string::size_type a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v56);
            Int = MIL::Int4::GetInt(&v94);
            Float = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, Float * (Int - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v33);
            v35 = MIL::Int4::GetInt(&v94);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v48);
          v50 = MIL::Int4::GetInt(&v94);
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v26);
          v28 = MIL::Int4::GetInt(&v94);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v66);
          v68 = MIL::Int4::GetInt(&v94);
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          v70 = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(v70, v69 * (v68 - v70));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v95.__r_.__value_.__r.__words[0] = a1;
          v95.__r_.__value_.__l.__size_ = a2;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v40);
          v42 = MIL::Int4::GetInt(&v94);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v73);
            v75 = MIL::Int4::GetInt(&v94);
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v81);
            v83 = MIL::Int4::GetInt(&v94);
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v95.__r_.__value_.__r.__words[0] = a1;
            v95.__r_.__value_.__l.__size_ = a2;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v19);
            v21 = MIL::Int4::GetInt(&v94);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218388DA0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,signed char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            v58 = *(a1 + v56);
            Float = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, Float * (v58 - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = *(a1 + v33);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = *(a1 + v48);
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = *(a1 + v26);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = *(a1 + v66);
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = *(a1 + v40);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = *(a1 + v73);
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = *(a1 + v81);
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = *(a1 + v19);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_2183894E0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,unsigned char>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v13 = (*(**a4 + 32))();
  v14 = (*(*v13 + 88))(v13);
  v15 = v14;
  if (v14 <= 12)
  {
    if (v14 > 6)
    {
      if (v14 == 7)
      {
        v54 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v55 = 0;
          do
          {
            v56 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v55);
            LOBYTE(v6) = *(a1 + v55);
            Float = MIL::Fp16::GetFloat((a3 + 2 * v56));
            v58 = MIL::Bf16::GetFloat((v54 + 2 * v56));
            result = MIL::Fp16::FromFloat(v59, Float * (v6 - v58));
            v60 = *a6;
            *(*a6 + 2 * v55++) = result;
          }

          while (v55 < (a6[1] - v60) >> 1);
        }
      }

      else
      {
        if (v14 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = *(a1 + v33);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v14 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          LOBYTE(v6) = *(a1 + v48);
          v50 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v51 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v52, v50 * (v6 - v51));
          v53 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v53) >> 1);
      }
    }

    else
    {
      if (v14 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = *(a1 + v26);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v14 <= 19)
  {
    if (v14 == 13)
    {
      v61 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v63 = v62;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v64 = 0;
        do
        {
          v65 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v64);
          LOBYTE(v6) = *(a1 + v64);
          v66 = MIL::Fp16::GetFloat((a3 + 2 * v65));
          v90.__r_.__value_.__r.__words[0] = v61;
          v90.__r_.__value_.__l.__size_ = v63;
          v89.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v90, v65);
          Int = MIL::Int4::GetInt(&v89);
          result = MIL::Fp16::FromFloat(Int, v66 * (v6 - Int));
          v68 = *a6;
          *(*a6 + 2 * v64++) = result;
        }

        while (v64 < (a6[1] - v68) >> 1);
      }
    }

    else
    {
      if (v14 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = *(a1 + v40);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v14)
    {
      case 25:
        v69 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v70 = 0;
          do
          {
            v71 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v70);
            LOBYTE(v6) = *(a1 + v70);
            v72 = MIL::Fp16::GetFloat((a3 + 2 * v71));
            v73 = MIL::Fp8E5M2::GetFloat((v69 + v71));
            result = MIL::Fp16::FromFloat(v74, v72 * (v6 - v73));
            v75 = *a6;
            *(*a6 + 2 * v70++) = result;
          }

          while (v70 < (a6[1] - v75) >> 1);
        }

        break;
      case 24:
        v76 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v77 = 0;
          do
          {
            v78 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v77);
            LOBYTE(v6) = *(a1 + v77);
            v79 = MIL::Fp16::GetFloat((a3 + 2 * v78));
            v80 = MIL::Fp8E4M3FN::GetFloat((v76 + v78));
            result = MIL::Fp16::FromFloat(v81, v79 * (v6 - v80));
            v82 = *a6;
            *(*a6 + 2 * v77++) = result;
          }

          while (v77 < (a6[1] - v82) >> 1);
        }

        break;
      case 20:
        v16 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v18 = v17;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v20 = 0;
          do
          {
            v21 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v20);
            LOBYTE(v6) = *(a1 + v20);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v21));
            v90.__r_.__value_.__r.__words[0] = v16;
            v90.__r_.__value_.__l.__size_ = v18;
            v89.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v90, v21);
            v23 = MIL::UInt4::GetInt(&v89);
            result = MIL::Fp16::FromFloat(v23, v22 * (v6 - v23));
            v24 = *a6;
            *(*a6 + 2 * v20++) = result;
          }

          while (v20 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v15, &v88);
        v84 = std::string::insert(&v88, 0, "Unsupported dType (");
        v85 = *&v84->__r_.__value_.__l.__data_;
        v89.__r_.__value_.__r.__words[2] = v84->__r_.__value_.__r.__words[2];
        *&v89.__r_.__value_.__l.__data_ = v85;
        v84->__r_.__value_.__l.__size_ = 0;
        v84->__r_.__value_.__r.__words[2] = 0;
        v84->__r_.__value_.__r.__words[0] = 0;
        v86 = std::string::append(&v89, ") for offset.");
        v87 = *&v86->__r_.__value_.__l.__data_;
        v90.__r_.__value_.__r.__words[2] = v86->__r_.__value_.__r.__words[2];
        *&v90.__r_.__value_.__l.__data_ = v87;
        v86->__r_.__value_.__l.__size_ = 0;
        v86->__r_.__value_.__r.__words[2] = 0;
        v86->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v90);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_218389C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E4M3FN>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Fp8E4M3FN::GetFloat((a1 + v56));
            v59 = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Fp8E4M3FN::GetFloat((a1 + v33));
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Fp8E4M3FN::GetFloat((a1 + v48));
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Fp8E4M3FN::GetFloat((a1 + v26));
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Fp8E4M3FN::GetFloat((a1 + v66));
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Fp8E4M3FN::GetFloat((a1 + v40));
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Fp8E4M3FN::GetFloat((a1 + v73));
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Fp8E4M3FN::GetFloat((a1 + v81));
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Fp8E4M3FN::GetFloat((a1 + v19));
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_21838A35C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp8E5M2>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Fp8E5M2::GetFloat((a1 + v56));
            v59 = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Fp8E5M2::GetFloat((a1 + v33));
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Fp8E5M2::GetFloat((a1 + v48));
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Fp8E5M2::GetFloat((a1 + v26));
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Fp8E5M2::GetFloat((a1 + v66));
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Fp8E5M2::GetFloat((a1 + v40));
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Fp8E5M2::GetFloat((a1 + v73));
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Fp8E5M2::GetFloat((a1 + v81));
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Fp8E5M2::GetFloat((a1 + v19));
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_21838AAAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Bf16>@<X0>(MIL::Bf16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Bf16::GetFloat(a1);
            v59 = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
            a1 = (a1 + 2);
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Bf16::GetFloat(a1);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
            a1 = (a1 + 2);
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Bf16::GetFloat(a1);
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
          a1 = (a1 + 2);
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Bf16::GetFloat(a1);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
          a1 = (a1 + 2);
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Bf16::GetFloat(a1);
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
          a1 = (a1 + 2);
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Bf16::GetFloat(a1);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
          a1 = (a1 + 2);
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Bf16::GetFloat(a1);
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
            a1 = (a1 + 2);
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Bf16::GetFloat(a1);
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
            a1 = (a1 + 2);
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Bf16::GetFloat(a1);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
            a1 = (a1 + 2);
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}

void sub_21838B220(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28)
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

uint64_t *MIL::Operators::Common::Shared::ConstExprs::EvaluateBlockwiseShiftScale<MIL::Fp16,MIL::Fp16>@<X0>(MIL::Fp16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void **a4@<X4>, char **a5@<X5>, uint64_t *a6@<X8>)
{
  v12 = (*(**a4 + 32))();
  v13 = (*(*v12 + 88))(v12);
  v14 = v13;
  if (v13 <= 12)
  {
    if (v13 > 6)
    {
      if (v13 == 7)
      {
        v55 = MIL::IRTensorValue::GetDataView<MIL::Bf16>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v56 = 0;
          do
          {
            v57 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v56);
            Float = MIL::Fp16::GetFloat(a1);
            v59 = MIL::Fp16::GetFloat((a3 + 2 * v57));
            v60 = MIL::Bf16::GetFloat((v55 + 2 * v57));
            result = MIL::Fp16::FromFloat(v61, v59 * (Float - v60));
            v62 = *a6;
            *(*a6 + 2 * v56++) = result;
            a1 = (a1 + 2);
          }

          while (v56 < (a6[1] - v62) >> 1);
        }
      }

      else
      {
        if (v13 != 9)
        {
          goto LABEL_49;
        }

        Data = MIL::IRTensorValue::GetDataView<signed char>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v33 = 0;
          do
          {
            v34 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v33);
            v35 = MIL::Fp16::GetFloat(a1);
            v36 = MIL::Fp16::GetFloat((a3 + 2 * v34));
            result = MIL::Fp16::FromFloat(v37, v36 * (v35 - *(Data + v34)));
            v38 = *a6;
            *(*a6 + 2 * v33++) = result;
            a1 = (a1 + 2);
          }

          while (v33 < (a6[1] - v38) >> 1);
        }
      }
    }

    else if (v13 == 4)
    {
      v47 = MIL::IRTensorValue::GetDataView<MIL::Fp16>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v48 = 0;
        do
        {
          v49 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v48);
          v50 = MIL::Fp16::GetFloat(a1);
          v51 = MIL::Fp16::GetFloat((a3 + 2 * v49));
          v52 = MIL::Fp16::GetFloat((v47 + 2 * v49));
          result = MIL::Fp16::FromFloat(v53, v51 * (v50 - v52));
          v54 = *a6;
          *(*a6 + 2 * v48++) = result;
          a1 = (a1 + 2);
        }

        while (v48 < (a6[1] - v54) >> 1);
      }
    }

    else
    {
      if (v13 != 5)
      {
        goto LABEL_49;
      }

      v25 = MIL::IRTensorValue::GetDataView<float>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v26 = 0;
        do
        {
          v27 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v26);
          v28 = MIL::Fp16::GetFloat(a1);
          v29 = MIL::Fp16::GetFloat((a3 + 2 * v27));
          result = MIL::Fp16::FromFloat(v30, v29 * (v28 - *(v25 + 4 * v27)));
          v31 = *a6;
          *(*a6 + 2 * v26++) = result;
          a1 = (a1 + 2);
        }

        while (v26 < (a6[1] - v31) >> 1);
      }
    }
  }

  else if (v13 <= 19)
  {
    if (v13 == 13)
    {
      v63 = MIL::IRTensorValue::GetDataView<MIL::Int4>(*a4);
      v65 = v64;
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v66 = 0;
        do
        {
          v67 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v66);
          v68 = MIL::Fp16::GetFloat(a1);
          v69 = MIL::Fp16::GetFloat((a3 + 2 * v67));
          v95.__r_.__value_.__r.__words[0] = v63;
          v95.__r_.__value_.__l.__size_ = v65;
          v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::Int4 const,18446744073709551615ul>::ValueAt(&v95, v67);
          Int = MIL::Int4::GetInt(&v94);
          result = MIL::Fp16::FromFloat(Int, v69 * (v68 - Int));
          v71 = *a6;
          *(*a6 + 2 * v66++) = result;
          a1 = (a1 + 2);
        }

        while (v66 < (a6[1] - v71) >> 1);
      }
    }

    else
    {
      if (v13 != 14)
      {
        goto LABEL_49;
      }

      v39 = MIL::IRTensorValue::GetDataView<unsigned char>(*a4);
      result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
      if (a6[1] != *a6)
      {
        v40 = 0;
        do
        {
          v41 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v40);
          v42 = MIL::Fp16::GetFloat(a1);
          v43 = MIL::Fp16::GetFloat((a3 + 2 * v41));
          LOBYTE(v44) = *(v39 + v41);
          result = MIL::Fp16::FromFloat(v45, v43 * (v42 - v44));
          v46 = *a6;
          *(*a6 + 2 * v40++) = result;
          a1 = (a1 + 2);
        }

        while (v40 < (a6[1] - v46) >> 1);
      }
    }
  }

  else
  {
    switch(v13)
    {
      case 25:
        v72 = MIL::IRTensorValue::GetDataView<MIL::Fp8E5M2>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v73 = 0;
          do
          {
            v74 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v73);
            v75 = MIL::Fp16::GetFloat(a1);
            v76 = MIL::Fp16::GetFloat((a3 + 2 * v74));
            v77 = MIL::Fp8E5M2::GetFloat((v72 + v74));
            result = MIL::Fp16::FromFloat(v78, v76 * (v75 - v77));
            v79 = *a6;
            *(*a6 + 2 * v73++) = result;
            a1 = (a1 + 2);
          }

          while (v73 < (a6[1] - v79) >> 1);
        }

        break;
      case 24:
        v80 = MIL::IRTensorValue::GetDataView<MIL::Fp8E4M3FN>(*a4);
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v81 = 0;
          do
          {
            v82 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v81);
            v83 = MIL::Fp16::GetFloat(a1);
            v84 = MIL::Fp16::GetFloat((a3 + 2 * v82));
            v85 = MIL::Fp8E4M3FN::GetFloat((v80 + v82));
            result = MIL::Fp16::FromFloat(v86, v84 * (v83 - v85));
            v87 = *a6;
            *(*a6 + 2 * v81++) = result;
            a1 = (a1 + 2);
          }

          while (v81 < (a6[1] - v87) >> 1);
        }

        break;
      case 20:
        v15 = MIL::IRTensorValue::GetDataView<MIL::UInt4>(*a4);
        v17 = v16;
        result = std::vector<MIL::Fp16>::vector[abi:ne200100](a6, a2);
        if (a6[1] != *a6)
        {
          v19 = 0;
          do
          {
            v20 = MIL::Operators::Common::Shared::ConstExprs::BlockwiseShiftScaleIndexConverter::DataIndexToScaleIndex(a5, v19);
            v21 = MIL::Fp16::GetFloat(a1);
            v22 = MIL::Fp16::GetFloat((a3 + 2 * v20));
            v95.__r_.__value_.__r.__words[0] = v15;
            v95.__r_.__value_.__l.__size_ = v17;
            v94.__r_.__value_.__s.__data_[0] = MIL::Util::Span<MIL::UInt4 const,18446744073709551615ul>::ValueAt(&v95, v20);
            v23 = MIL::UInt4::GetInt(&v94);
            result = MIL::Fp16::FromFloat(v23, v22 * (v21 - v23));
            v24 = *a6;
            *(*a6 + 2 * v19++) = result;
            a1 = (a1 + 2);
          }

          while (v19 < (a6[1] - v24) >> 1);
        }

        return result;
      default:
LABEL_49:
        exception = __cxa_allocate_exception(0x10uLL);
        MIL::IRDataTypeToString(v14, &v93);
        v89 = std::string::insert(&v93, 0, "Unsupported dType (");
        v90 = *&v89->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v89->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v90;
        v89->__r_.__value_.__l.__size_ = 0;
        v89->__r_.__value_.__r.__words[2] = 0;
        v89->__r_.__value_.__r.__words[0] = 0;
        v91 = std::string::append(&v94, ") for offset.");
        v92 = *&v91->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v91->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v92;
        v91->__r_.__value_.__l.__size_ = 0;
        v91->__r_.__value_.__r.__words[2] = 0;
        v91->__r_.__value_.__r.__words[0] = 0;
        std::runtime_error::runtime_error(exception, &v95);
        __cxa_throw(exception, MEMORY[0x277D82760], MEMORY[0x277D82600]);
    }
  }

  return result;
}