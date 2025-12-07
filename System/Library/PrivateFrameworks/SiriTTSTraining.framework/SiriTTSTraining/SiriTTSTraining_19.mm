void sub_16A1DC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::WriteData(_BYTE *a1, void *a2, uint64_t a3, uint64_t a4)
{
  (*(*a1 + 128))(a1);
  (*(*a1 + 192))(a1, a2, a3);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::QuantizedMatrix<short>::Write(v8, a2, a3, a4);
  v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  kaldi::QuantizedMatrix<short>::Write(v9, a2, a3, a4);
  if (a1[208] == 1)
  {
    v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    kaldi::CuMatrixBase<float>::Write(v10, a2, a3, a4);
  }

  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  kaldi::CuVectorBase<float>::Write(v11, a2, a3, v12, v13);
  if (a1[224] == 1)
  {
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);

    kaldi::QuantizedMatrix<short>::Write(v14, a2, a3, a4);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::NumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v3 = kaldi::QuantizedMatrixBase<short>::NumRows(v2);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(v4) * v3;
  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v9 = v5 + kaldi::QuantizedMatrixBase<short>::NumCols(v8) * v7;
  v10 = (v9 + *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16));
  if (*(a1 + 208) == 1)
  {
    v11 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
    v10 = (v10 + *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) * v11);
  }

  if (*(a1 + 224) == 1)
  {
    v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v13 = kaldi::QuantizedMatrixBase<short>::NumRows(v12);
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    return v10 + kaldi::QuantizedMatrixBase<short>::NumCols(v14) * v13;
  }

  return v10;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetParams(_BYTE *a1, uint64_t a2)
{
  v4 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v8 = kaldi::QuantizedMatrixBase<short>::NumRows(v7);
  v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v10 = kaldi::QuantizedMatrixBase<short>::NumCols(v9) * v8;
  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v12 = kaldi::QuantizedMatrixBase<short>::NumRows(v11);
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v14 = kaldi::QuantizedMatrixBase<short>::NumCols(v13);
  v39 = 0;
  v40 = 0;
  if (v10 > *(a2 + 8))
  {
    goto LABEL_11;
  }

  v16 = v14 * v12;
  v38 = *a2;
  LODWORD(v39) = v10;
  v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v38, v17);
  v39 = 0;
  v40 = 0;
  v18 = v16 + v10;
  if (v16 + v10 > *(a2 + 8))
  {
    goto LABEL_11;
  }

  v38 = (*a2 + 4 * v10);
  LODWORD(v39) = v16;
  v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v38, v19);
  if (a1[208] == 1)
  {
    v20 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
    v21 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) * v20;
    v39 = 0;
    v40 = 0;
    v22 = v21 + v18;
    if (v21 + v18 > *(a2 + 8))
    {
      goto LABEL_11;
    }

    v38 = (*a2 + 4 * v18);
    LODWORD(v39) = v21;
    v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v38, v23, v24, v25, v26);
    v18 = v22;
  }

  v27 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16);
  v39 = 0;
  v40 = 0;
  if (v27 + v18 > *(a2 + 8))
  {
    goto LABEL_11;
  }

  v38 = (*a2 + 4 * v18);
  LODWORD(v39) = v27;
  v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v28, &v38, v29, v30, v31);
  if (a1[224] != 1)
  {
    return;
  }

  v32 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16) + v18;
  v33 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
  v34 = kaldi::QuantizedMatrixBase<short>::NumRows(v33);
  v35 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
  v36 = kaldi::QuantizedMatrixBase<short>::NumCols(v35);
  v39 = 0;
  v40 = 0;
  if (v36 * v34 + v32 > *(a2 + 8))
  {
LABEL_11:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v15);
  }

  v38 = (*a2 + 4 * v32);
  LODWORD(v39) = v36 * v34;
  v37 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
  kaldi::VectorBase<float>::CopyRowsFromMat<short>(&v38, v37);
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetParams(_BYTE *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != (*(*a1 + 208))(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_1F8.size + 2, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v7 = kaldi::QuantizedMatrixBase<short>::NumRows(v6);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v9 = kaldi::QuantizedMatrixBase<short>::NumCols(v8) * v7;
  v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v11 = kaldi::QuantizedMatrixBase<short>::NumRows(v10);
  v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v13 = kaldi::QuantizedMatrixBase<short>::NumCols(v12);
  v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v34 = 0;
  v35 = 0;
  if (v9 > *(a2 + 8))
  {
    goto LABEL_12;
  }

  v16 = v13 * v11;
  v33 = *a2;
  LODWORD(v34) = v9;
  kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v14, &v33);
  v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v34 = 0;
  v35 = 0;
  v18 = v16 + v9;
  if (v16 + v9 > *(a2 + 8))
  {
    goto LABEL_12;
  }

  v33 = (*a2 + 4 * v9);
  LODWORD(v34) = v16;
  kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v17, &v33);
  if (a1[208] == 1)
  {
    v19 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
    v20 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) * v19;
    v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    v34 = 0;
    v35 = 0;
    if (v20 + v18 > *(a2 + 8))
    {
      goto LABEL_12;
    }

    v33 = (*a2 + 4 * v18);
    LODWORD(v34) = v20;
    kaldi::CuMatrixBase<float>::CopyRowsFromVec(v21, &v33);
    v18 += v20;
  }

  v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  v25 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16);
  v34 = 0;
  v35 = 0;
  if (v25 + v18 > *(a2 + 8))
  {
    goto LABEL_12;
  }

  v33 = (*a2 + 4 * v18);
  LODWORD(v34) = v25;
  result = kaldi::CuVectorBase<float>::CopyFromVec<float>(v22, &v33, v23, v24, v15);
  if (a1[224] != 1)
  {
    return result;
  }

  v27 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16) + v18;
  v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
  v29 = kaldi::QuantizedMatrixBase<short>::NumRows(v28);
  v30 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
  v31 = kaldi::QuantizedMatrixBase<short>::NumCols(v30) * v29;
  v32 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
  v34 = 0;
  v35 = 0;
  if (v31 + v27 > *(a2 + 8))
  {
LABEL_12:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v15);
  }

  v33 = (*a2 + 4 * v27);
  LODWORD(v34) = v31;
  return kaldi::QuantizedMatrixBase<short>::CopyRowsFromVec(v32, &v33);
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SumParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v7 = kaldi::QuantizedMatrixBase<short>::Sum(v2, v3, v4, v5, v6);
  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v13 = v7 + kaldi::QuantizedMatrixBase<short>::Sum(v8, v9, v10, v11, v12);
  if (*(a1 + 208) == 1)
  {
    v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    v13 = v13 + kaldi::CuMatrixBase<float>::Sum(v14, v15, v16, v17, v18);
  }

  if (*(a1 + 224) == 1)
  {
    v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v13 = v13 + kaldi::QuantizedMatrixBase<short>::Sum(v19, v20, v21, v22, v23);
  }

  v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  return v13 + kaldi::CuVectorBase<float>::Sum(v24);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PerturbParams(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v3 = kaldi::QuantizedMatrixBase<short>::NumRows(v2);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v5 = kaldi::QuantizedMatrixBase<short>::NumCols(v4);
  kaldi::CuMatrix<float>::CuMatrix(v6, v3, v5, 1, 0, 0);
  kaldi::CuMatrixBase<float>::SetRandn(v6);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::QuantizedMatrixBase<short>::AddMat();
}

void sub_16AC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(v8);
  v10 = kaldi::QuantizedMatrixBase<short>::NumRows(v9);
  v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(v8);
  v12 = kaldi::QuantizedMatrixBase<short>::NumCols(v11);
  kaldi::CuMatrix<float>::Resize(va, v10, v12, 1, 0);
  kaldi::CuMatrixBase<float>::SetRandn(va);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(v8);
  kaldi::QuantizedMatrixBase<short>::AddMat();
}

void sub_16AE24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetGradient(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 136))(a1);
  if (v8)
  {
  }

  else
  {
    v9 = 0;
  }

  (*(*v9 + 336))(v9, a2, a3, 0, 0);
  v10 = (*(*a1 + 208))(a1);
  kaldi::Vector<float>::Resize(a4, v10, 0, v11, v12);
  v13 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v14 = kaldi::QuantizedMatrixBase<short>::NumRows(v13);
  v15 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v16 = kaldi::QuantizedMatrixBase<short>::NumCols(v15) * v14;
  v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v18 = kaldi::QuantizedMatrixBase<short>::NumRows(v17);
  v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  v20 = kaldi::QuantizedMatrixBase<short>::NumCols(v19);
  v58 = 0;
  v59 = 0;
  if (v16 > *(a4 + 8))
  {
    goto LABEL_14;
  }

  v22 = v20;
  v57 = *a4;
  LODWORD(v58) = v16;
  v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(v9, 0);
  kaldi::Matrix<float>::Matrix<float>(&v54, v23, 111, v24, v25);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v57, &v54);
  v26 = v22 * v18;
  kaldi::Matrix<float>::~Matrix(&v54);
  v55 = 0;
  v56 = 0;
  v27 = v26 + v16;
  if (v26 + v16 > *(a4 + 8))
  {
    goto LABEL_14;
  }

  v54 = *a4 + 4 * v16;
  LODWORD(v55) = v26;
  v28 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(v9, 0);
  kaldi::VectorBase<float>::CopyRowsFromMat(&v54, v28, v29, v30, v31);
  if (a1[208] == 1)
  {
    v32 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20);
    v33 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) * v32;
    v55 = 0;
    v56 = 0;
    v34 = v33 + v27;
    if (v33 + v27 > *(a4 + 8))
    {
      goto LABEL_14;
    }

    v54 = *a4 + 4 * v27;
    LODWORD(v55) = v33;
    v35 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(v9, 0);
    kaldi::VectorBase<float>::CopyRowsFromMat(&v54, v35, v36, v37, v38);
    v27 = v34;
  }

  v39 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16);
  v55 = 0;
  v56 = 0;
  if (v39 + v27 > *(a4 + 8))
  {
LABEL_14:
    kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v21);
  }

  v54 = *a4 + 4 * v27;
  LODWORD(v55) = v39;
  v40 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(v9, 0);
  kaldi::CuVectorBase<float>::CopyToVec<float>(v40, &v54, v41, v42, v43);
  if (a1[224] == 1)
  {
    v44 = *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16) + v27;
    v45 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v46 = kaldi::QuantizedMatrixBase<short>::NumRows(v45);
    v47 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    v48 = kaldi::QuantizedMatrixBase<short>::NumCols(v47);
    v55 = 0;
    v56 = 0;
    if (v48 * v46 + v44 <= *(a4 + 8))
    {
      v54 = *a4 + 4 * v44;
      LODWORD(v55) = v48 * v46;
      v49 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(v9, 0);
      kaldi::VectorBase<float>::CopyRowsFromMat(&v54, v49, v50, v51, v52);
      return (*(*v9 + 8))(v9);
    }

    goto LABEL_14;
  }

  return (*(*v9 + 8))(v9);
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetNormalizedLearningRate(void *a1, int a2)
{
  v2 = (a1 + *(*a1 - 24));
  if ((v2[21] & 1) == 0)
  {
    return v2[14];
  }

  v3 = a1[63];
  v4 = a1[64] - v3;
  if (!v4)
  {
    return NAN;
  }

  v5 = v4 >> 2;
  if (v5 <= a2)
  {
    return NAN;
  }

  v6 = v5 - 1;
  if (a2 >= 0)
  {
    v6 = a2;
  }

  return *(v3 + 4 * v6);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Info(uint64_t a1)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v51);
  (*(*a1 + 192))(a1, &v51, 0);
  v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "\n Input weights:", 16);
  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  kaldi::nnet1::MomentStatistics<short>(v4);
  if ((v50 & 0x80u) == 0)
  {
    v5 = v49;
  }

  else
  {
    v5 = v49[0];
  }

  if ((v50 & 0x80u) == 0)
  {
    v6 = v50;
  }

  else
  {
    v6 = v49[1];
  }

  v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, v5, v6);
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "\n Recurrent weights:", 20);
  v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  kaldi::nnet1::MomentStatistics<short>(v9);
  if ((v48 & 0x80u) == 0)
  {
    v10 = v47;
  }

  else
  {
    v10 = v47[0];
  }

  if ((v48 & 0x80u) == 0)
  {
    v11 = v48;
  }

  else
  {
    v11 = v47[1];
  }

  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v10, v11);
  v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "\n Bias:", 7);
  v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  kaldi::nnet1::MomentStatistics<float>(v14, v15, v16, v17, v18);
  if ((v46 & 0x80u) == 0)
  {
    v19 = v45;
  }

  else
  {
    v19 = v45[0];
  }

  if ((v46 & 0x80u) == 0)
  {
    v20 = v46;
  }

  else
  {
    v20 = v45[1];
  }

  v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, v19, v20);
  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "\n Forget gate bias:", 19);
  v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  kaldi::CuSubVector<float>::CuSubVector(&v40, v23, *(a1 + 176), *(a1 + 176), v24);
  kaldi::nnet1::MomentStatistics<float>(&v40, v25, v26, v27, v28);
  if ((v44 & 0x80u) == 0)
  {
    v29 = __p;
  }

  else
  {
    v29 = __p[0];
  }

  if ((v44 & 0x80u) == 0)
  {
    v30 = v44;
  }

  else
  {
    v30 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, v29, v30);
  if (v44 < 0)
  {
    operator delete(__p[0]);
  }

  if (v46 < 0)
  {
    operator delete(v45[0]);
  }

  if (v48 < 0)
  {
    operator delete(v47[0]);
  }

  if (v50 < 0)
  {
    operator delete(v49[0]);
  }

  if (*(a1 + 208) == 1)
  {
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "\n Peephole weights:", 19);
    v32 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
    kaldi::nnet1::MomentStatistics<float>(v32);
    v33 = (v42 & 0x80u) == 0 ? &v40 : v40;
    v34 = (v42 & 0x80u) == 0 ? v42 : v41;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, v33, v34);
    if (v42 < 0)
    {
      operator delete(v40);
    }
  }

  if (*(a1 + 224) == 1)
  {
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v51, "\n Projection weights:", 21);
    v36 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    kaldi::nnet1::MomentStatistics<short>(v36);
    v37 = (v42 & 0x80u) == 0 ? &v40 : v40;
    v38 = (v42 & 0x80u) == 0 ? v42 : v41;
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v37, v38);
    if (v42 < 0)
    {
      operator delete(v40);
    }
  }

  std::stringbuf::str();
  if (v54 < 0)
  {
    operator delete(v53[7].__locale_);
  }

  std::locale::~locale(v53);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_16BA68(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34, uint64_t a35, uint64_t a36, int a37, __int16 a38, char a39, char a40, char a41)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  std::ostringstream::~ostringstream(&a41);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InfoGradient(uint64_t a1@<X0>, boost::filesystem::path *a2@<X8>)
{
  if (*(a1 + 528))
  {
    memset(&v105, 0, sizeof(v105));
    v104 = 0;
    if (*(a1 + 80) >= 1)
    {
      do
      {
        boost::filesystem::path::path(&v92, "\n For batch ");
        kaldi::nnet1::ToString<int>();
        if ((v91 & 0x80u) == 0)
        {
          v3 = v90;
        }

        else
        {
          v3 = v90[0];
        }

        if ((v91 & 0x80u) == 0)
        {
          v4 = v91;
        }

        else
        {
          v4 = v90[1];
        }

        v5 = std::string::append(&v92, v3, v4);
        v6 = *&v5->__r_.__value_.__l.__data_;
        v93.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
        *&v93.__r_.__value_.__l.__data_ = v6;
        v5->__r_.__value_.__l.__size_ = 0;
        v5->__r_.__value_.__r.__words[2] = 0;
        v5->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v88, ": ");
        if ((v89 & 0x80u) == 0)
        {
          v7 = v88;
        }

        else
        {
          v7 = v88[0];
        }

        if ((v89 & 0x80u) == 0)
        {
          v8 = v89;
        }

        else
        {
          v8 = v88[1];
        }

        v9 = std::string::append(&v93, v7, v8);
        v10 = *&v9->__r_.__value_.__l.__data_;
        v94.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
        *&v94.__r_.__value_.__l.__data_ = v10;
        v9->__r_.__value_.__l.__size_ = 0;
        v9->__r_.__value_.__r.__words[2] = 0;
        v9->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v86, "\n  Number of cells : ");
        if ((v87 & 0x80u) == 0)
        {
          v11 = v86;
        }

        else
        {
          v11 = v86[0];
        }

        if ((v87 & 0x80u) == 0)
        {
          v12 = v87;
        }

        else
        {
          v12 = v86[1];
        }

        v13 = std::string::append(&v94, v11, v12);
        v14 = *&v13->__r_.__value_.__l.__data_;
        v95.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
        *&v95.__r_.__value_.__l.__data_ = v14;
        v13->__r_.__value_.__l.__size_ = 0;
        v13->__r_.__value_.__r.__words[2] = 0;
        v13->__r_.__value_.__r.__words[0] = 0;
        kaldi::nnet1::ToString<int>();
        if ((v85 & 0x80u) == 0)
        {
          v15 = v84;
        }

        else
        {
          v15 = v84[0];
        }

        if ((v85 & 0x80u) == 0)
        {
          v16 = v85;
        }

        else
        {
          v16 = v84[1];
        }

        v17 = std::string::append(&v95, v15, v16);
        v18 = *&v17->__r_.__value_.__l.__data_;
        v96.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
        *&v96.__r_.__value_.__l.__data_ = v18;
        v17->__r_.__value_.__l.__size_ = 0;
        v17->__r_.__value_.__r.__words[2] = 0;
        v17->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v82, "\n  Input weights gradient: ");
        if ((v83 & 0x80u) == 0)
        {
          v19 = v82;
        }

        else
        {
          v19 = v82[0];
        }

        if ((v83 & 0x80u) == 0)
        {
          v20 = v83;
        }

        else
        {
          v20 = v82[1];
        }

        v21 = std::string::append(&v96, v19, v20);
        v22 = *&v21->__r_.__value_.__l.__data_;
        v97.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
        *&v97.__r_.__value_.__l.__data_ = v22;
        v21->__r_.__value_.__l.__size_ = 0;
        v21->__r_.__value_.__r.__words[2] = 0;
        v21->__r_.__value_.__r.__words[0] = 0;
        v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v104);
        kaldi::nnet1::MomentStatistics<float>(v23);
        if ((v81 & 0x80u) == 0)
        {
          v24 = v80;
        }

        else
        {
          v24 = v80[0];
        }

        if ((v81 & 0x80u) == 0)
        {
          v25 = v81;
        }

        else
        {
          v25 = v80[1];
        }

        v26 = std::string::append(&v97, v24, v25);
        v27 = *&v26->__r_.__value_.__l.__data_;
        v98.__r_.__value_.__r.__words[2] = v26->__r_.__value_.__r.__words[2];
        *&v98.__r_.__value_.__l.__data_ = v27;
        v26->__r_.__value_.__l.__size_ = 0;
        v26->__r_.__value_.__r.__words[2] = 0;
        v26->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v78, "\n  Recurrent weights gradient: ");
        if ((v79 & 0x80u) == 0)
        {
          v28 = v78;
        }

        else
        {
          v28 = v78[0];
        }

        if ((v79 & 0x80u) == 0)
        {
          v29 = v79;
        }

        else
        {
          v29 = v78[1];
        }

        v30 = std::string::append(&v98, v28, v29);
        v31 = *&v30->__r_.__value_.__l.__data_;
        v99.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v99.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        v32 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v104);
        kaldi::nnet1::MomentStatistics<float>(v32);
        if ((v77 & 0x80u) == 0)
        {
          v33 = v76;
        }

        else
        {
          v33 = v76[0];
        }

        if ((v77 & 0x80u) == 0)
        {
          v34 = v77;
        }

        else
        {
          v34 = v76[1];
        }

        v35 = std::string::append(&v99, v33, v34);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v100.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v100.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        boost::filesystem::path::path(v74, "\n  Bias gradient: ");
        if ((v75 & 0x80u) == 0)
        {
          v37 = v74;
        }

        else
        {
          v37 = v74[0];
        }

        if ((v75 & 0x80u) == 0)
        {
          v38 = v75;
        }

        else
        {
          v38 = v74[1];
        }

        v39 = std::string::append(&v100, v37, v38);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v101.__r_.__value_.__r.__words[2] = v39->__r_.__value_.__r.__words[2];
        *&v101.__r_.__value_.__l.__data_ = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        v41 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v104);
        kaldi::nnet1::MomentStatistics<float>(v41, v42, v43, v44, v45);
        if ((v73 & 0x80u) == 0)
        {
          v46 = __p;
        }

        else
        {
          v46 = __p[0];
        }

        if ((v73 & 0x80u) == 0)
        {
          v47 = v73;
        }

        else
        {
          v47 = __p[1];
        }

        v48 = std::string::append(&v101, v46, v47);
        v49 = *&v48->__r_.__value_.__l.__data_;
        v103 = v48->__r_.__value_.__r.__words[2];
        v102 = v49;
        v48->__r_.__value_.__l.__size_ = 0;
        v48->__r_.__value_.__r.__words[2] = 0;
        v48->__r_.__value_.__r.__words[0] = 0;
        if (v103 >= 0)
        {
          v50 = &v102;
        }

        else
        {
          v50 = v102;
        }

        if (v103 >= 0)
        {
          v51 = HIBYTE(v103);
        }

        else
        {
          v51 = *(&v102 + 1);
        }

        std::string::append(&v105, v50, v51);
        if (SHIBYTE(v103) < 0)
        {
          operator delete(v102);
        }

        if (v73 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v101.__r_.__value_.__l.__data_);
        }

        if (v75 < 0)
        {
          operator delete(v74[0]);
        }

        if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v100.__r_.__value_.__l.__data_);
        }

        if (v77 < 0)
        {
          operator delete(v76[0]);
        }

        if (SHIBYTE(v99.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v99.__r_.__value_.__l.__data_);
        }

        if (v79 < 0)
        {
          operator delete(v78[0]);
        }

        if (SHIBYTE(v98.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v98.__r_.__value_.__l.__data_);
        }

        if (v81 < 0)
        {
          operator delete(v80[0]);
        }

        if (SHIBYTE(v97.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v97.__r_.__value_.__l.__data_);
        }

        if (v83 < 0)
        {
          operator delete(v82[0]);
        }

        if (SHIBYTE(v96.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v96.__r_.__value_.__l.__data_);
        }

        if (v85 < 0)
        {
          operator delete(v84[0]);
        }

        if (SHIBYTE(v95.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v95.__r_.__value_.__l.__data_);
        }

        if (v87 < 0)
        {
          operator delete(v86[0]);
        }

        if (SHIBYTE(v94.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v94.__r_.__value_.__l.__data_);
        }

        if (v89 < 0)
        {
          operator delete(v88[0]);
        }

        if (SHIBYTE(v93.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v93.__r_.__value_.__l.__data_);
        }

        if (v91 < 0)
        {
          operator delete(v90[0]);
        }

        if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v92.__r_.__value_.__l.__data_);
        }

        if (*(a1 + 208) == 1)
        {
          boost::filesystem::path::path(&v101, "\n  Peephole weights gradient: ");
          v52 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v104);
          kaldi::nnet1::MomentStatistics<float>(v52);
          if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v53 = &v100;
          }

          else
          {
            v53 = v100.__r_.__value_.__r.__words[0];
          }

          if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            size = HIBYTE(v100.__r_.__value_.__r.__words[2]);
          }

          else
          {
            size = v100.__r_.__value_.__l.__size_;
          }

          v55 = std::string::append(&v101, v53, size);
          v56 = *&v55->__r_.__value_.__l.__data_;
          v103 = v55->__r_.__value_.__r.__words[2];
          v102 = v56;
          v55->__r_.__value_.__l.__size_ = 0;
          v55->__r_.__value_.__r.__words[2] = 0;
          v55->__r_.__value_.__r.__words[0] = 0;
          if (v103 >= 0)
          {
            v57 = &v102;
          }

          else
          {
            v57 = v102;
          }

          if (v103 >= 0)
          {
            v58 = HIBYTE(v103);
          }

          else
          {
            v58 = *(&v102 + 1);
          }

          std::string::append(&v105, v57, v58);
          if (SHIBYTE(v103) < 0)
          {
            operator delete(v102);
          }

          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v100.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v101.__r_.__value_.__l.__data_);
          }
        }

        if (*(a1 + 224) == 1)
        {
          boost::filesystem::path::path(&v101, "\n  Projection weights gradient: ");
          v59 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v104);
          kaldi::nnet1::MomentStatistics<float>(v59);
          if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v60 = &v100;
          }

          else
          {
            v60 = v100.__r_.__value_.__r.__words[0];
          }

          if ((v100.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v61 = HIBYTE(v100.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v61 = v100.__r_.__value_.__l.__size_;
          }

          v62 = std::string::append(&v101, v60, v61);
          v63 = *&v62->__r_.__value_.__l.__data_;
          v103 = v62->__r_.__value_.__r.__words[2];
          v102 = v63;
          v62->__r_.__value_.__l.__size_ = 0;
          v62->__r_.__value_.__r.__words[2] = 0;
          v62->__r_.__value_.__r.__words[0] = 0;
          if (v103 >= 0)
          {
            v64 = &v102;
          }

          else
          {
            v64 = v102;
          }

          if (v103 >= 0)
          {
            v65 = HIBYTE(v103);
          }

          else
          {
            v65 = *(&v102 + 1);
          }

          std::string::append(&v105, v64, v65);
          if (SHIBYTE(v103) < 0)
          {
            operator delete(v102);
          }

          if (SHIBYTE(v100.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v100.__r_.__value_.__l.__data_);
          }

          if (SHIBYTE(v101.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v101.__r_.__value_.__l.__data_);
          }
        }

        ++v104;
      }

      while (v104 < *(a1 + 80));
    }

    v66 = boost::filesystem::path::path(&v102, "\n");
    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v67 = &v105;
    }

    else
    {
      v67 = v105.__r_.__value_.__r.__words[0];
    }

    if ((v105.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v68 = HIBYTE(v105.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v68 = v105.__r_.__value_.__l.__size_;
    }

    v69 = std::string::insert(v66, 0, v67, v68);
    v70 = *&v69->__r_.__value_.__l.__data_;
    *(a2 + 2) = *(&v69->__r_.__value_.__l + 2);
    *a2 = v70;
    v69->__r_.__value_.__l.__size_ = 0;
    v69->__r_.__value_.__r.__words[2] = 0;
    v69->__r_.__value_.__r.__words[0] = 0;
    if (SHIBYTE(v103) < 0)
    {
      operator delete(v102);
    }

    if (SHIBYTE(v105.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v105.__r_.__value_.__l.__data_);
    }
  }

  else
  {

    boost::filesystem::path::path(a2, "\n  Gradients are uninitialized");
  }
}

void sub_16C260(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InfoPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v89, 0, sizeof(v89));
  v88 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      boost::filesystem::path::path(&v76, "\n For batch ");
      kaldi::nnet1::ToString<int>();
      if ((v75 & 0x80u) == 0)
      {
        v3 = v74;
      }

      else
      {
        v3 = v74[0];
      }

      if ((v75 & 0x80u) == 0)
      {
        v4 = v75;
      }

      else
      {
        v4 = v74[1];
      }

      v5 = std::string::append(&v76, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v77.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v77.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v72, ": ");
      if ((v73 & 0x80u) == 0)
      {
        v7 = v72;
      }

      else
      {
        v7 = v72[0];
      }

      if ((v73 & 0x80u) == 0)
      {
        v8 = v73;
      }

      else
      {
        v8 = v72[1];
      }

      v9 = std::string::append(&v77, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v78.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v78.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v70, "\n  Gates values: ");
      if ((v71 & 0x80u) == 0)
      {
        v11 = v70;
      }

      else
      {
        v11 = v70[0];
      }

      if ((v71 & 0x80u) == 0)
      {
        v12 = v71;
      }

      else
      {
        v12 = v70[1];
      }

      v13 = std::string::append(&v78, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v79.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v79.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 248) + 48 * v88);
      if ((v69 & 0x80u) == 0)
      {
        v15 = v68;
      }

      else
      {
        v15 = v68[0];
      }

      if ((v69 & 0x80u) == 0)
      {
        v16 = v69;
      }

      else
      {
        v16 = v68[1];
      }

      v17 = std::string::append(&v79, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v80.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v80.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v66, "\n  Cell values: ");
      if ((v67 & 0x80u) == 0)
      {
        v19 = v66;
      }

      else
      {
        v19 = v66[0];
      }

      if ((v67 & 0x80u) == 0)
      {
        v20 = v67;
      }

      else
      {
        v20 = v66[1];
      }

      v21 = std::string::append(&v80, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v81.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v81.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 272) + 48 * v88);
      if ((v65 & 0x80u) == 0)
      {
        v23 = v64;
      }

      else
      {
        v23 = v64[0];
      }

      if ((v65 & 0x80u) == 0)
      {
        v24 = v65;
      }

      else
      {
        v24 = v64[1];
      }

      v25 = std::string::append(&v81, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v82.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v82.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v62, "\n  Cell outputs: ");
      if ((v63 & 0x80u) == 0)
      {
        v27 = v62;
      }

      else
      {
        v27 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v28 = v63;
      }

      else
      {
        v28 = v62[1];
      }

      v29 = std::string::append(&v82, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v83.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v83.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 296) + 48 * v88);
      if ((v61 & 0x80u) == 0)
      {
        v31 = v60;
      }

      else
      {
        v31 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v32 = v61;
      }

      else
      {
        v32 = v60[1];
      }

      v33 = std::string::append(&v83, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v84.__r_.__value_.__r.__words[2] = v33->__r_.__value_.__r.__words[2];
      *&v84.__r_.__value_.__l.__data_ = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v58, "\n  Cell outputs gated: ");
      if ((v59 & 0x80u) == 0)
      {
        v35 = v58;
      }

      else
      {
        v35 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v36 = v59;
      }

      else
      {
        v36 = v58[1];
      }

      v37 = std::string::append(&v84, v35, v36);
      v38 = *&v37->__r_.__value_.__l.__data_;
      v85.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
      *&v85.__r_.__value_.__l.__data_ = v38;
      v37->__r_.__value_.__l.__size_ = 0;
      v37->__r_.__value_.__r.__words[2] = 0;
      v37->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 320) + 48 * v88);
      if ((v57 & 0x80u) == 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = __p[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v40 = v57;
      }

      else
      {
        v40 = __p[1];
      }

      v41 = std::string::append(&v85, v39, v40);
      v42 = *&v41->__r_.__value_.__l.__data_;
      v87 = v41->__r_.__value_.__r.__words[2];
      v86 = v42;
      v41->__r_.__value_.__l.__size_ = 0;
      v41->__r_.__value_.__r.__words[2] = 0;
      v41->__r_.__value_.__r.__words[0] = 0;
      if (v87 >= 0)
      {
        v43 = &v86;
      }

      else
      {
        v43 = v86;
      }

      if (v87 >= 0)
      {
        v44 = HIBYTE(v87);
      }

      else
      {
        v44 = *(&v86 + 1);
      }

      std::string::append(&v89, v43, v44);
      if (SHIBYTE(v87) < 0)
      {
        operator delete(v86);
      }

      if (v57 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v85.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v84.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v83.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v83.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v82.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v82.__r_.__value_.__l.__data_);
      }

      if (v65 < 0)
      {
        operator delete(v64[0]);
      }

      if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v81.__r_.__value_.__l.__data_);
      }

      if (v67 < 0)
      {
        operator delete(v66[0]);
      }

      if (SHIBYTE(v80.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v80.__r_.__value_.__l.__data_);
      }

      if (v69 < 0)
      {
        operator delete(v68[0]);
      }

      if (SHIBYTE(v79.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v79.__r_.__value_.__l.__data_);
      }

      if (v71 < 0)
      {
        operator delete(v70[0]);
      }

      if (SHIBYTE(v78.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v78.__r_.__value_.__l.__data_);
      }

      if (v73 < 0)
      {
        operator delete(v72[0]);
      }

      if (SHIBYTE(v77.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v77.__r_.__value_.__l.__data_);
      }

      if (v75 < 0)
      {
        operator delete(v74[0]);
      }

      if (SHIBYTE(v76.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v76.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        boost::filesystem::path::path(&v85, "\n  Output values: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 344) + 48 * v88);
        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v45 = &v84;
        }

        else
        {
          v45 = v84.__r_.__value_.__r.__words[0];
        }

        if ((v84.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v84.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v84.__r_.__value_.__l.__size_;
        }

        v47 = std::string::append(&v85, v45, size);
        v48 = *&v47->__r_.__value_.__l.__data_;
        v87 = v47->__r_.__value_.__r.__words[2];
        v86 = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if (v87 >= 0)
        {
          v49 = &v86;
        }

        else
        {
          v49 = v86;
        }

        if (v87 >= 0)
        {
          v50 = HIBYTE(v87);
        }

        else
        {
          v50 = *(&v86 + 1);
        }

        std::string::append(&v89, v49, v50);
        if (SHIBYTE(v87) < 0)
        {
          operator delete(v86);
        }

        if (SHIBYTE(v84.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v84.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v85.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v85.__r_.__value_.__l.__data_);
        }
      }

      ++v88;
    }

    while (v88 < *(a1 + 80));
  }

  v51 = boost::filesystem::path::path(&v86, "\n");
  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v52 = &v89;
  }

  else
  {
    v52 = v89.__r_.__value_.__r.__words[0];
  }

  if ((v89.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v53 = HIBYTE(v89.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v53 = v89.__r_.__value_.__l.__size_;
  }

  v54 = std::string::insert(v51, 0, v52, v53);
  *a2 = *v54;
  v54->__r_.__value_.__l.__size_ = 0;
  v54->__r_.__value_.__r.__words[2] = 0;
  v54->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v87) < 0)
  {
    operator delete(v86);
  }

  if (SHIBYTE(v89.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v89.__r_.__value_.__l.__data_);
  }
}

void sub_16CB44(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InfoBackPropagate(uint64_t a1@<X0>, std::string *a2@<X8>)
{
  memset(&v75, 0, sizeof(v75));
  v74 = 0;
  if (*(a1 + 80) >= 1)
  {
    do
    {
      boost::filesystem::path::path(&v64, "\n For batch ");
      kaldi::nnet1::ToString<int>();
      if ((v63 & 0x80u) == 0)
      {
        v3 = v62;
      }

      else
      {
        v3 = v62[0];
      }

      if ((v63 & 0x80u) == 0)
      {
        v4 = v63;
      }

      else
      {
        v4 = v62[1];
      }

      v5 = std::string::append(&v64, v3, v4);
      v6 = *&v5->__r_.__value_.__l.__data_;
      v65.__r_.__value_.__r.__words[2] = v5->__r_.__value_.__r.__words[2];
      *&v65.__r_.__value_.__l.__data_ = v6;
      v5->__r_.__value_.__l.__size_ = 0;
      v5->__r_.__value_.__r.__words[2] = 0;
      v5->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v60, ": ");
      if ((v61 & 0x80u) == 0)
      {
        v7 = v60;
      }

      else
      {
        v7 = v60[0];
      }

      if ((v61 & 0x80u) == 0)
      {
        v8 = v61;
      }

      else
      {
        v8 = v60[1];
      }

      v9 = std::string::append(&v65, v7, v8);
      v10 = *&v9->__r_.__value_.__l.__data_;
      v66.__r_.__value_.__r.__words[2] = v9->__r_.__value_.__r.__words[2];
      *&v66.__r_.__value_.__l.__data_ = v10;
      v9->__r_.__value_.__l.__size_ = 0;
      v9->__r_.__value_.__r.__words[2] = 0;
      v9->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v58, "\n  Gates diff: ");
      if ((v59 & 0x80u) == 0)
      {
        v11 = v58;
      }

      else
      {
        v11 = v58[0];
      }

      if ((v59 & 0x80u) == 0)
      {
        v12 = v59;
      }

      else
      {
        v12 = v58[1];
      }

      v13 = std::string::append(&v66, v11, v12);
      v14 = *&v13->__r_.__value_.__l.__data_;
      v67.__r_.__value_.__r.__words[2] = v13->__r_.__value_.__r.__words[2];
      *&v67.__r_.__value_.__l.__data_ = v14;
      v13->__r_.__value_.__l.__size_ = 0;
      v13->__r_.__value_.__r.__words[2] = 0;
      v13->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 440) + 48 * v74);
      if ((v57 & 0x80u) == 0)
      {
        v15 = v56;
      }

      else
      {
        v15 = v56[0];
      }

      if ((v57 & 0x80u) == 0)
      {
        v16 = v57;
      }

      else
      {
        v16 = v56[1];
      }

      v17 = std::string::append(&v67, v15, v16);
      v18 = *&v17->__r_.__value_.__l.__data_;
      v68.__r_.__value_.__r.__words[2] = v17->__r_.__value_.__r.__words[2];
      *&v68.__r_.__value_.__l.__data_ = v18;
      v17->__r_.__value_.__l.__size_ = 0;
      v17->__r_.__value_.__r.__words[2] = 0;
      v17->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v54, "\n  Cell diff: ");
      if ((v55 & 0x80u) == 0)
      {
        v19 = v54;
      }

      else
      {
        v19 = v54[0];
      }

      if ((v55 & 0x80u) == 0)
      {
        v20 = v55;
      }

      else
      {
        v20 = v54[1];
      }

      v21 = std::string::append(&v68, v19, v20);
      v22 = *&v21->__r_.__value_.__l.__data_;
      v69.__r_.__value_.__r.__words[2] = v21->__r_.__value_.__r.__words[2];
      *&v69.__r_.__value_.__l.__data_ = v22;
      v21->__r_.__value_.__l.__size_ = 0;
      v21->__r_.__value_.__r.__words[2] = 0;
      v21->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 416) + 48 * v74);
      if ((v53 & 0x80u) == 0)
      {
        v23 = v52;
      }

      else
      {
        v23 = v52[0];
      }

      if ((v53 & 0x80u) == 0)
      {
        v24 = v53;
      }

      else
      {
        v24 = v52[1];
      }

      v25 = std::string::append(&v69, v23, v24);
      v26 = *&v25->__r_.__value_.__l.__data_;
      v70.__r_.__value_.__r.__words[2] = v25->__r_.__value_.__r.__words[2];
      *&v70.__r_.__value_.__l.__data_ = v26;
      v25->__r_.__value_.__l.__size_ = 0;
      v25->__r_.__value_.__r.__words[2] = 0;
      v25->__r_.__value_.__r.__words[0] = 0;
      boost::filesystem::path::path(v50, "\n  Cell out gated diff: ");
      if ((v51 & 0x80u) == 0)
      {
        v27 = v50;
      }

      else
      {
        v27 = v50[0];
      }

      if ((v51 & 0x80u) == 0)
      {
        v28 = v51;
      }

      else
      {
        v28 = v50[1];
      }

      v29 = std::string::append(&v70, v27, v28);
      v30 = *&v29->__r_.__value_.__l.__data_;
      v71.__r_.__value_.__r.__words[2] = v29->__r_.__value_.__r.__words[2];
      *&v71.__r_.__value_.__l.__data_ = v30;
      v29->__r_.__value_.__l.__size_ = 0;
      v29->__r_.__value_.__r.__words[2] = 0;
      v29->__r_.__value_.__r.__words[0] = 0;
      kaldi::nnet1::MomentStatistics<float>(*(a1 + 392) + 48 * v74);
      if ((v49 & 0x80u) == 0)
      {
        v31 = __p;
      }

      else
      {
        v31 = __p[0];
      }

      if ((v49 & 0x80u) == 0)
      {
        v32 = v49;
      }

      else
      {
        v32 = __p[1];
      }

      v33 = std::string::append(&v71, v31, v32);
      v34 = *&v33->__r_.__value_.__l.__data_;
      v73 = v33->__r_.__value_.__r.__words[2];
      v72 = v34;
      v33->__r_.__value_.__l.__size_ = 0;
      v33->__r_.__value_.__r.__words[2] = 0;
      v33->__r_.__value_.__r.__words[0] = 0;
      if (v73 >= 0)
      {
        v35 = &v72;
      }

      else
      {
        v35 = v72;
      }

      if (v73 >= 0)
      {
        v36 = HIBYTE(v73);
      }

      else
      {
        v36 = *(&v72 + 1);
      }

      std::string::append(&v75, v35, v36);
      if (SHIBYTE(v73) < 0)
      {
        operator delete(v72);
      }

      if (v49 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v71.__r_.__value_.__l.__data_);
      }

      if (v51 < 0)
      {
        operator delete(v50[0]);
      }

      if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v70.__r_.__value_.__l.__data_);
      }

      if (v53 < 0)
      {
        operator delete(v52[0]);
      }

      if (SHIBYTE(v69.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v69.__r_.__value_.__l.__data_);
      }

      if (v55 < 0)
      {
        operator delete(v54[0]);
      }

      if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v68.__r_.__value_.__l.__data_);
      }

      if (v57 < 0)
      {
        operator delete(v56[0]);
      }

      if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v67.__r_.__value_.__l.__data_);
      }

      if (v59 < 0)
      {
        operator delete(v58[0]);
      }

      if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v66.__r_.__value_.__l.__data_);
      }

      if (v61 < 0)
      {
        operator delete(v60[0]);
      }

      if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v65.__r_.__value_.__l.__data_);
      }

      if (v63 < 0)
      {
        operator delete(v62[0]);
      }

      if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v64.__r_.__value_.__l.__data_);
      }

      if (*(a1 + 224) == 1)
      {
        boost::filesystem::path::path(&v71, "\n  Output diff: ");
        kaldi::nnet1::MomentStatistics<float>(*(a1 + 368) + 48 * v74);
        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v37 = &v70;
        }

        else
        {
          v37 = v70.__r_.__value_.__r.__words[0];
        }

        if ((v70.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v70.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v70.__r_.__value_.__l.__size_;
        }

        v39 = std::string::append(&v71, v37, size);
        v40 = *&v39->__r_.__value_.__l.__data_;
        v73 = v39->__r_.__value_.__r.__words[2];
        v72 = v40;
        v39->__r_.__value_.__l.__size_ = 0;
        v39->__r_.__value_.__r.__words[2] = 0;
        v39->__r_.__value_.__r.__words[0] = 0;
        if (v73 >= 0)
        {
          v41 = &v72;
        }

        else
        {
          v41 = v72;
        }

        if (v73 >= 0)
        {
          v42 = HIBYTE(v73);
        }

        else
        {
          v42 = *(&v72 + 1);
        }

        std::string::append(&v75, v41, v42);
        if (SHIBYTE(v73) < 0)
        {
          operator delete(v72);
        }

        if (SHIBYTE(v70.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v70.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v71.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v71.__r_.__value_.__l.__data_);
        }
      }

      ++v74;
    }

    while (v74 < *(a1 + 80));
  }

  v43 = boost::filesystem::path::path(&v72, "\n");
  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v44 = &v75;
  }

  else
  {
    v44 = v75.__r_.__value_.__r.__words[0];
  }

  if ((v75.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v45 = HIBYTE(v75.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v45 = v75.__r_.__value_.__l.__size_;
  }

  v46 = std::string::insert(v43, 0, v44, v45);
  *a2 = *v46;
  v46->__r_.__value_.__l.__size_ = 0;
  v46->__r_.__value_.__r.__words[2] = 0;
  v46->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v73) < 0)
  {
    operator delete(v72);
  }

  if (SHIBYTE(v75.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v75.__r_.__value_.__l.__data_);
  }
}

void sub_16D338(_Unwind_Exception *a1)
{
  if (*(v1 - 137) < 0)
  {
    operator delete(*(v1 - 160));
  }

  if (*(v1 - 97) < 0)
  {
    operator delete(*(v1 - 120));
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 20);
  v6 = *(a1 + 96);
  v85 = v5 / v6;
  if (v5 % v6)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_298.addr + 3, "batch_size % num_utts == 0", a5);
  }

  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v111, "PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 701, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v111, "Running forward propagation for batch size = ", 45);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " frames each from ", 18);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v111);
  }

  v14 = *(a3 + 32);
  (*(*a1 + 88))(a1);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateForwardBuffers(a1, a4, v5, v14);
  v16 = *(a1 + 104);
  v17 = a4;
  v81 = a3;
  v82 = a4;
  if (*(a1 + 112) == v16 || (v18 = *(v16 + 32 * a4 + 16), v18 < 1))
  {
    v83 = 0;
  }

  else
  {
    if (v18 != v5)
    {
      kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_298.size + 5, "boundary_[batch_index].Dim() == batch_size", v15);
    }

    v19 = *(a1 + 128) + 48 * a4;
    *(v19 + 32) = v14;
    v83 = 1;
    kaldi::CuMatrix<float>::Resize(v19, v6, *(*(a1 + 8) + 48 * a4 + 16), 1, 0);
  }

  v20 = *(a1 + 248) + 48 * a4;
  v86 = *(a1 + 344) + 48 * a4;
  v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  v22.n128_u32[0] = 1.0;
  kaldi::CuMatrixBase<float>::AddMatMat<short>(v20, a2, 111, v21, &stru_68.sectname[8], v22, 0.0);
  v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
  v24.n128_u32[0] = 1.0;
  kaldi::CuMatrixBase<float>::AddVecToRows(v20, v23, v24, 1.0, v25, v26, v27);
  if (v85 >= 1)
  {
    v30 = 0;
    v31 = 0;
    v84 = a1 + 12;
    v32 = -v6;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v111, v20, v30, v6, 0, *(a1 + 176));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v108, v20, v30, v6, *(a1 + 176), *(a1 + 176));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v105, v20, v30, v6, (3 * *(a1 + 176)), *(a1 + 176));
      v33 = *(a1 + 272) + 48 * v17;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v102, v33, v30, v6, 0, *(v33 + 16));
      memset(v101, 0, sizeof(v101));
      v100 = off_276F40;
      memset(v99, 0, sizeof(v99));
      v98 = off_276F40;
      if (v31)
      {
        if (v83)
        {
          kaldi::CuMatrixBase<float>::SetZero(*(a1 + 128) + 48 * v17);
          v34 = *(a1 + 128) + 48 * v17;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v96, v34, 0, *(v34 + 20), 0, *(a1 + 176));
          v99[0] = v97[0];
          *&v99[1] = *&v97[1];
          v99[3] = v97[3];
          v96 = off_276F40;
          memset(v97, 0, sizeof(v97));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          v35 = *(a1 + 272) + 48 * v17;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v96, v35, v32 + v30, v6, 0, *(v35 + 16));
          kaldi::CuSubVector<float>::CuSubVector(&v93, *(a1 + 104) + 32 * v17, v30, v6, v36);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v98, &v96, &v93, 1, v37);
          v96 = off_276F40;
          memset(v97, 0, sizeof(v97));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          v38 = *(a1 + 128) + 48 * v17;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v96, v38, 0, *(v38 + 20), *(a1 + 176), *(v84 + *(*a1 - 24)));
          *&v101[1] = *&v97[1];
          v101[0] = v97[0];
          v101[3] = v97[3];
          v96 = off_276F40;
          memset(v97, 0, sizeof(v97));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v96, v86, v32 + v30, v6, 0, *(v86 + 16));
          kaldi::CuSubVector<float>::CuSubVector(&v93, *(a1 + 104) + 32 * v17, v30, v6, v39);
          kaldi::CuMatrixBase<float>::CopySelectedRows(&v100, &v96, &v93, 1, v40);
          v96 = off_276F40;
          memset(v97, 0, sizeof(v97));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
        }

        else
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v96, v86, v32 + v30, v6, 0, *(v86 + 16));
          *&v101[1] = *&v97[1];
          v101[0] = v97[0];
          v101[3] = v97[3];
          v96 = off_276F40;
          memset(v97, 0, sizeof(v97));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          v43 = *(a1 + 272) + 48 * v17;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v96, v43, v32 + v30, v6, 0, *(v43 + 16));
          v99[0] = v97[0];
          *&v99[1] = *&v97[1];
          v99[3] = v97[3];
          v96 = off_276F40;
          memset(v97, 0, sizeof(v97));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          v32 = -v6;
        }
      }

      else
      {
        v41 = *(a1 + 8) + 48 * v17;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v96, v41, 0, *(v41 + 20), *(a1 + 176), *(v84 + *(*a1 - 24)));
        *&v101[1] = *&v97[1];
        v101[0] = v97[0];
        v101[3] = v97[3];
        v96 = off_276F40;
        memset(v97, 0, sizeof(v97));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
        v42 = *(a1 + 8) + 48 * v17;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v96, v42, 0, *(v42 + 20), 0, *(a1 + 176));
        v99[0] = v97[0];
        *&v99[1] = *&v97[1];
        v99[3] = v97[3];
        v96 = off_276F40;
        memset(v97, 0, sizeof(v97));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
        v32 = -v6;
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v96, v20, v30, v6, 0, *(v20 + 16));
      v44 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
      v45.n128_u32[0] = 1.0;
      kaldi::CuMatrixBase<float>::AddMatMat<short>(&v96, &v100, 111, v44, &stru_68.sectname[8], v45, 1.0);
      v96 = off_276F40;
      memset(v97, 0, sizeof(v97));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      if (*(a1 + 208) == 1)
      {
        v49 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
        if (!*(v49 + 20))
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v50);
        }

        v51 = *(v49 + 16);
        v52 = *(v49 + 32);
        v97[0] = *(v49 + 8);
        v96 = &off_276FE0;
        v97[1] = v51;
        v97[2] = v52;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v111, &v98, 111, &v96, v50, 1.0, 1.0);
        v53 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
        if (*(v53 + 20) <= 1u)
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v54);
        }

        v55 = *(v53 + 16);
        v56 = *(v53 + 32);
        v97[0] = *(v53 + 8) + 4 * *(v53 + 24);
        v96 = &off_276FE0;
        v97[1] = v55;
        v97[2] = v56;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v108, &v98, 111, &v96, v54, 1.0, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v111, &v111, v46, v47, v48);
      kaldi::CuMatrixBase<float>::Sigmoid(&v108, &v108, v57, v58, v59);
      kaldi::CuMatrixBase<float>::ApplyTanh(&v105, v60, v61, v62, v63);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v102, &v111, 111, &v105, &stru_68.sectname[7], 1.0, 0.0);
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v102, &v108, 111, &v98, &stru_68.sectname[7], 1.0, 1.0);
      v64 = *(a1 + 476);
      if (v64 > 0.0)
      {
        kaldi::CuMatrixBase<float>::ApplyCeiling(&v102, v64);
        kaldi::CuMatrixBase<float>::ApplyFloor(&v102, -*(a1 + 476));
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v96, v20, v30, v6, (2 * *(a1 + 176)), *(a1 + 176));
      if (*(a1 + 208) == 1)
      {
        v68 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
        if (*(v68 + 20) <= 2u)
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v69);
        }

        v70 = *(v68 + 16);
        v71 = *(v68 + 32);
        *&v94 = *(v68 + 8) + 8 * *(v68 + 24);
        v93 = &off_276FE0;
        *(&v94 + 1) = v70;
        *&v95 = v71;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v96, &v102, 111, &v93, v69, 1.0, 1.0);
      }

      kaldi::CuMatrixBase<float>::Sigmoid(&v96, &v96, v65, v66, v67);
      v72 = *(a1 + 296) + 48 * v17;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v93, v72, v30, v6, 0, *(v72 + 16));
      kaldi::CuMatrixBase<float>::Tanh(&v93, &v102, v73, v74, v75);
      v76 = *(a1 + 320) + 48 * v17;
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v90, v76, v30, v6, 0, *(v76 + 16));
      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v90, &v96, 111, &v93, &stru_68.sectname[7], 1.0, 0.0);
      if (*(a1 + 224) == 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v87, v86, v30, v6, 0, *(v86 + 16));
        v77 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
        v78.n128_u32[0] = 1.0;
        kaldi::CuMatrixBase<float>::AddMatMat<short>(&v87, &v90, 111, v77, &stru_68.sectname[8], v78, 0.0);
      }

      else
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v87, v86, v30, v6, 0, *(v86 + 16));
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v87, &v90, 111, v79, v80);
      }

      v87 = off_276F40;
      v88 = 0u;
      v89 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v90 = off_276F40;
      v91 = 0u;
      v92 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v93 = off_276F40;
      v94 = 0u;
      v95 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v96 = off_276F40;
      memset(v97, 0, sizeof(v97));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v98 = off_276F40;
      memset(v99, 0, sizeof(v99));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v100 = off_276F40;
      memset(v101, 0, sizeof(v101));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v102 = off_276F40;
      v103 = 0u;
      v104 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v105 = off_276F40;
      v106 = 0u;
      v107 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v108 = off_276F40;
      v109 = 0u;
      v110 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v111.__locale_ = off_276F40;
      v112 = 0u;
      v113 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      ++v31;
      v30 += v6;
    }

    while (v85 != v31);
  }

  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v81, v86, 111, v28, v29);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SaveLastState(a1, v82);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateForwardBuffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, "AllocateForwardBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1397, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Allocating forward buffers for batch ", 37);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; batch size = ", 15);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + 248) + 48 * v6, a3, (4 * *(a1 + 176)), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 272) + 48 * v6, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 296) + 48 * v6, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 320) + 48 * v6, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 344) + 48 * v6, a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  *(*(a1 + 248) + 48 * v6 + 32) = a4;
  *(*(a1 + 272) + 48 * v6 + 32) = a4;
  *(*(a1 + 296) + 48 * v6 + 32) = a4;
  *(*(a1 + 320) + 48 * v6 + 32) = a4;
  *(*(a1 + 344) + 48 * v6 + 32) = a4;
}

void sub_16E76C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SaveLastState(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v15, "SaveLastState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1700, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v15, "Saving last output and cell state for batch ", 44);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v15);
  }

  v4 = *(*(a1 + 272) + 48 * v2 + 20) - *(a1 + 96);
  v5 = *(a1 + 8) + 48 * v2;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v15, v5, 0, *(v5 + 20), 0, *(a1 + 176));
  v6 = *(a1 + 272) + 48 * v2;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v12, v6, v4, *(a1 + 96), 0, *(v6 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v15, &v12, 111, v7, v8);
  v12 = off_276F40;
  v13 = 0u;
  v14 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v15.__locale_ = off_276F40;
  v16 = 0u;
  v17 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v9 = 3 * v2;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v15, *(a1 + 8) + 16 * v9, 0, *(*(a1 + 8) + 16 * v9 + 20), *(a1 + 176), *(a1 + *(*a1 - 24) + 12));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v12, *(a1 + 344) + 16 * v9, v4, *(a1 + 96), 0, *(*(a1 + 344) + 16 * v9 + 16));
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v15, &v12, 111, v10, v11);
  v12 = off_276F40;
  v13 = 0u;
  v14 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v15.__locale_ = off_276F40;
  v16 = 0u;
  v17 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
}

void sub_16E9B4(_Unwind_Exception *a1)
{
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*a1 + 88))(a1);
  if (*(a1 + 96) == 1)
  {
    v6 = *(a3 + 24);
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateForwardBuffers(a1, 0, 1, v6);
    v8 = *(a1 + 104);
    if (*(a1 + 112) != v8)
    {
      v9 = *(v8 + 16);
      if (v9 >= 1)
      {
        if (v9 != 1)
        {
          kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_2E8.nreloc + 1, "boundary_[0].Dim() == 1", v7);
        }

        v10 = *(a1 + 128);
        *(v10 + 32) = v6;
        kaldi::CuMatrix<float>::Resize(v10, 1, *(*(a1 + 8) + 16), 1, 0);
      }
    }

    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
    kaldi::CuVectorBase<float>::AddMatVec<short>();
  }

  kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_2E8.reloff, "ropts_.num_sequences == 1", v5);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetUnitOutputFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 876);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v1, "GetUnitOutputFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 881);
  v0 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v1, "GetUnitOutputFnc", 16);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, " Not implemented!");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v1);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc()
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc();
}

{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetUnitOutputFnc();
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a2 + 20);
  v11 = *(a1 + 96);
  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::EnsureTrainingBuffers(a1);
  v13 = v10 / v11;
  if (v10 % v11)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_338.reserved2, "batch_size % num_utts == 0", v12);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v157, "BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 898, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v157, "Running backward propagation for batch size = ", 46);
    v14 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ", which contains ", 17);
    v15 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " frames each from ", 18);
    v16 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v157);
  }

  v110 = v10 / v11;
  v107 = v13 - 2;
  if (v13 < 2)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_338.reserved3, "frames_in_batch > 1 && LSTM backprop will not work with batches of single frames.", v12);
  }

  v106 = a5;
  if (a5)
  {
    v17 = a5;
  }

  else
  {
    v17 = a4;
  }

  v18 = *(v17 + 32);
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateBackwardBuffers(a1, a6, v10, v18);
  v21 = a6;
  v22 = *(a1 + 248);
  v23 = *(a1 + 440) + 48 * a6;
  v24 = *(a1 + 368);
  v105 = *(a1 + 416);
  v25 = *(a1 + 104);
  v109 = v23;
  if (*(a1 + 112) == v25 || (v26 = *(v25 + 32 * a6 + 16), v26 < 1))
  {
    v112 = 0;
  }

  else
  {
    if (v26 != v10)
    {
      kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_388.sectname[8], "boundary_[batch_index].Dim() == batch_size", v20);
    }

    v27 = *(a1 + 128) + 48 * a6;
    *(v27 + 32) = v18;
    v112 = 1;
    kaldi::CuMatrix<float>::Resize(v27, v11, *(v23 + 16), 1, 0);
  }

  v28 = v22 + 48 * a6;
  v29 = (v24 + 48 * a6);
  kaldi::CuMatrixBase<float>::CopyFromMat<float>(v29, a4, 111, v19, v20);
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v157, v28, 0, *(v28 + 20), 0, *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v154, v28, 0, *(v28 + 20), *(a1 + 176), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v151, v28, 0, *(v28 + 20), (2 * *(a1 + 176)), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v148, v28, 0, *(v28 + 20), (3 * *(a1 + 176)), *(a1 + 176));
  v30 = v109;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v145, v109, 0, *(v109 + 20), 0, *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v142, v30, 0, *(v30 + 20), *(a1 + 176), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v139, v30, 0, *(v30 + 20), (2 * *(a1 + 176)), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v136, v30, 0, *(v30 + 20), (3 * *(a1 + 176)), *(a1 + 176));
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v145, &v157, &v148, v31, v32);
  v33 = v10 - v11;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v133, &v142, v11, v33, 0, SDWORD2(v143));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v130, &v154, v11, v33, 0, SDWORD2(v155));
  v34 = *(a1 + 272) + 48 * a6;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v127, v34, 0, v33, 0, *(v34 + 16));
  kaldi::CuMatrixBase<float>::DiffSigmoid(&v133, &v130, &v127, v35, v36);
  v127 = off_276F40;
  v128 = 0u;
  v129 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v130 = off_276F40;
  v131 = 0u;
  v132 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v133 = off_276F40;
  v134 = 0u;
  v135 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v133, &v142, 0, v11, 0, SDWORD2(v143));
  kaldi::CuMatrixBase<float>::SetZero(&v133);
  v133 = off_276F40;
  v134 = 0u;
  v135 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  if (v112)
  {
    v39 = *(a1 + 128) + 48 * a6;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v133, v39, 0, *(v39 + 20), 0, *(a1 + 176));
    kaldi::CuMatrixBase<float>::SetZero(&v133);
    v40 = v110 - 1;
    v41 = v11;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v130, &v142, v41, v11, 0, SDWORD2(v143));
      kaldi::CuSubVector<float>::CuSubVector(&v127, *(a1 + 104) + 32 * a6, v41, v11, v42);
      kaldi::CuMatrixBase<float>::CopySelectedRows(&v130, &v133, &v127, 0, v43);
      v130 = off_276F40;
      v131 = 0u;
      v132 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v41 += v11;
      --v40;
    }

    while (v40);
    v133 = off_276F40;
    v134 = 0u;
    v135 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  }

  kaldi::CuMatrixBase<float>::DiffSigmoid(&v139, &v151, *(a1 + 296) + 48 * a6, v37, v38);
  kaldi::CuMatrixBase<float>::DiffTanh(&v136, &v148, &v157, v44, v45);
  v46 = v105 + 48 * a6;
  kaldi::CuMatrixBase<float>::DiffTanh(v46, *(a1 + 296) + 48 * a6, &v151, v47, v48);
  v49 = 0;
  v50 = v110 - 1;
  v51 = v11 * (v110 - 1);
  v52 = v11 * v110;
  v108 = v11 * v107;
  v111 = v110 - 1;
  do
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v133, v29, v51 + v49, v11, 0, v29[4]);
    v53 = *(a1 + 392) + 48 * v21;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v130, v53, v51 + v49, v11, 0, *(v53 + 16));
    if (*(a1 + 224) == 1)
    {
      v56 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
      v57.n128_u32[0] = 1.0;
      kaldi::CuMatrixBase<float>::AddMatMat<short>(&v130, &v133, 111, v56, &stru_68.sectname[7], v57, 0.0);
    }

    else
    {
      kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v130, &v133, 111, v54, v55);
    }

    kaldi::CuSubMatrix<float>::CuSubMatrix(&v127, &v139, v51 + v49, v11, 0, SDWORD2(v140));
    kaldi::CuMatrixBase<float>::MulElements(&v127, &v130, v58, v59, v60);
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v124, v46, v51 + v49, v11, 0, *(v46 + 16));
    kaldi::CuMatrixBase<float>::MulElements(&v124, &v130, v61, v62, v63);
    if (*(a1 + 208) == 1)
    {
      v64 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
      if (*(v64 + 20) <= 2u)
      {
        kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v65);
      }

      v66 = *(v64 + 16);
      v67 = *(v64 + 32);
      v123[0] = *(v64 + 8) + 8 * *(v64 + 24);
      v122 = &off_276FE0;
      v123[1] = v66;
      v123[2] = v67;
      kaldi::CuMatrixBase<float>::AddMatDiagVec(&v124, &v127, 111, &v122, v65, 1.0, 1.0);
    }

    if (v50 < v111)
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v122, v46, v52 + v49, v11, 0, *(v46 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, &v154, v52 + v49, v11, 0, SDWORD2(v155));
      if (v112)
      {
        v68 = *(a1 + 128) + 48 * v21;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v118, v68, 0, *(v68 + 20), 0, *(a1 + 176));
        kaldi::CuMatrixBase<float>::SetZero(&v118);
        kaldi::CuSubVector<float>::CuSubVector(&v116, *(a1 + 104) + 32 * v21, v52 + v49, v11, v69);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v118, &v122, &v116, 1, v70);
        *&v123[1] = *&v119[1];
        v123[0] = v119[0];
        v123[3] = v119[3];
        v71 = *(a1 + 128) + 48 * v21;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v116, v71, 0, *(v71 + 20), *(a1 + 176), *(a1 + 176));
        kaldi::CuMatrixBase<float>::SetZero(&v116);
        kaldi::CuSubVector<float>::CuSubVector(v115, *(a1 + 104) + 32 * v21, v52 + v49, v11, v72);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v116, &v120, v115, 1, v73);
        v121[0] = v117[0];
        *&v121[1] = *&v117[1];
        v121[3] = v117[3];
        v116 = off_276F40;
        memset(v117, 0, sizeof(v117));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
        v118 = off_276F40;
        memset(v119, 0, sizeof(v119));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      }

      if (*(a1 + 208) == 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v118, &v142, v52 + v49, v11, 0, SDWORD2(v143));
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v116, &v145, v52 + v49, v11, 0, SDWORD2(v146));
        if (v112)
        {
          v74 = *(a1 + 128) + 48 * v21;
          kaldi::CuSubMatrix<float>::CuSubMatrix(v115, v74, 0, *(v74 + 20), (2 * *(a1 + 176)), *(a1 + 176));
          kaldi::CuMatrixBase<float>::SetZero(v115);
          kaldi::CuSubVector<float>::CuSubVector(v114, *(a1 + 104) + 32 * v21, v52 + v49, v11, v75);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v115, &v118, v114, 1, v76);
          *&v119[1] = *&v115[2];
          v119[0] = v115[1];
          v119[3] = v115[4];
          v77 = *(a1 + 128) + 48 * v21;
          kaldi::CuSubMatrix<float>::CuSubMatrix(v114, v77, 0, *(v77 + 20), (3 * *(a1 + 176)), *(a1 + 176));
          kaldi::CuMatrixBase<float>::SetZero(v114);
          kaldi::CuSubVector<float>::CuSubVector(v113, *(a1 + 104) + 32 * v21, v52 + v49, v11, v78);
          kaldi::CuMatrixBase<float>::CopySelectedRows(v114, &v116, v113, 1, v79);
          v117[0] = v114[1];
          *&v117[1] = *&v114[2];
          v117[3] = v114[4];
          v114[0] = off_276F40;
          memset(&v114[1], 0, 32);
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          v115[0] = off_276F40;
          memset(&v115[1], 0, 32);
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
        }

        v80 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
        if (*(v80 + 20) <= 1u)
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v81);
        }

        v82 = *(v80 + 16);
        v83 = *(v80 + 32);
        v115[1] = *(v80 + 8) + 4 * *(v80 + 24);
        v115[0] = &off_276FE0;
        v115[2] = v82;
        v115[3] = v83;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v124, &v118, 111, v115, v81, 1.0, 1.0);
        v84 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
        if (!*(v84 + 20))
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v85);
        }

        v86 = *(v84 + 16);
        v87 = *(v84 + 32);
        v115[1] = *(v84 + 8);
        v115[0] = &off_276FE0;
        v115[2] = v86;
        v115[3] = v87;
        kaldi::CuMatrixBase<float>::AddMatDiagVec(&v124, &v116, 111, v115, v85, 1.0, 1.0);
        v116 = off_276F40;
        memset(v117, 0, sizeof(v117));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
        v118 = off_276F40;
        memset(v119, 0, sizeof(v119));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      }

      kaldi::CuMatrixBase<float>::AddMatEwpMat(&v124, &v122, 111, &v120, &stru_68.sectname[7], 1.0, 1.0);
      v120 = off_276F40;
      memset(v121, 0, sizeof(v121));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v122 = off_276F40;
      memset(v123, 0, sizeof(v123));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
    }

    kaldi::CuSubMatrix<float>::CuSubMatrix(&v122, &v145, v51 + v49, v11, 0, SDWORD2(v146));
    kaldi::CuMatrixBase<float>::MulElements(&v122, &v124, v88, v89, v90);
    v122 = off_276F40;
    memset(v123, 0, sizeof(v123));
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v122, &v136, v51 + v49, v11, 0, SDWORD2(v137));
    kaldi::CuMatrixBase<float>::MulElements(&v122, &v124, v91, v92, v93);
    v122 = off_276F40;
    memset(v123, 0, sizeof(v123));
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
    if (v50)
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v122, &v142, v51 + v49, v11, 0, SDWORD2(v143));
      kaldi::CuMatrixBase<float>::MulElements(&v122, &v124, v94, v95, v96);
      v122 = off_276F40;
      memset(v123, 0, sizeof(v123));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v122, v109, v51 + v49, v11, 0, *(v109 + 16));
      if (v112)
      {
        v97 = *(a1 + 128) + 48 * v21;
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, v97, 0, *(v97 + 20), 0, v123[1]);
        kaldi::CuMatrixBase<float>::SetZero(&v120);
        kaldi::CuSubVector<float>::CuSubVector(&v118, *(a1 + 104) + 32 * v21, v51 + v49, v11, v98);
        kaldi::CuMatrixBase<float>::CopySelectedRows(&v120, &v122, &v118, 1, v99);
        *&v123[1] = *&v121[1];
        v123[0] = v121[0];
        v123[3] = v121[3];
        v120 = off_276F40;
        memset(v121, 0, sizeof(v121));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v120, v29, v108 + v49, v11, 0, v29[4]);
      v100 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
      v101.n128_u32[0] = 1.0;
      kaldi::CuMatrixBase<float>::AddMatMat<short>(&v120, &v122, 111, v100, &stru_68.sectname[7], v101, 1.0);
      v120 = off_276F40;
      memset(v121, 0, sizeof(v121));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v122 = off_276F40;
      memset(v123, 0, sizeof(v123));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
    }

    v124 = off_276F40;
    v125 = 0u;
    v126 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
    v127 = off_276F40;
    v128 = 0u;
    v129 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
    v130 = off_276F40;
    v131 = 0u;
    v132 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
    v133 = off_276F40;
    v134 = 0u;
    v135 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
    v49 -= v11;
  }

  while (v50-- > 0);
  if (v106)
  {
    v103 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
    v104.n128_u32[0] = 1.0;
    kaldi::CuMatrixBase<float>::AddMatMat<short>(v106, v109, 111, v103, &stru_68.sectname[7], v104, 0.0);
  }

  v136 = off_276F40;
  v137 = 0u;
  v138 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v139 = off_276F40;
  v140 = 0u;
  v141 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v142 = off_276F40;
  v143 = 0u;
  v144 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v145 = off_276F40;
  v146 = 0u;
  v147 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v148 = off_276F40;
  v149 = 0u;
  v150 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v151 = off_276F40;
  v152 = 0u;
  v153 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v154 = off_276F40;
  v155 = 0u;
  v156 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v157.__locale_ = off_276F40;
  v158 = 0u;
  v159 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
}

void sub_17050C(_Unwind_Exception *a1)
{
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  STACK[0x200] = off_276F40;
  *&STACK[0x208] = 0u;
  *&STACK[0x218] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  STACK[0x228] = off_276F40;
  *&STACK[0x230] = 0u;
  *&STACK[0x240] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  STACK[0x250] = off_276F40;
  *&STACK[0x258] = 0u;
  *&STACK[0x268] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  STACK[0x278] = off_276F40;
  *&STACK[0x280] = 0u;
  *&STACK[0x290] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  STACK[0x2A0] = off_276F40;
  *&STACK[0x2A8] = 0u;
  *&STACK[0x2B8] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  STACK[0x2C8] = off_276F40;
  *&STACK[0x2D0] = 0u;
  *&STACK[0x2E0] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  STACK[0x2F0] = off_276F40;
  *&STACK[0x2F8] = 0u;
  *&STACK[0x308] = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateBackwardBuffers(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v9, "AllocateBackwardBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1413, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Allocating backward buffers for batch ", 38);
    v8 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "; batch size = ", 15);
    std::ostream::operator<<();
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v9);
  }

  kaldi::CuMatrix<float>::Resize(*(a1 + 368) + 48 * v6, a3, *(a1 + *(*a1 - 24) + 12), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 392) + 48 * v6, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 416) + 48 * v6, a3, *(a1 + 176), 0, 0);
  kaldi::CuMatrix<float>::Resize(*(a1 + 440) + 48 * v6, a3, (4 * *(a1 + 176)), 0, 0);
  *(*(a1 + 368) + 48 * v6 + 32) = a4;
  *(*(a1 + 392) + 48 * v6 + 32) = a4;
  *(*(a1 + 416) + 48 * v6 + 32) = a4;
  *(*(a1 + 440) + 48 * v6 + 32) = a4;
}

void sub_170D54(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AccumGradients(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*(a1 + 80) <= a5)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_3D8.align + 1, "batch_index < ropts_.num_subbatches", a5);
  }

  v7 = *(a1 + 96);
  v8 = *(a2 + 20);
  if (v8 % v7)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_3D8.reloff + 1, "batch_size % num_utts == 0", a5);
  }

  v9 = a5;
  if (kaldi::g_kaldi_verbose_level >= 3)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(&v55, "AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1043, 3);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v55, "Accumulating gradients for batch id = ", 38);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", which contains ", 17);
    v12 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " frames each from ", 18);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " utterances.", 12);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(&v55);
  }

  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateGradients(a1);
  v38 = *(a1 + 272);
  v14 = (*(a1 + 440) + 48 * v9);
  v15 = *(a1 + 60);
  *(*(a1 + 480) + 4 * v9) = v8;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v55, v14, 0, v14[5], 0, *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v52, v14, 0, v14[5], *(a1 + 176), *(a1 + 176));
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v49, v14, 0, v14[5], (2 * *(a1 + 176)), *(a1 + 176));
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v9) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v9) + 32) = a4;
  *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v9) + 24) = a4;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v9) + 32) = a4;
  }

  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v9) + 32) = a4;
  }

  v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v9);
  kaldi::CuMatrixBase<float>::AddMatMat(v16, v14, CblasTrans, a2, &stru_68.sectname[7], 1.0, v15);
  v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v9);
  v18 = v8 - v7;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, v14, v7, v8 - v7, 0, v14[4]);
  v19 = *(a1 + 344) + 48 * v9;
  kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, v19, 0, v8 - v7, 0, *(v19 + 16));
  kaldi::CuMatrixBase<float>::AddMatMat(v17, &v46, CblasTrans, &v43, &stru_68.sectname[7], 1.0, v15);
  v43 = off_276F40;
  v44 = 0u;
  v45 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v46 = off_276F40;
  v47 = 0u;
  v48 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v9);
  kaldi::CuVectorBase<float>::AddRowSumMat(v20, v14, v21, v22, v23, 1.0, v15);
  if (*(a1 + 208) == 1)
  {
    v24 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v9);
    if (!*(v24 + 20))
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v25);
    }

    v26 = *(v24 + 16);
    v27 = *(v24 + 32);
    v40 = *(v24 + 8);
    v39 = &off_276FE0;
    v41 = v26;
    v42 = v27;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, &v55, v7, v18, 0, SDWORD2(v56));
    v28 = v38 + 48 * v9;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, v28, 0, v18, 0, *(v28 + 16));
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v39, &v46, 112, &v43, 111, 1.0, v15);
    v43 = off_276F40;
    v44 = 0u;
    v45 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
    v46 = off_276F40;
    v47 = 0u;
    v48 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
    v29 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v9);
    if (*(v29 + 20) <= 1u)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v30);
    }

    v31 = *(v29 + 16);
    v32 = *(v29 + 32);
    v40 = *(v29 + 8) + 4 * *(v29 + 24);
    v39 = &off_276FE0;
    v41 = v31;
    v42 = v32;
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v46, &v52, v7, v18, 0, SDWORD2(v53));
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v43, v28, 0, v18, 0, *(v28 + 16));
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v39, &v46, 112, &v43, 111, 1.0, v15);
    v43 = off_276F40;
    v44 = 0u;
    v45 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
    v46 = off_276F40;
    v47 = 0u;
    v48 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
    v33 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v9);
    if (*(v33 + 20) <= 2u)
    {
      kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v34);
    }

    v35 = *(v33 + 16);
    v36 = *(v33 + 32);
    *&v47 = *(v33 + 8) + 8 * *(v33 + 24);
    v46 = &off_276FE0;
    *(&v47 + 1) = v35;
    *&v48 = v36;
    kaldi::CuVectorBase<float>::AddDiagMatMat(&v46, &v49, 112, v28, 111, 1.0, v15);
  }

  if (*(a1 + 224) == 1)
  {
    v37 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v9);
    kaldi::CuMatrixBase<float>::AddMatMat(v37, *(a1 + 368) + 48 * v9, CblasTrans, *(a1 + 320) + 48 * v9, &stru_68.sectname[7], 1.0, v15);
  }

  v49 = off_276F40;
  v50 = 0u;
  v51 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v52 = off_276F40;
  v53 = 0u;
  v54 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  v55.__locale_ = off_276F40;
  v56 = 0u;
  v57 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
}

void sub_1714D8(_Unwind_Exception *a1)
{
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateGradients(uint64_t a1)
{
  if (*(a1 + 528))
  {
    return;
  }

  v2 = *(a1 + 80);
  if (v2 > 1)
  {
    v3 = (v2 + 1);
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 544) != *(a1 + 536))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1332);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "input_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 568) != *(a1 + 560))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1333);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "recurrent_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 616) != *(a1 + 608))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1334);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "bias_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 208) == 1 && *(a1 + 592) != *(a1 + 584))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1335);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "peephole_weights_gradient_.size() == 0");
    goto LABEL_34;
  }

  if (*(a1 + 224) == 1 && *(a1 + 640) != *(a1 + 632))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v12, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1336);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, "projection_weights_gradient_.size() == 0");
LABEL_34:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v12);
  }

  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 536), v3);
  std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 560), v3);
  std::vector<std::unique_ptr<kaldi::CuVectorBase<float>>>::resize((a1 + 608), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 656), v3);
  std::vector<kaldi::CuMatrix<float>>::resize((a1 + 680), v3);
  std::vector<kaldi::CuVector<float>>::resize((a1 + 728), v3, v4, v5, v6);
  if (v3 >= 1)
  {
    operator new();
  }

  if (*(a1 + 208))
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 584), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 704), v3);
  }

  if (*(a1 + 224) == 1)
  {
    std::vector<std::unique_ptr<kaldi::CuMatrixBase<float>>>::resize((a1 + 632), v3);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 752), v3);
  }

  *(a1 + 528) = 1;
  if (kaldi::g_kaldi_verbose_level > 1)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v12, "AllocateGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1391, 2);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "Allocated memory for the gradients: ", 36);
    (*(*a1 + 272))(__p, a1);
    if ((v11 & 0x80u) == 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    if ((v11 & 0x80u) == 0)
    {
      v9 = v11;
    }

    else
    {
      v9 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v8, v9);
    if (v11 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v12);
  }
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::UpdateWeights()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1116);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetInternalBoundary(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  v7 = *(a1 + 104);
  v8 = (a1 + 104);
  if (v7 == *(a1 + 112))
  {
    std::vector<kaldi::CuVector<float>>::resize((a1 + 104), *(a1 + 80), a3, a4, a5);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 128), *(a1 + 80));
    v7 = *(a1 + 104);
  }

  kaldi::CuVector<float>::Resize(v7 + 32 * v5, *(a2 + 16), 1u, a4, a5);
  v13 = (*v8 + 32 * v5);

  return kaldi::CuVectorBase<float>::CopyFromVec(v13, a2, v10, v11, v12);
}

void virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetTrainOptions(void *a1, const kaldi::nnet1::NnetTrainOptions *a2)
{
  v2 = (a1 + *(*a1 - 280));
  kaldi::nnet1::RecurrentBaseComponent::SetTrainOptions(v2, a2);
  *(v2 + 120) = 0;
}

int *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetHistoryState(uint64_t a1, int *a2, signed int a3, uint64_t a4, const char *a5)
{
  if (a3 < 0 || *(a1 + 80) <= a3)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.sectname[6], "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  v8 = *(a1 + 8) + 48 * a3;
  kaldi::CuMatrix<float>::Resize(a2, *(v8 + 20), *(v8 + 16), 1, 0);
  v11 = *(a1 + 8) + 48 * a3;

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(a2, v11, 111, v9, v10);
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::GetHistoryState(uint64_t a1, _DWORD *a2, signed int a3, uint64_t a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.sectname[13], "batch_index >= 0 && batch_index < ropts_.num_subbatches", a5);
  }

  if (a3 < 0 || (v7 = *(a1 + 8) + 48 * a4, *(v7 + 20) <= a3))
  {
    kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.sectname[14], "sequence_idx >= 0 && sequence_idx < history_state_[batch_index].NumRows()", a5);
  }

  v9 = a4;
  kaldi::CuVector<float>::Resize(a2, *(v7 + 16), 1u, a4, a5);
  v13 = *(a1 + 8) + 48 * v9;
  if (*(v13 + 20) <= a3)
  {
    kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v12);
  }

  v14 = *(v13 + 8) + 4 * *(v13 + 24) * a3;
  v15 = *(v13 + 16);
  v16 = *(v13 + 32);
  v18[1] = v14;
  v18[0] = &off_276FE0;
  v18[2] = v15;
  v18[3] = v16;
  return kaldi::CuVectorBase<float>::CopyFromVec(a2, v18, v10, v11, v12);
}

int *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetHistoryState(uint64_t a1, uint64_t a2, signed int a3)
{
  (*(*a1 + 88))(a1);
  if (a3 < 0 || *(a1 + 80) <= a3)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.size + 5, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v7);
  }

  v8 = (*(a1 + 8) + 48 * a3);
  if (*(a2 + 20) != v8[5])
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.size + 6, "history.NumRows() == history_state_[batch_index].NumRows()", v7);
  }

  if (*(a2 + 16) != v8[4])
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.size + 7, "history.NumCols() == history_state_[batch_index].NumCols()", v7);
  }

  return kaldi::CuMatrixBase<float>::CopyFromMat<float>(v8, a2, 111, v6, v7);
}

_DWORD *kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetHistoryState(uint64_t a1, uint64_t a2, int a3, signed int a4)
{
  (*(*a1 + 88))(a1);
  if (a4 < 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.align + 2, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v10);
  }

  if (a3 < 0 || (v11 = *(a1 + 8) + 48 * a4, *(v11 + 20) <= a3))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.align + 3, "sequence_idx >= 0 && sequence_idx < history_state_[batch_index].NumRows()", v10);
  }

  v12 = *(a2 + 16);
  if (v12 != *(v11 + 16))
  {
    kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.reloff, "history.Dim() == history_state_[batch_index].NumCols()", v10);
  }

  v13 = *(v11 + 8) + 4 * *(v11 + 24) * a3;
  v14 = *(v11 + 32);
  v16[1] = v13;
  v16[0] = &off_276FE0;
  v16[2] = v12;
  v16[3] = v14;
  return kaldi::CuVectorBase<float>::CopyFromVec(v16, a2, v8, v9, v10);
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ResetHistoryState(uint64_t a1, void *a2, uint64_t a3, signed int a4)
{
  (*(*a1 + 88))(a1);
  if (a4 < 0 || *(a1 + 80) <= a4)
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.nreloc + 3, "batch_index >= 0 && batch_index < ropts_.num_subbatches", v8);
  }

  if (a2[1] != *(*(a1 + 8) + 48 * a4 + 20))
  {
    kaldi::KaldiAssertFailure_("ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_6A8.flags, "sequence_idx.size() == history_state_[batch_index].NumRows()", v8);
  }

  std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
  *(*(a1 + 8) + 48 * a4 + 32) = a3;
  if (a2[1])
  {
    v10 = 0;
    do
    {
      if ((*(*a2 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v10))
      {
        v11 = *(a1 + 8) + 48 * a4;
        if (v10 >= *(v11 + 20))
        {
          kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v9);
        }

        v12 = (*(v11 + 8) + 4 * *(v11 + 24) * v10);
        v13 = *(v11 + 16);
        v14 = *(v11 + 32);
        v22[1].__locale_ = v12;
        v22[0].__locale_ = &off_276FE0;
        v22[2].__locale_ = v13;
        v22[3].__locale_ = v14;
        kaldi::CuVectorBase<float>::SetZero(v22);
        if (kaldi::g_kaldi_verbose_level >= 3)
        {
          v15 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
        }
      }

      ++v10;
    }

    while (a2[1] > v10);
  }

  if (kaldi::g_kaldi_verbose_level > 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v22, "ResetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1779, 3);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "Reset previous states for utts ", 31);
    std::stringbuf::str();
    if ((v21 & 0x80u) == 0)
    {
      v17 = __p;
    }

    else
    {
      v17 = __p[0];
    }

    if ((v21 & 0x80u) == 0)
    {
      v18 = v21;
    }

    else
    {
      v18 = __p[1];
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v17, v18);
    if (v21 < 0)
    {
      operator delete(__p[0]);
    }

    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v22);
  }

  if (v26 < 0)
  {
    operator delete(v25[7].__locale_);
  }

  std::locale::~locale(v25);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_172844(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  kaldi::KaldiVlogMessage::~KaldiVlogMessage(&a16);
  std::ostringstream::~ostringstream(&a51);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ResetHistoryState(void *a1)
{
  (*(*a1 + 88))(a1);
  for (i = a1[1]; i != a1[2]; i += 48)
  {
    kaldi::CuMatrixBase<float>::SetZero(i);
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetGradientNormalization(uint64_t result, int a2, float a3)
{
  *(result + 152) = a3;
  *(result + 156) = a2;
  *(result + 528) = 0;
  return result;
}

void *virtual thunk tokaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::SetGradientNormalization(void *result, int a2, float a3)
{
  v3 = (result + *(*result - 256));
  v3[38] = a3;
  *(v3 + 39) = a2;
  *(v3 + 528) = 0;
  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::NormalizeGradients(uint64_t a1, int a2, float a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (a2 < 0 || *(a1 + 80) <= a2)
  {
    kaldi::KaldiAssertFailure_("NormalizeGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_568.offset + 2, "batch_index >= 0 && batch_index < ropts_.num_subbatches", a6);
  }

  v8 = a3;
  v9 = *(a1 + 156);
  if (v9 == 1)
  {
    if (a3 > 0.0)
    {
      if (*(a1 + 84) == 1)
      {
        v8 = *(*(a1 + 480) + 4 * a2) * a3;
      }

      v19 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v19, v8);
      v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v20, v8);
      v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::ClipGradient(v21, v8);
      if (*(a1 + 208) == 1)
      {
        v22 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::ClipGradient(v22, v8);
      }

      if (*(a1 + 224) == 1)
      {
        v23 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, a2);

        kaldi::nnet1::UpdatableComponent::ClipGradient(v23, v8);
      }
    }
  }

  else if (v9 == 3)
  {
    if (a3 >= 0.0 && a3 <= 1.0)
    {
      v10 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v10, *(a1 + 656) + 48 * a2, v8);
      v11 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v11, *(a1 + 680) + 48 * a2, v8);
      v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::RmspropGradient(v12, *(a1 + 728) + 32 * a2, v8, v13, v14, v15);
      if (*(a1 + 208) == 1)
      {
        v16 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a2);
        kaldi::nnet1::UpdatableComponent::RmspropGradient(v16, *(a1 + 704) + 48 * a2, v8);
      }

      if (*(a1 + 224) == 1)
      {
        v17 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, a2);
        v18 = *(a1 + 752) + 48 * a2;

        kaldi::nnet1::UpdatableComponent::RmspropGradient(v17, v18, v8);
      }
    }
  }

  else if (a3 > 0.0 && v9 == 2)
  {
    v24 = a2;
    if (*(a1 + 84))
    {
      v8 = *(*(a1 + 480) + 4 * a2) * a3;
    }

    v25 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v25, (*(a1 + 656) + 48 * v24), v8, v26, v27, v28);
    v29 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v29, (*(a1 + 680) + 48 * v24), v8, v30, v31, v32);
    v33 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, a2);
    kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v33, (*(a1 + 728) + 32 * v24), v34, v35, v36, v8);
    if (*(a1 + 208) == 1)
    {
      v37 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, a2);
      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v37, (*(a1 + 704) + 48 * v24), v8, v38, v39, v40);
    }

    if (*(a1 + 224) == 1)
    {
      v41 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, a2);
      v45 = (*(a1 + 752) + 48 * v24);

      kaldi::nnet1::UpdatableComponent::LimitL2NormGradient(v41, v45, v8, v42, v43, v44);
    }
  }
}

uint64_t kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::CountZeroCorr(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::AllocateGradients(a1);
  result = (*(*a1 + 208))(a1);
  *a3 = result;
  if (*(a1 + 544) == *(a1 + 536) || *(a1 + 568) == *(a1 + 560))
  {
    v31 = 0;
    goto LABEL_11;
  }

  if (*(a1 + *(*a1 - 24) + 80) == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(a1 + *(*a1 - 24) + 80);
  }

  v8 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeightsGradient(a1, v7);
  v13 = kaldi::CuMatrixBase<float>::CountZeros(v8, v9, v10, v11, v12);
  v14 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeightsGradient(a1, v7);
  v19 = kaldi::CuMatrixBase<float>::CountZeros(v14, v15, v16, v17, v18) + v13;
  v20 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::BiasGradient(a1, v7);
  result = kaldi::CuVectorBase<float>::CountZeros(v20);
  *a2 = v19 + result;
  if (*(a1 + 208) == 1)
  {
    v21 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v21, v22, v23, v24, v25);
    *a2 += result;
  }

  if (*(a1 + 224) == 1)
  {
    v26 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeightsGradient(a1, v7);
    result = kaldi::CuMatrixBase<float>::CountZeros(v26, v27, v28, v29, v30);
    v31 = *a2 + result;
LABEL_11:
    *a2 = v31;
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::VectorizeWeightsCorrs()
{
  kaldi::KaldiErrorMessage::KaldiErrorMessage(v0, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1532);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v0, "Unimplemented except for BaseFloat weights");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v0);
}

void kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::EnsureBuffers(uint64_t a1)
{
  if ((*(a1 + 240) & 1) == 0)
  {
    v2 = *(a1 + 80);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 8), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 248), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 272), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 296), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 320), v2);
    std::vector<kaldi::CuMatrix<float>>::resize((a1 + 344), v2);
    if (v2 >= 1)
    {
      v3 = 0;
      do
      {
        kaldi::CuMatrix<float>::Resize(*(a1 + 8) + v3, *(a1 + 96), (*(a1 + 12 + *(*a1 - 24)) + *(a1 + 176)), 0, 0);
        v3 += 48;
      }

      while (48 * v2 != v3);
    }

    std::vector<int>::resize((a1 + 480), v2);
    *(a1 + 240) = 1;
  }
}

float kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Check(uint64_t a1)
{
  v2 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumRows(v2) != 4 * *(a1 + 176))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1642);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Input weights #rows = ", 22);
    v9 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
    kaldi::QuantizedMatrixBase<short>::NumRows(v9);
    v10 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "; expecting ", 12);
    v11 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "; #cells = ", 11);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  v3 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumCols(v3) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1646);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Input weights #columns = ", 25);
    v12 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::InputWeights(a1);
    kaldi::QuantizedMatrixBase<short>::NumCols(v12);
    v13 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "; expecting ", 12);
    v14 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v14, " (same as input dim)");
    goto LABEL_28;
  }

  v4 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumRows(v4) != 4 * *(a1 + 176))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1650);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Recurrent weights #rows = ", 26);
    v15 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
    kaldi::QuantizedMatrixBase<short>::NumRows(v15);
    v16 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "; expecting ", 12);
    v17 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, "; #cells = ", 11);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  v5 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
  if (kaldi::QuantizedMatrixBase<short>::NumCols(v5) != *(a1 + *(*a1 - 24) + 12))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1654);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Recurrent weights #columns = ", 29);
    v18 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::RecurrentWeights(a1);
    kaldi::QuantizedMatrixBase<short>::NumCols(v18);
    v19 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "; expecting ", 12);
    v20 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v20, " (same as output dim)");
    goto LABEL_28;
  }

  if (*(a1 + 208) == 1)
  {
    if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 20) != 3)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1659);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Peephole weights #rows = ", 25);
      kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
      v23 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "; expecting ", 12);
      std::ostream::operator<<();
      goto LABEL_28;
    }

    if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1) + 16) != *(a1 + 176))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1662);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Peephole weights #columns = ", 28);
      kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::PeepholeWeights(a1);
      v24 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, "; expecting ", 12);
      v25 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, " (same as #cells)");
      goto LABEL_28;
    }
  }

  if (*(kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1) + 16) != 4 * *(a1 + 176))
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1667);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Bias dim = ", 11);
    kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::Bias(a1);
    v21 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "; expecting ", 12);
    v22 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, "; #cells = ", 11);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 224) == 1)
  {
    v6 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
    if (kaldi::QuantizedMatrixBase<short>::NumRows(v6) == *(a1 + *(*a1 - 24) + 12))
    {
      v7 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
      if (kaldi::QuantizedMatrixBase<short>::NumCols(v7) == *(a1 + 176))
      {
        goto LABEL_12;
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1675);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Projection weights #columns = ", 30);
      v29 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
      kaldi::QuantizedMatrixBase<short>::NumCols(v29);
      v30 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "; expecting ", 12);
      v31 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v31, " (same as #cells)");
    }

    else
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1671);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "Projection weights #rows = ", 27);
      v26 = kaldi::nnet1::LstmComponent<kaldi::QuantizedMatrix<short>>::ProjectionWeights(a1);
      kaldi::QuantizedMatrixBase<short>::NumRows(v26);
      v27 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "; expecting ", 12);
      v28 = std::ostream::operator<<();
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v28, " (same as output dim)");
    }

LABEL_28:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v32);
  }

LABEL_12:
  if (*(a1 + 464) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1681);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "learn_rate_coeff_ must not be negative; found: ", 47);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 468) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1684);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "projection_learn_rate_coeff_ must not be negative; found: ", 58);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 472) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1688);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "max_norm_ must not be negative; found: ", 39);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  if (*(a1 + 152) < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1691);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "max_grad_ must not be negative; found: ", 39);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  result = *(a1 + 476);
  if (result < 0.0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v32, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1694);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, "max_cell_values_ must not be negative; found: ", 46);
    std::ostream::operator<<();
    goto LABEL_28;
  }

  return result;
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::UpdateWeights(uint64_t *a1, uint64_t a2, int a3)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = a1 + *(*a1 - 24);
  v9 = *(v8 + 72);
  v10 = *(v8 + 76);
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1) + 32) = a2;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1) + 32) = a2;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1) + 32) = a2;
  }

  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1) + 24) = a2;
  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1) + 32) = a2;
  }

  v12 = *(a1 + *(*a1 - 24) + 80);
  if (a3 >= 0)
  {
    v13 = a3;
  }

  else
  {
    v13 = *(a1 + *(*a1 - 24) + 80);
  }

  if (v12 == 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = v13;
  }

  if (v14 > v12)
  {
    kaldi::KaldiAssertFailure_("UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", &stru_428.reserved3 + 2, "batch_index <= opts_.num_subbatches", v11);
  }

  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v14) + 32) = a2;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v14) + 32) = a2;
  *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v14) + 24) = a2;
  *(a1[82] + 48 * v14 + 32) = a2;
  *(a1[85] + 48 * v14 + 32) = a2;
  *(a1[91] + 32 * v14 + 24) = a2;
  if (*(a1 + 208) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v14) + 32) = a2;
    *(a1[88] + 48 * v14 + 32) = a2;
  }

  if (*(a1 + 224) == 1)
  {
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v14) + 32) = a2;
    *(kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v14) + 32) = a2;
  }

  v19 = a1 + 10;
  if (v14 == *(a1 + 20))
  {
    v20 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v14);
    kaldi::CuMatrixBase<float>::SetZero(v20);
    v21 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v14);
    kaldi::CuMatrixBase<float>::SetZero(v21);
    v22 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v14);
    kaldi::CuVectorBase<float>::SetZero(v22);
    if (*(a1 + 208) == 1)
    {
      v23 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v14);
      kaldi::CuMatrixBase<float>::SetZero(v23);
    }

    if (*(a1 + 224) == 1)
    {
      v24 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v14);
      kaldi::CuMatrixBase<float>::SetZero(v24);
    }

    v25 = *a1;
    if (*(v19 + *(*a1 - 24)) >= 1)
    {
      v26 = 0;
      do
      {
        v27 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v14);
        v28 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v26);
        kaldi::CuMatrixBase<float>::AddMat(v27, v28, 111, v29, v30, 1.0, 1.0);
        v31 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v14);
        v32 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v26);
        kaldi::CuMatrixBase<float>::AddMat(v31, v32, 111, v33, v34, 1.0, 1.0);
        v35 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v14);
        v36 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::BiasGradient(a1, v26);
        v37.n128_u32[0] = 1.0;
        kaldi::CuVectorBase<float>::AddVec(v35, v36, v37, 1.0, v38, v39, v40);
        if (*(a1 + 208) == 1)
        {
          v41 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v14);
          v42 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeightsGradient(a1, v26);
          kaldi::CuMatrixBase<float>::AddMat(v41, v42, 111, v43, v44, 1.0, 1.0);
        }

        if (*(a1 + 224) == 1)
        {
          v45 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v14);
          v46 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v26);
          kaldi::CuMatrixBase<float>::AddMat(v45, v46, 111, v47, v48, 1.0, 1.0);
        }

        ++v26;
        v25 = *a1;
      }

      while (v26 < *(v19 + *(*a1 - 24)));
    }

    v49 = a1[60];
    v49[v14] = 0;
    if (v14 >= 1)
    {
      v50 = 0;
      v51 = v14;
      v52 = v49;
      do
      {
        v53 = *v52++;
        v50 += v53;
        v49[v14] = v50;
        --v51;
      }

      while (v51);
    }
  }

  else
  {
    v25 = *a1;
  }

  v54 = a1 + *(v25 - 24);
  v55 = *(v54 + 56);
  if (*(v54 + 84) == 1)
  {
    *v18.i32 = *(a1[60] + 4 * v14);
    v55 = v55 / *v18.i32;
  }

  v56 = a1[63];
  if (v14 >= ((a1[64] - v56) >> 2))
  {
    LODWORD(v110[0]) = 2143289344;
    std::vector<float>::resize(a1 + 63, v14 + 1, v110, v18);
    v56 = a1[63];
  }

  *(v56 + 4 * v14) = v55;
  if (*(a1 + 38) >= 0.0)
  {
    (*(*a1 + 360))(a1, v14);
  }

  if (v6 != 0.0)
  {
    v57 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    v58 = -(v55 * v6);
    v59 = v58 * *(a1[60] + 4 * v14);
    v60 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v57, v60, 111, v61, v62, v59, 1.0);
    v63 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    v64 = v58 * *(a1[60] + 4 * v14);
    v65 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    kaldi::CuMatrixBase<float>::AddMat(v63, v65, 111, v66, v67, v64, 1.0);
    v68 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
    v69 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
    v70.n128_f32[0] = v58;
    kaldi::CuVectorBase<float>::AddVec(v68, v69, v70, 1.0, v71, v72, v73);
    if (*(a1 + 208) == 1)
    {
      v74 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
      v75 = v58 * *(a1[60] + 4 * v14);
      v76 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
      kaldi::CuMatrixBase<float>::AddMat(v74, v76, 111, v77, v78, v75, 1.0);
    }

    if (*(a1 + 224) == 1)
    {
      v79 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      v80 = v58 * *(a1[60] + 4 * v14);
      v81 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      kaldi::CuMatrixBase<float>::AddMat(v79, v81, 111, v82, v83, v80, 1.0);
    }
  }

  if (v7 != 0.0)
  {
    v84 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    v85 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeightsGradient(a1, v14);
    kaldi::cu::RegularizeL1<float>(v84, v85, (v7 * v55) * *(a1[60] + 4 * v14), v55, v86, v87, v88);
    v89 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    v90 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeightsGradient(a1, v14);
    kaldi::cu::RegularizeL1<float>(v89, v90, (v7 * v55) * *(a1[60] + 4 * v14), v55, v91, v92, v93);
    if (*(a1 + 224) == 1)
    {
      v94 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      v95 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeightsGradient(a1, v14);
      kaldi::cu::RegularizeL1<float>(v94, v95, (v7 * v55) * *(a1[60] + 4 * v14), v55, v96, v97, v98);
    }
  }

  if (v9 > 0.0)
  {
    if (*(a1 + *(*a1 - 24) + 80) >= 2)
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v110, "UpdateWeights", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1208);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v110, "the multi batch gradient quantization does not work yet");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v110);
    }

    if (a1[98] == a1[97])
    {
      kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InitResidualAggregator(a1, a1 + 97);
    }

    kaldi::nnet1::QuantizerResidualAggregator::Quantize((a1 + 97), v10, v9, v15, v16, v17);
  }

  kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ApplyCorr(a1, v14, v55);
  if (*(a1 + 118) > 0.0)
  {
    v99 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::InputWeights(a1);
    kaldi::CuMatrixBase<float>::ApplyMaxNorm(v99, 1, *(a1 + 118));
    v100 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::RecurrentWeights(a1);
    kaldi::CuMatrixBase<float>::ApplyMaxNorm(v100, 1, *(a1 + 118));
    v101 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::Bias(a1);
    kaldi::CuVectorBase<float>::ApplyMaxNorm(v101, *(a1 + 118), v102, v103, v104, v105);
    if (*(a1 + 208) == 1)
    {
      v106 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::PeepholeWeights(a1);
      kaldi::CuMatrixBase<float>::ApplyMaxNorm(v106, 1, *(a1 + 118));
    }

    if (*(a1 + 224) == 1)
    {
      v107 = kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::ProjectionWeights(a1);
      kaldi::CuMatrixBase<float>::ApplyMaxNorm(v107, 1, *(a1 + 118));
    }
  }

  v108 = a1[60];
  if (v14 == *(a1 + *(*a1 - 24) + 80))
  {
    v109 = a1[61];
    if (v108 != v109)
    {
      bzero(v108, v109 - v108);
    }
  }

  else
  {
    *&v108[4 * v14] = 0;
  }
}

void kaldi::nnet1::LstmComponent<kaldi::CuMatrixBase<float>>::VectorizeWeightsCorrs(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (*(a1 + *(*a1 - 24) + 16) != 1)
  {
    if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
    {
      kaldi::KaldiLogMessage::KaldiLogMessage(v4, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1545);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Performing  vectorization of lstm component", 43);
      kaldi::KaldiLogMessage::~KaldiLogMessage(v4);
    }

    kaldi::CuSubMatrix<float>::CopyDataAndReplaceWithCuSub();
  }

  kaldi::KaldiErrorMessage::KaldiErrorMessage(v4, "VectorizeWeightsCorrs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-lstm.cc", 1542);
  std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, "Weights are already vectorized");
  kaldi::KaldiErrorMessage::~KaldiErrorMessage(v4);
}

double kaldi::nnet1::MovingAttentionComponent::MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this, int a2, int a3)
{
  *(this + 108) = a2;
  *(this + 109) = a3;
  *(this + 220) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 56) = 0;
  *(this + 59) = off_282980;
  *(this + 30) = xmmword_21A620;
  *(this + 62) = 0x3BF800000;
  *(this + 126) = 1;
  *(this + 254) = 0;
  *(this + 510) = 0;
  *(this + 1) = -1;
  *this = off_282330;
  *(this + 53) = off_282538;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 2) = 0;
  *(this + 3) = off_276F88;
  *(this + 64) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 9) = off_276F88;
  *(this + 112) = 0;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 15) = off_276F88;
  *(this + 160) = 0;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 21) = off_276F88;
  *(this + 208) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 27) = off_276F88;
  *(this + 256) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 41) = 0;
  *(this + 42) = off_276F88;
  *(this + 376) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 48) = 0;
  *&result = 257;
  *(this + 104) = 257;
  *(this + 420) = 0;
  return result;
}

unsigned int *kaldi::CuArray<int>::operator=(unsigned int *a1, unsigned int *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a1 != a2)
  {
    if (!*(a1 + 2))
    {
      *(a1 + 2) = *(a2 + 2);
    }

    kaldi::CuArray<int>::Resize(a1, *a2, 1u, a4, a5);
    v7 = *a1;
    if (v7)
    {
      memcpy(*(a1 + 1), *(a2 + 1), 4 * v7);
    }
  }

  return a1;
}

kaldi::nnet1::MovingAttentionComponent *kaldi::nnet1::MovingAttentionComponent::MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this, const kaldi::nnet1::MovingAttentionComponent *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  *(this + 54) = *(a2 + *(*a2 - 24) + 8);
  *(this + 220) = 0;
  *(this + 57) = 0;
  *(this + 58) = 0;
  *(this + 56) = 0;
  *(this + 59) = off_282980;
  *(this + 30) = xmmword_21A620;
  *(this + 124) = -1082130432;
  *(this + 500) = 0x100000003;
  *(this + 254) = 0;
  *(this + 510) = 0;
  *(this + 1) = -1;
  *this = off_282330;
  *(this + 53) = off_282538;
  v6 = this + 24;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 3) = off_276F88;
  *(this + 64) = 0;
  v7 = this + 72;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 9) = off_276F88;
  *(this + 112) = 0;
  v8 = this + 120;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 15) = off_276F88;
  *(this + 160) = 0;
  v9 = this + 168;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 21) = off_276F88;
  *(this + 208) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 27) = off_276F88;
  *(this + 256) = 0;
  v10 = this + 264;
  v18 = this + 288;
  v11 = this + 336;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 41) = 0;
  *(this + 42) = off_276F88;
  *(this + 376) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  v12 = *(a2 + 2);
  if (!v12)
  {
    kaldi::KaldiAssertFailure_("MovingAttentionComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_20.segname[11], "src.component_", a5);
  }

  *(this + 1) = *(a2 + 1);
  *(this + 51) = *(a2 + 51);
  *(this + 2) = (*(*v12 + 16))(v12);
  kaldi::CuMatrix<float>::operator=(v6, a2 + 24);
  kaldi::CuMatrix<float>::operator=(v7, a2 + 72);
  kaldi::CuMatrix<float>::operator=(v8, a2 + 120);
  kaldi::CuMatrix<float>::operator=(v9, a2 + 168);
  if (this != a2)
  {
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v10, *(a2 + 33), *(a2 + 34), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 34) - *(a2 + 33)) >> 3));
    std::vector<std::vector<int>>::__assign_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>(v18, *(a2 + 36), *(a2 + 37), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 37) - *(a2 + 36)) >> 3));
  }

  kaldi::CuArray<int>::operator=(this + 78, a2 + 78, v14, v15, v16);
  kaldi::CuMatrix<float>::operator=(v11, a2 + 336);
  if (this != a2)
  {
    std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(this + 48, *(a2 + 48), *(a2 + 49), (*(a2 + 49) - *(a2 + 48)) >> 2);
  }

  *(this + 104) = *(a2 + 104);
  *(this + 420) = *(a2 + 420);
  return this;
}

void sub_174FC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, kaldi::nnet1::UpdatableComponent *a10, uint64_t a11, uint64_t a12)
{
  v20 = v12[48];
  if (v20)
  {
    v12[49] = v20;
    operator delete(v20);
  }

  kaldi::CuMatrix<float>::~CuMatrix(v13);
  v21 = v12[40];
  if (v21)
  {
    free(v21);
  }

  v12[39] = 0;
  v12[40] = 0;
  v12[41] = 0;
  a12 = a11;
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&a12);
  kaldi::CuMatrix<float>::~CuMatrix(v18);
  kaldi::CuMatrix<float>::~CuMatrix(v17);
  kaldi::CuMatrix<float>::~CuMatrix(v16);
  kaldi::CuMatrix<float>::~CuMatrix(v15);
  kaldi::CuMatrix<float>::~CuMatrix(v14);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(a10);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MovingAttentionComponent::~MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this, uint64_t *a2)
{
  v3 = *a2;
  *this = *a2;
  *(this + *(v3 - 24)) = a2[3];
  v4 = *(this + 2);
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  *(this + 2) = 0;
  v5 = *(this + 48);
  if (v5)
  {
    *(this + 49) = v5;
    operator delete(v5);
  }

  kaldi::CuMatrix<float>::~CuMatrix(this + 336);
  v6 = *(this + 40);
  if (v6)
  {
    free(v6);
  }

  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  v7 = (this + 288);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  v7 = (this + 264);
  std::vector<std::vector<std::pair<int,int>>>::__destroy_vector::operator()[abi:ne200100](&v7);
  kaldi::CuMatrix<float>::~CuMatrix(this + 216);
  kaldi::CuMatrix<float>::~CuMatrix(this + 168);
  kaldi::CuMatrix<float>::~CuMatrix(this + 120);
  kaldi::CuMatrix<float>::~CuMatrix(this + 72);
  kaldi::CuMatrix<float>::~CuMatrix(this + 24);
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
}

void kaldi::nnet1::MovingAttentionComponent::~MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this)
{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 424));
}

{
  kaldi::nnet1::UpdatableComponent::~UpdatableComponent((v1 + 424));

  operator delete();
}

void virtual thunk tokaldi::nnet1::MovingAttentionComponent::~MovingAttentionComponent(kaldi::nnet1::MovingAttentionComponent *this)
{
  v2 = (v1 + 424);

  kaldi::nnet1::UpdatableComponent::~UpdatableComponent(v2);
}

{
  kaldi::nnet1::MovingAttentionComponent::~MovingAttentionComponent((this + *(*this - 24)));
}

void kaldi::nnet1::MovingAttentionComponent::InitData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  memset(v55, 0, 24);
  v7 = a2 + 4;
  v8 = a1 + 412;
  v9 = a1 + 408;
  v10 = a1 + 12;
  v11 = a1 + 8;
  while (1)
  {
    if ((*(v7 + *(*a2 - 24)) & 2) != 0)
    {
      goto LABEL_109;
    }

    kaldi::ReadToken(a2, 0, v55, a4, a5);
    if (SHIBYTE(v55[2]) < 0)
    {
      v13 = v55[1];
      if (v55[1] <= 15)
      {
        if (v55[1] != 13)
        {
          if (v55[1] != 14)
          {
            if (v55[1] != 15)
            {
              goto LABEL_102;
            }

            v12 = *v55[0] == 0x6574744178614D3CLL && *(v55[0] + 7) == 0x3E736E6F69746E65;
LABEL_17:
            v14 = v10;
            if (!v12)
            {
              goto LABEL_120;
            }

            goto LABEL_84;
          }

          v22 = *v55[0] == 0x6F4374686769523CLL && *(v55[0] + 6) == 0x3E747865746E6F43;
LABEL_82:
          v14 = v8;
          if (!v22)
          {
            goto LABEL_120;
          }

          goto LABEL_84;
        }

        v18 = *v55[0] == 0x6E6F437466654C3CLL && *(v55[0] + 5) == 0x3E747865746E6F43;
LABEL_63:
        v14 = v9;
        if (!v18)
        {
          goto LABEL_120;
        }

        goto LABEL_84;
      }

      if (v55[1] == 16)
      {
        if (*v55[0] == 0x52656372756F533CLL && *(v55[0] + 8) == 0x3E64657372657665)
        {
LABEL_96:
          *(a1 + 416) = 0;
          goto LABEL_85;
        }

        if (*v55[0] != 0x65677261546F4E3CLL || *(v55[0] + 8) != 0x3E7461636E6F4374)
        {
          if (*v55[0] != 0x636174746165523CLL || *(v55[0] + 8) != 0x3E74656772615468)
          {
            goto LABEL_101;
          }

          goto LABEL_78;
        }

        goto LABEL_97;
      }

      if (v55[1] != 20)
      {
        if (v55[1] != 22)
        {
          goto LABEL_102;
        }

        v16 = *v55[0] == 0x53656372756F533CLL && *(v55[0] + 8) == 0x656D694465746174 && *(v55[0] + 14) == 0x3E6E6F69736E656DLL;
        goto LABEL_37;
      }

      v23 = v55[0];
    }

    else
    {
      if (HIBYTE(v55[2]) <= 0xFu)
      {
        if (HIBYTE(v55[2]) > 0xDu)
        {
          if (HIBYTE(v55[2]) != 14)
          {
            v12 = v55[0] == 0x6574744178614D3CLL && *(v55 + 7) == 0x3E736E6F69746E65;
            goto LABEL_17;
          }

          v22 = v55[0] == 0x6F4374686769523CLL && *(v55 + 6) == 0x3E747865746E6F43;
          goto LABEL_82;
        }

        if (HIBYTE(v55[2]) != 13)
        {
          goto LABEL_99;
        }

        v18 = v55[0] == 0x6E6F437466654C3CLL && *(v55 + 5) == 0x3E747865746E6F43;
        goto LABEL_63;
      }

      if (HIBYTE(v55[2]) == 16)
      {
        if (v55[0] == 0x52656372756F533CLL && v55[1] == 0x3E64657372657665)
        {
          goto LABEL_96;
        }

        if (v55[0] != 0x65677261546F4E3CLL || v55[1] != 0x3E7461636E6F4374)
        {
          if (v55[0] != 0x636174746165523CLL || v55[1] != 0x3E74656772615468)
          {
            goto LABEL_120;
          }

LABEL_78:
          *(a1 + 418) = 1;
          goto LABEL_85;
        }

LABEL_97:
        *(a1 + 417) = 0;
        goto LABEL_85;
      }

      if (HIBYTE(v55[2]) != 20)
      {
        if (HIBYTE(v55[2]) != 22)
        {
          goto LABEL_120;
        }

        v16 = v55[0] == 0x53656372756F533CLL && v55[1] == 0x656D694465746174 && *(&v55[1] + 6) == 0x3E6E6F69736E656DLL;
LABEL_37:
        v14 = v11;
        if (!v16)
        {
          goto LABEL_120;
        }

LABEL_84:
        kaldi::ReadBasicType<int>(a2, 0, v14, a4, a5);
        goto LABEL_85;
      }

      v23 = v55;
    }

    v27 = *v23;
    v28 = v23[1];
    v29 = *(v23 + 4);
    if (v27 != 0x646F7250746F443CLL || v28 != 0x74616C6552746375 || v29 != 1047424873)
    {
      if ((v55[2] & 0x8000000000000000) != 0)
      {
LABEL_101:
        v13 = v55[1];
LABEL_102:
        if (v13 == 12)
        {
          v32 = v55[0];
          goto LABEL_104;
        }
      }

      else
      {
LABEL_99:
        if (HIBYTE(v55[2]) == 12)
        {
          v32 = v55;
LABEL_104:
          v33 = *v32;
          v34 = *(v32 + 2);
          if (v33 == 0x6E6F706D6F432F3CLL && v34 == 1047817829)
          {
LABEL_109:
            v36 = *(a1 + 16);
            if (v36)
            {
              (*(*v36 + 8))(v36);
            }

            v52 = 0;
            v53 = 0;
            v54 = 0;
            kaldi::ReadToken(a2, 0, &v52, a4, a5);
            v37 = kaldi::nnet1::Component::MarkerToComponentType(&v52);
            v51 = 0;
            if (kaldi::g_kaldi_verbose_level >= 3)
            {
              kaldi::KaldiVlogMessage::KaldiVlogMessage(v50, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 143, 3);
              v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Initializing component of type ", 31);
              if (v54 >= 0)
              {
                v39 = &v52;
              }

              else
              {
                v39 = v52;
              }

              if (v54 >= 0)
              {
                v40 = HIBYTE(v54);
              }

              else
              {
                v40 = v53;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v39, v40);
              kaldi::KaldiVlogMessage::~KaldiVlogMessage(v50);
            }

            kaldi::ExpectToken(a2, 0, "<InputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v51 + 4, v41, v42);
            kaldi::ExpectToken(a2, 0, "<OutputDim>");
            kaldi::ReadBasicType<int>(a2, 0, &v51, v43, v44);
            kaldi::nnet1::Component::NewComponentOfType(v37, HIDWORD(v51), v51);
          }
        }
      }

LABEL_120:
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v50, "InitData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 133);
      v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, "Unknown token ", 14);
      if (v55[2] >= 0)
      {
        v46 = v55;
      }

      else
      {
        v46 = v55[0];
      }

      if (v55[2] >= 0)
      {
        v47 = HIBYTE(v55[2]);
      }

      else
      {
        v47 = v55[1];
      }

      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, v46, v47);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v48, ", a typo in config?", 19);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, " (SourceStateDimension|MaxAttentions|LeftContext|RightContext)", 62);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v50);
    }

    *(a1 + 419) = 1;
LABEL_85:
    std::ws[abi:ne200100]<char,std::char_traits<char>>(a2);
  }
}

void *kaldi::nnet1::MovingAttentionComponent::Check(void *this)
{
  if ((*(this + 420) & 1) == 0)
  {
    v1 = this;
    v2 = this[2];
    if (v2)
    {
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 594);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "this is a non-recurrent version, cannot have a recurrent internal component");
        goto LABEL_33;
      }

      if (this)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 597);
        std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "no recursive inclusion");
        goto LABEL_33;
      }
    }

    v3 = *(v1 + 3);
    if (v3 < 1 || (v4 = *(v1 + 2), v4 <= 0))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 600);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "component is not initialized, max attention is ", 47);
      v17 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", source state dimension is ", 28);
      std::ostream::operator<<();
      goto LABEL_33;
    }

    v5 = *(v1 + 102);
    if (v5 < 1 || (v6 = *(v1 + 103), v6 <= 0))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 605);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "component is not initialized, left and right context is ", 56);
      v18 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " ", 1);
      std::ostream::operator<<();
      goto LABEL_33;
    }

    v7 = *(v1 + 417);
    if (v7 == 1)
    {
      if (*(v1 + *(*v1 - 24) + 8) + v4 * v3 != v2[2])
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 610);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "The target input is concatenated. component has input dim ", 58);
        v8 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ", attentions ", 13);
        v9 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", source state dimension ", 25);
        v10 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", however, the internal training component has input dim ", 57);
        std::ostream::operator<<();
        goto LABEL_33;
      }
    }

    else if (v4 * v3 != v2[2])
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 616);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "The target input is not concatenated. component has input dim ", 62);
      v21 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", attentions ", 13);
      v22 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", source state dimension ", 25);
      v23 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, ", however, the internal training component has input dim ", 57);
      std::ostream::operator<<();
      goto LABEL_33;
    }

    v11 = *(v1 + 418);
    v12 = v1 + *(*v1 - 24);
    v13 = *(v12 + 3);
    if (v11 == 1)
    {
      if (v13 != v2[3] + *(v12 + 2))
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 624);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "component has input dim ", 24);
        v14 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " , and output dim ", 18);
        v15 = std::ostream::operator<<();
        v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", and you requested to reattch the target, however, ", 52);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "the internal component has output dim ", 38);
        std::ostream::operator<<();
        goto LABEL_33;
      }
    }

    else if (v13 != v2[3])
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 629);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "component has output dim ", 25);
      v24 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " does not match the internal component's output dim ", 52);
      std::ostream::operator<<();
      goto LABEL_33;
    }

    if (v3 == v5 + v6 + 1)
    {
      if (*(v1 + 419) == 1)
      {
        if (*(v1 + *(*v1 - 24) + 8) != v4)
        {
          kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 641);
          std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "the source state must have the same dimension as the input dimension of the component if want to take the dot product between them");
          goto LABEL_33;
        }

        goto LABEL_23;
      }

      if (v7 & 1) != 0 || (v11)
      {
LABEL_23:
        *(v1 + 420) = 1;
        return this;
      }

      kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 646);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "if not taking the dot production relation from the source and target, you must at least concatenate or reattach the target");
    }

    else
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "Check", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 634);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "the maximum attention is ", 25);
      v19 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " , that does not match the left_context + 1 + right_context, you defined left/right context as ", 95);
      v20 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " ", 1);
      std::ostream::operator<<();
    }

LABEL_33:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
  }

  return this;
}

void kaldi::nnet1::MovingAttentionComponent::ReadData(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  memset(v46, 0, 24);
  v7 = a1 + 412;
  v8 = a1 + 408;
  v9 = a1 + 12;
  v10 = a1 + 8;
  while (kaldi::Peek(a2, a3) == 60)
  {
    kaldi::ReadToken(a2, a3, v46, v11, v12);
    if (SHIBYTE(v46[2]) < 0)
    {
      if (v46[1] == &dword_C + 3)
      {
        v19 = *v46[0] == 0x6574744178614D3CLL && *(v46[0] + 7) == 0x3E736E6F69746E65;
        v16 = v9;
        if (v19)
        {
          goto LABEL_80;
        }
      }

      else if (v46[1] == &dword_14 + 2)
      {
        v17 = *v46[0] == 0x53656372756F533CLL && *(v46[0] + 1) == 0x656D694465746174;
        v18 = v17 && *(v46[0] + 14) == 0x3E6E6F69736E656DLL;
        v16 = v10;
        if (v18)
        {
          goto LABEL_80;
        }
      }

      if (v46[1] == &dword_C + 2)
      {
        v21 = *v46[0] == 0x6F4374686769523CLL && *(v46[0] + 6) == 0x3E747865746E6F43;
        v16 = v7;
        if (v21)
        {
          goto LABEL_80;
        }
      }

      else if (v46[1] == &dword_C + 1)
      {
        v20 = *v46[0] == 0x6E6F437466654C3CLL && *(v46[0] + 5) == 0x3E747865746E6F43;
        v16 = v8;
        if (v20)
        {
          goto LABEL_80;
        }
      }

      v22 = v46[1];
      if (v46[1] != dword_10)
      {
        goto LABEL_88;
      }

      if (*v46[0] == 0x52656372756F533CLL && *(v46[0] + 1) == 0x3E64657372657665)
      {
LABEL_81:
        *(a1 + 416) = 0;
      }

      else if (*v46[0] == 0x65677261546F4E3CLL && *(v46[0] + 1) == 0x3E7461636E6F4374)
      {
LABEL_99:
        *(a1 + 417) = 0;
      }

      else
      {
        v22 = v46[1];
        if (*v46[0] == 0x636174746165523CLL && *(v46[0] + 1) == 0x3E74656772615468)
        {
          goto LABEL_105;
        }

        if ((HIBYTE(v46[2]) & 0x80) == 0)
        {
          goto LABEL_106;
        }

LABEL_88:
        if (v22 != &dword_14)
        {
          goto LABEL_106;
        }

        v30 = v46[0];
LABEL_90:
        v33 = *v30;
        v34 = v30[1];
        v35 = *(v30 + 4);
        if (v33 != 0x646F7250746F443CLL || v34 != 0x74616C6552746375 || v35 != 1047424873)
        {
          goto LABEL_106;
        }

        *(a1 + 419) = 1;
      }
    }

    else
    {
      if (HIBYTE(v46[2]) <= 0xFu)
      {
        switch(HIBYTE(v46[2]))
        {
          case 0xDu:
            v27 = v46[0] == 0x6E6F437466654C3CLL && *(v46 + 5) == 0x3E747865746E6F43;
            v16 = v8;
            if (!v27)
            {
              goto LABEL_106;
            }

            break;
          case 0xEu:
            v31 = v46[0] == 0x6F4374686769523CLL && *(v46 + 6) == 0x3E747865746E6F43;
            v16 = v7;
            if (!v31)
            {
              goto LABEL_106;
            }

            break;
          case 0xFu:
            v15 = v46[0] == 0x6574744178614D3CLL && *(v46 + 7) == 0x3E736E6F69746E65;
            v16 = v9;
            if (!v15)
            {
              goto LABEL_106;
            }

            break;
          default:
            goto LABEL_106;
        }

        goto LABEL_80;
      }

      switch(HIBYTE(v46[2]))
      {
        case 0x10u:
          if (v46[0] == 0x52656372756F533CLL && v46[1] == 0x3E64657372657665)
          {
            goto LABEL_81;
          }

          if (v46[0] == 0x65677261546F4E3CLL && v46[1] == 0x3E7461636E6F4374)
          {
            goto LABEL_99;
          }

          if (v46[0] != 0x636174746165523CLL || v46[1] != 0x3E74656772615468)
          {
LABEL_106:
            if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(v46, "</Component>"))
            {
              kaldi::KaldiErrorMessage::KaldiErrorMessage(v45, "ReadData", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", 176);
              v41 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "Unrecognized token ", 19);
              if (SHIBYTE(v46[2]) >= 0)
              {
                v42 = v46;
              }

              else
              {
                v42 = v46[0];
              }

              if (SHIBYTE(v46[2]) >= 0)
              {
                v43 = HIBYTE(v46[2]);
              }

              else
              {
                v43 = v46[1];
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, v42, v43);
              kaldi::KaldiErrorMessage::~KaldiErrorMessage(v45);
            }

            goto LABEL_107;
          }

LABEL_105:
          *(a1 + 418) = 1;
          break;
        case 0x14u:
          v30 = v46;
          goto LABEL_90;
        case 0x16u:
          v25 = v46[0] == 0x53656372756F533CLL && v46[1] == 0x656D694465746174;
          v26 = v25 && *(&v46[1] + 6) == 0x3E6E6F69736E656DLL;
          v16 = v10;
          if (!v26)
          {
            goto LABEL_106;
          }

LABEL_80:
          kaldi::ReadBasicType<int>(a2, a3, v16, v13, v14);
          break;
        default:
          goto LABEL_106;
      }
    }
  }

LABEL_107:
  v39 = *(a1 + 16);
  if (v39)
  {
    (*(*v39 + 8))(v39);
  }

  v40 = kaldi::nnet1::Component::Read(a2, a3, a4);
  if (v40)
  {
  }

  *(a1 + 16) = v40;
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  if (SHIBYTE(v46[2]) < 0)
  {
    operator delete(v46[0]);
  }
}

void sub_176718(_Unwind_Exception *exception_object)
{
  if (*(v1 - 89) < 0)
  {
    operator delete(*(v1 - 112));
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::MovingAttentionComponent::WriteConfig(uint64_t a1, void *a2, const char *a3, uint64_t a4, const char *a5)
{
  kaldi::WriteToken(a2, a3, "<SourceStateDimension>", a4, a5);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 8));
  kaldi::WriteToken(a2, a3, "<MaxAttentions>", v8, v9);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 12));
  kaldi::WriteToken(a2, a3, "<LeftContext>", v10, v11);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 408));
  kaldi::WriteToken(a2, a3, "<RightContext>", v12, v13);
  kaldi::WriteBasicType<int>(a2, a3, *(a1 + 412));
  if ((*(a1 + 416) & 1) == 0)
  {
    kaldi::WriteToken(a2, a3, "<SourceReversed>", v14, v15);
  }

  if ((*(a1 + 417) & 1) == 0)
  {
    kaldi::WriteToken(a2, a3, "<NoTargetConcat>", v14, v15);
  }

  if (*(a1 + 418) == 1)
  {
    kaldi::WriteToken(a2, a3, "<ReattachTarget>", v14, v15);
  }

  if (*(a1 + 419) == 1)
  {
    kaldi::WriteToken(a2, a3, "<DotProductRelation>", v14, v15);
  }

  kaldi::WriteToken(a2, a3, "</Component>", v14, v15);
  v16 = (*(**(a1 + 16) + 24))(*(a1 + 16));
  kaldi::nnet1::Component::TypeToMarker(v16, &__p);
  kaldi::WriteToken(a2, a3, &__p, v17, v18);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  kaldi::WriteBasicType<int>(a2, a3, *(*(a1 + 16) + 12));
  return kaldi::WriteBasicType<int>(a2, a3, *(*(a1 + 16) + 8));
}

void sub_176924(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t kaldi::nnet1::MovingAttentionComponent::WriteData(void **a1)
{
  ((*a1)[12])(a1);
  v2 = *(*a1[2] + 104);

  return v2();
}

uint64_t virtual thunk tokaldi::nnet1::MovingAttentionComponent::WriteData(void *a1)
{
  v1 = (a1 + *(*a1 - 120));
  ((*v1)[12])(v1);
  v2 = *(*v1[2] + 104);

  return v2();
}

uint64_t kaldi::nnet1::MovingAttentionComponent::Info(kaldi::nnet1::MovingAttentionComponent *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v8);
  (*(*this + 96))(this, &v8, 0);
  (*(**(this + 2) + 64))(__p);
  if ((v7 & 0x80u) == 0)
  {
    v3 = __p;
  }

  else
  {
    v3 = __p[0];
  }

  if ((v7 & 0x80u) == 0)
  {
    v4 = v7;
  }

  else
  {
    v4 = __p[1];
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v8, v3, v4);
  if (v7 < 0)
  {
    operator delete(__p[0]);
  }

  std::stringbuf::str();
  if (v11 < 0)
  {
    operator delete(v10[7].__locale_);
  }

  std::locale::~locale(v10);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_176E80(_Unwind_Exception *a1, void *__p, uint64_t a3, int a4, __int16 a5, char a6, char a7, char a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, ...)
{
  if (SHIBYTE(a11) < 0)
  {
    operator delete(a9);
  }

  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::MovingAttentionComponent::SetTrainOptions(uint64_t a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 24);
  v3 = *(a2 + 8);
  *(v2 + 71) = *(a2 + 23);
  *(v2 + 56) = v3;
  return (*(**(a1 + 16) + 264))();
}

uint64_t virtual thunk tokaldi::nnet1::MovingAttentionComponent::SetTrainOptions(void *a1, uint64_t a2)
{
  v2 = a1 + *(*a1 - 280);
  v3 = &v2[*(*v2 - 24)];
  v4 = *(a2 + 8);
  *(v3 + 71) = *(a2 + 23);
  *(v3 + 56) = v4;
  return (*(**(v2 + 2) + 264))();
}

void kaldi::nnet1::MovingAttentionComponent::SetSourceStates(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v29 = a3[1] - *a3;
  v7 = v29 >> 2;
  v8 = *(a2 + 20);
  v9 = v8 / (v29 >> 2);
  if (v9 * (v29 >> 2) != v8)
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_B8.align + 1, "seq_size * num_seq == source.NumRows()", v6);
  }

  v10 = *(a2 + 16);
  if (v10 != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("SetSourceStates", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_B8.align + 2, "source.NumCols() == source_vec_dim_", v6);
  }

  v11 = (a1 + 408);
  kaldi::CuMatrix<float>::Resize(a1 + 24, v29 >> 2, ((*(a1 + 408) + *(a1 + 412) + v9) * v10), 0, 0);
  if (v7 >= 1)
  {
    v12 = 0;
    v13 = *(a1 + 8);
    v14 = *a3;
    do
    {
      if (*(v14 + 4 * v12) >= 1)
      {
        v15 = 0;
        v16 = (v13 * *v11);
        v17 = v12;
        do
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 24, 0, *(a1 + 44), v16, v13);
          if (v12 >= HIDWORD(v32))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v20);
          }

          v35 = v32 + 4 * v33 * v12;
          v34 = &off_276FE0;
          v36 = DWORD2(v32);
          v37 = *(&v33 + 1);
          if (*(a2 + 20) <= v17)
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v20);
          }

          v21 = *(a2 + 16);
          v22 = *(a2 + 32);
          v30[1] = *(a2 + 8) + 4 * (*(a2 + 24) * v17);
          v30[0] = &off_276FE0;
          v30[2] = v21;
          v30[3] = v22;
          kaldi::CuVectorBase<float>::CopyFromVec(&v34, v30, v18, v19, v20);
          v34 = &off_276FE0;
          v35 = 0;
          LODWORD(v36) = 0;
          v37 = 0;
          __p = off_276F40;
          v32 = 0u;
          v33 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          v13 = *(a1 + 8);
          v16 = (v13 + v16);
          ++v15;
          v14 = *a3;
          v17 += v7;
        }

        while (v15 < *(*a3 + 4 * v12));
        v11 = (a1 + 408);
      }

      ++v12;
    }

    while (v12 != ((v29 >> 2) & 0x7FFFFFFF));
  }

  v23 = (v29 >> 2);
  __p = 0;
  v32 = 0uLL;
  std::vector<std::vector<int>>::assign((a1 + 264), v23, &__p);
  if (__p)
  {
    *&v32 = __p;
    operator delete(__p);
  }

  __p = 0;
  v32 = 0uLL;
  std::vector<std::vector<int>>::assign((a1 + 288), v23, &__p);
  if (__p)
  {
    *&v32 = __p;
    operator delete(__p);
  }

  if (*(a1 + 416))
  {
    std::vector<int>::resize((a1 + 384), v23);
    if (v7 >= 1)
    {
      v24 = 0;
      v25 = 0;
      do
      {
        *(*(a1 + 384) + 4 * v25) = *(*a3 + 4 * v25) + *v11 - 1;
        std::vector<int>::push_back[abi:ne200100]((*(a1 + 288) + v24), v11);
        ++v25;
        v24 += 24;
      }

      while (((v29 >> 2) & 0x7FFFFFFF) != v25);
    }
  }

  else if (v7 >= 1)
  {
    v26 = 0;
    v27 = 0;
    do
    {
      v28 = *(a1 + 288);
      LODWORD(__p) = *(*a3 + 4 * v27) + *v11 - 1;
      std::vector<int>::push_back[abi:ne200100]((v28 + v26), &__p);
      ++v27;
      v26 += 24;
    }

    while (((v29 >> 2) & 0x7FFFFFFF) != v27);
  }
}

void sub_1773FC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *__p, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, uint64_t a24)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::MovingAttentionComponent::GetSourceDiffs(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v26 = a3;
  v9 = a3[1] - *a3;
  v10 = v9 >> 2;
  v11 = *(a2 + 20);
  v12 = v11 / (v9 >> 2);
  if (v12 * (v9 >> 2) != v11)
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.sectname[10], "seq_size * num_seq == source.NumRows()", v8);
  }

  v13 = *(a2 + 16);
  if (v13 != *(a1 + 8))
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.sectname[11], "source.NumCols() == source_vec_dim_", v8);
  }

  if (*(a1 + 140) != v10)
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.sectname[12], "accumed_source_states_diff_.NumRows() == num_seq", v8);
  }

  v14 = *(a1 + 408);
  if (*(a1 + 136) != (v14 + *(a1 + 412) + v12) * v13)
  {
    kaldi::KaldiAssertFailure_("GetSourceDiffs", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.sectname[13], "accumed_source_states_diff_.NumCols() == (left_context_ + seq_size + right_context_) * source_vec_dim_", v8);
  }

  kaldi::CuSubMatrix<float>::CuSubMatrix(&v35, a1 + 120, 0, v10, (v14 * v13), v13 * v12);
  kaldi::CuMatrix<float>::Resize(a4, *(a2 + 20), *(a2 + 16), 0, 0);
  if (v10 >= 1)
  {
    v16 = 0;
    v25 = (v9 >> 2) & 0x7FFFFFFF;
    do
    {
      if (v16 >= (v26[1] - *v26) >> 2)
      {
        std::vector<int>::__throw_out_of_range[abi:ne200100]();
      }

      v17 = *(*v26 + 4 * v16);
      if (v17 >= 1)
      {
        v18 = 0;
        v19 = v16;
        do
        {
          if (*(a4 + 20) <= v19)
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v15);
          }

          v20 = *(a4 + 16);
          v21 = *(a4 + 32);
          v34[1] = *(a4 + 8) + 4 * (*(a4 + 24) * v19);
          v34[0] = &off_276FE0;
          v34[2] = v20;
          v34[3] = v21;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v27, &v35, 0, SHIDWORD(v36), (*(a1 + 8) * v18), *(a1 + 8));
          if (v16 >= HIDWORD(v28))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v24);
          }

          v31 = v28 + 4 * v29 * v16;
          v30 = &off_276FE0;
          v32 = DWORD2(v28);
          v33 = *(&v29 + 1);
          kaldi::CuVectorBase<float>::CopyFromVec(v34, &v30, v22, v23, v24);
          v30 = &off_276FE0;
          v31 = 0;
          LODWORD(v32) = 0;
          v33 = 0;
          v27 = off_276F40;
          v28 = 0u;
          v29 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          ++v18;
          v19 += v10;
        }

        while (v17 != v18);
      }

      ++v16;
    }

    while (v16 != v25);
  }

  v35 = off_276F40;
  v36 = 0u;
  v37 = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
}

uint64_t kaldi::nnet1::MovingAttentionComponent::GetCurrentAlignment(uint64_t a1, std::vector<int> *this)
{
  v4 = -1431655765 * ((*(a1 + 272) - *(a1 + 264)) >> 3);
  std::vector<int>::resize(this, v4);
  if (v4 >= 1)
  {
    begin = this->__begin_;
    v6 = v4 & 0x7FFFFFFF;
    v7 = (*(a1 + 264) + 8);
    do
    {
      v8 = *v7;
      v7 += 3;
      *begin++ = *(v8 - 4) - *(a1 + 408);
      --v6;
    }

    while (v6);
  }

  return 1;
}

uint64_t kaldi::nnet1::MovingAttentionComponent::GetOverallAlignment(uint64_t a1, void *a2)
{
  v4 = -1431655765 * ((*(a1 + 272) - *(a1 + 264)) >> 3);
  std::vector<std::vector<int>>::resize(a2, v4);
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = v4 & 0x7FFFFFFF;
    v7 = *(a1 + 264);
    do
    {
      v8 = (v7 + 24 * v5);
      v9 = *v8;
      while (v9 != v8[1])
      {
        v10 = (*a2 + 24 * v5);
        v11 = *v9++;
        v13 = v11 - *(a1 + 408);
        std::vector<int>::push_back[abi:ne200100](v10, &v13);
        v7 = *(a1 + 264);
        v8 = (v7 + 24 * v5);
      }

      ++v5;
    }

    while (v5 != v6);
  }

  return 1;
}

uint64_t kaldi::nnet1::MovingAttentionComponent::SetSourceVectorDimension(uint64_t this, int a2)
{
  if (*(this + 8) != a2)
  {
    *(this + 8) = a2;
    *(this + 420) = 0;
  }

  return this;
}

uint64_t kaldi::nnet1::MovingAttentionComponent::SetMaxAttentions(uint64_t this, int a2)
{
  if (*(this + 12) != a2)
  {
    *(this + 12) = a2;
    *(this + 420) = 0;
  }

  return this;
}

void kaldi::nnet1::MovingAttentionComponent::PropagateFnc(uint64_t *a1, uint64_t a2, uint64_t a3, int a4)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v38 = a2;
  v8 = *a1;
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.flags + 2, "in.NumCols() == input_dim_", v7);
  }

  if (a4)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.reserved1, "batch_idx == 0", v7);
  }

  v9 = *(a1 + 11);
  v10 = *(a2 + 20);
  v36 = v10 / v9;
  if (v10 / v9 * v9 != v10)
  {
    kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_108.reserved1 + 3, "num_seq * seq_size == in.NumRows()", v7);
  }

  v11 = (*(a1 + 2) * *(a1 + 3));
  a1[13] = *(a3 + 32);
  if (*(a1 + 417) == 1)
  {
    v12 = *(a1 + *(v8 - 24) + 8);
  }

  else
  {
    v12 = 0;
  }

  kaldi::CuMatrix<float>::Resize((a1 + 9), v9, (v12 + v11), 1, 0);
  if (v36 >= 1)
  {
    v13 = 0;
    v14 = 0uLL;
    do
    {
      v48[1] = v14;
      v48[0] = v14;
      v47 = off_276F40;
      v39 = v13;
      if (*(a1 + 417) == 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, (a1 + 9), 0, *(a1 + 23), v11, *(a1 + *(*a1 - 24) + 8));
        *&v48[0] = v46[0];
        *(v48 + 8) = *&v46[1];
        *(&v48[1] + 1) = v46[3];
        v45 = off_276F40;
        memset(v46, 0, sizeof(v46));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, v38, v13 * v9, v9, 0, *(v38 + 16));
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v47, &v45, 111, v15, v16);
      }

      else
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, v38, v13 * v9, v9, 0, *(v38 + 16));
        *&v48[0] = v46[0];
        *(v48 + 8) = *&v46[1];
        *(&v48[1] + 1) = v46[3];
      }

      v45 = off_276F40;
      memset(v46, 0, sizeof(v46));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      if (v9 >= 1)
      {
        v18 = 0;
        v19 = 8;
        do
        {
          v20 = *(*(a1[36] + v19) - 4) - *(a1 + 102);
          if (v20 < 0)
          {
            kaldi::KaldiAssertFailure_("PropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_158.sectname[9], "begin >= 0", v17);
          }

          kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, (a1 + 9), 0, *(a1 + 23), 0, v11);
          if (v18 >= HIDWORD(v46[1]))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v21);
          }

          *&v41 = v46[0] + 4 * LODWORD(v46[2]) * v18;
          v40 = &off_276FE0;
          *(&v41 + 1) = LODWORD(v46[1]);
          *&v42 = v46[3];
          if (v18 >= *(a1 + 11))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v21);
          }

          v22 = *(a1 + 10);
          v23 = a1[7];
          v43[1] = a1[4] + 4 * *(a1 + 12) * v18;
          v43[0] = &off_276FE0;
          v43[2] = v22;
          v43[3] = v23;
          kaldi::CuSubVector<float>::CuSubVector(v44, v43, *(a1 + 2) * v20, v11, v21);
          kaldi::CuVectorBase<float>::CopyFromVec(&v40, v44, v24, v25, v26);
          v40 = &off_276FE0;
          *&v41 = 0;
          DWORD2(v41) = 0;
          *&v42 = 0;
          v45 = off_276F40;
          memset(v46, 0, sizeof(v46));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          ++v18;
          v19 += 24;
        }

        while (v9 != v18);
      }

      if (*(a1 + 419) == 1 && *(a1 + 3) >= 1)
      {
        v27 = 0;
        do
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, (a1 + 9), 0, *(a1 + 23), (*(a1 + 2) * v27), *(a1 + 2));
          kaldi::CuMatrixBase<float>::MulElements(&v45, &v47, v28, v29, v30);
          v45 = off_276F40;
          memset(v46, 0, sizeof(v46));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          ++v27;
        }

        while (v27 < *(a1 + 3));
      }

      kaldi::CuSubMatrix<float>::CuSubMatrix(&v40, a3, v39 * v9, v9, 0, *(a3 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, &v40, 0, SHIDWORD(v41), 0, *(a1[2] + 12));
      v40 = off_276F40;
      v41 = 0u;
      v42 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      (*(*a1[2] + 112))(a1[2], a1 + 9, &v45, 0);
      kaldi::nnet1::MovingAttentionComponent::ComputeAlignments(a1, (a1 + 9), &v45, v31, v32);
      v45 = off_276F40;
      memset(v46, 0, sizeof(v46));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v47 = off_276F40;
      memset(v48, 0, sizeof(v48));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v14 = 0uLL;
      v13 = v39 + 1;
    }

    while (v39 + 1 != v36);
  }

  if (*(a1 + 418))
  {
    v33 = kaldi::CuSubMatrix<float>::CuSubMatrix(&v47, a3, 0, *(a3 + 20), *(a1[2] + 12), *(a1 + *(*a1 - 24) + 8));
    kaldi::CuMatrixBase<float>::CopyFromMat<float>(v33, v38, 111, v34, v35);
    v47 = off_276F40;
    memset(v48, 0, sizeof(v48));
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  }
}

void sub_1780EC(_Unwind_Exception *a1)
{
  *(v2 - 128) = off_276F40;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MovingAttentionComponent::ComputeAlignments(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(a2 + 20);
  v6 = *(a1 + 272) - *(a1 + 264);
  if (0xAAAAAAAAAAAAAAABLL * (v6 >> 3) != v5)
  {
    kaldi::KaldiAssertFailure_("ComputeAlignments", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_158.segname[15], "alignments_.size() == num_seq", a5);
  }

  if (*(a1 + 296) - *(a1 + 288) != v6)
  {
    kaldi::KaldiAssertFailure_("ComputeAlignments", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_158.addr, "current_focal_points_.size() == num_seq", a5);
  }

  v8 = *(a1 + 16);
  if (v8)
  {
    if (v11)
    {
      v13 = v11[13];
      if (!v13)
      {
        kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-linear-transform.h", &stru_108.reserved3 + 3, "linearity_", v12);
      }

LABEL_9:
      kaldi::CuMatrix<float>::Resize(a1 + 216, (v5 + v5 * *(a1 + 12)), v8[3], 1, 0);
      v16 = *(a1 + 12);
      if (v16 >= 1)
      {
        v17 = 0;
        v18 = 0;
        do
        {
          v19 = (*(a1 + 8) * v18);
          kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 216, v17, v5, 0, *(a1 + 232));
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v52, a2, 0, *(a2 + 20), v19, *(a1 + 8));
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v49, v13, 0, *(v13 + 20), v19, *(a1 + 8));
          kaldi::CuMatrixBase<float>::AddMatMat(&__p, &v52, CblasNoTrans, &v49, &stru_68.sectname[8], 1.0, 0.0);
          v49 = off_276F40;
          v50 = 0u;
          v51 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          v52 = off_276F40;
          v53 = 0u;
          v54 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          __p.__begin_ = off_276F40;
          *&__p.__end_ = 0u;
          v56 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          ++v18;
          v16 = *(a1 + 12);
          v17 += v5;
        }

        while (v18 < v16);
      }

      kaldi::CuMatrix<float>::Resize(a1 + 336, v5, v16, 1, 0);
      if (v5 >= 1)
      {
        v23 = 0;
        do
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&__p, a1 + 216, v23, *(a1 + 12) * v5, 0, *(a1 + 232));
          if (v5 != 1)
          {
            kaldi::CuMatrixBase<float>::SetStride(&__p, *(a1 + 240) * v5);
          }

          if (*(a1 + 356) <= v23)
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v24);
          }

          v25 = *(a1 + 352);
          v26 = *(a1 + 368);
          *&v53 = *(a1 + 344) + 4 * (*(a1 + 360) * v23);
          v52 = &off_276FE0;
          *(&v53 + 1) = v25;
          *&v54 = v26;
          if (*(a3 + 20) <= v23)
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.segname[11], "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v24);
          }

          v27 = *(a3 + 16);
          v28 = *(a3 + 32);
          *&v50 = *(a3 + 8) + 4 * (*(a3 + 24) * v23);
          v49 = &off_276FE0;
          *(&v50 + 1) = v27;
          *&v51 = v28;
          kaldi::CuVectorBase<float>::AddMatVec(&v52, &__p, CblasNoTrans, &v49, v24, 1.0, 0.0);
          __p.__begin_ = off_276F40;
          *&__p.__end_ = 0u;
          v56 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          ++v23;
        }

        while (v5 != v23);
      }

      kaldi::CuMatrixBase<float>::FindRowMaxId(a1 + 336, (a1 + 312), v20, v21, v22);
      memset(&__p, 0, sizeof(__p));
      kaldi::CuArray<int>::CopyToVec((a1 + 312), &__p);
      if (v5 >= 1)
      {
        v29 = 0;
        v30 = 4 * v5;
        v31 = 8;
        do
        {
          v32 = *(*(*(a1 + 288) + v31) - 4);
          v33 = (*(a1 + 264) + v31 - 8);
          LODWORD(v52) = __p.__begin_[v29 / 4] + v32 - *(a1 + 408);
          std::vector<int>::push_back[abi:ne200100](v33, &v52);
          if (*(a1 + 416) == 1)
          {
            v34 = *(*(*(a1 + 264) + v31) - 4);
            LODWORD(v52) = v34;
            v35 = *(a1 + 288);
            if (v34 == v32)
            {
              if (*(v35 + v31) - *(v35 + v31 - 8) < 5uLL)
              {
                v34 = v32;
              }

              else
              {
                v34 = v32;
                if (*(*(v35 + v31) - 8) == v32)
                {
                  v34 = v32 + 1;
                  LODWORD(v52) = v32 + 1;
                }
              }
            }

            v38 = (v35 + v31 - 8);
            v43 = (*(a1 + 384) + v29);
            if (*v43 >= v34)
            {
              v43 = &v52;
            }

            if (*v43 >= *(a1 + 408))
            {
              v42 = v43;
            }

            else
            {
              v42 = (a1 + 408);
            }
          }

          else
          {
            v36 = *(*(*(a1 + 264) + v31) - 4);
            LODWORD(v52) = v36;
            v37 = *(a1 + 288);
            v38 = (v37 + v31 - 8);
            if (v36 == v32)
            {
              v39 = *(v37 + v31);
              v40 = *v38;
              v41 = v39 - *v38;
              if (v41 >= 5 && *(v40 + v41 - 8) == v32)
              {
                LODWORD(v52) = --v32;
              }
            }

            else
            {
              v40 = *v38;
              v32 = v36;
            }

            if (*v40 >= v32)
            {
              v40 = &v52;
            }

            if (*v40 >= *(a1 + 408))
            {
              v42 = v40;
            }

            else
            {
              v42 = (a1 + 408);
            }
          }

          std::vector<int>::push_back[abi:ne200100](v38, v42);
          v29 += 4;
          v31 += 24;
        }

        while (v30 != v29);
      }

      if (__p.__begin_)
      {
        __p.__end_ = __p.__begin_;
        operator delete(__p.__begin_);
      }

      return;
    }

    if (v14)
    {
      v13 = v14[14];
      if (!v13)
      {
        kaldi::KaldiAssertFailure_("Linearity", "../subproject/libquasar/libkaldi/src/nnet/nnet-affine-transform.h", &stru_248.sectname[9], "linearity_", v15);
      }

      goto LABEL_9;
    }
  }

  if (v5 >= 1)
  {
    v44 = 0;
    v45 = 4 * v5;
    v46 = 8;
    do
    {
      LODWORD(__p.__begin_) = *(*(*(a1 + 288) + v46) - 4);
      std::vector<int>::push_back[abi:ne200100]((*(a1 + 264) + v46 - 8), &__p);
      v47 = (*(a1 + 288) + v46 - 8);
      if (*(a1 + 416) == 1)
      {
        LODWORD(v52) = LODWORD(__p.__begin_) + 1;
        if (*(*(a1 + 384) + v44) <= SLODWORD(__p.__begin_))
        {
          v48 = (*(a1 + 384) + v44);
        }

        else
        {
          v48 = &v52;
        }
      }

      else
      {
        LODWORD(v52) = LODWORD(__p.__begin_) - 1;
        if (SLODWORD(__p.__begin_) <= *(a1 + 408))
        {
          v48 = (a1 + 408);
        }

        else
        {
          v48 = &v52;
        }
      }

      std::vector<int>::push_back[abi:ne200100](v47, v48);
      v46 += 24;
      v44 += 4;
    }

    while (v45 != v44);
  }
}

void sub_1788D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, void *__p, uint64_t a21)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::MovingAttentionComponent::BackpropagateFnc(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v51 = a2;
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1A8.addr + 3, "in.NumCols() == input_dim_", v9);
  }

  if (a6)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1A8.addr + 4, "batch_idx == 0", v9);
  }

  v10 = *(a1 + 44);
  v11 = *(a2 + 20);
  v12 = (v11 / v10);
  if (v12 * v10 != v11)
  {
    kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1A8.addr + 7, "num_seq * seq_size == in.NumRows()", v9);
  }

  v13 = *(a1 + 8);
  v14 = *(a1 + 12);
  v15 = *(a5 + 32);
  *(a1 + 152) = v15;
  *(a1 + 200) = v15;
  kaldi::CuMatrix<float>::Resize(a1 + 120, v10, *(a1 + 40), 0, 0);
  kaldi::CuMatrix<float>::Resize(a1 + 168, v10, *(*(a1 + 16) + 8), 0, 0);
  if (v12 >= 1)
  {
    v16 = 0;
    v53 = v13 * v14;
    v48 = v12;
    do
    {
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v74, v51, v10 * v16, v10, 0, *(v51 + 16));
      v17 = *(a1 + 16);
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v68, a3, v10 * v16, v10, 0, *(a3 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v71, &v68, 0, SHIDWORD(v69), 0, *(*(a1 + 16) + 12));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v62, a4, v10 * v16, v10, 0, *(a4 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v65, &v62, 0, SHIDWORD(v63), 0, *(*(a1 + 16) + 12));
      (*(*v17 + 128))(v17, &v74, &v71, &v65, a1 + 168, 0);
      v65 = off_276F40;
      v66 = 0u;
      v67 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v62 = off_276F40;
      v63 = 0u;
      v64 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v71 = off_276F40;
      v72 = 0u;
      v73 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v68 = off_276F40;
      v69 = 0u;
      v70 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v71, a5, v10 * v16, v10, 0, *(a5 + 16));
      if (v10 >= 1 && (*(a1 + 419) & 1) != 0)
      {
        for (i = 0; i != v10; ++i)
        {
          v20 = (*(*(*(a1 + 288) + 24 * i) + 4 * v16) - *(a1 + 408)) * *(a1 + 8);
          if (v20 < 0)
          {
            kaldi::KaldiAssertFailure_("BackpropagateFnc", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1A8.flags + 1, "begin >= 0", v18);
          }

          if (*(a1 + 12) >= 1)
          {
            v21 = 0;
            do
            {
              if (i >= HIDWORD(v72))
              {
                kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v18);
              }

              *&v69 = v72 + 4 * v73 * i;
              v68 = &off_276FE0;
              *(&v69 + 1) = DWORD2(v72);
              *&v70 = *(&v73 + 1);
              if (i >= *(a1 + 44))
              {
                kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v18);
              }

              v22 = *(a1 + 40);
              v23 = *(a1 + 56);
              *&v63 = *(a1 + 32) + 4 * *(a1 + 48) * i;
              v62 = &off_276FE0;
              *(&v63 + 1) = v22;
              *&v64 = v23;
              kaldi::CuSubVector<float>::CuSubVector(&v65, &v62, v20 + *(a1 + 8) * v21, *(a1 + 8), v18);
              if (i >= *(a1 + 188))
              {
                kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v24);
              }

              v25 = *(a1 + 184);
              v26 = *(a1 + 200);
              v55 = *(a1 + 176) + 4 * *(a1 + 192) * i;
              v54 = &off_276FE0;
              v56 = v25;
              v57 = v26;
              kaldi::CuSubVector<float>::CuSubVector(&v58, &v54, *(a1 + 8) * v21, *(a1 + 8), v24);
              kaldi::CuVectorBase<float>::AddVecVec(&v68, &v65, &v58, v27, v28, 1.0, 1.0);
              ++v21;
            }

            while (v21 < *(a1 + 12));
          }
        }
      }

      if (*(a1 + 417) == 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v68, a1 + 168, 0, *(a1 + 188), v53, *(a1 + 8 + *(*a1 - 24)));
        kaldi::CuMatrixBase<float>::AddMat(&v71, &v68, 111, v29, v30, 1.0, 1.0);
        v68 = off_276F40;
        v69 = 0u;
        v70 = 0u;
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      }

      if (v10 >= 1)
      {
        for (j = 0; j != v10; ++j)
        {
          v32 = (*(*(*(a1 + 288) + 24 * j) + 4 * v16) - *(a1 + 408)) * *(a1 + 8);
          if (*(a1 + 419) == 1)
          {
            if (*(a1 + 12) >= 1)
            {
              v33 = 0;
              do
              {
                if (j >= *(a1 + 140))
                {
                  kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v18);
                }

                v34 = *(a1 + 136);
                v35 = *(a1 + 152);
                *&v66 = *(a1 + 128) + 4 * *(a1 + 144) * j;
                v65 = &off_276FE0;
                *(&v66 + 1) = v34;
                *&v67 = v35;
                kaldi::CuSubVector<float>::CuSubVector(&v68, &v65, v32 + *(a1 + 8) * v33, *(a1 + 8), v18);
                if (j >= HIDWORD(v75))
                {
                  kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v36);
                }

                *&v63 = v75 + 4 * v76 * j;
                v62 = &off_276FE0;
                *(&v63 + 1) = DWORD2(v75);
                *&v64 = *(&v76 + 1);
                if (j >= *(a1 + 188))
                {
                  kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v36);
                }

                v37 = *(a1 + 184);
                v38 = *(a1 + 200);
                v55 = *(a1 + 176) + 4 * *(a1 + 192) * j;
                v54 = &off_276FE0;
                v56 = v37;
                v57 = v38;
                kaldi::CuSubVector<float>::CuSubVector(&v58, &v54, *(a1 + 8) * v33, *(a1 + 8), v36);
                kaldi::CuVectorBase<float>::AddVecVec(&v68, &v62, &v58, v39, v40, 1.0, 1.0);
                ++v33;
              }

              while (v33 < *(a1 + 12));
            }
          }

          else
          {
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v68, a1 + 120, 0, *(a1 + 140), ((*(*(*(a1 + 288) + 24 * j) + 4 * v16) - *(a1 + 408)) * *(a1 + 8)), v53);
            if (j >= HIDWORD(v69))
            {
              kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v41);
            }

            *&v63 = v69 + 4 * v70 * j;
            v62 = &off_276FE0;
            *(&v63 + 1) = DWORD2(v69);
            *&v64 = *(&v70 + 1);
            kaldi::CuSubMatrix<float>::CuSubMatrix(&v65, a1 + 168, 0, *(a1 + 188), 0, v53);
            if (j >= HIDWORD(v66))
            {
              kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v44);
            }

            v59 = v66 + 4 * v67 * j;
            v58 = &off_276FE0;
            v60 = DWORD2(v66);
            v61 = *(&v67 + 1);
            v45.n128_u32[0] = 1.0;
            kaldi::CuVectorBase<float>::AddVec(&v62, &v58, v45, 1.0, v42, v43, v44);
            v58 = &off_276FE0;
            v59 = 0;
            LODWORD(v60) = 0;
            v61 = 0;
            v65 = off_276F40;
            v66 = 0u;
            v67 = 0u;
            fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
            v62 = &off_276FE0;
            *&v63 = 0;
            DWORD2(v63) = 0;
            *&v64 = 0;
            v68 = off_276F40;
            v69 = 0u;
            v70 = 0u;
            fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          }
        }
      }

      v71 = off_276F40;
      v72 = 0u;
      v73 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v74 = off_276F40;
      v75 = 0u;
      v76 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      ++v16;
    }

    while (v16 != v48);
  }

  if (*(a1 + 418))
  {
    kaldi::CuSubMatrix<float>::CuSubMatrix(&v74, a4, 0, *(a4 + 20), *(*(a1 + 16) + 12), *(a1 + *(*a1 - 24) + 8));
    kaldi::CuMatrixBase<float>::AddMat(a5, &v74, 111, v46, v47, 1.0, 1.0);
    v74 = off_276F40;
    v75 = 0u;
    v76 = 0u;
    fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  }
}

void sub_1794A8(_Unwind_Exception *a1)
{
  *(v2 - 128) = off_276F40;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  _Unwind_Resume(a1);
}

void kaldi::nnet1::MovingAttentionComponent::AccumGradients(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  kaldi::nnet1::MovingAttentionComponent::Check(a1);
  v39 = a2;
  v10 = *a1;
  if (*(a2 + 16) != *(a1 + *(*a1 - 24) + 8))
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1F8.addr, "input.NumCols() == input_dim_", v9);
  }

  if (a5)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1F8.addr + 1, "batch_idx == 0", v9);
  }

  v11 = *(a1 + 11);
  v12 = *(a2 + 20);
  v13 = (v12 / v11);
  if (v13 * v11 != v12)
  {
    kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1F8.addr + 4, "num_seq * seq_size == input.NumRows()", v9);
  }

  v14 = (*(a1 + 2) * *(a1 + 3));
  a1[13] = a4;
  if (*(a1 + 417) == 1)
  {
    v15 = *(a1 + *(v10 - 24) + 8);
  }

  else
  {
    v15 = 0;
  }

  kaldi::CuMatrix<float>::Resize((a1 + 9), v11, (v15 + v14), 1, 0);
  v16 = (*(*a1[2] + 272))();
  v49 = off_282980;
  v17 = *(v16 + 23);
  *v50 = *(v16 + 8);
  *(&v50[3] + 3) = v17;
  v18 = v50[0];
  v50[0] = v50[0] / v13;
  (*(*a1[2] + 264))();
  v37 = v13;
  if (v13 >= 1)
  {
    v19 = 0;
    v36 = a4;
    do
    {
      memset(v48, 0, sizeof(v48));
      v47 = off_276F40;
      if (*(a1 + 417) == 1)
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, (a1 + 9), 0, *(a1 + 23), v14, *(a1 + *(*a1 - 24) + 8));
        v48[0] = v46[0];
        *&v48[1] = *&v46[1];
        v48[3] = v46[3];
        v45 = off_276F40;
        memset(v46, 0, sizeof(v46));
        fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, v39, v11 * v19, v11, 0, *(v39 + 16));
        kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v47, &v45, 111, v20, v21);
      }

      else
      {
        kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, v39, v11 * v19, v11, 0, *(v39 + 16));
        v48[0] = v46[0];
        *&v48[1] = *&v46[1];
        v48[3] = v46[3];
      }

      v45 = off_276F40;
      memset(v46, 0, sizeof(v46));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      if (v11 >= 1)
      {
        for (i = 0; i != v11; ++i)
        {
          v24 = *(*(a1[36] + 24 * i) + 4 * v19) - *(a1 + 102);
          if (v24 < 0)
          {
            kaldi::KaldiAssertFailure_("AccumGradients", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-moving-attention-component.cc", &stru_1F8.reloff + 1, "begin >= 0", v22);
          }

          kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, (a1 + 9), 0, *(a1 + 23), 0, v14);
          if (i >= HIDWORD(v46[1]))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v25);
          }

          *&v41 = v46[0] + 4 * LODWORD(v46[2]) * i;
          v40 = &off_276FE0;
          *(&v41 + 1) = LODWORD(v46[1]);
          *&v42 = v46[3];
          if (i >= *(a1 + 11))
          {
            kaldi::KaldiAssertFailure_("Row", "../subproject/libquasar/libkaldi/src/cudamatrix/cu-matrix.h", &stru_1F8.addr + 1, "static_cast<UnsignedMatrixIndexT>(i) < static_cast<UnsignedMatrixIndexT>(num_rows_)", v25);
          }

          v26 = *(a1 + 10);
          v27 = a1[7];
          v43[1] = a1[4] + 4 * *(a1 + 12) * i;
          v43[0] = &off_276FE0;
          v43[2] = v26;
          v43[3] = v27;
          kaldi::CuSubVector<float>::CuSubVector(v44, v43, *(a1 + 2) * v24, v14, v25);
          kaldi::CuVectorBase<float>::CopyFromVec(&v40, v44, v28, v29, v30);
          v40 = &off_276FE0;
          *&v41 = 0;
          DWORD2(v41) = 0;
          *&v42 = 0;
          v45 = off_276F40;
          memset(v46, 0, sizeof(v46));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
        }
      }

      if (*(a1 + 419) == 1 && *(a1 + 3) >= 1)
      {
        v31 = 0;
        do
        {
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, (a1 + 9), 0, *(a1 + 23), (*(a1 + 2) * v31), *(a1 + 2));
          kaldi::CuMatrixBase<float>::MulElements(&v45, &v47, v32, v33, v34);
          v45 = off_276F40;
          memset(v46, 0, sizeof(v46));
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          ++v31;
        }

        while (v31 < *(a1 + 3));
      }

      v35 = a1[2];
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v40, a3, v11 * v19, v11, 0, *(a3 + 16));
      kaldi::CuSubMatrix<float>::CuSubMatrix(&v45, &v40, 0, SHIDWORD(v41), 0, *(a1[2] + 12));
      (*(*v35 + 232))(v35, a1 + 9, &v45, v36, 0);
      v45 = off_276F40;
      memset(v46, 0, sizeof(v46));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      v40 = off_276F40;
      v41 = 0u;
      v42 = 0u;
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      (*(*a1[2] + 256))();
      v47 = off_276F40;
      memset(v48, 0, sizeof(v48));
      fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
      ++v19;
    }

    while (v19 != v37);
  }

  v50[0] = v18;
  (*(*a1[2] + 264))(a1[2], &v49);
  kaldi::nnet1::NnetTrainOptions::~NnetTrainOptions(&v49);
}

uint64_t *kaldi::nnet1::Nnet::QuantizeComponents<kaldi::nnet1::Quantizable8BitComponentItf>(const void ***this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  for (i = *this; i != this[1]; ++i)
  {
    if (*i)
    {
      if (v7)
      {
        v8 = v7;
        v9 = kaldi::nnet1::Quantizable8BitComponentItf::CopyQuantized(v7);
        if (v9)
        {
          v10 = v9;
          kaldi::nnet1::Component::Delete(v11, (&dword_0 + 1));
          *i = v10;
        }
      }
    }
  }

  return kaldi::nnet1::Nnet::CheckDimensions(this, a2, a3, a4, a5);
}

uint64_t *kaldi::nnet1::Nnet::CheckDimensions(uint64_t *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *this;
  v5 = this[1];
  if ((v5 - *this) >= 9)
  {
    v7 = this;
    v8 = 0;
    while (1)
    {
      this = *(v6 + 8 * v8);
      if (!this)
      {
        kaldi::KaldiAssertFailure_("CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_568.segname[2], "components_[i] != NULL", a5);
      }

      if (*(this + 3) != *(*(v6 + 8 * v8 + 8) + 8))
      {
        break;
      }

      if (v8)
      {
        this = (*(*this + 24))(this, a2, a3, a4, a5);
        switch(this)
        {
          case 0x10C:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1414);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "The word vec component can only be the first component");
            goto LABEL_33;
          case 0x10E:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1416);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "The word multivec component can only be the first component");
            goto LABEL_33;
          case 0x10F:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1418);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "The compressed word vec component can only be the first component");
            goto LABEL_33;
        }

        v6 = *v7;
        v5 = v7[1];
      }

      v9 = v8 + 2;
      ++v8;
      if (v9 >= (v5 - v6) >> 3)
      {
        if (((v5 - v6) >> 3) <= 1)
        {
          return this;
        }

        this = (*(**(v5 - 8) + 24))(*(v5 - 8), a2, a3, a4, a5);
        switch(this)
        {
          case 0x10F:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1429);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "The compressed word vec component can only be the first component");
            break;
          case 0x10E:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1427);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "The word multivec component can only be the first component");
            break;
          case 0x10C:
            kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1425);
            std::operator<<[abi:ne200100]<std::char_traits<char>>(v25, "The word vec component can only be the first component");
            break;
          default:
            return this;
        }

LABEL_33:
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v25);
      }
    }

    v22 = v8;
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v25, "CheckDimensions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1406);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "Dimension mismatch between output/input of components ", 54);
    v11 = (*(**(*v7 + 8 * v22) + 24))(*(*v7 + 8 * v22));
    kaldi::nnet1::Component::TypeToMarker(v11, &v24);
    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v12 = &v24;
    }

    else
    {
      v12 = v24.__r_.__value_.__r.__words[0];
    }

    if ((v24.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v24.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v24.__r_.__value_.__l.__size_;
    }

    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, v12, size);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " and ", 5);
    v16 = *(*v7 + 8 * v22 + 8);
    v17 = (*(*v16 + 24))(v16);
    kaldi::nnet1::Component::TypeToMarker(v17, &v23);
    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v18 = &v23;
    }

    else
    {
      v18 = v23.__r_.__value_.__r.__words[0];
    }

    if ((v23.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v19 = HIBYTE(v23.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v19 = v23.__r_.__value_.__l.__size_;
    }

    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v18, v19);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", ", 2);
    v21 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, " <--> ", 6);
    std::ostream::operator<<();
    std::string::~string(&v23);
    std::string::~string(&v24);
    goto LABEL_33;
  }

  return this;
}

void sub_17A608(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *a17, uint64_t a18, int a19, __int16 a20, char a21, char a22, char a23)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  if (a22 < 0)
  {
    operator delete(a17);
  }

  kaldi::KaldiErrorMessage::~KaldiErrorMessage(&a23);
}

uint64_t *kaldi::nnet1::Nnet::QuantizeComponents<kaldi::nnet1::Quantizable16BitComponentItf>(const void ***this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  for (i = *this; i != this[1]; ++i)
  {
    if (*i)
    {
      if (v7)
      {
        v8 = v7;
        v9 = kaldi::nnet1::Quantizable16BitComponentItf::CopyQuantized(v7);
        if (v9)
        {
          v10 = v9;
          kaldi::nnet1::Component::Delete(v11, (&dword_0 + 1));
          *i = v10;
        }
      }
    }
  }

  return kaldi::nnet1::Nnet::CheckDimensions(this, a2, a3, a4, a5);
}

double kaldi::nnet1::NnetCorrPacker::NnetCorrPacker(kaldi::nnet1::NnetCorrPacker *this)
{
  *this = 0;
  result = 0.0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 5) = -1082130432;
  return result;
}

uint64_t kaldi::nnet1::Nnet::GetComponent(kaldi::nnet1::Nnet *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (a2 >= ((*(this + 1) - *this) >> 3))
  {
    kaldi::KaldiAssertFailure_("GetComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_338.reserved3, "static_cast<size_t>(component) < components_.size()", a5);
  }

  return *(*this + 8 * a2);
}

{
  if (a2 >= ((*(this + 1) - *this) >> 3))
  {
    kaldi::KaldiAssertFailure_("GetComponent", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_338.reserved1 + 3, "static_cast<size_t>(component) < components_.size()", a5);
  }

  return *(*this + 8 * a2);
}

void kaldi::nnet1::Nnet::Nnet(kaldi::nnet1::Nnet *this, const kaldi::nnet1::NnetTrainOptions **a2)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  operator new();
}

void sub_17AA00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  a10 = (v10 + 120);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&a10);
  a10 = (v10 + 72);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&a10);
  v12 = *(v10 + 48);
  if (v12)
  {
    *(v10 + 56) = v12;
    operator delete(v12);
  }

  v13 = *(v10 + 24);
  if (v13)
  {
    *(v10 + 32) = v13;
    operator delete(v13);
  }

  v14 = *v10;
  if (*v10)
  {
    *(v10 + 8) = v14;
    operator delete(v14);
  }

  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::SetTrainOptions(const void **this, const kaldi::nnet1::NnetTrainOptions *lpsrc, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = a3;
  if (((this[1] - *this) >> 3) >= 1)
  {
    v8 = 0;
    do
    {
      Component = kaldi::nnet1::Nnet::GetComponent(this, v8, a3, a4, a5);
      if ((*(*Component + 32))(Component))
      {
        v10 = kaldi::nnet1::Nnet::GetComponent(this, v8, a3, a4, a5);
        (*(*v10 + 264))(v10, lpsrc);
      }

      ++v8;
    }

    while (v8 < ((this[1] - *this) >> 3));
  }

  v16 = this[18];
  if (v15)
  {
    if (v16)
    {
      (*(*v16 + 8))(v16);
    }

    operator new();
  }

  v17 = *(lpsrc + 8);
  *(v16 + 23) = *(lpsrc + 23);
  *(v16 + 8) = v17;
  if (v5 && kaldi::g_kaldi_verbose_level >= 2)
  {
    kaldi::KaldiVlogMessage::KaldiVlogMessage(v19, "SetTrainOptions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1536, 2);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "a regular trainer option. ", 26);
    kaldi::nnet1::operator<<(v18, this[18]);
    kaldi::KaldiVlogMessage::~KaldiVlogMessage(v19);
  }

  if (v5)
  {
    kaldi::nnet1::Nnet::ResetInternalBuffers(this, v11, v12, v13, v14);
    kaldi::nnet1::Nnet::ResetRecurrentFlag(this);
  }
}

void sub_17AE08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiVlogMessage::~KaldiVlogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::ResetBuffersAndStates(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::Nnet::ResetInternalBuffers(this, a2, a3, a4, a5);

  kaldi::nnet1::Nnet::ResetRecurrentFlag(this);
}

void kaldi::nnet1::Nnet::Read(kaldi::nnet1::Nnet *a1, uint64_t a2)
{
  v14 = 0;
  kaldi::Input::Input(&v13, a2);
  kaldi::Input::Stream(v4);
  kaldi::nnet1::Nnet::Read(a1, v5, v14, 0);
  kaldi::Input::Close(&v13);
  if (((*(a1 + 1) - *a1) & 0x7FFFFFFF8) == 0 && kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1241);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "The network '", 13);
    v8 = *(a2 + 23);
    if (v8 >= 0)
    {
      v9 = a2;
    }

    else
    {
      v9 = *a2;
    }

    if (v8 >= 0)
    {
      v10 = *(a2 + 23);
    }

    else
    {
      v10 = *(a2 + 8);
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, v9, v10);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "' is empty.", 11);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(v12);
  }

  kaldi::Input::~Input(&v13);
}

void *kaldi::nnet1::Nnet::SetGradientNormalization(void *result, uint64_t a2, int a3, int a4, float a5)
{
  v7 = result;
  if (a3)
  {
    v8 = result[3];
    if (v8 != result[4])
    {
      do
      {
        v9 = *v8;
        v10 = **v8;
        if (v11)
        {
          result = kaldi::nnet1::ParallelComponent::SetGradientNormalization(v11, a2, 1, a5);
        }

        else
        {
          result = (*(*&v9[*(v10 - 24)] + 240))(&v9[*(v10 - 24)], a2, a5);
        }

        ++v8;
      }

      while (v8 != v7[4]);
    }
  }

  else
  {
    if (a4)
    {
      v12 = -2;
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 + ((result[1] - *result) >> 3);
    if (v13 >= 0)
    {
      v14 = 0;
      v15 = (v13 + 1);
      do
      {
        result = *(*v7 + 8 * v14);
        if (result)
        {
          if (result)
          {
            result = (*(*result + 240))(result, a2, a5);
          }
        }

        ++v14;
      }

      while (v15 != v14);
    }
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::Destroy(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *this;
  if (((*(this + 1) - *this) >> 3) >= 1)
  {
    v7 = 0;
    do
    {
      kaldi::nnet1::Component::Delete(*(v6 + 8 * v7++), (&dword_0 + 1));
      v6 = *this;
    }

    while (v7 < ((*(this + 1) - *this) >> 3));
  }

  v8 = *(this + 44);
  for (i = *(this + 45); v8 != i; ++v8)
  {
    if (*v8)
    {
      kaldi::CuWorkspace::~CuWorkspace(*v8, a2, a3, a4, a5);
      operator delete();
    }
  }

  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(this, 0);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(this + 9, 0);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(this + 15, 0);
  std::vector<fst::QueueBase<int> *,std::allocator<fst::QueueBase<int> *>>::resize(this + 44, 0);
  result = *(this + 20);
  if (result)
  {
    result = (*(*result + 8))(result);
    *(this + 20) = 0;
  }

  return result;
}

void kaldi::nnet1::Nnet::~Nnet(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::Nnet::Destroy(this, a2, a3, a4, a5);
  v6 = *(this + 18);
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 44);
  if (v7)
  {
    *(this + 45) = v7;
    operator delete(v7);
  }

  v8 = *(this + 40);
  if (v8)
  {
    free(v8);
  }

  *(this + 39) = 0;
  *(this + 40) = 0;
  *(this + 41) = 0;
  v9 = *(this + 35);
  if (v9)
  {
    *(this + 36) = v9;
    operator delete(v9);
  }

  v14 = (this + 256);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v14);
  kaldi::CuVector<float>::~CuVector(this + 28);
  kaldi::CuVector<float>::~CuVector(this + 24);
  v10 = *(this + 21);
  if (v10)
  {
    operator delete(v10);
  }

  v14 = (this + 120);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (this + 96);
  std::vector<kaldi::CuVector<float>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v14 = (this + 72);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::__destroy_vector::operator()[abi:ne200100](&v14);
  v11 = *(this + 6);
  if (v11)
  {
    *(this + 7) = v11;
    operator delete(v11);
  }

  v12 = *(this + 3);
  if (v12)
  {
    *(this + 4) = v12;
    operator delete(v12);
  }

  v13 = *this;
  if (*this)
  {
    *(this + 1) = v13;
    operator delete(v13);
  }
}

void *kaldi::nnet1::Nnet::ResetHistoryStateIfExists(void *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || (v6 = result, *(result[18] + 32) <= a4))
  {
    kaldi::KaldiAssertFailure_("ResetHistoryStateIfExists", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_158.flags + 3, "batch_idx >= 0 && batch_idx < opts_->num_subbatches", a5);
  }

  v7 = result[6];
  if (v7 != result[7])
  {
    do
    {
      v10 = *v7++;
      result = (*(*v10 + 24))(v10, a2, a3, a4, a5);
    }

    while (v7 != v6[7]);
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::ResetHistoryStateIfExists(uint64_t this)
{
  v1 = *(this + 48);
  if (v1 != *(this + 56))
  {
    v2 = this;
    do
    {
      v3 = *v1++;
      this = (*(*v3 + 32))(v3);
    }

    while (v1 != *(v2 + 56));
  }

  return this;
}

uint64_t kaldi::nnet1::Nnet::HistoryStateSize(kaldi::nnet1::Nnet *this)
{
  v1 = *(this + 6);
  if (v1 == *(this + 7))
  {
    return 0;
  }

  LODWORD(v3) = 0;
  do
  {
    v4 = *v1++;
    v3 = (*(*v4 + 16))(v4) + v3;
  }

  while (v1 != *(this + 7));
  return v3;
}

uint64_t kaldi::nnet1::Nnet::GetHistoryState(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 56);
  v4 = *(result + 48);
  if (v4 != v3)
  {
    if (v3 - v4 == 8)
    {
      v7 = *(**v4 + 40);

      return v7();
    }

    else
    {
      v8 = result;
      LODWORD(v9) = 0;
      do
      {
        v11 = *v4++;
        v9 = (*(*v11 + 16))(v11) + v9;
      }

      while (v4 != *(v8 + 56));
      kaldi::CuMatrix<float>::Resize(a2, v10, v9, 1, 0);
      v23 = 0u;
      v22 = 0u;
      v21 = off_276F88;
      v24 = 0;
      v13 = *(v8 + 48);
      if (v13 == *(v8 + 56))
      {
        LODWORD(v14) = 0;
      }

      else
      {
        v14 = 0;
        do
        {
          (*(**v13 + 40))(*v13, &v21, a3);
          if (HIDWORD(v22) != v10)
          {
            kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_1A8.segname[13], "comp_history.NumRows() == num_seq", v15);
          }

          kaldi::CuSubMatrix<float>::CuSubMatrix(&v18, a2, 0, *(a2 + 20), v14, SDWORD2(v22));
          kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v18, &v21, 111, v16, v17);
          v18 = off_276F40;
          v19 = 0u;
          v20 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          v14 = (DWORD2(v22) + v14);
          ++v13;
        }

        while (v13 != *(v8 + 56));
      }

      if (v14 != v9)
      {
        kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_1A8.addr + 1, "count == history_size", v12);
      }

      return kaldi::CuMatrix<float>::~CuMatrix(&v21);
    }
  }

  return result;
}

void sub_17B7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  kaldi::CuMatrix<float>::~CuMatrix(va);
  _Unwind_Resume(a1);
}

void *kaldi::nnet1::Nnet::GetHistoryState(void *result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = result[6];
  v5 = result[7];
  v7 = v5 - v6;
  if (v7)
  {
    if (v7 == 1)
    {
      v11 = *(**v6 + 48);

      return v11();
    }

    else
    {
      v12 = result;
      if (v6 == v5)
      {
        v13 = 0;
      }

      else
      {
        LODWORD(v13) = 0;
        do
        {
          v14 = *v6++;
          v13 = (*(*v14 + 16))(v14, a2, a3, a4, a5) + v13;
        }

        while (v6 != v12[7]);
      }

      kaldi::CuVector<float>::Resize(a2, v13, 1u, a4, a5);
      v23[1] = 0;
      v24 = 0;
      v25 = 0;
      v23[0] = off_277020;
      v16 = v12[6];
      if (v16 == v12[7])
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        do
        {
          (*(**v16 + 48))(*v16, v23, a3, a4);
          kaldi::CuSubVector<float>::CuSubVector(v22, a2, v17, v24, v18);
          kaldi::CuVectorBase<float>::CopyFromVec(v22, v23, v19, v20, v21);
          v17 += v24;
          ++v16;
        }

        while (v16 != v12[7]);
      }

      if (v17 != v13)
      {
        kaldi::KaldiAssertFailure_("GetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_1A8.align + 2, "count == history_size", v15);
      }

      return kaldi::CuVector<float>::~CuVector(v23);
    }
  }

  return result;
}

void sub_17BA04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  kaldi::CuVector<float>::~CuVector(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::SetHistoryState(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(a1 + 48);
  v5 = *(a1 + 56);
  v7 = v5 - v6;
  if (v7)
  {
    if (v7 == 1)
    {
      v10 = *(**v6 + 56);

      v10();
    }

    else
    {
      if (v6 == v5)
      {
        v12 = 0;
      }

      else
      {
        v12 = 0;
        do
        {
          v13 = *v6++;
          v12 += (*(*v13 + 16))(v13, a2, a3, a4, a5);
          v5 = *(a1 + 56);
        }

        while (v6 != v5);
      }

      if (*(a2 + 16) != v12)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(&v19, "SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 490);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v19, "the network has history size ", 29);
        v18 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " , but the input history data has dimension ", 44);
        std::ostream::operator<<();
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v19);
      }

      v14 = *(a1 + 48);
      if (v14 == v5)
      {
        LODWORD(v15) = 0;
      }

      else
      {
        v15 = 0;
        do
        {
          v16 = (*(**v14 + 16))();
          v17 = *v14;
          kaldi::CuSubMatrix<float>::CuSubMatrix(&v19, a2, 0, *(a2 + 20), v15, v16);
          (*(*v17 + 56))(v17, &v19, a3);
          v19 = off_276F40;
          v20 = 0u;
          v21 = 0u;
          fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
          v15 = (v16 + v15);
          ++v14;
        }

        while (v14 != *(a1 + 56));
      }

      if (v15 != v12)
      {
        kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_1A8.reserved3 + 2, "count == history_size", a5);
      }
    }
  }
}

void sub_17BCAC(_Unwind_Exception *a1)
{
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  fst::MutableArcIterator<fst::VectorFst<fst::ArcTpl<fst::LatticeWeightTpl<float>>,fst::VectorState<fst::ArcTpl<fst::LatticeWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::LatticeWeightTpl<float>>>>>>::~MutableArcIterator();
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Nnet::SetHistoryState(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v6 = *(result + 48);
  v5 = *(result + 56);
  v7 = v5 - v6;
  if (v7)
  {
    if (v7 == 1)
    {
      v11 = *(**v6 + 64);

      return v11();
    }

    else
    {
      v12 = result;
      if (v6 == v5)
      {
        v13 = 0;
      }

      else
      {
        v13 = 0;
        do
        {
          v14 = *v6++;
          result = (*(*v14 + 16))(v14, a2, a3, a4, a5);
          v13 += result;
          v5 = *(v12 + 56);
        }

        while (v6 != v5);
      }

      if (*(a2 + 16) != v13)
      {
        kaldi::KaldiErrorMessage::KaldiErrorMessage(v21, "SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 514);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, "the network has history size ", 29);
        v20 = std::ostream::operator<<();
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, " , but the input history data has dimension ", 44);
        std::ostream::operator<<();
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v21);
      }

      v15 = *(v12 + 48);
      if (v15 == v5)
      {
        v16 = 0;
      }

      else
      {
        v16 = 0;
        do
        {
          v17 = (*(**v15 + 16))();
          v18 = *v15++;
          kaldi::CuSubVector<float>::CuSubVector(v21, a2, v16, v17, v19);
          result = (*(*v18 + 64))(v18, v21, a3, a4);
          v16 += v17;
        }

        while (v15 != *(v12 + 56));
      }

      if (v16 != v13)
      {
        kaldi::KaldiAssertFailure_("SetHistoryState", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_1F8.segname[6], "count == history_size", a5);
      }
    }
  }

  return result;
}

uint64_t kaldi::nnet1::Nnet::SetInternalBoundary(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 24);
  if (v3 != *(result + 32))
  {
    v6 = result;
    do
    {
      v7 = *v3++;
      result = (*(*v7 + 96))(v7, a2, a3);
    }

    while (v3 != *(v6 + 32));
  }

  return result;
}

void *kaldi::nnet1::ParallelComponent::SetGradientNormalization(void *result, uint64_t a2, int a3, float a4)
{
  v4 = result[23];
  if (v4 != result[24])
  {
    v8 = result;
    do
    {
      result = kaldi::nnet1::Nnet::SetGradientNormalization(v4, a2, a3, 0, a4);
      v4 += 47;
    }

    while (v4 != v8[24]);
  }

  return result;
}

void ***kaldi::nnet1::Nnet::Backpropagate(void ***result, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if ((a4 & 0x80000000) != 0 || (v6 = result, *(result[18] + 8) <= a4))
  {
    kaldi::KaldiAssertFailure_("Backpropagate", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_1F8.reloff + 3, "batch_idx >= 0 && batch_idx < opts_->num_subbatches", a5);
  }

  v10 = *result;
  v9 = result[1];
  v11 = v9 - *result;
  v12 = v11 >> 3;
  if ((v11 >> 3))
  {
    if (a3)
    {
      v13 = a3;
    }

    else
    {
      v13 = a2;
    }

    v14 = *(v13 + 32);
    v15 = a4;
    v16 = &result[9][3 * a4];
    v17 = *v16;
    v18 = v16[1];
    if (v17 != v18)
    {
      v19 = 0;
      v20 = (v18 - v17 - 48) / 0x30uLL;
      v21 = (v20 + 2) & 0xFFFFFFFFFFFFFFELL;
      v22 = vdupq_n_s64(v20);
      v23 = (v17 + 80);
      do
      {
        v24 = vmovn_s64(vcgeq_u64(v22, vorrq_s8(vdupq_n_s64(v19), xmmword_212100)));
        if (v24.i8[0])
        {
          *(v23 - 6) = v14;
        }

        if (v24.i8[4])
        {
          *v23 = v14;
        }

        v19 += 2;
        v23 += 12;
      }

      while (v21 != v19);
    }

    v25 = &result[15][3 * a4];
    v26 = *v25;
    v27 = v25[1];
    if (v26 != v27)
    {
      v28 = 0;
      v29 = (v27 - v26 - 48) / 0x30uLL;
      v30 = (v29 + 2) & 0xFFFFFFFFFFFFFFELL;
      v31 = vdupq_n_s64(v29);
      v32 = v26 + 80;
      do
      {
        v33 = vmovn_s64(vcgeq_u64(v31, vorrq_s8(vdupq_n_s64(v28), xmmword_212100)));
        if (v33.i8[0])
        {
          *(v32 - 6) = v14;
        }

        if (v33.i8[4])
        {
          *v32 = v14;
        }

        v28 += 2;
        v32 += 12;
      }

      while (v30 != v28);
    }

    if (v12 >= (-1431655765 * ((v18 - v17) >> 4)))
    {
      kaldi::KaldiAssertFailure_("Backpropagate", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_248.sectname[7], "(int32)propagate_buf_[batch_idx].size() >= NumComponents() + 1", a5);
    }

    if (v12 - 1 > (-1431655765 * ((v27 - v26) >> 4)))
    {
      kaldi::KaldiAssertFailure_("Backpropagate", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_248.sectname[9], "(int32)backpropagate_buf_[batch_idx].size() >= NumComponents() - 1", a5);
    }

    if (v12 == 1)
    {
      kaldi::nnet1::Component::Backpropagate(*v10, v17, v17 + 48, a2, a3, a4);
      result = (*(***v6 + 32))(**v6);
      if (!result)
      {
        return result;
      }

      v34 = **v6;
      if (v34)
      {
      }

      v35 = *(*v34 + 232);
      goto LABEL_47;
    }

    v36 = (v11 << 29) - 0x100000000;
    kaldi::nnet1::Component::Backpropagate(*(v9 - 1), v17 + 48 * SHIDWORD(v36), v17 + 48 * v12, a2, &v26[48 * (((v11 << 29) - 0x200000000) >> 32)], a4);
    if ((*(**(*v6 + (v36 >> 29)) + 32))(*(*v6 + (v36 >> 29))))
    {
      v37 = (*v6)[v36 >> 32];
      if (v37)
      {
      }

      (*(*v37 + 232))(v37, v6[9][3 * v15] + 48 * SHIDWORD(v36), a2, v14, a4);
    }

    v38 = (v12 - 2);
    if (v38 >= 1)
    {
      v39 = 48 * v38 + 48;
      do
      {
        v40 = v6[9][3 * a4] + v39;
        v41 = v6[15][3 * a4] + v39;
        kaldi::nnet1::Component::Backpropagate((*v6)[v38], v40 - 48, v40, (v41 - 48), (v41 - 96), a4);
        if ((*(*(*v6)[v38] + 32))((*v6)[v38]))
        {
          v42 = (*v6)[v38];
          if (v42)
          {
          }

          (*(*v42 + 232))(v42, v6[9][3 * a4] + v39 - 48, v6[15][3 * a4] + v39 - 48, v14, a4);
        }

        --v38;
        v39 -= 48;
      }

      while ((v38 + 1) > 1);
    }

    v43 = v6[9][3 * a4];
    kaldi::nnet1::Component::Backpropagate(**v6, v43, v43 + 48, v6[15][3 * a4], a3, a4);
    result = (*(***v6 + 32))(**v6);
    if (result)
    {
      v44 = **v6;
      if (v44)
      {
      }

      v35 = *(*v44 + 232);
LABEL_47:

      return v35();
    }
  }

  else if (a3)
  {

    return kaldi::CuMatrix<float>::operator=(a3, a2);
  }

  return result;
}

void kaldi::nnet1::Nnet::Update(kaldi::nnet1::Nnet *this, void *a2, uint64_t a3)
{
  v4 = *this;
  v3 = *(this + 1);
  if (*this != v3)
  {
    v8 = 0;
    do
    {
      if (*(this + 22) == (v3 - *this) >> 3 && ((*(*(this + 21) + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v8) & 1) != 0)
      {
        if (kaldi::g_kaldi_verbose_level >= 2)
        {
          kaldi::KaldiVlogMessage::KaldiVlogMessage(v11, "Update", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 652, 2);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "freezing component ", 19);
          v9 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, " (1-based) in this Update", 25);
          kaldi::KaldiVlogMessage::~KaldiVlogMessage(v11);
        }
      }

      else if ((*(**v4 + 32))())
      {
        v10 = *v4;
        if (*v4)
        {
        }

        (*(*v10 + 256))(v10, a2, a3);
      }

      v4 += 8;
      ++v8;
      v3 = *(this + 1);
    }

    while (v4 != v3);
  }
}

void kaldi::nnet1::Nnet::Feedforward(void *a1, uint64_t a2, uint64_t a3, unsigned int a4, const char *a5)
{
  if (!a3)
  {
    kaldi::KaldiAssertFailure_("Feedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_2E8.nreloc + 2, "NULL != out", a5);
  }

  if (*(a1[18] + 32) != 1)
  {
    kaldi::KaldiAssertFailure_("Feedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_2E8.nreloc + 3, "opts_->num_subbatches == 1", a5);
  }

  v6 = a5;
  v7 = (a1[1] - *a1) >> 3;
  if (a4 == -1)
  {
    v8 = (a1[1] - *a1) >> 3;
  }

  else
  {
    v8 = a4;
  }

  v9 = v8 + a5;
  if ((v8 + a5) > v7)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v30, "Feedforward", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 812);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "Components to propagate (startCompIdx=", 38);
    v26 = std::ostream::operator<<();
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, ", num_comps=", 12);
    v27 = std::ostream::operator<<();
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, ") must not be greater than ", 27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "#components in the network (", 28);
    v29 = std::ostream::operator<<();
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v29, ").");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v30);
  }

  if (v8)
  {
    v12 = v7 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    kaldi::CuMatrix<float>::Resize(a3, *(a2 + 20), *(a2 + 16), 1, 0);

    kaldi::CuMatrixBase<float>::CopyFromMat<float>(a3, a2, 111, v13, v14);
  }

  else if (v8 == 1)
  {
    v15 = *(*a1 + 8 * a5);

    kaldi::nnet1::Component::Propagate(v15, a2, a3, 0);
  }

  else
  {
    std::vector<kaldi::CuMatrix<float>>::vector[abi:ne200100](v30, 2uLL);
    v16 = *(a3 + 32);
    v17 = v30[0];
    v30[0][4] = v16;
    v17[10] = v16;
    kaldi::nnet1::Component::Propagate(*(*a1 + 8 * v6), a2, v17, 0);
    v18 = 0;
    v19 = v6;
    v20 = v9 - 2;
    if (v6 > (v9 - 2))
    {
      v20 = v6;
    }

    v21 = v20 - v6;
    v22 = (v19 << 32) + 0x100000000;
    for (i = 8 * v19 + 8; ; i += 8)
    {
      v24 = &v30[0][6 * v18];
      if (!v21)
      {
        break;
      }

      v18 = !v18;
      v25 = *(*a1 + i);
      --v21;
      v22 += 0x100000000;
      kaldi::nnet1::Component::Propagate(v25, v24, &v30[0][6 * v18], 0);
    }

    kaldi::nnet1::Component::Propagate(*(*a1 + (v22 >> 29)), v24, a3, 0);
    v31 = v30;
    std::vector<kaldi::CuMatrix<float>>::__destroy_vector::operator()[abi:ne200100](&v31);
  }
}

uint64_t kaldi::nnet1::Nnet::OutputDim(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this + 1);
  if (*this == v5)
  {
    kaldi::KaldiAssertFailure_("OutputDim", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_338.reloff + 1, "!components_.empty()", a5);
  }

  return *(*(v5 - 8) + 12);
}

uint64_t kaldi::nnet1::Nnet::InputDim(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (*this == *(this + 1))
  {
    kaldi::KaldiAssertFailure_("InputDim", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_338.nreloc + 2, "!components_.empty()", a5);
  }

  return *(**this + 8);
}

uint64_t *kaldi::nnet1::Nnet::GetHistoricalComponents@<X0>(uint64_t *__return_ptr a1@<X8>, kaldi::nnet1::Nnet *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(a1, *(this + 6), *(this + 7), (*(this + 7) - *(this + 6)) >> 3);
}

void kaldi::nnet1::Nnet::AppendComponent(kaldi::nnet1::Nnet *this, kaldi::nnet1::Component *a2)
{
  v8 = a2;
  if (*(this + 22) == (*(this + 1) - *this) >> 3)
  {
    v7 = 0;
    std::vector<BOOL>::push_back(this + 168, &v7);
  }

  std::vector<kaldi::EventMap *>::push_back[abi:ne200100](this, &v8);
  kaldi::nnet1::Nnet::ResetInternalBuffers(this, v3, v4, v5, v6);
  kaldi::nnet1::Nnet::ResetRecurrentFlag(this);
}

uint64_t kaldi::nnet1::Nnet::GetParams(kaldi::nnet1::Nnet *a1, uint64_t a2)
{
  v4 = kaldi::nnet1::Nnet::NumParams(a1);
  kaldi::Vector<float>::Resize(a2, v4, 0, v5, v6);
  v7 = *a1;
  if (*(a1 + 1) == *a1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if ((*(**(v7 + 8 * v8) + 32))(*(v7 + 8 * v8)))
      {
        if (!v10)
        {
          __cxa_bad_cast();
        }

        v20 = 0;
        v21 = 0;
        v22 = 0;
        (*(*v10 + 184))(v10, &v20);
        v18 = 0;
        v19 = 0;
        if ((v21 + v9) > *(a2 + 8))
        {
          kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v13);
        }

        v17 = *a2 + 4 * v9;
        LODWORD(v18) = v21;
        kaldi::VectorBase<float>::CopyFromVec(&v17, &v20, v11, v12, v13);
        v14 = v21;
        kaldi::Vector<float>::Destroy(&v20);
        v9 += v14;
      }

      ++v8;
      v7 = *a1;
    }

    while (v8 < (*(a1 + 1) - *a1) >> 3);
  }

  result = kaldi::nnet1::Nnet::NumParams(a1);
  if (v9 != result)
  {
    kaldi::KaldiAssertFailure_("GetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_3D8.offset + 3, "pos == NumParams()", v16);
  }

  return result;
}

void sub_17CE38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  kaldi::Vector<float>::Destroy(va);
  _Unwind_Resume(a1);
}

uint64_t kaldi::nnet1::Nnet::NumParams(kaldi::nnet1::Nnet *this)
{
  v1 = *this;
  if (*(this + 1) == *this)
  {
    return 0;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    if ((*(**(v1 + 8 * v3) + 32))(*(v1 + 8 * v3)))
    {
      v5 = *(*this + 8 * v3);
      if (v5)
      {
      }

      v4 = (*(*v5 + 176))(v5) + v4;
    }

    ++v3;
    v1 = *this;
  }

  while (v3 < (*(this + 1) - *this) >> 3);
  return v4;
}

uint64_t kaldi::nnet1::Nnet::SetParams(kaldi::nnet1::Nnet *a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  if (v4 != kaldi::nnet1::Nnet::NumParams(a1))
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_3D8.align + 3, "wei_src.Dim() == NumParams()", v5);
  }

  v6 = *a1;
  if (*(a1 + 1) == *a1)
  {
    v8 = 0;
  }

  else
  {
    v7 = 0;
    v8 = 0;
    do
    {
      if ((*(**(v6 + 8 * v7) + 32))(*(v6 + 8 * v7)))
      {
        if (!v9)
        {
          __cxa_bad_cast();
        }

        v10 = v9;
        v11 = (*(*v9 + 176))(v9);
        v17 = 0;
        v18 = 0;
        v13 = v11 + v8;
        if ((v11 + v8) > *(a2 + 8))
        {
          kaldi::KaldiAssertFailure_("SubVector", "../subproject/libquasar/libkaldi/src/matrix/kaldi-vector.h", &stru_1F8.size + 6, "static_cast<UnsignedMatrixIndexT>(origin)+ static_cast<UnsignedMatrixIndexT>(length) <= static_cast<UnsignedMatrixIndexT>(t.Dim())", v12);
        }

        v16 = *a2 + 4 * v8;
        LODWORD(v17) = v11;
        (*(*v10 + 192))(v10, &v16);
        v8 = v13;
      }

      ++v7;
      v6 = *a1;
    }

    while (v7 < (*(a1 + 1) - *a1) >> 3);
  }

  result = kaldi::nnet1::Nnet::NumParams(a1);
  if (v8 != result)
  {
    kaldi::KaldiAssertFailure_("SetParams", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_3D8.flags + 1, "pos == NumParams()", v15);
  }

  return result;
}

float kaldi::nnet1::Nnet::SumParams(kaldi::nnet1::Nnet *this)
{
  v1 = *this;
  if (*(this + 1) == *this)
  {
    return 0.0;
  }

  v3 = 0;
  v4 = 0.0;
  do
  {
    if ((*(**(v1 + 8 * v3) + 32))(*(v1 + 8 * v3)))
    {
      if (!v5)
      {
        __cxa_bad_cast();
      }

      v4 = v4 + (*(*v5 + 208))(v5);
    }

    ++v3;
    v1 = *this;
  }

  while (v3 < (*(this + 1) - *this) >> 3);
  return v4;
}

void kaldi::nnet1::Nnet::ResetInternalBuffers(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(*(this + 18) + 32);
  if (v5 <= 0)
  {
    kaldi::KaldiAssertFailure_("ResetInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.sectname[12], "opts_->num_subbatches > 0", a5);
  }

  std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(this + 9, v5);
  std::vector<std::vector<kaldi::CuMatrix<float>>>::resize(this + 15, *(*(this + 18) + 32));
  v10 = *(this + 1) - *this;
  v11 = *(*(this + 18) + 32);
  if ((v10 >> 3) <= 0)
  {
    if (v11 >= 1)
    {
      v28 = 0;
      do
      {
        v29 = (*(this + 9) + 24 * v28);
        v31 = *v29;
        v30 = v29[1];
        if (v30 != *v29)
        {
          v32 = v30 - 48;
          v33 = (v30 - 48);
          v34 = (v30 - 48);
          do
          {
            v35 = *v34;
            v34 -= 6;
            (*(v35 + 16))(v33);
            v32 -= 48;
            v20 = v33 == v31;
            v33 = v34;
          }

          while (!v20);
        }

        v29[1] = v31;
        v36 = (*(this + 15) + 24 * v28);
        v38 = *v36;
        v37 = v36[1];
        if (v37 != *v36)
        {
          v39 = v37 - 48;
          v40 = (v37 - 48);
          v41 = (v37 - 48);
          do
          {
            v42 = *v41;
            v41 -= 6;
            (*(v42 + 16))(v40);
            v39 -= 48;
            v20 = v40 == v38;
            v40 = v41;
          }

          while (!v20);
        }

        v36[1] = v38;
        ++v28;
      }

      while (v28 < *(*(this + 18) + 32));
    }

    v44 = *(this + 12);
    v43 = *(this + 13);
    if (v43 != v44)
    {
      v45 = v43 - 4;
      v46 = v43 - 4;
      v47 = v43 - 4;
      do
      {
        v48 = *v47;
        v47 -= 4;
        (*(v48 + 8))(v46);
        v45 -= 4;
        v20 = v46 == v44;
        v46 = v47;
      }

      while (!v20);
    }

    *(this + 13) = v44;
  }

  else
  {
    if (v11 >= 1)
    {
      v12 = 0;
      do
      {
        v13 = (*(this + 9) + 24 * v12);
        v15 = *v13;
        v14 = v13[1];
        if (v14 != *v13)
        {
          v16 = v14 - 48;
          v17 = (v14 - 48);
          v18 = (v14 - 48);
          do
          {
            v19 = *v18;
            v18 -= 6;
            (*(v19 + 16))(v17);
            v16 -= 48;
            v20 = v17 == v15;
            v17 = v18;
          }

          while (!v20);
        }

        v13[1] = v15;
        v21 = (*(this + 15) + 24 * v12);
        v23 = *v21;
        v22 = v21[1];
        if (v22 != *v21)
        {
          v24 = v22 - 48;
          v25 = (v22 - 48);
          v26 = (v22 - 48);
          do
          {
            v27 = *v26;
            v26 -= 6;
            (*(v27 + 16))(v25);
            v24 -= 48;
            v20 = v25 == v23;
            v25 = v26;
          }

          while (!v20);
        }

        v21[1] = v23;
        std::vector<kaldi::CuMatrix<float>>::resize((*(this + 9) + 24 * v12), (((*(this + 1) - *this) << 29) + 0x100000000) >> 32);
        std::vector<kaldi::CuMatrix<float>>::resize((*(this + 15) + 24 * v12++), (((*(this + 1) - *this) << 29) - 0x100000000) >> 32);
      }

      while (v12 < *(*(this + 18) + 32));
      v10 = *(this + 1) - *this;
    }

    std::vector<kaldi::CuVector<float>>::resize(this + 12, ((v10 << 29) + 0x100000000) >> 32, v7, v8, v9);
  }
}

void *kaldi::nnet1::Nnet::CheckInternalBuffers(void *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  v5 = *(this[18] + 32);
  if (v5 <= 0)
  {
    kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.addr + 4, "opts_->num_subbatches > 0", a5);
  }

  v6 = this[9];
  v7 = this[10] - v6;
  v8 = 0xAAAAAAAAAAAAAAABLL * (v7 >> 3);
  if (v8 != v5)
  {
    kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.addr + 5, "propagate_buf_.size() == opts_->num_subbatches", a5);
  }

  v9 = this[15];
  if (this[16] - v9 != v7)
  {
    kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.addr + 6, "backpropagate_buf_.size() == opts_->num_subbatches", a5);
  }

  v10 = this[1] - *this;
  if ((v10 >> 3) <= 0)
  {
    v15 = (v6 + 8);
    v16 = (v9 + 8);
    do
    {
      if (*v15 != *(v15 - 1))
      {
        kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.size + 7, "propagate_buf_[i].size() == 0", a5);
      }

      if (*v16 != *(v16 - 1))
      {
        kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.offset, "backpropagate_buf_[i].size() == 0", a5);
      }

      v15 += 3;
      v16 += 3;
      --v8;
    }

    while (v8);
    if (this[13] != this[12])
    {
      kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.offset + 2, "propagate_vec_buf_.size() == 0", a5);
    }
  }

  else
  {
    v11 = (v10 >> 3) + 1;
    v12 = ((v10 << 29) - 0x100000000) >> 32;
    v13 = (v6 + 8);
    v14 = (v9 + 8);
    do
    {
      if (0xAAAAAAAAAAAAAAABLL * ((*v13 - *(v13 - 1)) >> 4) != v11)
      {
        kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.size + 1, "propagate_buf_[i].size() == NumComponents() + 1", a5);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((*v14 - *(v14 - 1)) >> 4) != v12)
      {
        kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.size + 2, "backpropagate_buf_[i].size() == NumComponents() - 1", a5);
      }

      v13 += 3;
      v14 += 3;
      --v8;
    }

    while (v8);
    if (v11 != (this[13] - this[12]) >> 5)
    {
      kaldi::KaldiAssertFailure_("CheckInternalBuffers", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_428.size + 4, "propagate_vec_buf_.size() == NumComponents() + 1", a5);
    }
  }

  return this;
}

uint64_t kaldi::nnet1::Nnet::IsComponentFrozen(kaldi::nnet1::Nnet *this, int a2, uint64_t a3, uint64_t a4, const char *a5)
{
  if (((*(this + 1) - *this) >> 3) <= a2)
  {
    kaldi::KaldiAssertFailure_("IsComponentFrozen", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_478.sectname[1], "index < NumComponents()", a5);
  }

  if (*(this + 22) <= a2)
  {
    return 0;
  }

  else
  {
    return (*(*(this + 21) + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a2) & 1;
  }
}

void kaldi::nnet1::Nnet::SetDropoutRetention(kaldi::nnet1::Nnet *this, float a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6)
{
  if (((*(this + 1) - *this) >> 3) >= 1)
  {
    v8 = 0;
    v9 = a2 > 1.0 || a2 <= 0.0;
    do
    {
      Component = kaldi::nnet1::Nnet::GetComponent(this, v8, a4, a5, a6);
      if ((*(*Component + 24))(Component) == 518)
      {
        v11 = kaldi::nnet1::Nnet::GetComponent(this, v8, a4, a5, a6);
        if (!v12)
        {
          __cxa_bad_cast();
        }

        v12[48] = a2;
        if (v9)
        {
          kaldi::KaldiAssertFailure_("SetDropoutRetention", "../subproject/libquasar/libkaldi/src/nnet/nnet-activation.h", &stru_158.nreloc + 2, "dropout_retention_ > 0.0 && dropout_retention_ <= 1.0", a6);
        }

        if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
        {
          kaldi::KaldiLogMessage::KaldiLogMessage(v15, "SetDropoutRetention", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1203);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Setting dropout-retention in component ", 39);
          v13 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, " from ", 6);
          v14 = std::ostream::operator<<();
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, " to ", 4);
          std::ostream::operator<<();
          kaldi::KaldiLogMessage::~KaldiLogMessage(v15);
        }
      }

      ++v8;
    }

    while (v8 < ((*(this + 1) - *this) >> 3));
  }
}

void sub_17DA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::Init(kaldi::nnet1::Nnet *a1, uint64_t a2, uint64_t a3)
{
  kaldi::Input::Input(&v6, a2);
  kaldi::Input::Stream(&v6);
  kaldi::nnet1::Nnet::Init(a1, v5, a3);
  kaldi::Input::Close(&v6);
  kaldi::Input::~Input(&v6);
}

void sub_17DAB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  kaldi::Input::~Input(va);
  _Unwind_Resume(a1);
}

void kaldi::nnet1::Nnet::Init(kaldi::nnet1::Nnet *a1, uint64_t *a2, uint64_t a3)
{
  kaldi::ExpectToken(a2, 0, "<NnetProto>");
  v20 = 0;
  v21 = 0;
  v22 = 0;
  v7 = *(a2 + *(*a2 - 24) + 32);
  if ((v7 & 2) != 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(__p, "Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1221);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "Missing </NnetProto> at the end.", 32);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(__p);
  }

  if (v7)
  {
    kaldi::KaldiAssertFailure_("Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", &stru_478.reserved3 + 2, "is.good()", v6);
  }

  if (kaldi::PeekToken(a2, 0) != 47)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v8 = std::locale::use_facet(__p, &std::ctype<char>::id);
    v9 = (v8->__vftable[2].~facet_0)(v8, 10);
    std::locale::~locale(__p);
    std::getline[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(a2, &v20, v9);
    if (kaldi::g_kaldi_verbose_level >= 1)
    {
      kaldi::KaldiVlogMessage::KaldiVlogMessage(__p, "Init", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1228, 1);
      if (v22 >= 0)
      {
        v10 = &v20;
      }

      else
      {
        v10 = v20;
      }

      if (v22 >= 0)
      {
        v11 = HIBYTE(v22);
      }

      else
      {
        v11 = v21;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, v10, v11);
      kaldi::KaldiVlogMessage::~KaldiVlogMessage(__p);
    }

    if (v22 >= 0)
    {
      v12 = HIBYTE(v22);
    }

    else
    {
      v12 = v21;
    }

    std::string::basic_string[abi:ne200100](__p, v12 + 1);
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
      if (v22 >= 0)
      {
        v14 = &v20;
      }

      else
      {
        v14 = v20;
      }

      memmove(v13, v14, v12);
    }

    *(&v13->__r_.__value_.__l.__data_ + v12) = 10;
    kaldi::nnet1::Component::Init(__p, a3);
  }

  kaldi::ExpectToken(a2, 0, "</NnetProto>");
  kaldi::nnet1::Nnet::ResetInternalBuffers(a1, v15, v16, v17, v18);
  kaldi::nnet1::Nnet::ResetRecurrentFlag(a1);
  if (SHIBYTE(v22) < 0)
  {
    operator delete(v20);
  }
}

void sub_17DD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (*(v14 - 97) < 0)
  {
    operator delete(*(v14 - 120));
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::Nnet::Read(kaldi::nnet1::Nnet *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = a2;
  v9 = a3;
  for (i = a4; ; i = a4)
  {
    v11 = kaldi::nnet1::Component::Read(v8, v9, i);
    v20 = v11;
    if (!v11)
    {
      break;
    }

    v16 = *(a1 + 1);
    if (((v16 - *a1) >> 3) >= 1 && *(*(v16 - 8) + 12) != *(v11 + 2))
    {
      kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1260);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "Dimensionality mismatch!", 24);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, " Previous layer output:", 23);
      v18 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " Current layer input:", 21);
      std::ostream::operator<<();
      goto LABEL_10;
    }

    std::vector<kaldi::EventMap *>::push_back[abi:ne200100](a1, &v20);
    v8 = a2;
    v9 = a3;
  }

  if (((*(a1 + 1) - *a1) >> 3) <= 0)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v19, "Read", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1267);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v19, "Could not read any components");
LABEL_10:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v19);
  }

  *(*(a1 + 18) + 8) = 0;
  kaldi::nnet1::Nnet::ResetInternalBuffers(a1, v12, v13, v14, v15);
  kaldi::nnet1::Nnet::ResetRecurrentFlag(a1);
}

void *kaldi::nnet1::Nnet::Write(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::Nnet::CheckDimensions(a1, a2, a3, a4, a5);
  kaldi::WriteToken(a2, a3, "<Nnet>", v9, v10);
  if ((a3 & 1) == 0)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v13 = std::locale::use_facet(&v18, &std::ctype<char>::id);
    (v13->__vftable[2].~facet_0)(v13, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    std::ostream::flush();
  }

  v14 = *a1;
  if (((a1[1] - *a1) >> 3) >= 1)
  {
    v15 = 0;
    do
    {
      kaldi::nnet1::Component::Write(*(v14 + 8 * v15++), a2, a3, a4);
      v14 = *a1;
    }

    while (v15 < ((a1[1] - *a1) >> 3));
  }

  result = kaldi::WriteToken(a2, a3, "</Nnet>", v11, v12);
  if ((a3 & 1) == 0)
  {
    std::ios_base::getloc((a2 + *(*a2 - 24)));
    v17 = std::locale::use_facet(&v18, &std::ctype<char>::id);
    (v17->__vftable[2].~facet_0)(v17, 10);
    std::locale::~locale(&v18);
    std::ostream::put();
    return std::ostream::flush();
  }

  return result;
}

uint64_t *kaldi::nnet1::Nnet::Info(kaldi::nnet1::Nnet *this)
{
  std::ostringstream::basic_ostringstream[abi:ne200100](&v34);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "num-components ", 15);
  v3 = std::ostream::operator<<();
  std::ios_base::getloc((v3 + *(*v3 - 24)));
  v4 = std::locale::use_facet(&v33, &std::ctype<char>::id);
  (v4->__vftable[2].~facet_0)(v4, 10);
  std::locale::~locale(&v33);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "input-dim ", 10);
  if (*this == *(this + 1))
  {
    v29 = (&stru_338 + 62);
    v30 = "InputDim";
    goto LABEL_27;
  }

  v6 = std::ostream::operator<<();
  std::ios_base::getloc((v6 + *(*v6 - 24)));
  v7 = std::locale::use_facet(&v33, &std::ctype<char>::id);
  (v7->__vftable[2].~facet_0)(v7, 10);
  std::locale::~locale(&v33);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "output-dim ", 11);
  if (*this == *(this + 1))
  {
    v29 = &stru_338.reloff + 1;
    v30 = "OutputDim";
LABEL_27:
    kaldi::KaldiAssertFailure_(v30, "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", v29, "!components_.empty()", v5);
  }

  v8 = std::ostream::operator<<();
  std::ios_base::getloc((v8 + *(*v8 - 24)));
  v9 = std::locale::use_facet(&v33, &std::ctype<char>::id);
  (v9->__vftable[2].~facet_0)(v9, 10);
  std::locale::~locale(&v33);
  std::ostream::put();
  std::ostream::flush();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "number-of-parameters ", 21);
  kaldi::nnet1::Nnet::NumParams(this);
  v10 = std::ostream::operator<<();
  v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " millions", 9);
  std::ios_base::getloc((v11 + *(*v11 - 24)));
  v12 = std::locale::use_facet(&v33, &std::ctype<char>::id);
  (v12->__vftable[2].~facet_0)(v12, 10);
  std::locale::~locale(&v33);
  std::ostream::put();
  std::ostream::flush();
  if (((*(this + 1) - *this) >> 3) >= 1)
  {
    v13 = 0;
    do
    {
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v34, "component ", 10);
      v14 = v13 + 1;
      v15 = std::ostream::operator<<();
      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " : ", 3);
      v17 = (*(**(*this + 8 * v13) + 24))(*(*this + 8 * v13));
      kaldi::nnet1::Component::TypeToMarker(v17, &v33);
      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v18 = &v33;
      }

      else
      {
        v18 = v33.__r_.__value_.__r.__words[0];
      }

      if ((v33.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        size = HIBYTE(v33.__r_.__value_.__r.__words[2]);
      }

      else
      {
        size = v33.__r_.__value_.__l.__size_;
      }

      v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, v18, size);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, ", input-dim ", 12);
      v21 = std::ostream::operator<<();
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v21, ", output-dim ", 13);
      v22 = std::ostream::operator<<();
      v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", ", 2);
      (*(**(*this + 8 * v13) + 64))(__p);
      if ((v32 & 0x80u) == 0)
      {
        v24 = __p;
      }

      else
      {
        v24 = __p[0];
      }

      if ((v32 & 0x80u) == 0)
      {
        v25 = v32;
      }

      else
      {
        v25 = __p[1];
      }

      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, v24, v25);
      std::ios_base::getloc((v26 + *(*v26 - 24)));
      v27 = std::locale::use_facet(&v38, &std::ctype<char>::id);
      (v27->__vftable[2].~facet_0)(v27, 10);
      std::locale::~locale(&v38);
      std::ostream::put();
      std::ostream::flush();
      if (v32 < 0)
      {
        operator delete(__p[0]);
      }

      if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v33.__r_.__value_.__l.__data_);
      }

      ++v13;
    }

    while (v14 < ((*(this + 1) - *this) >> 3));
  }

  std::stringbuf::str();
  if (v37 < 0)
  {
    operator delete(v36[7].__locale_);
  }

  std::locale::~locale(v36);
  std::ostream::~ostream();
  return std::ios::~ios();
}

void sub_17E790(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15, std::locale a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  std::locale::~locale(&a16);
  std::ostringstream::~ostringstream(&a22);
  _Unwind_Resume(a1);
}

boost::filesystem::path *kaldi::nnet1::Nnet::InfoGradient@<X0>(kaldi::nnet1::Nnet *this@<X0>, boost::filesystem::path *a2@<X8>)
{
  v3 = *(this + 15);
  if (*(this + 16) == v3 || (v4 = *v3, *(*(this + 15) + 8) == v4) || !(4 * *(v4 + 20) * *(v4 + 24)))
  {

    return boost::filesystem::path::path(a2, "### No gradient info");
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v23);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "### Gradient stats :\n", 21);
    if (((*(this + 1) - *this) >> 3) >= 1)
    {
      v6 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v23, "Component ", 10);
        v7 = v6 + 1;
        v8 = std::ostream::operator<<();
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, " : ", 3);
        v10 = (*(**(*this + 8 * v6) + 24))(*(*this + 8 * v6));
        kaldi::nnet1::Component::TypeToMarker(v10, &v22);
        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v11 = &v22;
        }

        else
        {
          v11 = v22.__r_.__value_.__r.__words[0];
        }

        if ((v22.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v22.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v22.__r_.__value_.__l.__size_;
        }

        v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v11, size);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", ", 2);
        (*(**(*this + 8 * v6) + 72))(__p);
        if ((v21 & 0x80u) == 0)
        {
          v15 = __p;
        }

        else
        {
          v15 = __p[0];
        }

        if ((v21 & 0x80u) == 0)
        {
          v16 = v21;
        }

        else
        {
          v16 = __p[1];
        }

        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v15, v16);
        std::ios_base::getloc((v17 + *(*v17 - 24)));
        v18 = std::locale::use_facet(&v27, &std::ctype<char>::id);
        (v18->__vftable[2].~facet_0)(v18, 10);
        std::locale::~locale(&v27);
        std::ostream::put();
        std::ostream::flush();
        if (v21 < 0)
        {
          operator delete(__p[0]);
        }

        if (SHIBYTE(v22.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v22.__r_.__value_.__l.__data_);
        }

        ++v6;
      }

      while (v7 < ((*(this + 1) - *this) >> 3));
    }

    std::stringbuf::str();
    if (v26 < 0)
    {
      operator delete(v25[7].__locale_);
    }

    std::locale::~locale(v25);
    std::ostream::~ostream();
    return std::ios::~ios();
  }
}

boost::filesystem::path *kaldi::nnet1::Nnet::InfoPropagate@<X0>(boost::filesystem::path *__return_ptr a1@<X8>, kaldi::nnet1::Nnet *this@<X0>)
{
  v2 = *(this + 9);
  if (*(this + 10) == v2 || (v3 = *v2, *(*(this + 9) + 8) == v3) || !(4 * *(v3 + 20) * *(v3 + 24)))
  {

    return boost::filesystem::path::path(a1, "### Forward propagation buffers not initialized");
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v35);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "### Forward propagation buffer content, note in the parallel GPU training, this only includes the first subbatch content :\n", 123);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "[0] output of <Input> ", 22);
    kaldi::nnet1::MomentStatistics<float>(**(this + 9));
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

    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, p_p, size);
    std::ios_base::getloc((v8 + *(*v8 - 24)));
    v9 = std::locale::use_facet(&v31, &std::ctype<char>::id);
    (v9->__vftable[2].~facet_0)(v9, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }

    if (((*(this + 1) - *this) >> 3) >= 1)
    {
      v10 = 0;
      v11 = 48;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, "[", 1);
        v12 = v10 + 1;
        v13 = std::ostream::operator<<();
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "] output of ", 12);
        v15 = (*(**(*this + 8 * v10) + 24))(*(*this + 8 * v10));
        kaldi::nnet1::Component::TypeToMarker(v15, &__p);
        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v16 = &__p;
        }

        else
        {
          v16 = __p.__r_.__value_.__r.__words[0];
        }

        if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v17 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
        }

        else
        {
          v17 = __p.__r_.__value_.__l.__size_;
        }

        v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
        kaldi::nnet1::MomentStatistics<float>(**(this + 9) + v11);
        if ((v33 & 0x80u) == 0)
        {
          locale = &v31;
        }

        else
        {
          locale = v31.__locale_;
        }

        if ((v33 & 0x80u) == 0)
        {
          v20 = v33;
        }

        else
        {
          v20 = v32;
        }

        v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, locale, v20);
        std::ios_base::getloc((v21 + *(*v21 - 24)));
        v22 = std::locale::use_facet(&v39, &std::ctype<char>::id);
        (v22->__vftable[2].~facet_0)(v22, 10);
        std::locale::~locale(&v39);
        std::ostream::put();
        std::ostream::flush();
        if (v33 < 0)
        {
          operator delete(v31.__locale_);
        }

        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if ((*(**(*this + 8 * v10) + 24))(*(*this + 8 * v10)) == 2055)
        {
          v23 = *(*this + 8 * v10);
          if (v23)
          {
          }

          (*(*v23 + 248))(&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v24 = &__p;
          }

          else
          {
            v24 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v25 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, v24, v25);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if ((*(**(*this + 8 * v10) + 24))(*(*this + 8 * v10)) == 274)
        {
          v26 = *(*this + 8 * v10);
          if (v26)
          {
          }

          (*(*v26 + 280))(&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v27 = &__p;
          }

          else
          {
            v27 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v28 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v28 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v35, v27, v28);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v11 += 48;
        ++v10;
      }

      while (v12 < ((*(this + 1) - *this) >> 3));
    }

    std::stringbuf::str();
    if (v38 < 0)
    {
      operator delete(v37[7].__locale_);
    }

    std::locale::~locale(v37);
    std::ostream::~ostream();
    return std::ios::~ios();
  }
}

boost::filesystem::path *kaldi::nnet1::Nnet::InfoBackPropagate@<X0>(boost::filesystem::path *__return_ptr a1@<X8>, kaldi::nnet1::Nnet *this@<X0>)
{
  v2 = *(this + 15);
  if (*(this + 16) == v2 || (v3 = *v2, *(*(this + 15) + 8) == v3) || !(4 * *(v3 + 20) * *(v3 + 24)))
  {

    return boost::filesystem::path::path(a1, "### Backward propagation buffers not initialized");
  }

  else
  {
    std::ostringstream::basic_ostringstream[abi:ne200100](&v30);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "### Backward propagation buffer content, Note in multi subbatch case, only the first subbatch is reported :\n", 108);
    if (*(*(this + 15) + 8) != **(this + 15))
    {
      v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "[0] diff of <Input> ", 20);
      kaldi::nnet1::MomentStatistics<float>(**(this + 15));
      v6 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
      v7 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, v6, v7);
      std::ios_base::getloc((v8 + *(*v8 - 24)));
      v9 = std::locale::use_facet(&v34, &std::ctype<char>::id);
      (v9->__vftable[2].~facet_0)(v9, 10);
      std::locale::~locale(&v34);
      std::ostream::put();
      std::ostream::flush();
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }
    }

    if (((*(this + 1) - *this) >> 3) >= 1)
    {
      v10 = 0;
      v11 = 0;
      do
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, "[", 1);
        v12 = v11 + 1;
        v13 = std::ostream::operator<<();
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "] diff-output of ", 17);
        v15 = (*(**(*this + 8 * v11) + 24))(*(*this + 8 * v11));
        kaldi::nnet1::Component::TypeToMarker(v15, &__p);
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

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, p_p, size);
        if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__r_.__value_.__l.__data_);
        }

        if (v11 < (((*(this + 1) - *this) << 29) - 0x100000000) >> 32)
        {
          kaldi::nnet1::MomentStatistics<float>(**(this + 15) + v10);
          v18 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &__p : __p.__r_.__value_.__r.__words[0];
          v19 = (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(__p.__r_.__value_.__r.__words[2]) : __p.__r_.__value_.__l.__size_;
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, v18, v19);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        std::ios_base::getloc((&v30 + *(v30 - 3)));
        v20 = std::locale::use_facet(&__p, &std::ctype<char>::id);
        (v20->__vftable[2].~facet_0)(v20, 10);
        std::locale::~locale(&__p);
        std::ostream::put();
        std::ostream::flush();
        if ((*(**(*this + 8 * v11) + 24))(*(*this + 8 * v11)) == 2055)
        {
          v21 = *(*this + 8 * v11);
          if (v21)
          {
          }

          (*(*v21 + 256))(&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v22 = &__p;
          }

          else
          {
            v22 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v23 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v23 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, v22, v23);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        if ((*(**(*this + 8 * v11) + 24))(*(*this + 8 * v11)) == 274)
        {
          v24 = *(*this + 8 * v11);
          if (v24)
          {
          }

          (*(*v24 + 288))(&__p);
          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v25 = &__p;
          }

          else
          {
            v25 = __p.__r_.__value_.__r.__words[0];
          }

          if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v26 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
          }

          else
          {
            v26 = __p.__r_.__value_.__l.__size_;
          }

          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v30, v25, v26);
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__r_.__value_.__l.__data_);
          }
        }

        v10 += 48;
        ++v11;
      }

      while (v12 < ((*(this + 1) - *this) >> 3));
    }

    std::stringbuf::str();
    if (v33 < 0)
    {
      operator delete(v32[7].__locale_);
    }

    std::locale::~locale(v32);
    std::ostream::~ostream();
    return std::ios::~ios();
  }
}

void kaldi::nnet1::Nnet::CheckWeights(uint64_t *this)
{
  v1 = *this;
  if ((this[1] - *this) >= 9)
  {
    v3 = 0;
    do
    {
      if ((*(**(v1 + 8 * v3) + 32))(*(v1 + 8 * v3)))
      {
        kaldi::nnet1::UpdatableComponent::CheckParams(*(*this + 8 * v3));
      }

      v1 = *this;
      v4 = v3 + 2;
      ++v3;
    }

    while (v4 < (this[1] - *this) >> 3);
  }
}

float kaldi::nnet1::UpdatableComponent::CheckParams(kaldi::nnet1::UpdatableComponent *this)
{
  result = (*(*this + 208))(this);
  if (fabsf(result) == INFINITY)
  {
    kaldi::KaldiErrorMessage::KaldiErrorMessage(v2, "CheckParams", "../subproject/libquasar/libkaldi/src/nnet/nnet-component.h", 427);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v2, "'inf' in component parameters (weight explosion, try lower learning rate?)");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v2);
  }

  return result;
}

void kaldi::nnet1::Nnet::ResetRecurrentFlag(kaldi::nnet1::Nnet *this)
{
  v1 = (this + 24);
  v3 = (this + 48);
  v2 = *(this + 6);
  *(this + 4) = *(this + 3);
  *(this + 7) = v2;
  *(this + 76) = 0;
  v4 = *this;
  if (*(this + 1) != *this)
  {
    v6 = 0;
    while (1)
    {
      v7 = *(v4 + 8 * v6);
      if (!v7)
      {
        goto LABEL_34;
      }

      if (!v8)
      {
        break;
      }

      v9 = v8;
      kaldi::nnet1::ParallelComponent::GetHistoricalComponents(&v42, v8);
      std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(v3, *(this + 7), v42, v43, (v43 - v42) >> 3);
      if (*(this + 153))
      {
        v10 = 1;
      }

      else
      {
        v16 = *(v9 + 23);
        v17 = *(v9 + 24);
        if (v16 == v17)
        {
          v10 = 0;
        }

        else
        {
          v10 = 0;
          do
          {
            if (v10)
            {
              v10 = 1;
            }

            else
            {
              v10 = *(v16 + 153);
            }

            v16 += 376;
          }

          while (v16 != v17);
        }
      }

      *(this + 153) = v10 & 1;
      kaldi::nnet1::ParallelComponent::GetRecurrentComponents(&__p, v9);
      std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(v1, *(this + 4), __p, v41, (v41 - __p) >> 3);
      if (__p)
      {
        v41 = __p;
        operator delete(__p);
      }

      if (v42)
      {
        v43 = v42;
        operator delete(v42);
      }

LABEL_51:
      ++v6;
      v4 = *this;
      if (v6 >= (*(this + 1) - *this) >> 3)
      {
        if (*(this + 3) != *(this + 4))
        {
          *(this + 152) = 1;
        }

        return;
      }
    }

    if (v11)
    {
      v12 = v11;
      if ((*(*v11 + 16))(v11) >= 1)
      {
        v14 = *(this + 7);
        v13 = *(this + 8);
        if (v14 >= v13)
        {
          v18 = (v14 - *v3) >> 3;
          if ((v18 + 1) >> 61)
          {
            std::vector<float>::__throw_length_error[abi:ne200100]();
          }

          v19 = v13 - *v3;
          v20 = v19 >> 2;
          if (v19 >> 2 <= (v18 + 1))
          {
            v20 = v18 + 1;
          }

          if (v19 >= 0x7FFFFFFFFFFFFFF8)
          {
            v21 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v21 = v20;
          }

          if (v21)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(v3, v21);
          }

          *(8 * v18) = v12;
          v15 = 8 * v18 + 8;
          v22 = *(this + 6);
          v23 = *(this + 7) - v22;
          v24 = (8 * v18 - v23);
          memcpy(v24, v22, v23);
          v25 = *(this + 6);
          *(this + 6) = v24;
          *(this + 7) = v15;
          *(this + 8) = 0;
          if (v25)
          {
            operator delete(v25);
          }
        }

        else
        {
          *v14 = v12;
          v15 = (v14 + 1);
        }

        *(this + 7) = v15;
      }
    }

LABEL_34:
    v26 = *(*this + 8 * v6);
    if (v26)
    {
      if (v27)
      {
        v28 = v27;
        if ((*(*v27 + 16))(v27) >= 1)
        {
          v30 = *(this + 4);
          v29 = *(this + 5);
          if (v30 >= v29)
          {
            v32 = (v30 - *v1) >> 3;
            if ((v32 + 1) >> 61)
            {
              std::vector<float>::__throw_length_error[abi:ne200100]();
            }

            v33 = v29 - *v1;
            v34 = v33 >> 2;
            if (v33 >> 2 <= (v32 + 1))
            {
              v34 = v32 + 1;
            }

            if (v33 >= 0x7FFFFFFFFFFFFFF8)
            {
              v35 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v34;
            }

            if (v35)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(v1, v35);
            }

            *(8 * v32) = v28;
            v31 = 8 * v32 + 8;
            v36 = *(this + 3);
            v37 = *(this + 4) - v36;
            v38 = (8 * v32 - v37);
            memcpy(v38, v36, v37);
            v39 = *(this + 3);
            *(this + 3) = v38;
            *(this + 4) = v31;
            *(this + 5) = 0;
            if (v39)
            {
              operator delete(v39);
            }
          }

          else
          {
            *v30 = v28;
            v31 = (v30 + 1);
          }

          *(this + 4) = v31;
          {
            *(this + 153) = 1;
          }
        }
      }
    }

    goto LABEL_51;
  }
}

void sub_17FED0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ParallelComponent::GetHistoricalComponents(uint64_t *__return_ptr a1@<X8>, kaldi::nnet1::ParallelComponent *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(this + 23);
  for (i = *(this + 24); v2 != i; v2 += 376)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(&__p, *(v2 + 48), *(v2 + 56), (*(v2 + 56) - *(v2 + 48)) >> 3);
    std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(a1, a1[1], __p, v6, (v6 - __p) >> 3);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_17FF9C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void kaldi::nnet1::ParallelComponent::GetRecurrentComponents(uint64_t *__return_ptr a1@<X8>, kaldi::nnet1::ParallelComponent *this@<X0>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v2 = *(this + 23);
  for (i = *(this + 24); v2 != i; v2 += 376)
  {
    __p = 0;
    v6 = 0;
    v7 = 0;
    std::vector<kaldi::EventMap *>::__init_with_size[abi:ne200100]<kaldi::EventMap **,kaldi::EventMap **>(&__p, *(v2 + 24), *(v2 + 32), (*(v2 + 32) - *(v2 + 24)) >> 3);
    std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(a1, a1[1], __p, v6, (v6 - __p) >> 3);
    if (__p)
    {
      v6 = __p;
      operator delete(__p);
    }
  }
}

void sub_180064(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  v13 = *v11;
  if (*v11)
  {
    *(v11 + 8) = v13;
    operator delete(v13);
  }

  _Unwind_Resume(exception_object);
}

void *kaldi::nnet1::Nnet::ValidateNnet(kaldi::nnet1::Nnet *this, uint64_t a2, uint64_t a3, uint64_t a4, const char *a5)
{
  kaldi::nnet1::Nnet::CheckDimensions(this, a2, a3, a4, a5);
  kaldi::nnet1::Nnet::CheckWeights(this);

  return kaldi::nnet1::Nnet::CheckInternalBuffers(this, v6, v7, v8, v9);
}

void kaldi::nnet1::Nnet::SetHistoryOptions(kaldi::nnet1::Nnet *this, const kaldi::nnet1::HistoryOptions *a2, uint64_t a3)
{
  v6 = *(this + 6);
  v7 = *(this + 7);
  while (v6 != v7)
  {
    v8 = *v6++;
    (*(*v8 + 80))(v8, a2);
  }

  if (v9)
  {
    v12 = *(v9 + 8);
    *&v15[15] = *(v9 + 23);
    *v15 = v12;
    v14.__locale_ = off_2829C0;
    v16 = off_2829E0;
    v13 = *(v9 + 13);
    v17 = *(a2 + 2);
    v18 = v13;
    kaldi::nnet1::Nnet::SetTrainOptions(this, &v14, a3, v10, v11);
  }

  else if (kaldi::g_kaldi_verbose_level >= -1)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v14, "SetHistoryOptions", "/Library/Caches/com.apple.xbs/Sources/SiriTTSTraining/tts-speech-feature/subproject/libquasar/libkaldi/src/nnet/nnet-nnet.cc", 1509);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v14, "Inconsistent return type: RecurrentBaseComponent::GetTrainOptions() can not be cast to RecurrentNnetTrainOptions", 112);
    kaldi::KaldiWarnMessage::~KaldiWarnMessage(&v14);
  }
}

void *kaldi::nnet1::operator<<(void *a1, uint64_t a2)
{
  v3 = kaldi::nnet1::operator<<(a1, a2);
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v3, ", and Recurrent style components have additional configurations ", 64);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "num_sequences ", 14);
  std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "bptt_steps ", 11);
  v5 = std::ostream::operator<<();
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", ", 2);
  return a1;
}

{
  v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(a1, "NnetTrainOptions : ", 19);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "learn_rate ", 11);
  v5 = std::ostream::operator<<();
  v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "momentum ", 9);
  v7 = std::ostream::operator<<();
  v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "l2_penalty ", 11);
  v9 = std::ostream::operator<<();
  v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "l1_penalty ", 11);
  v11 = std::ostream::operator<<();
  v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "qtype_compact_grad ", 19);
  v13 = std::ostream::operator<<();
  v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "step_compact_grad ", 18);
  v15 = std::ostream::operator<<();
  v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ", ", 2);
  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, "num_subbatches ", 15);
  v17 = std::ostream::operator<<();
  v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v17, ", ", 2);
  v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "average_gradients ", 18);
  if (*(a2 + 36))
  {
    v20 = "true";
  }

  else
  {
    v20 = "false";
  }

  if (*(a2 + 36))
  {
    v21 = 4;
  }

  else
  {
    v21 = 5;
  }

  v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
  v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, ", ", 2);
  v24 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "vectorize_weights ", 18);
  if (*(a2 + 37))
  {
    v25 = "true";
  }

  else
  {
    v25 = "false";
  }

  if (*(a2 + 37))
  {
    v26 = 4;
  }

  else
  {
    v26 = 5;
  }

  std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, v25, v26);
  return a1;
}

uint64_t *std::vector<std::vector<float>>::push_back[abi:ne200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  if (v3 >= *(a1 + 16))
  {
    result = std::vector<std::vector<float>>::__emplace_back_slow_path<std::vector<float> const&>(a1, a2);
  }

  else
  {
    std::vector<std::vector<int>>::__construct_one_at_end[abi:ne200100]<std::vector<int> const&>(a1, a2);
    result = (v3 + 24);
  }

  *(a1 + 8) = result;
  return result;
}

char *std::vector<kaldi::nnet1::RecurrentBaseComponent *>::__insert_with_size[abi:ne200100]<std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>,std::__wrap_iter<kaldi::nnet1::RecurrentBaseComponent **>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 3);
    if (v12 >> 61)
    {
      std::vector<float>::__throw_length_error[abi:ne200100]();
    }

    v13 = __dst - v11;
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    if (v15)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>>>> *>>(a1, v15);
    }

    v33 = 8 * v16;
    v34 = 8 * a5;
    v35 = (8 * v16);
    do
    {
      v36 = *v7;
      v7 += 8;
      *v35++ = v36;
      v34 -= 8;
    }

    while (v34);
    memcpy((v33 + 8 * a5), v5, a1[1] - v5);
    v37 = *a1;
    v38 = v33 + 8 * a5 + a1[1] - v5;
    a1[1] = v5;
    v39 = v5 - v37;
    v40 = (v33 - (v5 - v37));
    memcpy(v40, v37, v39);
    v41 = *a1;
    *a1 = v40;
    a1[1] = v38;
    a1[2] = 0;
    if (v41)
    {
      operator delete(v41);
    }

    return (8 * v16);
  }

  v17 = v10 - __dst;
  v18 = (v10 - __dst) >> 3;
  if (v18 >= a5)
  {
    v29 = &__dst[8 * a5];
    v30 = (v10 - 8 * a5);
    v31 = a1[1];
    while (v30 < v10)
    {
      v32 = *v30++;
      *v31++ = v32;
    }

    a1[1] = v31;
    if (v10 != v29)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v29);
    }

    v28 = 8 * a5;
    v26 = v5;
    v27 = v7;
    goto LABEL_29;
  }

  v20 = a4 - &__src[v17];
  if (a4 != &__src[v17])
  {
    memmove(a1[1], &__src[v17], a4 - &__src[v17]);
  }

  v21 = (v10 + v20);
  a1[1] = v10 + v20;
  if (v18 >= 1)
  {
    v22 = &v5[8 * a5];
    v23 = v10 + v20;
    if (&v21[-8 * a5] < v10)
    {
      v24 = &v5[a4];
      v25 = &v5[a4 + -8 * a5];
      do
      {
        *(v24 - v7) = *(v25 - v7);
        v25 += 8;
        v24 += 8;
      }

      while (v25 - v7 < v10);
      v23 = v24 - v7;
    }

    a1[1] = v23;
    if (v21 != v22)
    {
      memmove(&v5[8 * a5], v5, v21 - v22);
    }

    if (v10 != v5)
    {
      v26 = v5;
      v27 = v7;
      v28 = v10 - v5;
LABEL_29:
      memmove(v26, v27, v28);
    }
  }

  return v5;
}

uint64_t *std::vector<kaldi::CuMatrix<float>>::vector[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (a2)
  {
    std::vector<kaldi::CuMatrix<float>>::__vallocate[abi:ne200100](a1, a2);
  }

  return a1;
}