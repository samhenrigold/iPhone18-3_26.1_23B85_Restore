BOOL kaldi::OnlineDecodableNnet1Lazy::SkipFrame(kaldi::OnlineDecodableNnet1Lazy *this, uint64_t a2)
{
  v4 = *(this + 17);
  if (v4 > a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Request for expired frame (", 27);
    v8 = MEMORY[0x1B8C84C00](v7, a2);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, "): current frame offset is ", 27);
    MEMORY[0x1B8C84C00](v9, *(this + 17));
    goto LABEL_16;
  }

  if (v4 == -1 || *(this + 26) + v4 + *(this + 47) <= a2)
  {
    if (kaldi::OnlineFeatureMatrix::IsValidFrame(*(this + 5), a2, 1))
    {
      kaldi::OnlineDecodableNnet1Lazy::ProcessBatch(this, a2);
      goto LABEL_6;
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(v13);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "Request for invalid frame (", 27);
    v11 = MEMORY[0x1B8C84C00](v10, a2);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "): you need to check", 20);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v12, " IsLastFrame, or, for frame zero, check that the input is valid.");
LABEL_16:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v13);
  }

LABEL_6:
  if (*(this + 11))
  {
    v5 = (1 << (a2 - (*(this + 68) + *(this + 104)))) & *(*(this + 10) + (((a2 - (*(this + 17) + *(this + 26))) >> 3) & 0x1FFFFFFFFFFFFFF8));
    result = v5 != 0;
    if (*(this + 19) >= a2)
    {
      return result;
    }

    *(this + 19) = a2;
    if (v5)
    {
      ++*(this + 18);
      return 1;
    }
  }

  else if (*(this + 19) < a2)
  {
    result = 0;
    *(this + 19) = a2;
    return result;
  }

  return 0;
}

double kaldi::OnlineDecodableNnet1Lazy::GetSilencePosterior(kaldi::OnlineDecodableNnet1Lazy *this, signed int a2)
{
  if (*(this + 54))
  {
    v2 = *(this + 17);
    if (v2 > a2 || v2 == -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Could not calculate silence posterior for frame=", 48);
      v10 = MEMORY[0x1B8C84C00](v9, a2);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, ", current frame offset is=", 26);
      MEMORY[0x1B8C84C00](v11, *(this + 17));
    }

    else
    {
      v4 = (a2 - (v2 + *(this + 26))) / *(this + 12);
      if (v4 < *(this + 115) && *(this + 114) >= 1)
      {
        LODWORD(result) = *(*(this + 56) + 4 * *(this + 116) * v4);
        return result;
      }

      kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "Silence posterior cache incorrectly calculated rows=", 52);
      v7 = MEMORY[0x1B8C84C00](v6, *(this + 115));
      v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ", cols=", 7);
      MEMORY[0x1B8C84C00](v8, *(this + 114));
    }

    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  return 0.0;
}

void kaldi::OnlineDecodableNnet1Lazy::GetLikelihoodsForRealignment(uint64_t a1, uint64_t a2, int32x2_t *a3)
{
  v3 = *(a1 + 504);
  v4 = __OFSUB__(v3, a2);
  v5 = v3 - a2;
  if (!((v5 < 0) ^ v4 | (v5 == 0)))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v15);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v15, "Requested posteriors for realignment do no longer exist.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v15);
  }

  v6 = *(a1 + 520);
  if (*(a1 + 528) == v6 || (v7 = *(a1 + 544), v8 = (v6 + 8 * (v7 / 0x55)), v9 = *v8, v10 = *v8 + 48 * (v7 % 0x55), v11 = *(v6 + 8 * ((*(a1 + 552) + v7) / 0x55)) + 48 * ((*(a1 + 552) + v7) % 0x55), v10 == v11))
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    do
    {
      v13 = v10 + 48;
      if (v10 + 48 - v9 == 4080)
      {
        v14 = v8[1];
        ++v8;
        v9 = v14;
        v13 = v14;
      }

      v12 += *(v10 + 20);
      v10 = v13;
    }

    while (v13 != v11);
  }

  kaldi::OnlineDecodableNnet1Lazy::GetLikelihoodsForRealignment(a1, a2, (v5 + v12), a3);
}

void kaldi::OnlineDecodableNnet1Lazy::GetLikelihoodsForRealignment(uint64_t a1, uint64_t a2, uint64_t a3, int32x2_t *a4)
{
  v5 = a3;
  v6 = a2;
  if (a3 >= 1 && !*(a1 + 552))
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v39, "Realignment model posterior cache is empty, make sure that acoustic model for realignment is configured correctly");
    goto LABEL_29;
  }

  if (*(a1 + 504) > a2)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v39);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(&v39, "Requested posteriors for realignment do no longer exist.");
LABEL_29:
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v39);
  }

  v8 = (*(**(a1 + 496) + 176))(*(a1 + 496), 0);
  kaldi::CuMatrix<float>::Resize(a4, v5, v8, 0, 0);
  if (v5)
  {
    v10 = *(a1 + 520);
    if (*(a1 + 528) != v10)
    {
      v11 = *(a1 + 544);
      v12 = v11 / 0x55;
      v13 = *(v10 + 8 * (v11 / 0x55)) + 48 * (v11 % 0x55);
      v14 = *(v10 + 8 * ((*(a1 + 552) + v11) / 0x55)) + 48 * ((*(a1 + 552) + v11) % 0x55);
      if (v13 != v14)
      {
        v15 = 0;
        v16 = *(a1 + 504);
        v17 = (v10 + 8 * v12);
        v34 = v14;
        do
        {
          v18 = *(v13 + 20);
          if (v18 + v16 <= v6)
          {
            v16 += v18;
          }

          else
          {
            v35 = v17;
            v19 = v6;
            if (v6 <= v16)
            {
              v20 = 0;
            }

            else
            {
              v20 = v6 - v16;
            }

            v21 = v18 - v20;
            v22 = v5;
            if ((v21 + v15) <= v5)
            {
              v23 = v21;
            }

            else
            {
              v23 = v5 - v15;
            }

            v24 = (*(**(a1 + 496) + 176))(*(a1 + 496), 0);
            v25 = a4[3].i32[0];
            v26 = a4[3].i32[1] - v25 * v15;
            v27 = a4[4];
            *&v40 = *&a4[1] + 4 * v25 * v15;
            *(&v40 + 1) = __PAIR64__(v23, v24);
            *&v41 = __PAIR64__(v26, v25);
            *(&v41 + 1) = v27;
            v28 = *(v13 + 24);
            v29 = *(v13 + 8) + 4 * (v28 * v20);
            v27.i32[0] = *(v13 + 28) - v28 * v20;
            v30 = *(v13 + 32);
            DWORD2(v37) = *(v13 + 16);
            HIDWORD(v37) = v23;
            *&v38 = __PAIR64__(v27.u32[0], v28);
            *(&v38 + 1) = v30;
            v39 = &unk_1F2CFA908;
            v36 = &unk_1F2CFA908;
            *&v37 = v29;
            kaldi::CuMatrixBase<float>::CopyFromMat<float>(&v39, &v36, 111);
            v15 += v23;
            v36 = &unk_1F2CFA908;
            v37 = 0u;
            v38 = 0u;
            quasar::Bitmap::~Bitmap(&v36);
            v39 = &unk_1F2CFA908;
            v40 = 0u;
            v41 = 0u;
            quasar::Bitmap::~Bitmap(&v39);
            v16 += *(v13 + 20);
            v5 = v22;
            v6 = v19;
            v14 = v34;
            v17 = v35;
          }

          if (v15 >= v5)
          {
            break;
          }

          v13 += 48;
          if (v13 - *v17 == 4080)
          {
            v31 = v17[1];
            ++v17;
            v13 = v31;
          }
        }

        while (v13 != v14);
      }
    }

    v32 = *(a1 + 488);
    if (v32)
    {
      kaldi::nnet1::PdfPrior::SubtractOnLogpost(v32, a4, v9);
    }

    while (*(a1 + 552))
    {
      v33 = *(*(*(a1 + 520) + 8 * (*(a1 + 544) / 0x55uLL)) + 48 * (*(a1 + 544) % 0x55uLL) + 20) + *(a1 + 504);
      if (v33 > v6)
      {
        break;
      }

      *(a1 + 504) = v33;
      std::deque<kaldi::CuMatrix<float>>::pop_front((a1 + 512));
    }
  }
}

void sub_1B5764A58(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, __int128 a12, __int128 a13, uint64_t a14, __int128 a15, __int128 a16)
{
  a12 = 0u;
  a13 = 0u;
  quasar::Bitmap::~Bitmap(&a11);
  a15 = 0u;
  a16 = 0u;
  quasar::Bitmap::~Bitmap(&a14);
  _Unwind_Resume(a1);
}

float kaldi::OnlineDecodableMatrixScaled::LogLikelihood(kaldi::OnlineDecodableMatrixScaled *this, int a2, int a3)
{
  if (*(this + 20) != a2)
  {
    kaldi::OnlineDecodableMatrixScaled::CacheFrame(this, a2);
  }

  return *(this + 8) * *(*(this + 7) + 4 * *(*(this + 1) + 4 * a3));
}

float kaldi::OnlineDecodableMatrixScaledMapped::LogLikelihood(kaldi::OnlineDecodableMatrixScaledMapped *this, int a2, int a3)
{
  if (*(this + 31) != a2)
  {
    kaldi::OnlineDecodableMatrixScaledMapped::CacheFrame(this, a2);
  }

  v5 = 0.0;
  if (*(this + 28) == 1)
  {
    v5 = *(*(this + 5) + 4 * a3);
  }

  v6 = *(*(this + 9) + 4 * *(*(*(this + 1) + 96) + 4 * a3)) + v5;
  if (v6 <= -*(this + 8))
  {
    v6 = -INFINITY;
  }

  return *(this + 6) * v6;
}

float kaldi::OnlineDecodableMatrixScaledMapped::GetSilencePosterior(kaldi::OnlineDecodableMatrixScaledMapped *this, int a2)
{
  if (*(this + 31) != a2)
  {
    kaldi::OnlineDecodableMatrixScaledMapped::CacheFrame(this, a2);
    if (*(this + 31) != a2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v5);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, "LogLikelihood() must be called before this method as silence posteriors are pre-computed there");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v5);
    }
  }

  result = 0.0;
  if (*(this + 128) == 1)
  {
    return *(this + 30);
  }

  return result;
}

float kaldi::OnlineDecodableMatrixScaledMapped::GetEndpointerScore(kaldi::OnlineDecodableMatrixScaledMapped *this, int a2, int a3)
{
  if (*(this + 31) != a2)
  {
    kaldi::OnlineDecodableMatrixScaledMapped::CacheFrame(this, a2);
    if (*(this + 31) != a2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v7);
      std::operator<<[abi:ne200100]<std::char_traits<char>>(v7, "LogLikelihood() must be called before this method as endpointer scores are pre-computed there");
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(v7);
    }
  }

  return *(*(this + 12) + 4 * a3);
}

float kaldi::OnlineDecodableMatrixScaledMappedTm::LogLikelihood(kaldi::OnlineDecodableMatrixScaledMappedTm *this, int a2, int a3)
{
  if (*(this + 31) != a2)
  {
    kaldi::OnlineDecodableMatrixScaledMapped::CacheFrame(this, a2);
  }

  v5 = *(this + 1);
  v6 = *(this + 6);
  v7 = *(*(this + 9) + 4 * *(*(v5 + 12) + 4 * a3));
  v8 = *(this + 33);
  v9 = *(this + 34);
  return v6 * (v7 + (v8 * *(*(this + 9) + 4 * (kaldi::TransitionModel::TransitionIdToTransitionIndex(v5, a3) + v9))));
}

void kaldi::OnlineDecodableNnet1Lazy::~OnlineDecodableNnet1Lazy(kaldi::OnlineDecodableNnet1Lazy *this)
{
  kaldi::OnlineDecodableNnet1Lazy::~OnlineDecodableNnet1Lazy(this);

  JUMPOUT(0x1B8C85350);
}

{
  *this = &unk_1F2D2EC58;
  v2 = *(this + 77);
  if (v2)
  {
    *(this + 78) = v2;
    operator delete(v2);
  }

  v3 = *(this + 74);
  if (v3)
  {
    operator delete(v3);
  }

  std::deque<kaldi::CuMatrix<float>>::~deque[abi:ne200100](this + 64);
  kaldi::CuMatrix<float>::~CuMatrix(this + 440);
  v4 = *(this + 51);
  if (v4)
  {
    operator delete(v4);
  }

  kaldi::Matrix<float>::~Matrix(this + 368);
  kaldi::CuVector<float>::~CuVector(this + 42);
  kaldi::CuMatrix<float>::~CuMatrix(this + 288);
  kaldi::CuMatrix<float>::~CuMatrix(this + 240);
  kaldi::CuMatrix<float>::~CuMatrix(this + 192);
  kaldi::Matrix<float>::~Matrix(this + 144);
  v5 = *(this + 15);
  if (v5)
  {
    *(this + 16) = v5;
    operator delete(v5);
  }

  v6 = *(this + 10);
  if (v6)
  {
    operator delete(v6);
  }

  quasar::Bitmap::~Bitmap(this);
}

void *kaldi::OnlineDecodableMatrixScaled::CacheFrame(kaldi::OnlineDecodableMatrixScaled *this, signed int a2)
{
  kaldi::Vector<float>::Resize(this + 7, *(this + 12), 0);
  if ((kaldi::OnlineFeatureMatrix::IsValidFrame(*(this + 5), a2, 1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v6);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "Request for invalid frame (you need to check IsLastFrame,", 57);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v5, " or, for frame zero, check that the input is valid.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(v6);
  }

  kaldi::OnlineFeatureMatrix::GetFrame(v6, *(this + 5), a2);
  result = kaldi::VectorBase<float>::CopyFromVec(this + 56, v6);
  *(this + 20) = a2;
  return result;
}

void kaldi::OnlineDecodableMatrixScaledMapped::CacheFrame(kaldi::OnlineDecodableMatrixScaledMapped *this, signed int a2)
{
  kaldi::Vector<float>::Resize(this + 9, *(this + 16), 0);
  if ((kaldi::OnlineFeatureMatrix::IsValidFrame(*(this + 2), a2, 1) & 1) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v5);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v5, "Request for invalid frame (you need to check IsLastFrame,", 57);
    std::operator<<[abi:ne200100]<std::char_traits<char>>(v4, " or, for frame zero, check that the input is valid.");
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v5);
  }

  kaldi::OnlineFeatureMatrix::GetFrame(&v5, *(this + 2), a2);
  kaldi::VectorBase<float>::CopyFromVec(this + 72, &v5);
  if (*(this + 129) == 1)
  {
    kaldi::OnlineFeatureMatrix::GetEndpointerScore(*(this + 2), a2, &v5);
    kaldi::Vector<float>::Resize(this + 12, v6, 0);
    kaldi::VectorBase<float>::CopyFromVec(this + 96, &v5);
  }

  *(this + 30) = kaldi::OnlineFeatureMatrix::GetSilencePosterior(*(this + 2), a2);
  *(this + 31) = a2;
}

long double quasar::mergedAcousticCost(uint64_t a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8) - *a1;
  v5 = v4 >> 3;
  if (v4)
  {
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 >> 3;
    }

    v7 = *a2;
    do
    {
      v8 = *v2++;
      *v7++ = -*(v8 + 16);
      --v6;
    }

    while (v6);
  }

  v9 = a2[1];
  v10 = v9 - v3;
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = *v3;
    }

    else
    {
      v12 = v3 + 1;
      v13 = *v3;
      while (v12 != v9)
      {
        v14 = *v12++;
        v15 = v14;
        if (v14 > v13)
        {
          v13 = v15;
        }
      }

      for (i = 0.0; v3 != v9; ++v3)
      {
        v17 = *v3 - v13;
        if (v17 >= -36.0436534)
        {
          i = i + exp(v17);
        }
      }

      v11 = v13 + log(i);
    }
  }

  else
  {
    v11 = -INFINITY;
  }

  return -(v11 - log(v5));
}

long double quasar::mergedAcousticCostUnpushed(uint64_t a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8) - *a1;
  v5 = v4 >> 3;
  if (v4)
  {
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v4 >> 3;
    }

    v7 = *a2;
    do
    {
      v8 = *v2++;
      *v7++ = -*(v8 + 24);
      --v6;
    }

    while (v6);
  }

  v9 = a2[1];
  v10 = v9 - v3;
  if (v10)
  {
    if (v10 == 1)
    {
      v11 = *v3;
    }

    else
    {
      v12 = v3 + 1;
      v13 = *v3;
      while (v12 != v9)
      {
        v14 = *v12++;
        v15 = v14;
        if (v14 > v13)
        {
          v13 = v15;
        }
      }

      for (i = 0.0; v3 != v9; ++v3)
      {
        v17 = *v3 - v13;
        if (v17 >= -36.0436534)
        {
          i = i + exp(v17);
        }
      }

      v11 = v13 + log(i);
    }
  }

  else
  {
    v11 = -INFINITY;
  }

  return -(v11 - log(v5));
}

long double quasar::mergedAcousticCostGeneric(uint64_t *a1, double **a2, uint64_t a3)
{
  v4 = *a1;
  if (a1[1] == *a1)
  {
    v12 = 0;
    v10 = *a2;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *(a3 + 24);
      if (!v8)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v9 = (*(*v8 + 48))(v8, *(v4 + 8 * v7));
      v10 = *a2;
      (*a2)[v7++] = -v9;
      v4 = *a1;
      v11 = a1[1] - *a1;
    }

    while (v7 < v11 >> 3);
    v12 = v11 >> 3;
  }

  v13 = a2[1];
  v14 = v13 - v10;
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = *v10;
    }

    else
    {
      v16 = v10 + 1;
      v17 = *v10;
      while (v16 != v13)
      {
        v18 = *v16++;
        v19 = v18;
        if (v18 > v17)
        {
          v17 = v19;
        }
      }

      for (i = 0.0; v10 != v13; ++v10)
      {
        v21 = *v10 - v17;
        if (v21 >= -36.0436534)
        {
          i = i + exp(v21);
        }
      }

      v15 = v17 + log(i);
    }
  }

  else
  {
    v15 = -INFINITY;
  }

  return -(v15 - log(v12));
}

double quasar::mergedConfidence(uint64_t **a1, int a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = a1[1];
    if (v2 == v3)
    {
      return 0.0;
    }

    else
    {
      v4 = 1;
      result = 0.0;
      do
      {
        if ((v4 & 1) != 0 || *(*v2 + 32) > result)
        {
          result = *(*v2 + 32);
        }

        v4 = 0;
        ++v2;
      }

      while (v2 != v3);
    }
  }

  else
  {
    v6 = a1[1];
    v7 = 0.0;
    if (v2 != v6)
    {
      v8 = *a1;
      do
      {
        v9 = *v8++;
        v7 = v7 + *(v9 + 32);
      }

      while (v8 != v6);
    }

    return v7 / (v6 - v2);
  }

  return result;
}

void quasar::mergedLogPosterior(uint64_t a1, double **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a1 + 8) - *a1;
  if (v4)
  {
    v5 = v4 >> 3;
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v6 = *a2;
    do
    {
      v7 = *v2++;
      *v6++ = *(v7 + 56);
      --v5;
    }

    while (v5);
  }

  v8 = a2[1];
  if ((v8 - v3) > 1)
  {
    v9 = v3 + 1;
    v10 = *v3;
    while (v9 != v8)
    {
      v11 = *v9++;
      v12 = v11;
      if (v11 > v10)
      {
        v10 = v12;
      }
    }

    for (i = 0.0; v3 != v8; ++v3)
    {
      v14 = *v3 - v10;
      if (v14 >= -36.0436534)
      {
        i = i + exp(v14);
      }
    }

    log(i);
  }
}

void quasar::mergedLogPosteriorGeneric(uint64_t *a1, double **a2, uint64_t a3)
{
  v4 = *a1;
  if (a1[1] == *a1)
  {
    v10 = *a2;
  }

  else
  {
    v7 = 0;
    do
    {
      v8 = *(a3 + 24);
      if (!v8)
      {
        std::__throw_bad_function_call[abi:ne200100]();
      }

      v9 = (*(*v8 + 48))(v8, *(v4 + 8 * v7));
      v10 = *a2;
      (*a2)[v7++] = v9;
      v4 = *a1;
    }

    while (v7 < (a1[1] - *a1) >> 3);
  }

  v11 = a2[1];
  if ((v11 - v10) > 1)
  {
    v12 = v10 + 1;
    v13 = *v10;
    while (v12 != v11)
    {
      v14 = *v12++;
      v15 = v14;
      if (v14 > v13)
      {
        v13 = v15;
      }
    }

    for (i = 0.0; v10 != v11; ++v10)
    {
      v17 = *v10 - v13;
      if (v17 >= -36.0436534)
      {
        i = i + exp(v17);
      }
    }

    log(i);
  }
}

double quasar::mergedMin(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (a1[1] == *a1)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = (*(*v5 + 48))(v5, *v2);
  v7 = *a1;
  if (a1[1] - *a1 >= 9uLL)
  {
    v8 = 1;
    while (1)
    {
      v9 = *(a2 + 24);
      if (!v9)
      {
        break;
      }

      v10 = (*(*v9 + 48))(v9, v7[v8]);
      if (v10 < v6)
      {
        v6 = v10;
      }

      ++v8;
      v7 = *a1;
      if (v8 >= (a1[1] - *a1) >> 3)
      {
        return v6;
      }
    }

LABEL_10:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return v6;
}

double quasar::mergedMax(void *a1, uint64_t a2)
{
  v2 = *a1;
  if (a1[1] == *a1)
  {
    std::vector<int>::__throw_out_of_range[abi:ne200100]();
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
    goto LABEL_10;
  }

  v6 = (*(*v5 + 48))(v5, *v2);
  v7 = *a1;
  if (a1[1] - *a1 >= 9uLL)
  {
    v8 = 1;
    while (1)
    {
      v9 = *(a2 + 24);
      if (!v9)
      {
        break;
      }

      v10 = (*(*v9 + 48))(v9, v7[v8]);
      if (v6 < v10)
      {
        v6 = v10;
      }

      ++v8;
      v7 = *a1;
      if (v8 >= (a1[1] - *a1) >> 3)
      {
        return v6;
      }
    }

LABEL_10:
    std::__throw_bad_function_call[abi:ne200100]();
  }

  return v6;
}

double quasar::mergedGraphCost(uint64_t **a1, double **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = v3 - *a1;
  if (v3 != *a1)
  {
    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v3 - *a1;
    }

    v7 = *a2;
    v8 = *a1;
    do
    {
      v9 = *v8++;
      *v7++ = *(v9 + 240);
      --v6;
    }

    while (v6);
  }

  v10 = a2[1];
  v11 = v10 - v4;
  if (v11)
  {
    if (v11 == 1)
    {
      v12 = *v4;
    }

    else
    {
      v13 = v4 + 1;
      v14 = *v4;
      while (v13 != v10)
      {
        v15 = *v13++;
        v16 = v15;
        if (v15 > v14)
        {
          v14 = v16;
        }
      }

      v17 = 0.0;
      if (v4 != v10)
      {
        v18 = v4;
        do
        {
          v19 = *v18 - v14;
          if (v19 >= -36.0436534)
          {
            v17 = v17 + exp(v19);
          }

          ++v18;
        }

        while (v18 != v10);
      }

      v12 = v14 + log(v17);
    }
  }

  else
  {
    v12 = -INFINITY;
  }

  if (v3 != v2)
  {
    if (v5 <= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v5;
    }

    v21 = v4;
    do
    {
      v22 = *v2++;
      *v21++ = *(v22 + 240) - *(v22 + 40);
      --v20;
    }

    while (v20);
  }

  if (v11)
  {
    if (v11 == 1)
    {
      v23 = *v4;
    }

    else
    {
      v24 = v4 + 1;
      v25 = *v4;
      while (v24 != v10)
      {
        v26 = *v24++;
        v27 = v26;
        if (v26 > v25)
        {
          v25 = v27;
        }
      }

      for (i = 0.0; v4 != v10; ++v4)
      {
        v29 = *v4 - v25;
        if (v29 >= -36.0436534)
        {
          i = i + exp(v29);
        }
      }

      v23 = v25 + log(i);
    }
  }

  else
  {
    v23 = -INFINITY;
  }

  return -(v23 - v12);
}

void quasar::getNormWord(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 23);
  if ((v3 & 0x80u) != 0)
  {
    v3 = *(a1 + 8);
  }

  if (v3)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v5 = quasar::QsrText::SingletonInstance(a1);
    v6 = &v10;
    quasar::QsrText::decodeQsrText(v5, a1, &v10);
    if (v12 >= 0)
    {
      v7 = &v10 + HIBYTE(v12);
    }

    else
    {
      v7 = v10 + v11;
    }

    if (v12 < 0)
    {
      v6 = v10;
    }

    while (v6 != v7)
    {
      *v6 = __tolower(*v6);
      ++v6;
    }

    std::string::basic_string[abi:ne200100]<0>(&__p, " ");
    quasar::splitStringSimple(&v10, &v9, &__p);
  }

  std::string::basic_string[abi:ne200100]<0>(a2, "");
}

void sub_1B5765D44(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30)
{
  a16 = &a22;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (a30 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void quasar::setNormWords(quasar *this, kaldi::WordHypLattice *a2)
{
  v2 = *(this + 5);
  for (i = *(this + 6); v2 != i; ++v2)
  {
    quasar::getNormWord(*v2 + 264, &v5);
    v4 = *v2;
    if (*(*v2 + 488) == 1)
    {
      if (*(v4 + 487) < 0)
      {
        operator delete(*(v4 + 464));
      }

      *(v4 + 464) = v5;
      *(v4 + 480) = v6;
    }

    else
    {
      *(v4 + 464) = v5;
      *(v4 + 480) = v6;
      *(v4 + 488) = 1;
    }
  }
}

void quasar::mergeArcs(kaldi::WordHypLattice *a1, uint64_t **a2, int a3)
{
  v34[4] = *MEMORY[0x1E69E9840];
  v3 = a2[1] - *a2;
  if (v3 != 8)
  {
    v7 = **a2;
    std::vector<double>::vector[abi:ne200100](__p, v3 >> 3);
    *(v7 + 16) = quasar::mergedAcousticCost(a2, __p);
    *(v7 + 24) = quasar::mergedAcousticCostUnpushed(a2, __p);
    *(v7 + 32) = quasar::mergedConfidence(a2, a3);
    quasar::mergedLogPosterior(a2, __p);
    *(v7 + 56) = v8;
    v34[0] = &unk_1F2D2ECE8;
    v34[3] = v34;
    quasar::mergedLogPosteriorGeneric(a2, __p, v34);
    *(v7 + 64) = v9;
    std::__function::__value_func<double ()(kaldi::WordHypLattice::Arc const&)>::~__value_func[abi:ne200100](v34);
    *(v7 + 40) = quasar::mergedGraphCost(a2, __p);
    v10 = *a2;
    v11 = a2[1];
    if (*a2 == v11)
    {
      v12 = 0;
    }

    else
    {
      v12 = 0;
      do
      {
        v13 = *v10++;
        v12 = (*(v13 + 49) | v12) != 0;
      }

      while (v10 != v11);
    }

    *(v7 + 49) = v12;
    v33[0] = &unk_1F2D2ED68;
    v33[3] = v33;
    *(v7 + 128) = quasar::mergedMin(a2, v33);
    std::__function::__value_func<double ()(kaldi::WordHypLattice::Arc const&)>::~__value_func[abi:ne200100](v33);
    v32[0] = &unk_1F2D2EDE8;
    v32[3] = v32;
    *(v7 + 136) = quasar::mergedMax(a2, v32);
    std::__function::__value_func<double ()(kaldi::WordHypLattice::Arc const&)>::~__value_func[abi:ne200100](v32);
    v31[0] = &unk_1F2D2EE68;
    v31[3] = v31;
    *(v7 + 192) = quasar::mergedAcousticCostGeneric(a2, __p, v31);
    std::__function::__value_func<double ()(kaldi::WordHypLattice::Arc const&)>::~__value_func[abi:ne200100](v31);
    v30[0] = &unk_1F2D2EEE8;
    v30[3] = v30;
    *(v7 + 200) = quasar::mergedAcousticCostGeneric(a2, __p, v30);
    std::__function::__value_func<double ()(kaldi::WordHypLattice::Arc const&)>::~__value_func[abi:ne200100](v30);
    v29[0] = &unk_1F2D2EF68;
    v29[3] = v29;
    quasar::mergedLogPosteriorGeneric(a2, __p, v29);
    *(v7 + 208) = v14;
    std::__function::__value_func<double ()(kaldi::WordHypLattice::Arc const&)>::~__value_func[abi:ne200100](v29);
    v15 = *a2;
    v16 = a2[1];
    v17 = v16 - *a2;
    if (v16 == *a2)
    {
      v22 = 0;
    }

    else
    {
      v18 = 0;
      v19 = 0;
      v20 = v17 >> 3;
      if (v20 <= 1)
      {
        v20 = 1;
      }

      v21 = -INFINITY;
      do
      {
        if (*(v15[v18] + 56) > v21)
        {
          v19 = v18;
          v21 = *(v15[v18] + 56);
        }

        ++v18;
      }

      while (v20 != v18);
      v22 = v19;
    }

    v23 = v15[v22];
    *(v7 + 256) = *(&v23[10].__r_.__value_.__l + 2);
    std::string::operator=((v7 + 264), v23 + 11);
    v24 = (*a2)[v22];
    *(v7 + 288) = *(v24 + 288);
    if (v7 != v24)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v7 + 80), *(v24 + 80), *(v24 + 88), 0xAAAAAAAAAAAAAAABLL * ((*(v24 + 88) - *(v24 + 80)) >> 3));
      v24 = (*a2)[v22];
    }

    if (v7 != v24)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v7 + 104), *(v24 + 104), *(v24 + 112), (*(v24 + 112) - *(v24 + 104)) >> 2);
      v24 = (*a2)[v22];
    }

    std::string::operator=((v7 + 216), (v24 + 216));
    v25 = *a2;
    v26 = (*a2)[v22];
    if (v7 != v26)
    {
      std::vector<std::string>::__assign_with_size[abi:ne200100]<std::string*,std::string*>((v7 + 168), *(v26 + 168), *(v26 + 176), 0xAAAAAAAAAAAAAAABLL * ((*(v26 + 176) - *(v26 + 168)) >> 3));
      v25 = *a2;
      v26 = (*a2)[v22];
    }

    if (v7 != v26)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>((v7 + 144), *(v26 + 144), *(v26 + 152), (*(v26 + 152) - *(v26 + 144)) >> 2);
      v25 = *a2;
    }

    v27 = (v25 + 1);
    if (a2[1] != v25 + 1)
    {
      do
      {
        kaldi::WordHypLattice::DeleteArc(a1, v27++);
      }

      while (v27 != a2[1]);
    }

    *a1 = 0;
    if (__p[0])
    {
      __p[1] = __p[0];
      operator delete(__p[0]);
    }
  }
}

void sub_1B5766270(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24)
{
  std::__function::__value_func<double ()(kaldi::WordHypLattice::Arc const&)>::~__value_func[abi:ne200100](&a12);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t quasar::mergeArcs(quasar *this, kaldi::WordHypLattice *a2)
{
  v3 = *(this + 2);
  v30 = *(this + 3);
  if (v3 != v30)
  {
    v4 = a2;
    do
    {
      v33[0] = 0;
      v33[1] = 0;
      v31 = v3;
      v32 = v33;
      v5 = *v3 + 64;
      v6 = *(*v3 + 72);
      if (v6 != v5)
      {
        do
        {
          v35 = (*(v6 + 16) + 8);
          v7 = std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(&v32, v35, &std::piecewise_construct, &v35);
          v35 = (*(v6 + 16) + 464);
          v8 = std::__tree<std::__value_type<std::string,std::vector<kaldi::WordHypLattice::Arc *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<kaldi::WordHypLattice::Arc *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(v7 + 5, v35, &std::piecewise_construct, &v35, &v34);
          v9 = v8;
          v11 = *(v8 + 8);
          v10 = *(v8 + 9);
          if (v11 >= v10)
          {
            v13 = *(v8 + 7);
            v14 = (v11 - v13) >> 3;
            if ((v14 + 1) >> 61)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v15 = v10 - v13;
            v16 = v15 >> 2;
            if (v15 >> 2 <= (v14 + 1))
            {
              v16 = v14 + 1;
            }

            if (v15 >= 0x7FFFFFFFFFFFFFF8)
            {
              v17 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v17 = v16;
            }

            if (v17)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<kaldi::CuWorkspace *>>((v8 + 56), v17);
            }

            *(8 * v14) = *(v6 + 16);
            v12 = 8 * v14 + 8;
            v18 = *(v8 + 7);
            v19 = *(v8 + 8) - v18;
            v20 = (8 * v14 - v19);
            memcpy(v20, v18, v19);
            v21 = *(v9 + 7);
            *(v9 + 7) = v20;
            *(v9 + 8) = v12;
            *(v9 + 9) = 0;
            if (v21)
            {
              operator delete(v21);
            }
          }

          else
          {
            *v11 = *(v6 + 16);
            v12 = (v11 + 1);
          }

          *(v9 + 8) = v12;
          v6 = *(v6 + 8);
        }

        while (v6 != v5);
        v22 = v32;
        if (v32 != v33)
        {
          do
          {
            v23 = v22[5];
            if (v23 != v22 + 6)
            {
              do
              {
                if ((v23[8] - v23[7]) >= 9)
                {
                  quasar::mergeArcs(this, v23 + 7, v4);
                }

                v24 = v23[1];
                if (v24)
                {
                  do
                  {
                    v25 = v24;
                    v24 = *v24;
                  }

                  while (v24);
                }

                else
                {
                  do
                  {
                    v25 = v23[2];
                    v26 = *v25 == v23;
                    v23 = v25;
                  }

                  while (!v26);
                }

                v23 = v25;
              }

              while (v25 != v22 + 6);
            }

            v27 = v22[1];
            if (v27)
            {
              do
              {
                v28 = v27;
                v27 = *v27;
              }

              while (v27);
            }

            else
            {
              do
              {
                v28 = v22[2];
                v26 = *v28 == v22;
                v22 = v28;
              }

              while (!v26);
            }

            v22 = v28;
          }

          while (v28 != v33);
        }
      }

      std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>>>::destroy(&v32, v33[0]);
      v3 = v31 + 8;
    }

    while (v31 + 8 != v30);
  }

  kaldi::WordHypLattice::RecomputeTopSortedNodes(this);
  kaldi::WordHypLattice::ReassignNodeIds(this);
  return kaldi::WordHypLattice::ReassignArcIds(this);
}

uint64_t std::__function::__func<quasar::mergeArcs(kaldi::WordHypLattice &,std::vector<kaldi::WordHypLattice::Arc *> &,BOOL)::$_0,std::allocator<quasar::mergeArcs(kaldi::WordHypLattice &,std::vector<kaldi::WordHypLattice::Arc *> &,BOOL)::$_0>,double ()(kaldi::WordHypLattice::Arc const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::mergeArcs(kaldi::WordHypLattice &,std::vector<kaldi::WordHypLattice::Arc *> &,BOOL)::$_1,std::allocator<quasar::mergeArcs(kaldi::WordHypLattice &,std::vector<kaldi::WordHypLattice::Arc *> &,BOOL)::$_1>,double ()(kaldi::WordHypLattice::Arc const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::mergeArcs(kaldi::WordHypLattice &,std::vector<kaldi::WordHypLattice::Arc *> &,BOOL)::$_2,std::allocator<quasar::mergeArcs(kaldi::WordHypLattice &,std::vector<kaldi::WordHypLattice::Arc *> &,BOOL)::$_2>,double ()(kaldi::WordHypLattice::Arc const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::mergeArcs(kaldi::WordHypLattice &,std::vector<kaldi::WordHypLattice::Arc *> &,BOOL)::$_3,std::allocator<quasar::mergeArcs(kaldi::WordHypLattice &,std::vector<kaldi::WordHypLattice::Arc *> &,BOOL)::$_3>,double ()(kaldi::WordHypLattice::Arc const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::mergeArcs(kaldi::WordHypLattice &,std::vector<kaldi::WordHypLattice::Arc *> &,BOOL)::$_4,std::allocator<quasar::mergeArcs(kaldi::WordHypLattice &,std::vector<kaldi::WordHypLattice::Arc *> &,BOOL)::$_4>,double ()(kaldi::WordHypLattice::Arc const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__func<quasar::mergeArcs(kaldi::WordHypLattice &,std::vector<kaldi::WordHypLattice::Arc *> &,BOOL)::$_5,std::allocator<quasar::mergeArcs(kaldi::WordHypLattice &,std::vector<kaldi::WordHypLattice::Arc *> &,BOOL)::$_5>,double ()(kaldi::WordHypLattice::Arc const&)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>>>::destroy(a1, a2[1]);
    std::__tree<std::__value_type<std::string,std::vector<int>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<int>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<int>>>>::destroy((a2 + 5), a2[6]);

    operator delete(a2);
  }
}

void *std::__tree<std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>,std::__map_value_compare<kaldi::WordHypLattice::Node *,std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>,std::less<kaldi::WordHypLattice::Node *>,true>,std::allocator<std::__value_type<kaldi::WordHypLattice::Node *,std::map<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>>>::__emplace_unique_key_args<kaldi::WordHypLattice::Node *,std::piecewise_construct_t const&,std::tuple<kaldi::WordHypLattice::Node * const&>,std::tuple<>>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t **a4)
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

char *std::__tree<std::__value_type<std::string,std::vector<kaldi::WordHypLattice::Arc *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<kaldi::WordHypLattice::Arc *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>(uint64_t **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *std::__tree<std::__value_type<std::string,std::wstring>,std::__map_value_compare<std::string,std::__value_type<std::string,std::wstring>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::wstring>>>::__find_equal<std::string>(a1, &v7, a2);
  if (!v5)
  {
    std::__tree<std::__value_type<std::string,std::vector<kaldi::WordHypLattice::Arc *>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::vector<kaldi::WordHypLattice::Arc *>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::vector<kaldi::WordHypLattice::Arc *>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v5;
}

double quasar::UtteranceDelayResultStream::UtteranceDelayResultStream(quasar::RecogResultStreamBase *a1, void *a2, void *a3)
{
  v5 = quasar::RecogResultStreamBase::RecogResultStreamBase(a1);
  *v5 = &unk_1F2D2EFE8;
  v6 = a2[1];
  v5[3] = *a2;
  v5[4] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v7 = a3[1];
  v5[5] = *a3;
  v5[6] = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(v5 + 56) = 1;
  result = 0.0;
  *(v5 + 4) = 0u;
  *(v5 + 5) = 0u;
  *(v5 + 6) = 0u;
  *(v5 + 7) = 0u;
  *(v5 + 124) = 0u;
  *(v5 + 140) = 1;
  *(v5 + 144) = 0;
  return result;
}

void quasar::UtteranceDelayResultStream::writePartial(uint64_t a1, __int128 **a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, quasar::Token ***a7, uint64_t a8, uint64_t a9, __int16 a10, uint64_t a11)
{
  v64 = *MEMORY[0x1E69E9840];
  v58 = 0;
  v59 = 0;
  v60 = 0;
  v13 = a7[1];
  if (*a7 == v13)
  {
    v40[0] = 0;
    v40[1] = 0;
    *&v41[0] = 0;
    std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](&v58, v40);
    *&v55 = v40;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v55);
    v14 = *a2;
    v15 = a2[1];
    if (*a2 != v15)
    {
      do
      {
        v16 = v59;
        if (*(v14 + 23) < 0)
        {
          std::string::__init_copy_ctor_external(&v57, *v14, *(v14 + 1));
        }

        else
        {
          v17 = *v14;
          v57.__r_.__value_.__r.__words[2] = *(v14 + 2);
          *&v57.__r_.__value_.__l.__data_ = v17;
        }

        std::string::basic_string[abi:ne200100]<0>(&v55, "");
        std::string::basic_string[abi:ne200100]<0>(&v53, "");
        v50 = 0;
        v51 = 0;
        v52 = 0;
        std::string::basic_string[abi:ne200100]<0>(&v62, "");
        quasar::Token::Token(v40, &v57, 0, 0, 0, 1, 0, &v55, 0.0, &v53, &v50, 0, &v62, 0, 0, 0);
        v18 = *(v16 - 2);
        if (v18 >= *(v16 - 1))
        {
          v26 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token>(v16 - 3, v40);
        }

        else
        {
          v19 = *v40;
          *(v18 + 16) = *&v41[0];
          *v18 = v19;
          v40[1] = 0;
          *&v41[0] = 0;
          v40[0] = 0;
          v20 = *(&v41[1] + 7);
          *(v18 + 24) = *(v41 + 8);
          *(v18 + 39) = v20;
          v21 = v43[0];
          *(v18 + 48) = *v42;
          *(v18 + 64) = v21;
          *(v18 + 72) = 0;
          v42[1] = 0;
          v43[0] = 0;
          v42[0] = 0;
          *(v18 + 80) = 0;
          *(v18 + 88) = 0;
          *(v18 + 72) = *&v43[1];
          *(v18 + 88) = v43[3];
          memset(&v43[1], 0, 24);
          v22 = *v44;
          *(v18 + 112) = v45[0];
          *(v18 + 120) = 0;
          *(v18 + 96) = v22;
          v44[1] = 0;
          v45[0] = 0;
          v44[0] = 0;
          *(v18 + 128) = 0;
          *(v18 + 136) = 0;
          *(v18 + 120) = *&v45[1];
          *(v18 + 136) = v45[3];
          memset(&v45[1], 0, 24);
          v23 = *v46;
          *(v18 + 160) = v47;
          *(v18 + 144) = v23;
          v46[1] = 0;
          *&v47 = 0;
          v46[0] = 0;
          LODWORD(v21) = DWORD2(v47);
          *(v18 + 172) = WORD6(v47);
          *(v18 + 168) = v21;
          v24 = *__p;
          *(v18 + 192) = *&v49[0];
          *(v18 + 176) = v24;
          __p[1] = 0;
          *&v49[0] = 0;
          __p[0] = 0;
          v25 = *(v49 + 8);
          *(v18 + 216) = DWORD2(v49[1]);
          *(v18 + 200) = v25;
          v26 = v18 + 224;
          *(v16 - 2) = (v18 + 224);
        }

        *(v16 - 2) = v26;
        if (SBYTE7(v49[0]) < 0)
        {
          operator delete(__p[0]);
        }

        if (SBYTE7(v47) < 0)
        {
          operator delete(v46[0]);
        }

        v39[0] = &v45[1];
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](v39);
        if (SHIBYTE(v45[0]) < 0)
        {
          operator delete(v44[0]);
        }

        v39[0] = &v43[1];
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v39);
        if (SHIBYTE(v43[0]) < 0)
        {
          operator delete(v42[0]);
        }

        if (SBYTE7(v41[0]) < 0)
        {
          operator delete(v40[0]);
        }

        if (SHIBYTE(v63) < 0)
        {
          operator delete(v62);
        }

        *&v62 = &v50;
        std::vector<quasar::TextTokenizer::Token>::__destroy_vector::operator()[abi:ne200100](&v62);
        if (SHIBYTE(v54) < 0)
        {
          operator delete(v53);
        }

        if (SHIBYTE(v56) < 0)
        {
          operator delete(v55);
        }

        if (SHIBYTE(v57.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v57.__r_.__value_.__l.__data_);
        }

        v14 = (v14 + 24);
      }

      while (v14 != v15);
    }
  }

  else if (&v58 != a7)
  {
    std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v58, *a7, v13, 0xAAAAAAAAAAAAAAABLL * (v13 - *a7));
  }

  v56 = 0;
  v55 = 0uLL;
  if (v58 != v59)
  {
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v55, *v58, v58[1], 0x6DB6DB6DB6DB6DB7 * ((v58[1] - *v58) >> 5));
  }

  quasar::formatResultTokensSimple(&v55, 0);
  if (*(a1 + 87) < 0)
  {
    operator delete(*(a1 + 64));
  }

  v27 = *v40;
  *(a1 + 64) = *v40;
  *(a1 + 80) = *&v41[0];
  v28 = *(a1 + 88);
  v29 = *(a1 + 96);
  v54 = 0;
  v53 = 0uLL;
  if (v28 != v29)
  {
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v53, *v28, *(v28 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v28 + 8) - *v28) >> 5));
  }

  if (*(a1 + 140) == 1)
  {
    v30 = *(a1 + 136);
    v31 = a3;
    if (v30 > a3)
    {
      if (quasar::gLogLevel >= 2)
      {
        *__p = 0u;
        memset(v49, 0, sizeof(v49));
        *v46 = 0u;
        v47 = 0u;
        memset(v45, 0, sizeof(v45));
        *v44 = 0u;
        *v42 = 0u;
        memset(v43, 0, sizeof(v43));
        memset(v41, 0, sizeof(v41));
        *v40 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v40);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, "UtteranceDelayResultStream: resultStartMs < joinedStartMs", 57);
        quasar::QuasarWarnMessage::~QuasarWarnMessage(v40);
      }

      v31 = v30;
    }
  }

  else
  {
    v31 = a3;
    v30 = a3;
  }

  quasar::concat1best(&v53, &v55, v31 - v30, v27);
  v32 = *(a1 + 24);
  v40[0] = 0;
  v40[1] = 0;
  *&v41[0] = 0;
  v62 = 0uLL;
  v63 = 0;
  std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v62, v53, SDWORD2(v53), 0x6DB6DB6DB6DB6DB7 * ((*(&v53 + 1) - v53) >> 5));
  v50 = 0;
  v51 = 0;
  v52 = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token> const*,std::vector<quasar::Token> const*>(&v50, &v62, &v64, 1uLL);
  memset(v39, 0, sizeof(v39));
  memset(v38, 0, sizeof(v38));
  LOWORD(v33) = a10;
  (*(*v32 + 24))(v32, v40, v30, a4, a5, a6, &v50, v39, v38, v33, a11);
  v61 = v38;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v61);
  v38[0] = v39;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v38);
  v39[0] = &v50;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v39);
  v39[0] = &v62;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v39);
  v50 = v40;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v50);
  v40[0] = &v53;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v40);
  v40[0] = &v55;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](v40);
  v40[0] = &v58;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v40);
}

void sub_1B576738C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, std::locale a23)
{
  quasar::QuasarWarnMessage::~QuasarWarnMessage(&a23);
  a23.__locale_ = (v23 - 224);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23.__locale_ = (v23 - 200);
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a23);
  a23.__locale_ = (v23 - 152);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a23);
  _Unwind_Resume(a1);
}

void quasar::UtteranceDelayResultStream::writeFinalChoices(uint64_t a1, quasar::PTree *this, uint64_t a3)
{
  String = quasar::PTree::getString(this);
  quasar::getTopChoice(String, 1, __p);
  v7 = *(a1 + 87);
  if (v7 >= 0)
  {
    v8 = *(a1 + 87);
  }

  else
  {
    v8 = *(a1 + 72);
  }

  v9 = v72;
  v10 = v72;
  if ((v72 & 0x80u) != 0)
  {
    v9 = __p[1];
  }

  if (v8 != v9)
  {
    v13 = 0;
    if ((v72 & 0x80000000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  if (v7 >= 0)
  {
    v11 = (a1 + 64);
  }

  else
  {
    v11 = *(a1 + 64);
  }

  if ((v72 & 0x80u) == 0)
  {
    v12 = __p;
  }

  else
  {
    v12 = __p[0];
  }

  v13 = memcmp(v11, v12, v8) == 0;
  if (v10 < 0)
  {
LABEL_16:
    operator delete(__p[0]);
  }

LABEL_17:
  quasar::RecogResult::RecogResult(__p, this);
  v14 = quasar::PTree::getString(this);
  v68 = 0;
  v69 = 0;
  v70 = 0;
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(&v68, *v14, v14[1], 0xAAAAAAAAAAAAAAABLL * ((v14[1] - *v14) >> 3));
  BitmapRegion = quasar::GeoRegion::getBitmapRegion(this);
  v65 = 0;
  v66 = 0;
  v67 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v65, *BitmapRegion, *(BitmapRegion + 8), (*(BitmapRegion + 8) - *BitmapRegion) >> 3);
  v16 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3);
  if (v16 != (v66 - v65) >> 3)
  {
    if (quasar::gLogLevel >= 2)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "UtteranceDelayResultStream: resultChoices.size() != resultCosts.size()", 70);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v48);
      v16 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v68) >> 3);
    }

    *&v48 = 0;
    std::vector<double>::assign(&v65, v16, &v48);
  }

  v17 = *(this + 97);
  v18 = *(this + 98);
  v19 = *(a1 + 88);
  v20 = *(a1 + 96);
  memset(v47, 0, sizeof(v47));
  std::vector<std::vector<quasar::Token>>::__init_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(v47, v19, v20, 0xAAAAAAAAAAAAAAABLL * ((v20 - v19) >> 3));
  v21 = *(a1 + 112);
  v22 = *(a1 + 120);
  v44 = 0;
  v45 = 0;
  v46 = 0;
  std::vector<double>::__init_with_size[abi:ne200100]<double *,double *>(&v44, v21, v22, (v22 - v21) >> 3);
  v24 = v18 + v17;
  v25 = v17;
  if (*(a1 + 140) == 1)
  {
    v25 = *(a1 + 136);
  }

  v26 = *(a1 + 144);
  v27 = *(this + 557);
  if (v24 < v17)
  {
    v24 = v17;
    if (quasar::gLogLevel >= 2)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "UtteranceDelayResultStream: resultEndMs < resultStartMs", 55);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v48);
      v24 = v17;
    }
  }

  if (v17 < v25)
  {
    v17 = v25;
    if (quasar::gLogLevel >= 2)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "UtteranceDelayResultStream: resultStartMs < joinedStartMs", 57);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v48);
      v17 = v25;
    }
  }

  if (v24 < v25)
  {
    v24 = v25;
    if (quasar::gLogLevel >= 2)
    {
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v48 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v48);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v48, "UtteranceDelayResultStream: resultEndMs < joinedStartMs", 55);
      quasar::QuasarWarnMessage::~QuasarWarnMessage(&v48);
      v24 = v25;
    }
  }

  quasar::concatNbest(v47, &v44, &v68, &v65, v17 - v25, 0xAu, v23);
  v28 = quasar::RecogResult::setResultChoices(__p, v47);
  v29 = quasar::RecogResult::setResultCosts(v28, &v44);
  started = quasar::RecogResult::setUtteranceStartMillis(v29, v25);
  v31 = quasar::RecogResult::setUtteranceDurationMillis(started, v24 - v25);
  quasar::RecogResult::setFirstUtteranceAfterResume(v31, (v26 | v27) & 1);
  if (v78 == 1)
  {
    (*(**(a1 + 24) + 40))(*(a1 + 24), __p, a3);
  }

  else
  {
    v32 = quasar::PTree::getString(__p);
    if (quasar::UtteranceDelayResultStream::shouldBePartial(a1, v32, v75, v76))
    {
      if (!v13)
      {
        v33 = *(a1 + 24);
        v48 = 0uLL;
        *&v49 = 0;
        v34 = v73;
        v35 = v74;
        v36 = quasar::PTree::getString(__p);
        memset(v43, 0, sizeof(v43));
        memset(v42, 0, sizeof(v42));
        (*(*v33 + 24))(v33, &v48, v34, 1, (v35 + v34), 0, v36, v43, v42, 0, &v80);
        v81 = v42;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v81);
        v42[0] = v43;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v42);
        v43[0] = &v48;
        std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](v43);
      }

      v79 = 1;
      (*(**(a1 + 24) + 40))(*(a1 + 24), __p, a3);
      v37 = quasar::PTree::getString(__p);
      if ((a1 + 88) != v37)
      {
        std::vector<std::vector<quasar::Token>>::__assign_with_size[abi:ne200100]<std::vector<quasar::Token>*,std::vector<quasar::Token>*>(a1 + 88, *v37, v37[1], 0xAAAAAAAAAAAAAAABLL * (v37[1] - *v37));
      }

      v38 = quasar::GeoRegion::getBitmapRegion(__p);
      if ((a1 + 112) != v38)
      {
        std::vector<double>::__assign_with_size[abi:ne200100]<double *,double *>((a1 + 112), *v38, v38[1], (v38[1] - *v38) >> 3);
      }

      v39 = v73;
      if ((*(a1 + 140) & 1) == 0)
      {
        *(a1 + 140) = 1;
      }

      *(a1 + 136) = v39;
      *(a1 + 144) = v77;
    }

    else
    {
      (*(**(a1 + 24) + 40))(*(a1 + 24), __p, a3);
      v40 = *(a1 + 88);
      v41 = *(a1 + 96);
      while (v41 != v40)
      {
        v41 -= 24;
        *&v48 = v41;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v48);
      }

      *(a1 + 96) = v40;
      *(a1 + 120) = *(a1 + 112);
      *(a1 + 136) = 0;
      *(a1 + 140) = 0;
      *(a1 + 144) = 0;
    }

    if (*(a1 + 87) < 0)
    {
      **(a1 + 64) = 0;
      *(a1 + 72) = 0;
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 87) = 0;
    }
  }

  if (v44)
  {
    v45 = v44;
    operator delete(v44);
  }

  *&v48 = v47;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v48);
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  *&v48 = &v68;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v48);
  quasar::RecogResult::~RecogResult(__p);
}

void sub_1B5767B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char **a16, uint64_t a17, uint64_t a18, void *__p, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, char *a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, void *a60, uint64_t a61, uint64_t a62, char a63)
{
  *(v66 - 96) = v65;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v66 - 96));
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a13);
  a16 = &a25;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&a16);
  if (__p)
  {
    a20 = __p;
    operator delete(__p);
  }

  a25 = &a22;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a25);
  if (a60)
  {
    a61 = a60;
    operator delete(a60);
  }

  a25 = &a63;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&a25);
  quasar::RecogResult::~RecogResult(&a65);
  _Unwind_Resume(a1);
}

uint64_t quasar::UtteranceDelayResultStream::shouldBePartial(uint64_t a1, uint64_t *a2, char a3, char a4)
{
  isUpperLettersUnicode = 0;
  *&v36 = *MEMORY[0x1E69E9840];
  if ((a3 & 1) == 0 && (a4 & 1) == 0)
  {
    if (*(a1 + 56) == 1)
    {
      v6 = *a2;
      if (*a2 == a2[1])
      {
        return 0;
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = 0;
        std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v29, *v6, *(v6 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v6 + 8) - *v6) >> 5));
        if (v29 == v30 || (v7 = 0x6DB6DB6DB6DB6DB7 * ((v30 - v29) >> 5), v8 = *(a1 + 40), v7 > *(v8 + 4)))
        {
          isUpperLettersUnicode = 0;
        }

        else if (v7 <= *(v8 + 8))
        {
          isUpperLettersUnicode = 1;
        }

        else
        {
          if (*(v30 - 201) < 0)
          {
            std::string::__init_copy_ctor_external(&__str, *(v30 - 224), *(v30 - 216));
            v8 = *(a1 + 40);
          }

          else
          {
            v10 = *(v30 - 224);
            __str.__r_.__value_.__r.__words[2] = *(v30 - 208);
            *&__str.__r_.__value_.__l.__data_ = v10;
          }

          if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>((v8 + 16), &__str))
          {
            isUpperLettersUnicode = 1;
          }

          else
          {
            std::string::basic_string[abi:ne200100]<0>(&v33, "\\letter");
            std::string::basic_string[abi:ne200100]<0>(v34, "\\uppercase-letter");
            std::string::basic_string[abi:ne200100]<0>(v35, "\\lowercase-letter");
            memset(&v27, 0, sizeof(v27));
            std::vector<std::string>::__init_with_size[abi:ne200100]<std::string const*,std::string const*>(&v27, &v33, &v36, 3uLL);
            for (i = 0; i != -9; i -= 3)
            {
              if (SHIBYTE(v35[i + 2]) < 0)
              {
                operator delete(v35[i]);
              }
            }

            size = v27.__r_.__value_.__l.__size_;
            v12 = v27.__r_.__value_.__r.__words[0];
            if (v27.__r_.__value_.__r.__words[0] == v27.__r_.__value_.__l.__size_)
            {
LABEL_50:
              v26 = std::string::find(&__str, 92, 0);
              std::string::basic_string(&v33, &__str, 0, v26, &v32);
              isUpperLettersUnicode = quasar::isUpperLettersUnicode(&v33);
              if (SHIBYTE(v33.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v33.__r_.__value_.__l.__data_);
              }
            }

            else
            {
              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                p_str = &__str;
              }

              else
              {
                p_str = __str.__r_.__value_.__r.__words[0];
              }

              if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v15 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v15 = __str.__r_.__value_.__l.__size_;
              }

              v16 = p_str + v15;
              while (1)
              {
                v17 = *(v12 + 23);
                v18 = v17 >= 0 ? v12 : *v12;
                v19 = v17 >= 0 ? *(v12 + 23) : *(v12 + 8);
                if (!v19)
                {
                  break;
                }

                if (v15 >= v19)
                {
                  v20 = *v18;
                  v21 = v15;
                  v22 = p_str;
                  do
                  {
                    v23 = v21 - v19;
                    if (v23 == -1)
                    {
                      break;
                    }

                    v24 = memchr(v22, v20, v23 + 1);
                    if (!v24)
                    {
                      break;
                    }

                    v25 = v24;
                    if (!memcmp(v24, v18, v19))
                    {
                      if (v25 == v16 || v25 - p_str == -1)
                      {
                        break;
                      }

                      goto LABEL_49;
                    }

                    v22 = (v25 + 1);
                    v21 = v16 - (v25 + 1);
                  }

                  while (v21 >= v19);
                }

                v12 += 24;
                if (v12 == size)
                {
                  goto LABEL_50;
                }
              }

LABEL_49:
              isUpperLettersUnicode = 1;
            }

            v33.__r_.__value_.__r.__words[0] = &v27;
            std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v33);
          }

          if (SHIBYTE(__str.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__str.__r_.__value_.__l.__data_);
          }
        }

        v33.__r_.__value_.__r.__words[0] = &v29;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v33);
      }
    }

    else
    {
      return 1;
    }
  }

  return isUpperLettersUnicode;
}

void sub_1B5767FA4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  if (a29 < 0)
  {
    operator delete(__p);
  }

  __p = &a10;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (a18 < 0)
  {
    operator delete(a13);
  }

  __p = &a20;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::UtteranceDelayResultStream::~UtteranceDelayResultStream(quasar::UtteranceDelayResultStream *this)
{
  *this = &unk_1F2D2EFE8;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v5 = (this + 88);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  quasar::RecogResultStreamBase::~RecogResultStreamBase(this);
}

{
  *this = &unk_1F2D2EFE8;
  v2 = *(this + 14);
  if (v2)
  {
    *(this + 15) = v2;
    operator delete(v2);
  }

  v5 = (this + 88);
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v5);
  if (*(this + 87) < 0)
  {
    operator delete(*(this + 8));
  }

  v3 = *(this + 6);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = *(this + 4);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v4);
  }

  quasar::RecogResultStreamBase::~RecogResultStreamBase(this);
  MEMORY[0x1B8C85350]();
}

uint64_t quasar::Lexicon::lookUpProns(void *a1, uint64_t a2, void *a3, uint64_t a4)
{
  std::__hash_table<std::__hash_value_type<std::string,int>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,int>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,int>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,int>>>::clear(a3);
  v8 = *(a2 + 23);
  if ((v8 & 0x80u) != 0)
  {
    v8 = *(a2 + 8);
  }

  if (!v8)
  {
    return 0;
  }

  result = (*(**a1 + 16))(*a1, a2);
  if (result)
  {
    (*(**a1 + 32))(&v18);
    v10 = v18;
    v11 = v19;
    if (v18 != v19)
    {
      do
      {
        std::string::basic_string[abi:ne200100]<0>(v16, *v10);
        v12 = v17;
        v13 = v17;
        if ((v17 & 0x80u) != 0)
        {
          v12 = v16[1];
        }

        if (v12)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, " ");
          quasar::replaceAll(v16, __p, a4);
          if (v15 < 0)
          {
            operator delete(__p[0]);
          }

          std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::__emplace_unique_key_args<std::string,std::string>(a3, v16, v16);
          v13 = v17;
        }

        if ((v13 & 0x80) != 0)
        {
          operator delete(v16[0]);
        }

        ++v10;
      }

      while (v10 != v11);
      v10 = v18;
    }

    if (v10)
    {
      v19 = v10;
      operator delete(v10);
    }

    return 1;
  }

  return result;
}

void sub_1B5768328(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, void *a22, uint64_t a23)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a22)
  {
    operator delete(a22);
  }

  _Unwind_Resume(exception_object);
}

void *std::__shared_ptr_emplace<kaldi::quasar::Lexicon>::__shared_ptr_emplace[abi:ne200100]<std::istream &,BOOL,BOOL,std::allocator<kaldi::quasar::Lexicon>,0>(void *a1, void *a2, char *a3, char *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D2F0A0;
  kaldi::quasar::Lexicon::Lexicon((a1 + 3), a2, *a3, *a4, 0);
  return a1;
}

void std::__shared_ptr_emplace<kaldi::quasar::Lexicon>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D2F0A0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<kaldi::quasar::ConstLexicon>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D2F0F0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void sub_1B5768768(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  *(v10 - 56) = v9;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v10 - 56));
  kaldi::quasar::ShortlistDataOnDisk::~ShortlistDataOnDisk(va);
  MEMORY[0x1B8C85350](v8, v7);
  _Unwind_Resume(a1);
}

void kaldi::quasar::ShortlistDataOnDisk::~ShortlistDataOnDisk(kaldi::quasar::ShortlistDataOnDisk *this)
{
  for (i = 0; i != -48; i -= 24)
  {
    if (*(this + i + 120) == 1)
    {
      v3 = *(this + i + 104);
      if (v3)
      {
        MEMORY[0x1B8C85310](v3, 0x1000C8077774924);
      }
    }
  }

  for (j = 0; j != -72; j -= 24)
  {
    if (*(this + j + 72) == 1)
    {
      v5 = *(this + j + 56);
      if (v5)
      {
        MEMORY[0x1B8C85310](v5, 0x1000C8077774924);
      }
    }
  }

  v6 = *this;
  *this = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }
}

void kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataInOneFile(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  kaldi::ExpectToken(a1, a2, "<ShortlistTable>");
}

void anonymous namespace::BuildFromModelFileWithEmbeddedShortlist(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v14 = 0;
  while (1)
  {
    while (1)
    {
      if (kaldi::Peek(a1, a2) != 60)
      {
        kaldi::quasar::ShortlistDataOnDisk::ShortlistDataOnDisk(v13, a1, a2, a3, v14);
        kaldi::ExpectToken(a1, a2, "<ShortlistLangPairs>");
        memset(&__p, 0, sizeof(__p));
        kaldi::ReadToken(a1, a2, &__p);
        kaldi::SplitStringToVector(&__p, ",", v11);
        std::make_unique[abi:ne200100]<kaldi::quasar::ShortlistDataInOneFile,kaldi::quasar::ShortlistDataOnDisk,std::vector<std::string>,0>();
      }

      kaldi::ReadToken(a1, a2, &v15);
      if (SHIBYTE(v17) < 0)
      {
        break;
      }

      if (SHIBYTE(v17) == 16)
      {
        v7 = &v15;
        goto LABEL_8;
      }
    }

    if (v16 == 16)
    {
      v7 = v15;
LABEL_8:
      v9 = *v7;
      v8 = v7[1];
      if (v9 == 0x6853746F7669503CLL && v8 == 0x3E7473696C74726FLL)
      {
        kaldi::ReadBasicType<BOOL>(a1, a2, &v14);
      }
    }
  }
}

void sub_1B5768AF4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18, char a19)
{
  *(v20 - 72) = v19;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100]((v20 - 72));
  if (a18 < 0)
  {
    operator delete(__p);
  }

  kaldi::quasar::ShortlistDataOnDisk::~ShortlistDataOnDisk(&a19);
  if (*(v20 - 73) < 0)
  {
    operator delete(*(v20 - 96));
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataBasedOnTagInInput(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = 0;
  v44 = 0;
  v45 = 0;
  kaldi::ReadToken(a1, a2, &v43);
  if (SHIBYTE(v45) < 0)
  {
    if (v44 != 16)
    {
LABEL_10:
      if ((SHIBYTE(v45) & 0x80000000) == 0 || v44 != 27 || (*v43 == 0x696C74726F68533CLL ? (v13 = *(v43 + 1) == 0x49656C6261547473) : (v13 = 0), v13 ? (v14 = *(v43 + 2) == 0x6C6946796E614D6ELL) : (v14 = 0), v14 ? (v15 = *(v43 + 19) == 0x3E73656C6946796ELL) : (v15 = 0), !v15))
      {
LABEL_75:
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v55);
        v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "Unknown shortlist type: ", 24);
        if (v45 >= 0)
        {
          v36 = &v43;
        }

        else
        {
          v36 = v43;
        }

        if (v45 >= 0)
        {
          v37 = HIBYTE(v45);
        }

        else
        {
          v37 = v44;
        }

        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, v36, v37);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v55);
      }

      memset(&v42, 0, sizeof(v42));
      kaldi::ReadToken(a1, a2, &v42);
      *v40 = *a4;
      v41 = *(a4 + 16);
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *a4 = 0;
      std::__fs::filesystem::path::path[abi:ne200100]<std::string,void>(&v39.__pn_, &v42);
      std::__fs::filesystem::operator/[abi:ne200100](&v56, &v39, v40);
      std::__fs::filesystem::__status(&v56, 0);
      if (LOBYTE(v55[0].__first_) != 2)
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v55);
        v38 = std::__fs::filesystem::operator<<[abi:ne200100]<char,std::char_traits<char>,0>(v55, &v56);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, " is not a directory", 19);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(v55);
      }

      memset(v53, 0, sizeof(v53));
      v54 = 1065353216;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      MEMORY[0x1B8C84F40](&v48, &v56, 0, 0);
      v16 = v48;
      v17 = v49;
      if (v49)
      {
        atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
        v18 = v49;
        v47.__imp_.__ptr_ = v16;
        v47.__imp_.__cntrl_ = v17;
        if (v49)
        {
          atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
          std::__shared_weak_count::__release_shared[abi:ne200100](v18);
        }
      }

      else
      {
        v47.__imp_.__ptr_ = v48;
        v47.__imp_.__cntrl_ = 0;
      }

      while (1)
      {
        if (!v47.__imp_.__ptr_)
        {
          if (v47.__imp_.__cntrl_)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v47.__imp_.__cntrl_);
          }

          if (v49)
          {
            std::__shared_weak_count::__release_shared[abi:ne200100](v49);
          }

          if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(v55);
            v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v55, "Available shortlist files: ", 27);
            kaldi::JoinVectorToString<std::string>(&v50, ",");
            if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              p_p = &__p;
            }

            else
            {
              p_p = __p.__pn_.__r_.__value_.__r.__words[0];
            }

            if ((__p.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              size = HIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]);
            }

            else
            {
              size = __p.__pn_.__r_.__value_.__l.__size_;
            }

            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, p_p, size);
            if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(__p.__pn_.__r_.__value_.__l.__data_);
            }

            kaldi::KaldiLogMessage::~KaldiLogMessage(v55);
          }

          std::make_unique[abi:ne200100]<kaldi::quasar::ShortlistDataInManyFiles,std::__fs::filesystem::path,std::__fs::filesystem::path,std::unordered_map<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,0>();
        }

        v19 = std::__fs::filesystem::directory_iterator::__dereference(&v47);
        std::__fs::filesystem::path::extension[abi:ne200100](&v19->__p_, v55);
        std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&__p.__pn_, &kaldi::quasar::ShortlistConstants::SHORTLIST_EXTENSION);
        v57.__data_ = &__p;
        v20 = std::__fs::filesystem::operator!=[abi:ne200100](v55, v57);
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v55[0].__end_) < 0)
        {
          operator delete(v55[0].__first_);
          if (v20)
          {
            goto LABEL_58;
          }
        }

        else if (v20)
        {
          goto LABEL_58;
        }

        std::__fs::filesystem::path::stem[abi:ne200100](&v19->__p_, &__p);
        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(v55, __p.__pn_.__r_.__value_.__l.__data_, __p.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          *&v55[0].__first_ = *&__p.__pn_.__r_.__value_.__l.__data_;
          v55[0].__end_ = __p.__pn_.__r_.__value_.__r.__words[2];
        }

        std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__emplace_unique_key_args<std::string,std::string,kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk>(v53, v55, v55);
        if (SHIBYTE(v55[0].__end_) < 0)
        {
          operator delete(v55[0].__first_);
        }

        if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(__p.__pn_.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v19->__p_.__pn_.__r_.__value_.__r.__words[2]) < 0)
        {
          std::string::__init_copy_ctor_external(&__p.__pn_, v19->__p_.__pn_.__r_.__value_.__l.__data_, v19->__p_.__pn_.__r_.__value_.__l.__size_);
        }

        else
        {
          __p.__pn_ = v19->__p_;
        }

        v21 = v51;
        if (v51 >= v52)
        {
          v23 = 0xAAAAAAAAAAAAAAABLL * ((v51 - v50) >> 3);
          v24 = v23 + 1;
          if (v23 + 1 > 0xAAAAAAAAAAAAAAALL)
          {
            std::vector<int>::__throw_length_error[abi:ne200100]();
          }

          if (0x5555555555555556 * ((v52 - v50) >> 3) > v24)
          {
            v24 = 0x5555555555555556 * ((v52 - v50) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v52 - v50) >> 3) >= 0x555555555555555)
          {
            v25 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v25 = v24;
          }

          v55[0].__end_cap_.__value_ = &v50;
          if (v25)
          {
            std::__allocate_at_least[abi:ne200100]<std::allocator<std::string>>(&v50, v25);
          }

          v26 = 8 * ((v51 - v50) >> 3);
          v27 = *&__p.__pn_.__r_.__value_.__l.__data_;
          *(v26 + 16) = *(&__p.__pn_.__r_.__value_.__l + 2);
          *v26 = v27;
          memset(&__p, 0, sizeof(__p));
          v28 = 24 * v23 + 24;
          v29 = (24 * v23 - (v51 - v50));
          memcpy((v26 - (v51 - v50)), v50, v51 - v50);
          v30 = v50;
          v31 = v52;
          v50 = v29;
          v51 = v28;
          v52 = 0;
          v55[0].__end_ = v30;
          v55[0].__end_cap_.__value_ = v31;
          v55[0].__first_ = v30;
          v55[0].__begin_ = v30;
          std::__split_buffer<std::string>::~__split_buffer(v55);
          v51 = v28;
          if (SHIBYTE(__p.__pn_.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(__p.__pn_.__r_.__value_.__l.__data_);
          }
        }

        else
        {
          v22 = *&__p.__pn_.__r_.__value_.__l.__data_;
          *(v51 + 2) = *(&__p.__pn_.__r_.__value_.__l + 2);
          *v21 = v22;
          v51 = v21 + 24;
        }

LABEL_58:
        std::__fs::filesystem::directory_iterator::__increment(&v47, 0);
      }
    }

    v9 = v43;
  }

  else
  {
    if (SHIBYTE(v45) != 16)
    {
      goto LABEL_75;
    }

    v9 = &v43;
  }

  v11 = *v9;
  v10 = v9[1];
  if (v11 == 0x696C74726F68533CLL && v10 == 0x3E656C6261547473)
  {
  }

  goto LABEL_10;
}

void sub_1B57691A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *__p, uint64_t a24, int a25, __int16 a26, char a27, char a28, uint64_t a29, std::__shared_weak_count *a30, uint64_t a31, std::__shared_weak_count *a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47)
{
  if (a28 < 0)
  {
    operator delete(__p);
  }

  if (a30)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a30);
  }

  if (a32)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](a32);
  }

  v57 = &v58;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v57);
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::~__hash_table(&v59);
  if (*(v47 - 97) < 0)
  {
    operator delete(*(v47 - 120));
  }

  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (v52 < 0)
  {
    operator delete(v51);
  }

  if (v54 < 0)
  {
    operator delete(v53);
  }

  if (v56 < 0)
  {
    operator delete(v55);
  }

  _Unwind_Resume(a1);
}

void kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataOnDisk(uint64_t a1@<X0>, const void **a2@<X1>, void *a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  std::__fs::filesystem::path::path[abi:ne200100]<char const*,void>(&pn, kaldi::quasar::ShortlistConstants::SHORTLISTS_DIRECTORY_NAME);
  std::__fs::filesystem::operator/[abi:ne200100](v29, &pn, a1);
  if (*(a2 + 23) >= 0)
  {
    v6 = *(a2 + 23);
  }

  else
  {
    v6 = a2[1];
  }

  v7 = v23;
  std::string::basic_string[abi:ne200100](v23, v6 + 10);
  if ((v23[0].__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    v7 = v23[0].__r_.__value_.__r.__words[0];
  }

  if (v6)
  {
    if (*(a2 + 23) >= 0)
    {
      v8 = a2;
    }

    else
    {
      v8 = *a2;
    }

    memmove(v7, v8, v6);
  }

  strcpy(v7 + v6, ".shortlist");
  __p[0] = v23[0];
  memset(v23, 0, 24);
  std::__fs::filesystem::operator/[abi:ne200100](&v26, __p, v29);
  if (SHIBYTE(__p[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p[0].__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v23[0].__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v23[0].__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v29[0].__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v29[0].__pn_.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(pn.__r_.__value_.__l.__data_);
  }

  std::__fs::filesystem::__status(&v26, 0);
  if (v29[0].__pn_.__r_.__value_.__s.__data_[0] == 255 || !v29[0].__pn_.__r_.__value_.__s.__data_[0])
  {
    if (kaldi::g_kaldi_verbose_level >= -1)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Shortlist file: ", 16);
      v10 = v9;
      size = HIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]);
      if ((v26.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
      {
        v12 = &v26;
      }

      else
      {
        v12 = v26.__pn_.__r_.__value_.__r.__words[0];
      }

      if ((v26.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = v26.__pn_.__r_.__value_.__l.__size_;
      }

      std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(v9, v12, v12 + size, 34, 92);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, " is not found", 13);
      kaldi::KaldiWarnMessage::~KaldiWarnMessage(v29);
    }

    *a3 = 0;
    a3[1] = 0;
    goto LABEL_55;
  }

  {
    operator new();
  }

  {
    operator new();
  }

  v13 = kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataOnDisk(std::__fs::filesystem::path const&,std::string const&)::mutex;
  std::mutex::lock(kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataOnDisk(std::__fs::filesystem::path const&,std::string const&)::mutex);
  v29[0].__pn_.__r_.__value_.__r.__words[0] = &v26;
  v14 = std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__emplace_unique_key_args<std::__fs::filesystem::path,std::piecewise_construct_t const&,std::tuple<std::__fs::filesystem::path const&>,std::tuple<>>(kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataOnDisk(std::__fs::filesystem::path const&,std::string const&)::loaded_files_with_shortlist_data, &v26, &std::piecewise_construct, v29);
  *a3 = 0;
  a3[1] = 0;
  v15 = v14[8];
  if (!v15 || (v16 = std::__shared_weak_count::lock(v15), (a3[1] = v16) == 0))
  {
LABEL_42:
    if (SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) < 0)
    {
      std::string::__init_copy_ctor_external(&pn, v26.__pn_.__r_.__value_.__l.__data_, v26.__pn_.__r_.__value_.__l.__size_);
    }

    else
    {
      pn = v26.__pn_;
    }

    std::ifstream::basic_ifstream(v29, &pn, 6);
    if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(pn.__r_.__value_.__l.__data_);
    }

    if ((v29[1].__pn_.__r_.__value_.__s.__data_[*(v29[0].__pn_.__r_.__value_.__r.__words[0] - 24) + 8] & 5) == 0)
    {
      if (SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) < 0)
      {
        std::string::__init_copy_ctor_external(&pn, v26.__pn_.__r_.__value_.__l.__data_, v26.__pn_.__r_.__value_.__l.__size_);
      }

      else
      {
        pn = v26.__pn_;
      }

      fst::FstReadOptions::FstReadOptions(v23);
      if (SHIBYTE(pn.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pn.__r_.__value_.__l.__data_);
      }

      v24 = 2;
      std::istream::tellg();
      std::istream::seekg();
      fst::MappedFile::Map(v29, v23, v28);
    }

    kaldi::KaldiWarnMessage::KaldiWarnMessage(&pn);
    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&pn, "Failed to open shortlist file: ", 31);
    std::__fs::filesystem::operator<<[abi:ne200100]<char,std::char_traits<char>,0>(v22, &v26);
    kaldi::KaldiErrorMessage::~KaldiErrorMessage(&pn);
  }

  v17 = v14[7];
  *a3 = v17;
  if (!v17)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v16);
    goto LABEL_42;
  }

  if ((kaldi::g_kaldi_verbose_level & 0x80000000) == 0)
  {
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v29);
    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "Shortlist for path: ", 20);
    v19 = v18;
    v20 = HIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]);
    if ((v26.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v21 = &v26;
    }

    else
    {
      v21 = v26.__pn_.__r_.__value_.__r.__words[0];
    }

    if ((v26.__pn_.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v20 = v26.__pn_.__r_.__value_.__l.__size_;
    }

    std::__quoted_output[abi:ne200100]<char,std::char_traits<char>>(v18, v21, v21 + v20, 34, 92);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, " is already loaded. Returning cached object.", 44);
    kaldi::KaldiLogMessage::~KaldiLogMessage(v29);
  }

  std::mutex::unlock(v13);
LABEL_55:
  if (SHIBYTE(v26.__pn_.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v26.__pn_.__r_.__value_.__l.__data_);
  }
}

void sub_1B5769A00()
{
  kaldi::KaldiLogMessage::~KaldiLogMessage(&STACK[0x218]);
  if (*(v0 + 8))
  {
    JUMPOUT(0x1B5769A14);
  }

  JUMPOUT(0x1B5769B38);
}

void sub_1B5769A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  v5 = *(v4 + 8);
  if (v5)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v5);
  }

  kaldi::Input::~Input(va);
  JUMPOUT(0x1B5769AECLL);
}

void sub_1B5769A44(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  if (v26)
  {
    (*(*v26 + 8))(v26, a2, a3, a4, a5, a6, a7, a8);
  }

  JUMPOUT(0x1B5769B20);
}

void sub_1B5769A60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    JUMPOUT(0x1B5769B2CLL);
  }

  JUMPOUT(0x1B5769B30);
}

void sub_1B5769A74(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *__p, uint64_t a22, int a23, __int16 a24, char a25, char a26)
{
  if (a26 < 0)
  {
    operator delete(__p);
  }

  JUMPOUT(0x1B5769B38);
}

void sub_1B5769A8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, ...)
{
  va_start(va, a20);
  kaldi::KaldiLogMessage::~KaldiLogMessage(va);
  if (v20)
  {
    (*(*v20 + 8))(v20);
  }

  JUMPOUT(0x1B5769B20);
}

void sub_1B5769AA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (a10)
  {
    kaldi::quasar::ShortlistDataBuilder::BuildShortlistDataOnDisk(a10);
  }

  if (v10)
  {
    MEMORY[0x1B8C85350](v11, 0x1070C40E0CA08F1, a3, a4, a5, a6, a7, a8);
  }

  JUMPOUT(0x1B5769AE4);
}

void sub_1B5769B48()
{
  kaldi::KaldiWarnMessage::~KaldiWarnMessage(&STACK[0x218]);
  if (v0 < 0)
  {
    JUMPOUT(0x1B5769BCCLL);
  }

  JUMPOUT(0x1B5769BD0);
}

void sub_1B5769B58(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5769BD0);
}

void sub_1B5769B7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, int a15, __int16 a16, char a17, char a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (a18 < 0)
  {
    operator delete(a13);
  }

  if (SLOBYTE(STACK[0x22F]) < 0)
  {
    operator delete(STACK[0x218]);
  }

  if (a29 < 0)
  {
    JUMPOUT(0x1B5769BCCLL);
  }

  JUMPOUT(0x1B5769BD0);
}

BOOL std::__fs::filesystem::operator!=[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) != 0;
}

double std::__fs::filesystem::path::extension[abi:ne200100]@<D0>(const std::__fs::filesystem::path *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = std::__fs::filesystem::path::__extension(a1);
  if (v3.__size_ >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:ne200100]();
  }

  if (v3.__size_ >= 0x17)
  {
    operator new();
  }

  HIBYTE(v6) = v3.__size_;
  if (v3.__size_)
  {
    memmove(&__dst, v3.__data_, v3.__size_);
  }

  *(&__dst + v3.__size_) = 0;
  result = *&__dst;
  *a2 = __dst;
  *(a2 + 16) = v6;
  return result;
}

void sub_1B5769DC4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, char a22)
{
  std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::~__hash_table(&a10);
  if (a20 < 0)
  {
    operator delete(__p);
  }

  std::allocator<quasar::RecogAudioBuffer>::construct[abi:ne200100]<quasar::RecogAudioBuffer,unsigned long &,int,int,BOOL,char const(&)[1],std::shared_ptr<kaldi::Timer const>,int>(&a22);
  MEMORY[0x1B8C85350](v23, v22);
  _Unwind_Resume(a1);
}

const void **std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::__emplace_unique_key_args<std::string,std::string,kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk>(void *a1, uint64_t *a2, uint64_t a3)
{
  v5 = std::__string_hash<char>::operator()[abi:ne200100](a1, a2);
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
    v13 = v12[1];
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

  if (!std::equal_to<std::string>::operator()[abi:ne200100](a1, v12 + 2, a2))
  {
    goto LABEL_17;
  }

  return v12;
}

void sub_1B576A074(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::unique_ptr<std::__hash_node<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,void *>,std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,void *>>>>::~unique_ptr[abi:ne200100](va);
  _Unwind_Resume(a1);
}

uint64_t *std::vector<std::vector<std::vector<int>>>::__emplace_back_slow_path<std::vector<std::vector<int>> const&>(char **a1, uint64_t *a2)
{
  v2 = 0xAAAAAAAAAAAAAAABLL * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if (v2 + 1 > 0xAAAAAAAAAAAAAAALL)
  {
    std::vector<int>::__throw_length_error[abi:ne200100]();
  }

  if (0x5555555555555556 * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0x5555555555555556 * ((a1[2] - *a1) >> 3);
  }

  if (0xAAAAAAAAAAAAAAABLL * ((a1[2] - *a1) >> 3) >= 0x555555555555555)
  {
    v6 = 0xAAAAAAAAAAAAAAALL;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    std::__allocate_at_least[abi:ne200100]<std::allocator<std::vector<quasar::Token>>>(a1, v6);
  }

  v7 = 24 * v2;
  v14 = 0;
  v15 = v7;
  v16 = 24 * v2;
  v17 = 0;
  *v7 = 0;
  *(v7 + 8) = 0;
  *(v7 + 16) = 0;
  std::vector<std::vector<int>>::__init_with_size[abi:ne200100]<std::vector<int>*,std::vector<int>*>((24 * v2), *a2, a2[1], 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3));
  v8 = v16 + 24;
  v9 = a1[1] - *a1;
  v10 = &v15[-v9];
  memcpy(&v15[-v9], *a1, v9);
  v11 = *a1;
  *a1 = v10;
  a1[1] = v8;
  v12 = a1[2];
  a1[2] = v17;
  v16 = v11;
  v17 = v12;
  v14 = v11;
  v15 = v11;
  std::__split_buffer<std::vector<std::vector<std::pair<int,int>>>>::~__split_buffer(&v14);
  return v8;
}

void sub_1B576A1B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__split_buffer<std::vector<std::vector<std::pair<int,int>>>>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void *std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__emplace_unique_key_args<std::__fs::filesystem::path,std::piecewise_construct_t const&,std::tuple<std::__fs::filesystem::path const&>,std::tuple<>>(uint64_t **a1, std::basic_string_view<_CharT, _Traits>::size_type a2, uint64_t a3, __int128 **a4)
{
  v7.__size_ = a2;
  v7.__data_ = &v6;
  v4 = *std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__find_equal<std::__fs::filesystem::path>(a1, v7);
  if (!v4)
  {
    std::__tree<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::__map_value_compare<std::string,std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>,std::less<std::string>,true>,std::allocator<std::__value_type<std::string,std::weak_ptr<kaldi::quasar::TorchEncoderDecoder>>>>::__construct_node<std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>();
  }

  return v4;
}

uint64_t *std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__find_equal<std::__fs::filesystem::path>(uint64_t a1, std::__fs::filesystem::path::__string_view a2)
{
  data = a2.__data_;
  v4 = (a1 + 8);
  v3 = *(a1 + 8);
  if (v3)
  {
    size = a2.__size_;
    do
    {
      while (1)
      {
        v6 = v3;
        a2.__data_ = (v3 + 4);
        if (!std::__fs::filesystem::operator<[abi:ne200100](size, a2))
        {
          break;
        }

        v3 = *v6;
        v4 = v6;
        if (!*v6)
        {
          goto LABEL_10;
        }
      }

      a2.__data_ = size;
      if (!std::__fs::filesystem::operator<[abi:ne200100]((v6 + 4), a2))
      {
        break;
      }

      v4 = v6 + 1;
      v3 = v6[1];
    }

    while (v3);
  }

  else
  {
    v6 = (a1 + 8);
  }

LABEL_10:
  *data = v6;
  return v4;
}

uint64_t std::__fs::filesystem::operator<[abi:ne200100](const std::__fs::filesystem::path *a1, std::__fs::filesystem::path::__string_view a2)
{
  v2 = *(a2.__data_ + 1);
  if (*(a2.__data_ + 23) >= 0)
  {
    a2.__size_ = *(a2.__data_ + 23);
  }

  else
  {
    a2.__data_ = *a2.__data_;
    a2.__size_ = v2;
  }

  return std::__fs::filesystem::path::__compare(a1, a2) >> 31;
}

void sub_1B576A39C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10)
{
  a10 = 0;
  if (v10)
  {
    std::default_delete<kaldi::quasar::ShortlistDataOnDisk>::operator()[abi:ne200100](&a10, v10);
  }

  _Unwind_Resume(exception_object);
}

void std::__shared_ptr_pointer<kaldi::quasar::ShortlistDataOnDisk *,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>::__shared_ptr_default_delete<kaldi::quasar::ShortlistDataOnDisk,kaldi::quasar::ShortlistDataOnDisk>,std::allocator<kaldi::quasar::ShortlistDataOnDisk>>::~__shared_ptr_pointer(std::__shared_weak_count *a1)
{
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

uint64_t std::__shared_ptr_pointer<kaldi::quasar::ShortlistDataOnDisk *,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>::__shared_ptr_default_delete<kaldi::quasar::ShortlistDataOnDisk,kaldi::quasar::ShortlistDataOnDisk>,std::allocator<kaldi::quasar::ShortlistDataOnDisk>>::__get_deleter(uint64_t a1, uint64_t a2)
{
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

void std::default_delete<kaldi::quasar::ShortlistDataOnDisk>::operator()[abi:ne200100](uint64_t a1, uint64_t *a2)
{
  if (a2)
  {
    v3 = 0;
    while (1)
    {
      if (LOBYTE(a2[v3 + 15]) == 1)
      {
        v4 = a2[v3 + 13];
        if (v4)
        {
          MEMORY[0x1B8C85310](v4, 0x1000C8077774924);
        }
      }

      v3 -= 3;
      if (v3 == -6)
      {
        v5 = 0;
        while (1)
        {
          if (LOBYTE(a2[v5 + 9]) == 1)
          {
            v6 = a2[v5 + 7];
            if (v6)
            {
              MEMORY[0x1B8C85310](v6, 0x1000C8077774924);
            }
          }

          v5 -= 3;
          if (v5 == -9)
          {
            v7 = *a2;
            *a2 = 0;
            if (v7)
            {
              (*(*v7 + 8))(v7);
            }

            JUMPOUT(0x1B8C85350);
          }
        }
      }
    }
  }
}

void *std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__emplace_unique_key_args<std::__fs::filesystem::path,std::__fs::filesystem::path const&,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk> &>(uint64_t **a1, std::basic_string_view<_CharT, _Traits>::size_type a2, uint64_t a3, uint64_t a4)
{
  v7.__size_ = a2;
  v7.__data_ = &v6;
  v4 = *std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__find_equal<std::__fs::filesystem::path>(a1, v7);
  if (!v4)
  {
    std::__tree<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::__map_value_compare<std::__fs::filesystem::path,std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>,std::less<std::__fs::filesystem::path>,true>,std::allocator<std::__value_type<std::__fs::filesystem::path,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>::__construct_node<std::__fs::filesystem::path const&,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk> &>();
  }

  return v4;
}

std::string *std::pair<std::__fs::filesystem::path const,std::weak_ptr<kaldi::quasar::ShortlistDataOnDisk>>::pair[abi:ne200100]<std::__fs::filesystem::path const&,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk> &,0>(std::string *this, __int128 *a2, std::string::size_type *a3)
{
  if (*(a2 + 23) < 0)
  {
    std::string::__init_copy_ctor_external(this, *a2, *(a2 + 1));
  }

  else
  {
    v5 = *a2;
    this->__r_.__value_.__r.__words[2] = *(a2 + 2);
    *&this->__r_.__value_.__l.__data_ = v5;
  }

  v6 = a3[1];
  this[1].__r_.__value_.__r.__words[0] = *a3;
  this[1].__r_.__value_.__l.__size_ = v6;
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 16), 1uLL, memory_order_relaxed);
  }

  return this;
}

void quasar::symbolicMatch(uint64_t a1, uint64_t a2)
{
  v5[0] = 0;
  v6 = 0;
  fst::ComposeFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::CreateBase(a2, a1, v5);
}

void sub_1B576A7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  fst::ImplToFst<fst::VectorFstImpl<fst::VectorState<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,std::allocator<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>>,fst::MutableFst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(v11);
  fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a9);
  fst::ImplToFst<fst::ComposeFstImplBase<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>,fst::DefaultCacheStore<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>,fst::Fst<fst::ArcTpl<fst::TropicalWeightTpl<float>,int>>>::~ImplToFst(&a11);
  _Unwind_Resume(a1);
}

void sub_1B576AE00(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1B576AF6C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1B576B21C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va1, a16);
  va_start(va, a16);
  v18 = va_arg(va1, void);
  v20 = va_arg(va1, void);
  v21 = va_arg(va1, void);
  v22 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v16 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t _getNSDataForLastRowInMatrix(uint64_t a1)
{
  v2 = *a1 + 4 * (*(a1 + 16) * (kaldi::MatrixBase<float>::NumRows(a1) - 1));
  kaldi::MatrixBase<float>::NumCols(a1);
  v3 = 4 * kaldi::MatrixBase<float>::NumCols(a1);
  v4 = MEMORY[0x1E695DEF0];

  return [v4 dataWithBytes:v2 length:v3];
}

void sub_1B576B6CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);

  kaldi::Matrix<float>::~Matrix(va);
  _Unwind_Resume(a1);
}

id _getNSDataForLastNRowsInMatrix(uint64_t a1, uint64_t a2)
{
  v4 = 4 * kaldi::MatrixBase<float>::NumCols(a1);
  v5 = [MEMORY[0x1E695DF88] dataWithCapacity:v4 * a2];
  for (i = kaldi::MatrixBase<float>::NumRows(a1) - a2; i < kaldi::MatrixBase<float>::NumRows(a1); ++i)
  {
    [v5 appendBytes:*a1 + 4 * *(a1 + 16) * i length:v4];
  }

  return v5;
}

void *std::__shared_ptr_emplace<quasar::SyncPSRAudioProcessor>::__shared_ptr_emplace[abi:ne200100]<quasar::SystemConfig &,std::string,unsigned long &,std::allocator<quasar::SyncPSRAudioProcessor>,0>(void *a1, quasar::SystemConfig *a2, const void **a3, int *a4)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1F2D2F1B8;
  quasar::SyncPSRAudioProcessor::SyncPSRAudioProcessor((a1 + 3), a2, a3, *a4, 120);
  return a1;
}

void std::__shared_ptr_emplace<quasar::SyncPSRAudioProcessor>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F2D2F1B8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1B8C85350);
}

void std::__shared_ptr_emplace<quasar::SyncPSRAudioProcessor>::__on_zero_shared(uint64_t a1)
{
  kaldi::Matrix<float>::~Matrix(a1 + 112);
  v2 = *(a1 + 96);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v2);
  }

  v4 = (a1 + 64);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
  v3 = *(a1 + 56);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v3);
  }

  v4 = (a1 + 24);
  std::vector<std::shared_ptr<quasar::LmeContainer>>::__destroy_vector::operator()[abi:ne200100](&v4);
}

void quasar::result_handler::VoiceEditingResultHandlerConfig::VoiceEditingResultHandlerConfig(quasar::result_handler::VoiceEditingResultHandlerConfig *this, const quasar::SystemConfig *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  *this = xmmword_1B5B23610;
  *(this + 1) = xmmword_1B5B23620;
  *(this + 2) = xmmword_1B5B23630;
  *(this + 6) = 0xF000000000;
  *(this + 14) = 2;
  *(this + 60) = 0;
  *(this + 8) = 0x300000005;
  std::string::basic_string[abi:ne200100]<0>(__p, "at|did it");
  v6 = 3;
  std::unordered_map<std::string,int>::unordered_map(this + 72, __p, 1);
  if (v5 < 0)
  {
    operator delete(__p[0]);
  }

  std::string::basic_string[abi:ne200100]<0>(this + 14, "and|in|at|so|did|also|at .*");
  *(this + 17) = 0;
  *(this + 36) = 750;
  std::string::basic_string[abi:ne200100]<0>(__p, "text-proc.voice-commands.result-handler");
  quasar::SystemConfig::getPtreeOptional(a2, __p);
}

void sub_1B576BF00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (*(v15 + 135) < 0)
  {
    operator delete(*(v15 + 112));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table((v15 + 72));
  _Unwind_Resume(a1);
}

void sub_1B576C618(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, char a22)
{
  if (a22 == 1 && a21 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::result_handler::VoiceEditingResultHandler::VoiceEditingResultHandler(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4, void *a5)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1F2D2F208;
  *(a1 + 16) = *a2;
  v10 = *(a2 + 16);
  v11 = *(a2 + 32);
  v12 = *(a2 + 48);
  *(a1 + 80) = *(a2 + 64);
  *(a1 + 48) = v11;
  *(a1 + 64) = v12;
  *(a1 + 32) = v10;
  std::unordered_map<std::string,int>::unordered_map(a1 + 88, a2 + 72);
  if (*(a2 + 135) < 0)
  {
    std::string::__init_copy_ctor_external((a1 + 128), *(a2 + 112), *(a2 + 120));
  }

  else
  {
    v13 = *(a2 + 112);
    *(a1 + 144) = *(a2 + 128);
    *(a1 + 128) = v13;
  }

  v14 = *(a2 + 136);
  *(a1 + 160) = *(a2 + 144);
  *(a1 + 152) = v14;
  v15 = *a3;
  *a3 = 0;
  *(a1 + 168) = v15;
  *(a1 + 176) = *a4;
  v16 = a4[1];
  *(a1 + 184) = v16;
  if (v16)
  {
    atomic_fetch_add_explicit((v16 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 192) = *a5;
  v17 = a5[1];
  *(a1 + 200) = v17;
  if (v17)
  {
    atomic_fetch_add_explicit((v17 + 8), 1uLL, memory_order_relaxed);
  }

  *(a1 + 208) = 0;
  *(a1 + 232) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 336) = 30;
  std::unordered_map<std::string const*,std::__list_iterator<std::pair<std::string,std::vector<quasar::result_handler::CommandInterpretation>>,void *>,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>>::PointerHasher,kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>>::PointerPred,std::allocator<std::pair<std::string const* const,std::__list_iterator<std::pair<std::string,std::vector<quasar::result_handler::CommandInterpretation>>,void *>>>>::unordered_map(a1 + 344, 0, v25, &v24);
  *(a1 + 392) = a1 + 392;
  *(a1 + 400) = a1 + 392;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0;
  *(a1 + 512) = 1065353216;
  *(a1 + 520) = 0;
  *(a1 + 524) = 0;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 621) = 0u;
  *(a1 + 592) = 0u;
  *(a1 + 608) = 0u;
  *(a1 + 560) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  v18 = *(a2 + 88);
  if (v18)
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v23, (v18 + 16), 0);
  }

  v19 = *(a2 + 135);
  if ((v19 & 0x80u) != 0)
  {
    v19 = *(a2 + 120);
  }

  if (v19)
  {
    std::basic_regex<char,std::regex_traits<char>>::basic_regex[abi:ne200100]<std::char_traits<char>,std::allocator<char>>(v23, (a2 + 112), 0);
  }

  if (quasar::gLogLevel >= 5)
  {
    memset(v23, 0, sizeof(v23));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v23);
    v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v23, "VoiceEditingResultHandler: ", 27);
    v21 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "Created VoiceEditingResultHandler, parser=", 42);
    MEMORY[0x1B8C84BD0](v21, *a4 != 0);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v23);
  }

  return a1;
}

void sub_1B576C9EC(_Unwind_Exception *a1)
{
  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(v1 + 11);
  quasar::Bitmap::~Bitmap(v1);
  _Unwind_Resume(a1);
}

uint64_t std::optional<std::basic_regex<char,std::regex_traits<char>>>::operator=[abi:ne200100]<std::basic_regex<char,std::regex_traits<char>>,void>(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 64) == 1)
  {
    std::locale::operator=(a1, a2);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    v4 = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    v5 = *(a1 + 48);
    *(a1 + 40) = v4;
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v5);
    }

    *(a1 + 56) = *(a2 + 56);
  }

  else
  {
    std::locale::locale(a1, a2);
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a2 + 40) = 0;
    *(a2 + 48) = 0;
    *(a1 + 56) = *(a2 + 56);
    *(a1 + 64) = 1;
  }

  return a1;
}

uint64_t std::pair<std::vector<std::vector<quasar::Token>>,std::vector<int>>::~pair(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v4 = a1;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v4);
  return a1;
}

void quasar::result_handler::VoiceEditingResultHandler::~VoiceEditingResultHandler(quasar::result_handler::VoiceEditingResultHandler *this)
{
  *this = &unk_1F2D2F208;
  if (quasar::gLogLevel >= 5)
  {
    memset(v12, 0, sizeof(v12));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v12);
    v2 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "VoiceEditingResultHandler: ", 27);
    v3 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v2, "Destroying VoiceEditingResultHandler, parser=", 45);
    MEMORY[0x1B8C84BD0](v3, *(this + 22) != 0);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v12);
  }

  v4 = *(this + 22);
  if (v4)
  {
    quasar::corrective_reranking::Parser::clearLongTermCache(v4);
  }

  v5 = *(this + 83);
  if (v5)
  {
    *(this + 84) = v5;
    operator delete(v5);
  }

  *&v12[0] = this + 640;
  std::vector<std::vector<quasar::PartialHistory::AnnotatedToken>>::__destroy_vector::operator()[abi:ne200100](v12);
  v6 = *(this + 75);
  if (v6)
  {
    *(this + 76) = v6;
    operator delete(v6);
  }

  *&v12[0] = this + 576;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v12);
  v7 = *(this + 69);
  if (v7)
  {
    *(this + 70) = v7;
    operator delete(v7);
  }

  *&v12[0] = this + 528;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v12);
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::~__hash_table(this + 480);
  if (*(this + 463) < 0)
  {
    operator delete(*(this + 55));
  }

  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100](this + 54, 0);
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100](this + 53, 0);
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100](this + 52, 0);
  std::__list_imp<std::pair<std::string,std::vector<quasar::result_handler::CommandInterpretation>>>::clear(this + 49);
  std::__hash_table<int,std::hash<int>,std::equal_to<int>,std::allocator<int>>::~__hash_table(this + 344);
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100](this + 39, 0);
  if (*(this + 296) == 1)
  {
    v8 = *(this + 35);
    if (v8)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](v8);
    }

    std::locale::~locale(this + 29);
  }

  *&v12[0] = this + 208;
  std::vector<std::pair<std::basic_regex<char,std::regex_traits<char>>,int>>::__destroy_vector::operator()[abi:ne200100](v12);
  v9 = *(this + 25);
  if (v9)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v9);
  }

  v10 = *(this + 23);
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v10);
  }

  v11 = *(this + 21);
  *(this + 21) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  if (*(this + 151) < 0)
  {
    operator delete(*(this + 16));
  }

  std::__hash_table<std::string,std::hash<std::string>,std::equal_to<std::string>,std::allocator<std::string>>::~__hash_table(this + 11);
  quasar::Bitmap::~Bitmap(this);
}

{
  quasar::result_handler::VoiceEditingResultHandler::~VoiceEditingResultHandler(this);

  JUMPOUT(0x1B8C85350);
}

void quasar::result_handler::VoiceEditingResultHandler::handleRecogProgress(quasar::result_handler::VoiceEditingResultHandler *this, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v5[0] = &unk_1F2D2F280;
  v5[1] = this;
  v5[3] = v5;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v6, v5);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v5);
  *(this + 524) = (*(**(this + 24) + 32))(*(this + 24));
  *(this + 525) = (*(**(this + 24) + 24))(*(this + 24));
  if (a2 >= 1)
  {
    *(this + 304) = 1;
  }

  (*(*this + 72))(this, &v4);
  quasar::result_handler::VoiceEditingResultHandler::runCommandLogic(this);
  quasar::result_handler::VoiceEditingResultHandler::runSuppressionLogic(this);
  quasar::ScopeGuard::~ScopeGuard(v6);
}

void sub_1B576CFB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](va);
  _Unwind_Resume(a1);
}

void quasar::result_handler::VoiceEditingResultHandler::runCommandLogic(quasar::result_handler::VoiceEditingResultHandler *this)
{
  v93 = *MEMORY[0x1E69E9840];
  v1 = *(this + 39);
  if (!v1)
  {
    return;
  }

  v3 = *(v1 + 48);
  if (v3 == *(v1 + 56) || *v3 == v3[1])
  {

    std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100](this + 39, 0);
    return;
  }

  if (*(v1 + 160) == *(v1 + 168) && (*(v1 + 368) & 1) == 0)
  {
    v4 = *(v1 + 76);
    started = quasar::result_handler::topChoiceSilStartMs(v1 + 48);
    v6 = *(this + 5);
    std::string::basic_string[abi:ne200100]<0>(__p, "eager non-command send");
    v7 = started + v6 + v4;
    LODWORD(v92.__r_.__value_.__l.__data_) = v7;
    memset(&v91, 0, sizeof(v91));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v91, &v92, v92.__r_.__value_.__r.__words + 1, 1uLL);
    quasar::result_handler::VoiceEditingResultHandler::logDeadlines(this, __p, &v91.__r_.__value_.__l.__data_);
    if (v91.__r_.__value_.__r.__words[0])
    {
      v91.__r_.__value_.__l.__size_ = v91.__r_.__value_.__r.__words[0];
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v69) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(this + 2) >= v7)
    {
      if (quasar::gLogLevel >= 5)
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *__p = 0u;
        v69 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
        v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "(now=", 5);
        v11 = MEMORY[0x1B8C84C00](v10, *(this + 2));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, ") sending non-command candidate package for non-suppressed partials", 67);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
      }

      v12 = *(this + 39);
      *(this + 39) = 0;
      v67 = v12;
      quasar::result_handler::VoiceEditingResultHandler::sendCommandCandidate(this, &v67);
    }

    v1 = *(this + 39);
    if (!v1)
    {
      goto LABEL_117;
    }
  }

  if (*(v1 + 368) != 1)
  {
    goto LABEL_111;
  }

  v8 = *(v1 + 48);
  if (v8 != *(v1 + 56) && *v8 != v8[1])
  {
    quasar::tokens2Str(v8, &v90);
    quasar::utf::toU32String();
  }

  v13 = *(this + 39);
  v14 = *(v13 + 76);
  v15 = quasar::result_handler::topChoiceSilStartMs(v13 + 48);
  v16 = *(this + 117);
  if (v16 <= *(this + 118))
  {
    v17 = 0;
  }

  else
  {
    v17 = *(this + 6) + v16;
  }

  v18 = *(this + 5);
  std::string::basic_string[abi:ne200100]<0>(__p, "eager command send");
  v19 = v15 + v14 + v18;
  v92.__r_.__value_.__r.__words[0] = __PAIR64__(v17, v19);
  memset(&v91, 0, sizeof(v91));
  std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v91, &v92, &v92.__r_.__value_.__r.__words[1], 2uLL);
  quasar::result_handler::VoiceEditingResultHandler::logDeadlines(this, __p, &v91.__r_.__value_.__l.__data_);
  if (v91.__r_.__value_.__r.__words[0])
  {
    v91.__r_.__value_.__l.__size_ = v91.__r_.__value_.__r.__words[0];
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v69) < 0)
  {
    operator delete(__p[0]);
  }

  v20 = *(this + 2);
  if (v20 < v19 || v20 < v17)
  {
    goto LABEL_111;
  }

  v21 = *(this + 39);
  v22 = *(v21 + 336);
  if (v22 == *(v21 + 344) || *(v22 + 260) != 1)
  {
    goto LABEL_107;
  }

  memset(v88, 0, sizeof(v88));
  v23 = *(v21 + 184);
  if (v88 != v23 && v23 != *(v21 + 192))
  {
    std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v88, *v23, v23[1], 0x6DB6DB6DB6DB6DB7 * ((v23[1] - *v23) >> 5));
  }

  memset(v87, 0, sizeof(v87));
  v24 = *(this + 53);
  if (v24)
  {
    v25 = *(v24 + 48);
    if (v87 != v25 && v25 != *(v24 + 56))
    {
      std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v87, *v25, v25[1], 0x6DB6DB6DB6DB6DB7 * ((v25[1] - *v25) >> 5));
    }
  }

  quasar::tokens2Str(v88, __p);
  quasar::tokens2Str(v87, &v91);
  v26 = BYTE7(v69);
  if ((SBYTE7(v69) & 0x80u) == 0)
  {
    v27 = BYTE7(v69);
  }

  else
  {
    v27 = __p[1];
  }

  size = HIBYTE(v91.__r_.__value_.__r.__words[2]);
  v29 = SHIBYTE(v91.__r_.__value_.__r.__words[2]);
  if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
  {
    size = v91.__r_.__value_.__l.__size_;
  }

  if (v27 == size)
  {
    if ((SBYTE7(v69) & 0x80u) == 0)
    {
      v30 = __p;
    }

    else
    {
      v30 = __p[0];
    }

    if ((v91.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v31 = &v91;
    }

    else
    {
      v31 = v91.__r_.__value_.__r.__words[0];
    }

    v32 = memcmp(v30, v31, v27) == 0;
  }

  else
  {
    v32 = 0;
  }

  if (v29 < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
    if ((BYTE7(v69) & 0x80) == 0)
    {
LABEL_56:
      if (v32)
      {
LABEL_57:
        __p[0] = v87;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);
        __p[0] = v88;
        std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);
        goto LABEL_107;
      }

      goto LABEL_60;
    }
  }

  else if ((v26 & 0x80) == 0)
  {
    goto LABEL_56;
  }

  operator delete(__p[0]);
  if (v32)
  {
    goto LABEL_57;
  }

LABEL_60:
  std::string::basic_string(&v91, (v21 + 280), 0, *(v21 + 304), &v90);
  quasar::tokens2Str(v87, &v92);
  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v33 = &v92;
  }

  else
  {
    v33 = v92.__r_.__value_.__r.__words[0];
  }

  if ((v92.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v34 = HIBYTE(v92.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v34 = v92.__r_.__value_.__l.__size_;
  }

  v35 = std::string::append(&v91, v33, v34);
  v36 = *&v35->__r_.__value_.__l.__data_;
  *&v69 = *(&v35->__r_.__value_.__l + 2);
  *__p = v36;
  v35->__r_.__value_.__l.__size_ = 0;
  v35->__r_.__value_.__r.__words[2] = 0;
  v35->__r_.__value_.__r.__words[0] = 0;
  std::string::basic_string(&v90, (v21 + 280), *(v21 + 308), 0xFFFFFFFFFFFFFFFFLL, &v89);
  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v37 = &v90;
  }

  else
  {
    v37 = v90.__r_.__value_.__r.__words[0];
  }

  if ((v90.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v38 = HIBYTE(v90.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v38 = v90.__r_.__value_.__l.__size_;
  }

  v39 = std::string::append(__p, v37, v38);
  v40 = *&v39->__r_.__value_.__l.__data_;
  v86 = v39->__r_.__value_.__r.__words[2];
  v85 = v40;
  v39->__r_.__value_.__l.__size_ = 0;
  v39->__r_.__value_.__r.__words[2] = 0;
  v39->__r_.__value_.__r.__words[0] = 0;
  if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v90.__r_.__value_.__l.__data_);
  }

  if (SBYTE7(v69) < 0)
  {
    operator delete(__p[0]);
  }

  if (SHIBYTE(v92.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v92.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v91.__r_.__value_.__l.__data_);
  }

  v41 = *(v21 + 336);
  v42 = *(v21 + 344);
  if (v41 == v42)
  {
LABEL_99:
    v48 = 0;
    goto LABEL_101;
  }

  v43 = v41 + 24;
  while (1)
  {
    v44 = *(v43 + 23);
    if ((v44 & 0x80u) != 0)
    {
      v44 = *(v43 + 8);
    }

    if (!v44)
    {
      goto LABEL_95;
    }

    std::string::basic_string[abi:ne200100]<0>(&v91, "en_US");
    quasar::getRangesForSearchStringWithWordBoundariesValidation(v43, v21 + 280, &v91.__r_.__value_.__l.__data_, __p);
    v45 = __p[0];
    if (__p[0] == __p[1])
    {
      v46 = 0;
      if (__p[0])
      {
        goto LABEL_91;
      }
    }

    else
    {
      std::string::basic_string[abi:ne200100]<0>(&v90, "en_US");
      quasar::getRangesForSearchStringWithWordBoundariesValidation(v43, &v85, &v90.__r_.__value_.__l.__data_, &v92.__r_.__value_.__l.__data_);
      v46 = v92.__r_.__value_.__r.__words[0] == v92.__r_.__value_.__l.__size_;
      if (v92.__r_.__value_.__r.__words[0])
      {
        v92.__r_.__value_.__l.__size_ = v92.__r_.__value_.__r.__words[0];
        operator delete(v92.__r_.__value_.__l.__data_);
      }

      if (SHIBYTE(v90.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v90.__r_.__value_.__l.__data_);
      }

      v45 = __p[0];
      if (__p[0])
      {
LABEL_91:
        __p[1] = v45;
        operator delete(v45);
      }
    }

    if (SHIBYTE(v91.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (v46)
    {
      break;
    }

LABEL_95:
    v47 = v43 + 240;
    v43 += 264;
    if (v47 == v42)
    {
      goto LABEL_99;
    }
  }

  v48 = 1;
LABEL_101:
  if (SHIBYTE(v86) < 0)
  {
    operator delete(v85);
  }

  __p[0] = v87;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  __p[0] = v88;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);
  if (v48)
  {
    if (quasar::gLogLevel >= 5)
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      *__p = 0u;
      v69 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v49 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, "(now=", 5);
      v51 = MEMORY[0x1B8C84C00](v50, *(this + 2));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v51, ") sending precedingUtt as partial to avoid failing UI command applicability check", 81);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    operator new();
  }

LABEL_107:
  if (*(this + 2) >= v19)
  {
    if (quasar::gLogLevel >= 5)
    {
      v83 = 0u;
      v84 = 0u;
      v81 = 0u;
      v82 = 0u;
      v79 = 0u;
      v80 = 0u;
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v74 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      *__p = 0u;
      v69 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
      v52 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
      v53 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "(now=", 5);
      v54 = MEMORY[0x1B8C84C00](v53, *(this + 2));
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ") sending command candidate package", 35);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
    }

    v55 = *(this + 39);
    *(this + 39) = 0;
    v66 = v55;
    quasar::result_handler::VoiceEditingResultHandler::sendCommandCandidate(this, &v66);
  }

LABEL_111:
  v56 = *(this + 39);
  if (v56)
  {
    v57 = *(v56 + 76);
    v58 = quasar::result_handler::topChoiceSilStartMs(v56 + 48);
    v59 = *(this + 7);
    std::string::basic_string[abi:ne200100]<0>(__p, "thought pause stop");
    v60 = v58 + v57 + v59;
    LODWORD(v92.__r_.__value_.__l.__data_) = v60;
    memset(&v91, 0, sizeof(v91));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v91, &v92, v92.__r_.__value_.__r.__words + 1, 1uLL);
    quasar::result_handler::VoiceEditingResultHandler::logDeadlines(this, __p, &v91.__r_.__value_.__l.__data_);
    if (v91.__r_.__value_.__r.__words[0])
    {
      v91.__r_.__value_.__l.__size_ = v91.__r_.__value_.__r.__words[0];
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v69) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(this + 2) >= v60)
    {
      if (quasar::gLogLevel >= 5)
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        v75 = 0u;
        v76 = 0u;
        v74 = 0u;
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        *__p = 0u;
        v69 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
        v62 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "(now=", 5);
        v63 = MEMORY[0x1B8C84C00](v62, *(this + 2));
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v63, ") sending command candidate package after thought pause", 55);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
      }

      v64 = *(this + 39);
      *(this + 39) = 0;
      v65 = v64;
      quasar::result_handler::VoiceEditingResultHandler::sendCommandCandidate(this, &v65);
    }
  }

LABEL_117:
  if (*(this + 53) && *(this + 130) >= 1)
  {
    std::string::basic_string[abi:ne200100]<0>(__p, "non-command send for suppressed partials");
    LODWORD(v92.__r_.__value_.__l.__data_) = *(this + 130);
    memset(&v91, 0, sizeof(v91));
    std::vector<int>::__init_with_size[abi:ne200100]<int const*,int const*>(&v91, &v92, v92.__r_.__value_.__r.__words + 1, 1uLL);
    quasar::result_handler::VoiceEditingResultHandler::logDeadlines(this, __p, &v91.__r_.__value_.__l.__data_);
    if (v91.__r_.__value_.__r.__words[0])
    {
      v91.__r_.__value_.__l.__size_ = v91.__r_.__value_.__r.__words[0];
      operator delete(v91.__r_.__value_.__l.__data_);
    }

    if (SBYTE7(v69) < 0)
    {
      operator delete(__p[0]);
    }

    if (*(this + 2) >= *(this + 130))
    {
      std::make_unique[abi:ne200100]<quasar::result_handler::Package,quasar::result_handler::Package&,0>();
    }
  }
}

void sub_1B576DCA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, int a11, __int16 a12, char a13, char a14, int a15, __int16 a16, char a17, char a18, int a19, void **a20, __int16 a21, char a22, char a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29)
{
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100](&a20, 0);
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100](&__p, 0);
  _Unwind_Resume(a1);
}

void quasar::result_handler::VoiceEditingResultHandler::runSuppressionLogic(quasar::result_handler::VoiceEditingResultHandler *this)
{
  v1 = *(this + 52);
  if (v1)
  {
    v3 = *(this + 2);
    v4 = v3 - *(this + 81);
    v5 = *(v1 + 48);
    if (v5 != *(v1 + 56) && (*(this + 524) & 1) == 0 && (*(this + 525) & 1) == 0)
    {
      v6 = *(v1 + 76);
      if (v3 >= quasar::result_handler::topChoiceSilStartMs(v1 + 48) + *(this + 11) + v6 && v4 <= *(this + 2))
      {
        v4 = *(this + 2);
      }

      v7 = v5[1];
      if (v7 != *v5)
      {
        v8 = 0;
        v9 = (v7 - 224);
        do
        {
          v10 = *(v9 + 8) + *(*(this + 52) + 76);
          if (v4 >= v10)
          {
            break;
          }

          v11 = *(this + 9);
          if ((v11 & 0x80000000) == 0 && v8 >= v11)
          {
            v4 = v10 - 1;
            break;
          }

          v8 += quasar::Token::isAutoPunctuation(v9) ^ 1;
          v12 = v9 == *v5;
          v9 = (v9 - 224);
        }

        while (!v12);
      }
    }

    if (v4 >= *(this + 82))
    {
      *(this + 82) = v4;
      operator new();
    }
  }
}

void sub_1B576E8BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, char a36)
{
  std::pair<std::string,std::string>::~pair(&a21);
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100]((v36 - 88), 0);
  _Unwind_Resume(a1);
}

void quasar::result_handler::VoiceEditingResultHandler::handlePartial(uint64_t a1, unsigned int a2, quasar::Token ****a3)
{
  v76 = *MEMORY[0x1E69E9840];
  v56 = a2;
  v74[0] = &unk_1F2D2F300;
  v74[1] = a1;
  v74[3] = v74;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v75, v74);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v74);
  *(a1 + 524) = (*(**(a1 + 192) + 32))(*(a1 + 192));
  *(a1 + 525) = (*(**(a1 + 192) + 24))(*(a1 + 192));
  (*(*a1 + 72))(a1, &v56);
  v5 = *a3;
  quasar::result_handler::clean(*a3);
  quasar::result_handler::clean(v5 + 3);
  quasar::result_handler::clean(v5 + 6);
  v6 = *a3;
  v7 = v56;
  v8 = *(*a3 + 19);
  if (v8 > v56)
  {
    *(v6 + 76) = v56;
    v8 = v7;
    if (quasar::gLogLevel >= 5)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      *v57 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v57);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "VoiceEditingResultHandler: ", 27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "Utterance timestamp is too large and likely wrong. Clamping it.", 63);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v57);
      v8 = *(v6 + 76);
    }
  }

  v10 = v7 - v8;
  quasar::result_handler::clampTimestampsIfNeeded(v6, v10);
  quasar::result_handler::clampTimestampsIfNeeded(v6 + 24, v10);
  quasar::result_handler::clampTimestampsIfNeeded(v6 + 48, v10);
  v11 = **a3;
  if ((*a3)[1] == v11)
  {
    v57[0] = 0;
    v57[1] = 0;
    *&v58 = 0;
    std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100]((a1 + 528), v57);
    v48.__r_.__value_.__r.__words[0] = v57;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v48);
  }

  else
  {
    std::vector<std::vector<quasar::Token>>::push_back[abi:ne200100](a1 + 528, v11);
  }

  std::vector<int>::push_back[abi:ne200100]((a1 + 552), &v56);
  if (quasar::gLogLevel >= 5)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    *v57 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v57);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "VoiceEditingResultHandler: ", 27);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "(now=", 5);
    v14 = MEMORY[0x1B8C84C00](v13, v56);
    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, ") recv partial: ", 16);
    quasar::getTopChoice((*a3 + 6), 1, &v48);
    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v16 = &v48;
    }

    else
    {
      v16 = v48.__r_.__value_.__r.__words[0];
    }

    if ((v48.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      size = HIBYTE(v48.__r_.__value_.__r.__words[2]);
    }

    else
    {
      size = v48.__r_.__value_.__l.__size_;
    }

    v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, v16, size);
    v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, " ::::: ", 7);
    quasar::topChoiceWithTimes(*a3 + 6, v54);
    if (v55 >= 0)
    {
      v20 = v54;
    }

    else
    {
      v20 = v54[0];
    }

    if (v55 >= 0)
    {
      v21 = HIBYTE(v55);
    }

    else
    {
      v21 = v54[1];
    }

    v22 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
    v23 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v22, " utteranceStartMs=", 18);
    v24 = MEMORY[0x1B8C84C00](v23, *(*a3 + 19));
    v25 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v24, " ::::: preItn=", 14);
    quasar::topChoiceWithTimes(*a3, &__p);
    if ((v53 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v53 & 0x80u) == 0)
    {
      v27 = v53;
    }

    else
    {
      v27 = v52;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, p_p, v27);
    if (v53 < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v55) < 0)
    {
      operator delete(v54[0]);
    }

    if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v48.__r_.__value_.__l.__data_);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(v57);
  }

  std::string::basic_string[abi:ne200100]<0>(v57, "partial");
  quasar::result_handler::VoiceEditingResultHandler::logSnippet(a1, v57, *a3);
  if (SBYTE7(v58) < 0)
  {
    operator delete(v57[0]);
  }

  if (!*(a1 + 176) && quasar::gLogLevel >= 5)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    *v57 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v57);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "VoiceEditingResultHandler: ", 27);
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "Parser is unavailable", 21);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v57);
  }

  (*(**(a1 + 192) + 16))(&v48);
  v54[0] = 0;
  v54[1] = 0;
  v55 = 0;
  if (*(a1 + 176))
  {
    quasar::result_handler::findPartialCommands(&v48, &v49, *a3 + 6, *a3, *(a1 + 525), (a1 + 16), (a1 + 336), v57, (a1 + 640));
    std::vector<quasar::result_handler::CommandData>::__vdeallocate(v54);
    *v54 = *v57;
    v55 = v58;
    v57[1] = 0;
    *&v58 = 0;
    v57[0] = 0;
    __p = v57;
    std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](&__p);
  }

  if (quasar::gLogLevel >= 5)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    *v57 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v57);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "VoiceEditingResultHandler: ", 27);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "(now=", 5);
    v31 = MEMORY[0x1B8C84C00](v30, v56);
    v32 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v31, ") handlePartial: partialCommands before filter: ", 48);
    v46 = " ";
    v47 = 1;
    quasar::join<std::vector<quasar::result_handler::CommandData>>(v54, &v46);
    if ((v53 & 0x80u) == 0)
    {
      v33 = &__p;
    }

    else
    {
      v33 = __p;
    }

    if ((v53 & 0x80u) == 0)
    {
      v34 = v53;
    }

    else
    {
      v34 = v52;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, v33, v34);
    if (v53 < 0)
    {
      operator delete(__p);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(v57);
  }

  memset(v45, 0, sizeof(v45));
  std::vector<quasar::result_handler::CommandData>::__init_with_size[abi:ne200100]<quasar::result_handler::CommandData*,quasar::result_handler::CommandData*>(v45, v54[0], v54[1], 0xD37A6F4DE9BD37A7 * ((v54[1] - v54[0]) >> 3));
  quasar::result_handler::VoiceEditingResultHandler::filterPartialCommandsForSuppression(a1, v45, *(*a3 + 19), v56, v57);
  std::vector<quasar::result_handler::CommandData>::__vdeallocate(v54);
  *v54 = *v57;
  v55 = v58;
  v57[1] = 0;
  *&v58 = 0;
  v57[0] = 0;
  __p = v57;
  std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](&__p);
  __p = v45;
  std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](&__p);
  if (quasar::gLogLevel >= 5)
  {
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    *v57 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v57);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "VoiceEditingResultHandler: ", 27);
    v36 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v35, "(now=", 5);
    v37 = MEMORY[0x1B8C84C00](v36, v56);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ") handlePartial: partialCommands after filter: ", 47);
    v46 = " ";
    v47 = 1;
    quasar::join<std::vector<quasar::result_handler::CommandData>>(v54, &v46);
    if ((v53 & 0x80u) == 0)
    {
      v39 = &__p;
    }

    else
    {
      v39 = __p;
    }

    if ((v53 & 0x80u) == 0)
    {
      v40 = v53;
    }

    else
    {
      v40 = v52;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v38, v39, v40);
    if (v53 < 0)
    {
      operator delete(__p);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(v57);
  }

  quasar::result_handler::VoiceEditingResultHandler::updateSuppressionState(a1, v54, 0);
  v41 = *a3;
  *a3 = 0;
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100]((a1 + 416), v41);
  quasar::result_handler::VoiceEditingResultHandler::runSuppressionLogic(a1);
  if (*(a1 + 320) == 1)
  {
    if (quasar::gLogLevel >= 5)
    {
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      *v57 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v57);
      v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "VoiceEditingResultHandler: ", 27);
      v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v42, "(now=", 5);
      v44 = MEMORY[0x1B8C84C00](v43, v56);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, ") resetting nonCommandCandidatePackageDeadline to 0 since we're starting to suppress partials", 93);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v57);
    }

    *(a1 + 520) = 0;
  }

  *(a1 + 468) = v56;
  v57[0] = v54;
  std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](v57);
  if (v50 < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  quasar::ScopeGuard::~ScopeGuard(v75);
}

void sub_1B576F25C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, void *__p, uint64_t a26, int a27, __int16 a28, char a29, char a30, void *a31, uint64_t a32, int a33, __int16 a34, char a35, char a36, uint64_t a37, void **a38, uint64_t a39, int a40, __int16 a41, char a42, char a43)
{
  a38 = &a31;
  std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](&a38);
  std::pair<std::string,std::string>::~pair(&a16);
  quasar::ScopeGuard::~ScopeGuard((v43 - 88));
  _Unwind_Resume(a1);
}

void quasar::result_handler::VoiceEditingResultHandler::logSnippet(uint64_t a1, uint64_t **a2, uint64_t a3)
{
  v110 = 0;
  v111 = 0;
  v112 = 0;
  v107 = 0;
  v108 = 0;
  v109 = 0;
  v6 = *a3;
  if (*a3 == *(a3 + 8) || (v7 = *v6, v8 = v6[1], *v6 == v8))
  {
    v12 = 0;
  }

  else if ((0x6DB6DB6DB6DB6DB7 * ((v8 - v7) >> 5)) > 3)
  {
    v64 = 0;
    v65 = 0;
    v66 = -224;
    do
    {
      v67 = v111;
      if (v111 >= v112)
      {
        v68 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(&v110, (v7 + v64));
      }

      else
      {
        quasar::Token::Token(v111, (v7 + v64));
        v68 = (v67 + 224);
      }

      v111 = v68;
      v69 = v6[1];
      v70 = v108;
      if (v108 >= v109)
      {
        v12 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(&v107, (v69 + v66));
      }

      else
      {
        quasar::Token::Token(v108, (v69 + v66));
        v12 = (v70 + 224);
      }

      v108 = v12;
      if (v65 > 1)
      {
        break;
      }

      ++v65;
      v7 = *v6;
      v64 += 224;
      v66 -= 224;
    }

    while ((0x6DB6DB6DB6DB6DB7 * ((v6[1] - *v6) >> 5)) >> 1 > v65);
  }

  else
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    do
    {
      if (v10 >= v112)
      {
        v10 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(&v110, (v7 + v9));
      }

      else
      {
        quasar::Token::Token(v10, (v7 + v9));
        v10 = (v10 + 224);
      }

      v111 = v10;
      if (v11 > 1)
      {
        break;
      }

      ++v11;
      v7 = *v6;
      v9 += 224;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v6[1] - *v6) >> 5) > v11);
    v12 = v108;
  }

  std::__reverse_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<quasar::Token *>>(v107, v12);
  v104 = 0;
  v105 = 0;
  v106 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v13 = *(a3 + 48);
  if (v13 == *(a3 + 56) || (v14 = *v13, v15 = v13[1], *v13 == v15))
  {
    v19 = 0;
  }

  else if ((0x6DB6DB6DB6DB6DB7 * ((v15 - v14) >> 5)) > 3)
  {
    v71 = 0;
    v72 = 0;
    v73 = -224;
    do
    {
      v74 = v105;
      if (v105 >= v106)
      {
        v75 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(&v104, (v14 + v71));
      }

      else
      {
        quasar::Token::Token(v105, (v14 + v71));
        v75 = (v74 + 224);
      }

      v105 = v75;
      v76 = v13[1];
      v77 = v102;
      if (v102 >= v103)
      {
        v19 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(&v101, (v76 + v73));
      }

      else
      {
        quasar::Token::Token(v102, (v76 + v73));
        v19 = (v77 + 224);
      }

      v102 = v19;
      if (v72 > 1)
      {
        break;
      }

      ++v72;
      v14 = *v13;
      v71 += 224;
      v73 -= 224;
    }

    while ((0x6DB6DB6DB6DB6DB7 * ((v13[1] - *v13) >> 5)) >> 1 > v72);
  }

  else
  {
    v16 = 0;
    v17 = 0;
    v18 = 0;
    do
    {
      if (v17 >= v106)
      {
        v17 = std::vector<quasar::Token>::__emplace_back_slow_path<quasar::Token const&>(&v104, (v14 + v16));
      }

      else
      {
        quasar::Token::Token(v17, (v14 + v16));
        v17 = (v17 + 224);
      }

      v105 = v17;
      if (v18 > 1)
      {
        break;
      }

      ++v18;
      v14 = *v13;
      v16 += 224;
    }

    while (0x6DB6DB6DB6DB6DB7 * ((v13[1] - *v13) >> 5) > v18);
    v19 = v102;
  }

  std::__reverse_impl[abi:ne200100]<std::_ClassicAlgPolicy,std::__wrap_iter<quasar::Token *>>(v101, v19);
  v20 = *(a3 + 76);
  v21 = v110;
  v22 = v111;
  v23 = vdup_n_s32(v20);
  while (v21 != v22)
  {
    *(v21 + 36) += v20;
    *(v21 + 28) = vadd_s32(*(v21 + 28), v23);
    v21 += 224;
  }

  v24 = v107;
  v25 = v108;
  while (v24 != v25)
  {
    *(v24 + 36) += v20;
    *(v24 + 28) = vadd_s32(*(v24 + 28), v23);
    v24 += 224;
  }

  v26 = v104;
  v27 = v105;
  while (v26 != v27)
  {
    *(v26 + 36) += v20;
    *(v26 + 28) = vadd_s32(*(v26 + 28), v23);
    v26 += 224;
  }

  v28 = v101;
  v29 = v102;
  while (v28 != v29)
  {
    *(v28 + 36) += v20;
    *(v28 + 28) = vadd_s32(*(v28 + 28), v23);
    v28 += 224;
  }

  if (quasar::gLogLevel >= 5)
  {
    v99 = 0u;
    v100 = 0u;
    v97 = 0u;
    v98 = 0u;
    v95 = 0u;
    v96 = 0u;
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    v84 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v84);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84, "VoiceEditingResultHandler: ", 27);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "(now=", 5);
    v32 = MEMORY[0x1B8C84C00](v31, *(a1 + 8));
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ") snippet of ", 13);
    v34 = *(a2 + 23);
    if (v34 >= 0)
    {
      v35 = a2;
    }

    else
    {
      v35 = *a2;
    }

    if (v34 >= 0)
    {
      v36 = *(a2 + 23);
    }

    else
    {
      v36 = a2[1];
    }

    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v33, v35, v36);
    v38 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v37, ": utteranceStartMs=", 19);
    v39 = MEMORY[0x1B8C84C00](v38, *(a3 + 76));
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " preItn: ", 9);
    quasar::tokensWithTimes(&v110);
    if ((v83 & 0x80u) == 0)
    {
      v41 = &v81;
    }

    else
    {
      v41 = v81;
    }

    if ((v83 & 0x80u) == 0)
    {
      v42 = v83;
    }

    else
    {
      v42 = v82;
    }

    v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v40, v41, v42);
    v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, " ... ", 5);
    quasar::tokensWithTimes(&v107);
    if ((v80 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v80 & 0x80u) == 0)
    {
      v46 = v80;
    }

    else
    {
      v46 = v79;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, p_p, v46);
    if (v80 < 0)
    {
      operator delete(__p);
    }

    if (v83 < 0)
    {
      operator delete(v81);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v84);
    if (quasar::gLogLevel >= 5)
    {
      v99 = 0u;
      v100 = 0u;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v84 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v84);
      v47 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v84, "VoiceEditingResultHandler: ", 27);
      v48 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v47, "(now=", 5);
      v49 = MEMORY[0x1B8C84C00](v48, *(a1 + 8));
      v50 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v49, ") snippet of ", 13);
      v51 = *(a2 + 23);
      if (v51 >= 0)
      {
        v52 = a2;
      }

      else
      {
        v52 = *a2;
      }

      if (v51 >= 0)
      {
        v53 = *(a2 + 23);
      }

      else
      {
        v53 = a2[1];
      }

      v54 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v50, v52, v53);
      v55 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v54, ": utteranceStartMs=", 19);
      v56 = MEMORY[0x1B8C84C00](v55, *(a3 + 76));
      v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v56, " postItn: ", 10);
      quasar::tokensWithTimes(&v104);
      if ((v83 & 0x80u) == 0)
      {
        v58 = &v81;
      }

      else
      {
        v58 = v81;
      }

      if ((v83 & 0x80u) == 0)
      {
        v59 = v83;
      }

      else
      {
        v59 = v82;
      }

      v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, v58, v59);
      v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, " ... ", 5);
      quasar::tokensWithTimes(&v101);
      if ((v80 & 0x80u) == 0)
      {
        v62 = &__p;
      }

      else
      {
        v62 = __p;
      }

      if ((v80 & 0x80u) == 0)
      {
        v63 = v80;
      }

      else
      {
        v63 = v79;
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, v62, v63);
      if (v80 < 0)
      {
        operator delete(__p);
      }

      if (v83 < 0)
      {
        operator delete(v81);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v84);
    }
  }

  *&v84 = &v101;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v84);
  *&v84 = &v104;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v84);
  *&v84 = &v107;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v84);
  *&v84 = &v110;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v84);
}

void sub_1B576FA94(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21)
{
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a21);
  a21 = v21 - 176;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = v21 - 152;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = v21 - 128;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a21);
  a21 = v21 - 104;
  std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&a21);
  _Unwind_Resume(a1);
}

void quasar::result_handler::findPartialCommands(std::string *a2@<X1>, uint64_t a3@<X2>, uint64_t **a4@<X3>, void *a5@<X4>, int a6@<W5>, _DWORD *a7@<X6>, void *a8@<X7>, unint64_t *a9@<X8>, quasar::PartialHistory *a10)
{
  v84 = *MEMORY[0x1E69E9840];
  v11 = *a4;
  if (*a4 == a4[1] || (v12 = *v11, v13 = v11[1], *v11 == v13) || *a5 == a5[1] || **a5 == *(*a5 + 8))
  {
    *a9 = 0;
    a9[1] = 0;
    a9[2] = 0;
    return;
  }

  *a9 = 0;
  a9[1] = 0;
  a9[2] = 0;
  v15 = 0x6DB6DB6DB6DB6DB7 * ((v13 - v12) >> 5);
  v16 = v15 - 1;
  if (v15 < 1)
  {
    return;
  }

  v19 = 0;
  v20 = v15 & 0x7FFFFFFF;
  if (v16 >= 0x1D)
  {
    v16 = 29;
  }

  v59 = v16;
  do
  {
    v21 = v20 - 1;
    if (v20 >= 2 && quasar::Token::trailingSilenceMilliseconds((*v11 + 224 * v20 - 448)) < *a7)
    {
      goto LABEL_74;
    }

    quasar::result_handler::initSegmentation(a2, a3, a4, a5, v21, a10, v70);
    if (v82)
    {
      v28 = v79;
      if ((v79 & 0x80u) != 0)
      {
        v28 = v78;
      }

      if (v28 && (quasar::isUpperUnicode(&v77) & 1) == 0)
      {
        if ((v76 & 0x80u) == 0)
        {
          v29 = v76;
        }

        else
        {
          v29 = v75;
        }

        std::to_string(&v63, v29);
        v30 = std::string::append(&v63, " ");
        v31 = *&v30->__r_.__value_.__l.__data_;
        v64.__r_.__value_.__r.__words[2] = v30->__r_.__value_.__r.__words[2];
        *&v64.__r_.__value_.__l.__data_ = v31;
        v30->__r_.__value_.__l.__size_ = 0;
        v30->__r_.__value_.__r.__words[2] = 0;
        v30->__r_.__value_.__r.__words[0] = 0;
        if ((v79 & 0x80u) == 0)
        {
          v32 = v79;
        }

        else
        {
          v32 = v78;
        }

        std::to_string(&v62, v32);
        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          v33 = &v62;
        }

        else
        {
          v33 = v62.__r_.__value_.__r.__words[0];
        }

        if ((v62.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
        {
          size = HIBYTE(v62.__r_.__value_.__r.__words[2]);
        }

        else
        {
          size = v62.__r_.__value_.__l.__size_;
        }

        v35 = std::string::append(&v64, v33, size);
        v36 = *&v35->__r_.__value_.__l.__data_;
        v65.__r_.__value_.__r.__words[2] = v35->__r_.__value_.__r.__words[2];
        *&v65.__r_.__value_.__l.__data_ = v36;
        v35->__r_.__value_.__l.__size_ = 0;
        v35->__r_.__value_.__r.__words[2] = 0;
        v35->__r_.__value_.__r.__words[0] = 0;
        v37 = std::string::append(&v65, " ");
        v38 = *&v37->__r_.__value_.__l.__data_;
        v66.__r_.__value_.__r.__words[2] = v37->__r_.__value_.__r.__words[2];
        *&v66.__r_.__value_.__l.__data_ = v38;
        v37->__r_.__value_.__l.__size_ = 0;
        v37->__r_.__value_.__r.__words[2] = 0;
        v37->__r_.__value_.__r.__words[0] = 0;
        if ((v76 & 0x80u) == 0)
        {
          v39 = &v74;
        }

        else
        {
          v39 = v74;
        }

        if ((v76 & 0x80u) == 0)
        {
          v40 = v76;
        }

        else
        {
          v40 = v75;
        }

        v41 = std::string::append(&v66, v39, v40);
        v42 = *&v41->__r_.__value_.__l.__data_;
        v67.__r_.__value_.__r.__words[2] = v41->__r_.__value_.__r.__words[2];
        *&v67.__r_.__value_.__l.__data_ = v42;
        v41->__r_.__value_.__l.__size_ = 0;
        v41->__r_.__value_.__r.__words[2] = 0;
        v41->__r_.__value_.__r.__words[0] = 0;
        v43 = std::string::append(&v67, " ");
        v44 = *&v43->__r_.__value_.__l.__data_;
        *&v83[16] = *(&v43->__r_.__value_.__l + 2);
        *v83 = v44;
        v43->__r_.__value_.__l.__size_ = 0;
        v43->__r_.__value_.__r.__words[2] = 0;
        v43->__r_.__value_.__r.__words[0] = 0;
        if ((v79 & 0x80u) == 0)
        {
          v45 = &v77;
        }

        else
        {
          v45 = v77;
        }

        if ((v79 & 0x80u) == 0)
        {
          v46 = v79;
        }

        else
        {
          v46 = v78;
        }

        v47 = std::string::append(v83, v45, v46);
        v48 = *&v47->__r_.__value_.__l.__data_;
        v69 = v47->__r_.__value_.__r.__words[2];
        *__p = v48;
        v47->__r_.__value_.__l.__size_ = 0;
        v47->__r_.__value_.__r.__words[2] = 0;
        v47->__r_.__value_.__r.__words[0] = 0;
        if ((v83[23] & 0x80000000) != 0)
        {
          operator delete(*v83);
        }

        if (SHIBYTE(v67.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v67.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v66.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v66.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v65.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v65.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v62.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v62.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v64.__r_.__value_.__l.__data_);
        }

        if (SHIBYTE(v63.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v63.__r_.__value_.__l.__data_);
        }

        if (!kaldi::LRUCacheMap<std::string,std::vector<quasar::result_handler::CommandInterpretation>,std::hash<std::string>,std::equal_to<std::string>>::Get(a8, __p, &v80))
        {
          quasar::utf::toU32String();
        }

        v49 = v80;
        v50 = v80;
        if (v80 == v81)
        {
LABEL_61:
          if (!a6)
          {
            goto LABEL_66;
          }
        }

        else
        {
          while (*(v50 + 42) <= 0)
          {
            v50 = (v50 + 264);
            if (v50 == v81)
            {
              while ((*(v49 + 173) & 1) == 0)
              {
                v49 = (v49 + 264);
                if (v49 == v81)
                {
                  goto LABEL_61;
                }
              }

              break;
            }
          }
        }

        v51 = a9[1];
        if (v51 >= a9[2])
        {
          v52 = std::vector<quasar::result_handler::CommandData>::__emplace_back_slow_path<quasar::result_handler::CommandData const&>(a9, v70);
        }

        else
        {
          quasar::result_handler::CommandData::CommandData(a9[1], v70);
          v52 = v51 + 184;
        }

        a9[1] = v52;
LABEL_66:
        if (SHIBYTE(v69) < 0)
        {
          operator delete(__p[0]);
        }
      }
    }

    if (v82 == 1)
    {
      *v83 = &v80;
      std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](v83);
      if (v79 < 0)
      {
        operator delete(v77);
      }

      if (v76 < 0)
      {
        operator delete(v74);
      }

      *v83 = &v73;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v83);
      *v83 = &v72;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v83);
      *v83 = &v71;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v83);
      *v83 = v70;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v83);
    }

LABEL_74:
    v20 = v21;
  }

  while (v19++ != v59);
  v55 = *a9;
  v54 = a9[1];
  if (*a9 != v54)
  {
    for (i = v54 - 184; v55 < i; i -= 184)
    {
      std::swap[abi:ne200100]<quasar::result_handler::CommandData>(v55, i, v22, v23, v24, v25, v26, v27);
      v55 = (v55 + 184);
    }
  }
}

void sub_1B5770320(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29, uint64_t a30, uint64_t a31, uint64_t a32, void *__p, uint64_t a34, int a35, __int16 a36, char a37, char a38, uint64_t a39, void *a40, uint64_t a41, uint64_t a42, uint64_t a43, void *a44, uint64_t a45, uint64_t a46, uint64_t a47, void *a48, uint64_t a49, int a50, __int16 a51, char a52, char a53, uint64_t a54, char a55)
{
  if (a38 < 0)
  {
    operator delete(__p);
  }

  if (a53 < 0)
  {
    operator delete(a48);
  }

  std::optional<quasar::result_handler::CommandData>::~optional(&a55);
  STACK[0x200] = v55;
  std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](&STACK[0x200]);
  _Unwind_Resume(a1);
}

void quasar::result_handler::VoiceEditingResultHandler::filterPartialCommandsForSuppression(uint64_t a1@<X0>, quasar::result_handler::CommandData **a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = 0;
  a5[1] = 0;
  a5[2] = 0;
  v7 = *a2;
  v6 = a2[1];
  if (v6 == *a2)
  {
    return;
  }

  v11 = 0;
  while (1)
  {
    v12 = (v7 + 184 * v11);
    v14 = (v12 + 3);
    v13 = v12[3];
    if (v13 == v12[4] || (v15 = *v13, *v13 == v13[1]))
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "!emptyTopChoice(partialCommand.commandUtterance)", 48);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v46);
    }

    v16 = *(a1 + 424);
    if (v16)
    {
      v17 = *(v16 + 48);
      v18 = v17 == *(v16 + 56) ? 0 : -1227133513 * ((v17[1] - *v17) >> 5);
      v19 = *v12 == v12[1] ? 0 : 1227133513 * ((*(*v12 + 8) - **v12) >> 5);
      if (v19 + v18 > *(a1 + 60))
      {
        if (quasar::gLogLevel >= 5)
        {
          v61 = 0u;
          v62 = 0u;
          v59 = 0u;
          v60 = 0u;
          v57 = 0u;
          v58 = 0u;
          v55 = 0u;
          v56 = 0u;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v49 = 0u;
          v50 = 0u;
          v47 = 0u;
          v48 = 0u;
          v46 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
          v20 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "VoiceEditingResultHandler: ", 27);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v20, "FILTERING: REJECT1", 18);
LABEL_39:
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v46);
          goto LABEL_40;
        }

        goto LABEL_40;
      }
    }

    v21 = *(v15 + 36) + a3;
    if (v21 + *(a1 + 40) <= a4)
    {
      if (quasar::gLogLevel >= 5)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
        v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "VoiceEditingResultHandler: ", 27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v27, "FILTERING: REJECT2", 18);
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    v23 = v12[19];
    v22 = v12[20];
    v24 = v23;
    if (v23 != v22)
    {
      break;
    }

LABEL_22:
    if (*(a1 + 525) == 1)
    {
      if (*(v15 + 28) + a3 + *(a1 + 56) > a4)
      {
        goto LABEL_43;
      }

      if (quasar::gLogLevel >= 5)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
        v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "VoiceEditingResultHandler: ", 27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "FILTERING: REJECT4", 18);
        goto LABEL_39;
      }
    }

    else
    {
      if (v21 > a4)
      {
        goto LABEL_43;
      }

      if (quasar::gLogLevel >= 5)
      {
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        v51 = 0u;
        v52 = 0u;
        v49 = 0u;
        v50 = 0u;
        v47 = 0u;
        v48 = 0u;
        v46 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
        v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "VoiceEditingResultHandler: ", 27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "FILTERING: REJECT5", 18);
        goto LABEL_39;
      }
    }

LABEL_40:
    ++v11;
    v7 = *a2;
    v6 = a2[1];
    if (0xD37A6F4DE9BD37A7 * ((v6 - *a2) >> 3) <= v11)
    {
      return;
    }
  }

  while (*(v24 + 168) <= 0)
  {
    v24 += 264;
    if (v24 == v22)
    {
      v25 = v23;
      while (*(v25 + 173) != 1)
      {
        v25 += 264;
        if (v25 == v22)
        {
          goto LABEL_22;
        }
      }

      break;
    }
  }

  if (*(v23 + 168) >= *(a1 + 52))
  {
    v28 = *(a1 + 48);
  }

  else
  {
    v28 = 0;
  }

  if (quasar::gLogLevel >= 5)
  {
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v46 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "VoiceEditingResultHandler: ", 27);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "(now=", 5);
    v32 = MEMORY[0x1B8C84C00](v31, *(a1 + 8));
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ") LEO relevantNow=", 18);
    v34 = MEMORY[0x1B8C84C00](v33, a4);
    v35 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v34, " utteranceStartMs=", 18);
    v36 = MEMORY[0x1B8C84C00](v35, a3);
    v37 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v36, " token=", 7);
    started = quasar::result_handler::topChoiceSilStartMs(v14);
    v39 = MEMORY[0x1B8C84C10](v37, started);
    v40 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v39, " constant=", 10);
    v41 = MEMORY[0x1B8C84C00](v40, (*(a1 + 44) + v28));
    v42 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v41, " sum=", 5);
    v43 = quasar::result_handler::topChoiceSilStartMs(v14);
    MEMORY[0x1B8C84C10](v42, (v28 + a3 + v43 + *(a1 + 44)));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v46);
  }

  if (v28 + a3 + quasar::result_handler::topChoiceSilStartMs(v14) + *(a1 + 44) <= a4)
  {
    if (quasar::gLogLevel >= 5)
    {
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      v47 = 0u;
      v48 = 0u;
      v46 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v46);
      v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v46, "VoiceEditingResultHandler: ", 27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "FILTERING: REJECT3", 18);
      goto LABEL_39;
    }

    goto LABEL_40;
  }

  v7 = *a2;
  v6 = a2[1];
LABEL_43:
  std::vector<quasar::result_handler::CommandData>::__insert_with_size[abi:ne200100]<std::__wrap_iter<quasar::result_handler::CommandData const*>,std::__wrap_iter<quasar::result_handler::CommandData const*>>(a5, a5[1], (v7 + 184 * v11), v6, 0xD37A6F4DE9BD37A7 * ((v6 - (v7 + 184 * v11)) >> 3));
}

void quasar::result_handler::VoiceEditingResultHandler::updateSuppressionState(uint64_t a1, uint64_t *a2, int a3)
{
  v4 = *(a1 + 320);
  v5 = *(a1 + 324);
  if (a3)
  {
    v6 = 0;
    v7 = 0;
    *(a1 + 320) = 0;
    *(a1 + 324) = 0;
  }

  else
  {
    v6 = *(a1 + 320);
    v7 = *(a1 + 324);
  }

  v9 = *a2;
  v8 = a2[1];
  if (*a2 != v8)
  {
    v10 = *a2;
    while (2)
    {
      for (i = *(v10 + 152); i != *(v10 + 160); i += 264)
      {
        if (*(i + 168) > 0)
        {
LABEL_22:
          *(a1 + 320) = 1;
          v19 = *(a1 + 32);
          if (v19 <= v7)
          {
            v19 = v7;
          }

          *(a1 + 324) = v19;
          v20 = *(v9 + 151);
          if (v20 < 0)
          {
            v21 = *(v9 + 128);
            v20 = *(v9 + 136);
          }

          else
          {
            v21 = (v9 + 128);
          }

          quasar::utf8::convertToLowerCaseOrThrow(v21, v20, &v50);
          size = HIBYTE(v50.__r_.__value_.__r.__words[2]);
          if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v50.__r_.__value_.__l.__size_;
          }

          if (size)
          {
            if (*(a1 + 296) == 1)
            {
              if ((v50.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v23 = &v50;
              }

              else
              {
                v23 = v50.__r_.__value_.__r.__words[0];
              }

              v36 = 0uLL;
              LOBYTE(v37) = 0;
              *(&v37 + 1) = 0;
              *&v38 = 0;
              BYTE8(v38) = 0;
              LOBYTE(v39) = 0;
              *(&v39 + 1) = 0;
              *__p = 0u;
              memset(v35, 0, 25);
              v24 = std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v23, v23 + size, __p, a1 + 232, 0);
              if (__p[0])
              {
                __p[1] = __p[0];
                operator delete(__p[0]);
              }

              if (v24)
              {
                goto LABEL_40;
              }
            }

            if (!quasar::result_handler::hasInterpretationWithEmptyOrShortEnoughArguments(v9, a1 + 16, (a1 + 208)) || (v26 = *(a1 + 176)) != 0 && (quasar::result_handler::hasInterpretationWithMaybeMatchingTarget(v9, v26, (a1 + 16), v25) & 1) == 0)
            {
LABEL_40:
              *(a1 + 324) = 0;
            }
          }

          if (SHIBYTE(v50.__r_.__value_.__r.__words[2]) < 0)
          {
            operator delete(v50.__r_.__value_.__l.__data_);
          }

          v6 = *(a1 + 320);
          goto LABEL_44;
        }
      }

      v10 += 184;
      if (v10 != v8)
      {
        continue;
      }

      break;
    }

    v12 = *a2;
    do
    {
      for (j = *(v12 + 152); j != *(v12 + 160); j += 264)
      {
        if (*(j + 173))
        {
          goto LABEL_22;
        }
      }

      v12 += 184;
    }

    while (v12 != v8);
    if (*(a1 + 524) == 1)
    {
      if (v9 == v8)
      {
        goto LABEL_44;
      }

      if (quasar::gLogLevel >= 5)
      {
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
        memset(v35, 0, sizeof(v35));
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
        v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, "(now=", 5);
        v16 = MEMORY[0x1B8C84C00](v15, *(a1 + 8));
        v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, ") favorCommandSuppressionState=", 31);
        MEMORY[0x1B8C84BD0](v17, *(a1 + 524));
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
        v7 = *(a1 + 324);
      }

      v6 = 1;
      *(a1 + 320) = 1;
      v18 = *(a1 + 68);
    }

    else
    {
      if (v9 == v8)
      {
        goto LABEL_44;
      }

      v18 = *(a1 + 64);
    }

    if (v18 > v7)
    {
      v7 = v18;
    }

    *(a1 + 324) = v7;
  }

LABEL_44:
  if (v4 != v6)
  {
    if (quasar::gLogLevel < 5)
    {
      return;
    }

    goto LABEL_52;
  }

  if (*(a1 + 324) != (v5 != 0) && quasar::gLogLevel > 4)
  {
LABEL_52:
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
    memset(v35, 0, sizeof(v35));
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v28 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
    v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, "(now=", 5);
    v30 = MEMORY[0x1B8C84C00](v29, *(a1 + 8));
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, ") isSuppressing=", 16);
    v32 = MEMORY[0x1B8C84BD0](v31, *(a1 + 320));
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " partialDelay=", 14);
    MEMORY[0x1B8C84C00](v33, *(a1 + 324));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }
}

void quasar::result_handler::VoiceEditingResultHandler::handleCommandCandidate(uint64_t a1, unsigned int a2, void ****a3)
{
  v73 = *MEMORY[0x1E69E9840];
  v69 = a2;
  v71[0] = &unk_1F2D2F380;
  v71[1] = a1;
  v71[3] = v71;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v72, v71);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v71);
  *(a1 + 524) = (*(**(a1 + 192) + 32))(*(a1 + 192));
  *(a1 + 525) = (*(**(a1 + 192) + 24))(*(a1 + 192));
  if (*(a1 + 304))
  {
    (*(*a1 + 72))(a1, &v69);
    v5 = *a3;
    quasar::result_handler::clean(*a3);
    quasar::result_handler::clean(v5 + 3);
    quasar::result_handler::clean(v5 + 6);
    if (quasar::gLogLevel >= 5)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      *v60 = 0u;
      v57 = 0u;
      *v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      *v52 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
      v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "VoiceEditingResultHandler: ", 27);
      v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(now=", 5);
      v8 = MEMORY[0x1B8C84C00](v7, v69);
      v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") recv commandCandidate: ", 25);
      quasar::getTopChoice((*a3 + 6), 1, v35);
      if ((v36 & 0x80u) == 0)
      {
        v10 = v35;
      }

      else
      {
        v10 = v35[0];
      }

      if ((v36 & 0x80u) == 0)
      {
        v11 = v36;
      }

      else
      {
        v11 = v35[1];
      }

      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
      v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ::::: ", 7);
      quasar::topChoiceWithTimes(*a3 + 6, &__p);
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

      v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, p_p, size);
      v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utteranceStartMs=", 18);
      MEMORY[0x1B8C84C00](v17, *(*a3 + 19));
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      if (v36 < 0)
      {
        operator delete(v35[0]);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(v52);
    }

    std::string::basic_string[abi:ne200100]<0>(v52, "commandCandidate");
    quasar::result_handler::VoiceEditingResultHandler::logSnippet(a1, v52, *a3);
    if (SBYTE7(v53) < 0)
    {
      operator delete(v52[0]);
    }

    if (!*(a1 + 176) && quasar::gLogLevel >= 5)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      *v60 = 0u;
      v57 = 0u;
      *v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      *v52 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "VoiceEditingResultHandler: ", 27);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "Parser is unavailable", 21);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(v52);
    }

    (*(**(a1 + 192) + 16))(&__p);
    if (*(a1 + 176))
    {
      quasar::result_handler::findPartialCommands(&__p, v50, *a3 + 6, *a3, *(a1 + 525), (a1 + 16), (a1 + 336), v48, (a1 + 640));
      quasar::result_handler::VoiceEditingResultHandler::filterPartialCommandsForThoughtPause(v48, v52);
      v19 = *a3;
      std::vector<quasar::result_handler::CommandData>::__vdeallocate(*a3 + 20);
      *(v19 + 160) = *v52;
      *(v19 + 176) = v53;
      v52[1] = 0;
      *&v53 = 0;
      v52[0] = 0;
      v35[0] = v52;
      std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](v35);
      v35[0] = v48;
      std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](v35);
    }

    (*a3)[58] = mach_continuous_time();
    v20 = mach_absolute_time();
    v21 = *a3;
    (*a3)[60] = v20;
    LOBYTE(v35[0]) = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    if (*(a1 + 176))
    {
      v22 = (*(**(a1 + 192) + 48))(*(a1 + 192));
      quasar::result_handler::findMaybeCompleteCommand(&__p, v50, (v21 + 48), v21, (a1 + 16), (a1 + 640), v52, v22);
      std::__optional_storage_base<quasar::result_handler::CommandData,false>::__assign_from[abi:ne200100]<std::__optional_move_assign_base<quasar::result_handler::CommandData,false>>(v35, v52);
      v46 = v64;
      v47 = BYTE4(v64);
      if (BYTE8(v63) == 1)
      {
        v70 = &v61 + 1;
        std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&v70);
        if (SBYTE7(v61) < 0)
        {
          operator delete(v60[0]);
        }

        if (SBYTE7(v59) < 0)
        {
          operator delete(v58[0]);
        }

        v70 = &v56 + 1;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v70);
        v70 = &v55;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v70);
        v70 = &v53 + 1;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v70);
        v70 = v52;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v70);
      }

      v21 = *a3;
    }

    std::__optional_storage_base<quasar::result_handler::CommandData,false>::__assign_from[abi:ne200100]<std::__optional_copy_assign_base<quasar::result_handler::CommandData,false> const&>((v21 + 184), v35);
    v23.i32[0] = v46;
    v24.i32[0] = *(a1 + 632);
    v25 = vorr_s8(*&vmovl_u8(v24), *&vmovl_u8(v23));
    *(a1 + 632) = vuzp1_s8(v25, v25).u32[0];
    *(a1 + 636) |= v47;
    (*a3)[59] = mach_continuous_time();
    (*a3)[61] = mach_absolute_time();
    if (quasar::gLogLevel >= 5)
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      *v60 = 0u;
      v57 = 0u;
      *v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      *v52 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
      v26 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "VoiceEditingResultHandler: ", 27);
      v27 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "(now=", 5);
      v28 = MEMORY[0x1B8C84C00](v27, v69);
      v29 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v28, ") handleCommandCandidate: maybeCompleteCommand ", 47);
      if (*(*a3 + 368) == 1)
      {
        quasar::result_handler::operator<<(v29, (*a3 + 23));
      }

      else
      {
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v29, "null", 4);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(v52);
      if (quasar::gLogLevel >= 5)
      {
        v67 = 0u;
        v68 = 0u;
        v65 = 0u;
        v66 = 0u;
        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        *v60 = 0u;
        v57 = 0u;
        *v58 = 0u;
        v55 = 0u;
        v56 = 0u;
        v53 = 0u;
        v54 = 0u;
        *v52 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(v52);
        v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v52, "VoiceEditingResultHandler: ", 27);
        v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "(now=", 5);
        v32 = MEMORY[0x1B8C84C00](v31, v69);
        v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, ") handleCommandCandidate: debugInfo", 35);
        quasar::result_handler::operator<<(v33, *a3 + 456);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(v52);
      }
    }

    v34 = *a3;
    *a3 = 0;
    std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100]((a1 + 312), v34);
    *(a1 + 472) = v69;
    if (v45 == 1)
    {
      v52[0] = &v44;
      std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](v52);
      if (v43 < 0)
      {
        operator delete(v42);
      }

      if (v41 < 0)
      {
        operator delete(v40);
      }

      v52[0] = &v39;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v52);
      v52[0] = &v38;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v52);
      v52[0] = &v37;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v52);
      v52[0] = v35;
      std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](v52);
    }

    if (v51 < 0)
    {
      operator delete(v50[0]);
    }

    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(__p.__r_.__value_.__l.__data_);
    }
  }

  quasar::ScopeGuard::~ScopeGuard(v72);
}

void sub_1B57715BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, void *a42, uint64_t a43, int a44, __int16 a45, char a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, void *a51, uint64_t a52, int a53, __int16 a54, char a55, char a56)
{
  std::optional<quasar::result_handler::CommandData>::~optional(&__p);
  std::pair<std::string,std::string>::~pair(&a42);
  quasar::ScopeGuard::~ScopeGuard((v56 - 104));
  _Unwind_Resume(a1);
}

void quasar::result_handler::VoiceEditingResultHandler::filterPartialCommandsForThoughtPause(uint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v4 = *a1;
  v3 = a1[1];
  if (v3 != *a1)
  {
    v6 = 0;
    v7 = 0;
    do
    {
      v8 = (v4 + 184 * v7);
      v9 = *(v8 + 19);
      v10 = *(v8 + 20);
      v11 = v9;
      if (v9 != v10)
      {
        while (*(v11 + 168) <= 0)
        {
          v11 += 264;
          if (v11 == v10)
          {
            while (*(v9 + 173) != 1)
            {
              v9 += 264;
              if (v9 == v10)
              {
                goto LABEL_13;
              }
            }

            break;
          }
        }

        if (v6 >= a2[2])
        {
          v6 = std::vector<quasar::result_handler::CommandData>::__emplace_back_slow_path<quasar::result_handler::CommandData const&>(a2, v8);
        }

        else
        {
          quasar::result_handler::CommandData::CommandData(v6, v8);
          v6 = (v6 + 184);
        }

        a2[1] = v6;
        v4 = *a1;
        v3 = a1[1];
      }

LABEL_13:
      ++v7;
    }

    while (0xD37A6F4DE9BD37A7 * ((v3 - v4) >> 3) > v7);
  }
}

void sub_1B57717BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void **a10)
{
  *(v10 + 8) = v11;
  a10 = v10;
  std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](&a10);
  _Unwind_Resume(a1);
}

void quasar::result_handler::findMaybeCompleteCommand(std::string *a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, _DWORD *a7@<X6>, quasar::PartialHistory *a8@<X7>, uint64_t a9@<X8>, unsigned __int8 a10)
{
  v161 = *MEMORY[0x1E69E9840];
  v11 = *a4;
  if (*a4 == a4[1] || *v11 == v11[1])
  {
    *a9 = 0;
    *(a9 + 184) = 0;
    *(a9 + 196) = 0;
    *(a9 + 192) = 0;
    return;
  }

  v143 = 0uLL;
  v144 = 0;
  v141 = 1;
  kaldi::Timer::Reset(v140, a2);
  v142 = 0;
  Seconds = kaldi::Timer::GetSeconds(5, v16);
  v106 = a9;
  v19 = v140[0];
  v20 = 0x6DB6DB6DB6DB6DB7 * ((v11[1] - *v11) >> 5);
  if ((v20 & 0x80000000) == 0)
  {
    v110 = 0;
    v21 = v20 & 0x7FFFFFFF;
    if (v20 >= 0x1D)
    {
      LODWORD(v20) = 29;
    }

    v108 = v20;
    do
    {
      v111 = v21;
      if (!v21 || 0x6DB6DB6DB6DB6DB7 * ((v11[1] - *v11) >> 5) == v21 || (v22 = quasar::Token::trailingSilenceMilliseconds((*v11 + 224 * v21 - 224)), v21 = v111, v22 >= *a7))
      {
        quasar::result_handler::initSegmentation(a2, a3, a4, a5, v21, a8, &v129);
        if (v139)
        {
          v23 = v137;
          if ((v137 & 0x80u) != 0)
          {
            v23 = v136;
          }

          if (v23)
          {
            v121 = 0;
            v119 = 0u;
            *v120 = 0u;
            *v117 = 0u;
            *v118 = 0u;
            memset(v116, 0, sizeof(v116));
            v122 = 0x101010101010101;
            v123 = 257;
            v124 = 0;
            v125 = 1;
            v126 = 10;
            v127 = 0;
            v128 = 1;
            quasar::utf::toU32String();
          }

          quasar::utf::toU32String();
        }

        v21 = v111;
        if (v139 == 1)
        {
          __p[0] = &v138;
          std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](__p);
          if (v137 < 0)
          {
            operator delete(v135);
          }

          if (v134 < 0)
          {
            operator delete(v133);
          }

          __p[0] = &v132;
          std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);
          __p[0] = &v131;
          std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);
          __p[0] = &v130;
          std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);
          __p[0] = &v129;
          std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](__p);
          v21 = v111;
        }
      }

      --v21;
    }

    while (v110++ != v108);
  }

  v26 = kaldi::Timer::GetSeconds(5, v17);
  v27 = a9;
  if (quasar::gLogLevel >= 5)
  {
    v28 = v26;
    v29 = v140[0];
    v160 = 0u;
    v159 = 0u;
    v158 = 0u;
    v157 = 0u;
    v156 = 0u;
    v155 = 0u;
    memset(v154, 0, sizeof(v154));
    *v153 = 0u;
    v152 = 0u;
    *v151 = 0u;
    memset(v150, 0, sizeof(v150));
    v149 = 0u;
    memset(v148, 0, sizeof(v148));
    *__p = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
    v30 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
    v31 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v30, "findMaybeCompleteCommand: parserRunIters=", 41);
    v32 = MEMORY[0x1B8C84C00](v31, 0);
    v33 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v32, " parserLoopTime=", 16);
    MEMORY[0x1B8C84BE0](v33, v28 - v29 - (Seconds - v19));
    quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
  }

  v34 = *(&v143 + 1);
  v35 = v143;
  if (v143 != *(&v143 + 1))
  {
    for (i = v143 + 184; i != v34; i += 184)
    {
      v37 = quasar::result_handler::maybeCompleteCommandSegmentationScore(v35);
      v25 = quasar::result_handler::maybeCompleteCommandSegmentationScore(i);
      if (v37 < v25 || v25 >= v37 && *(&v37 + 1) < *(&v25 + 1))
      {
        v35 = i;
      }
    }

    v38 = *(v35 + 152);
    if (v38 != *(v35 + 160) && (*(v38 + 172) & 1) != 0)
    {
      isAdjacentEditsEnabled = quasar::corrective_reranking::isAdjacentEditsEnabled(v25);
      if ((isAdjacentEditsEnabled & 1) == 0)
      {
        std::vector<quasar::result_handler::CommandInterpretation>::resize((v35 + 152), 1uLL);
      }

      v40 = *(v35 + 152);
      if (v40 == *(v35 + 160))
      {
        if (quasar::gLogLevel >= 5)
        {
          v160 = 0u;
          v159 = 0u;
          v158 = 0u;
          v157 = 0u;
          v156 = 0u;
          v155 = 0u;
          memset(v154, 0, sizeof(v154));
          *v153 = 0u;
          v152 = 0u;
          *v151 = 0u;
          memset(v150, 0, sizeof(v150));
          v149 = 0u;
          memset(v148, 0, sizeof(v148));
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v44 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v44, "dropUnwantedAutoPunc: no interpretation", 39);
          goto LABEL_53;
        }

LABEL_54:
        quasar::result_handler::CommandData::CommandData(__p, v35);
        v46 = *(v35 + 176);
        BYTE12(v155) = *(v35 + 180);
        DWORD2(v155) = v46;
        *v27 = *__p;
        v47 = *(&v148[1] + 1);
        *(v27 + 16) = *&v148[0];
        __p[0] = 0;
        __p[1] = 0;
        *(v27 + 24) = *(v148 + 8);
        *(v27 + 40) = v47;
        memset(v148, 0, sizeof(v148));
        *(v27 + 48) = v149;
        v48 = *(&v150[1] + 1);
        *(v27 + 64) = *&v150[0];
        v149 = 0uLL;
        *(v27 + 88) = v48;
        v49 = *(&v152 + 1);
        *(v27 + 112) = v152;
        *(v27 + 120) = v49;
        v50 = *(&v154[1] + 1);
        *(v27 + 144) = *&v154[0];
        *(v27 + 72) = *(v150 + 8);
        memset(v150, 0, sizeof(v150));
        *(v27 + 96) = *v151;
        v151[1] = 0;
        v151[0] = 0;
        *(v27 + 128) = *v153;
        *&v152 = 0;
        v153[0] = 0;
        v153[1] = 0;
        *&v154[0] = 0;
        *(v27 + 152) = *(v154 + 8);
        *(v27 + 168) = v50;
        memset(v154 + 8, 0, 24);
        LODWORD(v50) = v155;
        *(v27 + 180) = BYTE4(v155);
        *(v27 + 176) = v50;
        *(v27 + 184) = 1;
        LODWORD(v50) = DWORD2(v155);
        *(v27 + 196) = BYTE12(v155);
        *(v27 + 192) = v50;
        v129.__r_.__value_.__r.__words[0] = v154 + 8;
        std::vector<quasar::result_handler::CommandInterpretation>::__destroy_vector::operator()[abi:ne200100](&v129);
        if (SBYTE7(v154[0]) < 0)
        {
          operator delete(v153[0]);
        }

        if (SBYTE7(v152) < 0)
        {
          operator delete(v151[0]);
        }

        v129.__r_.__value_.__r.__words[0] = v150 + 8;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v129);
        v129.__r_.__value_.__r.__words[0] = &v149;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v129);
        v129.__r_.__value_.__r.__words[0] = v148 + 8;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v129);
        v129.__r_.__value_.__r.__words[0] = __p;
        std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v129);
        goto LABEL_48;
      }

      v41 = *(v40 + 23);
      if (v41 < 0)
      {
        v41 = *(v40 + 8);
      }

      if (!v41)
      {
        if (quasar::gLogLevel >= 5)
        {
          v160 = 0u;
          v159 = 0u;
          v158 = 0u;
          v157 = 0u;
          v156 = 0u;
          v155 = 0u;
          memset(v154, 0, sizeof(v154));
          *v153 = 0u;
          v152 = 0u;
          *v151 = 0u;
          memset(v150, 0, sizeof(v150));
          v149 = 0u;
          memset(v148, 0, sizeof(v148));
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v45 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v45, "dropUnwantedAutoPunc: no command", 32);
          goto LABEL_53;
        }

        goto LABEL_54;
      }

      v42 = quasar::corrective_reranking::Parse::getCommandsWithNoTransformerVisibleChange(isAdjacentEditsEnabled);
      if (std::__hash_table<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::variant<kaldi::quasar::ShortlistDataInManyFiles::NotLoadedShortListDataOnDisk,std::shared_ptr<kaldi::quasar::ShortlistDataOnDisk>>>>>::find<std::string>(v42, v40))
      {
        if (quasar::gLogLevel >= 5)
        {
          v160 = 0u;
          v159 = 0u;
          v158 = 0u;
          v157 = 0u;
          v156 = 0u;
          v155 = 0u;
          memset(v154, 0, sizeof(v154));
          *v153 = 0u;
          v152 = 0u;
          *v151 = 0u;
          memset(v150, 0, sizeof(v150));
          v149 = 0u;
          memset(v148, 0, sizeof(v148));
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v43 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v43, "dropUnwantedAutoPunc: command without visible change", 52);
LABEL_53:
          quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
          goto LABEL_54;
        }

        goto LABEL_54;
      }

      v51 = *(v40 + 47);
      if (v51 < 0)
      {
        v51 = *(v40 + 32);
      }

      if (!v51)
      {
        if (quasar::gLogLevel < 5)
        {
          goto LABEL_54;
        }

        v160 = 0u;
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        memset(v154, 0, sizeof(v154));
        *v153 = 0u;
        v152 = 0u;
        *v151 = 0u;
        memset(v150, 0, sizeof(v150));
        v149 = 0u;
        memset(v148, 0, sizeof(v148));
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v59 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v59, "dropUnwantedAutoPunc: no target", 31);
        goto LABEL_53;
      }

      v52 = *v35;
      if (*v35 == *(v35 + 8) || (size = v52->__r_.__value_.__l.__size_, v52->__r_.__value_.__r.__words[0] == size))
      {
        if (quasar::gLogLevel < 5)
        {
          goto LABEL_54;
        }

        v160 = 0u;
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        memset(v154, 0, sizeof(v154));
        *v153 = 0u;
        v152 = 0u;
        *v151 = 0u;
        memset(v150, 0, sizeof(v150));
        v149 = 0u;
        memset(v148, 0, sizeof(v148));
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v58 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v58, "dropUnwantedAutoPunc: input is empty", 36);
        goto LABEL_53;
      }

      if ((quasar::Token::isAutoPunctuation((size - 224)) & 1) == 0)
      {
        if (quasar::gLogLevel < 5)
        {
          goto LABEL_54;
        }

        v160 = 0u;
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        memset(v154, 0, sizeof(v154));
        *v153 = 0u;
        v152 = 0u;
        *v151 = 0u;
        memset(v150, 0, sizeof(v150));
        v149 = 0u;
        memset(v148, 0, sizeof(v148));
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v60 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v60, "dropUnwantedAutoPunc: input does not end with AutoPunc", 54);
        goto LABEL_53;
      }

      if (!std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>((v52->__r_.__value_.__l.__size_ - 224), "."))
      {
        if (quasar::gLogLevel < 5)
        {
          goto LABEL_54;
        }

        v160 = 0u;
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        memset(v154, 0, sizeof(v154));
        *v153 = 0u;
        v152 = 0u;
        *v151 = 0u;
        memset(v150, 0, sizeof(v150));
        v149 = 0u;
        memset(v148, 0, sizeof(v148));
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v61 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v61, "dropUnwantedAutoPunc: input does not end with AutoPunc period", 61);
        goto LABEL_53;
      }

      v54 = *(v35 + 120);
      if ((v54 & 0x80000000) != 0)
      {
        goto LABEL_71;
      }

      v55 = *(v35 + 124);
      if (v55 < v54)
      {
        goto LABEL_71;
      }

      v56 = *(v35 + 104);
      if (*(v35 + 119) >= 0)
      {
        v56 = *(v35 + 119);
      }

      if (v56 < v55)
      {
LABEL_71:
        if (quasar::gLogLevel < 5)
        {
          goto LABEL_54;
        }

        v160 = 0u;
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        memset(v154, 0, sizeof(v154));
        *v153 = 0u;
        v152 = 0u;
        *v151 = 0u;
        memset(v150, 0, sizeof(v150));
        v149 = 0u;
        memset(v148, 0, sizeof(v148));
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v57 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v57, "dropUnwantedAutoPunc: precedingUtterance range is invalid", 57);
        goto LABEL_53;
      }

      std::string::basic_string(__p, (v35 + 96), v54, v55 - v54, &v129);
      quasar::tokens2Str(v52, &v129);
      v62 = std::operator==[abi:ne200100]<char,std::char_traits<char>,std::allocator<char>>(__p, &v129);
      if (SHIBYTE(v129.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v129.__r_.__value_.__l.__data_);
      }

      if (SBYTE7(v148[0]) < 0)
      {
        operator delete(__p[0]);
      }

      if (!v62)
      {
        if (quasar::gLogLevel < 5)
        {
          goto LABEL_54;
        }

        v160 = 0u;
        v159 = 0u;
        v158 = 0u;
        v157 = 0u;
        v156 = 0u;
        v155 = 0u;
        memset(v154, 0, sizeof(v154));
        *v153 = 0u;
        v152 = 0u;
        *v151 = 0u;
        memset(v150, 0, sizeof(v150));
        v149 = 0u;
        memset(v148, 0, sizeof(v148));
        *__p = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
        v68 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v68, "dropUnwantedAutoPunc: precedingUtterance and displayedText mismatch", 67);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
LABEL_182:
        v27 = v106;
        goto LABEL_54;
      }

      memset(&v129, 0, sizeof(v129));
      std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(&v129, v52->__r_.__value_.__l.__data_, v52->__r_.__value_.__l.__size_, 0x6DB6DB6DB6DB6DB7 * ((v52->__r_.__value_.__l.__size_ - v52->__r_.__value_.__r.__words[0]) >> 5));
      v63 = v129.__r_.__value_.__l.__size_;
      if ((0x6DB6DB6DB6DB6DB7 * ((v129.__r_.__value_.__l.__size_ - v129.__r_.__value_.__r.__words[0]) >> 5)) < 2)
      {
        v69 = *(v129.__r_.__value_.__l.__size_ - 201);
        if (v69 < 0)
        {
          v69 = *(v129.__r_.__value_.__l.__size_ - 216);
        }

        v65 = v69 + *(v129.__r_.__value_.__l.__size_ - 179) + *(v129.__r_.__value_.__l.__size_ - 180);
        v67 = *(v35 + 124) - v65;
      }

      else
      {
        v64 = *(v129.__r_.__value_.__l.__size_ - 201);
        if (v64 < 0)
        {
          v64 = *(v129.__r_.__value_.__l.__size_ - 216);
        }

        v65 = v64 + *(v129.__r_.__value_.__l.__size_ - 179) + *(v129.__r_.__value_.__l.__size_ - 404);
        v66 = *(v129.__r_.__value_.__l.__size_ - 180);
        v67 = *(v35 + 124) - v66 - v65;
        *(v129.__r_.__value_.__l.__size_ - 404) = v66;
      }

      quasar::Token::~Token((v63 - 224));
      v129.__r_.__value_.__l.__size_ = v70;
      if ((v67 | v65) < 0)
      {
        goto LABEL_99;
      }

      v71 = *(v35 + 119);
      if ((v71 & 0x80u) != 0)
      {
        v71 = *(v35 + 104);
      }

      v112 = v67 + v65;
      if (v71 < (v67 + v65))
      {
LABEL_99:
        if (quasar::gLogLevel >= 5)
        {
          v160 = 0u;
          v159 = 0u;
          v158 = 0u;
          v157 = 0u;
          v156 = 0u;
          v155 = 0u;
          memset(v154, 0, sizeof(v154));
          *v153 = 0u;
          v152 = 0u;
          *v151 = 0u;
          memset(v150, 0, sizeof(v150));
          v149 = 0u;
          memset(v148, 0, sizeof(v148));
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v72 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v72, "dropUnwantedAutoPunc: rangeOfAutoPunc is invalid", 48);
          quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
        }

        goto LABEL_181;
      }

      v114 = v65;
      std::string::basic_string[abi:ne200100]<0>(__p, "en_US");
      quasar::getSentenceBoundarySeparatedString((v35 + 96), v116);
      if (SBYTE7(v148[0]) < 0)
      {
        operator delete(__p[0]);
      }

      v73 = *&v116[0];
      if (*&v116[0] == *(&v116[0] + 1))
      {
        if (quasar::gLogLevel >= 5)
        {
          v160 = 0u;
          v159 = 0u;
          v158 = 0u;
          v157 = 0u;
          v156 = 0u;
          v155 = 0u;
          memset(v154, 0, sizeof(v154));
          *v153 = 0u;
          v152 = 0u;
          *v151 = 0u;
          memset(v150, 0, sizeof(v150));
          v149 = 0u;
          memset(v148, 0, sizeof(v148));
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v78 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v78, "dropUnwantedAutoPunc: unable to obtain sentences", 48);
LABEL_172:
          quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
        }
      }

      else
      {
        v74 = 0;
        v75 = 0;
        while (1)
        {
          v76 = v75;
          v77 = *(v73 + 23);
          if (v77 < 0)
          {
            v77 = *(v73 + 8);
          }

          if (v75 > *(v35 + 124))
          {
            break;
          }

          v75 += v77;
          v73 += 24;
          v74 = v76;
          if (v73 == *(&v116[0] + 1))
          {
            goto LABEL_113;
          }
        }

        v76 = v74;
LABEL_113:
        if (v75)
        {
          std::string::basic_string[abi:ne200100]<0>(__p, "en_US");
          quasar::getRangesForSearchStringWithWordBoundariesValidation(v40 + 24, v35 + 96, __p, v115);
          if (SBYTE7(v148[0]) < 0)
          {
            operator delete(__p[0]);
          }

          v79 = *(v35 + 152);
          v80 = *(v35 + 160);
          if (v79 != v80)
          {
            v81 = v79 + 72;
            do
            {
              if (*(v81 + 8) == 1)
              {
                std::vector<std::pair<unsigned long,unsigned long>>::emplace_back<int const&,int const&>(v115, v81, (v81 + 4));
              }

              if (*(v81 + 20) == 1)
              {
                std::vector<std::pair<unsigned long,unsigned long>>::emplace_back<int const&,int const&>(v115, (v81 + 12), (v81 + 16));
              }

              v82 = v81 + 192;
              v81 += 264;
            }

            while (v82 != v80);
          }

          v83 = v115[0];
          v113 = v115[1];
          if (v115[0] == v115[1])
          {
LABEL_127:
            if (quasar::gLogLevel >= 5)
            {
              v160 = 0u;
              v159 = 0u;
              v158 = 0u;
              v157 = 0u;
              v156 = 0u;
              v155 = 0u;
              memset(v154, 0, sizeof(v154));
              *v153 = 0u;
              v152 = 0u;
              *v151 = 0u;
              memset(v150, 0, sizeof(v150));
              v149 = 0u;
              memset(v148, 0, sizeof(v148));
              *__p = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
              v86 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
              v87 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v86, "dropUnwantedAutoPunc: dropping AutoPunc from precedingUtterance: ", 65);
              quasar::getTopChoice(v35, 1, &v145);
              if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v88 = &v145;
              }

              else
              {
                v88 = v145.__r_.__value_.__r.__words[0];
              }

              if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
              {
                v89 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
              }

              else
              {
                v89 = v145.__r_.__value_.__l.__size_;
              }

              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v87, v88, v89);
              if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
              {
                operator delete(v145.__r_.__value_.__l.__data_);
              }

              quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
            }

            if (v52 != &v129)
            {
              std::vector<quasar::Token>::__assign_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v52, v129.__r_.__value_.__l.__data_, v129.__r_.__value_.__l.__size_, 0x6DB6DB6DB6DB6DB7 * ((v129.__r_.__value_.__l.__size_ - v129.__r_.__value_.__r.__words[0]) >> 5));
            }

            std::string::basic_string(__p, (v35 + 96), 0, v67, &v145);
            quasar::pySlice<std::string>(v35 + 96, v112, 0x7FFFFFFF, &v145);
            if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v90 = &v145;
            }

            else
            {
              v90 = v145.__r_.__value_.__r.__words[0];
            }

            if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
            {
              v91 = HIBYTE(v145.__r_.__value_.__r.__words[2]);
            }

            else
            {
              v91 = v145.__r_.__value_.__l.__size_;
            }

            v92 = std::string::append(__p, v90, v91);
            v93 = v92->__r_.__value_.__r.__words[0];
            v146.__r_.__value_.__r.__words[0] = v92->__r_.__value_.__l.__size_;
            *(v146.__r_.__value_.__r.__words + 7) = *(&v92->__r_.__value_.__r.__words[1] + 7);
            v94 = HIBYTE(v92->__r_.__value_.__r.__words[2]);
            v92->__r_.__value_.__l.__size_ = 0;
            v92->__r_.__value_.__r.__words[2] = 0;
            v92->__r_.__value_.__r.__words[0] = 0;
            if (*(v35 + 119) < 0)
            {
              operator delete(*(v35 + 96));
            }

            *(v35 + 96) = v93;
            *(v35 + 104) = v146.__r_.__value_.__r.__words[0];
            *(v35 + 111) = *(v146.__r_.__value_.__r.__words + 7);
            *(v35 + 119) = v94;
            if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
            {
              operator delete(v145.__r_.__value_.__l.__data_);
            }

            if (SBYTE7(v148[0]) < 0)
            {
              operator delete(__p[0]);
            }

            v95 = *(v35 + 124);
            v96 = v95 - v114;
            if (v67 > v95 - v114)
            {
              v96 = v67;
            }

            if (v67 < v95)
            {
              v95 = v96;
            }

            *(v35 + 124) = v95;
            v97 = *(v35 + 152);
            v98 = *(v35 + 160);
            while (v97 != v98)
            {
              if (*(v97 + 80) == 1)
              {
                v99 = *(v97 + 72);
                v100 = v99 - v114;
                if (v67 > v99 - v114)
                {
                  v100 = v67;
                }

                if (v67 < v99)
                {
                  v99 = v100;
                }

                *(v97 + 72) = v99;
              }

              if (*(v97 + 92) == 1)
              {
                v101 = *(v97 + 84);
                v102 = v101 - v114;
                if (v67 > v101 - v114)
                {
                  v102 = v67;
                }

                if (v67 < v101)
                {
                  v101 = v102;
                }

                *(v97 + 84) = v101;
              }

              v97 += 264;
            }
          }

          else
          {
            while (1)
            {
              __p[0] = v67;
              __p[1] = v114;
              quasar::intersectionRange(v83, __p);
              if (v84)
              {
                if (quasar::gLogLevel < 5)
                {
                  goto LABEL_178;
                }

                v160 = 0u;
                v159 = 0u;
                v158 = 0u;
                v157 = 0u;
                v156 = 0u;
                v155 = 0u;
                memset(v154, 0, sizeof(v154));
                *v153 = 0u;
                v152 = 0u;
                *v151 = 0u;
                memset(v150, 0, sizeof(v150));
                v149 = 0u;
                memset(v148, 0, sizeof(v148));
                *__p = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
                v104 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v104, "dropUnwantedAutoPunc: target might include AutoPunc", 51);
                goto LABEL_177;
              }

              __p[0] = v76;
              __p[1] = v75;
              quasar::intersectionRange(v83, __p);
              if (!v85)
              {
                break;
              }

              v83 += 2;
              if (v83 == v113)
              {
                goto LABEL_127;
              }
            }

            if (quasar::gLogLevel < 5)
            {
              goto LABEL_178;
            }

            v160 = 0u;
            v159 = 0u;
            v158 = 0u;
            v157 = 0u;
            v156 = 0u;
            v155 = 0u;
            memset(v154, 0, sizeof(v154));
            *v153 = 0u;
            v152 = 0u;
            *v151 = 0u;
            memset(v150, 0, sizeof(v150));
            v149 = 0u;
            memset(v148, 0, sizeof(v148));
            *__p = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
            v105 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v105, "dropUnwantedAutoPunc: target might include another sentence", 59);
LABEL_177:
            quasar::QuasarDebugMessage::~QuasarDebugMessage(__p);
          }

LABEL_178:
          if (v115[0])
          {
            v115[1] = v115[0];
            operator delete(v115[0]);
          }

          goto LABEL_180;
        }

        if (quasar::gLogLevel >= 5)
        {
          v160 = 0u;
          v159 = 0u;
          v158 = 0u;
          v157 = 0u;
          v156 = 0u;
          v155 = 0u;
          memset(v154, 0, sizeof(v154));
          *v153 = 0u;
          v152 = 0u;
          *v151 = 0u;
          memset(v150, 0, sizeof(v150));
          v149 = 0u;
          memset(v148, 0, sizeof(v148));
          *__p = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(__p);
          v103 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(__p, "VoiceEditingResultHandler: ", 27);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v103, "dropUnwantedAutoPunc: unable to find last sentence that ends with cursor or includes cursor", 91);
          goto LABEL_172;
        }
      }

LABEL_180:
      __p[0] = v116;
      std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](__p);
LABEL_181:
      __p[0] = &v129;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](__p);
      goto LABEL_182;
    }
  }

  *v106 = 0;
  *(v106 + 184) = 0;
  *(v106 + 196) = 0;
  *(v106 + 192) = 0;
LABEL_48:
  __p[0] = &v143;
  std::vector<quasar::result_handler::CommandData>::__destroy_vector::operator()[abi:ne200100](__p);
}

void sub_1B57745EC(void *a1, int a2)
{
  if (a2)
  {
    __clang_call_terminate(a1);
  }

  JUMPOUT(0x1B5774680);
}

void **quasar::result_handler::VoiceEditingResultHandler::handleFinalCandidate(void *a1, unsigned int a2, quasar::result_handler::Package **a3)
{
  v27 = a2;
  (*(*a1 + 72))(a1, &v27);
  if (quasar::gLogLevel >= 5)
  {
    memset(v26, 0, sizeof(v26));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v26);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v26, "VoiceEditingResultHandler: ", 27);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v5, "(now=", 5);
    v7 = MEMORY[0x1B8C84C00](v6, v27);
    v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, ") recv finalCandidate: ", 23);
    quasar::getTopChoice(*a3 + 48, 1, v24);
    if ((v25 & 0x80u) == 0)
    {
      v9 = v24;
    }

    else
    {
      v9 = v24[0];
    }

    if ((v25 & 0x80u) == 0)
    {
      v10 = v25;
    }

    else
    {
      v10 = v24[1];
    }

    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, v9, v10);
    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, " ::::: ", 7);
    quasar::topChoiceWithTimes(*a3 + 6, __p);
    if ((v23 & 0x80u) == 0)
    {
      v13 = __p;
    }

    else
    {
      v13 = __p[0];
    }

    if ((v23 & 0x80u) == 0)
    {
      v14 = v23;
    }

    else
    {
      v14 = __p[1];
    }

    v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, v13, v14);
    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, " utteranceStartMs=", 18);
    MEMORY[0x1B8C84C00](v16, *(*a3 + 19));
    if (v23 < 0)
    {
      operator delete(__p[0]);
    }

    if (v25 < 0)
    {
      operator delete(v24[0]);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(v26);
  }

  v17 = a1[21];
  v18 = v27;
  v19 = *a3;
  *a3 = 0;
  v21 = v19;
  (*(*v17 + 40))(v17, v18, &v21);
  result = v21;
  v21 = 0;
  if (result)
  {
    quasar::result_handler::Package::~Package(result);
    return MEMORY[0x1B8C85350]();
  }

  return result;
}

void sub_1B577489C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, char a10, void *a11, uint64_t a12, int a13, __int16 a14, char a15, char a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, std::locale a23)
{
  if (a22 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a23);
  _Unwind_Resume(a1);
}

void quasar::result_handler::VoiceEditingResultHandler::handleFinal(uint64_t a1, unsigned int a2, uint64_t **a3)
{
  v182 = *MEMORY[0x1E69E9840];
  v158 = a2;
  v180[0] = &unk_1F2D2F400;
  v180[1] = a1;
  v180[3] = v180;
  std::__function::__value_func<void ()(void)>::__value_func[abi:ne200100](v181, v180);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:ne200100](v180);
  (*(*a1 + 72))(a1, &v158);
  v5 = *a3;
  quasar::result_handler::clean(*a3);
  quasar::result_handler::clean(v5 + 3);
  quasar::result_handler::clean(v5 + 6);
  if (quasar::gLogLevel >= 5)
  {
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v159 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v159);
    v6 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "VoiceEditingResultHandler: ", 27);
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, "(now=", 5);
    v8 = MEMORY[0x1B8C84C00](v7, v158);
    v9 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v8, ") recv final: ", 14);
    quasar::getTopChoice((*a3 + 6), 1, &v152);
    if (v154 >= 0)
    {
      v10 = &v152;
    }

    else
    {
      v10 = v152;
    }

    if (v154 >= 0)
    {
      v11 = HIBYTE(v154);
    }

    else
    {
      v11 = v153;
    }

    v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, v10, v11);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, " ::::: ", 7);
    quasar::topChoiceWithTimes(*a3 + 6, &__p);
    if (v148 >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if (v148 >= 0)
    {
      v15 = HIBYTE(v148);
    }

    else
    {
      v15 = v147;
    }

    v16 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, p_p, v15);
    v17 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v16, " utteranceStartMs=", 18);
    MEMORY[0x1B8C84C00](v17, *(*a3 + 19));
    if (SHIBYTE(v148) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v154) < 0)
    {
      operator delete(v152);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v159);
  }

  v18 = *a3;
  v19 = *(a1 + 632);
  *(v18 + 460) = *(a1 + 636);
  *(v18 + 114) = v19;
  *(a1 + 636) = 0;
  *(a1 + 632) = 0;
  quasar::getTopChoice(*a3, 1, &v159);
  if (SBYTE7(v160) < 0)
  {
    v20 = *(&v159 + 1);
    operator delete(v159);
    if (!v20)
    {
      goto LABEL_177;
    }
  }

  else if (!BYTE7(v160))
  {
    goto LABEL_177;
  }

  v21 = **a3;
  quasar::strictAlignTokensToFirstSeenPartialResults((a1 + 576), v21, *(a1 + 628), &v159);
  v22 = *a3;
  v24 = *a3 + 11;
  v23 = *v24;
  if (*v24)
  {
    v22[12] = v23;
    operator delete(v23);
    *v24 = 0;
    v24[1] = 0;
    v24[2] = 0;
  }

  *(v22 + 11) = v159;
  v22[13] = v160;
  std::pair<std::vector<std::vector<quasar::Token>>,std::vector<int>>::pair[abi:ne200100](&v152, a1 + 528);
  v25 = v153;
  if (v153 >= v154)
  {
    v26 = std::vector<std::vector<quasar::Token>>::__emplace_back_slow_path<std::vector<quasar::Token> const&>(&v152, v21);
  }

  else
  {
    *v153 = 0;
    v25[1] = 0;
    v25[2] = 0;
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v25, *v21, *(v21 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v21 + 8) - *v21) >> 5));
    v26 = v25 + 3;
  }

  v153 = v26;
  v27 = v156;
  if (v156 >= v157)
  {
    v29 = __src;
    v30 = v156 - __src;
    v31 = (v156 - __src) >> 2;
    v32 = v31 + 1;
    if ((v31 + 1) >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v33 = v157 - __src;
    if ((v157 - __src) >> 1 > v32)
    {
      v32 = v33 >> 1;
    }

    v34 = v33 >= 0x7FFFFFFFFFFFFFFCLL;
    v35 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v34)
    {
      v35 = v32;
    }

    if (v35)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&__src, v35);
    }

    v36 = (4 * v31);
    v37 = &v36[-((v156 - __src) >> 2)];
    *v36 = v158;
    v28 = (v36 + 1);
    memcpy(v37, v29, v30);
    v38 = __src;
    __src = v37;
    v156 = v28;
    v157 = 0;
    if (v38)
    {
      operator delete(v38);
    }
  }

  else
  {
    *v156 = v158;
    v28 = v27 + 4;
  }

  v156 = v28;
  std::pair<std::vector<std::vector<quasar::Token>>,std::vector<int>>::pair[abi:ne200100](&__p, a1 + 576);
  v39 = v147;
  if (v147 >= v148)
  {
    v40 = std::vector<std::vector<quasar::Token>>::__emplace_back_slow_path<std::vector<quasar::Token> const&>(&__p, v21);
  }

  else
  {
    *v147 = 0;
    v39[1] = 0;
    v39[2] = 0;
    std::vector<quasar::Token>::__init_with_size[abi:ne200100]<quasar::Token*,quasar::Token*>(v39, *v21, *(v21 + 8), 0x6DB6DB6DB6DB6DB7 * ((*(v21 + 8) - *v21) >> 5));
    v40 = v39 + 3;
  }

  v147 = v40;
  v41 = v150;
  if (v150 >= v151)
  {
    v43 = v149;
    v44 = v150 - v149;
    v45 = (v150 - v149) >> 2;
    v46 = v45 + 1;
    if ((v45 + 1) >> 62)
    {
      std::vector<int>::__throw_length_error[abi:ne200100]();
    }

    v47 = v151 - v149;
    if ((v151 - v149) >> 1 > v46)
    {
      v46 = v47 >> 1;
    }

    v34 = v47 >= 0x7FFFFFFFFFFFFFFCLL;
    v48 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v34)
    {
      v48 = v46;
    }

    if (v48)
    {
      std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v149, v48);
    }

    v49 = (4 * v45);
    v50 = &v49[-((v150 - v149) >> 2)];
    *v49 = v158;
    v42 = (v49 + 1);
    memcpy(v50, v43, v44);
    v51 = v149;
    v149 = v50;
    v150 = v42;
    v151 = 0;
    if (v51)
    {
      operator delete(v51);
    }
  }

  else
  {
    *v150 = v158;
    v42 = v41 + 4;
  }

  v150 = v42;
  quasar::alignTokensToFirstSeenPartialResultsV3(&__p, v21, *(a1 + 628), &v159);
  v52 = *a3;
  v54 = *a3 + 14;
  v53 = *v54;
  v55 = *a3;
  if (*v54)
  {
    v52[15] = v53;
    operator delete(v53);
    *v54 = 0;
    v54[1] = 0;
    v54[2] = 0;
    v55 = *a3;
  }

  *(v52 + 7) = v159;
  v52[16] = v160;
  v56 = *(a1 + 624);
  v57 = *(a1 + 628);
  v177 = 0;
  v176 = 0uLL;
  if (*v21 != *(v21 + 8))
  {
    quasar::alignTokensToFirstSeenPartialResultsV3(&v152, v21, v56, &v178);
    v58 = v178.__r_.__value_.__r.__words[0];
    v59 = *(v21 + 8);
    if (0x6DB6DB6DB6DB6DB7 * ((v59 - *v21) >> 5) != (v178.__r_.__value_.__l.__size_ - v178.__r_.__value_.__r.__words[0]) >> 2)
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v159);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "correctAlignedReceivedPartialResultIndexList.size() == tokens.size()", 68);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v159);
    }

    if (v55[15] - v55[14] != v178.__r_.__value_.__l.__size_ - v178.__r_.__value_.__r.__words[0])
    {
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v159);
      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "correctAlignedSentPartialResultIndexList.size() == tokens.size()", 64);
      kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v159);
    }

    if (v59 != *v21)
    {
      v143 = a3;
      v60 = 0;
      do
      {
        if (v60 >= (v178.__r_.__value_.__l.__size_ - v178.__r_.__value_.__r.__words[0]) >> 2)
        {
LABEL_198:
          std::vector<int>::__throw_out_of_range[abi:ne200100]();
        }

        v61 = *(v178.__r_.__value_.__r.__words[0] + 4 * v60);
        if (v61 == -1)
        {
          goto LABEL_70;
        }

        v62 = v55[14];
        if (v60 >= (v55[15] - v62) >> 2)
        {
          goto LABEL_198;
        }

        v63 = *(v62 + 4 * v60);
        if (v63 == -1)
        {
LABEL_70:
          v69 = *(&v176 + 1);
          if (*(&v176 + 1) >= v177)
          {
            v71 = v176;
            v72 = *(&v176 + 1) - v176;
            v73 = (*(&v176 + 1) - v176) >> 2;
            v74 = v73 + 1;
            if ((v73 + 1) >> 62)
            {
              std::vector<int>::__throw_length_error[abi:ne200100]();
            }

            v75 = v177 - v176;
            if ((v177 - v176) >> 1 > v74)
            {
              v74 = v75 >> 1;
            }

            v34 = v75 >= 0x7FFFFFFFFFFFFFFCLL;
            v76 = 0x3FFFFFFFFFFFFFFFLL;
            if (!v34)
            {
              v76 = v74;
            }

            if (v76)
            {
              std::__allocate_at_least[abi:ne200100]<std::allocator<int>>(&v176, v76);
            }

            *(4 * v73) = 0;
            v70 = 4 * v73 + 4;
            memcpy(0, v71, v72);
            v77 = v176;
            *&v176 = 0;
            *(&v176 + 1) = v70;
            v177 = 0;
            if (v77)
            {
              operator delete(v77);
            }
          }

          else
          {
            **(&v176 + 1) = 0;
            v70 = v69 + 4;
          }

          *(&v176 + 1) = v70;
        }

        else
        {
          v64 = (v63 - v57);
          if (v64 >= (v150 - v149) >> 2)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v159);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "indexInSentEmissionPair < sentPartialResultsEmissionPair.second.size()", 70);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v159);
          }

          v65 = (v61 - v56);
          if (v65 >= (v156 - __src) >> 2)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v159);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "indexInReceivedEmissionPair < receivedPartialResultsEmissionPair.second.size()", 78);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v159);
          }

          v66 = *(v149 + v64);
          v67 = *(__src + v65);
          LODWORD(v159) = v66 - v67;
          LODWORD(v145.__r_.__value_.__l.__data_) = 0;
          if (v66 <= v67)
          {
            v68 = &v145;
          }

          else
          {
            v68 = &v159;
          }

          std::vector<int>::push_back[abi:ne200100](&v176, v68);
        }

        ++v60;
      }

      while (0x6DB6DB6DB6DB6DB7 * ((*(v21 + 8) - *v21) >> 5) > v60);
      v58 = v178.__r_.__value_.__r.__words[0];
      a3 = v143;
    }

    if (v58)
    {
      v178.__r_.__value_.__l.__size_ = v58;
      operator delete(v58);
    }

    v55 = *a3;
  }

  v78 = v55[17];
  v79 = v55;
  if (v78)
  {
    v55[18] = v78;
    operator delete(v78);
    v55[17] = 0;
    v55[18] = 0;
    v55[19] = 0;
    v79 = *a3;
  }

  *(v55 + 17) = v176;
  v55[19] = v177;
  v80 = v79[14];
  for (i = v79[15]; v80 != i; ++v80)
  {
    if (*v80 != -1)
    {
      v82 = (*v80 - *(a1 + 628));
      if (v82 < 0 || (v83 = 0xAAAAAAAAAAAAAAABLL * ((*(a1 + 584) - *(a1 + 576)) >> 3), v83 < v82))
      {
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v159);
        std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "0 <= partialResultIndexWithoutOffset && partialResultIndexWithoutOffset <= sentPartialResultsEmissionPair.first.size()", 118);
        kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v159);
      }

      if (v83 == v82)
      {
        *v80 = -2;
      }
    }
  }

  v84 = *(a1 + 432);
  if (v84 && *(v84 + 368) == 1 && *(v79 + 80) == 1)
  {
    v85 = *(v84 + 232);
    if (v85 == *(v84 + 240))
    {
      std::string::basic_string[abi:ne200100]<0>(&v145, "");
    }

    else
    {
      quasar::result_handler::toksToNormString(v85, &v145);
    }

    v86 = *(a1 + 576);
    if (*(a1 + 584) == v86)
    {
      v89 = 0;
    }

    else
    {
      v87 = 0;
      v88 = 0;
      v89 = 0;
      do
      {
        if (v88 >= *(a1 + 464))
        {
          break;
        }

        quasar::result_handler::toksToNormString((v86 + v87), &v178);
        if (quasar::startsWith(&v178, &v145))
        {
          size = HIBYTE(v145.__r_.__value_.__r.__words[2]);
          if ((v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v145.__r_.__value_.__l.__size_;
          }

          v91 = HIBYTE(v178.__r_.__value_.__r.__words[2]);
          if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            v91 = v178.__r_.__value_.__l.__size_;
          }

          if (size < v91)
          {
            if (quasar::gLogLevel >= 5)
            {
              v174 = 0u;
              v175 = 0u;
              v172 = 0u;
              v173 = 0u;
              v170 = 0u;
              v171 = 0u;
              v168 = 0u;
              v169 = 0u;
              v166 = 0u;
              v167 = 0u;
              v164 = 0u;
              v165 = 0u;
              v162 = 0u;
              v163 = 0u;
              v160 = 0u;
              v161 = 0u;
              v159 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v159);
              v92 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "VoiceEditingResultHandler: ", 27);
              v93 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v92, "preItnPrecedingUtteranceTopChoice: ", 35);
              v94 = (v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v145 : v145.__r_.__value_.__r.__words[0];
              v95 = (v145.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? HIBYTE(v145.__r_.__value_.__r.__words[2]) : v145.__r_.__value_.__l.__size_;
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v93, v94, v95);
              quasar::QuasarDebugMessage::~QuasarDebugMessage(&v159);
              if (quasar::gLogLevel >= 5)
              {
                v174 = 0u;
                v175 = 0u;
                v172 = 0u;
                v173 = 0u;
                v170 = 0u;
                v171 = 0u;
                v168 = 0u;
                v169 = 0u;
                v166 = 0u;
                v167 = 0u;
                v164 = 0u;
                v165 = 0u;
                v162 = 0u;
                v163 = 0u;
                v160 = 0u;
                v161 = 0u;
                v159 = 0u;
                kaldi::KaldiWarnMessage::KaldiWarnMessage(&v159);
                v96 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "VoiceEditingResultHandler: ", 27);
                v97 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v96, "voiceCommandDefiniteLeak: ", 26);
                if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v98 = &v178;
                }

                else
                {
                  v98 = v178.__r_.__value_.__r.__words[0];
                }

                if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
                {
                  v99 = HIBYTE(v178.__r_.__value_.__r.__words[2]);
                }

                else
                {
                  v99 = v178.__r_.__value_.__l.__size_;
                }

                std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v97, v98, v99);
                quasar::QuasarDebugMessage::~QuasarDebugMessage(&v159);
              }
            }

            v89 = 1;
          }
        }

        if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(v178.__r_.__value_.__l.__data_);
        }

        ++v88;
        v86 = *(a1 + 576);
        v87 += 24;
      }

      while (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 584) - v86) >> 3) > v88);
    }

    if (quasar::gLogLevel > 4)
    {
      v174 = 0u;
      v175 = 0u;
      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      v168 = 0u;
      v169 = 0u;
      v166 = 0u;
      v167 = 0u;
      v164 = 0u;
      v165 = 0u;
      v162 = 0u;
      v163 = 0u;
      v160 = 0u;
      v161 = 0u;
      v159 = 0u;
      kaldi::KaldiWarnMessage::KaldiWarnMessage(&v159);
      v100 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "VoiceEditingResultHandler: ", 27);
      v101 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v100, "hasVoiceCommandDefiniteLeak: ", 29);
      MEMORY[0x1B8C84BD0](v101, v89 & 1);
      quasar::QuasarDebugMessage::~QuasarDebugMessage(&v159);
    }

    v102 = *a3;
    v103 = *(a1 + 432);
    quasar::getTopChoice(v103, 1, &v178);
    quasar::getTopChoice(v102, 1, &v176);
    if ((v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
    {
      v104 = HIBYTE(v178.__r_.__value_.__r.__words[2]);
    }

    else
    {
      v104 = v178.__r_.__value_.__l.__size_;
    }

    if (v104)
    {
      v105 = HIBYTE(v177);
      if (v177 < 0)
      {
        v105 = *(&v176 + 1);
      }

      if (v104 == v105)
      {
        v106 = (v178.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? &v178 : v178.__r_.__value_.__r.__words[0];
        v107 = v177 >= 0 ? &v176 : v176;
        if (!memcmp(v106, v107, v104))
        {
          v108 = **v102;
          v109 = (*v102)[1];
          v110 = **v103;
          if (v109 - v108 != *(*v103 + 8) - v110)
          {
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v159);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "topChoicePackage.size() == topChoiceLastSentCommandCandidate.size()", 67);
            kaldi::KaldiErrorMessage::~KaldiErrorMessage(&v159);
          }

          if (v109 != v108)
          {
            v111 = 0x6DB6DB6DB6DB6DB7 * ((v109 - v108) >> 5);
            if (v111 <= 1)
            {
              v111 = 1;
            }

            v112 = v108 + 36;
            v113 = (v110 + 36);
            do
            {
              *v112 = *v113;
              *(v112 - 1) = *(v113 - 1);
              v112 += 56;
              v113 += 56;
              --v111;
            }

            while (v111);
          }

          if ((*(v103 + 368) & 1) == 0)
          {
            std::__throw_bad_optional_access[abi:ne200100]();
          }

          quasar::getTopChoice((v103 + 232), &v159);
          v114 = v102[11];
          v115 = (v102[12] - v114) >> 2;
          v116 = 0xAAAAAAAAAAAAAAABLL * ((*(&v159 + 1) - v159) >> 3);
          if (v115 > v116 && v115 > v116)
          {
            v117 = 0;
            v118 = v116;
            v119 = v102[14];
            v120 = (v102[15] - v119) >> 2;
            v121 = v102[17];
            v122 = (v102[18] - v121) >> 2;
            v123 = v115 - v116;
            v124 = v121 + 4 * v116;
            v125 = v122 - v118;
            if (v122 < v118)
            {
              v125 = 0;
            }

            v126 = v119 + 4 * v118;
            v34 = v120 >= v118;
            v127 = v120 - v118;
            if (!v34)
            {
              v127 = 0;
            }

            v128 = v114 + 4 * v118;
            do
            {
              *(v128 + 4 * v117) = -1;
              if (v127 == v117 || (*(v126 + 4 * v117) = -1, v125 == v117))
              {
                std::vector<int>::__throw_out_of_range[abi:ne200100]();
              }

              *(v124 + 4 * v117++) = 0;
            }

            while (v123 != v117);
          }

          v179 = &v159;
          std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&v179);
        }
      }
    }

    if (SHIBYTE(v177) < 0)
    {
      operator delete(v176);
    }

    if (SHIBYTE(v178.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v178.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v145.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v145.__r_.__value_.__l.__data_);
    }
  }

  if (v149)
  {
    v150 = v149;
    operator delete(v149);
  }

  *&v159 = &__p;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v159);
  if (__src)
  {
    v156 = __src;
    operator delete(__src);
  }

  *&v159 = &v152;
  std::vector<std::vector<quasar::Token>>::__destroy_vector::operator()[abi:ne200100](&v159);
LABEL_177:
  if (quasar::gLogLevel >= 5)
  {
    v174 = 0u;
    v175 = 0u;
    v172 = 0u;
    v173 = 0u;
    v170 = 0u;
    v171 = 0u;
    v168 = 0u;
    v169 = 0u;
    v166 = 0u;
    v167 = 0u;
    v164 = 0u;
    v165 = 0u;
    v162 = 0u;
    v163 = 0u;
    v160 = 0u;
    v161 = 0u;
    v159 = 0u;
    kaldi::KaldiWarnMessage::KaldiWarnMessage(&v159);
    v129 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v159, "VoiceEditingResultHandler: ", 27);
    v130 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v129, "(now=", 5);
    v131 = MEMORY[0x1B8C84C00](v130, v158);
    v132 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v131, ") handleFinal: debugInfo", 24);
    quasar::result_handler::operator<<(v132, *a3 + 456);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(&v159);
  }

  v133 = *(a1 + 168);
  v134 = v158;
  v135 = *a3;
  *a3 = 0;
  v144 = v135;
  (*(*v133 + 48))(v133, v134, &v144);
  v136 = v144;
  v144 = 0;
  if (v136)
  {
    quasar::result_handler::Package::~Package(v136);
    MEMORY[0x1B8C85350]();
  }

  *(a1 + 304) = 0;
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100]((a1 + 312), 0);
  *(a1 + 320) = 0;
  *(a1 + 324) = 0;
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100]((a1 + 416), 0);
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100]((a1 + 424), 0);
  std::unique_ptr<quasar::result_handler::Package>::reset[abi:ne200100]((a1 + 432), 0);
  if (*(a1 + 463) < 0)
  {
    **(a1 + 440) = 0;
    *(a1 + 448) = 0;
  }

  else
  {
    *(a1 + 440) = 0;
    *(a1 + 463) = 0;
  }

  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 520) = 0;
  std::__hash_table<std::__hash_value_type<std::string,std::vector<float>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<float>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<float>>>>::clear(a1 + 480);
  *(a1 + 524) = 0;
  v137 = *(a1 + 536);
  v138 = *(a1 + 528);
  v139 = *(a1 + 584);
  v140 = *(a1 + 576);
  *(a1 + 628) -= 1431655765 * ((v139 - v140) >> 3);
  *(a1 + 624) -= 1431655765 * ((v137 - v138) >> 3);
  if (v137 != v138)
  {
    do
    {
      v137 -= 24;
      *&v159 = v137;
      std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v159);
    }

    while (v137 != v138);
    v139 = *(a1 + 584);
    v140 = *(a1 + 576);
  }

  *(a1 + 536) = v138;
  while (v139 != v140)
  {
    v139 -= 24;
    *&v159 = v139;
    std::vector<quasar::Token>::__destroy_vector::operator()[abi:ne200100](&v159);
  }

  *(a1 + 584) = v140;
  *(a1 + 560) = *(a1 + 552);
  *(a1 + 608) = *(a1 + 600);
  *&v162 = 0;
  std::vector<std::vector<quasar::PartialHistory::AnnotatedToken>>::__vdeallocate((a1 + 640));
  *(a1 + 656) = 0;
  *(a1 + 640) = 0u;
  *&v160 = 0;
  v159 = 0uLL;
  v141 = (a1 + 664);
  v142 = *(a1 + 664);
  if (v142)
  {
    *(a1 + 672) = v142;
    operator delete(v142);
    *v141 = 0;
    *(a1 + 672) = 0;
    *(a1 + 680) = 0;
  }

  *v141 = 0;
  *(a1 + 672) = 0;
  *(a1 + 680) = 0;
  v161 = 0uLL;
  *(&v160 + 1) = 0;
  *(a1 + 688) = 0;
  v152 = &v159;
  std::vector<std::vector<quasar::PartialHistory::AnnotatedToken>>::__destroy_vector::operator()[abi:ne200100](&v152);
  quasar::ScopeGuard::~ScopeGuard(v181);
}

void quasar::result_handler::toksToNormString(char **a1@<X0>, std::string *a2@<X8>)
{
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4)
  {
    do
    {
      quasar::getNormString(v3, &__p);
      v5 = v17;
      if (v16 == v17)
      {
        goto LABEL_16;
      }

      v6 = *(v17 - 1);
      if (v6 >= 0)
      {
        v7 = *(v17 - 1);
      }

      else
      {
        v7 = *(v17 - 2);
      }

      size = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        size = __p.__r_.__value_.__l.__size_;
      }

      if (v7 != size || (v6 >= 0 ? (v10 = v17 - 3) : (v10 = *(v17 - 3)), (__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0 ? (p_p = &__p) : (p_p = __p.__r_.__value_.__r.__words[0]), memcmp(v10, p_p, v7)))
      {
LABEL_16:
        if (v5 >= v18)
        {
          v13 = std::vector<std::string>::__emplace_back_slow_path<std::string&>(&v16, &__p);
        }

        else
        {
          if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
          {
            std::string::__init_copy_ctor_external(v5, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
          }

          else
          {
            v12 = *&__p.__r_.__value_.__l.__data_;
            v5->__r_.__value_.__r.__words[2] = __p.__r_.__value_.__r.__words[2];
            *&v5->__r_.__value_.__l.__data_ = v12;
          }

          v13 = &v5[1];
        }

        v17 = v13;
        v9 = HIBYTE(__p.__r_.__value_.__r.__words[2]);
      }

      if (v9 < 0)
      {
        operator delete(__p.__r_.__value_.__l.__data_);
      }

      v3 += 224;
    }

    while (v3 != v4);
  }

  v14[0] = " ";
  v14[1] = 1;
  quasar::join<std::vector<std::string>>(&v16, v14);
  quasar::copyAndTrim(&__p, a2);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  __p.__r_.__value_.__r.__words[0] = &v16;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
}

void sub_1B5775C80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, char *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, char a17, uint64_t a18)
{
  if (a16 < 0)
  {
    operator delete(__p);
  }

  __p = &a17;
  std::vector<std::string>::__destroy_vector::operator()[abi:ne200100](&__p);
  _Unwind_Resume(a1);
}

void quasar::result_handler::VoiceEditingResultHandler::setParser(uint64_t a1, uint64_t *a2)
{
  if (quasar::gLogLevel >= 5)
  {
    memset(v9, 0, sizeof(v9));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v9);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v9, "VoiceEditingResultHandler: ", 27);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "Setting parser, parser=", 23);
    MEMORY[0x1B8C84BD0](v5, *a2 != 0);
    quasar::QuasarDebugMessage::~QuasarDebugMessage(v9);
  }

  v7 = *a2;
  v6 = a2[1];
  if (v6)
  {
    atomic_fetch_add_explicit((v6 + 8), 1uLL, memory_order_relaxed);
  }

  v8 = *(a1 + 184);
  *(a1 + 176) = v7;
  *(a1 + 184) = v6;
  if (v8)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](v8);
  }
}

uint64_t quasar::result_handler::topChoiceSilStartMs(uint64_t a1)
{
  v1 = *a1;
  if (*a1 != *(a1 + 8))
  {
    v2 = v1[1];
    if (*v1 != v2)
    {
      while (v2 != *v1)
      {
        v2 -= 56;
        if ((quasar::Token::isAutoPunctuation(v2) & 1) == 0)
        {
          return v2[9];
        }
      }
    }
  }

  return 0;
}

void quasar::result_handler::VoiceEditingResultHandler::filterPartialCommandsForWriting(void *a1@<X0>, const quasar::result_handler::CommandData **a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v3 = *a2;
  v4 = a2[1];
  if (*a2 != v4)
  {
    do
    {
      if (quasar::gLogLevel >= 5)
      {
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
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
        v20 = 0u;
        kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
        v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "VoiceEditingResultHandler: ", 27);
        v8 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, "filter2 ", 8);
        quasar::result_handler::operator<<(v8, v3);
        quasar::QuasarDebugMessage::~QuasarDebugMessage(&v20);
      }

      v9 = *(v3 + 19);
      v10 = *(v3 + 20);
      v11 = v9;
      if (v9 == v10)
      {
LABEL_9:
        if (quasar::gLogLevel >= 5)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
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
          v20 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
          v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "VoiceEditingResultHandler: ", 27);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, "filter2 reject1", 15);
LABEL_24:
          quasar::QuasarDebugMessage::~QuasarDebugMessage(&v20);
        }
      }

      else
      {
        while (*(v11 + 168) <= 0)
        {
          v11 += 264;
          if (v11 == v10)
          {
            while ((*(v9 + 173) & 1) == 0)
            {
              v9 += 264;
              if (v9 == v10)
              {
                goto LABEL_9;
              }
            }

            break;
          }
        }

        if (quasar::result_handler::hasInterpretationWithEmptyOrShortEnoughArguments(v3, (a1 + 2), a1 + 26))
        {
          v14 = a1[22];
          if (!v14 || (quasar::result_handler::hasInterpretationWithMaybeMatchingTarget(v3, v14, (a1 + 2), v13) & 1) != 0)
          {
            if (quasar::gLogLevel >= 5)
            {
              v35 = 0u;
              v36 = 0u;
              v33 = 0u;
              v34 = 0u;
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
              v20 = 0u;
              kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
              v15 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "VoiceEditingResultHandler: ", 27);
              std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, "filter2 pass", 12);
              quasar::QuasarDebugMessage::~QuasarDebugMessage(&v20);
            }

            v16 = a3[1];
            if (v16 >= a3[2])
            {
              v17 = std::vector<quasar::result_handler::CommandData>::__emplace_back_slow_path<quasar::result_handler::CommandData const&>(a3, v3);
            }

            else
            {
              quasar::result_handler::CommandData::CommandData(a3[1], v3);
              v17 = v16 + 184;
            }

            a3[1] = v17;
            goto LABEL_25;
          }

          if (quasar::gLogLevel >= 5)
          {
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
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
            v20 = 0u;
            kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
            v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "VoiceEditingResultHandler: ", 27);
            std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "filter2 reject3", 15);
            goto LABEL_24;
          }
        }

        else if (quasar::gLogLevel >= 5)
        {
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
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
          v20 = 0u;
          kaldi::KaldiWarnMessage::KaldiWarnMessage(&v20);
          v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(&v20, "VoiceEditingResultHandler: ", 27);
          std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, "filter2 reject2", 15);
          goto LABEL_24;
        }
      }

LABEL_25:
      v3 = (v3 + 184);
    }

    while (v3 != v4);
  }
}

uint64_t quasar::result_handler::hasInterpretationWithEmptyOrShortEnoughArguments(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 152);
  v4 = *(a1 + 160);
  if (v3 != v4)
  {
    while (1)
    {
      v24[0] = " ";
      v24[1] = 1;
      quasar::join<std::vector<std::string>>((v3 + 176), v24);
      if (v27[7] >= 0)
      {
        v6 = __p;
      }

      else
      {
        v6 = __p[0];
      }

      if (v27[7] >= 0)
      {
        v7 = v27[7];
      }

      else
      {
        v7 = __p[1];
      }

      quasar::utf8::convertToLowerCaseOrThrow(v6, v7, &v25);
      if ((v27[7] & 0x80000000) != 0)
      {
        operator delete(__p[0]);
      }

      v9 = *a3;
      v8 = a3[1];
      if (*a3 != v8)
      {
        LOBYTE(v10) = 0;
        do
        {
          size = HIBYTE(v25.__r_.__value_.__r.__words[2]);
          if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
          {
            v12 = &v25;
          }

          else
          {
            v12 = v25.__r_.__value_.__r.__words[0];
          }

          if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
          {
            size = v25.__r_.__value_.__l.__size_;
          }

          v28 = 0;
          v29 = 0;
          v30 = 0;
          v31 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v35 = 0;
          *__p = 0u;
          memset(v27, 0, sizeof(v27));
          v13 = std::regex_match[abi:ne200100]<std::__wrap_iter<char const*>,std::allocator<std::sub_match<std::__wrap_iter<char const*>>>,char,std::regex_traits<char>>(v12, v12 + size, __p, v9, 0);
          if (__p[0])
          {
            __p[1] = __p[0];
            operator delete(__p[0]);
          }

          if (v13)
          {
            v14 = *(v9 + 64);
            if (0xAAAAAAAAAAAAAAABLL * ((*(v3 + 208) - *(v3 + 200)) >> 3) <= v14)
            {
              v10 = 1;
              if (0xAAAAAAAAAAAAAAABLL * ((*(v3 + 232) - *(v3 + 224)) >> 3) <= v14)
              {
                goto LABEL_35;
              }
            }

            else
            {
              LOBYTE(v10) = 1;
            }
          }

          v9 += 72;
        }

        while (v9 != v8);
        if (v10)
        {
          goto LABEL_34;
        }
      }

      v15 = HIBYTE(v25.__r_.__value_.__r.__words[2]);
      if ((v25.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v15 = v25.__r_.__value_.__l.__size_;
      }

      if (v15)
      {
        v16 = *(v3 + 200);
        v17 = *(v3 + 208);
      }

      else
      {
        v16 = *(v3 + 200);
        v20 = *(v3 + 208);
        if (v16 != v20)
        {
          v18 = 0xAAAAAAAAAAAAAAABLL * ((v20 - v16) >> 3);
          v19 = *(a2 + 68);
          goto LABEL_32;
        }

        v17 = *(v3 + 200);
      }

      v18 = 0xAAAAAAAAAAAAAAABLL * ((v17 - v16) >> 3);
      v19 = *(a2 + 64);
LABEL_32:
      if (v18 <= v19 && 0xAAAAAAAAAAAAAAABLL * ((*(v3 + 232) - *(v3 + 224)) >> 3) <= v19)
      {
        v10 = 1;
        goto LABEL_35;
      }

LABEL_34:
      v10 = 0;
LABEL_35:
      if (SHIBYTE(v25.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(v25.__r_.__value_.__l.__data_);
      }

      v3 += 264;
      if (v3 == v4)
      {
        v21 = 1;
      }

      else
      {
        v21 = v10;
      }

      if (v21)
      {
        return v10;
      }
    }
  }

  return 0;
}

void sub_1B5776404(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, __int16 a15, char a16, char a17, void *__p, uint64_t a19, int a20, __int16 a21, char a22, char a23)
{
  if (a23 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t quasar::result_handler::hasInterpretationWithMaybeMatchingTarget(quasar::result_handler *this, const quasar::result_handler::CommandData *a2, const quasar::corrective_reranking::Parser *a3, const quasar::result_handler::VoiceEditingResultHandlerConfig *a4)
{
  if (*(a3 + 60) == 1)
  {
    v4 = *(this + 19);
    if (v4 == *(this + 20))
    {
      return 0;
    }

    if (*(v4 + 248) == 1)
    {
      quasar::utf::toU32StringVec((v4 + 200), v7);
      quasar::corrective_reranking::detokenize(v7);
    }
  }

  return 1;
}

void sub_1B57767BC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *__p, uint64_t a14, int a15, __int16 a16, char a17, char a18)
{
  if (*(v18 - 73) < 0)
  {
    operator delete(*(v18 - 96));
  }

  _Unwind_Resume(exception_object);
}

void quasar::result_handler::VoiceEditingResultHandler::logDeadlines(uint64_t a1, uint64_t *a2, char **a3)
{
  *&v25[0] = a2;
  v6 = std::__hash_table<std::__hash_value_type<std::string,std::vector<int>>,std::__unordered_map_hasher<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::hash<std::string>,std::equal_to<std::string>,true>,std::__unordered_map_equal<std::string,std::__hash_value_type<std::string,std::vector<int>>,std::equal_to<std::string>,std::hash<std::string>,true>,std::allocator<std::__hash_value_type<std::string,std::vector<int>>>>::__emplace_unique_key_args<std::string,std::piecewise_construct_t const&,std::tuple<std::string const&>,std::tuple<>>((a1 + 480), a2, &std::piecewise_construct, v25, __p);
  v7 = a3[1] - *a3;
  v8 = v6[5];
  v9 = v6[6];
  v10 = (v6 + 5);
  if (v7 != v9 - v8 || memcmp(*a3, v8, v7))
  {
    if (quasar::gLogLevel >= 5)
    {
      memset(v25, 0, sizeof(v25));
      kaldi::KaldiWarnMessage::KaldiWarnMessage(v25);
      v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v25, "VoiceEditingResultHandler: ", 27);
      v12 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v11, "(now=", 5);
      v13 = MEMORY[0x1B8C84C00](v12, *(a1 + 8));
      v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, ") Deadlines for ", 16);
      v15 = *(a2 + 23);
      if (v15 >= 0)
      {
        v16 = a2;
      }

      else
      {
        v16 = *a2;
      }

      if (v15 >= 0)
      {
        v17 = *(a2 + 23);
      }

      else
      {
        v17 = a2[1];
      }

      v18 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v14, v16, v17);
      v19 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v18, ": ", 2);
      v22[0] = " ";
      v22[1] = 1;
      quasar::join<std::vector<int>>(a3, v22);
      if ((v24 & 0x80u) == 0)
      {
        v20 = __p;
      }

      else
      {
        v20 = __p[0];
      }

      if ((v24 & 0x80u) == 0)
      {
        v21 = v24;
      }

      else
      {
        v21 = __p[1];
      }

      std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, v20, v21);
      if (v24 < 0)
      {
        operator delete(__p[0]);
      }

      quasar::QuasarDebugMessage::~QuasarDebugMessage(v25);
    }

    if (v10 != a3)
    {
      std::vector<int>::__assign_with_size[abi:ne200100]<int *,int *>(v10, *a3, a3[1], (a3[1] - *a3) >> 2);
    }
  }
}

void sub_1B5776A18(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17, std::locale a18)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  quasar::QuasarDebugMessage::~QuasarDebugMessage(&a18);
  _Unwind_Resume(a1);
}

void quasar::result_handler::VoiceEditingResultHandler::sendCommandCandidate(uint64_t a1, const quasar::result_handler::Package **a2)
{
  if (quasar::gLogLevel >= 5)
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    *v24 = 0u;
    *v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    v4 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VoiceEditingResultHandler: ", 27);
    v5 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v4, "(now=", 5);
    v6 = MEMORY[0x1B8C84C00](v5, *(a1 + 8));
    v7 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v6, ") send commandCandidate: ", 25);
    quasar::getTopChoice(*a2 + 48, 1, &__p);
    if ((v18 & 0x80u) == 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    if ((v18 & 0x80u) == 0)
    {
      v9 = v18;
    }

    else
    {
      v9 = *v17;
    }

    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v7, p_p, v9);
    if (v18 < 0)
    {
      operator delete(__p);
    }

    quasar::QuasarDebugMessage::~QuasarDebugMessage(v19);
  }

  if (*(*a2 + 368) == 1)
  {
    if (quasar::gLogLevel < 5)
    {
      goto LABEL_17;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    *v24 = 0u;
    *v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    v10 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VoiceEditingResultHandler: ", 27);
    v11 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v10, "(now=", 5);
    v12 = MEMORY[0x1B8C84C00](v11, *(a1 + 8));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v12, ") Sending eager for command execution", 37);
  }

  else
  {
    if (quasar::gLogLevel < 5)
    {
      goto LABEL_17;
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    *v29 = 0u;
    v30 = 0u;
    *v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    *v24 = 0u;
    *v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    memset(v19, 0, sizeof(v19));
    kaldi::KaldiWarnMessage::KaldiWarnMessage(v19);
    v13 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v19, "VoiceEditingResultHandler: ", 27);
    v14 = std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v13, "(now=", 5);
    v15 = MEMORY[0x1B8C84C00](v14, *(a1 + 8));
    std::__put_character_sequence[abi:ne200100]<char,std::char_traits<char>>(v15, ") Sending eager for non-command utterance", 41);
  }

  quasar::QuasarDebugMessage::~QuasarDebugMessage(v19);
LABEL_17:
  operator new();
}

void quasar::result_handler::VoiceEditingResultHandler::sendPartial(uint64_t a1, const quasar::result_handler::Package **a2)
{
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(a1 + 424);
  if (v3)
  {
    quasar::getTopChoice(v3 + 48, 1, &v16);
  }

  else
  {
    v16 = 0uLL;
    *&v17 = 0;
  }

  v4 = *a2;
  v21 = v16;
  *&v22 = v17;
  quasar::getTopChoice(v4 + 48, 1, &v16);
  if (SBYTE7(v19) < 0)
  {
    operator delete(v18);
  }

  *&v19 = v17;
  v18 = v16;
  v5 = SBYTE7(v22);
  if ((SBYTE7(v22) & 0x80u) == 0)
  {
    v6 = BYTE7(v22);
  }

  else
  {
    v6 = *(&v21 + 1);
  }

  v7 = BYTE7(v19);
  v8 = SBYTE7(v19);
  if (SBYTE7(v19) < 0)
  {
    v7 = *(&v18 + 1);
  }

  if (v6 != v7)
  {
    goto LABEL_32;
  }

  v9 = (SBYTE7(v22) & 0x80u) == 0 ? &v21 : v21;
  v10 = (SBYTE7(v19) & 0x80u) == 0 ? &v18 : v18;
  if (memcmp(v9, v10, v6))
  {
    goto LABEL_32;
  }

  if (v23 >= 0)
  {
    v11 = HIBYTE(v23);
  }

  else
  {
    v11 = v23;
  }

  v12 = HIBYTE(v20);
  v13 = HIBYTE(v20);
  if (v20 < 0)
  {
    v12 = v20;
  }

  if (v11 != v12 || (v23 >= 0 ? (v14 = &v22 + 8) : (v14 = *(&v22 + 1)), v20 >= 0 ? (v15 = &v19 + 8) : (v15 = *(&v19 + 1)), memcmp(v14, v15, v11)))
  {
LABEL_32:
    operator new();
  }

  if (v13 < 0)
  {
    operator delete(*(&v19 + 1));
    if ((v8 & 0x80000000) == 0)
    {
      goto LABEL_35;
    }
  }

  else if ((v8 & 0x80000000) == 0)
  {
    goto LABEL_35;
  }

  operator delete(v18);
LABEL_35:
  if ((SHIBYTE(v23) & 0x80000000) == 0)
  {
    if ((v5 & 0x80000000) == 0)
    {
      return;
    }

LABEL_41:
    operator delete(v21);
    return;
  }

  operator delete(*(&v22 + 1));
  if (v5 < 0)
  {
    goto LABEL_41;
  }
}