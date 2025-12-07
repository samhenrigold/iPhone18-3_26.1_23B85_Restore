void sub_AD450(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0xAD488);
}

void sub_AD474(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::QuantizedMatrix<short>::Write(float *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  kaldi::WriteBasicType<float>(a2, a3, a1[3]);
  kaldi::WriteBasicType<float>(a2, v5, a1[2]);
  v8 = *a1;
  v9 = *(a1 + 1);
  v10 = *(a1 + 4);
  if (!v10)
  {
    v10 = *(a1 + 2);
  }

  kaldi::WriteIntegerByteArray<short>(a2, v5, v4, v9 * v8, v10);
}

double kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(uint64_t a1, int a2, int a3)
{
  *a1 = a2;
  *(a1 + 4) = a3;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return result;
}

int *kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(int *a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 2) = 0u;
  *(a1 + 6) = 0u;
  v2 = a2[2];
  if (!v2)
  {
    operator new[]();
  }

  *(a1 + 2) = v2;
  v3 = a2[4];
  if (!v3)
  {
    operator new[]();
  }

  *(a1 + 4) = v3;
  return a1;
}

void sub_AD78C(_Unwind_Exception *a1)
{
  v4 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v4)
  {
    operator delete();
  }

  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(v2);
  _Unwind_Resume(a1);
}

void kaldi::VectorwiseQuantizedMatrix<signed char>::Read(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = kaldi::Matrix<float>::Matrix(v16, 1, *a1, 0, 0);
  kaldi::Matrix<float>::Read(v8, a2, a3, 0, a4);
  if (v17 != 1)
  {
    *(a1 + 2) = 0;
    operator new[]();
  }

  v9 = v16[0];
  v10 = *(a1 + 1);
  *(a1 + 1) = 0;
  *(a1 + 2) = v9;
  if (v10)
  {
    operator delete();
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  kaldi::ReadIntegerVector<signed char>(a2, a3, &v13, a4, a1 + 32, 0, 0);
  if (!*(a1 + 4))
  {
    if (v14 - v13 == a1[1] * *a1)
    {
      operator new[]();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 611);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Quantized matrix improperly serialized", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v11 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v11)
  {
    operator delete();
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  kaldi::Matrix<float>::~Matrix(v16);
}

void sub_AD9E0(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  kaldi::Matrix<float>::~Matrix(v1 - 88);
  _Unwind_Resume(a1);
}

void kaldi::VectorwiseQuantizedMatrix<signed char>::Write(unsigned int *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 2);
  if (!v6)
  {
    v6 = *(a1 + 1);
  }

  kaldi::SubMatrix<float>::SubMatrix(v8, v6, 1, *a1, *a1);
  kaldi::MatrixBase<float>::Write(v8, a2, v3, v3);
  v7 = *(a1 + 4);
  if (!v7)
  {
    v7 = *(a1 + 3);
  }

  kaldi::WriteIntegerByteArray<signed char>(a2, v3, v3, a1[1] * *a1, v7);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
}

float kaldi::VectorwiseQuantizedMatrix<signed char>::Row@<S0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 24);
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(a1 + 8);
  }

  return kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(a3, v5 + *(a1 + 4) * a2, *(a1 + 4), *(v6 + 4 * a2));
}

uint64_t kaldi::VectorwiseQuantizedMatrix<signed char>::AddMatMat(uint64_t a1, uint64_t a2, kaldi::ContextDependency *this, float a4)
{
  v8 = kaldi::ContextDependency::ContextWidth(this);
  kaldi::Matrix<float>::Matrix();
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      kaldi::MatrixBase<float>::Row(v17, i, v10, v16);
      kaldi::VectorwiseQuantizedMatrix<signed char>::Row(a1, i, v15);
      kaldi::QuantizedVectorBase<signed char>::AddMatVec(v15, a2, v16, a4, v12, v13);
    }
  }

  kaldi::MatrixBase<float>::CopyFromMat<float>(this, v17, 112, v9, v10);
  return kaldi::Matrix<float>::~Matrix(v17);
}

void sub_ADBC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

int *kaldi::VectorwiseQuantizedMatrix<short>::VectorwiseQuantizedMatrix(int *a1, uint64_t *a2)
{
  *a1 = *a2;
  *(a1 + 2) = 0u;
  *(a1 + 6) = 0u;
  v2 = a2[2];
  if (!v2)
  {
    operator new[]();
  }

  *(a1 + 2) = v2;
  v3 = a2[4];
  if (!v3)
  {
    operator new[]();
  }

  *(a1 + 4) = v3;
  return a1;
}

void sub_ADD04(_Unwind_Exception *a1)
{
  v4 = *(v1 + 24);
  *(v1 + 24) = 0;
  if (v4)
  {
    operator delete();
  }

  kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(v2);
  _Unwind_Resume(a1);
}

void kaldi::VectorwiseQuantizedMatrix<short>::Read(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = kaldi::Matrix<float>::Matrix(v16, 1, *a1, 0, 0);
  kaldi::Matrix<float>::Read(v8, a2, a3, 0, a4);
  if (v17 != 1)
  {
    *(a1 + 2) = 0;
    operator new[]();
  }

  v9 = v16[0];
  v10 = *(a1 + 1);
  *(a1 + 1) = 0;
  *(a1 + 2) = v9;
  if (v10)
  {
    operator delete();
  }

  v13 = 0;
  v14 = 0;
  v15 = 0;
  kaldi::ReadIntegerVector<short>(a2, a3, &v13, a4, a1 + 32, 0, 0);
  if (!*(a1 + 4))
  {
    if ((v14 - v13) >> 1 == a1[1] * *a1)
    {
      operator new[]();
    }

    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-quantized-matrix.cc", 611);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Quantized matrix improperly serialized", 38);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  v11 = *(a1 + 3);
  *(a1 + 3) = 0;
  if (v11)
  {
    operator delete();
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  kaldi::Matrix<float>::~Matrix(v16);
}

void sub_ADF64(_Unwind_Exception *a1)
{
  v3 = *(v1 - 112);
  if (v3)
  {
    *(v1 - 104) = v3;
    operator delete(v3);
  }

  kaldi::Matrix<float>::~Matrix(v1 - 88);
  _Unwind_Resume(a1);
}

void kaldi::VectorwiseQuantizedMatrix<short>::Write(unsigned int *a1, void *a2, uint64_t a3)
{
  v3 = a3;
  v6 = *(a1 + 2);
  if (!v6)
  {
    v6 = *(a1 + 1);
  }

  kaldi::SubMatrix<float>::SubMatrix(v8, v6, 1, *a1, *a1);
  kaldi::MatrixBase<float>::Write(v8, a2, v3, v3);
  v7 = *(a1 + 4);
  if (!v7)
  {
    v7 = *(a1 + 3);
  }

  kaldi::WriteIntegerByteArray<short>(a2, v3, v3, a1[1] * *a1, v7);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
}

float kaldi::VectorwiseQuantizedMatrix<short>::Row@<S0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 32);
  if (!v5)
  {
    v5 = *(a1 + 24);
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    v6 = *(a1 + 8);
  }

  return kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(a3, v5 + 2 * *(a1 + 4) * a2, *(a1 + 4), *(v6 + 4 * a2));
}

uint64_t kaldi::VectorwiseQuantizedMatrix<short>::AddMatMat(uint64_t a1, uint64_t a2, kaldi::ContextDependency *this, float a4)
{
  v8 = kaldi::ContextDependency::ContextWidth(this);
  kaldi::Matrix<float>::Matrix();
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      kaldi::MatrixBase<float>::Row(v17, i, v10, v16);
      kaldi::VectorwiseQuantizedMatrix<short>::Row(a1, i, &v15);
      kaldi::QuantizedVectorBase<short>::AddMatVec(&v15, a2, v16, a4, v12, v13);
    }
  }

  kaldi::MatrixBase<float>::CopyFromMat<float>(this, v17, 112, v9, v10);
  return kaldi::Matrix<float>::~Matrix(v17);
}

void sub_AE148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

void std::vector<signed char>::shrink_to_fit(char **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      operator new();
    }

    if (v4 < v3)
    {
      v6 = (v1 - *a1);
      v7 = a1[1];
      v8 = (v4 + v2 - v7);
      memcpy(v8, v2, v7 - v2);
      *a1 = v8;
      a1[1] = v6;
      a1[2] = v6;
      if (v2)
      {

        operator delete(v2);
      }
    }
  }
}

void std::vector<signed char>::__append(char **a1, size_t a2)
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
      std::vector<float>::__throw_length_error[abi:ne200100]();
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

void **std::vector<signed char>::__assign_with_size[abi:ne200100]<signed char *,signed char *>(void **result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (v7 - *result < a4)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      v9 = 2 * v7;
      if (2 * v7 <= a4)
      {
        v9 = a4;
      }

      if (v7 >= 0x3FFFFFFFFFFFFFFFLL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<signed char>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (v11 - v8 >= a4)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void std::vector<signed char>::__vallocate[abi:ne200100](uint64_t *a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<float>::__throw_length_error[abi:ne200100]();
}

void kaldi::WriteIntegerByteArray<signed char>(void *a1, int a2, int a3, uint64_t a4, char *a5)
{
  if (a2)
  {
    v15 = 1;
    std::ostream::write();
    if (a4 != a4)
    {
      kaldi::KaldiAssertFailure_("WriteIntegerByteArray", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", &stru_B8.addr + 5, "static_cast<size_t>(vecsz) == count", v9);
    }

    if (a3)
    {
      v10 = -a4;
    }

    else
    {
      v10 = a4;
    }

    v14 = v10;
    std::ostream::write();
    if (a4)
    {
      if (a3 && (fst::AlignOutput(a1) & 1) == 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "WriteIntegerByteArray", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 227);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "Could not align output");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
      }

      std::ostream::write();
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[ ", 2);
    for (; a4; --a4)
    {
      ++a5;
      v11 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteIntegerType.");
  }
}

void std::vector<short>::shrink_to_fit(const void **a1)
{
  v1 = a1[1];
  v2 = *a1;
  v3 = a1[2] - *a1;
  v4 = v1 - *a1;
  if (v3 > v4)
  {
    if (v1 != v2)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v4 >> 1);
    }

    v6 = 0;
    if (v3 >> 1)
    {
      v7 = 2 * (v4 >> 1);
      v8 = a1[1] - v2;
      v9 = (v7 - v8);
      memcpy((v7 - v8), v2, v8);
      v6 = *a1;
      *a1 = v9;
      a1[1] = v7;
      a1[2] = 0;
    }

    if (v6)
    {

      operator delete(v6);
    }
  }
}

void std::vector<short>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 2 * a2;
    }
  }

  else
  {
    std::vector<short>::__append(result, a2 - v2);
  }
}

void std::vector<short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned short>>(a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

uint64_t *std::vector<short>::__assign_with_size[abi:ne200100]<short *,short *>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = result;
  v7 = result[2];
  v8 = *result;
  if (a4 > (v7 - *result) >> 1)
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

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (v7 <= a4)
      {
        v9 = a4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 >= 0x7FFFFFFFFFFFFFFELL)
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v9;
      }

      std::vector<unsigned short>::__vallocate[abi:ne200100](v6, v10);
    }

    std::vector<float>::__throw_length_error[abi:ne200100]();
  }

  v11 = result[1];
  v12 = v11 - v8;
  if (a4 <= (v11 - v8) >> 1)
  {
    v15 = a3 - __src;
    if (v15)
    {
      result = memmove(*result, __src, v15);
    }

    v14 = &v8[v15];
  }

  else
  {
    v13 = &__src[v12];
    if (v11 != v8)
    {
      result = memmove(*result, __src, v12);
      v11 = v6[1];
    }

    if (a3 != v13)
    {
      result = memmove(v11, v13, a3 - v13);
    }

    v14 = &v11[a3 - v13];
  }

  v6[1] = v14;
  return result;
}

void kaldi::WriteIntegerByteArray<short>(void *a1, int a2, int a3, uint64_t a4, __int16 *a5)
{
  if (a2)
  {
    v15 = 2;
    std::ostream::write();
    if (a4 != a4)
    {
      kaldi::KaldiAssertFailure_("WriteIntegerByteArray", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", &stru_B8.addr + 5, "static_cast<size_t>(vecsz) == count", v9);
    }

    if (a3)
    {
      v10 = -a4;
    }

    else
    {
      v10 = a4;
    }

    v14 = v10;
    std::ostream::write();
    if (a4)
    {
      if (a3 && (fst::AlignOutput(a1) & 1) == 0)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "WriteIntegerByteArray", "../subproject/libquasar/libkaldi/src/base/io-funcs-inl.h", 227);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "Could not align output");
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
      }

      std::ostream::write();
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "[ ", 2);
    for (; a4; --a4)
    {
      ++a5;
      v11 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ", 1);
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "]\n", 2);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteIntegerType.");
  }
}

uint64_t kaldi::VectorwiseQuantizedMatrix<signed char>::VectorwiseQuantizedMatrix(uint64_t *a1)
{
  result = *a1;
  *a1 = 0;
  if (result)
  {
    OUTLINED_FUNCTION_0_5(result);
  }

  return result;
}

float kaldi::QuantizedSubVector<signed char>::QuantizedSubVector(uint64_t a1, uint64_t a2, int a3, float a4)
{
  *(a1 + 8) = a3;
  *a1 = a2;
  result = 1.0 / a4;
  *(a1 + 12) = result;
  return result;
}

void kaldi::QuantizedVectorBase<signed char>::AddMatVec(float *result, uint64_t a2, uint64_t a3, float a4, uint64_t a5, const char *a6)
{
  if (a4 != 1.0)
  {
    kaldi::VectorBase<float>::Scale(a3, a4);
  }

  v38 = *(a3 + 8);
  v9 = 0;
  if ((v38 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    do
    {
      if (*(a2 + 12) <= v9)
      {
        kaldi::KaldiAssertFailure_("RowData", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a6);
      }

      v10 = (*a2 + 4 * *(a2 + 16) * v9);
      v11 = fst::StateOrderQueue<int>::Head_(a2);
      v12 = *result;
      v13 = *(result + 2);
      v14 = 0uLL;
      v15 = 0;
      v16 = v13 & 0xFFFFFFFFFFFFFFF8;
      if ((v13 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v17 = 0uLL;
        v18 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v25 = *v12++;
          v26 = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip1_s8(v25, 0), 8uLL), 8uLL)));
          v27 = vcvtq_f32_s32(vmovl_s16(vshr_n_s16(vshl_n_s16(vzip2_s8(v25, 0), 8uLL), 8uLL)));
          v24 = vmlaq_f32(v24, v27, v10[1]);
          v23 = vmlaq_f32(v23, v26, *v10);
          v22 = vmlaq_f32(v22, v27, *(v10 + 4 * v11 + 16));
          v21 = vmlaq_f32(v21, v26, *(v10 + 4 * v11));
          v20 = vmlaq_f32(v20, v27, *(v10 + 8 * v11 + 16));
          v19 = vmlaq_f32(v19, v26, *(v10 + 8 * v11));
          v18 = vmlaq_f32(v18, v27, *(v10 + 12 * v11 + 16));
          v17 = vmlaq_f32(v17, v26, *(v10 + 12 * v11));
          v10 += 2;
          v15 += 8;
        }

        while (v15 < v16);
        v15 = ((v16 - 1) & 0xFFFFFFFFFFFFFFF8) + 8;
      }

      else
      {
        v23 = 0uLL;
        v24 = 0uLL;
        v21 = 0uLL;
        v22 = 0uLL;
        v19 = 0uLL;
        v20 = 0uLL;
        v17 = 0uLL;
        v18 = 0uLL;
      }

      v28 = 0;
      v29 = (*a3 + 4 * v9);
      v30 = result[3];
      do
      {
        v42[0] = v23;
        v42[1] = v24;
        v31 = 4 * (v28 & 7);
        v41[0] = v21;
        v41[1] = v22;
        v40[0] = v19;
        v40[1] = v20;
        v39[0] = v17;
        v39[1] = v18;
        v32.i32[0] = *(v42 + v31);
        v32.i32[1] = *(v41 + v31);
        v32.i32[2] = *(v40 + v31);
        v32.i32[3] = *(v39 + v31);
        v14 = vaddq_f32(v14, v32);
        ++v28;
      }

      while (v28 != 8);
      v33 = v13 > v15;
      v34 = v13 - v15;
      if (v33)
      {
        do
        {
          v35.i32[0] = v10->i32[0];
          v36 = v12->i8[0];
          v12 = (v12 + 1);
          v35.i32[1] = v10->i32[v11];
          v35.i32[2] = v10->i32[2 * v11];
          v35.i32[3] = v10->i32[3 * v11];
          v14 = vmlaq_n_f32(v14, v35, v36);
          v10 = (v10 + 4);
          --v34;
        }

        while (v34);
      }

      *v29 = vmlaq_n_f32(*v29, v14, v30);
      v9 += 4;
    }

    while (v9 < (v38 & 0xFFFFFFFFFFFFFFFCLL));
  }

  if (v9 < v38)
  {
    v37 = 4 * v9;
    do
    {
      kaldi::MatrixBase<float>::Row(a2, v9, a6, v43);
      kaldi::VecVecOne<signed char>(v43[0], *result, (*a3 + v37), *(result + 2), result[3]);
      ++v9;
      v37 += 4;
    }

    while (v38 != v9);
  }
}

float kaldi::VecVecOne<signed char>(float32x4_t *a1, int8x16_t *a2, float *a3, unint64_t a4, float a5)
{
  v5 = a4 & 0xFFFFFFFFFFFFFFF0;
  if ((a4 & 0xFFFFFFFFFFFFFFF0) != 0)
  {
    v6 = 0;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    do
    {
      v11 = *a2++;
      v12 = vmovl_s8(*v11.i8);
      v13 = vmovl_high_s8(v11);
      v7 = vmlaq_f32(v7, vcvtq_f32_s32(vmovl_s16(*v12.i8)), *a1);
      v8 = vmlaq_f32(v8, vcvtq_f32_s32(vmovl_high_s16(v12)), a1[1]);
      v9 = vmlaq_f32(v9, vcvtq_f32_s32(vmovl_s16(*v13.i8)), a1[2]);
      v10 = vmlaq_f32(v10, vcvtq_f32_s32(vmovl_high_s16(v13)), a1[3]);
      a1 += 4;
      v6 += 16;
    }

    while (v6 < v5);
    v5 = ((v5 - 1) & 0xFFFFFFFFFFFFFFF0) + 16;
    v14 = vaddq_f32(vaddq_f32(v10, v9), vaddq_f32(v8, v7));
  }

  else
  {
    v14 = 0uLL;
  }

  v15 = vaddv_f32(*&vpaddq_f32(v14, v14));
  v16 = a4 >= v5;
  v17 = a4 - v5;
  if (v17 != 0 && v16)
  {
    do
    {
      v18 = a1->i32[0];
      a1 = (a1 + 4);
      v19 = *&v18;
      v20 = a2->i8[0];
      a2 = (a2 + 1);
      v15 = v15 + (v19 * v20);
      --v17;
    }

    while (v17);
  }

  result = *a3 + (v15 * a5);
  *a3 = result;
  return result;
}

float kaldi::QuantizedVectorBase<signed char>::VecVec(uint64_t a1, float32x4_t **a2)
{
  v3 = 0.0;
  kaldi::VecVecOne<signed char>(*a2, *a1, &v3, *(a1 + 8), *(a1 + 12));
  return v3;
}

void kaldi::QuantizedVectorBase<short>::AddMatVec(float32x4_t *result, uint64_t a2, uint64_t a3, float a4, uint64_t a5, const char *a6)
{
  if (a4 != 1.0)
  {
    kaldi::VectorBase<float>::Scale(a3, a4);
  }

  v9 = *(a3 + 8);
  v10 = 0;
  if ((v9 & 0xFFFFFFFFFFFFFFFCLL) != 0)
  {
    do
    {
      if (*(a2 + 12) <= v10)
      {
        kaldi::KaldiAssertFailure_("RowData", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", a6);
      }

      v11 = (*a2 + 4 * *(a2 + 16) * v10);
      v12 = fst::StateOrderQueue<int>::Head_(a2);
      v13 = result->i64[0];
      v14 = result->i32[2];
      v15 = 0;
      v16 = v14 & 0xFFFFFFFFFFFFFFF8;
      if ((v14 & 0xFFFFFFFFFFFFFFF8) != 0)
      {
        v17 = v12;
        v18 = 8 * v12;
        v19 = 12 * v12;
        v20 = 4 * v12;
        v21 = 0uLL;
        v22 = 0uLL;
        v23 = 0uLL;
        v24 = 0uLL;
        do
        {
          v25 = (v11 + v20);
          v26 = (v11 + v19);
          v27 = *v13++;
          v28 = (v11 + v18);
          v29 = vcvtq_f32_s32(vmovl_s16(*v27.i8));
          v30 = vcvtq_f32_s32(vmovl_high_s16(v27));
          v31 = *v11;
          v32 = *(v11 + 1);
          v11 += 2;
          v21 = vmlaq_f32(vmlaq_f32(v21, v29, v31), v30, v32);
          v22 = vmlaq_f32(vmlaq_f32(v22, v29, *v25), v30, v25[1]);
          v23 = vmlaq_f32(vmlaq_f32(v23, v29, *v28), v30, v28[1]);
          v24 = vmlaq_f32(vmlaq_f32(v24, v29, *v26), v30, v26[1]);
          v15 += 8;
        }

        while (v15 < v16);
        v15 = ((v16 - 1) & 0xFFFFFFFFFFFFFFF8) + 8;
        v33 = v11 + v17;
        v34 = (v11 + v18);
        v35 = (v11 + v19);
      }

      else
      {
        v33 = v11 + v12;
        v34 = v11 + 2 * v12;
        v24 = 0uLL;
        v23 = 0uLL;
        v22 = 0uLL;
        v21 = 0uLL;
        v35 = v11 + 3 * v12;
      }

      v36 = vzip1q_s32(v21, v22);
      v37 = vzip2q_s32(v21, v22);
      v38 = vzip1q_s32(v23, v24);
      v39 = vzip2q_s32(v23, v24);
      v40 = vaddq_f32(vaddq_f32(vzip1q_s32(v36, v38), vzip2q_s32(v36, v38)), vaddq_f32(vzip1q_s32(v37, v39), vzip2q_s32(v37, v39)));
      v41 = vuzp1q_s32(v40, vrev64q_s32(v40));
      v42 = v14 > v15;
      v43 = v14 - v15;
      if (v42)
      {
        do
        {
          v45 = v13->i16[0];
          v13 = (v13 + 2);
          v44 = v45;
          v46 = *v11;
          v11 = (v11 + 4);
          v47.i32[0] = v46;
          v48 = *v35++;
          v47.i32[1] = *v33++;
          v47.i32[2] = *v34++;
          v47.i32[3] = v48;
          v41 = vmlaq_n_f32(v41, v47, v44);
          --v43;
        }

        while (v43);
      }

      *(*a3 + 4 * v10) = vmlaq_n_f32(*(*a3 + 4 * v10), v41, result->f32[3]);
      v10 += 4;
    }

    while (v10 < (v9 & 0xFFFFFFFFFFFFFFFCLL));
  }

  if (v10 < v9)
  {
    v49 = 4 * v10;
    do
    {
      kaldi::MatrixBase<float>::Row(a2, v10, a6, v50);
      kaldi::VecVecOne<short>(v50[0], result->i64[0], (*a3 + v49), result->i32[2], result->f32[3]);
      ++v10;
      v49 += 4;
    }

    while (v9 != v10);
  }
}

float kaldi::VecVecOne<short>(_OWORD *a1, int16x8_t *a2, float *a3, unint64_t a4, float a5)
{
  v5 = a4 & 0xFFFFFFFFFFFFFFF8;
  if ((a4 & 0xFFFFFFFFFFFFFFF8) != 0)
  {
    v6 = 0;
    v7 = 0uLL;
    do
    {
      v8 = *a1;
      v9 = *(a1 + 1);
      a1 += 2;
      v10 = *a2++;
      v7 = vmlaq_f32(vmlaq_f32(v7, vcvtq_f32_s32(vmovl_s16(*v10.i8)), v8), vcvtq_f32_s32(vmovl_high_s16(v10)), v9);
      v6 += 8;
    }

    while (v6 < v5);
    v5 = ((v5 - 1) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  else
  {
    v7 = 0uLL;
  }

  v11 = v7.f32[3] + (v7.f32[2] + vaddv_f32(*v7.f32));
  v12 = a4 >= v5;
  v13 = a4 - v5;
  if (v13 != 0 && v12)
  {
    do
    {
      v14 = *a1;
      a1 = (a1 + 4);
      v15 = v14;
      v16 = a2->i16[0];
      a2 = (a2 + 2);
      v11 = v11 + (v15 * v16);
      --v13;
    }

    while (v13);
  }

  result = *a3 + (v11 * a5);
  *a3 = result;
  return result;
}

float kaldi::QuantizedVectorBase<short>::VecVec(uint64_t a1, _OWORD **a2)
{
  v3 = 0.0;
  kaldi::VecVecOne<short>(*a2, *a1, &v3, *(a1 + 8), *(a1 + 12));
  return v3;
}

float kaldi::VecVec<signed char>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("VecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_20.nsects + 3, "a.Dim() == b.Dim()", a5);
  }

  return kaldi::QuantizedVectorBase<signed char>::VecVec(a2, a1);
}

float kaldi::VecVec<short>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("VecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_20.nsects + 3, "a.Dim() == b.Dim()", a5);
  }

  return kaldi::QuantizedVectorBase<short>::VecVec(a2, a1);
}

float kaldi::VectorBase<float>::CopyFromVec<double>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("CopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_108.reserved3, "dim_ == other.Dim()", a5);
  }

  if (v5 >= 1)
  {
    v6 = *a1;
    v7 = *a2;
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void *kaldi::VectorBase<float>::CopyFromVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 8);
  if (v6 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("CopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_108.addr + 5, "Dim() == v.Dim()", a5);
  }

  result = *a1;
  v8 = *a2;
  if (result != v8)
  {

    return memcpy(result, v8, 4 * v6);
  }

  return result;
}

void *kaldi::VectorBase<double>::CopyFromVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 8);
  if (v6 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("CopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_108.addr + 5, "Dim() == v.Dim()", a5);
  }

  result = *a1;
  v8 = *a2;
  if (result != v8)
  {

    return memcpy(result, v8, 8 * v6);
  }

  return result;
}

double kaldi::VectorBase<double>::CopyFromVec<float>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("CopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_108.reserved3, "dim_ == other.Dim()", a5);
  }

  if (v5 >= 1)
  {
    v6 = *a1;
    v7 = *a2;
    do
    {
      v8 = *v7++;
      result = v8;
      *v6++ = v8;
      --v5;
    }

    while (v5);
  }

  return result;
}

void kaldi::VectorBase<float>::CopyRowsFromMat<signed char>(uint64_t *a1, unsigned int *a2)
{
  v4 = *(a1 + 2);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  if (v4 != kaldi::QuantizedMatrixBase<short>::NumRows(a2) * v5)
  {
    kaldi::KaldiAssertFailure_("CopyRowsFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_1A8.addr + 6, "dim_ == mat.NumCols() * mat.NumRows()", v6);
  }

  v7 = *a1;
  v8 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  v9 = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
  if (v9 >= 1)
  {
    v12 = v9;
    for (i = 0; i != v12; ++i)
    {
      if (v8 >= 1)
      {
        for (j = 0; j != v8; ++j)
        {
          *(v7 + 4 * j) = kaldi::QuantizedMatrixBase<signed char>::operator()(a2, i, j, v10, v11);
        }
      }

      v7 += 4 * v8;
    }
  }
}

void kaldi::VectorBase<float>::CopyRowsFromMat<short>(uint64_t *a1, unsigned int *a2)
{
  v4 = *(a1 + 2);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  if (v4 != kaldi::QuantizedMatrixBase<short>::NumRows(a2) * v5)
  {
    kaldi::KaldiAssertFailure_("CopyRowsFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_1A8.addr + 6, "dim_ == mat.NumCols() * mat.NumRows()", v6);
  }

  v7 = *a1;
  v8 = kaldi::QuantizedMatrixBase<short>::NumCols(a2);
  v9 = kaldi::QuantizedMatrixBase<short>::NumRows(a2);
  if (v9 >= 1)
  {
    v12 = v9;
    for (i = 0; i != v12; ++i)
    {
      if (v8 >= 1)
      {
        for (j = 0; j != v8; ++j)
        {
          *(v7 + 4 * j) = kaldi::QuantizedMatrixBase<short>::operator()(a2, i, j, v10, v11);
        }
      }

      v7 += 4 * v8;
    }
  }
}

void kaldi::VectorBase<float>::CopyColFromMat<float>(uint64_t a1, kaldi::ContextDependency *this, signed int a3)
{
  if (kaldi::ContextDependency::ContextWidth(this) <= a3)
  {
    kaldi::KaldiAssertFailure_("CopyColFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_2E8.size + 5, "col < mat.NumCols()", v6);
  }

  v7 = *(a1 + 8);
  if (v7 != kaldi::ContextDependency::CentralPosition(this))
  {
    kaldi::KaldiAssertFailure_("CopyColFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_2E8.size + 6, "dim_ == mat.NumRows()", v9);
  }

  if (*(a1 + 8) >= 1)
  {
    v10 = 0;
    do
    {
      *(*a1 + 4 * v10) = kaldi::MatrixBase<float>::operator()(this, v10, a3, v8, v9);
      ++v10;
    }

    while (v10 < *(a1 + 8));
  }
}

void kaldi::VectorBase<float>::AddMatVec(uint64_t a1, kaldi::ContextDependency *this, CBLAS_TRANSPOSE a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (a3 == CblasTrans)
  {
    if (kaldi::ContextDependency::CentralPosition(this) != *(a4 + 8))
    {
      goto LABEL_10;
    }

    v13 = kaldi::ContextDependency::ContextWidth(this);
  }

  else
  {
    if (a3 != CblasNoTrans || kaldi::ContextDependency::ContextWidth(this) != *(a4 + 8))
    {
LABEL_10:
      kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_68.addr + 1, "(trans == kNoTrans && M.NumCols() == v.dim_ && M.NumRows() == dim_) || (trans == kTrans && M.NumRows() == v.dim_ && M.NumCols() == dim_)", a5);
    }

    v13 = kaldi::ContextDependency::CentralPosition(this);
  }

  if (v13 != *(a1 + 8))
  {
    goto LABEL_10;
  }

  if (a4 == a1)
  {
    kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_68.addr + 2, "&v != this", a5);
  }

  v14 = kaldi::ContextDependency::CentralPosition(this);
  v15 = kaldi::ContextDependency::ContextWidth(this);
  v16 = *this;
  v17 = fst::StateOrderQueue<int>::Head_(this);
  cblas_sgemv(CblasRowMajor, a3, v14, v15, a6, v16, v17, *a4, 1, a7, *a1, 1);
}

void kaldi::Vector<float>::Resize(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a2;
  v7 = *a1;
  if (!a3)
  {
    v8 = 1;
    goto LABEL_13;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      if (!v7)
      {
        kaldi::Vector<float>::Init(a1, a2, a3, a4, a5);
LABEL_25:
        v7 = *a1;
        v14 = 4 * *(a1 + 2);
LABEL_26:

        bzero(v7, v14);
        return;
      }

      if (*(a1 + 2) == a2)
      {
        return;
      }

      v8 = 1;
LABEL_14:
      if (*(a1 + 3) >= a2)
      {
        *(a1 + 2) = a2;
      }

      else if (*(a1 + 2) != a2)
      {
        free(v7);
        *a1 = 0;
        a1[1] = 0;
        kaldi::Vector<float>::Init(a1, v5, v11, v12, v13);
        if ((v8 & 1) == 0)
        {
          return;
        }

        goto LABEL_25;
      }

      if (!v8)
      {
        return;
      }

      v14 = 4 * a2;
      goto LABEL_26;
    }

    v8 = 0;
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_19:
    kaldi::Vector<float>::Init(a1, a2, a3, a4, a5);
    if (!v8)
    {
      return;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (!a2 || !v7)
  {
LABEL_13:
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (*(a1 + 3) >= a2)
  {
    v15 = *(a1 + 2);
    if (a2 > v15)
    {
      bzero(&v7[4 * v15], 4 * (a2 - v15));
    }

    *(a1 + 2) = v5;
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
    kaldi::Vector<float>::Resize(&__dst, a2, 1);
    v9 = *(a1 + 2);
    v10 = *a1;
    if (v9 >= v5)
    {
      memcpy(__dst, v10, 4 * v5);
    }

    else
    {
      memcpy(__dst, v10, 4 * v9);
      bzero(__dst + 4 * *(a1 + 2), 4 * (v5 - *(a1 + 2)));
    }

    v16 = __dst;
    __dst = *a1;
    v17 = __dst;
    *a1 = v16;
    v18 = v20;
    v20 = a1[1];
    a1[1] = v18;
    if (v17)
    {
      free(v17);
    }
  }
}

void kaldi::Vector<float>::Destroy(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
}

void kaldi::Vector<float>::Read(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a4)
  {
    v8 = *(a1 + 2);
    v83 = 0;
    v84[0].__locale_ = 0;
    v82 = 0;
    kaldi::Vector<float>::Resize(&v82, v8, 0, a4, a5);
    kaldi::Vector<float>::Read(&v82, a2, a3, 0);
    v12 = *(a1 + 2);
    if (!v12)
    {
      kaldi::Vector<float>::Resize(a1, v83, 0, v10, v11);
      v12 = *(a1 + 2);
    }

    if (v12 != v83)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v87, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1378);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Vector<Real>::Read, adding but dimensions mismatch ", 51);
      v60 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " vs. ", 5);
      std::ostream::operator<<();
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v87);
    }

    kaldi::VectorBase<float>::AddVec<float>(a1, &v82, 1.0, v9, v10, v11);
    if (v82)
    {
      free(v82);
    }

    return;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v82);
  std::istream::tellg();
  if (a3)
  {
    if (kaldi::Peek(a2, 1) == 68)
    {
      v15 = *(a1 + 2);
      v88 = 0;
      v89 = 0;
      v87.__locale_ = 0;
      kaldi::Vector<double>::Resize(&v87, v15, 0, v13, v14);
      kaldi::Vector<double>::Read(&v87, a2, 1, 0, v16);
      if (*(a1 + 2) != v88)
      {
        kaldi::Vector<float>::Resize(a1, v88, 0, v18, v19);
      }

      kaldi::VectorBase<float>::CopyFromVec<double>(a1, &v87, v17, v18, v19);
      if (v87.__locale_)
      {
        free(v87.__locale_);
      }

      goto LABEL_120;
    }

    v87.__locale_ = 0;
    v88 = 0;
    v89 = 0;
    kaldi::ReadToken(a2, 1, &v87, v13, v14);
    if (SHIBYTE(v89) < 0)
    {
      if (v88 != 2)
      {
        goto LABEL_136;
      }

      locale = v87.__locale_;
    }

    else
    {
      if (SHIBYTE(v89) != 2)
      {
        goto LABEL_136;
      }

      locale = &v87;
    }

    if (*locale == 22086)
    {
      LODWORD(v86.__r_.__value_.__l.__data_) = 0;
      kaldi::ReadBasicType<int>(a2, 1, &v86, v39, v40);
      data = v86.__r_.__value_.__l.__data_;
      if (LODWORD(v86.__r_.__value_.__l.__data_) != *(a1 + 2))
      {
        kaldi::Vector<float>::Resize(a1, LODWORD(v86.__r_.__value_.__l.__data_), 0, v43, v44);
        data = v86.__r_.__value_.__l.__data_;
      }

      if (data >= 1)
      {
        std::istream::read();
      }

      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        if ((SHIBYTE(v89) & 0x80000000) == 0)
        {
          goto LABEL_120;
        }

        v42 = v87.__locale_;
        goto LABEL_94;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v82, "Error reading vector data (binary mode); truncated stream? (size = ", 67);
      v75 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v75, ")", 1);
LABEL_163:
      if (SHIBYTE(v89) < 0)
      {
        v69 = v87.__locale_;
LABEL_152:
        operator delete(v69);
      }

LABEL_153:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&v87, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1509);
      v70 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Failed to read vector from stream.  ", 36);
      std::stringbuf::str();
      if (v81 >= 0)
      {
        p_src = &__src;
      }

      else
      {
        p_src = __src;
      }

      if (v81 >= 0)
      {
        v72 = HIBYTE(v81);
      }

      else
      {
        v72 = v80;
      }

      v73 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v70, p_src, v72);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, " File position at start is ", 27);
      v74 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, ", currently ", 12);
      std::istream::tellg();
      std::ostream::operator<<();
      if (SHIBYTE(v81) < 0)
      {
        operator delete(__src);
      }

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v87);
    }

LABEL_136:
    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v82, ": Expected token ", 17);
    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "FV", 2);
    v63 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, ", got ", 6);
    if (v89 >= 0)
    {
      v64 = &v87;
    }

    else
    {
      v64 = v87.__locale_;
    }

    if (v89 >= 0)
    {
      v65 = HIBYTE(v89);
    }

    else
    {
      v65 = v88;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, v64, v65);
    goto LABEL_163;
  }

  memset(&v86, 0, sizeof(v86));
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v86);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v82, "EOF while trying to read vector.", 32);
LABEL_150:
    if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_153;
    }

    v69 = v86.__r_.__value_.__r.__words[0];
    goto LABEL_152;
  }

  if (!std::string::compare(&v86, "[]"))
  {
    kaldi::Vector<float>::Resize(a1, 0, 0, v20, v21);
    if ((SHIBYTE(v86.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    v42 = v86.__r_.__value_.__r.__words[0];
LABEL_94:
    operator delete(v42);
    goto LABEL_120;
  }

  if (std::string::compare(&v86, "["))
  {
    v66 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v82, "Expected [ but got ", 21);
    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v86;
    }

    else
    {
      v67 = v86.__r_.__value_.__r.__words[0];
    }

    if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v86.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v86.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v66, v67, size);
    goto LABEL_150;
  }

  v22 = a2 + 4;
  v76 = 22;
  v77 = "Failed to read number.";
  __src = 0;
  v80 = 0;
  v81 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v23 = std::istream::peek();
          if ((v23 - 48) > 9)
          {
            break;
          }

          LODWORD(v87.__locale_) = 0;
          std::istream::operator>>();
          if ((*(v22 + *(*a2 - 24)) & 5) != 0)
          {
            goto LABEL_97;
          }

          v24 = std::istream::peek();
          if (v24 <= 0x7F)
          {
            if ((_DefaultRuneLocale.__runetype[v24] & 0x4000) != 0)
            {
              goto LABEL_32;
            }
          }

          else if (__maskrune(v24, 0x4000uLL))
          {
            goto LABEL_32;
          }

          if (std::istream::peek() != 93)
          {
            v76 = 33;
            v77 = "Expected whitespace after number.";
            goto LABEL_97;
          }

LABEL_32:
          v26 = v80;
          if (v80 >= v81)
          {
            v28 = __src;
            v29 = v80 - __src;
            v30 = (v80 - __src) >> 2;
            v31 = v30 + 1;
            if ((v30 + 1) >> 62)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v32 = v81 - __src;
            if ((v81 - __src) >> 1 > v31)
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
              std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(&__src, v33);
            }

            *(4 * v30) = v87.__locale_;
            v27 = 4 * v30 + 4;
            memcpy(0, v28, v29);
            v34 = __src;
            __src = 0;
            v80 = v27;
            v81 = 0;
            if (v34)
            {
              operator delete(v34);
            }
          }

          else
          {
            *v80 = v87.__locale_;
            v27 = (v26 + 4);
          }

          v80 = v27;
        }

        if (v23 > 31)
        {
          break;
        }

        if (v23 > 9)
        {
          if (v23 == 10 || v23 == 13)
          {
            v46 = "Newline found while reading vector (maybe it's a matrix?)";
            v47 = 57;
            goto LABEL_113;
          }

          goto LABEL_57;
        }

        if (v23 != 9)
        {
          if (v23 == -1)
          {
            v46 = "EOF while reading vector data.";
            v47 = 30;
LABEL_113:
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v82, v46, v47);
            goto LABEL_114;
          }

          goto LABEL_57;
        }

LABEL_44:
        std::istream::get();
      }

      if (v23 == 32)
      {
        goto LABEL_44;
      }

      if (v23 != 45)
      {
        break;
      }

      std::istream::get();
      if (std::istream::peek() - 48 > 9)
      {
        std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v86);
        if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
        {
          v35 = v86.__r_.__value_.__r.__words[0];
          if (!strcasecmp(v86.__r_.__value_.__l.__data_, "inf"))
          {
            goto LABEL_77;
          }

          v36 = v35;
LABEL_73:
          if (!strcasecmp(v36, "infinity"))
          {
            goto LABEL_77;
          }

          if (strcasecmp(v35, "nan"))
          {
LABEL_124:
            v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v82, "Expecting numeric vector data, got ", 35);
            if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v58 = &v86;
            }

            else
            {
              v58 = v86.__r_.__value_.__r.__words[0];
            }

            if ((v86.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v59 = HIBYTE(v86.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v59 = v86.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v58, v59);
            goto LABEL_114;
          }

          LODWORD(v87.__locale_) = -4194304;
          std::vector<float>::push_back[abi:ne200100](&__src, &v87);
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1462);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Reading negative NaN value into vector.", 39);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v87);
          }
        }

        else
        {
          if (strcasecmp(&v86, "inf"))
          {
            v35 = &v86;
            v36 = &v86;
            goto LABEL_73;
          }

LABEL_77:
          LODWORD(v87.__locale_) = -8388608;
          std::vector<float>::push_back[abi:ne200100](&__src, &v87);
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1459);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Reading negative infinite value into vector.", 44);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v87);
          }
        }
      }

      else
      {
        LODWORD(v87.__locale_) = 0;
        std::istream::operator>>();
        if ((*(v22 + *(*a2 - 24)) & 5) != 0)
        {
          goto LABEL_97;
        }

        v25 = std::istream::peek();
        if (v25 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v25] & 0x4000) != 0)
          {
            goto LABEL_70;
          }
        }

        else if (__maskrune(v25, 0x4000uLL))
        {
          goto LABEL_70;
        }

        if (std::istream::peek() != 93)
        {
          v76 = 33;
          v77 = "Expected whitespace after number.";
LABEL_97:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v82, v77, v76);
LABEL_114:
          v56 = 1;
          goto LABEL_115;
        }

LABEL_70:
        v78 = -*&v87.__locale_;
        std::vector<float>::push_back[abi:ne200100](&__src, &v78);
      }
    }

    if (v23 == 93)
    {
      break;
    }

LABEL_57:
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v86);
    if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
    {
      v37 = v86.__r_.__value_.__r.__words[0];
      if (!strcasecmp(v86.__r_.__value_.__l.__data_, "inf"))
      {
        goto LABEL_66;
      }

      v38 = v37;
LABEL_62:
      if (!strcasecmp(v38, "infinity"))
      {
        goto LABEL_66;
      }

      if (strcasecmp(v37, "nan"))
      {
        goto LABEL_124;
      }

      LODWORD(v87.__locale_) = 2143289344;
      std::vector<float>::push_back[abi:ne200100](&__src, &v87);
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1499);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Reading NaN value into vector.", 30);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v87);
      }
    }

    else
    {
      if (strcasecmp(&v86, "inf"))
      {
        v37 = &v86;
        v38 = &v86;
        goto LABEL_62;
      }

LABEL_66:
      LODWORD(v87.__locale_) = 2139095040;
      std::vector<float>::push_back[abi:ne200100](&__src, &v87);
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1496);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "Reading infinite value into vector.", 35);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v87);
      }
    }
  }

  std::istream::get();
  kaldi::Vector<float>::Resize(a1, (v80 - __src) >> 2, 0, v48, v49);
  v50 = __src;
  if (v80 != __src)
  {
    v51 = (v80 - __src) >> 2;
    v52 = *a1;
    if (v51 <= 1)
    {
      v51 = 1;
    }

    do
    {
      v53 = *v50++;
      *v52++ = v53;
      --v51;
    }

    while (v51);
  }

  v54 = std::istream::peek();
  if (v54 == 10)
  {
LABEL_105:
    std::istream::get();
  }

  else if (v54 == 13)
  {
    std::istream::get();
    goto LABEL_105;
  }

  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0 && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v87, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1481);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v87, "After end of vector data, read error.", 37);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v87);
  }

  v56 = 0;
LABEL_115:
  if (__src)
  {
    v80 = __src;
    operator delete(__src);
  }

  if (SHIBYTE(v86.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v86.__r_.__value_.__l.__data_);
  }

  if (v56)
  {
    goto LABEL_153;
  }

LABEL_120:
  if (v85 < 0)
  {
    operator delete(v84[7].__locale_);
  }

  std::locale::~locale(v84);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_B095C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  v18 = *(v16 + 136);
  if (v18)
  {
    free(v18);
  }

  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_B0970(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a65 & 0x80000000) == 0)
  {
    std::ostringstream::~ostringstream(&a17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xB09FCLL);
}

void sub_B098C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_B0994(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0xB0A08);
}

void sub_B09C0(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a17)
  {
    free(a17);
  }

  JUMPOUT(0xB0A08);
}

void sub_B09D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  std::ostringstream::~ostringstream(&a17);
  _Unwind_Resume(a1);
}

void kaldi::VectorBase<float>::AddVec<float>(uint64_t a1, uint64_t a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("AddVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_68.sectname[12], "dim_ == v.dim_", a6);
  }

  if (a2 == a1)
  {
    kaldi::KaldiAssertFailure_("AddVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_68.sectname[13], "&v != this", a6);
  }

  v6 = *a2;
  v7 = *a1;
  v8 = *(a1 + 8);

  cblas_saxpy(v8, a3, v6, 1, v7, &dword_0 + 1);
}

void kaldi::Vector<double>::Read(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a4)
  {
    v8 = *(a1 + 8);
    v82 = 0;
    v83[0].__locale_ = 0;
    v81 = 0;
    kaldi::Vector<double>::Resize(&v81, v8, 0, a4, a5);
    kaldi::Vector<double>::Read(&v81, a2, a3, 0);
    v12 = *(a1 + 8);
    if (!v12)
    {
      kaldi::Vector<double>::Resize(a1, v82, 0, v10, v11);
      v12 = *(a1 + 8);
    }

    if (v12 != v82)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1378);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Vector<Real>::Read, adding but dimensions mismatch ", 51);
      v59 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, " vs. ", 5);
      std::ostream::operator<<();
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

    kaldi::VectorBase<double>::AddVec<double>(a1, &v81, 1.0, v9, v10, v11);
    if (v81)
    {
      free(v81);
    }

    return;
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v81);
  std::istream::tellg();
  if (a3)
  {
    if (kaldi::Peek(a2, 1) == 70)
    {
      v15 = *(a1 + 8);
      v87 = 0;
      v88 = 0;
      *&__p = 0.0;
      kaldi::Vector<float>::Resize(&__p, v15, 0, v13, v14);
      kaldi::Vector<float>::Read(&__p, a2, 1, 0);
      if (*(a1 + 8) != v87)
      {
        kaldi::Vector<double>::Resize(a1, v87, 0, v17, v18);
      }

      kaldi::VectorBase<double>::CopyFromVec<float>(a1, &__p, v16, v17, v18);
      if (*&__p != 0.0)
      {
        free(__p);
      }

      goto LABEL_120;
    }

    *&__p = 0.0;
    v87 = 0;
    v88 = 0;
    kaldi::ReadToken(a2, 1, &__p, v13, v14);
    if (SHIBYTE(v88) < 0)
    {
      if (v87 != 2)
      {
        goto LABEL_136;
      }

      p_p = __p;
    }

    else
    {
      if (SHIBYTE(v88) != 2)
      {
        goto LABEL_136;
      }

      p_p = &__p;
    }

    if (*p_p == 22084)
    {
      LODWORD(v85.__r_.__value_.__l.__data_) = 0;
      kaldi::ReadBasicType<int>(a2, 1, &v85, v38, v39);
      data = v85.__r_.__value_.__l.__data_;
      if (LODWORD(v85.__r_.__value_.__l.__data_) != *(a1 + 8))
      {
        kaldi::Vector<double>::Resize(a1, LODWORD(v85.__r_.__value_.__l.__data_), 0, v42, v43);
        data = v85.__r_.__value_.__l.__data_;
      }

      if (data >= 1)
      {
        std::istream::read();
      }

      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        if ((SHIBYTE(v88) & 0x80000000) == 0)
        {
          goto LABEL_120;
        }

        v41 = __p;
        goto LABEL_94;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, "Error reading vector data (binary mode); truncated stream? (size = ", 67);
      v74 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v74, ")", 1);
LABEL_163:
      if (SHIBYTE(v88) < 0)
      {
        v68 = __p;
LABEL_152:
        operator delete(v68);
      }

LABEL_153:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1509);
      v69 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Failed to read vector from stream.  ", 36);
      std::stringbuf::str();
      if (v80 >= 0)
      {
        p_src = &__src;
      }

      else
      {
        p_src = __src;
      }

      if (v80 >= 0)
      {
        v71 = HIBYTE(v80);
      }

      else
      {
        v71 = v79;
      }

      v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v69, p_src, v71);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, " File position at start is ", 27);
      v73 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v73, ", currently ", 12);
      std::istream::tellg();
      std::ostream::operator<<();
      if (SHIBYTE(v80) < 0)
      {
        operator delete(__src);
      }

      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&__p);
    }

LABEL_136:
    v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, ": Expected token ", 17);
    v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "DV", 2);
    v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, ", got ", 6);
    if (v88 >= 0)
    {
      v63 = &__p;
    }

    else
    {
      v63 = __p;
    }

    if (v88 >= 0)
    {
      v64 = HIBYTE(v88);
    }

    else
    {
      v64 = v87;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v62, v63, v64);
    goto LABEL_163;
  }

  memset(&v85, 0, sizeof(v85));
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v85);
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, "EOF while trying to read vector.", 32);
LABEL_150:
    if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_153;
    }

    v68 = v85.__r_.__value_.__r.__words[0];
    goto LABEL_152;
  }

  if (!std::string::compare(&v85, "[]"))
  {
    kaldi::Vector<double>::Resize(a1, 0, 0, v19, v20);
    if ((SHIBYTE(v85.__r_.__value_.__r.__words[2]) & 0x80000000) == 0)
    {
      goto LABEL_120;
    }

    v41 = v85.__r_.__value_.__r.__words[0];
LABEL_94:
    operator delete(v41);
    goto LABEL_120;
  }

  if (std::string::compare(&v85, "["))
  {
    v65 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, "Expected [ but got ", 21);
    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v66 = &v85;
    }

    else
    {
      v66 = v85.__r_.__value_.__r.__words[0];
    }

    if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v85.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v85.__r_.__value_.__l.__size_;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v65, v66, size);
    goto LABEL_150;
  }

  v21 = a2 + 4;
  v75 = 22;
  v76 = "Failed to read number.";
  __src = 0;
  v79 = 0;
  v80 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        while (1)
        {
          v22 = std::istream::peek();
          if ((v22 - 48) > 9)
          {
            break;
          }

          *&__p = 0.0;
          std::istream::operator>>();
          if ((*(v21 + *(*a2 - 24)) & 5) != 0)
          {
            goto LABEL_97;
          }

          v23 = std::istream::peek();
          if (v23 <= 0x7F)
          {
            if ((_DefaultRuneLocale.__runetype[v23] & 0x4000) != 0)
            {
              goto LABEL_32;
            }
          }

          else if (__maskrune(v23, 0x4000uLL))
          {
            goto LABEL_32;
          }

          if (std::istream::peek() != 93)
          {
            v75 = 33;
            v76 = "Expected whitespace after number.";
            goto LABEL_97;
          }

LABEL_32:
          v25 = v79;
          if (v79 >= v80)
          {
            v27 = __src;
            v28 = v79 - __src;
            v29 = (v79 - __src) >> 3;
            v30 = v29 + 1;
            if ((v29 + 1) >> 61)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v31 = v80 - __src;
            if ((v80 - __src) >> 2 > v30)
            {
              v30 = v31 >> 2;
            }

            if (v31 >= 0x7FFFFFFFFFFFFFF8)
            {
              v32 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v32 = v30;
            }

            if (v32)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(&__src, v32);
            }

            *(8 * v29) = *&__p;
            v26 = 8 * v29 + 8;
            memcpy(0, v27, v28);
            v33 = __src;
            __src = 0;
            v79 = v26;
            v80 = 0;
            if (v33)
            {
              operator delete(v33);
            }
          }

          else
          {
            *v79 = *&__p;
            v26 = (v25 + 1);
          }

          v79 = v26;
        }

        if (v22 > 31)
        {
          break;
        }

        if (v22 > 9)
        {
          if (v22 == 10 || v22 == 13)
          {
            v45 = "Newline found while reading vector (maybe it's a matrix?)";
            v46 = 57;
            goto LABEL_113;
          }

          goto LABEL_57;
        }

        if (v22 != 9)
        {
          if (v22 == -1)
          {
            v45 = "EOF while reading vector data.";
            v46 = 30;
LABEL_113:
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, v45, v46);
            goto LABEL_114;
          }

          goto LABEL_57;
        }

LABEL_44:
        std::istream::get();
      }

      if (v22 == 32)
      {
        goto LABEL_44;
      }

      if (v22 != 45)
      {
        break;
      }

      std::istream::get();
      if (std::istream::peek() - 48 > 9)
      {
        std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v85);
        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          v34 = v85.__r_.__value_.__r.__words[0];
          if (!strcasecmp(v85.__r_.__value_.__l.__data_, "inf"))
          {
            goto LABEL_77;
          }

          v35 = v34;
LABEL_73:
          if (!strcasecmp(v35, "infinity"))
          {
            goto LABEL_77;
          }

          if (strcasecmp(v34, "nan"))
          {
LABEL_124:
            v56 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, "Expecting numeric vector data, got ", 35);
            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v57 = &v85;
            }

            else
            {
              v57 = v85.__r_.__value_.__r.__words[0];
            }

            if ((v85.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v58 = HIBYTE(v85.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v58 = v85.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, v57, v58);
            goto LABEL_114;
          }

          *&__p = NAN;
          std::vector<double>::push_back[abi:ne200100](&__src, &__p);
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1462);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading negative NaN value into vector.", 39);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
          }
        }

        else
        {
          if (strcasecmp(&v85, "inf"))
          {
            v34 = &v85;
            v35 = &v85;
            goto LABEL_73;
          }

LABEL_77:
          *&__p = -INFINITY;
          std::vector<double>::push_back[abi:ne200100](&__src, &__p);
          if (kaldi::g_kaldi_verbose_level >= -1)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1459);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading negative infinite value into vector.", 44);
            kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
          }
        }
      }

      else
      {
        *&__p = 0.0;
        std::istream::operator>>();
        if ((*(v21 + *(*a2 - 24)) & 5) != 0)
        {
          goto LABEL_97;
        }

        v24 = std::istream::peek();
        if (v24 <= 0x7F)
        {
          if ((_DefaultRuneLocale.__runetype[v24] & 0x4000) != 0)
          {
            goto LABEL_70;
          }
        }

        else if (__maskrune(v24, 0x4000uLL))
        {
          goto LABEL_70;
        }

        if (std::istream::peek() != 93)
        {
          v75 = 33;
          v76 = "Expected whitespace after number.";
LABEL_97:
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v81, v76, v75);
LABEL_114:
          v55 = 1;
          goto LABEL_115;
        }

LABEL_70:
        v77 = -*&__p;
        std::vector<double>::push_back[abi:ne200100](&__src, &v77);
      }
    }

    if (v22 == 93)
    {
      break;
    }

LABEL_57:
    std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v85);
    if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
    {
      v36 = v85.__r_.__value_.__r.__words[0];
      if (!strcasecmp(v85.__r_.__value_.__l.__data_, "inf"))
      {
        goto LABEL_66;
      }

      v37 = v36;
LABEL_62:
      if (!strcasecmp(v37, "infinity"))
      {
        goto LABEL_66;
      }

      if (strcasecmp(v36, "nan"))
      {
        goto LABEL_124;
      }

      *&__p = NAN;
      std::vector<double>::push_back[abi:ne200100](&__src, &__p);
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1499);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading NaN value into vector.", 30);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
      }
    }

    else
    {
      if (strcasecmp(&v85, "inf"))
      {
        v36 = &v85;
        v37 = &v85;
        goto LABEL_62;
      }

LABEL_66:
      *&__p = INFINITY;
      std::vector<double>::push_back[abi:ne200100](&__src, &__p);
      if (kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1496);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "Reading infinite value into vector.", 35);
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
      }
    }
  }

  std::istream::get();
  kaldi::Vector<double>::Resize(a1, (v79 - __src) >> 3, 0, v47, v48);
  v49 = __src;
  if (v79 != __src)
  {
    v50 = (v79 - __src) >> 3;
    v51 = *a1;
    if (v50 <= 1)
    {
      v50 = 1;
    }

    do
    {
      v52 = *v49++;
      *v51 = v52;
      v51 += 8;
      --v50;
    }

    while (v50);
  }

  v53 = std::istream::peek();
  if (v53 == 10)
  {
LABEL_105:
    std::istream::get();
  }

  else if (v53 == 13)
  {
    std::istream::get();
    goto LABEL_105;
  }

  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0 && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&__p, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1481);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&__p, "After end of vector data, read error.", 37);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&__p);
  }

  v55 = 0;
LABEL_115:
  if (__src)
  {
    v79 = __src;
    operator delete(__src);
  }

  if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v85.__r_.__value_.__l.__data_);
  }

  if (v55)
  {
    goto LABEL_153;
  }

LABEL_120:
  if (v84 < 0)
  {
    operator delete(v83[7].__locale_);
  }

  std::locale::~locale(v83);
  std::ostream::~ostream();
  std::ios::~ios();
}

void sub_B1810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a65)
  {
    free(a65);
  }

  std::ostringstream::~ostringstream(&a17);
  _Unwind_Resume(a1);
}

void sub_B1824(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if ((a65 & 0x80000000) == 0)
  {
    std::ostringstream::~ostringstream(&a17);
    _Unwind_Resume(a1);
  }

  JUMPOUT(0xB18A4);
}

void sub_B183C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  std::ostringstream::~ostringstream(va);
  _Unwind_Resume(a1);
}

void sub_B1844(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0xB18B0);
}

void sub_B186C(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17)
{
  if (a17)
  {
    free(a17);
  }

  JUMPOUT(0xB18B0);
}

void sub_B1884(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, int a52, __int16 a53, char a54, char a55)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a55 < 0)
  {
    operator delete(a50);
  }

  std::ostringstream::~ostringstream(&a17);
  _Unwind_Resume(a1);
}

void **kaldi::Vector<float>::Init(void **result, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 < 0)
  {
    kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_B8.addr + 4, "dim >= 0", a5);
  }

  v6 = result;
  if (a2)
  {
    memptr = 0;
    v7 = 4 * a2;
    result = malloc_type_posix_memalign(&memptr, 0x10uLL, 4 * a2, 0x4EA8DD56uLL);
    if (result || !memptr)
    {
      if (v7 < 0 && kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v10, "Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 239);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Negative dimension: size=", 25);
        std::ostream::operator<<();
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v10);
      }

      exception = __cxa_allocate_exception(8uLL);
      v9 = std::bad_alloc::bad_alloc(exception);
    }

    *v6 = memptr;
    *(v6 + 2) = a2;
    *(v6 + 3) = a2;
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  return result;
}

void sub_B19E4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::Vector<double>::Resize(char **a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a2;
  v7 = *a1;
  if (!a3)
  {
    v8 = 1;
    goto LABEL_13;
  }

  if (a3 != 2)
  {
    if (a3 == 3)
    {
      if (!v7)
      {
        kaldi::Vector<double>::Init(a1, a2, a3, a4, a5);
LABEL_25:
        v7 = *a1;
        v14 = 8 * *(a1 + 2);
LABEL_26:

        bzero(v7, v14);
        return;
      }

      if (*(a1 + 2) == a2)
      {
        return;
      }

      v8 = 1;
LABEL_14:
      if (*(a1 + 3) >= a2)
      {
        *(a1 + 2) = a2;
      }

      else if (*(a1 + 2) != a2)
      {
        free(v7);
        *a1 = 0;
        a1[1] = 0;
        kaldi::Vector<double>::Init(a1, v5, v11, v12, v13);
        if ((v8 & 1) == 0)
        {
          return;
        }

        goto LABEL_25;
      }

      if (!v8)
      {
        return;
      }

      v14 = 8 * a2;
      goto LABEL_26;
    }

    v8 = 0;
    if (v7)
    {
      goto LABEL_14;
    }

LABEL_19:
    kaldi::Vector<double>::Init(a1, a2, a3, a4, a5);
    if (!v8)
    {
      return;
    }

    goto LABEL_25;
  }

  v8 = 1;
  if (!a2 || !v7)
  {
LABEL_13:
    if (v7)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  if (*(a1 + 3) >= a2)
  {
    v15 = *(a1 + 2);
    if (a2 > v15)
    {
      bzero(&v7[8 * v15], 8 * (a2 - v15));
    }

    *(a1 + 2) = v5;
  }

  else
  {
    __dst = 0;
    v20 = 0;
    v21 = 0;
    kaldi::Vector<double>::Resize(&__dst, a2, 1);
    v9 = *(a1 + 2);
    v10 = *a1;
    if (v9 >= v5)
    {
      memcpy(__dst, v10, 8 * v5);
    }

    else
    {
      memcpy(__dst, v10, 8 * v9);
      bzero(__dst + 8 * *(a1 + 2), 8 * (v5 - *(a1 + 2)));
    }

    v16 = __dst;
    __dst = *a1;
    v17 = __dst;
    *a1 = v16;
    v18 = v20;
    v20 = a1[1];
    a1[1] = v18;
    if (v17)
    {
      free(v17);
    }
  }
}

void kaldi::VectorBase<double>::AddVec<double>(uint64_t a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("AddVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_68.segname[5], "dim_ == v.dim_", a6);
  }

  if (a2 == a1)
  {
    kaldi::KaldiAssertFailure_("AddVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_68.segname[6], "&v != this", a6);
  }

  v6 = *a2;
  v7 = *a1;
  v8 = *(a1 + 8);

  cblas_daxpy(v8, a3, v6, 1, v7, &dword_0 + 1);
}

void **kaldi::Vector<double>::Init(void **result, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 < 0)
  {
    kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_B8.addr + 4, "dim >= 0", a5);
  }

  v6 = result;
  if (a2)
  {
    memptr = 0;
    v7 = 8 * a2;
    result = malloc_type_posix_memalign(&memptr, 0x10uLL, 8 * a2, 0x4EA8DD56uLL);
    if (result || !memptr)
    {
      if (v7 < 0 && kaldi::g_kaldi_verbose_level >= -1)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v10, "Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 239);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "Negative dimension: size=", 25);
        std::ostream::operator<<();
        kaldi::KaldiWarnMessage::~KaldiWarnMessage(v10);
      }

      exception = __cxa_allocate_exception(8uLL);
      v9 = std::bad_alloc::bad_alloc(exception);
    }

    *v6 = memptr;
    *(v6 + 2) = a2;
    *(v6 + 3) = a2;
  }

  else
  {
    *result = 0;
    result[1] = 0;
  }

  return result;
}

void sub_B1D68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(va);
  _Unwind_Resume(a1);
}

BOOL kaldi::VectorBase<float>::IsZero(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    v4 = 0.0;
  }

  else
  {
    v3 = *a1;
    v4 = 0.0;
    do
    {
      v5 = *v3++;
      v6 = fabsf(v5);
      if (v6 >= v4)
      {
        v4 = v6;
      }

      --v2;
    }

    while (v2);
  }

  return v4 <= a2;
}

unsigned int *kaldi::VectorBase<float>::Set(unsigned int *result, int16x4_t a2)
{
  v2 = result[2];
  if (v2 >= 1)
  {
    v3 = (v2 + 3) & 0xFFFFFFFC;
    v4 = vdupq_n_s64(v2 - 1);
    v5 = xmmword_2120F0;
    v6 = xmmword_212100;
    v7 = (*result + 8);
    v8 = vdupq_n_s64(4uLL);
    do
    {
      v9 = vmovn_s64(vcgeq_u64(v4, v6));
      if (vuzp1_s16(v9, a2).u8[0])
      {
        *(v7 - 2) = a2.i32[0];
      }

      if (vuzp1_s16(v9, a2).i8[2])
      {
        *(v7 - 1) = a2.i32[0];
      }

      if (vuzp1_s16(a2, vmovn_s64(vcgeq_u64(v4, *&v5))).i32[1])
      {
        *v7 = a2.i32[0];
        v7[1] = a2.i32[0];
      }

      v5 = vaddq_s64(v5, v8);
      v6 = vaddq_s64(v6, v8);
      v7 += 4;
      v3 -= 4;
    }

    while (v3);
  }

  return result;
}

void kaldi::VectorBase<float>::SetRandn(uint64_t a1)
{
  v7 = kaldi::Rand(0);
  if (*(a1 + 8) >= 1)
  {
    v2 = 0;
    do
    {
      v3 = (kaldi::Rand(&v7) + 1.0) / 2147483650.0;
      v4 = sqrtf(logf(v3) * -2.0);
      v5 = (kaldi::Rand(&v7) + 1.0) / 2147483650.0;
      v6 = v5 * 6.28318531;
      *(*a1 + 4 * v2++) = v4 * cosf(v6);
    }

    while (v2 < *(a1 + 8));
  }
}

double kaldi::VectorBase<float>::Sum(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0.0;
  }

  v2 = *a1;
  result = 0.0;
  do
  {
    v4 = *v2++;
    result = result + v4;
    --v1;
  }

  while (v1);
  *&result = result;
  return result;
}

void kaldi::VectorBase<float>::Min(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "Min", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 745);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Empty vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v3 = *a1;
  if (v2 >= 4)
  {
    LODWORD(v4) = v2 & 0x7FFFFFFC;
    LODWORD(a2) = 2139095040;
    v5 = 4;
    v6 = *a1;
    do
    {
      v7 = *v6;
      if (vmaxv_u16(vmovn_s32(vcgtq_f32(vdupq_lane_s32(*&a2, 0), *v6))))
      {
        LODWORD(v8) = HIDWORD(v6->i64[0]);
        if (v7.f32[0] < v7.f32[1])
        {
          LODWORD(v8) = *v6->f32;
        }

        v7.i32[0] = HIDWORD(*v6);
        if (v7.f32[2] < v7.f32[3])
        {
          v7.i32[0] = v6->i64[1];
        }

        if (v8 < *&a2)
        {
          *&a2 = v8;
        }

        if (v7.f32[0] < *&a2)
        {
          *&a2 = v7.f32[0];
        }
      }

      v5 += 4;
      ++v6;
    }

    while (v5 <= v2);
  }

  else
  {
    LODWORD(v4) = 0;
    LODWORD(a2) = 2139095040;
  }

  if (v4 < v2)
  {
    v4 = v4;
    do
    {
      if (v3->f32[v4] < *&a2)
      {
        LODWORD(a2) = v3->i32[v4];
      }

      ++v4;
    }

    while (v2 > v4);
  }
}

float kaldi::VectorBase<float>::ReverseCopyFromVec(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8) || (v6 = *a1, *a1 == *a2))
  {
    kaldi::KaldiAssertFailure_("ReverseCopyFromVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_108.size + 6, "Dim() == v.Dim() && data_ != v.data_", a5);
  }

  if (v5 >= 1)
  {
    v7 = *a2 - 4;
    v8 = 4 * v5;
    do
    {
      result = *(v7 + v8);
      *v6++ = result;
      v8 -= 4;
    }

    while (v8);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::ApplyFloor(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *a1;
  do
  {
    if (*v5 < a2)
    {
      *v5 = a2;
      result = (result + 1);
    }

    ++v5;
    --v2;
  }

  while (v2);
  return result;
}

uint64_t kaldi::VectorBase<float>::ApplyCeiling(uint64_t a1, float a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = *a1;
  do
  {
    if (*v5 > a2)
    {
      *v5 = a2;
      result = (result + 1);
    }

    ++v5;
    --v2;
  }

  while (v2);
  return result;
}

float kaldi::VectorBase<float>::MulElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("MulElements", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_4C8.sectname[8], "dim_ == v.dim_", a5);
  }

  if (v5 >= 1)
  {
    v6 = *a2;
    v7 = *a1;
    do
    {
      v8 = *v6++;
      result = v8 * *v7;
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void kaldi::VectorBase<float>::ApplySoftMax(uint64_t a1, double a2)
{
  kaldi::VectorBase<float>::Max(a1, a2);
  v4 = *(a1 + 8);
  v5 = *a1;
  if (v4 >= 1)
  {
    v6 = *a1;
    v7 = *(a1 + 8);
    do
    {
      *v6 = *v6 - v3;
      ++v6;
      --v7;
    }

    while (v7);
  }

  LODWORD(v13[0]) = v4;
  vvexpf(v5, v5, v13);
  v8 = *(a1 + 8);
  if (v8 < 1)
  {
    goto LABEL_9;
  }

  v9 = 0;
  v10 = *a1;
  v11 = 0.0;
  do
  {
    v11 = v11 + v10[v9++];
  }

  while (v8 != v9);
  v12 = v11;
  if (v12 == 0.0)
  {
LABEL_9:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v13, "ApplySoftMax", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1066);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v13, "SoftMax produced NaN on vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

  cblas_sscal(v8, 1.0 / v12, v10, 1);
  logf(v12);
}

void kaldi::VectorBase<float>::Max(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v9, "Max", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 703);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v9, "Empty vector");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v9);
  }

  v3 = *a1;
  if (v2 >= 4)
  {
    LODWORD(v4) = v2 & 0x7FFFFFFC;
    LODWORD(a2) = -8388608;
    v5 = 4;
    v6 = *a1;
    do
    {
      v7 = *v6;
      if (vmaxv_u16(vmovn_s32(vcgtq_f32(*v6, vdupq_lane_s32(*&a2, 0)))))
      {
        LODWORD(v8) = HIDWORD(v6->i64[0]);
        if (v7.f32[0] > v7.f32[1])
        {
          LODWORD(v8) = *v6->f32;
        }

        v7.i32[0] = HIDWORD(*v6);
        if (v7.f32[2] > v7.f32[3])
        {
          v7.i32[0] = v6->i64[1];
        }

        if (v8 > *&a2)
        {
          *&a2 = v8;
        }

        if (v7.f32[0] > *&a2)
        {
          *&a2 = v7.f32[0];
        }
      }

      v5 += 4;
      ++v6;
    }

    while (v5 <= v2);
  }

  else
  {
    LODWORD(v4) = 0;
    LODWORD(a2) = -8388608;
  }

  if (v4 < v2)
  {
    v4 = v4;
    do
    {
      if (v3->f32[v4] > *&a2)
      {
        LODWORD(a2) = v3->i32[v4];
      }

      ++v4;
    }

    while (v2 > v4);
  }
}

uint64_t kaldi::VectorBase<float>::Add(uint64_t result, float a2)
{
  v2 = *(result + 8);
  if (v2 >= 1)
  {
    v3 = *result;
    do
    {
      *v3 = *v3 + a2;
      ++v3;
      --v2;
    }

    while (v2);
  }

  return result;
}

void kaldi::VectorBase<float>::Sigmoid(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("Sigmoid", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_478.segname[10], "dim_ == src.dim_", a5);
  }

  kaldi::VectorBase<float>::CopyFromVec(a1, a2, a3, a4, a5);
  cblas_sscal(*(a1 + 8), 0.5, *a1, 1);
  v10 = *(a1 + 8);
  vvtanhf(*a1, *a1, &v10);
  v6 = *(a1 + 8);
  v7 = *a1;
  if (v6 >= 1)
  {
    v8 = *a1;
    v9 = *(a1 + 8);
    do
    {
      *v8 = *v8 + 1.0;
      ++v8;
      --v9;
    }

    while (v9);
  }

  cblas_sscal(v6, 0.5, v7, 1);
}

float kaldi::VectorBase<float>::Norm(uint64_t a1, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a2 < 0.0)
  {
    kaldi::KaldiAssertFailure_("Norm", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_248.flags + 1, "p >= 0.0", a6);
  }

  if (a2 == 0.0)
  {
    v7 = *(a1 + 8);
    if (v7 < 1)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v8 = *a1;
      LODWORD(v9) = 0;
      do
      {
        v10 = *v8++;
        if (v10 != 0.0)
        {
          *&v9 = *&v9 + 1.0;
        }

        --v7;
      }

      while (v7);
    }

    return *&v9;
  }

  if (a2 == 1.0)
  {
    v12 = *(a1 + 8);
    v13 = *a1;

    *&v9 = cblas_sasum(v12, v13, 1);
    return *&v9;
  }

  v14 = *(a1 + 8);
  if (a2 == 2.0)
  {
    v15 = *a1;
    v16 = *(a1 + 8);

    *&v9 = cblas_snrm2(v16, v15, 1);
    return *&v9;
  }

  if (v14 < 1)
  {
    *&v9 = powf(0.0, 1.0 / a2);
    if (*&v9 != INFINITY)
    {
      return *&v9;
    }

LABEL_31:
    kaldi::KaldiAssertFailure_("Norm", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_298.sectname[5], "tmp != HUGE_VAL", v22);
  }

  v17 = *a1;
  v18 = 1;
  v19 = 0.0;
  do
  {
    v20 = *v17++;
    v21 = powf(fabsf(v20), a2);
    v18 &= v21 != INFINITY;
    v19 = v19 + v21;
    --v14;
  }

  while (v14);
  *&v9 = powf(v19, 1.0 / a2);
  if (*&v9 == INFINITY)
  {
    goto LABEL_31;
  }

  if ((v18 & 1) == 0)
  {
    kaldi::VectorBase<float>::Max(a1, v9);
    v24 = *&v23;
    kaldi::VectorBase<float>::Min(a1, v23);
    v28 = -v27;
    if (v24 < v28)
    {
      v24 = v28;
    }

    if (v24 <= 0.0)
    {
      kaldi::KaldiAssertFailure_("Norm", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_298.sectname[11], "max_abs > 0", v26);
    }

    __X = 0;
    *__N = 0;
    v40 = 0;
    kaldi::Vector<float>::Resize(&__X, *(a1 + 8), 1, v25, v26);
    kaldi::VectorBase<float>::CopyFromVec(&__X, a1, v29, v30, v31);
    cblas_sscal(__N[0], 1.0 / v24, __X, 1);
    v36 = kaldi::VectorBase<float>::Norm(&__X, a2, v32, v33, v34, v35);
    if (__X)
    {
      free(__X);
    }

    *&v9 = v24 * v36;
  }

  return *&v9;
}

void sub_B2818(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10)
{
  if (a10)
  {
    free(a10);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::VectorBase<float>::InvertElements(uint64_t result)
{
  v1 = *(result + 8);
  if (v1 >= 1)
  {
    v2 = *result;
    do
    {
      *v2 = 1.0 / *v2;
      ++v2;
      --v1;
    }

    while (v1);
  }

  return result;
}

uint64_t kaldi::VectorBase<float>::ReplaceValue(uint64_t result, float a2, float a3)
{
  v3 = *(result + 8);
  if (v3 >= 1)
  {
    v4 = *result;
    do
    {
      if (*v4 == a2)
      {
        *v4 = a3;
      }

      ++v4;
      --v3;
    }

    while (v3);
  }

  return result;
}

float kaldi::VectorBase<float>::DivElements(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a1 + 8);
  if (v5 != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("DivElements", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_4C8.offset + 3, "dim_ == v.dim_", a5);
  }

  if (v5 >= 1)
  {
    v6 = *a2;
    v7 = *a1;
    do
    {
      v8 = *v6++;
      result = *v7 / v8;
      *v7++ = result;
      --v5;
    }

    while (v5);
  }

  return result;
}

void kaldi::VectorBase<float>::AddVecVec(uint64_t a1, uint64_t a2, uint64_t a3, float a4, float a5, uint64_t a6, const char *a7)
{
  __Y = *a1;
  if (*a2 == *a1 || (__X = *a3, *a3 == __Y))
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_4C8.size + 1, "v.data_ != this->data_ && r.data_ != this->data_", a7);
  }

  v10 = *(a1 + 8);
  v11 = *(a3 + 8);
  if (v10 != *(a2 + 8) || v10 != v11)
  {
    kaldi::KaldiAssertFailure_("AddVecVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_4C8.size + 3, "dim_ == v.dim_ && dim_ == r.dim_", a7);
  }

  cblas_sgbmv(CblasRowMajor, CblasNoTrans, v10, v10, 0, 0, a4, *a2, 1, __X, 1, a5, __Y, 1);
}

void *kaldi::VectorBase<float>::CopyRowsFromMat(char **a1, kaldi::ContextDependency *this)
{
  v4 = *(a1 + 2);
  v5 = kaldi::ContextDependency::ContextWidth(this);
  if (v4 != kaldi::ContextDependency::CentralPosition(this) * v5)
  {
    kaldi::KaldiAssertFailure_("CopyRowsFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_1A8.sectname[11], "dim_ == mat.NumCols() * mat.NumRows()", v6);
  }

  v7 = *a1;
  v8 = kaldi::ContextDependency::ContextWidth(this);
  v9 = kaldi::ContextDependency::CentralPosition(this);
  v10 = fst::StateOrderQueue<int>::Head_(this);
  result = kaldi::ContextDependency::ContextWidth(this);
  if (v10 == result)
  {
    v13 = *this;

    return memcpy(v7, v13, 4 * v9 * v8);
  }

  else if (v9 >= 1)
  {
    v14 = 0;
    v15 = 4 * v8;
    do
    {
      if (*(this + 3) <= v14)
      {
        kaldi::KaldiAssertFailure_("RowData", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v12);
      }

      result = memcpy(v7, (*this + 4 * (*(this + 4) * v14++)), v15);
      v7 += v15;
    }

    while (v9 != v14);
  }

  return result;
}

void kaldi::VectorBase<float>::CopyRowsFromMat(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 8);
  v7 = *a2;
  if (*a2)
  {
    LODWORD(v7) = *(v7 + 8) * *(v7 + 12);
  }

  if (v6 != v7)
  {
    kaldi::KaldiAssertFailure_("CopyRowsFromMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_1A8.segname[14], "dim_ == mat.NumCols() * mat.NumRows()", a5);
  }

  kaldi::SubMatrix<float>::SubMatrix(v8, *a1, 1, v6, v6);
  kaldi::CompressedMatrix::CopyToMat<float>(a2, v8);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
}

uint64_t kaldi::VectorBase<float>::CountZeros(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0;
  }

  v2 = *a1;
  v3 = 0.0;
  do
  {
    v4 = *v2++;
    if (v4 == 0.0)
    {
      v3 = v3 + 1.0;
    }

    --v1;
  }

  while (v1);
  return v3;
}

uint64_t kaldi::VectorBase<float>::AddColSumMat(uint64_t a1, kaldi::ContextDependency *this, float a3, float a4)
{
  v8 = *(a1 + 8);
  if (v8 != kaldi::ContextDependency::CentralPosition(this))
  {
    kaldi::KaldiAssertFailure_("AddColSumMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_338.size + 5, "dim_ == M.NumRows()", v9);
  }

  result = kaldi::ContextDependency::ContextWidth(this);
  v12 = *(a1 + 8);
  if (v12 >= 1)
  {
    v13 = 0;
    v14 = *this;
    v15 = *(this + 3);
    v16 = 4 * *(this + 4);
    do
    {
      if (v13 == v15)
      {
        kaldi::KaldiAssertFailure_("RowData", "../subproject/libquasar/libkaldi/src/matrix/kaldi-matrix.h", &stru_B8.sectname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v11);
      }

      v17 = 0.0;
      if (result >= 1)
      {
        v18 = result;
        v19 = v14;
        do
        {
          v20 = *v19++;
          v17 = v17 + v20;
          --v18;
        }

        while (v18);
      }

      v21 = (*(*a1 + 4 * v13) * a4) + a3 * v17;
      *(*a1 + 4 * v13++) = v21;
      v14 = (v14 + v16);
    }

    while (v13 != v12);
  }

  return result;
}

void kaldi::VectorBase<float>::AddDiagMat2(uint64_t a1, kaldi::ContextDependency *this, int a3, float a4, float a5)
{
  v9 = *(a1 + 8);
  if (a3 == 111)
  {
    if (v9 != kaldi::ContextDependency::CentralPosition(this))
    {
      kaldi::KaldiAssertFailure_("AddDiagMat2", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_608.offset + 2, "this->dim_ == M.NumRows()", v10);
    }

    v11 = *(a1 + 8);
    v12 = kaldi::ContextDependency::ContextWidth(this);
    v13 = fst::StateOrderQueue<int>::Head_(this);
    if (v11 >= 1)
    {
      v14 = *this;
      v15 = *a1;
      v16 = 4 * v13;
      do
      {
        v17 = *v15;
        *v15++ = (cblas_sdot(v12, v14, 1, v14, 1) * a4) + (a5 * v17);
        v14 = (v14 + v16);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    if (v9 != kaldi::ContextDependency::ContextWidth(this))
    {
      kaldi::KaldiAssertFailure_("AddDiagMat2", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_608.reloff + 2, "this->dim_ == M.NumCols()", v18);
    }

    v19 = kaldi::ContextDependency::CentralPosition(this);
    v20 = *(a1 + 8);
    v21 = fst::StateOrderQueue<int>::Head_(this);
    if (v20 >= 1)
    {
      v22 = v21;
      v23 = *this;
      v24 = *a1;
      do
      {
        v25 = *v24;
        *v24++ = (cblas_sdot(v19, v23, v22, v23, v22) * a4) + (a5 * v25);
        ++v23;
        --v20;
      }

      while (v20);
    }
  }
}

void kaldi::VectorBase<float>::AddDiagMatMat(uint64_t a1, kaldi::ContextDependency *this, int a3, kaldi::ContextDependency *a4, int a5, float a6, float a7)
{
  v14 = *(a1 + 8);
  if (a3 == 112)
  {
    v15 = kaldi::ContextDependency::CentralPosition(this);
  }

  else
  {
    v15 = kaldi::ContextDependency::ContextWidth(this);
  }

  v16 = v15;
  if (a5 == 112)
  {
    v17 = kaldi::ContextDependency::ContextWidth(a4);
  }

  else
  {
    v17 = kaldi::ContextDependency::CentralPosition(a4);
  }

  if (v16 != v17)
  {
    kaldi::KaldiAssertFailure_("AddDiagMatMat", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_608.reserved3 + 2, "M_col_dim == N_row_dim", v18);
  }

  v19 = fst::StateOrderQueue<int>::Head_(this);
  v20 = v19;
  if (a3 == 112)
  {
    v21 = v19;
  }

  else
  {
    v21 = 1;
  }

  v22 = fst::StateOrderQueue<int>::Head_(a4);
  if (a5 == 112)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  if (v14 >= 1)
  {
    v24 = *a4;
    v25 = *this;
    v26 = *a1;
    if (a5 == 112)
    {
      v27 = v22;
    }

    else
    {
      v27 = 1;
    }

    if (a3 == 112)
    {
      v28 = 1;
    }

    else
    {
      v28 = v20;
    }

    v29 = 4 * v27;
    v30 = 4 * v28;
    do
    {
      v31 = *v26;
      *v26++ = (cblas_sdot(v16, v25, v21, v24, v23) * a6) + (a7 * v31);
      v24 = (v24 + v29);
      v25 = (v25 + v30);
      --v14;
    }

    while (v14);
  }
}

void kaldi::VectorBase<float>::Write(uint64_t a1, void *a2, int a3)
{
  if (*(a2 + *(*a2 - 24) + 32))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1518);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Failed to write vector to stream: stream not good");
    goto LABEL_13;
  }

  if (a3)
  {
    boost::filesystem::path::path(__p, "FV");
    kaldi::WriteToken(a2, 1, __p, v5, v6);
    kaldi::WriteBasicType<int>(a2, 1, *(a1 + 8));
    std::ostream::write();
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  else
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, " [ ", 3);
    if (*(a1 + 8) >= 1)
    {
      v7 = 0;
      do
      {
        v8 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " ", 1);
        ++v7;
      }

      while (v7 < *(a1 + 8));
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a2, "]\n", 2);
  }

  if (*(a2 + *(*a2 - 24) + 32))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "Write", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", 1535);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(__p, "Failed to write vector to stream");
LABEL_13:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }
}

BOOL kaldi::VectorBase<double>::IsZero(uint64_t a1, double a2)
{
  v2 = *(a1 + 8);
  if (v2 < 1)
  {
    v4 = 0.0;
  }

  else
  {
    v3 = *a1;
    v4 = 0.0;
    do
    {
      v5 = *v3++;
      v6 = fabs(v5);
      if (v6 >= v4)
      {
        v4 = v6;
      }

      --v2;
    }

    while (v2);
  }

  return v4 <= a2;
}

double kaldi::VectorBase<double>::Sum(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 < 1)
  {
    return 0.0;
  }

  v2 = *a1;
  result = 0.0;
  do
  {
    v4 = *v2++;
    result = result + v4;
    --v1;
  }

  while (v1);
  return result;
}

void kaldi::VectorBase<float>::AddMatVec<signed char>(uint64_t a1, kaldi::ContextDependency *this, int a3, uint64_t a4, const char *a5, float a6, float a7)
{
  if (a3 != 111 || kaldi::ContextDependency::ContextWidth(this) != *(a4 + 8) || kaldi::ContextDependency::CentralPosition(this) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_68.size + 6, "trans == kNoTrans && M.NumCols() == v.Dim() && M.NumRows() == dim_", a5);
  }

  if (a6 != 1.0)
  {
    kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_68.offset, "alpha == 1.0", a5);
  }

  kaldi::QuantizedVectorBase<signed char>::AddMatVec(a4, this, a1, a7, v12, a5);
}

void kaldi::VectorBase<float>::AddMatVec<short>(uint64_t a1, kaldi::ContextDependency *this, int a3, float32x4_t *a4, const char *a5, float a6, float a7)
{
  if (a3 != 111 || kaldi::ContextDependency::ContextWidth(this) != a4->i32[2] || kaldi::ContextDependency::CentralPosition(this) != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_68.size + 6, "trans == kNoTrans && M.NumCols() == v.Dim() && M.NumRows() == dim_", a5);
  }

  if (a6 != 1.0)
  {
    kaldi::KaldiAssertFailure_("AddMatVec", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_68.offset, "alpha == 1.0", a5);
  }

  kaldi::QuantizedVectorBase<short>::AddMatVec(a4, this, a1, a7, v12, a5);
}

void kaldi::VectorBase<float>::ApplyPow(uint64_t a1, float a2)
{
  v3 = a2;
  v2 = *(a1 + 8);
  vvpowsf(*a1, &v3, *a1, &v2);
}

void kaldi::VectorBase<float>::Tanh(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 8) != *(a2 + 8))
  {
    kaldi::KaldiAssertFailure_("Tanh", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/kaldi-vector.cc", &stru_428.size + 5, "dim_ == src.dim_", a5);
  }

  v5 = *(a1 + 8);
  vvtanhf(*a1, *a2, &v5);
}

void kaldi::ComplexFft<float>(uint64_t a1, uint64_t a2, void **a3, uint64_t a4, const char *a5)
{
  if (!a1)
  {
    kaldi::KaldiAssertFailure_("ComplexFft", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/matrix-functions.cc", stru_158.sectname, "v != NULL", a5);
  }

  v6 = *(a1 + 8);
  if (v6 >= 2)
  {
    if (v6)
    {
      kaldi::KaldiAssertFailure_("ComplexFft", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/matrix-functions.cc", &stru_158.sectname[3], "v->Dim() % 2 == 0", a5);
    }

    v9 = v6 >> 1;
    __p = 0;
    v14 = 0;
    v15 = 0;
    kaldi::Factorize<int>(v6 >> 1, &__p, a3, a4, a5);
    if (v14 == __p)
    {
      v10 = 0;
    }

    else
    {
      v10 = __p;
    }

    memset(v12, 0, sizeof(v12));
    if (a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = v12;
    }

    kaldi::ComplexFftRecursive<float>(*a1, 1, v9, v10, &v10[v14 - __p], a2, v11);
    kaldi::Vector<float>::Destroy(v12);
    if (__p)
    {
      v14 = __p;
      operator delete(__p);
    }
  }
}

void sub_B35E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  kaldi::Vector<float>::Destroy(&a9);
  if (__p)
  {
    a13 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void kaldi::Factorize<int>(int a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!a2)
  {
    kaldi::KaldiAssertFailure_("Factorize", "../subproject/libquasar/libkaldi/src/base/kaldi-math.h", &stru_158.segname[1], "factors != NULL", a5);
  }

  v5 = a1;
  if (a1 <= 0)
  {
    kaldi::KaldiAssertFailure_("Factorize", "../subproject/libquasar/libkaldi/src/base/kaldi-math.h", &stru_158.segname[2], "m >= 1", a5);
  }

  v7 = 0;
  *(a2 + 8) = *a2;
  v12[0] = xmmword_21A168;
  v12[1] = unk_21A178;
  v13 = 0x1D00000017;
  while (v5 != 1)
  {
    v8 = v12 + v7;
    while (1)
    {
      v9 = *v8;
      if (v5 % *v8)
      {
        break;
      }

      std::vector<int>::push_back[abi:ne200100](a2, v12 + v7);
      v5 /= v9;
    }

    if (++v7 == 10)
    {
      v11 = 31;
      if (v5 != 1)
      {
        v10 = 31;
        do
        {
          while (!(v5 % v10))
          {
            std::vector<int>::push_back[abi:ne200100](a2, &v11);
            v5 /= v10;
            v10 = v11;
          }

          v10 += 2;
          v11 = v10;
        }

        while (v5 != 1);
      }

      return;
    }
  }
}

void kaldi::ComplexFftRecursive<float>(uint64_t a1, int a2, uint64_t a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7)
{
  if (a4 == a5)
  {
    if (a3 != 1)
    {
      kaldi::KaldiAssertFailure_("ComplexFftRecursive", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/matrix-functions.cc", &stru_68.sectname[7], "N == 1", a5);
    }
  }

  else
  {
    v12 = a2;
    v14 = 2 * a3;
    if (a2 < 2 || 8 * a3 * a2 <= 0x2000 || ((0x2000 / (8 * a3)) <= 1 ? (v15 = 1) : (v15 = 0x2000 / (8 * a3)), v15 >= a2))
    {
      v18 = *a4;
      if (v18 <= 1)
      {
        kaldi::KaldiAssertFailure_("ComplexFftRecursive", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/matrix-functions.cc", &stru_68.addr + 1, "P > 1", a5);
      }

      v19 = (a3 / v18);
      if (v19 >= 2)
      {
        if (*(a7 + 8) < a3)
        {
          kaldi::Vector<float>::Resize(a7, a3, 0, a4, a5);
        }

        if (v12 >= 1)
        {
          v20 = 0;
          v21 = *a7;
          LODWORD(v22) = v19 * v18;
          if (v19 * v18 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v22;
          }

          v23 = a1;
          do
          {
            v24 = 0;
            v25 = 1;
            do
            {
              v26 = 0;
              v27 = v25;
              v28 = 4 * v24;
              v29 = v28;
              v30 = v21;
              do
              {
                v31 = (a3 / v18);
                v32 = v29;
                v33 = v30;
                do
                {
                  *v33 = *(v23 + v32);
                  v33 += 4;
                  v32 += 8 * v18;
                  --v31;
                }

                while (v31);
                ++v26;
                v30 += 4 * v19;
                v29 += 8;
              }

              while (v26 != v18);
              v34 = v22;
              v35 = v21;
              do
              {
                v36 = *v35;
                v35 += 4;
                *(v23 + v28) = v36;
                v28 += 8;
                --v34;
              }

              while (v34);
              v25 = 0;
              v24 = 1;
            }

            while ((v27 & 1) != 0);
            ++v20;
            v23 += 4 * v14;
          }

          while (v20 != v12);
        }
      }

      kaldi::ComplexFftRecursive<float>(a1, v18 * v12, (a3 / v18), a4 + 4, a5, a6, a7);
      if (a6)
      {
        v37 = -6.28318531;
      }

      else
      {
        v37 = 6.28318531;
      }

      v38 = v37 / a3;
      v39 = __sincosf_stret(v38);
      v40 = v37 / v18;
      v43 = __sincosf_stret(v40);
      if (*(a7 + 8) < 2 * v18)
      {
        kaldi::Vector<float>::Resize(a7, (2 * v18), 0, *&v41, v42);
      }

      if (v14 * v12)
      {
        v44 = *a7;
        v45 = a1 + 4 * v14 * v12;
        if (v18 <= 3)
        {
          v46 = 3;
        }

        else
        {
          v46 = v18;
        }

        v47 = (a1 + 4);
        v48 = a1 + 4 + 16 * v19;
        v49 = 4 * v14;
        v50 = 8 * v19;
        v51 = v46 - 2;
        do
        {
          if (v19 >= 1)
          {
            v52 = 0;
            v53 = 1.0;
            v54 = 0.0;
            v55 = v47;
            v56 = v48;
            do
            {
              v57 = 0;
              v58 = (2 * ((v52 + v19) & 0x3FFFFFFFFFFFFFFFLL)) | 1;
              v59 = v54;
              v60 = v53;
              do
              {
                v61 = *(a1 + 8 * v52);
                v62 = 8 * v57;
                *&v44[v62] = v61;
                v63 = *(a1 + 4 * ((2 * (v52 & 0x3FFFFFFFFFFFFFFFLL)) | 1));
                v64 = (2 * (v57 & 0x3FFFFFFFFFFFFFFFLL)) | 1;
                *&v44[4 * v64] = v63;
                v65 = v61 + ((*(a1 + 8 * (v52 + v19)) * v60) - (*(a1 + 4 * v58) * v59));
                *&v44[v62] = v65;
                v66 = v63 + ((v60 * *(a1 + 4 * v58)) + (*(a1 + 8 * (v52 + v19)) * v59));
                *&v44[4 * v64] = v66;
                if (v18 != 2)
                {
                  v67 = v51;
                  v68 = v56;
                  v69 = v59;
                  v70 = v60;
                  do
                  {
                    v71 = -(v69 * v59);
                    v69 = (v60 * v69) + (v70 * v59);
                    v70 = v71 + (v70 * v60);
                    v65 = v65 + ((*(v68 - 1) * v70) - (*v68 * v69));
                    *&v44[8 * v57] = v65;
                    v66 = v66 + ((v70 * *v68) + (*(v68 - 1) * v69));
                    *&v44[4 * v64] = v66;
                    v68 = (v68 + v50);
                    --v67;
                  }

                  while (v67);
                }

                if (v57 != v18 - 1)
                {
                  v72 = -(v59 * v43.__sinval);
                  v59 = (v43.__cosval * v59) + (v60 * v43.__sinval);
                  v60 = v72 + (v60 * v43.__cosval);
                }

                ++v57;
              }

              while (v57 != v18);
              v73 = v18;
              v74 = (v44 + 4);
              v75 = v55;
              do
              {
                *(v75 - 1) = *(v74 - 1);
                v76 = *v74;
                v74 += 2;
                *v75 = v76;
                v75 = (v75 + v50);
                --v73;
              }

              while (v73);
              v77 = -(v54 * v39.__sinval);
              v54 = (v39.__cosval * v54) + (v53 * v39.__sinval);
              ++v52;
              v53 = v77 + (v53 * v39.__cosval);
              v56 += 2;
              v55 += 2;
            }

            while (v52 != v19);
          }

          a1 += 4 * v14;
          v48 += v49;
          v47 = (v47 + v49);
        }

        while (a1 != v45);
      }
    }

    else
    {
      do
      {
        if (v15 >= v12)
        {
          v16 = v12;
        }

        else
        {
          v16 = v15;
        }

        kaldi::ComplexFftRecursive<float>(a1, v16, a3, a4, a5, a6, a7);
        a1 += 4 * v14 * v16;
        v17 = __OFSUB__(v12, v16);
        v12 -= v16;
      }

      while (!((v12 < 0) ^ v17 | (v12 == 0)));
    }
  }
}

void kaldi::RealFft<float>(uint64_t a1, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!a1)
  {
    kaldi::KaldiAssertFailure_("RealFft", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/matrix-functions.cc", &stru_158.reloff + 1, "v != NULL", a5);
  }

  v6 = *(a1 + 8);
  if (v6)
  {
    kaldi::KaldiAssertFailure_("RealFft", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/matrix-functions.cc", &stru_158.reloff + 3, "N%2 == 0", a5);
  }

  if (v6)
  {
    v7 = a2;
    if (a2)
    {
      kaldi::ComplexFft<float>(a1, 1, 0, a4, a5);
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    v9 = *a1;
    v10 = 6.28318531 / v6 * v8;
    v13 = __sincosf_stret(v10);
    if (v6 >= 4)
    {
      v14 = -v8;
      v15 = (v6 / 2);
      v16 = v15 - 1;
      v17 = (v9 + 2);
      v18 = &v9[2 * v15 - 1];
      v19 = &v9[v6 - 2];
      v20 = 0.0;
      v21 = 2;
      v22 = 1;
      do
      {
        v23 = -(v20 * v13.__sinval);
        v24 = v13.__cosval * v20;
        v25 = vadd_f32(*v17, *v19);
        v26 = vsub_f32(*v17, *v19);
        v27 = vext_s8(v25, v26, 4uLL);
        v25.i32[1] = v26.i32[1];
        v20 = v24 + (v14 * v13.__sinval);
        v14 = v23 + (v14 * v13.__cosval);
        v28 = vmul_f32(v25, 0x3F0000003F000000);
        v29 = vmul_f32(v27, COERCE_FLOAT32X2_T(-0.0000305175853));
        v30 = vmla_n_f32(vrev64_s32(vmul_f32(v29, __PAIR64__(-v20, LODWORD(v20)))), v29, v14);
        *v17 = vadd_f32(v28, v30);
        if (v22 != v16)
        {
          *(v18 - 1) = v28.f32[0] + (vmuls_lane_f32(v20, v29, 1) - (v29.f32[0] * v14));
          *v18 = vsub_f32(v30, v28).i32[1];
        }

        ++v22;
        v21 += 2;
        --v16;
        ++v17;
        v18 -= 2;
        --v19;
      }

      while (v21 <= v15);
    }

    v31 = v9[1];
    v32 = *v9 + v31;
    v33 = *v9 - v31;
    *v9 = v32;
    v9[1] = v33;
    if ((v7 & 1) == 0)
    {
      *v9 = v32 * 0.5;
      v9[1] = v33 * 0.5;
      kaldi::ComplexFft<float>(a1, 0, 0, *&v11, v12);

      kaldi::VectorBase<float>::Scale(a1, 2.0);
    }
  }
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::Matrix<float>>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x666666666666667)
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

uint64_t std::__uninitialized_allocator_relocate[abi:ne200100]<std::allocator<kaldi::Matrix<float>>,kaldi::Matrix<float>*>(uint64_t a1, unsigned int *a2, unsigned int *a3, _OWORD *a4)
{
  if (a2 != a3)
  {
    v6 = a2;
    v7 = 0;
    v8 = a2;
    do
    {
      result = kaldi::Matrix<float>::Matrix(a4, v8);
      v8 += 10;
      a4 = (a4 + 40);
      v7 -= 40;
    }

    while (v8 != a3);
    while (v6 != a3)
    {
      result = kaldi::Matrix<float>::~Matrix(v6);
      v6 += 10;
    }
  }

  return result;
}

void sub_B3E98(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    v4 = v1 - 40;
    do
    {
      v4 = kaldi::Matrix<float>::~Matrix(v4) - 40;
      v2 += 40;
    }

    while (v2);
  }

  _Unwind_Resume(exception_object);
}

uint64_t std::__split_buffer<kaldi::Matrix<float>>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 40;
    kaldi::Matrix<float>::~Matrix(i - 40);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void std::vector<kaldi::Matrix<float>>::__destroy_vector::operator()[abi:ne200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = v2;
    if (v4 != v2)
    {
      do
      {
        v4 = kaldi::Matrix<float>::~Matrix(v4 - 40);
      }

      while (v4 != v2);
      v5 = **a1;
    }

    v1[1] = v2;

    operator delete(v5);
  }
}

void kaldi::SplitRadixComplexFft<float>::SplitRadixComplexFft(uint64_t a1, uint64_t a2, int8x8_t a3)
{
  v3 = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a2 >= 2)
  {
    a3.i32[0] = a2;
    v4 = vcnt_s8(a3);
    v4.i16[0] = vaddlv_u8(v4);
    if (v4.i32[0] < 2u)
    {
      v5 = 0;
      *(a1 + 24) = a2;
      do
      {
        ++v5;
        v6 = v3 >= 3;
        v7 = v3 == 3;
        v3 >>= 1;
      }

      while (!v7 && v6);
      *(a1 + 28) = v5;
      kaldi::SplitRadixComplexFft<float>::ComputeTables(a1);
    }
  }

  kaldi::KaldiErrorMessage::KaldiErrorMessage(v8, "SplitRadixComplexFft", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/srfft.cc", 44);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "SplitRadixComplexFft called with invalid number of points ", 58);
  std::ostream::operator<<();
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v8);
}

void sub_B406C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::SplitRadixComplexFft<float>::Compute(uint64_t a1, float *a2, float *a3, int a4)
{
  if (a4)
  {
    v5 = a3;
  }

  else
  {
    v5 = a2;
  }

  if (a4)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  kaldi::SplitRadixComplexFft<float>::ComputeRecursive(a1, v6, v5, *(a1 + 28));
  v7 = *(a1 + 28);
  if (v7 >= 2)
  {
    kaldi::SplitRadixComplexFft<float>::BitReversePermute(a1, v6, v7);
    v8 = *(a1 + 28);

    kaldi::SplitRadixComplexFft<float>::BitReversePermute(a1, v5, v8);
  }
}

void kaldi::SplitRadixComplexFft<float>::ComputeRecursive(uint64_t a1, float *a2, float *a3, unsigned int a4)
{
  if ((a4 & 0x80000000) != 0)
  {
LABEL_31:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v86, "ComputeRecursive", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/srfft.cc", 202);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v86, "Error: logn is out of bounds in SRFFT");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v86);
  }

  v7 = a4;
  while (v7 > 2)
  {
    v8 = 1 << v7;
    v9 = (1 << v7) / 2;
    v10 = (1 << v7) + 3;
    if (1 << v7 >= 0)
    {
      v10 = 1 << v7;
    }

    v11 = (v10 >> 2);
    if (v8 >= 0)
    {
      v12 = 1 << v7;
    }

    else
    {
      v12 = v8 + 7;
    }

    v13 = (v8 + (v8 >> 31)) >> 1;
    v14 = &a2[v9];
    v15 = &a3[v9];
    if (v8 < 2)
    {
      v22 = &v14[v11];
      v23 = &v15[v11];
    }

    else
    {
      v16 = a3;
      v17 = a2;
      do
      {
        v18 = v17[v13];
        v19 = *v17 + v18;
        v17[v13] = *v17 - v18;
        *v17++ = v19;
        v20 = *v16;
        v21 = v16[v13];
        v16[v13] = *v16 - v21;
        *v16++ = v20 + v21;
        --v9;
      }

      while (v9);
      v22 = &v14[v11];
      v23 = &v15[v11];
      if (v8 >= 4)
      {
        v24 = v11;
        v25 = v15;
        v26 = v14;
        do
        {
          v27 = *v26 + v25[v11];
          v28 = v26[v11];
          v29 = *v25 + v28;
          *v25 = *v25 - v28;
          v26[v11] = *v26 - v25[v11];
          *v26++ = v27;
          v25[v11] = v29;
          ++v25;
          --v24;
        }

        while (v24);
      }
    }

    if (v7 == 3)
    {
      v30 = 0;
      v31 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
    }

    else
    {
      v30 = *(*(a1 + 40) + 8 * v7 - 32);
      v36 = 4 * v11 - 8;
      v31 = (v30 + v36);
      v32 = (v30 + v36 + v36);
      v33 = (v32 + v36);
      v34 = (v32 + v36 + v36);
      v35 = (v34 + v36);
    }

    if (v8 >= 8)
    {
      v37 = 0;
      v38 = v12 >> 3;
      if (v11 <= 2)
      {
        v39 = 2;
      }

      else
      {
        v39 = v11;
      }

      v40 = &a2[v13 + 1];
      v41 = v22 + 1;
      v42 = &a3[v13 + 1];
      v43 = v23 + 1;
      v44 = v39 - 1;
      v45 = v38 - 1;
      do
      {
        if (v45 == v37)
        {
          v46 = v40[v37];
          v47 = v42[v37];
          v42[v37] = (v47 - v46) * 0.70711;
          v40[v37] = (v46 + v47) * 0.70711;
          v48 = v43[v37];
          v49 = v41[v37];
          v43[v37] = (v48 + v49) * -0.70711;
          v41[v37] = (v48 - v49) * 0.70711;
        }

        else
        {
          v50 = *v30++;
          v51 = v40[v37];
          v52 = v42[v37];
          v53 = v50 * (v51 + v52);
          v54 = *v31++;
          v55 = v54;
          v56 = *v32++;
          v40[v37] = v53 + (v56 * v52);
          v42[v37] = v53 + (v55 * v51);
          v57 = *v33++;
          v58 = v41[v37];
          v59 = v43[v37];
          v60 = v57 * (v58 + v59);
          v61 = *v34++;
          v62 = v61;
          v63 = *v35++;
          v41[v37] = v60 + (v63 * v59);
          v43[v37] = v60 + (v62 * v58);
        }

        ++v37;
      }

      while (v44 != v37);
    }

    kaldi::SplitRadixComplexFft<float>::ComputeRecursive(a1, a2, a3, v7 - 1);
    kaldi::SplitRadixComplexFft<float>::ComputeRecursive(a1, v14, v15, v7 - 2);
    a2 += 3 * v11;
    a3 += 3 * v11;
    v64 = v7 < 2;
    v7 -= 2;
    if (v64)
    {
      goto LABEL_31;
    }
  }

  if (v7 == 1)
  {
    v82 = a2[1];
    v83 = *a2 - v82;
    *a2 = *a2 + v82;
    a2[1] = v83;
    v84 = a3[1];
    v85 = *a3 - v84;
    *a3 = *a3 + v84;
    a3[1] = v85;
  }

  else if (v7 == 2)
  {
    v65 = a2[2];
    v66 = *a2 + v65;
    a2[2] = *a2 - v65;
    *a2 = v66;
    v67 = a3[2];
    v68 = *a3 + v67;
    a3[2] = *a3 - v67;
    *a3 = v68;
    v69 = a2[1];
    v70 = a2[3];
    a2[3] = v69 - v70;
    a2[1] = v69 + v70;
    v71 = a3[1];
    v72 = a3[3];
    a3[3] = v71 - v72;
    a3[1] = v71 + v72;
    v73 = a2[1];
    v74 = *a2 - v73;
    *a2 = *a2 + v73;
    a2[1] = v74;
    v75 = a3[1];
    v76 = *a3 - v75;
    *a3 = *a3 + v75;
    a3[1] = v76;
    v78 = a3[2];
    v77 = a3[3];
    v79 = a2[3];
    v80 = a2[2] + v77;
    a3[2] = v78 - v79;
    v81 = a2[2] - v77;
    a2[2] = v80;
    a2[3] = v81;
    a3[3] = v78 + v79;
  }
}

int *kaldi::SplitRadixComplexFft<float>::BitReversePermute(int *result, uint64_t a2, int a3)
{
  v3 = a3 >> 1;
  v4 = (1 << (a3 >> 1));
  if (v4 >= 2)
  {
    v5 = *(result + 4);
    v6 = a2 + 4 * v4 + 4;
    for (i = 1; i != v4; ++i)
    {
      v8 = *(v5 + 4 * i);
      v9 = v8 << v3;
      v10 = *(a2 + 4 * i);
      *(a2 + 4 * i) = *(a2 + 4 * (v8 << v3));
      *(a2 + 4 * (v8 << v3)) = v10;
      if (v8 >= 2)
      {
        v11 = v8 - 1;
        v12 = (v5 + 4);
        result = v6;
        do
        {
          v13 = *v12++;
          v14 = *result;
          *result = *(a2 + 4 * (v13 + v9));
          *(a2 + 4 * (v13 + v9)) = v14;
          result += (1 << (a3 >> 1));
          --v11;
        }

        while (v11);
      }

      v6 += 4;
    }
  }

  return result;
}

float kaldi::SplitRadixComplexFft<float>::Compute(uint64_t a1, _DWORD *a2, int a3, std::vector<int> *this, const char *a5)
{
  if (!this)
  {
    kaldi::KaldiAssertFailure_("Compute", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/srfft.cc", &stru_68.segname[13], "temp_buffer != NULL", a5);
  }

  begin = this->__begin_;
  v10 = *(a1 + 24);
  if (v10 != this->__end_ - this->__begin_)
  {
    std::vector<int>::resize(this, v10);
    begin = this->__begin_;
    v10 = *(a1 + 24);
  }

  if (v10 >= 1)
  {
    v11 = a2 + 1;
    v12 = a2;
    v13 = begin;
    v14 = v10;
    do
    {
      *v12++ = *(v11 - 1);
      v15 = *v11;
      v11 += 2;
      *v13++ = v15;
      --v14;
    }

    while (v14);
  }

  memcpy(&a2[v10], begin, 4 * v10);
  kaldi::SplitRadixComplexFft<float>::Compute(a1, a2, &a2[*(a1 + 24)], a3);
  memcpy(begin, &a2[*(a1 + 24)], 4 * *(a1 + 24));
  v16 = *(a1 + 24);
  if (v16 > 1)
  {
    v17 = &a2[2 * v16 - 1];
    do
    {
      *(v17 - 1) = a2[v16 - 1];
      *v17 = begin[v16 - 1];
      v17 -= 2;
    }

    while (v16-- > 2);
  }

  result = *begin;
  a2[1] = *begin;
  return result;
}

uint64_t kaldi::SplitRadixComplexFft<float>::~SplitRadixComplexFft(uint64_t a1)
{
  if (*(a1 + 32))
  {
    operator delete[]();
  }

  if (*(a1 + 40))
  {
    v2 = *(a1 + 28);
    if (v2 < 4)
    {
      goto LABEL_10;
    }

    v3 = 0;
    do
    {
      if (*(*(a1 + 40) + 8 * v3))
      {
        operator delete[]();
      }

      ++v3;
    }

    while (v3 < v2 - 3);
    if (*(a1 + 40))
    {
LABEL_10:
      operator delete[]();
    }
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

float kaldi::SplitRadixRealFft<float>::Compute(uint64_t a1, _DWORD *a2, int a3, std::vector<int> *this, const char *a5)
{
  v5 = *(a1 + 48);
  if (v5)
  {
    kaldi::KaldiAssertFailure_("Compute", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/matrix/srfft.cc", &stru_158.sectname[3], "N%2 == 0", a5);
  }

  v7 = a3;
  v8 = a2;
  if (a3)
  {
    kaldi::SplitRadixComplexFft<float>::Compute(a1, a2, 1, this, a5);
    v10 = -1;
  }

  else
  {
    v10 = 1;
  }

  v11 = 6.28318531 / v5 * v10;
  v13 = __sincosf_stret(v11);
  if (v5 >= 4)
  {
    v14 = -v10;
    v15 = (v5 / 2);
    v16 = v15 - 1;
    v17 = (v8 + 8);
    v18 = (v8 + 8 * v15 - 4);
    v19 = (v8 + 4 * v5 - 8);
    v20 = 0.0;
    v21 = 2;
    v22 = 1;
    do
    {
      v23 = -(v20 * v13.__sinval);
      v24 = v13.__cosval * v20;
      v25 = vadd_f32(*v17, *v19);
      v26 = vsub_f32(*v17, *v19);
      v27 = vext_s8(v25, v26, 4uLL);
      v25.i32[1] = v26.i32[1];
      v20 = v24 + (v14 * v13.__sinval);
      v14 = v23 + (v14 * v13.__cosval);
      v28 = vmul_f32(v25, 0x3F0000003F000000);
      v29 = vmul_f32(v27, COERCE_FLOAT32X2_T(-0.0000305175853));
      v30 = vmla_n_f32(vrev64_s32(vmul_f32(v29, __PAIR64__(-v20, LODWORD(v20)))), v29, v14);
      *v17 = vadd_f32(v28, v30);
      if (v22 != v16)
      {
        *(v18 - 1) = v28.f32[0] + (vmuls_lane_f32(v20, v29, 1) - (v29.f32[0] * v14));
        *v18 = vsub_f32(v30, v28).i32[1];
      }

      ++v22;
      v21 += 2;
      --v16;
      ++v17;
      v18 -= 2;
      --v19;
    }

    while (v21 <= v15);
  }

  v31 = *(v8 + 4);
  v32 = *v8 + v31;
  result = *v8 - v31;
  *v8 = v32;
  *(v8 + 4) = result;
  if ((v7 & 1) == 0)
  {
    *v8 = v32 * 0.5;
    *(v8 + 4) = result * 0.5;
    result = kaldi::SplitRadixComplexFft<float>::Compute(a1, v8, 0, this, v12);
    if (v5 >= 1)
    {
      do
      {
        result = *v8 + *v8;
        *v8 = result;
        v8 += 4;
        --v5;
      }

      while (v5);
    }
  }

  return result;
}

void sub_B4D10(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, std::locale a12)
{
  std::ostream::sentry::~sentry();
  __cxa_begin_catch(a1);
  std::ios_base::__set_badbit_and_consider_rethrow((v12 + *(*v12 - 24)));
  __cxa_end_catch();
  JUMPOUT(0xB4CF0);
}

void sub_B4F44(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    operator new();
  }

  return a1;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::WriteFst<fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>>(void *a1, void *a2, uint64_t **a3)
{
  v32 = 0u;
  v33 = 0u;
  *v30 = 0u;
  *v31 = 0u;
  v6 = -1;
  v35 = 0;
  v36 = 0;
  v34 = -1;
  v34 = (*(*a1 + 24))(a1);
  v35 = -1;
  if ((*(*a1 + 64))(a1, 1, 0))
  {
    v6 = 0;
LABEL_3:
    v7 = 0;
    v35 = fst::CountStates<fst::ArcTpl<fst::TropicalWeightTpl<float>>>(a1);
    goto LABEL_6;
  }

  v8 = a2 + *(*a2 - 24);
  if ((v8[32] & 5) == 0)
  {
    (*(**(v8 + 5) + 32))(__p);
    v6 = v38;
    if (v38 != -1)
    {
      goto LABEL_3;
    }
  }

  v7 = 1;
LABEL_6:
  v9 = (*(*a1 + 64))(a1, 0x3FFFFFFF0004, 0);
  boost::filesystem::path::path(__p, "vector");
  fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::WriteFstHeader(a1, a2, a3, 2, __p, v9 | 3, v29);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

  v10 = *(a1[1] + 72) - *(a1[1] + 64);
  if ((v10 >> 3) < 1)
  {
    v12 = 0;
  }

  else
  {
    v11 = 0;
    v12 = (v10 >> 3) & 0x7FFFFFFF;
    do
    {
      LODWORD(__p[0].__r_.__value_.__l.__data_) = (*(*a1 + 32))(a1, v11);
      std::ostream::write();
      __p[0].__r_.__value_.__r.__words[0] = (*(*a1 + 40))(a1, v11);
      std::ostream::write();
      v13 = *(*(*(a1[1] + 64) + 8 * v11) + 24);
      v14 = *(*(*(a1[1] + 64) + 8 * v11) + 32) - v13;
      if (v14)
      {
        v15 = v14 >> 4;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        v17 = (v13 + 8);
        do
        {
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 2);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *(v17 - 1);
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = *v17;
          std::ostream::write();
          LODWORD(__p[0].__r_.__value_.__l.__data_) = v17[1];
          std::ostream::write();
          v17 += 4;
          --v16;
        }

        while (v16);
      }

      ++v11;
    }

    while (v11 != v12);
  }

  std::ostream::flush();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    boost::filesystem::path::path(__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(&v28, __p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VectorFst::Write: write failed: ", 32);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = a3[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
LABEL_27:
    fst::LogMessage::~LogMessage(&v28);
    if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p[0].__r_.__value_.__l.__data_);
    }

    updated = 0;
    goto LABEL_30;
  }

  if (!v7)
  {
    if (v35 == v12)
    {
      updated = 1;
      goto LABEL_30;
    }

    boost::filesystem::path::path(__p, "ERROR");
    v26 = fst::LogMessage::LogMessage(&v28, __p);
    v27 = fst::cerr(v26);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "Inconsistent number of states observed during write", 51);
    goto LABEL_27;
  }

  v35 = v12;
  boost::filesystem::path::path(__p, "vector");
  updated = fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::UpdateFstHeader(a1, a2, a3, 2, __p, v9 | 3, v29, v6);
  if (SHIBYTE(__p[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__r_.__value_.__l.__data_);
  }

LABEL_30:
  if (SHIBYTE(v32) < 0)
  {
    operator delete(v31[1]);
  }

  if (SHIBYTE(v31[0]) < 0)
  {
    operator delete(v30[0]);
  }

  return updated;
}

void sub_B5620(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, __int16 a10, char a11, char a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  if (a30 < 0)
  {
    operator delete(__p);
  }

  fst::FstHeader::~FstHeader(&a13);
  _Unwind_Resume(a1);
}

uint64_t fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::WriteFile(fst *a1, std::string::value_type *a2)
{
  v2 = a2;
  if (a2[23] < 0)
  {
    if (*(a2 + 1))
    {
      a2 = *a2;
LABEL_6:
      std::ofstream::basic_ofstream(&v20, a2, 20);
      if ((v24[*(v20.__r_.__value_.__r.__words[0] - 24)] & 5) != 0)
      {
        boost::filesystem::path::path(&__p, "ERROR");
        v4 = fst::LogMessage::LogMessage(&v19, &__p);
        v5 = fst::cerr(v4);
        v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "Fst::Write: Can't open file: ", 29);
        v7 = v2[23];
        if (v7 >= 0)
        {
          v8 = v2;
        }

        else
        {
          v8 = *v2;
        }

        if (v7 >= 0)
        {
          v9 = v2[23];
        }

        else
        {
          v9 = *(v2 + 1);
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, v8, v9);
        fst::LogMessage::~LogMessage(&v19);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        v10 = 0;
      }

      else
      {
        v13 = FLAGS_fst_align;
        if (v2[23] < 0)
        {
          std::string::__init_copy_ctor_external(&__p, *v2, *(v2 + 1));
        }

        else
        {
          __p = *v2;
        }

        v16 = 257;
        v17 = 1;
        v18 = v13;
        v10 = (*(*a1 + 96))(a1, &v20, &__p);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }
      }

      std::filebuf::~filebuf();
      std::ostream::~ostream();
      std::ios::~ios();
      return v10;
    }
  }

  else if (a2[23])
  {
    goto LABEL_6;
  }

  v11 = fst::cout(a1);
  boost::filesystem::path::path(&__p, "standard output");
  v12 = FLAGS_fst_align;
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    std::string::__init_copy_ctor_external(&v20, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
  }

  else
  {
    v20 = __p;
  }

  v21 = 257;
  v22 = 1;
  v23 = v12;
  v10 = (*(*a1 + 96))(a1, v11, &v20);
  if (SHIBYTE(v20.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v20.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v10;
}

void fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ReserveStates(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = (*(a1 + 8) + 64);

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::reserve(v4, a2);
}

void fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::ReserveArcs(uint64_t a1, int a2, unint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v6 = (*(*(*(a1 + 8) + 64) + 8 * a2) + 24);

  std::vector<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::reserve(v6, a3);
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::InitStateIterator(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 0;
  *(a2 + 8) = (*(v2 + 72) - *(v2 + 64)) >> 3;
  return result;
}

uint64_t fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::InitArcIterator(uint64_t result, int a2, void *a3)
{
  v3 = *(result + 8);
  *a3 = 0;
  v5 = (*(*(v3 + 64) + 8 * a2) + 24);
  v4 = *v5;
  v6 = (v5[1] - *v5) >> 4;
  if (v5[1] == *v5)
  {
    v4 = 0;
  }

  a3[1] = v4;
  a3[2] = v6;
  a3[3] = 0;
  return result;
}

void fst::VectorFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFst(void *a1)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::~ImplToFst(a1);

  operator delete();
}

unint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetFinal(uint64_t a1, int a2, float a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::SetFinal(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3 & 4;
  result = (*(**(a1 + 8) + 32))(*(a1 + 8), v6);
  if (result != (v6 & a2))
  {
    result = fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  }

  *(*(a1 + 8) + 8) = *(*(a1 + 8) + 8) & (~a3 | 4) | a3 & a2;
  return result;
}

void fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::AddArc(uint64_t a1, uint64_t a2, float *a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);

  fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::AddArc(v6, a2, a3);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteStates(uint64_t a1, char **a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(v4, a2);
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0x6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteStates(uint64_t a1)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v2 = *(a1 + 8);
  fst::VectorFstBaseImpl<fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>>::DeleteStates(v2);
  result = (*(*v2 + 24))(v2);
  v2[1] = (*(v2 + 2) | result) & 4 | 0x156A5A950003;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(uint64_t a1, int a2, uint64_t a3)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v6 = *(a1 + 8);
  fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::DeleteArcs(*(v6[8] + 8 * a2), a3);
  result = (*(*v6 + 24))(v6);
  v6[1] = v6[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::DeleteArcs(uint64_t a1, int a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4[8] + 8 * a2);
  v5[1] = 0;
  v5[2] = 0;
  v5[4] = v5[3];
  result = (*(*v4 + 24))(v4);
  v4[1] = v4[1] & 4 | result & 0xA6A5A950007;
  return result;
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetInputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetInputSymbols(v4, a2);
}

uint64_t fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::SetOutputSymbols(uint64_t a1, uint64_t a2)
{
  fst::ImplToMutableFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::MutateCheck(a1);
  v4 = *(a1 + 8);

  return fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::SetOutputSymbols(v4, a2);
}

uint64_t fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::VectorFstImpl(uint64_t a1)
{
  *a1 = off_271380;
  *(a1 + 8) = 0;
  boost::filesystem::path::path((a1 + 16), "null");
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 1;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = 0;
  *(a1 + 88) = -1;
  *a1 = off_2712D0;
  boost::filesystem::path::path(&__str, "vector");
  std::string::operator=((a1 + 16), &__str);
  if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  *(a1 + 8) = *(a1 + 8) & 4 | 0x156A5A950003;
  return a1;
}

void sub_B6158(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::~VectorFstBaseImpl(v15);
  _Unwind_Resume(a1);
}

void *std::ifstream::~ifstream(void *a1)
{
  std::filebuf::~filebuf();
  std::istream::~istream();
  std::ios::~ios();
  return a1;
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::WriteFstHeader(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, std::string *__str, uint64_t a6, uint64_t a7)
{
  if (a3[24])
  {
    std::string::operator=((a7 + 8), __str);
    v13 = fst::ArcTpl<fst::TropicalWeightTpl<float>>::Type();
    std::string::operator=((a7 + 32), v13);
    *(a7 + 56) = a4;
    *(a7 + 64) = a6;
    if ((*(*a1 + 112))(a1))
    {
      v14 = a3[25];
    }

    else
    {
      v14 = 0;
    }

    v15 = (*(*a1 + 120))(a1);
    if (a3[26])
    {
      v16 = v14 | 2;
    }

    else
    {
      v16 = v14;
    }

    if (!v15)
    {
      v16 = v14;
    }

    if (a3[27])
    {
      v16 |= 4u;
    }

    *(a7 + 60) = v16;
    fst::FstHeader::Write(a7, a2);
  }

  if ((*(*a1 + 112))(a1) && a3[25] == 1)
  {
    v17 = (*(*a1 + 112))(a1);
    (*(*v17 + 72))(v17, a2);
  }

  result = (*(*a1 + 120))(a1);
  if (result && a3[26] == 1)
  {
    v19 = *(*(*(*a1 + 120))(a1) + 72);

    return v19();
  }

  return result;
}

uint64_t fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::UpdateFstHeader(uint64_t a1, void *a2, uint64_t **a3, int a4, std::string *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  std::ostream::sentry::sentry();
  v16 = a2 + *(*a2 - 24);
  if ((v16[32] & 5) == 0)
  {
    v17 = *(v16 + 5);
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    __p = 0u;
    v34 = 0u;
    v41 = a8;
    (*(*v17 + 40))(v32);
    if (v32[16] == -1)
    {
      std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
    }
  }

  std::ostream::sentry::~sentry();
  if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
  {
    boost::filesystem::path::path(&__p, "ERROR");
    v18 = fst::LogMessage::LogMessage(v32, &__p);
    v19 = fst::cerr(v18);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Fst::UpdateFstHeader: write failed: ", 36);
    v21 = *(a3 + 23);
    if (v21 >= 0)
    {
      v22 = a3;
    }

    else
    {
      v22 = *a3;
    }

    if (v21 >= 0)
    {
      v23 = *(a3 + 23);
    }

    else
    {
      v23 = a3[1];
    }
  }

  else
  {
    fst::FstImpl<fst::ArcTpl<fst::TropicalWeightTpl<float>>>::WriteFstHeader(a1, a2, a3, a4, a5, a6, a7);
    if ((*(a2 + *(*a2 - 24) + 32) & 5) != 0)
    {
      boost::filesystem::path::path(&__p, "ERROR");
      v24 = fst::LogMessage::LogMessage(v32, &__p);
      v25 = fst::cerr(v24);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Fst::UpdateFstHeader: write failed: ", 36);
      v26 = *(a3 + 23);
      if (v26 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v26 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = a3[1];
      }
    }

    else
    {
      std::ostream::sentry::sentry();
      v27 = a2 + *(*a2 - 24);
      if ((v27[32] & 5) == 0)
      {
        (*(**(v27 + 5) + 32))(&__p);
        if (v41 == -1)
        {
          std::ios_base::clear((a2 + *(*a2 - 24)), *(a2 + *(*a2 - 24) + 32) | 4);
        }
      }

      std::ostream::sentry::~sentry();
      if ((*(a2 + *(*a2 - 24) + 32) & 5) == 0)
      {
        return 1;
      }

      boost::filesystem::path::path(&__p, "ERROR");
      v28 = fst::LogMessage::LogMessage(v32, &__p);
      v29 = fst::cerr(v28);
      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Fst::UpdateFstHeader: write failed: ", 36);
      v30 = *(a3 + 23);
      if (v30 >= 0)
      {
        v22 = a3;
      }

      else
      {
        v22 = *a3;
      }

      if (v30 >= 0)
      {
        v23 = *(a3 + 23);
      }

      else
      {
        v23 = a3[1];
      }
    }
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, v22, v23);
  fst::LogMessage::~LogMessage(v32);
  if (SBYTE7(v34) < 0)
  {
    operator delete(__p);
  }

  return 0;
}

void sub_B6A10(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

void fst::VectorFstBaseImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>>::DeleteStates(uint64_t a1, char **a2)
{
  v4 = (a1 + 64);
  v5 = (*(a1 + 72) - *(a1 + 64)) >> 3;
  v35 = 0;
  std::vector<int>::vector[abi:ne200100](__p, v5, &v35);
  v6 = *a2;
  v7 = a2[1] - *a2;
  if (v7)
  {
    v8 = v7 >> 2;
    v9 = __p[0];
    if (v8 <= 1)
    {
      v8 = 1;
    }

    do
    {
      v10 = *v6++;
      v9[v10] = -1;
      --v8;
    }

    while (v8);
  }

  v11 = *(a1 + 64);
  if (*(a1 + 72) == v11)
  {
    v14 = 0;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      if (*(__p[0] + v12) == -1)
      {
        fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>>::Destroy(*(v11 + 8 * v12));
      }

      else
      {
        *(__p[0] + v12) = v13;
        if (v12 != v13)
        {
          *(v11 + 8 * v13) = *(v11 + 8 * v12);
        }

        ++v13;
      }

      ++v12;
      v11 = *(a1 + 64);
    }

    while (v12 < (*(a1 + 72) - v11) >> 3);
    v14 = v13;
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::resize(v4, v14);
  v15 = *(a1 + 64);
  if (*(a1 + 72) != v15)
  {
    v16 = 0;
    do
    {
      v17 = *(v15 + 8 * v16);
      v19 = *(v17 + 24);
      v18 = *(v17 + 32);
      v20 = *(v17 + 8);
      v21 = v18 - v19;
      if (v18 == v19)
      {
        v27 = 0;
        v28 = v21 >> 4;
        v29 = *(v17 + 16);
        v30 = *(v17 + 8);
      }

      else
      {
        v22 = 0;
        v27 = 0;
        v23 = *(v17 + 24);
        do
        {
          v24 = *(__p[0] + *(v23 + 12));
          if (v24 == -1)
          {
            v25.i64[0] = *v23;
            v25.i64[1] = HIDWORD(*v23);
            v20 = vaddq_s64(v20, vceqzq_s64(v25));
          }

          else
          {
            *(v23 + 12) = v24;
            if (v22 != v27)
            {
              *(v19 + 16 * v27) = *v23;
              v15 = *v4;
            }

            ++v27;
          }

          v17 = *(v15 + 8 * v16);
          ++v22;
          v26 = *(v17 + 32) - *(v17 + 24);
          v23 += 16;
        }

        while (v22 < v26 >> 4);
        v28 = v26 >> 4;
        v29 = v20.i64[1];
        v30 = v20.i64[0];
      }

      fst::VectorState<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>,std::allocator<fst::ReverseArc<fst::ArcTpl<fst::LogWeightTpl<float>>>>>::DeleteArcs(v17, v28 - v27);
      v15 = *(a1 + 64);
      v31 = *(a1 + 72);
      v32 = *(v15 + 8 * v16);
      *(v32 + 8) = v30;
      *(v32 + 16) = v29;
      ++v16;
    }

    while (v16 < (v31 - v15) >> 3);
  }

  v33 = *(a1 + 88);
  if (v33 == -1)
  {
    v34 = __p[0];
    if (!__p[0])
    {
      return;
    }
  }

  else
  {
    v34 = __p[0];
    *(a1 + 88) = *(__p[0] + v33);
  }

  __p[1] = v34;
  operator delete(v34);
}

void sub_B6D8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__append(result, a2 - v2);
  }
}

void sub_B6ED4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<int>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<float>>(a1, a2);
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
}

void std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 3);
    if (v7 >> 61)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 2 > v7)
    {
      v7 = v8 >> 2;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v9);
    }

    v10 = (8 * (v6 >> 3));
    bzero(v10, 8 * a2);
    v11 = &v10[8 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

unint64_t fst::ComposeProperties(unint64_t this, uint64_t a2)
{
  v2 = (a2 | this) & 4;
  v3 = a2 & this;
  v4 = a2 & this & 0x2802000000 | v2 | 0x10000000000;
  if ((a2 & this & 0x2000000) != 0)
  {
    v4 |= a2 & this & 0x40000;
  }

  v5 = v3 & 0x280A800000 | v2 | 0x10000010000;
  if ((v3 & 0x2000000) != 0)
  {
    v5 |= v3 & 0x140000;
  }

  if ((v3 & 0x10000) != 0)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

unint64_t fst::FactorWeightProperties(unint64_t this)
{
  v1 = 0x50CA56B0007;
  if ((this & 0x10000000000) == 0)
  {
    v1 = 0x50800010007;
  }

  return v1 & this;
}

unint64_t fst::ProjectProperties(unint64_t this, int a2)
{
  v2 = this & 0x3FFF00000007 | 0x10000;
  v3 = (this >> 2) & 0xC0000 | this & 0xCC300000 | v2;
  if ((this & 0x4000000) != 0)
  {
    v3 |= 0x1400000uLL;
  }

  if ((this & 0x8000000) != 0)
  {
    v3 |= 0x2800000uLL;
  }

  v4 = (this >> 2) & 0x30000000 | v3;
  v5 = this & 0x330C0000 | (((this >> 18) & 3) << 20) | v2;
  if ((this & 0x1000000) != 0)
  {
    v5 |= 0x4400000uLL;
  }

  if ((this & 0x2000000) != 0)
  {
    v5 |= 0x8800000uLL;
  }

  v6 = (4 * this) & 0xC0000000 | v5;
  if (a2)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

unint64_t fst::ReverseProperties(unint64_t this, int a2)
{
  v2 = 0xE05430007;
  if (a2)
  {
    v2 = 0xF05430007;
  }

  return v2 & this;
}

std::string *fst::SymbolTableImpl::SymbolTableImpl(std::string *this, __int128 *a2)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v3 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v3;
  }

  this[1].__r_.__value_.__r.__words[0] = 0;
  this[1].__r_.__value_.__l.__size_ = 0;
  fst::internal::DenseSymbolMap::DenseSymbolMap(&this[1].__r_.__value_.__r.__words[2]);
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[6].__r_.__value_.__r.__words[2] = 0;
  this[6].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  this[6].__r_.__value_.__r.__words[0] = &this[6].__r_.__value_.__l.__size_;
  LODWORD(this[7].__r_.__value_.__l.__data_) = 1;
  this[7].__r_.__value_.__s.__data_[4] = 0;
  *&this[7].__r_.__value_.__r.__words[1] = 0u;
  *&this[8].__r_.__value_.__l.__data_ = 0u;
  *&this[8].__r_.__value_.__r.__words[2] = 0u;
  return this;
}

void sub_B7230(_Unwind_Exception *exception_object)
{
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SymbolTableImpl::AddSymbol(uint64_t a1, const void **a2, uint64_t a3)
{
  v37 = a3;
  if (a3 == -1)
  {
    return -1;
  }

  v6 = fst::internal::DenseSymbolMap::InsertOrFind((a1 + 40), a2);
  if (v7)
  {
    if (((*(a1 + 56) - *(a1 + 48)) >> 3) - 1 == a3 && *(a1 + 32) == a3)
    {
      *(a1 + 32) = a3 + 1;
      v8 = a3;
    }

    else
    {
      v11 = *(a1 + 128);
      v10 = *(a1 + 136);
      if (v11 >= v10)
      {
        v22 = *(a1 + 120);
        v23 = v11 - v22;
        v24 = (v11 - v22) >> 3;
        v25 = v24 + 1;
        if ((v24 + 1) >> 61)
        {
          std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
        }

        v26 = v10 - v22;
        if (v26 >> 2 > v25)
        {
          v25 = v26 >> 2;
        }

        v27 = v26 >= 0x7FFFFFFFFFFFFFF8;
        v28 = 0x1FFFFFFFFFFFFFFFLL;
        if (!v27)
        {
          v28 = v25;
        }

        if (v28)
        {
          std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1 + 120, v28);
        }

        v29 = (v11 - v22) >> 3;
        v30 = (8 * v24);
        v31 = (8 * v24 - 8 * v29);
        *v30 = a3;
        v12 = v30 + 1;
        memcpy(v31, v22, v23);
        v32 = *(a1 + 120);
        *(a1 + 120) = v31;
        *(a1 + 128) = v12;
        *(a1 + 136) = 0;
        if (v32)
        {
          operator delete(v32);
        }
      }

      else
      {
        *v11 = a3;
        v12 = v11 + 8;
      }

      *(a1 + 128) = v12;
      v33 = ((*(a1 + 56) - *(a1 + 48)) >> 3) - 1;
      __p[0] = &v37;
      std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(a1 + 144, &v37, &std::piecewise_construct, __p)[5] = v33;
      v8 = v37;
    }

    if (v8 >= *(a1 + 24))
    {
      *(a1 + 24) = v8 + 1;
    }

    *(a1 + 172) = 0;
  }

  else
  {
    NthKey = fst::SymbolTableImpl::GetNthKey(a1, v6);
    if (NthKey == a3)
    {
      return a3;
    }

    else
    {
      v8 = NthKey;
      if (FLAGS_v >= 1)
      {
        boost::filesystem::path::path(__p, "INFO");
        v13 = fst::LogMessage::LogMessage(&v38, __p);
        v14 = fst::cerr(v13);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "SymbolTable::AddSymbol: symbol = ", 33);
        v16 = *(a2 + 23);
        v17 = v16 >= 0 ? a2 : *a2;
        v18 = v16 >= 0 ? *(a2 + 23) : a2[1];
        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v17, v18);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " already in symbol_map_ with key = ", 35);
        v20 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " but supplied new key = ", 24);
        v21 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " (ignoring new key)", 19);
        fst::LogMessage::~LogMessage(&v38);
        if (v36 < 0)
        {
          operator delete(__p[0]);
        }
      }
    }
  }

  return v8;
}

void sub_B74C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::SymbolTableImpl::MaybeRecomputeCheckSum(fst::SymbolTableImpl *this)
{
  if ((*(this + 172) & 1) == 0)
  {
    fst::CheckSummer::CheckSummer(&v60);
    if (*(this + 7) != *(this + 6))
    {
      v2 = 0;
      do
      {
        fst::internal::DenseSymbolMap::GetSymbol(__p, (this + 40), v2);
        v3 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        v4 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        v5 = __p[0].__r_.__value_.__r.__words[0];
        if ((__p[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v3 = __p[0].__r_.__value_.__r.__words[1];
        }

        else
        {
          v5 = __p;
        }

        if (v3 >= 1)
        {
          v6 = v3 & 0x7FFFFFFF;
          do
          {
            v8 = v5->__r_.__value_.__s.__data_[0];
            v5 = (v5 + 1);
            v7 = v8;
            v9 = v60++;
            v10 = -v9 < 0;
            v11 = -v9 & 0x1F;
            v12 = v9 & 0x1F;
            if (!v10)
            {
              v12 = -v11;
            }

            if ((v61.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v13 = &v61;
            }

            else
            {
              v13 = v61.__r_.__value_.__r.__words[0];
            }

            v13->__r_.__value_.__s.__data_[v12] ^= v7;
            --v6;
          }

          while (v6);
          v4 = HIBYTE(__p[0].__r_.__value_.__r.__words[2]);
        }

        ++v60;
        if (v4 < 0)
        {
          operator delete(__p[0].__r_.__value_.__l.__data_);
        }

        ++v2;
      }

      while (v2 < (*(this + 7) - *(this + 6)) >> 3);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(__p, v61.__r_.__value_.__l.__data_, v61.__r_.__value_.__l.__size_);
    }

    else
    {
      __p[0] = v61;
    }

    if (*(this + 199) < 0)
    {
      operator delete(*(this + 22));
    }

    *(this + 176) = __p[0];
    fst::CheckSummer::CheckSummer(&v58);
    if (*(this + 4) >= 1)
    {
      v14 = 0;
      do
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](__p);
        fst::internal::DenseSymbolMap::GetSymbol(&v52, (this + 40), v14);
        if ((v54 & 0x80u) == 0)
        {
          v17 = &v52;
        }

        else
        {
          v17 = v52;
        }

        if ((v54 & 0x80u) == 0)
        {
          v18 = v54;
        }

        else
        {
          v18 = v53;
        }

        v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v17, v18);
        LOBYTE(v49) = 9;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, &v49, 1);
        std::ostream::operator<<();
        if (v54 < 0)
        {
          operator delete(v52);
        }

        std::stringbuf::str();
        if ((v54 & 0x80u) == 0)
        {
          v20 = &v52;
        }

        else
        {
          v20 = v52;
        }

        std::stringbuf::str();
        v21 = v51;
        v22 = v51;
        if ((v51 & 0x80u) != 0)
        {
          v21 = v50;
        }

        if (v21 >= 1)
        {
          v23 = v21 & 0x7FFFFFFF;
          do
          {
            v25 = *v20++;
            v24 = v25;
            v26 = v58++;
            v10 = -v26 < 0;
            v27 = -v26 & 0x1F;
            v28 = v26 & 0x1F;
            if (!v10)
            {
              v28 = -v27;
            }

            if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v29 = &v59;
            }

            else
            {
              v29 = v59.__r_.__value_.__r.__words[0];
            }

            v29->__r_.__value_.__s.__data_[v28] ^= v24;
            --v23;
          }

          while (v23);
          v22 = v51;
        }

        if ((v22 & 0x80) != 0)
        {
          operator delete(v49);
        }

        if (v54 < 0)
        {
          operator delete(v52);
        }

        __p[0].__r_.__value_.__r.__words[0] = v15;
        *(__p[0].__r_.__value_.__r.__words + *(v15 - 24)) = v16;
        if (v57 < 0)
        {
          operator delete(v56);
        }

        std::locale::~locale(&__p[0].__r_.__value_.__r.__words[2]);
        std::ostream::~ostream();
        std::ios::~ios();
        ++v14;
      }

      while (v14 < *(this + 4));
    }

    v30 = *(this + 18);
    if (v30 != (this + 152))
    {
      do
      {
        if (*(v30 + 4) >= *(this + 4))
        {
          std::ostringstream::basic_ostringstream[abi:ne200100](__p);
          fst::internal::DenseSymbolMap::GetSymbol(&v52, (this + 40), *(v30 + 5));
          if ((v54 & 0x80u) == 0)
          {
            v33 = &v52;
          }

          else
          {
            v33 = v52;
          }

          if ((v54 & 0x80u) == 0)
          {
            v34 = v54;
          }

          else
          {
            v34 = v53;
          }

          v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v33, v34);
          LOBYTE(v49) = 9;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, &v49, 1);
          std::ostream::operator<<();
          if (v54 < 0)
          {
            operator delete(v52);
          }

          std::stringbuf::str();
          if ((v54 & 0x80u) == 0)
          {
            v36 = &v52;
          }

          else
          {
            v36 = v52;
          }

          std::stringbuf::str();
          v37 = v51;
          v38 = v51;
          if ((v51 & 0x80u) != 0)
          {
            v37 = v50;
          }

          if (v37 >= 1)
          {
            v39 = v37 & 0x7FFFFFFF;
            do
            {
              v41 = *v36++;
              v40 = v41;
              v42 = v58++;
              v10 = -v42 < 0;
              v43 = -v42 & 0x1F;
              v44 = v42 & 0x1F;
              if (!v10)
              {
                v44 = -v43;
              }

              if ((v59.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v45 = &v59;
              }

              else
              {
                v45 = v59.__r_.__value_.__r.__words[0];
              }

              v45->__r_.__value_.__s.__data_[v44] ^= v40;
              --v39;
            }

            while (v39);
            v38 = v51;
          }

          if ((v38 & 0x80) != 0)
          {
            operator delete(v49);
          }

          if (v54 < 0)
          {
            operator delete(v52);
          }

          __p[0].__r_.__value_.__r.__words[0] = v31;
          *(__p[0].__r_.__value_.__r.__words + *(v31 - 24)) = v32;
          if (v57 < 0)
          {
            operator delete(v56);
          }

          std::locale::~locale(&__p[0].__r_.__value_.__r.__words[2]);
          std::ostream::~ostream();
          std::ios::~ios();
        }

        v46 = *(v30 + 1);
        if (v46)
        {
          do
          {
            v47 = v46;
            v46 = *v46;
          }

          while (v46);
        }

        else
        {
          do
          {
            v47 = *(v30 + 2);
            v48 = *v47 == v30;
            v30 = v47;
          }

          while (!v48);
        }

        v30 = v47;
      }

      while (v47 != (this + 152));
    }

    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(__p, v59.__r_.__value_.__l.__data_, v59.__r_.__value_.__l.__size_);
    }

    else
    {
      __p[0] = v59;
    }

    if (*(this + 223) < 0)
    {
      operator delete(*(this + 25));
    }

    *(this + 200) = __p[0];
    *(this + 172) = 1;
    if (SHIBYTE(v59.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v59.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v61.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v61.__r_.__value_.__l.__data_);
    }
  }
}

void sub_B7B90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, char a18)
{
  if (*(v18 - 121) < 0)
  {
    operator delete(*(v18 - 144));
  }

  if (*(v18 - 89) < 0)
  {
    operator delete(*(v18 - 112));
  }

  _Unwind_Resume(exception_object);
}

unint64_t fst::internal::DenseSymbolMap::GetSymbol@<X0>(uint64_t *__return_ptr a1@<X8>, fst::internal::DenseSymbolMap *this@<X0>, uint64_t a3@<X1>)
{
  v4 = *(*(this + 1) + 8 * a3);
  result = strlen(v4);
  if (result >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v6 = result;
  if (result >= 0x17)
  {
    operator new();
  }

  *(a1 + 23) = result;
  if (result)
  {
    result = memmove(a1, v4, result);
  }

  *(a1 + v6) = 0;
  return result;
}

void sub_B7E04(_Unwind_Exception *a1)
{
  std::ostream::~ostream();
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t fst::internal::DenseSymbolMap::InsertOrFind(fst::internal::DenseSymbolMap *this, const void **a2)
{
  if ((((*(this + 6) - *(this + 5)) >> 3) * 0.75) <= ((*(this + 2) - *(this + 1)) >> 3))
  {
    fst::internal::DenseSymbolMap::Rehash(this);
  }

  v4 = std::__string_hash<char>::operator()[abi:ne200100](this + 32, a2);
  v5 = *(this + 8);
  v6 = *(this + 5);
  v7 = v4 & v5;
  v8 = *(v6 + 8 * (v4 & v5));
  v10 = *this;
  v9 = *(this + 1);
  if (v8 == *this)
  {
LABEL_9:
    *(v6 + 8 * v7) = (*(this + 2) - v9) >> 3;
    operator new[]();
  }

  if (*(a2 + 23) >= 0)
  {
    v11 = a2;
  }

  else
  {
    v11 = *a2;
  }

  while (strcmp(*(v9 + 8 * v8), v11))
  {
    v7 = (v7 + 1) & v5;
    v8 = *(v6 + 8 * v7);
    if (v8 == v10)
    {
      goto LABEL_9;
    }
  }

  return v8;
}

uint64_t fst::SymbolTableImpl::GetNthKey(fst::SymbolTableImpl *this, uint64_t a2)
{
  if (a2 < 0)
  {
    return -1;
  }

  v2 = a2;
  if (a2 >= ((*(this + 7) - *(this + 6)) >> 3))
  {
    return -1;
  }

  if (*(this + 4) <= a2)
  {
    fst::internal::DenseSymbolMap::GetSymbol(__p, (this + 40), a2);
    v4 = fst::internal::DenseSymbolMap::Find(this + 5, __p);
    v2 = v4;
    if (v4 != -1)
    {
      v5 = *(this + 4);
      v6 = __OFSUB__(v4, v5);
      v7 = v4 - v5;
      if (v7 < 0 == v6)
      {
        v2 = *(*(this + 15) + 8 * v7);
      }
    }

    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return v2;
}

BOOL fst::SymbolTableImpl::Write(uint64_t *a1, void *a2)
{
  LODWORD(__p) = 2125658996;
  std::ostream::write();
  LODWORD(v4) = *(a1 + 23);
  if ((v4 & 0x80u) != 0)
  {
    v4 = a1[1];
  }

  LODWORD(__p) = v4;
  std::ostream::write();
  std::ostream::write();
  __p = a1[3];
  std::ostream::write();
  __p = ((a1[7] - a1[6]) >> 3);
  std::ostream::write();
  if (a1[7] != a1[6])
  {
    v5 = 0;
    do
    {
      v6 = a1[4];
      v7 = v5;
      if (v5 >= v6)
      {
        v7 = *(a1[15] - 8 * v6 + 8 * v5);
      }

      fst::internal::DenseSymbolMap::GetSymbol(&__p, (a1 + 5), v5);
      v8 = v15;
      if ((v15 & 0x80u) != 0)
      {
        v8 = v14;
      }

      v16 = v8;
      std::ostream::write();
      std::ostream::write();
      if (v15 < 0)
      {
        operator delete(__p);
      }

      __p = v7;
      std::ostream::write();
      ++v5;
    }

    while (v5 < ((a1[7] - a1[6]) >> 3));
  }

  std::ostream::flush();
  v9 = *(a2 + *(*a2 - 24) + 32) & 5;
  if (v9)
  {
    boost::filesystem::path::path(&__p, "ERROR");
    v10 = fst::LogMessage::LogMessage(&v16, &__p);
    v11 = fst::cerr(v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "SymbolTable::Write: write failed", 32);
    fst::LogMessage::~LogMessage(&v16);
    if (v15 < 0)
    {
      operator delete(__p);
    }
  }

  return v9 == 0;
}

void sub_B82C4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, int a15, char a16)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void fst::SymbolTable::AddTable(fst::SymbolTable *this, const fst::SymbolTable *a2)
{
  fst::SymbolTable::MutateCheck(this);
  v4 = (*(*a2 + 120))(a2);
  v5 = (*(*a2 + 128))(a2, 0);
  if (v4)
  {
    v6 = v5;
    v7 = 1;
    v8 = v4;
    do
    {
      v9 = *(this + 1);
      (*(*a2 + 88))(__p, a2, v6);
      fst::SymbolTableImpl::AddSymbol(v9, __p, *(v9 + 24));
      if (v11 < 0)
      {
        operator delete(__p[0]);
      }

      if (v7 < v4)
      {
        v6 = (*(*a2 + 128))(a2, v7);
      }

      ++v7;
      --v8;
    }

    while (v8);
  }
}

void sub_B843C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t fst::SymbolTable::MutateCheck(uint64_t this)
{
  v1 = *(this + 8);
  v2 = *(v1 + 168);
  if (v2 >= 2)
  {
    *(v1 + 168) = v2 - 1;
    operator new();
  }

  return this;
}

BOOL fst::SymbolTable::WriteText(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 31);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a3 + 16);
  }

  v22 = v3;
  if (v3)
  {
    v6 = (*(*a1 + 120))(a1);
    v7 = (*(*a1 + 128))(a1, 0);
    if (v6)
    {
      v8 = v7;
      v9 = 0;
      v10 = 1;
      v11 = v6;
      do
      {
        std::ostringstream::basic_ostringstream[abi:ne200100](&v29);
        if (!((v8 >= 0) | v9 & 1 | *a3 & 1))
        {
          boost::filesystem::path::path(__p, "WARNING");
          v12 = fst::LogMessage::LogMessage(&v25, __p);
          v13 = fst::cerr(v12);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Negative symbol table entry when not allowed", 44);
          fst::LogMessage::~LogMessage(&v25);
          if (v28 < 0)
          {
            operator delete(__p[0]);
          }

          v9 = 1;
        }

        (*(*a1 + 88))(__p, a1, v8);
        if ((v28 & 0x80u) == 0)
        {
          v14 = __p;
        }

        else
        {
          v14 = __p[0];
        }

        if ((v28 & 0x80u) == 0)
        {
          v15 = v28;
        }

        else
        {
          v15 = __p[1];
        }

        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v29, v14, v15);
        v17 = (a3 + 8);
        if (*(a3 + 31) < 0)
        {
          v17 = *(a3 + 8);
        }

        LOBYTE(v25) = *v17;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, &v25, 1);
        v18 = std::ostream::operator<<();
        LOBYTE(v25) = 10;
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, &v25, 1);
        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        std::stringbuf::str();
        std::stringbuf::str();
        std::ostream::write();
        if (v26 < 0)
        {
          operator delete(v25);
        }

        if (v28 < 0)
        {
          operator delete(__p[0]);
        }

        v29 = v24;
        *(&v29 + *(v24 - 3)) = v23;
        if (v32 < 0)
        {
          operator delete(v31[7].__locale_);
        }

        std::locale::~locale(v31);
        std::ostream::~ostream();
        std::ios::~ios();
        if (v10 < v6)
        {
          v8 = (*(*a1 + 128))(a1, v10);
        }

        ++v10;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    boost::filesystem::path::path(&v29, "ERROR");
    v19 = fst::LogMessage::LogMessage(__p, &v29);
    v20 = fst::cerr(v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Missing required field separator", 32);
    fst::LogMessage::~LogMessage(__p);
    if (SHIBYTE(v31[0].__locale_) < 0)
    {
      operator delete(v29);
    }
  }

  return v22 != 0;
}

void sub_B88EC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *__p, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a34 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

fst::internal::DenseSymbolMap *fst::internal::DenseSymbolMap::DenseSymbolMap(fst::internal::DenseSymbolMap *this)
{
  *this = -1;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::vector<long long>::vector[abi:ne200100](this + 5, 0x10uLL);
  v3 = *(this + 5);
  v2 = *(this + 6);
  *(this + 8) = ((v2 - v3) >> 3) - 1;
  v4 = v2 - v3;
  if (v2 != v3)
  {
    v5 = 0;
    v6 = *this;
    v7 = (v4 - 8) >> 3;
    v8 = vdupq_n_s64(v7);
    v9 = (v3 + 8);
    do
    {
      v10 = vmovn_s64(vcgeq_u64(v8, vorrq_s8(vdupq_n_s64(v5), xmmword_212100)));
      if (v10.i8[0])
      {
        *(v9 - 1) = v6;
      }

      if (v10.i8[4])
      {
        *v9 = v6;
      }

      v5 += 2;
      v9 += 2;
    }

    while (((v7 + 2) & 0x3FFFFFFFFFFFFFFELL) != v5);
  }

  return this;
}

void sub_B8A40(_Unwind_Exception *exception_object)
{
  v3 = v2;
  v5 = *v3;
  if (*v3)
  {
    *(v1 + 16) = v5;
    operator delete(v5);
  }

  _Unwind_Resume(exception_object);
}

fst::internal::DenseSymbolMap *fst::internal::DenseSymbolMap::DenseSymbolMap(fst::internal::DenseSymbolMap *this, const fst::internal::DenseSymbolMap *a2)
{
  *this = -1;
  std::vector<char const*>::vector[abi:ne200100](this + 1, (*(a2 + 2) - *(a2 + 1)) >> 3);
  *(this + 5) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(this + 5, *(a2 + 5), *(a2 + 6), (*(a2 + 6) - *(a2 + 5)) >> 3);
  *(this + 8) = *(a2 + 8);
  *(this + 18) = *(a2 + 18);
  if (*(this + 2) != *(this + 1))
  {
    strlen(**(a2 + 1));
    operator new[]();
  }

  return this;
}

void sub_B8B60(_Unwind_Exception *exception_object)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 16) = v4;
    operator delete(v4);
  }

  _Unwind_Resume(exception_object);
}

void fst::internal::DenseSymbolMap::~DenseSymbolMap(fst::internal::DenseSymbolMap *this)
{
  v4 = this + 8;
  v2 = *(this + 1);
  v3 = *(v4 + 1);
  if (v3 != v2)
  {
    v5 = 0;
    do
    {
      if (v2[v5])
      {
        operator delete[]();
      }

      ++v5;
    }

    while (v5 < (v3 - v2) >> 3);
  }

  v6 = *(this + 5);
  if (v6)
  {
    *(this + 6) = v6;
    operator delete(v6);
    v2 = *(this + 1);
  }

  if (v2)
  {
    *(this + 2) = v2;
    operator delete(v2);
  }
}

void fst::internal::DenseSymbolMap::Rehash(fst::internal::DenseSymbolMap *this)
{
  v2 = (this + 40);
  std::vector<long long>::resize(this + 5, (*(this + 6) - *(this + 5)) >> 2);
  v4 = *v2;
  v3 = v2[1];
  v2[3] = ((v3 - *v2) >> 3) - 1;
  v5 = v3 - v4;
  if (v3 != v4)
  {
    v6 = 0;
    v7 = *this;
    v8 = (v5 - 8) >> 3;
    v9 = vdupq_n_s64(v8);
    v10 = (v4 + 8);
    do
    {
      v11 = vmovn_s64(vcgeq_u64(v9, vorrq_s8(vdupq_n_s64(v6), xmmword_212100)));
      if (v11.i8[0])
      {
        *(v10 - 1) = v7;
      }

      if (v11.i8[4])
      {
        *v10 = v7;
      }

      v6 += 2;
      v10 += 2;
    }

    while (((v8 + 2) & 0x3FFFFFFFFFFFFFFELL) != v6);
  }

  v12 = *(this + 1);
  if (*(this + 2) != v12)
  {
    v13 = 0;
    do
    {
      boost::filesystem::path::path(__p, *(v12 + 8 * v13));
      v14 = std::__string_hash<char>::operator()[abi:ne200100](this + 32, __p);
      v15 = *(this + 8);
      if (v19 < 0)
      {
        operator delete(__p[0]);
      }

      v16 = v15 & v14;
      v17 = *(this + 5);
      if (*(v17 + 8 * (v15 & v14)) != *this)
      {
        do
        {
          v16 = *(this + 8) & (v16 + 1);
        }

        while (*(v17 + 8 * v16) != *this);
      }

      *(v17 + 8 * v16) = v13++;
      v12 = *(this + 1);
    }

    while (v13 < (*(this + 2) - v12) >> 3);
  }
}

unint64_t std::__string_hash<char>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  v2 = a2[1];
  if (*(a2 + 23) >= 0)
  {
    v3 = *(a2 + 23);
  }

  else
  {
    a2 = *a2;
    v3 = v2;
  }

  return std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](&v5, a2, v3);
}

uint64_t fst::internal::DenseSymbolMap::Find(uint64_t *a1, uint64_t *a2)
{
  v2 = a2;
  v4 = std::__string_hash<char>::operator()[abi:ne200100]((a1 + 4), a2);
  v5 = a1[8];
  v6 = a1[5];
  v7 = *a1;
  v8 = v4 & v5;
  v9 = *(v6 + 8 * (v4 & v5));
  if (v9 == *a1)
  {
    return v7;
  }

  v10 = a1[1];
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  while (strcmp(*(v10 + 8 * v9), v2))
  {
    v8 = (v8 + 1) & v5;
    v9 = *(v6 + 8 * v8);
    if (v9 == v7)
    {
      return v7;
    }
  }

  return v9;
}

void std::vector<long long>::resize(void *result, unint64_t a2)
{
  v2 = (result[1] - *result) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      result[1] = *result + 8 * a2;
    }
  }

  else
  {
    std::vector<long long>::__append(result, a2 - v2);
  }
}

void fst::SymbolTable::~SymbolTable(fst::SymbolTable *this)
{
  fst::SymbolTable::~SymbolTable(this);

  operator delete();
}

{
  *this = off_277318;
  v1 = *(this + 1);
  v2 = *(v1 + 168) - 1;
  *(v1 + 168) = v2;
  if (!v2)
  {
    if (*(v1 + 223) < 0)
    {
      operator delete(*(v1 + 200));
    }

    if (*(v1 + 199) < 0)
    {
      operator delete(*(v1 + 176));
    }

    std::__tree<std::__value_type<float,kaldi::MelBanks *>,std::__map_value_compare<float,std::__value_type<float,kaldi::MelBanks *>,std::less<float>,true>,std::allocator<std::__value_type<float,kaldi::MelBanks *>>>::destroy(v1 + 144, *(v1 + 152));
    v3 = *(v1 + 120);
    if (v3)
    {
      *(v1 + 128) = v3;
      operator delete(v3);
    }

    fst::internal::DenseSymbolMap::~DenseSymbolMap((v1 + 40));
    if (*(v1 + 23) < 0)
    {
      operator delete(*v1);
    }

    operator delete();
  }
}

uint64_t fst::SymbolTable::AddSymbol(uint64_t a1, const void **a2, uint64_t a3)
{
  fst::SymbolTable::MutateCheck(a1);
  v6 = *(a1 + 8);

  return fst::SymbolTableImpl::AddSymbol(v6, a2, a3);
}

uint64_t fst::SymbolTable::AddSymbol(uint64_t a1, const void **a2)
{
  fst::SymbolTable::MutateCheck(a1);
  v4 = *(a1 + 8);
  v5 = *(v4 + 24);

  return fst::SymbolTableImpl::AddSymbol(v4, a2, v5);
}

uint64_t fst::SymbolTable::Find(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  result = fst::internal::DenseSymbolMap::Find(v2 + 5, a2);
  if (result != -1)
  {
    v4 = v2[4];
    v5 = __OFSUB__(result, v4);
    v6 = result - v4;
    if (v6 < 0 == v5)
    {
      return *(v2[15] + 8 * v6);
    }
  }

  return result;
}

fst::CheckSummer *fst::CheckSummer::CheckSummer(fst::CheckSummer *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *(this + 3) = 0;
  std::string::resize((this + 8), 0x20uLL, 0);
  return this;
}

void sub_B90A4(_Unwind_Exception *exception_object)
{
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(exception_object);
}

std::string *fst::SymbolTableImpl::SymbolTableImpl(std::string *this, const fst::SymbolTableImpl *a2)
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

  *&this[1].__r_.__value_.__l.__data_ = *(a2 + 24);
  fst::internal::DenseSymbolMap::DenseSymbolMap(&this[1].__r_.__value_.__r.__words[2], (a2 + 40));
  this[5].__r_.__value_.__r.__words[0] = 0;
  this[5].__r_.__value_.__l.__size_ = 0;
  this[5].__r_.__value_.__r.__words[2] = 0;
  std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(&this[5], *(a2 + 15), *(a2 + 16), (*(a2 + 16) - *(a2 + 15)) >> 3);
  std::map<long long,long long>::map[abi:ne200100](this[6].__r_.__value_.__r.__words, a2 + 144);
  LODWORD(this[7].__r_.__value_.__l.__data_) = 1;
  this[7].__r_.__value_.__s.__data_[4] = 0;
  *&this[7].__r_.__value_.__r.__words[1] = 0u;
  *&this[8].__r_.__value_.__l.__data_ = 0u;
  *&this[8].__r_.__value_.__r.__words[2] = 0u;
  return this;
}

void sub_B9170(_Unwind_Exception *a1)
{
  v4 = *v2;
  if (*v2)
  {
    *(v1 + 128) = v4;
    operator delete(v4);
  }

  fst::internal::DenseSymbolMap::~DenseSymbolMap((v1 + 40));
  if (*(v1 + 23) < 0)
  {
    operator delete(*v1);
  }

  _Unwind_Resume(a1);
}

void *std::map<long long,long long>::map[abi:ne200100](void *a1, uint64_t a2)
{
  a1[2] = 0;
  a1[1] = 0;
  *a1 = a1 + 1;
  std::map<long long,long long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,long long>,std::__tree_node<std::__value_type<long long,long long>,void *> *,long>>>(a1, *a2, (a2 + 8));
  return a1;
}

uint64_t std::map<long long,long long>::insert[abi:ne200100]<std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<long long,long long>,std::__tree_node<std::__value_type<long long,long long>,void *> *,long>>>(uint64_t result, void *a2, void *a3)
{
  if (a2 != a3)
  {
    v4 = a2;
    v5 = result;
    do
    {
      result = std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_hint_unique_key_args<long long,std::pair<long long const,long long> const&>(v5, (v5 + 8), v4 + 4, v4 + 2);
      v6 = v4[1];
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
          v7 = v4[2];
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

uint64_t std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_hint_unique_key_args<long long,std::pair<long long const,long long> const&>(uint64_t **a1, void *a2, uint64_t *a3, _OWORD *a4)
{
  v4 = *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__find_equal<long long>(a1, a2, &v7, &v6, a3);
  if (!v4)
  {
    operator new();
  }

  return v4;
}

void *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__find_equal<long long>(void *a1, void *a2, void *a3, void *a4, uint64_t *a5)
{
  v5 = a1 + 1;
  if (a1 + 1 == a2 || (v6 = *a5, v7 = a2[4], *a5 < v7))
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
        v9 = v9[1];
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
    if (v10[4] < *a5)
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
          v18 = v16[4];
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
      v17 = a1 + 1;
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

  if (a4 != v5 && v6 >= a4[4])
  {
    v20 = *v5;
    if (*v5)
    {
      do
      {
        while (1)
        {
          v21 = v20;
          v22 = v20[4];
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
      v21 = a1 + 1;
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

void fst::SymbolTableImpl::CheckSum(fst::SymbolTableImpl *this@<X0>, std::string *a2@<X8>)
{
  fst::SymbolTableImpl::MaybeRecomputeCheckSum(this);
  if (*(this + 199) < 0)
  {
    v4 = *(this + 22);
    v5 = *(this + 23);

    std::string::__init_copy_ctor_external(a2, v4, v5);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 11);
    a2->__r_.__value_.__r.__words[2] = *(this + 24);
  }
}

void fst::SymbolTableImpl::LabeledCheckSum(fst::SymbolTableImpl *this@<X0>, std::string *a2@<X8>)
{
  fst::SymbolTableImpl::MaybeRecomputeCheckSum(this);
  if (*(this + 223) < 0)
  {
    v4 = *(this + 25);
    v5 = *(this + 26);

    std::string::__init_copy_ctor_external(a2, v4, v5);
  }

  else
  {
    *&a2->__r_.__value_.__l.__data_ = *(this + 200);
    a2->__r_.__value_.__r.__words[2] = *(this + 27);
  }
}

boost::filesystem::path *fst::SymbolTableImpl::Find@<X0>(fst::SymbolTableImpl *this@<X0>, uint64_t a2@<X1>, boost::filesystem::path *a3@<X8>)
{
  if (a2 < 0 || *(this + 4) <= a2)
  {
    v3 = *(this + 19);
    if (!v3)
    {
      return boost::filesystem::path::path(a3, "");
    }

    v4 = (this + 152);
    do
    {
      if (v3[4] >= a2)
      {
        v4 = v3;
      }

      v3 = v3[v3[4] < a2];
    }

    while (v3);
    if (v4 == (this + 152))
    {
      return boost::filesystem::path::path(a3, "");
    }

    if (v4[4] > a2)
    {
      return boost::filesystem::path::path(a3, "");
    }

    a2 = v4[5];
    if (a2 < 0)
    {
      return boost::filesystem::path::path(a3, "");
    }
  }

  if (a2 >= ((*(this + 7) - *(this + 6)) >> 3))
  {
    return boost::filesystem::path::path(a3, "");
  }

  else
  {
    return fst::internal::DenseSymbolMap::GetSymbol(a3, (this + 40), a2);
  }
}

uint64_t fst::SymbolTableImpl::Find(fst::SymbolTableImpl *this, const char *a2)
{
  boost::filesystem::path::path(__p, a2);
  v3 = fst::internal::DenseSymbolMap::Find(this + 5, __p);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = *(this + 4);
    v6 = __OFSUB__(v3, v5);
    v7 = v3 - v5;
    if (v7 < 0 == v6)
    {
      v4 = *(*(this + 15) + 8 * v7);
    }
  }

  if (v10 < 0)
  {
    operator delete(__p[0]);
  }

  return v4;
}

boost::filesystem::path *fst::SymbolTableImpl::GetNthSymbol@<X0>(fst::SymbolTableImpl *this@<X0>, uint64_t a2@<X1>, boost::filesystem::path *a3@<X8>)
{
  if (a2 < 0 || a2 >= ((*(this + 7) - *(this + 6)) >> 3) || *(this + 4) > a2)
  {
    return boost::filesystem::path::path(a3, "");
  }

  else
  {
    return fst::internal::DenseSymbolMap::GetSymbol(a3, (this + 40), a2);
  }
}

uint64_t *std::vector<long long>::__init_with_size[abi:ne200100]<long long *,long long *>(uint64_t *result, const void *a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    std::vector<long long>::__vallocate[abi:ne200100](result, a4);
  }

  return result;
}

void sub_B97E0(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<long long>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, a2);
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
}

void sub_B98CC(_Unwind_Exception *a1)
{
  if (*(v1 + 87) < 0)
  {
    operator delete(*v3);
  }

  *v1 = v2;
  std::locale::~locale((v1 + 8));
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<long long,long long>,std::__map_value_compare<long long,std::__value_type<long long,long long>,std::less<long long>,true>,std::allocator<std::__value_type<long long,long long>>>::__emplace_unique_key_args<long long,std::piecewise_construct_t const&,std::tuple<long long const&>,std::tuple<>>(uint64_t a1, uint64_t *a2, uint64_t a3, void **a4)
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

uint64_t *std::vector<long long>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<long long>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_B9A20(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *std::vector<char const*>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<char const*>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}

void sub_B9A98(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<char const*>::__vallocate[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(a1, a2);
  }

  std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
}

void std::__allocate_at_least[abi:ne200100]<std::allocator<char const*>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:ne200100]();
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2, unint64_t a3)
{
  if (a3 > 0x20)
  {
    if (a3 > 0x40)
    {
      v4 = *(a2 + a3 - 48);
      v5 = *(a2 + a3 - 40);
      v6 = *(a2 + a3 - 24);
      v7 = *(a2 + a3 - 56);
      v8 = *(a2 + a3 - 16);
      v9 = *(a2 + a3 - 8);
      v10 = v7 + v8;
      v11 = 0x9DDFEA08EB382D69 * (v6 ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))) >> 47) ^ (0x9DDFEA08EB382D69 * (v6 ^ (v4 + a3))));
      v12 = 0x9DDFEA08EB382D69 * (v11 ^ (v11 >> 47));
      v13 = *(a2 + a3 - 64) + a3;
      v14 = v13 + v7 + v4;
      v15 = __ROR8__(v14, 44) + v13;
      v16 = __ROR8__(v5 + v13 + v12, 21);
      v17 = v14 + v5;
      v18 = v15 + v16;
      v19 = v10 + *(a2 + a3 - 32) - 0x4B6D499041670D8DLL;
      v20 = v19 + v6 + v8;
      v21 = v20 + v9;
      v22 = __ROR8__(v20, 44) + v19 + __ROR8__(v19 + v5 + v9, 21);
      v24 = *a2;
      v23 = a2 + 4;
      v25 = v24 - 0x4B6D499041670D8DLL * v5;
      v26 = -((a3 - 1) & 0xFFFFFFFFFFFFFFC0);
      do
      {
        v27 = *(v23 - 3);
        v28 = v25 + v17 + v10 + v27;
        v29 = v23[2];
        v30 = v23[3];
        v31 = v23[1];
        v10 = v31 + v17 - 0x4B6D499041670D8DLL * __ROR8__(v10 + v18 + v29, 42);
        v32 = v12 + v21;
        v33 = *(v23 - 2);
        v34 = *(v23 - 1);
        v35 = *(v23 - 4) - 0x4B6D499041670D8DLL * v18;
        v36 = v35 + v21 + v34;
        v37 = v35 + v27 + v33;
        v17 = v37 + v34;
        v38 = __ROR8__(v37, 44) + v35;
        v39 = (0xB492B66FBE98F273 * __ROR8__(v28, 37)) ^ v22;
        v25 = 0xB492B66FBE98F273 * __ROR8__(v32, 33);
        v18 = v38 + __ROR8__(v36 + v39, 21);
        v40 = v25 + v22 + *v23;
        v21 = v40 + v31 + v29 + v30;
        v22 = __ROR8__(v40 + v31 + v29, 44) + v40 + __ROR8__(v10 + v33 + v40 + v30, 21);
        v23 += 8;
        v12 = v39;
        v26 += 64;
      }

      while (v26);
      v41 = v39 - 0x4B6D499041670D8DLL * (v10 ^ (v10 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) ^ ((0x9DDFEA08EB382D69 * (v21 ^ ((0x9DDFEA08EB382D69 * (v21 ^ v17)) >> 47) ^ (0x9DDFEA08EB382D69 * (v21 ^ v17)))) >> 47));
      v42 = v25 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) ^ ((0x9DDFEA08EB382D69 * (v22 ^ ((0x9DDFEA08EB382D69 * (v22 ^ v18)) >> 47) ^ (0x9DDFEA08EB382D69 * (v22 ^ v18)))) >> 47));
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) ^ ((0x9DDFEA08EB382D69 * (v42 ^ ((0x9DDFEA08EB382D69 * (v42 ^ v41)) >> 47) ^ (0x9DDFEA08EB382D69 * (v42 ^ v41)))) >> 47));
    }

    else
    {
      return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](a2, a3);
    }
  }

  else if (a3 > 0x10)
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](a2, a3);
  }

  else
  {
    return std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](a2, a3);
  }
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_0_to_16[abi:ne200100](_DWORD *a1, unint64_t a2)
{
  if (a2 < 9)
  {
    if (a2 < 4)
    {
      result = 0x9AE16A3B2F90404FLL;
      if (a2)
      {
        v8 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
        return 0x9AE16A3B2F90404FLL * (v8 ^ (v8 >> 47));
      }
    }

    else
    {
      v6 = *(a1 + a2 - 4);
      v7 = 0x9DDFEA08EB382D69 * (((8 * *a1) + a2) ^ v6);
      return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) ^ ((0x9DDFEA08EB382D69 * (v6 ^ (v7 >> 47) ^ v7)) >> 47));
    }
  }

  else
  {
    v3 = *(a1 + a2 - 8);
    v4 = __ROR8__(v3 + a2, a2);
    return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v4 ^ ((0x9DDFEA08EB382D69 * (v4 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v4 ^ *a1)))) >> 47))) ^ v3;
  }

  return result;
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_17_to_32[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = 0xB492B66FBE98F273 * *a1;
  v4 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v3 - v2, 43);
  v5 = v3 + a2 + __ROR8__(v2 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
  v6 = 0x9DDFEA08EB382D69 * (v5 ^ (v4 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)));
  return 0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) ^ ((0x9DDFEA08EB382D69 * (v5 ^ (v6 >> 47) ^ v6)) >> 47));
}

unint64_t std::__murmur2_or_cityhash<unsigned long,64ul>::__hash_len_33_to_64[abi:ne200100](void *a1, uint64_t a2)
{
  v2 = *(a1 + a2 - 16);
  v3 = *a1 - 0x3C5A37A36834CED9 * (v2 + a2);
  v5 = a1[2];
  v4 = a1[3];
  v6 = __ROR8__(v3 + v4, 52);
  v7 = v3 + a1[1];
  v8 = __ROR8__(v7, 7);
  v9 = v7 + v5;
  v10 = *(a1 + a2 - 32) + v5;
  v11 = v8 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v2 + a2), 37) + v6 + __ROR8__(v9, 31);
  v12 = *(a1 + a2 - 24) + v10 + v2;
  v13 = 0xC3A5C85C97CB3127 * (v12 + *(a1 + a2 - 8) + v4 + v11) - 0x651E95C4D06FBFB1 * (v9 + v4 + __ROR8__(v10, 37) + __ROR8__(*(a1 + a2 - 24) + v10, 7) + __ROR8__(*(a1 + a2 - 8) + v4 + v10, 52) + __ROR8__(v12, 31));
  return 0x9AE16A3B2F90404FLL * ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) ^ ((v11 - 0x3C5A37A36834CED9 * (v13 ^ (v13 >> 47))) >> 47));
}

void std::vector<long long>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<unsigned long>>(a1, v10);
    }

    v11 = (8 * (v7 >> 3));
    bzero(v11, 8 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[8 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void fst::SplitToVector(char *__s1, char *__s2, uint64_t a3, int a4)
{
  if (__s1)
  {
    v7 = __s1;
    do
    {
      v8 = strpbrk(v7, __s2);
      v9 = v8;
      if (v8)
      {
        *v8 = 0;
      }

      if (!a4 || *v7)
      {
        v11 = *(a3 + 8);
        v10 = *(a3 + 16);
        if (v11 >= v10)
        {
          v13 = (v11 - *a3) >> 3;
          if ((v13 + 1) >> 61)
          {
            std::vector<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *,std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>::__throw_length_error[abi:ne200100]();
          }

          v14 = v10 - *a3;
          v15 = v14 >> 2;
          if (v14 >> 2 <= (v13 + 1))
          {
            v15 = v13 + 1;
          }

          if (v14 >= 0x7FFFFFFFFFFFFFF8)
          {
            v16 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v16 = v15;
          }

          if (v16)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<int *>>(a3, v16);
          }

          v17 = (8 * v13);
          *v17 = v7;
          v12 = 8 * v13 + 8;
          v18 = *(a3 + 8) - *a3;
          v19 = v17 - v18;
          memcpy(v17 - v18, *a3, v18);
          v20 = *a3;
          *a3 = v19;
          *(a3 + 8) = v12;
          *(a3 + 16) = 0;
          if (v20)
          {
            operator delete(v20);
          }
        }

        else
        {
          *v11 = v7;
          v12 = (v11 + 1);
        }

        *(a3 + 8) = v12;
      }

      v7 = v9 + 1;
    }

    while (v9);
  }
}

uint64_t fst::AlignInput(uint64_t a1)
{
  v3[1] = 0;
  v1 = 16;
  while (1)
  {
    std::istream::tellg();
    if ((v6 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v6 % 0x10)
    {
      std::istream::read();
      if (--v1)
      {
        continue;
      }
    }

    return 1;
  }

  boost::filesystem::path::path(__p, "ERROR");
  fst::LogMessage::LogMessage(v3, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "AlignInput: can't determine stream position", 43);
  fst::LogMessage::~LogMessage(v3);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_BA2FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, __int16 a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  fst::LogMessage::~LogMessage(&a12);
  if (a18 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::AlignOutput(void *a1)
{
  v2 = 16;
  while (1)
  {
    v3 = a1 + *(*a1 - 24);
    if ((v3[32] & 5) != 0)
    {
      break;
    }

    (*(**(v3 + 5) + 32))(__p);
    if ((v8 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v8 % 0x10)
    {
      std::ostream::write();
      if (--v2)
      {
        continue;
      }
    }

    return 1;
  }

  boost::filesystem::path::path(__p, "ERROR");
  fst::LogMessage::LogMessage(&v5, __p);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&std::cerr, "AlignOutput: can't determine stream position", 44);
  fst::LogMessage::~LogMessage(&v5);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  return 0;
}

void sub_BA49C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, void *__p, uint64_t a15, int a16, __int16 a17, char a18, char a19)
{
  fst::LogMessage::~LogMessage(&a13);
  if (a19 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t fst::FstHeader::Write(uint64_t a1, uint64_t a2)
{
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  std::ostream::write();
  return 1;
}

void boost::filesystem::path::append_v3(boost::filesystem::path *this, const boost::filesystem::path *a2)
{
  v2 = *(a2 + 23);
  v3 = v2;
  v4 = *(a2 + 1);
  if ((v2 & 0x80u) == 0)
  {
    v5 = *(a2 + 23);
  }

  else
  {
    v5 = *(a2 + 1);
  }

  if (v5)
  {
    if (this == a2)
    {
      if (v2 < 0)
      {
        std::string::__init_copy_ctor_external(&__p, *a2, v4);
      }

      else
      {
        __p = *a2;
      }

      boost::filesystem::path::append_v3(this, &__p);
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    else
    {
      v8 = *a2;
      if ((v2 & 0x80u) == 0)
      {
        v9 = a2;
      }

      else
      {
        v9 = *a2;
      }

      if (*v9 != 47)
      {
        boost::filesystem::path::append_separator_if_needed(this);
        v2 = *(a2 + 23);
        v8 = *a2;
        v4 = *(a2 + 1);
        v3 = *(a2 + 23);
      }

      if (v3 >= 0)
      {
        v10 = a2;
      }

      else
      {
        v10 = v8;
      }

      if (v3 >= 0)
      {
        v4 = v2;
      }

      std::string::append(this, v10, v4);
    }
  }
}

void sub_BA748(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

std::string::size_type boost::filesystem::path::append_separator_if_needed(std::string *this)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) == 0)
  {
    if (!*(&this->__r_.__value_.__s + 23))
    {
      return 0;
    }

    v2 = this + size;
LABEL_6:
    if (*(v2 - 1) != 47)
    {
      std::string::push_back(this, 47);
      return size;
    }

    return 0;
  }

  size = this->__r_.__value_.__l.__size_;
  if (size)
  {
    v2 = (this->__r_.__value_.__r.__words[0] + size);
    goto LABEL_6;
  }

  return size;
}

void boost::filesystem::path::~path(void **this)
{
  if (*(this + 23) < 0)
  {
    operator delete(*this);
  }
}

std::string *std::string::append[abi:ne200100]<char const*,0>(std::string *this, std::string *__src, std::string *a3)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  v7 = a3 - __src;
  if ((size & 0x8000000000000000) != 0)
  {
    if (a3 == __src)
    {
      return this;
    }

    size = this->__r_.__value_.__l.__size_;
    v11 = this->__r_.__value_.__r.__words[2];
    v8 = (v11 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    v10 = this->__r_.__value_.__r.__words[0];
    v9 = HIBYTE(v11);
  }

  else
  {
    if (a3 == __src)
    {
      return this;
    }

    v8 = 22;
    LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    v10 = this;
  }

  if (v10 > __src || (&v10->__r_.__value_.__l.__data_ + size + 1) <= __src)
  {
    if (v8 - size < v7)
    {
      std::string::__grow_by(this, v8, size - v8 + v7, size, size, 0, 0);
      this->__r_.__value_.__l.__size_ = size;
      LOBYTE(v9) = *(&this->__r_.__value_.__s + 23);
    }

    v14 = this;
    if ((v9 & 0x80) != 0)
    {
      v14 = this->__r_.__value_.__r.__words[0];
    }

    v15 = v14 + size;
    if (a3 != __src)
    {
      memmove(v14 + size, __src, v7);
    }

    v15[v7] = 0;
    v16 = v7 + size;
    if (SHIBYTE(this->__r_.__value_.__r.__words[2]) < 0)
    {
      this->__r_.__value_.__l.__size_ = v16;
    }

    else
    {
      *(&this->__r_.__value_.__s + 23) = v16 & 0x7F;
    }
  }

  else
  {
    std::string::__init_with_size[abi:ne200100]<char const*,char const*>(__p, __src, a3, v7);
    if ((v19 & 0x80u) == 0)
    {
      v12 = __p;
    }

    else
    {
      v12 = __p[0];
    }

    if ((v19 & 0x80u) == 0)
    {
      v13 = v19;
    }

    else
    {
      v13 = __p[1];
    }

    std::string::append(this, v12, v13);
    if (v19 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return this;
}

void sub_BA954(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

const char *anonymous namespace::find_root_directory_start(_anonymous_namespace_ *this, const char *a2, void *a3, unint64_t *a4)
{
  *a3 = 0;
  if (a2 && *this == 47)
  {
    if (a2 == &dword_0 + 1 || *(this + 1) != 47)
    {
      return 0;
    }

    v5 = a2 - 2;
    if (a2 != &dword_0 + 2)
    {
      v6 = this + 2;
      if (*(this + 2) == 47)
      {
        return 0;
      }

      v8 = memchr(v6, 47, v5);
      v9 = (v8 - v6);
      if (!v8)
      {
        v9 = v5;
      }

      a2 = v9 + 2;
    }

    *a3 = a2;
  }

  return a2;
}

const char *boost::filesystem::path::find_parent_path_size(boost::filesystem::path *this, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  v4 = this;
  v5 = *(this + 23);
  if ((v5 & 0x8000000000000000) != 0)
  {
    this = *this;
    v5 = *(v4 + 1);
  }

  v19 = 0;
  v7 = *(v4 + 23);
  if (v5 >= v19)
  {
    v8 = v19;
  }

  else
  {
    v8 = v5;
  }

  if (v7 >= 0)
  {
    v9 = v4;
  }

  else
  {
    v9 = *v4;
  }

  v10 = v9 - 1;
  v11 = v5;
  while (v11 > v19)
  {
    v12 = v11 - 1;
    v13 = (v11--)[v10];
    if (v13 == 47)
    {
      v8 = v12 + 1;
      break;
    }
  }

  if (v8 >= v19)
  {
    v14 = v19;
  }

  else
  {
    v14 = v8;
  }

  if (v7 >= 0)
  {
    v15 = v4;
  }

  else
  {
    v15 = *v4;
  }

  v16 = v15 - 1;
  v17 = v8;
  while (v17 > v19)
  {
    if (v17[v16] != 47)
    {
      return v17;
    }

    if (root_directory_start == --v17)
    {
      if (v5 == v8)
      {
        return root_directory_start;
      }

      else
      {
        return root_directory_start + 1;
      }
    }
  }

  if (v5 == v8)
  {
    return 0;
  }

  else
  {
    return v14;
  }
}

void anonymous namespace::path_locale_deleter::~path_locale_deleter(_anonymous_namespace_::path_locale_deleter *this)
{
  {
    operator delete(v1);
  }
}

void std::string::__init_copy_ctor_external(std::string *this, const std::string::value_type *__s, std::string::size_type __sz)
{
  v5 = this;
  if (__sz > 0x16)
  {
    if (__sz >= 0x7FFFFFFFFFFFFFF8)
    {
      std::string::__throw_length_error[abi:ne200100]();
    }

    if ((__sz | 7) == 0x17)
    {
      v6 = 25;
    }

    else
    {
      v6 = (__sz | 7) + 1;
    }

    v7 = operator new(v6);
    v5->__r_.__value_.__l.__size_ = __sz;
    v5->__r_.__value_.__r.__words[2] = v6 | 0x8000000000000000;
    v5->__r_.__value_.__r.__words[0] = v7;
    v5 = v7;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __sz;
  }

  memmove(v5, __s, __sz + 1);
}

void *std::string::__init_with_size[abi:ne200100]<char const*,char const*>(void *__dst, void *__src, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v7 = __dst;
  if (a4 > 0x16)
  {
    if ((a4 | 7) == 0x17)
    {
      v8 = 25;
    }

    else
    {
      v8 = (a4 | 7) + 1;
    }

    __dst = operator new(v8);
    v7[1] = a4;
    v7[2] = v8 | 0x8000000000000000;
    *v7 = __dst;
    v7 = __dst;
  }

  else
  {
    *(__dst + 23) = a4;
  }

  v9 = a3 - __src;
  if (v9)
  {
    __dst = memmove(v7, __src, v9);
  }

  *(v7 + v9) = 0;
  return __dst;
}

void *std::string::basic_string[abi:ne200100]<0>(void *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    if ((v4 | 7) == 0x17)
    {
      v7 = 25;
    }

    else
    {
      v7 = (v4 | 7) + 1;
    }

    v6 = operator new(v7);
    a1[1] = v5;
    a1[2] = v7 | 0x8000000000000000;
    *a1 = v6;
  }

  else
  {
    *(a1 + 23) = v4;
    v6 = a1;
    if (!v4)
    {
      goto LABEL_10;
    }
  }

  memmove(v6, __s, v5);
LABEL_10:
  *(v6 + v5) = 0;
  return a1;
}

uint64_t global constructor keyed to_032768()
{
}

void kaldi::WriteBasicType<BOOL>(void *a1, char a2, int a3)
{
  if (a3)
  {
    v5 = "T";
  }

  else
  {
    v5 = "F";
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, v5, 1);
  if ((a2 & 1) == 0)
  {
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, " ", 1);
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v6, "WriteBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 38);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v6, "Write failure in WriteBasicType<BOOL>");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }
}

void kaldi::ReadBasicType<BOOL>(void *a1, char a2, char *a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_20.segname[3], "b != NULL", a5);
  }

  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  v6 = std::istream::peek();
  v12 = v6;
  if (v6 == 84)
  {
    v7 = 1;
  }

  else
  {
    if (v6 != 70)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 53);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "Read failure in ReadBasicType<BOOL>, file position is ", 54);
      std::istream::tellg();
      v8 = std::ostream::operator<<();
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", next char is ", 15);
      kaldi::CharToString(&__p, &v12);
      std::operator<<[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v9, &__p);
      std::string::~string(&__p);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
    }

    v7 = 0;
  }

  *a3 = v7;

  std::istream::get();
}

void sub_BB01C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void *kaldi::WriteBasicType<float>(uint64_t a1, int a2, float a3)
{
  if (a2)
  {
    std::ostream::put();
    return std::ostream::write();
  }

  else
  {
    v4 = std::ostream::operator<<();

    return std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, " ", 1);
  }
}

void kaldi::ReadBasicType<float>(void *a1, int a2, float *a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_20.filesize + 2, "f != NULL", a5);
  }

  if (a2)
  {
    v13 = 0.0;
    v7 = std::istream::peek();
    if (v7 == 8)
    {
      kaldi::ReadBasicType<double>(a1, 1, &v13, v8, v9);
      v10 = v13;
      *a3 = v10;
    }

    else
    {
      if (v7 != 4)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 93);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ReadBasicType: expected float, saw ", 35);
        std::istream::peek();
        v11 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", at file position ", 19);
        std::istream::tellg();
        std::ostream::operator<<();
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
      }

      std::istream::get();
      std::istream::read();
    }
  }

  else
  {
    std::istream::operator>>();
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 100);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "ReadBasicType: failed to read, at file position ", 48);
    std::istream::tellg();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }
}

void sub_BB2AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

void kaldi::ReadBasicType<double>(void *a1, int a2, double *a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_68.sectname[3], "d != NULL", a5);
  }

  if (a2)
  {
    v12 = 0.0;
    v7 = std::istream::peek();
    if (v7 == 4)
    {
      kaldi::ReadBasicType<float>(a1, 1, &v12, v8, v9);
      *a3 = v12;
    }

    else
    {
      if (v7 != 8)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 118);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "ReadBasicType: expected float, saw ", 35);
        std::istream::peek();
        v10 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", at file position ", 19);
        std::istream::tellg();
        std::ostream::operator<<();
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
      }

      std::istream::get();
      std::istream::read();
    }
  }

  else
  {
    std::istream::operator>>();
  }

  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "ReadBasicType", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 125);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "ReadBasicType: failed to read, at file position ", 48);
    std::istream::tellg();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }
}

void sub_BB4BC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::CheckToken(kaldi *this, const char *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *this;
  if (!*this)
  {
    kaldi::KaldiAssertFailure_("CheckToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_68.nreloc + 2, "*token != '\\0'", a5);
  }

  v6 = this + 1;
  do
  {
    if (v5 < 0)
    {
      result = __maskrune(v5, 0x4000uLL);
      if (result)
      {
LABEL_9:
        kaldi::KaldiAssertFailure_("CheckToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_68.flags, "!::isspace(*token)", a5);
      }
    }

    else
    {
      result = _DefaultRuneLocale.__runetype[v5] & 0x4000;
      if (result)
      {
        goto LABEL_9;
      }
    }

    v8 = *v6++;
    v5 = v8;
  }

  while (v8);
  return result;
}

void *kaldi::WriteToken(void *a1, const char *a2, kaldi *this, uint64_t a4, const char *a5)
{
  if (!this)
  {
    kaldi::KaldiAssertFailure_("WriteToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_68.reserved2, "token != NULL", a5);
  }

  kaldi::CheckToken(this, a2, this, a4, a5);
  v7 = strlen(this);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, this, v7);
  result = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " ", 1);
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    exception = __cxa_allocate_exception(0x10uLL);
    std::runtime_error::runtime_error(exception, "Write failure in WriteToken.");
  }

  return result;
}

uint64_t kaldi::Peek(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  return std::istream::peek();
}

void *kaldi::WriteToken(void *a1, uint64_t a2, kaldi *a3, uint64_t a4, const char *a5)
{
  if (*(a3 + 23) < 0)
  {
    a3 = *a3;
  }

  return kaldi::WriteToken(a1, 0, a3, a4, a5);
}

void kaldi::ReadToken(uint64_t *a1, char a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ReadToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_B8.sectname[10], "str != NULL", a5);
  }

  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, a3);
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "ReadToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 198);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "ReadToken, failed to read token at file position ", 49);
    std::istream::tellg();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  v7 = std::istream::peek();
  if (v7 <= 0x7F)
  {
    v8 = _DefaultRuneLocale.__runetype[v7] & 0x4000;
  }

  else
  {
    v8 = __maskrune(v7, 0x4000uLL);
  }

  if (!v8)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v11, "ReadToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 202);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "ReadToken, expected space after token, saw instead ", 51);
    LOBYTE(v12[0]) = std::istream::peek();
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v12, 1);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", at file position ", 19);
    std::istream::tellg();
    std::ostream::operator<<();
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v11);
  }

  std::istream::get();
}

void sub_BB8B0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t kaldi::PeekToken(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  if (std::istream::peek() == 60)
  {
    std::istream::get();
    v2 = std::istream::peek();
    v3 = std::istream::unget();
    if ((*(v3 + *(*v3 - 24) + 32) & 5) != 0 && kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v6, "PeekToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 221);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Error ungetting '<' in PeekToken", 32);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v6);
    }

    return v2;
  }

  else
  {

    return std::istream::peek();
  }
}

void kaldi::ExpectToken(uint64_t *a1, char a2, kaldi *a3)
{
  std::istream::tellg();
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("ExpectToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", &stru_B8.size + 5, "token != NULL", v9);
  }

  kaldi::CheckToken(a3, v6, v7, v8, v9);
  if ((a2 & 1) == 0)
  {
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a1);
  }

  __s1 = 0;
  v22 = 0;
  v23 = 0;
  std::operator>>[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a1, &__s1);
  std::istream::get();
  if ((*(a1 + *(*a1 - 24) + 32) & 5) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v24, "ExpectToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 236);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Failed to read token [started at file position ", 47);
    v11 = std::ostream::operator<<();
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "], expected ", 12);
    v13 = strlen(a3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, a3, v13);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
  }

  if (SHIBYTE(v23) < 0)
  {
    v10 = __s1;
    if (strcmp(__s1, a3))
    {
      goto LABEL_13;
    }

    operator delete(v10);
  }

  else if (strcmp(&__s1, a3))
  {
LABEL_13:
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v24, "ExpectToken", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/base/io-funcs.cc", 240);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "Expected token ", 16);
    v15 = strlen(a3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, a3, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ", got instead ", 16);
    if (v23 >= 0)
    {
      p_s1 = &__s1;
    }

    else
    {
      p_s1 = __s1;
    }

    if (v23 >= 0)
    {
      v19 = HIBYTE(v23);
    }

    else
    {
      v19 = v22;
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, p_s1, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ".", 2);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v24);
  }
}

void sub_BBC28(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}