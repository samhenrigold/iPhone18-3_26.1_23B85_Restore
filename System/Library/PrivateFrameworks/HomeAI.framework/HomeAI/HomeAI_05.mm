void sub_22D21DC2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, void *a49, uint64_t a50, uint64_t a51, void *a52, uint64_t a53, int a54, __int16 a55, char a56, char a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  cv::Exception::~Exception(&a69);
  if (a66 < 0)
  {
    operator delete(__p);
  }

  if (a68 < 0)
  {
    operator delete(a67);
  }

  if (a57 < 0)
  {
    operator delete(a52);
  }

  cv::Mat::~Mat(&STACK[0x260]);
  cv::Mat::~Mat(&STACK[0x2C0]);
  if (STACK[0x3B0] != a21 && STACK[0x3B0] != 0)
  {
    MEMORY[0x2318CB180]();
  }

  _Unwind_Resume(a1);
}

uint64_t cv::DFTFactorize(cv *this, unsigned int *a2, int *a3)
{
  v3 = this;
  if (this <= 5)
  {
    *a2 = this;
    return 1;
  }

  v5 = (this - 1) ^ this;
  if (v5 == 1)
  {
    result = 0;
LABEL_5:
    v6 = 3;
    while (1)
    {
      if (v3 / v6 * v6 == v3)
      {
        a2[result] = v6;
        result = (result + 1);
        v3 /= v6;
      }

      else
      {
        v6 += 2;
        if (v6 * v6 > v3)
        {
          a2[result] = v3;
          result = (result + 1);
          goto LABEL_16;
        }
      }

      if (v3 <= 1)
      {
        goto LABEL_16;
      }
    }
  }

  v7 = (v5 + 1) >> 1;
  *a2 = v7;
  if (v7 != this)
  {
    v3 = this / v7;
    result = 1;
    if (v3 < 2)
    {
      goto LABEL_16;
    }

    goto LABEL_5;
  }

  result = 1;
LABEL_16:
  v8 = (*a2 & 1) == 0;
  if (v8 < (v8 + result) / 2)
  {
    v9 = &a2[v8];
    v10 = result - 1;
    v11 = (v8 + result) / 2 - v8;
    do
    {
      v12 = *v9;
      *v9++ = a2[v10];
      a2[v10--] = v12;
      --v11;
    }

    while (v11);
  }

  return result;
}

double cv::DFTInit(cv *this, int a2, unsigned int *a3, int *a4, int *a5, _OWORD *a6, void *a7, __n128 a8, __n128 a9)
{
  v10 = a5;
  v12 = this;
  v93[16] = *MEMORY[0x277D85DE8];
  if (this > 5)
  {
    if (a2 >= 34)
    {
      cv::DFTInit();
    }

    v15 = a7;
    v86 = a5;
    v17 = *a3;
    *(&v87 + a2) = 1;
    *(&v91 + a2) = 0;
    if (a2 >= 1)
    {
      v18 = a2;
      bzero(&v91, 4 * a2);
      v19 = *(&v87 + a2);
      v20 = 4 * a2 - 4;
      v21 = (&v87 + v20);
      v22 = (a3 + v20);
      do
      {
        v23 = *v22--;
        v19 *= v23;
        *v21-- = v19;
        --v18;
      }

      while (v18);
    }

    v24 = a4;
    if (v15)
    {
      if (v17 == a3[a2 - 1])
      {
        v24 = a4;
      }

      else
      {
        v24 = a6;
      }
    }

    v10 = v86;
    if (v17)
    {
      v32 = 0;
      *v24 = 0;
      v33 = v88;
      v34 = 1;
      do
      {
        v32 += v33;
        if (++v91 >= *a3)
        {
          v35 = &v92;
          v36 = (a3 + 1);
          v37 = &v89;
          do
          {
            v32 = *v37 + v32 - *(v37 - 2);
            v38 = *v35 + 1;
            *(v35 - 1) = 0;
            *v35 = v38;
            v39 = *v36++;
            ++v37;
            ++v35;
          }

          while (v38 >= v39);
        }

        v24[v34++] = v32;
      }

      while (v34 != v12);
      v13 = 0;
    }

    else
    {
      v25 = 0;
      v26 = v88;
      v27 = (v88 * v17) >> 1;
      do
      {
        v28 = 1 << v25++;
      }

      while (v28 < v17);
      v13 = v25 - 1;
      if (v17 > 2)
      {
        v40 = (v88 * v17) >> 2;
        if (v17 > 0x100)
        {
          v47 = 0;
          v48 = 35 - v25;
          v49 = v24 + 2;
          v50 = 3;
          do
          {
            v51 = (((cv::bitrevTab[v47] << 24) | (cv::bitrevTab[((v50 - 3) >> 10)] << 16) | (cv::bitrevTab[((v50 - 3) >> 18)] << 8) | cv::bitrevTab[(v50 - 3) >> 26]) >> v48) * v26;
            *(v49 - 2) = v51;
            *(v49 - 1) = v51 + v27;
            v52 = v50 + 1;
            v50 += 4;
            *v49 = v51 + v40;
            v49[1] = v51 + v27 + v40;
            v49 += 4;
            ++v47;
          }

          while (v52 < v17);
        }

        else if (v17 != 3)
        {
          v41 = 0;
          v42 = 11 - v25;
          v43 = v24 + 2;
          v44 = cv::bitrevTab;
          do
          {
            v45 = *v44++;
            v46 = (v45 >> v42) * v26;
            *(v43 - 2) = v46;
            *(v43 - 1) = v46 + v27;
            *v43 = v46 + v40;
            v43[1] = v46 + v27 + v40;
            v43 += 4;
            v41 += 4;
          }

          while (v41 <= (v17 - 4));
        }
      }

      else
      {
        *v24 = 0;
        v24[1] = v27;
      }

      ++v92;
      if (a2 >= 2 && v17 < v12)
      {
        v53 = v89;
        v54 = v17;
        v55 = v17;
        v56 = v89;
        while (1)
        {
          if (v17 >= 1)
          {
            v57 = v17;
            v58 = v24;
            do
            {
              v58[v54] = *v58 + v56;
              ++v58;
              --v57;
            }

            while (v57);
          }

          v55 += v17;
          if (v55 >= v12)
          {
            break;
          }

          v56 += v53;
          if (++v92 >= a3[1])
          {
            v59 = v93;
            v60 = (a3 + 2);
            v61 = &v90;
            do
            {
              v56 = *v61 + v56 - *(v61 - 2);
              v62 = *v59 + 1;
              *(v59 - 1) = 0;
              *v59 = v62;
              v63 = *v60++;
              ++v61;
              ++v59;
            }

            while (v62 >= v63);
          }

          v54 += v17;
        }
      }
    }

    if (v24 != a4)
    {
      *a4 = 0;
      v64 = v12 & 1;
      do
      {
        v65 = &v24[v64];
        v67 = *v65;
        v66 = v65[1];
        a4[v67] = v64;
        a4[v66] = v64 + 1;
        v64 += 2;
      }

      while (v64 < v12);
    }

    goto LABEL_56;
  }

  *a4 = 0;
  a4[this - 1] = this - 1;
  if (this == 4)
  {
    *(a4 + 1) = 0x100000002;
    v13 = 2;
LABEL_56:
    if ((v12 & (v12 - 1)) != 0)
    {
      a8.n128_f64[0] = sin(-6.28318531 / v12);
      v69 = sqrt(1.0 - a8.n128_f64[0] * a8.n128_f64[0]);
    }

    else
    {
      v68 = (&cv::DFTTab + 16 * v13);
      v69 = *v68;
      a8.n128_f64[0] = -v68[1];
    }

    LODWORD(v70) = (v12 + 1) / 2;
    if (v10 == 16)
    {
      *a6 = xmmword_22D298030;
      if ((v12 & 1) == 0)
      {
        a6[v70] = xmmword_22D297FE0;
      }

      if (v12 >= 3)
      {
        if (v70 <= 2)
        {
          v70 = 2;
        }

        else
        {
          v70 = v70;
        }

        v71 = v70 - 1;
        v72 = &a6[v12 - 1] + 1;
        v73 = a6 + 3;
        v74 = v69;
        v75 = a8.n128_f64[0];
        do
        {
          *(v73 - 1) = v74;
          *v73 = v75;
          *(v72 - 1) = v74;
          *v72 = -v75;
          v76 = -(v75 * a8.n128_f64[0]);
          v75 = v69 * v75 + v74 * a8.n128_f64[0];
          v74 = v76 + v74 * v69;
          v72 -= 2;
          v73 += 2;
          --v71;
        }

        while (v71);
      }
    }

    else
    {
      if (v10 != 8)
      {
        cv::DFTInit();
      }

      *a6 = 1065353216;
      if ((v12 & 1) == 0)
      {
        *(a6 + v70) = 3212836864;
      }

      if (v12 >= 3)
      {
        if (v70 <= 2)
        {
          v70 = 2;
        }

        else
        {
          v70 = v70;
        }

        v77 = v70 - 1;
        v78 = a6 + 2 * v12 - 1;
        v79 = a6 + 3;
        v80 = v69;
        v81 = a8.n128_f64[0];
        do
        {
          v82 = v80;
          v83 = v81;
          *(v79 - 1) = v82;
          *v79 = v83;
          *(v78 - 1) = v82;
          *v78 = -v83;
          v84 = -(v81 * a8.n128_f64[0]);
          v81 = v69 * v81 + v80 * a8.n128_f64[0];
          v80 = v84 + v80 * v69;
          v78 -= 2;
          v79 += 2;
          --v77;
        }

        while (v77);
      }
    }

    return a8.n128_f64[0];
  }

  if (this >= 3)
  {
    v29 = vdupq_n_s64(this - 3);
    v30 = vmovn_s64(vcgeq_u64(v29, xmmword_22D297DE0));
    if (vuzp1_s16(v30, *v29.i8).u8[0])
    {
      a4[1] = 1;
    }

    if (vuzp1_s16(v30, *&v29).i8[2])
    {
      a4[2] = 2;
    }

    v31 = vmovn_s64(vcgeq_u64(v29, xmmword_22D297DD0));
    if (vuzp1_s16(v31, v31).i32[1])
    {
      a4[3] = 3;
    }

    a8.n128_u64[0] = vuzp1_s16(v31, v31);
    if (a8.n128_u8[6])
    {
      a4[4] = 4;
    }

    if (this == 5)
    {
      if (a5 == 16)
      {
        a8.n128_u64[0] = 0x3FF0000000000000;
        *a6 = xmmword_22D298030;
      }

      else
      {
        a8.n128_u64[0] = 1065353216;
        *a6 = 1065353216;
      }
    }
  }

  return a8.n128_f64[0];
}

uint64_t cv::complementComplexOutput(uint64_t this, Mat *a2, int a3)
{
  v3 = *(this + 12);
  v4 = *(this + 16);
  v5 = *(this + 80);
  if (((0x88442211uLL >> (4 * (*this & 7u))) & 0xF) == 4)
  {
    if (a2 >= 1)
    {
      v6 = 0;
      v7 = v5 >> 2;
      v8 = (v3 + 1) / 2;
      if (v8 <= 2)
      {
        v9 = 2;
      }

      else
      {
        v9 = v8;
      }

      v10 = v9 - 1;
      v11 = v4 + 8 * v3 - 4;
      do
      {
        if (2 * v6 == a2 || v6 == 0 || a3 == 1)
        {
          v14 = v6;
        }

        else
        {
          v14 = a2 - v6;
        }

        if (v3 >= 3)
        {
          v15 = (v4 + 4 * v7 * v14 + 12);
          v16 = v11;
          this = v10;
          do
          {
            *(v16 - 1) = *(v15 - 1);
            v17 = *v15;
            v15 += 2;
            *v16 = -v17;
            v16 -= 2;
            --this;
          }

          while (this);
        }

        ++v6;
        v11 += 4 * v7;
      }

      while (v6 != a2);
    }
  }

  else if (a2 >= 1)
  {
    v18 = 0;
    v19 = v5 >> 3;
    v20 = (v3 + 1) / 2;
    if (v20 <= 2)
    {
      v21 = 2;
    }

    else
    {
      v21 = v20;
    }

    v22 = v21 - 1;
    v23 = v4 + 16 * v3 - 8;
    do
    {
      if (2 * v18 == a2 || v18 == 0 || a3 == 1)
      {
        v26 = v18;
      }

      else
      {
        v26 = a2 - v18;
      }

      if (v3 >= 3)
      {
        v27 = (v4 + 8 * v19 * v26 + 24);
        v28 = v23;
        this = v22;
        do
        {
          *(v28 - 1) = *(v27 - 1);
          v29 = *v27;
          v27 += 2;
          *v28 = -v29;
          v28 -= 2;
          --this;
        }

        while (this);
      }

      ++v18;
      v23 += 8 * v19;
    }

    while (v18 != a2);
  }

  return this;
}

_DWORD *cv::CopyColumn(_DWORD *this, unint64_t a2, _DWORD *a3, unint64_t a4, int a5, uint64_t a6)
{
  v6 = a2 >> 2;
  v7 = a4 >> 2;
  if (a6 == 4)
  {
    if (a5 >= 1)
    {
      v14 = 4 * v7;
      v15 = 4 * v6;
      do
      {
        *a3 = *this;
        a3 = (a3 + v14);
        this = (this + v15);
        --a5;
      }

      while (a5);
    }
  }

  else if (a6 == 8)
  {
    if (a5 >= 1)
    {
      v12 = 4 * v7;
      v13 = 4 * v6;
      do
      {
        *a3 = *this;
        a3 = (a3 + v12);
        this = (this + v13);
        --a5;
      }

      while (a5);
    }
  }

  else if (a6 == 16 && a5 >= 1)
  {
    v8 = a3 + 2;
    v9 = 4 * v7;
    v10 = this + 2;
    v11 = 4 * v6;
    do
    {
      *(v8 - 1) = *(v10 - 1);
      *v8 = *v10;
      v8 = (v8 + v9);
      v10 = (v10 + v11);
      --a5;
    }

    while (a5);
  }

  return this;
}

uint64_t cv::ExpandCCS(uint64_t this, unsigned __int8 *a2, int a3)
{
  v3 = a2 + 1;
  if (a3 == 4)
  {
    if (a2 >= 3)
    {
      v4 = (v3 >> 1) - 1;
      v5 = (this + 8);
      v6 = (this + 8 * a2 - 4);
      do
      {
        *(v6 - 1) = *(v5 - 1);
        v7 = *v5;
        v5 += 2;
        *v6 = -v7;
        v6 -= 2;
        --v4;
      }

      while (v4);
    }

    if ((a2 & 1) == 0)
    {
      *(this + 4 * a2) = *(this + 4 * a2 - 4);
      *(this + 4 * v3) = 0;
      LODWORD(a2) = a2 - 1;
    }

    if (a2 >= 2)
    {
      v8 = a2 + 1;
      v9 = (this + 4 * a2);
      v10 = v9;
      do
      {
        v11 = *--v10;
        *v9 = v11;
        --v8;
        v9 = v10;
      }

      while (v8 > 2);
    }

    *(this + 4) = 0;
  }

  else
  {
    if (a2 >= 3)
    {
      v12 = (v3 >> 1) - 1;
      v13 = (this + 16);
      v14 = (this + 16 * a2 - 8);
      do
      {
        *(v14 - 1) = *(v13 - 1);
        v15 = *v13;
        v13 += 2;
        *v14 = -v15;
        v14 -= 2;
        --v12;
      }

      while (v12);
    }

    if ((a2 & 1) == 0)
    {
      *(this + 8 * a2) = *(this + 8 * a2 - 8);
      *(this + 8 * v3) = 0;
      LODWORD(a2) = a2 - 1;
    }

    if (a2 >= 2)
    {
      v16 = a2 + 1;
      v17 = (this + 8 * a2);
      v18 = v17;
      do
      {
        v19 = *--v18;
        *v17 = v19;
        --v16;
        v17 = v18;
      }

      while (v16 > 2);
    }

    *(this + 8) = 0;
  }

  return this;
}

void cv::mulSpectrums(void (***this)(uint64_t *__return_ptr), const cv::_InputArray *a2, const cv::_InputArray *a3, const cv::_OutputArray *a4, char a5)
{
  v6 = a4;
  (**this)(&v420);
  (**a2)(v412, a2, 0xFFFFFFFFLL);
  v9 = v420;
  v10 = v421;
  v11 = v422;
  if ((v420 & 0xFFF) != (v412[0] & 0xFFF) || (v428[1] == v417[1] ? (v12 = *v428 == *v417) : (v12 = 0), !v12))
  {
    std::string::basic_string[abi:ne200100]<0>(v398, "type == srcB.type() && srcA.size() == srcB.size()");
    std::string::basic_string[abi:ne200100]<0>(&v431, "mulSpectrums");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/dxt.cpp");
    cv::Exception::Exception(v403, -215, v398, &v431, &__p, 2020);
    cv::error(v403, v13);
  }

  if ((v420 & 0xFFFu) > 0xE || ((1 << v420) & 0x6060) == 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v398, "type == CV_32FC1 || type == CV_32FC2 || type == CV_64FC1 || type == CV_64FC2");
    std::string::basic_string[abi:ne200100]<0>(&v431, "mulSpectrums");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/dxt.cpp");
    cv::Exception::Exception(v403, -215, v398, &v431, &__p, 2021);
    cv::error(v403, v16);
  }

  (*(*a3 + 136))(a3, v421, v422, v420 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**a3)(v403, a3, 0xFFFFFFFFLL);
  if (v404 == v413)
  {
    v399 = v398 + 8;
    v400 = v401;
    v401[0] = 0;
    v401[1] = 0;
    LODWORD(v398[0]) = 1124007936;
    memset(v398 + 4, 0, 48);
    v398[3] = 0u;
    cv::_OutputArray::_OutputArray(&v431, v398);
    cv::Mat::copyTo(v412, &v431);
    if (*(&v398[1] + 1))
    {
      atomic_fetch_add(*(&v398[1] + 1), 1u);
    }

    if (v414 && atomic_fetch_add(v414, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v412);
    }

    v413 = 0;
    *(&v414 + 1) = 0;
    v415 = 0uLL;
    if (v412[0] <= 0)
    {
      *&v414 = 0;
      LODWORD(v412[0]) = v398[0];
    }

    else
    {
      v14 = 0;
      v15 = v417;
      do
      {
        v15[v14++] = 0;
      }

      while (v14 < SHIDWORD(v412[0]));
      *&v414 = 0;
      LODWORD(v412[0]) = v398[0];
      if (SHIDWORD(v412[0]) > 2)
      {
        goto LABEL_24;
      }
    }

    if (SDWORD1(v398[0]) <= 2)
    {
      HIDWORD(v412[0]) = DWORD1(v398[0]);
      v412[1] = *(&v398[0] + 1);
      v17 = v400;
      v18 = v418;
      *v418 = *v400;
      v18[1] = v17[1];
      goto LABEL_25;
    }

LABEL_24:
    cv::Mat::copySize(v412, v398);
LABEL_25:
    v415 = *(&v398[2] + 8);
    v414 = *(&v398[1] + 8);
    v413 = *&v398[1];
    v416 = *(&v398[3] + 1);
    if (*(&v398[1] + 1) && atomic_fetch_add(*(&v398[1] + 1), 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v398);
    }

    *&v398[1] = 0;
    memset(&v398[2], 0, 24);
    if (SDWORD1(v398[0]) >= 1)
    {
      v19 = 0;
      v20 = v399;
      do
      {
        *&v20[4 * v19++] = 0;
      }

      while (v19 < SDWORD1(v398[0]));
    }

    *(&v398[1] + 1) = 0;
    if (v400)
    {
      v21 = v400 == v401;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      free(v400);
    }
  }

  v22 = (v9 >> 3) & 0x1FF;
  v23 = 1;
  if ((v6 & 4) == 0 && v10 != 1)
  {
    if (v11 == 1 && (v420 & 0x4000) != 0 && (v412[0] & 0x4000) != 0)
    {
      v23 = (BYTE1(v403[0]) >> 6) & 1;
    }

    else
    {
      v23 = 0;
    }
  }

  v24 = v23 ^ 1 | ((v6 & 4) >> 2);
  v25 = v24 == 0;
  if (v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v10 - 1;
  }

  v27 = v26 + v11;
  if (v25)
  {
    v28 = 1;
  }

  else
  {
    v28 = v10;
  }

  v29 = v22 == 0;
  if (v22)
  {
    v30 = 1;
  }

  else
  {
    v30 = v23;
  }

  v31 = (v27 & 1) == 0;
  v32 = (v27 & 1) == 0 && v22 == 0;
  v33 = v27 * (v22 + 1) - v32;
  v34 = v423;
  v35 = v430;
  v36 = v413;
  v37 = v419;
  v38 = v404;
  v39 = v411;
  if ((v9 & 7) == 5)
  {
    if (a5)
    {
      if (v423 != v404)
      {
        if ((v30 & 1) == 0)
        {
          *v404 = *v423 * *v413;
          v40 = v28 - 2;
          if (v28 == 2)
          {
            goto LABEL_62;
          }

          v41 = 1;
          v42 = v34;
          v43 = v36;
          v44 = v38;
          do
          {
            v45 = *(v42 + v35);
            v42 = (v42 + 2 * v35);
            v46 = *v42;
            v47 = *(v43 + v37);
            v43 = (v43 + 2 * v37);
            v48 = *v43;
            v49 = v46 * v48 + v45 * v47;
            v50 = v46 * v47;
            *&v47 = v49;
            *(v44 + v39) = *&v47;
            *&v45 = v50 - v45 * v48;
            v44 = (v44 + 2 * v39);
            *v44 = *&v45;
            v41 += 2;
          }

          while (v41 <= v40);
          if ((v28 & 1) == 0)
          {
LABEL_62:
            *(v38 + v39 * (v28 - 1)) = *(v34 + v35 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
          }

          if ((v27 & 1) == 0)
          {
            v51 = &v34[v27];
            v53 = *(v51 - 1);
            v52 = v51 - 1;
            v54 = v53;
            v55 = &v36[v27];
            v57 = *(v55 - 1);
            v56 = v55 - 1;
            v58 = &v38[v27];
            *(v58 - 1) = v54 * v57;
            v59 = v58 - 1;
            if (v28 != 2)
            {
              v60 = 2 * v39;
              v61 = v38 + v39 - 4;
              v62 = v36 + v37 - 4;
              v63 = v38 + 2 * v39 - 4;
              v64 = v36 + 2 * v37 - 4;
              v65 = v34 + 2 * v35 - 4;
              v66 = 2 * v37;
              v67 = 2 * v35;
              v68 = v34 + v35 - 4;
              v69 = 1;
              do
              {
                v70 = *(v68 + 4 * v27);
                v71 = *(v65 + 4 * v27);
                v72 = *(v62 + 4 * v27);
                v73 = *(v64 + 4 * v27);
                v74 = v71 * v73 + v70 * v72;
                v75 = v71 * v72;
                *&v72 = v74;
                *(v61 + 4 * v27) = LODWORD(v72);
                *&v70 = v75 - v70 * v73;
                *(v63 + 4 * v27) = LODWORD(v70);
                v69 += 2;
                v61 += v60;
                v62 += v66;
                v63 += v60;
                v64 += v66;
                v65 += v67;
                v68 += v67;
              }

              while (v69 <= v40);
              if (v28)
              {
                v31 = 1;
LABEL_70:
                if (v22)
                {
                  v76 = 0;
                }

                else
                {
                  v76 = v23;
                }

                do
                {
                  if (v76)
                  {
                    *v38 = *v34 * *v36;
                    if (v33 > v29)
                    {
                      v77 = v29;
                      v78 = v29;
                      do
                      {
                        v79 = vcvtq_f64_f32(*&v36[v77]);
                        v80 = -v79.f64[1];
                        v81 = vmulq_n_f64(v79, v34[v77 + 1]);
                        v82 = vdupq_lane_s64(*&v79.f64[0], 0);
                        v82.f64[0] = v80;
                        *&v38[v77] = vrev64_s32(vcvt_f32_f64(vmlaq_n_f64(v81, v82, v34[v77])));
                        v78 += 2;
                        v77 += 2;
                      }

                      while (v78 < v33);
                    }

                    if ((v76 & v31) != 0)
                    {
                      v38[v33] = v34[v33] * v36[v33];
                    }
                  }

                  else if (v33 > v29)
                  {
                    v83 = v29;
                    v84 = v29;
                    do
                    {
                      v85 = vcvtq_f64_f32(*&v36[v83]);
                      v86 = -v85.f64[1];
                      v87 = vmulq_n_f64(v85, v34[v83 + 1]);
                      v88 = vdupq_lane_s64(*&v85.f64[0], 0);
                      v88.f64[0] = v86;
                      *&v38[v83] = vrev64_s32(vcvt_f32_f64(vmlaq_n_f64(v87, v88, v34[v83])));
                      v84 += 2;
                      v83 += 2;
                    }

                    while (v84 < v33);
                  }

                  v34 = (v34 + v35);
                  v36 = (v36 + v37);
                  v38 = (v38 + v39);
                  --v28;
                }

                while (v28);
                goto LABEL_279;
              }
            }

            *(v59 + v39 * (v28 - 1)) = *(v52 + v35 * (v28 - 1)) * *(v56 + v37 * (v28 - 1));
          }
        }

        if (!v28)
        {
          goto LABEL_279;
        }

        goto LABEL_70;
      }

      if ((v30 & 1) == 0)
      {
        *v404 = *v404 * *v413;
        v226 = v28 - 2;
        if (v28 == 2)
        {
          goto LABEL_174;
        }

        v227 = 1;
        v228 = v38;
        v229 = v36;
        do
        {
          v230 = *(v228 + v39);
          v231 = *(v228 + 2 * v39);
          v232 = *(v229 + v37);
          v229 = (v229 + 2 * v37);
          v233 = *v229;
          v234 = v231 * v233 + v230 * v232;
          v235 = v231 * v232;
          *&v232 = v234;
          *(v228 + v39) = *&v232;
          *&v230 = v235 - v230 * v233;
          *(v228 + 2 * v39) = *&v230;
          v227 += 2;
          v228 = (v228 + 2 * v39);
        }

        while (v227 <= v226);
        if ((v28 & 1) == 0)
        {
LABEL_174:
          *(v38 + v39 * (v28 - 1)) = *(v38 + v39 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
        }

        if ((v27 & 1) == 0)
        {
          v236 = &v36[v27];
          v238 = *(v236 - 1);
          v237 = v236 - 1;
          v239 = v238;
          v240 = &v38[v27];
          v242 = *(v240 - 1);
          v241 = v240 - 1;
          *v241 = v242 * v239;
          if (v28 != 2)
          {
            v243 = 1;
            v244 = v241;
            v245 = v237;
            do
            {
              v246 = *(v244 + v39);
              v247 = *(v244 + 2 * v39);
              v248 = *(v245 + v37);
              v245 = (v245 + 2 * v37);
              v249 = *v245;
              v250 = v247 * v249 + v246 * v248;
              v251 = v247 * v248;
              *&v248 = v250;
              *(v244 + v39) = *&v248;
              *&v246 = v251 - v246 * v249;
              *(v244 + 2 * v39) = *&v246;
              v243 += 2;
              v244 = (v244 + 2 * v39);
            }

            while (v243 <= v226);
            if (v28)
            {
              v31 = 1;
LABEL_182:
              if (v22)
              {
                v252 = 0;
              }

              else
              {
                v252 = v23;
              }

              v253 = &v36[v29];
              do
              {
                if (v252)
                {
                  *v38 = *v34 * *v36;
                  if (v33 > v29)
                  {
                    v254 = v29;
                    v255 = v253;
                    v256 = v29;
                    do
                    {
                      v257 = *v255++;
                      v258 = vcvtq_f64_f32(v257);
                      v259 = -v258.f64[1];
                      v260 = vmulq_n_f64(v258, v38[v256 + 1]);
                      v261 = vdupq_lane_s64(*&v258.f64[0], 0);
                      v261.f64[0] = v259;
                      *&v38[v254] = vrev64_s32(vcvt_f32_f64(vmlaq_n_f64(v260, v261, v38[v254])));
                      v256 += 2;
                      v254 += 2;
                    }

                    while (v256 < v33);
                  }

                  if ((v252 & v31) != 0)
                  {
                    v38[v33] = v34[v33] * v36[v33];
                  }
                }

                else if (v33 > v29)
                {
                  v262 = v29;
                  v263 = v253;
                  v264 = v29;
                  do
                  {
                    v265 = *v263++;
                    v266 = vcvtq_f64_f32(v265);
                    v267 = -v266.f64[1];
                    v268 = vmulq_n_f64(v266, v38[v264 + 1]);
                    v269 = vdupq_lane_s64(*&v266.f64[0], 0);
                    v269.f64[0] = v267;
                    *&v38[v262] = vrev64_s32(vcvt_f32_f64(vmlaq_n_f64(v268, v269, v38[v262])));
                    v264 += 2;
                    v262 += 2;
                  }

                  while (v264 < v33);
                }

                v34 = (v34 + v35);
                v36 = (v36 + v37);
                v38 = (v38 + v39);
                v253 = (v253 + v37);
                --v28;
              }

              while (v28);
              goto LABEL_279;
            }
          }

          *(v241 + v39 * (v28 - 1)) = *(v241 + v39 * (v28 - 1)) * *(v237 + v37 * (v28 - 1));
        }
      }

      if (!v28)
      {
        goto LABEL_279;
      }

      goto LABEL_182;
    }

    if (v423 != v404)
    {
      if ((v30 & 1) == 0)
      {
        *v404 = *v423 * *v413;
        v136 = v28 - 2;
        if (v28 == 2)
        {
          goto LABEL_119;
        }

        v137 = 1;
        v138 = v34;
        v139 = v36;
        v140 = v38;
        do
        {
          v141 = *(v138 + v35);
          v138 = (v138 + 2 * v35);
          v142 = *v138;
          v143 = *(v139 + v37);
          v139 = (v139 + 2 * v37);
          v144 = *v139;
          v145 = v141 * v143 - v142 * v144;
          v146 = v142 * v143;
          *&v143 = v145;
          *(v140 + v39) = *&v143;
          *&v141 = v146 + v141 * v144;
          v140 = (v140 + 2 * v39);
          *v140 = *&v141;
          v137 += 2;
        }

        while (v137 <= v136);
        if ((v28 & 1) == 0)
        {
LABEL_119:
          *(v38 + v39 * (v28 - 1)) = *(v34 + v35 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
        }

        if ((v27 & 1) == 0)
        {
          v147 = &v34[v27];
          v149 = *(v147 - 1);
          v148 = v147 - 1;
          v150 = v149;
          v151 = &v36[v27];
          v153 = *(v151 - 1);
          v152 = v151 - 1;
          v154 = &v38[v27];
          *(v154 - 1) = v150 * v153;
          v155 = v154 - 1;
          if (v28 != 2)
          {
            v156 = 2 * v39;
            v157 = v38 + v39 - 4;
            v158 = v36 + v37 - 4;
            v159 = v38 + 2 * v39 - 4;
            v160 = v36 + 2 * v37 - 4;
            v161 = v34 + 2 * v35 - 4;
            v162 = 2 * v37;
            v163 = 2 * v35;
            v164 = v34 + v35 - 4;
            v165 = 1;
            do
            {
              v166 = *(v164 + 4 * v27);
              v167 = *(v161 + 4 * v27);
              v168 = *(v158 + 4 * v27);
              v169 = *(v160 + 4 * v27);
              v170 = v166 * v168 - v167 * v169;
              v171 = v167 * v168;
              *&v168 = v170;
              *(v157 + 4 * v27) = LODWORD(v168);
              *&v166 = v171 + v166 * v169;
              *(v159 + 4 * v27) = LODWORD(v166);
              v165 += 2;
              v157 += v156;
              v158 += v162;
              v159 += v156;
              v160 += v162;
              v161 += v163;
              v164 += v163;
            }

            while (v165 <= v136);
            if (v28)
            {
              v31 = 1;
LABEL_127:
              if (v22)
              {
                v172 = 0;
              }

              else
              {
                v172 = v23;
              }

              do
              {
                if (v172)
                {
                  *v38 = *v34 * *v36;
                  if (v33 > v29)
                  {
                    v173 = v29;
                    v174 = v29;
                    do
                    {
                      v175.f64[0] = v34[v173 + 1];
                      v176 = vcvtq_f64_f32(*&v36[v173]);
                      v175.f64[1] = -v175.f64[0];
                      v177 = vmulq_f64(v175, v176);
                      *&v38[v173] = vcvt_f32_f64(vmlaq_n_f64(vextq_s8(v177, v177, 8uLL), v176, v34[v173]));
                      v174 += 2;
                      v173 += 2;
                    }

                    while (v174 < v33);
                  }

                  if ((v172 & v31) != 0)
                  {
                    v38[v33] = v34[v33] * v36[v33];
                  }
                }

                else if (v33 > v29)
                {
                  v178 = v29;
                  v179 = v29;
                  do
                  {
                    v180.f64[0] = v34[v178 + 1];
                    v181 = vcvtq_f64_f32(*&v36[v178]);
                    v180.f64[1] = -v180.f64[0];
                    v182 = vmulq_f64(v180, v181);
                    *&v38[v178] = vcvt_f32_f64(vmlaq_n_f64(vextq_s8(v182, v182, 8uLL), v181, v34[v178]));
                    v179 += 2;
                    v178 += 2;
                  }

                  while (v179 < v33);
                }

                v34 = (v34 + v35);
                v36 = (v36 + v37);
                v38 = (v38 + v39);
                --v28;
              }

              while (v28);
              goto LABEL_279;
            }
          }

          *(v155 + v39 * (v28 - 1)) = *(v148 + v35 * (v28 - 1)) * *(v152 + v37 * (v28 - 1));
        }
      }

      if (!v28)
      {
        goto LABEL_279;
      }

      goto LABEL_127;
    }

    if ((v30 & 1) == 0)
    {
      *v404 = *v404 * *v413;
      v309 = v28 - 2;
      if (v28 == 2)
      {
        goto LABEL_229;
      }

      v310 = 1;
      v311 = v38;
      v312 = v36;
      do
      {
        v313 = *(v311 + v39);
        v314 = *(v311 + 2 * v39);
        v315 = *(v312 + v37);
        v312 = (v312 + 2 * v37);
        v316 = *v312;
        v317 = v313 * v315 - v314 * v316;
        v318 = v314 * v315;
        *&v315 = v317;
        *(v311 + v39) = *&v315;
        *&v313 = v318 + v313 * v316;
        *(v311 + 2 * v39) = *&v313;
        v310 += 2;
        v311 = (v311 + 2 * v39);
      }

      while (v310 <= v309);
      if ((v28 & 1) == 0)
      {
LABEL_229:
        *(v38 + v39 * (v28 - 1)) = *(v38 + v39 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
      }

      if ((v27 & 1) == 0)
      {
        v319 = &v36[v27];
        v321 = *(v319 - 1);
        v320 = v319 - 1;
        v322 = v321;
        v323 = &v38[v27];
        v325 = *(v323 - 1);
        v324 = v323 - 1;
        *v324 = v325 * v322;
        if (v28 != 2)
        {
          v326 = 1;
          v327 = v324;
          v328 = v320;
          do
          {
            v329 = *(v327 + v39);
            v330 = *(v327 + 2 * v39);
            v331 = *(v328 + v37);
            v328 = (v328 + 2 * v37);
            v332 = *v328;
            v333 = v329 * v331 - v330 * v332;
            v334 = v330 * v331;
            *&v331 = v333;
            *(v327 + v39) = *&v331;
            *&v329 = v334 + v329 * v332;
            *(v327 + 2 * v39) = *&v329;
            v326 += 2;
            v327 = (v327 + 2 * v39);
          }

          while (v326 <= v309);
          if (v28)
          {
            v31 = 1;
LABEL_237:
            if (v22)
            {
              v335 = 0;
            }

            else
            {
              v335 = v23;
            }

            v336 = &v36[v29];
            do
            {
              if (v335)
              {
                *v38 = *v34 * *v36;
                if (v33 > v29)
                {
                  v337 = v29;
                  v338 = v336;
                  v339 = v29;
                  do
                  {
                    v340.f64[0] = v38[v339 + 1];
                    v341 = *v338++;
                    v342 = vcvtq_f64_f32(v341);
                    v340.f64[1] = -v340.f64[0];
                    v343 = vmulq_f64(v340, v342);
                    *&v38[v337] = vcvt_f32_f64(vmlaq_n_f64(vextq_s8(v343, v343, 8uLL), v342, v38[v337]));
                    v339 += 2;
                    v337 += 2;
                  }

                  while (v339 < v33);
                }

                if ((v335 & v31) != 0)
                {
                  v38[v33] = v34[v33] * v36[v33];
                }
              }

              else if (v33 > v29)
              {
                v344 = v29;
                v345 = v336;
                v346 = v29;
                do
                {
                  v347.f64[0] = v38[v346 + 1];
                  v348 = *v345++;
                  v349 = vcvtq_f64_f32(v348);
                  v347.f64[1] = -v347.f64[0];
                  v350 = vmulq_f64(v347, v349);
                  *&v38[v344] = vcvt_f32_f64(vmlaq_n_f64(vextq_s8(v350, v350, 8uLL), v349, v38[v344]));
                  v346 += 2;
                  v344 += 2;
                }

                while (v346 < v33);
              }

              v34 = (v34 + v35);
              v36 = (v36 + v37);
              v38 = (v38 + v39);
              v336 = (v336 + v37);
              --v28;
            }

            while (v28);
            goto LABEL_279;
          }
        }

        *(v324 + v39 * (v28 - 1)) = *(v324 + v39 * (v28 - 1)) * *(v320 + v37 * (v28 - 1));
      }
    }

    if (!v28)
    {
      goto LABEL_279;
    }

    goto LABEL_237;
  }

  if (a5)
  {
    if (v423 != v404)
    {
      if ((v30 & 1) == 0)
      {
        *v404 = *v423 * *v413;
        v89 = v28 - 2;
        if (v28 == 2)
        {
          goto LABEL_91;
        }

        v90 = 1;
        v91 = v34;
        v92 = v36;
        v93 = v38;
        do
        {
          v94 = *(v91 + v35);
          v91 = (v91 + 2 * v35);
          v95 = *(v92 + v37);
          v92 = (v92 + 2 * v37);
          v96 = *v91 * *v92 + v94 * v95;
          v97 = *v91 * v95 - v94 * *v92;
          *(v93 + v39) = v96;
          v93 = (v93 + 2 * v39);
          *v93 = v97;
          v90 += 2;
        }

        while (v90 <= v89);
        if ((v28 & 1) == 0)
        {
LABEL_91:
          *(v38 + v39 * (v28 - 1)) = *(v34 + v35 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
        }

        if ((v27 & 1) == 0)
        {
          v98 = &v34[2 * v27];
          v100 = *(v98 - 1);
          v99 = v98 - 2;
          v101 = v100;
          v102 = &v36[2 * v27];
          v104 = *(v102 - 1);
          v103 = v102 - 2;
          v105 = &v38[2 * v27];
          *(v105 - 1) = v101 * v104;
          v106 = v105 - 2;
          if (v28 != 2)
          {
            v107 = 2 * v39;
            v108 = v38 + v39 - 8;
            v109 = v36 + v37 - 8;
            v110 = v38 + 2 * v39 - 8;
            v111 = v36 + 2 * v37 - 8;
            v112 = v34 + 2 * v35 - 8;
            v113 = 2 * v37;
            v114 = 2 * v35;
            v115 = v34 + v35 - 8;
            v116 = 1;
            do
            {
              v117 = *(v115 + 8 * v27);
              v118 = *(v112 + 8 * v27);
              v119 = *(v109 + 8 * v27);
              v120 = *(v111 + 8 * v27);
              *(v108 + 8 * v27) = v118 * v120 + v117 * v119;
              *(v110 + 8 * v27) = v118 * v119 - v117 * v120;
              v116 += 2;
              v108 += v107;
              v109 += v113;
              v110 += v107;
              v111 += v113;
              v112 += v114;
              v115 += v114;
            }

            while (v116 <= v89);
            if (v28)
            {
              v31 = 1;
LABEL_99:
              if (v22)
              {
                v121 = 0;
              }

              else
              {
                v121 = v23;
              }

              do
              {
                if (v121)
                {
                  *v38 = *v34 * *v36;
                  if (v33 > v29)
                  {
                    v122 = 8 * v29 + 8;
                    v123 = v29;
                    do
                    {
                      v124 = *(v34 + v122 - 8);
                      v125 = *(v34 + v122);
                      v126 = *(v36 + v122 - 8);
                      v127 = *(v36 + v122);
                      v128 = (v38 + v122);
                      *(v128 - 1) = v125 * v127 + v124 * v126;
                      *v128 = v125 * v126 - v124 * v127;
                      v123 += 2;
                      v122 += 16;
                    }

                    while (v123 < v33);
                  }

                  if ((v121 & v31) != 0)
                  {
                    *&v38[2 * v33] = *&v34[2 * v33] * *&v36[2 * v33];
                  }
                }

                else if (v33 > v29)
                {
                  v129 = 8 * v29 + 8;
                  v130 = v29;
                  do
                  {
                    v131 = *(v34 + v129 - 8);
                    v132 = *(v34 + v129);
                    v133 = *(v36 + v129 - 8);
                    v134 = *(v36 + v129);
                    v135 = (v38 + v129);
                    *(v135 - 1) = v132 * v134 + v131 * v133;
                    *v135 = v132 * v133 - v131 * v134;
                    v130 += 2;
                    v129 += 16;
                  }

                  while (v130 < v33);
                }

                v34 = (v34 + v35);
                v36 = (v36 + v37);
                v38 = (v38 + v39);
                --v28;
              }

              while (v28);
              goto LABEL_279;
            }
          }

          *(v106 + v39 * (v28 - 1)) = *(v99 + v35 * (v28 - 1)) * *(v103 + v37 * (v28 - 1));
        }
      }

      if (!v28)
      {
        goto LABEL_279;
      }

      goto LABEL_99;
    }

    if ((v30 & 1) == 0)
    {
      *v404 = *v404 * *v413;
      v270 = v28 - 2;
      if (v28 == 2)
      {
        goto LABEL_202;
      }

      v271 = 1;
      v272 = v38;
      v273 = v36;
      do
      {
        v274 = *(v272 + v39);
        v275 = *(v272 + 2 * v39);
        v276 = *(v273 + v37);
        v273 = (v273 + 2 * v37);
        v277 = v275 * *v273 + v274 * v276;
        v278 = v275 * v276 - v274 * *v273;
        *(v272 + v39) = v277;
        *(v272 + 2 * v39) = v278;
        v271 += 2;
        v272 = (v272 + 2 * v39);
      }

      while (v271 <= v270);
      if ((v28 & 1) == 0)
      {
LABEL_202:
        *(v38 + v39 * (v28 - 1)) = *(v38 + v39 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
      }

      if ((v27 & 1) == 0)
      {
        v279 = &v36[2 * v27];
        v281 = *(v279 - 1);
        v280 = (v279 - 2);
        v282 = v281;
        v283 = &v38[2 * v27];
        v285 = *(v283 - 1);
        v284 = (v283 - 2);
        *v284 = v285 * v282;
        if (v28 != 2)
        {
          v286 = 1;
          v287 = v284;
          v288 = v280;
          do
          {
            v289 = *(v287 + v39);
            v290 = *(v287 + 2 * v39);
            v291 = *(v288 + v37);
            v288 = (v288 + 2 * v37);
            v292 = v290 * *v288 + v289 * v291;
            v293 = v290 * v291 - v289 * *v288;
            *(v287 + v39) = v292;
            *(v287 + 2 * v39) = v293;
            v286 += 2;
            v287 = (v287 + 2 * v39);
          }

          while (v286 <= v270);
          if (v28)
          {
            v31 = 1;
LABEL_210:
            if (v22)
            {
              v294 = 0;
            }

            else
            {
              v294 = v23;
            }

            do
            {
              if (v294)
              {
                *v38 = *v34 * *v36;
                if (v33 > v29)
                {
                  v295 = 8 * v29 + 8;
                  v296 = v29;
                  do
                  {
                    v297 = (v38 + v295);
                    v298 = *(v38 + v295 - 8);
                    v299 = *(v38 + v295);
                    v300 = *(v36 + v295 - 8);
                    v301 = *(v36 + v295);
                    *(v297 - 1) = v299 * v301 + v298 * v300;
                    *v297 = v299 * v300 - v298 * v301;
                    v296 += 2;
                    v295 += 16;
                  }

                  while (v296 < v33);
                }

                if ((v294 & v31) != 0)
                {
                  *&v38[2 * v33] = *&v34[2 * v33] * *&v36[2 * v33];
                }
              }

              else if (v33 > v29)
              {
                v302 = 8 * v29 + 8;
                v303 = v29;
                do
                {
                  v304 = (v38 + v302);
                  v305 = *(v38 + v302 - 8);
                  v306 = *(v38 + v302);
                  v307 = *(v36 + v302 - 8);
                  v308 = *(v36 + v302);
                  *(v304 - 1) = v306 * v308 + v305 * v307;
                  *v304 = v306 * v307 - v305 * v308;
                  v303 += 2;
                  v302 += 16;
                }

                while (v303 < v33);
              }

              v34 = (v34 + v35);
              v36 = (v36 + v37);
              v38 = (v38 + v39);
              --v28;
            }

            while (v28);
            goto LABEL_279;
          }
        }

        *(v284 + v39 * (v28 - 1)) = *(v284 + v39 * (v28 - 1)) * *(v280 + v37 * (v28 - 1));
      }
    }

    if (!v28)
    {
      goto LABEL_279;
    }

    goto LABEL_210;
  }

  if (v423 != v404)
  {
    if ((v30 & 1) == 0)
    {
      *v404 = *v423 * *v413;
      v183 = v28 - 2;
      if (v28 == 2)
      {
        goto LABEL_147;
      }

      v184 = 1;
      v185 = v34;
      v186 = v36;
      v187 = v38;
      do
      {
        v188 = *(v185 + v35);
        v185 = (v185 + 2 * v35);
        v189 = *(v186 + v37);
        v186 = (v186 + 2 * v37);
        v190 = v188 * v189 - *v185 * *v186;
        v191 = *v185 * v189 + v188 * *v186;
        *(v187 + v39) = v190;
        v187 = (v187 + 2 * v39);
        *v187 = v191;
        v184 += 2;
      }

      while (v184 <= v183);
      if ((v28 & 1) == 0)
      {
LABEL_147:
        *(v38 + v39 * (v28 - 1)) = *(v34 + v35 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
      }

      if ((v27 & 1) == 0)
      {
        v192 = &v34[2 * v27];
        v194 = *(v192 - 1);
        v193 = v192 - 2;
        v195 = v194;
        v196 = &v36[2 * v27];
        v198 = *(v196 - 1);
        v197 = v196 - 2;
        v199 = &v38[2 * v27];
        *(v199 - 1) = v195 * v198;
        v200 = v199 - 2;
        if (v28 != 2)
        {
          v201 = 2 * v39;
          v202 = v38 + v39 - 8;
          v203 = v36 + v37 - 8;
          v204 = v38 + 2 * v39 - 8;
          v205 = v36 + 2 * v37 - 8;
          v206 = v34 + 2 * v35 - 8;
          v207 = 2 * v37;
          v208 = 2 * v35;
          v209 = v34 + v35 - 8;
          v210 = 1;
          do
          {
            v211 = *(v209 + 8 * v27);
            v212 = *(v206 + 8 * v27);
            v213 = *(v203 + 8 * v27);
            v214 = *(v205 + 8 * v27);
            *(v202 + 8 * v27) = v211 * v213 - v212 * v214;
            *(v204 + 8 * v27) = v212 * v213 + v211 * v214;
            v210 += 2;
            v202 += v201;
            v203 += v207;
            v204 += v201;
            v205 += v207;
            v206 += v208;
            v209 += v208;
          }

          while (v210 <= v183);
          if (v28)
          {
            v31 = 1;
LABEL_155:
            if (v22)
            {
              v215 = 0;
            }

            else
            {
              v215 = v23;
            }

            do
            {
              if (v215)
              {
                *v38 = *v34 * *v36;
                if (v33 > v29)
                {
                  v216 = 2 * v29;
                  v217 = v29;
                  do
                  {
                    v218.f64[0] = *&v34[v216 + 2];
                    v219 = *&v36[v216];
                    v218.f64[1] = -v218.f64[0];
                    v220 = vmulq_f64(v219, v218);
                    *&v38[v216] = vmlaq_n_f64(vextq_s8(v220, v220, 8uLL), v219, *&v34[v216]);
                    v217 += 2;
                    v216 += 4;
                  }

                  while (v217 < v33);
                }

                if ((v215 & v31) != 0)
                {
                  *&v38[2 * v33] = *&v34[2 * v33] * *&v36[2 * v33];
                }
              }

              else if (v33 > v29)
              {
                v221 = 2 * v29;
                v222 = v29;
                do
                {
                  v223.f64[0] = *&v34[v221 + 2];
                  v224 = *&v36[v221];
                  v223.f64[1] = -v223.f64[0];
                  v225 = vmulq_f64(v224, v223);
                  *&v38[v221] = vmlaq_n_f64(vextq_s8(v225, v225, 8uLL), v224, *&v34[v221]);
                  v222 += 2;
                  v221 += 4;
                }

                while (v222 < v33);
              }

              v34 = (v34 + v35);
              v36 = (v36 + v37);
              v38 = (v38 + v39);
              --v28;
            }

            while (v28);
            goto LABEL_279;
          }
        }

        *(v200 + v39 * (v28 - 1)) = *(v193 + v35 * (v28 - 1)) * *(v197 + v37 * (v28 - 1));
      }
    }

    if (!v28)
    {
      goto LABEL_279;
    }

    goto LABEL_155;
  }

  if (v30)
  {
    goto LABEL_264;
  }

  *v404 = *v404 * *v413;
  v351 = v28 - 2;
  if (v28 == 2)
  {
    goto LABEL_257;
  }

  v352 = 1;
  v353 = v38;
  v354 = v36;
  do
  {
    v355 = *(v353 + v39);
    v356 = *(v353 + 2 * v39);
    v357 = *(v354 + v37);
    v354 = (v354 + 2 * v37);
    v358 = v355 * v357 - v356 * *v354;
    v359 = v356 * v357 + v355 * *v354;
    *(v353 + v39) = v358;
    *(v353 + 2 * v39) = v359;
    v352 += 2;
    v353 = (v353 + 2 * v39);
  }

  while (v352 <= v351);
  if ((v28 & 1) == 0)
  {
LABEL_257:
    *(v38 + v39 * (v28 - 1)) = *(v38 + v39 * (v28 - 1)) * *(v36 + v37 * (v28 - 1));
  }

  if (v27)
  {
    goto LABEL_264;
  }

  v360 = &v36[2 * v27];
  v362 = *(v360 - 1);
  v361 = (v360 - 2);
  v363 = v362;
  v364 = &v38[2 * v27];
  v366 = *(v364 - 1);
  v365 = (v364 - 2);
  *v365 = v366 * v363;
  if (v28 == 2)
  {
    goto LABEL_263;
  }

  v367 = 1;
  v368 = v365;
  v369 = v361;
  do
  {
    v370 = *(v368 + v39);
    v371 = *(v368 + 2 * v39);
    v372 = *(v369 + v37);
    v369 = (v369 + 2 * v37);
    v373 = v370 * v372 - v371 * *v369;
    v374 = v371 * v372 + v370 * *v369;
    *(v368 + v39) = v373;
    *(v368 + 2 * v39) = v374;
    v367 += 2;
    v368 = (v368 + 2 * v39);
  }

  while (v367 <= v351);
  if ((v28 & 1) == 0)
  {
LABEL_263:
    *(v365 + v39 * (v28 - 1)) = *(v365 + v39 * (v28 - 1)) * *(v361 + v37 * (v28 - 1));
LABEL_264:
    if (!v28)
    {
      goto LABEL_279;
    }

    goto LABEL_265;
  }

  v31 = 1;
LABEL_265:
  if (v22)
  {
    v375 = 0;
  }

  else
  {
    v375 = v23;
  }

  v376 = &v36[2 * v29];
  do
  {
    if (v375)
    {
      *v38 = *v34 * *v36;
      if (v33 > v29)
      {
        v377 = 2 * v29;
        v378 = v376;
        v379 = v29;
        do
        {
          v380.f64[0] = *&v38[2 * v379 + 2];
          v381 = *v378++;
          v380.f64[1] = -v380.f64[0];
          v382 = vmulq_f64(v381, v380);
          *&v38[v377] = vmlaq_n_f64(vextq_s8(v382, v382, 8uLL), v381, *&v38[v377]);
          v379 += 2;
          v377 += 4;
        }

        while (v379 < v33);
      }

      if ((v375 & v31) != 0)
      {
        *&v38[2 * v33] = *&v34[2 * v33] * *&v36[2 * v33];
      }
    }

    else if (v33 > v29)
    {
      v383 = 2 * v29;
      v384 = v376;
      v385 = v29;
      do
      {
        v386.f64[0] = *&v38[2 * v385 + 2];
        v387 = *v384++;
        v386.f64[1] = -v386.f64[0];
        v388 = vmulq_f64(v387, v386);
        *&v38[v383] = vmlaq_n_f64(vextq_s8(v388, v388, 8uLL), v387, *&v38[v383]);
        v385 += 2;
        v383 += 4;
      }

      while (v385 < v33);
    }

    v34 = (v34 + v35);
    v36 = (v36 + v37);
    v38 = (v38 + v39);
    v376 = (v376 + v37);
    --v28;
  }

  while (v28);
LABEL_279:
  if (v405 && atomic_fetch_add(v405, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v403);
  }

  v404 = 0;
  v406 = 0;
  v407 = 0;
  v408 = 0;
  if (SHIDWORD(v403[0]) >= 1)
  {
    v389 = 0;
    v390 = v409;
    do
    {
      *(v390 + 4 * v389++) = 0;
    }

    while (v389 < SHIDWORD(v403[0]));
  }

  v405 = 0;
  if (v410)
  {
    v391 = v410 == &v411;
  }

  else
  {
    v391 = 1;
  }

  if (!v391)
  {
    free(v410);
  }

  if (v414 && atomic_fetch_add(v414, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v412);
  }

  v413 = 0;
  *(&v414 + 1) = 0;
  v415 = 0uLL;
  if (SHIDWORD(v412[0]) >= 1)
  {
    v392 = 0;
    v393 = v417;
    do
    {
      v393[v392++] = 0;
    }

    while (v392 < SHIDWORD(v412[0]));
  }

  *&v414 = 0;
  if (v418)
  {
    v394 = v418 == &v419;
  }

  else
  {
    v394 = 1;
  }

  if (!v394)
  {
    free(v418);
  }

  if (v424 && atomic_fetch_add(v424, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v420);
  }

  v423 = 0;
  v425 = 0;
  v426 = 0;
  v427 = 0;
  if (SHIDWORD(v420) >= 1)
  {
    v395 = 0;
    v396 = v428;
    do
    {
      v396[v395++] = 0;
    }

    while (v395 < SHIDWORD(v420));
  }

  v424 = 0;
  if (v429)
  {
    v397 = v429 == &v430;
  }

  else
  {
    v397 = 1;
  }

  if (!v397)
  {
    free(v429);
  }
}

void sub_22D2201FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *a9, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, void *__p, uint64_t a25, int a26, __int16 a27, char a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  cv::Exception::~Exception(&a30);
  if (a29 < 0)
  {
    operator delete(__p);
  }

  if (*(v45 - 89) < 0)
  {
    operator delete(*(v45 - 112));
  }

  if (a14 < 0)
  {
    operator delete(a9);
  }

  cv::Mat::~Mat(&a45);
  cv::Mat::~Mat((v45 - 208));
  _Unwind_Resume(a1);
}

uint64_t cv::getOptimalDFTSize(cv *this)
{
  if (this > 0x7EB4959F)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = 0;
  v3 = 1650;
  do
  {
    v4 = (v3 + v2) >> 1;
    if (cv::optimalDFTSizeTab[v4] >= this)
    {
      v3 = (v3 + v2) >> 1;
    }

    else
    {
      v2 = v4 + 1;
    }
  }

  while (v2 < v3);
  return cv::optimalDFTSizeTab[v3];
}

void cv::DFT<float>(float32x2_t *a1, float32x2_t *a2, int a3, int a4, int *a5, int *a6, uint64_t a7, int a8, double a9, float32x2_t *a10, __int16 a11)
{
  v15 = a4;
  v16 = a3;
  v17 = a2;
  if (a8 == a3)
  {
    v18 = 1;
  }

  else if (a8 == 2 * a3)
  {
    v18 = 2;
  }

  else
  {
    v18 = a8 / a3;
  }

  if (a2 == a1)
  {
    if ((a11 & 0x100) == 0)
    {
      if (*a5 != a5[a4 - 1])
      {
        std::string::basic_string[abi:ne200100]<0>(&v343, "factors[0] == factors[nf-1]");
        std::string::basic_string[abi:ne200100]<0>(&v342, "DFT");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/dxt.cpp");
        v25 = cv::Exception::Exception(v344, -215, &v343, &v342, &__p, 599);
        cv::error(v25, v26);
      }

      if (a4 == 1)
      {
        if ((a3 & 3) == 0 && a3 >> 1 >= 1)
        {
          v27 = 0;
          v28 = a3 >> 1;
          v29 = &a2[v28 + 1];
          do
          {
            v30 = *a6;
            if (v30 >= v28)
            {
              cv::DFT<float>();
            }

            v31 = &a2[v27];
            v32 = v31[1];
            v33 = &a2[(a3 >> 1) + v30];
            v31[1] = *v33;
            *v33 = v32;
            if (v27 < v30)
            {
              v34 = a2[v27];
              a2[v27] = a2[v30];
              a2[v30] = v34;
              v35 = v29[v27];
              v29[v27] = v33[1];
              v33[1] = v35;
            }

            v27 += 2;
            a6 += 2 * v18;
          }

          while (v27 < v28);
        }
      }

      else if (a3 >= 1)
      {
        for (i = 0; i != a3; ++i)
        {
          v49 = *a6;
          if (v49 >= a3)
          {
            cv::DFT<float>();
          }

          if (i < v49)
          {
            v50 = a2[i];
            a2[i] = a2[v49];
            a2[v49] = v50;
          }

          a6 += v18;
        }
      }
    }

    if (a11)
    {
      if (a3 >= 2)
      {
        v51 = 0;
        v52 = &a2[1] + 1;
        do
        {
          v53 = -*v52;
          *(v52 - 2) = -*(v52 - 2);
          *v52 = v53;
          v52 += 4;
          v51 += 2;
        }

        while (v51 <= (a3 - 2));
      }

      else
      {
        LODWORD(v51) = 0;
      }

      if (v51 < a3)
      {
        a2[a3 - 1].f32[1] = -a2[a3 - 1].f32[1];
      }
    }
  }

  else
  {
    if ((a11 & 0x100) != 0)
    {
      cv::DFT<float>();
    }

    v19 = a3 - 2;
    v20 = 0;
    if (a11)
    {
      if (a3 >= 2)
      {
        v36 = a2 + 1;
        do
        {
          v37 = *a6;
          v38 = a6[v18];
          if (v37 >= a3 || v38 >= a3)
          {
            cv::DFT<float>();
          }

          a6 += 2 * v18;
          v40 = &a1[v37];
          v41 = -v40->f32[1];
          v36[-1].i32[0] = v40->i32[0];
          v36[-1].f32[1] = v41;
          v42 = &a1[v38];
          v43 = -v42->f32[1];
          v36->i32[0] = v42->i32[0];
          v36->f32[1] = v43;
          v36 += 2;
          v20 += 2;
        }

        while (v19 >= v20);
      }

      if (v20 < a3)
      {
        v44 = &a1[a3];
        v45 = v44[-1].i32[0];
        v46 = -v44[-1].f32[1];
        v47 = &a2[v20];
        v47->i32[0] = v45;
        v47->f32[1] = v46;
      }
    }

    else
    {
      if (a3 >= 2)
      {
        v21 = a2 + 1;
        do
        {
          v22 = *a6;
          v23 = a6[v18];
          if (v22 >= a3 || v23 >= a3)
          {
            cv::DFT<float>();
          }

          a6 += 2 * v18;
          v21[-1] = a1[v22];
          *v21 = a1[v23];
          v21 += 2;
          v20 += 2;
        }

        while (v19 >= v20);
      }

      if (v20 < a3)
      {
        a2[a3 - 1] = a1[a3 - 1];
      }
    }
  }

  v54 = *a5;
  if (*a5)
  {
    v322 = a8;
    v57 = 1;
  }

  else
  {
    if (v54 >= 4 && (cv::checkHardwareSupport(4), v54 = *a5, *a5 >= 4))
    {
      v333 = v15;
      v58 = v16;
      v335 = a7 + 4;
      v59 = 1;
      v60 = 4;
      v56 = a8;
      v337 = *a5;
      do
      {
        v339 = v60;
        v56 /= 4;
        if (v16 >= 1)
        {
          v61 = 0;
          v62 = 8 * v339;
          v63 = &v17[v59];
          v64 = &v17[2 * v59];
          v65 = &v17[3 * v59];
          v66 = v17;
          do
          {
            v67 = &v17[v61];
            v68 = &v67[4 * v59];
            v69 = v68[1];
            v70 = &v68[2 * v59];
            v71 = v70[1];
            v72 = *v68 + *v70;
            v73 = v69 + v71;
            v74 = v69 - v71;
            v75 = *v70 - *v68;
            v76 = v67[1];
            v77 = &v67[2 * v59];
            v78 = v77[1];
            v79 = *v67 + *v77;
            v80 = v76 + v78;
            v81 = *v67 - *v77;
            v82 = v76 - v78;
            *v67 = v72 + v79;
            v67[1] = v73 + v80;
            *v68 = v79 - v72;
            v68[1] = v80 - v73;
            *v77 = v74 + v81;
            v77[1] = v75 + v82;
            *v70 = v81 - v74;
            v70[1] = v82 - v75;
            if (v59 >= 2)
            {
              v83 = 0;
              v84 = (v335 + 24 * v56);
              v85 = (v335 + 16 * v56);
              v86 = (v335 + 8 * v56);
              do
              {
                v87 = &v66[v83 / 8];
                v88 = &v64[v83 / 8];
                v89 = &v63[v83 / 8];
                v90 = v63[v83 / 8 + 1].f32[0];
                v91 = v63[v83 / 8 + 1].f32[1];
                v92 = *(v85 - 1);
                v93 = (v90 * v92) - (v91 * *v85);
                v94 = (v92 * v91) + (v90 * *v85);
                v95 = v64[v83 / 8 + 1].f32[0];
                v96 = v64[v83 / 8 + 1].f32[1];
                v97 = *(v86 - 1);
                v98 = (v96 * v97) + (v95 * *v86);
                v99 = (v95 * v97) - (v96 * *v86);
                v100 = &v65[v83 / 8];
                v101 = v65[v83 / 8 + 1].f32[0];
                v102 = v65[v83 / 8 + 1].f32[1];
                v103 = *(v84 - 1);
                v104 = (v102 * v103) + (v101 * *v84);
                v105 = (v101 * v103) - (v102 * *v84);
                v106 = v99 + v105;
                v107 = v98 + v104;
                v108 = v98 - v104;
                v109 = v105 - v99;
                v110 = v66[v83 / 8 + 1].f32[0];
                v111 = v66[v83 / 8 + 1].f32[1];
                v112 = v93 + v110;
                v113 = v94 + v111;
                v114 = v110 - v93;
                v115 = v111 - v94;
                v87[1].f32[0] = v112 + v106;
                v87[1].f32[1] = v113 + v107;
                v88[1].f32[0] = v112 - v106;
                v88[1].f32[1] = v113 - v107;
                v89[1].f32[0] = v114 + v108;
                v89[1].f32[1] = v109 + v115;
                v100[1].f32[0] = v114 - v108;
                v100[1].f32[1] = v115 - v109;
                v86 += 2 * v56;
                v83 += 8;
                v85 += 4 * v56;
                v84 += 6 * v56;
              }

              while (8 * v59 - 8 != v83);
            }

            v61 += v339;
            v66 = (v66 + v62);
            v63 = (v63 + v62);
            v64 = (v64 + v62);
            v65 = (v65 + v62);
            v17 = a2;
          }

          while (v61 < v58);
        }

        v59 = v339;
        v60 = 4 * v339;
        v54 = v337;
        v16 = a3;
      }

      while (4 * v339 <= v337);
      v55 = v339;
      v15 = v333;
    }

    else
    {
      v55 = 1;
      v56 = a8;
    }

    while (v55 < v54)
    {
      v116 = v55;
      v55 *= 2;
      v56 /= 2;
      if (v16 >= 1)
      {
        v117 = 0;
        v118 = 2 * v116;
        v119 = v17;
        do
        {
          v120 = &v17[v117];
          v121 = &v120[2 * v116];
          v122 = v120[1];
          v123 = v121[1];
          v124 = *v120 - *v121;
          *v120 = *v120 + *v121;
          v120[1] = v122 + v123;
          *v121 = v124;
          v121[1] = v122 - v123;
          if (v116 >= 2)
          {
            v125 = v116 - 1;
            v126 = v119;
            v127 = (a7 + 4 + 8 * v56);
            v128 = v119;
            do
            {
              v129 = &v126[v118];
              v130 = v126[v118 + 2];
              v131 = v126[v118 + 3];
              v132 = *(v127 - 1);
              v133 = (v130 * v132) - (v131 * *v127);
              v134 = (v130 * *v127) + (v131 * v132);
              v135 = v128[2];
              v128 += 2;
              v136 = v126[3];
              *v128 = v135 + v133;
              v126[3] = v136 + v134;
              v129[2] = v135 - v133;
              v129[3] = v136 - v134;
              v127 += 2 * v56;
              v126 = v128;
              --v125;
            }

            while (v125);
          }

          v117 += v55;
          v119 += v55;
        }

        while (v117 < v16);
      }
    }

    v322 = v56;
    v57 = v55;
  }

  v137.f32[0] = a9;
  v138 = (v54 & 1) == 0;
  if (v138 < v15)
  {
    v331 = v16;
    v324 = a7 + 4;
    v316 = v17 + 4;
    v317 = v15;
    do
    {
      v320 = v138;
      v139 = a5[v138];
      v321 = v139 * v57;
      v322 /= v139;
      if (v139 == 3)
      {
        if (v16 >= 1)
        {
          v202 = 0;
          v203 = 8 * v321;
          v204 = &v17[2 * v57];
          v205 = &v17[v57];
          v206 = v17;
          do
          {
            v207 = &v17[v202];
            v208 = &v207[2 * v57];
            v209 = &v207[4 * v57];
            v210 = v208[1];
            v211 = v209[1];
            v212 = *v208 + *v209;
            v213 = v210 + v211;
            v214 = *v207;
            v215 = v207[1];
            v216 = (v210 - v211) * 0.86603;
            v217 = (*v209 - *v208) * 0.86603;
            *v207 = v212 + *v207;
            v207[1] = v213 + v215;
            v218 = v214 + (v212 * -0.5);
            v219 = v215 + (v213 * -0.5);
            *v208 = v218 + v216;
            v208[1] = v217 + v219;
            *v209 = v218 - v216;
            v209[1] = v219 - v217;
            if (v57 >= 2)
            {
              v220 = 0;
              v221 = (v324 + 16 * v322);
              v222 = (v324 + 8 * v322);
              do
              {
                v223 = &v206[v220 / 8];
                v224 = &v205[v220 / 8];
                v225 = v205[v220 / 8 + 1].f32[0];
                v226 = v205[v220 / 8 + 1].f32[1];
                v227 = *(v222 - 1);
                v228 = -(v226 * *v222);
                v229 = v227 * v226;
                v230 = v228 + (v225 * v227);
                v231 = &v204[v220 / 8];
                v232 = v204[v220 / 8 + 1].f32[0];
                v233 = v204[v220 / 8 + 1].f32[1];
                v234 = *(v221 - 1);
                v235 = v229 + (v225 * *v222);
                v236 = (v232 * v234) - (v233 * *v221);
                v237 = (v234 * v233) + (v232 * *v221);
                v238 = v230 + v236;
                v239 = v235 + v237;
                v240 = (v235 - v237) * 0.86603;
                v241 = v236 - v230;
                v242 = v206[v220 / 8 + 1].f32[0];
                v243 = v206[v220 / 8 + 1].f32[1];
                v244 = v241 * 0.86603;
                v245 = v242 + v238;
                v246 = v242 + (v238 * -0.5);
                v247 = v243 + v239;
                v248 = v243 + (v239 * -0.5);
                v223[1].f32[0] = v245;
                v223[1].f32[1] = v247;
                v224[1].f32[0] = v240 + v246;
                v224[1].f32[1] = v248 + v244;
                v231[1].f32[0] = v246 - v240;
                v231[1].f32[1] = v248 - v244;
                v222 += 2 * v322;
                v220 += 8;
                v221 += 4 * v322;
              }

              while (8 * v57 - 8 != v220);
            }

            v202 += v321;
            v206 = (v206 + v203);
            v204 = (v204 + v203);
            v205 = (v205 + v203);
          }

          while (v202 < v331);
        }
      }

      else
      {
        v325 = v57;
        if (v139 == 5)
        {
          if (v16 >= 1)
          {
            v140 = 0;
            v338 = 8 * v321;
            v141 = &v17[2 * v57];
            v142 = &v17[4 * v57];
            v143 = &v17[2 * v57 + v57];
            v144 = 8 * v57;
            v145 = v17;
            v146 = &v17[v57];
            do
            {
              if (v57 >= 1)
              {
                v147 = 0;
                v148 = (a7 + 4);
                v149 = (a7 + 4);
                v150 = (a7 + 4);
                v151 = (a7 + 4);
                do
                {
                  v152 = &v145[v147 / 8];
                  v153 = &v141[v147 / 8];
                  v154 = &v142[v147 / 8];
                  v155 = &v146[v147 / 8];
                  v156 = v146[v147 / 8].f32[0];
                  v157 = v146[v147 / 8].f32[1];
                  v158 = *(v148 - 1);
                  v159 = (v156 * v158) - (v157 * *v148);
                  v160 = (v158 * v157) + (v156 * *v148);
                  v161 = v142[v147 / 8].f32[0];
                  v162 = v142[v147 / 8].f32[1];
                  v163 = *(v151 - 1);
                  v164 = (v161 * v163) - (v162 * *v151);
                  v165 = (v163 * v162) + (v161 * *v151);
                  v166 = v159 + v164;
                  v167 = &v143[v147 / 8];
                  v168 = v143[v147 / 8].f32[0];
                  v169 = v143[v147 / 8].f32[1];
                  v170 = v160 + v165;
                  v171 = *(v150 - 1);
                  v172 = (v168 * v171) - (v169 * *v150);
                  v173 = v159 - v164;
                  v174 = (v171 * v169) + (v168 * *v150);
                  v175 = v141[v147 / 8].f32[0];
                  v176 = v141[v147 / 8].f32[1];
                  v177 = v160 - v165;
                  v178 = *(v149 - 1);
                  v179 = (v175 * v178) - (v176 * *v149);
                  v180 = (v178 * v176) + (v175 * *v149);
                  v181 = v172 + v179;
                  v182 = v174 + v180;
                  v183 = v172 - v179;
                  v184 = v174 - v180;
                  v185 = v145[v147 / 8].f32[0];
                  v186 = v145[v147 / 8].f32[1];
                  v187 = v185 + (v166 + v181);
                  v188 = v186 + (v170 + v182);
                  v189 = v185 + ((v166 + v181) * -0.25);
                  v190 = v166 - v181;
                  v191 = v186 + ((v170 + v182) * -0.25);
                  v192 = v190 * 0.55902;
                  v193 = (v170 - v182) * 0.55902;
                  v194 = (v177 + v184) * 0.95106;
                  v195 = (v173 + v183) * -0.95106;
                  *v152 = v187;
                  v152[1] = v188;
                  v196 = v194 - (v177 * 0.36327);
                  v197 = (v173 * 0.36327) + v195;
                  v198 = v194 - (v184 * 1.5388);
                  v199 = v195 + (v183 * 1.5388);
                  v200 = v189 + v192;
                  v201 = v189 - v192;
                  *v155 = v198 + v200;
                  v155[1] = (v191 + v193) + v199;
                  *v154 = v200 - v198;
                  v154[1] = (v191 + v193) - v199;
                  v148 += 2 * v322;
                  v147 += 8;
                  *v153 = v196 + v201;
                  v153[1] = (v191 - v193) + v197;
                  *v167 = v201 - v196;
                  v167[1] = (v191 - v193) - v197;
                  v151 += 8 * v322;
                  v150 += 6 * v322;
                  v149 += 4 * v322;
                }

                while (v144 != v147);
              }

              v140 += v321;
              v145 = (v145 + v338);
              v141 = (v141 + v338);
              v142 = (v142 + v338);
              v143 = (v143 + v338);
              v146 = (v146 + v338);
              v17 = a2;
              v57 = v325;
            }

            while (v140 < v331);
          }
        }

        else if (v16 >= 1)
        {
          v249 = (v139 - 1 + ((v139 - 1) >> 31)) >> 1;
          v250 = v57;
          if ((v139 - 1) / 2 <= 1)
          {
            v251 = 1;
          }

          else
          {
            v251 = ((v139 - 1) / 2);
          }

          v252 = 8 * v57;
          v323 = 8 * v321;
          v329 = &v316[v323 - v252];
          v330 = 0;
          v336 = (8 * v139 - 8) * v322;
          v334 = v57;
          v253 = -8 * v57;
          v328 = &v316[v252];
          v340 = a5[v138];
          v254 = a8 / v139;
          v255 = 8 * v322;
          v327 = (v17 + v323 - v252);
          v326 = &v17[v252 / 8];
          while (v57 < 1)
          {
LABEL_117:
            v329 = (v329 + v323);
            v330 += v321;
            v328 = (v328 + v323);
            v57 = v325;
            v326 = (v326 + v323);
            v327 = (v327 + v323);
            v17 = a2;
            if (v330 >= v331)
            {
              goto LABEL_118;
            }
          }

          v256 = 0;
          v257 = 0;
          v258 = 0;
          v259 = v326;
          v260 = v327;
          v261 = (a7 + 4);
          v262 = (a7 + 4);
          v264 = v328;
          v263 = v329;
          while (2)
          {
            v265 = &a2[v330 + v258];
            v266 = v265->f32[0];
            v267 = v265->f32[1];
            if (v258)
            {
              if (v340 >= 3)
              {
                v268 = v262;
                v269 = v261;
                v270 = v251;
                v271 = v264;
                v272 = a10 + 1;
                v273 = v263;
                v274 = v265->f32[0];
                v275 = v265->f32[1];
                do
                {
                  v276 = *(v271 - 1);
                  v277 = *(v268 - 1);
                  v278 = (v276 * v277) - (*v271 * *v268);
                  v279 = (v277 * *v271) + (v276 * *v268);
                  v280 = *(v273 - 1);
                  v281 = *(v269 - 1);
                  v282 = (v280 * v281) - (*v273 * *v269);
                  v283 = (v281 * *v273) + (v280 * *v269);
                  v284 = v279 - v283;
                  v285 = v279 + v283;
                  v274 = v274 + (v278 + v282);
                  v275 = v275 + v285;
                  *(v272 - 1) = v278 + v282;
                  *v272 = v284;
                  v286 = &v272[2 * v249];
                  v273 = (v273 + v253);
                  v272 += 2;
                  *(v286 - 1) = v278 - v282;
                  *v286 = v285;
                  v271 = (v271 + v252);
                  v269 = (v269 + v257);
                  v268 = (v268 + v256);
                  --v270;
                }

                while (v270);
LABEL_108:
                v265->f32[0] = v274;
                v265->f32[1] = v275;
                v293 = 1;
                v294 = v250;
                do
                {
                  v295 = v293 * v254;
                  v296 = v251;
                  v297 = a10;
                  v298 = v266;
                  v299 = v267;
                  v300 = v266;
                  v301 = v267;
                  v302 = v293 * v254;
                  do
                  {
                    v303 = *(a7 + 8 * v302);
                    v304 = vmul_f32(v303, *v297);
                    v305 = vmul_f32(v303, vrev64_s32(v297[v249]));
                    v298 = v298 + vaddv_f32(v304);
                    v300 = v300 + (v304.f32[0] - v304.f32[1]);
                    v299 = v299 + (v305.f32[0] - v305.f32[1]);
                    v301 = v301 + vaddv_f32(v305);
                    v306 = v302 + v295;
                    if (v302 + v295 >= a8)
                    {
                      v307 = a8;
                    }

                    else
                    {
                      v307 = 0;
                    }

                    v302 = v306 - v307;
                    ++v297;
                    --v296;
                  }

                  while (v296);
                  v308 = &v265[v294];
                  *v308 = v300;
                  v308[1] = v301;
                  v309 = &v265[v321 - v294];
                  *v309 = v298;
                  v309[1] = v299;
                  v294 += v250;
                }

                while (v293++ != v251);
              }
            }

            else if (v340 >= 3)
            {
              v287 = v260;
              v288 = v259;
              v289 = v251;
              v290 = a10;
              v274 = v265->f32[0];
              v275 = v265->f32[1];
              do
              {
                v291 = vadd_f32(*v288, *v287);
                v292 = vsub_f32(*v288, *v287);
                *v290 = __PAIR64__(v292.u32[1], v291.u32[0]);
                v292.i32[1] = v291.i32[1];
                v290[v249] = v292;
                v274 = v274 + v291.f32[0];
                v275 = v275 + v291.f32[1];
                ++v290;
                v288 = (v288 + v252);
                v287 = (v287 + v253);
                --v289;
              }

              while (v289);
              goto LABEL_108;
            }

            ++v258;
            v263 += 2;
            v264 += 2;
            v261 = (v261 + v336);
            v257 -= v255;
            v262 = (v262 + v255);
            v256 += v255;
            ++v259;
            ++v260;
            if (v258 == v334)
            {
              goto LABEL_117;
            }

            continue;
          }
        }
      }

LABEL_118:
      v57 = v321;
      v138 = v320 + 1;
      v16 = a3;
    }

    while (v320 + 1 != v317);
  }

  if (v137.f32[0] == 1.0)
  {
    if (a11)
    {
      if (v16 >= 2)
      {
        v313 = 0;
        v314 = &v17[1] + 1;
        do
        {
          v315 = -*v314;
          *(v314 - 2) = -*(v314 - 2);
          *v314 = v315;
          v314 += 4;
          v313 += 2;
        }

        while (v313 <= (v16 - 2));
      }

      else
      {
        LODWORD(v313) = 0;
      }

      if (v313 < v16)
      {
        v17[v16 - 1].f32[1] = -v17[v16 - 1].f32[1];
      }
    }
  }

  else if (v16 >= 1)
  {
    v311 = -v137.f32[0];
    if ((a11 & 1) == 0)
    {
      v311 = a9;
    }

    v312 = v16;
    v137.f32[1] = v311;
    do
    {
      *v17 = vmul_f32(*v17, v137);
      ++v17;
      --v312;
    }

    while (v312);
  }
}

void sub_22D22121C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *__p, uint64_t a33, int a34, __int16 a35, char a36, char a37, void *a38, uint64_t a39, int a40, __int16 a41, char a42, char a43, void *a44, uint64_t a45, int a46, __int16 a47, char a48, char a49)
{
  cv::Exception::~Exception((v49 - 224));
  if (a37 < 0)
  {
    operator delete(__p);
  }

  if (a43 < 0)
  {
    operator delete(a38);
  }

  if (a49 < 0)
  {
    operator delete(a44);
  }

  _Unwind_Resume(a1);
}

void cv::RealDFT<float>(float32x2_t *a1, float32x2_t *a2, int a3, int a4, int *a5, int *a6, uint64_t a7, int a8, double a9, float32x2_t *a10, unsigned int a11)
{
  if (a8 != a3)
  {
    cv::RealDFT<float>();
  }

  v12 = a2;
  v13 = (a11 >> 9) & 1;
  v14 = a9;
  v15 = a2 + v13;
  if (a3 == 1)
  {
    *v15 = a1->f32[0] * v14;
LABEL_6:
    if ((a11 & 0x200) == 0)
    {
      return;
    }

    v18 = (a3 & 1) == 0;
    v12 = v15;
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v16 = a1->f32[1];
    v17 = (a1->f32[0] - v16) * v14;
    *v15 = (a1->f32[0] + v16) * v14;
    v15[1] = v17;
    goto LABEL_6;
  }

  if ((a3 & 1) == 0)
  {
    v21 = a3 >> 1;
    v22 = *a5 >> 1;
    *a5 = v22;
    cv::DFT<float>(a1, (a2 + 4 * v13), a3 >> 1, a4 - (v22 == 1), &a5[v22 == 1], a6, a7, a3, 1.0, a10, 0);
    *a5 *= 2;
    v23 = v15[1];
    v24 = (*v15 - v23) * v14;
    *v15 = (*v15 + v23) * v14;
    v15[1] = v24;
    v25 = &v15[v21];
    v26 = *v25;
    v27 = &v15[a3];
    v28 = *(v27 - 1);
    *(v27 - 1) = v24;
    if (v21 < 3)
    {
      LODWORD(v34) = 2;
    }

    else
    {
      v29 = v12 + 4 * v13;
      v30 = v14 * 0.5;
      v31 = &v29[4 * a3 - 12];
      v32 = (a7 + 12);
      v33 = (v29 + 8);
      v34 = 2;
      do
      {
        v35 = v33[1];
        v36 = v30 * (v28 + v35);
        v37 = v35 - v28;
        v28 = *v31;
        v38 = v31[1];
        v39 = v30 * (v38 - *v33);
        v40 = v38 + *v33;
        v41 = *(v32 - 1);
        v42 = (v36 * v41) - (v39 * *v32);
        v43 = v30 * v40;
        v44 = v30 * v37;
        v45 = (v41 * v39) + (v36 * *v32);
        *(v33 - 1) = v43 + v42;
        *v31 = v43 - v42;
        *v33 = v44 + v45;
        v33 += 2;
        v34 += 2;
        v31[1] = v45 - v44;
        v31 -= 2;
        v32 += 2;
      }

      while (v34 < v21);
    }

    if (v34 <= v21)
    {
      *(v25 - 1) = v26 * v14;
      *v25 = -(v28 * v14);
    }

    goto LABEL_6;
  }

  a2->f32[0] = a1->f32[0] * v14;
  a2->i32[1] = 0;
  if (a3 >= 2)
  {
    v46 = &a2[1] + 1;
    v47 = a6 + 2;
    for (i = 1; i < a3; i += 2)
    {
      v49 = a1->f32[*v47] * v14;
      *(v46 - 1) = a1->f32[*(v47 - 1)] * v14;
      *v46 = 0.0;
      v46[1] = v49;
      v46[2] = 0.0;
      v46 += 4;
      v47 += 2;
    }
  }

  cv::DFT<float>(a2, a2, a3, a4, a5, a6, a7, a3, 1.0, a10, 256);
  if ((a11 & 0x200) == 0)
  {
    v12->i32[1] = v12->i32[0];
    return;
  }

  v18 = 0;
LABEL_8:
  if (a3 == 1 || v18)
  {
    v12[-1].i32[1] = v12->i32[0];
    v12->i32[0] = 0;
    if (a3 >= 2)
    {
      v12->i32[a3] = 0;
    }
  }
}

void cv::CCSIDFT<float>(float32x2_t *a1, float32x2_t *a2, int a3, int a4, int *a5, int *a6, uint64_t a7, int a8, double a9, float32x2_t *a10, __int16 a11)
{
  if (a8 != a3)
  {
    cv::CCSIDFT<float>();
  }

  v13 = a2;
  v14 = a1;
  v15 = 0;
  if ((a11 & 0x200) != 0)
  {
    if (a1 == a2)
    {
      cv::CCSIDFT<float>();
    }

    v14 = (a1 + 4);
    v15 = a1->i32[1];
    a1->i32[1] = a1->i32[0];
  }

  v16 = a9;
  if (a3 == 2)
  {
    v18 = v14->f32[1];
    v17 = v14->f32[0] + v18;
    a2->f32[1] = (v14->f32[0] - v18) * v16;
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v17 = v14->f32[0];
LABEL_9:
    a2->f32[0] = v17 * v16;
    goto LABEL_10;
  }

  v19 = ((a3 + 1) >> 1);
  v71 = a9;
  if (a3)
  {
    a2->i32[0] = v14->i32[0];
    a2->i32[1] = 0;
    if (v19 >= 2)
    {
      v48 = &a6[a3 - 1];
      v49 = (v14 + 4);
      v50 = a6 + 1;
      v51 = v19 - 1;
      do
      {
        v53 = *v50++;
        v52 = v53;
        v55 = *v48--;
        v54 = v55;
        v56 = &a2[v52];
        v57 = *v49++;
        v56->i32[0] = v57.i32[0];
        v56->f32[1] = -v57.f32[1];
        a2[v54] = v57;
        --v51;
      }

      while (v51);
    }

    cv::DFT<float>(a2, a2, a3, a4, a5, a6, a7, a3, 1.0, a10, 256);
    v13->f32[0] = v13->f32[0] * v71;
    if (a3 >= 2)
    {
      v58 = &v13[2];
      v59 = &v13[1];
      v60 = 1;
      do
      {
        v61 = *(v58 - 2) * v71;
        v62 = *v58;
        v58 += 4;
        *(v59 - 1) = v61;
        *v59 = v62 * v71;
        v60 += 2;
        v59 += 2;
      }

      while (v60 < a3);
    }
  }

  else
  {
    v20 = v14->f32[1];
    v21 = v14->f32[a3 - 1];
    v22 = v21 - v14->f32[0];
    a2->f32[0] = v14->f32[0] + v21;
    a2->f32[1] = v22;
    if (v19 < 3)
    {
      LODWORD(v30) = 2;
    }

    else
    {
      v23 = 4 * a3;
      v24 = &v14[-2] + 4;
      v25 = (a7 + 12);
      v26 = &a2[1] + 1;
      v27 = &v14[1] + 1;
      v28 = a6 + 1;
      v29 = &a6[v19 - 1];
      v30 = 2;
      v31 = a2;
      do
      {
        v32 = *&v24[4 * a3];
        v33 = *&v24[v23 + 4];
        v34 = v20 + v32;
        v35 = v20 - v32;
        v36 = *(v27 - 1);
        v20 = *v27;
        v37 = v36 - v33;
        v38 = v36 + v33;
        v39 = *(v25 - 1);
        v40 = (v38 * *v25) + (v35 * v39);
        v41 = (v38 * v39) - (v35 * *v25);
        v42 = v34 - v41;
        v43 = -v37 - v40;
        v44 = v34 + v41;
        if (v14 == a2)
        {
          *(v26 - 1) = v42;
          *v26 = v43;
          v31[-1].f32[v23 / 4] = v44;
          v47 = (v31 + v23 - 4);
        }

        else
        {
          v45 = a2 + *v28;
          *v45 = v42;
          v45[1] = v43;
          v46 = a2 + *v29;
          *v46 = v44;
          v47 = v46 + 1;
        }

        v30 += 2;
        --v31;
        v24 -= 8;
        v25 += 2;
        *v47 = v37 - v40;
        v26 += 2;
        v27 += 2;
        ++v28;
        --v29;
      }

      while (v30 < v19);
    }

    if (v30 <= v19)
    {
      v63 = v20 + v20;
      v64 = v14->f32[v19] + v14->f32[v19];
      if (v14 == a2)
      {
        v67 = a2 + v19;
        *v67 = v63;
        v66 = v67 + 1;
      }

      else
      {
        v65 = a6[v19];
        a2[v65].f32[0] = v63;
        v66 = a2 + ((2 * v65) | 1);
      }

      *v66 = v64;
    }

    v68 = *a5 >> 1;
    *a5 = v68;
    cv::DFT<float>(a2, a2, v19, a4 - (v68 == 1), &a5[v68 == 1], a6, a7, a3, 1.0, a10, (v14 != a2) << 8);
    *a5 *= 2;
    v69.f32[0] = v71;
    if (a3 >= 1)
    {
      v70 = 0;
      do
      {
        v69.f32[1] = -v71;
        *v13 = vmul_f32(*v13, v69);
        ++v13;
        v70 += 2;
      }

      while (v70 < a3);
    }
  }

LABEL_10:
  if ((a11 & 0x200) != 0)
  {
    v14->i32[0] = v15;
  }
}

float64_t cv::DFT<double>(uint64_t a1, uint64_t a2, int a3, int a4, int *a5, int *a6, uint64_t a7, int a8, float64_t a9, float64x2_t *a10, __int16 a11)
{
  v11.f64[0] = a9;
  v15 = a4;
  v16 = a3;
  v17 = a2;
  if (a8 == a3)
  {
    v18 = 1;
  }

  else if (a8 == 2 * a3)
  {
    v18 = 2;
  }

  else
  {
    v18 = a8 / a3;
  }

  if (a2 == a1)
  {
    if ((a11 & 0x100) == 0)
    {
      if (*a5 != a5[a4 - 1])
      {
        std::string::basic_string[abi:ne200100]<0>(&v347, "factors[0] == factors[nf-1]");
        std::string::basic_string[abi:ne200100]<0>(&v346, "DFT");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/dxt.cpp");
        v25 = cv::Exception::Exception(v348, -215, &v347, &v346, &__p, 599);
        cv::error(v25, v26);
      }

      if (a4 == 1)
      {
        if ((a3 & 3) == 0 && a3 >> 1 >= 1)
        {
          v27 = 0;
          v28 = a3 >> 1;
          v29 = (a2 + 16);
          do
          {
            v30 = *a6;
            if (v30 >= v28)
            {
              cv::DFT<float>();
            }

            v31 = (a2 + 16 * (a3 >> 1) + 16 * v30);
            v32 = *v29;
            *v29 = *v31;
            *v31 = v32;
            if (v27 < v30)
            {
              v33 = *(v29 - 1);
              *(v29 - 1) = *(a2 + 16 * v30);
              *(a2 + 16 * v30) = v33;
              v34 = v29[v28];
              v29[v28] = v31[1];
              v31[1] = v34;
            }

            v27 += 2;
            v29 += 2;
            a6 += 2 * v18;
          }

          while (v27 < v28);
        }
      }

      else if (a3 >= 1)
      {
        v47 = 0;
        v48 = a2;
        do
        {
          v49 = *a6;
          if (v49 >= a3)
          {
            cv::DFT<float>();
          }

          if (v47 < v49)
          {
            v50 = *v48;
            *v48 = *(a2 + 16 * v49);
            *(a2 + 16 * v49) = v50;
          }

          ++v47;
          ++v48;
          a6 += v18;
        }

        while (a3 != v47);
      }
    }

    if (a11)
    {
      if (a3 >= 2)
      {
        v51 = 0;
        v52 = (a2 + 24);
        do
        {
          v53 = -*v52;
          *(v52 - 2) = -*(v52 - 2);
          *v52 = v53;
          v52 += 4;
          v51 += 2;
        }

        while (v51 <= (a3 - 2));
      }

      else
      {
        LODWORD(v51) = 0;
      }

      if (v51 < a3)
      {
        *(a2 + 16 * a3 - 8) = -*(a2 + 16 * a3 - 8);
      }
    }
  }

  else
  {
    if ((a11 & 0x100) != 0)
    {
      cv::DFT<float>();
    }

    v19 = a3 - 2;
    v20 = 0;
    if (a11)
    {
      if (a3 >= 2)
      {
        v35 = a2 + 16;
        do
        {
          v36 = *a6;
          v37 = a6[v18];
          if (v36 >= a3 || v37 >= a3)
          {
            cv::DFT<float>();
          }

          a6 += 2 * v18;
          v39 = a1 + 16 * v36;
          v40 = -*(v39 + 8);
          *(v35 - 16) = *v39;
          *(v35 - 8) = v40;
          v41 = a1 + 16 * v37;
          v42 = -*(v41 + 8);
          *v35 = *v41;
          *(v35 + 8) = v42;
          v35 += 32;
          v20 += 2;
        }

        while (v19 >= v20);
      }

      if (v20 < a3)
      {
        v43 = a1 + 16 * a3;
        v44 = *(v43 - 16);
        v45 = -*(v43 - 8);
        v46 = a2 + 16 * v20;
        *v46 = v44;
        *(v46 + 8) = v45;
      }
    }

    else
    {
      if (a3 >= 2)
      {
        v21 = (a2 + 16);
        do
        {
          v22 = *a6;
          v23 = a6[v18];
          if (v22 >= a3 || v23 >= a3)
          {
            cv::DFT<float>();
          }

          a6 += 2 * v18;
          *(v21 - 1) = *(a1 + 16 * v22);
          *v21 = *(a1 + 16 * v23);
          v21 += 2;
          v20 += 2;
        }

        while (v19 >= v20);
      }

      if (v20 < a3)
      {
        *(a2 + 16 * a3 - 16) = *(a1 + 16 * a3 - 16);
      }
    }
  }

  v54 = *a5;
  if (*a5)
  {
    v325 = a8;
    v57 = 1;
  }

  else
  {
    if (v54 < 4)
    {
      v55 = 1;
      v56 = a8;
    }

    else
    {
      v337 = v11.f64[0];
      cv::checkHardwareSupport(4);
      v54 = *a5;
      if (*a5 >= 4)
      {
        v336 = v15;
        v58 = v16;
        v339 = a7 + 8;
        v59 = 1;
        v60 = 4;
        v56 = a8;
        v11.f64[0] = v337;
        v341 = *a5;
        do
        {
          v343 = v60;
          v56 /= 4;
          if (v16 >= 1)
          {
            v61 = 0;
            v62 = 16 * v343;
            v63 = &v17[v59];
            v64 = &v17[2 * v59];
            v65 = &v17[3 * v59];
            v66 = v17;
            do
            {
              f64 = v17[v61].f64;
              v68 = &f64[4 * v59];
              v69 = v68[1];
              v70 = &v68[2 * v59];
              v71 = v70[1];
              v72 = *v68 + *v70;
              v73 = v69 + v71;
              v74 = v69 - v71;
              v75 = *v70 - *v68;
              v76 = f64[1];
              v77 = &f64[2 * v59];
              v78 = v77[1];
              v79 = *f64 + *v77;
              v80 = v76 + v78;
              v81 = *f64 - *v77;
              v82 = v76 - v78;
              *f64 = v72 + v79;
              f64[1] = v73 + v80;
              *v68 = v79 - v72;
              v68[1] = v80 - v73;
              *v77 = v74 + v81;
              v77[1] = v75 + v82;
              *v70 = v81 - v74;
              v70[1] = v82 - v75;
              if (v59 >= 2)
              {
                v83 = 0;
                v84 = (v339 + 48 * v56);
                v85 = (v339 + 32 * v56);
                v86 = (v339 + 16 * v56);
                do
                {
                  v87 = &v66[v83 / 0x10];
                  v88 = &v64[v83 / 0x10];
                  v89 = &v63[v83 / 0x10];
                  v90 = v63[v83 / 0x10 + 1].f64[0];
                  v91 = v63[v83 / 0x10 + 1].f64[1];
                  v92 = *(v85 - 1);
                  v93 = v90 * v92 - v91 * *v85;
                  v94 = v92 * v91 + v90 * *v85;
                  v95 = v64[v83 / 0x10 + 1].f64[0];
                  v96 = v64[v83 / 0x10 + 1].f64[1];
                  v97 = *(v86 - 1);
                  v98 = v96 * v97 + v95 * *v86;
                  v99 = v95 * v97 - v96 * *v86;
                  v100 = &v65[v83 / 0x10];
                  v101 = v65[v83 / 0x10 + 1].f64[0];
                  v102 = v65[v83 / 0x10 + 1].f64[1];
                  v103 = *(v84 - 1);
                  v104 = v102 * v103 + v101 * *v84;
                  v105 = v101 * v103 - v102 * *v84;
                  v106 = v99 + v105;
                  v107 = v98 + v104;
                  v108 = v98 - v104;
                  v109 = v105 - v99;
                  v110 = v66[v83 / 0x10 + 1].f64[0];
                  v111 = v66[v83 / 0x10 + 1].f64[1];
                  v112 = v93 + v110;
                  v113 = v94 + v111;
                  v114 = v110 - v93;
                  v115 = v111 - v94;
                  v87[1].f64[0] = v112 + v106;
                  v87[1].f64[1] = v113 + v107;
                  v88[1].f64[0] = v112 - v106;
                  v88[1].f64[1] = v113 - v107;
                  v89[1].f64[0] = v114 + v108;
                  v89[1].f64[1] = v109 + v115;
                  v100[1].f64[0] = v114 - v108;
                  v100[1].f64[1] = v115 - v109;
                  v86 += 2 * v56;
                  v83 += 16;
                  v85 += 4 * v56;
                  v84 += 6 * v56;
                }

                while (16 * v59 - 16 != v83);
              }

              v61 += v343;
              v66 = (v66 + v62);
              v63 = (v63 + v62);
              v64 = (v64 + v62);
              v65 = (v65 + v62);
              v17 = a2;
            }

            while (v61 < v58);
          }

          v59 = v343;
          v60 = 4 * v343;
          v54 = v341;
          v16 = a3;
        }

        while (4 * v343 <= v341);
        v55 = v343;
        v15 = v336;
      }

      else
      {
        v55 = 1;
        v56 = a8;
        v11.f64[0] = v337;
      }
    }

    while (v55 < v54)
    {
      v116 = v55;
      v55 *= 2;
      v56 /= 2;
      if (v16 >= 1)
      {
        v117 = 0;
        v118 = 2 * v116;
        v119 = v17;
        do
        {
          v120 = v17[v117].f64;
          v121 = &v120[2 * v116];
          v122 = v120[1];
          v123 = v121[1];
          v124 = *v120 - *v121;
          *v120 = *v120 + *v121;
          v120[1] = v122 + v123;
          *v121 = v124;
          v121[1] = v122 - v123;
          if (v116 >= 2)
          {
            v125 = v116 - 1;
            v126 = v119;
            v127 = (a7 + 8 + 16 * v56);
            v128 = v119;
            do
            {
              v129 = &v126[v118];
              v130 = v126[v118 + 2];
              v131 = v126[v118 + 3];
              v132 = *(v127 - 1);
              v133 = v130 * v132 - v131 * *v127;
              v134 = v130 * *v127 + v131 * v132;
              v135 = v128[2];
              v128 += 2;
              v136 = v126[3];
              *v128 = v135 + v133;
              v126[3] = v136 + v134;
              v129[2] = v135 - v133;
              v129[3] = v136 - v134;
              v127 += 2 * v56;
              v126 = v128;
              --v125;
            }

            while (v125);
          }

          v117 += v55;
          v119 += v55;
        }

        while (v117 < v16);
      }
    }

    v325 = v56;
    v57 = v55;
  }

  v137 = (v54 & 1) == 0;
  if (v137 < v15)
  {
    v334 = v16;
    v327 = a7 + 8;
    v319 = &v17->f64[1];
    v320 = v15;
    do
    {
      v323 = v137;
      v138 = a5[v137];
      v324 = v138 * v57;
      v325 /= v138;
      if (v138 == 3)
      {
        if (v16 >= 1)
        {
          v201 = 0;
          v202 = 16 * v324;
          v203 = &v17[2 * v57];
          v204 = &v17[v57];
          v205 = v17;
          do
          {
            v206 = v17[v201].f64;
            v207 = &v206[2 * v57];
            v208 = &v206[4 * v57];
            v209 = v207[1];
            v210 = v208[1];
            v211 = *v207 + *v208;
            v212 = v209 + v210;
            v213 = *v206;
            v214 = v206[1];
            v215 = (v209 - v210) * 0.866025404;
            v216 = (*v208 - *v207) * 0.866025404;
            *v206 = v211 + *v206;
            v206[1] = v212 + v214;
            v217 = v213 + v211 * -0.5;
            v218 = v214 + v212 * -0.5;
            *v207 = v217 + v215;
            v207[1] = v216 + v218;
            *v208 = v217 - v215;
            v208[1] = v218 - v216;
            if (v57 >= 2)
            {
              v219 = 0;
              v220 = (v327 + 32 * v325);
              v221 = (v327 + 16 * v325);
              do
              {
                v222 = &v205[v219 / 0x10];
                v223 = &v204[v219 / 0x10];
                v224 = v204[v219 / 0x10 + 1].f64[0];
                v225 = v204[v219 / 0x10 + 1].f64[1];
                v226 = *(v221 - 1);
                v227 = -(v225 * *v221);
                v228 = v226 * v225;
                v229 = v227 + v224 * v226;
                v230 = &v203[v219 / 0x10];
                v231 = v203[v219 / 0x10 + 1].f64[0];
                v232 = v203[v219 / 0x10 + 1].f64[1];
                v233 = *(v220 - 1);
                v234 = v228 + v224 * *v221;
                v235 = v231 * v233 - v232 * *v220;
                v236 = v233 * v232 + v231 * *v220;
                v237 = v229 + v235;
                v238 = v234 + v236;
                v239 = (v234 - v236) * 0.866025404;
                v240 = v235 - v229;
                v241 = v205[v219 / 0x10 + 1].f64[0];
                v242 = v205[v219 / 0x10 + 1].f64[1];
                v243 = v240 * 0.866025404;
                v244 = v241 + v237;
                v245 = v241 + v237 * -0.5;
                v246 = v242 + v238;
                v247 = v242 + v238 * -0.5;
                v222[1].f64[0] = v244;
                v222[1].f64[1] = v246;
                v223[1].f64[0] = v239 + v245;
                v223[1].f64[1] = v247 + v243;
                v230[1].f64[0] = v245 - v239;
                v230[1].f64[1] = v247 - v243;
                v221 += 2 * v325;
                v219 += 16;
                v220 += 4 * v325;
              }

              while (16 * v57 - 16 != v219);
            }

            v201 += v324;
            v205 = (v205 + v202);
            v203 = (v203 + v202);
            v204 = (v204 + v202);
          }

          while (v201 < v334);
        }
      }

      else
      {
        v328 = v57;
        if (v138 == 5)
        {
          if (v16 >= 1)
          {
            v139 = 0;
            v342 = 16 * v324;
            v140 = &v17[2 * v57];
            v141 = &v17[4 * v57];
            v142 = &v17[2 * v57 + v57];
            v143 = 16 * v57;
            v144 = v17;
            v145 = &v17[v57];
            do
            {
              if (v57 >= 1)
              {
                v146 = 0;
                v147 = (a7 + 8);
                v148 = (a7 + 8);
                v149 = (a7 + 8);
                v150 = (a7 + 8);
                do
                {
                  v151 = v144[v146 / 0x10].f64;
                  v152 = v140[v146 / 0x10].f64;
                  v153 = v141[v146 / 0x10].f64;
                  v154 = v145[v146 / 0x10].f64;
                  v155 = v145[v146 / 0x10].f64[0];
                  v156 = v145[v146 / 0x10].f64[1];
                  v157 = *(v147 - 1);
                  v158 = v155 * v157 - v156 * *v147;
                  v159 = v157 * v156 + v155 * *v147;
                  v160 = v141[v146 / 0x10].f64[0];
                  v161 = v141[v146 / 0x10].f64[1];
                  v162 = *(v150 - 1);
                  v163 = v160 * v162 - v161 * *v150;
                  v164 = v162 * v161 + v160 * *v150;
                  v165 = v158 + v163;
                  v166 = v142[v146 / 0x10].f64;
                  v167 = v142[v146 / 0x10].f64[0];
                  v168 = v142[v146 / 0x10].f64[1];
                  v169 = v159 + v164;
                  v170 = *(v149 - 1);
                  v171 = v167 * v170 - v168 * *v149;
                  v172 = v158 - v163;
                  v173 = v170 * v168 + v167 * *v149;
                  v174 = v140[v146 / 0x10].f64[0];
                  v175 = v140[v146 / 0x10].f64[1];
                  v176 = v159 - v164;
                  v177 = *(v148 - 1);
                  v178 = v174 * v177 - v175 * *v148;
                  v179 = v177 * v175 + v174 * *v148;
                  v180 = v171 + v178;
                  v181 = v173 + v179;
                  v182 = v171 - v178;
                  v183 = v173 - v179;
                  v184 = v144[v146 / 0x10].f64[0];
                  v185 = v144[v146 / 0x10].f64[1];
                  v186 = v184 + v165 + v180;
                  v187 = v185 + v169 + v181;
                  v188 = v184 + (v165 + v180) * -0.25;
                  v189 = v165 - v180;
                  v190 = v185 + (v169 + v181) * -0.25;
                  v191 = v189 * 0.559016994;
                  v192 = (v169 - v181) * 0.559016994;
                  v193 = (v176 + v183) * 0.951056516;
                  v194 = (v172 + v182) * -0.951056516;
                  *v151 = v186;
                  v151[1] = v187;
                  v195 = v193 - v176 * 0.363271264;
                  v196 = v172 * 0.363271264 + v194;
                  v197 = v193 - v183 * 1.53884177;
                  v198 = v194 + v182 * 1.53884177;
                  v199 = v188 + v191;
                  v200 = v188 - v191;
                  *v154 = v197 + v199;
                  v154[1] = v190 + v192 + v198;
                  *v153 = v199 - v197;
                  v153[1] = v190 + v192 - v198;
                  v147 += 2 * v325;
                  v146 += 16;
                  *v152 = v195 + v200;
                  v152[1] = v190 - v192 + v196;
                  *v166 = v200 - v195;
                  v166[1] = v190 - v192 - v196;
                  v150 += 8 * v325;
                  v149 += 6 * v325;
                  v148 += 4 * v325;
                }

                while (v143 != v146);
              }

              v139 += v324;
              v144 = (v144 + v342);
              v140 = (v140 + v342);
              v141 = (v141 + v342);
              v142 = (v142 + v342);
              v145 = (v145 + v342);
              v17 = a2;
              v57 = v328;
            }

            while (v139 < v334);
          }
        }

        else if (v16 >= 1)
        {
          v248 = (v138 - 1 + ((v138 - 1) >> 31)) >> 1;
          v249 = v57;
          if ((v138 - 1) / 2 <= 1)
          {
            v250 = 1;
          }

          else
          {
            v250 = ((v138 - 1) / 2);
          }

          v251 = 16 * v57;
          v326 = 16 * v324;
          v332 = (v319 + v326 - v251);
          v333 = 0;
          v340 = (16 * v138 - 16) * v325;
          v338 = v57;
          v252 = -16 * v57;
          v331 = &v319[v251 / 8];
          v344 = a5[v137];
          v253 = a8 / v138;
          v254 = 16 * v325;
          v330 = (v17 + v326 - v251);
          v329 = &v17[v251 / 0x10];
          while (v57 < 1)
          {
LABEL_118:
            v332 = (v332 + v326);
            v333 += v324;
            v331 = (v331 + v326);
            v57 = v328;
            v329 = (v329 + v326);
            v330 = (v330 + v326);
            v17 = a2;
            if (v333 >= v334)
            {
              goto LABEL_119;
            }
          }

          v255 = 0;
          v256 = 0;
          v257 = 0;
          v258 = v329;
          v259 = v330;
          v260 = (a7 + 8);
          v261 = (a7 + 8);
          v263 = v331;
          v262 = v332;
          while (2)
          {
            v264 = (a2 + 16 * v333 + 16 * v257);
            v265 = *v264;
            v266 = v264[1];
            if (v257)
            {
              if (v344 >= 3)
              {
                v267 = v261;
                v268 = v260;
                v269 = v250;
                v270 = v263;
                v271 = &a10->f64[1];
                v272 = v262;
                v273 = *v264;
                v274 = v264[1];
                do
                {
                  v275 = *(v270 - 1);
                  v276 = *(v267 - 1);
                  v277 = v275 * v276 - *v270 * *v267;
                  v278 = v276 * *v270 + v275 * *v267;
                  v279 = *(v272 - 1);
                  v280 = *(v268 - 1);
                  v281 = v279 * v280 - *v272 * *v268;
                  v282 = v280 * *v272 + v279 * *v268;
                  v283 = v278 - v282;
                  v284 = v278 + v282;
                  v273 = v273 + v277 + v281;
                  v274 = v274 + v284;
                  *(v271 - 1) = v277 + v281;
                  *v271 = v283;
                  v285 = &v271[2 * v248];
                  v272 = (v272 + v252);
                  v271 += 2;
                  *(v285 - 1) = v277 - v281;
                  *v285 = v284;
                  v270 = (v270 + v251);
                  v268 = (v268 + v256);
                  v267 = (v267 + v255);
                  --v269;
                }

                while (v269);
LABEL_109:
                *v264 = v273;
                v264[1] = v274;
                v293 = 1;
                v294 = v249;
                do
                {
                  v295 = v293 * v253;
                  v296 = v250;
                  v297 = a10;
                  v298 = v265;
                  v299 = v266;
                  v300 = v265;
                  v301 = v266;
                  v302 = v293 * v253;
                  do
                  {
                    v303 = *(a7 + 16 * v302);
                    v304 = vmulq_f64(v303, *v297);
                    v305 = vmulq_f64(v303, vextq_s8(v297[v248], v297[v248], 8uLL));
                    v298 = v298 + vaddvq_f64(v304);
                    v300 = v300 + v304.f64[0] - v304.f64[1];
                    v299 = v299 + v305.f64[0] - v305.f64[1];
                    v301 = v301 + vaddvq_f64(v305);
                    v306 = v302 + v295;
                    if (v302 + v295 >= a8)
                    {
                      v307 = a8;
                    }

                    else
                    {
                      v307 = 0;
                    }

                    v302 = v306 - v307;
                    ++v297;
                    --v296;
                  }

                  while (v296);
                  v308 = &v264[2 * v294];
                  *v308 = v300;
                  v308[1] = v301;
                  v309 = &v264[2 * (v324 - v294)];
                  *v309 = v298;
                  v309[1] = v299;
                  v294 += v249;
                }

                while (v293++ != v250);
              }
            }

            else if (v344 >= 3)
            {
              v286 = v259;
              v287 = v258;
              v288 = v250;
              v289 = a10;
              v273 = *v264;
              v274 = v264[1];
              do
              {
                v290 = vaddq_f64(*v287, *v286);
                v291 = vsubq_f64(*v287, *v286);
                v292.f64[0] = v290.f64[0];
                v292.f64[1] = v291.f64[1];
                *v289 = v292;
                v291.f64[1] = v290.f64[1];
                v289[v248] = v291;
                v273 = v273 + v290.f64[0];
                v274 = v274 + v290.f64[1];
                ++v289;
                v287 = (v287 + v251);
                v286 = (v286 + v252);
                --v288;
              }

              while (v288);
              goto LABEL_109;
            }

            ++v257;
            v262 += 2;
            v263 += 2;
            v260 = (v260 + v340);
            v256 -= v254;
            v261 = (v261 + v254);
            v255 += v254;
            ++v258;
            ++v259;
            if (v257 == v338)
            {
              goto LABEL_118;
            }

            continue;
          }
        }
      }

LABEL_119:
      v57 = v324;
      v137 = v323 + 1;
      v16 = a3;
    }

    while (v323 + 1 != v320);
  }

  v311.f64[0] = 1.0;
  if (v11.f64[0] == 1.0)
  {
    if (a11)
    {
      if (v16 >= 2)
      {
        v314 = 0;
        v315 = &v17[1].f64[1];
        do
        {
          v311.f64[0] = -*(v315 - 2);
          v316 = -*v315;
          *(v315 - 2) = v311.f64[0];
          *v315 = v316;
          v315 += 4;
          v314 += 2;
        }

        while (v314 <= (v16 - 2));
      }

      else
      {
        LODWORD(v314) = 0;
      }

      if (v314 < v16)
      {
        v317 = &v17[v16];
        v311.f64[0] = -v317[-1].f64[1];
        v317[-1].f64[1] = v311.f64[0];
      }
    }
  }

  else if (v16 >= 1)
  {
    v312 = -v11.f64[0];
    if ((a11 & 1) == 0)
    {
      v312 = v11.f64[0];
    }

    v313 = v16;
    v11.f64[1] = v312;
    do
    {
      v311 = vmulq_f64(v11, *v17);
      *v17++ = v311;
      --v313;
    }

    while (v313);
  }

  return v311.f64[0];
}

void sub_22D2227B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, void *a40, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  cv::Exception::~Exception((v45 - 208));
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a45 < 0)
  {
    operator delete(a40);
  }

  if (*(v45 - 209) < 0)
  {
    operator delete(*(v45 - 232));
  }

  _Unwind_Resume(a1);
}

void cv::RealDFT<double>(double *a1, double *a2, int a3, int a4, int *a5, int *a6, uint64_t a7, int a8, double a9, float64x2_t *a10, unsigned int a11)
{
  if (a8 != a3)
  {
    cv::RealDFT<float>();
  }

  v13 = a2;
  v14 = (a11 >> 9) & 1;
  v15 = &a2[v14];
  if (a3 == 1)
  {
    *v15 = *a1 * a9;
LABEL_6:
    if ((a11 & 0x200) == 0)
    {
      return;
    }

    v19 = (a3 & 1) == 0;
    v13 = v15;
    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v16 = a1[1];
    v17 = (*a1 + v16) * a9;
    v18 = (*a1 - v16) * a9;
    *v15 = v17;
    v15[1] = v18;
    goto LABEL_6;
  }

  if ((a3 & 1) == 0)
  {
    v22 = a3 >> 1;
    v23 = *a5 >> 1;
    *a5 = v23;
    cv::DFT<double>(a1, &a2[v14], a3 >> 1, a4 - (v23 == 1), &a5[v23 == 1], a6, a7, a3, 1.0, a10, 0);
    *a5 *= 2;
    v24 = v15[1];
    v25 = (*v15 - v24) * a9;
    *v15 = (*v15 + v24) * a9;
    v15[1] = v25;
    v26 = &v15[v22];
    v27 = *v26;
    v28 = &v15[a3];
    v29 = *(v28 - 1);
    *(v28 - 1) = v25;
    if (v22 < 3)
    {
      LODWORD(v35) = 2;
    }

    else
    {
      v30 = &v13[v14];
      v31 = a9 * 0.5;
      v32 = &v30[a3 - 3];
      v33 = (a7 + 24);
      v34 = v30 + 2;
      v35 = 2;
      do
      {
        v36 = v34[1];
        v37 = v31 * (v29 + v36);
        v38 = v36 - v29;
        v29 = *v32;
        v39 = v32[1];
        v40 = v31 * (v39 - *v34);
        v41 = v39 + *v34;
        v42 = *(v33 - 1);
        v43 = v37 * v42 - v40 * *v33;
        v44 = v31 * v41;
        v45 = v31 * v38;
        v46 = v42 * v40 + v37 * *v33;
        *(v34 - 1) = v44 + v43;
        *v32 = v44 - v43;
        *v34 = v45 + v46;
        v34 += 2;
        v35 += 2;
        v32[1] = v46 - v45;
        v32 -= 2;
        v33 += 2;
      }

      while (v35 < v22);
    }

    if (v35 <= v22)
    {
      *(v26 - 1) = v27 * a9;
      *v26 = -(v29 * a9);
    }

    goto LABEL_6;
  }

  *a2 = *a1 * a9;
  a2[1] = 0.0;
  if (a3 >= 2)
  {
    v47 = a2 + 3;
    v48 = a6 + 2;
    for (i = 1; i < a3; i += 2)
    {
      v50 = a1[*v48] * a9;
      *(v47 - 1) = a1[*(v48 - 1)] * a9;
      *v47 = 0.0;
      v47[1] = v50;
      v47[2] = 0.0;
      v47 += 4;
      v48 += 2;
    }
  }

  cv::DFT<double>(a2, a2, a3, a4, a5, a6, a7, a3, 1.0, a10, 256);
  if ((a11 & 0x200) == 0)
  {
    v13[1] = *v13;
    return;
  }

  v19 = 0;
LABEL_8:
  if (a3 == 1 || v19)
  {
    *(v13 - 1) = *v13;
    *v13 = 0.0;
    if (a3 >= 2)
    {
      v13[a3] = 0.0;
    }
  }
}

void cv::CCSIDFT<double>(float64x2_t *a1, float64x2_t *a2, unsigned int a3, int a4, int *a5, int *a6, uint64_t a7, int a8, float64_t a9, float64x2_t *a10, __int16 a11)
{
  if (a8 != a3)
  {
    cv::CCSIDFT<float>();
  }

  v13 = a2;
  v14 = a1;
  v15 = 0.0;
  if ((a11 & 0x200) != 0)
  {
    if (a1 == a2)
    {
      cv::CCSIDFT<float>();
    }

    v14 = &a1->f64[1];
    v15 = a1->f64[1];
    a1->f64[1] = a1->f64[0];
  }

  if (a3 == 2)
  {
    v17 = v14[1];
    v16 = *v14 + v17;
    a2->f64[1] = (*v14 - v17) * a9;
    goto LABEL_9;
  }

  if (a3 == 1)
  {
    v16 = *v14;
LABEL_9:
    a2->f64[0] = v16 * a9;
    goto LABEL_10;
  }

  v18 = ((a3 + 1) >> 1);
  if (a3)
  {
    a2->f64[0] = *v14;
    a2->f64[1] = 0.0;
    if (v18 >= 2)
    {
      v47 = &a6[a3 - 1];
      v48 = (v14 + 1);
      v49 = a6 + 1;
      v50 = v18 - 1;
      do
      {
        v52 = *v49++;
        v51 = v52;
        v54 = *v47--;
        v53 = v54;
        f64 = a2[v51].f64;
        v56 = *v48++;
        *f64 = v56.f64[0];
        f64[1] = -v56.f64[1];
        a2[v53] = v56;
        --v50;
      }

      while (v50);
    }

    cv::DFT<double>(a2, a2, a3, a4, a5, a6, a7, a3, 1.0, a10, 256);
    v13->f64[0] = v13->f64[0] * a9;
    if (a3 >= 2)
    {
      v57 = v13[2].f64;
      v58 = v13[1].f64;
      v59 = 1;
      do
      {
        v60 = *(v57 - 2) * a9;
        v61 = *v57;
        v57 += 4;
        *(v58 - 1) = v60;
        *v58 = v61 * a9;
        v59 += 2;
        v58 += 2;
      }

      while (v59 < a3);
    }
  }

  else
  {
    v19 = v14[1];
    v20 = v14[a3 - 1];
    v21 = v20 - *v14;
    a2->f64[0] = *v14 + v20;
    a2->f64[1] = v21;
    if (v18 < 3)
    {
      LODWORD(v29) = 2;
    }

    else
    {
      v22 = a3;
      v23 = v14 - 3;
      v24 = (a7 + 24);
      v25 = &a2[1].f64[1];
      v26 = v14 + 3;
      v27 = a6 + 1;
      v28 = &a6[v18 - 1];
      v29 = 2;
      v30 = a2;
      do
      {
        v31 = v23[a3];
        v32 = v23[v22 + 1];
        v33 = v19 + v31;
        v34 = v19 - v31;
        v35 = *(v26 - 1);
        v19 = *v26;
        v36 = v35 - v32;
        v37 = v35 + v32;
        v38 = *(v24 - 1);
        v39 = v37 * *v24 + v34 * v38;
        v40 = v37 * v38 - v34 * *v24;
        v41 = v33 - v40;
        v42 = -v36 - v39;
        v43 = v33 + v40;
        if (v14 == a2)
        {
          *(v25 - 1) = v41;
          *v25 = v42;
          v30[v22 - 2] = v43;
          v46 = &v30[v22 - 1];
        }

        else
        {
          v44 = &a2->f64[*v27];
          *v44 = v41;
          v44[1] = v42;
          v45 = &a2->f64[*v28];
          *v45 = v43;
          v46 = v45 + 1;
        }

        v29 += 2;
        v30 -= 2;
        v23 -= 2;
        v24 += 2;
        *v46 = v36 - v39;
        v25 += 2;
        v26 += 2;
        ++v27;
        --v28;
      }

      while (v29 < v18);
    }

    if (v29 <= v18)
    {
      v62 = v19 + v19;
      v63 = v14[v18] + v14[v18];
      if (v14 == a2)
      {
        v66 = &a2->f64[v18];
        *v66 = v62;
        v65 = v66 + 1;
      }

      else
      {
        v64 = a6[v18];
        a2[v64].f64[0] = v62;
        v65 = &a2->f64[((2 * v64) | 1)];
      }

      *v65 = v63;
    }

    v67 = *a5 >> 1;
    *a5 = v67;
    cv::DFT<double>(a2, a2, v18, a4 - (v67 == 1), &a5[v67 == 1], a6, a7, a3, 1.0, a10, (v14 != a2) << 8);
    *a5 *= 2;
    v68.f64[0] = a9;
    if (a3 >= 1)
    {
      v69 = 0;
      do
      {
        v68.f64[1] = -a9;
        *v13 = vmulq_f64(*v13, v68);
        ++v13;
        v69 += 2;
      }

      while (v69 < a3);
    }
  }

LABEL_10:
  if ((a11 & 0x200) != 0)
  {
    *v14 = v15;
  }
}

void cv::DFTInit()
{
  __assert_rtn("DFTInit", "dxt.cpp", 211, "nf < 34");
}

{
  __assert_rtn("DFTInit", "dxt.cpp", 347, "elem_size == sizeof(Complex<float>)");
}

void cv::DFT<float>()
{
  __assert_rtn("DFT", "dxt.cpp", 563, "(flags & DFT_NO_PERMUTE) == 0");
}

{
  __assert_rtn("DFT", "dxt.cpp", 581, "(unsigned)k0 < (unsigned)n && (unsigned)k1 < (unsigned)n");
}

{
  __assert_rtn("DFT", "dxt.cpp", 569, "(unsigned)k0 < (unsigned)n && (unsigned)k1 < (unsigned)n");
}

{
  __assert_rtn("DFT", "dxt.cpp", 627, "(unsigned)j < (unsigned)n");
}

{
  __assert_rtn("DFT", "dxt.cpp", 610, "(unsigned)j < (unsigned)n2");
}

void cv::CCSIDFT<float>()
{
  __assert_rtn("CCSIDFT", "dxt.cpp", 1102, "tab_size == n");
}

{
  __assert_rtn("CCSIDFT", "dxt.cpp", 1106, "src != dst");
}

uint64_t cv::copyMask8u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*(a3 + i))
          {
            *(a5 + i) = *(result + i);
          }
        }
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask16u(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*(a3 + i))
          {
            *(a5 + 2 * i) = *(result + 2 * i);
          }
        }
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask8uC3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 6;
        do
        {
          if (*(a3 + v9))
          {
            v11 = a5 + v10;
            v12 = *(result + v10 - 6);
            *(v11 - 4) = *(result + v10 - 4);
            *(v11 - 6) = v12;
          }

          if (*(a3 + v9 + 1))
          {
            v13 = a5 + v10;
            v14 = *(result + v10 - 3);
            *(v13 - 1) = *(result + v10 - 1);
            *(v13 - 3) = v14;
          }

          if (*(a3 + v9 + 2))
          {
            v15 = a5 + v10;
            v16 = *(result + v10);
            *(v15 + 2) = *(result + v10 + 2);
            *v15 = v16;
          }

          if (*(a3 + v9 + 3))
          {
            v17 = a5 + v10;
            v18 = *(result + v10 + 3);
            *(v17 + 5) = *(result + v10 + 5);
            *(v17 + 3) = v18;
          }

          v9 += 4;
          v10 += 12;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        v19 = 3 * v9;
        do
        {
          if (*(a3 + v9))
          {
            v20 = a5 + v19;
            v21 = *(result + v19);
            *(v20 + 2) = *(result + v19 + 2);
            *v20 = v21;
          }

          ++v9;
          v19 += 3;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask32s(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 8;
        do
        {
          if (*(a3 + v9))
          {
            *(a5 + v10 - 8) = *(result + v10 - 8);
          }

          if (*(a3 + v9 + 1))
          {
            *(a5 + v10 - 4) = *(result + v10 - 4);
          }

          if (*(a3 + v9 + 2))
          {
            *(a5 + v10) = *(result + v10);
          }

          if (*(a3 + v9 + 3))
          {
            *(a5 + v10 + 4) = *(result + v10 + 4);
          }

          v9 += 4;
          v10 += 16;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          if (*(a3 + v9))
          {
            *(a5 + 4 * v9) = *(result + 4 * v9);
          }

          ++v9;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask16uC3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 12;
        do
        {
          if (*(a3 + v9))
          {
            v11 = a5 + v10;
            v12 = *(result + v10 - 12);
            *(v11 - 8) = *(result + v10 - 8);
            *(v11 - 12) = v12;
          }

          if (*(a3 + v9 + 1))
          {
            v13 = a5 + v10;
            v14 = *(result + v10 - 6);
            *(v13 - 2) = *(result + v10 - 2);
            *(v13 - 6) = v14;
          }

          if (*(a3 + v9 + 2))
          {
            v15 = a5 + v10;
            v16 = *(result + v10);
            *(v15 + 4) = *(result + v10 + 4);
            *v15 = v16;
          }

          if (*(a3 + v9 + 3))
          {
            v17 = a5 + v10;
            v18 = *(result + v10 + 6);
            *(v17 + 10) = *(result + v10 + 10);
            *(v17 + 6) = v18;
          }

          v9 += 4;
          v10 += 24;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        v19 = 6 * v9;
        do
        {
          if (*(a3 + v9))
          {
            v20 = a5 + v19;
            v21 = *(result + v19);
            *(v20 + 4) = *(result + v19 + 4);
            *v20 = v21;
          }

          ++v9;
          v19 += 6;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask32sC2(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 16;
        do
        {
          if (*(a3 + v9))
          {
            *(a5 + v10 - 16) = *(result + v10 - 16);
          }

          if (*(a3 + v9 + 1))
          {
            *(a5 + v10 - 8) = *(result + v10 - 8);
          }

          if (*(a3 + v9 + 2))
          {
            *(a5 + v10) = *(result + v10);
          }

          if (*(a3 + v9 + 3))
          {
            *(a5 + v10 + 8) = *(result + v10 + 8);
          }

          v9 += 4;
          v10 += 32;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        do
        {
          if (*(a3 + v9))
          {
            *(a5 + 8 * v9) = *(result + 8 * v9);
          }

          ++v9;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask32sC3(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 24;
        do
        {
          if (*(a3 + v9))
          {
            v11 = a5 + v10;
            v12 = *(result + v10 - 24);
            *(v11 - 16) = *(result + v10 - 16);
            *(v11 - 24) = v12;
          }

          if (*(a3 + v9 + 1))
          {
            v13 = a5 + v10;
            v14 = *(result + v10 - 12);
            *(v13 - 4) = *(result + v10 - 4);
            *(v13 - 12) = v14;
          }

          if (*(a3 + v9 + 2))
          {
            v15 = a5 + v10;
            v16 = *(result + v10);
            *(v15 + 8) = *(result + v10 + 8);
            *v15 = v16;
          }

          if (*(a3 + v9 + 3))
          {
            v17 = a5 + v10;
            v18 = *(result + v10 + 12);
            *(v17 + 20) = *(result + v10 + 20);
            *(v17 + 12) = v18;
          }

          v9 += 4;
          v10 += 48;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        v19 = 12 * v9;
        do
        {
          if (*(a3 + v9))
          {
            v20 = a5 + v19;
            v21 = *(result + v19);
            *(v20 + 8) = *(result + v19 + 8);
            *v20 = v21;
          }

          ++v9;
          v19 += 12;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask32sC4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 32;
        do
        {
          if (*(a3 + v9))
          {
            *(a5 + v10 - 32) = *(result + v10 - 32);
          }

          if (*(a3 + v9 + 1))
          {
            *(a5 + v10 - 16) = *(result + v10 - 16);
          }

          if (*(a3 + v9 + 2))
          {
            *(a5 + v10) = *(result + v10);
          }

          if (*(a3 + v9 + 3))
          {
            *(a5 + v10 + 16) = *(result + v10 + 16);
          }

          v9 += 4;
          v10 += 64;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        v11 = 16 * v9;
        do
        {
          if (*(a3 + v9))
          {
            *(a5 + v11) = *(result + v11);
          }

          ++v9;
          v11 += 16;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask32sC6(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 48;
        do
        {
          if (*(a3 + v9))
          {
            v11 = a5 + v10;
            v12 = *(result + v10 - 48);
            *(v11 - 32) = *(result + v10 - 32);
            *(v11 - 48) = v12;
          }

          if (*(a3 + v9 + 1))
          {
            v13 = a5 + v10;
            v14 = *(result + v10 - 24);
            *(v13 - 8) = *(result + v10 - 8);
            *(v13 - 24) = v14;
          }

          if (*(a3 + v9 + 2))
          {
            v15 = a5 + v10;
            v16 = *(result + v10);
            *(v15 + 16) = *(result + v10 + 16);
            *v15 = v16;
          }

          if (*(a3 + v9 + 3))
          {
            v17 = a5 + v10;
            v18 = *(result + v10 + 24);
            *(v17 + 40) = *(result + v10 + 40);
            *(v17 + 24) = v18;
          }

          v9 += 4;
          v10 += 96;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        v19 = 24 * v9;
        do
        {
          if (*(a3 + v9))
          {
            v20 = a5 + v19;
            v21 = *(result + v19);
            *(v20 + 16) = *(result + v19 + 16);
            *v20 = v21;
          }

          ++v9;
          v19 += 24;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t cv::copyMask32sC8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7)
{
  v7 = a7[1];
  if (v7)
  {
    v8 = *a7;
    do
    {
      if (v8 >= 4)
      {
        v9 = 0;
        v10 = 64;
        do
        {
          if (*(a3 + v9))
          {
            v11 = a5 + v10;
            v12 = *(result + v10 - 48);
            *(v11 - 64) = *(result + v10 - 64);
            *(v11 - 48) = v12;
          }

          if (*(a3 + v9 + 1))
          {
            v13 = a5 + v10;
            v14 = *(result + v10 - 16);
            *(v13 - 32) = *(result + v10 - 32);
            *(v13 - 16) = v14;
          }

          if (*(a3 + v9 + 2))
          {
            v15 = (a5 + v10);
            v16 = *(result + v10 + 16);
            *v15 = *(result + v10);
            v15[1] = v16;
          }

          if (*(a3 + v9 + 3))
          {
            v17 = a5 + v10;
            v18 = *(result + v10 + 48);
            *(v17 + 32) = *(result + v10 + 32);
            *(v17 + 48) = v18;
          }

          v9 += 4;
          v10 += 128;
        }

        while (v9 <= v8 - 4);
        v9 = v9;
      }

      else
      {
        v9 = 0;
      }

      if (v9 < v8)
      {
        v19 = 32 * v9;
        do
        {
          if (*(a3 + v9))
          {
            v20 = (a5 + v19);
            v21 = *(result + v19 + 16);
            *v20 = *(result + v19);
            v20[1] = v21;
          }

          ++v9;
          v19 += 32;
        }

        while (v9 < v8);
      }

      a3 += a4;
      result += a2;
      a5 += a6;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t (*cv::getCopyMaskFunc(unint64_t this))(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, uint64_t *a8)
{
  if (this > 0x20)
  {
    return cv::copyMaskGeneric;
  }

  if (cv::copyMaskTab[this])
  {
    return cv::copyMaskTab[this];
  }

  return cv::copyMaskGeneric;
}

uint64_t cv::copyMaskGeneric(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int *a7, uint64_t *a8)
{
  v8 = *a8;
  v9 = a7[1];
  v10 = v9 - 1;
  a7[1] = v9 - 1;
  if (v9)
  {
    v11 = *a7;
    do
    {
      if (v11 >= 1)
      {
        v12 = 0;
        v13 = a5;
        v14 = result;
        do
        {
          if (*(a3 + v12))
          {
            v15 = v8 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v16 = 0;
            do
            {
              *(v13 + v16) = *(v14 + v16);
              ++v16;
            }

            while (v8 != v16);
            v11 = *a7;
          }

          ++v12;
          v14 += v8;
          v13 += v8;
        }

        while (v12 < v11);
        v10 = a7[1];
      }

      v17 = v10;
      a3 += a4;
      result += a2;
      a5 += a6;
      a7[1] = --v10;
    }

    while (v17);
  }

  return result;
}

void cv::Mat::copyTo(cv::Mat *this, const cv::_OutputArray *a2)
{
  v46[3] = *MEMORY[0x277D85DE8];
  v4 = (*(*a2 + 64))(a2, 0xFFFFFFFFLL);
  if ((*(*a2 + 104))(a2) && v4 != (*this & 0xFFF))
  {
    if (((*this ^ v4) & 0xFF8) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "channels() == CV_MAT_CN(dtype)");
      std::string::basic_string[abi:ne200100]<0>(v46, "copyTo");
      std::string::basic_string[abi:ne200100]<0>(v45, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
      cv::Exception::Exception(v36, -215, __p, v46, v45, 212);
      cv::error(v36, v15);
    }

    cv::Mat::convertTo(this, a2, v4, 1.0, 0.0);
  }

  else
  {
    if (*(this + 2))
    {
      if (*(this + 1) >= 3)
      {
        v16 = *(this + 8);
        v17 = 1;
        v18 = *(this + 1);
        do
        {
          v19 = *v16++;
          v17 *= v19;
          --v18;
        }

        while (v18);
        if (v17)
        {
          (*(*a2 + 144))(a2);
          (**a2)(v36, a2, 0xFFFFFFFFLL);
          if (*(this + 2) != __dst)
          {
            v20 = *(this + 1);
            if (v20 >= 3)
            {
              v23 = *(this + 8);
              v21 = 1;
              do
              {
                v24 = *v23++;
                v21 *= v24;
                --v20;
              }

              while (v20);
            }

            else
            {
              v21 = *(this + 3) * *(this + 2);
            }

            if (v21)
            {
              v46[0] = this;
              v46[1] = v36;
              v45[0] = 0;
              v45[1] = 0;
              cv::NAryMatIterator::NAryMatIterator(__p, v46, v45, 2);
              v25 = *(this + 1);
              if (v25 < 1)
              {
                v26 = 0;
              }

              else
              {
                v26 = *(*(this + 9) + 8 * v25 - 8);
              }

              v27 = v26 * __p[5];
              v28 = -1;
              while (++v28 < __p[4])
              {
                memcpy(v45[1], v45[0], v27);
                cv::NAryMatIterator::operator++(__p);
              }
            }
          }

          if (v38 && atomic_fetch_add(v38, 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(v36);
          }

          __dst = 0;
          v39 = 0;
          v40 = 0;
          v41 = 0;
          if (SHIDWORD(v36[0]) >= 1)
          {
            v29 = 0;
            v30 = v42;
            do
            {
              *(v30 + 4 * v29++) = 0;
            }

            while (v29 < SHIDWORD(v36[0]));
          }

          goto LABEL_57;
        }
      }

      else if (*(this + 3) * *(this + 2))
      {
        (*(*a2 + 136))(a2, *(this + 2), *(this + 3), *this & 0xFFF, 0xFFFFFFFFLL, 0, 0);
        (**a2)(v36, a2, 0xFFFFFFFFLL);
        v5 = *(this + 2);
        v6 = __dst;
        if (v5 != __dst)
        {
          v7 = *(this + 2);
          if (v7 >= 1)
          {
            LODWORD(v8) = *(this + 3);
            if (v8 >= 1)
            {
              v9 = *(this + 1);
              v10 = *this & v36[0];
              v11 = v8 * v7;
              if (v11 >> 31)
              {
                LODWORD(v11) = *(this + 3);
                v12 = *(this + 2);
              }

              else
              {
                v12 = 1;
              }

              if ((v10 & 0x4000) != 0)
              {
                v8 = v11;
              }

              else
              {
                v8 = v8;
              }

              if ((v10 & 0x4000) != 0)
              {
                v13 = v12;
              }

              else
              {
                v13 = *(this + 2);
              }

              if (v9 < 1)
              {
                v14 = 0;
              }

              else
              {
                v14 = *(*(this + 9) + 8 * v9 - 8);
              }

              v31 = v14 * v8;
              do
              {
                --v13;
                memcpy(v6, v5, v31);
                v5 += *(this + 10);
                v6 += v44;
              }

              while (v13);
            }
          }
        }

        if (v38 && atomic_fetch_add(v38, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(v36);
        }

        __dst = 0;
        v39 = 0;
        v40 = 0;
        v41 = 0;
        if (SHIDWORD(v36[0]) >= 1)
        {
          v32 = 0;
          v33 = v42;
          do
          {
            *(v33 + 4 * v32++) = 0;
          }

          while (v32 < SHIDWORD(v36[0]));
        }

LABEL_57:
        v38 = 0;
        if (v43)
        {
          v34 = v43 == &v44;
        }

        else
        {
          v34 = 1;
        }

        if (!v34)
        {
          free(v43);
        }

        return;
      }
    }

    v22 = *(*a2 + 152);

    v22(a2);
  }
}

void sub_22D223E90(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void cv::Mat::copyTo(cv::Mat *this, const cv::_OutputArray *a2, const cv::_InputArray *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  (**a3)(v51, a3, 0xFFFFFFFFLL);
  if (!v52)
  {
    cv::Mat::copyTo(this, a2);
    goto LABEL_53;
  }

  v5 = (LODWORD(v51[0]) >> 3) & 0x1FF;
  if ((v51[0] & 7) != 0 || (v5 ? (v6 = v5 == ((*this >> 3) & 0x1FF)) : (v6 = 1), !v6))
  {
    std::string::basic_string[abi:ne200100]<0>(&v33, "mask.depth() == CV_8U && (mcn == 1 || mcn == cn)");
    std::string::basic_string[abi:ne200100]<0>(v60, "copyTo");
    std::string::basic_string[abi:ne200100]<0>(&v61, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
    cv::Exception::Exception(&v43, -215, &v33, v60, &v61, 271);
    cv::error(&v43, v7);
  }

  if (v5)
  {
    v8 = (0x88442211uLL >> (4 * (*this & 7u))) & 0xF;
LABEL_10:
    v42 = v8;
    goto LABEL_11;
  }

  v31 = *(this + 1);
  if (v31 <= 0)
  {
    v8 = 0;
    goto LABEL_10;
  }

  v8 = *(*(this + 9) + 8 * v31 - 8);
  v42 = v8;
  if (v8 <= 0x20)
  {
LABEL_11:
    v9 = cv::copyMaskTab[v8];
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      v10 = cv::copyMaskGeneric;
    }

    goto LABEL_14;
  }

  v10 = cv::copyMaskGeneric;
LABEL_14:
  (**a2)(&v43, a2, 0xFFFFFFFFLL);
  v11 = v44;
  if (*(&v44 + 1) && atomic_fetch_add(*(&v44 + 1), 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v43);
  }

  *&v44 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (v43.i32[1] >= 1)
  {
    v12 = 0;
    v13 = v48;
    do
    {
      *(v13 + 4 * v12++) = 0;
    }

    while (v12 < v43.i32[1]);
  }

  *(&v44 + 1) = 0;
  if (v49)
  {
    v14 = v49 == &v50;
  }

  else
  {
    v14 = 1;
  }

  if (!v14)
  {
    free(v49);
  }

  (*(*a2 + 144))(a2, *(this + 1), *(this + 8), *this & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**a2)(&v33, a2, 0xFFFFFFFFLL);
  if (v34 != v11)
  {
    v43 = 0u;
    v44 = 0u;
    cv::Mat::operator=(&v33, &v43);
  }

  v15 = v5 + 1;
  if (*(this + 1) > 2)
  {
    v60[0] = this;
    v60[1] = &v33;
    v60[2] = v51;
    v60[3] = 0;
    v61 = 0uLL;
    v62 = 0;
    cv::NAryMatIterator::NAryMatIterator(&v43, v60, &v61, -1);
    v21 = v15 * v46;
    v22 = -1;
    while (++v22 < v45)
    {
      __p[0] = (v21 | 0x100000000);
      v10(v61, 0, v62, 0, *(&v61 + 1), 0, __p, &v42);
      cv::NAryMatIterator::operator++(&v43);
    }
  }

  else
  {
    if (*(*(this + 8) + 4) != v57[1] || **(this + 8) != *v57)
    {
      std::string::basic_string[abi:ne200100]<0>(v60, "size() == mask.size()");
      std::string::basic_string[abi:ne200100]<0>(&v61, "copyTo");
      std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
      cv::Exception::Exception(&v43, -215, v60, &v61, __p, 286);
      cv::error(&v43, v17);
    }

    v18 = *(this + 2);
    v19 = *(this + 3);
    if ((*this & v33 & v51[0] & 0x4000) != 0 && (v20 = v19 * v15 * v18, v20 == v20))
    {
      v18 = 1;
    }

    else
    {
      LODWORD(v20) = v19 * v15;
    }

    v23 = *(this + 2);
    v24 = *(this + 10);
    v43.i64[0] = __PAIR64__(v18, v20);
    v10(v23, v24, v52, v59, v34, v41, v43.i32, &v42);
  }

  if (v35 && atomic_fetch_add(v35, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v33);
  }

  v34 = 0;
  v36 = 0;
  v37 = 0;
  v38 = 0;
  if (SDWORD1(v33) >= 1)
  {
    v25 = 0;
    v26 = v39;
    do
    {
      *(v26 + 4 * v25++) = 0;
    }

    while (v25 < SDWORD1(v33));
  }

  v35 = 0;
  if (v40)
  {
    v27 = v40 == &v41;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    free(v40);
  }

LABEL_53:
  if (v53 && atomic_fetch_add(v53, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v51);
  }

  v52 = 0;
  v54 = 0;
  v55 = 0;
  v56 = 0;
  if (SHIDWORD(v51[0]) >= 1)
  {
    v28 = 0;
    v29 = v57;
    do
    {
      v29[v28++] = 0;
    }

    while (v28 < SHIDWORD(v51[0]));
  }

  v53 = 0;
  if (v58)
  {
    v30 = v58 == &v59;
  }

  else
  {
    v30 = 1;
  }

  if (!v30)
  {
    free(v58);
  }
}

void sub_22D2244B8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, std::exception a31)
{
  cv::Exception::~Exception(&a31);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (*(v31 - 57) < 0)
  {
    operator delete(*(v31 - 80));
  }

  if (*(v31 - 89) < 0)
  {
    operator delete(*(v31 - 112));
  }

  cv::Mat::~Mat(&a15);
  cv::Mat::~Mat((v31 - 208));
  _Unwind_Resume(a1);
}

uint64_t cv::Mat::operator=(uint64_t a1, int64x2_t *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v19[0] = a1;
  __dst = 0;
  cv::NAryMatIterator::NAryMatIterator(v14, v19, &__dst, 1);
  v4 = *(a1 + 4);
  if (v4 < 1)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(a1 + 72) + 8 * v4 - 8);
  }

  v6 = v5 * v16;
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_s64(*a2), vceqzq_s64(a2[1]))))))
  {
    if (v15)
    {
      cv::scalarToRawData(a2, __src, *a1 & 0xFFF, 12);
      if (v6)
      {
        v7 = 0;
        v8 = 12 * ((0x88442211uLL >> (4 * (*a1 & 7u))) & 0xF);
        v9 = v6;
        do
        {
          if (v8 >= v9)
          {
            v10 = v9;
          }

          else
          {
            v10 = v8;
          }

          memcpy(__dst + v7, __src, v10);
          v7 += v8;
          v9 -= v8;
        }

        while (v7 < v6);
      }

      if (v15 >= 2)
      {
        for (i = 1; i < v15; ++i)
        {
          cv::NAryMatIterator::operator++(v14);
          memcpy(__dst, *(a1 + 16), v6);
        }
      }
    }
  }

  else if (v15)
  {
    for (j = 0; j < v15; ++j)
    {
      bzero(__dst, v6);
      cv::NAryMatIterator::operator++(v14);
    }
  }

  return a1;
}

uint64_t cv::Mat::setTo(cv::Mat *this, const cv::_InputArray *a2, const cv::_InputArray *a3)
{
  v5 = MEMORY[0x28223BE20](this);
  v78 = *MEMORY[0x277D85DE8];
  if (!*(v5 + 16))
  {
    return v5;
  }

  v6 = v4;
  v7 = v3;
  (**v3)(&v61, v3, 0xFFFFFFFFLL);
  (**v6)(&v50, v6, 0xFFFFFFFFLL);
  v8 = *v5;
  ((*v7)[5])(v7);
  if (SHIDWORD(v61) > 2 || v63 != 1 && v62 != 1 || (v61 & 0x4000) == 0)
  {
    goto LABEL_6;
  }

  v40 = (v8 >> 3) & 0x1FF;
  v41 = *v69;
  v42 = v69[1];
  v43 = v42 == v40 + 1;
  if (*v69 != 1)
  {
    v43 = 0;
  }

  v44 = v41 == v40 + 1 || *v69 == 1;
  if (v42 != 1)
  {
    v44 = 0;
  }

  if (!v44 && !v43 && (v42 != 1 || v41 != 4 || v40 > 3 || (v61 & 0xFFF) != 6))
  {
LABEL_6:
    std::string::basic_string[abi:ne200100]<0>(__p, "checkScalar(value, type(), _value.kind(), _InputArray::MAT)");
    std::string::basic_string[abi:ne200100]<0>(&v76, "setTo");
    std::string::basic_string[abi:ne200100]<0>(v75, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
    cv::Exception::Exception(&v72, -215, __p, &v76, v75, 346);
    cv::error(&v72, v9);
  }

  if (v53)
  {
    v10 = HIDWORD(v50);
    if (SHIDWORD(v50) >= 3)
    {
      v12 = v58;
      v11 = 1;
      do
      {
        v13 = *v12++;
        v11 *= v13;
        --v10;
      }

      while (v10);
    }

    else
    {
      v11 = v52 * v51;
    }

    if (v11 && (v50 & 0xFFF) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(__p, "mask.empty() || mask.type() == CV_8U");
      std::string::basic_string[abi:ne200100]<0>(&v76, "setTo");
      std::string::basic_string[abi:ne200100]<0>(v75, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
      cv::Exception::Exception(&v72, -215, __p, &v76, v75, 347);
      cv::error(&v72, v14);
    }
  }

  v15 = *(v5 + 4);
  if (v15 <= 0)
  {
    v16 = 0;
    v49 = 0;
  }

  else
  {
    v16 = *(*(v5 + 72) + 8 * v15 - 8);
    v49 = v16;
    if (v16 > 0x20)
    {
      v17 = cv::copyMaskGeneric;
      goto LABEL_22;
    }
  }

  v18 = cv::copyMaskTab[v16];
  if (v18)
  {
    v17 = v18;
  }

  else
  {
    v17 = cv::copyMaskGeneric;
  }

LABEL_22:
  v77 = 0;
  v76 = v5;
  if (!v53)
  {
    goto LABEL_29;
  }

  v19 = HIDWORD(v50);
  if (SHIDWORD(v50) >= 3)
  {
    v21 = v58;
    v20 = 1;
    do
    {
      v22 = *v21++;
      v20 *= v22;
      --v19;
    }

    while (v19);
  }

  else
  {
    v20 = v52 * v51;
  }

  if (v20)
  {
    v23 = &v50;
  }

  else
  {
LABEL_29:
    v23 = 0;
  }

  *(&v76 + 1) = v23;
  v77 = 0;
  v75[0] = 0;
  v75[1] = 0;
  cv::NAryMatIterator::NAryMatIterator(__p, &v76, v75, -1);
  v24 = v48;
  v25 = (v49 + 1023) / v49;
  if (v25 >= v48)
  {
    LODWORD(v25) = v48;
  }

  v26 = v25;
  v72 = v74;
  v73 = 4104;
  if (v49 * v25 + 32 >= 0x1009)
  {
    v73 = v49 * v25 + 32;
    operator new[]();
  }

  v45 = v5;
  cv::convertAndUnrollScalar(&v61, (*v5 & 0xFFF), v74, v25);
  for (i = 0; i < __p[4]; ++i)
  {
    if (v24 >= 1)
    {
      for (j = 0; j < v24; j += v26)
      {
        v29 = v24 - j;
        if (v24 - j >= v26)
        {
          v29 = v26;
        }

        v30 = v29;
        v31 = v49 * v29;
        if (v75[1])
        {
          v46[0] = v29;
          v46[1] = 1;
          v17(v74, 0, v75[1], 0, v75[0], 0, v46, &v49);
          v75[1] += v30;
        }

        else
        {
          memcpy(v75[0], v74, v49 * v29);
        }

        v75[0] += v31;
      }
    }

    cv::NAryMatIterator::operator++(__p);
  }

  if (v72 != v74 && v72 != 0)
  {
    MEMORY[0x2318CB180]();
  }

  v5 = v45;
  if (v54 && atomic_fetch_add(v54, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v50);
  }

  v53 = 0;
  v55 = 0;
  v56 = 0;
  v57 = 0;
  if (SHIDWORD(v50) >= 1)
  {
    v33 = 0;
    v34 = v58;
    do
    {
      v34[v33++] = 0;
    }

    while (v33 < SHIDWORD(v50));
  }

  v54 = 0;
  if (v59)
  {
    v35 = v59 == &v60;
  }

  else
  {
    v35 = 1;
  }

  if (!v35)
  {
    free(v59);
  }

  if (v65 && atomic_fetch_add(v65, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v61);
  }

  v64 = 0;
  v66 = 0;
  v67 = 0;
  v68 = 0;
  if (SHIDWORD(v61) >= 1)
  {
    v36 = 0;
    v37 = v69;
    do
    {
      v37[v36++] = 0;
    }

    while (v36 < SHIDWORD(v61));
  }

  v65 = 0;
  if (v70)
  {
    v38 = v70 == &v71;
  }

  else
  {
    v38 = 1;
  }

  if (!v38)
  {
    free(v70);
  }

  return v5;
}

void sub_22D224DA8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, void *__p, uint64_t a12, int a13, __int16 a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47)
{
  cv::Exception::~Exception(&a47);
  if (*(v47 + 23) < 0)
  {
    operator delete(*(v48 - 144));
  }

  if (*(v47 + 47) < 0)
  {
    operator delete(*(v48 - 120));
  }

  if (a16 < 0)
  {
    operator delete(__p);
  }

  cv::Mat::~Mat(&a23);
  cv::Mat::~Mat(&a35);
  _Unwind_Resume(a1);
}

void cv::repeat(void (***this)(uint64_t *__return_ptr), const cv::_InputArray *a2, int a3, uint64_t a4, const cv::_OutputArray *a5)
{
  v7 = a2;
  (**this)(&v40);
  if (SHIDWORD(v40) >= 3)
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, "src.dims <= 2");
    std::string::basic_string[abi:ne200100]<0>(&v29, "repeat");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
    cv::Exception::Exception(v31, -215, &v30, &v29, &__p, 485);
    cv::error(v31, v8);
  }

  if (v7 < 1 || a3 <= 0)
  {
    std::string::basic_string[abi:ne200100]<0>(&v30, "ny > 0 && nx > 0");
    std::string::basic_string[abi:ne200100]<0>(&v29, "repeat");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
    cv::Exception::Exception(v31, -215, &v30, &v29, &__p, 486);
    cv::error(v31, v9);
  }

  (*(*a4 + 136))(a4, (v41 * v7), (v42 * a3), v40 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**a4)(v31, a4, 0xFFFFFFFFLL);
  v10 = *v48;
  v11 = *v37;
  if (SHIDWORD(v40) < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = v49[HIDWORD(v40) - 1];
  }

  v13 = v37[1] * v12;
  if (v10 < 1)
  {
    v17 = 0;
  }

  else
  {
    v14 = 0;
    v15 = (v12 * v48[1]);
    do
    {
      if (v13 >= 1)
      {
        v16 = 0;
        do
        {
          memcpy((v32 + v14 * v39 + v16), (v43 + v50 * v14), v15);
          v16 += v15;
        }

        while (v16 < v13);
      }

      ++v14;
    }

    while (v14 != v10);
    v17 = v10;
  }

  if (v17 < v11)
  {
    v18 = v10;
    v19 = v13;
    v20 = v17;
    v21 = v17 - v18;
    do
    {
      memcpy((v32 + v39 * v20++), (v32 + v39 * v21++), v19);
    }

    while (v11 != v20);
  }

  if (v33 && atomic_fetch_add(v33, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v31);
  }

  v32 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0;
  if (SHIDWORD(v31[0]) >= 1)
  {
    v22 = 0;
    v23 = v37;
    do
    {
      v23[v22++] = 0;
    }

    while (v22 < SHIDWORD(v31[0]));
  }

  v33 = 0;
  if (v38)
  {
    v24 = v38 == &v39;
  }

  else
  {
    v24 = 1;
  }

  if (!v24)
  {
    free(v38);
  }

  if (v44 && atomic_fetch_add(v44, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v40);
  }

  v43 = 0;
  v45 = 0;
  v46 = 0;
  v47 = 0;
  if (SHIDWORD(v40) >= 1)
  {
    v25 = 0;
    v26 = v48;
    do
    {
      v26[v25++] = 0;
    }

    while (v25 < SHIDWORD(v40));
  }

  v44 = 0;
  if (v49)
  {
    v27 = v49 == &v50;
  }

  else
  {
    v27 = 1;
  }

  if (!v27)
  {
    free(v49);
  }
}

void sub_22D225288(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  cv::Mat::~Mat((v27 - 160));
  _Unwind_Resume(a1);
}

void cvCopy(unsigned __int16 *a1, uint64_t a2, cv *a3, uint64_t a4, uint64_t a5, BOOL a6)
{
  v7 = a2;
  v8 = a1;
  v76[5] = *MEMORY[0x277D85DE8];
  if (!a1 || !a2 || a1[1] << 16 != 1111752704 || *(a2 + 2) != 16964)
  {
    cv::cvarrToMat(v59, a1, 0, 1, a5, a6);
    cv::cvarrToMat(v51, v7, 0, 1, v23, v24);
    if (((LOBYTE(v51[0]) ^ LOBYTE(v59[0])) & 7) == 0)
    {
      v25 = v64;
      v26 = *(v64 - 1);
      v27 = v56;
      if (v26 == *(v56 - 1))
      {
        if (v26 == 2)
        {
          if (*v64 != *v56 || v64[1] != v56[1])
          {
            goto LABEL_26;
          }

LABEL_27:
          if (v8)
          {
            if (*v8 != 144 || !*(v8 + 11))
            {
              LODWORD(v8) = 0;
              if (!v7)
              {
LABEL_38:
                if (v8 | v7)
                {
                  if (!v8 && (v59[0] & 0xFF8) != 0 || !v7 && (v51[0] & 0xFF8) != 0)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__p, "(coi1 != 0 || src.channels() == 1) && (coi2 != 0 || dst.channels() == 1)");
                    std::string::basic_string[abi:ne200100]<0>(&v48, "cvCopy");
                    std::string::basic_string[abi:ne200100]<0>(&v50, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
                    v37 = cv::Exception::Exception(&v67, -215, &__p, &v48, &v50, 567);
                    cv::error(v37, v38);
                  }

                  v67 = vadd_s32(vmax_s32(__PAIR64__(v7, v8), 0x100000001), -1);
                  cv::mixChannels(v59, 1, v51, 1, &v67, 1);
                }

                else
                {
                  if (((LOWORD(v51[0]) ^ LOWORD(v59[0])) & 0xFF8) != 0)
                  {
                    std::string::basic_string[abi:ne200100]<0>(&__p, "src.channels() == dst.channels()");
                    std::string::basic_string[abi:ne200100]<0>(&v48, "cvCopy");
                    std::string::basic_string[abi:ne200100]<0>(&v50, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
                    v30 = cv::Exception::Exception(&v67, -215, &__p, &v48, &v50, 574);
                    cv::error(v30, v31);
                  }

                  if (a3)
                  {
                    cv::_OutputArray::_OutputArray(&__p, v51);
                    cv::cvarrToMat(&v67, a3, 0, 0, v32, v33);
                    cv::_InputArray::_InputArray(&v48, &v67);
                    cv::Mat::copyTo(v59, &__p, &v48);
                    if (v70 && atomic_fetch_add(v70, 0xFFFFFFFF) == 1)
                    {
                      cv::Mat::deallocate(&v67);
                    }

                    v69 = 0;
                    v71 = 0;
                    v72 = 0;
                    v73 = 0;
                    if (v67.i32[1] >= 1)
                    {
                      v34 = 0;
                      v35 = v74;
                      do
                      {
                        *(v35 + 4 * v34++) = 0;
                      }

                      while (v34 < v67.i32[1]);
                    }

                    v70 = 0;
                    if (v75)
                    {
                      v36 = v75 == v76;
                    }

                    else
                    {
                      v36 = 1;
                    }

                    if (!v36)
                    {
                      free(v75);
                    }
                  }

                  else
                  {
                    cv::_OutputArray::_OutputArray(&v67, v51);
                    cv::Mat::copyTo(v59, &v67);
                  }
                }

                if (v52 && atomic_fetch_add(v52, 0xFFFFFFFF) == 1)
                {
                  cv::Mat::deallocate(v51);
                }

                v51[2] = 0;
                v53 = 0;
                v54 = 0;
                v55 = 0;
                if (SHIDWORD(v51[0]) >= 1)
                {
                  v39 = 0;
                  v40 = v56;
                  do
                  {
                    v40[v39++] = 0;
                  }

                  while (v39 < SHIDWORD(v51[0]));
                }

                v52 = 0;
                if (v57)
                {
                  v41 = v57 == &v58;
                }

                else
                {
                  v41 = 1;
                }

                if (!v41)
                {
                  free(v57);
                }

                if (v60 && atomic_fetch_add(v60, 0xFFFFFFFF) == 1)
                {
                  cv::Mat::deallocate(v59);
                }

                v59[2] = 0;
                v61 = 0;
                v62 = 0;
                v63 = 0;
                if (SHIDWORD(v59[0]) >= 1)
                {
                  v42 = 0;
                  v43 = v64;
                  do
                  {
                    v43[v42++] = 0;
                  }

                  while (v42 < SHIDWORD(v59[0]));
                }

                v60 = 0;
                if (v65)
                {
                  v44 = v65 == &v66;
                }

                else
                {
                  v44 = 1;
                }

                if (!v44)
                {
                  free(v65);
                }

                return;
              }

LABEL_34:
              if (*v7 == 144 && *(v7 + 88))
              {
                LODWORD(v7) = cvGetImageCOI(v7);
              }

              else
              {
                LODWORD(v7) = 0;
              }

              goto LABEL_38;
            }

            LODWORD(v8) = cvGetImageCOI(v8);
          }

          if (!v7)
          {
            goto LABEL_38;
          }

          goto LABEL_34;
        }

        if (v26 < 1)
        {
          goto LABEL_27;
        }

        while (1)
        {
          v46 = *v25++;
          v45 = v46;
          v47 = *v27++;
          if (v45 != v47)
          {
            break;
          }

          if (!--v26)
          {
            goto LABEL_27;
          }
        }
      }
    }

LABEL_26:
    std::string::basic_string[abi:ne200100]<0>(&__p, "src.depth() == dst.depth() && src.size == dst.size");
    std::string::basic_string[abi:ne200100]<0>(&v48, "cvCopy");
    std::string::basic_string[abi:ne200100]<0>(&v50, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
    v28 = cv::Exception::Exception(&v67, -215, &__p, &v48, &v50, 556);
    cv::error(v28, v29);
  }

  if (a3)
  {
    std::string::basic_string[abi:ne200100]<0>(v59, "maskarr == 0");
    std::string::basic_string[abi:ne200100]<0>(v51, "cvCopy");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/copy.cpp");
    v9 = cv::Exception::Exception(&v67, -215, v59, v51, &__p, 522);
    cv::error(v9, v10);
  }

  v11 = *(a1 + 1);
  *(a2 + 4) = v11;
  memcpy((a2 + 52), a1 + 26, 4 * v11);
  *(v7 + 44) = *(v8 + 22);
  cvClearSet(*(v7 + 24));
  v12 = *(v7 + 40);
  v13 = *(v7 + 32);
  if (*(*(v8 + 3) + 104) >= 3 * v12)
  {
    cvFree_(v13);
    v14 = *(v8 + 10);
    *(v7 + 40) = v14;
    *(v7 + 32) = 0;
    v13 = malloc_type_malloc(8 * v14, 0x80040B8603338uLL);
    *(v7 + 32) = v13;
    v12 = *(v7 + 40);
  }

  bzero(v13, 8 * v12);
  inited = cvInitSparseMatIterator(v8, &v67);
  if (inited)
  {
    while (1)
    {
      v16 = *(v7 + 24);
      v17 = *(v16 + 96);
      v59[0] = v17;
      if (v17)
      {
        *(v16 + 96) = v17[1];
        *v17 &= 0x3FFFFFFu;
        ++*(v16 + 104);
      }

      else
      {
        cvSetAdd(v16, 0, v59);
        v17 = v59[0];
        v16 = *(v7 + 24);
      }

      v18 = (*(v7 + 40) - 1) & *inited;
      memcpy(v17, inited, *(v16 + 44));
      v19 = *(v7 + 32);
      v17[1] = *(v19 + 8 * v18);
      *(v19 + 8 * v18) = v17;
      inited = *(v68 + 1);
      if (!inited)
      {
        v20 = *(*&v67 + 40);
        if (v69 + 1 >= v20)
        {
          return;
        }

        v21 = v69 + 1;
        v22 = ~v69 + v20;
        while (1)
        {
          inited = *(*(*&v67 + 32) + 8 * v21);
          if (inited)
          {
            break;
          }

          ++v21;
          if (!--v22)
          {
            return;
          }
        }

        LODWORD(v69) = v21;
      }

      v68 = inited;
    }
  }
}

void sub_22D225A74(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, uint64_t a16, void *__p, uint64_t a18, int a19, __int16 a20, char a21, char a22, uint64_t a23, void *a24, uint64_t a25, int a26, __int16 a27, char a28, char a29, void *a30, uint64_t a31, int a32, __int16 a33, char a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, uint64_t a46, int a47, __int16 a48, char a49, char a50)
{
  if (a2)
  {
    __clang_call_terminate(exception_object);
  }

  _Unwind_Resume(exception_object);
}

void anonymous namespace::throw_nogl(_anonymous_namespace_ *this)
{
  std::string::basic_string[abi:ne200100]<0>(&v4, "The library is compiled without OpenGL support");
  std::string::basic_string[abi:ne200100]<0>(&v3, "throw_nogl");
  std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/core/opengl_interop.cpp");
  cv::Exception::Exception(v5, -218, &v4, &v3, &__p, 63);
  cv::error(v5, v1);
}

void sub_22D225C64(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, void *a15, uint64_t a16, int a17, __int16 a18, char a19, char a20, void *a21, uint64_t a22, int a23, __int16 a24, char a25, char a26, std::exception a27)
{
  cv::Exception::~Exception(&a27);
  if (a14 < 0)
  {
    operator delete(__p);
  }

  if (a20 < 0)
  {
    operator delete(a15);
  }

  if (a26 < 0)
  {
    operator delete(a21);
  }

  _Unwind_Resume(a1);
}

double cv::threshold(void (***this)(int *__return_ptr), const cv::_InputArray *a2, const cv::_OutputArray *a3, double a4, double a5)
{
  v5 = a3;
  v120 = *MEMORY[0x277D85DE8];
  (**this)(&v109);
  if ((v5 & 8) != 0)
  {
    v11 = v109;
    if ((v109 & 0xFFF) != 0)
    {
      std::string::basic_string[abi:ne200100]<0>(v99, "src.type() == CV_8UC1");
      std::string::basic_string[abi:ne200100]<0>(v108, "threshold");
      std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/thresh.cpp");
      cv::Exception::Exception(v119, -215, v99, v108, &__p, 718);
      cv::error(v119, v12);
    }

    v10 = *v116;
    v9 = v116[1];
    if ((v109 & 0x4000) != 0)
    {
      v13 = 1;
    }

    else
    {
      v13 = v10;
    }

    if ((v109 & 0x4000) != 0)
    {
      v14 = *v116;
    }

    else
    {
      v14 = 1;
    }

    v15 = (v14 * v9);
    bzero(v119, 0x400uLL);
    if (v13 >= 1)
    {
      v16 = 0;
      v17 = v112;
      v18 = v118;
      do
      {
        if (v15 >= 4)
        {
          v19 = 0;
          do
          {
            v20 = *(v17 + v19 + 1);
            ++v119[*(v17 + v19)];
            ++v119[v20];
            v21 = *(v17 + v19 + 3);
            ++v119[*(v17 + v19 + 2)];
            ++v119[v21];
            v19 += 4;
          }

          while (v19 <= v15 - 4);
          v19 = v19;
        }

        else
        {
          v19 = 0;
        }

        if (v19 < v15)
        {
          do
          {
            ++v119[*(v17 + v19++)];
          }

          while (v15 != v19);
        }

        ++v16;
        v17 += v18;
      }

      while (v16 != v13);
    }

    v22 = 0;
    v23 = 0.0;
    do
    {
      v23 = v23 + v22 * v119[v22];
      ++v22;
    }

    while (v22 != 256);
    v24 = 0;
    v25 = 1.0 / (v15 * v13);
    v26 = v25 * v23;
    a4 = 0.0;
    v27 = 0.0;
    v28 = 0.0;
    v29 = 0.0;
    do
    {
      v30 = v25 * v119[v24];
      v28 = v28 * v29;
      v29 = v29 + v30;
      v31 = 1.0 - v29;
      if (1.0 - v29 >= v29)
      {
        v32 = v29;
      }

      else
      {
        v32 = 1.0 - v29;
      }

      if (v32 >= 0.00000011920929)
      {
        v33 = v29 >= v31 ? v29 : 1.0 - v29;
        if (v33 <= 0.999999881)
        {
          v28 = (v28 + v24 * v30) / v29;
          v34 = (v28 - (v26 - v29 * v28) / v31) * (v29 * v31 * (v28 - (v26 - v29 * v28) / v31));
          if (v34 > v27)
          {
            v27 = v34;
            a4 = v24;
          }
        }
      }

      ++v24;
    }

    while (v24 != 256);
  }

  else
  {
    v10 = *v116;
    v9 = v116[1];
    v11 = v109;
  }

  v119[0] = v9;
  v119[1] = v10;
  (*(*a2 + 128))(a2, v119, v11 & 0xFFF, 0xFFFFFFFFLL, 0, 0);
  (**a2)(v99, a2, 0xFFFFFFFFLL);
  v35 = v5 & 7;
  if ((v109 & 7) == 5)
  {
    goto LABEL_53;
  }

  if ((v109 & 7) == 3)
  {
    v39 = a4 - (a4 < a4);
    a4 = v39;
    v40 = rint(a5);
    if (v35 == 2)
    {
      LODWORD(v40) = v39;
    }

    if (v40 <= -32768)
    {
      LODWORD(v40) = -32768;
    }

    if (v40 >= 0x7FFF)
    {
      LODWORD(v40) = 0x7FFF;
    }

    if ((v39 + 0x8000) < 0xFFFF)
    {
      a5 = v40;
      goto LABEL_53;
    }

    if (v35 < 2 || (v35 == 3 ? (v57 = v39 <= 32766) : (v57 = 1), v57 ? (v58 = 0) : (v58 = 1), v35 != 4 ? (v59 = v35 == 2) : (v59 = 1), v59 ? (v60 = v39 < -32768) : (v60 = 0), !v60 ? (v61 = v58 == 0) : (v61 = 0), !v61))
    {
      if (v35 == 1)
      {
        if (v39 <= 32766)
        {
          v62 = 0;
        }

        else
        {
          v62 = v40;
        }
      }

      else if (v35)
      {
        v62 = 0;
      }

      else if (v39 <= 32766)
      {
        v62 = v40;
      }

      else
      {
        v62 = 0;
      }

      *v108 = v62;
      cv::_InputArray::_InputArray(v119, v108);
      v70 = cv::noArray(v69);
      cv::Mat::setTo(v99, v119, v70);
      goto LABEL_145;
    }

LABEL_136:
    cv::_OutputArray::_OutputArray(v119, v99);
    cv::Mat::copyTo(&v109, v119);
    goto LABEL_145;
  }

  if ((v109 & 7) != 0)
  {
    std::string::basic_string[abi:ne200100]<0>(v108, "");
    std::string::basic_string[abi:ne200100]<0>(&__p, "threshold");
    std::string::basic_string[abi:ne200100]<0>(&v98, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/thresh.cpp");
    cv::Exception::Exception(v119, -210, v108, &__p, &v98, 782);
    cv::error(v119, v41);
  }

  v36 = a4 - (a4 < a4);
  a4 = v36;
  v37 = rint(a5);
  if (v35 == 2)
  {
    LODWORD(v37) = v36;
  }

  v38 = v37 & ~(v37 >> 31);
  if (v38 >= 255)
  {
    v38 = 255;
  }

  if (v36 >= 0xFF)
  {
    if (v35 < 2 || (v35 == 3 ? (v63 = v36 <= 254) : (v63 = 1), v63 ? (v64 = 0) : (v64 = 1), v35 != 4 ? (v65 = v35 == 2) : (v65 = 1), v65 ? (v66 = v36 < 0) : (v66 = 0), !v66 ? (v67 = v64 == 0) : (v67 = 0), !v67))
    {
      if (v35 == 1)
      {
        if (v36 <= 254)
        {
          v68 = 0;
        }

        else
        {
          v68 = v38;
        }
      }

      else if (v35)
      {
        v68 = 0;
      }

      else if (v36 <= 254)
      {
        v68 = v38;
      }

      else
      {
        v68 = 0;
      }

      *v108 = v68;
      cv::_InputArray::_InputArray(v119, v108);
      v72 = cv::noArray(v71);
      cv::Mat::setTo(v99, v119, v72);
      goto LABEL_145;
    }

    goto LABEL_136;
  }

  a5 = v38;
LABEL_53:
  LODWORD(v108[0]) = 0;
  HIDWORD(v108[0]) = v99[1];
  v88 = v109;
  v89 = v110;
  v90 = v111;
  v92 = v113;
  v93 = v114;
  v91 = v112;
  v94 = v115;
  v95 = &v89 + 4;
  v96 = v97;
  v97[0] = 0;
  v97[1] = 0;
  if (v113)
  {
    atomic_fetch_add(v113, 1u);
  }

  if (v110 > 2)
  {
    LODWORD(v89) = 0;
    cv::Mat::copySize(&v88, &v109);
  }

  else
  {
    v42 = v117;
    v43 = v96;
    *v96 = *v117;
    v43[1] = v42[1];
  }

  v81 = v100;
  v80 = *v99;
  v82 = v101;
  v83 = v102;
  v84 = v103;
  v85 = &v80 + 8;
  v87[0] = 0;
  v87[1] = 0;
  v86 = v87;
  if (v101)
  {
    atomic_fetch_add(v101, 1u);
  }

  if (SHIDWORD(v99[0]) > 2)
  {
    DWORD1(v80) = 0;
    cv::Mat::copySize(&v80, v99);
  }

  else
  {
    v44 = v105;
    v45 = v86;
    *v86 = *v105;
    v45[1] = v44[1];
  }

  cv::ThresholdRunner::ThresholdRunner(v119, &v88, &v80, v35, a4, a5);
  v47 = HIDWORD(v99[0]);
  if (SHIDWORD(v99[0]) >= 3)
  {
    v49 = v104;
    v48 = 1;
    do
    {
      v50 = *v49++;
      v48 *= v50;
      --v47;
    }

    while (v47);
  }

  else
  {
    v48 = SHIDWORD(v99[1]) * SLODWORD(v99[1]);
  }

  v46.n128_f64[0] = vcvtd_n_f64_u64(v48, 0x10uLL);
  cv::parallel_for_(v108, v119, v46);
  cv::ThresholdRunner::~ThresholdRunner(v119);
  if (v82 && atomic_fetch_add(v82, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v80);
  }

  v81 = 0;
  v83 = 0uLL;
  *(&v82 + 1) = 0;
  if (SDWORD1(v80) >= 1)
  {
    v51 = 0;
    v52 = v85;
    do
    {
      *&v52[4 * v51++] = 0;
    }

    while (v51 < SDWORD1(v80));
  }

  *&v82 = 0;
  if (v86)
  {
    v53 = v86 == v87;
  }

  else
  {
    v53 = 1;
  }

  if (!v53)
  {
    free(v86);
  }

  if (v92 && atomic_fetch_add(v92, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v88);
  }

  v91 = 0;
  v93 = 0uLL;
  *(&v92 + 1) = 0;
  if (v89 >= 1)
  {
    v54 = 0;
    v55 = v95;
    do
    {
      *&v55[4 * v54++] = 0;
    }

    while (v54 < v89);
  }

  *&v92 = 0;
  if (v96)
  {
    v56 = v96 == v97;
  }

  else
  {
    v56 = 1;
  }

  if (!v56)
  {
    free(v96);
  }

LABEL_145:
  if (v101 && atomic_fetch_add(v101, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v99);
  }

  v100 = 0;
  *(&v101 + 1) = 0;
  v102 = 0uLL;
  if (SHIDWORD(v99[0]) >= 1)
  {
    v73 = 0;
    v74 = v104;
    do
    {
      v74[v73++] = 0;
    }

    while (v73 < SHIDWORD(v99[0]));
  }

  *&v101 = 0;
  if (v105)
  {
    v75 = v105 == &v106;
  }

  else
  {
    v75 = 1;
  }

  if (!v75)
  {
    free(v105);
  }

  if (v113 && atomic_fetch_add(v113, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v109);
  }

  v112 = 0;
  *(&v113 + 1) = 0;
  v114 = 0uLL;
  if (v110 >= 1)
  {
    v76 = 0;
    v77 = v116;
    do
    {
      v77[v76++] = 0;
    }

    while (v76 < v110);
  }

  *&v113 = 0;
  if (v117)
  {
    v78 = v117 == &v118;
  }

  else
  {
    v78 = 1;
  }

  if (!v78)
  {
    free(v117);
  }

  return a4;
}

void sub_22D226648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, void *a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, void *a50, uint64_t a51, uint64_t a52, void *a53, uint64_t a54, uint64_t a55, char a56)
{
  cv::Mat::~Mat(&a37);
  cv::Mat::~Mat(&a56);
  _Unwind_Resume(a1);
}

uint64_t cv::ThresholdRunner::ThresholdRunner(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6)
{
  *a1 = &unk_284055B30;
  *(a1 + 8) = 1124007936;
  v11 = (a1 + 8);
  *(a1 + 88) = 0;
  *(a1 + 72) = a1 + 16;
  *(a1 + 80) = a1 + 88;
  *(a1 + 96) = 0;
  *(a1 + 12) = 0u;
  v12 = (a1 + 12);
  *(a1 + 28) = 0u;
  *(a1 + 44) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 104) = 1124007936;
  v13 = (a1 + 104);
  *(a1 + 184) = 0;
  *(a1 + 168) = a1 + 112;
  *(a1 + 176) = a1 + 184;
  *(a1 + 192) = 0;
  *(a1 + 108) = 0u;
  v14 = (a1 + 108);
  *(a1 + 124) = 0u;
  *(a1 + 140) = 0u;
  *(a1 + 152) = 0u;
  if (a1 + 8 != a2)
  {
    v16 = *(a2 + 24);
    if (v16)
    {
      atomic_fetch_add(v16, 1u);
      v17 = *(a1 + 32);
      if (v17)
      {
        if (atomic_fetch_add(v17, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate((a1 + 8));
        }
      }
    }

    *(a1 + 24) = 0;
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 40) = 0;
    if (*(a1 + 12) <= 0)
    {
      *(a1 + 32) = 0;
      *(a1 + 8) = *a2;
    }

    else
    {
      v18 = 0;
      v19 = *(a1 + 72);
      do
      {
        *(v19 + 4 * v18++) = 0;
        v20 = *v12;
      }

      while (v18 < v20);
      *(a1 + 32) = 0;
      *(a1 + 8) = *a2;
      if (v20 > 2)
      {
        goto LABEL_14;
      }
    }

    v21 = *(a2 + 4);
    if (v21 <= 2)
    {
      *(a1 + 12) = v21;
      *(a1 + 16) = *(a2 + 8);
      v22 = *(a2 + 72);
      v23 = *(a1 + 80);
      *v23 = *v22;
      v23[1] = v22[1];
LABEL_15:
      *(a1 + 40) = *(a2 + 32);
      *(a1 + 56) = *(a2 + 48);
      *(a1 + 24) = *(a2 + 16);
      *(a1 + 64) = *(a2 + 56);
      goto LABEL_16;
    }

LABEL_14:
    cv::Mat::copySize(v11, a2);
    goto LABEL_15;
  }

LABEL_16:
  if (v13 != a3)
  {
    v24 = *(a3 + 24);
    if (v24)
    {
      atomic_fetch_add(v24, 1u);
    }

    v25 = *(a1 + 128);
    if (v25 && atomic_fetch_add(v25, 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v13);
    }

    *(a1 + 120) = 0;
    *(a1 + 144) = 0;
    *(a1 + 152) = 0;
    *(a1 + 136) = 0;
    if (*(a1 + 108) <= 0)
    {
      *(a1 + 128) = 0;
      *(a1 + 104) = *a3;
    }

    else
    {
      v26 = 0;
      v27 = *(a1 + 168);
      do
      {
        *(v27 + 4 * v26++) = 0;
        v28 = *v14;
      }

      while (v26 < v28);
      *(a1 + 128) = 0;
      *(a1 + 104) = *a3;
      if (v28 > 2)
      {
        goto LABEL_30;
      }
    }

    v29 = *(a3 + 4);
    if (v29 <= 2)
    {
      *(a1 + 108) = v29;
      *(a1 + 112) = *(a3 + 8);
      v30 = *(a3 + 72);
      v31 = *(a1 + 176);
      *v31 = *v30;
      v31[1] = v30[1];
LABEL_31:
      *(a1 + 136) = *(a3 + 32);
      *(a1 + 152) = *(a3 + 48);
      *(a1 + 120) = *(a3 + 16);
      *(a1 + 160) = *(a3 + 56);
      goto LABEL_32;
    }

LABEL_30:
    cv::Mat::copySize(v13, a3);
    goto LABEL_31;
  }

LABEL_32:
  *(a1 + 200) = a5;
  *(a1 + 208) = a6;
  *(a1 + 216) = a4;
  return a1;
}

void sub_22D226A54(_Unwind_Exception *a1)
{
  cv::Mat::~Mat(v3);
  cv::Mat::~Mat(v2);
  cv::BaseRowFilter::~BaseRowFilter(v1);
  _Unwind_Resume(a1);
}

void cv::ThresholdRunner::~ThresholdRunner(cv::ThresholdRunner *this)
{
  cv::ThresholdRunner::~ThresholdRunner(this);

  JUMPOUT(0x2318CB1A0);
}

{
  *this = &unk_284055B30;
  v2 = *(this + 16);
  if (v2 && atomic_fetch_add(v2, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((this + 104));
  }

  *(this + 15) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  if (*(this + 27) >= 1)
  {
    v3 = 0;
    v4 = *(this + 21);
    do
    {
      *(v4 + 4 * v3++) = 0;
    }

    while (v3 < *(this + 27));
  }

  *(this + 16) = 0;
  v5 = *(this + 22);
  if (v5)
  {
    v6 = v5 == this + 184;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    free(v5);
  }

  v7 = *(this + 4);
  if (v7 && atomic_fetch_add(v7, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate((this + 8));
  }

  *(this + 3) = 0;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  if (*(this + 3) >= 1)
  {
    v8 = 0;
    v9 = *(this + 9);
    do
    {
      *(v9 + 4 * v8++) = 0;
    }

    while (v8 < *(this + 3));
  }

  *(this + 4) = 0;
  v10 = *(this + 10);
  if (v10)
  {
    v11 = v10 == this + 88;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    free(v10);
  }

  cv::BaseRowFilter::~BaseRowFilter(this);
}

void cv::ThresholdRunner::operator()(uint64_t a1, int *a2)
{
  v151 = *MEMORY[0x277D85DE8];
  v4 = a2[1];
  __b = *a2;
  v3 = __b;
  v150 = v4;
  v146[0] = 0x7FFFFFFF80000000;
  cv::Mat::Mat(&v135);
  __b = v3;
  v150 = v4;
  v146[0] = 0x7FFFFFFF80000000;
  cv::Mat::Mat(&v125);
  if ((v135 & 7) == 5)
  {
    v29 = *(a1 + 216);
    v30 = v137;
    v31 = *v142;
    v32 = v142[1] + v142[1] * ((v135 >> 3) & 0x1FF);
    v33 = v127;
    if ((v135 & 0x4000) != 0)
    {
      if ((v125 & 0x4000) != 0)
      {
        v34 = *v142;
      }

      else
      {
        v34 = 1;
      }

      if ((v125 & 0x4000) != 0)
      {
        v31 = 1;
      }

      v32 *= v34;
    }

    v35 = *(a1 + 200);
    v36 = v144 >> 2;
    v37 = v134 >> 2;
    if (v29 <= 1)
    {
      v49 = *(a1 + 208);
      if (!v29)
      {
        if (v31 >= 1)
        {
          v95 = 0;
          v96 = 4 * v37;
          v97 = 4 * v36;
          do
          {
            if (v32 >= 1)
            {
              v98 = 0;
              do
              {
                if (*(v30 + v98) <= v35)
                {
                  v99 = 0.0;
                }

                else
                {
                  v99 = v49;
                }

                *(v33 + v98) = v99;
                v98 += 4;
              }

              while (4 * v32 != v98);
            }

            ++v95;
            v33 += v96;
            v30 += v97;
          }

          while (v95 != v31);
        }

        goto LABEL_194;
      }

      if (v29 == 1)
      {
        if (v31 >= 1)
        {
          v50 = 0;
          v51 = 4 * v37;
          v52 = 4 * v36;
          do
          {
            if (v32 >= 1)
            {
              v53 = 0;
              do
              {
                if (*(v30 + v53) > v35)
                {
                  v54 = 0.0;
                }

                else
                {
                  v54 = v49;
                }

                *(v33 + v53) = v54;
                v53 += 4;
              }

              while (4 * v32 != v53);
            }

            ++v50;
            v33 += v51;
            v30 += v52;
          }

          while (v50 != v31);
        }

        goto LABEL_194;
      }
    }

    else
    {
      switch(v29)
      {
        case 2:
          if (v31 >= 1)
          {
            v72 = 0;
            v73 = 4 * v37;
            v74 = 4 * v36;
            do
            {
              if (v32 >= 1)
              {
                v75 = 0;
                do
                {
                  v76 = *(v30 + v75);
                  if (v76 > v35)
                  {
                    v76 = v35;
                  }

                  *(v33 + v75) = v76;
                  v75 += 4;
                }

                while (4 * v32 != v75);
              }

              ++v72;
              v33 += v73;
              v30 += v74;
            }

            while (v72 != v31);
          }

          goto LABEL_194;
        case 3:
          if (v31 >= 1)
          {
            v77 = 0;
            v78 = 4 * v37;
            v79 = 4 * v36;
            do
            {
              if (v32 >= 1)
              {
                v80 = 0;
                do
                {
                  v81 = *(v30 + v80);
                  if (v81 <= v35)
                  {
                    v81 = 0.0;
                  }

                  *(v33 + v80) = v81;
                  v80 += 4;
                }

                while (4 * v32 != v80);
              }

              ++v77;
              v33 += v78;
              v30 += v79;
            }

            while (v77 != v31);
          }

          goto LABEL_194;
        case 4:
          if (v31 >= 1)
          {
            v38 = 0;
            v39 = 4 * v37;
            v40 = 4 * v36;
            do
            {
              if (v32 >= 1)
              {
                v41 = 0;
                do
                {
                  v42 = *(v30 + v41);
                  if (v42 > v35)
                  {
                    v42 = 0.0;
                  }

                  *(v33 + v41) = v42;
                  v41 += 4;
                }

                while (4 * v32 != v41);
              }

              ++v38;
              v33 += v39;
              v30 += v40;
            }

            while (v38 != v31);
          }

          goto LABEL_194;
      }
    }

    std::string::basic_string[abi:ne200100]<0>(v146, "");
    std::string::basic_string[abi:ne200100]<0>(&v148, "thresh_32f");
    std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/thresh.cpp");
    cv::Exception::Exception(&__b, -5, v146, &v148, &__p, 598);
    cv::error(&__b, v101);
  }

  if ((v135 & 7) != 3)
  {
    if ((v135 & 7) != 0)
    {
      goto LABEL_194;
    }

    v5 = *(a1 + 200);
    v6 = *(a1 + 216);
    v7 = *v142;
    v8 = v142[1] + v142[1] * ((v135 >> 3) & 0x1FF);
    if ((v135 & 0x4000) != 0)
    {
      if ((v125 & 0x4000) != 0)
      {
        v9 = *v142;
      }

      else
      {
        v9 = 1;
      }

      if ((v125 & 0x4000) != 0)
      {
        v7 = 1;
      }

      v8 *= v9;
    }

    v10 = v5;
    if (v6 <= 1)
    {
      v55 = *(a1 + 208);
      v56 = v55;
      if (v6)
      {
        if (v6 == 1)
        {
          memset(&__b, v55, v10 + 1);
          if (v10 != 255)
          {
            v13 = &__b + v10 + 1;
            v14 = ~v10;
            goto LABEL_87;
          }

LABEL_182:
          if (v8 >= 1 && v7 >= 1)
          {
            for (i = 0; i != v7; ++i)
            {
              v104 = v137;
              v105 = v144;
              v106 = v127;
              v107 = v134;
              if (v8 >= 4)
              {
                v109 = 0;
                v110 = v137 + v144 * i;
                v111 = v127 + v134 * i;
                do
                {
                  v112 = *(&__b + *(v110 + v109 + 1));
                  v113 = (v111 + v109);
                  *v113 = *(&__b + *(v110 + v109));
                  v113[1] = v112;
                  v114 = *(&__b + *(v110 + v109 + 3));
                  v113[2] = *(&__b + *(v110 + v109 + 2));
                  v113[3] = v114;
                  v109 += 4;
                }

                while (v109 <= v8 - 4);
                v108 = v109;
              }

              else
              {
                v108 = 0;
              }

              if (v108 < v8)
              {
                v115 = v8 - v108;
                v116 = (v106 + v108 + v107 * i);
                v117 = (v104 + v108 + v105 * i);
                do
                {
                  v118 = *v117++;
                  *v116++ = *(&__b + v118);
                  --v115;
                }

                while (v115);
              }
            }
          }

          goto LABEL_194;
        }

LABEL_181:
        std::string::basic_string[abi:ne200100]<0>(&v148, "Unknown threshold type");
        std::string::basic_string[abi:ne200100]<0>(&__p, "thresh_8u");
        std::string::basic_string[abi:ne200100]<0>(&v145, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/thresh.cpp");
        cv::Exception::Exception(v146, -5, &v148, &__p, &v145, 100);
        cv::error(v146, v102);
      }

      bzero(&__b, v10 + 1);
      if (v10 == 255)
      {
        goto LABEL_182;
      }

      v84 = &__b + v10 + 1;
      v85 = ~v10;
      v86 = v56;
    }

    else
    {
      if (v6 != 2)
      {
        if (v6 == 3)
        {
          bzero(&__b, v10 + 1);
          if (v10 != 255)
          {
            v87 = 0;
            v88 = vdupq_n_s64(254 - v10);
            v89 = &__b + v10;
            do
            {
              v90 = vdupq_n_s64(v87);
              v91 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D297DE0)));
              if (vuzp1_s8(vuzp1_s16(v91, *v88.i8), *v88.i8).u8[0])
              {
                v89[v87 + 1] = v10 + v87 + 1;
              }

              if (vuzp1_s8(vuzp1_s16(v91, *&v88), *&v88).i8[1])
              {
                v89[v87 + 2] = v10 + v87 + 2;
              }

              if (vuzp1_s8(vuzp1_s16(*&v88, vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D297DD0)))), *&v88).i8[2])
              {
                v89[v87 + 3] = v10 + v87 + 3;
                v89[v87 + 4] = v10 + v87 + 4;
              }

              v92 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D29B790)));
              if (vuzp1_s8(*&v88, vuzp1_s16(v92, *&v88)).i32[1])
              {
                v89[v87 + 5] = v10 + v87 + 5;
              }

              if (vuzp1_s8(*&v88, vuzp1_s16(v92, *&v88)).i8[5])
              {
                v89[v87 + 6] = v10 + v87 + 6;
              }

              if (vuzp1_s8(*&v88, vuzp1_s16(*&v88, vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D29B780))))).i8[6])
              {
                v89[v87 + 7] = v10 + v87 + 7;
                v89[v87 + 8] = v10 + v87 + 8;
              }

              v93 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D29B770)));
              if (vuzp1_s8(vuzp1_s16(v93, *v88.i8), *v88.i8).u8[0])
              {
                v89[v87 + 9] = v10 + v87 + 9;
              }

              if (vuzp1_s8(vuzp1_s16(v93, *&v88), *&v88).i8[1])
              {
                v89[v87 + 10] = v10 + v87 + 10;
              }

              if (vuzp1_s8(vuzp1_s16(*&v88, vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D29B760)))), *&v88).i8[2])
              {
                v89[v87 + 11] = v10 + v87 + 11;
                v89[v87 + 12] = v10 + v87 + 12;
              }

              v94 = vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D29B750)));
              if (vuzp1_s8(*&v88, vuzp1_s16(v94, *&v88)).i32[1])
              {
                v89[v87 + 13] = v10 + v87 + 13;
              }

              if (vuzp1_s8(*&v88, vuzp1_s16(v94, *&v88)).i8[5])
              {
                v89[v87 + 14] = v10 + v87 + 14;
              }

              if (vuzp1_s8(*&v88, vuzp1_s16(*&v88, vmovn_s64(vcgeq_u64(v88, vorrq_s8(v90, xmmword_22D29B740))))).i8[6])
              {
                v89[v87 + 15] = v10 + v87 + 15;
                v89[v87 + 16] = v10 + v87 + 16;
              }

              v87 += 16;
            }

            while (((270 - v10) & 0x1F0) != v87);
          }

          goto LABEL_182;
        }

        if (v6 == 4)
        {
          v11 = 0;
          v12 = (v10 + 1);
          do
          {
            *(&__b + v11) = v11;
            ++v11;
          }

          while (v12 != v11);
          if ((v11 - 1) <= 0xFE)
          {
            v13 = &__b + v12;
            v14 = (254 - v10) + 1;
LABEL_87:
            bzero(v13, v14);
            goto LABEL_182;
          }

          goto LABEL_182;
        }

        goto LABEL_181;
      }

      v82 = 0;
      v83 = (v10 + 1);
      do
      {
        *(&__b + v82) = v82;
        ++v82;
      }

      while (v83 != v82);
      if ((v82 - 1) > 0xFE)
      {
        goto LABEL_182;
      }

      v84 = &__b + v83;
      v85 = (254 - v10) + 1;
      v86 = v5;
    }

    memset(v84, v86, v85);
    goto LABEL_182;
  }

  v15 = *(a1 + 216);
  v16 = v137;
  v17 = *v142;
  v18 = v142[1] + v142[1] * ((v135 >> 3) & 0x1FF);
  v19 = v127;
  if ((v135 & 0x4000) != 0)
  {
    if ((v125 & 0x4000) != 0)
    {
      v20 = *v142;
    }

    else
    {
      v20 = 1;
    }

    if ((v125 & 0x4000) != 0)
    {
      v17 = 1;
    }

    v18 *= v20;
  }

  v21 = *(a1 + 200);
  v22 = v144 >> 1;
  v23 = v134 >> 1;
  if (v15 <= 1)
  {
    v43 = *(a1 + 208);
    if (v15)
    {
      if (v15 != 1)
      {
        goto LABEL_179;
      }

      if (v17 >= 1)
      {
        v44 = 0;
        v45 = 2 * v23;
        v46 = 2 * v22;
        do
        {
          if (v18 >= 1)
          {
            v47 = 0;
            do
            {
              if (*(v16 + v47) <= v21)
              {
                v48 = v43;
              }

              else
              {
                v48 = 0;
              }

              *(v19 + v47) = v48;
              v47 += 2;
            }

            while (2 * v18 != v47);
          }

          ++v44;
          v19 += v45;
          v16 += v46;
        }

        while (v44 != v17);
      }
    }

    else if (v17 >= 1)
    {
      v67 = 0;
      v68 = 2 * v23;
      v69 = 2 * v22;
      do
      {
        if (v18 >= 1)
        {
          v70 = 0;
          do
          {
            if (*(v16 + v70) <= v21)
            {
              v71 = 0;
            }

            else
            {
              v71 = v43;
            }

            *(v19 + v70) = v71;
            v70 += 2;
          }

          while (2 * v18 != v70);
        }

        ++v67;
        v19 += v68;
        v16 += v69;
      }

      while (v67 != v17);
    }
  }

  else
  {
    switch(v15)
    {
      case 2:
        if (v17 >= 1)
        {
          v57 = 0;
          v58 = 2 * v23;
          v59 = 2 * v22;
          do
          {
            if (v18 >= 1)
            {
              v60 = 0;
              do
              {
                v61 = *(v16 + v60);
                if (v61 >= v21)
                {
                  LOWORD(v61) = v21;
                }

                *(v19 + v60) = v61;
                v60 += 2;
              }

              while (2 * v18 != v60);
            }

            ++v57;
            v19 += v58;
            v16 += v59;
          }

          while (v57 != v17);
        }

        break;
      case 3:
        if (v17 >= 1)
        {
          v62 = 0;
          v63 = 2 * v23;
          v64 = 2 * v22;
          do
          {
            if (v18 >= 1)
            {
              v65 = 0;
              do
              {
                v66 = *(v16 + v65);
                if (v66 <= v21)
                {
                  LOWORD(v66) = 0;
                }

                *(v19 + v65) = v66;
                v65 += 2;
              }

              while (2 * v18 != v65);
            }

            ++v62;
            v19 += v63;
            v16 += v64;
          }

          while (v62 != v17);
        }

        break;
      case 4:
        if (v17 >= 1)
        {
          v24 = 0;
          v25 = 2 * v23;
          v26 = 2 * v22;
          do
          {
            if (v18 >= 1)
            {
              v27 = 0;
              do
              {
                v28 = *(v16 + v27);
                if (v28 > v21)
                {
                  LOWORD(v28) = 0;
                }

                *(v19 + v27) = v28;
                v27 += 2;
              }

              while (2 * v18 != v27);
            }

            ++v24;
            v19 += v25;
            v16 += v26;
          }

          while (v24 != v17);
        }

        break;
      default:
LABEL_179:
        std::string::basic_string[abi:ne200100]<0>(v146, "");
        std::string::basic_string[abi:ne200100]<0>(&v148, "thresh_16s");
        std::string::basic_string[abi:ne200100]<0>(&__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/imgproc/thresh.cpp");
        cv::Exception::Exception(&__b, -5, v146, &v148, &__p, 426);
        cv::error(&__b, v100);
    }
  }

LABEL_194:
  if (v128 && atomic_fetch_add(v128, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v125);
  }

  v127 = 0;
  v129 = 0;
  v130 = 0;
  v131 = 0;
  if (v126 >= 1)
  {
    v119 = 0;
    v120 = v132;
    do
    {
      *(v120 + 4 * v119++) = 0;
    }

    while (v119 < v126);
  }

  v128 = 0;
  if (v133)
  {
    v121 = v133 == &v134;
  }

  else
  {
    v121 = 1;
  }

  if (!v121)
  {
    free(v133);
  }

  if (v138 && atomic_fetch_add(v138, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v135);
  }

  v137 = 0;
  v139 = 0;
  v140 = 0;
  v141 = 0;
  if (v136 >= 1)
  {
    v122 = 0;
    v123 = v142;
    do
    {
      v123[v122++] = 0;
    }

    while (v122 < v136);
  }

  v138 = 0;
  if (v143)
  {
    v124 = v143 == &v144;
  }

  else
  {
    v124 = 1;
  }

  if (!v124)
  {
    free(v143);
  }
}

void sub_22D227750(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, int a36, __int16 a37, char a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, void *a55, uint64_t a56, int a57, __int16 a58, char a59, char a60, void *a61, uint64_t a62, int a63)
{
  cv::Exception::~Exception(&a40);
  if (a39 < 0)
  {
    operator delete(__p);
  }

  if (a60 < 0)
  {
    operator delete(a55);
  }

  if (a65 < 0)
  {
    operator delete(a61);
  }

  cv::Mat::~Mat(&a10);
  cv::Mat::~Mat(&a22);
  _Unwind_Resume(a1);
}

_BYTE *cv::detail::LKTrackerInvoker::operator()(uint64_t a1)
{
  v3 = MEMORY[0x28223BE20](a1);
  v4 = *(v3 + 64);
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  v195 = *(v3 + 8);
  v7 = *v195;
  v8 = ((v7 >> 3) & 0x1FF) + 1;
  v9 = 3 * v4.i32[0] * v4.i32[1] * v8;
  v220 = v222;
  v221 = 2056;
  v188 = v2;
  if (v9 >= 0x809)
  {
    v221 = v9;
    operator new[]();
  }

  v10 = 8 * v8 - 5;
  v209 = 2;
  v210[0] = v4.i32[1];
  v210[1] = v4.i32[0];
  v211 = v222;
  v212 = 0;
  v217 = v210;
  v218 = v219;
  v208 = v10 | 0x42FF4000;
  v219[0] = ((v10 >> 2) + 2) * v4.i32[0];
  v219[1] = (v10 >> 2) + 2;
  v215 = &v222[v219[0] * v4.i32[1]];
  v216 = 0;
  v213 = v222;
  v214 = v215;
  v11 = 16 * v8 - 5;
  v198[0] = v4.i32[1];
  v198[1] = v4.i32[0];
  v199 = &v222[2 * v4.i32[0] * v8 * v4.i32[1]];
  v200 = 0;
  v205 = v198;
  v206 = v207;
  v196 = v11 & 0xFFF | 0x42FF4000;
  v197 = 2;
  v207[0] = (((v11 >> 2) & 0x3FE) + 2) * v4.i32[0];
  v207[1] = ((v11 >> 2) & 0x3FE) + 2;
  v203 = &v199[v207[0] * v4.i32[1]];
  v204 = 0;
  v201 = v199;
  v202 = v203;
  v12 = *v2;
  if (v12 < v2[1])
  {
    v13 = 2 * v8;
    v14 = vmul_f32(vcvt_f32_s32(vadd_s32(v4, -1)), 0x3F0000003F000000);
    __asm { FMOV            V3.2S, #1.0 }

    v18 = vdup_n_s32(0x46800000u);
    v191 = 4 * ((v7 >> 3) & 0x1FF) + 6;
    v19.i64[0] = 0x800000008;
    v19.i64[1] = 0x800000008;
    v20.i64[0] = 0xD0000000DLL;
    v20.i64[1] = 0xD0000000DLL;
    v189 = v5;
    v194 = v6;
    while (1)
    {
      v21 = *(v3 + 88);
      v22 = 1.0 / (1 << v21);
      v23 = vmul_n_f32(*(*(v3 + 32) + 8 * v12), v22);
      if (v21 != *(v3 + 92))
      {
        break;
      }

      v24 = *(v3 + 40);
      v25 = v23;
      if ((*(v3 + 96) & 4) != 0)
      {
        goto LABEL_9;
      }

LABEL_10:
      *(v24 + 8 * v12) = v25;
      v26 = vsub_f32(v23, v14);
      v27 = vcvt_s32_f32(v26);
      v28.i64[0] = v27.i32[0];
      v28.i64[1] = v27.i32[1];
      v29 = vadd_s32(vmovn_s64(vcgtq_f64(vcvtq_f64_s64(v28), vcvtq_f64_f32(v26))), v27);
      v30 = *(v3 + 64);
      v31 = v29.i32[0];
      if (v29.i32[0] < -v30 || v29.i32[0] >= *(v6 + 12) || (LODWORD(v32) = *(v3 + 68), v33 = v29.i32[1], v29.i32[1] < -v32) || v29.i32[1] >= *(v6 + 8))
      {
        if (!v21)
        {
          v79 = *(v3 + 48);
          if (v79)
          {
            *(v79 + v12) = 0;
          }

          v80 = *(v3 + 56);
          if (v80)
          {
            *(v80 + 4 * v12) = 0;
          }
        }
      }

      else
      {
        v34 = *(v5 + 10);
        v35 = *v5;
        v190 = v12;
        if (v32 < 1)
        {
          v53 = 0;
          v55 = 0;
          v57 = 0uLL;
          v56 = 0uLL;
          v54 = 0uLL;
        }

        else
        {
          v185 = *v5;
          v187 = *(v5 + 10);
          v36 = 0;
          v37 = vsub_f32(v26, vcvt_f32_s32(v29));
          v38 = vsub_f32(_D3, v37);
          v39 = vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(vmul_f32(vmul_f32(v38, vext_s8(v38, v37, 4uLL)), v18))));
          v40 = rint((16384.0 * vmul_lane_f32(v38, v37, 1).f32[0]));
          v41 = vmovn_s64(v39);
          v42 = v41.i32[1];
          v43 = v41.i32[0];
          v44 = 0x4000 - (v41.i32[0] + v40) - v41.i32[1];
          v1.i32[0] = v44;
          v45 = *(v6 + 80) / ((0x88442211uLL >> (4 * (*v6 & 7u))) & 0xF);
          v46 = v8 * v31;
          v47 = v31 * v13;
          v48 = v45;
          v49 = v13 + v45;
          v50 = v45 + 1;
          v51 = (*(v195 + 10) / ((0x88442211uLL >> (4 * (*v195 & 7))) & 0xF));
          v52 = v33;
          v53 = 0;
          v54 = 0uLL;
          v55 = 0;
          v56 = 0uLL;
          v57 = 0uLL;
          v192 = v47;
          do
          {
            v58 = *(v195 + 2) + (v36 + v52) * v51 + v46;
            v59 = (*(v6 + 16) + 2 * (v36 + v52) * v48 + 2 * v47);
            v60 = v211;
            v61 = v219[0];
            v62 = &v199[v207[0] * v36];
            v63 = v30 * v8;
            if (v30 * v8 >= 4)
            {
              v64 = 0;
              v65 = &v211->i8[v219[0] * v36];
              v66 = (*(v6 + 16) + 2 * (v36 + v52) * v48 + 2 * v47);
              do
              {
                v224 = vld2_s16(v66);
                v66 += 8;
                v67 = &v59[2 * v8];
                v225 = vld2_s16(v67);
                *v65++ = vmovn_s32(vqrshlq_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_laneq_s16(*&vmovl_u8(*(v58 + v8 + v64)), v39, 4), *&vmovl_u8(*(v58 + v64)), *v39.i8, 0), *&vmovl_u8(*(v58 + v64 + v51)), v40, 0), *&vmovl_u8(*(v58 + v8 + v64 + v51)), v1, 0), v19));
                v68 = &v59[v48];
                v226 = vld2_s16(v68);
                v69 = &v59[v49];
                v223 = vld2_s16(v69);
                v70 = vqrshlq_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_laneq_s16(v225.val[0], v39, 4), *v224.i8, *v39.i8, 0), v226.val[0], v40, 0), v223.val[0], v1, 0), v20);
                v224 = vqrshlq_s32(vmlal_lane_s16(vmlal_lane_s16(vmlal_lane_s16(vmull_laneq_s16(v225.val[1], v39, 4), v224.u64[1], *v39.i8, 0), v226.val[1], v40, 0), v223.val[1], v1, 0), v20);
                v54 = vmlaq_s32(v54, v70, v70);
                v56 = vmlaq_s32(v56, v224, v70);
                v224.u64[1] = vmovn_s32(v70);
                v225.val[0] = vmovn_s32(v224);
                vst2_s16(v62, *(&v224 + 8));
                v62 += 8;
                v57 = vmlaq_s32(v57, v224, v224);
                v64 += 4;
                v30 = *(v3 + 64);
                v63 = v30 * v8;
                v59 = v66;
              }

              while (v64 <= v30 * v8 - 4);
              v64 = v64;
            }

            else
            {
              v64 = 0;
            }

            if (v64 < v63)
            {
              v71 = v46;
              v72 = v53.f32[1];
              v73 = (&v60->i16[v64] + v61 * v36);
              v74 = v63 - v64;
              v75 = v62 + 1;
              v76 = (v59 + v191);
              do
              {
                v77 = (v42 * *(v76 - 1) + v43 * *v59 + v59[v48] * v40 + v44 * v59[v49] + 0x2000) >> 14;
                v78 = (v42 * *v76 + v43 * v59[1] + v59[v50] * v40 + v44 * v59[v49 + 1] + 0x2000) >> 14;
                *v73++ = (v42 * *(v58 + v8 + v64) + v43 * *(v58 + v64) + *(v58 + v64 + v51) * v40 + v44 * *(v58 + v8 + v64 + v51) + 256) >> 9;
                *(v75 - 1) = v77;
                *v75 = v78;
                v75 += 2;
                v72 = v72 + (v77 * v77);
                *v55.i32 = *v55.i32 + (v78 * v77);
                ++v64;
                v53.f32[0] = v53.f32[0] + (v78 * v78);
                v76 += 2;
                v59 += 2;
                --v74;
              }

              while (v74);
              v53.f32[1] = v72;
              v46 = v71;
              v47 = v192;
              v6 = v194;
              v52 = v33;
            }

            ++v36;
            v32 = *(v3 + 68);
          }

          while (v36 < v32);
          v2 = v188;
          v5 = v189;
          LOBYTE(v35) = v185;
          v34 = v187;
          v12 = v190;
        }

        v81 = *v55.i32 + (v56.i32[0] + v56.i32[1] + v56.i32[2] + v56.i32[3]);
        v82 = vadd_s32(vzip1_s32(*v57.i8, *v54.i8), vzip2_s32(*v57.i8, *v54.i8));
        v83 = vextq_s8(v54, v54, 8uLL).u64[0];
        v84 = vextq_s8(v57, v57, 8uLL).u64[0];
        *v55.i32 = v81 * 0.00000095367;
        v85 = vadd_f32(v53, vcvt_f32_s32(vadd_s32(vadd_s32(v82, vzip1_s32(v84, v83)), vzip2_s32(v84, v83))));
        v86 = vdup_n_s32(0x35800000u);
        v87 = vmul_f32(v85, v86);
        v88 = (vaddv_f32(v87) - sqrtf((*v55.i32 * (*v55.i32 * 4.0)) + ((v87.f32[1] - v87.f32[0]) * (v87.f32[1] - v87.f32[0])))) / (2 * v32 * v30);
        v89 = *(v3 + 56);
        if (v89 && (*(v3 + 96) & 8) != 0)
        {
          *(v89 + 4 * v12) = v88;
        }

        v90 = (v87.f32[1] * v87.f32[0]) - (*v55.i32 * *v55.i32);
        if (v88 < *(v3 + 100) || v90 < 0.00000011921)
        {
          if (!*(v3 + 88))
          {
            v92 = *(v3 + 48);
            if (v92)
            {
              *(v92 + v12) = 0;
            }
          }
        }

        else
        {
          v183 = v34 / ((0x88442211uLL >> (4 * (v35 & 7u))) & 0xF);
          v186 = *(v3 + 76);
          if (v186 >= 1)
          {
            v93 = 0;
            v94 = vsub_f32(v25, v14);
            v184 = v211;
            v95 = v219[0];
            v96 = v199;
            v97 = v207[0];
            v98 = vneg_f32(v87);
            v99 = v30 * v8;
            v100 = vdup_lane_s32(v55, 0);
            v101.i32[0] = 0;
            v102 = 0.0;
            v103 = 1.0 / v90;
            while (1)
            {
              v104 = v102;
              v105 = v101.f32[0];
              v106 = vcvt_s32_f32(v94);
              v107.i64[0] = v106.i32[0];
              v107.i64[1] = v106.i32[1];
              v108 = vadd_s32(vmovn_s64(vcgtq_f64(vcvtq_f64_s64(v107), vcvtq_f64_f32(v94))), v106);
              v109 = v108.i32[0];
              if (v108.i32[0] < -v30)
              {
                break;
              }

              v110 = v108.i32[1];
              v111 = v108.i32[0] >= v5[3] || v108.i32[1] < -v32;
              if (v111 || v108.i32[1] >= v5[2])
              {
                break;
              }

              v193 = v93;
              if (v32 < 1)
              {
                v124 = 0;
                v127 = 0uLL;
                v125 = 0uLL;
              }

              else
              {
                v112 = 0;
                v113 = vsub_f32(v94, vcvt_f32_s32(v108));
                v114 = vsub_f32(_D3, v113);
                v115 = vrev64_s32(v114);
                v116 = rint((16384.0 * vmul_f32(v114, v115).f32[0]));
                v117 = vcvtq_s64_f64(vrndxq_f64(vcvtq_f64_f32(vmul_f32(vmul_f32(v113, v115), v18))));
                v118 = vmovn_s64(v117);
                v119 = v118.i32[1];
                v120 = v118.i32[0];
                v121 = 0x4000 - v116 - (v118.i32[1] + v118.i32[0]);
                v1.i32[0] = v121;
                v122 = *(v5 + 2) + v8 * v109;
                v123 = v110;
                v124 = 0;
                v125 = 0uLL;
                v126 = v184;
                v127 = 0uLL;
                do
                {
                  v128 = v122 + (v112 + v123) * v183;
                  v129 = &v96[v97 * v112];
                  if (v99 >= 8)
                  {
                    v131 = 0;
                    v132 = v128 + v8;
                    v133 = v126;
                    do
                    {
                      v134 = vmovl_u8(*(v128 + v131));
                      v135 = vmovl_u8(*(v132 + v131));
                      v136 = vmovl_u8(*(v128 + v131 + v183));
                      v137 = vmovl_u8(*(v132 + v131 + v183));
                      v138 = vmull_lane_s16(*v135.i8, *v117.i8, 0);
                      v139 = *v133++;
                      v140 = vmlal_high_lane_s16(vmlal_high_laneq_s16(vmlal_high_lane_s16(vmull_high_lane_s16(v135, *v117.i8, 0), v134, v116, 0), v136, v117, 4), v137, v1, 0);
                      v141 = vqrshlq_s32(vmlal_lane_s16(vmlal_laneq_s16(vmlal_lane_s16(v138, *v134.i8, v116, 0), *v136.i8, v117, 4), *v137.i8, v1, 0), v19);
                      v227 = vld2q_s16(v129);
                      v129 += 16;
                      v142 = vsubw_s16(v141, *v139.i8);
                      v143 = vsubw_high_s16(vqrshlq_s32(v140, v19), v139);
                      v125 = vmlaq_s32(vmlaq_s32(v125, v143, vmovl_high_s16(v227.val[0])), v142, vmovl_s16(*v227.val[0].i8));
                      v127 = vmlaq_s32(vmlaq_s32(v127, v143, vmovl_high_s16(v227.val[1])), v142, vmovl_s16(*v227.val[1].i8));
                      v131 += 8;
                    }

                    while (v131 <= v30 * v8 - 8);
                    LODWORD(v130) = ((v30 * v8 - 8) & 0xFFFFFFF8) + 8;
                  }

                  else
                  {
                    LODWORD(v130) = 0;
                  }

                  if (v130 < v99)
                  {
                    v130 = v130;
                    do
                    {
                      v144 = ((v120 * *(v128 + v8 + v130) + *(v128 + v130) * v116 + v119 * *(v128 + v130 + v183) + v121 * *(v128 + v8 + v130 + v183) + 256) >> 9) - v126->i16[v130];
                      v124 = vadd_f32(v124, vcvt_f32_s32(__PAIR64__(v144 * *v129, v144 * v129[1])));
                      ++v130;
                      v129 += 2;
                    }

                    while (v30 * v8 != v130);
                  }

                  ++v112;
                  v126 = (v126 + v95);
                }

                while (v112 != v32);
              }

              v145 = vadd_s32(vzip1_s32(*v127.i8, *v125.i8), vzip2_s32(*v127.i8, *v125.i8));
              v146 = vextq_s8(v125, v125, 8uLL).u64[0];
              v147 = vextq_s8(v127, v127, 8uLL).u64[0];
              v148 = vmul_f32(vadd_f32(v124, vcvt_f32_s32(vadd_s32(vadd_s32(v145, vzip1_s32(v147, v146)), vzip2_s32(v147, v146)))), v86);
              v101 = vmul_n_f32(vmla_f32(vmul_f32(vrev64_s32(v148), v98), v148, v100), v103);
              v94 = vadd_f32(v94, v101);
              v149 = vadd_f32(v14, v94);
              v150 = *(v3 + 40);
              v5 = v189;
              v12 = v190;
              *(v150 + 8 * v190) = v149;
              v102 = v101.f32[1];
              v6 = v194;
              if (v101.f32[1] * v101.f32[1] + v101.f32[0] * v101.f32[0] <= *(v3 + 80))
              {
                goto LABEL_77;
              }

              if (v193 && fabsf(v105 + v101.f32[0]) < 0.01 && fabsf(v104 + v101.f32[1]) < 0.01)
              {
                *(v150 + 8 * v190) = vadd_f32(v149, vmul_f32(v101, 0xBF000000BF000000));
                goto LABEL_77;
              }

              v93 = v193 + 1;
              if (v193 + 1 == v186)
              {
                goto LABEL_77;
              }
            }

            if (!*(v3 + 88))
            {
              v151 = *(v3 + 48);
              if (v151)
              {
                *(v151 + v12) = 0;
              }
            }
          }

LABEL_77:
          v152 = *(v3 + 48);
          v2 = v188;
          if (*(v152 + v12))
          {
            v153 = *(v3 + 56);
            if (v153)
            {
              if (!*(v3 + 88) && (*(v3 + 96) & 8) == 0)
              {
                v154 = (*(v3 + 40) + 8 * v12);
                v155 = *v154 - v14.f32[0];
                v156 = v154[1] - v14.f32[1];
                v157 = v155 - (v155 > v155);
                v158 = *(v3 + 64);
                if (v157 < -v158 || v157 >= v5[3] || (v159 = v156 - (v156 > v156), v160 = *(v3 + 68), v159 < -v160) || v159 >= v5[2])
                {
                  *(v152 + v12) = 0;
                }

                else
                {
                  if (v160 < 1)
                  {
                    v169 = 0.0;
                  }

                  else
                  {
                    v161 = 0;
                    v162 = v155 - v157;
                    v163 = v156 - v159;
                    v164 = rint((((1.0 - v162) * (1.0 - v163)) * 16384.0));
                    v165 = rint(((v162 * (1.0 - v163)) * 16384.0));
                    v166 = rint((((1.0 - v162) * v163) * 16384.0));
                    v167 = *(v5 + 2) + v8 * v157;
                    v168 = v211;
                    v169 = 0.0;
                    do
                    {
                      if (v158 * v8 >= 1)
                      {
                        v170 = 0;
                        v172 = 2 * (v158 * v8);
                        v173 = v168;
                        do
                        {
                          v174 = v173->i16[0];
                          v173 = (v173 + 2);
                          v171 = v167 + (v161 + v159) * v183;
                          v169 = v169 + fabsf((((*(v171 + v8 + v170) * v165 + *(v171 + v170) * v164 + *(v171 + v170 + v183) * v166 + (0x4000 - v164 - (v166 + v165)) * *(v171 + v8 + v170 + v183) + 256) >> 9) - v174));
                          ++v170;
                          v172 -= 2;
                        }

                        while (v172);
                      }

                      ++v161;
                      v168 = (v168 + v219[0]);
                    }

                    while (v161 != v160);
                  }

                  v5 = v189;
                  v12 = v190;
                  *(v153 + 4 * v190) = v169 / (32 * v8 * v158 * v160);
                  v6 = v194;
                }
              }
            }
          }
        }
      }

      if (++v12 >= v2[1])
      {
        if (v200 && atomic_fetch_add(v200, 0xFFFFFFFF) == 1)
        {
          cv::Mat::deallocate(&v196);
        }

        goto LABEL_98;
      }
    }

    v24 = *(v3 + 40);
    v22 = 2.0;
LABEL_9:
    v25 = vmul_n_f32(*(v24 + 8 * v12), v22);
    goto LABEL_10;
  }

LABEL_98:
  v199 = 0;
  v202 = 0;
  v203 = 0;
  v201 = 0;
  if (v197 >= 1)
  {
    v175 = 0;
    v176 = v205;
    do
    {
      v176[v175++] = 0;
    }

    while (v175 < v197);
  }

  v200 = 0;
  if (v206)
  {
    _ZF = v206 == v207;
  }

  else
  {
    _ZF = 1;
  }

  if (!_ZF)
  {
    free(v206);
  }

  if (v212 && atomic_fetch_add(v212, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v208);
  }

  v211 = 0;
  v214 = 0;
  v215 = 0;
  v213 = 0;
  if (v209 >= 1)
  {
    v178 = 0;
    v179 = v217;
    do
    {
      v179[v178++] = 0;
    }

    while (v178 < v209);
  }

  v212 = 0;
  if (v218)
  {
    v180 = v218 == v219;
  }

  else
  {
    v180 = 1;
  }

  if (!v180)
  {
    free(v218);
  }

  result = v220;
  if (v220 != v222 && v220 != 0)
  {
    return MEMORY[0x2318CB180]();
  }

  return result;
}

uint64_t cv::buildOpticalFlowPyramid(void (***a1)(uint64_t *__return_ptr), uint64_t a2, int *a3, signed int a4, int a5, unsigned int a6, int a7, int a8)
{
  v132[5] = *MEMORY[0x277D85DE8];
  (**a1)(&v111);
  if ((v111 & 7) != 0 || *a3 < 3 || a3[1] <= 2)
  {
    std::string::basic_string[abi:ne200100]<0>(v105, "img.depth() == CV_8U && winSize.width > 2 && winSize.height > 2");
    std::string::basic_string[abi:ne200100]<0>(v121, "buildOpticalFlowPyramid");
    std::string::basic_string[abi:ne200100]<0>(__p, "/Library/Caches/com.apple.xbs/Sources/HomeAI/OpenCV/src/video/lkpyramid.cpp");
    v12 = cv::Exception::Exception(v128, -215, v105, v121, __p, 740);
    cv::error(v12, v13);
  }

  (*(*a2 + 136))(a2, 1, ((a4 + 1) << a5), 0, 0xFFFFFFFFLL, 1, 0);
  v14 = v111;
  if (!a8 || (a6 & 0x10) != 0 || (v111 & 0x8000) == 0 || (*v128 = 0, v105[0] = 0, cv::Mat::locateROI(&v111, v128, v105), SLODWORD(v105[0]) < *a3) || (v15 = a3[1], SHIDWORD(v105[0]) < v15) || *a3 + LODWORD(v105[0]) + HIDWORD(v112) > v128[0] || v15 + HIDWORD(v105[0]) + v112 > v128[1])
  {
    v16 = (*(*a2 + 120))(a2, 0);
    v19 = v16;
    if (*(v16 + 16))
    {
      v20 = *(v16 + 4);
      if (v20 >= 3)
      {
        v22 = *(v16 + 64);
        v21 = 1;
        do
        {
          v23 = *v22++;
          v21 *= v23;
          --v20;
        }

        while (v20);
      }

      else
      {
        v21 = *(v16 + 12) * *(v16 + 8);
      }

      if (v21)
      {
        cv::Mat::adjustROI(v16, a3[1], a3[1], *a3, *a3);
      }
    }

    v24 = v111 & 0xFFF;
    v25 = *a3;
    if ((*v19 & 0xFFF) == v24)
    {
      v26 = *(v19 + 12);
      v27 = HIDWORD(v112) + 2 * v25;
      if (v26 == v27 && *(v19 + 8) == v112 + 2 * a3[1])
      {
LABEL_29:
        if (a6 == 5)
        {
          v28.i64[0] = *a3;
          v28.i64[1] = v112;
          v29 = vrev64q_s32(v28);
          v29.i64[0] = *a3;
          *v121 = v29;
          cv::Mat::Mat(v128, v19, v121);
          cv::_OutputArray::_OutputArray(v105, v128);
          cv::Mat::copyTo(&v111, v105);
          if (*&v129[8] && atomic_fetch_add(*&v129[8], 0xFFFFFFFF) == 1)
          {
            cv::Mat::deallocate(v128);
          }

          *v129 = 0;
          memset(&v129[16], 0, 24);
          if (v128[1] >= 1)
          {
            v30 = 0;
            v31 = v130;
            do
            {
              v31[v30++] = 0;
            }

            while (v30 < v128[1]);
          }

          *&v129[8] = 0;
          if (v131)
          {
            v32 = v131 == v132;
          }

          else
          {
            v32 = 1;
          }

          if (!v32)
          {
            free(v131);
          }
        }

        else
        {
          cv::_InputArray::_InputArray(v128, &v111);
          cv::_OutputArray::_OutputArray(v105, v19);
          *v121 = 0u;
          *v122 = 0u;
          cv::copyMakeBorder(v128);
        }

        cv::Mat::adjustROI(v19, -a3[1], -a3[1], -*a3, -*a3);
        goto LABEL_43;
      }
    }

    else
    {
      v26 = *(v19 + 12);
      v27 = HIDWORD(v112) + 2 * v25;
    }

    if ((*v19 & 0xFFF) != v24 || *(v19 + 4) > 2 || *(v19 + 8) != v112 + 2 * a3[1] || v26 != v27 || !*(v19 + 16))
    {
      v128[0] = v112 + 2 * a3[1];
      v128[1] = v27;
      cv::Mat::create(v19, 2, v128, v24, v17, v18);
    }

    goto LABEL_29;
  }

  v98 = (*(*a2 + 120))(a2, 0);
  cv::Mat::operator=(v98, &v111);
LABEL_43:
  v110 = vrev64_s32(*v118);
  v33 = (*(*a2 + 120))(a2, 0);
  *v128 = *v33;
  v34 = *(v33 + 16);
  v35 = *(v33 + 24);
  *&v129[8] = v35;
  *&v129[24] = *(v33 + 40);
  v36 = *(v33 + 56);
  *v129 = v34;
  *&v129[40] = v36;
  v130 = &v128[2];
  v131 = v132;
  v132[0] = 0;
  v132[1] = 0;
  if (v35)
  {
    atomic_fetch_add(v35, 1u);
  }

  if (*(v33 + 4) > 2)
  {
    v128[1] = 0;
    cv::Mat::copySize(v128, v33);
  }

  else
  {
    v37 = *(v33 + 72);
    v38 = v131;
    *v131 = *v37;
    v38[1] = v37[1];
  }

  *v106 = *v129;
  *v105 = *v128;
  *&v106[8] = *&v129[8];
  *&v106[24] = *&v129[24];
  *&v106[40] = *&v129[40];
  v107 = &v105[1];
  v109[0] = 0;
  v109[1] = 0;
  v108 = v109;
  if (*&v129[8])
  {
    atomic_fetch_add(*&v129[8], 1u);
  }

  if (v128[1] > 2)
  {
    HIDWORD(v105[0]) = 0;
    cv::Mat::copySize(v105, v128);
  }

  else
  {
    v39 = v131;
    v40 = v108;
    *v108 = *v131;
    v40[1] = v39[1];
  }

  if (a4 < 0)
  {
    v41 = 0;
    goto LABEL_167;
  }

  v41 = 0;
  v99 = (16 * ((v14 >> 3) & 0x1FF)) & 0xFF0 | 0xB;
  while (1)
  {
    if (!v41)
    {
      goto LABEL_107;
    }

    v42 = (*(*a2 + 120))(a2, (v41 << a5));
    v45 = v42;
    if (*(v42 + 16))
    {
      v46 = *(v42 + 4);
      if (v46 >= 3)
      {
        v48 = *(v42 + 64);
        v47 = 1;
        do
        {
          v49 = *v48++;
          v47 *= v49;
          --v46;
        }

        while (v46);
      }

      else
      {
        v47 = *(v42 + 12) * *(v42 + 8);
      }

      if (v47)
      {
        cv::Mat::adjustROI(v42, a3[1], a3[1], *a3, *a3);
      }
    }

    v50 = v111 & 0xFFF;
    if ((*v45 & 0xFFF) == v50)
    {
      v51 = *(v45 + 12);
      *&v54 = *a3;
      v53 = v110.i32[0] + 2 * *a3;
      *&v52 = *a3;
      *(&v52 + 1) = v110;
      if (v51 == v53)
      {
        if (*(v45 + 8) == v110.i32[1] + 2 * DWORD1(v54))
        {
          goto LABEL_79;
        }

        *(&v54 + 1) = v110;
        v52 = v54;
      }
    }

    else
    {
      *&v52 = *a3;
      v51 = *(v45 + 12);
      *(&v52 + 1) = v110;
      v53 = v110.i32[0] + 2 * *a3;
    }

    if ((*v45 & 0xFFF) != v50 || *(v45 + 4) > 2 || (*(v45 + 8) == HIDWORD(v52) + 2 * DWORD1(v52) ? (v55 = v51 == v53) : (v55 = 0), v55 ? (v56 = *(v45 + 16) == 0) : (v56 = 1), v56))
    {
      LODWORD(v121[0]) = HIDWORD(v52) + 2 * DWORD1(v52);
      HIDWORD(v121[0]) = v53;
      cv::Mat::create(v45, 2, v121, v50, v43, v44);
      *&v52 = *a3;
      *(&v52 + 1) = v110;
    }

LABEL_79:
    *__p = v52;
    cv::Mat::Mat(v121, v45, __p);
    if (*&v122[8])
    {
      atomic_fetch_add(*&v122[8], 1u);
    }

    if (*&v106[8] && atomic_fetch_add(*&v106[8], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v105);
    }

    *v106 = 0;
    memset(&v106[16], 0, 24);
    if (v105[0] <= 0)
    {
      *&v106[8] = 0;
      LODWORD(v105[0]) = v121[0];
    }

    else
    {
      v57 = 0;
      v58 = v107;
      do
      {
        *(v58 + v57++) = 0;
      }

      while (v57 < SHIDWORD(v105[0]));
      *&v106[8] = 0;
      LODWORD(v105[0]) = v121[0];
      if (SHIDWORD(v105[0]) > 2)
      {
        goto LABEL_92;
      }
    }

    if (SHIDWORD(v121[0]) <= 2)
    {
      HIDWORD(v105[0]) = HIDWORD(v121[0]);
      v105[1] = v121[1];
      v59 = v126;
      v60 = v108;
      *v108 = *v126;
      v60[1] = v59[1];
      goto LABEL_93;
    }

LABEL_92:
    cv::Mat::copySize(v105, v121);
LABEL_93:
    *v106 = *v122;
    *&v106[24] = v123;
    *&v106[8] = *&v122[8];
    *&v106[40] = v124;
    if (*&v122[8] && atomic_fetch_add(*&v122[8], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v121);
    }

    *v122 = 0;
    v123 = 0uLL;
    *&v122[16] = 0;
    if (SHIDWORD(v121[0]) >= 1)
    {
      v61 = 0;
      v62 = v125;
      do
      {
        *(v62 + 4 * v61++) = 0;
      }

      while (v61 < SHIDWORD(v121[0]));
    }

    *&v122[8] = 0;
    if (v126)
    {
      v63 = v126 == v127;
    }

    else
    {
      v63 = 1;
    }

    if (!v63)
    {
      free(v126);
    }

    cv::_InputArray::_InputArray(v121, v128);
    cv::_OutputArray::_OutputArray(__p, v105);
    cv::pyrDown(v121, __p, &v110, 4);
    if (a6 != 5)
    {
      cv::_InputArray::_InputArray(v121, v105);
      cv::_OutputArray::_OutputArray(__p, v45);
      memset(v103, 0, sizeof(v103));
      cv::copyMakeBorder(v121);
    }

    cv::Mat::adjustROI(v45, -a3[1], -a3[1], -*a3, -*a3);
LABEL_107:
    if (!a5)
    {
      goto LABEL_146;
    }

    v64 = (*(*a2 + 120))(a2, (2 * v41) | 1u);
    v67 = v64;
    if (*(v64 + 16))
    {
      v68 = *(v64 + 4);
      if (v68 >= 3)
      {
        v70 = *(v64 + 64);
        v69 = 1;
        do
        {
          v71 = *v70++;
          v69 *= v71;
          --v68;
        }

        while (v68);
      }

      else
      {
        v69 = *(v64 + 12) * *(v64 + 8);
      }

      if (v69)
      {
        cv::Mat::adjustROI(v64, a3[1], a3[1], *a3, *a3);
      }
    }

    if ((*v67 & 0xFFF) != ((16 * ((v14 >> 3) & 0x1FF)) | 0xB))
    {
      *&v75 = *a3;
      v72 = *(v67 + 12);
      *(&v75 + 1) = v110;
      v74 = v110.i32[0] + 2 * *a3;
      goto LABEL_120;
    }

    v72 = *(v67 + 12);
    *&v73 = *a3;
    v74 = v110.i32[0] + 2 * *a3;
    *&v75 = *a3;
    *(&v75 + 1) = v110;
    if (v72 != v74)
    {
      goto LABEL_120;
    }

    if (*(v67 + 8) != v110.i32[1] + 2 * DWORD1(v73))
    {
      *(&v73 + 1) = v110;
      v75 = v73;
LABEL_120:
      if (*(v67 + 4) > 2 || (*(v67 + 8) == HIDWORD(v75) + 2 * DWORD1(v75) ? (v76 = v72 == v74) : (v76 = 0), v76 ? (v77 = (*v67 & 0xFFF) == v99) : (v77 = 0), v77 ? (v78 = *(v67 + 16) == 0) : (v78 = 1), v78))
      {
        LODWORD(v121[0]) = HIDWORD(v75) + 2 * DWORD1(v75);
        HIDWORD(v121[0]) = v74;
        cv::Mat::create(v67, 2, v121, v99, v65, v66);
        *&v75 = *a3;
        *(&v75 + 1) = v110;
      }
    }

    *__p = v75;
    cv::Mat::Mat(v121, v67, __p);
    if (a7 != 5)
    {
      cv::_InputArray::_InputArray(__p, v121);
      cv::_OutputArray::_OutputArray(v103, v67);
      cv::copyMakeBorder(__p);
    }

    cv::Mat::adjustROI(v67, -a3[1], -a3[1], -*a3, -*a3);
    if (*&v122[8] && atomic_fetch_add(*&v122[8], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v121);
    }

    *v122 = 0;
    v123 = 0uLL;
    *&v122[16] = 0;
    if (SHIDWORD(v121[0]) >= 1)
    {
      v80 = 0;
      v81 = v125;
      do
      {
        *(v81 + 4 * v80++) = 0;
      }

      while (v80 < SHIDWORD(v121[0]));
    }

    *&v122[8] = 0;
    if (v126)
    {
      v82 = v126 == v127;
    }

    else
    {
      v82 = 1;
    }

    if (!v82)
    {
      free(v126);
    }

LABEL_146:
    v83 = (v110.i32[1] + 1) / 2;
    v110.i32[0] = (v110.i32[0] + 1) / 2;
    v110.i32[1] = v83;
    if (v110.i32[0] <= *a3 || v83 <= a3[1])
    {
      break;
    }

    if (*&v106[8])
    {
      atomic_fetch_add(*&v106[8], 1u);
    }

    if (*&v129[8] && atomic_fetch_add(*&v129[8], 0xFFFFFFFF) == 1)
    {
      cv::Mat::deallocate(v128);
    }

    *v129 = 0;
    memset(&v129[16], 0, 24);
    if (v128[1] <= 0)
    {
      *&v129[8] = 0;
      v128[0] = v105[0];
    }

    else
    {
      v84 = 0;
      v85 = v130;
      do
      {
        v85[v84++] = 0;
      }

      while (v84 < v128[1]);
      *&v129[8] = 0;
      v128[0] = v105[0];
      if (v128[1] > 2)
      {
LABEL_161:
        cv::Mat::copySize(v128, v105);
        goto LABEL_162;
      }
    }

    if (SHIDWORD(v105[0]) > 2)
    {
      goto LABEL_161;
    }

    v128[1] = HIDWORD(v105[0]);
    *&v128[2] = v105[1];
    v86 = v108;
    v87 = v131;
    *v131 = *v108;
    v87[1] = v86[1];
LABEL_162:
    *v129 = *v106;
    *&v129[16] = *&v106[16];
    *&v129[32] = *&v106[32];
    v32 = v41++ == a4;
    if (v32)
    {
      v41 = a4 + 1;
      goto LABEL_167;
    }
  }

  (*(*a2 + 136))(a2, 1, ((v41 + 1) << a5), 0, 0xFFFFFFFFLL, 1, 0);
LABEL_167:
  if (*&v106[8] && atomic_fetch_add(*&v106[8], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v105);
  }

  *v106 = 0;
  memset(&v106[16], 0, 24);
  if (SHIDWORD(v105[0]) >= 1)
  {
    v88 = 0;
    v89 = v107;
    do
    {
      *(v89 + v88++) = 0;
    }

    while (v88 < SHIDWORD(v105[0]));
  }

  *&v106[8] = 0;
  if (v108)
  {
    v90 = v108 == v109;
  }

  else
  {
    v90 = 1;
  }

  if (!v90)
  {
    free(v108);
  }

  if (*&v129[8] && atomic_fetch_add(*&v129[8], 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(v128);
  }

  *v129 = 0;
  memset(&v129[16], 0, 24);
  if (v128[1] >= 1)
  {
    v91 = 0;
    v92 = v130;
    do
    {
      v92[v91++] = 0;
    }

    while (v91 < v128[1]);
  }

  *&v129[8] = 0;
  if (v131)
  {
    v93 = v131 == v132;
  }

  else
  {
    v93 = 1;
  }

  if (!v93)
  {
    free(v131);
  }

  if (v114 && atomic_fetch_add(v114, 0xFFFFFFFF) == 1)
  {
    cv::Mat::deallocate(&v111);
  }

  v113 = 0;
  v115 = 0;
  v116 = 0;
  v117 = 0;
  if (SHIDWORD(v111) >= 1)
  {
    v94 = 0;
    v95 = v118;
    do
    {
      v95->i32[v94++] = 0;
    }

    while (v94 < SHIDWORD(v111));
  }

  v114 = 0;
  if (v119)
  {
    v96 = v119 == &v120;
  }

  else
  {
    v96 = 1;
  }

  if (!v96)
  {
    free(v119);
  }

  if (v41 >= a4)
  {
    return a4;
  }

  else
  {
    return v41;
  }
}